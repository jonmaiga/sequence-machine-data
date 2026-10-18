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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
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
# A317400: Positive integers that have exactly ten representations of the form 1 + p1 * (1 + p2* ... * (1 + p_j)...), where [p1, ..., p_j] is a (possibly empty) list of distinct primes.

The programs for A317400, there is no canonical definition to state claims against.
-/

/-! ## A317400.P17320346077506017775

`A317390(A056000(n+7))`
-/

namespace A317400.P17320346077506017775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317390 (A056000 (n + 7)).toNat

end

end A317400.P17320346077506017775

/-! ## A317400.P9630142337257553711

`A317390(eq[9, A264391(n)])`
-/

namespace A317400.P9630142337257553711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317390 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317400.P9630142337257553711

/-! ## A317400.P17315459370650163369

`A317390(eq[10, A193592(n)])`
-/

namespace A317400.P17315459370650163369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317390 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317400.P17315459370650163369

/-! ## A317400.P7050148148054936891

`A317390(eq[10, A219347(n)])`
-/

namespace A317400.P7050148148054936891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317390 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317400.P7050148148054936891

/-! ## A317400.P4825733904564018825

`A317390(A055999(n+8)-4)`
-/

namespace A317400.P4825733904564018825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317390 (A055999 (n + 8) - 4).toNat

end

end A317400.P4825733904564018825

/-!
# A317403: a(n)=(-1)^((n-2)*(n-1)/2)*2^(n-1)*n^(n-3).

The programs for A317403, the canonical program `A317403.P2700925873688337889` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317403 has offset 1).

The definition of A317403 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A317403.P2700925873688337889

`(-1)^((n-1)*n/2)*2^n*(n+1)^(n-2)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A317403

/-- `(-1)^((n-1)*n/2)*2^n*(n+1)^(n-2)` -/
def P2700925873688337889.Spec : Prop :=
  ∀ n, P2700925873688337889.a n = (A317403 (n + 1) : ℝ)

end A317403

/-! ## A317403.P8661129141959368084

`A317450(n+1)/A006125(n)²`
-/

namespace A317403.P8661129141959368084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317450 (n + 1) : ℚ) / (A006125 n ^ 2 : ℚ)

end

end A317403.P8661129141959368084

namespace A317403

/-- `A317450(n+1)/A006125(n)²` -/
def P8661129141959368084.Spec : Prop :=
  ∀ n, P8661129141959368084.a n = (A317403 (n + 1) : ℚ)

end A317403

/-! ## A317403.P16936914097111331659

`A317450(n+1)/A062758(A011782(n))`
-/

namespace A317403.P16936914097111331659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317450 (n + 1) : ℚ) / (A062758 (A011782 n).toNat : ℚ)

end

end A317403.P16936914097111331659

namespace A317403

/-- `A317450(n+1)/A062758(A011782(n))` -/
def P16936914097111331659.Spec : Prop :=
  ∀ n, P16936914097111331659.a n = (A317403 (n + 1) : ℚ)

end A317403

/-!
# A317404: a(n) = 3*n*(2^n - 1).

The programs for A317404, the canonical program `A317404.P14985848045010084837` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317404 has offset 0).

The definition of A317404 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n*(2^n-1)` (program `A317404.P14985848045010084837`, by `A317404.P14985848045010084837.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A317404.P14985848045010084837

`3*n*(2^n-1)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A317404

/-- `3*n*(2^n-1)` -/
def P14985848045010084837.Spec : Prop :=
  ∀ n, P14985848045010084837.a n = A317404 n

theorem P14985848045010084837.correct : P14985848045010084837.Spec := by
  intro n
  simp only [A317404]

end A317404

/-! ## A317404.P9387643504563538879

`6*a(n-1)-13*a(n-2)+12*a(n-3)-4*a(n-4)` with `a(0)=0, a(1)=3, a(2)=18, a(3)=63`
-/

namespace A317404.P9387643504563538879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 18, 63] fun n a =>
  6 * a (n - 1) - 13 * a (n - 2) + 12 * a (n - 3) - 4 * a (n - 4)

end

end A317404.P9387643504563538879

namespace A317404

/-- `6*a(n-1)-13*a(n-2)+12*a(n-3)-4*a(n-4)` -/
def P9387643504563538879.Spec : Prop :=
  ∀ n, P9387643504563538879.a n = A317404 n

theorem P9387643504563538879.correct : P9387643504563538879.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A317404, Nat.add_sub_cancel, A317404.P9387643504563538879.a, A317404.P14985848045010084837.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A317404, Nat.add_sub_cancel, A317404.P9387643504563538879.a, A317404.P14985848045010084837.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A317404

/-! ## A317404.P6043430256515324155

`abs(3*n*or(1, -2^n))`
-/

namespace A317404.P6043430256515324155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 * n : ℤ) * Int.lor 1 (-(2 ^ n : ℤ))|

end

end A317404.P6043430256515324155

namespace A317404

/-- `abs(3*n*or(1, -2^n))` -/
def P6043430256515324155.Spec : Prop :=
  ∀ n, P6043430256515324155.a n = A317404 n

end A317404

/-! ## A317404.P10933565860244715732

`-3*n*or(1, -2^n)`
-/

namespace A317404.P10933565860244715732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((3 * n : ℤ) * Int.lor 1 (-(2 ^ n : ℤ)))

end

end A317404.P10933565860244715732

namespace A317404

/-- `-3*n*or(1, -2^n)` -/
def P10933565860244715732.Spec : Prop :=
  ∀ n, P10933565860244715732.a n = A317404 n

end A317404

/-! ## A317404.P8828359412559196581

`abs(3*n*xor(1, -2^n))`
-/

namespace A317404.P8828359412559196581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 * n : ℤ) * Int.xor 1 (-(2 ^ n : ℤ))|

end

end A317404.P8828359412559196581

namespace A317404

/-- `abs(3*n*xor(1, -2^n))` -/
def P8828359412559196581.Spec : Prop :=
  ∀ n, P8828359412559196581.a n = A317404 n

end A317404

/-! ## A317404.P3539431753361010695

`-3*n*xor(1, -2^n)`
-/

namespace A317404.P3539431753361010695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(3 * ((n : ℤ) * Int.xor 1 (-(2 ^ n : ℤ))))

end

end A317404.P3539431753361010695

namespace A317404

/-- `-3*n*xor(1, -2^n)` -/
def P3539431753361010695.Spec : Prop :=
  ∀ n, P3539431753361010695.a n = A317404 n

end A317404

/-! ## A317404.P7132971305764637300

`floor(n*∑[2*a(n-1)])` with `a(0)=0, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A317404.P7132971305764637300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A317404.P7132971305764637300

namespace A317404

/-- `floor(n*∑[2*a(n-1)])` -/
def P7132971305764637300.Spec : Prop :=
  ∀ n, (P7132971305764637300.a n : ℤ) = A317404 n

end A317404

/-! ## A317404.P4497637518017524556

`n*∑[2*a(n-1)]-n` with `a(0)=1, a(1)=3`
-/

namespace A317404.P4497637518017524556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - (n : ℤ)

end

end A317404.P4497637518017524556

namespace A317404

/-- `n*∑[2*a(n-1)]-n` -/
def P4497637518017524556.Spec : Prop :=
  ∀ n, P4497637518017524556.a n = A317404 n

end A317404

/-! ## A317404.P13359839201279778688

`∑[A074494(n+1)-2]`
-/

namespace A317404.P13359839201279778688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074494 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317404.P13359839201279778688

namespace A317404

/-- `∑[A074494(n+1)-2]` -/
def P13359839201279778688.Spec : Prop :=
  ∀ n, P13359839201279778688.a n = A317404 n

end A317404

/-! ## A317404.P11616005088479876790

`record[n*(A077958(n)-1)]`
-/

namespace A317404.P11616005088479876790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A077958 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317404.P11616005088479876790

namespace A317404

/-- `record[n*(A077958(n)-1)]` -/
def P11616005088479876790.Spec : Prop :=
  ∀ n, P11616005088479876790.a n = A317404 n

end A317404

/-! ## A317404.P10103489839806611130

`A048477(n)-A016777(n)`
-/

namespace A317404.P10103489839806611130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048477 n - A016777 n

end

end A317404.P10103489839806611130

namespace A317404

/-- `A048477(n)-A016777(n)` -/
def P10103489839806611130.Spec : Prop :=
  ∀ n, P10103489839806611130.a n = A317404 n

end A317404

/-! ## A317404.P2728952837138805146

`A066524(n)+2*A066524(n)`
-/

namespace A317404.P2728952837138805146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066524 n + 2 * A066524 n

end

end A317404.P2728952837138805146

namespace A317404

/-- `A066524(n)+2*A066524(n)` -/
def P2728952837138805146.Spec : Prop :=
  ∀ n, P2728952837138805146.a n = A317404 n

end A317404

/-! ## A317404.P5876472056028749503

`A000225(n)*A016777(n)-A000225(n)`
-/

namespace A317404.P5876472056028749503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n * A016777 n - A000225 n

end

end A317404.P5876472056028749503

namespace A317404

/-- `A000225(n)*A016777(n)-A000225(n)` -/
def P5876472056028749503.Spec : Prop :=
  ∀ n, P5876472056028749503.a n = A317404 n

end A317404

/-! ## A317404.P1190781173814849796

`A000079(n)*A008585(n)-A008585(n)`
-/

namespace A317404.P1190781173814849796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A008585 n - A008585 n

end

end A317404.P1190781173814849796

namespace A317404

/-- `A000079(n)*A008585(n)-A008585(n)` -/
def P1190781173814849796.Spec : Prop :=
  ∀ n, P1190781173814849796.a n = A317404 n

end A317404

/-! ## A317404.P4419821845751772772

`A000225(n)*A033627(n+2)-A000225(n)`
-/

namespace A317404.P4419821845751772772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n * A033627 (n + 2) - A000225 n

end

end A317404.P4419821845751772772

namespace A317404

/-- `A000225(n)*A033627(n+2)-A000225(n)` -/
def P4419821845751772772.Spec : Prop :=
  ∀ n, P4419821845751772772.a n = A317404 n

end A317404

/-! ## A317404.P9041224197843000584

`n*A068293(n+1)/2`
-/

namespace A317404.P9041224197843000584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A068293 (n + 1) : ℚ) / 2

end

end A317404.P9041224197843000584

namespace A317404

/-- `n*A068293(n+1)/2` -/
def P9041224197843000584.Spec : Prop :=
  ∀ n, P9041224197843000584.a n = (A317404 n : ℚ)

end A317404

/-! ## A317404.P4338325826343849745

`n*A061776(2*n)/2`
-/

namespace A317404.P4338325826343849745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A061776 (2 * n) : ℚ) / 2

end

end A317404.P4338325826343849745

namespace A317404

/-- `n*A061776(2*n)/2` -/
def P4338325826343849745.Spec : Prop :=
  ∀ n, P4338325826343849745.a n = (A317404 n : ℚ)

end A317404

/-! ## A317404.P12349173275166470661

`A000225(n)*A008588(n)/2`
-/

namespace A317404.P12349173275166470661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000225 n * A008588 n : ℚ) / 2

end

end A317404.P12349173275166470661

namespace A317404

/-- `A000225(n)*A008588(n)/2` -/
def P12349173275166470661.Spec : Prop :=
  ∀ n, P12349173275166470661.a n = (A317404 n : ℚ)

end A317404

/-! ## A317404.P8446222689771183489

`A036290(n)-A178759(n)`
-/

namespace A317404.P8446222689771183489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036290 n - A178759 n

end

end A317404.P8446222689771183489

namespace A317404

/-- `A036290(n)-A178759(n)` -/
def P8446222689771183489.Spec : Prop :=
  ∀ n, P8446222689771183489.a n = A317404 n

end A317404

/-!
# A317405: a(n) = n * A001353(n).

The programs for A317405, the canonical program `A317405.P26191873803755320` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317405 has offset 1).

The definition of A317405 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*A001353(n+1)` (program `A317405.P26191873803755320`, by `A317405.P26191873803755320.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A317405.P4171336156593500211

`8*a(n-1)-18*a(n-2)+8*a(n-3)-a(n-4)` with `a(0)=1, a(1)=8, a(2)=45, a(3)=224`
-/

namespace A317405.P4171336156593500211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8, 45, 224] fun n a =>
  8 * a (n - 1) - 18 * a (n - 2) + 8 * a (n - 3) - a (n - 4)

end

end A317405.P4171336156593500211

namespace A317405

/-- `8*a(n-1)-18*a(n-2)+8*a(n-3)-a(n-4)` -/
def P4171336156593500211.Spec : Prop :=
  ∀ n, P4171336156593500211.a n = A317405 (n + 1)

end A317405

/-! ## A317405.P26191873803755320

`(n+1)*A001353(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A317405

/-- `(n+1)*A001353(n+1)` -/
def P26191873803755320.Spec : Prop :=
  ∀ n, P26191873803755320.a n = A317405 (n + 1)

theorem P26191873803755320.correct : P26191873803755320.Spec := by
  intro n
  simp only [A317405, Nat.add_sub_cancel]

end A317405

/-! ## A317405.P625163816436556624

`(n+1)*∑[floor((sqrt(3)+2)*a(n-1))]` with `a(0)=1`
-/

namespace A317405.P625163816436556624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌊(Real.sqrt (3 : ℝ) + 2) * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A317405.P625163816436556624

namespace A317405

/-- `(n+1)*∑[floor((sqrt(3)+2)*a(n-1))]` -/
def P625163816436556624.Spec : Prop :=
  ∀ n, P625163816436556624.a n = A317405 (n + 1)

end A317405

/-! ## A317405.P3703812468731584788

`(n+1)*∑[4*a(n-1)-a(n-2)]` with `a(0)=1, a(1)=3`
-/

namespace A317405.P3703812468731584788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  4 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A317405.P3703812468731584788

namespace A317405

/-- `(n+1)*∑[4*a(n-1)-a(n-2)]` -/
def P3703812468731584788.Spec : Prop :=
  ∀ n, P3703812468731584788.a n = A317405 (n + 1)

end A317405

/-! ## A317405.P38757844653554016

`abs((n+1)*A125905(n))`
-/

namespace A317405.P38757844653554016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * A125905 n|

end

end A317405.P38757844653554016

namespace A317405

/-- `abs((n+1)*A125905(n))` -/
def P38757844653554016.Spec : Prop :=
  ∀ n, P38757844653554016.a n = A317405 (n + 1)

end A317405

/-! ## A317405.P5760576756132781473

`(n+1)*Δ[A061278(n)]`
-/

namespace A317405.P5760576756132781473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A317405.P5760576756132781473

namespace A317405

/-- `(n+1)*Δ[A061278(n)]` -/
def P5760576756132781473.Spec : Prop :=
  ∀ n, P5760576756132781473.a n = A317405 (n + 1)

end A317405

/-! ## A317405.P2660223916509420133

`(n+1)*A259592(2*n)`
-/

namespace A317405.P2660223916509420133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A259592 (2 * n)

end

end A317405.P2660223916509420133

namespace A317405

/-- `(n+1)*A259592(2*n)` -/
def P2660223916509420133.Spec : Prop :=
  ∀ n, P2660223916509420133.a n = A317405 (n + 1)

end A317405

/-! ## A317405.P11816136151832718296

`(n+1)*A108412(Δ[n²])`
-/

namespace A317405.P11816136151832718296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A108412 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A317405.P11816136151832718296

namespace A317405

/-- `(n+1)*A108412(Δ[n²])` -/
def P11816136151832718296.Spec : Prop :=
  ∀ n, P11816136151832718296.a n = A317405 (n + 1)

end A317405

/-! ## A317405.P4481532609115489337

`(n+1)*∑[A001835(n+1)]`
-/

namespace A317405.P4481532609115489337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A317405.P4481532609115489337

namespace A317405

/-- `(n+1)*∑[A001835(n+1)]` -/
def P4481532609115489337.Spec : Prop :=
  ∀ n, P4481532609115489337.a n = A317405 (n + 1)

end A317405

/-! ## A317405.P12416988818223483776

`(n+1)*∑[A079935(n+1)]`
-/

namespace A317405.P12416988818223483776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A317405.P12416988818223483776

namespace A317405

/-- `(n+1)*∑[A079935(n+1)]` -/
def P12416988818223483776.Spec : Prop :=
  ∀ n, P12416988818223483776.a n = A317405 (n + 1)

end A317405

/-! ## A317405.P2180330076231162680

`(n+1)*Δ[A101265(n+1)]`
-/

namespace A317405.P2180330076231162680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A317405.P2180330076231162680

namespace A317405

/-- `(n+1)*Δ[A101265(n+1)]` -/
def P2180330076231162680.Spec : Prop :=
  ∀ n, P2180330076231162680.a n = A317405 (n + 1)

end A317405

/-! ## A317405.P8833421623558976974

`(n+1)*Δ[A101879(n+1)]`
-/

namespace A317405.P8833421623558976974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A317405.P8833421623558976974

namespace A317405

/-- `(n+1)*Δ[A101879(n+1)]` -/
def P8833421623558976974.Spec : Prop :=
  ∀ n, P8833421623558976974.a n = A317405 (n + 1)

end A317405

/-! ## A317405.P9800886313609683329

`(n+1)*(A072110(n+1)-1)`
-/

namespace A317405.P9800886313609683329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A072110 (n + 1) - 1)

end

end A317405.P9800886313609683329

namespace A317405

/-- `(n+1)*(A072110(n+1)-1)` -/
def P9800886313609683329.Spec : Prop :=
  ∀ n, P9800886313609683329.a n = A317405 (n + 1)

end A317405

/-! ## A317405.P11403918870463229855

`(n+1)*A002530(2*(n+1))`
-/

namespace A317405.P11403918870463229855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002530 (2 * (n + 1))

end

end A317405.P11403918870463229855

namespace A317405

/-- `(n+1)*A002530(2*(n+1))` -/
def P11403918870463229855.Spec : Prop :=
  ∀ n, P11403918870463229855.a n = A317405 (n + 1)

end A317405

/-! ## A317405.P1273597689863031207

`(n+1)/2*A052530(n+1)`
-/

namespace A317405.P1273597689863031207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A052530 (n + 1) : ℚ)

end

end A317405.P1273597689863031207

namespace A317405

/-- `(n+1)/2*A052530(n+1)` -/
def P1273597689863031207.Spec : Prop :=
  ∀ n, P1273597689863031207.a n = (A317405 (n + 1) : ℚ)

end A317405

/-! ## A317405.P1231089310198841615

`(n+1)*A249578(3*(n+1))`
-/

namespace A317405.P1231089310198841615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A249578 (3 * (n + 1))

end

end A317405.P1231089310198841615

namespace A317405

/-- `(n+1)*A249578(3*(n+1))` -/
def P1231089310198841615.Spec : Prop :=
  ∀ n, P1231089310198841615.a n = A317405 (n + 1)

end A317405

/-! ## A317405.P10800656148595929241

`(n+1)/3*A005320(n+1)`
-/

namespace A317405.P10800656148595929241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (A005320 (n + 1) : ℚ)

end

end A317405.P10800656148595929241

namespace A317405

/-- `(n+1)/3*A005320(n+1)` -/
def P10800656148595929241.Spec : Prop :=
  ∀ n, P10800656148595929241.a n = (A317405 (n + 1) : ℚ)

end A317405

/-! ## A317405.P5938079956985249814

`(n+1)*∑[A048788(2*n+1)]`
-/

namespace A317405.P5938079956985249814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048788 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A317405.P5938079956985249814

namespace A317405

/-- `(n+1)*∑[A048788(2*n+1)]` -/
def P5938079956985249814.Spec : Prop :=
  ∀ n, P5938079956985249814.a n = A317405 (n + 1)

end A317405

/-! ## A317405.P7139394644547191527

`(n+1)/(n+3)*A207836(n+3)`
-/

namespace A317405.P7139394644547191527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (n + 3 : ℚ) * (A207836 (n + 3) : ℚ)

end

end A317405.P7139394644547191527

namespace A317405

/-- `(n+1)/(n+3)*A207836(n+3)` -/
def P7139394644547191527.Spec : Prop :=
  ∀ n, P7139394644547191527.a n = (A317405 (n + 1) : ℚ)

end A317405

/-! ## A317405.P12466129882835150203

`Δ[A001057(n)]*A125905(n)`
-/

namespace A317405.P12466129882835150203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A125905 n

end

end A317405.P12466129882835150203

namespace A317405

/-- `Δ[A001057(n)]*A125905(n)` -/
def P12466129882835150203.Spec : Prop :=
  ∀ n, P12466129882835150203.a n = A317405 (n + 1)

end A317405

/-!
# A317406: Expansion of e.g.f. sin(x/(1 - x)).

The programs for A317406, there is no canonical definition to state claims against.
-/

/-! ## A317406.P181808378807767025

`A271269(n+1)-A154449(A001530(n))`
-/

namespace A317406.P181808378807767025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271269 (n + 1) - A154449 (A001530 n).toNat

end

end A317406.P181808378807767025

/-!
# A317407: The "OOPS" numbers -- numbers with ones in all odd-numbered positions of the binary representation of n.

The programs for A317407, the canonical program `A317407.P2584308412122888384` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317407 has offset 1).

The definition of A317407 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 445 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317407.P2584308412122888384

`record[A258746(n+1)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A317407

/-- `record[A258746(n+1)]` -/
def P2584308412122888384.Spec : Prop :=
  ∀ n, P2584308412122888384.a n = A317407 (n + 1)

theorem P2584308412122888384.correct : P2584308412122888384.Spec := by
  intro n
  simp only [A317407, Nat.add_sub_cancel]

end A317407

/-! ## A317407.P3217716366430597249

`record[A284120(A117120(n+1))]`
-/

namespace A317407.P3217716366430597249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284120 (A117120 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317407.P3217716366430597249

namespace A317407

/-- `record[A284120(A117120(n+1))]` -/
def P3217716366430597249.Spec : Prop :=
  ∀ n, P3217716366430597249.a n = A317407 (n + 1)

end A317407

/-! ## A317407.P18158468778200940035

`A053645(A033053(n+2))`
-/

namespace A317407.P18158468778200940035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A033053 (n + 2)).toNat

end

end A317407.P18158468778200940035

namespace A317407

/-- `A053645(A033053(n+2))` -/
def P18158468778200940035.Spec : Prop :=
  ∀ n, P18158468778200940035.a n = A317407 (n + 1)

end A317407

/-! ## A317407.P1880463025783465245

`record[A006068(A154436(n+1))]`
-/

namespace A317407.P1880463025783465245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A154436 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317407.P1880463025783465245

namespace A317407

/-- `record[A006068(A154436(n+1))]` -/
def P1880463025783465245.Spec : Prop :=
  ∀ n, P1880463025783465245.a n = A317407 (n + 1)

end A317407

/-! ## A317407.P4314677474738675209

`record[A165199(A054429(n+1))]`
-/

namespace A317407.P4314677474738675209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165199 (A054429 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317407.P4314677474738675209

namespace A317407

/-- `record[A165199(A054429(n+1))]` -/
def P4314677474738675209.Spec : Prop :=
  ∀ n, P4314677474738675209.a n = A317407 (n + 1)

end A317407

/-!
# A317408: a(n) = n * Fibonacci(2n).

The programs for A317408, the canonical program `A317408.P10668422814070760855` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317408 has offset 0).

The definition of A317408 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A317408.P10668422814070760855

`n*A001906(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A317408

/-- `n*A001906(n)` -/
def P10668422814070760855.Spec : Prop :=
  ∀ n, P10668422814070760855.a n = A317408 n

theorem P10668422814070760855.correct : P10668422814070760855.Spec := by
  intro n
  simp only [A317408]

end A317408

/-! ## A317408.P12910969344195208497

`6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=24`
-/

namespace A317408.P12910969344195208497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 6, 24] fun n a =>
  6 * a (n - 1) - 11 * a (n - 2) + 6 * a (n - 3) - a (n - 4)

end

end A317408.P12910969344195208497

namespace A317408

/-- `6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` -/
def P12910969344195208497.Spec : Prop :=
  ∀ n, P12910969344195208497.a n = A317408 n

end A317408

/-! ## A317408.P9951777252231049806

`n*∑[floor(ϕ²*a(n-1))]` with `a(0)=0, a(1)=1`
-/

namespace A317408.P9951777252231049806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  ⌊Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A317408.P9951777252231049806

namespace A317408

/-- `n*∑[floor(ϕ²*a(n-1))]` -/
def P9951777252231049806.Spec : Prop :=
  ∀ n, P9951777252231049806.a n = A317408 n

end A317408

/-! ## A317408.P12888526046535875388

`n*∑[floor(ϕ*ϕ*a(n-1))]` with `a(0)=0, a(1)=1`
-/

namespace A317408.P12888526046535875388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  ⌊Real.goldenRatio * (Real.goldenRatio * (f1 (n - 1) : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A317408.P12888526046535875388

namespace A317408

/-- `n*∑[floor(ϕ*ϕ*a(n-1))]` -/
def P12888526046535875388.Spec : Prop :=
  ∀ n, P12888526046535875388.a n = A317408 n

end A317408

/-! ## A317408.P6195089454478148433

`n*record[a(n-2)-a(n-1)]` with `a(0)=0, a(1)=-1`
-/

namespace A317408.P6195089454478148433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, -1] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317408.P6195089454478148433

namespace A317408

/-- `n*record[a(n-2)-a(n-1)]` -/
def P6195089454478148433.Spec : Prop :=
  ∀ n, P6195089454478148433.a n = A317408 n

end A317408

/-! ## A317408.P17902507184453322568

`n*Δ[3*(a(n-1)-a(n-2)/3)]` with `a(0)=1, a(1)=1`
-/

namespace A317408.P17902507184453322568
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  3 * (f1 (n - 1) - f1 (n - 2) / 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (f1 (n + 1) - f1 n)

end

end A317408.P17902507184453322568

namespace A317408

/-- `n*Δ[3*(a(n-1)-a(n-2)/3)]` -/
def P17902507184453322568.Spec : Prop :=
  ∀ n, P17902507184453322568.a n = (A317408 n : ℚ)

end A317408

/-! ## A317408.P15063809245545566645

`n*A088305(n)`
-/

namespace A317408.P15063809245545566645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A088305 n

end

end A317408.P15063809245545566645

namespace A317408

/-- `n*A088305(n)` -/
def P15063809245545566645.Spec : Prop :=
  ∀ n, P15063809245545566645.a n = A317408 n

end A317408

/-! ## A317408.P6013732970533920966

`∑[A377857(n+2)]`
-/

namespace A317408.P6013732970533920966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377857 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317408.P6013732970533920966

namespace A317408

/-- `∑[A377857(n+2)]` -/
def P6013732970533920966.Spec : Prop :=
  ∀ n, P6013732970533920966.a n = A317408 n

end A317408

/-! ## A317408.P9212030609330353817

`n*Δ[A001519(n)]`
-/

namespace A317408.P9212030609330353817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A317408.P9212030609330353817

namespace A317408

/-- `n*Δ[A001519(n)]` -/
def P9212030609330353817.Spec : Prop :=
  ∀ n, P9212030609330353817.a n = A317408 n

end A317408

/-! ## A317408.P8772255212056993923

`n*Δ[A032908(n)]`
-/

namespace A317408.P8772255212056993923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032908 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A317408.P8772255212056993923

namespace A317408

/-- `n*Δ[A032908(n)]` -/
def P8772255212056993923.Spec : Prop :=
  ∀ n, P8772255212056993923.a n = A317408 n

end A317408

/-! ## A317408.P4760713640613607825

`n*(A052925(n)-1)`
-/

namespace A317408.P4760713640613607825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A052925 n - 1)

end

end A317408.P4760713640613607825

namespace A317408

/-- `n*(A052925(n)-1)` -/
def P4760713640613607825.Spec : Prop :=
  ∀ n, P4760713640613607825.a n = A317408 n

end A317408

/-! ## A317408.P7687459239572287661

`n*(A055588(n)-1)`
-/

namespace A317408.P7687459239572287661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A055588 n - 1)

end

end A317408.P7687459239572287661

namespace A317408

/-- `n*(A055588(n)-1)` -/
def P7687459239572287661.Spec : Prop :=
  ∀ n, P7687459239572287661.a n = A317408 n

end A317408

/-! ## A317408.P7549386583283407964

`n*(A249450(n)+2)`
-/

namespace A317408.P7549386583283407964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A249450 n + 2)

end

end A317408.P7549386583283407964

namespace A317408

/-- `n*(A249450(n)+2)` -/
def P7549386583283407964.Spec : Prop :=
  ∀ n, P7549386583283407964.a n = A317408 n

end A317408

/-! ## A317408.P2987593433869053727

`n*A000045(2*n)`
-/

namespace A317408.P2987593433869053727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000045 (2 * n)

end

end A317408.P2987593433869053727

namespace A317408

/-- `n*A000045(2*n)` -/
def P2987593433869053727.Spec : Prop :=
  ∀ n, P2987593433869053727.a n = A317408 n

end A317408

/-! ## A317408.P18053775597075810034

`n*A005013(2*n)`
-/

namespace A317408.P18053775597075810034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A005013 (2 * n)

end

end A317408.P18053775597075810034

namespace A317408

/-- `n*A005013(2*n)` -/
def P18053775597075810034.Spec : Prop :=
  ∀ n, P18053775597075810034.a n = A317408 n

end A317408

/-! ## A317408.P13973199943418512361

`n*A094966(2*n)`
-/

namespace A317408.P13973199943418512361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A094966 (2 * n)

end

end A317408.P13973199943418512361

namespace A317408

/-- `n*A094966(2*n)` -/
def P13973199943418512361.Spec : Prop :=
  ∀ n, P13973199943418512361.a n = A317408 n

end A317408

/-! ## A317408.P13308996155308213841

`n*A109522(2*n)`
-/

namespace A317408.P13308996155308213841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A109522 (2 * n)

end

end A317408.P13308996155308213841

namespace A317408

/-- `n*A109522(2*n)` -/
def P13308996155308213841.Spec : Prop :=
  ∀ n, P13308996155308213841.a n = A317408 n

end A317408

/-! ## A317408.P14704560977354405216

`n/3*A097134(n)`
-/

namespace A317408.P14704560977354405216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (A097134 n : ℚ)

end

end A317408.P14704560977354405216

namespace A317408

/-- `n/3*A097134(n)` -/
def P14704560977354405216.Spec : Prop :=
  ∀ n, P14704560977354405216.a n = (A317408 n : ℚ)

end A317408

/-! ## A317408.P18330330012553427720

`n/5*A054888(n)`
-/

namespace A317408.P18330330012553427720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 5 * (A054888 n : ℚ)

end

end A317408.P18330330012553427720

namespace A317408

/-- `n/5*A054888(n)` -/
def P18330330012553427720.Spec : Prop :=
  ∀ n, P18330330012553427720.a n = (A317408 n : ℚ)

end A317408

/-! ## A317408.P6615288194274112975

`n*(A054452(n)+n)`
-/

namespace A317408.P6615288194274112975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A054452 n + (n : ℤ))

end

end A317408.P6615288194274112975

namespace A317408

/-- `n*(A054452(n)+n)` -/
def P6615288194274112975.Spec : Prop :=
  ∀ n, P6615288194274112975.a n = A317408 n

end A317408

/-!
# A317409: Expansion of e.g.f. cos(x/(1 - x)).

The programs for A317409, there is no canonical definition to state claims against.
-/

/-! ## A317409.P5978119786951514077

`1-A034973(A112317(n+1))`
-/

namespace A317409.P5978119786951514077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A034973 (A112317 (n + 1)).toNat

end

end A317409.P5978119786951514077

/-! ## A317409.P4564130954923882965

`2-A018703(A018599(n+1))`
-/

namespace A317409.P4564130954923882965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A018703 (A018599 (n + 1)).toNat

end

end A317409.P4564130954923882965

/-!
# A317410: Expansion of e.g.f. sec(x/(1 - x)).

The programs for A317410, there is no canonical definition to state claims against.
-/

/-! ## A317410.P4389514373245737080

`round(A279201(n)/lcm(n+1, n+2))`
-/

namespace A317410.P4389514373245737080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A279201 n : ℚ) / (Nat.lcm (n + 1) (n + 2) : ℚ))

end

end A317410.P4389514373245737080

/-! ## A317410.P15481297876797152778

`A063953(A000110(n))-n`
-/

namespace A317410.P15481297876797152778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063953 (A000110 n).toNat - (n : ℤ)

end

end A317410.P15481297876797152778

/-!
# A317411: Expansion of e.g.f. tanh(x/(1 - x)).

The programs for A317411, there is no canonical definition to state claims against.
-/

/-! ## A317411.P15756408018223243918

`∑[∑{e}[n+1, #]-∑{p}[A321511(n)², #]]`
-/

namespace A317411.P15756408018223243918
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321511 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ) - ((∑ p ∈ Nat.primeFactors (f3 n).natAbs, p : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317411.P15756408018223243918

/-! ## A317411.P14437818510001513187

`floor((A028387(n)-A003178(3*n))/4)`
-/

namespace A317411.P14437818510001513187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A028387 n - A003178 (3 * n) : ℚ) / 4⌋

end

end A317411.P14437818510001513187

/-!
# A317413: Continued fraction for binary expansion of Liouville's number interpreted in base 2 (A092874).

The programs for A317413, there is no canonical definition to state claims against.
-/

/-! ## A317413.P7731180409213444876

`A359838(n)%A359878(3*n)²`
-/

namespace A317413.P7731180409213444876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A359838 n) (A359878 (3 * n) ^ 2)

end

end A317413.P7731180409213444876

/-! ## A317413.P12695584700152438177

`A359838(n)%A278531(A278614(n))`
-/

namespace A317413.P12695584700152438177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A359838 n) (A278531 (A278614 n).toNat)

end

end A317413.P12695584700152438177

/-!
# A317415: Squares visited by a (1,4)-leaper (or giraffe) on a spirally numbered board and moving to the lowest available unvisited square at each step, squares labelled >=0.

The programs for A317415, there is no canonical definition to state claims against.
-/

/-! ## A317415.P8229103100232712007

`A317416(n+1)-1`
-/

namespace A317415.P8229103100232712007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317416 (n + 1) - 1

end

end A317415.P8229103100232712007

/-! ## A317415.P7000382804745048751

`xor(-A317416(n+1), A057428(n+1))`
-/

namespace A317415.P7000382804745048751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A317416 (n + 1)) (A057428 (n + 1))

end

end A317415.P7000382804745048751

/-! ## A317415.P6609265472950077631

`A023443(A317416(n+1))`
-/

namespace A317415.P6609265472950077631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A317416 (n + 1)).toNat

end

end A317415.P6609265472950077631

/-! ## A317415.P6724369309579220570

`A023444(A317416(n+1)+1)`
-/

namespace A317415.P6724369309579220570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A317416 (n + 1) + 1).toNat

end

end A317415.P6724369309579220570

/-! ## A317415.P7937055079831420574

`A289207(A317416(n+1)+1)`
-/

namespace A317415.P7937055079831420574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A317416 (n + 1) + 1).toNat

end

end A317415.P7937055079831420574

/-! ## A317415.P17923091681377689143

`(A323470(n+1)+A317416(n+1))%A323469(n+1)`
-/

namespace A317415.P17923091681377689143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323470 (n + 1) + A317416 (n + 1)) (A323469 (n + 1))

end

end A317415.P17923091681377689143

/-!
# A317416: Squares visited by a (1,4)-leaper (or giraffe) on a spirally numbered board and moving to the lowest available unvisited square at each step, squares labelled >=1.

The programs for A317416, there is no canonical definition to state claims against.
-/

/-! ## A317416.P14089821565406720161

`A317415(n)+1`
-/

namespace A317416.P14089821565406720161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317415 n + 1

end

end A317416.P14089821565406720161

/-! ## A317416.P8933276022093225448

`A328399(2*A317415(n))`
-/

namespace A317416.P8933276022093225448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (2 * A317415 n).toNat

end

end A317416.P8933276022093225448

/-! ## A317416.P11215649464945898531

`A008619(2*A317415(n))`
-/

namespace A317416.P11215649464945898531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A317415 n).toNat

end

end A317416.P11215649464945898531

/-! ## A317416.P2574757774535314281

`A080513(2*A317415(n))`
-/

namespace A317416.P2574757774535314281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (2 * A317415 n).toNat

end

end A317416.P2574757774535314281

/-! ## A317416.P1973698468876041299

`A008611(3*A317415(n))`
-/

namespace A317416.P1973698468876041299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A317415 n).toNat

end

end A317416.P1973698468876041299

/-! ## A317416.P4132850700062023780

`A008620(3*A317415(n))`
-/

namespace A317416.P4132850700062023780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A317415 n).toNat

end

end A317416.P4132850700062023780

/-! ## A317416.P18175386391896241910

`A008621(4*A317415(n))`
-/

namespace A317416.P18175386391896241910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (4 * A317415 n).toNat

end

end A317416.P18175386391896241910

/-! ## A317416.P6536972964143701453

`A103221(6*A317415(n))`
-/

namespace A317416.P6536972964143701453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (6 * A317415 n).toNat

end

end A317416.P6536972964143701453

/-!
# A317417: Numbers missing from A317415.

The programs for A317417, there is no canonical definition to state claims against.
-/

/-! ## A317417.P3920243023875491891

`A317418(n+1)-1`
-/

namespace A317417.P3920243023875491891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317418 (n + 1) - 1

end

end A317417.P3920243023875491891

/-!
# A317418: Numbers missing from A317416.

The programs for A317418, there is no canonical definition to state claims against.
-/

/-! ## A317418.P10375364083098785581

`A317417(n+1)+1`
-/

namespace A317418.P10375364083098785581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317417 (n + 1) + 1

end

end A317418.P10375364083098785581

/-!
# A317421: a(n) = Sum_{k=1..n} binomial(n-1,k-1)*prime(k)*n!/k!.

The programs for A317421, there is no canonical definition to state claims against.
-/

/-! ## A317421.P14590314325183959341

`A025528(A155644(n)+2)`
-/

namespace A317421.P14590314325183959341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (A155644 n + 2).toNat

end

end A317421.P14590314325183959341

/-!
# A317424: Number of nXn 0..1 arrays with every element unequal to 0, 1, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317424, there is no canonical definition to state claims against.
-/

/-! ## A317424.P10601625492811316351

`A317429(∑[4*n]+1)`
-/

namespace A317424.P10601625492811316351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317429 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A317424.P10601625492811316351

/-! ## A317424.P10452969488625534053

`record[A317429(Δ[A235355(n)])]`
-/

namespace A317424.P10452969488625534053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317429 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317424.P10452969488625534053

/-! ## A317424.P11578003311597817281

`and(-1, A317429(A001844(n)))`
-/

namespace A317424.P11578003311597817281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A317429 (A001844 n).toNat)

end

end A317424.P11578003311597817281

/-! ## A317424.P13138390511061780351

`record[A317429(A001844(∑{digits}[n, #]))]`
-/

namespace A317424.P13138390511061780351
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317429 (A001844 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317424.P13138390511061780351

/-! ## A317424.P11082315783135542819

`record[gcd(A114327(n), A317429(n+1))]`
-/

namespace A317424.P11082315783135542819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A317429 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317424.P11082315783135542819

/-!
# A317425: Number of nX4 0..1 arrays with every element unequal to 0, 1, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317425, there is no canonical definition to state claims against.
-/

/-! ## A317425.P17038203793451807586

`A317429(∑[n+3]+7)`
-/

namespace A317425.P17038203793451807586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317429 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A317425.P17038203793451807586

/-! ## A317425.P8484262591166794511

`A317429(A055999(n)+10)+char[20]`
-/

namespace A317425.P8484262591166794511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317429 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A317425.P8484262591166794511

/-! ## A317425.P775992053652264759

`A007318(C(2, n))*A317429(A055999(n)+10)`
-/

namespace A317425.P775992053652264759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A317429 (A055999 n + 10).toNat

end

end A317425.P775992053652264759

/-! ## A317425.P18403961288870773848

`A014963(12*(n+1))*A317429(A055999(n)+10)`
-/

namespace A317425.P18403961288870773848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * (n + 1)) * A317429 (A055999 n + 10).toNat

end

end A317425.P18403961288870773848

/-! ## A317425.P6669871386894503103

`A000108(val(n+1, 40))*A317429(A055999(n)+10)`
-/

namespace A317425.P6669871386894503103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (SequenceMachineLib.valuation (n + 1) 40) * A317429 (A055999 n + 10).toNat

end

end A317425.P6669871386894503103

/-!
# A317426: Number of nX5 0..1 arrays with every element unequal to 0, 1, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317426, there is no canonical definition to state claims against.
-/

/-! ## A317426.P11634508423152386539

`A317429(A167499(n+3))`
-/

namespace A317426.P11634508423152386539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317429 (A167499 (n + 3)).toNat

end

end A317426.P11634508423152386539

/-! ## A317426.P17293085671780854224

`A317429(A155212(n)+13)`
-/

namespace A317426.P17293085671780854224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317429 (A155212 n + 13).toNat

end

end A317426.P17293085671780854224

/-! ## A317426.P12988602558317671248

`A317429(A056000(n)+15)`
-/

namespace A317426.P12988602558317671248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317429 (A056000 n + 15).toNat

end

end A317426.P12988602558317671248

/-! ## A317426.P7488958413739679389

`A317429(eq[7, A066657(n)])`
-/

namespace A317426.P7488958413739679389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317429 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317426.P7488958413739679389

/-! ## A317426.P14976889775844167257

`A317429(A000124(n+4)+4)`
-/

namespace A317426.P14976889775844167257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317429 (A000124 (n + 4) + 4).toNat

end

end A317426.P14976889775844167257

/-!
# A317427: Number of nX6 0..1 arrays with every element unequal to 0, 1, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317427, there is no canonical definition to state claims against.
-/

/-! ## A317427.P6657557022807419614

`A317429(A056115(n)+21)`
-/

namespace A317427.P6657557022807419614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317429 (A056115 n + 21).toNat

end

end A317427.P6657557022807419614

/-! ## A317427.P8232535875753990245

`A317429(A000124(n+5)+5)`
-/

namespace A317427.P8232535875753990245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317429 (A000124 (n + 5) + 5).toNat

end

end A317427.P8232535875753990245

/-! ## A317427.P11396805366839764918

`A317429(A000217(n+5)+6)`
-/

namespace A317427.P11396805366839764918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317429 (A000217 (n + 5) + 6).toNat

end

end A317427.P11396805366839764918

/-! ## A317427.P1245853337780345462

`A317429(A027379(n+3)+9)`
-/

namespace A317427.P1245853337780345462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317429 (A027379 (n + 3) + 9).toNat

end

end A317427.P1245853337780345462

/-! ## A317427.P8222965482088624113

`A317429(A046691(n+3)+10)`
-/

namespace A317427.P8222965482088624113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317429 (A046691 (n + 3) + 10).toNat

end

end A317427.P8222965482088624113

/-!
# A317428: Number of n X 7 0..1 arrays with every element unequal to 0, 1, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317428, there is no canonical definition to state claims against.
-/

/-! ## A317428.P8065089259944027244

`A317429(A056119(n)+28)`
-/

namespace A317428.P8065089259944027244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317429 (A056119 n + 28).toNat

end

end A317428.P8065089259944027244

/-! ## A317428.P8199571736611466204

`A317429(eq[11, A066657(n)])`
-/

namespace A317428.P8199571736611466204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317429 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317428.P8199571736611466204

/-! ## A317428.P1367802657350211304

`A317429(A167499(n+5)+2)`
-/

namespace A317428.P1367802657350211304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317429 (A167499 (n + 5) + 2).toNat

end

end A317428.P1367802657350211304

/-! ## A317428.P13670907491207154680

`A317429(A167614(n+5)+4)`
-/

namespace A317428.P13670907491207154680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317429 (A167614 (n + 5) + 4).toNat

end

end A317428.P13670907491207154680

/-! ## A317428.P10711783624695926908

`A317429(A000124(n+6)+6)`
-/

namespace A317428.P10711783624695926908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317429 (A000124 (n + 6) + 6).toNat

end

end A317428.P10711783624695926908

/-!
# A317430: Number of nXn 0..1 arrays with every element unequal to 1, 2, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317430, there is no canonical definition to state claims against.
-/

/-! ## A317430.P2839961504456419015

`A317436(∑[4*n]+1)`
-/

namespace A317430.P2839961504456419015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317436 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A317430.P2839961504456419015

/-! ## A317430.P3787590123104374125

`record[A317436(Δ[A235355(n)])]`
-/

namespace A317430.P3787590123104374125
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317436 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317430.P3787590123104374125

/-! ## A317430.P6923883167921053613

`A317436(A001844(n))+char[21]`
-/

namespace A317430.P6923883167921053613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317436 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A317430.P6923883167921053613

/-! ## A317430.P15061735910051784757

`record[A317436(Δ[A079824(n+1)])]`
-/

namespace A317430.P15061735910051784757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317436 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317430.P15061735910051784757

/-! ## A317430.P10898428837142498474

`record[A003982(n)*A317436(n+1)]`
-/

namespace A317430.P10898428837142498474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A317436 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317430.P10898428837142498474

/-!
# A317431: Number of nX3 0..1 arrays with every element unequal to 1, 2, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317431, there is no canonical definition to state claims against.
-/

/-! ## A317431.P1283531891519018971

`A317436(∑[n+2]+4)`
-/

namespace A317431.P1283531891519018971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317436 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A317431.P1283531891519018971

/-! ## A317431.P18406106713693674831

`abs(A033999(n))*A317436(A167614(n+1))`
-/

namespace A317431.P18406106713693674831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n| * A317436 (A167614 (n + 1)).toNat

end

end A317431.P18406106713693674831

/-! ## A317431.P8809576739181024030

`A240228(n+1)*A317436(A167614(n+1))`
-/

namespace A317431.P8809576739181024030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240228 (n + 1) * A317436 (A167614 (n + 1)).toNat

end

end A317431.P8809576739181024030

/-! ## A317431.P14556428754320774399

`A317436(A167614(n+1))%A081294(n+2)`
-/

namespace A317431.P14556428754320774399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317436 (A167614 (n + 1)).toNat) (A081294 (n + 2))

end

end A317431.P14556428754320774399

/-! ## A317431.P10141393840840643955

`A014963(A165827(n+1))*A317436(A167614(n+1))`
-/

namespace A317431.P10141393840840643955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A165827 (n + 1)).toNat * A317436 (A167614 (n + 1)).toNat

end

end A317431.P10141393840840643955

/-!
# A317432: Number of nX4 0..1 arrays with every element unequal to 1, 2, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317432, there is no canonical definition to state claims against.
-/

/-! ## A317432.P8716747151256942153

`A317436(∑[n+2]+n+8)`
-/

namespace A317432.P8716747151256942153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317436 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 8))

end

end A317432.P8716747151256942153

/-! ## A317432.P5424567890858179900

`A317436(A000217(n+3)+4)+A000007(n+1)`
-/

namespace A317432.P5424567890858179900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317436 (A000217 (n + 3) + 4).toNat + A000007 (n + 1)

end

end A317432.P5424567890858179900

/-! ## A317432.P13557712432908486422

`lcm(A008836(n+1), A317436(A000217(n+3)+4))`
-/

namespace A317432.P13557712432908486422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A317436 (A000217 (n + 3) + 4).toNat)

end

end A317432.P13557712432908486422

/-! ## A317432.P14915590989413918667

`A317436(A000217(n+3)+4)%A027215(n+10)`
-/

namespace A317432.P14915590989413918667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317436 (A000217 (n + 3) + 4).toNat) (A027215 (n + 10))

end

end A317432.P14915590989413918667

/-! ## A317432.P17867442652925841198

`A001222(A004139(n+1))*A317436(A000217(n+3)+4)`
-/

namespace A317432.P17867442652925841198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004139 (n + 1)).toNat * A317436 (A000217 (n + 3) + 4).toNat

end

end A317432.P17867442652925841198

/-!
# A317433: Number of nX5 0..1 arrays with every element unequal to 1, 2, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317433, there is no canonical definition to state claims against.
-/

/-! ## A317433.P15323528355191382496

`A317436(A374005(n+1))`
-/

namespace A317433.P15323528355191382496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317436 (A374005 (n + 1)).toNat

end

end A317433.P15323528355191382496

/-! ## A317433.P13908908275921862269

`A317436(A167499(n+3))`
-/

namespace A317433.P13908908275921862269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317436 (A167499 (n + 3)).toNat

end

end A317433.P13908908275921862269

/-! ## A317433.P14229001256121013078

`A317436(A056000(n)+15)`
-/

namespace A317433.P14229001256121013078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317436 (A056000 n + 15).toNat

end

end A317433.P14229001256121013078

/-! ## A317433.P8681740038223927610

`A317436(eq[7, A066657(n)])`
-/

namespace A317433.P8681740038223927610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317436 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317433.P8681740038223927610

/-! ## A317433.P17513601089032553221

`A317436(A046691(n+3))`
-/

namespace A317433.P17513601089032553221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317436 (A046691 (n + 3)).toNat

end

end A317433.P17513601089032553221

/-!
# A317434: Number of nX6 0..1 arrays with every element unequal to 1, 2, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317434, there is no canonical definition to state claims against.
-/

/-! ## A317434.P7269692630399932138

`A317436(A374007(n+1))`
-/

namespace A317434.P7269692630399932138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317436 (A374007 (n + 1)).toNat

end

end A317434.P7269692630399932138

/-! ## A317434.P8714274926921994646

`A317436(A056115(n)+21)`
-/

namespace A317434.P8714274926921994646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317436 (A056115 n + 21).toNat

end

end A317434.P8714274926921994646

/-! ## A317434.P14414125254302739303

`A317436(A167499(n+4)+1)`
-/

namespace A317434.P14414125254302739303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317436 (A167499 (n + 4) + 1).toNat

end

end A317434.P14414125254302739303

/-! ## A317434.P17670972524613073602

`A317436(A000217(n+5)+6)`
-/

namespace A317434.P17670972524613073602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317436 (A000217 (n + 5) + 6).toNat

end

end A317434.P17670972524613073602

/-! ## A317434.P6647166964132308558

`A317436(A034856(n+4)+8)`
-/

namespace A317434.P6647166964132308558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317436 (A034856 (n + 4) + 8).toNat

end

end A317434.P6647166964132308558

/-!
# A317435: Number of nX7 0..1 arrays with every element unequal to 1, 2, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317435, there is no canonical definition to state claims against.
-/

/-! ## A317435.P13689742711868169679

`A317436(A374008(n+1))`
-/

namespace A317435.P13689742711868169679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317436 (A374008 (n + 1)).toNat

end

end A317435.P13689742711868169679

/-! ## A317435.P17084284232527707461

`A317436(A027379(n+4)+10)`
-/

namespace A317435.P17084284232527707461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317436 (A027379 (n + 4) + 10).toNat

end

end A317435.P17084284232527707461

/-! ## A317435.P18394964223415356862

`A317436(eq[8, A131818(n+1)])`
-/

namespace A317435.P18394964223415356862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317436 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317435.P18394964223415356862

/-! ## A317435.P7412363756366956003

`A317436(A055999(n+4))`
-/

namespace A317435.P7412363756366956003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317436 (A055999 (n + 4)).toNat

end

end A317435.P7412363756366956003

/-! ## A317435.P2682373484219273646

`A317436(eq[4, A219347(n)])`
-/

namespace A317435.P2682373484219273646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317436 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317435.P2682373484219273646

/-!
# A317436: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 1, 2, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317436, there is no canonical definition to state claims against.
-/

/-! ## A317436.P1232052086252252978

`A316130(n+1)+A173636(A174545(n))`
-/

namespace A317436.P1232052086252252978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316130 (n + 1) + A173636 (A174545 n).toNat

end

end A317436.P1232052086252252978

/-! ## A317436.P10135336448549739308

`A316130(n+1)+A031298(A282230(n+1))`
-/

namespace A317436.P10135336448549739308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316130 (n + 1) + A031298 (A282230 (n + 1)).toNat

end

end A317436.P10135336448549739308

/-! ## A317436.P10832313502802851953

`A316130(n+1)-A305633(A334709(n+1))`
-/

namespace A317436.P10832313502802851953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316130 (n + 1) - A305633 (A334709 (n + 1)).toNat

end

end A317436.P10832313502802851953

/-! ## A317436.P5764447691737705234

`A316130(n+1)+A316717(A316576(n+1))²`
-/

namespace A317436.P5764447691737705234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316130 (n + 1) + A316717 (A316576 (n + 1)).toNat ^ 2

end

end A317436.P5764447691737705234

/-! ## A317436.P4829427506371929668

`A316130(n+1)+A058348(A131235(n))`
-/

namespace A317436.P4829427506371929668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316130 (n + 1) + A058348 (A131235 n).toNat

end

end A317436.P4829427506371929668

/-!
# A317437: Squares visited by a (1,5)-leaper on a spirally numbered board and moving to the lowest available unvisited square at each step, squares labelled >=0.

The programs for A317437, there is no canonical definition to state claims against.
-/

/-! ## A317437.P8320729615771796804

`A317438(n+1)-1`
-/

namespace A317437.P8320729615771796804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317438 (n + 1) - 1

end

end A317437.P8320729615771796804

/-! ## A317437.P11421409100853572628

`xor(1, A317438(xor(1, xor(1, n+1))))`
-/

namespace A317437.P11421409100853572628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A317438 (Nat.xor 1 (Nat.xor 1 (n + 1))))

end

end A317437.P11421409100853572628

/-! ## A317437.P320465101041936808

`xor(abs(A020985(n)), A317438(n+1))`
-/

namespace A317437.P320465101041936808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor |A020985 n| (A317438 (n + 1))

end

end A317437.P320465101041936808

/-! ## A317437.P266367661030882919

`xor(A054977(n+1), A317438(n+1))`
-/

namespace A317437.P266367661030882919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A054977 (n + 1)) (A317438 (n + 1))

end

end A317437.P266367661030882919

/-! ## A317437.P11673752089043661589

`A004442(A317438(n+1))`
-/

namespace A317437.P11673752089043661589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A317438 (n + 1)).toNat

end

end A317437.P11673752089043661589

/-! ## A317437.P14474531219258869653

`(A323470(n+1)+A317438(n+1))%A323469(n+1)`
-/

namespace A317437.P14474531219258869653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323470 (n + 1) + A317438 (n + 1)) (A323469 (n + 1))

end

end A317437.P14474531219258869653

/-! ## A317437.P14265714250169643676

`xor(1, A317438(A007318(∑[n])+n))`
-/

namespace A317437.P14265714250169643676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A317438 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)).toNat)

end

end A317437.P14265714250169643676

/-!
# A317438: Squares visited by a (1,5)-leaper on a spirally numbered board and moving to the lowest available unvisited square at each step, squares labelled >=1.

The programs for A317438, there is no canonical definition to state claims against.
-/

/-! ## A317438.P14980569158061535795

`A317437(n)+1`
-/

namespace A317438.P14980569158061535795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317437 n + 1

end

end A317438.P14980569158061535795

/-! ## A317438.P10742761127527781350

`xor(1, A317437(xor(1, xor(1, n))))`
-/

namespace A317438.P10742761127527781350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A317437 (Nat.xor 1 (Nat.xor 1 n)))

end

end A317438.P10742761127527781350

/-! ## A317438.P14440073133672781665

`A000027(or(1, A317437(n)))`
-/

namespace A317438.P14440073133672781665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.lor 1 (A317437 n)).toNat

end

end A317438.P14440073133672781665

/-! ## A317438.P7195894884332172182

`A000265(xor(1, A317437(n)))`
-/

namespace A317438.P7195894884332172182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.xor 1 (A317437 n)).toNat

end

end A317438.P7195894884332172182

/-! ## A317438.P907978078955997727

`or(char[A317415(n)], A317437(n))`
-/

namespace A317438.P907978078955997727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317415 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A317437 n)

end

end A317438.P907978078955997727

/-! ## A317438.P12825193910543353096

`or(A087049(A008586(n)), A317437(n))`
-/

namespace A317438.P12825193910543353096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A087049 (A008586 n).toNat) (A317437 n)

end

end A317438.P12825193910543353096

/-! ## A317438.P11277236949353174183

`or(A087049(A017113(n)), A317437(n))`
-/

namespace A317438.P11277236949353174183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A087049 (A017113 n).toNat) (A317437 n)

end

end A317438.P11277236949353174183

/-! ## A317438.P1640545675214867760

`A004442(A317437(n))`
-/

namespace A317438.P1640545675214867760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A317437 n).toNat

end

end A317438.P1640545675214867760

/-! ## A317438.P16767129324198857854

`A008619(2*A317437(n))`
-/

namespace A317438.P16767129324198857854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A317437 n).toNat

end

end A317438.P16767129324198857854

/-! ## A317438.P14551898846054120142

`xor(A007318(∑[n]), A317437(n))`
-/

namespace A317438.P14551898846054120142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)) (A317437 n)

end

end A317438.P14551898846054120142

/-!
# A317442: a(1) = a(2) = 1; for n >= 3, a(n) = a(t(n)) + a(n-t(n)) where t = A000195.

The programs for A317442, there is no canonical definition to state claims against.
-/

/-! ## A317442.P10617102018209421481

`∑[A285080(A161460(n+3)+n)]`
-/

namespace A317442.P10617102018209421481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285080 (A161460 (n + 3) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317442.P10617102018209421481

/-! ## A317442.P18104116020508522159

`A004526(lt[A271269(n+1), A274404(3*n+1)])`
-/

namespace A317442.P18104116020508522159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274404 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A317442.P18104116020508522159

/-! ## A317442.P3410383991820901410

`A065033(lt[A171917(3*n+1), n+1])`
-/

namespace A317442.P3410383991820901410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171917 (3 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A317442.P3410383991820901410

/-! ## A317442.P17476355172266075969

`∑[A010060(A089854(A189525(n+1)))]`
-/

namespace A317442.P17476355172266075969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A089854 (A189525 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317442.P17476355172266075969

/-! ## A317442.P1442864495167890364

`∑[A008966(∑[A142384(n+1)])]`
-/

namespace A317442.P1442864495167890364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142384 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317442.P1442864495167890364

/-!
# A317443: a(n) = number of k with 1 <= k <= n-1 such that a(k) + a(n-k) is not squarefree.

The programs for A317443, there is no canonical definition to state claims against.
-/

/-! ## A317443.P12592056696479669968

`A303401(Δ[C(floor(n/2)+2, 2)]!)`
-/

namespace A317443.P12592056696479669968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (⌊(n : ℚ) / 2⌋ + 2).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303401 (Nat.factorial ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A317443.P12592056696479669968

/-! ## A317443.P2237582336698999950

`∑{d}[Δ[A336102(n)], A337565(#)]`
-/

namespace A317443.P2237582336698999950
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336102 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A337565 d

end

end A317443.P2237582336698999950

/-! ## A317443.P7977145623151000656

`A265705(Δ[A184411(2^floor(n/2))])`
-/

namespace A317443.P7977145623151000656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184411 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265705 (f1 (n + 1) - f1 n).toNat

end

end A317443.P7977145623151000656

/-! ## A317443.P14100252807305386188

`A053735(val(n+1, 2)*A252745(n+2))`
-/

namespace A317443.P14100252807305386188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 ((SequenceMachineLib.valuation (n + 1) 2 : ℤ) * A252745 (n + 2)).toNat

end

end A317443.P14100252807305386188

/-! ## A317443.P3828744805427777628

`A241568(A283258(n*A000035(n)))`
-/

namespace A317443.P3828744805427777628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241568 (A283258 ((n : ℤ) * A000035 n).toNat).toNat

end

end A317443.P3828744805427777628

/-!
# A317444: Number of permutations of [n] whose lengths of increasing runs are distinct Fibonacci numbers.

The programs for A317444, there is no canonical definition to state claims against.
-/

/-! ## A317444.P17798891805203335535

`A241183(A035105(n+1)+4)`
-/

namespace A317444.P17798891805203335535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241183 (A035105 (n + 1) + 4).toNat

end

end A317444.P17798891805203335535

/-! ## A317444.P14037949994831452188

`A290988(A303871(n)*A320832(n+1)+1)`
-/

namespace A317444.P14037949994831452188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290988 (A303871 n * A320832 (n + 1) + 1).toNat

end

end A317444.P14037949994831452188

/-! ## A317444.P8681731468895313793

`A185421(A005450(n+1))%A154634(n+1)`
-/

namespace A317444.P8681731468895313793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185421 (A005450 (n + 1)).toNat) (A154634 (n + 1))

end

end A317444.P8681731468895313793

/-!
# A317448: Number of permutations of [n] whose lengths of increasing runs are distinct factorial numbers.

The programs for A317448, there is no canonical definition to state claims against.
-/

/-! ## A317448.P5983647096057265009

`A326728(A326682(4*n+7))+A326690(n+1)`
-/

namespace A317448.P5983647096057265009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326728 (A326682 (4 * n + 7)).toNat + A326690 (n + 1)

end

end A317448.P5983647096057265009

/-!
# A317450: a(n)=(-1)^((n-2)*(n-1)/2)*2^((n-1)^2)*n^(n-3).

The programs for A317450, the canonical program `A317450.P9579198574248118714` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317450 has offset 1).

The definition of A317450 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A317450.P9579198574248118714

`(-1)^((n-1)*n/2)*2^n²*(n+1)^(n-2)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A317450

/-- `(-1)^((n-1)*n/2)*2^n²*(n+1)^(n-2)` -/
def P9579198574248118714.Spec : Prop :=
  ∀ n, P9579198574248118714.a n = (A317450 (n + 1) : ℝ)

end A317450

/-!
# A317451: a(n) = (n*A003500(n) - A231896(n))/2.

The programs for A317451, the canonical program `A317451.P2996331735550068026` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317451 has offset 0).

The definition of A317451 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A317451.P2996331735550068026

`8*a(n-1)-18*a(n-2)+8*a(n-3)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=16, a(3)=92`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A317451

/-- `8*a(n-1)-18*a(n-2)+8*a(n-3)-a(n-4)` -/
def P2996331735550068026.Spec : Prop :=
  ∀ n, P2996331735550068026.a n = A317451 n

theorem P2996331735550068026.correct : P2996331735550068026.Spec := by
  intro n
  simp only [A317451]

end A317451

/-! ## A317451.P4683519824376182577

`∑[n*A052530(n)-a(n-1)]` with `a(0)=0`
-/

namespace A317451.P4683519824376182577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) * A052530 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317451.P4683519824376182577

namespace A317451

/-- `∑[n*A052530(n)-a(n-1)]` -/
def P4683519824376182577.Spec : Prop :=
  ∀ n, P4683519824376182577.a n = A317451 n

end A317451

/-! ## A317451.P15356353752241633900

`a(n-2)+2*n*A001353(n)` with `a(0)=0, a(1)=2`
-/

namespace A317451.P15356353752241633900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 2) + 2 * ((n : ℤ) * A001353 n)

end

end A317451.P15356353752241633900

namespace A317451

/-- `a(n-2)+2*n*A001353(n)` -/
def P15356353752241633900.Spec : Prop :=
  ∀ n, P15356353752241633900.a n = A317451 n

end A317451

/-! ## A317451.P12718863494846899843

`a(n-2)-2*n*A106707(n)` with `a(0)=0, a(1)=2`
-/

namespace A317451.P12718863494846899843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 2) - 2 * ((n : ℤ) * A106707 n)

end

end A317451.P12718863494846899843

namespace A317451

/-- `a(n-2)-2*n*A106707(n)` -/
def P12718863494846899843.Spec : Prop :=
  ∀ n, P12718863494846899843.a n = A317451 n

end A317451

/-! ## A317451.P17946180124455129121

`a(n-2)+2*n*A249578(A008585(n))` with `a(0)=0, a(1)=2`
-/

namespace A317451.P17946180124455129121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 2) + (2 * n : ℤ) * A249578 (A008585 n).toNat

end

end A317451.P17946180124455129121

namespace A317451

/-- `a(n-2)+2*n*A249578(A008585(n))` -/
def P17946180124455129121.Spec : Prop :=
  ∀ n, P17946180124455129121.a n = A317451 n

end A317451

/-!
# A317452: Number of n X n 0..1 arrays with every element unequal to 1, 2, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317452, there is no canonical definition to state claims against.
-/

/-! ## A317452.P4655595559688427072

`A317458(∑[4*n]+1)`
-/

namespace A317452.P4655595559688427072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317458 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A317452.P4655595559688427072

/-! ## A317452.P6949593855836395713

`record[A317458(Δ[A235355(n)])]`
-/

namespace A317452.P6949593855836395713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317458 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317452.P6949593855836395713

/-! ## A317452.P4907180823526731252

`and(-1, A317458(A001844(n)))`
-/

namespace A317452.P4907180823526731252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A317458 (A001844 n).toNat)

end

end A317452.P4907180823526731252

/-! ## A317452.P17387818214988337519

`record[A317458(A272267(n+1))]`
-/

namespace A317452.P17387818214988337519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317458 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317452.P17387818214988337519

/-! ## A317452.P14893331200332377036

`record[A317458(A330613(n+1))]`
-/

namespace A317452.P14893331200332377036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317458 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317452.P14893331200332377036

/-!
# A317453: Number of nX3 0..1 arrays with every element unequal to 1, 2, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317453, there is no canonical definition to state claims against.
-/

/-! ## A317453.P6678697785132585846

`A317458(∑[n+2]+4)`
-/

namespace A317453.P6678697785132585846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317458 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A317453.P6678697785132585846

/-! ## A317453.P1195717941637502687

`and(-1, A317458(A167614(n+1)))`
-/

namespace A317453.P1195717941637502687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A317458 (A167614 (n + 1)).toNat)

end

end A317453.P1195717941637502687

/-! ## A317453.P18319911648104204951

`record[gcd(A303913(n), A317458(n+1))]`
-/

namespace A317453.P18319911648104204951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A303913 n) (A317458 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317453.P18319911648104204951

/-! ## A317453.P69561163080842124

`or(A000007(n), A317458(A167614(n+1)))`
-/

namespace A317453.P69561163080842124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A317458 (A167614 (n + 1)).toNat)

end

end A317453.P69561163080842124

/-! ## A317453.P16728733043695378517

`or(A025469(n), A317458(A167614(n+1)))`
-/

namespace A317453.P16728733043695378517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025469 n) (A317458 (A167614 (n + 1)).toNat)

end

end A317453.P16728733043695378517

/-!
# A317454: Number of nX4 0..1 arrays with every element unequal to 1, 2, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317454, there is no canonical definition to state claims against.
-/

/-! ## A317454.P6744533983474178021

`A317458(∑[n+3]+7)`
-/

namespace A317454.P6744533983474178021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317458 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A317454.P6744533983474178021

/-! ## A317454.P7914406844521300500

`A317458(A141214(n)+7)+char[18]`
-/

namespace A317454.P7914406844521300500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317458 (A141214 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A317454.P7914406844521300500

/-! ## A317454.P333784302623195781

`lcm(A033999(n), A317458(A374004(n+1)))`
-/

namespace A317454.P333784302623195781
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A317458 (A374004 (n + 1)).toNat)

end

end A317454.P333784302623195781

/-! ## A317454.P3254098772419534195

`A007318(C(2, n))*A317458(A141214(n)+7)`
-/

namespace A317454.P3254098772419534195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A317458 (A141214 n + 7).toNat

end

end A317454.P3254098772419534195

/-! ## A317454.P16642599501047538748

`A317458(A167614(n+2)+1)/A007318(C(n, 2))`
-/

namespace A317454.P16642599501047538748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317458 (A167614 (n + 2) + 1).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A317454.P16642599501047538748

/-!
# A317455: Number of nX5 0..1 arrays with every element unequal to 1, 2, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317455, there is no canonical definition to state claims against.
-/

/-! ## A317455.P10038714057267923538

`A317458(A374005(n+1))`
-/

namespace A317455.P10038714057267923538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317458 (A374005 (n + 1)).toNat

end

end A317455.P10038714057267923538

/-! ## A317455.P9631197278439591034

`A317458(A167499(n+3))`
-/

namespace A317455.P9631197278439591034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317458 (A167499 (n + 3)).toNat

end

end A317455.P9631197278439591034

/-! ## A317455.P1197394621245121281

`A317458(A155212(n)+13)`
-/

namespace A317455.P1197394621245121281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317458 (A155212 n + 13).toNat

end

end A317455.P1197394621245121281

/-! ## A317455.P10225249081646826064

`A317458(A056000(n)+15)`
-/

namespace A317455.P10225249081646826064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317458 (A056000 n + 15).toNat

end

end A317455.P10225249081646826064

/-! ## A317455.P9902923033844125974

`A317458(eq[7, A066657(n)])`
-/

namespace A317455.P9902923033844125974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317458 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317455.P9902923033844125974

/-!
# A317456: Number of nX6 0..1 arrays with every element unequal to 1, 2, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317456, there is no canonical definition to state claims against.
-/

/-! ## A317456.P4986966443685946769

`A317458(A374007(n+1))`
-/

namespace A317456.P4986966443685946769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317458 (A374007 (n + 1)).toNat

end

end A317456.P4986966443685946769

/-! ## A317456.P12314142513510856083

`A317458(A166136(n+4))`
-/

namespace A317456.P12314142513510856083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317458 (A166136 (n + 4)).toNat

end

end A317456.P12314142513510856083

/-! ## A317456.P13021421377109637468

`A317458(A056115(n)+21)`
-/

namespace A317456.P13021421377109637468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317458 (A056115 n + 21).toNat

end

end A317456.P13021421377109637468

/-! ## A317456.P10534999305809361421

`A317458(A167499(n+4)+1)`
-/

namespace A317456.P10534999305809361421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317458 (A167499 (n + 4) + 1).toNat

end

end A317456.P10534999305809361421

/-! ## A317456.P15857662351418890018

`A317458(A000217(n+5)+6)`
-/

namespace A317456.P15857662351418890018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317458 (A000217 (n + 5) + 6).toNat

end

end A317456.P15857662351418890018

/-!
# A317457: Number of nX7 0..1 arrays with every element unequal to 1, 2, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317457, there is no canonical definition to state claims against.
-/

/-! ## A317457.P17223115296810191965

`A317458(A374008(n+1))`
-/

namespace A317457.P17223115296810191965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317458 (A374008 (n + 1)).toNat

end

end A317457.P17223115296810191965

/-! ## A317457.P2909264465274400551

`A317458(A056119(n)+28)`
-/

namespace A317457.P2909264465274400551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317458 (A056119 n + 28).toNat

end

end A317457.P2909264465274400551

/-! ## A317457.P11370790589268033234

`A317458(eq[11, A066657(n)])`
-/

namespace A317457.P11370790589268033234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317458 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317457.P11370790589268033234

/-! ## A317457.P5260184929102604372

`A317458(A167499(n+5)+2)`
-/

namespace A317457.P5260184929102604372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317458 (A167499 (n + 5) + 2).toNat

end

end A317457.P5260184929102604372

/-! ## A317457.P12466250395743167261

`A317458(A167614(n+5)+4)`
-/

namespace A317457.P12466250395743167261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317458 (A167614 (n + 5) + 4).toNat

end

end A317457.P12466250395743167261

/-!
# A317458: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 1, 2, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317458, there is no canonical definition to state claims against.
-/

/-! ## A317458.P8302168458373717336

`A316176(n+1)+A186034(A022167(n))`
-/

namespace A317458.P8302168458373717336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316176 (n + 1) + A186034 (A022167 n).toNat

end

end A317458.P8302168458373717336

/-! ## A317458.P11147298995418518458

`A316176(n+1)+A184159(A099594(n))`
-/

namespace A317458.P11147298995418518458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316176 (n + 1) + A184159 (A099594 n).toNat

end

end A317458.P11147298995418518458

/-! ## A317458.P4844433143559614503

`A316176(n+1)+A173920(A173917(n))`
-/

namespace A317458.P4844433143559614503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316176 (n + 1) + A173920 (A173917 n).toNat

end

end A317458.P4844433143559614503

/-! ## A317458.P9111976083419823762

`A316176(n+1)+A237048(A016958(n))`
-/

namespace A317458.P9111976083419823762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316176 (n + 1) + A237048 (A016958 n).toNat

end

end A317458.P9111976083419823762

/-! ## A317458.P8395661061017333327

`A316648(n+1)+A174875(A157177(n))`
-/

namespace A317458.P8395661061017333327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316648 (n + 1) + A174875 (A157177 n).toNat

end

end A317458.P8395661061017333327

/-!
# A317459: Number of nXn 0..1 arrays with every element unequal to 2, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317459, there is no canonical definition to state claims against.
-/

/-! ## A317459.P7683446971860862394

`A317465(∑[4*n]+1)`
-/

namespace A317459.P7683446971860862394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317465 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A317459.P7683446971860862394

/-! ## A317459.P4088138214036539129

`record[A003982(n)*A317465(n+1)]`
-/

namespace A317459.P4088138214036539129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A317465 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317459.P4088138214036539129

/-! ## A317459.P8833971794087227526

`A057427(n)*A317465(A001844(n))`
-/

namespace A317459.P8833971794087227526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A317465 (A001844 n).toNat

end

end A317459.P8833971794087227526

/-! ## A317459.P10682896941137774943

`A178489(n)*A317465(A001844(n))`
-/

namespace A317459.P10682896941137774943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n * A317465 (A001844 n).toNat

end

end A317459.P10682896941137774943

/-!
# A317460: Number of nX3 0..1 arrays with every element unequal to 2, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317460, there is no canonical definition to state claims against.
-/

/-! ## A317460.P11791206530273765850

`A317465(∑[n+2]+4)`
-/

namespace A317460.P11791206530273765850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317465 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A317460.P11791206530273765850

/-! ## A317460.P7536613839034561703

`A317465(A167614(n+1))+A185284(n)`
-/

namespace A317460.P7536613839034561703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317465 (A167614 (n + 1)).toNat + A185284 n

end

end A317460.P7536613839034561703

/-! ## A317460.P11984413638142752947

`A057427(n)*A317465(A167614(n+1))`
-/

namespace A317460.P11984413638142752947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A317465 (A167614 (n + 1)).toNat

end

end A317460.P11984413638142752947

/-! ## A317460.P1344276558285678068

`A178489(n)*A317465(A167614(n+1))`
-/

namespace A317460.P1344276558285678068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n * A317465 (A167614 (n + 1)).toNat

end

end A317460.P1344276558285678068

/-!
# A317461: Number of nX4 0..1 arrays with every element unequal to 2, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317461, there is no canonical definition to state claims against.
-/

/-! ## A317461.P2496101054342982461

`A317465(A374004(n+1))`
-/

namespace A317461.P2496101054342982461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317465 (A374004 (n + 1)).toNat

end

end A317461.P2496101054342982461

/-! ## A317461.P17162400456180652924

`A317465(A141214(n)+7)`
-/

namespace A317461.P17162400456180652924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317465 (A141214 n + 7).toNat

end

end A317461.P17162400456180652924

/-! ## A317461.P17614952168344572697

`A317465(A052905(n)+9)`
-/

namespace A317461.P17614952168344572697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317465 (A052905 n + 9).toNat

end

end A317461.P17614952168344572697

/-! ## A317461.P15904276043588996234

`A317465(A055999(n)+10)`
-/

namespace A317461.P15904276043588996234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317465 (A055999 n + 10).toNat

end

end A317461.P15904276043588996234

/-! ## A317461.P8849812144908595089

`A317465(A167614(n+2)+1)`
-/

namespace A317461.P8849812144908595089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317465 (A167614 (n + 2) + 1).toNat

end

end A317461.P8849812144908595089

/-!
# A317462: Number of nX5 0..1 arrays with every element unequal to 2, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317462, there is no canonical definition to state claims against.
-/

/-! ## A317462.P13779846608673530221

`A317465(A374005(n+1))`
-/

namespace A317462.P13779846608673530221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317465 (A374005 (n + 1)).toNat

end

end A317462.P13779846608673530221

/-! ## A317462.P10228315437424023854

`A317465(A167499(n+3))`
-/

namespace A317462.P10228315437424023854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317465 (A167499 (n + 3)).toNat

end

end A317462.P10228315437424023854

/-! ## A317462.P16903861696194291020

`A317465(A155212(n)+13)`
-/

namespace A317462.P16903861696194291020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317465 (A155212 n + 13).toNat

end

end A317462.P16903861696194291020

/-! ## A317462.P1647068271718477155

`A317465(A056000(n)+15)`
-/

namespace A317462.P1647068271718477155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317465 (A056000 n + 15).toNat

end

end A317462.P1647068271718477155

/-! ## A317462.P13133598187693181261

`A317465(eq[6, A131818(n+1)])`
-/

namespace A317462.P13133598187693181261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317465 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317462.P13133598187693181261

/-!
# A317463: Number of nX6 0..1 arrays with every element unequal to 2, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317463, there is no canonical definition to state claims against.
-/

/-! ## A317463.P12079344010980983999

`A317465(A374007(n+1))`
-/

namespace A317463.P12079344010980983999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317465 (A374007 (n + 1)).toNat

end

end A317463.P12079344010980983999

/-! ## A317463.P226449713138935254

`A317465(A000217(n+5)+6)`
-/

namespace A317463.P226449713138935254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317465 (A000217 (n + 5) + 6).toNat

end

end A317463.P226449713138935254

/-! ## A317463.P4745383823957608775

`A317465(eq[7, A131818(n+1)])`
-/

namespace A317463.P4745383823957608775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317465 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317463.P4745383823957608775

/-! ## A317463.P2013934625268672234

`A317465(A052905(n+3))`
-/

namespace A317463.P2013934625268672234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317465 (A052905 (n + 3)).toNat

end

end A317463.P2013934625268672234

/-! ## A317463.P8513488304584549074

`A317465(eq[3, A219347(n)])`
-/

namespace A317463.P8513488304584549074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317465 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317463.P8513488304584549074

/-!
# A317464: Number of n X 7 0..1 arrays with every element unequal to 2, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317464, there is no canonical definition to state claims against.
-/

/-! ## A317464.P3561699175821396803

`A317465(A374008(n+1))`
-/

namespace A317464.P3561699175821396803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317465 (A374008 (n + 1)).toNat

end

end A317464.P3561699175821396803

/-! ## A317464.P12529378515668094315

`A317465(A000217(n+6)+7)`
-/

namespace A317464.P12529378515668094315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317465 (A000217 (n + 6) + 7).toNat

end

end A317464.P12529378515668094315

/-! ## A317464.P15918100985379906176

`A317465(eq[8, A131818(n+1)])`
-/

namespace A317464.P15918100985379906176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317465 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317464.P15918100985379906176

/-! ## A317464.P962312239084753009

`A317465(eq[4, A219347(n)])`
-/

namespace A317464.P962312239084753009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317465 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317464.P962312239084753009

/-! ## A317464.P17604247308039646900

`A317465(eq[6, A193592(n)])`
-/

namespace A317464.P17604247308039646900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317465 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317464.P17604247308039646900

/-!
# A317465: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 2, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317465, there is no canonical definition to state claims against.
-/

/-! ## A317465.P289919135162199189

`A321537(A091441(n+1))+A304767(n+1)`
-/

namespace A317465.P289919135162199189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321537 (A091441 (n + 1)).toNat + A304767 (n + 1)

end

end A317465.P289919135162199189

/-! ## A317465.P16518764967708086125

`A321537(A091441(n+1))+A316511(n+1)`
-/

namespace A317465.P16518764967708086125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321537 (A091441 (n + 1)).toNat + A316511 (n + 1)

end

end A317465.P16518764967708086125

/-!
# A317466: Squares visited by a (2,2)-leaper on a spirally numbered board and moving to the lowest available unvisited square at each step, squares labelled >=0.

The programs for A317466, there is no canonical definition to state claims against.
-/

/-! ## A317466.P9562376739186004904

`A317467(n+1)-1`
-/

namespace A317466.P9562376739186004904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317467 (n + 1) - 1

end

end A317466.P9562376739186004904

/-! ## A317466.P6229153784278238111

`filter[A316967(2*n), A121262(#)]`
-/

namespace A317466.P6229153784278238111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316967 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A317466.P6229153784278238111

/-! ## A317466.P7520459983426957959

`filter[A316967(2*n), A152822(#)]`
-/

namespace A317466.P7520459983426957959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316967 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A317466.P7520459983426957959

/-! ## A317466.P15764296414800933590

`filter[A316967(2*n), A353494(#)]`
-/

namespace A317466.P15764296414800933590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316967 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353494 (f1 j).toNat = 1) n)

end

end A317466.P15764296414800933590

/-! ## A317466.P11475804486560213768

`filter[A316967(2*n), A358680(#)]`
-/

namespace A317466.P11475804486560213768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316967 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358680 (f1 j).toNat = 1) n)

end

end A317466.P11475804486560213768

/-! ## A317466.P14244128159567749400

`filter[A316967(2*n), A374036(#)]`
-/

namespace A317466.P14244128159567749400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316967 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374036 (f1 j).toNat = 1) n)

end

end A317466.P14244128159567749400

/-! ## A317466.P15079286062541213150

`filter[A316967(2*n), A374045(#)]`
-/

namespace A317466.P15079286062541213150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316967 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374045 (f1 j).toNat = 1) n)

end

end A317466.P15079286062541213150

/-! ## A317466.P6618991040052815255

`A316967(A316967(A316967(n)))`
-/

namespace A317466.P6618991040052815255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316967 (A316967 (A316967 n).toNat).toNat

end

end A317466.P6618991040052815255

/-! ## A317466.P4174836797124827336

`A004442(A317467(n+1))`
-/

namespace A317466.P4174836797124827336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A317467 (n + 1)).toNat

end

end A317466.P4174836797124827336

/-! ## A317466.P9575877536388294523

`and(A175067(A317467(n+1)+1), A317467(n+1))`
-/

namespace A317466.P9575877536388294523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A175067 (A317467 (n + 1) + 1).toNat) (A317467 (n + 1))

end

end A317466.P9575877536388294523

/-! ## A317466.P3205524571394902110

`A004524(2*A317467(n+1))`
-/

namespace A317466.P3205524571394902110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (2 * A317467 (n + 1)).toNat

end

end A317466.P3205524571394902110

/-! ## A317466.P7378560997228111314

`and(A181358(n), A317467(n+1))`
-/

namespace A317466.P7378560997228111314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A181358 n) (A317467 (n + 1))

end

end A317466.P7378560997228111314

/-!
# A317467: Squares visited by a (2,2)-leaper on a spirally numbered board and moving to the lowest available unvisited square at each step, squares labelled >=1.

The programs for A317467, there is no canonical definition to state claims against.
-/

/-! ## A317467.P11253252398608277169

`A317466(n)+1`
-/

namespace A317467.P11253252398608277169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317466 n + 1

end

end A317467.P11253252398608277169

/-! ## A317467.P16503993923786095543

`xor(1, A317466(xor(1, xor(1, n))))`
-/

namespace A317467.P16503993923786095543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A317466 (Nat.xor 1 (Nat.xor 1 n)))

end

end A317467.P16503993923786095543

/-! ## A317467.P9695192432642764846

`A316884(A316884(A316884(n+1)))`
-/

namespace A317467.P9695192432642764846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316884 (A316884 (A316884 (n + 1)).toNat).toNat

end

end A317467.P9695192432642764846

/-! ## A317467.P1053898642800827111

`A316967(A316967(A316967(n)))+1`
-/

namespace A317467.P1053898642800827111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316967 (A316967 (A316967 n).toNat).toNat + 1

end

end A317467.P1053898642800827111

/-! ## A317467.P17901871203794358931

`A004442(A317466(n))`
-/

namespace A317467.P17901871203794358931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A317466 n).toNat

end

end A317467.P17901871203794358931

/-!
# A317468: Numbers missing from A317466.

The programs for A317468, there is no canonical definition to state claims against.
-/

/-! ## A317468.P10279464307393313847

`comp[A317466(n)]`
-/

namespace A317468.P10279464307393313847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317466 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A317468.P10279464307393313847

/-! ## A317468.P4079016564869450076

`A317469(n+1)-1`
-/

namespace A317468.P4079016564869450076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317469 (n + 1) - 1

end

end A317468.P4079016564869450076

/-! ## A317468.P500308304297624406

`A346104(A208936(∑{e}[n, #]+1)+1)+A317469(n+1)`
-/

namespace A317468.P500308304297624406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346104 (A208936 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1) + 1).toNat + A317469 (n + 1)

end

end A317468.P500308304297624406

/-! ## A317468.P13900384951294860234

`lt[char[A316967(A316967(2*n))], 1]`
-/

namespace A317468.P13900384951294860234
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316967 (A316967 (2 * n)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A317468.P13900384951294860234

/-! ## A317468.P13200753093233334247

`eq[char[A317467(n+1)-1], A000038(n)]`
-/

namespace A317468.P13200753093233334247
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317467 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A317468.P13200753093233334247

/-! ## A317468.P10281217915445021700

`A023443(A317469(n+1))`
-/

namespace A317468.P10281217915445021700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A317469 (n + 1)).toNat

end

end A317468.P10281217915445021700

/-! ## A317468.P9988813817647211634

`eq[char[A317467(n+1)], A000007(n)]-1`
-/

namespace A317468.P9988813817647211634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317467 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n : ℤ) - 1

end

end A317468.P9988813817647211634

/-! ## A317468.P5606426750626172142

`A346104(A208936(59*n+1)+1)+A317469(n+1)`
-/

namespace A317468.P5606426750626172142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346104 (A208936 (59 * n + 1) + 1).toNat + A317469 (n + 1)

end

end A317468.P5606426750626172142

/-!
# A317469: Numbers missing from A317467.

The programs for A317469, there is no canonical definition to state claims against.
-/

/-! ## A317469.P6458358845449572583

`comp[A317466(n)]+1`
-/

namespace A317469.P6458358845449572583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317466 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A317469.P6458358845449572583

/-! ## A317469.P1681715522145429534

`A317468(n+1)+1`
-/

namespace A317469.P1681715522145429534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317468 (n + 1) + 1

end

end A317469.P1681715522145429534

/-! ## A317469.P5038377044810330931

`A020725(A317468(n+1))`
-/

namespace A317469.P5038377044810330931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A317468 (n + 1)).toNat

end

end A317469.P5038377044810330931

/-! ## A317469.P4865801850473026207

`eq[char[A317467(n+1)], A000007(n)]`
-/

namespace A317469.P4865801850473026207
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317467 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A317469.P4865801850473026207

/-! ## A317469.P15112464309774727251

`eq[char[A317467(n+1)], A000038(n)]`
-/

namespace A317469.P15112464309774727251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317467 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A317469.P15112464309774727251

/-!
# A317470: Squares visited by a (2,3)-leaper (or zebra) on a spirally numbered board and moving to the lowest available unvisited square at each step, squares labelled >=0.

The programs for A317470, there is no canonical definition to state claims against.
-/

/-! ## A317470.P8221954509069175943

`A317471(n+1)-1`
-/

namespace A317470.P8221954509069175943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317471 (n + 1) - 1

end

end A317470.P8221954509069175943

/-! ## A317470.P7745523888091068954

`A023443(A317471(n+1))`
-/

namespace A317470.P7745523888091068954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A317471 (n + 1)).toNat

end

end A317470.P7745523888091068954

/-! ## A317470.P14472209633801323597

`abs(A317471(n+1)+A033999(2*n+1))`
-/

namespace A317470.P14472209633801323597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A317471 (n + 1) + A033999 (2 * n + 1)|

end

end A317470.P14472209633801323597

/-! ## A317470.P16065145795017745910

`abs(A317471(n+1)+A123969(gcd(n, n+1)))`
-/

namespace A317470.P16065145795017745910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A317471 (n + 1) + A123969 (Nat.gcd n (n + 1))|

end

end A317470.P16065145795017745910

/-! ## A317470.P8747415226119446354

`A317505(A020639(12*n+3))+A317471(n+1)`
-/

namespace A317470.P8747415226119446354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317505 (A020639 (12 * n + 3)).toNat + A317471 (n + 1)

end

end A317470.P8747415226119446354

/-! ## A317470.P2875266415681526148

`A065423(2*A317471(n+1))`
-/

namespace A317470.P2875266415681526148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (2 * A317471 (n + 1)).toNat

end

end A317470.P2875266415681526148

/-! ## A317470.P1739566822959465643

`A000027(A317471(n+1))+A008683(A057673(n))`
-/

namespace A317470.P1739566822959465643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A317471 (n + 1)).toNat + A008683 (A057673 n).toNat

end

end A317470.P1739566822959465643

/-!
# A317471: Squares visited by a (2,3)-leaper (or zebra) on a spirally numbered board and moving to the lowest available unvisited square at each step, squares labelled >=1.

The programs for A317471, there is no canonical definition to state claims against.
-/

/-! ## A317471.P975251831700746549

`A317470(n)+1`
-/

namespace A317471.P975251831700746549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317470 n + 1

end

end A317471.P975251831700746549

/-! ## A317471.P15281707327243610989

`2-(A020985(n)²-A317470(n))`
-/

namespace A317471.P15281707327243610989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A020985 n ^ 2 - A317470 n)

end

end A317471.P15281707327243610989

/-! ## A317471.P14680957180937671866

`A008619(2*A317470(n))`
-/

namespace A317471.P14680957180937671866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A317470 n).toNat

end

end A317471.P14680957180937671866

/-! ## A317471.P16357854095140958021

`A052938(2*A317470(n))`
-/

namespace A317471.P16357854095140958021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * A317470 n).toNat

end

end A317471.P16357854095140958021

/-! ## A317471.P9686319350893548630

`A008611(3*A317470(n))`
-/

namespace A317471.P9686319350893548630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A317470 n).toNat

end

end A317471.P9686319350893548630

/-! ## A317471.P10362548377292158799

`A008620(3*A317470(n))`
-/

namespace A317471.P10362548377292158799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A317470 n).toNat

end

end A317471.P10362548377292158799

/-! ## A317471.P8246946914464095685

`A008621(4*A317470(n))`
-/

namespace A317471.P8246946914464095685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (4 * A317470 n).toNat

end

end A317471.P8246946914464095685

/-! ## A317471.P8985536347358562712

`A103221(6*A317470(n))`
-/

namespace A317471.P8985536347358562712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (6 * A317470 n).toNat

end

end A317471.P8985536347358562712

/-!
# A317472: Numbers missing from A317470.

The programs for A317472, there is no canonical definition to state claims against.
-/

/-! ## A317472.P10591925447800195160

`A317473(n+1)-1`
-/

namespace A317472.P10591925447800195160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317473 (n + 1) - 1

end

end A317472.P10591925447800195160

/-!
# A317473: Numbers missing from A317471.

The programs for A317473, there is no canonical definition to state claims against.
-/

/-! ## A317473.P3897493080945697663

`A317472(n+1)+1`
-/

namespace A317473.P3897493080945697663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317472 (n + 1) + 1

end

end A317473.P3897493080945697663

/-!
# A317474: The number of solutions to sigma(x) = sigma(x+1) below 10^n, where sigma(x) is the sum of divisors function (A000203).

The programs for A317474, there is no canonical definition to state claims against.
-/

/-! ## A317474.P17372516554247050211

`A003056(A098183(n)*A115795(n+1))`
-/

namespace A317474.P17372516554247050211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A098183 n * A115795 (n + 1)).toNat

end

end A317474.P17372516554247050211

/-! ## A317474.P9835625160773765080

`∑[A110920(A110920(n+1)+A110880(n+1))]`
-/

namespace A317474.P9835625160773765080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110920 (A110920 (n + 1) + A110880 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317474.P9835625160773765080

/-!
# A317475: Numbers k such that k^2 | A038199(k).

The programs for A317475, there is no canonical definition to state claims against.
-/

/-! ## A317475.P15619938588338007000

`eq[n, gcd(n, A001037(n))]`
-/

namespace A317475.P15619938588338007000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A001037 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A317475.P15619938588338007000

/-! ## A317475.P765795502438694811

`record[and(A000118(n), A249936(n))]`
-/

namespace A317475.P765795502438694811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000118 n) (A249936 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317475.P765795502438694811

/-! ## A317475.P4228814998599058526

`∩[A176817(n+1), A219529(n)]`
-/

namespace A317475.P4228814998599058526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176817 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317475.P4228814998599058526

/-!
# A317478: Triangular numbers whose sum of divisors is an oblong number.

The programs for A317478, there is no canonical definition to state claims against.
-/

/-! ## A317478.P2270385715385128386

`∩[A236387(n+1), A000217(n)]`
-/

namespace A317478.P2270385715385128386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317478.P2270385715385128386

/-! ## A317478.P2235111576845599158

`∩[A236387(n+1), A253145(n)]`
-/

namespace A317478.P2235111576845599158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317478.P2235111576845599158

/-! ## A317478.P9114668489682436587

`∩[A005214(n+1), A236387(n+1)]`
-/

namespace A317478.P9114668489682436587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317478.P9114668489682436587

/-! ## A317478.P1812303337472799746

`∩[A024412(n+1), A236387(n+1)]`
-/

namespace A317478.P1812303337472799746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317478.P1812303337472799746

/-! ## A317478.P5268748591949482438

`∩[A082667(n+1), A236387(n+1)]`
-/

namespace A317478.P5268748591949482438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317478.P5268748591949482438

/-!
# A317479: Primes with record values of corresponding Fortunate numbers (A005235).

The programs for A317479, there is no canonical definition to state claims against.
-/

/-! ## A317479.P2206800866210893493

`eq[A132747(A213622(n+2)), A383095(n)]`
-/

namespace A317479.P2206800866210893493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132747 (A213622 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383095 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A317479.P2206800866210893493

/-! ## A317479.P1030200739494958312

`∩[A161390(n+1), A178762(n+1)]`
-/

namespace A317479.P1030200739494958312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317479.P1030200739494958312

/-! ## A317479.P4588001836029764829

`∩[A178762(n+1), A186290(n+1)]`
-/

namespace A317479.P4588001836029764829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317479.P4588001836029764829

/-! ## A317479.P10007710146847122780

`∩[A162855(n+1), A227508(n+1)]`
-/

namespace A317479.P10007710146847122780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227508 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317479.P10007710146847122780

/-! ## A317479.P699050558203783400

`∩[A178762(n+1), A247753(n+1)]`
-/

namespace A317479.P699050558203783400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317479.P699050558203783400

/-!
# A317483: Circuit rank of the n-Bruhat graph.

The programs for A317483, the canonical program `A317483.P6435096203121240477` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317483 has offset 1).

The definition of A317483 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A317483.P6435096203121240477

`(n-2)*(n+1)!/2+1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A317483

/-- `(n-2)*(n+1)!/2+1` -/
def P6435096203121240477.Spec : Prop :=
  ∀ n, P6435096203121240477.a n = (A317483 (n + 1) : ℚ)

end A317483

/-! ## A317483.P9753001962983992531

`n!*∑[n-1]+1`
-/

namespace A317483.P9753001962983992531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A317483.P9753001962983992531

namespace A317483

/-- `n!*∑[n-1]+1` -/
def P9753001962983992531.Spec : Prop :=
  ∀ n, P9753001962983992531.a n = A317483 (n + 1)

end A317483

/-! ## A317483.P10621623915273414573

`1-n!*∑[1-n]`
-/

namespace A317483.P10621623915273414573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A317483.P10621623915273414573

namespace A317483

/-- `1-n!*∑[1-n]` -/
def P10621623915273414573.Spec : Prop :=
  ∀ n, P10621623915273414573.a n = A317483 (n + 1)

end A317483

/-! ## A317483.P7175087705036209346

`(C(n, 2)-1)*n!+1`
-/

namespace A317483.P7175087705036209346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose n 2 : ℤ) - 1) * (Nat.factorial n : ℤ) + 1

end

end A317483.P7175087705036209346

namespace A317483

/-- `(C(n, 2)-1)*n!+1` -/
def P7175087705036209346.Spec : Prop :=
  ∀ n, P7175087705036209346.a n = A317483 (n + 1)

end A317483

/-! ## A317483.P6041264145985247904

`1-(1-n/2)*∏[n+1]`
-/

namespace A317483.P6041264145985247904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (1 - (n : ℚ) / 2) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A317483.P6041264145985247904

namespace A317483

/-- `1-(1-n/2)*∏[n+1]` -/
def P6041264145985247904.Spec : Prop :=
  ∀ n, P6041264145985247904.a n = (A317483 (n + 1) : ℚ)

end A317483

/-! ## A317483.P15576237440358107360

`∑[(n-1)*A018931(n+3)/2]`
-/

namespace A317483.P15576237440358107360
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℚ) * ((A018931 (n + 3) : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317483.P15576237440358107360

namespace A317483

/-- `∑[(n-1)*A018931(n+3)/2]` -/
def P15576237440358107360.Spec : Prop :=
  ∀ n, P15576237440358107360.a n = (A317483 (n + 1) : ℚ)

end A317483

/-! ## A317483.P14259846176223542258

`∑[Δ[A104150(n)]*A161680(n)]`
-/

namespace A317483.P14259846176223542258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317483.P14259846176223542258

namespace A317483

/-- `∑[Δ[A104150(n)]*A161680(n)]` -/
def P14259846176223542258.Spec : Prop :=
  ∀ n, P14259846176223542258.a n = A317483 (n + 1)

end A317483

/-!
# A317486: Number of 6-cycles in the n-Bruhat graph.

The programs for A317486, there is no canonical definition to state claims against.
-/

/-! ## A317486.P464523860384804321

`A174025(Δ[∏[A000105(n)]])`
-/

namespace A317486.P464523860384804321
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000105 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174025 (f1 (n + 1) - f1 n).toNat

end

end A317486.P464523860384804321

/-! ## A317486.P7967784468408739418

`A004396(A001499(n)*A004396(n))`
-/

namespace A317486.P7967784468408739418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A001499 n * A004396 n).toNat

end

end A317486.P7967784468408739418

/-!
# A317487: Number of 4-cycles in the n-Bruhat graph.

The programs for A317487, there is no canonical definition to state claims against.
-/

/-! ## A317487.P15495208260949216499

`3*abs(1-n)!*C(n+1, 4)`
-/

namespace A317487.P15495208260949216499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (Nat.factorial |1 - (n : ℤ)|.toNat * Nat.choose (n + 1) 4)

end

end A317487.P15495208260949216499

/-! ## A317487.P17830607547374632679

`3*A216119(n+1)`
-/

namespace A317487.P17830607547374632679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A216119 (n + 1)

end

end A317487.P17830607547374632679

/-! ## A317487.P11005864075270466059

`A050534(n)*A104150(n)`
-/

namespace A317487.P11005864075270466059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050534 n * A104150 n

end

end A317487.P11005864075270466059

/-! ## A317487.P3992675755191283478

`A161680(C(n, 2))*A000142(abs(1-n))`
-/

namespace A317487.P3992675755191283478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (Nat.choose n 2) * A000142 |1 - (n : ℤ)|.toNat

end

end A317487.P3992675755191283478

/-! ## A317487.P17578673606126043372

`A050534(n)*A098361(A000124(n))`
-/

namespace A317487.P17578673606126043372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050534 n * A098361 (A000124 n).toNat

end

end A317487.P17578673606126043372

/-! ## A317487.P6168518951835722029

`A047920(A161680(n))*A050534(n)`
-/

namespace A317487.P6168518951835722029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (A161680 n).toNat * A050534 n

end

end A317487.P6168518951835722029

/-! ## A317487.P6177633407777648203

`A104150(n)*A161680(A161680(n))`
-/

namespace A317487.P6177633407777648203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 n * A161680 (A161680 n).toNat

end

end A317487.P6177633407777648203

/-! ## A317487.P13877098876544814862

`(A152947(A152947(n+1))-1)*A104150(n)`
-/

namespace A317487.P13877098876544814862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A152947 (A152947 (n + 1)).toNat - 1) * A104150 n

end

end A317487.P13877098876544814862

/-! ## A317487.P5430978726880539552

`A084938(A000124(n))*A161680(A161680(n))`
-/

namespace A317487.P5430978726880539552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (A000124 n).toNat * A161680 (A161680 n).toNat

end

end A317487.P5430978726880539552

/-! ## A317487.P12333553340305952828

`A081123(A004273(n))*A161680(A161680(n))`
-/

namespace A317487.P12333553340305952828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 (A004273 n).toNat * A161680 (A161680 n).toNat

end

end A317487.P12333553340305952828

/-!
# A317489: Irregular triangle read by rows. For n >= 3 and 1 <= k <= floor(n/3), T(n,k) is the number of palindromic compositions of n into k parts of size at least 3.

The programs for A317489, there is no canonical definition to state claims against.
-/

/-! ## A317489.P18149936666528966611

`2*A228570(n)-A102547(n)`
-/

namespace A317489.P18149936666528966611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A228570 n - A102547 n

end

end A317489.P18149936666528966611

/-! ## A317489.P17392012925939050999

`A004277(A228570(n))-A102547(n)`
-/

namespace A317489.P17392012925939050999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A228570 n).toNat - A102547 n

end

end A317489.P17392012925939050999

/-! ## A317489.P12396730851689277603

`A004277(A228570(n))+A102547(n)*A163804(3*n+1)`
-/

namespace A317489.P12396730851689277603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A228570 n).toNat + A102547 n * A163804 (3 * n + 1)

end

end A317489.P12396730851689277603

/-! ## A317489.P10383370436313611908

`and(A092422(A255935(2*n)), A102547(n))`
-/

namespace A317489.P10383370436313611908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A092422 (A255935 (2 * n)).toNat) (A102547 n)

end

end A317489.P10383370436313611908

/-! ## A317489.P15305842690712195521

`A102547(n)%A102640(A315972(n))`
-/

namespace A317489.P15305842690712195521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102547 n) (A102640 (A315972 n).toNat)

end

end A317489.P15305842690712195521

/-!
# A317490: a(n) = min {i - j} where i*j is a factorization of the n-th partial product of the semiprimes (A112141).

The programs for A317490, there is no canonical definition to state claims against.
-/

/-! ## A317490.P9688062210688159668

`A214950(A214954(n))-A023531(n)`
-/

namespace A317490.P9688062210688159668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214950 (A214954 n).toNat - A023531 n

end

end A317490.P9688062210688159668

/-! ## A317490.P7501273741828774733

`A214950(A214954(n))-A337165(n)`
-/

namespace A317490.P7501273741828774733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214950 (A214954 n).toNat - A337165 n

end

end A317490.P7501273741828774733

/-! ## A317490.P6090931494757709969

`A001221(A352646(n))*A288872(n)`
-/

namespace A317490.P6090931494757709969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A352646 n).toNat * A288872 n

end

end A317490.P6090931494757709969

/-!
# A317491: Number of fully normal integer partitions of n.

The programs for A317491, there is no canonical definition to state claims against.
-/

/-! ## A317491.P14312476770444427483

`A332272(n)-A070824(A233583(n+1))`
-/

namespace A317491.P14312476770444427483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332272 n - A070824 (A233583 (n + 1)).toNat

end

end A317491.P14312476770444427483

/-! ## A317491.P9333739043757659851

`A065475(A332272(n))-A032741(n)`
-/

namespace A317491.P9333739043757659851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A332272 n).toNat - A032741 n

end

end A317491.P9333739043757659851

/-! ## A317491.P16397539563141867366

`A325937(A008574(n))+A065475(A332272(n))`
-/

namespace A317491.P16397539563141867366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (A008574 n).toNat + A065475 (A332272 n).toNat

end

end A317491.P16397539563141867366

/-! ## A317491.P5679145926355442433

`A332295(n)-A083896(A000079(n))`
-/

namespace A317491.P5679145926355442433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332295 n - A083896 (A000079 n).toNat

end

end A317491.P5679145926355442433

/-! ## A317491.P15041796452767285359

`A332295(n)-A100910(A003945(n))`
-/

namespace A317491.P15041796452767285359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332295 n - A100910 (A003945 n).toNat

end

end A317491.P15041796452767285359

/-!
# A317492: Heinz numbers of fully normal integer partitions.

The programs for A317492, there is no canonical definition to state claims against.
-/

/-! ## A317492.P6019000271882499937

`comp[A317493(n+1)-1]+1`
-/

namespace A317492.P6019000271882499937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317493 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A317492.P6019000271882499937

/-! ## A317492.P6022378185973228298

`∪[A179983(n+1), A000079(n)]`
-/

namespace A317492.P6022378185973228298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A317492.P6022378185973228298

/-! ## A317492.P1111865422596653512

`∪[A179983(n+1), A008859(n)]`
-/

namespace A317492.P1111865422596653512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008859 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A317492.P1111865422596653512

/-! ## A317492.P11913111737489781185

`∪[A179983(n+1), A008860(n)]`
-/

namespace A317492.P11913111737489781185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008860 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A317492.P11913111737489781185

/-! ## A317492.P5083935899924136607

`∪[A179983(n+1), A008861(n)]`
-/

namespace A317492.P5083935899924136607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008861 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A317492.P5083935899924136607

/-! ## A317492.P15226370524870859120

`∪[A179983(n+1), A008862(n)]`
-/

namespace A317492.P15226370524870859120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008862 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A317492.P15226370524870859120

/-! ## A317492.P2525495701632378391

`∪[A179983(n+1), A008863(n)]`
-/

namespace A317492.P2525495701632378391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008863 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A317492.P2525495701632378391

/-! ## A317492.P10193639158452016266

`∪[A179983(n+1), A020707(n)]`
-/

namespace A317492.P10193639158452016266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A317492.P10193639158452016266

/-! ## A317492.P11058020994386644942

`∪[A179983(n+1), A035001(n)]`
-/

namespace A317492.P11058020994386644942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035001 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A317492.P11058020994386644942

/-! ## A317492.P6218444947508755129

`∪[A179983(n+1), A051535(n)]`
-/

namespace A317492.P6218444947508755129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051535 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A317492.P6218444947508755129

/-!
# A317493: Heinz numbers of integer partitions that are not fully normal.

The programs for A317493, there is no canonical definition to state claims against.
-/

/-! ## A317493.P6124127717883807981

`∪[A362148(n+1), A377702(n+1)]`
-/

namespace A317493.P6124127717883807981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A317493.P6124127717883807981

/-! ## A317493.P6164464186823567660

`∪[A377702(n+1), A378767(n+1)]`
-/

namespace A317493.P6164464186823567660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A317493.P6164464186823567660

/-! ## A317493.P16726986729486469790

`∪[A377702(n+1), A391415(n+1)]`
-/

namespace A317493.P16726986729486469790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A317493.P16726986729486469790

/-! ## A317493.P11188943945567228053

`∩[A340855(n+1), A361204(n+1)]`
-/

namespace A317493.P11188943945567228053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317493.P11188943945567228053

/-!
# A317494: Triangle read by rows: T(0,0) = 1; T(n,k) = T(n-1,k) + 2 * T(n-3,k-1) for k = 0..floor(n/3); T(n,k)=0 for n or k < 0.

The programs for A317494, there is no canonical definition to state claims against.
-/

/-! ## A317494.P1315301017122915880

`abs(A317505(n))`
-/

namespace A317494.P1315301017122915880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A317505 n|

end

end A317494.P1315301017122915880

/-! ## A317494.P18273340904318890477

`lcm((-1)^n, A317505(round(sqrt(n²+1))))`
-/

namespace A317494.P18273340904318890477
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A317505 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat)

end

end A317494.P18273340904318890477

/-! ## A317494.P8847284043102764077

`gcd(A000038(n), A317505(n))`
-/

namespace A317494.P8847284043102764077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A317505 n)

end

end A317494.P8847284043102764077

/-! ## A317494.P16568150730894979529

`∑{d}[A317505(n), A000010(#)]`
-/

namespace A317494.P16568150730894979529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A317494.P16568150730894979529

/-! ## A317494.P1714075274941115813

`∏{d}[A317505(n), A014963(#)]`
-/

namespace A317494.P1714075274941115813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A317494.P1714075274941115813

/-! ## A317494.P16051304862951096784

`gcd(A010815(n), A317505(A010815(n)+n))`
-/

namespace A317494.P16051304862951096784
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010815 n) (A317505 (A010815 n + (n : ℤ)).toNat)

end

end A317494.P16051304862951096784

/-! ## A317494.P6027966354322109623

`lcm(A020985(n)*A317505(n), A020985(n))`
-/

namespace A317494.P6027966354322109623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n * A317505 n) (A020985 n)

end

end A317494.P6027966354322109623

/-!
# A317495: Triangle read by rows: T(0,0) = 1; T(n,k) =2 * T(n-1,k) + T(n-3,k-1) for k = 0..floor(n/3); T(n,k)=0 for n or k < 0.

The programs for A317495, there is no canonical definition to state claims against.
-/

/-! ## A317495.P911047759492052186

`abs(A317504(n))`
-/

namespace A317495.P911047759492052186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A317504 n|

end

end A317495.P911047759492052186

/-! ## A317495.P11495162992297852007

`gcd(A000038(n), A317504(n))`
-/

namespace A317495.P11495162992297852007
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A317504 n)

end

end A317495.P11495162992297852007

/-! ## A317495.P5731232170629356479

`lcm(A020985(n), A317504(n))`
-/

namespace A317495.P5731232170629356479
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A317504 n)

end

end A317495.P5731232170629356479

/-! ## A317495.P13086182916167124052

`lcm(-A317504(n), A062379(n+1))`
-/

namespace A317495.P13086182916167124052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A317504 n) (A062379 (n + 1))

end

end A317495.P13086182916167124052

/-! ## A317495.P12494763351975643133

`A000027(round(sqrt(A317504(n)²+1)))`
-/

namespace A317495.P12494763351975643133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (A317504 n ^ 2 + 1 : ℝ))).toNat

end

end A317495.P12494763351975643133

/-! ## A317495.P219747511360067369

`∑{d}[A317504(n), A000010(#)]`
-/

namespace A317495.P219747511360067369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A317495.P219747511360067369

/-!
# A317496: Triangle T(n,k) = T(n-1,k) + 3*T(n-3,k-1) for k = 0..floor(n/3) with T(0,0) = 1, T(n,k) = 0 for n or k < 0, read by rows.

The programs for A317496, there is no canonical definition to state claims against.
-/

/-! ## A317496.P4498951320126929363

`A000244(A073189(n))*A102547(n)`
-/

namespace A317496.P4498951320126929363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A073189 n).toNat * A102547 n

end

end A317496.P4498951320126929363

/-! ## A317496.P292203264699735793

`(2*A228570(n)-A317489(n+3))*A000244(A073189(n))`
-/

namespace A317496.P292203264699735793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A228570 n - A317489 (n + 3)) * A000244 (A073189 n).toNat

end

end A317496.P292203264699735793

/-! ## A317496.P7166071618950930265

`∏{e}[A351641(3*n+1)^3, #]`
-/

namespace A317496.P7166071618950930265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351641 (3 * n + 1) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A317496.P7166071618950930265

/-! ## A317496.P520026460838007153

`gcd(A000203(A157268(3*n)), A004092(3*(n+1)))`
-/

namespace A317496.P520026460838007153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (A157268 (3 * n)).toNat) (A004092 (3 * (n + 1)))

end

end A317496.P520026460838007153

/-! ## A317496.P10196223749411314352

`A318772(lt[A318771(3*(n+1)), A318776(3*n+1)])`
-/

namespace A317496.P10196223749411314352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318771 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318776 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318772 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A317496.P10196223749411314352

/-!
# A317497: Triangle T(n,k) = 3*T(n-1,k) + T(n-3,k-1) for k = 0..floor(n/3) with T(0,0) = 1 and T(n,k) = 0 for n or k < 0, read by rows.

The programs for A317497, there is no canonical definition to state claims against.
-/

/-! ## A317497.P3087413748981041146

`A317502(n)/A122803(A073189(n))`
-/

namespace A317497.P3087413748981041146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317502 n : ℚ) / (A122803 (A073189 n).toNat : ℚ)

end

end A317497.P3087413748981041146

/-!
# A317498: Triangle read by rows of coefficients in expansions of (-2 + 3*x)^n, where n is nonnegative integer.

The programs for A317498, the canonical program `A317498.P1933526923235161888` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317498 has offset 0).

The definition of A317498 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317498.P2364017151693455313

`A303901(∑[2*n]%comp[∑[n]])`
-/

namespace A317498.P2364017151693455313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303901 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A317498.P2364017151693455313

namespace A317498

/-- `A303901(∑[2*n]%comp[∑[n]])` -/
def P2364017151693455313.Spec : Prop :=
  ∀ n, P2364017151693455313.a n = A317498 n

end A317498

/-! ## A317498.P15841995619193886489

`(and(2, comp[∑[n]]+n)-1)*A013620(n)`
-/

namespace A317498.P15841995619193886489
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℤ) - 1) * A013620 n

end

end A317498.P15841995619193886489

namespace A317498

/-- `(and(2, comp[∑[n]]+n)-1)*A013620(n)` -/
def P15841995619193886489.Spec : Prop :=
  ∀ n, P15841995619193886489.a n = A317498 n

end A317498

/-! ## A317498.P1933526923235161888

`A303901(A061579(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A317498

/-- `A303901(A061579(n))` -/
def P1933526923235161888.Spec : Prop :=
  ∀ n, P1933526923235161888.a n = A317498 n

theorem P1933526923235161888.correct : P1933526923235161888.Spec := by
  intro n
  simp only [A317498]

end A317498

/-! ## A317498.P4304772055245149703

`A303901(A114327(n)+n)`
-/

namespace A317498.P4304772055245149703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303901 (A114327 n + (n : ℤ)).toNat

end

end A317498.P4304772055245149703

namespace A317498

/-- `A303901(A114327(n)+n)` -/
def P4304772055245149703.Spec : Prop :=
  ∀ n, P4304772055245149703.a n = A317498 n

end A317498

/-! ## A317498.P190365129448933114

`A013620(n)*A097807(n)`
-/

namespace A317498.P190365129448933114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013620 n * A097807 n

end

end A317498.P190365129448933114

namespace A317498

/-- `A013620(n)*A097807(n)` -/
def P190365129448933114.Spec : Prop :=
  ∀ n, P190365129448933114.a n = A317498 n

end A317498

/-! ## A317498.P7374447900493486696

`A036561(n)*A130595(n)`
-/

namespace A317498.P7374447900493486696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n * A130595 n

end

end A317498.P7374447900493486696

namespace A317498

/-- `A036561(n)*A130595(n)` -/
def P7374447900493486696.Spec : Prop :=
  ∀ n, P7374447900493486696.a n = A317498 n

end A317498

/-! ## A317498.P15748203047333689397

`(A230445(n)+1)*A130595(n)`
-/

namespace A317498.P15748203047333689397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A230445 n + 1) * A130595 n

end

end A317498.P15748203047333689397

namespace A317498

/-- `(A230445(n)+1)*A130595(n)` -/
def P15748203047333689397.Spec : Prop :=
  ∀ n, P15748203047333689397.a n = A317498 n

end A317498

/-! ## A317498.P3140273177373816791

`(A094617(n+1)-1)*A130595(n)`
-/

namespace A317498.P3140273177373816791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A094617 (n + 1) - 1) * A130595 n

end

end A317498.P3140273177373816791

namespace A317498

/-- `(A094617(n+1)-1)*A130595(n)` -/
def P3140273177373816791.Spec : Prop :=
  ∀ n, P3140273177373816791.a n = A317498 n

end A317498

/-!
# A317499: Coefficients in expansion of 1/(1 + 2*x - 3*x^3).

The programs for A317499, the canonical program `A317499.P9497918988111552798` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317499 has offset 0).

The definition of A317499 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317499.P9497918988111552798

`1-3*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=-2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A317499

/-- `1-3*(a(n-1)+a(n-2))` -/
def P9497918988111552798.Spec : Prop :=
  ∀ n, P9497918988111552798.a n = A317499 n

theorem P9497918988111552798.correct : P9497918988111552798.Spec := by
  intro n
  simp only [A317499]

end A317499

/-! ## A317499.P5320438714766130706

`∑[A000748(n)]`
-/

namespace A317499.P5320438714766130706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317499.P5320438714766130706

namespace A317499

/-- `∑[A000748(n)]` -/
def P5320438714766130706.Spec : Prop :=
  ∀ n, P5320438714766130706.a n = A317499 n

end A317499

/-! ## A317499.P17566450644699651976

`∑[A057077(2*n)*A057083(n)]`
-/

namespace A317499.P17566450644699651976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A057083 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317499.P17566450644699651976

namespace A317499

/-- `∑[A057077(2*n)*A057083(n)]` -/
def P17566450644699651976.Spec : Prop :=
  ∀ n, P17566450644699651976.a n = A317499 n

end A317499

/-! ## A317499.P8138063220691955495

`∑[(1-2*A000035(n))*A057083(n)]`
-/

namespace A317499.P8138063220691955495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - 2 * A000035 n) * A057083 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317499.P8138063220691955495

namespace A317499

/-- `∑[(1-2*A000035(n))*A057083(n)]` -/
def P8138063220691955495.Spec : Prop :=
  ∀ n, P8138063220691955495.a n = A317499 n

end A317499

/-! ## A317499.P17390769432316228272

`∑[A123877(n)-a(n-1)-a(n-1)]` with `a(0)=1`
-/

namespace A317499.P17390769432316228272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A123877 n - f1 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317499.P17390769432316228272

namespace A317499

/-- `∑[A123877(n)-a(n-1)-a(n-1)]` -/
def P17390769432316228272.Spec : Prop :=
  ∀ n, P17390769432316228272.a n = A317499 n

end A317499

/-! ## A317499.P7393046799937844385

`∑[∑[A123877(n)-A123877(n+2)]]`
-/

namespace A317499.P7393046799937844385
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123877 n - A123877 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317499.P7393046799937844385

namespace A317499

/-- `∑[∑[A123877(n)-A123877(n+2)]]` -/
def P7393046799937844385.Spec : Prop :=
  ∀ n, P7393046799937844385.a n = A317499 n

end A317499

/-! ## A317499.P6992180794476055448

`∑[A123877(n+3)/3]`
-/

namespace A317499.P6992180794476055448
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123877 (n + 3) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317499.P6992180794476055448

namespace A317499

/-- `∑[A123877(n+3)/3]` -/
def P6992180794476055448.Spec : Prop :=
  ∀ n, P6992180794476055448.a n = (A317499 n : ℚ)

end A317499

/-! ## A317499.P9280433418415662221

`∑[A039912(A307394(∑[n+2]))]`
-/

namespace A317499.P9280433418415662221
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039912 (A307394 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317499.P9280433418415662221

namespace A317499

/-- `∑[A039912(A307394(∑[n+2]))]` -/
def P9280433418415662221.Spec : Prop :=
  ∀ n, P9280433418415662221.a n = A317499 n

end A317499

/-! ## A317499.P12168621551565144951

`∑[A307047(∑[n+3])]`
-/

namespace A317499.P12168621551565144951
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307047 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317499.P12168621551565144951

namespace A317499

/-- `∑[A307047(∑[n+3])]` -/
def P12168621551565144951.Spec : Prop :=
  ∀ n, P12168621551565144951.a n = A317499 n

end A317499

