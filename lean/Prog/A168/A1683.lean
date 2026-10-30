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
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C049
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
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
# A168300: a(n) = 6*n - a(n-1) - 2 with a(1)=5.

The programs for A168300, the canonical program `A168300.P13397308485299171173` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168300 has offset 1).

The definition of A168300 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*(n+1)-a(n-1)-2` (program `A168300.P13397308485299171173`, by `A168300.P13397308485299171173.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168300.P2645951004378581212

`ogf((5+x^2)/(1-x-x^2+x^3))`
-/

namespace A168300.P2645951004378581212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 0, 1] [1, -1, -1, 1] n

end

end A168300.P2645951004378581212

namespace A168300

/-- `ogf((5+x^2)/(1-x-x^2+x^3))` -/
def P2645951004378581212.Spec : Prop :=
  ∀ n, P2645951004378581212.a n = A168300 (n + 1)

end A168300

/-! ## A168300.P13397308485299171173

`6*(n+1)-a(n-1)-2` with `a(0)=5`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168300

/-- `6*(n+1)-a(n-1)-2` -/
def P13397308485299171173.Spec : Prop :=
  ∀ n, P13397308485299171173.a n = A168300 (n + 1)

theorem P13397308485299171173.correct : P13397308485299171173.Spec := by
  intro n
  simp only [A168300, Nat.add_sub_cancel]

end A168300

/-! ## A168300.P3104105841238817069

`(6*(n+1)-3*(-1)^(n+1)+1)/2`
-/

namespace A168300.P3104105841238817069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 * (n + 1) : ℤ) - 3 * (-1) ^ (n + 1) + 1 : ℚ) / 2

end

end A168300.P3104105841238817069

namespace A168300

/-- `(6*(n+1)-3*(-1)^(n+1)+1)/2` -/
def P3104105841238817069.Spec : Prop :=
  ∀ n, P3104105841238817069.a n = (A168300 (n + 1) : ℚ)

theorem P3104105841238817069.correct : P3104105841238817069.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A168300, Nat.add_sub_cancel, A168300.P3104105841238817069.a, A168300.P13397308485299171173.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A168300, Nat.add_sub_cancel, A168300.P3104105841238817069.a, A168300.P13397308485299171173.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A168300

/-! ## A168300.P9548486506004088443

`A016969(floor(n/2))`
-/

namespace A168300.P9548486506004088443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 ⌊(n : ℚ) / 2⌋.toNat

end

end A168300.P9548486506004088443

namespace A168300

/-- `A016969(floor(n/2))` -/
def P9548486506004088443.Spec : Prop :=
  ∀ n, P9548486506004088443.a n = A168300 (n + 1)

end A168300

/-! ## A168300.P10573369222299396898

`2+3*or(1, n)`
-/

namespace A168300.P10573369222299396898
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + 3 * Nat.lor 1 n

end

end A168300.P10573369222299396898

namespace A168300

/-- `2+3*or(1, n)` -/
def P10573369222299396898.Spec : Prop :=
  ∀ n, (P10573369222299396898.a n : ℤ) = A168300 (n + 1)

end A168300

/-! ## A168300.P9305998344182750778

`a(n-2)+6` with `a(0)=5, a(1)=5`
-/

namespace A168300.P9305998344182750778
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 5] fun n a =>
  a (n - 2) + 6

end

end A168300.P9305998344182750778

namespace A168300

/-- `a(n-2)+6` -/
def P9305998344182750778.Spec : Prop :=
  ∀ n, (P9305998344182750778.a n : ℤ) = A168300 (n + 1)

end A168300

/-! ## A168300.P14492021792526448151

`3*and(n, -2)+5`
-/

namespace A168300.P14492021792526448151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * Int.land (n : ℤ) (-2) + 5

end

end A168300.P14492021792526448151

namespace A168300

/-- `3*and(n, -2)+5` -/
def P14492021792526448151.Spec : Prop :=
  ∀ n, P14492021792526448151.a n = A168300 (n + 1)

end A168300

/-! ## A168300.P14640896832362835712

`record[or(6, n)]-(n+1)`
-/

namespace A168300.P14640896832362835712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 6 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (n + 1 : ℤ)

end

end A168300.P14640896832362835712

namespace A168300

/-- `record[or(6, n)]-(n+1)` -/
def P14640896832362835712.Spec : Prop :=
  ∀ n, P14640896832362835712.a n = A168300 (n + 1)

end A168300

/-! ## A168300.P8257253212529891094

`record[xor(6, n)]-(n+1)`
-/

namespace A168300.P8257253212529891094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 6 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (n + 1 : ℤ)

end

end A168300.P8257253212529891094

namespace A168300

/-- `record[xor(6, n)]-(n+1)` -/
def P8257253212529891094.Spec : Prop :=
  ∀ n, P8257253212529891094.a n = A168300 (n + 1)

end A168300

/-! ## A168300.P4453088588236214413

`∑[6-a(n-1)]` with `a(0)=5, a(1)=0`
-/

namespace A168300.P4453088588236214413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 0] fun n f1 =>
  6 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168300.P4453088588236214413

namespace A168300

/-- `∑[6-a(n-1)]` -/
def P4453088588236214413.Spec : Prop :=
  ∀ n, P4453088588236214413.a n = A168300 (n + 1)

end A168300

/-! ## A168300.P9917568530365526998

`∑[C(gcd(2, n)², 2)]-1`
-/

namespace A168300.P9917568530365526998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.gcd 2 n ^ 2) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A168300.P9917568530365526998

namespace A168300

/-- `∑[C(gcd(2, n)², 2)]-1` -/
def P9917568530365526998.Spec : Prop :=
  ∀ n, P9917568530365526998.a n = A168300 (n + 1)

end A168300

/-! ## A168300.P4606856570308297712

`eq[n, or(6, n)]-(n+1)`
-/

namespace A168300.P4606856570308297712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 6 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - (n + 1 : ℤ)

end

end A168300.P4606856570308297712

namespace A168300

/-- `eq[n, or(6, n)]-(n+1)` -/
def P4606856570308297712.Spec : Prop :=
  ∀ n, P4606856570308297712.a n = A168300 (n + 1)

end A168300

/-! ## A168300.P1190036916831152556

`∑[∑[ogf((5+x^2)/(1+x))]]`
-/

namespace A168300.P1190036916831152556
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 0, 1] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168300.P1190036916831152556

namespace A168300

/-- `∑[∑[ogf((5+x^2)/(1+x))]]` -/
def P1190036916831152556.Spec : Prop :=
  ∀ n, P1190036916831152556.a n = A168300 (n + 1)

end A168300

/-! ## A168300.P905710563840139773

`ceil(3/2*or(3, 2*n))`
-/

namespace A168300.P905710563840139773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) / 2 * (Nat.lor 3 (2 * n) : ℚ)⌉

end

end A168300.P905710563840139773

namespace A168300

/-- `ceil(3/2*or(3, 2*n))` -/
def P905710563840139773.Spec : Prop :=
  ∀ n, P905710563840139773.a n = A168300 (n + 1)

end A168300

/-! ## A168300.P17072209690184055090

`round(3/2*or(3, 2*n))`
-/

namespace A168300.P17072209690184055090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 : ℚ) / 2 * (Nat.lor 3 (2 * n) : ℚ))

end

end A168300.P17072209690184055090

namespace A168300

/-- `round(3/2*or(3, 2*n))` -/
def P17072209690184055090.Spec : Prop :=
  ∀ n, P17072209690184055090.a n = A168300 (n + 1)

end A168300

/-! ## A168300.P14723256983004886350

`6-floor(-a(n-2))` with `a(0)=5, a(1)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A168300.P14723256983004886350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 5] fun n a =>
  6 - (-a (n - 2))

end

end A168300.P14723256983004886350

namespace A168300

/-- `6-floor(-a(n-2))` -/
def P14723256983004886350.Spec : Prop :=
  ∀ n, P14723256983004886350.a n = A168300 (n + 1)

end A168300

/-! ## A168300.P11112920185422217827

`6-ceil(-a(n-2))` with `a(0)=5, a(1)=5`

`ceil` is left out, it is the identity on integers.
-/

namespace A168300.P11112920185422217827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 5] fun n a =>
  6 - (-a (n - 2))

end

end A168300.P11112920185422217827

namespace A168300

/-- `6-ceil(-a(n-2))` -/
def P11112920185422217827.Spec : Prop :=
  ∀ n, P11112920185422217827.a n = A168300 (n + 1)

end A168300

/-! ## A168300.P10626895490826823301

`6-round(-a(n-2))` with `a(0)=5, a(1)=5`

`round` is left out, it is the identity on integers.
-/

namespace A168300.P10626895490826823301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 5] fun n a =>
  6 - (-a (n - 2))

end

end A168300.P10626895490826823301

namespace A168300

/-- `6-round(-a(n-2))` -/
def P10626895490826823301.Spec : Prop :=
  ∀ n, P10626895490826823301.a n = A168300 (n + 1)

end A168300

/-! ## A168300.P17465372041339955005

`5-xor(1, -a(n-2))` with `a(0)=5, a(1)=5`
-/

namespace A168300.P17465372041339955005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 5] fun n a =>
  5 - Int.xor 1 (-a (n - 2))

end

end A168300.P17465372041339955005

namespace A168300

/-- `5-xor(1, -a(n-2))` -/
def P17465372041339955005.Spec : Prop :=
  ∀ n, P17465372041339955005.a n = A168300 (n + 1)

end A168300

/-! ## A168300.P7526676220385679133

`lcm(2, n+3)+lcm(2, n)-1`
-/

namespace A168300.P7526676220385679133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n + 3) : ℤ) + ((Nat.lcm 2 n : ℤ) - 1)

end

end A168300.P7526676220385679133

namespace A168300

/-- `lcm(2, n+3)+lcm(2, n)-1` -/
def P7526676220385679133.Spec : Prop :=
  ∀ n, P7526676220385679133.a n = A168300 (n + 1)

end A168300

/-!
# A168301: a(n) = (6*n + 3*(-1)^n - 1)/2.

The programs for A168301, the canonical program `A168301.P6722071480835853739` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168301 has offset 1).

The definition of A168301 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*(n+1)+3*(-1)^(n+1)-1)/2` (program `A168301.P12669965523607535163`, by `A168301.P12669965523607535163.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168301.P3904030982783272618

`ogf((1+6x-x^2)/(1-x-x^2+x^3))`
-/

namespace A168301.P3904030982783272618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, -1] [1, -1, -1, 1] n

end

end A168301.P3904030982783272618

namespace A168301

/-- `ogf((1+6x-x^2)/(1-x-x^2+x^3))` -/
def P3904030982783272618.Spec : Prop :=
  ∀ n, P3904030982783272618.a n = A168301 (n + 1)

end A168301

/-! ## A168301.P6722071480835853739

`6*(n+1)-a(n-1)-4` with `a(0)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168301

/-- `6*(n+1)-a(n-1)-4` -/
def P6722071480835853739.Spec : Prop :=
  ∀ n, P6722071480835853739.a n = A168301 (n + 1)

theorem P6722071480835853739.correct : P6722071480835853739.Spec := by
  intro n
  simp only [A168301, Nat.add_sub_cancel]

end A168301

/-! ## A168301.P12669965523607535163

`(6*(n+1)+3*(-1)^(n+1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168301.P12669965523607535163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 * (n + 1) : ℤ) + 3 * (-1) ^ (n + 1) - 1 : ℚ) / 2

end

end A168301.P12669965523607535163

namespace A168301

/-- `(6*(n+1)+3*(-1)^(n+1)-1)/2` -/
def P12669965523607535163.Spec : Prop :=
  ∀ n, P12669965523607535163.a n = (A168301 (n + 1) : ℚ)

theorem P12669965523607535163.correct : P12669965523607535163.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A168301, Nat.add_sub_cancel, A168301.P12669965523607535163.a, A168301.P6722071480835853739.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A168301, Nat.add_sub_cancel, A168301.P12669965523607535163.a, A168301.P6722071480835853739.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A168301

/-! ## A168301.P17831940867888512635

`A168328(n+1)+1`
-/

namespace A168301.P17831940867888512635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168328 (n + 1) + 1

end

end A168301.P17831940867888512635

namespace A168301

/-- `A168328(n+1)+1` -/
def P17831940867888512635.Spec : Prop :=
  ∀ n, P17831940867888512635.a n = A168301 (n + 1)

end A168301

/-! ## A168301.P2367149178493994034

`A168286(n+1)-1`
-/

namespace A168301.P2367149178493994034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168286 (n + 1) - 1

end

end A168301.P2367149178493994034

namespace A168301

/-- `A168286(n+1)-1` -/
def P2367149178493994034.Spec : Prop :=
  ∀ n, P2367149178493994034.a n = A168301 (n + 1)

end A168301

/-! ## A168301.P14090869084138171870

`6+a(n-2)` with `a(0)=1, a(1)=7`
-/

namespace A168301.P14090869084138171870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  6 + a (n - 2)

end

end A168301.P14090869084138171870

namespace A168301

/-- `6+a(n-2)` -/
def P14090869084138171870.Spec : Prop :=
  ∀ n, (P14090869084138171870.a n : ℤ) = A168301 (n + 1)

end A168301

/-! ## A168301.P3779788592447055654

`4-3*or(1, -n)`
-/

namespace A168301.P3779788592447055654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - 3 * Int.lor 1 (-(n : ℤ))

end

end A168301.P3779788592447055654

namespace A168301

/-- `4-3*or(1, -n)` -/
def P3779788592447055654.Spec : Prop :=
  ∀ n, P3779788592447055654.a n = A168301 (n + 1)

end A168301

/-! ## A168301.P18347734922625030370

`xor(1, 6*ceil(n/2))`
-/

namespace A168301.P18347734922625030370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (6 * ⌈(n : ℚ) / 2⌉)

end

end A168301.P18347734922625030370

namespace A168301

/-- `xor(1, 6*ceil(n/2))` -/
def P18347734922625030370.Spec : Prop :=
  ∀ n, P18347734922625030370.a n = A168301 (n + 1)

end A168301

/-! ## A168301.P12561709071782162224

`or(1, ∑[5^(n%2)])`
-/

namespace A168301.P12561709071782162224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A168301.P12561709071782162224

namespace A168301

/-- `or(1, ∑[5^(n%2)])` -/
def P12561709071782162224.Spec : Prop :=
  ∀ n, (P12561709071782162224.a n : ℤ) = A168301 (n + 1)

end A168301

/-! ## A168301.P2213339951535175307

`3*or(1, n+1)-2`
-/

namespace A168301.P2213339951535175307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * Nat.lor 1 (n + 1) : ℤ) - 2

end

end A168301.P2213339951535175307

namespace A168301

/-- `3*or(1, n+1)-2` -/
def P2213339951535175307.Spec : Prop :=
  ∀ n, P2213339951535175307.a n = A168301 (n + 1)

end A168301

/-! ## A168301.P8253978511981209055

`∑[abs(a(n-2))]` with `a(0)=1, a(1)=6, a(2)=0`
-/

namespace A168301.P8253978511981209055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 0] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168301.P8253978511981209055

namespace A168301

/-- `∑[abs(a(n-2))]` -/
def P8253978511981209055.Spec : Prop :=
  ∀ n, (P8253978511981209055.a n : ℤ) = A168301 (n + 1)

end A168301

/-! ## A168301.P3758273778577821919

`∑[6-a(n-1)]` with `a(0)=1, a(1)=6`
-/

namespace A168301.P3758273778577821919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  6 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168301.P3758273778577821919

namespace A168301

/-- `∑[6-a(n-1)]` -/
def P3758273778577821919.Spec : Prop :=
  ∀ n, P3758273778577821919.a n = A168301 (n + 1)

end A168301

/-! ## A168301.P258366989271653004

`filter[or(1, n+1), #%3]`
-/

namespace A168301.P258366989271653004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => f1 j % 3 = 1) n)

end

end A168301.P258366989271653004

namespace A168301

/-- `filter[or(1, n+1), #%3]` -/
def P258366989271653004.Spec : Prop :=
  ∀ n, (P258366989271653004.a n : ℤ) = A168301 (n + 1)

end A168301

/-! ## A168301.P14570493733360721210

`record[and(n+1, -7)]-n`
-/

namespace A168301.P14570493733360721210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A168301.P14570493733360721210

namespace A168301

/-- `record[and(n+1, -7)]-n` -/
def P14570493733360721210.Spec : Prop :=
  ∀ n, P14570493733360721210.a n = A168301 (n + 1)

end A168301

/-! ## A168301.P5007058774547821780

`∑[∑[ogf((1+6x-x^2)/(1+x))]]`
-/

namespace A168301.P5007058774547821780
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, -1] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168301.P5007058774547821780

namespace A168301

/-- `∑[∑[ogf((1+6x-x^2)/(1+x))]]` -/
def P5007058774547821780.Spec : Prop :=
  ∀ n, P5007058774547821780.a n = A168301 (n + 1)

end A168301

/-! ## A168301.P5435030367719007495

`3*and(n+1, -2)+1`
-/

namespace A168301.P5435030367719007495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * Int.land (n + 1 : ℤ) (-2) + 1

end

end A168301.P5435030367719007495

namespace A168301

/-- `3*and(n+1, -2)+1` -/
def P5435030367719007495.Spec : Prop :=
  ∀ n, P5435030367719007495.a n = A168301 (n + 1)

end A168301

/-! ## A168301.P10692157386463568267

`∑[3*2*and(1, n)]+1`
-/

namespace A168301.P10692157386463568267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (2 * Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A168301.P10692157386463568267

namespace A168301

/-- `∑[3*2*and(1, n)]+1` -/
def P10692157386463568267.Spec : Prop :=
  ∀ n, (P10692157386463568267.a n : ℤ) = A168301 (n + 1)

end A168301

/-! ## A168301.P12777782456915868215

`6-floor(-a(n-2))` with `a(0)=1, a(1)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A168301.P12777782456915868215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  6 - (-a (n - 2))

end

end A168301.P12777782456915868215

namespace A168301

/-- `6-floor(-a(n-2))` -/
def P12777782456915868215.Spec : Prop :=
  ∀ n, P12777782456915868215.a n = A168301 (n + 1)

end A168301

/-! ## A168301.P14799172608626250768

`6-ceil(-a(n-2))` with `a(0)=1, a(1)=7`

`ceil` is left out, it is the identity on integers.
-/

namespace A168301.P14799172608626250768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  6 - (-a (n - 2))

end

end A168301.P14799172608626250768

namespace A168301

/-- `6-ceil(-a(n-2))` -/
def P14799172608626250768.Spec : Prop :=
  ∀ n, P14799172608626250768.a n = A168301 (n + 1)

end A168301

/-! ## A168301.P15288093425804395123

`6-round(-a(n-2))` with `a(0)=1, a(1)=7`

`round` is left out, it is the identity on integers.
-/

namespace A168301.P15288093425804395123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  6 - (-a (n - 2))

end

end A168301.P15288093425804395123

namespace A168301

/-- `6-round(-a(n-2))` -/
def P15288093425804395123.Spec : Prop :=
  ∀ n, P15288093425804395123.a n = A168301 (n + 1)

end A168301

/-!
# A168302: The fourth left hand column of triangle A167552.

The programs for A168302, there is no canonical definition to state claims against.
-/

/-! ## A168302.P17065727402853745236

`A167552(∑[n+3]+7)`
-/

namespace A168302.P17065727402853745236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167552 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A168302.P17065727402853745236

/-!
# A168303: The fifth left hand column of triangle A167552.

The programs for A168303, there is no canonical definition to state claims against.
-/

/-! ## A168303.P3697989067388144681

`A167552(A167499(n+3))`
-/

namespace A168303.P3697989067388144681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167552 (A167499 (n + 3)).toNat

end

end A168303.P3697989067388144681

/-!
# A168304: The fifth left hand column of triangle A167565.

The programs for A168304, there is no canonical definition to state claims against.
-/

/-! ## A168304.P7732309005440593812

`A167565(A167499(n+3))`
-/

namespace A168304.P7732309005440593812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167565 (A167499 (n + 3)).toNat

end

end A168304.P7732309005440593812

/-! ## A168304.P9200325023379530455

`A167565(A155212(n)+13)`
-/

namespace A168304.P9200325023379530455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167565 (A155212 n + 13).toNat

end

end A168304.P9200325023379530455

/-!
# A168305: The fourth left hand column of triangle A167580.

The programs for A168305, there is no canonical definition to state claims against.
-/

/-! ## A168305.P16939327615899919754

`A167580(∑[n+3]+7)`
-/

namespace A168305.P16939327615899919754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167580 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A168305.P16939327615899919754

/-! ## A168305.P2213498781130206614

`A184974(n)+A167580(A052905(n)+9)`
-/

namespace A168305.P2213498781130206614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184974 n + A167580 (A052905 n + 9).toNat

end

end A168305.P2213498781130206614

/-!
# A168306: The fifth left hand column of triangle A167580.

The programs for A168306, there is no canonical definition to state claims against.
-/

/-! ## A168306.P5314471207068432790

`A167580(A167499(n+3))`
-/

namespace A168306.P5314471207068432790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167580 (A167499 (n + 3)).toNat

end

end A168306.P5314471207068432790

/-!
# A168307: The fourth left hand column of triangle A167591.

The programs for A168307, there is no canonical definition to state claims against.
-/

/-! ## A168307.P18318872199734166393

`A167591(A020752(n+1))`
-/

namespace A168307.P18318872199734166393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167591 (A020752 (n + 1)).toNat

end

end A168307.P18318872199734166393

/-! ## A168307.P14898892457872002564

`A167591(A141214(n)+7)`
-/

namespace A168307.P14898892457872002564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167591 (A141214 n + 7).toNat

end

end A168307.P14898892457872002564

/-!
# A168309: Period 2: repeat 4,-3.

The programs for A168309, the canonical program `A168309.P2300645780507241320` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168309 has offset 1).

The definition of A168309 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A168309.anchor (n : ℕ) (hn : 1 ≤ n) : A168309 n = [4, -3].getD ((n - 1) % 2) 0` in `Proof.A168.A168309`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168309.P2300645780507241320

`a(n-2)` with `a(0)=4, a(1)=-3`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168309

/-- `a(n-2)` -/
def P2300645780507241320.Spec : Prop :=
  ∀ n, P2300645780507241320.a n = A168309 (n + 1)

theorem P2300645780507241320.correct : P2300645780507241320.Spec := by
  intro n
  simp only [A168309, Nat.add_sub_cancel]

end A168309

/-!
# A168310: The first thousand positive integers arranged alphabetically.

The programs for A168310, there is no canonical definition to state claims against.
-/

/-! ## A168310.P17634760324202725914

`lt[A004183(n), A102681(A039331(n+1))]`
-/

namespace A168310.P17634760324202725914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 (A039331 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A168310.P17634760324202725914

/-!
# A168311: Numbers that are not sums of two triangular numbers and are not one greater than a sum of two triangular numbers.

The programs for A168311, there is no canonical definition to state claims against.
-/

/-! ## A168311.P868411480750370241

`eq[A000729(n+1), A000729(n)]+1`
-/

namespace A168311.P868411480750370241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A168311.P868411480750370241

/-! ## A168311.P9369972384136556836

`eq[A002171(n+1), A002171(n)]+1`
-/

namespace A168311.P9369972384136556836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002171 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A168311.P9369972384136556836

/-! ## A168311.P11313643008232963541

`eq[A134343(n+1), A134343(n)]+1`
-/

namespace A168311.P11313643008232963541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134343 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134343 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A168311.P11313643008232963541

/-! ## A168311.P2415316750433769018

`eq[A215597(n+1), A215597(n)]+1`
-/

namespace A168311.P2415316750433769018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215597 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A168311.P2415316750433769018

/-! ## A168311.P8791783969581372901

`eq[A215601(n+1), A215601(n)]+1`
-/

namespace A168311.P8791783969581372901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215601 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A168311.P8791783969581372901

/-! ## A168311.P13848567841082592971

`∩[A020757(n+1)+1, A020757(n+1)]`
-/

namespace A168311.P13848567841082592971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020757 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168311.P13848567841082592971

/-!
# A168312: Triangle read by rows, replace 1's of triangle A115361 starting from the right with (1, 2, 4, 8, ...).

The programs for A168312, there is no canonical definition to state claims against.
-/

/-! ## A168312.P4604530504203616962

`A048298(A051537(n+1))%A113496(n+1)`
-/

namespace A168312.P4604530504203616962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048298 (A051537 (n + 1)).toNat) (A113496 (n + 1))

end

end A168312.P4604530504203616962

/-! ## A168312.P14192138392337291134

`A048298(A126988(n+1)%A113496(n+1))`
-/

namespace A168312.P14192138392337291134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 (Int.tmod (A126988 (n + 1)) (A113496 (n + 1))).toNat

end

end A168312.P14192138392337291134

/-! ## A168312.P6442198233214195311

`A075802(A195605(n))+A048298(A126988(n+1))`
-/

namespace A168312.P6442198233214195311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075802 (A195605 n).toNat + A048298 (A126988 (n + 1)).toNat

end

end A168312.P6442198233214195311

/-! ## A168312.P9247812010675740329

`A075802(A142463(n+1))+A048298(A126988(n+1))`
-/

namespace A168312.P9247812010675740329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075802 (A142463 (n + 1)).toNat + A048298 (A126988 (n + 1)).toNat

end

end A168312.P9247812010675740329

/-! ## A168312.P480759615323248111

`A048298(A126988(n+1))+A000007(A001844(n+1)-2)`
-/

namespace A168312.P480759615323248111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 (A126988 (n + 1)).toNat + A000007 (A001844 (n + 1) - 2).toNat

end

end A168312.P480759615323248111

/-! ## A168312.P12555295879441325684

`and(A129559(n+1), A138022(n+1))`
-/

namespace A168312.P12555295879441325684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A129559 (n + 1)) (A138022 (n + 1))

end

end A168312.P12555295879441325684

/-! ## A168312.P4800362984859933486

`A048298(A051537(n+1)²)/A051537(n+1)`
-/

namespace A168312.P4800362984859933486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048298 (A051537 (n + 1) ^ 2).toNat : ℚ) / (A051537 (n + 1) : ℚ)

end

end A168312.P4800362984859933486

/-!
# A168313: Triangle read by rows, retain 1's as rightmost diagonal of A101688 and replace all other 1's with 2's.

The programs for A168313, the canonical program `A168313.P8669837144017909273` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168313 has offset 1).

The definition of A168313 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168313.P8669837144017909273

`2*A101688(n)-A023531(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A168313

/-- `2*A101688(n)-A023531(n)` -/
def P8669837144017909273.Spec : Prop :=
  ∀ n, P8669837144017909273.a n = A168313 (n + 1)

theorem P8669837144017909273.correct : P8669837144017909273.Spec := by
  intro n
  simp only [A168313, Nat.add_sub_cancel]

end A168313

/-! ## A168313.P15897180259294668183

`T(n-1,k-1)+2*T(T(n-1,k-1), row(n)-2*col(n))` with `a(0)=1`
-/

namespace A168313.P15897180259294668183
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + 2 * SequenceMachineLib.triAt a ((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ) ((SequenceMachineLib.triRow n : ℤ) - (2 * SequenceMachineLib.triCol n : ℤ))

end

end A168313.P15897180259294668183

namespace A168313

/-- `T(n-1,k-1)+2*T(T(n-1,k-1), row(n)-2*col(n))` -/
def P15897180259294668183.Spec : Prop :=
  ∀ n, (P15897180259294668183.a n : ℤ) = A168313 (n + 1)

end A168313

/-! ## A168313.P16985824896225528261

`T(n-1,k-1)-(T(n-1,k-1)-2)*T(col(n), row(n)-col(n))` with `a(0)=1`
-/

namespace A168313.P16985824896225528261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n - (SequenceMachineLib.triUpLeft a n - 2) * SequenceMachineLib.triAt a (SequenceMachineLib.triCol n : ℤ) ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))

end

end A168313.P16985824896225528261

namespace A168313

/-- `T(n-1,k-1)-(T(n-1,k-1)-2)*T(col(n), row(n)-col(n))` -/
def P16985824896225528261.Spec : Prop :=
  ∀ n, P16985824896225528261.a n = A168313 (n + 1)

end A168313

/-! ## A168313.P14302573115406352081

`2*ceil(sqrt(8*(n+1)))%2-char[∑[n-1]]`
-/

namespace A168313.P14302573115406352081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod ⌈Real.sqrt (8 * (n + 1) : ℝ)⌉ 2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A168313.P14302573115406352081

namespace A168313

/-- `2*ceil(sqrt(8*(n+1)))%2-char[∑[n-1]]` -/
def P14302573115406352081.Spec : Prop :=
  ∀ n, P14302573115406352081.a n = A168313 (n + 1)

end A168313

/-! ## A168313.P6571977122927661095

`5%(Δ[abs(round(sqrt(2*(n+1)))²-(2*n+1))]+1)`
-/

namespace A168313.P6571977122927661095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 5 (f1 (n + 1) - f1 n + 1)

end

end A168313.P6571977122927661095

namespace A168313

/-- `5%(Δ[abs(round(sqrt(2*(n+1)))²-(2*n+1))]+1)` -/
def P6571977122927661095.Spec : Prop :=
  ∀ n, P6571977122927661095.a n = A168313 (n + 1)

end A168313

/-! ## A168313.P6421498116753847917

`(1-Δ[1+T(n-2,k-1)])*floor((row(n)+1)/(col(n)+1))%2` with `a(0)=1`
-/

namespace A168313.P6421498116753847917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  1 + SequenceMachineLib.triUp2Left f1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) * Int.tmod ⌊(SequenceMachineLib.triRow n + 1 : ℚ) / (SequenceMachineLib.triCol n + 1 : ℚ)⌋ 2

end

end A168313.P6421498116753847917

namespace A168313

/-- `(1-Δ[1+T(n-2,k-1)])*floor((row(n)+1)/(col(n)+1))%2` -/
def P6421498116753847917.Spec : Prop :=
  ∀ n, P6421498116753847917.a n = A168313 (n + 1)

end A168313

/-! ## A168313.P5566236267774866656

`ceil(atan(A111505(n)))`
-/

namespace A168313.P5566236267774866656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (A111505 n : ℝ)⌉

end

end A168313.P5566236267774866656

namespace A168313

/-- `ceil(atan(A111505(n)))` -/
def P5566236267774866656.Spec : Prop :=
  ∀ n, P5566236267774866656.a n = A168313 (n + 1)

end A168313

/-! ## A168313.P18135628553538212513

`ceil(atan(A113953(n)))`
-/

namespace A168313.P18135628553538212513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (A113953 n : ℝ)⌉

end

end A168313.P18135628553538212513

namespace A168313

/-- `ceil(atan(A113953(n)))` -/
def P18135628553538212513.Spec : Prop :=
  ∀ n, P18135628553538212513.a n = A168313 (n + 1)

end A168313

/-! ## A168313.P8237370306990486199

`ceil(atan(A246187(n)))`
-/

namespace A168313.P8237370306990486199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (A246187 n : ℝ)⌉

end

end A168313.P8237370306990486199

namespace A168313

/-- `ceil(atan(A246187(n)))` -/
def P8237370306990486199.Spec : Prop :=
  ∀ n, P8237370306990486199.a n = A168313 (n + 1)

end A168313

/-! ## A168313.P50974500420568013

`ceil(atan(abs(A110509(n))))`
-/

namespace A168313.P50974500420568013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (|A110509 n| : ℝ)⌉

end

end A168313.P50974500420568013

namespace A168313

/-- `ceil(atan(abs(A110509(n))))` -/
def P50974500420568013.Spec : Prop :=
  ∀ n, P50974500420568013.a n = A168313 (n + 1)

end A168313

/-! ## A168313.P16550593640543385321

`ceil(atan(abs(A110517(n))))`
-/

namespace A168313.P16550593640543385321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (|A110517 n| : ℝ)⌉

end

end A168313.P16550593640543385321

namespace A168313

/-- `ceil(atan(abs(A110517(n))))` -/
def P16550593640543385321.Spec : Prop :=
  ∀ n, P16550593640543385321.a n = A168313 (n + 1)

end A168313

/-! ## A168313.P9612114104714222449

`C(2, A085383(n+1)-1)`
-/

namespace A168313.P9612114104714222449
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A085383 (n + 1) - 1).toNat

end

end A168313.P9612114104714222449

namespace A168313

/-- `C(2, A085383(n+1)-1)` -/
def P9612114104714222449.Spec : Prop :=
  ∀ n, (P9612114104714222449.a n : ℤ) = A168313 (n + 1)

end A168313

/-! ## A168313.P613614419688374583

`A101688(n)*A114114(n)`
-/

namespace A168313.P613614419688374583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101688 n * A114114 n

end

end A168313.P613614419688374583

namespace A168313

/-- `A101688(n)*A114114(n)` -/
def P613614419688374583.Spec : Prop :=
  ∀ n, P613614419688374583.a n = A168313 (n + 1)

end A168313

/-! ## A168313.P11236176352091776851

`A101688(n)*A154325(n)`
-/

namespace A168313.P11236176352091776851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101688 n * A154325 n

end

end A168313.P11236176352091776851

namespace A168313

/-- `A101688(n)*A154325(n)` -/
def P11236176352091776851.Spec : Prop :=
  ∀ n, P11236176352091776851.a n = A168313 (n + 1)

end A168313

/-! ## A168313.P18020929048508228248

`A114115(n)*A187034(n)`
-/

namespace A168313.P18020929048508228248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114115 n * A187034 n

end

end A168313.P18020929048508228248

namespace A168313

/-- `A114115(n)*A187034(n)` -/
def P18020929048508228248.Spec : Prop :=
  ∀ n, P18020929048508228248.a n = A168313 (n + 1)

end A168313

/-! ## A168313.P7002075027946499652

`lcm(A114114(n), A187034(n))`
-/

namespace A168313.P7002075027946499652
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A114114 n) (A187034 n)

end

end A168313.P7002075027946499652

namespace A168313

/-- `lcm(A114114(n), A187034(n))` -/
def P7002075027946499652.Spec : Prop :=
  ∀ n, (P7002075027946499652.a n : ℤ) = A168313 (n + 1)

end A168313

/-! ## A168313.P7951013886674603531

`and(A114114(n), A114118(n))`
-/

namespace A168313.P7951013886674603531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A114114 n) (A114118 n)

end

end A168313.P7951013886674603531

namespace A168313

/-- `and(A114114(n), A114118(n))` -/
def P7951013886674603531.Spec : Prop :=
  ∀ n, P7951013886674603531.a n = A168313 (n + 1)

end A168313

/-! ## A168313.P16517807286243996430

`and(A114114(n), A114283(n))`
-/

namespace A168313.P16517807286243996430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A114114 n) (A114283 n)

end

end A168313.P16517807286243996430

namespace A168313

/-- `and(A114114(n), A114283(n))` -/
def P16517807286243996430.Spec : Prop :=
  ∀ n, P16517807286243996430.a n = A168313 (n + 1)

end A168313

/-! ## A168313.P5079674694144127233

`and(A114114(n), A114284(n))`
-/

namespace A168313.P5079674694144127233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A114114 n) (A114284 n)

end

end A168313.P5079674694144127233

namespace A168313

/-- `and(A114114(n), A114284(n))` -/
def P5079674694144127233.Spec : Prop :=
  ∀ n, P5079674694144127233.a n = A168313 (n + 1)

end A168313

/-! ## A168313.P2042932994450199359

`and(A114114(n), A131251(n))`
-/

namespace A168313.P2042932994450199359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A114114 n) (A131251 n)

end

end A168313.P2042932994450199359

namespace A168313

/-- `and(A114114(n), A131251(n))` -/
def P2042932994450199359.Spec : Prop :=
  ∀ n, P2042932994450199359.a n = A168313 (n + 1)

end A168313

/-!
# A168314: Eigensequence of triangle A168313.

The programs for A168314, there is no canonical definition to state claims against.
-/

/-! ## A168314.P3731332806330361383

`A168315(C(n+3, 2))`
-/

namespace A168314.P3731332806330361383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168315 (Nat.choose (n + 3) 2)

end

end A168314.P3731332806330361383

/-! ## A168314.P4935894152130452006

`A168315(∑[n+2]+1)`
-/

namespace A168314.P4935894152130452006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168315 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A168314.P4935894152130452006

/-! ## A168314.P10228443653040840469

`filter[A168315(n+2), A000035(#)]`
-/

namespace A168314.P10228443653040840469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168315 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A168314.P10228443653040840469

/-! ## A168314.P3370248387420473560

`filter[A168315(n+2), A259044(#)]`
-/

namespace A168314.P3370248387420473560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168315 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A259044 (f1 j).toNat = 1) n)

end

end A168314.P3370248387420473560

/-! ## A168314.P12062388486024250209

`filter[A168315(n+2), A323239(#)]`
-/

namespace A168314.P12062388486024250209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168315 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A168314.P12062388486024250209

/-!
# A168315: Triangle read by rows, A168313 * the diagonalized variant of its eigensequence, A168314.

The programs for A168315, there is no canonical definition to state claims against.
-/

/-! ## A168315.P5116167015101259444

`A168313(n+1)*A168314(A144328(n+1))`
-/

namespace A168315.P5116167015101259444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168313 (n + 1) * A168314 (A144328 (n + 1)).toNat

end

end A168315.P5116167015101259444

/-! ## A168315.P16606454980150960773

`A026729(n)*A322811(A004525(A337702(n+3)))`
-/

namespace A168315.P16606454980150960773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A322811 (A004525 (A337702 (n + 3)).toNat).toNat

end

end A168315.P16606454980150960773

/-! ## A168315.P4016666059528958332

`lcm(A026729(n), A249718(A294345(n+1)))`
-/

namespace A168315.P4016666059528958332
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A026729 n) (A249718 (A294345 (n + 1)).toNat)

end

end A168315.P4016666059528958332

/-! ## A168315.P5940745319508148765

`A026729(n)*A139147(A016897(n))`
-/

namespace A168315.P5940745319508148765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A139147 (A016897 n).toNat

end

end A168315.P5940745319508148765

/-! ## A168315.P12770693932891701469

`A120730(n)*A194824(A027753(n+1))`
-/

namespace A168315.P12770693932891701469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120730 n * A194824 (A027753 (n + 1)).toNat

end

end A168315.P12770693932891701469

/-!
# A168316: Triangle read by rows, square of triangle A101688.

The programs for A168316, there is no canonical definition to state claims against.
-/

/-! ## A168316.P17586008817321495366

`A168318(n+1)/A168318(A000217(A002260(n+1)))`
-/

namespace A168316.P17586008817321495366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168318 (n + 1) : ℚ) / (A168318 (A000217 (A002260 (n + 1)).toNat).toNat : ℚ)

end

end A168316.P17586008817321495366

/-! ## A168316.P6627754305944094335

`A188448(A248809(n))%A037126(n+1)`
-/

namespace A168316.P6627754305944094335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188448 (A248809 n).toNat) (A037126 (n + 1))

end

end A168316.P6627754305944094335

/-! ## A168316.P16683930352128725279

`A293808(n)%A261789(A329430(n))`
-/

namespace A168316.P16683930352128725279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293808 n) (A261789 (A329430 n).toNat)

end

end A168316.P16683930352128725279

/-! ## A168316.P3722449725285170450

`A296774(A187617(n))-A267181(n)`
-/

namespace A168316.P3722449725285170450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296774 (A187617 n).toNat - A267181 n

end

end A168316.P3722449725285170450

/-! ## A168316.P529604322037424010

`A004736(n+1)%A109201(A378980(n+1))`
-/

namespace A168316.P529604322037424010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004736 (n + 1)) (A109201 (A378980 (n + 1)).toNat)

end

end A168316.P529604322037424010

/-!
# A168317: Eigensequence of triangle A168316.

The programs for A168317, there is no canonical definition to state claims against.
-/

/-! ## A168317.P8481441545444632761

`A168318(∑[1+n])`
-/

namespace A168317.P8481441545444632761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A168317.P8481441545444632761

/-! ## A168317.P17709035711055172349

`A168318(A000217(n+1))+A002324(3*n+2)`
-/

namespace A168317.P17709035711055172349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168318 (A000217 (n + 1)).toNat + A002324 (3 * n + 2)

end

end A168317.P17709035711055172349

/-! ## A168317.P2588925768325037979

`A153883(A001385(n))`
-/

namespace A168317.P2588925768325037979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153883 (A001385 n).toNat

end

end A168317.P2588925768325037979

/-! ## A168317.P14530819333045201615

`A153883(A036618(n))`
-/

namespace A168317.P14530819333045201615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153883 (A036618 n).toNat

end

end A168317.P14530819333045201615

/-!
# A168318: Triangle read by rows, A168316 * its diagonalized eigensequence, A168317.

The programs for A168318, there is no canonical definition to state claims against.
-/

/-! ## A168318.P14363126597312768339

`or(A168315(A043319(n+1)), A168316(n+1))`
-/

namespace A168318.P14363126597312768339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A168315 (A043319 (n + 1)).toNat) (A168316 (n + 1))

end

end A168318.P14363126597312768339

/-!
# A168319: a(-1)=0. a(n)=a(n-1)^2-2^n.

The programs for A168319, the canonical program `A168319.P1634134501663029132` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168319 has offset 0).

The definition of A168319 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²-2^n` (program `A168319.P1634134501663029132`, by `A168319.P1634134501663029132.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168319.P1634134501663029132

`a(n-1)²-2^n` with `a(0)=-1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168319

/-- `a(n-1)²-2^n` -/
def P1634134501663029132.Spec : Prop :=
  ∀ n, P1634134501663029132.a n = A168319 n

theorem P1634134501663029132.correct : P1634134501663029132.Spec := by
  intro n
  simp only [A168319]

end A168319

/-! ## A168319.P12354006621634579593

`(1/a(n-1))^(-2)-2^n` with `a(0)=-1`
-/

namespace A168319.P12354006621634579593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [-1] fun n a =>
  (1 / a (n - 1)) ^ (-2 : ℤ) - (2 ^ n : ℚ)

end

end A168319.P12354006621634579593

namespace A168319

/-- `(1/a(n-1))^(-2)-2^n` -/
def P12354006621634579593.Spec : Prop :=
  ∀ n, P12354006621634579593.a n = (A168319 n : ℚ)

end A168319

/-! ## A168319.P14281996547891759039

`(a(n-1)^(-1))^(-2)-2^n` with `a(0)=-1`
-/

namespace A168319.P14281996547891759039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [-1] fun n a =>
  (a (n - 1) ^ (-1 : ℤ)) ^ (-2 : ℤ) - (2 ^ n : ℚ)

end

end A168319.P14281996547891759039

namespace A168319

/-- `(a(n-1)^(-1))^(-2)-2^n` -/
def P14281996547891759039.Spec : Prop :=
  ∀ n, P14281996547891759039.a n = (A168319 n : ℚ)

end A168319

/-! ## A168319.P13204919053494092211

`∑[2*a(n-1)]+a(n-1)²` with `a(0)=-1, a(1)=-1`
-/

namespace A168319.P13204919053494092211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, -1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, -1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1) ^ 2

end

end A168319.P13204919053494092211

namespace A168319

/-- `∑[2*a(n-1)]+a(n-1)²` -/
def P13204919053494092211.Spec : Prop :=
  ∀ n, P13204919053494092211.a n = A168319 n

end A168319

/-! ## A168319.P5970120562437756900

`∑[a(n-1)+a(n-1)]+a(n-1)²` with `a(0)=-1, a(1)=-1`
-/

namespace A168319.P5970120562437756900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, -1] fun n f1 =>
  f1 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, -1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1) ^ 2

end

end A168319.P5970120562437756900

namespace A168319

/-- `∑[a(n-1)+a(n-1)]+a(n-1)²` -/
def P5970120562437756900.Spec : Prop :=
  ∀ n, P5970120562437756900.a n = A168319 n

end A168319

/-!
# A168320: a(-1)=0. a(n)=a(n-1)^2+2^n.

The programs for A168320, the canonical program `A168320.P2183038746296965907` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168320 has offset 0).

The definition of A168320 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²+2^n` (program `A168320.P2183038746296965907`, by `A168320.P2183038746296965907.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168320.P2183038746296965907

`a(n-1)²+2^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168320

/-- `a(n-1)²+2^n` -/
def P2183038746296965907.Spec : Prop :=
  ∀ n, (P2183038746296965907.a n : ℤ) = A168320 n

theorem P2183038746296965907.correct : P2183038746296965907.Spec := by
  intro n
  simp only [A168320]

end A168320

/-! ## A168320.P9913350016751892171

`2^n+a(n-1)²` with `a(0)=1`
-/

namespace A168320.P9913350016751892171
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 ^ n + a (n - 1) ^ 2

end

end A168320.P9913350016751892171

namespace A168320

/-- `2^n+a(n-1)²` -/
def P9913350016751892171.Spec : Prop :=
  ∀ n, (P9913350016751892171.a n : ℤ) = A168320 n

theorem P9913350016751892171.correct : P9913350016751892171.Spec := by
  intro n
  simp only [A168320, Nat.add_sub_cancel, A168320.P9913350016751892171.a, A168320.P2183038746296965907.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A168320

/-! ## A168320.P1509877613216884444

`2^n+a(n-1)^(4/2)` with `a(0)=1`
-/

namespace A168320.P1509877613216884444
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ n : ℝ) + a (n - 1) ^ ((4 : ℚ) / 2 : ℝ)

end

end A168320.P1509877613216884444

namespace A168320

/-- `2^n+a(n-1)^(4/2)` -/
def P1509877613216884444.Spec : Prop :=
  ∀ n, P1509877613216884444.a n = (A168320 n : ℝ)

end A168320

/-! ## A168320.P8007027893896000045

`2^n+floor(a(n-1))*a(n-1)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A168320.P8007027893896000045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 ^ n + a (n - 1) * a (n - 1)

end

end A168320.P8007027893896000045

namespace A168320

/-- `2^n+floor(a(n-1))*a(n-1)` -/
def P8007027893896000045.Spec : Prop :=
  ∀ n, (P8007027893896000045.a n : ℤ) = A168320 n

theorem P8007027893896000045.correct : P8007027893896000045.Spec := by
  intro n
  simp only [A168320, Nat.add_sub_cancel, A168320.P8007027893896000045.a, A168320.P2183038746296965907.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A168320

/-! ## A168320.P15723394263415171653

`2^n+or(1, a(n-1))*a(n-1)` with `a(0)=1`
-/

namespace A168320.P15723394263415171653
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 ^ n + Nat.lor 1 (a (n - 1)) * a (n - 1)

end

end A168320.P15723394263415171653

namespace A168320

/-- `2^n+or(1, a(n-1))*a(n-1)` -/
def P15723394263415171653.Spec : Prop :=
  ∀ n, (P15723394263415171653.a n : ℤ) = A168320 n

end A168320

/-!
# A168321: a(n) = n +6 - a(n-1), with a(1) = 0.

The programs for A168321, the canonical program `A168321.P10871640937552438883` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168321 has offset 1).

The definition of A168321 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+7-a(n-1)` (program `A168321.P10871640937552438883`, by `A168321.P10871640937552438883.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168321.P10871640937552438883

`n+7-a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168321

/-- `n+7-a(n-1)` -/
def P10871640937552438883.Spec : Prop :=
  ∀ n, P10871640937552438883.a n = A168321 (n + 1)

theorem P10871640937552438883.correct : P10871640937552438883.Spec := by
  intro n
  simp only [A168321, Nat.add_sub_cancel]

end A168321

/-! ## A168321.P1510621697361961749

`ogf((8x-7x^2)/(1-x-x^2+x^3))`
-/

namespace A168321.P1510621697361961749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8, -7] [1, -1, -1, 1] n

end

end A168321.P1510621697361961749

namespace A168321

/-- `ogf((8x-7x^2)/(1-x-x^2+x^3))` -/
def P1510621697361961749.Spec : Prop :=
  ∀ n, P1510621697361961749.a n = A168321 (n + 1)

end A168321

/-! ## A168321.P7494259786476513123

`(13+15*(-1)^(n+1)+2*(n+1))/4`
-/

namespace A168321.P7494259786476513123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (13 + 15 * (-1) ^ (n + 1) + (2 * (n + 1) : ℤ) : ℚ) / 4

end

end A168321.P7494259786476513123

namespace A168321

/-- `(13+15*(-1)^(n+1)+2*(n+1))/4` -/
def P7494259786476513123.Spec : Prop :=
  ∀ n, P7494259786476513123.a n = (A168321 (n + 1) : ℚ)

theorem P7494259786476513123.correct : P7494259786476513123.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A168321, Nat.add_sub_cancel, A168321.P7494259786476513123.a, A168321.P10871640937552438883.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A168321, Nat.add_sub_cancel, A168321.P7494259786476513123.a, A168321.P10871640937552438883.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A168321

/-! ## A168321.P17154684696708480614

`a(n-2)+1` with `a(0)=0, a(1)=8`
-/

namespace A168321.P17154684696708480614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 8] fun n a =>
  a (n - 2) + 1

end

end A168321.P17154684696708480614

namespace A168321

/-- `a(n-2)+1` -/
def P17154684696708480614.Spec : Prop :=
  ∀ n, (P17154684696708480614.a n : ℤ) = A168321 (n + 1)

end A168321

/-! ## A168321.P5374340785569632109

`∑[1-a(n-1)]` with `a(0)=0, a(1)=8`
-/

namespace A168321.P5374340785569632109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 8] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168321.P5374340785569632109

namespace A168321

/-- `∑[1-a(n-1)]` -/
def P5374340785569632109.Spec : Prop :=
  ∀ n, P5374340785569632109.a n = A168321 (n + 1)

end A168321

/-! ## A168321.P10958489590625350987

`7-(a(n-1)-n)` with `a(0)=0`
-/

namespace A168321.P10958489590625350987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  7 - (a (n - 1) - (n : ℤ))

end

end A168321.P10958489590625350987

namespace A168321

/-- `7-(a(n-1)-n)` -/
def P10958489590625350987.Spec : Prop :=
  ∀ n, P10958489590625350987.a n = A168321 (n + 1)

end A168321

/-! ## A168321.P3707540964909760299

`∑[∑[ogf((8x-7x^2)/(1+x))]]`
-/

namespace A168321.P3707540964909760299
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8, -7] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168321.P3707540964909760299

namespace A168321

/-- `∑[∑[ogf((8x-7x^2)/(1+x))]]` -/
def P3707540964909760299.Spec : Prop :=
  ∀ n, P3707540964909760299.a n = A168321 (n + 1)

end A168321

/-! ## A168321.P1772585214500499770

`(gcd(2, n+1)²²+n-1)/2`
-/

namespace A168321.P1772585214500499770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((Nat.gcd 2 (n + 1) ^ 2) ^ 2 : ℤ) + ((n : ℤ) - 1) : ℚ) / 2

end

end A168321.P1772585214500499770

namespace A168321

/-- `(gcd(2, n+1)²²+n-1)/2` -/
def P1772585214500499770.Spec : Prop :=
  ∀ n, P1772585214500499770.a n = (A168321 (n + 1) : ℚ)

end A168321

/-! ## A168321.P14703373246609216657

`3*A084964(n+1)-n`
-/

namespace A168321.P14703373246609216657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A084964 (n + 1) - (n : ℤ)

end

end A168321.P14703373246609216657

namespace A168321

/-- `3*A084964(n+1)-n` -/
def P14703373246609216657.Spec : Prop :=
  ∀ n, P14703373246609216657.a n = A168321 (n + 1)

end A168321

/-! ## A168321.P1952758874047692065

`A122088(n+1)-Δ[n²]`
-/

namespace A168321.P1952758874047692065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122088 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A168321.P1952758874047692065

namespace A168321

/-- `A122088(n+1)-Δ[n²]` -/
def P1952758874047692065.Spec : Prop :=
  ∀ n, P1952758874047692065.a n = A168321 (n + 1)

end A168321

/-! ## A168321.P14210155103589691935

`A010679(n)+A004526(n)`
-/

namespace A168321.P14210155103589691935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010679 n + A004526 n

end

end A168321.P14210155103589691935

namespace A168321

/-- `A010679(n)+A004526(n)` -/
def P14210155103589691935.Spec : Prop :=
  ∀ n, P14210155103589691935.a n = A168321 (n + 1)

end A168321

/-! ## A168321.P7388153065069148486

`A030451(n)+A010677(n)`
-/

namespace A168321.P7388153065069148486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030451 n + A010677 n

end

end A168321.P7388153065069148486

namespace A168321

/-- `A030451(n)+A010677(n)` -/
def P7388153065069148486.Spec : Prop :=
  ∀ n, P7388153065069148486.a n = A168321 (n + 1)

end A168321

/-! ## A168321.P9154270502247928803

`A110654(n)+A010678(n)`
-/

namespace A168321.P9154270502247928803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + A010678 n

end

end A168321.P9154270502247928803

namespace A168321

/-- `A110654(n)+A010678(n)` -/
def P9154270502247928803.Spec : Prop :=
  ∀ n, P9154270502247928803.a n = A168321 (n + 1)

end A168321

/-! ## A168321.P2069848965824755099

`A152832(n)+A010695(n)`
-/

namespace A168321.P2069848965824755099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152832 n + A010695 n

end

end A168321.P2069848965824755099

namespace A168321

/-- `A152832(n)+A010695(n)` -/
def P2069848965824755099.Spec : Prop :=
  ∀ n, P2069848965824755099.a n = A168321 (n + 1)

end A168321

/-! ## A168321.P7302395763327012134

`A152833(n)+A010702(n)`
-/

namespace A168321.P7302395763327012134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152833 n + A010702 n

end

end A168321.P7302395763327012134

namespace A168321

/-- `A152833(n)+A010702(n)` -/
def P7302395763327012134.Spec : Prop :=
  ∀ n, P7302395763327012134.a n = A168321 (n + 1)

end A168321

/-! ## A168321.P15919492813031234310

`A168230(n+1)+A010675(n)`
-/

namespace A168321.P15919492813031234310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168230 (n + 1) + A010675 n

end

end A168321.P15919492813031234310

namespace A168321

/-- `A168230(n+1)+A010675(n)` -/
def P15919492813031234310.Spec : Prop :=
  ∀ n, P15919492813031234310.a n = A168321 (n + 1)

end A168321

/-! ## A168321.P18171689827333082250

`A113541(n+1)-A017173(n)`
-/

namespace A168321.P18171689827333082250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113541 (n + 1) - A017173 n

end

end A168321.P18171689827333082250

namespace A168321

/-- `A113541(n+1)-A017173(n)` -/
def P18171689827333082250.Spec : Prop :=
  ∀ n, P18171689827333082250.a n = A168321 (n + 1)

end A168321

/-! ## A168321.P17908910704100699923

`A008591(n)-A151978(n+1)`
-/

namespace A168321.P17908910704100699923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n - A151978 (n + 1)

end

end A168321.P17908910704100699923

namespace A168321

/-- `A008591(n)-A151978(n+1)` -/
def P17908910704100699923.Spec : Prop :=
  ∀ n, P17908910704100699923.a n = A168321 (n + 1)

end A168321

/-! ## A168321.P185029821609535085

`A168206(n+1)-A014601(n)`
-/

namespace A168321.P185029821609535085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168206 (n + 1) - A014601 n

end

end A168321.P185029821609535085

namespace A168321

/-- `A168206(n+1)-A014601(n)` -/
def P185029821609535085.Spec : Prop :=
  ∀ n, P185029821609535085.a n = A168321 (n + 1)

end A168321

/-! ## A168321.P7355343051070658213

`A168203(n+1)-A032766(n)`
-/

namespace A168321.P7355343051070658213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168203 (n + 1) - A032766 n

end

end A168321.P7355343051070658213

namespace A168321

/-- `A168203(n+1)-A032766(n)` -/
def P7355343051070658213.Spec : Prop :=
  ∀ n, P7355343051070658213.a n = A168321 (n + 1)

end A168321

/-!
# A168322: a(1)=3,a(2)=5; a(n+1)=smallest prime number > a(n-1) such that the sum of any three consecutive terms is a prime.

The programs for A168322, there is no canonical definition to state claims against.
-/

/-! ## A168322.P10938173913146773487

`p?[A135226(A219958(n+1))]`
-/

namespace A168322.P10938173913146773487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135226 (A219958 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168322.P10938173913146773487

/-! ## A168322.P10555066459901630701

`A319342(n+1)+A020481(A083685(n+1))`
-/

namespace A168322.P10555066459901630701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319342 (n + 1) + A020481 (A083685 (n + 1)).toNat

end

end A168322.P10555066459901630701

/-!
# A168324: Number of distinct permutations of the list of prime factors of n (with multiplicity), where a(1)=0.

The programs for A168324, the canonical program `A168324.P9244558581412274708` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168324 has offset 1).

The definition of A168324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168324.P9244558581412274708

`(∑{e}[n+1, #]!/∏{e}[n+1, #!])%(n+1)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168324

/-- `(∑{e}[n+1, #]!/∏{e}[n+1, #!])%(n+1)` -/
def P9244558581412274708.Spec : Prop :=
  ∀ n, P9244558581412274708.a n = A168324 (n + 1)

theorem P9244558581412274708.correct : P9244558581412274708.Spec := by
  intro n
  simp only [A168324, Nat.add_sub_cancel]

end A168324

/-! ## A168324.P7433278156331757135

`A008480(n+1)%(n+1)`
-/

namespace A168324.P7433278156331757135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008480 (n + 1)) (n + 1 : ℤ)

end

end A168324.P7433278156331757135

namespace A168324

/-- `A008480(n+1)%(n+1)` -/
def P7433278156331757135.Spec : Prop :=
  ∀ n, P7433278156331757135.a n = A168324 (n + 1)

end A168324

/-! ## A168324.P8427583346843772142

`(A335447(n+1)+1)%(n+1)`
-/

namespace A168324.P8427583346843772142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335447 (n + 1) + 1) (n + 1 : ℤ)

end

end A168324.P8427583346843772142

namespace A168324

/-- `(A335447(n+1)+1)%(n+1)` -/
def P8427583346843772142.Spec : Prop :=
  ∀ n, P8427583346843772142.a n = A168324 (n + 1)

end A168324

/-! ## A168324.P5595511885026135416

`∑{p}[n+1, A008480((n+1)/#)]`
-/

namespace A168324.P5595511885026135416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A008480 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat

end

end A168324.P5595511885026135416

namespace A168324

/-- `∑{p}[n+1, A008480((n+1)/#)]` -/
def P5595511885026135416.Spec : Prop :=
  ∀ n, P5595511885026135416.a n = A168324 (n + 1)

end A168324

/-! ## A168324.P12527850116396852087

`A335447(n+1)+A057427(n)`
-/

namespace A168324.P12527850116396852087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335447 (n + 1) + A057427 n

end

end A168324.P12527850116396852087

namespace A168324

/-- `A335447(n+1)+A057427(n)` -/
def P12527850116396852087.Spec : Prop :=
  ∀ n, P12527850116396852087.a n = A168324 (n + 1)

end A168324

/-! ## A168324.P7151943302153870072

`A008480(n+1)-A000007(n)`
-/

namespace A168324.P7151943302153870072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) - A000007 n

end

end A168324.P7151943302153870072

namespace A168324

/-- `A008480(n+1)-A000007(n)` -/
def P7151943302153870072.Spec : Prop :=
  ∀ n, P7151943302153870072.a n = A168324 (n + 1)

end A168324

/-! ## A168324.P199512558885595145

`A335447(n+1)-A057428(n)`
-/

namespace A168324.P199512558885595145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335447 (n + 1) - A057428 n

end

end A168324.P199512558885595145

namespace A168324

/-- `A335447(n+1)-A057428(n)` -/
def P199512558885595145.Spec : Prop :=
  ∀ n, P199512558885595145.a n = A168324 (n + 1)

end A168324

/-! ## A168324.P14732196111402272161

`A008480(n+1)*A057427(n)`
-/

namespace A168324.P14732196111402272161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) * A057427 n

end

end A168324.P14732196111402272161

namespace A168324

/-- `A008480(n+1)*A057427(n)` -/
def P14732196111402272161.Spec : Prop :=
  ∀ n, P14732196111402272161.a n = A168324 (n + 1)

end A168324

/-! ## A168324.P3825561134696357181

`and(A003817(n), A008480(n+1))`
-/

namespace A168324.P3825561134696357181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 n) (A008480 (n + 1))

end

end A168324.P3825561134696357181

namespace A168324

/-- `and(A003817(n), A008480(n+1))` -/
def P3825561134696357181.Spec : Prop :=
  ∀ n, P3825561134696357181.a n = A168324 (n + 1)

end A168324

/-! ## A168324.P15299295597885909214

`and(A008480(n+1), A057428(n))`
-/

namespace A168324.P15299295597885909214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008480 (n + 1)) (A057428 n)

end

end A168324.P15299295597885909214

namespace A168324

/-- `and(A008480(n+1), A057428(n))` -/
def P15299295597885909214.Spec : Prop :=
  ∀ n, P15299295597885909214.a n = A168324 (n + 1)

end A168324

/-! ## A168324.P823048890290661635

`and(A008480(n+1), A134824(n))`
-/

namespace A168324.P823048890290661635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008480 (n + 1)) (A134824 n)

end

end A168324.P823048890290661635

namespace A168324

/-- `and(A008480(n+1), A134824(n))` -/
def P823048890290661635.Spec : Prop :=
  ∀ n, P823048890290661635.a n = A168324 (n + 1)

end A168324

/-! ## A168324.P11302774027620820207

`A008480(n+1)-A036987(2*n)`
-/

namespace A168324.P11302774027620820207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) - A036987 (2 * n)

end

end A168324.P11302774027620820207

namespace A168324

/-- `A008480(n+1)-A036987(2*n)` -/
def P11302774027620820207.Spec : Prop :=
  ∀ n, P11302774027620820207.a n = A168324 (n + 1)

end A168324

/-! ## A168324.P12738812372356449334

`A008480(n+1)-A000038(n)/2`
-/

namespace A168324.P12738812372356449334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008480 (n + 1) : ℚ) - (A000038 n : ℚ) / 2

end

end A168324.P12738812372356449334

namespace A168324

/-- `A008480(n+1)-A000038(n)/2` -/
def P12738812372356449334.Spec : Prop :=
  ∀ n, P12738812372356449334.a n = (A168324 (n + 1) : ℚ)

end A168324

/-! ## A168324.P17461467883152150686

`A008480(n+1)+n-A028310(n)`
-/

namespace A168324.P17461467883152150686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) + ((n : ℤ) - A028310 n)

end

end A168324.P17461467883152150686

namespace A168324

/-- `A008480(n+1)+n-A028310(n)` -/
def P17461467883152150686.Spec : Prop :=
  ∀ n, P17461467883152150686.a n = A168324 (n + 1)

end A168324

/-! ## A168324.P8293247411312735686

`A008480(n+1)-C(A106249(n), n)`
-/

namespace A168324.P8293247411312735686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) - (Nat.choose (A106249 n).toNat n : ℤ)

end

end A168324.P8293247411312735686

namespace A168324

/-- `A008480(n+1)-C(A106249(n), n)` -/
def P8293247411312735686.Spec : Prop :=
  ∀ n, P8293247411312735686.a n = A168324 (n + 1)

end A168324

/-! ## A168324.P15724304865159669217

`A008480(n+1)-A010051(2*(n+1))`
-/

namespace A168324.P15724304865159669217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) - A010051 (2 * (n + 1))

end

end A168324.P15724304865159669217

namespace A168324

/-- `A008480(n+1)-A010051(2*(n+1))` -/
def P15724304865159669217.Spec : Prop :=
  ∀ n, P15724304865159669217.a n = A168324 (n + 1)

end A168324

/-! ## A168324.P8616392040644127220

`A008480(n+1)-A154269(2*n+1)`
-/

namespace A168324.P8616392040644127220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) - A154269 (2 * n + 1)

end

end A168324.P8616392040644127220

namespace A168324

/-- `A008480(n+1)-A154269(2*n+1)` -/
def P8616392040644127220.Spec : Prop :=
  ∀ n, P8616392040644127220.a n = A168324 (n + 1)

end A168324

/-! ## A168324.P8111169082109966275

`and(1, A000040(n+1))*A008480(n+1)`
-/

namespace A168324.P8111169082109966275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 1)) * A008480 (n + 1)

end

end A168324.P8111169082109966275

namespace A168324

/-- `and(1, A000040(n+1))*A008480(n+1)` -/
def P8111169082109966275.Spec : Prop :=
  ∀ n, P8111169082109966275.a n = A168324 (n + 1)

end A168324

/-! ## A168324.P2997099026788225268

`A008480(n+1)-floor(1/A000005(n+1))`
-/

namespace A168324.P2997099026788225268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) - ⌊1 / (A000005 (n + 1) : ℚ)⌋

end

end A168324.P2997099026788225268

namespace A168324

/-- `A008480(n+1)-floor(1/A000005(n+1))` -/
def P2997099026788225268.Spec : Prop :=
  ∀ n, P2997099026788225268.a n = A168324 (n + 1)

end A168324

/-! ## A168324.P7434999817612969647

`A008480(n+1)-A000045(floor(1/(n+1)))`
-/

namespace A168324.P7434999817612969647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) - A000045 ⌊1 / (n + 1 : ℚ)⌋.toNat

end

end A168324.P7434999817612969647

namespace A168324

/-- `A008480(n+1)-A000045(floor(1/(n+1)))` -/
def P7434999817612969647.Spec : Prop :=
  ∀ n, P7434999817612969647.a n = A168324 (n + 1)

end A168324

/-!
# A168325: Terms of A123239 which are also primes in Z(i).

The programs for A168325, there is no canonical definition to state claims against.
-/

/-! ## A168325.P16584443410776623607

`p?[A080412(A123239(n+1))]`
-/

namespace A168325.P16584443410776623607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 (A123239 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168325.P16584443410776623607

/-! ## A168325.P10262984043234973608

`filter[A123239(n+1), A038189(#)]`
-/

namespace A168325.P10262984043234973608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A038189 (f1 j).toNat = 1) n)

end

end A168325.P10262984043234973608

/-! ## A168325.P914271329936490993

`filter[A123239(n+1), A079261(#)]`
-/

namespace A168325.P914271329936490993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079261 (f1 j).toNat = 1) n)

end

end A168325.P914271329936490993

/-! ## A168325.P10498220305205140691

`filter[A123239(n+1), A089013(#)]`
-/

namespace A168325.P10498220305205140691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A089013 (f1 j).toNat = 1) n)

end

end A168325.P10498220305205140691

/-! ## A168325.P18356081387498997815

`filter[A123239(n+1), A354028(#)]`
-/

namespace A168325.P18356081387498997815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354028 (f1 j).toNat = 1) n)

end

end A168325.P18356081387498997815

/-!
# A168326: a(n) = (6*n - 3*(-1)^n - 1)/2.

The programs for A168326, the canonical program `A168326.P7177280403010084652` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168326 has offset 1).

The definition of A168326 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*(n+1)-3*(-1)^(n+1)-1)/2` (program `A168326.P13180091917062732618`, by `A168326.P13180091917062732618.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168326.P12346315915342827084

`ogf((4+2x^2)/(1-x-x^2+x^3))`
-/

namespace A168326.P12346315915342827084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 0, 2] [1, -1, -1, 1] n

end

end A168326.P12346315915342827084

namespace A168326

/-- `ogf((4+2x^2)/(1-x-x^2+x^3))` -/
def P12346315915342827084.Spec : Prop :=
  ∀ n, P12346315915342827084.a n = A168326 (n + 1)

end A168326

/-! ## A168326.P7177280403010084652

`6*(n+1)-a(n-1)-4` with `a(0)=4`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168326

/-- `6*(n+1)-a(n-1)-4` -/
def P7177280403010084652.Spec : Prop :=
  ∀ n, P7177280403010084652.a n = A168326 (n + 1)

theorem P7177280403010084652.correct : P7177280403010084652.Spec := by
  intro n
  simp only [A168326, Nat.add_sub_cancel]

end A168326

/-! ## A168326.P13180091917062732618

`(6*(n+1)-3*(-1)^(n+1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168326.P13180091917062732618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 * (n + 1) : ℤ) - 3 * (-1) ^ (n + 1) - 1 : ℚ) / 2

end

end A168326.P13180091917062732618

namespace A168326

/-- `(6*(n+1)-3*(-1)^(n+1)-1)/2` -/
def P13180091917062732618.Spec : Prop :=
  ∀ n, P13180091917062732618.a n = (A168326 (n + 1) : ℚ)

theorem P13180091917062732618.correct : P13180091917062732618.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A168326, Nat.add_sub_cancel, A168326.P13180091917062732618.a, A168326.P7177280403010084652.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A168326, Nat.add_sub_cancel, A168326.P13180091917062732618.a, A168326.P7177280403010084652.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A168326

/-! ## A168326.P18238462995317072435

`A168329(n+1)+1`
-/

namespace A168326.P18238462995317072435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168329 (n + 1) + 1

end

end A168326.P18238462995317072435

namespace A168326

/-- `A168329(n+1)+1` -/
def P18238462995317072435.Spec : Prop :=
  ∀ n, P18238462995317072435.a n = A168326 (n + 1)

end A168326

/-! ## A168326.P8765589961133971192

`A168300(n+1)-1`
-/

namespace A168326.P8765589961133971192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168300 (n + 1) - 1

end

end A168326.P8765589961133971192

namespace A168326

/-- `A168300(n+1)-1` -/
def P8765589961133971192.Spec : Prop :=
  ∀ n, P8765589961133971192.a n = A168326 (n + 1)

end A168326

/-! ## A168326.P11321935118482705246

`2*A168236(n+1)`
-/

namespace A168326.P11321935118482705246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168236 (n + 1)

end

end A168326.P11321935118482705246

namespace A168326

/-- `2*A168236(n+1)` -/
def P11321935118482705246.Spec : Prop :=
  ∀ n, P11321935118482705246.a n = A168326 (n + 1)

end A168326

/-! ## A168326.P13592337128278724018

`A168301(n+2)-3`
-/

namespace A168326.P13592337128278724018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168301 (n + 2) - 3

end

end A168326.P13592337128278724018

namespace A168326

/-- `A168301(n+2)-3` -/
def P13592337128278724018.Spec : Prop :=
  ∀ n, P13592337128278724018.a n = A168326 (n + 1)

end A168326

/-! ## A168326.P9052394983286103471

`3*or(1, n)+1`
-/

namespace A168326.P9052394983286103471
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.lor 1 n + 1

end

end A168326.P9052394983286103471

namespace A168326

/-- `3*or(1, n)+1` -/
def P9052394983286103471.Spec : Prop :=
  ∀ n, (P9052394983286103471.a n : ℤ) = A168326 (n + 1)

end A168326

/-! ## A168326.P2654970404956080875

`a(n-2)+6` with `a(0)=4, a(1)=4`
-/

namespace A168326.P2654970404956080875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 4] fun n a =>
  a (n - 2) + 6

end

end A168326.P2654970404956080875

namespace A168326

/-- `a(n-2)+6` -/
def P2654970404956080875.Spec : Prop :=
  ∀ n, (P2654970404956080875.a n : ℤ) = A168326 (n + 1)

end A168326

/-! ## A168326.P12141043007848800698

`3*and(n, -2)+4`
-/

namespace A168326.P12141043007848800698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * Int.land (n : ℤ) (-2) + 4

end

end A168326.P12141043007848800698

namespace A168326

/-- `3*and(n, -2)+4` -/
def P12141043007848800698.Spec : Prop :=
  ∀ n, P12141043007848800698.a n = A168326 (n + 1)

end A168326

/-! ## A168326.P4745070617981175441

`gcd(2, n)²+3*n`
-/

namespace A168326.P4745070617981175441
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n ^ 2 + 3 * n

end

end A168326.P4745070617981175441

namespace A168326

/-- `gcd(2, n)²+3*n` -/
def P4745070617981175441.Spec : Prop :=
  ∀ n, (P4745070617981175441.a n : ℤ) = A168326 (n + 1)

end A168326

/-! ## A168326.P10812446883621584509

`record[or(6, n)]-(n+2)`
-/

namespace A168326.P10812446883621584509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 6 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (n + 2 : ℤ)

end

end A168326.P10812446883621584509

namespace A168326

/-- `record[or(6, n)]-(n+2)` -/
def P10812446883621584509.Spec : Prop :=
  ∀ n, P10812446883621584509.a n = A168326 (n + 1)

end A168326

/-! ## A168326.P231024300469029423

`record[xor(6, n)]-(n+2)`
-/

namespace A168326.P231024300469029423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 6 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (n + 2 : ℤ)

end

end A168326.P231024300469029423

namespace A168326

/-- `record[xor(6, n)]-(n+2)` -/
def P231024300469029423.Spec : Prop :=
  ∀ n, P231024300469029423.a n = A168326 (n + 1)

end A168326

/-! ## A168326.P14142854750912934216

`∑[6-a(n-1)]` with `a(0)=4, a(1)=0`
-/

namespace A168326.P14142854750912934216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 0] fun n f1 =>
  6 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168326.P14142854750912934216

namespace A168326

/-- `∑[6-a(n-1)]` -/
def P14142854750912934216.Spec : Prop :=
  ∀ n, P14142854750912934216.a n = A168326 (n + 1)

end A168326

/-! ## A168326.P5630140816182240316

`eq[n+2, or(6, n)]-n`
-/

namespace A168326.P5630140816182240316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 6 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - (n : ℤ)

end

end A168326.P5630140816182240316

namespace A168326

/-- `eq[n+2, or(6, n)]-n` -/
def P5630140816182240316.Spec : Prop :=
  ∀ n, P5630140816182240316.a n = A168326 (n + 1)

end A168326

/-! ## A168326.P15525852280397709441

`lt[xor(6, n+2), n]-n`
-/

namespace A168326.P15525852280397709441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 6 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - (n : ℤ)

end

end A168326.P15525852280397709441

namespace A168326

/-- `lt[xor(6, n+2), n]-n` -/
def P15525852280397709441.Spec : Prop :=
  ∀ n, P15525852280397709441.a n = A168326 (n + 1)

end A168326

/-! ## A168326.P7586271719598417525

`∑[∑[ogf((4+2x^2)/(1+x))]]`
-/

namespace A168326.P7586271719598417525
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 0, 2] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168326.P7586271719598417525

namespace A168326

/-- `∑[∑[ogf((4+2x^2)/(1+x))]]` -/
def P7586271719598417525.Spec : Prop :=
  ∀ n, P7586271719598417525.a n = A168326 (n + 1)

end A168326

/-! ## A168326.P830788428713221347

`floor(3/2*or(3, 2*n))`
-/

namespace A168326.P830788428713221347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) / 2 * (Nat.lor 3 (2 * n) : ℚ)⌋

end

end A168326.P830788428713221347

namespace A168326

/-- `floor(3/2*or(3, 2*n))` -/
def P830788428713221347.Spec : Prop :=
  ∀ n, P830788428713221347.a n = A168326 (n + 1)

end A168326

/-! ## A168326.P2845312713672136839

`6-floor(-a(n-2))` with `a(0)=4, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A168326.P2845312713672136839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 4] fun n a =>
  6 - (-a (n - 2))

end

end A168326.P2845312713672136839

namespace A168326

/-- `6-floor(-a(n-2))` -/
def P2845312713672136839.Spec : Prop :=
  ∀ n, P2845312713672136839.a n = A168326 (n + 1)

end A168326

/-! ## A168326.P8390034336429962690

`6-ceil(-a(n-2))` with `a(0)=4, a(1)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A168326.P8390034336429962690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 4] fun n a =>
  6 - (-a (n - 2))

end

end A168326.P8390034336429962690

namespace A168326

/-- `6-ceil(-a(n-2))` -/
def P8390034336429962690.Spec : Prop :=
  ∀ n, P8390034336429962690.a n = A168326 (n + 1)

end A168326

/-!
# A168328: a(n) = 6 * floor( n/2 ).

The programs for A168328, the canonical program `A168328.P6725261980734959756` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168328 has offset 1).

The definition of A168328 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*floor((n+1)/2)` (program `A168328.P6725261980734959756`, by `A168328.P6725261980734959756.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168328.P6725261980734959756

`6*floor((n+1)/2)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168328

/-- `6*floor((n+1)/2)` -/
def P6725261980734959756.Spec : Prop :=
  ∀ n, P6725261980734959756.a n = A168328 (n + 1)

theorem P6725261980734959756.correct : P6725261980734959756.Spec := by
  intro n
  simp only [A168328, Nat.add_sub_cancel]

end A168328

/-! ## A168328.P14805654331802162784

`ogf(6x/(1-x-x^2+x^3))`
-/

namespace A168328.P14805654331802162784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6] [1, -1, -1, 1] n

end

end A168328.P14805654331802162784

namespace A168328

/-- `ogf(6x/(1-x-x^2+x^3))` -/
def P14805654331802162784.Spec : Prop :=
  ∀ n, P14805654331802162784.a n = A168328 (n + 1)

end A168328

/-! ## A168328.P13938917401831171477

`6*n-a(n-1)` with `a(0)=0`
-/

namespace A168328.P13938917401831171477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (6 * n : ℤ) - a (n - 1)

end

end A168328.P13938917401831171477

namespace A168328

/-- `6*n-a(n-1)` -/
def P13938917401831171477.Spec : Prop :=
  ∀ n, P13938917401831171477.a n = A168328 (n + 1)

end A168328

/-! ## A168328.P1704273623258376798

`∑[6*n%2]`
-/

namespace A168328.P1704273623258376798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168328.P1704273623258376798

namespace A168328

/-- `∑[6*n%2]` -/
def P1704273623258376798.Spec : Prop :=
  ∀ n, (P1704273623258376798.a n : ℤ) = A168328 (n + 1)

end A168328

/-! ## A168328.P10162584831716075498

`∑[6*and(1, n)]`
-/

namespace A168328.P10162584831716075498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168328.P10162584831716075498

namespace A168328

/-- `∑[6*and(1, n)]` -/
def P10162584831716075498.Spec : Prop :=
  ∀ n, (P10162584831716075498.a n : ℤ) = A168328 (n + 1)

end A168328

/-! ## A168328.P11510306509202275052

`∑[lcm(6, and(1, n))]`
-/

namespace A168328.P11510306509202275052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 6 (Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168328.P11510306509202275052

namespace A168328

/-- `∑[lcm(6, and(1, n))]` -/
def P11510306509202275052.Spec : Prop :=
  ∀ n, (P11510306509202275052.a n : ℤ) = A168328 (n + 1)

end A168328

/-! ## A168328.P11176409389064971185

`∑[and(6, (-1)^n)]`
-/

namespace A168328.P11176409389064971185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 6 ((-1) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168328.P11176409389064971185

namespace A168328

/-- `∑[and(6, (-1)^n)]` -/
def P11176409389064971185.Spec : Prop :=
  ∀ n, P11176409389064971185.a n = A168328 (n + 1)

end A168328

/-! ## A168328.P10543323698823200357

`3*(and(1, n)+n)`
-/

namespace A168328.P10543323698823200357
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (Nat.land 1 n + n)

end

end A168328.P10543323698823200357

namespace A168328

/-- `3*(and(1, n)+n)` -/
def P10543323698823200357.Spec : Prop :=
  ∀ n, (P10543323698823200357.a n : ℤ) = A168328 (n + 1)

end A168328

/-! ## A168328.P10929827372245225574

`∑[3*Δ[or(1, n)]]`
-/

namespace A168328.P10929827372245225574
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168328.P10929827372245225574

namespace A168328

/-- `∑[3*Δ[or(1, n)]]` -/
def P10929827372245225574.Spec : Prop :=
  ∀ n, P10929827372245225574.a n = A168328 (n + 1)

end A168328

/-! ## A168328.P12477792396681094203

`a(n-2)+6` with `a(0)=0, a(1)=6`
-/

namespace A168328.P12477792396681094203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n a =>
  a (n - 2) + 6

end

end A168328.P12477792396681094203

namespace A168328

/-- `a(n-2)+6` -/
def P12477792396681094203.Spec : Prop :=
  ∀ n, (P12477792396681094203.a n : ℤ) = A168328 (n + 1)

end A168328

/-! ## A168328.P874060206945793054

`3*(1-or(1, -n))`
-/

namespace A168328.P874060206945793054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (1 - Int.lor 1 (-(n : ℤ)))

end

end A168328.P874060206945793054

namespace A168328

/-- `3*(1-or(1, -n))` -/
def P874060206945793054.Spec : Prop :=
  ∀ n, P874060206945793054.a n = A168328 (n + 1)

end A168328

/-! ## A168328.P13756184807943965358

`∑[6*(2-gcd(2, n))]`
-/

namespace A168328.P13756184807943965358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (2 - (Nat.gcd 2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168328.P13756184807943965358

namespace A168328

/-- `∑[6*(2-gcd(2, n))]` -/
def P13756184807943965358.Spec : Prop :=
  ∀ n, P13756184807943965358.a n = A168328 (n + 1)

end A168328

/-! ## A168328.P1556966441571421051

`∑[6-a(n-1)]` with `a(0)=0`
-/

namespace A168328.P1556966441571421051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  6 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168328.P1556966441571421051

namespace A168328

/-- `∑[6-a(n-1)]` -/
def P1556966441571421051.Spec : Prop :=
  ∀ n, P1556966441571421051.a n = A168328 (n + 1)

end A168328

/-! ## A168328.P3354952370702066052

`∑[xor(4, gcd(4, 2*n))]`
-/

namespace A168328.P3354952370702066052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 4 (Nat.gcd 4 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168328.P3354952370702066052

namespace A168328

/-- `∑[xor(4, gcd(4, 2*n))]` -/
def P3354952370702066052.Spec : Prop :=
  ∀ n, (P3354952370702066052.a n : ℤ) = A168328 (n + 1)

end A168328

/-! ## A168328.P8165277238661936151

`∑[∑[ogf(6x/(1+x))]]`
-/

namespace A168328.P8165277238661936151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168328.P8165277238661936151

namespace A168328

/-- `∑[∑[ogf(6x/(1+x))]]` -/
def P8165277238661936151.Spec : Prop :=
  ∀ n, P8165277238661936151.a n = A168328 (n + 1)

end A168328

/-! ## A168328.P13240700089390390096

`3*or(1, n+1)-3`
-/

namespace A168328.P13240700089390390096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * Nat.lor 1 (n + 1) : ℤ) - 3

end

end A168328.P13240700089390390096

namespace A168328

/-- `3*or(1, n+1)-3` -/
def P13240700089390390096.Spec : Prop :=
  ∀ n, P13240700089390390096.a n = A168328 (n + 1)

end A168328

/-! ## A168328.P2455638869116200975

`∑[C((and(1, n)+1)², 2)]`
-/

namespace A168328.P2455638869116200975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((Nat.land 1 n + 1) ^ 2) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168328.P2455638869116200975

namespace A168328

/-- `∑[C((and(1, n)+1)², 2)]` -/
def P2455638869116200975.Spec : Prop :=
  ∀ n, (P2455638869116200975.a n : ℤ) = A168328 (n + 1)

end A168328

/-! ## A168328.P505847333180877942

`lt[or(6, n-1), n]-n`
-/

namespace A168328.P505847333180877942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 6 ((n : ℤ) - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - (n : ℤ)

end

end A168328.P505847333180877942

namespace A168328

/-- `lt[or(6, n-1), n]-n` -/
def P505847333180877942.Spec : Prop :=
  ∀ n, P505847333180877942.a n = A168328 (n + 1)

end A168328

/-! ## A168328.P18395620824423801968

`∑[6%xor(n, n+1)²]`
-/

namespace A168328.P18395620824423801968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 % Nat.xor n (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168328.P18395620824423801968

namespace A168328

/-- `∑[6%xor(n, n+1)²]` -/
def P18395620824423801968.Spec : Prop :=
  ∀ n, (P18395620824423801968.a n : ℤ) = A168328 (n + 1)

end A168328

/-! ## A168328.P14959812192638951057

`6-floor(-a(n-2))` with `a(0)=0, a(1)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A168328.P14959812192638951057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 6] fun n a =>
  6 - (-a (n - 2))

end

end A168328.P14959812192638951057

namespace A168328

/-- `6-floor(-a(n-2))` -/
def P14959812192638951057.Spec : Prop :=
  ∀ n, P14959812192638951057.a n = A168328 (n + 1)

end A168328

/-!
# A168329: a(n) = (3/2)*(2*n - (-1)^n - 1).

The programs for A168329, the canonical program `A168329.P2037410286243037874` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168329 has offset 1).

The definition of A168329 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3/2*(2*(n+1)-(-1)^(n+1)-1)` (program `A168329.P18248319002733297327`, by `A168329.P18248319002733297327.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168329.P2037410286243037874

`6*n-a(n-1)` with `a(0)=3`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168329

/-- `6*n-a(n-1)` -/
def P2037410286243037874.Spec : Prop :=
  ∀ n, P2037410286243037874.a n = A168329 (n + 1)

theorem P2037410286243037874.correct : P2037410286243037874.Spec := by
  intro n
  simp only [A168329, Nat.add_sub_cancel]

end A168329

/-! ## A168329.P10953663857159596297

`ogf((3+3x^2)/(1-x-x^2+x^3))`
-/

namespace A168329.P10953663857159596297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 0, 3] [1, -1, -1, 1] n

end

end A168329.P10953663857159596297

namespace A168329

/-- `ogf((3+3x^2)/(1-x-x^2+x^3))` -/
def P10953663857159596297.Spec : Prop :=
  ∀ n, P10953663857159596297.a n = A168329 (n + 1)

end A168329

/-! ## A168329.P18248319002733297327

`3/2*(2*(n+1)-(-1)^(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168329.P18248319002733297327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * ((2 * (n + 1) : ℤ) - (-1) ^ (n + 1) - 1 : ℚ)

end

end A168329.P18248319002733297327

namespace A168329

/-- `3/2*(2*(n+1)-(-1)^(n+1)-1)` -/
def P18248319002733297327.Spec : Prop :=
  ∀ n, P18248319002733297327.a n = (A168329 (n + 1) : ℚ)

theorem P18248319002733297327.correct : P18248319002733297327.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A168329, Nat.add_sub_cancel, A168329.P18248319002733297327.a, A168329.P2037410286243037874.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A168329, Nat.add_sub_cancel, A168329.P18248319002733297327.a, A168329.P2037410286243037874.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A168329

/-! ## A168329.P11501385496711226784

`or(1, n)*3`
-/

namespace A168329.P11501385496711226784
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n * 3

end

end A168329.P11501385496711226784

namespace A168329

/-- `or(1, n)*3` -/
def P11501385496711226784.Spec : Prop :=
  ∀ n, (P11501385496711226784.a n : ℤ) = A168329 (n + 1)

end A168329

/-! ## A168329.P4020319728489515677

`3*(1+and(-2, n))`
-/

namespace A168329.P4020319728489515677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (1 + Int.land (-2) (n : ℤ))

end

end A168329.P4020319728489515677

namespace A168329

/-- `3*(1+and(-2, n))` -/
def P4020319728489515677.Spec : Prop :=
  ∀ n, P4020319728489515677.a n = A168329 (n + 1)

end A168329

/-! ## A168329.P14689099520967774118

`a(n-2)+6` with `a(0)=3, a(1)=3`
-/

namespace A168329.P14689099520967774118
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 3] fun n a =>
  a (n - 2) + 6

end

end A168329.P14689099520967774118

namespace A168329

/-- `a(n-2)+6` -/
def P14689099520967774118.Spec : Prop :=
  ∀ n, (P14689099520967774118.a n : ℤ) = A168329 (n + 1)

end A168329

/-! ## A168329.P9234633791549605067

`3/or(1, n)^-1`
-/

namespace A168329.P9234633791549605067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (Nat.lor 1 n : ℚ) ^ (-1 : ℤ)

end

end A168329.P9234633791549605067

namespace A168329

/-- `3/or(1, n)^-1` -/
def P9234633791549605067.Spec : Prop :=
  ∀ n, P9234633791549605067.a n = (A168329 (n + 1) : ℚ)

end A168329

/-! ## A168329.P465111661224946814

`3*xor(1, and(n, -2))`
-/

namespace A168329.P465111661224946814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * Int.xor 1 (Int.land (n : ℤ) (-2))

end

end A168329.P465111661224946814

namespace A168329

/-- `3*xor(1, and(n, -2))` -/
def P465111661224946814.Spec : Prop :=
  ∀ n, P465111661224946814.a n = A168329 (n + 1)

end A168329

/-! ## A168329.P4582119228817475213

`3*(log2(gcd(2, n))+n)`
-/

namespace A168329.P4582119228817475213
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  3 * (Real.logb 2 (Nat.gcd 2 n : ℝ) + (n : ℝ))

end

end A168329.P4582119228817475213

namespace A168329

/-- `3*(log2(gcd(2, n))+n)` -/
def P4582119228817475213.Spec : Prop :=
  ∀ n, P4582119228817475213.a n = (A168329 (n + 1) : ℝ)

end A168329

/-! ## A168329.P1363487106015607688

`record[or(6, n)]-(n+3)`
-/

namespace A168329.P1363487106015607688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 6 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (n + 3 : ℤ)

end

end A168329.P1363487106015607688

namespace A168329

/-- `record[or(6, n)]-(n+3)` -/
def P1363487106015607688.Spec : Prop :=
  ∀ n, P1363487106015607688.a n = A168329 (n + 1)

end A168329

/-! ## A168329.P1500353038608961217

`record[xor(6, n)]-(n+3)`
-/

namespace A168329.P1500353038608961217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 6 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (n + 3 : ℤ)

end

end A168329.P1500353038608961217

namespace A168329

/-- `record[xor(6, n)]-(n+3)` -/
def P1500353038608961217.Spec : Prop :=
  ∀ n, P1500353038608961217.a n = A168329 (n + 1)

end A168329

/-! ## A168329.P17396748938299902103

`xor(1, record[xor(2, n)])+n`
-/

namespace A168329.P17396748938299902103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) + n

end

end A168329.P17396748938299902103

namespace A168329

/-- `xor(1, record[xor(2, n)])+n` -/
def P17396748938299902103.Spec : Prop :=
  ∀ n, (P17396748938299902103.a n : ℤ) = A168329 (n + 1)

end A168329

/-! ## A168329.P5618741629215894656

`∑[6-a(n-1)]` with `a(0)=3, a(1)=0`
-/

namespace A168329.P5618741629215894656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 0] fun n f1 =>
  6 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168329.P5618741629215894656

namespace A168329

/-- `∑[6-a(n-1)]` -/
def P5618741629215894656.Spec : Prop :=
  ∀ n, P5618741629215894656.a n = A168329 (n + 1)

end A168329

/-! ## A168329.P7646640651260391767

`∑[2*a(n%2)]` with `a(0)=3, a(1)=0`
-/

namespace A168329.P7646640651260391767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 0] fun n f1 =>
  2 * f1 (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168329.P7646640651260391767

namespace A168329

/-- `∑[2*a(n%2)]` -/
def P7646640651260391767.Spec : Prop :=
  ∀ n, (P7646640651260391767.a n : ℤ) = A168329 (n + 1)

end A168329

/-! ## A168329.P10149618479820816787

`3*((n+1)%2+n)`
-/

namespace A168329.P10149618479820816787
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * ((n + 1) % 2 + n)

end

end A168329.P10149618479820816787

namespace A168329

/-- `3*((n+1)%2+n)` -/
def P10149618479820816787.Spec : Prop :=
  ∀ n, (P10149618479820816787.a n : ℤ) = A168329 (n + 1)

end A168329

/-! ## A168329.P2463080849806330629

`eq[n, or(6, n)]-(n+3)`
-/

namespace A168329.P2463080849806330629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 6 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - (n + 3 : ℤ)

end

end A168329.P2463080849806330629

namespace A168329

/-- `eq[n, or(6, n)]-(n+3)` -/
def P2463080849806330629.Spec : Prop :=
  ∀ n, P2463080849806330629.a n = A168329 (n + 1)

end A168329

/-! ## A168329.P16563556533639062139

`lt[xor(6, n+3), n]-n`
-/

namespace A168329.P16563556533639062139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 6 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - (n : ℤ)

end

end A168329.P16563556533639062139

namespace A168329

/-- `lt[xor(6, n+3), n]-n` -/
def P16563556533639062139.Spec : Prop :=
  ∀ n, P16563556533639062139.a n = A168329 (n + 1)

end A168329

/-! ## A168329.P4291899242147996320

`∑[∑[ogf((3+3x^2)/(1+x))]]`
-/

namespace A168329.P4291899242147996320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 0, 3] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168329.P4291899242147996320

namespace A168329

/-- `∑[∑[ogf((3+3x^2)/(1+x))]]` -/
def P4291899242147996320.Spec : Prop :=
  ∀ n, P4291899242147996320.a n = A168329 (n + 1)

end A168329

/-! ## A168329.P11759670022867180753

`6-floor(-a(n-2))` with `a(0)=3, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A168329.P11759670022867180753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n a =>
  6 - (-a (n - 2))

end

end A168329.P11759670022867180753

namespace A168329

/-- `6-floor(-a(n-2))` -/
def P11759670022867180753.Spec : Prop :=
  ∀ n, P11759670022867180753.a n = A168329 (n + 1)

end A168329

/-! ## A168329.P8425444725059062024

`6-ceil(-a(n-2))` with `a(0)=3, a(1)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A168329.P8425444725059062024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n a =>
  6 - (-a (n - 2))

end

end A168329.P8425444725059062024

namespace A168329

/-- `6-ceil(-a(n-2))` -/
def P8425444725059062024.Spec : Prop :=
  ∀ n, P8425444725059062024.a n = A168329 (n + 1)

end A168329

/-!
# A168330: Period 2: repeat [3, -2].

The programs for A168330, the canonical program `A168330.P12624263236727194726` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168330 has offset 1).

The definition of A168330 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A168330.anchor (n : ℕ) (hn : 1 ≤ n) : A168330 n = [3, -2].getD ((n - 1) % 2) 0` in `Proof.A168.A168330`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168330.P12624263236727194726

`a(n-2)` with `a(0)=3, a(1)=-2`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168330

/-- `a(n-2)` -/
def P12624263236727194726.Spec : Prop :=
  ∀ n, P12624263236727194726.a n = A168330 (n + 1)

theorem P12624263236727194726.correct : P12624263236727194726.Spec := by
  intro n
  simp only [A168330, Nat.add_sub_cancel]

end A168330

/-!
# A168331: a(n) = (5 + 14*n + 7*(-1)^n)/4.

The programs for A168331, the canonical program `A168331.P2221436962319417916` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168331 has offset 1).

The definition of A168331 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5+14*(n+1)+7*(-1)^(n+1))/4` (program `A168331.P5762952633070209764`, by `A168331.P5762952633070209764.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168331.P8990208984381787899

`ogf((3+7x-3x^2)/(1-x-x^2+x^3))`
-/

namespace A168331.P8990208984381787899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 7, -3] [1, -1, -1, 1] n

end

end A168331.P8990208984381787899

namespace A168331

/-- `ogf((3+7x-3x^2)/(1-x-x^2+x^3))` -/
def P8990208984381787899.Spec : Prop :=
  ∀ n, P8990208984381787899.a n = A168331 (n + 1)

end A168331

/-! ## A168331.P2221436962319417916

`7*(n+1)-a(n-1)-1` with `a(0)=3`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168331

/-- `7*(n+1)-a(n-1)-1` -/
def P2221436962319417916.Spec : Prop :=
  ∀ n, P2221436962319417916.a n = A168331 (n + 1)

theorem P2221436962319417916.correct : P2221436962319417916.Spec := by
  intro n
  simp only [A168331, Nat.add_sub_cancel]

end A168331

/-! ## A168331.P5762952633070209764

`(5+14*(n+1)+7*(-1)^(n+1))/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168331.P5762952633070209764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 + 14 * (n + 1) : ℤ) + 7 * (-1) ^ (n + 1) : ℚ) / 4

end

end A168331.P5762952633070209764

namespace A168331

/-- `(5+14*(n+1)+7*(-1)^(n+1))/4` -/
def P5762952633070209764.Spec : Prop :=
  ∀ n, P5762952633070209764.a n = (A168331 (n + 1) : ℚ)

theorem P5762952633070209764.correct : P5762952633070209764.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A168331, Nat.add_sub_cancel, A168331.P5762952633070209764.a, A168331.P2221436962319417916.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A168331, Nat.add_sub_cancel, A168331.P5762952633070209764.a, A168331.P2221436962319417916.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A168331

/-! ## A168331.P16705073209189105059

`7+a(n-2)` with `a(0)=3, a(1)=10`
-/

namespace A168331.P16705073209189105059
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 10] fun n a =>
  7 + a (n - 2)

end

end A168331.P16705073209189105059

namespace A168331

/-- `7+a(n-2)` -/
def P16705073209189105059.Spec : Prop :=
  ∀ n, (P16705073209189105059.a n : ℤ) = A168331 (n + 1)

end A168331

/-! ## A168331.P13522135482292244070

`∑[7*n%2]+3`
-/

namespace A168331.P13522135482292244070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A168331.P13522135482292244070

namespace A168331

/-- `∑[7*n%2]+3` -/
def P13522135482292244070.Spec : Prop :=
  ∀ n, (P13522135482292244070.a n : ℤ) = A168331 (n + 1)

end A168331

/-! ## A168331.P6016389614405534820

`∑[abs(a(n-2))]` with `a(0)=3, a(1)=7, a(2)=0`
-/

namespace A168331.P6016389614405534820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 7, 0] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168331.P6016389614405534820

namespace A168331

/-- `∑[abs(a(n-2))]` -/
def P6016389614405534820.Spec : Prop :=
  ∀ n, (P6016389614405534820.a n : ℤ) = A168331 (n + 1)

end A168331

/-! ## A168331.P17271095359655856864

`∑[7-a(n-1)]` with `a(0)=3, a(1)=7`
-/

namespace A168331.P17271095359655856864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 7] fun n f1 =>
  7 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168331.P17271095359655856864

namespace A168331

/-- `∑[7-a(n-1)]` -/
def P17271095359655856864.Spec : Prop :=
  ∀ n, P17271095359655856864.a n = A168331 (n + 1)

end A168331

/-! ## A168331.P14003149538556457799

`∑[∑[ogf((3+7x-3x^2)/(1+x))]]`
-/

namespace A168331.P14003149538556457799
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 7, -3] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168331.P14003149538556457799

namespace A168331

/-- `∑[∑[ogf((3+7x-3x^2)/(1+x))]]` -/
def P14003149538556457799.Spec : Prop :=
  ∀ n, P14003149538556457799.a n = A168331 (n + 1)

end A168331

/-! ## A168331.P2547421475830922842

`7-floor(-a(n-2))` with `a(0)=3, a(1)=10`

`floor` is left out, it is the identity on integers.
-/

namespace A168331.P2547421475830922842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 10] fun n a =>
  7 - (-a (n - 2))

end

end A168331.P2547421475830922842

namespace A168331

/-- `7-floor(-a(n-2))` -/
def P2547421475830922842.Spec : Prop :=
  ∀ n, P2547421475830922842.a n = A168331 (n + 1)

end A168331

/-! ## A168331.P11408363120659317003

`7-ceil(-a(n-2))` with `a(0)=3, a(1)=10`

`ceil` is left out, it is the identity on integers.
-/

namespace A168331.P11408363120659317003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 10] fun n a =>
  7 - (-a (n - 2))

end

end A168331.P11408363120659317003

namespace A168331

/-- `7-ceil(-a(n-2))` -/
def P11408363120659317003.Spec : Prop :=
  ∀ n, P11408363120659317003.a n = A168331 (n + 1)

end A168331

/-! ## A168331.P16281738022920262862

`7-round(-a(n-2))` with `a(0)=3, a(1)=10`

`round` is left out, it is the identity on integers.
-/

namespace A168331.P16281738022920262862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 10] fun n a =>
  7 - (-a (n - 2))

end

end A168331.P16281738022920262862

namespace A168331

/-- `7-round(-a(n-2))` -/
def P16281738022920262862.Spec : Prop :=
  ∀ n, P16281738022920262862.a n = A168331 (n + 1)

end A168331

/-! ## A168331.P11438302369476679056

`7*n-(a(n-1)-6)` with `a(0)=3`
-/

namespace A168331.P11438302369476679056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (7 * n : ℤ) - (a (n - 1) - 6)

end

end A168331.P11438302369476679056

namespace A168331

/-- `7*n-(a(n-1)-6)` -/
def P11438302369476679056.Spec : Prop :=
  ∀ n, P11438302369476679056.a n = A168331 (n + 1)

theorem P11438302369476679056.correct : P11438302369476679056.Spec := by
  intro n
  simp only [A168331, Nat.add_sub_cancel, A168331.P11438302369476679056.a, A168331.P2221436962319417916.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A168331

/-! ## A168331.P4067424639658318349

`record[(n+3)/dr((2*n+1)²)]-n`
-/

namespace A168331.P4067424639658318349
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (SequenceMachineLib.digitalRoot ((2 * n + 1) ^ 2 : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℚ)

end

end A168331.P4067424639658318349

namespace A168331

/-- `record[(n+3)/dr((2*n+1)²)]-n` -/
def P4067424639658318349.Spec : Prop :=
  ∀ n, P4067424639658318349.a n = (A168331 (n + 1) : ℚ)

end A168331

/-! ## A168331.P5973891732185931240

`A017017(ceil(n/2))`
-/

namespace A168331.P5973891732185931240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 ⌈(n : ℚ) / 2⌉.toNat

end

end A168331.P5973891732185931240

namespace A168331

/-- `A017017(ceil(n/2))` -/
def P5973891732185931240.Spec : Prop :=
  ∀ n, P5973891732185931240.a n = A168331 (n + 1)

end A168331

/-! ## A168331.P7884903064047737135

`∑[A010678(n)]+3`
-/

namespace A168331.P7884903064047737135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010678 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A168331.P7884903064047737135

namespace A168331

/-- `∑[A010678(n)]+3` -/
def P7884903064047737135.Spec : Prop :=
  ∀ n, P7884903064047737135.a n = A168331 (n + 1)

end A168331

/-! ## A168331.P7882797790153340612

`A168333(n+1)+1`
-/

namespace A168331.P7882797790153340612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168333 (n + 1) + 1

end

end A168331.P7882797790153340612

namespace A168331

/-- `A168333(n+1)+1` -/
def P7882797790153340612.Spec : Prop :=
  ∀ n, P7882797790153340612.a n = A168331 (n + 1)

end A168331

/-! ## A168331.P876634008657146855

`A168212(n+1)-1`
-/

namespace A168331.P876634008657146855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168212 (n + 1) - 1

end

end A168331.P876634008657146855

namespace A168331

/-- `A168212(n+1)-1` -/
def P876634008657146855.Spec : Prop :=
  ∀ n, P876634008657146855.a n = A168331 (n + 1)

end A168331

/-! ## A168331.P11865979584208640263

`A168337(n+1)+2`
-/

namespace A168331.P11865979584208640263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168337 (n + 1) + 2

end

end A168331.P11865979584208640263

namespace A168331

/-- `A168337(n+1)+2` -/
def P11865979584208640263.Spec : Prop :=
  ∀ n, P11865979584208640263.a n = A168331 (n + 1)

end A168331

/-! ## A168331.P9548484260686788710

`A168374(n+1)+3`
-/

namespace A168331.P9548484260686788710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168374 (n + 1) + 3

end

end A168331.P9548484260686788710

namespace A168331

/-- `A168374(n+1)+3` -/
def P9548484260686788710.Spec : Prop :=
  ∀ n, P9548484260686788710.a n = A168331 (n + 1)

end A168331

/-! ## A168331.P14458951880564631021

`∑[A158857(a(n-1))]` with `a(0)=3`
-/

namespace A168331.P14458951880564631021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A158857 ((f1 (n - 1)).toNat + 17)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168331.P14458951880564631021

namespace A168331

/-- `∑[A158857(a(n-1))]` -/
def P14458951880564631021.Spec : Prop :=
  ∀ n, P14458951880564631021.a n = A168331 (n + 1)

end A168331

/-!
# A168332: a(n) = 6 + 7 * floor((n-1)/2).

The programs for A168332, the canonical program `A168332.P12271970205249824984` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168332 has offset 1).

The definition of A168332 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6+7*floor(n/2)` (program `A168332.P12271970205249824984`, by `A168332.P12271970205249824984.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168332.P12271970205249824984

`6+7*floor(n/2)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168332

/-- `6+7*floor(n/2)` -/
def P12271970205249824984.Spec : Prop :=
  ∀ n, P12271970205249824984.a n = A168332 (n + 1)

theorem P12271970205249824984.correct : P12271970205249824984.Spec := by
  intro n
  simp only [A168332, Nat.add_sub_cancel]

end A168332

/-! ## A168332.P5239933189762428316

`ogf((6+x^2)/(1-x-x^2+x^3))`
-/

namespace A168332.P5239933189762428316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 0, 1] [1, -1, -1, 1] n

end

end A168332.P5239933189762428316

namespace A168332

/-- `ogf((6+x^2)/(1-x-x^2+x^3))` -/
def P5239933189762428316.Spec : Prop :=
  ∀ n, P5239933189762428316.a n = A168332 (n + 1)

end A168332

/-! ## A168332.P15064148630746424592

`7+a(n-2)` with `a(0)=6, a(1)=6`
-/

namespace A168332.P15064148630746424592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6, 6] fun n a =>
  7 + a (n - 2)

end

end A168332.P15064148630746424592

namespace A168332

/-- `7+a(n-2)` -/
def P15064148630746424592.Spec : Prop :=
  ∀ n, (P15064148630746424592.a n : ℤ) = A168332 (n + 1)

end A168332

/-! ## A168332.P2634271480545208765

`∑[7-a(n-1)]` with `a(0)=6, a(1)=0`
-/

namespace A168332.P2634271480545208765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6, 0] fun n f1 =>
  7 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168332.P2634271480545208765

namespace A168332

/-- `∑[7-a(n-1)]` -/
def P2634271480545208765.Spec : Prop :=
  ∀ n, P2634271480545208765.a n = A168332 (n + 1)

end A168332

/-! ## A168332.P16692674044895340486

`∑[∑[ogf((6+x^2)/(1+x))]]`
-/

namespace A168332.P16692674044895340486
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 0, 1] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168332.P16692674044895340486

namespace A168332

/-- `∑[∑[ogf((6+x^2)/(1+x))]]` -/
def P16692674044895340486.Spec : Prop :=
  ∀ n, P16692674044895340486.a n = A168332 (n + 1)

end A168332

/-! ## A168332.P6013500534752874791

`floor(7*n-(a(n-1)-5))` with `a(0)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A168332.P6013500534752874791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  (7 * n : ℤ) - (a (n - 1) - 5)

end

end A168332.P6013500534752874791

namespace A168332

/-- `floor(7*n-(a(n-1)-5))` -/
def P6013500534752874791.Spec : Prop :=
  ∀ n, P6013500534752874791.a n = A168332 (n + 1)

end A168332

/-! ## A168332.P1464416339868594723

`abs(1-7*round((n+1)%(n+3)/2))`
-/

namespace A168332.P1464416339868594723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 7 * SequenceMachineLib.roundAway ((((n + 1) % (n + 3) : ℕ) : ℚ) / 2)|

end

end A168332.P1464416339868594723

namespace A168332

/-- `abs(1-7*round((n+1)%(n+3)/2))` -/
def P1464416339868594723.Spec : Prop :=
  ∀ n, P1464416339868594723.a n = A168332 (n + 1)

end A168332

/-! ## A168332.P9852163933239315310

`A017053(floor(n/2))`
-/

namespace A168332.P9852163933239315310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 ⌊(n : ℚ) / 2⌋.toNat

end

end A168332.P9852163933239315310

namespace A168332

/-- `A017053(floor(n/2))` -/
def P9852163933239315310.Spec : Prop :=
  ∀ n, P9852163933239315310.a n = A168332 (n + 1)

end A168332

/-! ## A168332.P11578351158367094166

`A047276(or(1, n)+1)`
-/

namespace A168332.P11578351158367094166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047276 (Nat.lor 1 n + 1)

end

end A168332.P11578351158367094166

namespace A168332

/-- `A047276(or(1, n)+1)` -/
def P11578351158367094166.Spec : Prop :=
  ∀ n, P11578351158367094166.a n = A168332 (n + 1)

end A168332

/-! ## A168332.P16497269188904906818

`A047280(or(1, n)+1)`
-/

namespace A168332.P16497269188904906818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047280 (Nat.lor 1 n + 1)

end

end A168332.P16497269188904906818

namespace A168332

/-- `A047280(or(1, n)+1)` -/
def P16497269188904906818.Spec : Prop :=
  ∀ n, P16497269188904906818.a n = A168332 (n + 1)

end A168332

/-! ## A168332.P16402915475985604257

`A047288(or(1, n)+1)`
-/

namespace A168332.P16402915475985604257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047288 (Nat.lor 1 n + 1)

end

end A168332.P16402915475985604257

namespace A168332

/-- `A047288(or(1, n)+1)` -/
def P16402915475985604257.Spec : Prop :=
  ∀ n, P16402915475985604257.a n = A168332 (n + 1)

end A168332

/-! ## A168332.P1240602312149454893

`A047319(or(1, n)+1)`
-/

namespace A168332.P1240602312149454893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047319 (Nat.lor 1 n + 1)

end

end A168332.P1240602312149454893

namespace A168332

/-- `A047319(or(1, n)+1)` -/
def P1240602312149454893.Spec : Prop :=
  ∀ n, P1240602312149454893.a n = A168332 (n + 1)

end A168332

/-! ## A168332.P2729821131961499677

`A047336(or(1, n)+1)`
-/

namespace A168332.P2729821131961499677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047336 (Nat.lor 1 n + 1)

end

end A168332.P2729821131961499677

namespace A168332

/-- `A047336(or(1, n)+1)` -/
def P2729821131961499677.Spec : Prop :=
  ∀ n, P2729821131961499677.a n = A168332 (n + 1)

end A168332

/-! ## A168332.P1307261450208751880

`A017041(or(1, n))/2`
-/

namespace A168332.P1307261450208751880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017041 (Nat.lor 1 n) : ℚ) / 2

end

end A168332.P1307261450208751880

namespace A168332

/-- `A017041(or(1, n))/2` -/
def P1307261450208751880.Spec : Prop :=
  ∀ n, P1307261450208751880.a n = (A168332 (n + 1) : ℚ)

end A168332

/-! ## A168332.P3806287639267882797

`A047336(gcd(2, n)+n)`
-/

namespace A168332.P3806287639267882797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047336 (Nat.gcd 2 n + n)

end

end A168332.P3806287639267882797

namespace A168332

/-- `A047336(gcd(2, n)+n)` -/
def P3806287639267882797.Spec : Prop :=
  ∀ n, P3806287639267882797.a n = A168332 (n + 1)

end A168332

/-! ## A168332.P2019488970450134850

`∑[A225410(a(n-1))]` with `a(0)=6`
-/

namespace A168332.P2019488970450134850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  A225410 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168332.P2019488970450134850

namespace A168332

/-- `∑[A225410(a(n-1))]` -/
def P2019488970450134850.Spec : Prop :=
  ∀ n, P2019488970450134850.a n = A168332 (n + 1)

end A168332

/-! ## A168332.P10206845323395901843

`A047336(char[2*n]+n+1)`
-/

namespace A168332.P10206845323395901843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047336 ((if ∃ j, f1 j = n then 1 else 0) + n + 1)

end

end A168332.P10206845323395901843

namespace A168332

/-- `A047336(char[2*n]+n+1)` -/
def P10206845323395901843.Spec : Prop :=
  ∀ n, P10206845323395901843.a n = A168332 (n + 1)

end A168332

/-! ## A168332.P5912407339077317668

`A047335(A040001(n+2)+n)`
-/

namespace A168332.P5912407339077317668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047335 (A040001 (n + 2) + (n : ℤ)).toNat

end

end A168332.P5912407339077317668

namespace A168332

/-- `A047335(A040001(n+2)+n)` -/
def P5912407339077317668.Spec : Prop :=
  ∀ n, P5912407339077317668.a n = A168332 (n + 1)

end A168332

/-! ## A168332.P11381971745283995905

`A047276(A131055(n+2))`
-/

namespace A168332.P11381971745283995905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047276 (A131055 (n + 2)).toNat

end

end A168332.P11381971745283995905

namespace A168332

/-- `A047276(A131055(n+2))` -/
def P11381971745283995905.Spec : Prop :=
  ∀ n, P11381971745283995905.a n = A168332 (n + 1)

end A168332

/-! ## A168332.P8430265575205738241

`A047280(A162330(2*n+1))`
-/

namespace A168332.P8430265575205738241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047280 (A162330 (2 * n + 1)).toNat

end

end A168332.P8430265575205738241

namespace A168332

/-- `A047280(A162330(2*n+1))` -/
def P8430265575205738241.Spec : Prop :=
  ∀ n, P8430265575205738241.a n = A168332 (n + 1)

end A168332

/-!
# A168333: a(n) = (14*n + 7*(-1)^n + 1)/4.

The programs for A168333, the canonical program `A168333.P5937878538879113726` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168333 has offset 1).

The definition of A168333 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(14*(n+1)+7*(-1)^(n+1)+1)/4` (program `A168333.P3020373414644623048`, by `A168333.P3020373414644623048.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168333.P17192016052863466135

`ogf((2+7x-2x^2)/(1-x-x^2+x^3))`
-/

namespace A168333.P17192016052863466135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 7, -2] [1, -1, -1, 1] n

end

end A168333.P17192016052863466135

namespace A168333

/-- `ogf((2+7x-2x^2)/(1-x-x^2+x^3))` -/
def P17192016052863466135.Spec : Prop :=
  ∀ n, P17192016052863466135.a n = A168333 (n + 1)

end A168333

/-! ## A168333.P5937878538879113726

`7*(n+1)-a(n-1)-3` with `a(0)=2`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168333

/-- `7*(n+1)-a(n-1)-3` -/
def P5937878538879113726.Spec : Prop :=
  ∀ n, P5937878538879113726.a n = A168333 (n + 1)

theorem P5937878538879113726.correct : P5937878538879113726.Spec := by
  intro n
  simp only [A168333, Nat.add_sub_cancel]

end A168333

/-! ## A168333.P3020373414644623048

`(14*(n+1)+7*(-1)^(n+1)+1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168333.P3020373414644623048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((14 * (n + 1) : ℤ) + 7 * (-1) ^ (n + 1) + 1 : ℚ) / 4

end

end A168333.P3020373414644623048

namespace A168333

/-- `(14*(n+1)+7*(-1)^(n+1)+1)/4` -/
def P3020373414644623048.Spec : Prop :=
  ∀ n, P3020373414644623048.a n = (A168333 (n + 1) : ℚ)

theorem P3020373414644623048.correct : P3020373414644623048.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A168333, Nat.add_sub_cancel, A168333.P3020373414644623048.a, A168333.P5937878538879113726.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A168333, Nat.add_sub_cancel, A168333.P3020373414644623048.a, A168333.P5937878538879113726.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A168333

/-! ## A168333.P5806309288272050586

`A168337(n+1)+1`
-/

namespace A168333.P5806309288272050586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168337 (n + 1) + 1

end

end A168333.P5806309288272050586

namespace A168333

/-- `A168337(n+1)+1` -/
def P5806309288272050586.Spec : Prop :=
  ∀ n, P5806309288272050586.a n = A168333 (n + 1)

end A168333

/-! ## A168333.P15943751019621948412

`A168331(n+1)-1`
-/

namespace A168333.P15943751019621948412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168331 (n + 1) - 1

end

end A168333.P15943751019621948412

namespace A168333

/-- `A168331(n+1)-1` -/
def P15943751019621948412.Spec : Prop :=
  ∀ n, P15943751019621948412.a n = A168333 (n + 1)

end A168333

/-! ## A168333.P13199196499122284302

`A168374(n+1)+2`
-/

namespace A168333.P13199196499122284302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168374 (n + 1) + 2

end

end A168333.P13199196499122284302

namespace A168333

/-- `A168374(n+1)+2` -/
def P13199196499122284302.Spec : Prop :=
  ∀ n, P13199196499122284302.a n = A168333 (n + 1)

end A168333

/-! ## A168333.P16339394682130072662

`A168212(n+1)-2`
-/

namespace A168333.P16339394682130072662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168212 (n + 1) - 2

end

end A168333.P16339394682130072662

namespace A168333

/-- `A168212(n+1)-2` -/
def P16339394682130072662.Spec : Prop :=
  ∀ n, P16339394682130072662.a n = A168333 (n + 1)

end A168333

/-! ## A168333.P6471843603218601238

`a(n-2)+7` with `a(0)=2, a(1)=9`
-/

namespace A168333.P6471843603218601238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 9] fun n a =>
  a (n - 2) + 7

end

end A168333.P6471843603218601238

namespace A168333

/-- `a(n-2)+7` -/
def P6471843603218601238.Spec : Prop :=
  ∀ n, (P6471843603218601238.a n : ℤ) = A168333 (n + 1)

end A168333

/-! ## A168333.P93225862578527184

`∑[abs(a(n-2))]` with `a(0)=2, a(1)=7, a(2)=0`
-/

namespace A168333.P93225862578527184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 7, 0] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168333.P93225862578527184

namespace A168333

/-- `∑[abs(a(n-2))]` -/
def P93225862578527184.Spec : Prop :=
  ∀ n, (P93225862578527184.a n : ℤ) = A168333 (n + 1)

end A168333

/-! ## A168333.P1534890977651702187

`∑[7-a(n-1)]` with `a(0)=2, a(1)=7`
-/

namespace A168333.P1534890977651702187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 7] fun n f1 =>
  7 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168333.P1534890977651702187

namespace A168333

/-- `∑[7-a(n-1)]` -/
def P1534890977651702187.Spec : Prop :=
  ∀ n, P1534890977651702187.a n = A168333 (n + 1)

end A168333

/-! ## A168333.P13931508801574164934

`∑[∑[ogf((2+7x-2x^2)/(1+x))]]`
-/

namespace A168333.P13931508801574164934
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 7, -2] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168333.P13931508801574164934

namespace A168333

/-- `∑[∑[ogf((2+7x-2x^2)/(1+x))]]` -/
def P13931508801574164934.Spec : Prop :=
  ∀ n, P13931508801574164934.a n = A168333 (n + 1)

end A168333

/-! ## A168333.P8070083942726588955

`7-floor(-a(n-2))` with `a(0)=2, a(1)=9`

`floor` is left out, it is the identity on integers.
-/

namespace A168333.P8070083942726588955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 9] fun n a =>
  7 - (-a (n - 2))

end

end A168333.P8070083942726588955

namespace A168333

/-- `7-floor(-a(n-2))` -/
def P8070083942726588955.Spec : Prop :=
  ∀ n, P8070083942726588955.a n = A168333 (n + 1)

end A168333

/-! ## A168333.P11443102551817097205

`7-ceil(-a(n-2))` with `a(0)=2, a(1)=9`

`ceil` is left out, it is the identity on integers.
-/

namespace A168333.P11443102551817097205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 9] fun n a =>
  7 - (-a (n - 2))

end

end A168333.P11443102551817097205

namespace A168333

/-- `7-ceil(-a(n-2))` -/
def P11443102551817097205.Spec : Prop :=
  ∀ n, P11443102551817097205.a n = A168333 (n + 1)

end A168333

/-! ## A168333.P14044945918509026562

`7-round(-a(n-2))` with `a(0)=2, a(1)=9`

`round` is left out, it is the identity on integers.
-/

namespace A168333.P14044945918509026562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 9] fun n a =>
  7 - (-a (n - 2))

end

end A168333.P14044945918509026562

namespace A168333

/-- `7-round(-a(n-2))` -/
def P14044945918509026562.Spec : Prop :=
  ∀ n, P14044945918509026562.a n = A168333 (n + 1)

end A168333

/-! ## A168333.P469137476844862794

`7*n-(a(n-1)-4)` with `a(0)=2`
-/

namespace A168333.P469137476844862794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (7 * n : ℤ) - (a (n - 1) - 4)

end

end A168333.P469137476844862794

namespace A168333

/-- `7*n-(a(n-1)-4)` -/
def P469137476844862794.Spec : Prop :=
  ∀ n, P469137476844862794.a n = A168333 (n + 1)

theorem P469137476844862794.correct : P469137476844862794.Spec := by
  intro n
  simp only [A168333, Nat.add_sub_cancel, A168333.P469137476844862794.a, A168333.P5937878538879113726.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A168333

/-! ## A168333.P10825898968633518471

`∑[gcd(2, n+1)^3]-(n-1)`
-/

namespace A168333.P10825898968633518471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - 1)

end

end A168333.P10825898968633518471

namespace A168333

/-- `∑[gcd(2, n+1)^3]-(n-1)` -/
def P10825898968633518471.Spec : Prop :=
  ∀ n, P10825898968633518471.a n = A168333 (n + 1)

end A168333

/-! ## A168333.P7813679434551222358

`record[(n+2)/dr((2*n+1)²)]-n`
-/

namespace A168333.P7813679434551222358
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (SequenceMachineLib.digitalRoot ((2 * n + 1) ^ 2 : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℚ)

end

end A168333.P7813679434551222358

namespace A168333

/-- `record[(n+2)/dr((2*n+1)²)]-n` -/
def P7813679434551222358.Spec : Prop :=
  ∀ n, P7813679434551222358.a n = (A168333 (n + 1) : ℚ)

end A168333

/-! ## A168333.P16544586147342063893

`A017005(ceil(n/2))`
-/

namespace A168333.P16544586147342063893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 ⌈(n : ℚ) / 2⌉.toNat

end

end A168333.P16544586147342063893

namespace A168333

/-- `A017005(ceil(n/2))` -/
def P16544586147342063893.Spec : Prop :=
  ∀ n, P16544586147342063893.a n = A168333 (n + 1)

end A168333

/-! ## A168333.P3377857213950894927

`∑[A010678(n)]+2`
-/

namespace A168333.P3377857213950894927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010678 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A168333.P3377857213950894927

namespace A168333

/-- `∑[A010678(n)]+2` -/
def P3377857213950894927.Spec : Prop :=
  ∀ n, P3377857213950894927.a n = A168333 (n + 1)

end A168333

/-! ## A168333.P8020141844149983241

`A166539(n+1)+n`
-/

namespace A168333.P8020141844149983241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166539 (n + 1) + (n : ℤ)

end

end A168333.P8020141844149983241

namespace A168333

/-- `A166539(n+1)+n` -/
def P8020141844149983241.Spec : Prop :=
  ∀ n, P8020141844149983241.a n = A168333 (n + 1)

end A168333

/-!
# A168335: Numbers of the form A019434(i) + A000668(j).

The programs for A168335, there is no canonical definition to state claims against.
-/

/-! ## A168335.P17214876584223253294

`2*A174057(n+1)`
-/

namespace A168335.P17214876584223253294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174057 (n + 1)

end

end A168335.P17214876584223253294

/-! ## A168335.P1102213529948219353

`4*1/2*A174057(Δ[n²]-n)`
-/

namespace A168335.P1102213529948219353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((1 : ℚ) / 2 * (A174057 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ))

end

end A168335.P1102213529948219353

/-! ## A168335.P16952494628584668563

`record[2*A174057(A134478(n))]`
-/

namespace A168335.P16952494628584668563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174057 (A134478 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168335.P16952494628584668563

/-! ## A168335.P14737741013253760881

`A174057(n+1)+A174057(-xor(n, -1))`
-/

namespace A168335.P14737741013253760881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174057 (n + 1) + A174057 (-Int.xor (n : ℤ) (-1)).toNat

end

end A168335.P14737741013253760881

/-! ## A168335.P8955452026556727304

`A174057(n+1)+A174057(Δ[n²]-n)`
-/

namespace A168335.P8955452026556727304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174057 (n + 1) + A174057 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A168335.P8955452026556727304

/-!
# A168336: a(n) = 5 + 7*floor((n-1)/2).

The programs for A168336, the canonical program `A168336.P1697625343048852831` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168336 has offset 1).

The definition of A168336 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5+7*floor(n/2)` (program `A168336.P1697625343048852831`, by `A168336.P1697625343048852831.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168336.P1697625343048852831

`5+7*floor(n/2)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168336

/-- `5+7*floor(n/2)` -/
def P1697625343048852831.Spec : Prop :=
  ∀ n, P1697625343048852831.a n = A168336 (n + 1)

theorem P1697625343048852831.correct : P1697625343048852831.Spec := by
  intro n
  simp only [A168336, Nat.add_sub_cancel]

end A168336

/-! ## A168336.P4686073448313437516

`ogf((5+2x^2)/(1-x-x^2+x^3))`
-/

namespace A168336.P4686073448313437516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 0, 2] [1, -1, -1, 1] n

end

end A168336.P4686073448313437516

namespace A168336

/-- `ogf((5+2x^2)/(1-x-x^2+x^3))` -/
def P4686073448313437516.Spec : Prop :=
  ∀ n, P4686073448313437516.a n = A168336 (n + 1)

end A168336

/-! ## A168336.P6092413281806934416

`7+a(n-2)` with `a(0)=5, a(1)=5`
-/

namespace A168336.P6092413281806934416
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 5] fun n a =>
  7 + a (n - 2)

end

end A168336.P6092413281806934416

namespace A168336

/-- `7+a(n-2)` -/
def P6092413281806934416.Spec : Prop :=
  ∀ n, (P6092413281806934416.a n : ℤ) = A168336 (n + 1)

end A168336

/-! ## A168336.P9585652496297816197

`∑[7-a(n-1)]` with `a(0)=5, a(1)=0`
-/

namespace A168336.P9585652496297816197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 0] fun n f1 =>
  7 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168336.P9585652496297816197

namespace A168336

/-- `∑[7-a(n-1)]` -/
def P9585652496297816197.Spec : Prop :=
  ∀ n, P9585652496297816197.a n = A168336 (n + 1)

end A168336

/-! ## A168336.P4930818736967470564

`∑[∑[ogf((5+2x^2)/(1+x))]]`
-/

namespace A168336.P4930818736967470564
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 0, 2] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168336.P4930818736967470564

namespace A168336

/-- `∑[∑[ogf((5+2x^2)/(1+x))]]` -/
def P4930818736967470564.Spec : Prop :=
  ∀ n, P4930818736967470564.a n = A168336 (n + 1)

end A168336

/-! ## A168336.P4790632359709668527

`floor(7*n-(a(n-1)-3))` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A168336.P4790632359709668527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  (7 * n : ℤ) - (a (n - 1) - 3)

end

end A168336.P4790632359709668527

namespace A168336

/-- `floor(7*n-(a(n-1)-3))` -/
def P4790632359709668527.Spec : Prop :=
  ∀ n, P4790632359709668527.a n = A168336 (n + 1)

end A168336

/-! ## A168336.P12624559295343558422

`A047319(or(1, n))`
-/

namespace A168336.P12624559295343558422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047319 (Nat.lor 1 n)

end

end A168336.P12624559295343558422

namespace A168336

/-- `A047319(or(1, n))` -/
def P12624559295343558422.Spec : Prop :=
  ∀ n, P12624559295343558422.a n = A168336 (n + 1)

end A168336

/-! ## A168336.P11125576623423759626

`A017041(floor(n/2))`
-/

namespace A168336.P11125576623423759626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 ⌊(n : ℚ) / 2⌋.toNat

end

end A168336.P11125576623423759626

namespace A168336

/-- `A017041(floor(n/2))` -/
def P11125576623423759626.Spec : Prop :=
  ∀ n, P11125576623423759626.a n = A168336 (n + 1)

end A168336

/-! ## A168336.P1998776462134895657

`A047374(or(1, n)+1)`
-/

namespace A168336.P1998776462134895657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047374 (Nat.lor 1 n + 1)

end

end A168336.P1998776462134895657

namespace A168336

/-- `A047374(or(1, n)+1)` -/
def P1998776462134895657.Spec : Prop :=
  ∀ n, P1998776462134895657.a n = A168336 (n + 1)

end A168336

/-! ## A168336.P14971141226466758735

`A047383(or(1, n)+1)`
-/

namespace A168336.P14971141226466758735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047383 (Nat.lor 1 n + 1)

end

end A168336.P14971141226466758735

namespace A168336

/-- `A047383(or(1, n)+1)` -/
def P14971141226466758735.Spec : Prop :=
  ∀ n, P14971141226466758735.a n = A168336 (n + 1)

end A168336

/-! ## A168336.P10668647958698086617

`A047385(or(1, n)+1)`
-/

namespace A168336.P10668647958698086617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047385 (Nat.lor 1 n + 1)

end

end A168336.P10668647958698086617

namespace A168336

/-- `A047385(or(1, n)+1)` -/
def P10668647958698086617.Spec : Prop :=
  ∀ n, P10668647958698086617.a n = A168336 (n + 1)

end A168336

/-! ## A168336.P13547507564851015546

`A047389(or(1, n)+1)`
-/

namespace A168336.P13547507564851015546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047389 (Nat.lor 1 n + 1)

end

end A168336.P13547507564851015546

namespace A168336

/-- `A047389(or(1, n)+1)` -/
def P13547507564851015546.Spec : Prop :=
  ∀ n, P13547507564851015546.a n = A168336 (n + 1)

end A168336

/-! ## A168336.P14560213812289213244

`A017017(or(1, n))/2`
-/

namespace A168336.P14560213812289213244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017017 (Nat.lor 1 n) : ℚ) / 2

end

end A168336.P14560213812289213244

namespace A168336

/-- `A017017(or(1, n))/2` -/
def P14560213812289213244.Spec : Prop :=
  ∀ n, P14560213812289213244.a n = (A168336 (n + 1) : ℚ)

end A168336

/-! ## A168336.P9052535501209993671

`∑[A111037(a(n-1))]` with `a(0)=5`
-/

namespace A168336.P9052535501209993671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  A111037 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168336.P9052535501209993671

namespace A168336

/-- `∑[A111037(a(n-1))]` -/
def P9052535501209993671.Spec : Prop :=
  ∀ n, P9052535501209993671.a n = A168336 (n + 1)

end A168336

/-! ## A168336.P6806821358149728553

`A047382(char[2*n]+n+1)`
-/

namespace A168336.P6806821358149728553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047382 ((if ∃ j, f1 j = n then 1 else 0) + n + 1)

end

end A168336.P6806821358149728553

namespace A168336

/-- `A047382(char[2*n]+n+1)` -/
def P6806821358149728553.Spec : Prop :=
  ∀ n, P6806821358149728553.a n = A168336 (n + 1)

end A168336

/-! ## A168336.P17790043167195433302

`ceil((A016921(and(n, -2)+1)+n+2)/2)`
-/

namespace A168336.P17790043167195433302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A016921 (Int.land (n : ℤ) (-2) + 1).toNat + (n : ℤ) + 2 : ℚ) / 2⌉

end

end A168336.P17790043167195433302

namespace A168336

/-- `ceil((A016921(and(n, -2)+1)+n+2)/2)` -/
def P17790043167195433302.Spec : Prop :=
  ∀ n, P17790043167195433302.a n = A168336 (n + 1)

end A168336

/-! ## A168336.P14628929487205557114

`A047319(A109613(n))`
-/

namespace A168336.P14628929487205557114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047319 (A109613 n).toNat

end

end A168336.P14628929487205557114

namespace A168336

/-- `A047319(A109613(n))` -/
def P14628929487205557114.Spec : Prop :=
  ∀ n, P14628929487205557114.a n = A168336 (n + 1)

end A168336

/-! ## A168336.P17909926091296418777

`A047374(2*(A004526(n)+1))`
-/

namespace A168336.P17909926091296418777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047374 (2 * (A004526 n + 1)).toNat

end

end A168336.P17909926091296418777

namespace A168336

/-- `A047374(2*(A004526(n)+1))` -/
def P17909926091296418777.Spec : Prop :=
  ∀ n, P17909926091296418777.a n = A168336 (n + 1)

end A168336

/-! ## A168336.P13284265466182201197

`A047389(A047235(n+1)-2*n)`
-/

namespace A168336.P13284265466182201197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047389 (A047235 (n + 1) - (2 * n : ℤ)).toNat

end

end A168336.P13284265466182201197

namespace A168336

/-- `A047389(A047235(n+1)-2*n)` -/
def P13284265466182201197.Spec : Prop :=
  ∀ n, P13284265466182201197.a n = A168336 (n + 1)

end A168336

/-! ## A168336.P1851954506345127195

`A047389(A047270(n+1)-(2*n+1))`
-/

namespace A168336.P1851954506345127195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047389 (A047270 (n + 1) - (2 * n + 1 : ℤ)).toNat

end

end A168336.P1851954506345127195

namespace A168336

/-- `A047389(A047270(n+1)-(2*n+1))` -/
def P1851954506345127195.Spec : Prop :=
  ∀ n, P1851954506345127195.a n = A168336 (n + 1)

end A168336

/-!
# A168337: a(n) = 1 + 7*floor(n/2).

The programs for A168337, the canonical program `A168337.P12270128086054150396` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168337 has offset 1).

The definition of A168337 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+7*floor((n+1)/2)` (program `A168337.P12270128086054150396`, by `A168337.P12270128086054150396.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168337.P1299535479324790244

`ogf((1+7x-x^2)/(1-x-x^2+x^3))`
-/

namespace A168337.P1299535479324790244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7, -1] [1, -1, -1, 1] n

end

end A168337.P1299535479324790244

namespace A168337

/-- `ogf((1+7x-x^2)/(1-x-x^2+x^3))` -/
def P1299535479324790244.Spec : Prop :=
  ∀ n, P1299535479324790244.a n = A168337 (n + 1)

end A168337

/-! ## A168337.P12270128086054150396

`1+7*floor((n+1)/2)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168337

/-- `1+7*floor((n+1)/2)` -/
def P12270128086054150396.Spec : Prop :=
  ∀ n, P12270128086054150396.a n = A168337 (n + 1)

theorem P12270128086054150396.correct : P12270128086054150396.Spec := by
  intro n
  simp only [A168337, Nat.add_sub_cancel]

end A168337

/-! ## A168337.P11120029370632423481

`7+a(n-2)` with `a(0)=1, a(1)=8`
-/

namespace A168337.P11120029370632423481
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  7 + a (n - 2)

end

end A168337.P11120029370632423481

namespace A168337

/-- `7+a(n-2)` -/
def P11120029370632423481.Spec : Prop :=
  ∀ n, (P11120029370632423481.a n : ℤ) = A168337 (n + 1)

end A168337

/-! ## A168337.P1800731359371158359

`∑[7*n%2]+1`
-/

namespace A168337.P1800731359371158359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A168337.P1800731359371158359

namespace A168337

/-- `∑[7*n%2]+1` -/
def P1800731359371158359.Spec : Prop :=
  ∀ n, (P1800731359371158359.a n : ℤ) = A168337 (n + 1)

end A168337

/-! ## A168337.P14133271328468533501

`∑[abs(a(n-2))]` with `a(0)=1, a(1)=7, a(2)=0`
-/

namespace A168337.P14133271328468533501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 0] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168337.P14133271328468533501

namespace A168337

/-- `∑[abs(a(n-2))]` -/
def P14133271328468533501.Spec : Prop :=
  ∀ n, (P14133271328468533501.a n : ℤ) = A168337 (n + 1)

end A168337

/-! ## A168337.P2951726583359577845

`∑[7-a(n-1)]` with `a(0)=1, a(1)=7`
-/

namespace A168337.P2951726583359577845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  7 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168337.P2951726583359577845

namespace A168337

/-- `∑[7-a(n-1)]` -/
def P2951726583359577845.Spec : Prop :=
  ∀ n, P2951726583359577845.a n = A168337 (n + 1)

end A168337

/-! ## A168337.P16241689182296001589

`∑[∑[ogf((1+7x-x^2)/(1+x))]]`
-/

namespace A168337.P16241689182296001589
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7, -1] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168337.P16241689182296001589

namespace A168337

/-- `∑[∑[ogf((1+7x-x^2)/(1+x))]]` -/
def P16241689182296001589.Spec : Prop :=
  ∀ n, P16241689182296001589.a n = A168337 (n + 1)

end A168337

/-! ## A168337.P12050980370335195584

`floor(7*n-(a(n-1)-2))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A168337.P12050980370335195584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (7 * n : ℤ) - (a (n - 1) - 2)

end

end A168337.P12050980370335195584

namespace A168337

/-- `floor(7*n-(a(n-1)-2))` -/
def P12050980370335195584.Spec : Prop :=
  ∀ n, P12050980370335195584.a n = A168337 (n + 1)

end A168337

/-! ## A168337.P12800783263657641123

`A016993(ceil(n/2))`
-/

namespace A168337.P12800783263657641123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 ⌈(n : ℚ) / 2⌉.toNat

end

end A168337.P12800783263657641123

namespace A168337

/-- `A016993(ceil(n/2))` -/
def P12800783263657641123.Spec : Prop :=
  ∀ n, P12800783263657641123.a n = A168337 (n + 1)

end A168337

/-! ## A168337.P4192819731700444791

`∑[A318302(a(n-1))]` with `a(0)=1`
-/

namespace A168337.P4192819731700444791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A318302 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168337.P4192819731700444791

namespace A168337

/-- `∑[A318302(a(n-1))]` -/
def P4192819731700444791.Spec : Prop :=
  ∀ n, P4192819731700444791.a n = A168337 (n + 1)

end A168337

/-! ## A168337.P7621881715227351158

`A017605(n)%A155449(n+1)`
-/

namespace A168337.P7621881715227351158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017605 n) (A155449 (n + 1))

end

end A168337.P7621881715227351158

namespace A168337

/-- `A017605(n)%A155449(n+1)` -/
def P7621881715227351158.Spec : Prop :=
  ∀ n, P7621881715227351158.a n = A168337 (n + 1)

end A168337

/-! ## A168337.P15422109188189271818

`A169598(n+1)%A017089(n)`
-/

namespace A168337.P15422109188189271818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169598 (n + 1)) (A017089 n)

end

end A168337.P15422109188189271818

namespace A168337

/-- `A169598(n+1)%A017089(n)` -/
def P15422109188189271818.Spec : Prop :=
  ∀ n, P15422109188189271818.a n = A168337 (n + 1)

end A168337

/-! ## A168337.P15760010776741606933

`∑[A010689(n)-A001221(A303809(n+1))]`
-/

namespace A168337.P15760010776741606933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010689 n - A001221 (A303809 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168337.P15760010776741606933

namespace A168337

/-- `∑[A010689(n)-A001221(A303809(n+1))]` -/
def P15760010776741606933.Spec : Prop :=
  ∀ n, P15760010776741606933.a n = A168337 (n + 1)

end A168337

/-! ## A168337.P18396262173219966961

`A047336(or(1, n+1))`
-/

namespace A168337.P18396262173219966961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047336 (Nat.lor 1 (n + 1))

end

end A168337.P18396262173219966961

namespace A168337

/-- `A047336(or(1, n+1))` -/
def P18396262173219966961.Spec : Prop :=
  ∀ n, P18396262173219966961.a n = A168337 (n + 1)

end A168337

/-! ## A168337.P5070643326961936398

`A047346(or(1, n+1))`
-/

namespace A168337.P5070643326961936398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047346 (Nat.lor 1 (n + 1))

end

end A168337.P5070643326961936398

namespace A168337

/-- `A047346(or(1, n+1))` -/
def P5070643326961936398.Spec : Prop :=
  ∀ n, P5070643326961936398.a n = A168337 (n + 1)

end A168337

/-! ## A168337.P104829212313956529

`A047353(or(1, n+1))`
-/

namespace A168337.P104829212313956529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047353 (Nat.lor 1 (n + 1))

end

end A168337.P104829212313956529

namespace A168337

/-- `A047353(or(1, n+1))` -/
def P104829212313956529.Spec : Prop :=
  ∀ n, P104829212313956529.a n = A168337 (n + 1)

end A168337

/-! ## A168337.P14055619184385562776

`A047356(or(1, n+1))`
-/

namespace A168337.P14055619184385562776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047356 (Nat.lor 1 (n + 1))

end

end A168337.P14055619184385562776

namespace A168337

/-- `A047356(or(1, n+1))` -/
def P14055619184385562776.Spec : Prop :=
  ∀ n, P14055619184385562776.a n = A168337 (n + 1)

end A168337

/-! ## A168337.P4635378554850380990

`A047383(or(1, n+1))`
-/

namespace A168337.P4635378554850380990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047383 (Nat.lor 1 (n + 1))

end

end A168337.P4635378554850380990

namespace A168337

/-- `A047383(or(1, n+1))` -/
def P4635378554850380990.Spec : Prop :=
  ∀ n, P4635378554850380990.a n = A168337 (n + 1)

end A168337

/-! ## A168337.P3331160308548429950

`A166522(or(1, n+1))`
-/

namespace A168337.P3331160308548429950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166522 (Nat.lor 1 (n + 1))

end

end A168337.P3331160308548429950

namespace A168337

/-- `A166522(or(1, n+1))` -/
def P3331160308548429950.Spec : Prop :=
  ∀ n, P3331160308548429950.a n = A168337 (n + 1)

end A168337

/-! ## A168337.P14898142887582716050

`A047336(A109613(n+1))`
-/

namespace A168337.P14898142887582716050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047336 (A109613 (n + 1)).toNat

end

end A168337.P14898142887582716050

namespace A168337

/-- `A047336(A109613(n+1))` -/
def P14898142887582716050.Spec : Prop :=
  ∀ n, P14898142887582716050.a n = A168337 (n + 1)

end A168337

/-!
# A168338: Sum of the largest digit of the divisors of n.

The programs for A168338, the canonical program `A168338.P16717668218238744445` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168338 has offset 1).

The definition of A168338 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168338.P16717668218238744445

`∑{d}[n+1, A054055(#)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A168338

/-- `∑{d}[n+1, A054055(#)]` -/
def P16717668218238744445.Spec : Prop :=
  ∀ n, P16717668218238744445.a n = A168338 (n + 1)

theorem P16717668218238744445.correct : P16717668218238744445.Spec := by
  intro n
  simp only [A168338, Nat.add_sub_cancel]

end A168338

/-! ## A168338.P7681517621500740795

`∑{d}[n+1, val(A069877(#), 2)]`
-/

namespace A168338.P7681517621500740795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation (A069877 d).toNat 2

end

end A168338.P7681517621500740795

namespace A168338

/-- `∑{d}[n+1, val(A069877(#), 2)]` -/
def P7681517621500740795.Spec : Prop :=
  ∀ n, (P7681517621500740795.a n : ℤ) = A168338 (n + 1)

end A168338

/-! ## A168338.P2139509273851882213

`∑{d}[n+1, A004185(#)%10]`
-/

namespace A168338.P2139509273851882213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A004185 d) 10

end

end A168338.P2139509273851882213

namespace A168338

/-- `∑{d}[n+1, A004185(#)%10]` -/
def P2139509273851882213.Spec : Prop :=
  ∀ n, P2139509273851882213.a n = A168338 (n + 1)

end A168338

/-! ## A168338.P17487028329484065722

`∑{d}[n+1, A000030(A004186(#))]`
-/

namespace A168338.P17487028329484065722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000030 (A004186 d).toNat

end

end A168338.P17487028329484065722

namespace A168338

/-- `∑{d}[n+1, A000030(A004186(#))]` -/
def P17487028329484065722.Spec : Prop :=
  ∀ n, P17487028329484065722.a n = A168338 (n + 1)

end A168338

/-! ## A168338.P18393553737068313942

`∑{d}[n+1, A000030(A073730(#))]`
-/

namespace A168338.P18393553737068313942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000030 (A073730 d).toNat

end

end A168338.P18393553737068313942

namespace A168338

/-- `∑{d}[n+1, A000030(A073730(#))]` -/
def P18393553737068313942.Spec : Prop :=
  ∀ n, P18393553737068313942.a n = A168338 (n + 1)

end A168338

/-! ## A168338.P16554048934044968077

`∑{d}[n+1, A010879(A047842(#))]`
-/

namespace A168338.P16554048934044968077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010879 (A047842 d).toNat

end

end A168338.P16554048934044968077

namespace A168338

/-- `∑{d}[n+1, A010879(A047842(#))]` -/
def P16554048934044968077.Spec : Prop :=
  ∀ n, P16554048934044968077.a n = A168338 (n + 1)

end A168338

/-!
# A168339: a(n) is the least number of squares needed to form n edge-disjoint 1 X 1 holes inside a rectangle of squares with a solid border.

The programs for A168339, there is no canonical definition to state claims against.
-/

/-! ## A168339.P8881441571415518047

`A386316(Δ[n²])-(n+1)`
-/

namespace A168339.P8881441571415518047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386316 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n + 1 : ℤ)

end

end A168339.P8881441571415518047

/-! ## A168339.P4195228119806033966

`A143082(n+1)*A145288(n+1)-(n+1)`
-/

namespace A168339.P4195228119806033966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143082 (n + 1) * A145288 (n + 1) - (n + 1 : ℤ)

end

end A168339.P4195228119806033966

/-! ## A168339.P7410610976690472691

`A001478(n+1)+A143082(n+1)*A145288(n+1)`
-/

namespace A168339.P7410610976690472691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + A143082 (n + 1) * A145288 (n + 1)

end

end A168339.P7410610976690472691

/-! ## A168339.P16594291391646483123

`A001478(n+1)+(A161358(n+1)+2)*A143082(n+1)`
-/

namespace A168339.P16594291391646483123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A161358 (n + 1) + 2) * A143082 (n + 1)

end

end A168339.P16594291391646483123

/-! ## A168339.P7663420065588404358

`A070112(n+1)-A001221(A123840(n+1))`
-/

namespace A168339.P7663420065588404358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070112 (n + 1) - A001221 (A123840 (n + 1)).toNat

end

end A168339.P7663420065588404358

/-!
# A168342: Even atomic numbers in the Janet table of the PSE, read right to left along rows.

The programs for A168342, there is no canonical definition to state claims against.
-/

/-! ## A168342.P13806849611859140143

`A138509(Δ[n²])`
-/

namespace A168342.P13806849611859140143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138509 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A168342.P13806849611859140143

/-! ## A168342.P8280362793084923037

`A138509(2*(n+1))+1`
-/

namespace A168342.P8280362793084923037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138509 (2 * (n + 1)) + 1

end

end A168342.P8280362793084923037

/-! ## A168342.P5598908655975477991

`or(1, A138509(n+1+n))-1`
-/

namespace A168342.P5598908655975477991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A138509 (n + 1 + n)) - 1

end

end A168342.P5598908655975477991

/-! ## A168342.P2293665476338733015

`filter[A138509(n+1), A055396(#)]`
-/

namespace A168342.P2293665476338733015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A055396 (f1 j).toNat = 1) n)

end

end A168342.P2293665476338733015

/-! ## A168342.P12475585468964754626

`filter[A138509(n+1), A059841(#)]`
-/

namespace A168342.P12475585468964754626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A168342.P12475585468964754626

/-! ## A168342.P7313388777566897675

`A171710(2*(n+1))-A172049(n+1)`
-/

namespace A168342.P7313388777566897675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171710 (2 * (n + 1)) - A172049 (n + 1)

end

end A168342.P7313388777566897675

/-! ## A168342.P3757583958342911497

`A138509(A005408(n))%A166911(n)`
-/

namespace A168342.P3757583958342911497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138509 (A005408 n).toNat) (A166911 n)

end

end A168342.P3757583958342911497

/-!
# A168343: n-th single or isolated number minus n.

The programs for A168343, the canonical program `A168343.P10702448307998344180` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168343 has offset 1).

The definition of A168343 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167706, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A168343.P10702448307998344180

`A167706(n+1)-(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A168343

/-- `A167706(n+1)-(n+1)` -/
def P10702448307998344180.Spec : Prop :=
  ∀ n, P10702448307998344180.a n = A168343 (n + 1)

theorem P10702448307998344180.correct : P10702448307998344180.Spec := by
  intro n
  simp only [A168343, Nat.add_sub_cancel]

end A168343

/-! ## A168343.P7436925901343041560

`∑[A167909(floor(acot(n)+n))-1]`
-/

namespace A168343.P7436925901343041560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167909 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168343.P7436925901343041560

namespace A168343

/-- `∑[A167909(floor(acot(n)+n))-1]` -/
def P7436925901343041560.Spec : Prop :=
  ∀ n, P7436925901343041560.a n = A168343 (n + 1)

end A168343

/-! ## A168343.P5988240796063685346

`∑[A167909(round(acot(n)+n))-1]`
-/

namespace A168343.P5988240796063685346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167909 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168343.P5988240796063685346

namespace A168343

/-- `∑[A167909(round(acot(n)+n))-1]` -/
def P5988240796063685346.Spec : Prop :=
  ∀ n, P5988240796063685346.a n = A168343 (n + 1)

end A168343

/-! ## A168343.P14009480519617857291

`a(n-1)+A167909(n)-1` with `a(0)=1`
-/

namespace A168343.P14009480519617857291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A167909 n - 1)

end

end A168343.P14009480519617857291

namespace A168343

/-- `a(n-1)+A167909(n)-1` -/
def P14009480519617857291.Spec : Prop :=
  ∀ n, P14009480519617857291.a n = A168343 (n + 1)

end A168343

/-! ## A168343.P15676680669835417613

`∑[A167909(abs(1-n)+1)-1]`
-/

namespace A168343.P15676680669835417613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167909 (|1 - (n : ℤ)| + 1).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168343.P15676680669835417613

namespace A168343

/-- `∑[A167909(abs(1-n)+1)-1]` -/
def P15676680669835417613.Spec : Prop :=
  ∀ n, P15676680669835417613.a n = A168343 (n + 1)

end A168343

/-! ## A168343.P3295317706040201711

`A167706(-xor(n, -1))-1-n`
-/

namespace A168343.P3295317706040201711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (-Int.xor (n : ℤ) (-1)).toNat - 1 - (n : ℤ)

end

end A168343.P3295317706040201711

namespace A168343

/-- `A167706(-xor(n, -1))-1-n` -/
def P3295317706040201711.Spec : Prop :=
  ∀ n, P3295317706040201711.a n = A168343 (n + 1)

end A168343

/-! ## A168343.P14392319240786700915

`A023443(A167706(n+1)-n)`
-/

namespace A168343.P14392319240786700915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A167706 (n + 1) - (n : ℤ)).toNat

end

end A168343.P14392319240786700915

namespace A168343

/-- `A023443(A167706(n+1)-n)` -/
def P14392319240786700915.Spec : Prop :=
  ∀ n, P14392319240786700915.a n = A168343 (n + 1)

end A168343

/-! ## A168343.P5900390350262653692

`A258071(A167706(n+1)-n)`
-/

namespace A168343.P5900390350262653692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258071 (A167706 (n + 1) - (n : ℤ)).toNat

end

end A168343.P5900390350262653692

namespace A168343

/-- `A258071(A167706(n+1)-n)` -/
def P5900390350262653692.Spec : Prop :=
  ∀ n, P5900390350262653692.a n = A168343 (n + 1)

end A168343

/-! ## A168343.P4181702596757574885

`∑[abs(A167909(A028310(n))-1)]`
-/

namespace A168343.P4181702596757574885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A167909 (A028310 n).toNat - 1|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168343.P4181702596757574885

namespace A168343

/-- `∑[abs(A167909(A028310(n))-1)]` -/
def P4181702596757574885.Spec : Prop :=
  ∀ n, P4181702596757574885.a n = A168343 (n + 1)

end A168343

/-! ## A168343.P300291639274188835

`A243348(n+1)+A168249(n+1)`
-/

namespace A168343.P300291639274188835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243348 (n + 1) + A168249 (n + 1)

end

end A168343.P300291639274188835

namespace A168343

/-- `A243348(n+1)+A168249(n+1)` -/
def P300291639274188835.Spec : Prop :=
  ∀ n, P300291639274188835.a n = A168343 (n + 1)

theorem P300291639274188835.correct : P300291639274188835.Spec := by
  intro n
  simp only [A168343, Nat.add_sub_cancel, A168343.P300291639274188835.a, A168343.P10702448307998344180.a, A167706, A167706.P11488542031625927943.f1, A167706.P11488542031625927943.f2, A167706.P11488542031625927943.a, A168249, A168249.P10517048205738276799.a, A243348, A243348.P5579662287376898014.a, A005117, A005117.P8954503998193661401.f1, A005117.P8954503998193661401.a, A007510, A007510.P12699692636498883418.a, A014574, A014574.P4587706211531852143.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A129297, A129297.P6596998359982084627.f1, A129297.P6596998359982084627.f2, A129297.P6596998359982084627.a, A176656, A176656.P13726643682834785047.f1, A176656.P13726643682834785047.a, A000010, A000010.P4673923239450215316.a, A063919, A063919.P11181265949704613022.a, A166597, A166597.P14552351031517696526.a, A334142, A334142.P15450815124474884519.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A168343

/-!
# A168344: G.f. A(x) satisfies: A(x) = G(x*A(x)) where A(x/G(x)) = G(x) = g.f. of A006664, which is the number of irreducible systems of meanders.

The programs for A168344, there is no canonical definition to state claims against.
-/

/-! ## A168344.P6079204646478594650

`A008621(A344066(n)+1)`
-/

namespace A168344.P6079204646478594650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A344066 n + 1).toNat

end

end A168344.P6079204646478594650

/-! ## A168344.P13335854243841838438

`A002265(A344066(n)+5)`
-/

namespace A168344.P13335854243841838438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A344066 n + 5).toNat

end

end A168344.P13335854243841838438

/-!
# A168345: a(n) = n^4*(n^9 + 1)/2.

The programs for A168345, the canonical program `A168345.P4631879238593598652` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168345 has offset 0).

The definition of A168345 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168345.P4631879238593598652

`n^4*(n^9+1)/2`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168345

/-- `n^4*(n^9+1)/2` -/
def P4631879238593598652.Spec : Prop :=
  ∀ n, P4631879238593598652.a n = (A168345 n : ℚ)

end A168345

/-! ## A168345.P17727217686721849285

`n*A168190(n)`
-/

namespace A168345.P17727217686721849285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168190 n

end

end A168345.P17727217686721849285

namespace A168345

/-- `n*A168190(n)` -/
def P17727217686721849285.Spec : Prop :=
  ∀ n, P17727217686721849285.a n = A168345 n

end A168345

/-! ## A168345.P6982683568432476353

`n²*A168153(n)`
-/

namespace A168345.P6982683568432476353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A168153 n

end

end A168345.P6982683568432476353

namespace A168345

/-- `n²*A168153(n)` -/
def P6982683568432476353.Spec : Prop :=
  ∀ n, P6982683568432476353.a n = A168345 n

end A168345

/-! ## A168345.P17938108751862412335

`n^3*A168118(n)`
-/

namespace A168345.P17938108751862412335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) * A168118 n

end

end A168345.P17938108751862412335

namespace A168345

/-- `n^3*A168118(n)` -/
def P17938108751862412335.Spec : Prop :=
  ∀ n, P17938108751862412335.a n = A168345 n

end A168345

/-! ## A168345.P9677670140538239935

`A060891(n)*A168194(n)`
-/

namespace A168345.P9677670140538239935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060891 n * A168194 n

end

end A168345.P9677670140538239935

namespace A168345

/-- `A060891(n)*A168194(n)` -/
def P9677670140538239935.Spec : Prop :=
  ∀ n, P9677670140538239935.a n = A168345 n

end A168345

/-! ## A168345.P6915499414351744091

`A168153(n)*A253909(n)`
-/

namespace A168345.P6915499414351744091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168153 n * A253909 n

end

end A168345.P6915499414351744091

namespace A168345

/-- `A168153(n)*A253909(n)` -/
def P6915499414351744091.Spec : Prop :=
  ∀ n, P6915499414351744091.a n = A168345 n

end A168345

/-! ## A168345.P7430543846499338082

`lcm(A168118(n), A168194(n))`
-/

namespace A168345.P7430543846499338082
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A168118 n) (A168194 n)

end

end A168345.P7430543846499338082

namespace A168345

/-- `lcm(A168118(n), A168194(n))` -/
def P7430543846499338082.Spec : Prop :=
  ∀ n, (P7430543846499338082.a n : ℤ) = A168345 n

end A168345

/-!
# A168346: a(n) = n^4*(n^10 + 1)/2.

The programs for A168346, the canonical program `A168346.P1616347729912823606` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168346 has offset 0).

The definition of A168346 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^4*(n^10+1)/2` (program `A168346.P6231584071021818417`, by `A168346.P6231584071021818417.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168346.P6231584071021818417

`n^4*(n^10+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168346.P6231584071021818417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 4 * (n ^ 10 + 1) : ℚ) / 2

end

end A168346.P6231584071021818417

namespace A168346

/-- `n^4*(n^10+1)/2` -/
def P6231584071021818417.Spec : Prop :=
  ∀ n, P6231584071021818417.a n = (A168346 n : ℚ)

theorem P6231584071021818417.correct : P6231584071021818417.Spec := by
  intro n
  simp only [A168346, Nat.add_sub_cancel, A168346.P6231584071021818417.a, A168346.P1616347729912823606.a, A168176, A168176.P6713413359680525234.a, A168122, A168122.P7248320265553921643.a, A021003, A021003.P1631402243745340027.a, A071252, A071252.P13937739183146272210.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168346

/-! ## A168346.P2300407495687445269

`n*A168191(n)`
-/

namespace A168346.P2300407495687445269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168191 n

end

end A168346.P2300407495687445269

namespace A168346

/-- `n*A168191(n)` -/
def P2300407495687445269.Spec : Prop :=
  ∀ n, P2300407495687445269.a n = A168346 n

end A168346

/-! ## A168346.P5815712206208416061

`n^3*A168119(n)`
-/

namespace A168346.P5815712206208416061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) * A168119 n

end

end A168346.P5815712206208416061

namespace A168346

/-- `n^3*A168119(n)` -/
def P5815712206208416061.Spec : Prop :=
  ∀ n, P5815712206208416061.a n = A168346 n

end A168346

/-! ## A168346.P1616347729912823606

`n*n*A168176(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A168346

/-- `n*n*A168176(n)` -/
def P1616347729912823606.Spec : Prop :=
  ∀ n, P1616347729912823606.a n = A168346 n

theorem P1616347729912823606.correct : P1616347729912823606.Spec := by
  intro n
  simp only [A168346]

end A168346

/-! ## A168346.P4794745686347476679

`A060892(n)*A168192(n)`
-/

namespace A168346.P4794745686347476679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060892 n * A168192 n

end

end A168346.P4794745686347476679

namespace A168346

/-- `A060892(n)*A168192(n)` -/
def P4794745686347476679.Spec : Prop :=
  ∀ n, P4794745686347476679.a n = A168346 n

end A168346

/-! ## A168346.P18439384795506591027

`lcm(A168119(n), A168192(n))`
-/

namespace A168346.P18439384795506591027
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A168119 n) (A168192 n)

end

end A168346.P18439384795506591027

namespace A168346

/-- `lcm(A168119(n), A168192(n))` -/
def P18439384795506591027.Spec : Prop :=
  ∀ n, (P18439384795506591027.a n : ℤ) = A168346 n

end A168346

/-! ## A168346.P12097271845580110168

`n²*A167963(n²)`
-/

namespace A168346.P12097271845580110168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A167963 (n ^ 2)

end

end A168346.P12097271845580110168

namespace A168346

/-- `n²*A167963(n²)` -/
def P12097271845580110168.Spec : Prop :=
  ∀ n, P12097271845580110168.a n = A168346 n

end A168346

/-! ## A168346.P5653990363794689300

`A168123(n²)`
-/

namespace A168346.P5653990363794689300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168123 (n ^ 2)

end

end A168346.P5653990363794689300

namespace A168346

/-- `A168123(n²)` -/
def P5653990363794689300.Spec : Prop :=
  ∀ n, P5653990363794689300.a n = A168346 n

end A168346

/-!
# A168348: Primes which are the sum of two consecutive single or isolated numbers.

The programs for A168348, there is no canonical definition to state claims against.
-/

/-! ## A168348.P14620435278888029581

`p?[A167706(n+1)+A167706(n+2)]`
-/

namespace A168348.P14620435278888029581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1) + A167706 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168348.P14620435278888029581

/-! ## A168348.P12514832764771305529

`record[A014963(A167706(n+5)+A167706(n+6))]`
-/

namespace A168348.P12514832764771305529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A167706 (n + 5) + A167706 (n + 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168348.P12514832764771305529

/-! ## A168348.P8402324694228714802

`record[A020639(A167706(n+5)+A167706(n+6))]`
-/

namespace A168348.P8402324694228714802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A167706 (n + 5) + A167706 (n + 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168348.P8402324694228714802

/-! ## A168348.P12315306856968810273

`record[A100994(A167706(n+5)+A167706(n+6))]`
-/

namespace A168348.P12315306856968810273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100994 (A167706 (n + 5) + A167706 (n + 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168348.P12315306856968810273

/-!
# A168350: Sum of first n non-single or nonisolated numbers.

The programs for A168350, there is no canonical definition to state claims against.
-/

/-! ## A168350.P17319689196271829103

`∑[A167707(1+n)]`
-/

namespace A168350.P17319689196271829103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167707 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168350.P17319689196271829103

/-! ## A168350.P16303828811074769279

`∑[comp[A167706(n+1)]]`
-/

namespace A168350.P16303828811074769279
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168350.P16303828811074769279

/-! ## A168350.P5567548286118602419

`∑[A168496(1+n)-1]`
-/

namespace A168350.P5567548286118602419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168496 (1 + n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168350.P5567548286118602419

/-! ## A168350.P12190869727049942115

`∑[comp[A167921(n+1)+1]]`
-/

namespace A168350.P12190869727049942115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167921 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168350.P12190869727049942115

/-! ## A168350.P3424971667994447202

`∑[A168045(n+1)-(n+1)]`
-/

namespace A168350.P3424971667994447202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168045 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168350.P3424971667994447202

/-! ## A168350.P12359491535613907334

`∑[A167707(-xor(n, -1))%87]`
-/

namespace A168350.P12359491535613907334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167707 (-Int.xor (n : ℤ) (-1)).toNat) 87

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168350.P12359491535613907334

/-! ## A168350.P1169479671205442493

`∑[A023443(A168496(n+1))]`
-/

namespace A168350.P1169479671205442493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A168496 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168350.P1169479671205442493

/-! ## A168350.P15691066735372669435

`∑[∑[A167911(A028310(n))]-1]`
-/

namespace A168350.P15691066735372669435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167911 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168350.P15691066735372669435

/-! ## A168350.P16080134454711788028

`∑[∑[A167911(n+1)]-A167911(n+1)]`
-/

namespace A168350.P16080134454711788028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167911 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A167911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168350.P16080134454711788028

/-!
# A168351: a(n) = n^5*(n+1)/2.

The programs for A168351, the canonical program `A168351.P7899270696741764413` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168351 has offset 0).

The definition of A168351 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^5*(n+1)/2` (program `A168351.P464953837249284829`, by `A168351.P464953837249284829.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168351.P464953837249284829

`n^5*(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168351.P464953837249284829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 5 * (n + 1) : ℚ) / 2

end

end A168351.P464953837249284829

namespace A168351

/-- `n^5*(n+1)/2` -/
def P464953837249284829.Spec : Prop :=
  ∀ n, P464953837249284829.a n = (A168351 n : ℚ)

theorem P464953837249284829.correct : P464953837249284829.Spec := by
  intro n
  simp only [A168351, Nat.add_sub_cancel, A168351.P464953837249284829.a, A168351.P7899270696741764413.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168351

/-! ## A168351.P7899270696741764413

`n^4*C(n+1, 2)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168351

/-- `n^4*C(n+1, 2)` -/
def P7899270696741764413.Spec : Prop :=
  ∀ n, (P7899270696741764413.a n : ℤ) = A168351 n

theorem P7899270696741764413.correct : P7899270696741764413.Spec := by
  intro n
  simp only [A168351]

end A168351

/-! ## A168351.P306303684575297681

`ogf((x+41x^2+171x^3+131x^4+16x^5)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A168351.P306303684575297681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 41, 171, 131, 16] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A168351.P306303684575297681

namespace A168351

/-- `ogf((x+41x^2+171x^3+131x^4+16x^5)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P306303684575297681.Spec : Prop :=
  ∀ n, P306303684575297681.a n = A168351 n

end A168351

/-! ## A168351.P8448721957679712846

`n²²*∑[gcd(n, n)]`
-/

namespace A168351.P8448721957679712846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A168351.P8448721957679712846

namespace A168351

/-- `n²²*∑[gcd(n, n)]` -/
def P8448721957679712846.Spec : Prop :=
  ∀ n, (P8448721957679712846.a n : ℤ) = A168351 n

end A168351

/-! ## A168351.P14881076371947932180

`lcm(n, n²²*∑[n])`
-/

namespace A168351.P14881076371947932180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n ((n ^ 2) ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A168351.P14881076371947932180

namespace A168351

/-- `lcm(n, n²²*∑[n])` -/
def P14881076371947932180.Spec : Prop :=
  ∀ n, (P14881076371947932180.a n : ℤ) = A168351 n

end A168351

/-! ## A168351.P1971375082947460436

`floor(∑[n]/acot(n²²))`
-/

namespace A168351.P1971375082947460436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / SequenceMachineLib.acot ((n ^ 2) ^ 2 : ℝ)⌋

end

end A168351.P1971375082947460436

namespace A168351

/-- `floor(∑[n]/acot(n²²))` -/
def P1971375082947460436.Spec : Prop :=
  ∀ n, P1971375082947460436.a n = A168351 n

end A168351

/-! ## A168351.P12836608425364734248

`round(∑[n]/acot(n²²))`
-/

namespace A168351.P12836608425364734248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / SequenceMachineLib.acot ((n ^ 2) ^ 2 : ℝ))

end

end A168351.P12836608425364734248

namespace A168351

/-- `round(∑[n]/acot(n²²))` -/
def P12836608425364734248.Spec : Prop :=
  ∀ n, P12836608425364734248.a n = A168351 n

end A168351

/-! ## A168351.P17134053725942011061

`(n²-C(n, 2))*n^4`
-/

namespace A168351.P17134053725942011061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - (Nat.choose n 2 : ℤ)) * (n ^ 4 : ℤ)

end

end A168351.P17134053725942011061

namespace A168351

/-- `(n²-C(n, 2))*n^4` -/
def P17134053725942011061.Spec : Prop :=
  ∀ n, P17134053725942011061.a n = A168351 n

theorem P17134053725942011061.correct : P17134053725942011061.Spec := by
  intro n
  simp only [A168351, Nat.add_sub_cancel, A168351.P17134053725942011061.a, A168351.P7899270696741764413.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168351

/-! ## A168351.P9294022354256759062

`n²²*∑[a(n-1)+1]` with `a(0)=0`
-/

namespace A168351.P9294022354256759062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A168351.P9294022354256759062

namespace A168351

/-- `n²²*∑[a(n-1)+1]` -/
def P9294022354256759062.Spec : Prop :=
  ∀ n, (P9294022354256759062.a n : ℤ) = A168351 n

end A168351

/-! ## A168351.P11608416797664435096

`(record[C(n, 2)-n]-n)*n^4`
-/

namespace A168351.P11608416797664435096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)) * (n ^ 4 : ℤ)

end

end A168351.P11608416797664435096

namespace A168351

/-- `(record[C(n, 2)-n]-n)*n^4` -/
def P11608416797664435096.Spec : Prop :=
  ∀ n, P11608416797664435096.a n = A168351 n

end A168351

/-! ## A168351.P5063658156382565727

`floor(floor((n+1)/acot(n))/2*n²*n²)`
-/

namespace A168351.P5063658156382565727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(n + 1 : ℝ) / SequenceMachineLib.acot (n : ℝ)⌋ : ℚ) / 2 * (n ^ 2 : ℚ) * (n ^ 2 : ℚ)⌋

end

end A168351.P5063658156382565727

namespace A168351

/-- `floor(floor((n+1)/acot(n))/2*n²*n²)` -/
def P5063658156382565727.Spec : Prop :=
  ∀ n, P5063658156382565727.a n = A168351 n

end A168351

/-! ## A168351.P7362705029703509485

`n/2*A101362(n)`
-/

namespace A168351.P7362705029703509485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A101362 n : ℚ)

end

end A168351.P7362705029703509485

namespace A168351

/-- `n/2*A101362(n)` -/
def P7362705029703509485.Spec : Prop :=
  ∀ n, P7362705029703509485.a n = (A168351 n : ℚ)

theorem P7362705029703509485.correct : P7362705029703509485.Spec := by
  intro n
  simp only [A168351, Nat.add_sub_cancel, A168351.P7362705029703509485.a, A168351.P7899270696741764413.a, A101362, A101362.P467268516433551878.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168351

/-! ## A168351.P7640378100043319199

`n²²*A000217(n)`
-/

namespace A168351.P7640378100043319199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) * A000217 n

end

end A168351.P7640378100043319199

namespace A168351

/-- `n²²*A000217(n)` -/
def P7640378100043319199.Spec : Prop :=
  ∀ n, P7640378100043319199.a n = A168351 n

theorem P7640378100043319199.correct : P7640378100043319199.Spec := by
  intro n
  simp only [A168351, Nat.add_sub_cancel, A168351.P7640378100043319199.a, A168351.P7899270696741764413.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168351

/-! ## A168351.P14691180040763982308

`A168178(n)+A085744(n)`
-/

namespace A168351.P14691180040763982308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168178 n + A085744 n

end

end A168351.P14691180040763982308

namespace A168351

/-- `A168178(n)+A085744(n)` -/
def P14691180040763982308.Spec : Prop :=
  ∀ n, P14691180040763982308.a n = A168351 n

theorem P14691180040763982308.correct : P14691180040763982308.Spec := by
  intro n
  simp only [A168351, Nat.add_sub_cancel, A168351.P14691180040763982308.a, A168351.P7899270696741764413.a, A085744, A085744.P6091616498061970500.a, A168178, A168178.P7150128011749350720.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168351

/-! ## A168351.P15623125796496510638

`A321672(n)+A071232(n)`
-/

namespace A168351.P15623125796496510638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321672 n + A071232 n

end

end A168351.P15623125796496510638

namespace A168351

/-- `A321672(n)+A071232(n)` -/
def P15623125796496510638.Spec : Prop :=
  ∀ n, P15623125796496510638.a n = A168351 n

theorem P15623125796496510638.correct : P15623125796496510638.Spec := by
  intro n
  simp only [A168351, Nat.add_sub_cancel, A168351.P15623125796496510638.a, A168351.P7899270696741764413.a, A071232, A071232.P17086031509511629369.a, A321672, A321672.P12387618061068922238.a, A000217, A000217.P10269402890581615239.a, A000584, A000584.P5477385692209315495.a, A168178, A168178.P7150128011749350720.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168351

/-! ## A168351.P6264763730524112805

`A163275(n)-A168526(n)`
-/

namespace A168351.P6264763730524112805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163275 n - A168526 n

end

end A168351.P6264763730524112805

namespace A168351

/-- `A163275(n)-A168526(n)` -/
def P6264763730524112805.Spec : Prop :=
  ∀ n, P6264763730524112805.a n = A168351 n

theorem P6264763730524112805.correct : P6264763730524112805.Spec := by
  intro n
  simp only [A168351, Nat.add_sub_cancel, A168351.P6264763730524112805.a, A168351.P7899270696741764413.a, A163275, A163275.P10130318515127563795.a, A168526, A168526.P7414752990000463124.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168351

/-! ## A168351.P6544248180432647301

`A000217(n)*A000583(n)`
-/

namespace A168351.P6544248180432647301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A000583 n

end

end A168351.P6544248180432647301

namespace A168351

/-- `A000217(n)*A000583(n)` -/
def P6544248180432647301.Spec : Prop :=
  ∀ n, P6544248180432647301.a n = A168351 n

theorem P6544248180432647301.correct : P6544248180432647301.Spec := by
  intro n
  simp only [A168351, Nat.add_sub_cancel, A168351.P6544248180432647301.a, A168351.P7899270696741764413.a, A000217, A000217.P10269402890581615239.a, A000583, A000583.P14547500281748394449.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168351

/-! ## A168351.P8652128754429802313

`A000578(n)*A002411(n)`
-/

namespace A168351.P8652128754429802313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n * A002411 n

end

end A168351.P8652128754429802313

namespace A168351

/-- `A000578(n)*A002411(n)` -/
def P8652128754429802313.Spec : Prop :=
  ∀ n, P8652128754429802313.a n = A168351 n

end A168351

/-! ## A168351.P8703210591402203779

`gcd(A071236(n), A168371(n))`
-/

namespace A168351.P8703210591402203779
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A071236 n) (A168371 n)

end

end A168351.P8703210591402203779

namespace A168351

/-- `gcd(A071236(n), A168371(n))` -/
def P8703210591402203779.Spec : Prop :=
  ∀ n, (P8703210591402203779.a n : ℤ) = A168351 n

end A168351

/-! ## A168351.P14929501604387718081

`gcd(A163275(n), A170783(n))`
-/

namespace A168351.P14929501604387718081
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A163275 n) (A170783 n)

end

end A168351.P14929501604387718081

namespace A168351

/-- `gcd(A163275(n), A170783(n))` -/
def P14929501604387718081.Spec : Prop :=
  ∀ n, (P14929501604387718081.a n : ℤ) = A168351 n

end A168351

/-!
# A168352: Products of 6 distinct odd primes.

The programs for A168352, there is no canonical definition to state claims against.
-/

/-! ## A168352.P2890768074599597473

`A123321(n+1)/A103266(A057947(2*(n+1)))`
-/

namespace A168352.P2890768074599597473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123321 (n + 1) : ℚ) / (A103266 (A057947 (2 * (n + 1))).toNat : ℚ)

end

end A168352.P2890768074599597473

/-! ## A168352.P13300810852314002612

`A123321(n+1)/A000005(A098413(n+1))`
-/

namespace A168352.P13300810852314002612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123321 (n + 1) : ℚ) / (A000005 (A098413 (n + 1)).toNat : ℚ)

end

end A168352.P13300810852314002612

/-! ## A168352.P12160682061262147195

`A123321(n+1)/A000005(A174913(n+1))`
-/

namespace A168352.P12160682061262147195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123321 (n + 1) : ℚ) / (A000005 (A174913 (n + 1)).toNat : ℚ)

end

end A168352.P12160682061262147195

/-! ## A168352.P12040681511293343262

`A123321(n+1)/A010846(A001097(2*n+1))`
-/

namespace A168352.P12040681511293343262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123321 (n + 1) : ℚ) / (A010846 (A001097 (2 * n + 1)).toNat : ℚ)

end

end A168352.P12040681511293343262

/-! ## A168352.P8898813543475794025

`A123321(n+1)/A000005(A142798(3*n+5))`
-/

namespace A168352.P8898813543475794025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123321 (n + 1) : ℚ) / (A000005 (A142798 (3 * n + 5)).toNat : ℚ)

end

end A168352.P8898813543475794025

/-! ## A168352.P556760203422110333

`A123321(n+1)/A133265(A051395(n+1))`
-/

namespace A168352.P556760203422110333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123321 (n + 1) : ℚ) / (A133265 (A051395 (n + 1)).toNat : ℚ)

end

end A168352.P556760203422110333

/-! ## A168352.P15771656232451095952

`A123321(n+1)/A128710(A161680(n))`
-/

namespace A168352.P15771656232451095952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123321 (n + 1) : ℚ) / (A128710 (A161680 n).toNat : ℚ)

end

end A168352.P15771656232451095952

/-! ## A168352.P13607955948032803424

`A123321(n+1)/A328570(Δ[n^3])`
-/

namespace A168352.P13607955948032803424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123321 (n + 1) : ℚ) / (A328570 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ)

end

end A168352.P13607955948032803424

/-!
# A168353: Number of distinct transpositions of digits of prime(n).

The programs for A168353, there is no canonical definition to state claims against.
-/

/-! ## A168353.P8908676678756097356

`A047726(p?[xor(1, n)])`
-/

namespace A168353.P8908676678756097356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A168353.P8908676678756097356

/-! ## A168353.P3016685729362753854

`A047726(p?[(-1)^n+n])`
-/

namespace A168353.P3016685729362753854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A168353.P3016685729362753854

/-! ## A168353.P16083438209458380356

`A047726(∑{p}[p?[round(8*n/7)]², #])`
-/

namespace A168353.P16083438209458380356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A168353.P16083438209458380356

/-! ## A168353.P12229792173023302442

`A047726(∏{p}[p?[round(8*n/7)]², #])`
-/

namespace A168353.P12229792173023302442
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A168353.P12229792173023302442

/-! ## A168353.P6939059937426429105

`∏{p}[3*p?[round(8*n/7)], A047726(#)]`
-/

namespace A168353.P6939059937426429105
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A047726 p

end

end A168353.P6939059937426429105

/-! ## A168353.P11412662162730707023

`A047726(Δ[A007504(n)])`
-/

namespace A168353.P11412662162730707023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (f1 (n + 1) - f1 n).toNat

end

end A168353.P11412662162730707023

/-! ## A168353.P3005678528417434412

`A047726(record[A051698(n)])`
-/

namespace A168353.P3005678528417434412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A168353.P3005678528417434412

/-! ## A168353.P16215069529943280544

`A047726(A000040(n+1))`
-/

namespace A168353.P16215069529943280544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (A000040 (n + 1)).toNat

end

end A168353.P16215069529943280544

/-! ## A168353.P7740580274887195423

`A047726(A004087(n+1))`
-/

namespace A168353.P7740580274887195423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (A004087 (n + 1)).toNat

end

end A168353.P7740580274887195423

/-! ## A168353.P15190092470422280844

`A047726(A006005(n+1))`
-/

namespace A168353.P15190092470422280844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (A006005 (n + 1)).toNat

end

end A168353.P15190092470422280844

/-! ## A168353.P9662321743335280541

`A047726(A028906(n+1))`
-/

namespace A168353.P9662321743335280541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (A028906 (n + 1)).toNat

end

end A168353.P9662321743335280541

/-! ## A168353.P10497931263424923535

`A047726(A063884(n+1))`
-/

namespace A168353.P10497931263424923535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (A063884 (n + 1)).toNat

end

end A168353.P10497931263424923535

/-! ## A168353.P11759984345153540858

`A047726(A063904(n+1))`
-/

namespace A168353.P11759984345153540858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (A063904 (n + 1)).toNat

end

end A168353.P11759984345153540858

/-! ## A168353.P16748287939830338780

`A047726(A101989(n+1))`
-/

namespace A168353.P16748287939830338780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (A101989 (n + 1)).toNat

end

end A168353.P16748287939830338780

/-! ## A168353.P5281215626201188163

`A047726(A161847(n+1))`
-/

namespace A168353.P5281215626201188163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (A161847 (n + 1)).toNat

end

end A168353.P5281215626201188163

/-! ## A168353.P3953182389474098747

`A047726(A171015(n+1))`
-/

namespace A168353.P3953182389474098747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (A171015 (n + 1)).toNat

end

end A168353.P3953182389474098747

/-! ## A168353.P7415614431112286473

`A047726(A171018(n+1))`
-/

namespace A168353.P7415614431112286473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (A171018 (n + 1)).toNat

end

end A168353.P7415614431112286473

/-! ## A168353.P3492617082893408517

`A047726(A171020(n+1))`
-/

namespace A168353.P3492617082893408517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (A171020 (n + 1)).toNat

end

end A168353.P3492617082893408517

/-! ## A168353.P8643529302580703497

`A047726(A171021(n+1))`
-/

namespace A168353.P8643529302580703497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (A171021 (n + 1)).toNat

end

end A168353.P8643529302580703497

/-! ## A168353.P17041983284894743358

`A047726(A171022(n+1))`
-/

namespace A168353.P17041983284894743358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (A171022 (n + 1)).toNat

end

end A168353.P17041983284894743358

/-!
# A168354: Squarefree semiprimes whose binary expansion is palindromic.

The programs for A168354, the canonical program `A168354.P3857296402165648192` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168354 has offset 1).

The definition of A168354 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168354.P11500785729154084095

`filter[A163170(n+1), A374128(#)]`
-/

namespace A168354.P11500785729154084095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163170 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A168354.P11500785729154084095

namespace A168354

/-- `filter[A163170(n+1), A374128(#)]` -/
def P11500785729154084095.Spec : Prop :=
  ∀ n, P11500785729154084095.a n = A168354 (n + 1)

end A168354

/-! ## A168354.P16831940843068094532

`filter[A163170(n+2), A359828(#)]`
-/

namespace A168354.P16831940843068094532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163170 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A168354.P16831940843068094532

namespace A168354

/-- `filter[A163170(n+2), A359828(#)]` -/
def P16831940843068094532.Spec : Prop :=
  ∀ n, P16831940843068094532.a n = A168354 (n + 1)

end A168354

/-! ## A168354.P3857296402165648192

`filter[A044918(n+1), A353481(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A168354

/-- `filter[A044918(n+1), A353481(#)]` -/
def P3857296402165648192.Spec : Prop :=
  ∀ n, P3857296402165648192.a n = A168354 (n + 1)

theorem P3857296402165648192.correct : P3857296402165648192.Spec := by
  intro n
  simp only [A168354, Nat.add_sub_cancel]

end A168354

/-! ## A168354.P18439362349073985726

`filter[A163170(n+1), A280710(#)]`
-/

namespace A168354.P18439362349073985726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163170 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A168354.P18439362349073985726

namespace A168354

/-- `filter[A163170(n+1), A280710(#)]` -/
def P18439362349073985726.Spec : Prop :=
  ∀ n, P18439362349073985726.a n = A168354 (n + 1)

end A168354

/-! ## A168354.P1658604083037765222

`filter[A163170(n+1), A340370(#)]`
-/

namespace A168354.P1658604083037765222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163170 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340370 (f1 j).toNat = 1) n)

end

end A168354.P1658604083037765222

namespace A168354

/-- `filter[A163170(n+1), A340370(#)]` -/
def P1658604083037765222.Spec : Prop :=
  ∀ n, P1658604083037765222.a n = A168354 (n + 1)

end A168354

/-! ## A168354.P17255785539330321076

`filter[A161604(n+1), A353481(#)]`
-/

namespace A168354.P17255785539330321076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161604 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353481 (f1 j).toNat = 1) n)

end

end A168354.P17255785539330321076

namespace A168354

/-- `filter[A161604(n+1), A353481(#)]` -/
def P17255785539330321076.Spec : Prop :=
  ∀ n, P17255785539330321076.a n = A168354 (n + 1)

end A168354

/-! ## A168354.P4590851829783679560

`filter[A163170(n+1), A353471(#)]`
-/

namespace A168354.P4590851829783679560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163170 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A168354.P4590851829783679560

namespace A168354

/-- `filter[A163170(n+1), A353471(#)]` -/
def P4590851829783679560.Spec : Prop :=
  ∀ n, P4590851829783679560.a n = A168354 (n + 1)

end A168354

/-! ## A168354.P9746933447073031589

`filter[A163170(n+1), A353481(#)]`
-/

namespace A168354.P9746933447073031589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163170 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353481 (f1 j).toNat = 1) n)

end

end A168354.P9746933447073031589

namespace A168354

/-- `filter[A163170(n+1), A353481(#)]` -/
def P9746933447073031589.Spec : Prop :=
  ∀ n, P9746933447073031589.a n = A168354 (n + 1)

end A168354

/-! ## A168354.P7285277293185932290

`filter[A163170(n+2), A064911(#)]`
-/

namespace A168354.P7285277293185932290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163170 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A168354.P7285277293185932290

namespace A168354

/-- `filter[A163170(n+2), A064911(#)]` -/
def P7285277293185932290.Spec : Prop :=
  ∀ n, P7285277293185932290.a n = A168354 (n + 1)

end A168354

/-! ## A168354.P17962770423802835521

`filter[A163170(n+2), A101040(#)]`
-/

namespace A168354.P17962770423802835521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163170 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A168354.P17962770423802835521

namespace A168354

/-- `filter[A163170(n+2), A101040(#)]` -/
def P17962770423802835521.Spec : Prop :=
  ∀ n, P17962770423802835521.a n = A168354 (n + 1)

end A168354

/-! ## A168354.P12998001058002343926

`filter[A006995(n+2), A280710(#)]`
-/

namespace A168354.P12998001058002343926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A168354.P12998001058002343926

namespace A168354

/-- `filter[A006995(n+2), A280710(#)]` -/
def P12998001058002343926.Spec : Prop :=
  ∀ n, P12998001058002343926.a n = A168354 (n + 1)

end A168354

/-! ## A168354.P9070405057750170544

`filter[A006995(n+2), A340370(#)]`
-/

namespace A168354.P9070405057750170544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340370 (f1 j).toNat = 1) n)

end

end A168354.P9070405057750170544

namespace A168354

/-- `filter[A006995(n+2), A340370(#)]` -/
def P9070405057750170544.Spec : Prop :=
  ∀ n, P9070405057750170544.a n = A168354 (n + 1)

end A168354

/-! ## A168354.P2765791911448745785

`filter[A006995(n+2), A353481(#)]`
-/

namespace A168354.P2765791911448745785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353481 (f1 j).toNat = 1) n)

end

end A168354.P2765791911448745785

namespace A168354

/-- `filter[A006995(n+2), A353481(#)]` -/
def P2765791911448745785.Spec : Prop :=
  ∀ n, P2765791911448745785.a n = A168354 (n + 1)

end A168354

/-! ## A168354.P15096280708565337575

`filter[A057890(n+2), A353481(#)]`
-/

namespace A168354.P15096280708565337575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057890 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353481 (f1 j).toNat = 1) n)

end

end A168354.P15096280708565337575

namespace A168354

/-- `filter[A057890(n+2), A353481(#)]` -/
def P15096280708565337575.Spec : Prop :=
  ∀ n, P15096280708565337575.a n = A168354 (n + 1)

end A168354

/-! ## A168354.P16610616107669733321

`filter[A180204(n+2), A280710(#)]`
-/

namespace A168354.P16610616107669733321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180204 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A168354.P16610616107669733321

namespace A168354

/-- `filter[A180204(n+2), A280710(#)]` -/
def P16610616107669733321.Spec : Prop :=
  ∀ n, P16610616107669733321.a n = A168354 (n + 1)

end A168354

/-! ## A168354.P16304268365962416139

`filter[A163170(n+2), A353480(#)]`
-/

namespace A168354.P16304268365962416139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163170 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A168354.P16304268365962416139

namespace A168354

/-- `filter[A163170(n+2), A353480(#)]` -/
def P16304268365962416139.Spec : Prop :=
  ∀ n, P16304268365962416139.a n = A168354 (n + 1)

end A168354

/-! ## A168354.P10245806125126886921

`filter[A180204(n+2), A353481(#)]`
-/

namespace A168354.P10245806125126886921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180204 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353481 (f1 j).toNat = 1) n)

end

end A168354.P10245806125126886921

namespace A168354

/-- `filter[A180204(n+2), A353481(#)]` -/
def P10245806125126886921.Spec : Prop :=
  ∀ n, P10245806125126886921.a n = A168354 (n + 1)

end A168354

/-! ## A168354.P2146130482075675579

`filter[A334918(n+2), A353481(#)]`
-/

namespace A168354.P2146130482075675579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334918 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353481 (f1 j).toNat = 1) n)

end

end A168354.P2146130482075675579

namespace A168354

/-- `filter[A334918(n+2), A353481(#)]` -/
def P2146130482075675579.Spec : Prop :=
  ∀ n, P2146130482075675579.a n = A168354 (n + 1)

end A168354

/-! ## A168354.P11227066578539927596

`∩[A006995(n+1), A340380(n+1)]`
-/

namespace A168354.P11227066578539927596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168354.P11227066578539927596

namespace A168354

/-- `∩[A006995(n+1), A340380(n+1)]` -/
def P11227066578539927596.Spec : Prop :=
  ∀ n, (P11227066578539927596.a n : ℤ) = A168354 (n + 1)

end A168354

/-! ## A168354.P14828720117011087753

`∩[A163170(n+1), A340380(n+1)]`
-/

namespace A168354.P14828720117011087753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168354.P14828720117011087753

namespace A168354

/-- `∩[A163170(n+1), A340380(n+1)]` -/
def P14828720117011087753.Spec : Prop :=
  ∀ n, (P14828720117011087753.a n : ℤ) = A168354 (n + 1)

end A168354

/-!
# A168355: Products of 3 distinct primes whose binary expansion is palindromic.

The programs for A168355, the canonical program `A168355.P11356799780484793568` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168355 has offset 1).

The definition of A168355 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168355.P11356799780484793568

`filter[A163170(n+1), A354926(#)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A168355

/-- `filter[A163170(n+1), A354926(#)]` -/
def P11356799780484793568.Spec : Prop :=
  ∀ n, P11356799780484793568.a n = A168355 (n + 1)

theorem P11356799780484793568.correct : P11356799780484793568.Spec := by
  intro n
  simp only [A168355, Nat.add_sub_cancel]

end A168355

/-! ## A168355.P3833480356246059989

`filter[A006995(2+n), A354926(#)]`
-/

namespace A168355.P3833480356246059989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A168355.P3833480356246059989

namespace A168355

/-- `filter[A006995(2+n), A354926(#)]` -/
def P3833480356246059989.Spec : Prop :=
  ∀ n, P3833480356246059989.a n = A168355 (n + 1)

end A168355

/-! ## A168355.P16210692200297093094

`∩[A006995(n+1), A046389(n+1)]`
-/

namespace A168355.P16210692200297093094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168355.P16210692200297093094

namespace A168355

/-- `∩[A006995(n+1), A046389(n+1)]` -/
def P16210692200297093094.Spec : Prop :=
  ∀ n, (P16210692200297093094.a n : ℤ) = A168355 (n + 1)

end A168355

/-! ## A168355.P1816523922335789078

`∩[A044918(n+1), A046389(n+1)]`
-/

namespace A168355.P1816523922335789078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168355.P1816523922335789078

namespace A168355

/-- `∩[A044918(n+1), A046389(n+1)]` -/
def P1816523922335789078.Spec : Prop :=
  ∀ n, (P1816523922335789078.a n : ℤ) = A168355 (n + 1)

end A168355

/-! ## A168355.P13404616477021380244

`∩[A046389(n+1), A057890(n+1)]`
-/

namespace A168355.P13404616477021380244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168355.P13404616477021380244

namespace A168355

/-- `∩[A046389(n+1), A057890(n+1)]` -/
def P13404616477021380244.Spec : Prop :=
  ∀ n, (P13404616477021380244.a n : ℤ) = A168355 (n + 1)

end A168355

/-! ## A168355.P16894796797566892611

`∩[A046389(n+1), A161604(n+1)]`
-/

namespace A168355.P16894796797566892611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161604 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168355.P16894796797566892611

namespace A168355

/-- `∩[A046389(n+1), A161604(n+1)]` -/
def P16894796797566892611.Spec : Prop :=
  ∀ n, (P16894796797566892611.a n : ℤ) = A168355 (n + 1)

end A168355

/-! ## A168355.P14105611046374654845

`∩[A046389(n+1), A163170(n+1)]`
-/

namespace A168355.P14105611046374654845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168355.P14105611046374654845

namespace A168355

/-- `∩[A046389(n+1), A163170(n+1)]` -/
def P14105611046374654845.Spec : Prop :=
  ∀ n, (P14105611046374654845.a n : ℤ) = A168355 (n + 1)

end A168355

/-! ## A168355.P13294674026988131364

`∩[A046389(n+1), A180204(n+1)]`
-/

namespace A168355.P13294674026988131364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168355.P13294674026988131364

namespace A168355

/-- `∩[A046389(n+1), A180204(n+1)]` -/
def P13294674026988131364.Spec : Prop :=
  ∀ n, (P13294674026988131364.a n : ℤ) = A168355 (n + 1)

end A168355

/-! ## A168355.P7905602386178107005

`∩[A046389(n+1), A334918(n+1)]`
-/

namespace A168355.P7905602386178107005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168355.P7905602386178107005

namespace A168355

/-- `∩[A046389(n+1), A334918(n+1)]` -/
def P7905602386178107005.Spec : Prop :=
  ∀ n, (P7905602386178107005.a n : ℤ) = A168355 (n + 1)

end A168355

/-! ## A168355.P10746052414785799689

`∩[A006995(n+1), A378480(n+1)]`
-/

namespace A168355.P10746052414785799689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168355.P10746052414785799689

namespace A168355

/-- `∩[A006995(n+1), A378480(n+1)]` -/
def P10746052414785799689.Spec : Prop :=
  ∀ n, (P10746052414785799689.a n : ℤ) = A168355 (n + 1)

end A168355

/-! ## A168355.P17517846296224415679

`∩[A163170(n+1), A378480(n+1)]`
-/

namespace A168355.P17517846296224415679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168355.P17517846296224415679

namespace A168355

/-- `∩[A163170(n+1), A378480(n+1)]` -/
def P17517846296224415679.Spec : Prop :=
  ∀ n, (P17517846296224415679.a n : ℤ) = A168355 (n + 1)

end A168355

/-! ## A168355.P117713678310464714

`∩[A180204(n+1), A378480(n+1)]`
-/

namespace A168355.P117713678310464714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168355.P117713678310464714

namespace A168355

/-- `∩[A180204(n+1), A378480(n+1)]` -/
def P117713678310464714.Spec : Prop :=
  ∀ n, (P117713678310464714.a n : ℤ) = A168355 (n + 1)

end A168355

/-! ## A168355.P10940058078684738342

`∩[A006995(n+1), A007304(n+1)]`
-/

namespace A168355.P10940058078684738342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168355.P10940058078684738342

namespace A168355

/-- `∩[A006995(n+1), A007304(n+1)]` -/
def P10940058078684738342.Spec : Prop :=
  ∀ n, (P10940058078684738342.a n : ℤ) = A168355 (n + 1)

end A168355

/-! ## A168355.P8782127708968440751

`∩[A007304(n+1), A163170(n+1)]`
-/

namespace A168355.P8782127708968440751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168355.P8782127708968440751

namespace A168355

/-- `∩[A007304(n+1), A163170(n+1)]` -/
def P8782127708968440751.Spec : Prop :=
  ∀ n, (P8782127708968440751.a n : ℤ) = A168355 (n + 1)

end A168355

/-! ## A168355.P11862532296892762501

`∩[A006995(n+1), A345382(n+1)]`
-/

namespace A168355.P11862532296892762501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168355.P11862532296892762501

namespace A168355

/-- `∩[A006995(n+1), A345382(n+1)]` -/
def P11862532296892762501.Spec : Prop :=
  ∀ n, (P11862532296892762501.a n : ℤ) = A168355 (n + 1)

end A168355

/-! ## A168355.P2172364274973295565

`∩[A163170(n+1), A345382(n+1)]`
-/

namespace A168355.P2172364274973295565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168355.P2172364274973295565

namespace A168355

/-- `∩[A163170(n+1), A345382(n+1)]` -/
def P2172364274973295565.Spec : Prop :=
  ∀ n, (P2172364274973295565.a n : ℤ) = A168355 (n + 1)

end A168355

/-!
# A168356: A000796(n-2) - A000796(n).

The programs for A168356, there is no canonical definition to state claims against.
-/

/-! ## A168356.P15731535435862220208

`Δ[A110883(n+1)]`
-/

namespace A168356.P15731535435862220208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168356.P15731535435862220208

/-! ## A168356.P1405611365806777963

`Δ[A000796(n)-A153799(n)]`
-/

namespace A168356.P1405611365806777963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) - A153799 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168356.P1405611365806777963

/-! ## A168356.P3296149838944196570

`A030644(n)-A153799(n+1)`
-/

namespace A168356.P3296149838944196570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030644 (n + 1) - A153799 (n + 1)

end

end A168356.P3296149838944196570

/-! ## A168356.P5995627315218060874

`A000796(n+2)-A000796(n)`
-/

namespace A168356.P5995627315218060874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 2 + 1) - A000796 (n + 1)

end

end A168356.P5995627315218060874

/-! ## A168356.P1034375192993388705

`A030644(n)-A030644(n+2)`
-/

namespace A168356.P1034375192993388705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030644 (n + 1) - A030644 (n + 2 + 1)

end

end A168356.P1034375192993388705

/-! ## A168356.P5137546063633253634

`Δ[A000796(n)+Δ[A046974(n)]]`
-/

namespace A168356.P5137546063633253634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168356.P5137546063633253634

/-! ## A168356.P18143173058357497450

`Δ[Δ[A059582(n)+A046974(n)]]`
-/

namespace A168356.P18143173058357497450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n + A046974 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168356.P18143173058357497450

/-! ## A168356.P11196707810100640440

`Δ[Δ[A046974(n)]-A030644(n)]`
-/

namespace A168356.P11196707810100640440
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A030644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168356.P11196707810100640440

/-! ## A168356.P1755441711372515590

`Δ[A000796(n+1)+A000796(n)]`
-/

namespace A168356.P1755441711372515590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1 + 1) + A000796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168356.P1755441711372515590

/-! ## A168356.P2349875917484403413

`Δ[A039918(n+1)-A059582(n)]`
-/

namespace A168356.P2349875917484403413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039918 (n + 1) - A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168356.P2349875917484403413

/-!
# A168357: Self-convolution of A006664, which is the number of irreducible systems of meanders.

The programs for A168357, there is no canonical definition to state claims against.
-/

/-! ## A168357.P18319082981565558425

`A373847(A149931(n))`
-/

namespace A168357.P18319082981565558425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373847 (A149931 n).toNat

end

end A168357.P18319082981565558425

/-! ## A168357.P18025860894753826605

`A061017(A105219(n)+1)`
-/

namespace A168357.P18025860894753826605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (A105219 n + 1).toNat

end

end A168357.P18025860894753826605

/-!
# A168358: Self-convolution square of A001246, which is the squares of Catalan numbers.

The programs for A168358, there is no canonical definition to state claims against.
-/

/-! ## A168358.P7119332392591792868

`A074679(A118351(n))+∑{e}[n+1, #]`
-/

namespace A168358.P7119332392591792868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074679 (A118351 n).toNat + ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A168358.P7119332392591792868

/-! ## A168358.P10265724945808133572

`A074679(A118351(n))+A001222(n+1)`
-/

namespace A168358.P10265724945808133572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074679 (A118351 n).toNat + A001222 (n + 1)

end

end A168358.P10265724945808133572

/-!
# A168360: n-b(n), where b(n) = A079777(n) = (b(n-1)+b(n-2) mod n); b(0)=0, b(1)=1.

The programs for A168360, the canonical program `A168360.P10623220787923171470` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168360 has offset 0).

The definition of A168360 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168360.P10623220787923171470

`(a(n-1)+a(n-2)+2)%n+1` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168360

/-- `(a(n-1)+a(n-2)+2)%n+1` -/
def P10623220787923171470.Spec : Prop :=
  ∀ n, (P10623220787923171470.a n : ℤ) = A168360 n

theorem P10623220787923171470.correct : P10623220787923171470.Spec := by
  intro n
  simp only [A168360]

end A168360

/-! ## A168360.P18243485216775066145

`n-A079777(n)`
-/

namespace A168360.P18243485216775066145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A079777 n

end

end A168360.P18243485216775066145

namespace A168360

/-- `n-A079777(n)` -/
def P18243485216775066145.Spec : Prop :=
  ∀ n, P18243485216775066145.a n = A168360 n

end A168360

/-! ## A168360.P12048043660296143730

`abs(A079777(n)+A001489(n))`
-/

namespace A168360.P12048043660296143730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A079777 n + A001489 n|

end

end A168360.P12048043660296143730

namespace A168360

/-- `abs(A079777(n)+A001489(n))` -/
def P12048043660296143730.Spec : Prop :=
  ∀ n, P12048043660296143730.a n = A168360 n

end A168360

/-! ## A168360.P16235570164159065376

`A079777(n)*A153881(n+1)+n`
-/

namespace A168360.P16235570164159065376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079777 n * A153881 (n + 1) + (n : ℤ)

end

end A168360.P16235570164159065376

namespace A168360

/-- `A079777(n)*A153881(n+1)+n` -/
def P16235570164159065376.Spec : Prop :=
  ∀ n, P16235570164159065376.a n = A168360 n

end A168360

/-! ## A168360.P11779996140743118785

`A004767(n)%(A079777(n)+3*(n+1))`
-/

namespace A168360.P11779996140743118785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004767 n) (A079777 n + (3 * (n + 1) : ℤ))

end

end A168360.P11779996140743118785

namespace A168360

/-- `A004767(n)%(A079777(n)+3*(n+1))` -/
def P11779996140743118785.Spec : Prop :=
  ∀ n, P11779996140743118785.a n = A168360 n

end A168360

/-! ## A168360.P14693122924803260065

`∑{d}[A079777(n)+A001489(n), A000010(#)]`
-/

namespace A168360.P14693122924803260065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079777 n + A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A168360.P14693122924803260065

namespace A168360

/-- `∑{d}[A079777(n)+A001489(n), A000010(#)]` -/
def P14693122924803260065.Spec : Prop :=
  ∀ n, P14693122924803260065.a n = A168360 n

end A168360

/-! ## A168360.P3692686412616162993

`A001057(2*A079777(n))+n`
-/

namespace A168360.P3692686412616162993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (2 * A079777 n).toNat + (n : ℤ)

end

end A168360.P3692686412616162993

namespace A168360

/-- `A001057(2*A079777(n))+n` -/
def P3692686412616162993.Spec : Prop :=
  ∀ n, P3692686412616162993.a n = A168360 n

end A168360

/-! ## A168360.P3603071085185143726

`A025581(A079777(n)+∑[n])`
-/

namespace A168360.P3603071085185143726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A079777 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A168360.P3603071085185143726

namespace A168360

/-- `A025581(A079777(n)+∑[n])` -/
def P3603071085185143726.Spec : Prop :=
  ∀ n, P3603071085185143726.a n = A168360 n

end A168360

/-!
# A168361: Period 2: repeat 2, -1.

The programs for A168361, the canonical program `A168361.P16327445147630340855` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168361 has offset 1).

The definition of A168361 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A168361.anchor (n : ℕ) (hn : 1 ≤ n) : A168361 n = [2, -1].getD ((n - 1) % 2) 0` in `Proof.A168.A168361`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168361.P16327445147630340855

`a(n-2)` with `a(0)=2, a(1)=-1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168361

/-- `a(n-2)` -/
def P16327445147630340855.Spec : Prop :=
  ∀ n, P16327445147630340855.a n = A168361 (n + 1)

theorem P16327445147630340855.correct : P16327445147630340855.Spec := by
  intro n
  simp only [A168361, Nat.add_sub_cancel]

end A168361

/-!
# A168362: a(n) = coefficient of x^n in the n-th iteration of Sum_{k>=0} x^(2^k), n>=1.

The programs for A168362, there is no canonical definition to state claims against.
-/

/-! ## A168362.P996243843371433068

`A278539(A319565(2*n)+A056817(n))`
-/

namespace A168362.P996243843371433068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278539 (A319565 (2 * n) + A056817 n).toNat

end

end A168362.P996243843371433068

/-! ## A168362.P1112975131991916579

`A001959(A322151(n))-A000174(A161953(n+1))`
-/

namespace A168362.P1112975131991916579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001959 (A322151 n).toNat - A000174 (A161953 (n + 1)).toNat

end

end A168362.P1112975131991916579

/-!
# A168363: Squares and cubes of primes.

The programs for A168363, there is no canonical definition to state claims against.
-/

/-! ## A168363.P416196793685234448

`∪[p?[xor(1, n)+1]², A030078(n+1)]`
-/

namespace A168363.P416196793685234448
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A168363.P416196793685234448

/-! ## A168363.P5006324190244597396

`filter[A082293(n+1), A069513(#)]`
-/

namespace A168363.P5006324190244597396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A168363.P5006324190244597396

/-! ## A168363.P16918439854224501048

`filter[A053810(n+1), A123927(#)]`
-/

namespace A168363.P16918439854224501048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A168363.P16918439854224501048

/-! ## A168363.P742123367859779613

`filter[A082293(n+1), A123927(#)]`
-/

namespace A168363.P742123367859779613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A168363.P742123367859779613

/-! ## A168363.P13051614122848979676

`filter[A093771(n+1), A123927(#)]`
-/

namespace A168363.P13051614122848979676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A168363.P13051614122848979676

/-!
# A168364: a(n) = n^5*(n^2 + 1)/2.

The programs for A168364, the canonical program `A168364.P2705335552495042316` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168364 has offset 0).

The definition of A168364 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^5*(n²+1)/2` (program `A168364.P2228354966024019312`, by `A168364.P2228354966024019312.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168364.P2228354966024019312

`n^5*(n²+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168364.P2228354966024019312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 5 * (n ^ 2 + 1) : ℚ) / 2

end

end A168364.P2228354966024019312

namespace A168364

/-- `n^5*(n²+1)/2` -/
def P2228354966024019312.Spec : Prop :=
  ∀ n, P2228354966024019312.a n = (A168364 n : ℚ)

theorem P2228354966024019312.correct : P2228354966024019312.Spec := by
  intro n
  simp only [A168364, Nat.add_sub_cancel, A168364.P2228354966024019312.a, A168364.P2705335552495042316.f1, A168364.P2705335552495042316.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168364

/-! ## A168364.P8334555562936008545

`Δ[C(n, 2)^4]`
-/

namespace A168364.P8334555562936008545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A168364.P8334555562936008545

namespace A168364

/-- `Δ[C(n, 2)^4]` -/
def P8334555562936008545.Spec : Prop :=
  ∀ n, P8334555562936008545.a n = A168364 n

theorem P8334555562936008545.correct : P8334555562936008545.Spec := by
  intro n
  simp only [A168364, Nat.add_sub_cancel, A168364.P8334555562936008545.f1, A168364.P8334555562936008545.a, A168364.P2705335552495042316.f1, A168364.P2705335552495042316.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A168364

/-! ## A168364.P2705335552495042316

`Δ[C(n, 2)²²]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168364

/-- `Δ[C(n, 2)²²]` -/
def P2705335552495042316.Spec : Prop :=
  ∀ n, P2705335552495042316.a n = A168364 n

theorem P2705335552495042316.correct : P2705335552495042316.Spec := by
  intro n
  simp only [A168364]

end A168364

/-! ## A168364.P11556354335960951207

`lcm(n, Δ[(n-∑[n])²²])`
-/

namespace A168364.P11556354335960951207
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (f1 (n + 1) - f1 n)

end

end A168364.P11556354335960951207

namespace A168364

/-- `lcm(n, Δ[(n-∑[n])²²])` -/
def P11556354335960951207.Spec : Prop :=
  ∀ n, (P11556354335960951207.a n : ℤ) = A168364 n

end A168364

/-! ## A168364.P7451302520556180115

`n^3*C(n²+1, 2)`
-/

namespace A168364.P7451302520556180115
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 * Nat.choose (n ^ 2 + 1) 2

end

end A168364.P7451302520556180115

namespace A168364

/-- `n^3*C(n²+1, 2)` -/
def P7451302520556180115.Spec : Prop :=
  ∀ n, (P7451302520556180115.a n : ℤ) = A168364 n

theorem P7451302520556180115.correct : P7451302520556180115.Spec := by
  intro n
  simp only [A168364, Nat.add_sub_cancel, A168364.P7451302520556180115.a, A168364.P2705335552495042316.f1, A168364.P2705335552495042316.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168364

/-! ## A168364.P10465635232664386846

`n*A168192(n)`
-/

namespace A168364.P10465635232664386846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168192 n

end

end A168364.P10465635232664386846

namespace A168364

/-- `n*A168192(n)` -/
def P10465635232664386846.Spec : Prop :=
  ∀ n, P10465635232664386846.a n = A168364 n

end A168364

/-! ## A168364.P10786553782240933433

`Δ[A161680(n)^4]`
-/

namespace A168364.P10786553782240933433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168364.P10786553782240933433

namespace A168364

/-- `Δ[A161680(n)^4]` -/
def P10786553782240933433.Spec : Prop :=
  ∀ n, P10786553782240933433.a n = A168364 n

theorem P10786553782240933433.correct : P10786553782240933433.Spec := by
  intro n
  simp only [A168364, Nat.add_sub_cancel, A168364.P10786553782240933433.f1, A168364.P10786553782240933433.a, A168364.P2705335552495042316.f1, A168364.P2705335552495042316.a, A161680, A161680.P17206074215489759881.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168364

/-! ## A168364.P1947138131398847946

`n²*A168178(n)`
-/

namespace A168364.P1947138131398847946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A168178 n

end

end A168364.P1947138131398847946

namespace A168364

/-- `n²*A168178(n)` -/
def P1947138131398847946.Spec : Prop :=
  ∀ n, P1947138131398847946.a n = A168364 n

theorem P1947138131398847946.correct : P1947138131398847946.Spec := by
  intro n
  simp only [A168364, Nat.add_sub_cancel, A168364.P1947138131398847946.a, A168364.P2705335552495042316.f1, A168364.P2705335552495042316.a, A168178, A168178.P7150128011749350720.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168364

/-! ## A168364.P6658948104601569787

`n^3*A037270(n)`
-/

namespace A168364.P6658948104601569787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) * A037270 n

end

end A168364.P6658948104601569787

namespace A168364

/-- `n^3*A037270(n)` -/
def P6658948104601569787.Spec : Prop :=
  ∀ n, P6658948104601569787.a n = A168364 n

end A168364

/-! ## A168364.P16050114023314363096

`n²²*A006003(n)`
-/

namespace A168364.P16050114023314363096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) * A006003 n

end

end A168364.P16050114023314363096

namespace A168364

/-- `n²²*A006003(n)` -/
def P16050114023314363096.Spec : Prop :=
  ∀ n, P16050114023314363096.a n = A168364 n

end A168364

/-! ## A168364.P14019932444895322361

`Δ[(1-A080956(n))²²]`
-/

namespace A168364.P14019932444895322361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A080956 n) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168364.P14019932444895322361

namespace A168364

/-- `Δ[(1-A080956(n))²²]` -/
def P14019932444895322361.Spec : Prop :=
  ∀ n, P14019932444895322361.a n = A168364 n

theorem P14019932444895322361.correct : P14019932444895322361.Spec := by
  intro n
  simp only [A168364, Nat.add_sub_cancel, A168364.P14019932444895322361.f1, A168364.P14019932444895322361.a, A168364.P2705335552495042316.f1, A168364.P2705335552495042316.a, A080956, A080956.P12689175688767201437.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168364

/-! ## A168364.P10477091288733535440

`Δ[(n-A000217(n))²²]`
-/

namespace A168364.P10477091288733535440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - A000217 n) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168364.P10477091288733535440

namespace A168364

/-- `Δ[(n-A000217(n))²²]` -/
def P10477091288733535440.Spec : Prop :=
  ∀ n, P10477091288733535440.a n = A168364 n

theorem P10477091288733535440.correct : P10477091288733535440.Spec := by
  intro n
  simp only [A168364, Nat.add_sub_cancel, A168364.P10477091288733535440.f1, A168364.P10477091288733535440.a, A168364.P2705335552495042316.f1, A168364.P2705335552495042316.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168364

/-! ## A168364.P16763520638406675532

`A321672(n)+A168179(n)`
-/

namespace A168364.P16763520638406675532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321672 n + A168179 n

end

end A168364.P16763520638406675532

namespace A168364

/-- `A321672(n)+A168179(n)` -/
def P16763520638406675532.Spec : Prop :=
  ∀ n, P16763520638406675532.a n = A168364 n

theorem P16763520638406675532.correct : P16763520638406675532.Spec := by
  intro n
  simp only [A168364, Nat.add_sub_cancel, A168364.P16763520638406675532.a, A168364.P2705335552495042316.f1, A168364.P2705335552495042316.a, A168179, A168179.P8566416021942520231.a, A321672, A321672.P12387618061068922238.a, A000584, A000584.P5477385692209315495.a, A021003, A021003.P1631402243745340027.a, A168178, A168178.P7150128011749350720.a, A071252, A071252.P13937739183146272210.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168364

/-! ## A168364.P5396737358628536074

`A163275(n)-A001014(n)`
-/

namespace A168364.P5396737358628536074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163275 n - A001014 n

end

end A168364.P5396737358628536074

namespace A168364

/-- `A163275(n)-A001014(n)` -/
def P5396737358628536074.Spec : Prop :=
  ∀ n, P5396737358628536074.a n = A168364 n

theorem P5396737358628536074.correct : P5396737358628536074.Spec := by
  intro n
  simp only [A168364, Nat.add_sub_cancel, A168364.P5396737358628536074.a, A168364.P2705335552495042316.f1, A168364.P2705335552495042316.a, A001014, A001014.P10270364271630987481.a, A163275, A163275.P10130318515127563795.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168364

/-! ## A168364.P12828123942509556538

`A168178(n)*A253909(n)`
-/

namespace A168364.P12828123942509556538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168178 n * A253909 n

end

end A168364.P12828123942509556538

namespace A168364

/-- `A168178(n)*A253909(n)` -/
def P12828123942509556538.Spec : Prop :=
  ∀ n, P12828123942509556538.a n = A168364 n

end A168364

/-! ## A168364.P5359022611942421277

`gcd(A168412(n), A168527(n))`
-/

namespace A168364.P5359022611942421277
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A168412 n) (A168527 n)

end

end A168364.P5359022611942421277

namespace A168364

/-- `gcd(A168412(n), A168527(n))` -/
def P5359022611942421277.Spec : Prop :=
  ∀ n, (P5359022611942421277.a n : ℤ) = A168364 n

end A168364

/-! ## A168364.P11243676436017757985

`Δ[(A327319(n+1)-n)²]`
-/

namespace A168364.P11243676436017757985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A327319 (n + 1) - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168364.P11243676436017757985

namespace A168364

/-- `Δ[(A327319(n+1)-n)²]` -/
def P11243676436017757985.Spec : Prop :=
  ∀ n, P11243676436017757985.a n = A168364 n

theorem P11243676436017757985.correct : P11243676436017757985.Spec := by
  intro n
  simp only [A168364, Nat.add_sub_cancel, A168364.P11243676436017757985.f1, A168364.P11243676436017757985.a, A168364.P2705335552495042316.f1, A168364.P2705335552495042316.a, A327319, A327319.P13809795220041064015.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168364

/-! ## A168364.P17116475390778566833

`A006003(n)*A011863(2*n)`
-/

namespace A168364.P17116475390778566833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 n * A011863 (2 * n)

end

end A168364.P17116475390778566833

namespace A168364

/-- `A006003(n)*A011863(2*n)` -/
def P17116475390778566833.Spec : Prop :=
  ∀ n, P17116475390778566833.a n = A168364 n

end A168364

/-! ## A168364.P13327152044595987010

`Δ[A000241(2*n+1)²]`
-/

namespace A168364.P13327152044595987010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000241 (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168364.P13327152044595987010

namespace A168364

/-- `Δ[A000241(2*n+1)²]` -/
def P13327152044595987010.Spec : Prop :=
  ∀ n, P13327152044595987010.a n = A168364 n

end A168364

/-! ## A168364.P2648806053215560597

`A000217(n²)*A000578(n)`
-/

namespace A168364.P2648806053215560597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n ^ 2) * A000578 n

end

end A168364.P2648806053215560597

namespace A168364

/-- `A000217(n²)*A000578(n)` -/
def P2648806053215560597.Spec : Prop :=
  ∀ n, P2648806053215560597.a n = A168364 n

theorem P2648806053215560597.correct : P2648806053215560597.Spec := by
  intro n
  simp only [A168364, Nat.add_sub_cancel, A168364.P2648806053215560597.a, A168364.P2705335552495042316.f1, A168364.P2705335552495042316.a, A000217, A000217.P10269402890581615239.a, A000578, A000578.P12162961755414704816.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168364

/-!
# A168365: a(n) = coefficient of x^n in the (n-1)-th iteration of Sum_{k>=0} x^(2^k), n>=1.

The programs for A168365, there is no canonical definition to state claims against.
-/

/-! ## A168365.P5033992203830220754

`A014200(A102086(∑[n]))`
-/

namespace A168365.P5033992203830220754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014200 (A102086 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A168365.P5033992203830220754

/-! ## A168365.P11489629836372233263

`A014200(A106208(∑[n]))`
-/

namespace A168365.P11489629836372233263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014200 (A106208 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A168365.P11489629836372233263

/-!
# A168366: a(n) = coefficient of x^n in the (n+1)-th iteration of Sum_{k>=0} x^(2^k), n>=1.

The programs for A168366, there is no canonical definition to state claims against.
-/

/-! ## A168366.P3518003349935621975

`A077641(∑[∏[2*n+1]])`
-/

namespace A168366.P3518003349935621975
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077641 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A168366.P3518003349935621975

/-!
# A168367: Terms of A123239 which are 2 mod 3.

The programs for A168367, there is no canonical definition to state claims against.
-/

/-! ## A168367.P13572906831712378284

`A123239(eq[2, A123239(n+1)%3]+1)`
-/

namespace A168367.P13572906831712378284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123239 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123239 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A168367.P13572906831712378284

/-! ## A168367.P2280288519835634806

`∩[A003627(n+1), A123239(n+1)]`
-/

namespace A168367.P2280288519835634806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168367.P2280288519835634806

/-! ## A168367.P12703839033672381688

`∩[A082406(n+1), A123239(n+1)]`
-/

namespace A168367.P12703839033672381688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168367.P12703839033672381688

/-! ## A168367.P13725487169328922781

`∩[A123239(n+1), A167409(n+1)]`
-/

namespace A168367.P13725487169328922781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168367.P13725487169328922781

/-! ## A168367.P13942613462129963314

`∩[A004612(n+1), A123239(n+1)]`
-/

namespace A168367.P13942613462129963314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168367.P13942613462129963314

/-! ## A168367.P841400906412379198

`∩[A123239(n+1), A179871(n+1)]`
-/

namespace A168367.P841400906412379198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168367.P841400906412379198

/-! ## A168367.P11879323231922332932

`∩[A123239(n+1), A347838(n+1)]`
-/

namespace A168367.P11879323231922332932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168367.P11879323231922332932

/-! ## A168367.P799730184744922668

`∩[A123239(n+1), A016789(n)]`
-/

namespace A168367.P799730184744922668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168367.P799730184744922668

/-! ## A168367.P11128963820643782383

`∩[A123239(n+1), A022429(n)]`
-/

namespace A168367.P11128963820643782383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022429 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168367.P11128963820643782383

/-! ## A168367.P11323426559315232210

`∩[A123239(n+1), A022430(n)]`
-/

namespace A168367.P11323426559315232210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022430 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168367.P11323426559315232210

/-! ## A168367.P8897931251932657019

`∩[A123239(n+1), A131098(n+1)-n]`
-/

namespace A168367.P8897931251932657019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131098 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168367.P8897931251932657019

/-! ## A168367.P2289973137328103761

`∩[A055048(n+1), A123239(n+1)]`
-/

namespace A168367.P2289973137328103761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168367.P2289973137328103761

/-! ## A168367.P2639778740621331097

`∩[A123239(n+1), A277574(n+1)]`
-/

namespace A168367.P2639778740621331097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168367.P2639778740621331097

/-! ## A168367.P17322703737035714662

`∩[A123239(n+1), A174438(n+1)]`
-/

namespace A168367.P17322703737035714662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168367.P17322703737035714662

/-! ## A168367.P11151082701844667636

`∩[A026179(n+1), A123239(n+1)]`
-/

namespace A168367.P11151082701844667636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168367.P11151082701844667636

/-! ## A168367.P12311906059459927231

`∩[A047261(n+1), A123239(n+1)]`
-/

namespace A168367.P12311906059459927231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168367.P12311906059459927231

/-! ## A168367.P1411474986471754644

`∩[A047267(n+1), A123239(n+1)]`
-/

namespace A168367.P1411474986471754644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168367.P1411474986471754644

/-! ## A168367.P2170406863825399870

`∩[A123239(n+1), A274436(n+1)]`
-/

namespace A168367.P2170406863825399870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168367.P2170406863825399870

/-! ## A168367.P17135006845875425929

`∩[A123239(n+1), A049636(n)]`
-/

namespace A168367.P17135006845875425929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049636 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168367.P17135006845875425929

/-! ## A168367.P15738763091193191683

`∩[A047262(n+1), A123239(n+1)]`
-/

namespace A168367.P15738763091193191683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168367.P15738763091193191683

/-!
# A168369: a(n) = coefficient of x^n in the (2^n)-th power of 1 + Sum_{k>=0} x^(2^k), n>=0.

The programs for A168369, there is no canonical definition to state claims against.
-/

/-! ## A168369.P7995312000230207872

`A283776(C(2^n, n))`
-/

namespace A168369.P7995312000230207872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283776 (Nat.choose (2 ^ n) n)

end

end A168369.P7995312000230207872

/-!
# A168371: a(n) = n^5*(n^3 + 1)/2.

The programs for A168371, the canonical program `A168371.P6876523043073551234` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168371 has offset 0).

The definition of A168371 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^5*(n^3+1)/2` (program `A168371.P940306952868019815`, by `A168371.P940306952868019815.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168371.P940306952868019815

`n^5*(n^3+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168371.P940306952868019815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 5 * (n ^ 3 + 1) : ℚ) / 2

end

end A168371.P940306952868019815

namespace A168371

/-- `n^5*(n^3+1)/2` -/
def P940306952868019815.Spec : Prop :=
  ∀ n, P940306952868019815.a n = (A168371 n : ℚ)

theorem P940306952868019815.correct : P940306952868019815.Spec := by
  intro n
  simp only [A168371, Nat.add_sub_cancel, A168371.P940306952868019815.a, A168371.P6876523043073551234.a, A071232, A071232.P17086031509511629369.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168371

/-! ## A168371.P4041679245995554761

`n²*C(n^3+1, 2)`
-/

namespace A168371.P4041679245995554761
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 * Nat.choose (n ^ 3 + 1) 2

end

end A168371.P4041679245995554761

namespace A168371

/-- `n²*C(n^3+1, 2)` -/
def P4041679245995554761.Spec : Prop :=
  ∀ n, (P4041679245995554761.a n : ℤ) = A168371 n

theorem P4041679245995554761.correct : P4041679245995554761.Spec := by
  intro n
  simp only [A168371, Nat.add_sub_cancel, A168371.P4041679245995554761.a, A168371.P6876523043073551234.a, A071232, A071232.P17086031509511629369.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168371

/-! ## A168371.P3871632085339927528

`C(n*n²+1, 2)*n²`
-/

namespace A168371.P3871632085339927528
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n * n ^ 2 + 1) 2 * n ^ 2

end

end A168371.P3871632085339927528

namespace A168371

/-- `C(n*n²+1, 2)*n²` -/
def P3871632085339927528.Spec : Prop :=
  ∀ n, (P3871632085339927528.a n : ℤ) = A168371 n

theorem P3871632085339927528.correct : P3871632085339927528.Spec := by
  intro n
  simp only [A168371, Nat.add_sub_cancel, A168371.P3871632085339927528.a, A168371.P6876523043073551234.a, A071232, A071232.P17086031509511629369.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168371

/-! ## A168371.P7942410807783557819

`n*A168194(n)`
-/

namespace A168371.P7942410807783557819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168194 n

end

end A168371.P7942410807783557819

namespace A168371

/-- `n*A168194(n)` -/
def P7942410807783557819.Spec : Prop :=
  ∀ n, P7942410807783557819.a n = A168371 n

theorem P7942410807783557819.correct : P7942410807783557819.Spec := by
  intro n
  simp only [A168371, Nat.add_sub_cancel, A168371.P7942410807783557819.a, A168371.P6876523043073551234.a, A071232, A071232.P17086031509511629369.a, A168194, A168194.P12245219511492537405.a, A000217, A000217.P10269402890581615239.a, A085744, A085744.P6091616498061970500.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168371

/-! ## A168371.P6876523043073551234

`n²*A071232(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A168371

/-- `n²*A071232(n)` -/
def P6876523043073551234.Spec : Prop :=
  ∀ n, P6876523043073551234.a n = A168371 n

theorem P6876523043073551234.correct : P6876523043073551234.Spec := by
  intro n
  simp only [A168371]

end A168371

/-! ## A168371.P5488541084527399516

`n^3*A101378(n)`
-/

namespace A168371.P5488541084527399516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) * A101378 n

end

end A168371.P5488541084527399516

namespace A168371

/-- `n^3*A101378(n)` -/
def P5488541084527399516.Spec : Prop :=
  ∀ n, P5488541084527399516.a n = A168371 n

end A168371

/-! ## A168371.P9812920369080380277

`n²²*A027441(n)`
-/

namespace A168371.P9812920369080380277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) * A027441 n

end

end A168371.P9812920369080380277

namespace A168371

/-- `n²²*A027441(n)` -/
def P9812920369080380277.Spec : Prop :=
  ∀ n, P9812920369080380277.a n = A168371 n

end A168371

/-! ## A168371.P10882223119409254255

`A321672(n)+A168180(n)`
-/

namespace A168371.P10882223119409254255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321672 n + A168180 n

end

end A168371.P10882223119409254255

namespace A168371

/-- `A321672(n)+A168180(n)` -/
def P10882223119409254255.Spec : Prop :=
  ∀ n, P10882223119409254255.a n = A168371 n

end A168371

/-! ## A168371.P14214333532677285690

`A002061(n)*A168351(n)`
-/

namespace A168371.P14214333532677285690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n * A168351 n

end

end A168371.P14214333532677285690

namespace A168371

/-- `A002061(n)*A168351(n)` -/
def P14214333532677285690.Spec : Prop :=
  ∀ n, P14214333532677285690.a n = A168371 n

theorem P14214333532677285690.correct : P14214333532677285690.Spec := by
  intro n
  simp only [A168371, Nat.add_sub_cancel, A168371.P14214333532677285690.a, A168371.P6876523043073551234.a, A002061, A002061.P13016590216674735232.a, A071232, A071232.P17086031509511629369.a, A168351, A168351.P7899270696741764413.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168371

/-! ## A168371.P16647067864519148946

`A071232(n)*A253909(n)`
-/

namespace A168371.P16647067864519148946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071232 n * A253909 n

end

end A168371.P16647067864519148946

namespace A168371

/-- `A071232(n)*A253909(n)` -/
def P16647067864519148946.Spec : Prop :=
  ∀ n, P16647067864519148946.a n = A168371 n

end A168371

/-! ## A168371.P3966286765390240857

`A002411(n)*A382612(n)`
-/

namespace A168371.P3966286765390240857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 n * A382612 n

end

end A168371.P3966286765390240857

namespace A168371

/-- `A002411(n)*A382612(n)` -/
def P3966286765390240857.Spec : Prop :=
  ∀ n, P3966286765390240857.a n = A168371 n

end A168371

/-! ## A168371.P11421198582192311129

`lcm(A027441(n), A168351(n))`
-/

namespace A168371.P11421198582192311129
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A027441 n) (A168351 n)

end

end A168371.P11421198582192311129

namespace A168371

/-- `lcm(A027441(n), A168351(n))` -/
def P11421198582192311129.Spec : Prop :=
  ∀ n, (P11421198582192311129.a n : ℤ) = A168371 n

end A168371

/-!
# A168372: a(n) = n^5*(n^4 + 1)/2.

The programs for A168372, the canonical program `A168372.P15842457423727933908` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168372 has offset 0).

The definition of A168372 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^5*(n^4+1)/2` (program `A168372.P14860905362496571223`, by `A168372.P14860905362496571223.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168372.P10675811460642880119

`(n^9+n^5)/2`
-/

namespace A168372.P10675811460642880119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 9 + n ^ 5 : ℚ) / 2

end

end A168372.P10675811460642880119

namespace A168372

/-- `(n^9+n^5)/2` -/
def P10675811460642880119.Spec : Prop :=
  ∀ n, P10675811460642880119.a n = (A168372 n : ℚ)

theorem P10675811460642880119.correct : P10675811460642880119.Spec := by
  intro n
  simp only [A168372, Nat.add_sub_cancel, A168372.P10675811460642880119.a, A168372.P15842457423727933908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168372

/-! ## A168372.P14860905362496571223

`n^5*(n^4+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168372.P14860905362496571223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 5 * (n ^ 4 + 1) : ℚ) / 2

end

end A168372.P14860905362496571223

namespace A168372

/-- `n^5*(n^4+1)/2` -/
def P14860905362496571223.Spec : Prop :=
  ∀ n, P14860905362496571223.a n = (A168372 n : ℚ)

theorem P14860905362496571223.correct : P14860905362496571223.Spec := by
  intro n
  simp only [A168372, Nat.add_sub_cancel, A168372.P14860905362496571223.a, A168372.P15842457423727933908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168372

/-! ## A168372.P15842457423727933908

`n*C(n^4+1, 2)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168372

/-- `n*C(n^4+1, 2)` -/
def P15842457423727933908.Spec : Prop :=
  ∀ n, (P15842457423727933908.a n : ℤ) = A168372 n

theorem P15842457423727933908.correct : P15842457423727933908.Spec := by
  intro n
  simp only [A168372]

end A168372

/-! ## A168372.P5117816992667207734

`n*A071231(n)`
-/

namespace A168372.P5117816992667207734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A071231 n

end

end A168372.P5117816992667207734

namespace A168372

/-- `n*A071231(n)` -/
def P5117816992667207734.Spec : Prop :=
  ∀ n, P5117816992667207734.a n = A168372 n

theorem P5117816992667207734.correct : P5117816992667207734.Spec := by
  intro n
  simp only [A168372, Nat.add_sub_cancel, A168372.P5117816992667207734.a, A168372.P15842457423727933908.a, A071231, A071231.P12099353623809023742.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168372

/-! ## A168372.P6300825753512694041

`n²*A168179(n)`
-/

namespace A168372.P6300825753512694041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A168179 n

end

end A168372.P6300825753512694041

namespace A168372

/-- `n²*A168179(n)` -/
def P6300825753512694041.Spec : Prop :=
  ∀ n, P6300825753512694041.a n = A168372 n

theorem P6300825753512694041.correct : P6300825753512694041.Spec := by
  intro n
  simp only [A168372, Nat.add_sub_cancel, A168372.P6300825753512694041.a, A168372.P15842457423727933908.a, A168179, A168179.P8566416021942520231.a, A021003, A021003.P1631402243745340027.a, A071252, A071252.P13937739183146272210.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168372

/-! ## A168372.P12772112657225020472

`n^3*A168122(n)`
-/

namespace A168372.P12772112657225020472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) * A168122 n

end

end A168372.P12772112657225020472

namespace A168372

/-- `n^3*A168122(n)` -/
def P12772112657225020472.Spec : Prop :=
  ∀ n, P12772112657225020472.a n = A168372 n

theorem P12772112657225020472.correct : P12772112657225020472.Spec := by
  intro n
  simp only [A168372, Nat.add_sub_cancel, A168372.P12772112657225020472.a, A168372.P15842457423727933908.a, A168122, A168122.P7248320265553921643.a, A021003, A021003.P1631402243745340027.a, A071252, A071252.P13937739183146272210.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168372

/-! ## A168372.P15907215713564110034

`n²²*A021003(n)`
-/

namespace A168372.P15907215713564110034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) * A021003 n

end

end A168372.P15907215713564110034

namespace A168372

/-- `n²²*A021003(n)` -/
def P15907215713564110034.Spec : Prop :=
  ∀ n, P15907215713564110034.a n = A168372 n

theorem P15907215713564110034.correct : P15907215713564110034.Spec := by
  intro n
  simp only [A168372, Nat.add_sub_cancel, A168372.P15907215713564110034.a, A168372.P15842457423727933908.a, A021003, A021003.P1631402243745340027.a, A071252, A071252.P13937739183146272210.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168372

/-! ## A168372.P14414077778649686345

`A321672(n)+A168187(n)`
-/

namespace A168372.P14414077778649686345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321672 n + A168187 n

end

end A168372.P14414077778649686345

namespace A168372

/-- `A321672(n)+A168187(n)` -/
def P14414077778649686345.Spec : Prop :=
  ∀ n, P14414077778649686345.a n = A168372 n

end A168372

/-! ## A168372.P6995268798871770202

`A168179(n)*A253909(n)`
-/

namespace A168372.P6995268798871770202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168179 n * A253909 n

end

end A168372.P6995268798871770202

namespace A168372

/-- `A168179(n)*A253909(n)` -/
def P6995268798871770202.Spec : Prop :=
  ∀ n, P6995268798871770202.a n = A168372 n

end A168372

/-! ## A168372.P16164122045941737035

`A168187(n)+n²*A135503(n)`
-/

namespace A168372.P16164122045941737035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168187 n + (n ^ 2 : ℤ) * A135503 n

end

end A168372.P16164122045941737035

namespace A168372

/-- `A168187(n)+n²*A135503(n)` -/
def P16164122045941737035.Spec : Prop :=
  ∀ n, P16164122045941737035.a n = A168372 n

end A168372

/-! ## A168372.P10868723819490300364

`A021003(n)+A170783(n)-A168118(n)`
-/

namespace A168372.P10868723819490300364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021003 n + (A170783 n - A168118 n)

end

end A168372.P10868723819490300364

namespace A168372

/-- `A021003(n)+A170783(n)-A168118(n)` -/
def P10868723819490300364.Spec : Prop :=
  ∀ n, P10868723819490300364.a n = A168372 n

end A168372

/-! ## A168372.P4754696200999439138

`n*A037270(n²)`
-/

namespace A168372.P4754696200999439138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A037270 (n ^ 2)

end

end A168372.P4754696200999439138

namespace A168372

/-- `n*A037270(n²)` -/
def P4754696200999439138.Spec : Prop :=
  ∀ n, P4754696200999439138.a n = A168372 n

end A168372

/-!
# A168373: a(n) = 7*n - a(n-1) - 6 with n>1, a(1)=4.

The programs for A168373, the canonical program `A168373.P298860324090065715` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168373 has offset 1).

The definition of A168373 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*(n+1)-a(n-1)-6` (program `A168373.P298860324090065715`, by `A168373.P298860324090065715.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168373.P5011902294251581591

`ogf((4+3x^2)/(1-x-x^2+x^3))`
-/

namespace A168373.P5011902294251581591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 0, 3] [1, -1, -1, 1] n

end

end A168373.P5011902294251581591

namespace A168373

/-- `ogf((4+3x^2)/(1-x-x^2+x^3))` -/
def P5011902294251581591.Spec : Prop :=
  ∀ n, P5011902294251581591.a n = A168373 (n + 1)

end A168373

/-! ## A168373.P298860324090065715

`7*(n+1)-a(n-1)-6` with `a(0)=4`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168373

/-- `7*(n+1)-a(n-1)-6` -/
def P298860324090065715.Spec : Prop :=
  ∀ n, P298860324090065715.a n = A168373 (n + 1)

theorem P298860324090065715.correct : P298860324090065715.Spec := by
  intro n
  simp only [A168373, Nat.add_sub_cancel]

end A168373

/-! ## A168373.P14324288572146246705

`(14*(n+1)-7*(-1)^(n+1)-5)/4`
-/

namespace A168373.P14324288572146246705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((14 * (n + 1) : ℤ) - 7 * (-1) ^ (n + 1) - 5 : ℚ) / 4

end

end A168373.P14324288572146246705

namespace A168373

/-- `(14*(n+1)-7*(-1)^(n+1)-5)/4` -/
def P14324288572146246705.Spec : Prop :=
  ∀ n, P14324288572146246705.a n = (A168373 (n + 1) : ℚ)

theorem P14324288572146246705.correct : P14324288572146246705.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A168373, Nat.add_sub_cancel, A168373.P14324288572146246705.a, A168373.P298860324090065715.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A168373, Nat.add_sub_cancel, A168373.P14324288572146246705.a, A168373.P298860324090065715.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A168373

/-! ## A168373.P6220351938750739759

`7+a(n-2)` with `a(0)=4, a(1)=4`
-/

namespace A168373.P6220351938750739759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 4] fun n a =>
  7 + a (n - 2)

end

end A168373.P6220351938750739759

namespace A168373

/-- `7+a(n-2)` -/
def P6220351938750739759.Spec : Prop :=
  ∀ n, (P6220351938750739759.a n : ℤ) = A168373 (n + 1)

end A168373

/-! ## A168373.P8483600087373525964

`∑[7-a(n-1)]` with `a(0)=4, a(1)=0`
-/

namespace A168373.P8483600087373525964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 0] fun n f1 =>
  7 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168373.P8483600087373525964

namespace A168373

/-- `∑[7-a(n-1)]` -/
def P8483600087373525964.Spec : Prop :=
  ∀ n, P8483600087373525964.a n = A168373 (n + 1)

end A168373

/-! ## A168373.P11800164986541708829

`∑[∑[ogf((4+3x^2)/(1+x))]]`
-/

namespace A168373.P11800164986541708829
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 0, 3] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168373.P11800164986541708829

namespace A168373

/-- `∑[∑[ogf((4+3x^2)/(1+x))]]` -/
def P11800164986541708829.Spec : Prop :=
  ∀ n, P11800164986541708829.a n = A168373 (n + 1)

end A168373

/-! ## A168373.P11758235280237770596

`7-floor(-a(n-2))` with `a(0)=4, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A168373.P11758235280237770596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 4] fun n a =>
  7 - (-a (n - 2))

end

end A168373.P11758235280237770596

namespace A168373

/-- `7-floor(-a(n-2))` -/
def P11758235280237770596.Spec : Prop :=
  ∀ n, P11758235280237770596.a n = A168373 (n + 1)

end A168373

/-! ## A168373.P7253252882225632927

`7-ceil(-a(n-2))` with `a(0)=4, a(1)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A168373.P7253252882225632927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 4] fun n a =>
  7 - (-a (n - 2))

end

end A168373.P7253252882225632927

namespace A168373

/-- `7-ceil(-a(n-2))` -/
def P7253252882225632927.Spec : Prop :=
  ∀ n, P7253252882225632927.a n = A168373 (n + 1)

end A168373

/-! ## A168373.P17563604090585007064

`7-round(-a(n-2))` with `a(0)=4, a(1)=4`

`round` is left out, it is the identity on integers.
-/

namespace A168373.P17563604090585007064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 4] fun n a =>
  7 - (-a (n - 2))

end

end A168373.P17563604090585007064

namespace A168373

/-- `7-round(-a(n-2))` -/
def P17563604090585007064.Spec : Prop :=
  ∀ n, P17563604090585007064.a n = A168373 (n + 1)

end A168373

/-! ## A168373.P12247640299708277257

`7*n-(a(n-1)-1)` with `a(0)=4`
-/

namespace A168373.P12247640299708277257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  (7 * n : ℤ) - (a (n - 1) - 1)

end

end A168373.P12247640299708277257

namespace A168373

/-- `7*n-(a(n-1)-1)` -/
def P12247640299708277257.Spec : Prop :=
  ∀ n, P12247640299708277257.a n = A168373 (n + 1)

theorem P12247640299708277257.correct : P12247640299708277257.Spec := by
  intro n
  simp only [A168373, Nat.add_sub_cancel, A168373.P12247640299708277257.a, A168373.P298860324090065715.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A168373

/-! ## A168373.P2068732232111417460

`ceil(28*or(1, n)*1/4/2)`
-/

namespace A168373.P2068732232111417460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(28 * Nat.lor 1 n : ℚ) * ((1 : ℚ) / 4) / 2⌉

end

end A168373.P2068732232111417460

namespace A168373

/-- `ceil(28*or(1, n)*1/4/2)` -/
def P2068732232111417460.Spec : Prop :=
  ∀ n, P2068732232111417460.a n = A168373 (n + 1)

end A168373

/-! ## A168373.P4189089728593590723

`lt[dr(n+3)+n, n+3]-(n+3)`
-/

namespace A168373.P4189089728593590723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n + 3 : ℤ) + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - (n + 3 : ℤ)

end

end A168373.P4189089728593590723

namespace A168373

/-- `lt[dr(n+3)+n, n+3]-(n+3)` -/
def P4189089728593590723.Spec : Prop :=
  ∀ n, P4189089728593590723.a n = A168373 (n + 1)

end A168373

/-! ## A168373.P5057436683864891938

`A047288(or(1, n))`
-/

namespace A168373.P5057436683864891938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047288 (Nat.lor 1 n)

end

end A168373.P5057436683864891938

namespace A168373

/-- `A047288(or(1, n))` -/
def P5057436683864891938.Spec : Prop :=
  ∀ n, P5057436683864891938.a n = A168373 (n + 1)

end A168373

/-! ## A168373.P15761439958562173508

`A047374(or(1, n))`
-/

namespace A168373.P15761439958562173508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047374 (Nat.lor 1 n)

end

end A168373.P15761439958562173508

namespace A168373

/-- `A047374(or(1, n))` -/
def P15761439958562173508.Spec : Prop :=
  ∀ n, P15761439958562173508.a n = A168373 (n + 1)

end A168373

/-! ## A168373.P18034504129352654055

`A168212(or(1, n))`
-/

namespace A168373.P18034504129352654055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168212 (Nat.lor 1 n)

end

end A168373.P18034504129352654055

namespace A168373

/-- `A168212(or(1, n))` -/
def P18034504129352654055.Spec : Prop :=
  ∀ n, P18034504129352654055.a n = A168373 (n + 1)

end A168373

/-! ## A168373.P2329644496017049195

`A017029(floor(n/2))`
-/

namespace A168373.P2329644496017049195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 ⌊(n : ℚ) / 2⌋.toNat

end

end A168373.P2329644496017049195

namespace A168373

/-- `A017029(floor(n/2))` -/
def P2329644496017049195.Spec : Prop :=
  ∀ n, P2329644496017049195.a n = A168373 (n + 1)

end A168373

/-! ## A168373.P3085332752469261041

`∑[A040019(n)]-n`
-/

namespace A168373.P3085332752469261041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040019 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A168373.P3085332752469261041

namespace A168373

/-- `∑[A040019(n)]-n` -/
def P3085332752469261041.Spec : Prop :=
  ∀ n, P3085332752469261041.a n = A168373 (n + 1)

end A168373

/-! ## A168373.P6078786264939001202

`A168376(n+1)+1`
-/

namespace A168373.P6078786264939001202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168376 (n + 1) + 1

end

end A168373.P6078786264939001202

namespace A168373

/-- `A168376(n+1)+1` -/
def P6078786264939001202.Spec : Prop :=
  ∀ n, P6078786264939001202.a n = A168373 (n + 1)

end A168373

/-! ## A168373.P12127492852382786980

`A168336(n+1)-1`
-/

namespace A168373.P12127492852382786980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168336 (n + 1) - 1

end

end A168373.P12127492852382786980

namespace A168373

/-- `A168336(n+1)-1` -/
def P12127492852382786980.Spec : Prop :=
  ∀ n, P12127492852382786980.a n = A168373 (n + 1)

end A168373

/-! ## A168373.P3506153885307400327

`A168332(n+1)-2`
-/

namespace A168373.P3506153885307400327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168332 (n + 1) - 2

end

end A168373.P3506153885307400327

namespace A168373

/-- `A168332(n+1)-2` -/
def P3506153885307400327.Spec : Prop :=
  ∀ n, P3506153885307400327.a n = A168373 (n + 1)

end A168373

/-!
# A168374: a(n) = 7 * floor(n/2).

The programs for A168374, the canonical program `A168374.P12944176232857563292` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168374 has offset 1).

The definition of A168374 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*floor((n+1)/2)` (program `A168374.P12944176232857563292`, by `A168374.P12944176232857563292.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168374.P12944176232857563292

`7*floor((n+1)/2)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168374

/-- `7*floor((n+1)/2)` -/
def P12944176232857563292.Spec : Prop :=
  ∀ n, P12944176232857563292.a n = A168374 (n + 1)

theorem P12944176232857563292.correct : P12944176232857563292.Spec := by
  intro n
  simp only [A168374, Nat.add_sub_cancel]

end A168374

/-! ## A168374.P14380431539647566615

`ogf(7x/(1-x-x^2+x^3))`
-/

namespace A168374.P14380431539647566615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 7] [1, -1, -1, 1] n

end

end A168374.P14380431539647566615

namespace A168374

/-- `ogf(7x/(1-x-x^2+x^3))` -/
def P14380431539647566615.Spec : Prop :=
  ∀ n, P14380431539647566615.a n = A168374 (n + 1)

end A168374

/-! ## A168374.P14174110081044450821

`7*n-a(n-1)` with `a(0)=0`
-/

namespace A168374.P14174110081044450821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (7 * n : ℤ) - a (n - 1)

end

end A168374.P14174110081044450821

namespace A168374

/-- `7*n-a(n-1)` -/
def P14174110081044450821.Spec : Prop :=
  ∀ n, P14174110081044450821.a n = A168374 (n + 1)

end A168374

/-! ## A168374.P11628163462429720766

`∑[7*n%2]`
-/

namespace A168374.P11628163462429720766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168374.P11628163462429720766

namespace A168374

/-- `∑[7*n%2]` -/
def P11628163462429720766.Spec : Prop :=
  ∀ n, (P11628163462429720766.a n : ℤ) = A168374 (n + 1)

end A168374

/-! ## A168374.P1073442259462860268

`∑[7*and(1, n)]`
-/

namespace A168374.P1073442259462860268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168374.P1073442259462860268

namespace A168374

/-- `∑[7*and(1, n)]` -/
def P1073442259462860268.Spec : Prop :=
  ∀ n, (P1073442259462860268.a n : ℤ) = A168374 (n + 1)

end A168374

/-! ## A168374.P1598338869566489871

`∑[lcm(7, and(1, n))]`
-/

namespace A168374.P1598338869566489871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 7 (Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168374.P1598338869566489871

namespace A168374

/-- `∑[lcm(7, and(1, n))]` -/
def P1598338869566489871.Spec : Prop :=
  ∀ n, (P1598338869566489871.a n : ℤ) = A168374 (n + 1)

end A168374

/-! ## A168374.P14788524406246089959

`∑[and(7, -n^4)]`
-/

namespace A168374.P14788524406246089959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (-(n ^ 4 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168374.P14788524406246089959

namespace A168374

/-- `∑[and(7, -n^4)]` -/
def P14788524406246089959.Spec : Prop :=
  ∀ n, P14788524406246089959.a n = A168374 (n + 1)

end A168374

/-! ## A168374.P4088633207118405073

`a(n-2)+7` with `a(0)=0, a(1)=7`
-/

namespace A168374.P4088633207118405073
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 7] fun n a =>
  a (n - 2) + 7

end

end A168374.P4088633207118405073

namespace A168374

/-- `a(n-2)+7` -/
def P4088633207118405073.Spec : Prop :=
  ∀ n, (P4088633207118405073.a n : ℤ) = A168374 (n + 1)

end A168374

/-! ## A168374.P6602864770430595506

`∑[7*(2-gcd(2, n))]`
-/

namespace A168374.P6602864770430595506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (2 - (Nat.gcd 2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168374.P6602864770430595506

namespace A168374

/-- `∑[7*(2-gcd(2, n))]` -/
def P6602864770430595506.Spec : Prop :=
  ∀ n, P6602864770430595506.a n = A168374 (n + 1)

end A168374

/-! ## A168374.P1490862569797495012

`∑[7-a(n-1)]` with `a(0)=0`
-/

namespace A168374.P1490862569797495012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  7 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168374.P1490862569797495012

namespace A168374

/-- `∑[7-a(n-1)]` -/
def P1490862569797495012.Spec : Prop :=
  ∀ n, P1490862569797495012.a n = A168374 (n + 1)

end A168374

/-! ## A168374.P9005658666038046601

`∑[8-gcd(8, n^3)]`
-/

namespace A168374.P9005658666038046601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 - (Nat.gcd 8 (n ^ 3) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168374.P9005658666038046601

namespace A168374

/-- `∑[8-gcd(8, n^3)]` -/
def P9005658666038046601.Spec : Prop :=
  ∀ n, P9005658666038046601.a n = A168374 (n + 1)

end A168374

/-! ## A168374.P7571320367987910708

`∑[xor(3, and(1, n)+3)]`
-/

namespace A168374.P7571320367987910708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (Nat.land 1 n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168374.P7571320367987910708

namespace A168374

/-- `∑[xor(3, and(1, n)+3)]` -/
def P7571320367987910708.Spec : Prop :=
  ∀ n, (P7571320367987910708.a n : ℤ) = A168374 (n + 1)

end A168374

/-! ## A168374.P12769453464111641040

`∑[∑[ogf(7x/(1+x))]]`
-/

namespace A168374.P12769453464111641040
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 7] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168374.P12769453464111641040

namespace A168374

/-- `∑[∑[ogf(7x/(1+x))]]` -/
def P12769453464111641040.Spec : Prop :=
  ∀ n, P12769453464111641040.a n = A168374 (n + 1)

end A168374

/-! ## A168374.P14934088808979538753

`∑[7%xor(n, n+1)²]`
-/

namespace A168374.P14934088808979538753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 % Nat.xor n (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168374.P14934088808979538753

namespace A168374

/-- `∑[7%xor(n, n+1)²]` -/
def P14934088808979538753.Spec : Prop :=
  ∀ n, (P14934088808979538753.a n : ℤ) = A168374 (n + 1)

end A168374

/-! ## A168374.P7763181223347708250

`∑[((n+1)^4-1)%8]`
-/

namespace A168374.P7763181223347708250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((n + 1) ^ 4 : ℤ) - 1) 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168374.P7763181223347708250

namespace A168374

/-- `∑[((n+1)^4-1)%8]` -/
def P7763181223347708250.Spec : Prop :=
  ∀ n, P7763181223347708250.a n = A168374 (n + 1)

end A168374

/-! ## A168374.P11073245400387542172

`7-floor(-a(n-2))` with `a(0)=0, a(1)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A168374.P11073245400387542172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 7] fun n a =>
  7 - (-a (n - 2))

end

end A168374.P11073245400387542172

namespace A168374

/-- `7-floor(-a(n-2))` -/
def P11073245400387542172.Spec : Prop :=
  ∀ n, P11073245400387542172.a n = A168374 (n + 1)

end A168374

/-! ## A168374.P2529452950203487835

`7-ceil(-a(n-2))` with `a(0)=0, a(1)=7`

`ceil` is left out, it is the identity on integers.
-/

namespace A168374.P2529452950203487835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 7] fun n a =>
  7 - (-a (n - 2))

end

end A168374.P2529452950203487835

namespace A168374

/-- `7-ceil(-a(n-2))` -/
def P2529452950203487835.Spec : Prop :=
  ∀ n, P2529452950203487835.a n = A168374 (n + 1)

end A168374

/-! ## A168374.P4204273779923123387

`7-round(-a(n-2))` with `a(0)=0, a(1)=7`

`round` is left out, it is the identity on integers.
-/

namespace A168374.P4204273779923123387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 7] fun n a =>
  7 - (-a (n - 2))

end

end A168374.P4204273779923123387

namespace A168374

/-- `7-round(-a(n-2))` -/
def P4204273779923123387.Spec : Prop :=
  ∀ n, P4204273779923123387.a n = A168374 (n + 1)

end A168374

/-! ## A168374.P9514752280110167789

`∑[dr(7*char[2*n+1])]`
-/

namespace A168374.P9514752280110167789
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((7 * (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168374.P9514752280110167789

namespace A168374

/-- `∑[dr(7*char[2*n+1])]` -/
def P9514752280110167789.Spec : Prop :=
  ∀ n, (P9514752280110167789.a n : ℤ) = A168374 (n + 1)

end A168374

/-! ## A168374.P17763114166761856350

`floor(∑[(and(1, n+1)-ϕ)²²])`
-/

namespace A168374.P17763114166761856350
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((Nat.land 1 (n + 1) : ℝ) - Real.goldenRatio) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A168374.P17763114166761856350

namespace A168374

/-- `floor(∑[(and(1, n+1)-ϕ)²²])` -/
def P17763114166761856350.Spec : Prop :=
  ∀ n, P17763114166761856350.a n = A168374 (n + 1)

end A168374

/-!
# A168375: Natural numbers n for which the concatenation "1 n^3" (A168327) is prime.

The programs for A168375, there is no canonical definition to state claims against.
-/

/-! ## A168375.P9699940751723106926

`root(A167725(n+1), 3)`
-/

namespace A168375.P9699940751723106926
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A167725 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A168375.P9699940751723106926

/-! ## A168375.P11855035301494926501

`A167725(n+1)^(A057427(n)/3)`
-/

namespace A168375.P11855035301494926501
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A167725 (n + 1) : ℝ) ^ ((A057427 n : ℚ) / 3 : ℝ)

end

end A168375.P11855035301494926501

/-! ## A168375.P7379914318839677289

`A100196(ceil(sqrt(A167725(n+1))))`
-/

namespace A168375.P7379914318839677289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 ⌈Real.sqrt (A167725 (n + 1) : ℝ)⌉.toNat

end

end A168375.P7379914318839677289

/-!
# A168376: a(n) = (14*n - 7*(-1)^n - 9)/4.

The programs for A168376, the canonical program `A168376.P5440784674195240783` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168376 has offset 1).

The definition of A168376 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168376.P5440784674195240783

`3+7*floor(n/2)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168376

/-- `3+7*floor(n/2)` -/
def P5440784674195240783.Spec : Prop :=
  ∀ n, P5440784674195240783.a n = A168376 (n + 1)

theorem P5440784674195240783.correct : P5440784674195240783.Spec := by
  intro n
  simp only [A168376, Nat.add_sub_cancel]

end A168376

/-! ## A168376.P13245377840119697003

`ogf((3+4x^2)/(1-x-x^2+x^3))`
-/

namespace A168376.P13245377840119697003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 0, 4] [1, -1, -1, 1] n

end

end A168376.P13245377840119697003

namespace A168376

/-- `ogf((3+4x^2)/(1-x-x^2+x^3))` -/
def P13245377840119697003.Spec : Prop :=
  ∀ n, P13245377840119697003.a n = A168376 (n + 1)

end A168376

/-! ## A168376.P11002271166316434367

`(14*(n+1)-7*(-1)^(n+1)-9)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168376.P11002271166316434367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((14 * (n + 1) : ℤ) - 7 * (-1) ^ (n + 1) - 9 : ℚ) / 4

end

end A168376.P11002271166316434367

namespace A168376

/-- `(14*(n+1)-7*(-1)^(n+1)-9)/4` -/
def P11002271166316434367.Spec : Prop :=
  ∀ n, P11002271166316434367.a n = (A168376 (n + 1) : ℚ)

end A168376

/-! ## A168376.P5123484789859437184

`7+a(n-2)` with `a(0)=3, a(1)=3`
-/

namespace A168376.P5123484789859437184
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 3] fun n a =>
  7 + a (n - 2)

end

end A168376.P5123484789859437184

namespace A168376

/-- `7+a(n-2)` -/
def P5123484789859437184.Spec : Prop :=
  ∀ n, (P5123484789859437184.a n : ℤ) = A168376 (n + 1)

end A168376

/-! ## A168376.P9461533891056346709

`floor(7*or(1, n)/2)`
-/

namespace A168376.P9461533891056346709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(7 * Nat.lor 1 n : ℚ) / 2⌋

end

end A168376.P9461533891056346709

namespace A168376

/-- `floor(7*or(1, n)/2)` -/
def P9461533891056346709.Spec : Prop :=
  ∀ n, P9461533891056346709.a n = A168376 (n + 1)

end A168376

/-! ## A168376.P14945868701036628248

`∑[7-a(n-1)]` with `a(0)=3, a(1)=0`
-/

namespace A168376.P14945868701036628248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 0] fun n f1 =>
  7 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168376.P14945868701036628248

namespace A168376

/-- `∑[7-a(n-1)]` -/
def P14945868701036628248.Spec : Prop :=
  ∀ n, P14945868701036628248.a n = A168376 (n + 1)

end A168376

/-! ## A168376.P16152310173257488630

`∑[∑[ogf((3+4x^2)/(1+x))]]`
-/

namespace A168376.P16152310173257488630
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 0, 4] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168376.P16152310173257488630

namespace A168376

/-- `∑[∑[ogf((3+4x^2)/(1+x))]]` -/
def P16152310173257488630.Spec : Prop :=
  ∀ n, P16152310173257488630.a n = A168376 (n + 1)

end A168376

/-! ## A168376.P14759166523704977561

`floor(7*n-1-a(n-1))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A168376.P14759166523704977561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (7 * n : ℤ) - 1 - a (n - 1)

end

end A168376.P14759166523704977561

namespace A168376

/-- `floor(7*n-1-a(n-1))` -/
def P14759166523704977561.Spec : Prop :=
  ∀ n, P14759166523704977561.a n = A168376 (n + 1)

end A168376

/-! ## A168376.P10976210856931901693

`2*(4-(1-a(n-2))/2)` with `a(0)=3, a(1)=3`
-/

namespace A168376.P10976210856931901693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3, 3] fun n a =>
  2 * (4 - (1 - a (n - 2)) / 2)

end

end A168376.P10976210856931901693

namespace A168376

/-- `2*(4-(1-a(n-2))/2)` -/
def P10976210856931901693.Spec : Prop :=
  ∀ n, P10976210856931901693.a n = (A168376 (n + 1) : ℚ)

end A168376

/-! ## A168376.P1875924924629268661

`A047280(or(1, n))`
-/

namespace A168376.P1875924924629268661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047280 (Nat.lor 1 n)

end

end A168376.P1875924924629268661

namespace A168376

/-- `A047280(or(1, n))` -/
def P1875924924629268661.Spec : Prop :=
  ∀ n, P1875924924629268661.a n = A168376 (n + 1)

end A168376

/-! ## A168376.P9138359296423326806

`A047341(or(1, n))`
-/

namespace A168376.P9138359296423326806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047341 (Nat.lor 1 n)

end

end A168376.P9138359296423326806

namespace A168376

/-- `A047341(or(1, n))` -/
def P9138359296423326806.Spec : Prop :=
  ∀ n, P9138359296423326806.a n = A168376 (n + 1)

end A168376

/-! ## A168376.P3713511274579966202

`A047389(or(1, n))`
-/

namespace A168376.P3713511274579966202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047389 (Nat.lor 1 n)

end

end A168376.P3713511274579966202

namespace A168376

/-- `A047389(or(1, n))` -/
def P3713511274579966202.Spec : Prop :=
  ∀ n, P3713511274579966202.a n = A168376 (n + 1)

end A168376

/-! ## A168376.P7026534326288365730

`A168331(or(1, n))`
-/

namespace A168376.P7026534326288365730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168331 (Nat.lor 1 n)

end

end A168376.P7026534326288365730

namespace A168376

/-- `A168331(or(1, n))` -/
def P7026534326288365730.Spec : Prop :=
  ∀ n, P7026534326288365730.a n = A168376 (n + 1)

end A168376

/-! ## A168376.P12094782365019265359

`A017017(floor(n/2))`
-/

namespace A168376.P12094782365019265359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 ⌊(n : ℚ) / 2⌋.toNat

end

end A168376.P12094782365019265359

namespace A168376

/-- `A017017(floor(n/2))` -/
def P12094782365019265359.Spec : Prop :=
  ∀ n, P12094782365019265359.a n = A168376 (n + 1)

end A168376

/-! ## A168376.P950746277050940232

`∑[A040019(n)-1]`
-/

namespace A168376.P950746277050940232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040019 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168376.P950746277050940232

namespace A168376

/-- `∑[A040019(n)-1]` -/
def P950746277050940232.Spec : Prop :=
  ∀ n, P950746277050940232.a n = A168376 (n + 1)

end A168376

/-! ## A168376.P14831252203257997486

`A047355(or(1, n)+1)`
-/

namespace A168376.P14831252203257997486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047355 (Nat.lor 1 n + 1)

end

end A168376.P14831252203257997486

namespace A168376

/-- `A047355(or(1, n)+1)` -/
def P14831252203257997486.Spec : Prop :=
  ∀ n, P14831252203257997486.a n = A168376 (n + 1)

end A168376

/-! ## A168376.P17266462263160884939

`A047356(or(1, n)+1)`
-/

namespace A168376.P17266462263160884939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047356 (Nat.lor 1 n + 1)

end

end A168376.P17266462263160884939

namespace A168376

/-- `A047356(or(1, n)+1)` -/
def P17266462263160884939.Spec : Prop :=
  ∀ n, P17266462263160884939.a n = A168376 (n + 1)

end A168376

/-! ## A168376.P13086863361966787469

`A047358(or(1, n)+1)`
-/

namespace A168376.P13086863361966787469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047358 (Nat.lor 1 n + 1)

end

end A168376.P13086863361966787469

namespace A168376

/-- `A047358(or(1, n)+1)` -/
def P13086863361966787469.Spec : Prop :=
  ∀ n, P13086863361966787469.a n = A168376 (n + 1)

end A168376

/-! ## A168376.P15655329627820963944

`A047355(gcd(2, n)+n)`
-/

namespace A168376.P15655329627820963944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047355 (Nat.gcd 2 n + n)

end

end A168376.P15655329627820963944

namespace A168376

/-- `A047355(gcd(2, n)+n)` -/
def P15655329627820963944.Spec : Prop :=
  ∀ n, P15655329627820963944.a n = A168376 (n + 1)

end A168376

/-! ## A168376.P5037007229611212277

`∑[dr(1-A040181(n))]`
-/

namespace A168376.P5037007229611212277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (1 - A040181 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168376.P5037007229611212277

namespace A168376

/-- `∑[dr(1-A040181(n))]` -/
def P5037007229611212277.Spec : Prop :=
  ∀ n, (P5037007229611212277.a n : ℤ) = A168376 (n + 1)

end A168376

/-!
# A168377: Riordan array (1/(1 + x), x*c(x)), where c(x) is the o.g.f. of Catalan numbers A000108.

The programs for A168377, there is no canonical definition to state claims against.
-/

/-! ## A168377.P10448584026509536403

`A106566(n)-T(n-1,k)` with `a(0)=1`
-/

namespace A168377.P10448584026509536403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A106566 n - SequenceMachineLib.triUp a n

end

end A168377.P10448584026509536403

/-! ## A168377.P8136083645294844823

`A091598(n)-A288108(A187829(n+1))`
-/

namespace A168377.P8136083645294844823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091598 n - A288108 (A187829 (n + 1)).toNat

end

end A168377.P8136083645294844823

/-!
# A168378: a(n) = 3 + 8*floor(n/2).

The programs for A168378, the canonical program `A168378.P14725758189335732795` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168378 has offset 1).

The definition of A168378 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3+8*floor((n+1)/2)` (program `A168378.P14725758189335732795`, by `A168378.P14725758189335732795.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168378.P8620344631323095183

`ogf((3+8x-3x^2)/(1-x-x^2+x^3))`
-/

namespace A168378.P8620344631323095183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 8, -3] [1, -1, -1, 1] n

end

end A168378.P8620344631323095183

namespace A168378

/-- `ogf((3+8x-3x^2)/(1-x-x^2+x^3))` -/
def P8620344631323095183.Spec : Prop :=
  ∀ n, P8620344631323095183.a n = A168378 (n + 1)

end A168378

/-! ## A168378.P14725758189335732795

`3+8*floor((n+1)/2)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168378

/-- `3+8*floor((n+1)/2)` -/
def P14725758189335732795.Spec : Prop :=
  ∀ n, P14725758189335732795.a n = A168378 (n + 1)

theorem P14725758189335732795.correct : P14725758189335732795.Spec := by
  intro n
  simp only [A168378, Nat.add_sub_cancel]

end A168378

/-! ## A168378.P11051880046245058712

`a(n-2)+8` with `a(0)=3, a(1)=11`
-/

namespace A168378.P11051880046245058712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 11] fun n a =>
  a (n - 2) + 8

end

end A168378.P11051880046245058712

namespace A168378

/-- `a(n-2)+8` -/
def P11051880046245058712.Spec : Prop :=
  ∀ n, (P11051880046245058712.a n : ℤ) = A168378 (n + 1)

end A168378

/-! ## A168378.P17315615654211602261

`∑[8*n%2]+3`
-/

namespace A168378.P17315615654211602261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A168378.P17315615654211602261

namespace A168378

/-- `∑[8*n%2]+3` -/
def P17315615654211602261.Spec : Prop :=
  ∀ n, (P17315615654211602261.a n : ℤ) = A168378 (n + 1)

end A168378

/-! ## A168378.P4010451762559915447

`∑[8*and(1, n)]+3`
-/

namespace A168378.P4010451762559915447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A168378.P4010451762559915447

namespace A168378

/-- `∑[8*and(1, n)]+3` -/
def P4010451762559915447.Spec : Prop :=
  ∀ n, (P4010451762559915447.a n : ℤ) = A168378 (n + 1)

end A168378

/-! ## A168378.P4466115238791443607

`4*or(1, 1+n)-1`
-/

namespace A168378.P4466115238791443607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * Nat.lor 1 (1 + n) : ℤ) - 1

end

end A168378.P4466115238791443607

namespace A168378

/-- `4*or(1, 1+n)-1` -/
def P4466115238791443607.Spec : Prop :=
  ∀ n, P4466115238791443607.a n = A168378 (n + 1)

end A168378

/-! ## A168378.P5320868977960153717

`lcm(4, or(1, n+1))-1`
-/

namespace A168378.P5320868977960153717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (Nat.lor 1 (n + 1)) : ℤ) - 1

end

end A168378.P5320868977960153717

namespace A168378

/-- `lcm(4, or(1, n+1))-1` -/
def P5320868977960153717.Spec : Prop :=
  ∀ n, P5320868977960153717.a n = A168378 (n + 1)

end A168378

/-! ## A168378.P4787095912196417193

`xor(7, 4*or(1, n+1))`
-/

namespace A168378.P4787095912196417193
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 (4 * Nat.lor 1 (n + 1))

end

end A168378.P4787095912196417193

namespace A168378

/-- `xor(7, 4*or(1, n+1))` -/
def P4787095912196417193.Spec : Prop :=
  ∀ n, (P4787095912196417193.a n : ℤ) = A168378 (n + 1)

end A168378

/-! ## A168378.P2272794308043787906

`∑[abs(a(n-2))]` with `a(0)=3, a(1)=8, a(2)=0`
-/

namespace A168378.P2272794308043787906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 8, 0] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168378.P2272794308043787906

namespace A168378

/-- `∑[abs(a(n-2))]` -/
def P2272794308043787906.Spec : Prop :=
  ∀ n, (P2272794308043787906.a n : ℤ) = A168378 (n + 1)

end A168378

/-! ## A168378.P14149039213594394402

`∑[8-a(n-1)]` with `a(0)=3, a(1)=8`
-/

namespace A168378.P14149039213594394402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 8] fun n f1 =>
  8 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168378.P14149039213594394402

namespace A168378

/-- `∑[8-a(n-1)]` -/
def P14149039213594394402.Spec : Prop :=
  ∀ n, P14149039213594394402.a n = A168378 (n + 1)

end A168378

/-! ## A168378.P3541842822526878127

`abs(or(5, -(4*(n+2))))`
-/

namespace A168378.P3541842822526878127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 5 (-(4 * (n + 2) : ℤ))|

end

end A168378.P3541842822526878127

namespace A168378

/-- `abs(or(5, -(4*(n+2))))` -/
def P3541842822526878127.Spec : Prop :=
  ∀ n, P3541842822526878127.a n = A168378 (n + 1)

end A168378

/-! ## A168378.P8018175120835077093

`-or(5, -(4*(n+2)))`
-/

namespace A168378.P8018175120835077093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 5 (-(4 * (n + 2) : ℤ))

end

end A168378.P8018175120835077093

namespace A168378

/-- `-or(5, -(4*(n+2)))` -/
def P8018175120835077093.Spec : Prop :=
  ∀ n, P8018175120835077093.a n = A168378 (n + 1)

end A168378

/-! ## A168378.P4420314700070813736

`∑[∑[ogf((3+8x-3x^2)/(1+x))]]`
-/

namespace A168378.P4420314700070813736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 8, -3] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168378.P4420314700070813736

namespace A168378

/-- `∑[∑[ogf((3+8x-3x^2)/(1+x))]]` -/
def P4420314700070813736.Spec : Prop :=
  ∀ n, P4420314700070813736.a n = A168378 (n + 1)

end A168378

/-! ## A168378.P7300444341439731488

`4*and(n+1, -2)+3`
-/

namespace A168378.P7300444341439731488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * Int.land (n + 1 : ℤ) (-2) + 3

end

end A168378.P7300444341439731488

namespace A168378

/-- `4*and(n+1, -2)+3` -/
def P7300444341439731488.Spec : Prop :=
  ∀ n, P7300444341439731488.a n = A168378 (n + 1)

end A168378

/-! ## A168378.P3035071018335398902

`Δ[xor(1, n*(2*n+3))]`
-/

namespace A168378.P3035071018335398902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n * (2 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A168378.P3035071018335398902

namespace A168378

/-- `Δ[xor(1, n*(2*n+3))]` -/
def P3035071018335398902.Spec : Prop :=
  ∀ n, P3035071018335398902.a n = A168378 (n + 1)

end A168378

/-! ## A168378.P9898329428741324705

`floor(8*n-(a(n-1)-6))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A168378.P9898329428741324705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (8 * n : ℤ) - (a (n - 1) - 6)

end

end A168378.P9898329428741324705

namespace A168378

/-- `floor(8*n-(a(n-1)-6))` -/
def P9898329428741324705.Spec : Prop :=
  ∀ n, P9898329428741324705.a n = A168378 (n + 1)

end A168378

/-! ## A168378.P8265515895225507235

`Δ[2*gcd(2, n)+(2*n+1)*(n+1)]`
-/

namespace A168378.P8265515895225507235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.gcd 2 n + (2 * n + 1) * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A168378.P8265515895225507235

namespace A168378

/-- `Δ[2*gcd(2, n)+(2*n+1)*(n+1)]` -/
def P8265515895225507235.Spec : Prop :=
  ∀ n, P8265515895225507235.a n = A168378 (n + 1)

end A168378

/-! ## A168378.P6495146606441723717

`A017101(ceil(n/2))`
-/

namespace A168378.P6495146606441723717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 ⌈(n : ℚ) / 2⌉.toNat

end

end A168378.P6495146606441723717

namespace A168378

/-- `A017101(ceil(n/2))` -/
def P6495146606441723717.Spec : Prop :=
  ∀ n, P6495146606441723717.a n = A168378 (n + 1)

end A168378

/-! ## A168378.P7448713707282980610

`A134429(2*(n+1))`
-/

namespace A168378.P7448713707282980610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134429 (2 * (n + 1))

end

end A168378.P7448713707282980610

namespace A168378

/-- `A134429(2*(n+1))` -/
def P7448713707282980610.Spec : Prop :=
  ∀ n, P7448713707282980610.a n = A168378 (n + 1)

end A168378

/-! ## A168378.P10817322522530749886

`Δ[A081353(n)+n²]`
-/

namespace A168378.P10817322522530749886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081353 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168378.P10817322522530749886

namespace A168378

/-- `Δ[A081353(n)+n²]` -/
def P10817322522530749886.Spec : Prop :=
  ∀ n, P10817322522530749886.a n = A168378 (n + 1)

end A168378

/-!
# A168379: a(n) = 4*n - 2*(-1)^n + 1.

The programs for A168379, the canonical program `A168379.P18212022095183093388` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168379 has offset 1).

The definition of A168379 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(n+1)-2*(-1)^(n+1)+1` (program `A168379.P18212022095183093388`, by `A168379.P18212022095183093388.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168379.P954843117564623294

`7+8*floor(n/2)`
-/

namespace A168379.P954843117564623294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 + 8 * ⌊(n : ℚ) / 2⌋

end

end A168379.P954843117564623294

namespace A168379

/-- `7+8*floor(n/2)` -/
def P954843117564623294.Spec : Prop :=
  ∀ n, P954843117564623294.a n = A168379 (n + 1)

end A168379

/-! ## A168379.P6873340196156723045

`ogf((7+x^2)/(1-x-x^2+x^3))`
-/

namespace A168379.P6873340196156723045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 0, 1] [1, -1, -1, 1] n

end

end A168379.P6873340196156723045

namespace A168379

/-- `ogf((7+x^2)/(1-x-x^2+x^3))` -/
def P6873340196156723045.Spec : Prop :=
  ∀ n, P6873340196156723045.a n = A168379 (n + 1)

end A168379

/-! ## A168379.P18212022095183093388

`4*(n+1)-2*(-1)^(n+1)+1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168379

/-- `4*(n+1)-2*(-1)^(n+1)+1` -/
def P18212022095183093388.Spec : Prop :=
  ∀ n, P18212022095183093388.a n = A168379 (n + 1)

theorem P18212022095183093388.correct : P18212022095183093388.Spec := by
  intro n
  simp only [A168379, Nat.add_sub_cancel]

end A168379

/-! ## A168379.P4912549169097089594

`or(4*n, 7)`
-/

namespace A168379.P4912549169097089594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (4 * n) 7

end

end A168379.P4912549169097089594

namespace A168379

/-- `or(4*n, 7)` -/
def P4912549169097089594.Spec : Prop :=
  ∀ n, (P4912549169097089594.a n : ℤ) = A168379 (n + 1)

end A168379

/-! ## A168379.P1838621115493143402

`lcm(4, or(1, n))+3`
-/

namespace A168379.P1838621115493143402
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (Nat.lor 1 n) + 3

end

end A168379.P1838621115493143402

namespace A168379

/-- `lcm(4, or(1, n))+3` -/
def P1838621115493143402.Spec : Prop :=
  ∀ n, (P1838621115493143402.a n : ℤ) = A168379 (n + 1)

end A168379

/-! ## A168379.P15713408492735169194

`a(n-2)+8` with `a(0)=7, a(1)=7`
-/

namespace A168379.P15713408492735169194
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7, 7] fun n a =>
  a (n - 2) + 8

end

end A168379.P15713408492735169194

namespace A168379

/-- `a(n-2)+8` -/
def P15713408492735169194.Spec : Prop :=
  ∀ n, (P15713408492735169194.a n : ℤ) = A168379 (n + 1)

theorem P15713408492735169194.correct : P15713408492735169194.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A168379, Nat.add_sub_cancel, A168379.P15713408492735169194.a, A168379.P18212022095183093388.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A168379, Nat.add_sub_cancel, A168379.P15713408492735169194.a, A168379.P18212022095183093388.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A168379

/-! ## A168379.P7734411266284377751

`∑[8-a(n-1)]` with `a(0)=7, a(1)=0`
-/

namespace A168379.P7734411266284377751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7, 0] fun n f1 =>
  8 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168379.P7734411266284377751

namespace A168379

/-- `∑[8-a(n-1)]` -/
def P7734411266284377751.Spec : Prop :=
  ∀ n, P7734411266284377751.a n = A168379 (n + 1)

end A168379

/-! ## A168379.P10990325254426637460

`∑[∑[ogf((7+x^2)/(1+x))]]`
-/

namespace A168379.P10990325254426637460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 0, 1] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168379.P10990325254426637460

namespace A168379

/-- `∑[∑[ogf((7+x^2)/(1+x))]]` -/
def P10990325254426637460.Spec : Prop :=
  ∀ n, P10990325254426637460.a n = A168379 (n + 1)

end A168379

/-! ## A168379.P8460879186680406618

`Δ[xor(1, (n+1)*Δ[n²])]`
-/

namespace A168379.P8460879186680406618
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n + 1 : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168379.P8460879186680406618

namespace A168379

/-- `Δ[xor(1, (n+1)*Δ[n²])]` -/
def P8460879186680406618.Spec : Prop :=
  ∀ n, P8460879186680406618.a n = A168379 (n + 1)

end A168379

/-! ## A168379.P10992483651180299636

`4*(gcd(2, n)-1/4+n)`
-/

namespace A168379.P10992483651180299636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((Nat.gcd 2 n : ℚ) - (1 : ℚ) / 4 + (n : ℚ))

end

end A168379.P10992483651180299636

namespace A168379

/-- `4*(gcd(2, n)-1/4+n)` -/
def P10992483651180299636.Spec : Prop :=
  ∀ n, P10992483651180299636.a n = (A168379 (n + 1) : ℚ)

end A168379

/-! ## A168379.P17326824551383601568

`xor(3, 2*n-xor(2*n, -4))`
-/

namespace A168379.P17326824551383601568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 ((2 * n : ℤ) - Int.xor (2 * n : ℤ) (-4))

end

end A168379.P17326824551383601568

namespace A168379

/-- `xor(3, 2*n-xor(2*n, -4))` -/
def P17326824551383601568.Spec : Prop :=
  ∀ n, P17326824551383601568.a n = A168379 (n + 1)

end A168379

/-! ## A168379.P214827475258306921

`floor(8*n-(a(n-1)-6))` with `a(0)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A168379.P214827475258306921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  (8 * n : ℤ) - (a (n - 1) - 6)

end

end A168379.P214827475258306921

namespace A168379

/-- `floor(8*n-(a(n-1)-6))` -/
def P214827475258306921.Spec : Prop :=
  ∀ n, P214827475258306921.a n = A168379 (n + 1)

theorem P214827475258306921.correct : P214827475258306921.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A168379, Nat.add_sub_cancel, A168379.P214827475258306921.a, A168379.P18212022095183093388.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A168379, Nat.add_sub_cancel, A168379.P214827475258306921.a, A168379.P18212022095183093388.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A168379

/-! ## A168379.P16349262358726835955

`xor(3, xor(2, 2*n+1)+2*n+1)`
-/

namespace A168379.P16349262358726835955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (Nat.xor 2 (2 * n + 1) + (2 * n + 1))

end

end A168379.P16349262358726835955

namespace A168379

/-- `xor(3, xor(2, 2*n+1)+2*n+1)` -/
def P16349262358726835955.Spec : Prop :=
  ∀ n, (P16349262358726835955.a n : ℤ) = A168379 (n + 1)

end A168379

/-! ## A168379.P15745068855929590119

`Δ[(2*n+1)*(n+1)-gcd(4, 2*n)]`
-/

namespace A168379.P15745068855929590119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * (n + 1) : ℤ) - (Nat.gcd 4 (2 * n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168379.P15745068855929590119

namespace A168379

/-- `Δ[(2*n+1)*(n+1)-gcd(4, 2*n)]` -/
def P15745068855929590119.Spec : Prop :=
  ∀ n, P15745068855929590119.a n = A168379 (n + 1)

end A168379

/-! ## A168379.P2236028883431421590

`Δ[2*and(1, n)+(2*n+1)*(n+1)]`
-/

namespace A168379.P2236028883431421590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land 1 n + (2 * n + 1) * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A168379.P2236028883431421590

namespace A168379

/-- `Δ[2*and(1, n)+(2*n+1)*(n+1)]` -/
def P2236028883431421590.Spec : Prop :=
  ∀ n, P2236028883431421590.a n = A168379 (n + 1)

end A168379

/-! ## A168379.P353683366118678557

`A004767(or(1, n))`
-/

namespace A168379.P353683366118678557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (Nat.lor 1 n)

end

end A168379.P353683366118678557

namespace A168379

/-- `A004767(or(1, n))` -/
def P353683366118678557.Spec : Prop :=
  ∀ n, P353683366118678557.a n = A168379 (n + 1)

end A168379

/-! ## A168379.P9241857560476581528

`A004771(floor(n/2))`
-/

namespace A168379.P9241857560476581528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 ⌊(n : ℚ) / 2⌋.toNat

end

end A168379.P9241857560476581528

namespace A168379

/-- `A004771(floor(n/2))` -/
def P9241857560476581528.Spec : Prop :=
  ∀ n, P9241857560476581528.a n = A168379 (n + 1)

end A168379

/-! ## A168379.P5538617840071365689

`A047524(or(1, n)+1)`
-/

namespace A168379.P5538617840071365689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047524 (Nat.lor 1 n + 1)

end

end A168379.P5538617840071365689

namespace A168379

/-- `A047524(or(1, n)+1)` -/
def P5538617840071365689.Spec : Prop :=
  ∀ n, P5538617840071365689.a n = A168379 (n + 1)

end A168379

/-! ## A168379.P12235949192625384925

`A047535(or(1, n)+1)`
-/

namespace A168379.P12235949192625384925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047535 (Nat.lor 1 n + 1)

end

end A168379.P12235949192625384925

namespace A168379

/-- `A047535(or(1, n)+1)` -/
def P12235949192625384925.Spec : Prop :=
  ∀ n, P12235949192625384925.a n = A168379 (n + 1)

end A168379

/-! ## A168379.P13615867025189459177

`A047550(or(1, n)+1)`
-/

namespace A168379.P13615867025189459177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047550 (Nat.lor 1 n + 1)

end

end A168379.P13615867025189459177

namespace A168379

/-- `A047550(or(1, n)+1)` -/
def P13615867025189459177.Spec : Prop :=
  ∀ n, P13615867025189459177.a n = A168379 (n + 1)

end A168379

/-!
# A168380: Row sums of A168281.

The programs for A168380, the canonical program `A168380.P4939789133817210671` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168380 has offset 1).

The definition of A168380 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168380.P14615925430345777102

`ogf((2+2x^2)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))`
-/

namespace A168380.P14615925430345777102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, 2] [1, -2, -1, 4, -1, -2, 1] n

end

end A168380.P14615925430345777102

namespace A168380

/-- `ogf((2+2x^2)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))` -/
def P14615925430345777102.Spec : Prop :=
  ∀ n, P14615925430345777102.a n = A168380 (n + 1)

end A168380

/-! ## A168380.P2020287280562201677

`(n+2)*(3+2*(n+1)²+4*(n+1)-3*(-1)^(n+1))/12`
-/

namespace A168380.P2020287280562201677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * ((3 + 2 * (n + 1) ^ 2 + 4 * (n + 1) : ℤ) - 3 * (-1) ^ (n + 1)) : ℚ) / 12

end

end A168380.P2020287280562201677

namespace A168380

/-- `(n+2)*(3+2*(n+1)²+4*(n+1)-3*(-1)^(n+1))/12` -/
def P2020287280562201677.Spec : Prop :=
  ∀ n, P2020287280562201677.a n = (A168380 (n + 1) : ℚ)

end A168380

/-! ## A168380.P16259353279020695522

`2*A005993(n)`
-/

namespace A168380.P16259353279020695522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005993 n

end

end A168380.P16259353279020695522

namespace A168380

/-- `2*A005993(n)` -/
def P16259353279020695522.Spec : Prop :=
  ∀ n, P16259353279020695522.a n = A168380 (n + 1)

end A168380

/-! ## A168380.P4939789133817210671

`A000292(n+1)+A027656(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A168380

/-- `A000292(n+1)+A027656(n)` -/
def P4939789133817210671.Spec : Prop :=
  ∀ n, P4939789133817210671.a n = A168380 (n + 1)

theorem P4939789133817210671.correct : P4939789133817210671.Spec := by
  intro n
  simp only [A168380, Nat.add_sub_cancel]

end A168380

/-! ## A168380.P15623932067605670739

`∑[(or(1, n)+1)²/2]`
-/

namespace A168380.P15623932067605670739
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 n + 1) ^ 2 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168380.P15623932067605670739

namespace A168380

/-- `∑[(or(1, n)+1)²/2]` -/
def P15623932067605670739.Spec : Prop :=
  ∀ n, P15623932067605670739.a n = (A168380 (n + 1) : ℚ)

end A168380

/-! ## A168380.P4325467914091098106

`∑[(gcd(2, n)+n)²/2]`
-/

namespace A168380.P4325467914091098106
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd 2 n + n) ^ 2 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168380.P4325467914091098106

namespace A168380

/-- `∑[(gcd(2, n)+n)²/2]` -/
def P4325467914091098106.Spec : Prop :=
  ∀ n, P4325467914091098106.a n = (A168380 (n + 1) : ℚ)

end A168380

/-! ## A168380.P314997080969280839

`∑[and(n+2, -2)²/2]`
-/

namespace A168380.P314997080969280839
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n + 2 : ℤ) (-2) ^ 2 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168380.P314997080969280839

namespace A168380

/-- `∑[and(n+2, -2)²/2]` -/
def P314997080969280839.Spec : Prop :=
  ∀ n, P314997080969280839.a n = (A168380 (n + 1) : ℚ)

end A168380

/-! ## A168380.P12829111195510151120

`2*∑[∑[and(1, n+1)]²]`
-/

namespace A168380.P12829111195510151120
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A168380.P12829111195510151120

namespace A168380

/-- `2*∑[∑[and(1, n+1)]²]` -/
def P12829111195510151120.Spec : Prop :=
  ∀ n, (P12829111195510151120.a n : ℤ) = A168380 (n + 1)

end A168380

/-! ## A168380.P157248361244867159

`∑[(and(1, n)-(n+2))²]/2`
-/

namespace A168380.P157248361244867159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 1 n : ℤ) - (n + 2 : ℤ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A168380.P157248361244867159

namespace A168380

/-- `∑[(and(1, n)-(n+2))²]/2` -/
def P157248361244867159.Spec : Prop :=
  ∀ n, P157248361244867159.a n = (A168380 (n + 1) : ℚ)

end A168380

/-! ## A168380.P12899793729751483484

`2*∑[∑[1-a(n-1)]²]` with `a(0)=1`
-/

namespace A168380.P12899793729751483484
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A168380.P12899793729751483484

namespace A168380

/-- `2*∑[∑[1-a(n-1)]²]` -/
def P12899793729751483484.Spec : Prop :=
  ∀ n, P12899793729751483484.a n = A168380 (n + 1)

end A168380

/-! ## A168380.P14220922284907916979

`∑[∑[2-a(n-1)]²]/2` with `a(0)=2`
-/

namespace A168380.P14220922284907916979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  2 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A168380.P14220922284907916979

namespace A168380

/-- `∑[∑[2-a(n-1)]²]/2` -/
def P14220922284907916979.Spec : Prop :=
  ∀ n, P14220922284907916979.a n = (A168380 (n + 1) : ℚ)

end A168380

/-! ## A168380.P13859253691354760606

`∑[∑[(n+1)*Δ[or(1, n+1)]]]`
-/

namespace A168380.P13859253691354760606
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168380.P13859253691354760606

namespace A168380

/-- `∑[∑[(n+1)*Δ[or(1, n+1)]]]` -/
def P13859253691354760606.Spec : Prop :=
  ∀ n, P13859253691354760606.a n = A168380 (n + 1)

end A168380

/-! ## A168380.P8664653915468889304

`2*∑[∑[lcm(2, n+1)-(n+1)]]`
-/

namespace A168380.P8664653915468889304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n + 1) : ℤ) - (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A168380.P8664653915468889304

namespace A168380

/-- `2*∑[∑[lcm(2, n+1)-(n+1)]]` -/
def P8664653915468889304.Spec : Prop :=
  ∀ n, P8664653915468889304.a n = A168380 (n + 1)

end A168380

/-! ## A168380.P382460620252434775

`2*∑[∑[(n+1)*and(1, n+1)]]`
-/

namespace A168380.P382460620252434775
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.land 1 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A168380.P382460620252434775

namespace A168380

/-- `2*∑[∑[(n+1)*and(1, n+1)]]` -/
def P382460620252434775.Spec : Prop :=
  ∀ n, (P382460620252434775.a n : ℤ) = A168380 (n + 1)

end A168380

/-! ## A168380.P4845435149752856743

`∑[2*ceil(cot(2/(n+1)))²]+2`
-/

namespace A168380.P4845435149752856743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈Real.cot (2 / (n + 1 : ℚ) : ℝ)⌉ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A168380.P4845435149752856743

namespace A168380

/-- `∑[2*ceil(cot(2/(n+1)))²]+2` -/
def P4845435149752856743.Spec : Prop :=
  ∀ n, P4845435149752856743.a n = A168380 (n + 1)

end A168380

/-! ## A168380.P16388290694384407393

`∑[∑[(n+1)*∑[-a(n-1)]]]` with `a(0)=2`
-/

namespace A168380.P16388290694384407393
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f3 =>
  -f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168380.P16388290694384407393

namespace A168380

/-- `∑[∑[(n+1)*∑[-a(n-1)]]]` -/
def P16388290694384407393.Spec : Prop :=
  ∀ n, P16388290694384407393.a n = A168380 (n + 1)

end A168380

/-! ## A168380.P3974684359795101549

`∑[∑[n+1]]+∑[n+1]%(n+2)`
-/

namespace A168380.P3974684359795101549
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (∑ j ∈ Finset.range (n + 1), f3 j) % (n + 2)

end

end A168380.P3974684359795101549

namespace A168380

/-- `∑[∑[n+1]]+∑[n+1]%(n+2)` -/
def P3974684359795101549.Spec : Prop :=
  ∀ n, (P3974684359795101549.a n : ℤ) = A168380 (n + 1)

end A168380

/-! ## A168380.P17217195728898646758

`∑[∑[a(n-2)+4]-a(n-1)]` with `a(0)=2, a(1)=2`
-/

namespace A168380.P17217195728898646758
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  f2 (n - 2) + 4

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168380.P17217195728898646758

namespace A168380

/-- `∑[∑[a(n-2)+4]-a(n-1)]` -/
def P17217195728898646758.Spec : Prop :=
  ∀ n, P17217195728898646758.a n = A168380 (n + 1)

end A168380

/-! ## A168380.P2157743951937687592

`∑[∑[∑[4-a(n-1)]-a(n-1)]]` with `a(0)=2, a(1)=0`
-/

namespace A168380.P2157743951937687592
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f3 =>
  4 - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f2 =>
  ∑ j ∈ Finset.range (n + 1), f3 j - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168380.P2157743951937687592

namespace A168380

/-- `∑[∑[∑[4-a(n-1)]-a(n-1)]]` -/
def P2157743951937687592.Spec : Prop :=
  ∀ n, P2157743951937687592.a n = A168380 (n + 1)

end A168380

/-! ## A168380.P17485103415411081188

`a(n-1)+(2*n+(-1)^n+3)²/8` with `a(0)=2`
-/

namespace A168380.P17485103415411081188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (((2 * n : ℤ) + ((-1) ^ n + 3)) ^ 2 : ℚ) / 8

end

end A168380.P17485103415411081188

namespace A168380

/-- `a(n-1)+(2*n+(-1)^n+3)²/8` -/
def P17485103415411081188.Spec : Prop :=
  ∀ n, P17485103415411081188.a n = (A168380 (n + 1) : ℚ)

end A168380

/-!
# A168381: a(n) = 4*n + 2*(-1)^n.

The programs for A168381, the canonical program `A168381.P16988050873759278270` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168381 has offset 1).

The definition of A168381 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(n+1)+2*(-1)^(n+1)` (program `A168381.P16988050873759278270`, by `A168381.P16988050873759278270.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168381.P497058158906717767

`ogf((2+8x-2x^2)/(1-x-x^2+x^3))`
-/

namespace A168381.P497058158906717767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 8, -2] [1, -1, -1, 1] n

end

end A168381.P497058158906717767

namespace A168381

/-- `ogf((2+8x-2x^2)/(1-x-x^2+x^3))` -/
def P497058158906717767.Spec : Prop :=
  ∀ n, P497058158906717767.a n = A168381 (n + 1)

end A168381

/-! ## A168381.P2440028314866563326

`2+8*floor((n+1)/2)`
-/

namespace A168381.P2440028314866563326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 + 8 * ⌊(n + 1 : ℚ) / 2⌋

end

end A168381.P2440028314866563326

namespace A168381

/-- `2+8*floor((n+1)/2)` -/
def P2440028314866563326.Spec : Prop :=
  ∀ n, P2440028314866563326.a n = A168381 (n + 1)

end A168381

/-! ## A168381.P16988050873759278270

`4*(n+1)+2*(-1)^(n+1)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168381

/-- `4*(n+1)+2*(-1)^(n+1)` -/
def P16988050873759278270.Spec : Prop :=
  ∀ n, P16988050873759278270.a n = A168381 (n + 1)

theorem P16988050873759278270.correct : P16988050873759278270.Spec := by
  intro n
  simp only [A168381, Nat.add_sub_cancel]

end A168381

/-! ## A168381.P7823453738920638815

`2*A163980(n+1)`
-/

namespace A168381.P7823453738920638815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163980 (n + 1)

end

end A168381.P7823453738920638815

namespace A168381

/-- `2*A163980(n+1)` -/
def P7823453738920638815.Spec : Prop :=
  ∀ n, P7823453738920638815.a n = A168381 (n + 1)

theorem P7823453738920638815.correct : P7823453738920638815.Spec := by
  intro n
  simp only [A168381, Nat.add_sub_cancel, A168381.P7823453738920638815.a, A168381.P16988050873759278270.a, A163980, A163980.P5773084726298285759.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A168381

/-! ## A168381.P16905227806751660185

`8+a(n-2)` with `a(0)=2, a(1)=10`
-/

namespace A168381.P16905227806751660185
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 10] fun n a =>
  8 + a (n - 2)

end

end A168381.P16905227806751660185

namespace A168381

/-- `8+a(n-2)` -/
def P16905227806751660185.Spec : Prop :=
  ∀ n, (P16905227806751660185.a n : ℤ) = A168381 (n + 1)

theorem P16905227806751660185.correct : P16905227806751660185.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A168381, Nat.add_sub_cancel, A168381.P16905227806751660185.a, A168381.P16988050873759278270.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A168381, Nat.add_sub_cancel, A168381.P16905227806751660185.a, A168381.P16988050873759278270.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A168381

/-! ## A168381.P2608040506378580048

`and(-5, 4*n+6)`
-/

namespace A168381.P2608040506378580048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-5) (4 * n + 6 : ℤ)

end

end A168381.P2608040506378580048

namespace A168381

/-- `and(-5, 4*n+6)` -/
def P2608040506378580048.Spec : Prop :=
  ∀ n, P2608040506378580048.a n = A168381 (n + 1)

end A168381

/-! ## A168381.P17588659254071624895

`xor(2, ∑[8*n%2])`
-/

namespace A168381.P17588659254071624895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A168381.P17588659254071624895

namespace A168381

/-- `xor(2, ∑[8*n%2])` -/
def P17588659254071624895.Spec : Prop :=
  ∀ n, (P17588659254071624895.a n : ℤ) = A168381 (n + 1)

end A168381

/-! ## A168381.P5246856530020189747

`4*or(1, n+1)-2`
-/

namespace A168381.P5246856530020189747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * Nat.lor 1 (n + 1) : ℤ) - 2

end

end A168381.P5246856530020189747

namespace A168381

/-- `4*or(1, n+1)-2` -/
def P5246856530020189747.Spec : Prop :=
  ∀ n, P5246856530020189747.a n = A168381 (n + 1)

end A168381

/-! ## A168381.P10704047674138930127

`lcm(4, or(1, n+1))-2`
-/

namespace A168381.P10704047674138930127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (Nat.lor 1 (n + 1)) : ℤ) - 2

end

end A168381.P10704047674138930127

namespace A168381

/-- `lcm(4, or(1, n+1))-2` -/
def P10704047674138930127.Spec : Prop :=
  ∀ n, P10704047674138930127.a n = A168381 (n + 1)

end A168381

/-! ## A168381.P15498570698613902267

`xor(6, 4*or(1, n+1))`
-/

namespace A168381.P15498570698613902267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 6 (4 * Nat.lor 1 (n + 1))

end

end A168381.P15498570698613902267

namespace A168381

/-- `xor(6, 4*or(1, n+1))` -/
def P15498570698613902267.Spec : Prop :=
  ∀ n, (P15498570698613902267.a n : ℤ) = A168381 (n + 1)

end A168381

/-! ## A168381.P16970642138086495400

`∑[abs(a(n-2))]` with `a(0)=2, a(1)=8, a(2)=0`
-/

namespace A168381.P16970642138086495400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 8, 0] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168381.P16970642138086495400

namespace A168381

/-- `∑[abs(a(n-2))]` -/
def P16970642138086495400.Spec : Prop :=
  ∀ n, (P16970642138086495400.a n : ℤ) = A168381 (n + 1)

end A168381

/-! ## A168381.P2493154600423413113

`∑[8-a(n-1)]` with `a(0)=2, a(1)=8`
-/

namespace A168381.P2493154600423413113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 8] fun n f1 =>
  8 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168381.P2493154600423413113

namespace A168381

/-- `∑[8-a(n-1)]` -/
def P2493154600423413113.Spec : Prop :=
  ∀ n, P2493154600423413113.a n = A168381 (n + 1)

end A168381

/-! ## A168381.P2157750579353336179

`abs(or(6, -(4*(n+2))))`
-/

namespace A168381.P2157750579353336179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 6 (-(4 * (n + 2) : ℤ))|

end

end A168381.P2157750579353336179

namespace A168381

/-- `abs(or(6, -(4*(n+2))))` -/
def P2157750579353336179.Spec : Prop :=
  ∀ n, P2157750579353336179.a n = A168381 (n + 1)

end A168381

/-! ## A168381.P3081126261547897821

`-or(6, -(4*(n+2)))`
-/

namespace A168381.P3081126261547897821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 6 (-(4 * (n + 2) : ℤ))

end

end A168381.P3081126261547897821

namespace A168381

/-- `-or(6, -(4*(n+2)))` -/
def P3081126261547897821.Spec : Prop :=
  ∀ n, P3081126261547897821.a n = A168381 (n + 1)

end A168381

/-! ## A168381.P18205493509124100778

`2*(Δ[or(1, n²)]+1)`
-/

namespace A168381.P18205493509124100778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1)

end

end A168381.P18205493509124100778

namespace A168381

/-- `2*(Δ[or(1, n²)]+1)` -/
def P18205493509124100778.Spec : Prop :=
  ∀ n, P18205493509124100778.a n = A168381 (n + 1)

end A168381

/-! ## A168381.P8056159643097209094

`∑[∑[ogf((2+8x-2x^2)/(1+x))]]`
-/

namespace A168381.P8056159643097209094
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 8, -2] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168381.P8056159643097209094

namespace A168381

/-- `∑[∑[ogf((2+8x-2x^2)/(1+x))]]` -/
def P8056159643097209094.Spec : Prop :=
  ∀ n, P8056159643097209094.a n = A168381 (n + 1)

end A168381

/-! ## A168381.P6926193413016395510

`2*(3-2*or(1, -n))`
-/

namespace A168381.P6926193413016395510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (3 - 2 * Int.lor 1 (-(n : ℤ)))

end

end A168381.P6926193413016395510

namespace A168381

/-- `2*(3-2*or(1, -n))` -/
def P6926193413016395510.Spec : Prop :=
  ∀ n, P6926193413016395510.a n = A168381 (n + 1)

end A168381

/-! ## A168381.P8768495871321644074

`2*(n-xor(1, -(n+2)))`
-/

namespace A168381.P8768495871321644074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - Int.xor 1 (-(n + 2 : ℤ)))

end

end A168381.P8768495871321644074

namespace A168381

/-- `2*(n-xor(1, -(n+2)))` -/
def P8768495871321644074.Spec : Prop :=
  ∀ n, P8768495871321644074.a n = A168381 (n + 1)

end A168381

/-! ## A168381.P8669709741854338895

`lcm(2, xor(1, -(n+2))-n)`
-/

namespace A168381.P8669709741854338895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (Int.xor 1 (-(n + 2 : ℤ)) - (n : ℤ))

end

end A168381.P8669709741854338895

namespace A168381

/-- `lcm(2, xor(1, -(n+2))-n)` -/
def P8669709741854338895.Spec : Prop :=
  ∀ n, (P8669709741854338895.a n : ℤ) = A168381 (n + 1)

end A168381

/-! ## A168381.P3661142611266847108

`Δ[xor(1, n²)+(n+1)²]`
-/

namespace A168381.P3661142611266847108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n ^ 2) + (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A168381.P3661142611266847108

namespace A168381

/-- `Δ[xor(1, n²)+(n+1)²]` -/
def P3661142611266847108.Spec : Prop :=
  ∀ n, P3661142611266847108.a n = A168381 (n + 1)

end A168381

/-!
# A168382: Least number k having n distinct representations as the sum of a nonzero Fibonacci number and a prime.

The programs for A168382, there is no canonical definition to state claims against.
-/

/-! ## A168382.P4634159335209348139

`A169791(A001096(n)+2)`
-/

namespace A168382.P4634159335209348139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169791 (A001096 n + 2).toNat

end

end A168382.P4634159335209348139

/-! ## A168382.P15802530398999190585

`A169791(xor(8, A055982(n)))`
-/

namespace A168382.P15802530398999190585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169791 (Int.xor 8 (A055982 n)).toNat

end

end A168382.P15802530398999190585

/-!
# A168384: a(n) = 4*n - 2*(-1)^n.

The programs for A168384, the canonical program `A168384.P15740479734118621784` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168384 has offset 1).

The definition of A168384 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(n+1)-2*(-1)^(n+1)` (program `A168384.P15740479734118621784`, by `A168384.P15740479734118621784.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168384.P15522627170792778693

`6+8*floor(n/2)`
-/

namespace A168384.P15522627170792778693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 + 8 * ⌊(n : ℚ) / 2⌋

end

end A168384.P15522627170792778693

namespace A168384

/-- `6+8*floor(n/2)` -/
def P15522627170792778693.Spec : Prop :=
  ∀ n, P15522627170792778693.a n = A168384 (n + 1)

end A168384

/-! ## A168384.P12614732310374563110

`ogf((6+2x^2)/(1-x-x^2+x^3))`
-/

namespace A168384.P12614732310374563110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 0, 2] [1, -1, -1, 1] n

end

end A168384.P12614732310374563110

namespace A168384

/-- `ogf((6+2x^2)/(1-x-x^2+x^3))` -/
def P12614732310374563110.Spec : Prop :=
  ∀ n, P12614732310374563110.a n = A168384 (n + 1)

end A168384

/-! ## A168384.P15740479734118621784

`4*(n+1)-2*(-1)^(n+1)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168384

/-- `4*(n+1)-2*(-1)^(n+1)` -/
def P15740479734118621784.Spec : Prop :=
  ∀ n, P15740479734118621784.a n = A168384 (n + 1)

theorem P15740479734118621784.correct : P15740479734118621784.Spec := by
  intro n
  simp only [A168384, Nat.add_sub_cancel]

end A168384

/-! ## A168384.P15842708094193388405

`or(6, 4*n)`
-/

namespace A168384.P15842708094193388405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 6 (4 * n)

end

end A168384.P15842708094193388405

namespace A168384

/-- `or(6, 4*n)` -/
def P15842708094193388405.Spec : Prop :=
  ∀ n, (P15842708094193388405.a n : ℤ) = A168384 (n + 1)

end A168384

/-! ## A168384.P3479081512368975496

`lcm(4, or(1, n))+2`
-/

namespace A168384.P3479081512368975496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (Nat.lor 1 n) + 2

end

end A168384.P3479081512368975496

namespace A168384

/-- `lcm(4, or(1, n))+2` -/
def P3479081512368975496.Spec : Prop :=
  ∀ n, (P3479081512368975496.a n : ℤ) = A168384 (n + 1)

end A168384

/-! ## A168384.P5269126655630217624

`lcm(2, or(2, Δ[n²]))`
-/

namespace A168384.P5269126655630217624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (Int.lor 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A168384.P5269126655630217624

namespace A168384

/-- `lcm(2, or(2, Δ[n²]))` -/
def P5269126655630217624.Spec : Prop :=
  ∀ n, (P5269126655630217624.a n : ℤ) = A168384 (n + 1)

end A168384

/-! ## A168384.P17571525299188995854

`a(n-2)+8` with `a(0)=6, a(1)=6`
-/

namespace A168384.P17571525299188995854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6, 6] fun n a =>
  a (n - 2) + 8

end

end A168384.P17571525299188995854

namespace A168384

/-- `a(n-2)+8` -/
def P17571525299188995854.Spec : Prop :=
  ∀ n, (P17571525299188995854.a n : ℤ) = A168384 (n + 1)

theorem P17571525299188995854.correct : P17571525299188995854.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A168384, Nat.add_sub_cancel, A168384.P17571525299188995854.a, A168384.P15740479734118621784.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A168384, Nat.add_sub_cancel, A168384.P17571525299188995854.a, A168384.P15740479734118621784.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A168384

/-! ## A168384.P16780181666534471579

`∑[8-a(n-1)]` with `a(0)=6, a(1)=0`
-/

namespace A168384.P16780181666534471579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6, 0] fun n f1 =>
  8 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168384.P16780181666534471579

namespace A168384

/-- `∑[8-a(n-1)]` -/
def P16780181666534471579.Spec : Prop :=
  ∀ n, P16780181666534471579.a n = A168384 (n + 1)

end A168384

/-! ## A168384.P15008131263316949648

`2*(xor(1, n+2)+n)`
-/

namespace A168384.P15008131263316949648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.xor 1 (n + 2) + n)

end

end A168384.P15008131263316949648

namespace A168384

/-- `2*(xor(1, n+2)+n)` -/
def P15008131263316949648.Spec : Prop :=
  ∀ n, (P15008131263316949648.a n : ℤ) = A168384 (n + 1)

end A168384

/-! ## A168384.P1949020657184843240

`∑[∑[ogf((6+2x^2)/(1+x))]]`
-/

namespace A168384.P1949020657184843240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 0, 2] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168384.P1949020657184843240

namespace A168384

/-- `∑[∑[ogf((6+2x^2)/(1+x))]]` -/
def P1949020657184843240.Spec : Prop :=
  ∀ n, P1949020657184843240.a n = A168384 (n + 1)

end A168384

/-! ## A168384.P7592482321786698586

`2*(and(2*n, -3)+3)`
-/

namespace A168384.P7592482321786698586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (Int.land (2 * n : ℤ) (-3) + 3)

end

end A168384.P7592482321786698586

namespace A168384

/-- `2*(and(2*n, -3)+3)` -/
def P7592482321786698586.Spec : Prop :=
  ∀ n, P7592482321786698586.a n = A168384 (n + 1)

end A168384

/-! ## A168384.P15256225095877654051

`2*xor(3, 2*and(n, -2))`
-/

namespace A168384.P15256225095877654051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.xor 3 (2 * Int.land (n : ℤ) (-2))

end

end A168384.P15256225095877654051

namespace A168384

/-- `2*xor(3, 2*and(n, -2))` -/
def P15256225095877654051.Spec : Prop :=
  ∀ n, P15256225095877654051.a n = A168384 (n + 1)

end A168384

/-! ## A168384.P17125664336368977100

`Δ[xor(1, (n+1)²)+n²]`
-/

namespace A168384.P17125664336368977100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((n + 1) ^ 2) + n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A168384.P17125664336368977100

namespace A168384

/-- `Δ[xor(1, (n+1)²)+n²]` -/
def P17125664336368977100.Spec : Prop :=
  ∀ n, P17125664336368977100.a n = A168384 (n + 1)

end A168384

/-! ## A168384.P6040077995118763992

`2*(2*(gcd(2, n)+n)-1)`
-/

namespace A168384.P6040077995118763992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((2 * (Nat.gcd 2 n + n) : ℤ) - 1)

end

end A168384.P6040077995118763992

namespace A168384

/-- `2*(2*(gcd(2, n)+n)-1)` -/
def P6040077995118763992.Spec : Prop :=
  ∀ n, P6040077995118763992.a n = A168384 (n + 1)

end A168384

/-! ## A168384.P15637692624507411768

`2*(2*(n-n%2)+3)`
-/

namespace A168384.P15637692624507411768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * ((n : ℤ) - ((n % 2 : ℕ) : ℤ)) + 3)

end

end A168384.P15637692624507411768

namespace A168384

/-- `2*(2*(n-n%2)+3)` -/
def P15637692624507411768.Spec : Prop :=
  ∀ n, P15637692624507411768.a n = A168384 (n + 1)

end A168384

/-! ## A168384.P2883266884267354420

`2*Δ[∑[2*n]+and(1, n)]`
-/

namespace A168384.P2883266884267354420
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A168384.P2883266884267354420

namespace A168384

/-- `2*Δ[∑[2*n]+and(1, n)]` -/
def P2883266884267354420.Spec : Prop :=
  ∀ n, P2883266884267354420.a n = A168384 (n + 1)

end A168384

/-! ## A168384.P3102231081290437553

`xor(2, 2*n-xor(2*n, -4))`
-/

namespace A168384.P3102231081290437553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 ((2 * n : ℤ) - Int.xor (2 * n : ℤ) (-4))

end

end A168384.P3102231081290437553

namespace A168384

/-- `xor(2, 2*n-xor(2*n, -4))` -/
def P3102231081290437553.Spec : Prop :=
  ∀ n, P3102231081290437553.a n = A168384 (n + 1)

end A168384

/-! ## A168384.P1916564508581081285

`floor(8*n-(a(n-1)-4))` with `a(0)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A168384.P1916564508581081285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  (8 * n : ℤ) - (a (n - 1) - 4)

end

end A168384.P1916564508581081285

namespace A168384

/-- `floor(8*n-(a(n-1)-4))` -/
def P1916564508581081285.Spec : Prop :=
  ∀ n, P1916564508581081285.a n = A168384 (n + 1)

theorem P1916564508581081285.correct : P1916564508581081285.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A168384, Nat.add_sub_cancel, A168384.P1916564508581081285.a, A168384.P15740479734118621784.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A168384, Nat.add_sub_cancel, A168384.P1916564508581081285.a, A168384.P15740479734118621784.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A168384

/-! ## A168384.P16750557189325133007

`2*(runs[val(n+1, 4)]+2*n)`
-/

namespace A168384.P16750557189325133007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n + 2 * n)

end

end A168384.P16750557189325133007

namespace A168384

/-- `2*(runs[val(n+1, 4)]+2*n)` -/
def P16750557189325133007.Spec : Prop :=
  ∀ n, (P16750557189325133007.a n : ℤ) = A168384 (n + 1)

end A168384

/-! ## A168384.P11891702238311455564

`2*(n-2*and(1, n)+n+3)`
-/

namespace A168384.P11891702238311455564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - (2 * Nat.land 1 n : ℤ) + (n + 3 : ℤ))

end

end A168384.P11891702238311455564

namespace A168384

/-- `2*(n-2*and(1, n)+n+3)` -/
def P11891702238311455564.Spec : Prop :=
  ∀ n, P11891702238311455564.a n = A168384 (n + 1)

end A168384

/-!
# A168386: Arithmetic derivative of the double factorial of n.

The programs for A168386, the canonical program `A168386.P1656891563129057732` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168386 has offset 0).

The definition of A168386 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168386.P1656891563129057732

`A003415(A006882(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A168386

/-- `A003415(A006882(n))` -/
def P1656891563129057732.Spec : Prop :=
  ∀ n, P1656891563129057732.a n = A168386 n

theorem P1656891563129057732.correct : P1656891563129057732.Spec := by
  intro n
  simp only [A168386]

end A168386

/-! ## A168386.P8980902630713405928

`A328099(∏[n/a(n-1)])` with `a(0)=1`
-/

namespace A168386.P8980902630713405928
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328099 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A168386.P8980902630713405928

namespace A168386

/-- `A328099(∏[n/a(n-1)])` -/
def P8980902630713405928.Spec : Prop :=
  ∀ n, P8980902630713405928.a n = A168386 n

end A168386

/-! ## A168386.P13280938652008269783

`∑{d}[n*a(n-2), A300251(#)]` with `a(0)=1, a(1)=1`
-/

namespace A168386.P13280938652008269783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  n * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A300251 d

end

end A168386.P13280938652008269783

namespace A168386

/-- `∑{d}[n*a(n-2), A300251(#)]` -/
def P13280938652008269783.Spec : Prop :=
  ∀ n, P13280938652008269783.a n = A168386 n

end A168386

/-! ## A168386.P13241694426658305097

`A328099(A230698(∑[n]))`
-/

namespace A168386.P13241694426658305097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328099 (A230698 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A168386.P13241694426658305097

namespace A168386

/-- `A328099(A230698(∑[n]))` -/
def P13241694426658305097.Spec : Prop :=
  ∀ n, P13241694426658305097.a n = A168386 n

end A168386

/-! ## A168386.P10548643523296879005

`A328099(A128882(n)+1)`
-/

namespace A168386.P10548643523296879005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328099 (A128882 n + 1).toNat

end

end A168386.P10548643523296879005

namespace A168386

/-- `A328099(A128882(n)+1)` -/
def P10548643523296879005.Spec : Prop :=
  ∀ n, P10548643523296879005.a n = A168386 n

end A168386

/-!
# A168388: First number in the n-th row of A172002.

The programs for A168388, the canonical program `A168388.P14046003894199165025` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168388 has offset 1).

The definition of A168388 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168388.P6011712061878194987

`ogf((1+x-2x^2+4x^3+x^4-x^5)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))`
-/

namespace A168388.P6011712061878194987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -2, 4, 1, -1] [1, -2, -1, 4, -1, -2, 1] n

end

end A168388.P6011712061878194987

namespace A168388

/-- `ogf((1+x-2x^2+4x^3+x^4-x^5)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))` -/
def P6011712061878194987.Spec : Prop :=
  ∀ n, P6011712061878194987.a n = A168388 (n + 1)

end A168388

/-! ## A168388.P14046003894199165025

`(n+1)*(3+2*n²+4*n-3*(-1)^n)/12+1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168388

/-- `(n+1)*(3+2*n²+4*n-3*(-1)^n)/12+1` -/
def P14046003894199165025.Spec : Prop :=
  ∀ n, P14046003894199165025.a n = (A168388 (n + 1) : ℚ)

end A168388

/-! ## A168388.P9890750696375797120

`2*∑[∑[n%2]²]+1`
-/

namespace A168388.P9890750696375797120
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A168388.P9890750696375797120

namespace A168388

/-- `2*∑[∑[n%2]²]+1` -/
def P9890750696375797120.Spec : Prop :=
  ∀ n, (P9890750696375797120.a n : ℤ) = A168388 (n + 1)

end A168388

/-! ## A168388.P9927901148873523850

`or(1, a(n-2)+n²)` with `a(0)=1, a(1)=3`
-/

namespace A168388.P9927901148873523850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Nat.lor 1 (a (n - 2) + n ^ 2)

end

end A168388.P9927901148873523850

namespace A168388

/-- `or(1, a(n-2)+n²)` -/
def P9927901148873523850.Spec : Prop :=
  ∀ n, (P9927901148873523850.a n : ℤ) = A168388 (n + 1)

end A168388

/-! ## A168388.P2594811515544137906

`∑[∑[2*n*and(1, n)]]+1`
-/

namespace A168388.P2594811515544137906
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Nat.land 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A168388.P2594811515544137906

namespace A168388

/-- `∑[∑[2*n*and(1, n)]]+1` -/
def P2594811515544137906.Spec : Prop :=
  ∀ n, (P2594811515544137906.a n : ℤ) = A168388 (n + 1)

end A168388

/-! ## A168388.P2376227419414030277

`or(1, ∑[2*∑[1-a(n-1)]²])` with `a(0)=0, a(1)=1`
-/

namespace A168388.P2376227419414030277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A168388.P2376227419414030277

namespace A168388

/-- `or(1, ∑[2*∑[1-a(n-1)]²])` -/
def P2376227419414030277.Spec : Prop :=
  ∀ n, P2376227419414030277.a n = A168388 (n + 1)

end A168388

/-! ## A168388.P9813608084047588428

`xor(1, ∑[2*∑[1-a(n-1)]²])` with `a(0)=0, a(1)=1`
-/

namespace A168388.P9813608084047588428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A168388.P9813608084047588428

namespace A168388

/-- `xor(1, ∑[2*∑[1-a(n-1)]²])` -/
def P9813608084047588428.Spec : Prop :=
  ∀ n, P9813608084047588428.a n = A168388 (n + 1)

end A168388

/-! ## A168388.P9343823636358207861

`∪[A166464(n), A166911(n)]`
-/

namespace A168388.P9343823636358207861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166464 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166911 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A168388.P9343823636358207861

namespace A168388

/-- `∪[A166464(n), A166911(n)]` -/
def P9343823636358207861.Spec : Prop :=
  ∀ n, (P9343823636358207861.a n : ℤ) = A168388 (n + 1)

end A168388

/-! ## A168388.P7369374038193122365

`∑[A065033(n)²*A040000(n)]`
-/

namespace A168388.P7369374038193122365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n ^ 2 * A040000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168388.P7369374038193122365

namespace A168388

/-- `∑[A065033(n)²*A040000(n)]` -/
def P7369374038193122365.Spec : Prop :=
  ∀ n, P7369374038193122365.a n = A168388 (n + 1)

end A168388

/-! ## A168388.P7871479489146724564

`∑[A000982(A131055(n+1))]`
-/

namespace A168388.P7871479489146724564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (A131055 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168388.P7871479489146724564

namespace A168388

/-- `∑[A000982(A131055(n+1))]` -/
def P7871479489146724564.Spec : Prop :=
  ∀ n, P7871479489146724564.a n = A168388 (n + 1)

end A168388

/-! ## A168388.P4137763178009893717

`∑[A004277(∑[n%2]²)]`
-/

namespace A168388.P4137763178009893717
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168388.P4137763178009893717

namespace A168388

/-- `∑[A004277(∑[n%2]²)]` -/
def P4137763178009893717.Spec : Prop :=
  ∀ n, P4137763178009893717.a n = A168388 (n + 1)

end A168388

/-! ## A168388.P418402878122740748

`∑[A004277(A001057(n)²)]`
-/

namespace A168388.P418402878122740748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A001057 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168388.P418402878122740748

namespace A168388

/-- `∑[A004277(A001057(n)²)]` -/
def P418402878122740748.Spec : Prop :=
  ∀ n, P418402878122740748.a n = A168388 (n + 1)

end A168388

/-! ## A168388.P1921369578709447444

`∑[A004277(A110654(n)²)]`
-/

namespace A168388.P1921369578709447444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A110654 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168388.P1921369578709447444

namespace A168388

/-- `∑[A004277(A110654(n)²)]` -/
def P1921369578709447444.Spec : Prop :=
  ∀ n, P1921369578709447444.a n = A168388 (n + 1)

end A168388

/-! ## A168388.P7916245864693707049

`∑[A004277(A130472(n)²)]`
-/

namespace A168388.P7916245864693707049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A130472 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168388.P7916245864693707049

namespace A168388

/-- `∑[A004277(A130472(n)²)]` -/
def P7916245864693707049.Spec : Prop :=
  ∀ n, P7916245864693707049.a n = A168388 (n + 1)

end A168388

/-! ## A168388.P18329827187627330988

`∑[A004277(A008794(n+1))]`
-/

namespace A168388.P18329827187627330988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A008794 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168388.P18329827187627330988

namespace A168388

/-- `∑[A004277(A008794(n+1))]` -/
def P18329827187627330988.Spec : Prop :=
  ∀ n, P18329827187627330988.a n = A168388 (n + 1)

end A168388

/-! ## A168388.P7223340277782892037

`∑[A004277(∑[A000035(n)]²)]`
-/

namespace A168388.P7223340277782892037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168388.P7223340277782892037

namespace A168388

/-- `∑[A004277(∑[A000035(n)]²)]` -/
def P7223340277782892037.Spec : Prop :=
  ∀ n, P7223340277782892037.a n = A168388 (n + 1)

end A168388

/-! ## A168388.P3900968795107753875

`∑[A004277(∑[A181983(n)]²)]`
-/

namespace A168388.P3900968795107753875
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168388.P3900968795107753875

namespace A168388

/-- `∑[A004277(∑[A181983(n)]²)]` -/
def P3900968795107753875.Spec : Prop :=
  ∀ n, P3900968795107753875.a n = A168388 (n + 1)

end A168388

/-! ## A168388.P404999773424068809

`∑[A004277(A004526(n+1)²)]`
-/

namespace A168388.P404999773424068809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A004526 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168388.P404999773424068809

namespace A168388

/-- `∑[A004277(A004526(n+1)²)]` -/
def P404999773424068809.Spec : Prop :=
  ∀ n, P404999773424068809.a n = A168388 (n + 1)

end A168388

/-! ## A168388.P13955499360476848251

`∑[A004277(A110655(2*n)²)]`
-/

namespace A168388.P13955499360476848251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A110655 (2 * n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168388.P13955499360476848251

namespace A168388

/-- `∑[A004277(A110655(2*n)²)]` -/
def P13955499360476848251.Spec : Prop :=
  ∀ n, P13955499360476848251.a n = A168388 (n + 1)

end A168388

/-!
# A168389: a(n) = PrimePi(A147819(n)).

The programs for A168389, there is no canonical definition to state claims against.
-/

/-! ## A168389.P11862248175146694769

`A000720(A147819(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168389.P11862248175146694769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A147819 (n + 1)).toNat

end

end A168389.P11862248175146694769

/-! ## A168389.P11476081364546091575

`ceil(lt[2, A134735(n+1)]/2)`
-/

namespace A168389.P11476081364546091575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℚ) / 2⌉

end

end A168389.P11476081364546091575

/-! ## A168389.P8253127708475121137

`∑[1-char[A049579(n+1)+n]]`
-/

namespace A168389.P8253127708475121137
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049579 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168389.P8253127708475121137

/-! ## A168389.P15827651310147231889

`∑[char[∑[A106002(n+1)+1]]]+1`
-/

namespace A168389.P15827651310147231889
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106002 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A168389.P15827651310147231889

/-! ## A168389.P9809892587162077938

`∑[val(p?[A072491(2*n+1)+1], 2)]`
-/

namespace A168389.P9809892587162077938
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (2 * n + 1) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168389.P9809892587162077938

/-! ## A168389.P17358995672895895925

`∑[char[∑[(2%A001223(n+1))!]]]+1`
-/

namespace A168389.P17358995672895895925
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.tmod 2 (A001223 (n + 1))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A168389.P17358995672895895925

/-! ## A168389.P5750989796520544932

`A175191(a(n-1))+a(n-2)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A168389.P5750989796520544932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A175191 (a (n - 1)).toNat + a (n - 2)

end

end A168389.P5750989796520544932

/-! ## A168389.P16789383691277868290

`A383259(A210939(n+1))+1`
-/

namespace A168389.P16789383691277868290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383259 (A210939 (n + 1)).toNat + 1

end

end A168389.P16789383691277868290

/-! ## A168389.P13717187736852699335

`A000720(A045718(n+2)-1)`
-/

namespace A168389.P13717187736852699335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A045718 (n + 2) - 1).toNat

end

end A168389.P13717187736852699335

/-! ## A168389.P11142205790461098761

`A000720(A210939(n+2)-2)`
-/

namespace A168389.P11142205790461098761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A210939 (n + 2) - 2).toNat

end

end A168389.P11142205790461098761

/-!
# A168390: a(n) = 1 + 8*floor(n/2).

The programs for A168390, the canonical program `A168390.P16066297154442649812` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168390 has offset 1).

The definition of A168390 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+8*floor((n+1)/2)` (program `A168390.P16066297154442649812`, by `A168390.P16066297154442649812.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168390.P11989765344338476436

`ogf((1+8x-x^2)/(1-x-x^2+x^3))`
-/

namespace A168390.P11989765344338476436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8, -1] [1, -1, -1, 1] n

end

end A168390.P11989765344338476436

namespace A168390

/-- `ogf((1+8x-x^2)/(1-x-x^2+x^3))` -/
def P11989765344338476436.Spec : Prop :=
  ∀ n, P11989765344338476436.a n = A168390 (n + 1)

end A168390

/-! ## A168390.P16066297154442649812

`1+8*floor((n+1)/2)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168390

/-- `1+8*floor((n+1)/2)` -/
def P16066297154442649812.Spec : Prop :=
  ∀ n, P16066297154442649812.a n = A168390 (n + 1)

theorem P16066297154442649812.correct : P16066297154442649812.Spec := by
  intro n
  simp only [A168390, Nat.add_sub_cancel]

end A168390

/-! ## A168390.P3844929044137241269

`8+a(n-2)` with `a(0)=1, a(1)=9`
-/

namespace A168390.P3844929044137241269
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n a =>
  8 + a (n - 2)

end

end A168390.P3844929044137241269

namespace A168390

/-- `8+a(n-2)` -/
def P3844929044137241269.Spec : Prop :=
  ∀ n, (P3844929044137241269.a n : ℤ) = A168390 (n + 1)

end A168390

/-! ## A168390.P8206770081453411442

`5-4*or(1, -n)`
-/

namespace A168390.P8206770081453411442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - 4 * Int.lor 1 (-(n : ℤ))

end

end A168390.P8206770081453411442

namespace A168390

/-- `5-4*or(1, -n)` -/
def P8206770081453411442.Spec : Prop :=
  ∀ n, P8206770081453411442.a n = A168390 (n + 1)

end A168390

/-! ## A168390.P13709189681073906325

`and(4*n+5, -5)`
-/

namespace A168390.P13709189681073906325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (4 * n + 5 : ℤ) (-5)

end

end A168390.P13709189681073906325

namespace A168390

/-- `and(4*n+5, -5)` -/
def P13709189681073906325.Spec : Prop :=
  ∀ n, P13709189681073906325.a n = A168390 (n + 1)

end A168390

/-! ## A168390.P10475796582520998640

`xor(1, ∑[8*n%2])`
-/

namespace A168390.P10475796582520998640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A168390.P10475796582520998640

namespace A168390

/-- `xor(1, ∑[8*n%2])` -/
def P10475796582520998640.Spec : Prop :=
  ∀ n, (P10475796582520998640.a n : ℤ) = A168390 (n + 1)

end A168390

/-! ## A168390.P4050830832679133750

`∑[Δ[xor(1, n)]²]-n`
-/

namespace A168390.P4050830832679133750
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A168390.P4050830832679133750

namespace A168390

/-- `∑[Δ[xor(1, n)]²]-n` -/
def P4050830832679133750.Spec : Prop :=
  ∀ n, P4050830832679133750.a n = A168390 (n + 1)

end A168390

/-! ## A168390.P17151090601164634943

`Δ[xor(1, n*Δ[n²])]`
-/

namespace A168390.P17151090601164634943
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168390.P17151090601164634943

namespace A168390

/-- `Δ[xor(1, n*Δ[n²])]` -/
def P17151090601164634943.Spec : Prop :=
  ∀ n, P17151090601164634943.a n = A168390 (n + 1)

end A168390

/-! ## A168390.P4953978883335297678

`4*or(1, n+1)-3`
-/

namespace A168390.P4953978883335297678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * Nat.lor 1 (n + 1) : ℤ) - 3

end

end A168390.P4953978883335297678

namespace A168390

/-- `4*or(1, n+1)-3` -/
def P4953978883335297678.Spec : Prop :=
  ∀ n, P4953978883335297678.a n = A168390 (n + 1)

end A168390

/-! ## A168390.P10113082634832805321

`lcm(4, or(1, n+1))-3`
-/

namespace A168390.P10113082634832805321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (Nat.lor 1 (n + 1)) : ℤ) - 3

end

end A168390.P10113082634832805321

namespace A168390

/-- `lcm(4, or(1, n+1))-3` -/
def P10113082634832805321.Spec : Prop :=
  ∀ n, P10113082634832805321.a n = A168390 (n + 1)

end A168390

/-! ## A168390.P3128317240592481894

`xor(5, 4*or(1, n+1))`
-/

namespace A168390.P3128317240592481894
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 5 (4 * Nat.lor 1 (n + 1))

end

end A168390.P3128317240592481894

namespace A168390

/-- `xor(5, 4*or(1, n+1))` -/
def P3128317240592481894.Spec : Prop :=
  ∀ n, (P3128317240592481894.a n : ℤ) = A168390 (n + 1)

end A168390

/-! ## A168390.P14574001486595137260

`∑[abs(a(n-2))]` with `a(0)=1, a(1)=8, a(2)=0`
-/

namespace A168390.P14574001486595137260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 8, 0] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168390.P14574001486595137260

namespace A168390

/-- `∑[abs(a(n-2))]` -/
def P14574001486595137260.Spec : Prop :=
  ∀ n, (P14574001486595137260.a n : ℤ) = A168390 (n + 1)

end A168390

/-! ## A168390.P3403986571310272046

`∑[8-a(n-1)]` with `a(0)=1, a(1)=8`
-/

namespace A168390.P3403986571310272046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n f1 =>
  8 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168390.P3403986571310272046

namespace A168390

/-- `∑[8-a(n-1)]` -/
def P3403986571310272046.Spec : Prop :=
  ∀ n, P3403986571310272046.a n = A168390 (n + 1)

end A168390

/-! ## A168390.P6512521224187474272

`abs(or(7, -(4*(n+2))))`
-/

namespace A168390.P6512521224187474272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 7 (-(4 * (n + 2) : ℤ))|

end

end A168390.P6512521224187474272

namespace A168390

/-- `abs(or(7, -(4*(n+2))))` -/
def P6512521224187474272.Spec : Prop :=
  ∀ n, P6512521224187474272.a n = A168390 (n + 1)

end A168390

/-! ## A168390.P358895376177405900

`-or(7, -(4*(n+2)))`
-/

namespace A168390.P358895376177405900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 7 (-(4 * (n + 2) : ℤ))

end

end A168390.P358895376177405900

namespace A168390

/-- `-or(7, -(4*(n+2)))` -/
def P358895376177405900.Spec : Prop :=
  ∀ n, P358895376177405900.a n = A168390 (n + 1)

end A168390

/-! ## A168390.P11317842042025595820

`filter[or(1, n+1), #%8]`
-/

namespace A168390.P11317842042025595820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => f1 j % 8 = 1) n)

end

end A168390.P11317842042025595820

namespace A168390

/-- `filter[or(1, n+1), #%8]` -/
def P11317842042025595820.Spec : Prop :=
  ∀ n, (P11317842042025595820.a n : ℤ) = A168390 (n + 1)

end A168390

/-! ## A168390.P14544510228038556136

`∑[∑[ogf((1+8x-x^2)/(1+x))]]`
-/

namespace A168390.P14544510228038556136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8, -1] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168390.P14544510228038556136

namespace A168390

/-- `∑[∑[ogf((1+8x-x^2)/(1+x))]]` -/
def P14544510228038556136.Spec : Prop :=
  ∀ n, P14544510228038556136.a n = A168390 (n + 1)

end A168390

/-! ## A168390.P7757702655378060094

`ceil((2*n+1)²/or(1, n))`
-/

namespace A168390.P7757702655378060094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n + 1) ^ 2 : ℚ) / (Nat.lor 1 n : ℚ)⌉

end

end A168390.P7757702655378060094

namespace A168390

/-- `ceil((2*n+1)²/or(1, n))` -/
def P7757702655378060094.Spec : Prop :=
  ∀ n, P7757702655378060094.a n = A168390 (n + 1)

end A168390

/-! ## A168390.P16323300951279850344

`floor(8*n-(a(n-1)-2))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A168390.P16323300951279850344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (8 * n : ℤ) - (a (n - 1) - 2)

end

end A168390.P16323300951279850344

namespace A168390

/-- `floor(8*n-(a(n-1)-2))` -/
def P16323300951279850344.Spec : Prop :=
  ∀ n, P16323300951279850344.a n = A168390 (n + 1)

end A168390

/-! ## A168390.P1638929740273844537

`∑[A140976(a(n-1))]` with `a(0)=1`
-/

namespace A168390.P1638929740273844537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A140976 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168390.P1638929740273844537

namespace A168390

/-- `∑[A140976(a(n-1))]` -/
def P1638929740273844537.Spec : Prop :=
  ∀ n, P1638929740273844537.a n = A168390 (n + 1)

end A168390

/-!
# A168392: a(n) = 5 + 8*floor((n-1)/2).

The programs for A168392, the canonical program `A168392.P5104341213363834872` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168392 has offset 1).

The definition of A168392 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5+8*floor(n/2)` (program `A168392.P5104341213363834872`, by `A168392.P5104341213363834872.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168392.P5104341213363834872

`5+8*floor(n/2)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168392

/-- `5+8*floor(n/2)` -/
def P5104341213363834872.Spec : Prop :=
  ∀ n, P5104341213363834872.a n = A168392 (n + 1)

theorem P5104341213363834872.correct : P5104341213363834872.Spec := by
  intro n
  simp only [A168392, Nat.add_sub_cancel]

end A168392

/-! ## A168392.P3377170332836803926

`ogf((5+3x^2)/(1-x-x^2+x^3))`
-/

namespace A168392.P3377170332836803926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 0, 3] [1, -1, -1, 1] n

end

end A168392.P3377170332836803926

namespace A168392

/-- `ogf((5+3x^2)/(1-x-x^2+x^3))` -/
def P3377170332836803926.Spec : Prop :=
  ∀ n, P3377170332836803926.a n = A168392 (n + 1)

end A168392

/-! ## A168392.P10449624296861881747

`or(5, 4*n)`
-/

namespace A168392.P10449624296861881747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 (4 * n)

end

end A168392.P10449624296861881747

namespace A168392

/-- `or(5, 4*n)` -/
def P10449624296861881747.Spec : Prop :=
  ∀ n, (P10449624296861881747.a n : ℤ) = A168392 (n + 1)

end A168392

/-! ## A168392.P15438878567448925807

`lcm(4, or(1, n))+1`
-/

namespace A168392.P15438878567448925807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (Nat.lor 1 n) + 1

end

end A168392.P15438878567448925807

namespace A168392

/-- `lcm(4, or(1, n))+1` -/
def P15438878567448925807.Spec : Prop :=
  ∀ n, (P15438878567448925807.a n : ℤ) = A168392 (n + 1)

end A168392

/-! ## A168392.P12805855874369154984

`filter[or(4, n), #%4]`
-/

namespace A168392.P12805855874369154984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 4 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => f1 j % 4 = 1) n)

end

end A168392.P12805855874369154984

namespace A168392

/-- `filter[or(4, n), #%4]` -/
def P12805855874369154984.Spec : Prop :=
  ∀ n, (P12805855874369154984.a n : ℤ) = A168392 (n + 1)

end A168392

/-! ## A168392.P3159334272955042502

`a(n-2)+8` with `a(0)=5, a(1)=5`
-/

namespace A168392.P3159334272955042502
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 5] fun n a =>
  a (n - 2) + 8

end

end A168392.P3159334272955042502

namespace A168392

/-- `a(n-2)+8` -/
def P3159334272955042502.Spec : Prop :=
  ∀ n, (P3159334272955042502.a n : ℤ) = A168392 (n + 1)

end A168392

/-! ## A168392.P16803299188933176594

`4*and(n, -2)+5`
-/

namespace A168392.P16803299188933176594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * Int.land (n : ℤ) (-2) + 5

end

end A168392.P16803299188933176594

namespace A168392

/-- `4*and(n, -2)+5` -/
def P16803299188933176594.Spec : Prop :=
  ∀ n, P16803299188933176594.a n = A168392 (n + 1)

end A168392

/-! ## A168392.P6610188575257173967

`xor(5, 4*and(n, -2))`
-/

namespace A168392.P6610188575257173967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 (4 * Int.land (n : ℤ) (-2))

end

end A168392.P6610188575257173967

namespace A168392

/-- `xor(5, 4*and(n, -2))` -/
def P6610188575257173967.Spec : Prop :=
  ∀ n, P6610188575257173967.a n = A168392 (n + 1)

end A168392

/-! ## A168392.P15166567585554886624

`∑[8-a(n-1)]` with `a(0)=5, a(1)=0`
-/

namespace A168392.P15166567585554886624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 0] fun n f1 =>
  8 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168392.P15166567585554886624

namespace A168392

/-- `∑[8-a(n-1)]` -/
def P15166567585554886624.Spec : Prop :=
  ∀ n, P15166567585554886624.a n = A168392 (n + 1)

end A168392

/-! ## A168392.P17263721650699392596

`∑[∑[ogf((5+3x^2)/(1+x))]]`
-/

namespace A168392.P17263721650699392596
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 0, 3] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168392.P17263721650699392596

namespace A168392

/-- `∑[∑[ogf((5+3x^2)/(1+x))]]` -/
def P17263721650699392596.Spec : Prop :=
  ∀ n, P17263721650699392596.a n = A168392 (n + 1)

end A168392

/-! ## A168392.P16771219764317862983

`4*(gcd(2, n)-3/4+n)`
-/

namespace A168392.P16771219764317862983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((Nat.gcd 2 n : ℚ) - (3 : ℚ) / 4 + (n : ℚ))

end

end A168392.P16771219764317862983

namespace A168392

/-- `4*(gcd(2, n)-3/4+n)` -/
def P16771219764317862983.Spec : Prop :=
  ∀ n, P16771219764317862983.a n = (A168392 (n + 1) : ℚ)

end A168392

/-! ## A168392.P6898734779439693321

`xor(1, 2*n-xor(2*n, -4))`
-/

namespace A168392.P6898734779439693321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((2 * n : ℤ) - Int.xor (2 * n : ℤ) (-4))

end

end A168392.P6898734779439693321

namespace A168392

/-- `xor(1, 2*n-xor(2*n, -4))` -/
def P6898734779439693321.Spec : Prop :=
  ∀ n, P6898734779439693321.a n = A168392 (n + 1)

end A168392

/-! ## A168392.P13189253409927523493

`floor(8*n-(a(n-1)-2))` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A168392.P13189253409927523493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  (8 * n : ℤ) - (a (n - 1) - 2)

end

end A168392.P13189253409927523493

namespace A168392

/-- `floor(8*n-(a(n-1)-2))` -/
def P13189253409927523493.Spec : Prop :=
  ∀ n, P13189253409927523493.a n = A168392 (n + 1)

end A168392

/-! ## A168392.P4516067433206622281

`abs(or(5, (n+1)²-(1-n)²))`
-/

namespace A168392.P4516067433206622281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 5 (((n + 1) ^ 2 : ℤ) - (1 - (n : ℤ)) ^ 2)|

end

end A168392.P4516067433206622281

namespace A168392

/-- `abs(or(5, (n+1)²-(1-n)²))` -/
def P4516067433206622281.Spec : Prop :=
  ∀ n, P4516067433206622281.a n = A168392 (n + 1)

end A168392

/-! ## A168392.P17706745515501418940

`Δ[2*and(1, n)+C(2*n+1, 2)]`
-/

namespace A168392.P17706745515501418940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land 1 n + Nat.choose (2 * n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A168392.P17706745515501418940

namespace A168392

/-- `Δ[2*and(1, n)+C(2*n+1, 2)]` -/
def P17706745515501418940.Spec : Prop :=
  ∀ n, P17706745515501418940.a n = A168392 (n + 1)

end A168392

/-! ## A168392.P6693092799745984167

`Δ[n*(2*n+1)-gcd(4, 2*n)]`
-/

namespace A168392.P6693092799745984167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (2 * n + 1) : ℤ) - (Nat.gcd 4 (2 * n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168392.P6693092799745984167

namespace A168392

/-- `Δ[n*(2*n+1)-gcd(4, 2*n)]` -/
def P6693092799745984167.Spec : Prop :=
  ∀ n, P6693092799745984167.a n = A168392 (n + 1)

end A168392

/-! ## A168392.P1860690778040773579

`Δ[2*and(1, n)+n*(2*n+1)]`
-/

namespace A168392.P1860690778040773579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land 1 n + n * (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A168392.P1860690778040773579

namespace A168392

/-- `Δ[2*and(1, n)+n*(2*n+1)]` -/
def P1860690778040773579.Spec : Prop :=
  ∀ n, P1860690778040773579.a n = A168392 (n + 1)

end A168392

/-! ## A168392.P5303904626218403518

`A004766(or(1, n))`
-/

namespace A168392.P5303904626218403518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (Nat.lor 1 n)

end

end A168392.P5303904626218403518

namespace A168392

/-- `A004766(or(1, n))` -/
def P5303904626218403518.Spec : Prop :=
  ∀ n, P5303904626218403518.a n = A168392 (n + 1)

end A168392

/-! ## A168392.P6790147561970395454

`A016813(or(1, n))`
-/

namespace A168392.P6790147561970395454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (Nat.lor 1 n)

end

end A168392.P6790147561970395454

namespace A168392

/-- `A016813(or(1, n))` -/
def P6790147561970395454.Spec : Prop :=
  ∀ n, P6790147561970395454.a n = A168392 (n + 1)

end A168392

/-! ## A168392.P4085821086960780073

`A047436(or(1, n))`
-/

namespace A168392.P4085821086960780073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047436 (Nat.lor 1 n)

end

end A168392.P4085821086960780073

namespace A168392

/-- `A047436(or(1, n))` -/
def P4085821086960780073.Spec : Prop :=
  ∀ n, P4085821086960780073.a n = A168392 (n + 1)

end A168392

/-!
# A168393: Moebius function of interprimes (A024675).

The programs for A168393, there is no canonical definition to state claims against.
-/

/-! ## A168393.P1278967690464781374

`A008683((p?[2*n+1]+7)/2+(p?[2*n+5]-7)/2)`
-/

namespace A168393.P1278967690464781374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 7 : ℚ) / 2 + ((f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 7 : ℚ) / 2)).toNat

end

end A168393.P1278967690464781374

/-! ## A168393.P5026955887969645749

`A008683(A024675(n+1))`
-/

namespace A168393.P5026955887969645749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A024675 (n + 1)).toNat

end

end A168393.P5026955887969645749

/-! ## A168393.P6684183988870049491

`A008683(A162735(n+2))`
-/

namespace A168393.P6684183988870049491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A162735 (n + 2)).toNat

end

end A168393.P6684183988870049491

/-! ## A168393.P2727456884592905638

`A008683(Δ[A073612(n+2)])`
-/

namespace A168393.P2727456884592905638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073612 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (n + 1) - f1 n).toNat

end

end A168393.P2727456884592905638

/-! ## A168393.P1217681379946837308

`A008683(lt[1, Δ[A051697(n)]])`
-/

namespace A168393.P1217681379946837308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A168393.P1217681379946837308

/-! ## A168393.P5514317745404305916

`A008683(A078444(n+2)+1)`
-/

namespace A168393.P5514317745404305916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A078444 (n + 2) + 1).toNat

end

end A168393.P5514317745404305916

/-! ## A168393.P11221239149193694028

`A181434(A078444(n+2)+1)`
-/

namespace A168393.P11221239149193694028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181434 (A078444 (n + 2) + 1).toNat

end

end A168393.P11221239149193694028

/-! ## A168393.P6878687541896306160

`A008683(A001043(n+2)/2)`
-/

namespace A168393.P6878687541896306160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((A001043 (n + 2) : ℚ) / 2)).toNat

end

end A168393.P6878687541896306160

/-! ## A168393.P11361934445986960957

`A008683(A011974(n+3)/2)`
-/

namespace A168393.P11361934445986960957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((A011974 (n + 3) : ℚ) / 2)).toNat

end

end A168393.P11361934445986960957

/-! ## A168393.P16789382484936703466

`A008683(floor(sqrt(A075892(n+2))))`
-/

namespace A168393.P16789382484936703466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.sqrt (A075892 (n + 2))).toNat

end

end A168393.P16789382484936703466

/-!
# A168394: Moebius function of even interprimes (A072568).

The programs for A168394, there is no canonical definition to state claims against.
-/

/-! ## A168394.P14093920087087441535

`A008683(A072568(n+2))`
-/

namespace A168394.P14093920087087441535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A072568 (n + 2)).toNat

end

end A168394.P14093920087087441535

/-! ## A168394.P3934156065634607183

`A099991(A390789(n+2))`
-/

namespace A168394.P3934156065634607183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099991 (A390789 (n + 2)).toNat

end

end A168394.P3934156065634607183

/-! ## A168394.P9387070350919577395

`A008683(∩[2*n, A145025(n+2)])`
-/

namespace A168394.P9387070350919577395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145025 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A168394.P9387070350919577395

/-! ## A168394.P10494433026712309372

`A008683(∩[A024675(n+2), A004271(n)])`
-/

namespace A168394.P10494433026712309372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A168394.P10494433026712309372

/-! ## A168394.P5297097474358889361

`A008683(∩[A024675(n+2), A004272(n)])`
-/

namespace A168394.P5297097474358889361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A168394.P5297097474358889361

/-! ## A168394.P1725613206889170317

`A008683(∩[A024675(n+2), A004275(n)])`
-/

namespace A168394.P1725613206889170317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A168394.P1725613206889170317

/-! ## A168394.P4123990992867134785

`A008683(∩[A024675(n+2), A004277(n)])`
-/

namespace A168394.P4123990992867134785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A168394.P4123990992867134785

/-! ## A168394.P129589208830682071

`A008683(∩[A103517(n), A024675(n+2)])`
-/

namespace A168394.P129589208830682071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A168394.P129589208830682071

/-! ## A168394.P10709206817319872254

`A008683(∩[A106092(n+1), A024675(n+2)])`
-/

namespace A168394.P10709206817319872254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A168394.P10709206817319872254

/-! ## A168394.P12798316032481000819

`A008683(∪[A072571(n+1), A072570(n+2)])`
-/

namespace A168394.P12798316032481000819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072570 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A168394.P12798316032481000819

/-!
# A168395: Moebius function of odd interprimes (A072569).

The programs for A168395, there is no canonical definition to state claims against.
-/

/-! ## A168395.P5030743706848307747

`A008683(A072569(n+1))`
-/

namespace A168395.P5030743706848307747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A072569 (n + 1)).toNat

end

end A168395.P5030743706848307747

/-! ## A168395.P10186282580163309928

`A087003(A072569(1+n))`
-/

namespace A168395.P10186282580163309928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087003 (A072569 (1 + n)).toNat

end

end A168395.P10186282580163309928

/-! ## A168395.P1716648392039690146

`A067856(2*A072569(n+1))`
-/

namespace A168395.P1716648392039690146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067856 (2 * A072569 (n + 1)).toNat

end

end A168395.P1716648392039690146

/-! ## A168395.P4336323568608433240

`A085384(2*A072569(n+1))`
-/

namespace A168395.P4336323568608433240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085384 (2 * A072569 (n + 1)).toNat

end

end A168395.P4336323568608433240

/-! ## A168395.P13563203806635767434

`A086831(2*A072569(n+1))`
-/

namespace A168395.P13563203806635767434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086831 (2 * A072569 (n + 1)).toNat

end

end A168395.P13563203806635767434

/-! ## A168395.P4806768576838304524

`A157657(2*A072569(n+1))`
-/

namespace A168395.P4806768576838304524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157657 (2 * A072569 (n + 1)).toNat

end

end A168395.P4806768576838304524

/-! ## A168395.P1143183711473575442

`A157658(2*A072569(n+1))`
-/

namespace A168395.P1143183711473575442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157658 (2 * A072569 (n + 1)).toNat

end

end A168395.P1143183711473575442

/-! ## A168395.P7057972886500310990

`A092673(4*A072569(n+1))`
-/

namespace A168395.P7057972886500310990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092673 (4 * A072569 (n + 1)).toNat

end

end A168395.P7057972886500310990

/-! ## A168395.P3070205423126792249

`A157658(lcm(2, A072569(n+1)))`
-/

namespace A168395.P3070205423126792249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157658 (Int.lcm 2 (A072569 (n + 1)))

end

end A168395.P3070205423126792249

/-! ## A168395.P498898374222678952

`A067856(or(1, A072569(n+1)))`
-/

namespace A168395.P498898374222678952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067856 (Int.lor 1 (A072569 (n + 1))).toNat

end

end A168395.P498898374222678952

/-!
# A168396: Triangle, T(n,k) = number of compositions a(1),...,a(j) of n with a(1) = k, such that a(i+1) <= a(i) + 1 for 1 <= i < j.

The programs for A168396, there is no canonical definition to state claims against.
-/

/-! ## A168396.P15611567131727658378

`A196238(A106240(n+1))`
-/

namespace A168396.P15611567131727658378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196238 (A106240 (n + 1)).toNat

end

end A168396.P15611567131727658378

/-! ## A168396.P2699827071513471261

`A339276(A144886(n+1))`
-/

namespace A168396.P2699827071513471261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339276 (A144886 (n + 1)).toNat

end

end A168396.P2699827071513471261

/-! ## A168396.P5548512732107054376

`A387704(A263864(n+1))`
-/

namespace A168396.P5548512732107054376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387704 (A263864 (n + 1)).toNat

end

end A168396.P5548512732107054376

/-! ## A168396.P7398366241913381024

`A097688(A273719(n+2))`
-/

namespace A168396.P7398366241913381024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097688 (A273719 (n + 2)).toNat

end

end A168396.P7398366241913381024

/-! ## A168396.P16903594310417940920

`A049286(n+1)-A010051(A022177(n))`
-/

namespace A168396.P16903594310417940920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (n + 1) - A010051 (A022177 n).toNat

end

end A168396.P16903594310417940920

/-!
# A168397: a(n) = 8 * floor(n/2).

The programs for A168397, the canonical program `A168397.P9349399315874065278` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168397 has offset 1).

The definition of A168397 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*floor((n+1)/2)` (program `A168397.P9349399315874065278`, by `A168397.P9349399315874065278.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168397.P9349399315874065278

`8*floor((n+1)/2)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168397

/-- `8*floor((n+1)/2)` -/
def P9349399315874065278.Spec : Prop :=
  ∀ n, P9349399315874065278.a n = A168397 (n + 1)

theorem P9349399315874065278.correct : P9349399315874065278.Spec := by
  intro n
  simp only [A168397, Nat.add_sub_cancel]

end A168397

/-! ## A168397.P18089812252629721639

`ogf(8x/(1-x-x^2+x^3))`
-/

namespace A168397.P18089812252629721639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8] [1, -1, -1, 1] n

end

end A168397.P18089812252629721639

namespace A168397

/-- `ogf(8x/(1-x-x^2+x^3))` -/
def P18089812252629721639.Spec : Prop :=
  ∀ n, P18089812252629721639.a n = A168397 (n + 1)

end A168397

/-! ## A168397.P12316847365476357014

`8*n-a(n-1)` with `a(0)=0`
-/

namespace A168397.P12316847365476357014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (8 * n : ℤ) - a (n - 1)

end

end A168397.P12316847365476357014

namespace A168397

/-- `8*n-a(n-1)` -/
def P12316847365476357014.Spec : Prop :=
  ∀ n, P12316847365476357014.a n = A168397 (n + 1)

end A168397

/-! ## A168397.P7770905461330075981

`∑[8*n%2]`
-/

namespace A168397.P7770905461330075981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168397.P7770905461330075981

namespace A168397

/-- `∑[8*n%2]` -/
def P7770905461330075981.Spec : Prop :=
  ∀ n, (P7770905461330075981.a n : ℤ) = A168397 (n + 1)

end A168397

/-! ## A168397.P1487862285042724958

`∑[8*and(1, n)]`
-/

namespace A168397.P1487862285042724958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168397.P1487862285042724958

namespace A168397

/-- `∑[8*and(1, n)]` -/
def P1487862285042724958.Spec : Prop :=
  ∀ n, (P1487862285042724958.a n : ℤ) = A168397 (n + 1)

end A168397

/-! ## A168397.P13277088339652939696

`∑[lcm(8, and(1, n))]`
-/

namespace A168397.P13277088339652939696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 8 (Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168397.P13277088339652939696

namespace A168397

/-- `∑[lcm(8, and(1, n))]` -/
def P13277088339652939696.Spec : Prop :=
  ∀ n, (P13277088339652939696.a n : ℤ) = A168397 (n + 1)

end A168397

/-! ## A168397.P12432987694715372571

`∑[and(8, (-1)^n)]`
-/

namespace A168397.P12432987694715372571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 8 ((-1) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168397.P12432987694715372571

namespace A168397

/-- `∑[and(8, (-1)^n)]` -/
def P12432987694715372571.Spec : Prop :=
  ∀ n, P12432987694715372571.a n = A168397 (n + 1)

end A168397

/-! ## A168397.P12570306824852248845

`4*(and(1, n)+n)`
-/

namespace A168397.P12570306824852248845
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (Nat.land 1 n + n)

end

end A168397.P12570306824852248845

namespace A168397

/-- `4*(and(1, n)+n)` -/
def P12570306824852248845.Spec : Prop :=
  ∀ n, (P12570306824852248845.a n : ℤ) = A168397 (n + 1)

end A168397

/-! ## A168397.P5807283633929957450

`Δ[2*or(1, n²)]`
-/

namespace A168397.P5807283633929957450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lor 1 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A168397.P5807283633929957450

namespace A168397

/-- `Δ[2*or(1, n²)]` -/
def P5807283633929957450.Spec : Prop :=
  ∀ n, P5807283633929957450.a n = A168397 (n + 1)

end A168397

/-! ## A168397.P1374544079948353223

`∑[Δ[or(1, n)]^3]`
-/

namespace A168397.P1374544079948353223
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168397.P1374544079948353223

namespace A168397

/-- `∑[Δ[or(1, n)]^3]` -/
def P1374544079948353223.Spec : Prop :=
  ∀ n, P1374544079948353223.a n = A168397 (n + 1)

end A168397

/-! ## A168397.P15975288852185815952

`a(n-2)+8` with `a(0)=0, a(1)=8`
-/

namespace A168397.P15975288852185815952
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 8] fun n a =>
  a (n - 2) + 8

end

end A168397.P15975288852185815952

namespace A168397

/-- `a(n-2)+8` -/
def P15975288852185815952.Spec : Prop :=
  ∀ n, (P15975288852185815952.a n : ℤ) = A168397 (n + 1)

end A168397

/-! ## A168397.P6806625510001504266

`4-4*or(1, -n)`
-/

namespace A168397.P6806625510001504266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - 4 * Int.lor 1 (-(n : ℤ))

end

end A168397.P6806625510001504266

namespace A168397

/-- `4-4*or(1, -n)` -/
def P6806625510001504266.Spec : Prop :=
  ∀ n, P6806625510001504266.a n = A168397 (n + 1)

end A168397

/-! ## A168397.P1400280733882173422

`∑[8*(2-gcd(2, n))]`
-/

namespace A168397.P1400280733882173422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (2 - (Nat.gcd 2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168397.P1400280733882173422

namespace A168397

/-- `∑[8*(2-gcd(2, n))]` -/
def P1400280733882173422.Spec : Prop :=
  ∀ n, P1400280733882173422.a n = A168397 (n + 1)

end A168397

/-! ## A168397.P6175164467418975700

`∑[8-a(n-1)]` with `a(0)=0`
-/

namespace A168397.P6175164467418975700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  8 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168397.P6175164467418975700

namespace A168397

/-- `∑[8-a(n-1)]` -/
def P6175164467418975700.Spec : Prop :=
  ∀ n, P6175164467418975700.a n = A168397 (n + 1)

end A168397

/-! ## A168397.P18338756208513725825

`Δ[or(2, n*2*n)]`
-/

namespace A168397.P18338756208513725825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (n * (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A168397.P18338756208513725825

namespace A168397

/-- `Δ[or(2, n*2*n)]` -/
def P18338756208513725825.Spec : Prop :=
  ∀ n, P18338756208513725825.a n = A168397 (n + 1)

end A168397

/-! ## A168397.P17555718619842271466

`Δ[2*and(-2, n²)]`
-/

namespace A168397.P17555718619842271466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.land (-2) (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168397.P17555718619842271466

namespace A168397

/-- `Δ[2*and(-2, n²)]` -/
def P17555718619842271466.Spec : Prop :=
  ∀ n, P17555718619842271466.a n = A168397 (n + 1)

end A168397

/-! ## A168397.P7340021760776620148

`∑[Δ[xor(1, n)]²-1]`
-/

namespace A168397.P7340021760776620148
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168397.P7340021760776620148

namespace A168397

/-- `∑[Δ[xor(1, n)]²-1]` -/
def P7340021760776620148.Spec : Prop :=
  ∀ n, P7340021760776620148.a n = A168397 (n + 1)

end A168397

/-! ## A168397.P17856795029819931049

`∑[xor(1, Δ[xor(1, n)]²)]`
-/

namespace A168397.P17856795029819931049
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168397.P17856795029819931049

namespace A168397

/-- `∑[xor(1, Δ[xor(1, n)]²)]` -/
def P17856795029819931049.Spec : Prop :=
  ∀ n, P17856795029819931049.a n = A168397 (n + 1)

end A168397

/-! ## A168397.P5137097313065022237

`Δ[xor(1, n²)+n²]`
-/

namespace A168397.P5137097313065022237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n ^ 2) + n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A168397.P5137097313065022237

namespace A168397

/-- `Δ[xor(1, n²)+n²]` -/
def P5137097313065022237.Spec : Prop :=
  ∀ n, P5137097313065022237.a n = A168397 (n + 1)

end A168397

/-! ## A168397.P2974758653741005315

`∑[∑[ogf(8x/(1+x))]]`
-/

namespace A168397.P2974758653741005315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168397.P2974758653741005315

namespace A168397

/-- `∑[∑[ogf(8x/(1+x))]]` -/
def P2974758653741005315.Spec : Prop :=
  ∀ n, P2974758653741005315.a n = A168397 (n + 1)

end A168397

/-!
# A168398: a(n) = 4 + 8*floor((n-1)/2).

The programs for A168398, the canonical program `A168398.P703617105454378462` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168398 has offset 1).

The definition of A168398 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4+8*floor(n/2)` (program `A168398.P703617105454378462`, by `A168398.P703617105454378462.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168398.P703617105454378462

`4+8*floor(n/2)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168398

/-- `4+8*floor(n/2)` -/
def P703617105454378462.Spec : Prop :=
  ∀ n, P703617105454378462.a n = A168398 (n + 1)

theorem P703617105454378462.correct : P703617105454378462.Spec := by
  intro n
  simp only [A168398, Nat.add_sub_cancel]

end A168398

/-! ## A168398.P15287127310008158492

`ogf((4+4x^2)/(1-x-x^2+x^3))`
-/

namespace A168398.P15287127310008158492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 0, 4] [1, -1, -1, 1] n

end

end A168398.P15287127310008158492

namespace A168398

/-- `ogf((4+4x^2)/(1-x-x^2+x^3))` -/
def P15287127310008158492.Spec : Prop :=
  ∀ n, P15287127310008158492.a n = A168398 (n + 1)

end A168398

/-! ## A168398.P17542513556926848583

`4*A109613(n)`
-/

namespace A168398.P17542513556926848583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A109613 n

end

end A168398.P17542513556926848583

namespace A168398

/-- `4*A109613(n)` -/
def P17542513556926848583.Spec : Prop :=
  ∀ n, P17542513556926848583.a n = A168398 (n + 1)

theorem P17542513556926848583.correct : P17542513556926848583.Spec := by
  intro n
  simp only [A168398, Nat.add_sub_cancel, A168398.P17542513556926848583.a, A168398.P703617105454378462.a, A109613, A109613.P11033607296544520888.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A168398

/-! ## A168398.P7911254058716181071

`4*or(1, n)`
-/

namespace A168398.P7911254058716181071
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.lor 1 n

end

end A168398.P7911254058716181071

namespace A168398

/-- `4*or(1, n)` -/
def P7911254058716181071.Spec : Prop :=
  ∀ n, (P7911254058716181071.a n : ℤ) = A168398 (n + 1)

end A168398

/-! ## A168398.P10308979018182956648

`lcm(4, or(1, n))`
-/

namespace A168398.P10308979018182956648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (Nat.lor 1 n)

end

end A168398.P10308979018182956648

namespace A168398

/-- `lcm(4, or(1, n))` -/
def P10308979018182956648.Spec : Prop :=
  ∀ n, (P10308979018182956648.a n : ℤ) = A168398 (n + 1)

end A168398

/-! ## A168398.P10691887971779087547

`4*(and(n, -2)+1)`
-/

namespace A168398.P10691887971779087547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (Int.land (n : ℤ) (-2) + 1)

end

end A168398.P10691887971779087547

namespace A168398

/-- `4*(and(n, -2)+1)` -/
def P10691887971779087547.Spec : Prop :=
  ∀ n, P10691887971779087547.a n = A168398 (n + 1)

end A168398

/-! ## A168398.P10580984341023609918

`a(n-2)+8` with `a(0)=4, a(1)=4`
-/

namespace A168398.P10580984341023609918
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 4] fun n a =>
  a (n - 2) + 8

end

end A168398.P10580984341023609918

namespace A168398

/-- `a(n-2)+8` -/
def P10580984341023609918.Spec : Prop :=
  ∀ n, (P10580984341023609918.a n : ℤ) = A168398 (n + 1)

end A168398

/-! ## A168398.P9094986385897587587

`or(1, n)/(1/2)²`
-/

namespace A168398.P9094986385897587587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℚ) / ((1 : ℚ) / 2) ^ 2

end

end A168398.P9094986385897587587

namespace A168398

/-- `or(1, n)/(1/2)²` -/
def P9094986385897587587.Spec : Prop :=
  ∀ n, P9094986385897587587.a n = (A168398 (n + 1) : ℚ)

end A168398

/-! ## A168398.P13705469736012790316

`4/or(1, n)^-1`
-/

namespace A168398.P13705469736012790316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (Nat.lor 1 n : ℚ) ^ (-1 : ℤ)

end

end A168398.P13705469736012790316

namespace A168398

/-- `4/or(1, n)^-1` -/
def P13705469736012790316.Spec : Prop :=
  ∀ n, P13705469736012790316.a n = (A168398 (n + 1) : ℚ)

end A168398

/-! ## A168398.P14652575884012170762

`2^(log2(or(1, n))+2)`
-/

namespace A168398.P14652575884012170762
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (Real.logb 2 (Nat.lor 1 n : ℝ) + 2)

end

end A168398.P14652575884012170762

namespace A168398

/-- `2^(log2(or(1, n))+2)` -/
def P14652575884012170762.Spec : Prop :=
  ∀ n, P14652575884012170762.a n = (A168398 (n + 1) : ℝ)

end A168398

/-! ## A168398.P17857239799241548023

`4*xor(1, and(n, -2))`
-/

namespace A168398.P17857239799241548023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * Int.xor 1 (Int.land (n : ℤ) (-2))

end

end A168398.P17857239799241548023

namespace A168398

/-- `4*xor(1, and(n, -2))` -/
def P17857239799241548023.Spec : Prop :=
  ∀ n, P17857239799241548023.a n = A168398 (n + 1)

end A168398

/-! ## A168398.P10594453175371579052

`2*(n-xor(n, -2))`
-/

namespace A168398.P10594453175371579052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - Int.xor (n : ℤ) (-2))

end

end A168398.P10594453175371579052

namespace A168398

/-- `2*(n-xor(n, -2))` -/
def P10594453175371579052.Spec : Prop :=
  ∀ n, P10594453175371579052.a n = A168398 (n + 1)

end A168398

/-! ## A168398.P850506612022083674

`4*(log2(gcd(2, n))+n)`
-/

namespace A168398.P850506612022083674
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  4 * (Real.logb 2 (Nat.gcd 2 n : ℝ) + (n : ℝ))

end

end A168398.P850506612022083674

namespace A168398

/-- `4*(log2(gcd(2, n))+n)` -/
def P850506612022083674.Spec : Prop :=
  ∀ n, P850506612022083674.a n = (A168398 (n + 1) : ℝ)

end A168398

/-! ## A168398.P5681968995223611490

`∑[8-a(n-1)]` with `a(0)=4, a(1)=0`
-/

namespace A168398.P5681968995223611490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 0] fun n f1 =>
  8 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168398.P5681968995223611490

namespace A168398

/-- `∑[8-a(n-1)]` -/
def P5681968995223611490.Spec : Prop :=
  ∀ n, P5681968995223611490.a n = A168398 (n + 1)

end A168398

/-! ## A168398.P3255454783778936810

`∑[2*a(n%2)]` with `a(0)=4, a(1)=0`
-/

namespace A168398.P3255454783778936810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 0] fun n f1 =>
  2 * f1 (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168398.P3255454783778936810

namespace A168398

/-- `∑[2*a(n%2)]` -/
def P3255454783778936810.Spec : Prop :=
  ∀ n, (P3255454783778936810.a n : ℤ) = A168398 (n + 1)

end A168398

/-! ## A168398.P10727049283816089631

`4*((n+1)%2+n)`
-/

namespace A168398.P10727049283816089631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * ((n + 1) % 2 + n)

end

end A168398.P10727049283816089631

namespace A168398

/-- `4*((n+1)%2+n)` -/
def P10727049283816089631.Spec : Prop :=
  ∀ n, (P10727049283816089631.a n : ℤ) = A168398 (n + 1)

end A168398

/-! ## A168398.P17172084821251096429

`2*(xor(1, n)+1+n)`
-/

namespace A168398.P17172084821251096429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.xor 1 n + 1 + n)

end

end A168398.P17172084821251096429

namespace A168398

/-- `2*(xor(1, n)+1+n)` -/
def P17172084821251096429.Spec : Prop :=
  ∀ n, (P17172084821251096429.a n : ℤ) = A168398 (n + 1)

end A168398

/-! ## A168398.P1326341628243975690

`∑[∑[ogf((4+4x^2)/(1+x))]]`
-/

namespace A168398.P1326341628243975690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 0, 4] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168398.P1326341628243975690

namespace A168398

/-- `∑[∑[ogf((4+4x^2)/(1+x))]]` -/
def P1326341628243975690.Spec : Prop :=
  ∀ n, P1326341628243975690.a n = A168398 (n + 1)

end A168398

/-! ## A168398.P4301486898413567256

`floor(8*n-a(n-1))` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A168398.P4301486898413567256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  (8 * n : ℤ) - a (n - 1)

end

end A168398.P4301486898413567256

namespace A168398

/-- `floor(8*n-a(n-1))` -/
def P4301486898413567256.Spec : Prop :=
  ∀ n, P4301486898413567256.a n = A168398 (n + 1)

end A168398

/-! ## A168398.P5634217155348717491

`abs(or(4, n²-(n+2)²))`
-/

namespace A168398.P5634217155348717491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 4 ((n ^ 2 : ℤ) - ((n + 2) ^ 2 : ℤ))|

end

end A168398.P5634217155348717491

namespace A168398

/-- `abs(or(4, n²-(n+2)²))` -/
def P5634217155348717491.Spec : Prop :=
  ∀ n, P5634217155348717491.a n = A168398 (n + 1)

end A168398

/-!
# A168399: a(n) = 3^n mod 13.

The programs for A168399, the canonical program `A168399.P5863462537463001413` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168399 has offset 0).

The definition of A168399 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^n)%13` (program `A168399.P5863462537463001413`, by `A168399.P5863462537463001413.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168399.P11763638924255384973

`a(n-3)` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A168399.P11763638924255384973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  a (n - 3)

end

end A168399.P11763638924255384973

namespace A168399

/-- `a(n-3)` -/
def P11763638924255384973.Spec : Prop :=
  ∀ n, (P11763638924255384973.a n : ℤ) = A168399 n

end A168399

/-! ## A168399.P5863462537463001413

`(3^n)%13`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168399

/-- `(3^n)%13` -/
def P5863462537463001413.Spec : Prop :=
  ∀ n, (P5863462537463001413.a n : ℤ) = A168399 n

theorem P5863462537463001413.correct : P5863462537463001413.Spec := by
  intro n
  simp only [A168399]

end A168399

