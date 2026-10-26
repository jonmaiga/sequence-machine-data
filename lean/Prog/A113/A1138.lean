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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
# A113801: Numbers that are congruent to {1, 13} mod 14.

The programs for A113801, the canonical program `A113801.P11387318838671763722` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113801 has offset 1).

The definition of A113801 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113801.P11387318838671763722

`a(n-2)+14` with `a(0)=1, a(1)=13`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113801

/-- `a(n-2)+14` -/
def P11387318838671763722.Spec : Prop :=
  ∀ n, (P11387318838671763722.a n : ℤ) = A113801 (n + 1)

theorem P11387318838671763722.correct : P11387318838671763722.Spec := by
  intro n
  simp only [A113801, Nat.add_sub_cancel]

end A113801

/-! ## A113801.P15677785716699539128

`14*n-a(n-1)` with `a(0)=1`
-/

namespace A113801.P15677785716699539128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (14 * n : ℤ) - a (n - 1)

end

end A113801.P15677785716699539128

namespace A113801

/-- `14*n-a(n-1)` -/
def P15677785716699539128.Spec : Prop :=
  ∀ n, P15677785716699539128.a n = A113801 (n + 1)

end A113801

/-! ## A113801.P14247464466449700133

`(14*(n+1)+5*(-1)^(n+1)-7)/2`
-/

namespace A113801.P14247464466449700133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((14 * (n + 1) : ℤ) + 5 * (-1) ^ (n + 1) - 7 : ℚ) / 2

end

end A113801.P14247464466449700133

namespace A113801

/-- `(14*(n+1)+5*(-1)^(n+1)-7)/2` -/
def P14247464466449700133.Spec : Prop :=
  ∀ n, P14247464466449700133.a n = (A113801 (n + 1) : ℚ)

theorem P14247464466449700133.correct : P14247464466449700133.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A113801, Nat.add_sub_cancel, A113801.P14247464466449700133.a, A113801.P11387318838671763722.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A113801, Nat.add_sub_cancel, A113801.P14247464466449700133.a, A113801.P11387318838671763722.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A113801

/-! ## A113801.P6186201846666747854

`∑[11^(n%2)]+n`
-/

namespace A113801.P6186201846666747854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A113801.P6186201846666747854

namespace A113801

/-- `∑[11^(n%2)]+n` -/
def P6186201846666747854.Spec : Prop :=
  ∀ n, (P6186201846666747854.a n : ℤ) = A113801 (n + 1)

end A113801

/-! ## A113801.P10074926777572669528

`∑[14-a(n-1)]` with `a(0)=1, a(1)=12`
-/

namespace A113801.P10074926777572669528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 12] fun n f1 =>
  14 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113801.P10074926777572669528

namespace A113801

/-- `∑[14-a(n-1)]` -/
def P10074926777572669528.Spec : Prop :=
  ∀ n, P10074926777572669528.a n = A113801 (n + 1)

end A113801

/-! ## A113801.P7536446833612395599

`∑[10*and(1, n)+2]-1`
-/

namespace A113801.P7536446833612395599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * Nat.land 1 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A113801.P7536446833612395599

namespace A113801

/-- `∑[10*and(1, n)+2]-1` -/
def P7536446833612395599.Spec : Prop :=
  ∀ n, P7536446833612395599.a n = A113801 (n + 1)

end A113801

/-! ## A113801.P8659941164388253899

`∑[∑[ogf((1+11x)/(1+x))]]+n`
-/

namespace A113801.P8659941164388253899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 11] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A113801.P8659941164388253899

namespace A113801

/-- `∑[∑[ogf((1+11x)/(1+x))]]+n` -/
def P8659941164388253899.Spec : Prop :=
  ∀ n, P8659941164388253899.a n = A113801 (n + 1)

end A113801

/-! ## A113801.P16766370047822354323

`gcd(6, (n+1)%2)+7*n`
-/

namespace A113801.P16766370047822354323
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 6 ((n + 1) % 2) + 7 * n

end

end A113801.P16766370047822354323

namespace A113801

/-- `gcd(6, (n+1)%2)+7*n` -/
def P16766370047822354323.Spec : Prop :=
  ∀ n, (P16766370047822354323.a n : ℤ) = A113801 (n + 1)

end A113801

/-! ## A113801.P13978356665542029894

`2*∑[∑[ogf((1+6x)/(1+x))]]-1`
-/

namespace A113801.P13978356665542029894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A113801.P13978356665542029894

namespace A113801

/-- `2*∑[∑[ogf((1+6x)/(1+x))]]-1` -/
def P13978356665542029894.Spec : Prop :=
  ∀ n, P13978356665542029894.a n = A113801 (n + 1)

end A113801

/-! ## A113801.P17116436448526161151

`5*(and(1, n)+n)+2*n+1`
-/

namespace A113801.P17116436448526161151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (Nat.land 1 n + n) + (2 * n + 1)

end

end A113801.P17116436448526161151

namespace A113801

/-- `5*(and(1, n)+n)+2*n+1` -/
def P17116436448526161151.Spec : Prop :=
  ∀ n, (P17116436448526161151.a n : ℤ) = A113801 (n + 1)

end A113801

/-! ## A113801.P17196640835408717550

`Δ[A195145(n)]`
-/

namespace A113801.P17196640835408717550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113801.P17196640835408717550

namespace A113801

/-- `Δ[A195145(n)]` -/
def P17196640835408717550.Spec : Prop :=
  ∀ n, P17196640835408717550.a n = A113801 (n + 1)

end A113801

/-! ## A113801.P10434479963224191757

`∑[A266327(n)]+n`
-/

namespace A113801.P10434479963224191757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A113801.P10434479963224191757

namespace A113801

/-- `∑[A266327(n)]+n` -/
def P10434479963224191757.Spec : Prop :=
  ∀ n, P10434479963224191757.a n = A113801 (n + 1)

end A113801

/-! ## A113801.P17312811853938875716

`∑[A040035(n+1)]-1`
-/

namespace A113801.P17312811853938875716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A113801.P17312811853938875716

namespace A113801

/-- `∑[A040035(n+1)]-1` -/
def P17312811853938875716.Spec : Prop :=
  ∀ n, P17312811853938875716.a n = A113801 (n + 1)

end A113801

/-! ## A113801.P4879951687249392428

`∑[A247511(a(n-1))]` with `a(0)=1`
-/

namespace A113801.P4879951687249392428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A247511 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113801.P4879951687249392428

namespace A113801

/-- `∑[A247511(a(n-1))]` -/
def P4879951687249392428.Spec : Prop :=
  ∀ n, P4879951687249392428.a n = A113801 (n + 1)

end A113801

/-! ## A113801.P688420284560890430

`2*A047335(n+1)+1`
-/

namespace A113801.P688420284560890430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047335 (n + 1) + 1

end

end A113801.P688420284560890430

namespace A113801

/-- `2*A047335(n+1)+1` -/
def P688420284560890430.Spec : Prop :=
  ∀ n, P688420284560890430.a n = A113801 (n + 1)

end A113801

/-! ## A113801.P18246003853035076212

`A168459(n+1)+2*n`
-/

namespace A113801.P18246003853035076212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168459 (n + 1) + (2 * n : ℤ)

end

end A113801.P18246003853035076212

namespace A113801

/-- `A168459(n+1)+2*n` -/
def P18246003853035076212.Spec : Prop :=
  ∀ n, P18246003853035076212.a n = A113801 (n + 1)

end A113801

/-! ## A113801.P9549445340828359624

`A168204(n+1)+5*n`
-/

namespace A113801.P9549445340828359624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168204 (n + 1) + (5 * n : ℤ)

end

end A113801.P9549445340828359624

namespace A113801

/-- `A168204(n+1)+5*n` -/
def P9549445340828359624.Spec : Prop :=
  ∀ n, P9549445340828359624.a n = A113801 (n + 1)

end A113801

/-! ## A113801.P4984206894565633086

`A168461(n+1)+Δ[n²]`
-/

namespace A113801.P4984206894565633086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168461 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A113801.P4984206894565633086

namespace A113801

/-- `A168461(n+1)+Δ[n²]` -/
def P4984206894565633086.Spec : Prop :=
  ∀ n, P4984206894565633086.a n = A113801 (n + 1)

end A113801

/-! ## A113801.P15541385997097243130

`A010687(n)+A008589(n)`
-/

namespace A113801.P15541385997097243130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010687 n + A008589 n

end

end A113801.P15541385997097243130

namespace A113801

/-- `A010687(n)+A008589(n)` -/
def P15541385997097243130.Spec : Prop :=
  ∀ n, P15541385997097243130.a n = A113801 (n + 1)

end A113801

/-! ## A113801.P4192750227105313218

`A016993(n)+A010676(n)`
-/

namespace A113801.P4192750227105313218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 n + A010676 n

end

end A113801.P4192750227105313218

namespace A113801

/-- `A016993(n)+A010676(n)` -/
def P4192750227105313218.Spec : Prop :=
  ∀ n, P4192750227105313218.a n = A113801 (n + 1)

end A113801

/-!
# A113802: Numbers that are congruent to {2, 12} mod 14.

The programs for A113802, the canonical program `A113802.P7325377939900999097` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113802 has offset 1).

The definition of A113802 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113802.P7325377939900999097

`14*n-a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113802

/-- `14*n-a(n-1)` -/
def P7325377939900999097.Spec : Prop :=
  ∀ n, P7325377939900999097.a n = A113802 (n + 1)

theorem P7325377939900999097.correct : P7325377939900999097.Spec := by
  intro n
  simp only [A113802, Nat.add_sub_cancel]

end A113802

/-! ## A113802.P14408193941985295484

`7*(n+1)-(7-3*(-1)^(n+1))/2`
-/

namespace A113802.P14408193941985295484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 * (n + 1) : ℚ) - (7 - 3 * (-1) ^ (n + 1) : ℚ) / 2

end

end A113802.P14408193941985295484

namespace A113802

/-- `7*(n+1)-(7-3*(-1)^(n+1))/2` -/
def P14408193941985295484.Spec : Prop :=
  ∀ n, P14408193941985295484.a n = (A113802 (n + 1) : ℚ)

theorem P14408193941985295484.correct : P14408193941985295484.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A113802, Nat.add_sub_cancel, A113802.P14408193941985295484.a, A113802.P7325377939900999097.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A113802, Nat.add_sub_cancel, A113802.P14408193941985295484.a, A113802.P7325377939900999097.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A113802

/-! ## A113802.P9849540712768208079

`∑[abs(a(n-2))]` with `a(0)=2, a(1)=10, a(2)=4`
-/

namespace A113802.P9849540712768208079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 10, 4] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113802.P9849540712768208079

namespace A113802

/-- `∑[abs(a(n-2))]` -/
def P9849540712768208079.Spec : Prop :=
  ∀ n, (P9849540712768208079.a n : ℤ) = A113802 (n + 1)

end A113802

/-! ## A113802.P5073575784147763296

`∑[14-a(n-1)]` with `a(0)=2, a(1)=10`
-/

namespace A113802.P5073575784147763296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 10] fun n f1 =>
  14 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113802.P5073575784147763296

namespace A113802

/-- `∑[14-a(n-1)]` -/
def P5073575784147763296.Spec : Prop :=
  ∀ n, P5073575784147763296.a n = A113802 (n + 1)

end A113802

/-! ## A113802.P2877105824672778562

`Δ[or(3, 7*n²)/2]`
-/

namespace A113802.P2877105824672778562
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 (7 * n ^ 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113802.P2877105824672778562

namespace A113802

/-- `Δ[or(3, 7*n²)/2]` -/
def P2877105824672778562.Spec : Prop :=
  ∀ n, P2877105824672778562.a n = (A113802 (n + 1) : ℚ)

end A113802

/-! ## A113802.P18304825214984197045

`∑[∑[ogf((2+10x+2x^2)/(1+x))]]`
-/

namespace A113802.P18304825214984197045
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 10, 2] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113802.P18304825214984197045

namespace A113802

/-- `∑[∑[ogf((2+10x+2x^2)/(1+x))]]` -/
def P18304825214984197045.Spec : Prop :=
  ∀ n, P18304825214984197045.a n = A113802 (n + 1)

end A113802

/-! ## A113802.P6785133232258088294

`ogf((2+10x+2x^2)/(1-x-x^2+x^3))`
-/

namespace A113802.P6785133232258088294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 10, 2] [1, -1, -1, 1] n

end

end A113802.P6785133232258088294

namespace A113802

/-- `ogf((2+10x+2x^2)/(1-x-x^2+x^3))` -/
def P6785133232258088294.Spec : Prop :=
  ∀ n, P6785133232258088294.a n = A113802 (n + 1)

end A113802

/-! ## A113802.P5886449232484434716

`2*(∑[gcd(2, n+1)²]+n)`
-/

namespace A113802.P5886449232484434716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A113802.P5886449232484434716

namespace A113802

/-- `2*(∑[gcd(2, n+1)²]+n)` -/
def P5886449232484434716.Spec : Prop :=
  ∀ n, (P5886449232484434716.a n : ℤ) = A113802 (n + 1)

end A113802

/-! ## A113802.P17974863121430881841

`Δ[2*A195041(n)]`
-/

namespace A113802.P17974863121430881841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113802.P17974863121430881841

namespace A113802

/-- `Δ[2*A195041(n)]` -/
def P17974863121430881841.Spec : Prop :=
  ∀ n, P17974863121430881841.a n = A113802 (n + 1)

end A113802

/-! ## A113802.P7518716593935537806

`2*A047336(n+1)`
-/

namespace A113802.P7518716593935537806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047336 (n + 1)

end

end A113802.P7518716593935537806

namespace A113802

/-- `2*A047336(n+1)` -/
def P7518716593935537806.Spec : Prop :=
  ∀ n, P7518716593935537806.a n = A113802 (n + 1)

end A113802

/-! ## A113802.P4374502769145798139

`∑[2*dr(A040093(n))]`
-/

namespace A113802.P4374502769145798139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.digitalRoot (A040093 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113802.P4374502769145798139

namespace A113802

/-- `∑[2*dr(A040093(n))]` -/
def P4374502769145798139.Spec : Prop :=
  ∀ n, (P4374502769145798139.a n : ℤ) = A113802 (n + 1)

end A113802

/-! ## A113802.P10748426482726474465

`Δ[A195142(n)+n²]`
-/

namespace A113802.P10748426482726474465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195142 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113802.P10748426482726474465

namespace A113802

/-- `Δ[A195142(n)+n²]` -/
def P10748426482726474465.Spec : Prop :=
  ∀ n, P10748426482726474465.a n = A113802 (n + 1)

end A113802

/-! ## A113802.P3245069727405944734

`2*(A047382(n+1)+1)`
-/

namespace A113802.P3245069727405944734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A047382 (n + 1) + 1)

end

end A113802.P3245069727405944734

namespace A113802

/-- `2*(A047382(n+1)+1)` -/
def P3245069727405944734.Spec : Prop :=
  ∀ n, P3245069727405944734.a n = A113802 (n + 1)

end A113802

/-! ## A113802.P3930356758651052631

`2*(A301451(n+1)-n)`
-/

namespace A113802.P3930356758651052631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A301451 (n + 1) - (n : ℤ))

end

end A113802.P3930356758651052631

namespace A113802

/-- `2*(A301451(n+1)-n)` -/
def P3930356758651052631.Spec : Prop :=
  ∀ n, P3930356758651052631.a n = A113802 (n + 1)

end A113802

/-! ## A113802.P541897202042907264

`2*(A047208(n+1)+n+1)`
-/

namespace A113802.P541897202042907264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A047208 (n + 1) + (n + 1 : ℤ))

end

end A113802.P541897202042907264

namespace A113802

/-- `2*(A047208(n+1)+n+1)` -/
def P541897202042907264.Spec : Prop :=
  ∀ n, P541897202042907264.a n = A113802 (n + 1)

end A113802

/-! ## A113802.P2492186162505615367

`A169610(n+1)%A169598(n+1)`
-/

namespace A113802.P2492186162505615367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169610 (n + 1)) (A169598 (n + 1))

end

end A113802.P2492186162505615367

namespace A113802

/-- `A169610(n+1)%A169598(n+1)` -/
def P2492186162505615367.Spec : Prop :=
  ∀ n, P2492186162505615367.a n = A113802 (n + 1)

end A113802

/-! ## A113802.P10564233960489695621

`∑[2*A072996(n+1)]`
-/

namespace A113802.P10564233960489695621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072996 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113802.P10564233960489695621

namespace A113802

/-- `∑[2*A072996(n+1)]` -/
def P10564233960489695621.Spec : Prop :=
  ∀ n, P10564233960489695621.a n = A113802 (n + 1)

end A113802

/-! ## A113802.P12490010679119219257

`2*A047279(2*(n+1))`
-/

namespace A113802.P12490010679119219257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047279 (2 * (n + 1))

end

end A113802.P12490010679119219257

namespace A113802

/-- `2*A047279(2*(n+1))` -/
def P12490010679119219257.Spec : Prop :=
  ∀ n, P12490010679119219257.a n = A113802 (n + 1)

end A113802

/-! ## A113802.P15974191083047726109

`2*A047283(2*(n+1))`
-/

namespace A113802.P15974191083047726109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047283 (2 * (n + 1))

end

end A113802.P15974191083047726109

namespace A113802

/-- `2*A047283(2*(n+1))` -/
def P15974191083047726109.Spec : Prop :=
  ∀ n, P15974191083047726109.a n = A113802 (n + 1)

end A113802

/-! ## A113802.P3987589786739015644

`2*A047291(2*(n+1))`
-/

namespace A113802.P3987589786739015644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047291 (2 * (n + 1))

end

end A113802.P3987589786739015644

namespace A113802

/-- `2*A047291(2*(n+1))` -/
def P3987589786739015644.Spec : Prop :=
  ∀ n, P3987589786739015644.a n = A113802 (n + 1)

end A113802

/-!
# A113803: Numbers that are congruent to {3, 11} mod 14.

The programs for A113803, the canonical program `A113803.P12102167889894836236` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113803 has offset 1).

The definition of A113803 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113803.P12102167889894836236

`14*n-a(n-1)` with `a(0)=3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113803

/-- `14*n-a(n-1)` -/
def P12102167889894836236.Spec : Prop :=
  ∀ n, P12102167889894836236.a n = A113803 (n + 1)

theorem P12102167889894836236.correct : P12102167889894836236.Spec := by
  intro n
  simp only [A113803, Nat.add_sub_cancel]

end A113803

/-! ## A113803.P10946505939981447026

`7*(n+1)-(7-(-1)^(n+1))/2`
-/

namespace A113803.P10946505939981447026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 * (n + 1) : ℚ) - (7 - (-1) ^ (n + 1) : ℚ) / 2

end

end A113803.P10946505939981447026

namespace A113803

/-- `7*(n+1)-(7-(-1)^(n+1))/2` -/
def P10946505939981447026.Spec : Prop :=
  ∀ n, P10946505939981447026.a n = (A113803 (n + 1) : ℚ)

theorem P10946505939981447026.correct : P10946505939981447026.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A113803, Nat.add_sub_cancel, A113803.P10946505939981447026.a, A113803.P12102167889894836236.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A113803, Nat.add_sub_cancel, A113803.P10946505939981447026.a, A113803.P12102167889894836236.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A113803

/-! ## A113803.P17945025353762115346

`or(1, 7*n+3)`
-/

namespace A113803.P17945025353762115346
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (7 * n + 3)

end

end A113803.P17945025353762115346

namespace A113803

/-- `or(1, 7*n+3)` -/
def P17945025353762115346.Spec : Prop :=
  ∀ n, (P17945025353762115346.a n : ℤ) = A113803 (n + 1)

end A113803

/-! ## A113803.P1274963361611756322

`∑[abs(a(n-2))]` with `a(0)=3, a(1)=8, a(2)=6`
-/

namespace A113803.P1274963361611756322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 8, 6] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113803.P1274963361611756322

namespace A113803

/-- `∑[abs(a(n-2))]` -/
def P1274963361611756322.Spec : Prop :=
  ∀ n, (P1274963361611756322.a n : ℤ) = A113803 (n + 1)

end A113803

/-! ## A113803.P10536206663163570568

`∑[14-a(n-1)]` with `a(0)=3, a(1)=8`
-/

namespace A113803.P10536206663163570568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 8] fun n f1 =>
  14 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113803.P10536206663163570568

namespace A113803

/-- `∑[14-a(n-1)]` -/
def P10536206663163570568.Spec : Prop :=
  ∀ n, P10536206663163570568.a n = A113803 (n + 1)

end A113803

/-! ## A113803.P16873661621229841582

`∑[∑[ogf((3+8x+3x^2)/(1+x))]]`
-/

namespace A113803.P16873661621229841582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 8, 3] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113803.P16873661621229841582

namespace A113803

/-- `∑[∑[ogf((3+8x+3x^2)/(1+x))]]` -/
def P16873661621229841582.Spec : Prop :=
  ∀ n, P16873661621229841582.a n = A113803 (n + 1)

end A113803

/-! ## A113803.P2857632832266075726

`ogf((3+8x+3x^2)/(1-x-x^2+x^3))`
-/

namespace A113803.P2857632832266075726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 8, 3] [1, -1, -1, 1] n

end

end A113803.P2857632832266075726

namespace A113803

/-- `ogf((3+8x+3x^2)/(1-x-x^2+x^3))` -/
def P2857632832266075726.Spec : Prop :=
  ∀ n, P2857632832266075726.a n = A113803 (n + 1)

end A113803

/-! ## A113803.P15082495313261068707

`∑[dr(A040134(n))]`
-/

namespace A113803.P15082495313261068707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040134 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113803.P15082495313261068707

namespace A113803

/-- `∑[dr(A040134(n))]` -/
def P15082495313261068707.Spec : Prop :=
  ∀ n, (P15082495313261068707.a n : ℤ) = A113803 (n + 1)

end A113803

/-! ## A113803.P805202102679627926

`∑[A014455(a(n-1))]` with `a(0)=3`
-/

namespace A113803.P805202102679627926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A014455 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113803.P805202102679627926

namespace A113803

/-- `∑[A014455(a(n-1))]` -/
def P805202102679627926.Spec : Prop :=
  ∀ n, P805202102679627926.a n = A113803 (n + 1)

end A113803

/-! ## A113803.P3930858703021398582

`∑[A086354(a(n-1))]` with `a(0)=3`
-/

namespace A113803.P3930858703021398582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A086354 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113803.P3930858703021398582

namespace A113803

/-- `∑[A086354(a(n-1))]` -/
def P3930858703021398582.Spec : Prop :=
  ∀ n, P3930858703021398582.a n = A113803 (n + 1)

end A113803

/-! ## A113803.P17013669471616742005

`∑[A114405(a(n-1))]` with `a(0)=3`
-/

namespace A113803.P17013669471616742005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A114405 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113803.P17013669471616742005

namespace A113803

/-- `∑[A114405(a(n-1))]` -/
def P17013669471616742005.Spec : Prop :=
  ∀ n, P17013669471616742005.a n = A113803 (n + 1)

end A113803

/-! ## A113803.P707831132340611247

`∑[A320131(a(n-1))]` with `a(0)=3`
-/

namespace A113803.P707831132340611247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A320131 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113803.P707831132340611247

namespace A113803

/-- `∑[A320131(a(n-1))]` -/
def P707831132340611247.Spec : Prop :=
  ∀ n, P707831132340611247.a n = A113803 (n + 1)

end A113803

/-! ## A113803.P18039030392862420038

`∑[A320132(a(n-1))]` with `a(0)=3`
-/

namespace A113803.P18039030392862420038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A320132 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113803.P18039030392862420038

namespace A113803

/-- `∑[A320132(a(n-1))]` -/
def P18039030392862420038.Spec : Prop :=
  ∀ n, P18039030392862420038.a n = A113803 (n + 1)

end A113803

/-! ## A113803.P4725797352583658800

`∑[A320133(a(n-1))]` with `a(0)=3`
-/

namespace A113803.P4725797352583658800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A320133 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113803.P4725797352583658800

namespace A113803

/-- `∑[A320133(a(n-1))]` -/
def P4725797352583658800.Spec : Prop :=
  ∀ n, P4725797352583658800.a n = A113803 (n + 1)

end A113803

/-! ## A113803.P5803681013870531311

`∑[A320134(a(n-1))]` with `a(0)=3`
-/

namespace A113803.P5803681013870531311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A320134 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113803.P5803681013870531311

namespace A113803

/-- `∑[A320134(a(n-1))]` -/
def P5803681013870531311.Spec : Prop :=
  ∀ n, P5803681013870531311.a n = A113803 (n + 1)

end A113803

/-! ## A113803.P15165489406962867323

`∑[A320135(a(n-1))]` with `a(0)=3`
-/

namespace A113803.P15165489406962867323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A320135 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113803.P15165489406962867323

namespace A113803

/-- `∑[A320135(a(n-1))]` -/
def P15165489406962867323.Spec : Prop :=
  ∀ n, P15165489406962867323.a n = A113803 (n + 1)

end A113803

/-! ## A113803.P16273280998173528974

`∑[A320136(a(n-1))]` with `a(0)=3`
-/

namespace A113803.P16273280998173528974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A320136 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113803.P16273280998173528974

namespace A113803

/-- `∑[A320136(a(n-1))]` -/
def P16273280998173528974.Spec : Prop :=
  ∀ n, P16273280998173528974.a n = A113803 (n + 1)

end A113803

/-! ## A113803.P13158854624876283892

`∑[A376082(a(n-1))]` with `a(0)=3`
-/

namespace A113803.P13158854624876283892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A376082 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113803.P13158854624876283892

namespace A113803

/-- `∑[A376082(a(n-1))]` -/
def P13158854624876283892.Spec : Prop :=
  ∀ n, P13158854624876283892.a n = A113803 (n + 1)

end A113803

/-! ## A113803.P707853239676371723

`xor(A000035(n), A017017(n))`
-/

namespace A113803.P707853239676371723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 n) (A017017 n)

end

end A113803.P707853239676371723

namespace A113803

/-- `xor(A000035(n), A017017(n))` -/
def P707853239676371723.Spec : Prop :=
  ∀ n, P707853239676371723.a n = A113803 (n + 1)

end A113803

/-! ## A113803.P18253488657450776917

`A051062(n)%A143988(n+1)`
-/

namespace A113803.P18253488657450776917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051062 n) (A143988 (n + 1))

end

end A113803.P18253488657450776917

namespace A113803

/-- `A051062(n)%A143988(n+1)` -/
def P18253488657450776917.Spec : Prop :=
  ∀ n, P18253488657450776917.a n = A113803 (n + 1)

end A113803

/-!
# A113804: Numbers that are congruent to 4 or 10 mod 14.

The programs for A113804, the canonical program `A113804.P15060136249329139483` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113804 has offset 1).

The definition of A113804 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113804.P15060136249329139483

`14*n-a(n-1)` with `a(0)=4`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113804

/-- `14*n-a(n-1)` -/
def P15060136249329139483.Spec : Prop :=
  ∀ n, P15060136249329139483.a n = A113804 (n + 1)

theorem P15060136249329139483.correct : P15060136249329139483.Spec := by
  intro n
  simp only [A113804, Nat.add_sub_cancel]

end A113804

/-! ## A113804.P8222662314571675986

`7*(n+1)-((-1)^(n+1)+7)/2`
-/

namespace A113804.P8222662314571675986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 * (n + 1) : ℚ) - ((-1) ^ (n + 1) + 7 : ℚ) / 2

end

end A113804.P8222662314571675986

namespace A113804

/-- `7*(n+1)-((-1)^(n+1)+7)/2` -/
def P8222662314571675986.Spec : Prop :=
  ∀ n, P8222662314571675986.a n = (A113804 (n + 1) : ℚ)

theorem P8222662314571675986.correct : P8222662314571675986.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A113804, Nat.add_sub_cancel, A113804.P8222662314571675986.a, A113804.P15060136249329139483.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A113804, Nat.add_sub_cancel, A113804.P8222662314571675986.a, A113804.P15060136249329139483.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A113804

/-! ## A113804.P17479332090493304716

`2*A047385(n+1)`
-/

namespace A113804.P17479332090493304716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047385 (n + 1)

end

end A113804.P17479332090493304716

namespace A113804

/-- `2*A047385(n+1)` -/
def P17479332090493304716.Spec : Prop :=
  ∀ n, P17479332090493304716.a n = A113804 (n + 1)

end A113804

/-! ## A113804.P3320300568233840680

`∑[abs(a(n-2))]` with `a(0)=4, a(1)=6, a(2)=8`
-/

namespace A113804.P3320300568233840680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 6, 8] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113804.P3320300568233840680

namespace A113804

/-- `∑[abs(a(n-2))]` -/
def P3320300568233840680.Spec : Prop :=
  ∀ n, (P3320300568233840680.a n : ℤ) = A113804 (n + 1)

end A113804

/-! ## A113804.P5520445458853386218

`∑[14-a(n-1)]` with `a(0)=4, a(1)=6`
-/

namespace A113804.P5520445458853386218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 6] fun n f1 =>
  14 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113804.P5520445458853386218

namespace A113804

/-- `∑[14-a(n-1)]` -/
def P5520445458853386218.Spec : Prop :=
  ∀ n, P5520445458853386218.a n = A113804 (n + 1)

end A113804

/-! ## A113804.P9420157668033089362

`∑[∑[ogf((4+6x+4x^2)/(1+x))]]`
-/

namespace A113804.P9420157668033089362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 6, 4] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113804.P9420157668033089362

namespace A113804

/-- `∑[∑[ogf((4+6x+4x^2)/(1+x))]]` -/
def P9420157668033089362.Spec : Prop :=
  ∀ n, P9420157668033089362.a n = A113804 (n + 1)

end A113804

/-! ## A113804.P9970295032194518329

`∑[a(∑[(-1)^n])+2]` with `a(0)=4`
-/

namespace A113804.P9970295032194518329
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (∑ j ∈ Finset.range (n + 1), f2 j).toNat + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113804.P9970295032194518329

namespace A113804

/-- `∑[a(∑[(-1)^n])+2]` -/
def P9970295032194518329.Spec : Prop :=
  ∀ n, (P9970295032194518329.a n : ℤ) = A113804 (n + 1)

end A113804

/-! ## A113804.P11528911157885600381

`ogf((4+6x+4x^2)/(1-x-x^2+x^3))`
-/

namespace A113804.P11528911157885600381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 6, 4] [1, -1, -1, 1] n

end

end A113804.P11528911157885600381

namespace A113804

/-- `ogf((4+6x+4x^2)/(1-x-x^2+x^3))` -/
def P11528911157885600381.Spec : Prop :=
  ∀ n, P11528911157885600381.a n = A113804 (n + 1)

end A113804

/-! ## A113804.P6276307378736997378

`∑[2*((n-1)%2+3)]`
-/

namespace A113804.P6276307378736997378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (Int.tmod ((n : ℤ) - 1) 2 + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113804.P6276307378736997378

namespace A113804

/-- `∑[2*((n-1)%2+3)]` -/
def P6276307378736997378.Spec : Prop :=
  ∀ n, P6276307378736997378.a n = A113804 (n + 1)

end A113804

/-! ## A113804.P7158287562743779419

`2*(∑[gcd(2, n)]+2*n)`
-/

namespace A113804.P7158287562743779419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + 2 * n)

end

end A113804.P7158287562743779419

namespace A113804

/-- `2*(∑[gcd(2, n)]+2*n)` -/
def P7158287562743779419.Spec : Prop :=
  ∀ n, (P7158287562743779419.a n : ℤ) = A113804 (n + 1)

end A113804

/-! ## A113804.P1933754165392244292

`and(Δ[(2*n)²]-n, -2)`
-/

namespace A113804.P1933754165392244292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)) (-2)

end

end A113804.P1933754165392244292

namespace A113804

/-- `and(Δ[(2*n)²]-n, -2)` -/
def P1933754165392244292.Spec : Prop :=
  ∀ n, P1933754165392244292.a n = A113804 (n + 1)

end A113804

/-! ## A113804.P6314625317132737612

`2*ceil(A017017(n)/2)`
-/

namespace A113804.P6314625317132737612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈(A017017 n : ℚ) / 2⌉

end

end A113804.P6314625317132737612

namespace A113804

/-- `2*ceil(A017017(n)/2)` -/
def P6314625317132737612.Spec : Prop :=
  ∀ n, P6314625317132737612.a n = A113804 (n + 1)

end A113804

/-! ## A113804.P11429135797837730190

`∑[A040198(a(n-1))]` with `a(0)=4`
-/

namespace A113804.P11429135797837730190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A040198 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113804.P11429135797837730190

namespace A113804

/-- `∑[A040198(a(n-1))]` -/
def P11429135797837730190.Spec : Prop :=
  ∀ n, P11429135797837730190.a n = A113804 (n + 1)

end A113804

/-! ## A113804.P5199730494632248593

`∑[A046793(a(n-1))]` with `a(0)=4`
-/

namespace A113804.P5199730494632248593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A046793 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113804.P5199730494632248593

namespace A113804

/-- `∑[A046793(a(n-1))]` -/
def P5199730494632248593.Spec : Prop :=
  ∀ n, P5199730494632248593.a n = A113804 (n + 1)

end A113804

/-! ## A113804.P13360237093436467582

`∑[A053629(a(n-1))]` with `a(0)=4`
-/

namespace A113804.P13360237093436467582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A053629 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113804.P13360237093436467582

namespace A113804

/-- `∑[A053629(a(n-1))]` -/
def P13360237093436467582.Spec : Prop :=
  ∀ n, P13360237093436467582.a n = A113804 (n + 1)

end A113804

/-! ## A113804.P3070920880660030268

`∑[A079354(a(n-1))]` with `a(0)=4`
-/

namespace A113804.P3070920880660030268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A079354 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113804.P3070920880660030268

namespace A113804

/-- `∑[A079354(a(n-1))]` -/
def P3070920880660030268.Spec : Prop :=
  ∀ n, P3070920880660030268.a n = A113804 (n + 1)

end A113804

/-! ## A113804.P13434747496738901234

`∑[A086354(a(n-1))]` with `a(0)=4`
-/

namespace A113804.P13434747496738901234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A086354 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113804.P13434747496738901234

namespace A113804

/-- `∑[A086354(a(n-1))]` -/
def P13434747496738901234.Spec : Prop :=
  ∀ n, P13434747496738901234.a n = A113804 (n + 1)

end A113804

/-! ## A113804.P3913958543605194866

`∑[A094138(a(n-1))]` with `a(0)=4`
-/

namespace A113804.P3913958543605194866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A094138 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113804.P3913958543605194866

namespace A113804

/-- `∑[A094138(a(n-1))]` -/
def P3913958543605194866.Spec : Prop :=
  ∀ n, P3913958543605194866.a n = A113804 (n + 1)

end A113804

/-! ## A113804.P9469544838847882604

`∑[A096869(a(n-1))]` with `a(0)=4`
-/

namespace A113804.P9469544838847882604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A096869 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113804.P9469544838847882604

namespace A113804

/-- `∑[A096869(a(n-1))]` -/
def P9469544838847882604.Spec : Prop :=
  ∀ n, P9469544838847882604.a n = A113804 (n + 1)

end A113804

/-!
# A113805: Numbers that are congruent to {5, 9} mod 14.

The programs for A113805, the canonical program `A113805.P11273440631962038885` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113805 has offset 1).

The definition of A113805 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113805.P11273440631962038885

`14*n-a(n-1)` with `a(0)=5`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113805

/-- `14*n-a(n-1)` -/
def P11273440631962038885.Spec : Prop :=
  ∀ n, P11273440631962038885.a n = A113805 (n + 1)

theorem P11273440631962038885.correct : P11273440631962038885.Spec := by
  intro n
  simp only [A113805, Nat.add_sub_cancel]

end A113805

/-! ## A113805.P10987515878423607768

`7*(n+1)-(7+3*(-1)^(n+1))/2`
-/

namespace A113805.P10987515878423607768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 * (n + 1) : ℚ) - (7 + 3 * (-1) ^ (n + 1) : ℚ) / 2

end

end A113805.P10987515878423607768

namespace A113805

/-- `7*(n+1)-(7+3*(-1)^(n+1))/2` -/
def P10987515878423607768.Spec : Prop :=
  ∀ n, P10987515878423607768.a n = (A113805 (n + 1) : ℚ)

theorem P10987515878423607768.correct : P10987515878423607768.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A113805, Nat.add_sub_cancel, A113805.P10987515878423607768.a, A113805.P11273440631962038885.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A113805, Nat.add_sub_cancel, A113805.P10987515878423607768.a, A113805.P11273440631962038885.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A113805

/-! ## A113805.P17047095876696781829

`or(1, xor(1, 7*n)+3)`
-/

namespace A113805.P17047095876696781829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.xor 1 (7 * n) + 3)

end

end A113805.P17047095876696781829

namespace A113805

/-- `or(1, xor(1, 7*n)+3)` -/
def P17047095876696781829.Spec : Prop :=
  ∀ n, (P17047095876696781829.a n : ℤ) = A113805 (n + 1)

end A113805

/-! ## A113805.P1276504343566625506

`∑[abs(a(n-2))]` with `a(0)=5, a(1)=4, a(2)=10`
-/

namespace A113805.P1276504343566625506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 4, 10] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113805.P1276504343566625506

namespace A113805

/-- `∑[abs(a(n-2))]` -/
def P1276504343566625506.Spec : Prop :=
  ∀ n, (P1276504343566625506.a n : ℤ) = A113805 (n + 1)

end A113805

/-! ## A113805.P2045459994182575155

`∑[14-a(n-1)]` with `a(0)=5, a(1)=4`
-/

namespace A113805.P2045459994182575155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 4] fun n f1 =>
  14 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113805.P2045459994182575155

namespace A113805

/-- `∑[14-a(n-1)]` -/
def P2045459994182575155.Spec : Prop :=
  ∀ n, P2045459994182575155.a n = A113805 (n + 1)

end A113805

/-! ## A113805.P3500789105581846690

`∑[lcm(2, a(n%2))]` with `a(0)=5, a(1)=4`
-/

namespace A113805.P3500789105581846690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 4] fun n f1 =>
  Nat.lcm 2 (f1 (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113805.P3500789105581846690

namespace A113805

/-- `∑[lcm(2, a(n%2))]` -/
def P3500789105581846690.Spec : Prop :=
  ∀ n, (P3500789105581846690.a n : ℤ) = A113805 (n + 1)

end A113805

/-! ## A113805.P11670142237835389519

`∑[∑[ogf((5+4x+5x^2)/(1+x))]]`
-/

namespace A113805.P11670142237835389519
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 4, 5] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113805.P11670142237835389519

namespace A113805

/-- `∑[∑[ogf((5+4x+5x^2)/(1+x))]]` -/
def P11670142237835389519.Spec : Prop :=
  ∀ n, P11670142237835389519.a n = A113805 (n + 1)

end A113805

/-! ## A113805.P4810835137355342920

`ogf((5+4x+5x^2)/(1-x-x^2+x^3))`
-/

namespace A113805.P4810835137355342920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 4, 5] [1, -1, -1, 1] n

end

end A113805.P4810835137355342920

namespace A113805

/-- `ogf((5+4x+5x^2)/(1-x-x^2+x^3))` -/
def P4810835137355342920.Spec : Prop :=
  ∀ n, P4810835137355342920.a n = A113805 (n + 1)

end A113805

/-! ## A113805.P10817937600839123906

`∑[A010132(2*n)]`
-/

namespace A113805.P10817937600839123906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010132 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113805.P10817937600839123906

namespace A113805

/-- `∑[A010132(2*n)]` -/
def P10817937600839123906.Spec : Prop :=
  ∀ n, P10817937600839123906.a n = A113805 (n + 1)

end A113805

/-! ## A113805.P18389657087015812074

`∑[A115284(a(n-1))]` with `a(0)=5`
-/

namespace A113805.P18389657087015812074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  A115284 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113805.P18389657087015812074

namespace A113805

/-- `∑[A115284(a(n-1))]` -/
def P18389657087015812074.Spec : Prop :=
  ∀ n, P18389657087015812074.a n = A113805 (n + 1)

end A113805

/-! ## A113805.P11898372721883387798

`A259614(n+1)%A082296(n+1)`
-/

namespace A113805.P11898372721883387798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259614 (n + 1)) (A082296 (n + 1))

end

end A113805.P11898372721883387798

namespace A113805

/-- `A259614(n+1)%A082296(n+1)` -/
def P11898372721883387798.Spec : Prop :=
  ∀ n, P11898372721883387798.a n = A113805 (n + 1)

end A113805

/-! ## A113805.P4681191471585291336

`Δ[A298034(n)-n²]`
-/

namespace A113805.P4681191471585291336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298034 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113805.P4681191471585291336

namespace A113805

/-- `Δ[A298034(n)-n²]` -/
def P4681191471585291336.Spec : Prop :=
  ∀ n, P4681191471585291336.a n = A113805 (n + 1)

end A113805

/-! ## A113805.P13269483436861591503

`∩[2*n+1, A301298(n+1)]`
-/

namespace A113805.P13269483436861591503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113805.P13269483436861591503

namespace A113805

/-- `∩[2*n+1, A301298(n+1)]` -/
def P13269483436861591503.Spec : Prop :=
  ∀ n, (P13269483436861591503.a n : ℤ) = A113805 (n + 1)

end A113805

/-! ## A113805.P15029367442398799830

`∩[2*n+1, A047385(n+1)]`
-/

namespace A113805.P15029367442398799830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113805.P15029367442398799830

namespace A113805

/-- `∩[2*n+1, A047385(n+1)]` -/
def P15029367442398799830.Spec : Prop :=
  ∀ n, (P15029367442398799830.a n : ℤ) = A113805 (n + 1)

end A113805

/-! ## A113805.P11391226929208667175

`A047385(A042964(n+1))`
-/

namespace A113805.P11391226929208667175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047385 (A042964 (n + 1)).toNat

end

end A113805.P11391226929208667175

namespace A113805

/-- `A047385(A042964(n+1))` -/
def P11391226929208667175.Spec : Prop :=
  ∀ n, P11391226929208667175.a n = A113805 (n + 1)

end A113805

/-! ## A113805.P5888650933549935998

`A047385(A053438(n+1))`
-/

namespace A113805.P5888650933549935998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047385 (A053438 (n + 1)).toNat

end

end A113805.P5888650933549935998

namespace A113805

/-- `A047385(A053438(n+1))` -/
def P5888650933549935998.Spec : Prop :=
  ∀ n, P5888650933549935998.a n = A113805 (n + 1)

end A113805

/-! ## A113805.P5268317366651291503

`A047323(A047235(n+1))`
-/

namespace A113805.P5268317366651291503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047323 (A047235 (n + 1)).toNat

end

end A113805.P5268317366651291503

namespace A113805

/-- `A047323(A047235(n+1))` -/
def P5268317366651291503.Spec : Prop :=
  ∀ n, P5268317366651291503.a n = A113805 (n + 1)

end A113805

/-! ## A113805.P2578695780498880304

`A047370(A047230(n+1))`
-/

namespace A113805.P2578695780498880304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047370 (A047230 (n + 1)).toNat

end

end A113805.P2578695780498880304

namespace A113805

/-- `A047370(A047230(n+1))` -/
def P2578695780498880304.Spec : Prop :=
  ∀ n, P2578695780498880304.a n = A113805 (n + 1)

end A113805

/-! ## A113805.P6362677871121854163

`∩[2*n+1, A047386(2*n+1)]`
-/

namespace A113805.P6362677871121854163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047386 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113805.P6362677871121854163

namespace A113805

/-- `∩[2*n+1, A047386(2*n+1)]` -/
def P6362677871121854163.Spec : Prop :=
  ∀ n, (P6362677871121854163.a n : ℤ) = A113805 (n + 1)

end A113805

/-! ## A113805.P11492456856018646554

`A047386(A047270(n+1))`
-/

namespace A113805.P11492456856018646554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047386 (A047270 (n + 1)).toNat

end

end A113805.P11492456856018646554

namespace A113805

/-- `A047386(A047270(n+1))` -/
def P11492456856018646554.Spec : Prop :=
  ∀ n, P11492456856018646554.a n = A113805 (n + 1)

end A113805

/-!
# A113806: Numbers that are congruent to {6, 8} mod 14.

The programs for A113806, the canonical program `A113806.P520621834384080029` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113806 has offset 1).

The definition of A113806 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113806.P520621834384080029

`14*n-a(n-1)` with `a(0)=6`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113806

/-- `14*n-a(n-1)` -/
def P520621834384080029.Spec : Prop :=
  ∀ n, P520621834384080029.a n = A113806 (n + 1)

theorem P520621834384080029.correct : P520621834384080029.Spec := by
  intro n
  simp only [A113806, Nat.add_sub_cancel]

end A113806

/-! ## A113806.P9623831820342875848

`7*(n+1)-(7+5*(-1)^(n+1))/2`
-/

namespace A113806.P9623831820342875848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 * (n + 1) : ℚ) - (7 + 5 * (-1) ^ (n + 1) : ℚ) / 2

end

end A113806.P9623831820342875848

namespace A113806

/-- `7*(n+1)-(7+5*(-1)^(n+1))/2` -/
def P9623831820342875848.Spec : Prop :=
  ∀ n, P9623831820342875848.a n = (A113806 (n + 1) : ℚ)

theorem P9623831820342875848.correct : P9623831820342875848.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A113806, Nat.add_sub_cancel, A113806.P9623831820342875848.a, A113806.P520621834384080029.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A113806, Nat.add_sub_cancel, A113806.P9623831820342875848.a, A113806.P520621834384080029.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A113806

/-! ## A113806.P17691806879609795926

`∑[14-a(n-1)]` with `a(0)=6, a(1)=2`
-/

namespace A113806.P17691806879609795926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6, 2] fun n f1 =>
  14 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113806.P17691806879609795926

namespace A113806

/-- `∑[14-a(n-1)]` -/
def P17691806879609795926.Spec : Prop :=
  ∀ n, P17691806879609795926.a n = A113806 (n + 1)

end A113806

/-! ## A113806.P1285912243001310020

`∑[∑[ogf((6+2x+6x^2)/(1+x))]]`
-/

namespace A113806.P1285912243001310020
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 2, 6] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113806.P1285912243001310020

namespace A113806

/-- `∑[∑[ogf((6+2x+6x^2)/(1+x))]]` -/
def P1285912243001310020.Spec : Prop :=
  ∀ n, P1285912243001310020.a n = A113806 (n + 1)

end A113806

/-! ## A113806.P11966113607460339

`ogf((6+2x+6x^2)/(1-x-x^2+x^3))`
-/

namespace A113806.P11966113607460339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 2, 6] [1, -1, -1, 1] n

end

end A113806.P11966113607460339

namespace A113806

/-- `ogf((6+2x+6x^2)/(1-x-x^2+x^3))` -/
def P11966113607460339.Spec : Prop :=
  ∀ n, P11966113607460339.a n = A113806 (n + 1)

end A113806

/-! ## A113806.P12054292835966448164

`∑[A040035(n)]`
-/

namespace A113806.P12054292835966448164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113806.P12054292835966448164

namespace A113806

/-- `∑[A040035(n)]` -/
def P12054292835966448164.Spec : Prop :=
  ∀ n, P12054292835966448164.a n = A113806 (n + 1)

end A113806

/-! ## A113806.P13577525898097921358

`∑[2*A040011(n)]`
-/

namespace A113806.P13577525898097921358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040011 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113806.P13577525898097921358

namespace A113806

/-- `∑[2*A040011(n)]` -/
def P13577525898097921358.Spec : Prop :=
  ∀ n, P13577525898097921358.a n = A113806 (n + 1)

end A113806

/-! ## A113806.P15352489634257619168

`∑[A040137(n)/2]`
-/

namespace A113806.P15352489634257619168
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040137 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113806.P15352489634257619168

namespace A113806

/-- `∑[A040137(n)/2]` -/
def P15352489634257619168.Spec : Prop :=
  ∀ n, P15352489634257619168.a n = (A113806 (n + 1) : ℚ)

end A113806

/-! ## A113806.P9211756144829236651

`∑[A040311(n)/3]`
-/

namespace A113806.P9211756144829236651
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040311 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113806.P9211756144829236651

namespace A113806

/-- `∑[A040311(n)/3]` -/
def P9211756144829236651.Spec : Prop :=
  ∀ n, P9211756144829236651.a n = (A113806 (n + 1) : ℚ)

end A113806

/-! ## A113806.P18283128072780319266

`∑[A040557(n)/4]`
-/

namespace A113806.P18283128072780319266
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040557 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113806.P18283128072780319266

namespace A113806

/-- `∑[A040557(n)/4]` -/
def P18283128072780319266.Spec : Prop :=
  ∀ n, P18283128072780319266.a n = (A113806 (n + 1) : ℚ)

end A113806

/-! ## A113806.P4626054197099843089

`∑[A040875(n)/5]`
-/

namespace A113806.P4626054197099843089
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040875 n : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113806.P4626054197099843089

namespace A113806

/-- `∑[A040875(n)/5]` -/
def P4626054197099843089.Spec : Prop :=
  ∀ n, P4626054197099843089.a n = (A113806 (n + 1) : ℚ)

end A113806

/-! ## A113806.P6860436560388783402

`2*A047341(n+1)`
-/

namespace A113806.P6860436560388783402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047341 (n + 1)

end

end A113806.P6860436560388783402

namespace A113806

/-- `2*A047341(n+1)` -/
def P6860436560388783402.Spec : Prop :=
  ∀ n, P6860436560388783402.a n = A113806 (n + 1)

end A113806

/-! ## A113806.P15577927500492777866

`∑[2*dr(A040155(n))]`
-/

namespace A113806.P15577927500492777866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.digitalRoot (A040155 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113806.P15577927500492777866

namespace A113806

/-- `∑[2*dr(A040155(n))]` -/
def P15577927500492777866.Spec : Prop :=
  ∀ n, (P15577927500492777866.a n : ℤ) = A113806 (n + 1)

end A113806

/-! ## A113806.P10491161722544782602

`∑[2*dr(A040461(n))]`
-/

namespace A113806.P10491161722544782602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.digitalRoot (A040461 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113806.P10491161722544782602

namespace A113806

/-- `∑[2*dr(A040461(n))]` -/
def P10491161722544782602.Spec : Prop :=
  ∀ n, (P10491161722544782602.a n : ℤ) = A113806 (n + 1)

end A113806

/-! ## A113806.P10019551906927419606

`∑[2*dr(A040929(n))]`
-/

namespace A113806.P10019551906927419606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.digitalRoot (A040929 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113806.P10019551906927419606

namespace A113806

/-- `∑[2*dr(A040929(n))]` -/
def P10019551906927419606.Spec : Prop :=
  ∀ n, (P10019551906927419606.a n : ℤ) = A113806 (n + 1)

end A113806

/-! ## A113806.P16061551133153749112

`∑[A270782(a(n-1))]` with `a(0)=6`
-/

namespace A113806.P16061551133153749112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  A270782 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113806.P16061551133153749112

namespace A113806

/-- `∑[A270782(a(n-1))]` -/
def P16061551133153749112.Spec : Prop :=
  ∀ n, P16061551133153749112.a n = A113806 (n + 1)

end A113806

/-! ## A113806.P12140676780961532717

`2*(A047358(n+1)+1)`
-/

namespace A113806.P12140676780961532717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A047358 (n + 1) + 1)

end

end A113806.P12140676780961532717

namespace A113806

/-- `2*(A047358(n+1)+1)` -/
def P12140676780961532717.Spec : Prop :=
  ∀ n, P12140676780961532717.a n = A113806 (n + 1)

end A113806

/-! ## A113806.P10371733040841657935

`2*(A047353(n+1)+2)`
-/

namespace A113806.P10371733040841657935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A047353 (n + 1) + 2)

end

end A113806.P10371733040841657935

namespace A113806

/-- `2*(A047353(n+1)+2)` -/
def P10371733040841657935.Spec : Prop :=
  ∀ n, P10371733040841657935.a n = A113806 (n + 1)

end A113806

/-! ## A113806.P13347313880999782456

`2*(A047374(n+1)-1)`
-/

namespace A113806.P13347313880999782456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A047374 (n + 1) - 1)

end

end A113806.P13347313880999782456

namespace A113806

/-- `2*(A047374(n+1)-1)` -/
def P13347313880999782456.Spec : Prop :=
  ∀ n, P13347313880999782456.a n = A113806 (n + 1)

end A113806

/-! ## A113806.P8013998213779396597

`2*(A047274(n+1)+3)`
-/

namespace A113806.P8013998213779396597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A047274 (n + 1) + 3)

end

end A113806.P8013998213779396597

namespace A113806

/-- `2*(A047274(n+1)+3)` -/
def P8013998213779396597.Spec : Prop :=
  ∀ n, P8013998213779396597.a n = A113806 (n + 1)

end A113806

/-!
# A113808: Positive integers n such that S(n) divides n, where S(n) is the sum of the iterates of the Euler phi-function of n, that is, S(n) = phi(n)+phi(phi(n))+....+ 1.

The programs for A113808, there is no canonical definition to state claims against.
-/

/-! ## A113808.P16287380604976943971

`record[gcd(n+1, A053478(n+1)+A000217(n))]`
-/

namespace A113808.P16287380604976943971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A053478 (n + 1) + A000217 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113808.P16287380604976943971

/-! ## A113808.P7072826199122978663

`eq[A026741(n), A092693(A233583(n+1))]`
-/

namespace A113808.P7072826199122978663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092693 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A113808.P7072826199122978663

/-! ## A113808.P82160305299960422

`A309152(n+1)-A053590(A003945(n+2))`
-/

namespace A113808.P82160305299960422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309152 (n + 1) - A053590 (A003945 (n + 2)).toNat

end

end A113808.P82160305299960422

/-! ## A113808.P10628820562648031735

`eq[A028632(n), A115273(n)]`
-/

namespace A113808.P10628820562648031735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028632 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115273 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A113808.P10628820562648031735

/-! ## A113808.P17382883871499053683

`eq[A028632(n), A112972(n+1)]`
-/

namespace A113808.P17382883871499053683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028632 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112972 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A113808.P17382883871499053683

/-!
# A113822: Number of binary trees of weight n where leaves have positive integer weights, where the order of subtrees is insignificant. Commutative non-associative version of partitions of n.

The programs for A113822, there is no canonical definition to state claims against.
-/

/-! ## A113822.P76622225762206327

`A213906(n+2)-A069849(A069853(n))`
-/

namespace A113822.P76622225762206327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213906 (n + 2) - A069849 (A069853 n).toNat

end

end A113822.P76622225762206327

/-! ## A113822.P15446603369086248837

`A213906(n+2)-A100910(A149196(n))`
-/

namespace A113822.P15446603369086248837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213906 (n + 2) - A100910 (A149196 n).toNat

end

end A113822.P15446603369086248837

/-! ## A113822.P11474490660166293635

`A213906(n+2)-A055641(A213907(n))`
-/

namespace A113822.P11474490660166293635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213906 (n + 2) - A055641 (A213907 n).toNat

end

end A113822.P11474490660166293635

/-! ## A113822.P7983297151027364995

`A213906(n+2)-A102683(A205801(n))`
-/

namespace A113822.P7983297151027364995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213906 (n + 2) - A102683 (A205801 n).toNat

end

end A113822.P7983297151027364995

/-!
# A113824: a(1)=1; a(n+1) = the least prime greater than 2*a(n) which is a(n) plus a power of two.

The programs for A113824, there is no canonical definition to state claims against.
-/

/-! ## A113824.P8341318958721213197

`∑[A073924(n+1)]`
-/

namespace A113824.P8341318958721213197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113824.P8341318958721213197

/-! ## A113824.P8003461905414210101

`∑[2^A113878(n+1)]`
-/

namespace A113824.P8003461905414210101
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A113878 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113824.P8003461905414210101

/-!
# A113825: Number of distinct prime factors of A008351(n).

The programs for A113825, there is no canonical definition to state claims against.
-/

/-! ## A113825.P2221893840614462027

`A338430(A110601(n+1))+A007877(n)`
-/

namespace A113825.P2221893840614462027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338430 (A110601 (n + 1)).toNat + A007877 n

end

end A113825.P2221893840614462027

/-! ## A113825.P4523591453697994348

`A257684(2*n)+A067029(A048276(n))`
-/

namespace A113825.P4523591453697994348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257684 (2 * n) + A067029 (A048276 n).toNat

end

end A113825.P4523591453697994348

/-! ## A113825.P5877533150997874215

`A000120(∑[A008574(n)-A026238(n+2)])`
-/

namespace A113825.P5877533150997874215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A026238 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A113825.P5877533150997874215

/-! ## A113825.P6971126420200844988

`A237706(A064216(n+1)+A000960(n+1))`
-/

namespace A113825.P6971126420200844988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237706 (A064216 (n + 1) + A000960 (n + 1)).toNat

end

end A113825.P6971126420200844988

/-! ## A113825.P13023005657286905715

`A266755(A286383(n+1)+A286380(n+1))`
-/

namespace A113825.P13023005657286905715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 (A286383 (n + 1) + A286380 (n + 1)).toNat

end

end A113825.P13023005657286905715

/-!
# A113826: Numbers n such that (n+1)^7 - n^7 is prime.

The programs for A113826, there is no canonical definition to state claims against.
-/

/-! ## A113826.P17122350440017165233

`A121619(n+1)-1`
-/

namespace A113826.P17122350440017165233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121619 (n + 1) - 1

end

end A113826.P17122350440017165233

/-! ## A113826.P16128025431417304372

`A023443(A121619(n+1))`
-/

namespace A113826.P16128025431417304372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A121619 (n + 1)).toNat

end

end A113826.P16128025431417304372

/-! ## A113826.P7720094926130069153

`A134824(n+2)+A121619(n+1)`
-/

namespace A113826.P7720094926130069153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A121619 (n + 1)

end

end A113826.P7720094926130069153

/-! ## A113826.P4716003449308077707

`abs(A121619(n+1)+A062157(2*(n+1)))`
-/

namespace A113826.P4716003449308077707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A121619 (n + 1) + A062157 (2 * (n + 1))|

end

end A113826.P4716003449308077707

/-! ## A113826.P6660100461855634797

`(A121619(n+1)+∑[n+1])%A000124(n+1)`
-/

namespace A113826.P6660100461855634797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121619 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) (A000124 (n + 1))

end

end A113826.P6660100461855634797

/-! ## A113826.P8636985033806349186

`A258196(A020639(2*(n+1)))+A121619(n+1)`
-/

namespace A113826.P8636985033806349186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258196 (A020639 (2 * (n + 1))).toNat + A121619 (n + 1)

end

end A113826.P8636985033806349186

/-! ## A113826.P13276164064277683363

`A140106(2*A121619(n+1))`
-/

namespace A113826.P13276164064277683363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A121619 (n + 1)).toNat

end

end A113826.P13276164064277683363

/-! ## A113826.P5967243361789911265

`A140106(A121619(n+1)+A121619(n+1)+1)`
-/

namespace A113826.P5967243361789911265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A121619 (n + 1) + (A121619 (n + 1) + 1)).toNat

end

end A113826.P5967243361789911265

/-! ## A113826.P9104722085154188801

`A165471(3*(n+1)²)+A121619(n+1)`
-/

namespace A113826.P9104722085154188801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165471 (3 * (n + 1) ^ 2) + A121619 (n + 1)

end

end A113826.P9104722085154188801

/-!
# A113827: Initial terms associated with the arithmetic progressions of primes in A005115.

The programs for A113827, there is no canonical definition to state claims against.
-/

/-! ## A113827.P9592255303784677397

`A005115(n+1)-n*A093364(n+1)`
-/

namespace A113827.P9592255303784677397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005115 (n + 1) - (n : ℤ) * A093364 (n + 1)

end

end A113827.P9592255303784677397

/-! ## A113827.P15980633603784558925

`A133277(∑[n]+1)`
-/

namespace A113827.P15980633603784558925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133277 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A113827.P15980633603784558925

/-! ## A113827.P4820157402933592407

`round(sqrt(A133277(C(n, 2)+n+1)²+1))`
-/

namespace A113827.P4820157402933592407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A133277 (Nat.choose n 2 + n + 1) ^ 2 + 1 : ℝ))

end

end A113827.P4820157402933592407

/-!
# A113828: a(n) = Sum[2^(A047260(i)-1), {i,1,n}].

The programs for A113828, the canonical program `A113828.P708080319697099683` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113828 has offset 1).

The definition of A113828 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113828.P2339811178271983388

`∑[2^comp[xor(1, 3*n)]]`
-/

namespace A113828.P2339811178271983388
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (3 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113828.P2339811178271983388

namespace A113828

/-- `∑[2^comp[xor(1, 3*n)]]` -/
def P2339811178271983388.Spec : Prop :=
  ∀ n, (P2339811178271983388.a n : ℤ) = A113828 (n + 1)

end A113828

/-! ## A113828.P9643517881015244916

`∑[2^(2*ceil(n/4)+n)]`
-/

namespace A113828.P9643517881015244916
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (2 * ⌈(n : ℚ) / 4⌉ + (n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113828.P9643517881015244916

namespace A113828

/-- `∑[2^(2*ceil(n/4)+n)]` -/
def P9643517881015244916.Spec : Prop :=
  ∀ n, P9643517881015244916.a n = (A113828 (n + 1) : ℚ)

end A113828

/-! ## A113828.P708080319697099683

`∑[A255047(A106249(3*n+1))]+n`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A113828

/-- `∑[A255047(A106249(3*n+1))]+n` -/
def P708080319697099683.Spec : Prop :=
  ∀ n, P708080319697099683.a n = A113828 (n + 1)

theorem P708080319697099683.correct : P708080319697099683.Spec := by
  intro n
  simp only [A113828, Nat.add_sub_cancel]

end A113828

/-! ## A113828.P13847872895377101386

`A000265(∑[abs(A138380(3*n+2))])`
-/

namespace A113828.P13847872895377101386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A138380 (3 * n + 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A113828.P13847872895377101386

namespace A113828

/-- `A000265(∑[abs(A138380(3*n+2))])` -/
def P13847872895377101386.Spec : Prop :=
  ∀ n, P13847872895377101386.a n = A113828 (n + 1)

end A113828

/-!
# A113829: a(n) = a(n-1) + 2^(k(n)), where k(n) is the n-th term of the sequence of numbers that are congruent to {0,3,4,5,7,8} mod 12.

The programs for A113829, the canonical program `A113829.P6113477736535144026` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113829 has offset 1).

The definition of A113829 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113829.P14447024816360024381

`∑[2^A154571(n+1)]`
-/

namespace A113829.P14447024816360024381
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A154571 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113829.P14447024816360024381

namespace A113829

/-- `∑[2^A154571(n+1)]` -/
def P14447024816360024381.Spec : Prop :=
  ∀ n, P14447024816360024381.a n = (A113829 (n + 1) : ℚ)

end A113829

/-! ## A113829.P6113477736535144026

`∑[A000079(eq[∑[n]%2, val(n+1, 6)])]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A113829

/-- `∑[A000079(eq[∑[n]%2, val(n+1, 6)])]` -/
def P6113477736535144026.Spec : Prop :=
  ∀ n, P6113477736535144026.a n = A113829 (n + 1)

theorem P6113477736535144026.correct : P6113477736535144026.Spec := by
  intro n
  simp only [A113829, Nat.add_sub_cancel]

end A113829

/-! ## A113829.P14341143898222351051

`∑[A000079(A154571(n+1))]`
-/

namespace A113829.P14341143898222351051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A154571 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113829.P14341143898222351051

namespace A113829

/-- `∑[A000079(A154571(n+1))]` -/
def P14341143898222351051.Spec : Prop :=
  ∀ n, P14341143898222351051.a n = A113829 (n + 1)

end A113829

/-! ## A113829.P933604315245479244

`∑[A000079(eq[A002483(n), A241979(n)])]`
-/

namespace A113829.P933604315245479244
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002483 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.nth (fun j => f2 j = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113829.P933604315245479244

namespace A113829

/-- `∑[A000079(eq[A002483(n), A241979(n)])]` -/
def P933604315245479244.Spec : Prop :=
  ∀ n, P933604315245479244.a n = A113829 (n + 1)

end A113829

/-! ## A113829.P8547368090713490841

`∑[A000079(A047231(n+1)-A300067(n))]`
-/

namespace A113829.P8547368090713490841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A047231 (n + 1) - A300067 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113829.P8547368090713490841

namespace A113829

/-- `∑[A000079(A047231(n+1)-A300067(n))]` -/
def P8547368090713490841.Spec : Prop :=
  ∀ n, P8547368090713490841.a n = A113829 (n + 1)

end A113829

/-! ## A113829.P266918029070628355

`∑[A000079(eq[A167817(n), A181801(n+1)])]`
-/

namespace A113829.P266918029070628355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167817 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181801 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.nth (fun j => f2 j = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113829.P266918029070628355

namespace A113829

/-- `∑[A000079(eq[A167817(n), A181801(n+1)])]` -/
def P266918029070628355.Spec : Prop :=
  ∀ n, P266918029070628355.a n = A113829 (n + 1)

end A113829

/-!
# A113830: Leading term of a 2 X n generalized arithmetic progression (GAP) of primes with smallest last term.

The programs for A113830, there is no canonical definition to state claims against.
-/

/-! ## A113830.P1699508330673472465

`A116470(xor(A098387(n+1), A322966(n+1)))`
-/

namespace A113830.P1699508330673472465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116470 (Int.xor (A098387 (n + 1)) (A322966 (n + 1))).toNat

end

end A113830.P1699508330673472465

/-!
# A113832: Triangle read by rows: row n (n>=2) gives a set of n primes with the property that the pairwise averages are all primes, having the smallest largest element.

The programs for A113832, there is no canonical definition to state claims against.
-/

/-! ## A113832.P15750480872164525929

`A115631(A077168(n+1))`
-/

namespace A113832.P15750480872164525929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115631 (A077168 (n + 1)).toNat

end

end A113832.P15750480872164525929

/-! ## A113832.P12854569055664199233

`A115631(A043319(n+2))`
-/

namespace A113832.P12854569055664199233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115631 (A043319 (n + 2)).toNat

end

end A113832.P12854569055664199233

/-! ## A113832.P12148872040303215578

`A115631(A044916(n+2))`
-/

namespace A113832.P12148872040303215578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115631 (A044916 (n + 2)).toNat

end

end A113832.P12148872040303215578

/-! ## A113832.P15860350214548271735

`A115631(A065672(n+2))`
-/

namespace A113832.P15860350214548271735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115631 (A065672 (n + 2)).toNat

end

end A113832.P15860350214548271735

/-! ## A113832.P10949952298276122382

`A115631(A065673(n+2))`
-/

namespace A113832.P10949952298276122382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115631 (A065673 (n + 2)).toNat

end

end A113832.P10949952298276122382

/-!
# A113834: Last term of smallest p-term arithmetic progression of primes beginning with p, where p = n-th prime.

The programs for A113834, there is no canonical definition to state claims against.
-/

/-! ## A113834.P14555147839610738174

`A231406(A007504(n+1))`
-/

namespace A113834.P14555147839610738174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231406 (A007504 (n + 1)).toNat

end

end A113834.P14555147839610738174

/-! ## A113834.P6900933390373071080

`A231406(∑[A000040(n+1)])`
-/

namespace A113834.P6900933390373071080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231406 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A113834.P6900933390373071080

/-! ## A113834.P7581080033820990566

`A231406(∑[A000720(A006450(n+1))])`
-/

namespace A113834.P7581080033820990566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A006450 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231406 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A113834.P7581080033820990566

/-! ## A113834.P5065932963294734534

`A231406(A239731(n+1)+A006450(n+1))`
-/

namespace A113834.P5065932963294734534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231406 (A239731 (n + 1) + A006450 (n + 1)).toNat

end

end A113834.P5065932963294734534

/-!
# A113835: a(n) = a(n-1) + 2^(A007494(n-1)).

The programs for A113835, the canonical program `A113835.P14549211177971540180` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113835 has offset 1).

The definition of A113835 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113835.P14549211177971540180

`a(n-1)+2^A007494(n)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A113835

/-- `a(n-1)+2^A007494(n)` -/
def P14549211177971540180.Spec : Prop :=
  ∀ n, P14549211177971540180.a n = (A113835 (n + 1) : ℚ)

end A113835

/-! ## A113835.P3389405648474821318

`∑[ogf((1+4x)/(1-8x^2))]`
-/

namespace A113835.P3389405648474821318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4] [1, 0, -8] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113835.P3389405648474821318

namespace A113835

/-- `∑[ogf((1+4x)/(1-8x^2))]` -/
def P3389405648474821318.Spec : Prop :=
  ∀ n, P3389405648474821318.a n = A113835 (n + 1)

end A113835

/-! ## A113835.P18284848807642378388

`ogf((1+4x)/(1-x-8x^2+8x^3))`
-/

namespace A113835.P18284848807642378388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4] [1, -1, -8, 8] n

end

end A113835.P18284848807642378388

namespace A113835

/-- `ogf((1+4x)/(1-x-8x^2+8x^3))` -/
def P18284848807642378388.Spec : Prop :=
  ∀ n, P18284848807642378388.a n = A113835 (n + 1)

end A113835

/-! ## A113835.P13254021385377390519

`∑[8*a(n-2)]` with `a(0)=1, a(1)=4`
-/

namespace A113835.P13254021385377390519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  8 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113835.P13254021385377390519

namespace A113835

/-- `∑[8*a(n-2)]` -/
def P13254021385377390519.Spec : Prop :=
  ∀ n, (P13254021385377390519.a n : ℤ) = A113835 (n + 1)

end A113835

/-! ## A113835.P10343014029815537055

`∑[2^ceil(3*n/2)]`
-/

namespace A113835.P10343014029815537055
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈3 * ((n : ℚ) / 2)⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113835.P10343014029815537055

namespace A113835

/-- `∑[2^ceil(3*n/2)]` -/
def P10343014029815537055.Spec : Prop :=
  ∀ n, P10343014029815537055.a n = (A113835 (n + 1) : ℚ)

end A113835

/-! ## A113835.P13068630579940283173

`∑[∏[4/gcd(2, n)]]/2`
-/

namespace A113835.P13068630579940283173
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (Nat.gcd 2 n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) / 2

end

end A113835.P13068630579940283173

namespace A113835

/-- `∑[∏[4/gcd(2, n)]]/2` -/
def P13068630579940283173.Spec : Prop :=
  ∀ n, P13068630579940283173.a n = (A113835 (n + 1) : ℚ)

end A113835

/-! ## A113835.P9994888518074334889

`8*a(n-2)+5` with `a(0)=1, a(1)=5`
-/

namespace A113835.P9994888518074334889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  8 * a (n - 2) + 5

end

end A113835.P9994888518074334889

namespace A113835

/-- `8*a(n-2)+5` -/
def P9994888518074334889.Spec : Prop :=
  ∀ n, (P9994888518074334889.a n : ℤ) = A113835 (n + 1)

end A113835

/-! ## A113835.P13366492418376311269

`lcm(8, a(n-2))+5` with `a(0)=1, a(1)=5`
-/

namespace A113835.P13366492418376311269
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  Nat.lcm 8 (a (n - 2)) + 5

end

end A113835.P13366492418376311269

namespace A113835

/-- `lcm(8, a(n-2))+5` -/
def P13366492418376311269.Spec : Prop :=
  ∀ n, (P13366492418376311269.a n : ℤ) = A113835 (n + 1)

end A113835

/-! ## A113835.P7836028883191073620

`or(5, 8*a(n-2))` with `a(0)=1, a(1)=5`
-/

namespace A113835.P7836028883191073620
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  Nat.lor 5 (8 * a (n - 2))

end

end A113835.P7836028883191073620

namespace A113835

/-- `or(5, 8*a(n-2))` -/
def P7836028883191073620.Spec : Prop :=
  ∀ n, (P7836028883191073620.a n : ℤ) = A113835 (n + 1)

end A113835

/-! ## A113835.P16975765576968580383

`xor(5, 8*a(n-2))` with `a(0)=1, a(1)=5`
-/

namespace A113835.P16975765576968580383
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  Nat.xor 5 (8 * a (n - 2))

end

end A113835.P16975765576968580383

namespace A113835

/-- `xor(5, 8*a(n-2))` -/
def P16975765576968580383.Spec : Prop :=
  ∀ n, (P16975765576968580383.a n : ℤ) = A113835 (n + 1)

end A113835

/-! ## A113835.P9568699204195288189

`∑[2^∑[3-a(n-1)]]/2` with `a(0)=1`
-/

namespace A113835.P9568699204195288189
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  3 - f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) / 2

end

end A113835.P9568699204195288189

namespace A113835

/-- `∑[2^∑[3-a(n-1)]]/2` -/
def P9568699204195288189.Spec : Prop :=
  ∀ n, P9568699204195288189.a n = (A113835 (n + 1) : ℚ)

end A113835

/-! ## A113835.P7720134110132142096

`floor(∑[2^∑[3-a(n-1)]])` with `a(0)=0, a(1)=2`
-/

namespace A113835.P7720134110132142096
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  3 - f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A113835.P7720134110132142096

namespace A113835

/-- `floor(∑[2^∑[3-a(n-1)]])` -/
def P7720134110132142096.Spec : Prop :=
  ∀ n, P7720134110132142096.a n = A113835 (n + 1)

end A113835

/-! ## A113835.P5802399369561426384

`A094015(n)+a(n-1)` with `a(0)=1`
-/

namespace A113835.P5802399369561426384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A094015 n + a (n - 1)

end

end A113835.P5802399369561426384

namespace A113835

/-- `A094015(n)+a(n-1)` -/
def P5802399369561426384.Spec : Prop :=
  ∀ n, P5802399369561426384.a n = A113835 (n + 1)

end A113835

/-! ## A113835.P4104446767477911367

`A137529(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A113835.P4104446767477911367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A137529 (n + n) + a (n - 1)

end

end A113835.P4104446767477911367

namespace A113835

/-- `A137529(n+n)+a(n-1)` -/
def P4104446767477911367.Spec : Prop :=
  ∀ n, P4104446767477911367.a n = A113835 (n + 1)

end A113835

/-!
# A113836: a(n) = Sum[2^(A001651(i-1)-1), {i,1,n}].

The programs for A113836, the canonical program `A113836.P8703258073001775591` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113836 has offset 1).

The definition of A113836 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 222 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113836.P8703258073001775591

`∑[∏[(2^n)%6]]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113836

/-- `∑[∏[(2^n)%6]]` -/
def P8703258073001775591.Spec : Prop :=
  ∀ n, (P8703258073001775591.a n : ℤ) = A113836 (n + 1)

theorem P8703258073001775591.correct : P8703258073001775591.Spec := by
  intro n
  simp only [A113836, Nat.add_sub_cancel]

end A113836

/-! ## A113836.P10383243044402054766

`∑[ogf((1+2x)/(1-8x^2))]`
-/

namespace A113836.P10383243044402054766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, 0, -8] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113836.P10383243044402054766

namespace A113836

/-- `∑[ogf((1+2x)/(1-8x^2))]` -/
def P10383243044402054766.Spec : Prop :=
  ∀ n, P10383243044402054766.a n = A113836 (n + 1)

end A113836

/-! ## A113836.P1746439563533436792

`ogf((1+2x)/(1-x-8x^2+8x^3))`
-/

namespace A113836.P1746439563533436792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -1, -8, 8] n

end

end A113836.P1746439563533436792

namespace A113836

/-- `ogf((1+2x)/(1-x-8x^2+8x^3))` -/
def P1746439563533436792.Spec : Prop :=
  ∀ n, P1746439563533436792.a n = A113836 (n + 1)

end A113836

/-! ## A113836.P9960414956339800829

`∑[8*a(n-2)]` with `a(0)=1, a(1)=2`
-/

namespace A113836.P9960414956339800829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  8 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113836.P9960414956339800829

namespace A113836

/-- `∑[8*a(n-2)]` -/
def P9960414956339800829.Spec : Prop :=
  ∀ n, (P9960414956339800829.a n : ℤ) = A113836 (n + 1)

end A113836

/-! ## A113836.P5524962609700937895

`∑[2^floor(3*n/2)]`
-/

namespace A113836.P5524962609700937895
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊3 * ((n : ℚ) / 2)⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113836.P5524962609700937895

namespace A113836

/-- `∑[2^floor(3*n/2)]` -/
def P5524962609700937895.Spec : Prop :=
  ∀ n, P5524962609700937895.a n = (A113836 (n + 1) : ℚ)

end A113836

/-! ## A113836.P18136125916997696922

`8*a(n-2)+3` with `a(0)=1, a(1)=3`
-/

namespace A113836.P18136125916997696922
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  8 * a (n - 2) + 3

end

end A113836.P18136125916997696922

namespace A113836

/-- `8*a(n-2)+3` -/
def P18136125916997696922.Spec : Prop :=
  ∀ n, (P18136125916997696922.a n : ℤ) = A113836 (n + 1)

end A113836

/-! ## A113836.P13599347547390506714

`lcm(8, a(n-2))+3` with `a(0)=1, a(1)=3`
-/

namespace A113836.P13599347547390506714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Nat.lcm 8 (a (n - 2)) + 3

end

end A113836.P13599347547390506714

namespace A113836

/-- `lcm(8, a(n-2))+3` -/
def P13599347547390506714.Spec : Prop :=
  ∀ n, (P13599347547390506714.a n : ℤ) = A113836 (n + 1)

end A113836

/-! ## A113836.P3458139266906655990

`or(3, 8*a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A113836.P3458139266906655990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Nat.lor 3 (8 * a (n - 2))

end

end A113836.P3458139266906655990

namespace A113836

/-- `or(3, 8*a(n-2))` -/
def P3458139266906655990.Spec : Prop :=
  ∀ n, (P3458139266906655990.a n : ℤ) = A113836 (n + 1)

end A113836

/-! ## A113836.P8579918494074400435

`xor(3, 8*a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A113836.P8579918494074400435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Nat.xor 3 (8 * a (n - 2))

end

end A113836.P8579918494074400435

namespace A113836

/-- `xor(3, 8*a(n-2))` -/
def P8579918494074400435.Spec : Prop :=
  ∀ n, (P8579918494074400435.a n : ℤ) = A113836 (n + 1)

end A113836

/-! ## A113836.P10254766862448897022

`floor(∑[2^∑[3-a(n-1)]])` with `a(0)=0, a(1)=1`
-/

namespace A113836.P10254766862448897022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  3 - f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A113836.P10254766862448897022

namespace A113836

/-- `floor(∑[2^∑[3-a(n-1)]])` -/
def P10254766862448897022.Spec : Prop :=
  ∀ n, P10254766862448897022.a n = A113836 (n + 1)

end A113836

/-! ## A113836.P5917566823530663194

`3*3*a(n-2)-(a(n-2)-3)` with `a(0)=1, a(1)=3`
-/

namespace A113836.P5917566823530663194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  3 * (3 * a (n - 2)) - (a (n - 2) - 3)

end

end A113836.P5917566823530663194

namespace A113836

/-- `3*3*a(n-2)-(a(n-2)-3)` -/
def P5917566823530663194.Spec : Prop :=
  ∀ n, P5917566823530663194.a n = A113836 (n + 1)

end A113836

/-! ## A113836.P773250330999543120

`record[∑[A137718(n)]]`
-/

namespace A113836.P773250330999543120
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137718 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113836.P773250330999543120

namespace A113836

/-- `record[∑[A137718(n)]]` -/
def P773250330999543120.Spec : Prop :=
  ∀ n, P773250330999543120.a n = A113836 (n + 1)

end A113836

/-! ## A113836.P13952504678484633990

`∑[8^n/a(n-1)]/2` with `a(0)=2`
-/

namespace A113836.P13952504678484633990
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  (8 ^ n : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) / 2

end

end A113836.P13952504678484633990

namespace A113836

/-- `∑[8^n/a(n-1)]/2` -/
def P13952504678484633990.Spec : Prop :=
  ∀ n, P13952504678484633990.a n = (A113836 (n + 1) : ℚ)

end A113836

/-!
# A113837: A number k is included if d(sigma(k)) > sigma(d(k)), where d(k) is number of positive divisors of k and sigma(k) is sum of positive divisors of k.

The programs for A113837, there is no canonical definition to state claims against.
-/

/-! ## A113837.P6896553797194125989

`lt[0, A076360(n+1)]+1`
-/

namespace A113837.P6896553797194125989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076360 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A113837.P6896553797194125989

/-! ## A113837.P12219315448194717065

`lt[0, A076360(A028310(n))]`
-/

namespace A113837.P12219315448194717065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076360 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A113837.P12219315448194717065

/-! ## A113837.P7068371161736803555

`lt[A062069(n+1), A062068(n+1)]+1`
-/

namespace A113837.P7068371161736803555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062068 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A113837.P7068371161736803555

/-! ## A113837.P9885448388491046965

`lt[A191218(n+1), A272680(A272680(n))]`
-/

namespace A113837.P9885448388491046965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272680 (A272680 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A113837.P9885448388491046965

/-! ## A113837.P13380494520355469160

`lt[A033879(n+1), A127386(A070787(n+3))]`
-/

namespace A113837.P13380494520355469160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127386 (A070787 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A113837.P13380494520355469160

/-!
# A113838: Palindromes sandwiched between twin primes.

The programs for A113838, there is no canonical definition to state claims against.
-/

/-! ## A113838.P16285287452793352619

`p?[A054266(n+1)+2]-1`
-/

namespace A113838.P16285287452793352619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054266 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A113838.P16285287452793352619

/-! ## A113838.P12877538350947899447

`p?[A242387(n+1)+2]-1`
-/

namespace A113838.P12877538350947899447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242387 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A113838.P12877538350947899447

/-! ## A113838.P8867338503297285117

`∩[A002113(n+1), A014574(n+1)]`
-/

namespace A113838.P8867338503297285117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113838.P8867338503297285117

/-! ## A113838.P15950064615023057525

`A000027(xor(1, p?[A054266(n+1)+2]))`
-/

namespace A113838.P15950064615023057525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054266 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A113838.P15950064615023057525

/-! ## A113838.P3571482577073862096

`xor(A020985(n)², p?[A054266(n+1)+2])`
-/

namespace A113838.P3571482577073862096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054266 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A020985 n ^ 2) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A113838.P3571482577073862096

/-!
# A113839: Powerful numbers (definition 1) sandwiched between twin primes.

The programs for A113839, there is no canonical definition to state claims against.
-/

/-! ## A113839.P8336711110540050511

`∩[A001694(n+1), A258838(n+1)]`
-/

namespace A113839.P8336711110540050511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113839.P8336711110540050511

/-! ## A113839.P2634319889044943651

`∩[A140104(n+1), A258838(n+1)]`
-/

namespace A113839.P2634319889044943651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113839.P2634319889044943651

/-! ## A113839.P9038901953365200173

`∩[A258838(n+1), A359749(n+1)]`
-/

namespace A113839.P9038901953365200173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113839.P9038901953365200173

/-! ## A113839.P15147441601105589555

`∩[A258838(n+1), A387528(n+1)]`
-/

namespace A113839.P15147441601105589555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113839.P15147441601105589555

/-! ## A113839.P7140503191038079995

`∩[A258838(n+1), A390010(n+1)]`
-/

namespace A113839.P7140503191038079995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113839.P7140503191038079995

/-!
# A113840: Palindromes that are sandwiched between a prime and a powerful(1) number, in any order.

The programs for A113840, there is no canonical definition to state claims against.
-/

/-! ## A113840.P797600380013914700

`A051934(eq[2, A100890(n+2)])`
-/

namespace A113840.P797600380013914700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100890 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051934 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113840.P797600380013914700

/-!
# A113841: a(n) = a(n-1) + 2^A047240(n) for n>1, a(1)=1.

The programs for A113841, the canonical program `A113841.P18113131803144717511` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113841 has offset 1).

The definition of A113841 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113841.P18113131803144717511

`a(n-1)+64*a(n-3)-64*a(n-4)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=71`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113841

/-- `a(n-1)+64*a(n-3)-64*a(n-4)` -/
def P18113131803144717511.Spec : Prop :=
  ∀ n, P18113131803144717511.a n = A113841 (n + 1)

theorem P18113131803144717511.correct : P18113131803144717511.Spec := by
  intro n
  simp only [A113841, Nat.add_sub_cancel]

end A113841

/-! ## A113841.P5499595700465749183

`a(n-1)+2^A047240(n+1)` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A113841.P5499595700465749183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (2 : ℚ) ^ (A047240 (n + 1) : ℤ)

end

end A113841.P5499595700465749183

namespace A113841

/-- `a(n-1)+2^A047240(n+1)` -/
def P5499595700465749183.Spec : Prop :=
  ∀ n, P5499595700465749183.a n = (A113841 (n + 1) : ℚ)

end A113841

/-! ## A113841.P16237552751268926901

`∑[64*a(n-3)]` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A113841.P16237552751268926901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n f1 =>
  64 * f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113841.P16237552751268926901

namespace A113841

/-- `∑[64*a(n-3)]` -/
def P16237552751268926901.Spec : Prop :=
  ∀ n, (P16237552751268926901.a n : ℤ) = A113841 (n + 1)

end A113841

/-! ## A113841.P6195404878556143990

`∑[2^(2*n-n%3)]`
-/

namespace A113841.P6195404878556143990
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((2 * n : ℤ) - ((n % 3 : ℕ) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113841.P6195404878556143990

namespace A113841

/-- `∑[2^(2*n-n%3)]` -/
def P6195404878556143990.Spec : Prop :=
  ∀ n, P6195404878556143990.a n = (A113841 (n + 1) : ℚ)

end A113841

/-! ## A113841.P3829439517913170100

`64*a(n-3)+7` with `a(0)=1, a(1)=3, a(2)=7`
-/

namespace A113841.P3829439517913170100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 7] fun n a =>
  64 * a (n - 3) + 7

end

end A113841.P3829439517913170100

namespace A113841

/-- `64*a(n-3)+7` -/
def P3829439517913170100.Spec : Prop :=
  ∀ n, (P3829439517913170100.a n : ℤ) = A113841 (n + 1)

end A113841

/-! ## A113841.P10721213369473827064

`∑[2^∑[gcd(4, a(n-3))]]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A113841.P10721213369473827064
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n f2 =>
  Nat.gcd 4 (f2 (n - 3))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113841.P10721213369473827064

namespace A113841

/-- `∑[2^∑[gcd(4, a(n-3))]]` -/
def P10721213369473827064.Spec : Prop :=
  ∀ n, (P10721213369473827064.a n : ℤ) = A113841 (n + 1)

end A113841

/-! ## A113841.P14285817860662657509

`∑[2^∑[floor(a(n-3))]]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A113841.P14285817860662657509
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 4] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113841.P14285817860662657509

namespace A113841

/-- `∑[2^∑[floor(a(n-3))]]` -/
def P14285817860662657509.Spec : Prop :=
  ∀ n, (P14285817860662657509.a n : ℤ) = A113841 (n + 1)

end A113841

/-! ## A113841.P654142571409323225

`∑[2^Δ[A109340(n)]]`
-/

namespace A113841.P654142571409323225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109340 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113841.P654142571409323225

namespace A113841

/-- `∑[2^Δ[A109340(n)]]` -/
def P654142571409323225.Spec : Prop :=
  ∀ n, P654142571409323225.a n = (A113841 (n + 1) : ℚ)

end A113841

/-! ## A113841.P14880127075511555057

`∑[2^A047240(n+1)]`
-/

namespace A113841.P14880127075511555057
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A047240 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113841.P14880127075511555057

namespace A113841

/-- `∑[2^A047240(n+1)]` -/
def P14880127075511555057.Spec : Prop :=
  ∀ n, P14880127075511555057.a n = (A113841 (n + 1) : ℚ)

end A113841

/-! ## A113841.P10041926001474022655

`∑[2^(A047228(n+1)-2)]`
-/

namespace A113841.P10041926001474022655
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A047228 (n + 1) - 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113841.P10041926001474022655

namespace A113841

/-- `∑[2^(A047228(n+1)-2)]` -/
def P10041926001474022655.Spec : Prop :=
  ∀ n, P10041926001474022655.a n = (A113841 (n + 1) : ℚ)

end A113841

/-! ## A113841.P5763407661965575980

`∑[A000079(A047240(n+1))]`
-/

namespace A113841.P5763407661965575980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A047240 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113841.P5763407661965575980

namespace A113841

/-- `∑[A000079(A047240(n+1))]` -/
def P5763407661965575980.Spec : Prop :=
  ∀ n, P5763407661965575980.a n = A113841 (n + 1)

end A113841

/-! ## A113841.P13655552723209932520

`∑[A034008(A064429(2*n+1))]`
-/

namespace A113841.P13655552723209932520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (A064429 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113841.P13655552723209932520

namespace A113841

/-- `∑[A034008(A064429(2*n+1))]` -/
def P13655552723209932520.Spec : Prop :=
  ∀ n, P13655552723209932520.a n = A113841 (n + 1)

end A113841

/-! ## A113841.P2073413740872416575

`∑[A000079(A236348(2*n)-1)]`
-/

namespace A113841.P2073413740872416575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A236348 (2 * n) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113841.P2073413740872416575

namespace A113841

/-- `∑[A000079(A236348(2*n)-1)]` -/
def P2073413740872416575.Spec : Prop :=
  ∀ n, P2073413740872416575.a n = A113841 (n + 1)

end A113841

/-! ## A113841.P15605176460496595497

`∑[A000079(3*A002264(n)+n)]`
-/

namespace A113841.P15605176460496595497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (3 * A002264 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113841.P15605176460496595497

namespace A113841

/-- `∑[A000079(3*A002264(n)+n)]` -/
def P15605176460496595497.Spec : Prop :=
  ∀ n, P15605176460496595497.a n = A113841 (n + 1)

end A113841

/-! ## A113841.P6195013796806362478

`∑[A000079(A064429(2*n+1)-2)]`
-/

namespace A113841.P6195013796806362478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A064429 (2 * n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113841.P6195013796806362478

namespace A113841

/-- `∑[A000079(A064429(2*n+1)-2)]` -/
def P6195013796806362478.Spec : Prop :=
  ∀ n, P6195013796806362478.a n = A113841 (n + 1)

end A113841

/-! ## A113841.P18173372194009453777

`∑[A011782(A080782(2*(n+1))-2)]`
-/

namespace A113841.P18173372194009453777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A080782 (2 * (n + 1)) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113841.P18173372194009453777

namespace A113841

/-- `∑[A011782(A080782(2*(n+1))-2)]` -/
def P18173372194009453777.Spec : Prop :=
  ∀ n, P18173372194009453777.a n = A113841 (n + 1)

end A113841

/-! ## A113841.P6787339304542691805

`∑[A011782(4*n+2-A030118(2*n+1))]`
-/

namespace A113841.P6787339304542691805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 ((4 * n + 2 : ℤ) - A030118 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113841.P6787339304542691805

namespace A113841

/-- `∑[A011782(4*n+2-A030118(2*n+1))]` -/
def P6787339304542691805.Spec : Prop :=
  ∀ n, P6787339304542691805.a n = A113841 (n + 1)

end A113841

/-! ## A113841.P5392871522018298867

`∑[A291778(2*n)²/A291778(n+1)]`
-/

namespace A113841.P5392871522018298867
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291778 (2 * n) ^ 2 : ℚ) / (A291778 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113841.P5392871522018298867

namespace A113841

/-- `∑[A291778(2*n)²/A291778(n+1)]` -/
def P5392871522018298867.Spec : Prop :=
  ∀ n, P5392871522018298867.a n = (A113841 (n + 1) : ℚ)

end A113841

/-!
# A113842: a(n) = Prime(tribonacci(n)).

The programs for A113842, the canonical program `A113842.P2198665035172418938` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113842 has offset 2).

The definition of A113842 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113842.P2198665035172418938

`A000040(A000073(n+2))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A113842

/-- `A000040(A000073(n+2))` -/
def P2198665035172418938.Spec : Prop :=
  ∀ n, P2198665035172418938.a n = A113842 (n + 2)

theorem P2198665035172418938.correct : P2198665035172418938.Spec := by
  intro n
  simp only [A113842, Nat.add_sub_cancel]

end A113842

/-! ## A113842.P13206876291301012484

`A000040(Δ[2*a(n-1)-a(n-4)])` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A113842.P13206876291301012484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 4] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (n + 1) - f1 n).toNat

end

end A113842.P13206876291301012484

namespace A113842

/-- `A000040(Δ[2*a(n-1)-a(n-4)])` -/
def P13206876291301012484.Spec : Prop :=
  ∀ n, P13206876291301012484.a n = A113842 (n + 2)

end A113842

/-! ## A113842.P9420082240308255852

`A000040(A104580(∑[n]))`
-/

namespace A113842.P9420082240308255852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A104580 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A113842.P9420082240308255852

namespace A113842

/-- `A000040(A104580(∑[n]))` -/
def P9420082240308255852.Spec : Prop :=
  ∀ n, P9420082240308255852.a n = A113842 (n + 2)

end A113842

/-! ## A113842.P3144579498942661070

`A000040(A106522(∑[n]))`
-/

namespace A113842.P3144579498942661070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A106522 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A113842.P3144579498942661070

namespace A113842

/-- `A000040(A106522(∑[n]))` -/
def P3144579498942661070.Spec : Prop :=
  ∀ n, P3144579498942661070.a n = A113842 (n + 2)

end A113842

/-! ## A113842.P10181733997271327317

`A000040(A187889(∑[n]))`
-/

namespace A113842.P10181733997271327317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A187889 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A113842.P10181733997271327317

namespace A113842

/-- `A000040(A187889(∑[n]))` -/
def P10181733997271327317.Spec : Prop :=
  ∀ n, P10181733997271327317.a n = A113842 (n + 2)

end A113842

/-!
# A113843: Tetranacci analog of A055502.

The programs for A113843, there is no canonical definition to state claims against.
-/

/-! ## A113843.P9208977486281991040

`A129759(A052547(2*n))+1-ceil(acot(n))`
-/

namespace A113843.P9208977486281991040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129759 (A052547 (2 * n)).toNat + 1 - ⌈SequenceMachineLib.acot (n : ℝ)⌉

end

end A113843.P9208977486281991040

/-! ## A113843.P16270551059651765563

`A129759(A052547(2*n))-A000007(n)`
-/

namespace A113843.P16270551059651765563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129759 (A052547 (2 * n)).toNat - A000007 n

end

end A113843.P16270551059651765563

/-! ## A113843.P12630635753015838015

`A129759(A052547(2*n))%A028054(n)`
-/

namespace A113843.P12630635753015838015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129759 (A052547 (2 * n)).toNat) (A028054 n)

end

end A113843.P12630635753015838015

/-! ## A113843.P6180802780471436243

`A129759(A052547(2*n))*A293901(n+1)`
-/

namespace A113843.P6180802780471436243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129759 (A052547 (2 * n)).toNat * A293901 (n + 1)

end

end A113843.P6180802780471436243

/-! ## A113843.P12845644597399683074

`∑[A181934(n+1)-A181940(A181934(n+1))]`
-/

namespace A113843.P12845644597399683074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181934 (n + 1) - A181940 (A181934 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113843.P12845644597399683074

/-!
# A113844: a(1) =a(2) =1. a(n+1) = (sum{1<=k<=n/2} a(k)) * (sum{n/2

The programs for A113844, there is no canonical definition to state claims against.
-/

/-! ## A113844.P11069580321924888559

`A144107(floor((n+1)²/2)+1)`
-/

namespace A113844.P11069580321924888559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144107 (⌊((n + 1) ^ 2 : ℚ) / 2⌋ + 1).toNat

end

end A113844.P11069580321924888559

/-! ## A113844.P12866035270226642993

`p?[A144107(2*n+1)+1]-1`
-/

namespace A113844.P12866035270226642993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144107 (2 * n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A113844.P12866035270226642993

/-! ## A113844.P8575466164220348625

`A100143(A319559(n))`
-/

namespace A113844.P8575466164220348625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100143 (A319559 n).toNat

end

end A113844.P8575466164220348625

/-! ## A113844.P7457291718375212825

`A324842(A371791(n))`
-/

namespace A113844.P7457291718375212825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324842 (A371791 n).toNat

end

end A113844.P7457291718375212825

/-!
# A113845: a(1) = a(2) = 1. a(n+1) = (Product_{k=1..floor(n/2)} a(k)) + (Product_{j=ceiling((n+1)/2)..n} a(j)).

The programs for A113845, there is no canonical definition to state claims against.
-/

/-! ## A113845.P10269927953589077207

`A000177(∑[∑[A260694(n)]])`
-/

namespace A113845.P10269927953589077207
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260694 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000177 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A113845.P10269927953589077207

/-! ## A113845.P9679160142732709946

`A103221(A181074(n))+A006158(n+1)`
-/

namespace A113845.P9679160142732709946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A181074 n).toNat + A006158 (n + 1)

end

end A113845.P9679160142732709946

/-!
# A113848: a(1) = a(2) = 1, a(n+2) = 2*a(n) + a(n+1)^2.

The programs for A113848, the canonical program `A113848.P6232658400785464885` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113848 has offset 1).

The definition of A113848 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113848.P6232658400785464885

`2*a(n-2)+a(n-1)²` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113848

/-- `2*a(n-2)+a(n-1)²` -/
def P6232658400785464885.Spec : Prop :=
  ∀ n, (P6232658400785464885.a n : ℤ) = A113848 (n + 1)

theorem P6232658400785464885.correct : P6232658400785464885.Spec := by
  intro n
  simp only [A113848, Nat.add_sub_cancel]

end A113848

/-! ## A113848.P11907919855147701430

`lcm(2, a(n-2))+a(n-1)²` with `a(0)=1, a(1)=1`
-/

namespace A113848.P11907919855147701430
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.lcm 2 (a (n - 2)) + a (n - 1) ^ 2

end

end A113848.P11907919855147701430

namespace A113848

/-- `lcm(2, a(n-2))+a(n-1)²` -/
def P11907919855147701430.Spec : Prop :=
  ∀ n, (P11907919855147701430.a n : ℤ) = A113848 (n + 1)

end A113848

/-! ## A113848.P16128517664836824117

`a(n-1)²+2/a(n-2)^(-1)` with `a(0)=1, a(1)=1`
-/

namespace A113848.P16128517664836824117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) ^ 2 + 2 / a (n - 2) ^ (-1 : ℤ)

end

end A113848.P16128517664836824117

namespace A113848

/-- `a(n-1)²+2/a(n-2)^(-1)` -/
def P16128517664836824117.Spec : Prop :=
  ∀ n, P16128517664836824117.a n = (A113848 (n + 1) : ℚ)

end A113848

/-! ## A113848.P16507375231671715474

`a(n-2)+a(n-1)²+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A113848.P16507375231671715474
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + (a (n - 1) ^ 2 + a (n - 2))

end

end A113848.P16507375231671715474

namespace A113848

/-- `a(n-2)+a(n-1)²+a(n-2)` -/
def P16507375231671715474.Spec : Prop :=
  ∀ n, (P16507375231671715474.a n : ℤ) = A113848 (n + 1)

theorem P16507375231671715474.correct : P16507375231671715474.Spec := by
  intro n
  simp only [A113848, Nat.add_sub_cancel, A113848.P16507375231671715474.a, A113848.P6232658400785464885.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A113848

/-! ## A113848.P16850555325421004845

`2*a(n-2)+a(n-1)*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A113848.P16850555325421004845
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * a (n - 2) + a (n - 1) * a (n - 1)

end

end A113848.P16850555325421004845

namespace A113848

/-- `2*a(n-2)+a(n-1)*a(n-1)` -/
def P16850555325421004845.Spec : Prop :=
  ∀ n, (P16850555325421004845.a n : ℤ) = A113848 (n + 1)

theorem P16850555325421004845.correct : P16850555325421004845.Spec := by
  intro n
  simp only [A113848, Nat.add_sub_cancel, A113848.P16850555325421004845.a, A113848.P6232658400785464885.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A113848

/-!
# A113849: Numbers whose prime factors are raised to the fourth power.

The programs for A113849, the canonical program `A113849.P8712089641262290933` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113849 has offset 1).

The definition of A113849 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A113849.P8712089641262290933

`A005117(n+2)^4`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A113849

/-- `A005117(n+2)^4` -/
def P8712089641262290933.Spec : Prop :=
  ∀ n, P8712089641262290933.a n = A113849 (n + 1)

theorem P8712089641262290933.correct : P8712089641262290933.Spec := by
  intro n
  simp only [A113849, Nat.add_sub_cancel]

end A113849

/-! ## A113849.P11635879742105764445

`A144338(n+1)^4`
-/

namespace A113849.P11635879742105764445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1) ^ 4

end

end A113849.P11635879742105764445

namespace A113849

/-- `A144338(n+1)^4` -/
def P11635879742105764445.Spec : Prop :=
  ∀ n, P11635879742105764445.a n = A113849 (n + 1)

end A113849

/-! ## A113849.P14266084227903187717

`lt[A087049(n), 1]²²`
-/

namespace A113849.P14266084227903187717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n ^ 2) ^ 2

end

end A113849.P14266084227903187717

namespace A113849

/-- `lt[A087049(n), 1]²²` -/
def P14266084227903187717.Spec : Prop :=
  ∀ n, (P14266084227903187717.a n : ℤ) = A113849 (n + 1)

end A113849

/-! ## A113849.P1929589614044018518

`record[A007913(n+2)^4]`
-/

namespace A113849.P1929589614044018518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 2) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113849.P1929589614044018518

namespace A113849

/-- `record[A007913(n+2)^4]` -/
def P1929589614044018518.Spec : Prop :=
  ∀ n, P1929589614044018518.a n = A113849 (n + 1)

end A113849

/-! ## A113849.P6534124408754724333

`record[A007947(n+2)^4]`
-/

namespace A113849.P6534124408754724333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 2) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113849.P6534124408754724333

namespace A113849

/-- `record[A007947(n+2)^4]` -/
def P6534124408754724333.Spec : Prop :=
  ∀ n, P6534124408754724333.a n = A113849 (n + 1)

end A113849

/-! ## A113849.P3479598208395456037

`record[A003967(n+2)²²]`
-/

namespace A113849.P3479598208395456037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003967 (n + 2) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113849.P3479598208395456037

namespace A113849

/-- `record[A003967(n+2)²²]` -/
def P3479598208395456037.Spec : Prop :=
  ∀ n, P3479598208395456037.a n = A113849 (n + 1)

end A113849

/-! ## A113849.P6744135049649251101

`record[A055231(n+2)²²]`
-/

namespace A113849.P6744135049649251101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055231 (n + 2) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113849.P6744135049649251101

namespace A113849

/-- `record[A055231(n+2)²²]` -/
def P6744135049649251101.Spec : Prop :=
  ∀ n, P6744135049649251101.a n = A113849 (n + 1)

end A113849

/-! ## A113849.P4901351787201938837

`record[A055653(n+2)²²]`
-/

namespace A113849.P4901351787201938837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055653 (n + 2) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113849.P4901351787201938837

namespace A113849

/-- `record[A055653(n+2)²²]` -/
def P4901351787201938837.Spec : Prop :=
  ∀ n, P4901351787201938837.a n = A113849 (n + 1)

end A113849

/-! ## A113849.P6340214615301430191

`record[A325126(n+2)²²]`
-/

namespace A113849.P6340214615301430191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A325126 (n + 2) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113849.P6340214615301430191

namespace A113849

/-- `record[A325126(n+2)²²]` -/
def P6340214615301430191.Spec : Prop :=
  ∀ n, P6340214615301430191.a n = A113849 (n + 1)

end A113849

/-! ## A113849.P2709645108348818279

`A113851(n+1)^(2/3)`
-/

namespace A113849.P2709645108348818279
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A113851 (n + 1) : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A113849.P2709645108348818279

namespace A113849

/-- `A113851(n+1)^(2/3)` -/
def P2709645108348818279.Spec : Prop :=
  ∀ n, P2709645108348818279.a n = (A113849 (n + 1) : ℝ)

end A113849

/-! ## A113849.P9776389121942698043

`record[((n+2)*A008683(n+2))^4]`
-/

namespace A113849.P9776389121942698043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * A008683 (n + 2)) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113849.P9776389121942698043

namespace A113849

/-- `record[((n+2)*A008683(n+2))^4]` -/
def P9776389121942698043.Spec : Prop :=
  ∀ n, P9776389121942698043.a n = A113849 (n + 1)

end A113849

/-! ## A113849.P3891185127992757300

`A113850(n+1)/A144338(n+1)`
-/

namespace A113849.P3891185127992757300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113850 (n + 1) : ℚ) / (A144338 (n + 1) : ℚ)

end

end A113849.P3891185127992757300

namespace A113849

/-- `A113850(n+1)/A144338(n+1)` -/
def P3891185127992757300.Spec : Prop :=
  ∀ n, P3891185127992757300.a n = (A113849 (n + 1) : ℚ)

end A113849

/-! ## A113849.P4573971526403929774

`(A113852(n+1)²/A113851(n+1)²)²`
-/

namespace A113849.P4573971526403929774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A113852 (n + 1) ^ 2 : ℚ) / (A113851 (n + 1) ^ 2 : ℚ)) ^ 2

end

end A113849.P4573971526403929774

namespace A113849

/-- `(A113852(n+1)²/A113851(n+1)²)²` -/
def P4573971526403929774.Spec : Prop :=
  ∀ n, P4573971526403929774.a n = (A113849 (n + 1) : ℚ)

end A113849

/-! ## A113849.P11372351344178018527

`A062503(n+2)²`
-/

namespace A113849.P11372351344178018527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062503 (n + 2) ^ 2

end

end A113849.P11372351344178018527

namespace A113849

/-- `A062503(n+2)²` -/
def P11372351344178018527.Spec : Prop :=
  ∀ n, P11372351344178018527.a n = A113849 (n + 1)

end A113849

/-! ## A113849.P3419291565190678182

`Δ[A173143(n+1)]^4`
-/

namespace A113849.P3419291565190678182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 4

end

end A113849.P3419291565190678182

namespace A113849

/-- `Δ[A173143(n+1)]^4` -/
def P3419291565190678182.Spec : Prop :=
  ∀ n, P3419291565190678182.a n = A113849 (n + 1)

end A113849

/-! ## A113849.P10040594577974600914

`A113851(n+1)/A062503(n+2)`
-/

namespace A113849.P10040594577974600914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113851 (n + 1) : ℚ) / (A062503 (n + 2) : ℚ)

end

end A113849.P10040594577974600914

namespace A113849

/-- `A113851(n+1)/A062503(n+2)` -/
def P10040594577974600914.Spec : Prop :=
  ∀ n, P10040594577974600914.a n = (A113849 (n + 1) : ℚ)

end A113849

/-! ## A113849.P17495332473990572866

`A113852(n+1)/A062838(n+2)`
-/

namespace A113849.P17495332473990572866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113852 (n + 1) : ℚ) / (A062838 (n + 2) : ℚ)

end

end A113849.P17495332473990572866

namespace A113849

/-- `A113852(n+1)/A062838(n+2)` -/
def P17495332473990572866.Spec : Prop :=
  ∀ n, P17495332473990572866.a n = (A113849 (n + 1) : ℚ)

end A113849

/-! ## A113849.P7352279925620952672

`A005117(n+2)*A005117(n+2)*A062503(n+2)`
-/

namespace A113849.P7352279925620952672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 2) * A005117 (n + 2) * A062503 (n + 2)

end

end A113849.P7352279925620952672

namespace A113849

/-- `A005117(n+2)*A005117(n+2)*A062503(n+2)` -/
def P7352279925620952672.Spec : Prop :=
  ∀ n, P7352279925620952672.a n = A113849 (n + 1)

end A113849

/-! ## A113849.P8202050948125042937

`A062838(n+2)/A062503(n+2)*A062838(n+2)`
-/

namespace A113849.P8202050948125042937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062838 (n + 2) : ℚ) / (A062503 (n + 2) : ℚ) * (A062838 (n + 2) : ℚ)

end

end A113849.P8202050948125042937

namespace A113849

/-- `A062838(n+2)/A062503(n+2)*A062838(n+2)` -/
def P8202050948125042937.Spec : Prop :=
  ∀ n, P8202050948125042937.a n = (A113849 (n + 1) : ℚ)

end A113849

/-! ## A113849.P17983908702806337703

`record[A277802(n+2)²]`
-/

namespace A113849.P17983908702806337703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277802 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113849.P17983908702806337703

namespace A113849

/-- `record[A277802(n+2)²]` -/
def P17983908702806337703.Spec : Prop :=
  ∀ n, P17983908702806337703.a n = A113849 (n + 1)

end A113849

/-!
# A113850: Numbers whose prime factors are raised to the fifth power.

The programs for A113850, the canonical program `A113850.P6425203316220628880` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113850 has offset 1).

The definition of A113850 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A113850.P6425203316220628880

`A005117(n+2)^5`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A113850

/-- `A005117(n+2)^5` -/
def P6425203316220628880.Spec : Prop :=
  ∀ n, P6425203316220628880.a n = A113850 (n + 1)

theorem P6425203316220628880.correct : P6425203316220628880.Spec := by
  intro n
  simp only [A113850, Nat.add_sub_cancel]

end A113850

/-! ## A113850.P8655502210012563247

`A144338(n+1)^5`
-/

namespace A113850.P8655502210012563247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1) ^ 5

end

end A113850.P8655502210012563247

namespace A113850

/-- `A144338(n+1)^5` -/
def P8655502210012563247.Spec : Prop :=
  ∀ n, P8655502210012563247.a n = A113850 (n + 1)

end A113850

/-! ## A113850.P18015469896245919232

`A113849(n+1)*A144338(n+1)`
-/

namespace A113850.P18015469896245919232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113849 (n + 1) * A144338 (n + 1)

end

end A113850.P18015469896245919232

namespace A113850

/-- `A113849(n+1)*A144338(n+1)` -/
def P18015469896245919232.Spec : Prop :=
  ∀ n, P18015469896245919232.a n = A113850 (n + 1)

end A113850

/-! ## A113850.P1317257212765888762

`A005117(n+2)*A113849(n+1)`
-/

namespace A113850.P1317257212765888762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 2) * A113849 (n + 1)

end

end A113850.P1317257212765888762

namespace A113850

/-- `A005117(n+2)*A113849(n+1)` -/
def P1317257212765888762.Spec : Prop :=
  ∀ n, P1317257212765888762.a n = A113850 (n + 1)

theorem P1317257212765888762.correct : P1317257212765888762.Spec := by
  intro n
  simp only [A113850, Nat.add_sub_cancel, A113850.P1317257212765888762.a, A113850.P6425203316220628880.a, A005117, A005117.P6531558222696957500.a, A113849, A113849.P8712089641262290933.a, A161203, A161203.P4346863006830516735.f1, A161203.P4346863006830516735.a, A055615, A055615.P8993130195977213181.a, A008683, A008683.P18254306604665478110.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A113850

/-! ## A113850.P9575524538662320939

`A113851(n+1)/A144338(n+1)`
-/

namespace A113850.P9575524538662320939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113851 (n + 1) : ℚ) / (A144338 (n + 1) : ℚ)

end

end A113850.P9575524538662320939

namespace A113850

/-- `A113851(n+1)/A144338(n+1)` -/
def P9575524538662320939.Spec : Prop :=
  ∀ n, P9575524538662320939.a n = (A113850 (n + 1) : ℚ)

end A113850

/-! ## A113850.P3574608318733007928

`A113851(n+1)/A005117(n+2)`
-/

namespace A113850.P3574608318733007928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113851 (n + 1) : ℚ) / (A005117 (n + 2) : ℚ)

end

end A113850.P3574608318733007928

namespace A113850

/-- `A113851(n+1)/A005117(n+2)` -/
def P3574608318733007928.Spec : Prop :=
  ∀ n, P3574608318733007928.a n = (A113850 (n + 1) : ℚ)

end A113850

/-! ## A113850.P14504537595128516335

`Δ[A173143(n+1)]^5`
-/

namespace A113850.P14504537595128516335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 5

end

end A113850.P14504537595128516335

namespace A113850

/-- `Δ[A173143(n+1)]^5` -/
def P14504537595128516335.Spec : Prop :=
  ∀ n, P14504537595128516335.a n = A113850 (n + 1)

end A113850

/-! ## A113850.P14188277408932021682

`A062503(n+2)*A062838(n+2)`
-/

namespace A113850.P14188277408932021682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062503 (n + 2) * A062838 (n + 2)

end

end A113850.P14188277408932021682

namespace A113850

/-- `A062503(n+2)*A062838(n+2)` -/
def P14188277408932021682.Spec : Prop :=
  ∀ n, P14188277408932021682.a n = A113850 (n + 1)

end A113850

/-! ## A113850.P7458646629687969859

`A113852(n+1)/A062503(n+2)`
-/

namespace A113850.P7458646629687969859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113852 (n + 1) : ℚ) / (A062503 (n + 2) : ℚ)

end

end A113850.P7458646629687969859

namespace A113850

/-- `A113852(n+1)/A062503(n+2)` -/
def P7458646629687969859.Spec : Prop :=
  ∀ n, P7458646629687969859.a n = (A113850 (n + 1) : ℚ)

end A113850

/-! ## A113850.P5350890333094498418

`A062503(n+2)*A144338(n+1)*A062503(n+2)`
-/

namespace A113850.P5350890333094498418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062503 (n + 2) * A144338 (n + 1) * A062503 (n + 2)

end

end A113850.P5350890333094498418

namespace A113850

/-- `A062503(n+2)*A144338(n+1)*A062503(n+2)` -/
def P5350890333094498418.Spec : Prop :=
  ∀ n, P5350890333094498418.a n = A113850 (n + 1)

end A113850

/-! ## A113850.P10516379027999717239

`A113849(n+1)*A113849(n+1)/A062838(n+2)`
-/

namespace A113850.P10516379027999717239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113849 (n + 1) * A113849 (n + 1) : ℚ) / (A062838 (n + 2) : ℚ)

end

end A113850.P10516379027999717239

namespace A113850

/-- `A113849(n+1)*A113849(n+1)/A062838(n+2)` -/
def P10516379027999717239.Spec : Prop :=
  ∀ n, P10516379027999717239.a n = (A113850 (n + 1) : ℚ)

end A113850

/-! ## A113850.P5539774511247571227

`A005117(n+2)*A005117(n+2)*A062838(n+2)`
-/

namespace A113850.P5539774511247571227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 2) * A005117 (n + 2) * A062838 (n + 2)

end

end A113850.P5539774511247571227

namespace A113850

/-- `A005117(n+2)*A005117(n+2)*A062838(n+2)` -/
def P5539774511247571227.Spec : Prop :=
  ∀ n, P5539774511247571227.a n = A113850 (n + 1)

theorem P5539774511247571227.correct : P5539774511247571227.Spec := by
  intro n
  simp only [A113850, Nat.add_sub_cancel, A113850.P5539774511247571227.a, A113850.P6425203316220628880.a, A005117, A005117.P6531558222696957500.a, A062838, A062838.P4769683379412633527.a, A161203, A161203.P4346863006830516735.f1, A161203.P4346863006830516735.a, A055615, A055615.P8993130195977213181.a, A008683, A008683.P18254306604665478110.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A113850

/-! ## A113850.P14549069926148904660

`A005117(n+2)*A062503(n+2)*A062503(n+2)`
-/

namespace A113850.P14549069926148904660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 2) * A062503 (n + 2) * A062503 (n + 2)

end

end A113850.P14549069926148904660

namespace A113850

/-- `A005117(n+2)*A062503(n+2)*A062503(n+2)` -/
def P14549069926148904660.Spec : Prop :=
  ∀ n, P14549069926148904660.a n = A113850 (n + 1)

end A113850

/-! ## A113850.P12339481106898559712

`record[∏{p}[n+2, #^5]]`
-/

namespace A113850.P12339481106898559712
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113850.P12339481106898559712

namespace A113850

/-- `record[∏{p}[n+2, #^5]]` -/
def P12339481106898559712.Spec : Prop :=
  ∀ n, (P12339481106898559712.a n : ℤ) = A113850 (n + 1)

end A113850

/-! ## A113850.P2593622813447683067

`record[(n+2)^(5/∏{e}[n+2, #])]`
-/

namespace A113850.P2593622813447683067
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℝ) ^ (5 / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℚ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113850.P2593622813447683067

namespace A113850

/-- `record[(n+2)^(5/∏{e}[n+2, #])]` -/
def P2593622813447683067.Spec : Prop :=
  ∀ n, P2593622813447683067.a n = (A113850 (n + 1) : ℝ)

end A113850

/-! ## A113850.P10711967982703812777

`record[(n+2)*∏{p}[n+2, #²²]]`
-/

namespace A113850.P10711967982703812777
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (∏ p ∈ Nat.primeFactors (f2 n), (p ^ 2) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113850.P10711967982703812777

namespace A113850

/-- `record[(n+2)*∏{p}[n+2, #²²]]` -/
def P10711967982703812777.Spec : Prop :=
  ∀ n, (P10711967982703812777.a n : ℤ) = A113850 (n + 1)

end A113850

/-! ## A113850.P16505632886830340995

`lt[∏{e}[n, #], atan(n)]^5`
-/

namespace A113850.P16505632886830340995
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f3 j) n ^ 5

end

end A113850.P16505632886830340995

namespace A113850

/-- `lt[∏{e}[n, #], atan(n)]^5` -/
def P16505632886830340995.Spec : Prop :=
  ∀ n, (P16505632886830340995.a n : ℤ) = A113850 (n + 1)

end A113850

/-! ## A113850.P16642232840947646171

`A000584(A144338(n+1))`
-/

namespace A113850.P16642232840947646171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 (A144338 (n + 1)).toNat

end

end A113850.P16642232840947646171

namespace A113850

/-- `A000584(A144338(n+1))` -/
def P16642232840947646171.Spec : Prop :=
  ∀ n, P16642232840947646171.a n = A113850 (n + 1)

end A113850

/-! ## A113850.P13171014214753412543

`A000584(A005117(n+2))`
-/

namespace A113850.P13171014214753412543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 (A005117 (n + 2)).toNat

end

end A113850.P13171014214753412543

namespace A113850

/-- `A000584(A005117(n+2))` -/
def P13171014214753412543.Spec : Prop :=
  ∀ n, P13171014214753412543.a n = A113850 (n + 1)

end A113850

/-! ## A113850.P14357807969690197444

`eq[1, char[∏{p}[n+2, #]]]^5`
-/

namespace A113850.P14357807969690197444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), p

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 5

end

end A113850.P14357807969690197444

namespace A113850

/-- `eq[1, char[∏{p}[n+2, #]]]^5` -/
def P14357807969690197444.Spec : Prop :=
  ∀ n, (P14357807969690197444.a n : ℤ) = A113850 (n + 1)

end A113850

/-!
# A113851: Numbers whose prime factors are raised to the sixth power.

The programs for A113851, the canonical program `A113851.P8385536040915747511` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113851 has offset 1).

The definition of A113851 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A113851.P8385536040915747511

`A005117(n+2)^6`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A113851

/-- `A005117(n+2)^6` -/
def P8385536040915747511.Spec : Prop :=
  ∀ n, P8385536040915747511.a n = A113851 (n + 1)

theorem P8385536040915747511.correct : P8385536040915747511.Spec := by
  intro n
  simp only [A113851, Nat.add_sub_cancel]

end A113851

/-! ## A113851.P16667946997341849588

`A144338(n+1)^6`
-/

namespace A113851.P16667946997341849588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1) ^ 6

end

end A113851.P16667946997341849588

namespace A113851

/-- `A144338(n+1)^6` -/
def P16667946997341849588.Spec : Prop :=
  ∀ n, P16667946997341849588.a n = A113851 (n + 1)

end A113851

/-! ## A113851.P799977634788523818

`sqrt(A113849(n+1)^3)`
-/

namespace A113851.P799977634788523818
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A113849 (n + 1) ^ 3 : ℝ)

end

end A113851.P799977634788523818

namespace A113851

/-- `sqrt(A113849(n+1)^3)` -/
def P799977634788523818.Spec : Prop :=
  ∀ n, P799977634788523818.a n = (A113851 (n + 1) : ℝ)

end A113851

/-! ## A113851.P18078864023220003626

`record[A007947(n+2)^6]`
-/

namespace A113851.P18078864023220003626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 2) ^ 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113851.P18078864023220003626

namespace A113851

/-- `record[A007947(n+2)^6]` -/
def P18078864023220003626.Spec : Prop :=
  ∀ n, P18078864023220003626.a n = A113851 (n + 1)

end A113851

/-! ## A113851.P10463105547851348081

`record[((n+2)*A008683(n+2))^6]`
-/

namespace A113851.P10463105547851348081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * A008683 (n + 2)) ^ 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113851.P10463105547851348081

namespace A113851

/-- `record[((n+2)*A008683(n+2))^6]` -/
def P10463105547851348081.Spec : Prop :=
  ∀ n, P10463105547851348081.a n = A113851 (n + 1)

end A113851

/-! ## A113851.P17412809405857739763

`A113850(n+1)*A144338(n+1)`
-/

namespace A113851.P17412809405857739763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113850 (n + 1) * A144338 (n + 1)

end

end A113851.P17412809405857739763

namespace A113851

/-- `A113850(n+1)*A144338(n+1)` -/
def P17412809405857739763.Spec : Prop :=
  ∀ n, P17412809405857739763.a n = A113851 (n + 1)

end A113851

/-! ## A113851.P12319047866981237732

`A005117(n+2)*A113850(n+1)`
-/

namespace A113851.P12319047866981237732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 2) * A113850 (n + 1)

end

end A113851.P12319047866981237732

namespace A113851

/-- `A005117(n+2)*A113850(n+1)` -/
def P12319047866981237732.Spec : Prop :=
  ∀ n, P12319047866981237732.a n = A113851 (n + 1)

theorem P12319047866981237732.correct : P12319047866981237732.Spec := by
  intro n
  simp only [A113851, Nat.add_sub_cancel, A113851.P12319047866981237732.a, A113851.P8385536040915747511.a, A005117, A005117.P6531558222696957500.a, A113850, A113850.P6425203316220628880.a, A161203, A161203.P4346863006830516735.f1, A161203.P4346863006830516735.a, A055615, A055615.P8993130195977213181.a, A008683, A008683.P18254306604665478110.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A113851

/-! ## A113851.P17389256317845072241

`A113852(n+1)/A144338(n+1)`
-/

namespace A113851.P17389256317845072241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113852 (n + 1) : ℚ) / (A144338 (n + 1) : ℚ)

end

end A113851.P17389256317845072241

namespace A113851

/-- `A113852(n+1)/A144338(n+1)` -/
def P17389256317845072241.Spec : Prop :=
  ∀ n, P17389256317845072241.a n = (A113851 (n + 1) : ℚ)

end A113851

/-! ## A113851.P1628149099118786111

`A113852(n+1)/A005117(n+2)`
-/

namespace A113851.P1628149099118786111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113852 (n + 1) : ℚ) / (A005117 (n + 2) : ℚ)

end

end A113851.P1628149099118786111

namespace A113851

/-- `A113852(n+1)/A005117(n+2)` -/
def P1628149099118786111.Spec : Prop :=
  ∀ n, P1628149099118786111.a n = (A113851 (n + 1) : ℚ)

end A113851

/-! ## A113851.P5848033591504108279

`A144338(n+1)²*A113849(n+1)`
-/

namespace A113851.P5848033591504108279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1) ^ 2 * A113849 (n + 1)

end

end A113851.P5848033591504108279

namespace A113851

/-- `A144338(n+1)²*A113849(n+1)` -/
def P5848033591504108279.Spec : Prop :=
  ∀ n, P5848033591504108279.a n = A113851 (n + 1)

end A113851

/-! ## A113851.P208601760219915872

`(A113852(n+1)/A113849(n+1))²`
-/

namespace A113851.P208601760219915872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A113852 (n + 1) : ℚ) / (A113849 (n + 1) : ℚ)) ^ 2

end

end A113851.P208601760219915872

namespace A113851

/-- `(A113852(n+1)/A113849(n+1))²` -/
def P208601760219915872.Spec : Prop :=
  ∀ n, P208601760219915872.a n = (A113851 (n + 1) : ℚ)

end A113851

/-! ## A113851.P4157972322617794962

`A113850(n+1)/A113849(n+1)*A113850(n+1)`
-/

namespace A113851.P4157972322617794962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113850 (n + 1) : ℚ) / (A113849 (n + 1) : ℚ) * (A113850 (n + 1) : ℚ)

end

end A113851.P4157972322617794962

namespace A113851

/-- `A113850(n+1)/A113849(n+1)*A113850(n+1)` -/
def P4157972322617794962.Spec : Prop :=
  ∀ n, P4157972322617794962.a n = (A113851 (n + 1) : ℚ)

end A113851

/-! ## A113851.P487930965986613539

`A005117(n+2)*A113849(n+1)*A005117(n+2)`
-/

namespace A113851.P487930965986613539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 2) * A113849 (n + 1) * A005117 (n + 2)

end

end A113851.P487930965986613539

namespace A113851

/-- `A005117(n+2)*A113849(n+1)*A005117(n+2)` -/
def P487930965986613539.Spec : Prop :=
  ∀ n, P487930965986613539.a n = A113851 (n + 1)

theorem P487930965986613539.correct : P487930965986613539.Spec := by
  intro n
  simp only [A113851, Nat.add_sub_cancel, A113851.P487930965986613539.a, A113851.P8385536040915747511.a, A005117, A005117.P6531558222696957500.a, A113849, A113849.P8712089641262290933.a, A161203, A161203.P4346863006830516735.f1, A161203.P4346863006830516735.a, A055615, A055615.P8993130195977213181.a, A008683, A008683.P18254306604665478110.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A113851

/-! ## A113851.P2760639819943100260

`A062838(n+2)²`
-/

namespace A113851.P2760639819943100260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062838 (n + 2) ^ 2

end

end A113851.P2760639819943100260

namespace A113851

/-- `A062838(n+2)²` -/
def P2760639819943100260.Spec : Prop :=
  ∀ n, P2760639819943100260.a n = A113851 (n + 1)

theorem P2760639819943100260.correct : P2760639819943100260.Spec := by
  intro n
  simp only [A113851, Nat.add_sub_cancel, A113851.P2760639819943100260.a, A113851.P8385536040915747511.a, A005117, A005117.P6531558222696957500.a, A062838, A062838.P4769683379412633527.a, A161203, A161203.P4346863006830516735.f1, A161203.P4346863006830516735.a, A055615, A055615.P8993130195977213181.a, A008683, A008683.P18254306604665478110.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A113851

/-! ## A113851.P7920540591661542029

`A062503(n+2)^3`
-/

namespace A113851.P7920540591661542029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062503 (n + 2) ^ 3

end

end A113851.P7920540591661542029

namespace A113851

/-- `A062503(n+2)^3` -/
def P7920540591661542029.Spec : Prop :=
  ∀ n, P7920540591661542029.a n = A113851 (n + 1)

end A113851

/-! ## A113851.P18097374505044599450

`Δ[A173143(n+1)]^6`
-/

namespace A113851.P18097374505044599450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 6

end

end A113851.P18097374505044599450

namespace A113851

/-- `Δ[A173143(n+1)]^6` -/
def P18097374505044599450.Spec : Prop :=
  ∀ n, P18097374505044599450.a n = A113851 (n + 1)

end A113851

/-! ## A113851.P3022416557205284260

`A062503(n+2)*A113849(n+1)`
-/

namespace A113851.P3022416557205284260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062503 (n + 2) * A113849 (n + 1)

end

end A113851.P3022416557205284260

namespace A113851

/-- `A062503(n+2)*A113849(n+1)` -/
def P3022416557205284260.Spec : Prop :=
  ∀ n, P3022416557205284260.a n = A113851 (n + 1)

end A113851

/-! ## A113851.P15686169176586943400

`(A005117(n+2)*A062503(n+2))²`
-/

namespace A113851.P15686169176586943400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005117 (n + 2) * A062503 (n + 2)) ^ 2

end

end A113851.P15686169176586943400

namespace A113851

/-- `(A005117(n+2)*A062503(n+2))²` -/
def P15686169176586943400.Spec : Prop :=
  ∀ n, P15686169176586943400.a n = A113851 (n + 1)

end A113851

/-! ## A113851.P8808691966073671130

`A062838(n+2)*A113852(n+1)/A113849(n+1)`
-/

namespace A113851.P8808691966073671130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062838 (n + 2) * A113852 (n + 1) : ℚ) / (A113849 (n + 1) : ℚ)

end

end A113851.P8808691966073671130

namespace A113851

/-- `A062838(n+2)*A113852(n+1)/A113849(n+1)` -/
def P8808691966073671130.Spec : Prop :=
  ∀ n, P8808691966073671130.a n = (A113851 (n + 1) : ℚ)

end A113851

/-! ## A113851.P6294195899871745150

`record[(A002734(n+1)²*A002734(n+1))²]`
-/

namespace A113851.P6294195899871745150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002734 (n + 1) ^ 2 * A002734 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113851.P6294195899871745150

namespace A113851

/-- `record[(A002734(n+1)²*A002734(n+1))²]` -/
def P6294195899871745150.Spec : Prop :=
  ∀ n, P6294195899871745150.a n = A113851 (n + 1)

end A113851

/-!
# A113852: Numbers whose prime factors are raised to the seventh power.

The programs for A113852, the canonical program `A113852.P12512706821843894596` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113852 has offset 1).

The definition of A113852 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A113852.P12512706821843894596

`A005117(n+2)^7`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A113852

/-- `A005117(n+2)^7` -/
def P12512706821843894596.Spec : Prop :=
  ∀ n, P12512706821843894596.a n = A113852 (n + 1)

theorem P12512706821843894596.correct : P12512706821843894596.Spec := by
  intro n
  simp only [A113852, Nat.add_sub_cancel]

end A113852

/-! ## A113852.P17924703195754905127

`A144338(n+1)^7`
-/

namespace A113852.P17924703195754905127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1) ^ 7

end

end A113852.P17924703195754905127

namespace A113852

/-- `A144338(n+1)^7` -/
def P17924703195754905127.Spec : Prop :=
  ∀ n, P17924703195754905127.a n = A113852 (n + 1)

end A113852

/-! ## A113852.P3780133124216405049

`eq[0, A087049(n)]^7`
-/

namespace A113852.P3780133124216405049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 7

end

end A113852.P3780133124216405049

namespace A113852

/-- `eq[0, A087049(n)]^7` -/
def P3780133124216405049.Spec : Prop :=
  ∀ n, (P3780133124216405049.a n : ℤ) = A113852 (n + 1)

end A113852

/-! ## A113852.P5422664026856832070

`record[A007913(n+2)^7]`
-/

namespace A113852.P5422664026856832070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 2) ^ 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113852.P5422664026856832070

namespace A113852

/-- `record[A007913(n+2)^7]` -/
def P5422664026856832070.Spec : Prop :=
  ∀ n, P5422664026856832070.a n = A113852 (n + 1)

end A113852

/-! ## A113852.P14350510243901956415

`record[A007947(n+2)^7]`
-/

namespace A113852.P14350510243901956415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 2) ^ 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113852.P14350510243901956415

namespace A113852

/-- `record[A007947(n+2)^7]` -/
def P14350510243901956415.Spec : Prop :=
  ∀ n, P14350510243901956415.a n = A113852 (n + 1)

end A113852

/-! ## A113852.P7910891562701621855

`A113851(n+1)*A144338(n+1)`
-/

namespace A113852.P7910891562701621855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113851 (n + 1) * A144338 (n + 1)

end

end A113852.P7910891562701621855

namespace A113852

/-- `A113851(n+1)*A144338(n+1)` -/
def P7910891562701621855.Spec : Prop :=
  ∀ n, P7910891562701621855.a n = A113852 (n + 1)

end A113852

/-! ## A113852.P15826103456079076067

`A005117(n+2)*A113851(n+1)`
-/

namespace A113852.P15826103456079076067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 2) * A113851 (n + 1)

end

end A113852.P15826103456079076067

namespace A113852

/-- `A005117(n+2)*A113851(n+1)` -/
def P15826103456079076067.Spec : Prop :=
  ∀ n, P15826103456079076067.a n = A113852 (n + 1)

theorem P15826103456079076067.correct : P15826103456079076067.Spec := by
  intro n
  simp only [A113852, Nat.add_sub_cancel, A113852.P15826103456079076067.a, A113852.P12512706821843894596.a, A005117, A005117.P6531558222696957500.a, A113851, A113851.P8385536040915747511.a, A161203, A161203.P4346863006830516735.f1, A161203.P4346863006830516735.a, A055615, A055615.P8993130195977213181.a, A008683, A008683.P18254306604665478110.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A113852

/-! ## A113852.P4436484462271246111

`A113849(n+1)²/A144338(n+1)`
-/

namespace A113852.P4436484462271246111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113849 (n + 1) ^ 2 : ℚ) / (A144338 (n + 1) : ℚ)

end

end A113852.P4436484462271246111

namespace A113852

/-- `A113849(n+1)²/A144338(n+1)` -/
def P4436484462271246111.Spec : Prop :=
  ∀ n, P4436484462271246111.a n = (A113852 (n + 1) : ℚ)

end A113852

/-! ## A113852.P2400249606860465171

`A005117(n+2)*A113850(n+1)*A005117(n+2)`
-/

namespace A113852.P2400249606860465171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 2) * A113850 (n + 1) * A005117 (n + 2)

end

end A113852.P2400249606860465171

namespace A113852

/-- `A005117(n+2)*A113850(n+1)*A005117(n+2)` -/
def P2400249606860465171.Spec : Prop :=
  ∀ n, P2400249606860465171.a n = A113852 (n + 1)

theorem P2400249606860465171.correct : P2400249606860465171.Spec := by
  intro n
  simp only [A113852, Nat.add_sub_cancel, A113852.P2400249606860465171.a, A113852.P12512706821843894596.a, A005117, A005117.P6531558222696957500.a, A113850, A113850.P6425203316220628880.a, A161203, A161203.P4346863006830516735.f1, A161203.P4346863006830516735.a, A055615, A055615.P8993130195977213181.a, A008683, A008683.P18254306604665478110.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A113852

/-! ## A113852.P18174618157383200152

`A062503(n+2)*A113850(n+1)`
-/

namespace A113852.P18174618157383200152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062503 (n + 2) * A113850 (n + 1)

end

end A113852.P18174618157383200152

namespace A113852

/-- `A062503(n+2)*A113850(n+1)` -/
def P18174618157383200152.Spec : Prop :=
  ∀ n, P18174618157383200152.a n = A113852 (n + 1)

end A113852

/-! ## A113852.P4006161521652871667

`A062838(n+2)*A113849(n+1)`
-/

namespace A113852.P4006161521652871667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062838 (n + 2) * A113849 (n + 1)

end

end A113852.P4006161521652871667

namespace A113852

/-- `A062838(n+2)*A113849(n+1)` -/
def P4006161521652871667.Spec : Prop :=
  ∀ n, P4006161521652871667.a n = A113852 (n + 1)

theorem P4006161521652871667.correct : P4006161521652871667.Spec := by
  intro n
  simp only [A113852, Nat.add_sub_cancel, A113852.P4006161521652871667.a, A113852.P12512706821843894596.a, A005117, A005117.P6531558222696957500.a, A062838, A062838.P4769683379412633527.a, A113849, A113849.P8712089641262290933.a, A161203, A161203.P4346863006830516735.f1, A161203.P4346863006830516735.a, A055615, A055615.P8993130195977213181.a, A008683, A008683.P18254306604665478110.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A113852

/-! ## A113852.P4112035748092458068

`A062838(n+2)²*A005117(n+2)`
-/

namespace A113852.P4112035748092458068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062838 (n + 2) ^ 2 * A005117 (n + 2)

end

end A113852.P4112035748092458068

namespace A113852

/-- `A062838(n+2)²*A005117(n+2)` -/
def P4112035748092458068.Spec : Prop :=
  ∀ n, P4112035748092458068.a n = A113852 (n + 1)

theorem P4112035748092458068.correct : P4112035748092458068.Spec := by
  intro n
  simp only [A113852, Nat.add_sub_cancel, A113852.P4112035748092458068.a, A113852.P12512706821843894596.a, A005117, A005117.P6531558222696957500.a, A062838, A062838.P4769683379412633527.a, A161203, A161203.P4346863006830516735.f1, A161203.P4346863006830516735.a, A055615, A055615.P8993130195977213181.a, A008683, A008683.P18254306604665478110.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A113852

/-! ## A113852.P183735653575349920

`A062503(n+2)²*A062838(n+2)`
-/

namespace A113852.P183735653575349920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062503 (n + 2) ^ 2 * A062838 (n + 2)

end

end A113852.P183735653575349920

namespace A113852

/-- `A062503(n+2)²*A062838(n+2)` -/
def P183735653575349920.Spec : Prop :=
  ∀ n, P183735653575349920.a n = A113852 (n + 1)

end A113852

/-! ## A113852.P14506323998748582605

`A113849(n+1)*A144338(n+1)*A062503(n+2)`
-/

namespace A113852.P14506323998748582605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113849 (n + 1) * A144338 (n + 1) * A062503 (n + 2)

end

end A113852.P14506323998748582605

namespace A113852

/-- `A113849(n+1)*A144338(n+1)*A062503(n+2)` -/
def P14506323998748582605.Spec : Prop :=
  ∀ n, P14506323998748582605.a n = A113852 (n + 1)

end A113852

/-! ## A113852.P5372565597236562699

`A005117(n+2)*A113849(n+1)*A062503(n+2)`
-/

namespace A113852.P5372565597236562699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 2) * A113849 (n + 1) * A062503 (n + 2)

end

end A113852.P5372565597236562699

namespace A113852

/-- `A005117(n+2)*A113849(n+1)*A062503(n+2)` -/
def P5372565597236562699.Spec : Prop :=
  ∀ n, P5372565597236562699.a n = A113852 (n + 1)

end A113852

/-! ## A113852.P7320923194367898370

`A113850(n+1)*A113850(n+1)/A062838(n+2)`
-/

namespace A113852.P7320923194367898370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113850 (n + 1) * A113850 (n + 1) : ℚ) / (A062838 (n + 2) : ℚ)

end

end A113852.P7320923194367898370

namespace A113852

/-- `A113850(n+1)*A113850(n+1)/A062838(n+2)` -/
def P7320923194367898370.Spec : Prop :=
  ∀ n, P7320923194367898370.a n = (A113852 (n + 1) : ℚ)

end A113852

/-! ## A113852.P9831075382616587679

`record[∏{p}[n+2, #^7]]`
-/

namespace A113852.P9831075382616587679
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p ^ 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113852.P9831075382616587679

namespace A113852

/-- `record[∏{p}[n+2, #^7]]` -/
def P9831075382616587679.Spec : Prop :=
  ∀ n, (P9831075382616587679.a n : ℤ) = A113852 (n + 1)

end A113852

/-! ## A113852.P14172087500968102177

`record[A053166(n+2)^7]`
-/

namespace A113852.P14172087500968102177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (n + 2) ^ 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113852.P14172087500968102177

namespace A113852

/-- `record[A053166(n+2)^7]` -/
def P14172087500968102177.Spec : Prop :=
  ∀ n, P14172087500968102177.a n = A113852 (n + 1)

end A113852

/-! ## A113852.P9104547367460268068

`record[A308056(n+2)^7]`
-/

namespace A113852.P9104547367460268068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308056 (n + 2) ^ 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113852.P9104547367460268068

namespace A113852

/-- `record[A308056(n+2)^7]` -/
def P9104547367460268068.Spec : Prop :=
  ∀ n, P9104547367460268068.a n = A113852 (n + 1)

end A113852

/-! ## A113852.P221605467469567136

`A001015(A144338(n+1))`
-/

namespace A113852.P221605467469567136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 (A144338 (n + 1)).toNat

end

end A113852.P221605467469567136

namespace A113852

/-- `A001015(A144338(n+1))` -/
def P221605467469567136.Spec : Prop :=
  ∀ n, P221605467469567136.a n = A113852 (n + 1)

end A113852

/-!
# A113853: Numbers whose prime factors are raised to the powers of themselves.

The programs for A113853, there is no canonical definition to state claims against.
-/

/-! ## A113853.P899318571503449574

`A048102(lt[A064872(n), A306596(3*n+5)])`
-/

namespace A113853.P899318571503449574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064872 (n + 13)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306596 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048102 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A113853.P899318571503449574

/-! ## A113853.P10652826741090316333

`A008478(A033461(n)+A001962(n+1))`
-/

namespace A113853.P10652826741090316333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008478 (A033461 n + A001962 (n + 1)).toNat

end

end A113853.P10652826741090316333

/-!
# A113854: a(n) = sum(2^(A047240(i)-1), i=1..n).

The programs for A113854, the canonical program `A113854.P1585080033724339666` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113854 has offset 1).

The definition of A113854 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113854.P1773102348464540425

`∑[2^∑[floor(a(n-3))]]` with `a(0)=0, a(1)=1, a(2)=4, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A113854.P1773102348464540425
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4, 1] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113854.P1773102348464540425

namespace A113854

/-- `∑[2^∑[floor(a(n-3))]]` -/
def P1773102348464540425.Spec : Prop :=
  ∀ n, (P1773102348464540425.a n : ℤ) = A113854 (n + 1)

end A113854

/-! ## A113854.P13477181263348502211

`∑[2^(2*n+1-(n+1)%3)]`
-/

namespace A113854.P13477181263348502211
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((2 * n + 1 : ℤ) - (((n + 1) % 3 : ℕ) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113854.P13477181263348502211

namespace A113854

/-- `∑[2^(2*n+1-(n+1)%3)]` -/
def P13477181263348502211.Spec : Prop :=
  ∀ n, P13477181263348502211.a n = (A113854 (n + 1) : ℚ)

end A113854

/-! ## A113854.P9484078922783446861

`∑[2^A047266(n+1)]`
-/

namespace A113854.P9484078922783446861
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A047266 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113854.P9484078922783446861

namespace A113854

/-- `∑[2^A047266(n+1)]` -/
def P9484078922783446861.Spec : Prop :=
  ∀ n, P9484078922783446861.a n = (A113854 (n + 1) : ℚ)

end A113854

/-! ## A113854.P17292192826877821816

`∑[2^A064429(2*n)]`
-/

namespace A113854.P17292192826877821816
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A064429 (2 * n) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113854.P17292192826877821816

namespace A113854

/-- `∑[2^A064429(2*n)]` -/
def P17292192826877821816.Spec : Prop :=
  ∀ n, P17292192826877821816.a n = (A113854 (n + 1) : ℚ)

end A113854

/-! ## A113854.P11512394744405127247

`∑[2^(A047228(n+2)-3)]`
-/

namespace A113854.P11512394744405127247
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A047228 (n + 2) - 3 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113854.P11512394744405127247

namespace A113854

/-- `∑[2^(A047228(n+2)-3)]` -/
def P11512394744405127247.Spec : Prop :=
  ∀ n, P11512394744405127247.a n = (A113854 (n + 1) : ℚ)

end A113854

/-! ## A113854.P6897415307677521762

`∑[sqrt(2)^(A054966(n+1)+n)]`
-/

namespace A113854.P6897415307677521762
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 : ℝ) ^ (A054966 (n + 1) + (n : ℤ) : ℤ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113854.P6897415307677521762

namespace A113854

/-- `∑[sqrt(2)^(A054966(n+1)+n)]` -/
def P6897415307677521762.Spec : Prop :=
  ∀ n, P6897415307677521762.a n = (A113854 (n + 1) : ℝ)

end A113854

/-! ## A113854.P1585080033724339666

`∑[A011782(2*(n+1)-(n+1)%3)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A113854

/-- `∑[A011782(2*(n+1)-(n+1)%3)]` -/
def P1585080033724339666.Spec : Prop :=
  ∀ n, P1585080033724339666.a n = A113854 (n + 1)

theorem P1585080033724339666.correct : P1585080033724339666.Spec := by
  intro n
  simp only [A113854, Nat.add_sub_cancel]

end A113854

/-! ## A113854.P6717200788017197267

`∑[A011782(A030118(2*n))]`
-/

namespace A113854.P6717200788017197267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A030118 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113854.P6717200788017197267

namespace A113854

/-- `∑[A011782(A030118(2*n))]` -/
def P6717200788017197267.Spec : Prop :=
  ∀ n, P6717200788017197267.a n = A113854 (n + 1)

end A113854

/-! ## A113854.P10117811432810639251

`∑[A000079(A064429(2*n))]`
-/

namespace A113854.P10117811432810639251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A064429 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113854.P10117811432810639251

namespace A113854

/-- `∑[A000079(A064429(2*n))]` -/
def P10117811432810639251.Spec : Prop :=
  ∀ n, P10117811432810639251.a n = A113854 (n + 1)

end A113854

/-! ## A113854.P14804182930210688100

`∑[A011782(∑[A146325(n+3)])]`
-/

namespace A113854.P14804182930210688100
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146325 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113854.P14804182930210688100

namespace A113854

/-- `∑[A011782(∑[A146325(n+3)])]` -/
def P14804182930210688100.Spec : Prop :=
  ∀ n, P14804182930210688100.a n = A113854 (n + 1)

end A113854

/-! ## A113854.P9891520847590574868

`∑[A000079(A047240(n+2)-1)]`
-/

namespace A113854.P9891520847590574868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A047240 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113854.P9891520847590574868

namespace A113854

/-- `∑[A000079(A047240(n+2)-1)]` -/
def P9891520847590574868.Spec : Prop :=
  ∀ n, P9891520847590574868.a n = A113854 (n + 1)

end A113854

/-! ## A113854.P9541950010068981429

`∑[A011782(A080782(2*n+1))]`
-/

namespace A113854.P9541950010068981429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A080782 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113854.P9541950010068981429

namespace A113854

/-- `∑[A011782(A080782(2*n+1))]` -/
def P9541950010068981429.Spec : Prop :=
  ∀ n, P9541950010068981429.a n = A113854 (n + 1)

end A113854

/-! ## A113854.P6014670684175064854

`∑[A034008(A064429(2*n)+2)]`
-/

namespace A113854.P6014670684175064854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (A064429 (2 * n) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113854.P6014670684175064854

namespace A113854

/-- `∑[A034008(A064429(2*n)+2)]` -/
def P6014670684175064854.Spec : Prop :=
  ∀ n, P6014670684175064854.a n = A113854 (n + 1)

end A113854

/-! ## A113854.P8341489545045638816

`A234038(2*n+1)+A020988(n)`
-/

namespace A113854.P8341489545045638816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234038 (2 * n + 1) + A020988 n

end

end A113854.P8341489545045638816

namespace A113854

/-- `A234038(2*n+1)+A020988(n)` -/
def P8341489545045638816.Spec : Prop :=
  ∀ n, P8341489545045638816.a n = A113854 (n + 1)

end A113854

/-! ## A113854.P11931538794118827627

`∑[A000079(A143097(2*(n+1))-2)]`
-/

namespace A113854.P11931538794118827627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A143097 (2 * (n + 1)) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113854.P11931538794118827627

namespace A113854

/-- `∑[A000079(A143097(2*(n+1))-2)]` -/
def P11931538794118827627.Spec : Prop :=
  ∀ n, P11931538794118827627.a n = A113854 (n + 1)

end A113854

/-! ## A113854.P18411622797060985417

`(A113841(n+2)-1)/2`
-/

namespace A113854.P18411622797060985417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113841 (n + 2) - 1 : ℚ) / 2

end

end A113854.P18411622797060985417

namespace A113854

/-- `(A113841(n+2)-1)/2` -/
def P18411622797060985417.Spec : Prop :=
  ∀ n, P18411622797060985417.a n = (A113854 (n + 1) : ℚ)

end A113854

/-!
# A113857: a(n) = binomial(4+2*n, n) * binomial(9+2*n, 4+n).

The programs for A113857, the canonical program `A113857.P1389068966498870403` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113857 has offset 0).

The definition of A113857 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(4+2*n, n)*C(9+2*n, 4+n)` (program `A113857.P1389068966498870403`, by `A113857.P1389068966498870403.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A113857.P1389068966498870403

`C(4+2*n, n)*C(9+2*n, 4+n)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113857

/-- `C(4+2*n, n)*C(9+2*n, 4+n)` -/
def P1389068966498870403.Spec : Prop :=
  ∀ n, (P1389068966498870403.a n : ℤ) = A113857 n

theorem P1389068966498870403.correct : P1389068966498870403.Spec := by
  intro n
  simp only [A113857]

end A113857

/-! ## A113857.P7816221624048524076

`A002694(n+2)*A001700(n+4)`
-/

namespace A113857.P7816221624048524076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002694 (n + 2) * A001700 (n + 4)

end

end A113857.P7816221624048524076

namespace A113857

/-- `A002694(n+2)*A001700(n+4)` -/
def P7816221624048524076.Spec : Prop :=
  ∀ n, P7816221624048524076.a n = A113857 n

theorem P7816221624048524076.correct : P7816221624048524076.Spec := by
  intro n
  simp only [A113857, Nat.add_sub_cancel, A113857.P7816221624048524076.a, A113857.P1389068966498870403.a, A001700, A001700.P11212155124506223364.a, A002694, A002694.P4701693230279570942.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A113857

/-! ## A113857.P7729285196394404780

`A171814(A090288(n+1))`
-/

namespace A113857.P7729285196394404780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171814 (A090288 (n + 1)).toNat

end

end A113857.P7729285196394404780

namespace A113857

/-- `A171814(A090288(n+1))` -/
def P7729285196394404780.Spec : Prop :=
  ∀ n, P7729285196394404780.a n = A113857 n

end A113857

/-! ## A113857.P10731441036809391996

`A062190(A099776(n+2)+1)`
-/

namespace A113857.P10731441036809391996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062190 (A099776 (n + 2) + 1).toNat

end

end A113857.P10731441036809391996

namespace A113857

/-- `A062190(A099776(n+2)+1)` -/
def P10731441036809391996.Spec : Prop :=
  ∀ n, P10731441036809391996.a n = A113857 n

end A113857

/-! ## A113857.P11195923361990447952

`A062190(2*A002061(n+3))`
-/

namespace A113857.P11195923361990447952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062190 (2 * A002061 (n + 3)).toNat

end

end A113857.P11195923361990447952

namespace A113857

/-- `A062190(2*A002061(n+3))` -/
def P11195923361990447952.Spec : Prop :=
  ∀ n, P11195923361990447952.a n = A113857 n

end A113857

/-! ## A113857.P15393064560593680485

`A062190(A014106(n+2)-n)`
-/

namespace A113857.P15393064560593680485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062190 (A014106 (n + 2) - (n : ℤ)).toNat

end

end A113857.P15393064560593680485

namespace A113857

/-- `A062190(A014106(n+2)-n)` -/
def P15393064560593680485.Spec : Prop :=
  ∀ n, P15393064560593680485.a n = A113857 n

end A113857

/-! ## A113857.P17933413899291108364

`A062190(eq[3, n-A038722(n+1)])`
-/

namespace A113857.P17933413899291108364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A038722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062190 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113857.P17933413899291108364

namespace A113857

/-- `A062190(eq[3, n-A038722(n+1)])` -/
def P17933413899291108364.Spec : Prop :=
  ∀ n, P17933413899291108364.a n = A113857 n

end A113857

/-!
# A113858: Difference between A095765 and A095766.

The programs for A113858, there is no canonical definition to state claims against.
-/

/-! ## A113858.P9940682209099816665

`A095765(A028310(n)+1)-A095766(n+1)`
-/

namespace A113858.P9940682209099816665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095765 (A028310 n + 1).toNat - A095766 (n + 1)

end

end A113858.P9940682209099816665

/-! ## A113858.P8226454057370780260

`A095765(n+1)+A000007(n)-A095766(n+1)`
-/

namespace A113858.P8226454057370780260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095765 (n + 1) + (A000007 n - A095766 (n + 1))

end

end A113858.P8226454057370780260

/-! ## A113858.P8939941747594062501

`(A095765(n+1)-A095766(n+1))%A036378(n)`
-/

namespace A113858.P8939941747594062501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095765 (n + 1) - A095766 (n + 1)) (A036378 n)

end

end A113858.P8939941747594062501

/-! ## A113858.P14169068805721975217

`A095765(n+1)-A095766(n+1)%A095760(n+1)`
-/

namespace A113858.P14169068805721975217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095765 (n + 1) - Int.tmod (A095766 (n + 1)) (A095760 (n + 1))

end

end A113858.P14169068805721975217

/-! ## A113858.P2215072212911719117

`A028310(A095765(n+1))-(A036378(n+1)-A095765(n+1))`
-/

namespace A113858.P2215072212911719117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A095765 (n + 1)).toNat - (A036378 (n + 1) - A095765 (n + 1))

end

end A113858.P2215072212911719117

/-!
# A113859: Expansion of (7-14*x+6*x^2)/((1-x)*(2*x^2-4*x+1)); related to the binomial transform of Pell numbers A000129 (see formula and comment for A007070).

The programs for A113859, the canonical program `A113859.P4010191450071217679` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113859 has offset 0).

The definition of A113859 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((7-14x+6x^2)/(1-5x+6x^2-2x^3))` (program `A113859.P4010191450071217679`, by `A113859.P4010191450071217679.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A113859.P4010191450071217679

`ogf((7-14x+6x^2)/(1-5x+6x^2-2x^3))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113859

/-- `ogf((7-14x+6x^2)/(1-5x+6x^2-2x^3))` -/
def P4010191450071217679.Spec : Prop :=
  ∀ n, P4010191450071217679.a n = A113859 n

theorem P4010191450071217679.correct : P4010191450071217679.Spec := by
  intro n
  simp only [A113859]

end A113859

/-! ## A113859.P12814043387117201220

`floor((sqrt(2)+2)*a(n-1))-2` with `a(0)=7`
-/

namespace A113859.P12814043387117201220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  ⌊(Real.sqrt (2 : ℝ) + 2) * (a (n - 1) : ℝ)⌋ - 2

end

end A113859.P12814043387117201220

namespace A113859

/-- `floor((sqrt(2)+2)*a(n-1))-2` -/
def P12814043387117201220.Spec : Prop :=
  ∀ n, P12814043387117201220.a n = A113859 n

end A113859

/-! ## A113859.P1520897298279156829

`ceil((sqrt(2)+2)*a(n-1))-3` with `a(0)=7`
-/

namespace A113859.P1520897298279156829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  ⌈(Real.sqrt (2 : ℝ) + 2) * (a (n - 1) : ℝ)⌉ - 3

end

end A113859.P1520897298279156829

namespace A113859

/-- `ceil((sqrt(2)+2)*a(n-1))-3` -/
def P1520897298279156829.Spec : Prop :=
  ∀ n, P1520897298279156829.a n = A113859 n

end A113859

/-! ## A113859.P11476021319696665318

`∑[round((sqrt(2)+2)*a(n-1))]+3` with `a(0)=4`
-/

namespace A113859.P11476021319696665318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) + 2) * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A113859.P11476021319696665318

namespace A113859

/-- `∑[round((sqrt(2)+2)*a(n-1))]+3` -/
def P11476021319696665318.Spec : Prop :=
  ∀ n, P11476021319696665318.a n = A113859 n

end A113859

/-! ## A113859.P12118204659327974

`floor(2*a(n-1)/(2-sqrt(2)))-2` with `a(0)=7`
-/

namespace A113859.P12118204659327974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  ⌊(2 * a (n - 1) : ℝ) / (2 - Real.sqrt (2 : ℝ))⌋ - 2

end

end A113859.P12118204659327974

namespace A113859

/-- `floor(2*a(n-1)/(2-sqrt(2)))-2` -/
def P12118204659327974.Spec : Prop :=
  ∀ n, P12118204659327974.a n = A113859 n

end A113859

/-! ## A113859.P5019011952636722556

`A006012(n+2)+1`
-/

namespace A113859.P5019011952636722556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 (n + 2) + 1

end

end A113859.P5019011952636722556

namespace A113859

/-- `A006012(n+2)+1` -/
def P5019011952636722556.Spec : Prop :=
  ∀ n, P5019011952636722556.a n = A113859 n

end A113859

/-! ## A113859.P8194553545022349656

`A035344(n+1)+2`
-/

namespace A113859.P8194553545022349656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035344 (n + 1) + 2

end

end A113859.P8194553545022349656

namespace A113859

/-- `A035344(n+1)+2` -/
def P8194553545022349656.Spec : Prop :=
  ∀ n, P8194553545022349656.a n = A113859 n

end A113859

/-! ## A113859.P13558374900429682724

`2*A048580(n)+1`
-/

namespace A113859.P13558374900429682724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048580 n + 1

end

end A113859.P13558374900429682724

namespace A113859

/-- `2*A048580(n)+1` -/
def P13558374900429682724.Spec : Prop :=
  ∀ n, P13558374900429682724.a n = A113859 n

end A113859

/-! ## A113859.P2566037548636487515

`∑[A007070(n+1)]+3`
-/

namespace A113859.P2566037548636487515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A113859.P2566037548636487515

namespace A113859

/-- `∑[A007070(n+1)]+3` -/
def P2566037548636487515.Spec : Prop :=
  ∀ n, P2566037548636487515.a n = A113859 n

end A113859

/-! ## A113859.P8656476978313606185

`∑[A204089(n+2)]+3`
-/

namespace A113859.P8656476978313606185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204089 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A113859.P8656476978313606185

namespace A113859

/-- `∑[A204089(n+2)]+3` -/
def P8656476978313606185.Spec : Prop :=
  ∀ n, P8656476978313606185.a n = A113859 n

end A113859

/-! ## A113859.P6858273690441948150

`2*A007052(n+1)+1`
-/

namespace A113859.P6858273690441948150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007052 (n + 1) + 1

end

end A113859.P6858273690441948150

namespace A113859

/-- `2*A007052(n+1)+1` -/
def P6858273690441948150.Spec : Prop :=
  ∀ n, P6858273690441948150.a n = A113859 n

end A113859

/-! ## A113859.P5280891094139187615

`A030436(2*(n+2))+1`
-/

namespace A113859.P5280891094139187615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030436 (2 * (n + 2)) + 1

end

end A113859.P5280891094139187615

namespace A113859

/-- `A030436(2*(n+2))+1` -/
def P5280891094139187615.Spec : Prop :=
  ∀ n, P5280891094139187615.a n = A113859 n

end A113859

/-! ## A113859.P4604971465179713506

`A030435(2*n+3)+1`
-/

namespace A113859.P4604971465179713506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030435 (2 * n + 3) + 1

end

end A113859.P4604971465179713506

namespace A113859

/-- `A030435(2*n+3)+1` -/
def P4604971465179713506.Spec : Prop :=
  ∀ n, P4604971465179713506.a n = A113859 n

end A113859

/-! ## A113859.P3109239505301381534

`A062112(2*n+5)+1`
-/

namespace A113859.P3109239505301381534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062112 (2 * n + 5) + 1

end

end A113859.P3109239505301381534

namespace A113859

/-- `A062112(2*n+5)+1` -/
def P3109239505301381534.Spec : Prop :=
  ∀ n, P3109239505301381534.a n = A113859 n

end A113859

/-! ## A113859.P13261237237912578848

`2*A007068(2*(n+1))+1`
-/

namespace A113859.P13261237237912578848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007068 (2 * (n + 1)) + 1

end

end A113859.P13261237237912578848

namespace A113859

/-- `2*A007068(2*(n+1))+1` -/
def P13261237237912578848.Spec : Prop :=
  ∀ n, P13261237237912578848.a n = A113859 n

end A113859

/-! ## A113859.P15598946208726250694

`a(n-1)+2*A020727(n)` with `a(0)=7`
-/

namespace A113859.P15598946208726250694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) + 2 * A020727 n

end

end A113859.P15598946208726250694

namespace A113859

/-- `a(n-1)+2*A020727(n)` -/
def P15598946208726250694.Spec : Prop :=
  ∀ n, P15598946208726250694.a n = A113859 n

end A113859

/-! ## A113859.P12602508015340864299

`2*(∑[A003480(n+1)]+1)+1`
-/

namespace A113859.P12602508015340864299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1

end

end A113859.P12602508015340864299

namespace A113859

/-- `2*(∑[A003480(n+1)]+1)+1` -/
def P12602508015340864299.Spec : Prop :=
  ∀ n, P12602508015340864299.a n = A113859 n

end A113859

/-! ## A113859.P16464721893069921662

`A111566(n)+A163608(n)+1`
-/

namespace A113859.P16464721893069921662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111566 n + (A163608 n + 1)

end

end A113859.P16464721893069921662

namespace A113859

/-- `A111566(n)+A163608(n)+1` -/
def P16464721893069921662.Spec : Prop :=
  ∀ n, P16464721893069921662.a n = A113859 n

end A113859

/-! ## A113859.P4441629177535898100

`A056236(n+1)+A060995(n+2)+1`
-/

namespace A113859.P4441629177535898100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056236 (n + 1) + (A060995 (n + 2) + 1)

end

end A113859.P4441629177535898100

namespace A113859

/-- `A056236(n+1)+A060995(n+2)+1` -/
def P4441629177535898100.Spec : Prop :=
  ∀ n, P4441629177535898100.a n = A113859 n

end A113859

/-! ## A113859.P14904435954733983126

`A056236(n+1)+1-A106731(n+1)`
-/

namespace A113859.P14904435954733983126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056236 (n + 1) + (1 - A106731 (n + 1))

end

end A113859.P14904435954733983126

namespace A113859

/-- `A056236(n+1)+1-A106731(n+1)` -/
def P14904435954733983126.Spec : Prop :=
  ∀ n, P14904435954733983126.a n = A113859 n

end A113859

/-!
# A113860: Start with the binary representation of the Catalan constant (A104338, A006752) = 0.91596559... = sum_{i=1..infinity} b(i)/2^i, where b(i)=1,1,1,0,1,0,1,0,0,1,1,1,1.... Then a(n-1)=sum_{i=1..k: sum_{ j = 1..k} b(j)=n} b(i) * 2^(i-1). In words: scan the binary digits of the number, halt at each nonzero binary digit, add a power of 2 corresponding to the place of this digit after the comma, assign current partial sum to a(n), increment n.

The programs for A113860, there is no canonical definition to state claims against.
-/

/-! ## A113860.P177872564182302104

`∑[2^eq[1, A104338(n)]]`
-/

namespace A113860.P177872564182302104
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104338 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113860.P177872564182302104

/-! ## A113860.P11006813729579837899

`∑[A000079(eq[1, A104338(n)])]`
-/

namespace A113860.P11006813729579837899
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104338 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113860.P11006813729579837899

/-! ## A113860.P14754689517672830122

`∑[A000079(record[n*A104338(n)])]`
-/

namespace A113860.P14754689517672830122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A104338 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113860.P14754689517672830122

/-! ## A113860.P7180264814869365721

`∑[A178815(n+1)^record[n*A104338(n)]]`
-/

namespace A113860.P7180264814869365721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A104338 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178815 (n + 1) : ℚ) ^ (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113860.P7180264814869365721

/-! ## A113860.P16949164551069784631

`∑[A020639(2*(n+1))^record[n*A104338(n)]]`
-/

namespace A113860.P16949164551069784631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A104338 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (2 * (n + 1)) : ℚ) ^ (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113860.P16949164551069784631

/-!
# A113861: a(n) = (1/9)*((6*n - 7)*2^(n-1) - (-1)^n).

The programs for A113861, the canonical program `A113861.P9034229237717301485` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113861 has offset 1).

The definition of A113861 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1/9*((6*(n+1)-7)*2^n-(-1)^(n+1))` (program `A113861.P3557938634681260369`, by `A113861.P3557938634681260369.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A113861.P9034229237717301485

`3*a(n-1)-4*a(n-3)` with `a(0)=0, a(1)=1, a(2)=5`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113861

/-- `3*a(n-1)-4*a(n-3)` -/
def P9034229237717301485.Spec : Prop :=
  ∀ n, P9034229237717301485.a n = A113861 (n + 1)

theorem P9034229237717301485.correct : P9034229237717301485.Spec := by
  intro n
  simp only [A113861, Nat.add_sub_cancel]

end A113861

/-! ## A113861.P6059343104365312711

`n*2^n-A045883(n)`
-/

namespace A113861.P6059343104365312711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * 2 ^ n : ℤ) - A045883 n

end

end A113861.P6059343104365312711

namespace A113861

/-- `n*2^n-A045883(n)` -/
def P6059343104365312711.Spec : Prop :=
  ∀ n, P6059343104365312711.a n = A113861 (n + 1)

end A113861

/-! ## A113861.P3557938634681260369

`1/9*((6*(n+1)-7)*2^n-(-1)^(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A113861.P3557938634681260369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 9 * (((6 * (n + 1) : ℤ) - 7) * (2 ^ n : ℤ) - (-1) ^ (n + 1) : ℚ)

end

end A113861.P3557938634681260369

namespace A113861

/-- `1/9*((6*(n+1)-7)*2^n-(-1)^(n+1))` -/
def P3557938634681260369.Spec : Prop :=
  ∀ n, P3557938634681260369.a n = (A113861 (n + 1) : ℚ)

theorem P3557938634681260369.correct : P3557938634681260369.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A113861, Nat.add_sub_cancel, A113861.P3557938634681260369.a, A113861.P9034229237717301485.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h3 := ih m (by omega)
      simp only [A113861, Nat.add_sub_cancel, A113861.P3557938634681260369.a, A113861.P9034229237717301485.a, SequenceMachineLib.memo_apply] at h1 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h3 ⊢
      rw [← h1, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A113861

/-! ## A113861.P5452884556367804276

`ogf((x+2x^2)/(1-3x+4x^3))`
-/

namespace A113861.P5452884556367804276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2] [1, -3, 0, 4] n

end

end A113861.P5452884556367804276

namespace A113861

/-- `ogf((x+2x^2)/(1-3x+4x^3))` -/
def P5452884556367804276.Spec : Prop :=
  ∀ n, P5452884556367804276.a n = A113861 (n + 1)

end A113861

/-! ## A113861.P3704135518440614197

`A045883(n+1)-2^n`
-/

namespace A113861.P3704135518440614197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045883 (n + 1) - (2 ^ n : ℤ)

end

end A113861.P3704135518440614197

namespace A113861

/-- `A045883(n+1)-2^n` -/
def P3704135518440614197.Spec : Prop :=
  ∀ n, P3704135518440614197.a n = A113861 (n + 1)

end A113861

/-! ## A113861.P7089893661594558022

`∑[A059570(n+1)]-2^n`
-/

namespace A113861.P7089893661594558022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (2 ^ n : ℤ)

end

end A113861.P7089893661594558022

namespace A113861

/-- `∑[A059570(n+1)]-2^n` -/
def P7089893661594558022.Spec : Prop :=
  ∀ n, P7089893661594558022.a n = A113861 (n + 1)

end A113861

/-! ## A113861.P11139944799707224293

`∑[A140960(n)]+2^n-1`
-/

namespace A113861.P11139944799707224293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((2 ^ n : ℤ) - 1)

end

end A113861.P11139944799707224293

namespace A113861

/-- `∑[A140960(n)]+2^n-1` -/
def P11139944799707224293.Spec : Prop :=
  ∀ n, P11139944799707224293.a n = A113861 (n + 1)

end A113861

/-! ## A113861.P9342137373665275133

`A001792(n)-A139790(n)`
-/

namespace A113861.P9342137373665275133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n - A139790 n

end

end A113861.P9342137373665275133

namespace A113861

/-- `A001792(n)-A139790(n)` -/
def P9342137373665275133.Spec : Prop :=
  ∀ n, P9342137373665275133.a n = A113861 (n + 1)

end A113861

/-! ## A113861.P4950871351132191529

`A084858(n)-A136298(n)`
-/

namespace A113861.P4950871351132191529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084858 n - A136298 n

end

end A113861.P4950871351132191529

namespace A113861

/-- `A084858(n)-A136298(n)` -/
def P4950871351132191529.Spec : Prop :=
  ∀ n, P4950871351132191529.a n = A113861 (n + 1)

end A113861

/-! ## A113861.P1284538832707979253

`A348407(n)-A020707(n)`
-/

namespace A113861.P1284538832707979253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348407 n - A020707 n

end

end A113861.P1284538832707979253

namespace A113861

/-- `A348407(n)-A020707(n)` -/
def P1284538832707979253.Spec : Prop :=
  ∀ n, P1284538832707979253.a n = A113861 (n + 1)

theorem P1284538832707979253.correct : P1284538832707979253.Spec := by
  intro n
  simp only [A113861, Nat.add_sub_cancel, A113861.P1284538832707979253.a, A113861.P9034229237717301485.a, A020707, A020707.P16024998955381595964.a, A348407, A348407.P17745707699217768331.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A113861

/-! ## A113861.P17469794690374180263

`A140960(n+1)-A001045(n)`
-/

namespace A113861.P17469794690374180263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140960 (n + 1) - A001045 n

end

end A113861.P17469794690374180263

namespace A113861

/-- `A140960(n+1)-A001045(n)` -/
def P17469794690374180263.Spec : Prop :=
  ∀ n, P17469794690374180263.a n = A113861 (n + 1)

end A113861

/-! ## A113861.P16728950305892195861

`A137221(n+2)-A113405(n)`
-/

namespace A113861.P16728950305892195861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137221 (n + 2) - A113405 n

end

end A113861.P16728950305892195861

namespace A113861

/-- `A137221(n+2)-A113405(n)` -/
def P16728950305892195861.Spec : Prop :=
  ∀ n, P16728950305892195861.a n = A113861 (n + 1)

end A113861

/-! ## A113861.P5976379661375728917

`A348407(n)-A000079(n+2)`
-/

namespace A113861.P5976379661375728917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348407 n - A000079 (n + 2)

end

end A113861.P5976379661375728917

namespace A113861

/-- `A348407(n)-A000079(n+2)` -/
def P5976379661375728917.Spec : Prop :=
  ∀ n, P5976379661375728917.a n = A113861 (n + 1)

theorem P5976379661375728917.correct : P5976379661375728917.Spec := by
  intro n
  simp only [A113861, Nat.add_sub_cancel, A113861.P5976379661375728917.a, A113861.P9034229237717301485.a, A000079, A000079.P10855139691139572931.a, A348407, A348407.P17745707699217768331.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A113861

/-! ## A113861.P9783545529935774110

`A001045(n)+2*A140960(n)`
-/

namespace A113861.P9783545529935774110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n + 2 * A140960 n

end

end A113861.P9783545529935774110

namespace A113861

/-- `A001045(n)+2*A140960(n)` -/
def P9783545529935774110.Spec : Prop :=
  ∀ n, P9783545529935774110.a n = A113861 (n + 1)

end A113861

/-! ## A113861.P12648968910618222172

`2*A045883(n)-A001045(n)`
-/

namespace A113861.P12648968910618222172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045883 n - A001045 n

end

end A113861.P12648968910618222172

namespace A113861

/-- `2*A045883(n)-A001045(n)` -/
def P12648968910618222172.Spec : Prop :=
  ∀ n, P12648968910618222172.a n = A113861 (n + 1)

end A113861

/-! ## A113861.P1042790192080285778

`A127985(n+1)-A081254(n+1)`
-/

namespace A113861.P1042790192080285778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127985 (n + 1) - A081254 (n + 1)

end

end A113861.P1042790192080285778

namespace A113861

/-- `A127985(n+1)-A081254(n+1)` -/
def P1042790192080285778.Spec : Prop :=
  ∀ n, P1042790192080285778.a n = A113861 (n + 1)

end A113861

/-! ## A113861.P2002498618652198340

`A127984(n+2)-A003945(n+1)`
-/

namespace A113861.P2002498618652198340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127984 (n + 2) - A003945 (n + 1)

end

end A113861.P2002498618652198340

namespace A113861

/-- `A127984(n+2)-A003945(n+1)` -/
def P2002498618652198340.Spec : Prop :=
  ∀ n, P2002498618652198340.a n = A113861 (n + 1)

end A113861

/-! ## A113861.P198870923691792389

`A093835(n+1)-A006904(n+4)`
-/

namespace A113861.P198870923691792389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093835 (n + 1) - A006904 (n + 4)

end

end A113861.P198870923691792389

namespace A113861

/-- `A093835(n+1)-A006904(n+4)` -/
def P198870923691792389.Spec : Prop :=
  ∀ n, P198870923691792389.a n = A113861 (n + 1)

end A113861

/-! ## A113861.P1950101271425223643

`2*A059570(n+1)-A048573(n)`
-/

namespace A113861.P1950101271425223643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059570 (n + 1) - A048573 n

end

end A113861.P1950101271425223643

namespace A113861

/-- `2*A059570(n+1)-A048573(n)` -/
def P1950101271425223643.Spec : Prop :=
  ∀ n, P1950101271425223643.a n = A113861 (n + 1)

end A113861

/-! ## A113861.P131845394396809455

`A140960(n+1)-A133684(2*n)`
-/

namespace A113861.P131845394396809455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140960 (n + 1) - A133684 (2 * n)

end

end A113861.P131845394396809455

namespace A113861

/-- `A140960(n+1)-A133684(2*n)` -/
def P131845394396809455.Spec : Prop :=
  ∀ n, P131845394396809455.a n = A113861 (n + 1)

end A113861

/-!
# A113862: Expansion of Molien series for representation Sym^2(R^n) of the automorphism group of the lattice D_4.

The programs for A113862, there is no canonical definition to state claims against.
-/

/-! ## A113862.P6483592151683446142

`A184411(A387259(n))`
-/

namespace A113862.P6483592151683446142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184411 (A387259 n).toNat

end

end A113862.P6483592151683446142

/-! ## A113862.P7443001317159183766

`A136617(A059966(n+1))`
-/

namespace A113862.P7443001317159183766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136617 (A059966 (n + 1)).toNat

end

end A113862.P7443001317159183766

/-! ## A113862.P12937006911651322972

`A136617(A107847(n+1))`
-/

namespace A113862.P12937006911651322972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136617 (A107847 (n + 1)).toNat

end

end A113862.P12937006911651322972

/-! ## A113862.P9969396659370937527

`A356990(A024458(n+1))`
-/

namespace A113862.P9969396659370937527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356990 (A024458 (n + 1)).toNat

end

end A113862.P9969396659370937527

/-! ## A113862.P11260037993036509038

`A298346(n)+A075997(n)`
-/

namespace A113862.P11260037993036509038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298346 n + A075997 n

end

end A113862.P11260037993036509038

/-!
# A113863: Expansion of Molien series for representation Sym^2(R^n) of the automorphism group of the lattice E_8.

The programs for A113863, there is no canonical definition to state claims against.
-/

/-! ## A113863.P16143028495491677181

`A036541(A230779(2^n))`
-/

namespace A113863.P16143028495491677181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036541 (A230779 (2 ^ n)).toNat

end

end A113863.P16143028495491677181

/-! ## A113863.P14980963890092936217

`A034887(A191319(n)+∑[n])`
-/

namespace A113863.P14980963890092936217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A191319 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A113863.P14980963890092936217

/-! ## A113863.P7043317999090448318

`A061551(n)-A237496(n+1)`
-/

namespace A113863.P7043317999090448318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061551 n - A237496 (n + 1)

end

end A113863.P7043317999090448318

/-! ## A113863.P14772973917012855209

`C(n, floor(n/2))-A001878(A010551(n))`
-/

namespace A113863.P14772973917012855209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n ⌊(n : ℚ) / 2⌋.toNat : ℤ) - A001878 (A010551 n).toNat

end

end A113863.P14772973917012855209

/-! ## A113863.P14376527855653627331

`A138415(floor(n/2))+A119269(∑[n+3]+8)`
-/

namespace A113863.P14376527855653627331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138415 ⌊(n : ℚ) / 2⌋.toNat + A119269 (∑ j ∈ Finset.range (n + 1), f1 j + 8)

end

end A113863.P14376527855653627331

/-!
# A113864: Expansion of Molien series for representation Sym^2(R^n) of the automorphism group of the Leech lattice.

The programs for A113864, there is no canonical definition to state claims against.
-/

/-! ## A113864.P247971989700026845

`A338555(A052823(n)+1)`
-/

namespace A113864.P247971989700026845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338555 (A052823 n + 1).toNat

end

end A113864.P247971989700026845

/-! ## A113864.P11485083024672439004

`A052823(n)+A014391(A130661(n))`
-/

namespace A113864.P11485083024672439004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052823 n + A014391 (A130661 n).toNat

end

end A113864.P11485083024672439004

/-! ## A113864.P15779157421133874000

`A175126(n)+A000196(A135335(n))`
-/

namespace A113864.P15779157421133874000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n + A000196 (A135335 n).toNat

end

end A113864.P15779157421133874000

/-! ## A113864.P10011965844348966744

`A338555(A000031(n)-A057427(n))`
-/

namespace A113864.P10011965844348966744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338555 (A000031 n - A057427 n).toNat

end

end A113864.P10011965844348966744

/-! ## A113864.P7534837350844497678

`A181046(A241726(n))`
-/

namespace A113864.P7534837350844497678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181046 (A241726 (n + 36)).toNat

end

end A113864.P7534837350844497678

/-!
# A113865: Number of digits of Bell number A000110(n).

The programs for A113865, there is no canonical definition to state claims against.
-/

/-! ## A113865.P16318135390970132463

`∑{digits}[A000110(n), A043562(#)]`
-/

namespace A113865.P16318135390970132463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A043562 x).sum

end

end A113865.P16318135390970132463

/-! ## A113865.P12743604812028823830

`∑{digits}[A000110(n), A047996(#)]`
-/

namespace A113865.P12743604812028823830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A047996 x).sum

end

end A113865.P12743604812028823830

/-! ## A113865.P822838980730316156

`∑{digits}[A000110(n), A055642(#)]`
-/

namespace A113865.P822838980730316156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A055642 x).sum

end

end A113865.P822838980730316156

/-! ## A113865.P1757164131935446602

`∑{digits}[A000110(n), A178788(#)]`
-/

namespace A113865.P1757164131935446602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A178788 x).sum

end

end A113865.P1757164131935446602

/-! ## A113865.P812705583505085518

`∑{digits}[A034732(n+1), A119335(#)]`
-/

namespace A113865.P812705583505085518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A119335 x).sum

end

end A113865.P812705583505085518

/-! ## A113865.P10249605194555753218

`∑{digits}[A000110(n), A007318(A007318(#))]`
-/

namespace A113865.P10249605194555753218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007318 (A007318 x).toNat).sum

end

end A113865.P10249605194555753218

/-! ## A113865.P15534454886038479938

`∑{digits}[A000110(n), A014963(A015219(#))]`
-/

namespace A113865.P15534454886038479938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A014963 (A015219 x).toNat).sum

end

end A113865.P15534454886038479938

/-! ## A113865.P9887056199630775149

`∑{digits}[A000110(n), A000108(A051168(#))]`
-/

namespace A113865.P9887056199630775149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000108 (A051168 x).toNat).sum

end

end A113865.P9887056199630775149

/-! ## A113865.P4028940038492037156

`∑{digits}[A000110(n), A000041(A057814(#))]`
-/

namespace A113865.P4028940038492037156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000041 (A057814 x).toNat).sum

end

end A113865.P4028940038492037156

/-! ## A113865.P5745429322262975880

`∑{digits}[A000110(n), A000041(A129175(#))]`
-/

namespace A113865.P5745429322262975880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000041 (A129175 x).toNat).sum

end

end A113865.P5745429322262975880

/-!
# A113866: Primes in the sequence A064491.

The programs for A113866, the canonical program `A113866.P4859233891628937342` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113866 has offset 1).

The definition of A113866 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113866.P4859233891628937342

`p?[A064491(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A113866

/-- `p?[A064491(n+1)]` -/
def P4859233891628937342.Spec : Prop :=
  ∀ n, P4859233891628937342.a n = A113866 (n + 1)

theorem P4859233891628937342.correct : P4859233891628937342.Spec := by
  intro n
  simp only [A113866, Nat.add_sub_cancel]

end A113866

/-! ## A113866.P7567806392658297423

`p?[A000005(a(n-1))+a(n-1)]` with `a(0)=1`
-/

namespace A113866.P7567806392658297423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A000005 (f1 (n - 1)).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113866.P7567806392658297423

namespace A113866

/-- `p?[A000005(a(n-1))+a(n-1)]` -/
def P7567806392658297423.Spec : Prop :=
  ∀ n, P7567806392658297423.a n = A113866 (n + 1)

end A113866

/-! ## A113866.P7066885491021082655

`∩[A000040(n+1), A064491(n+1)]`
-/

namespace A113866.P7066885491021082655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113866.P7066885491021082655

namespace A113866

/-- `∩[A000040(n+1), A064491(n+1)]` -/
def P7066885491021082655.Spec : Prop :=
  ∀ n, (P7066885491021082655.a n : ℤ) = A113866 (n + 1)

end A113866

/-! ## A113866.P17371243232793667642

`∩[A045319(n+1), A064491(n+1)]`
-/

namespace A113866.P17371243232793667642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113866.P17371243232793667642

namespace A113866

/-- `∩[A045319(n+1), A064491(n+1)]` -/
def P17371243232793667642.Spec : Prop :=
  ∀ n, (P17371243232793667642.a n : ℤ) = A113866 (n + 1)

end A113866

/-! ## A113866.P5675909534595800296

`∩[A045344(n+1), A064491(n+1)]`
-/

namespace A113866.P5675909534595800296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113866.P5675909534595800296

namespace A113866

/-- `∩[A045344(n+1), A064491(n+1)]` -/
def P5675909534595800296.Spec : Prop :=
  ∀ n, (P5675909534595800296.a n : ℤ) = A113866 (n + 1)

end A113866

/-! ## A113866.P5026176790577507245

`∩[A053813(n+1), A064491(n+1)]`
-/

namespace A113866.P5026176790577507245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113866.P5026176790577507245

namespace A113866

/-- `∩[A053813(n+1), A064491(n+1)]` -/
def P5026176790577507245.Spec : Prop :=
  ∀ n, (P5026176790577507245.a n : ℤ) = A113866 (n + 1)

end A113866

/-! ## A113866.P13217027474824095509

`∩[A064491(n+1), A106118(n+1)]`
-/

namespace A113866.P13217027474824095509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113866.P13217027474824095509

namespace A113866

/-- `∩[A064491(n+1), A106118(n+1)]` -/
def P13217027474824095509.Spec : Prop :=
  ∀ n, (P13217027474824095509.a n : ℤ) = A113866 (n + 1)

end A113866

/-! ## A113866.P8503918585981504237

`∩[A064491(n+1), A116974(n+1)]`
-/

namespace A113866.P8503918585981504237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113866.P8503918585981504237

namespace A113866

/-- `∩[A064491(n+1), A116974(n+1)]` -/
def P8503918585981504237.Spec : Prop :=
  ∀ n, (P8503918585981504237.a n : ℤ) = A113866 (n + 1)

end A113866

/-! ## A113866.P15366072523664341779

`∩[A064491(n+1), A182140(n+1)]`
-/

namespace A113866.P15366072523664341779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113866.P15366072523664341779

namespace A113866

/-- `∩[A064491(n+1), A182140(n+1)]` -/
def P15366072523664341779.Spec : Prop :=
  ∀ n, (P15366072523664341779.a n : ℤ) = A113866 (n + 1)

end A113866

/-! ## A113866.P3387417118876850107

`∩[A064491(n+1), A182986(n+1)]`
-/

namespace A113866.P3387417118876850107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113866.P3387417118876850107

namespace A113866

/-- `∩[A064491(n+1), A182986(n+1)]` -/
def P3387417118876850107.Spec : Prop :=
  ∀ n, (P3387417118876850107.a n : ℤ) = A113866 (n + 1)

end A113866

/-! ## A113866.P6454351296201674170

`∩[A064491(n+1), A197636(n+1)]`
-/

namespace A113866.P6454351296201674170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113866.P6454351296201674170

namespace A113866

/-- `∩[A064491(n+1), A197636(n+1)]` -/
def P6454351296201674170.Spec : Prop :=
  ∀ n, (P6454351296201674170.a n : ℤ) = A113866 (n + 1)

end A113866

/-! ## A113866.P16489067056359060797

`∩[A064491(n+1), A216885(n+1)]`
-/

namespace A113866.P16489067056359060797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113866.P16489067056359060797

namespace A113866

/-- `∩[A064491(n+1), A216885(n+1)]` -/
def P16489067056359060797.Spec : Prop :=
  ∀ n, (P16489067056359060797.a n : ℤ) = A113866 (n + 1)

end A113866

/-! ## A113866.P11383956432780037311

`∩[A064491(n+1), A257974(n+1)]`
-/

namespace A113866.P11383956432780037311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113866.P11383956432780037311

namespace A113866

/-- `∩[A064491(n+1), A257974(n+1)]` -/
def P11383956432780037311.Spec : Prop :=
  ∀ n, (P11383956432780037311.a n : ℤ) = A113866 (n + 1)

end A113866

/-! ## A113866.P3067395467988347489

`∩[A064491(n+1), A332787(n+1)]`
-/

namespace A113866.P3067395467988347489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113866.P3067395467988347489

namespace A113866

/-- `∩[A064491(n+1), A332787(n+1)]` -/
def P3067395467988347489.Spec : Prop :=
  ∀ n, (P3067395467988347489.a n : ℤ) = A113866 (n + 1)

end A113866

/-!
# A113867: a(n) = a(n-1) + 2^(A047258(n)) for n>1, a(1)=1.

The programs for A113867, the canonical program `A113867.P11142157165545728786` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113867 has offset 1).

The definition of A113867 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113867.P11142157165545728786

`a(n-1)+2^A047258(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A113867

/-- `a(n-1)+2^A047258(n+1)` -/
def P11142157165545728786.Spec : Prop :=
  ∀ n, P11142157165545728786.a n = (A113867 (n + 1) : ℚ)

end A113867

/-! ## A113867.P2903048235296396945

`∑[2^((2*n)%3+2*n)]`
-/

namespace A113867.P2903048235296396945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (2 * n % 3 + 2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113867.P2903048235296396945

namespace A113867

/-- `∑[2^((2*n)%3+2*n)]` -/
def P2903048235296396945.Spec : Prop :=
  ∀ n, (P2903048235296396945.a n : ℤ) = A113867 (n + 1)

end A113867

/-! ## A113867.P1692066045943793174

`∑[4^(n+1)/gcd(4, n%3)]`
-/

namespace A113867.P1692066045943793174
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ (n + 1) : ℚ) / (Nat.gcd 4 (n % 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113867.P1692066045943793174

namespace A113867

/-- `∑[4^(n+1)/gcd(4, n%3)]` -/
def P1692066045943793174.Spec : Prop :=
  ∀ n, P1692066045943793174.a n = (A113867 (n + 1) : ℚ)

end A113867

/-! ## A113867.P2728681267386411543

`∑[2^∑[floor(a(n-3))]]` with `a(0)=0, a(1)=4, a(2)=1, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A113867.P2728681267386411543
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 1, 1] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113867.P2728681267386411543

namespace A113867

/-- `∑[2^∑[floor(a(n-3))]]` -/
def P2728681267386411543.Spec : Prop :=
  ∀ n, (P2728681267386411543.a n : ℤ) = A113867 (n + 1)

end A113867

/-! ## A113867.P3325706881369077042

`∑[4^(n+1)/a(n-1)%7]` with `a(0)=1`
-/

namespace A113867.P3325706881369077042
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (4 ^ (n + 1) : ℚ) / (Int.tmod (SequenceMachineLib.roundAway (f1 (n - 1))) 7 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113867.P3325706881369077042

namespace A113867

/-- `∑[4^(n+1)/a(n-1)%7]` -/
def P3325706881369077042.Spec : Prop :=
  ∀ n, P3325706881369077042.a n = (A113867 (n + 1) : ℚ)

end A113867

/-! ## A113867.P3222193911301010519

`∑[2^A047258(n+1)]`
-/

namespace A113867.P3222193911301010519
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A047258 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113867.P3222193911301010519

namespace A113867

/-- `∑[2^A047258(n+1)]` -/
def P3222193911301010519.Spec : Prop :=
  ∀ n, P3222193911301010519.a n = (A113867 (n + 1) : ℚ)

end A113867

/-! ## A113867.P3677341860952729368

`∑[4^n*A153727(n)]`
-/

namespace A113867.P3677341860952729368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A153727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113867.P3677341860952729368

namespace A113867

/-- `∑[4^n*A153727(n)]` -/
def P3677341860952729368.Spec : Prop :=
  ∀ n, P3677341860952729368.a n = A113867 (n + 1)

end A113867

/-! ## A113867.P7127276653519942297

`(A113854(n+2)-1)/2`
-/

namespace A113867.P7127276653519942297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113854 (n + 2) - 1 : ℚ) / 2

end

end A113867.P7127276653519942297

namespace A113867

/-- `(A113854(n+2)-1)/2` -/
def P7127276653519942297.Spec : Prop :=
  ∀ n, P7127276653519942297.a n = (A113867 (n + 1) : ℚ)

end A113867

/-! ## A113867.P11369025133763518744

`∑[A000079((2*n)%3+2*n)]`
-/

namespace A113867.P11369025133763518744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n % 3 + 2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113867.P11369025133763518744

namespace A113867

/-- `∑[A000079((2*n)%3+2*n)]` -/
def P11369025133763518744.Spec : Prop :=
  ∀ n, P11369025133763518744.a n = A113867 (n + 1)

end A113867

/-! ## A113867.P9256747568828695162

`∑[A011782(∑[A146325(n+1)])]`
-/

namespace A113867.P9256747568828695162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146325 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113867.P9256747568828695162

namespace A113867

/-- `∑[A011782(∑[A146325(n+1)])]` -/
def P9256747568828695162.Spec : Prop :=
  ∀ n, P9256747568828695162.a n = A113867 (n + 1)

end A113867

/-! ## A113867.P10518564641270063081

`∑[A000079(A236348(2*n+1))]`
-/

namespace A113867.P10518564641270063081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A236348 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113867.P10518564641270063081

namespace A113867

/-- `∑[A000079(A236348(2*n+1))]` -/
def P10518564641270063081.Spec : Prop :=
  ∀ n, P10518564641270063081.a n = A113867 (n + 1)

end A113867

/-! ## A113867.P4748882022788339605

`∑[A004171(n)*A153727(n)/2]`
-/

namespace A113867.P4748882022788339605
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004171 n * A153727 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113867.P4748882022788339605

namespace A113867

/-- `∑[A004171(n)*A153727(n)/2]` -/
def P4748882022788339605.Spec : Prop :=
  ∀ n, P4748882022788339605.a n = (A113867 (n + 1) : ℚ)

end A113867

/-! ## A113867.P14525922844155878654

`∑[A000079(A143097(2*n+1))]-1`
-/

namespace A113867.P14525922844155878654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A143097 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A113867.P14525922844155878654

namespace A113867

/-- `∑[A000079(A143097(2*n+1))]-1` -/
def P14525922844155878654.Spec : Prop :=
  ∀ n, P14525922844155878654.a n = A113867 (n + 1)

end A113867

/-! ## A113867.P17795066430245671078

`∑[2^eq[A008615(n+1), A008615(n)]]`
-/

namespace A113867.P17795066430245671078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113867.P17795066430245671078

namespace A113867

/-- `∑[2^eq[A008615(n+1), A008615(n)]]` -/
def P17795066430245671078.Spec : Prop :=
  ∀ n, (P17795066430245671078.a n : ℤ) = A113867 (n + 1)

end A113867

/-! ## A113867.P323632677156206270

`∑[A000079(A005408(n)-A049347(n))]`
-/

namespace A113867.P323632677156206270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A005408 n - A049347 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113867.P323632677156206270

namespace A113867

/-- `∑[A000079(A005408(n)-A049347(n))]` -/
def P323632677156206270.Spec : Prop :=
  ∀ n, P323632677156206270.a n = A113867 (n + 1)

end A113867

/-! ## A113867.P16509985370766645946

`∑[A011782(A103517(n)-A049347(n))]`
-/

namespace A113867.P16509985370766645946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A103517 n - A049347 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113867.P16509985370766645946

namespace A113867

/-- `∑[A011782(A103517(n)-A049347(n))]` -/
def P16509985370766645946.Spec : Prop :=
  ∀ n, P16509985370766645946.a n = A113867 (n + 1)

end A113867

/-!
# A113868: Numbers k such that (k+1)^9 - 3 is prime.

The programs for A113868, there is no canonical definition to state claims against.
-/

/-! ## A113868.P9866760335985264628

`A112405(n+1)-1`
-/

namespace A113868.P9866760335985264628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112405 (n + 1) - 1

end

end A113868.P9866760335985264628

/-! ## A113868.P13848984342370947153

`A168361(A007947(2*(n+1)))+A112405(n+1)`
-/

namespace A113868.P13848984342370947153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168361 (A007947 (2 * (n + 1))).toNat + A112405 (n + 1)

end

end A113868.P13848984342370947153

/-! ## A113868.P3029380282627452250

`A237047(A051340(3*n+4))+A112405(n+1)`
-/

namespace A113868.P3029380282627452250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237047 (A051340 (3 * n + 4)).toNat + A112405 (n + 1)

end

end A113868.P3029380282627452250

/-! ## A113868.P6433285952885535098

`A168361(A216833(n+1))+A112405(n+1)`
-/

namespace A113868.P6433285952885535098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168361 (A216833 (n + 1)).toNat + A112405 (n + 1)

end

end A113868.P6433285952885535098

/-! ## A113868.P4183827513264456323

`A168361(A039956(n+1))+A112405(n+1)`
-/

namespace A113868.P4183827513264456323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168361 (A039956 (n + 1)).toNat + A112405 (n + 1)

end

end A113868.P4183827513264456323

/-! ## A113868.P2889809399581108825

`A168361(A017365(n))+A112405(n+1)`
-/

namespace A113868.P2889809399581108825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168361 (A017365 n).toNat + A112405 (n + 1)

end

end A113868.P2889809399581108825

/-! ## A113868.P15108851636077698609

`A004273(A112405(n+1)/2)`
-/

namespace A113868.P15108851636077698609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.roundAway ((A112405 (n + 1) : ℚ) / 2)).toNat

end

end A113868.P15108851636077698609

/-! ## A113868.P2124867582948483480

`A004483(A112405(n+1))`
-/

namespace A113868.P2124867582948483480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (A112405 (n + 1)).toNat

end

end A113868.P2124867582948483480

/-! ## A113868.P9055621099335036370

`A168361(A112405(n+1)+2)+A112405(n+1)`
-/

namespace A113868.P9055621099335036370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168361 (A112405 (n + 1) + 2).toNat + A112405 (n + 1)

end

end A113868.P9055621099335036370

/-! ## A113868.P3577016887509747723

`A350576(2*A112405(n+1))+1`
-/

namespace A113868.P3577016887509747723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350576 (2 * A112405 (n + 1)).toNat + 1

end

end A113868.P3577016887509747723

/-!
# A113869: Coefficients in asymptotic expansion of probability that a random pair of elements from the alternating group A_k generates all of A_k.

The programs for A113869, there is no canonical definition to state claims against.
-/

/-! ## A113869.P13532625108961037235

`Δ[A059883(2*(n+2))-A241462(n+4)]`
-/

namespace A113869.P13532625108961037235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059883 (2 * (n + 2)) - A241462 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113869.P13532625108961037235

/-! ## A113869.P14421787425891497143

`A354327(n)-A110657(A331797(n))`
-/

namespace A113869.P14421787425891497143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354327 n - A110657 (A331797 n).toNat

end

end A113869.P14421787425891497143

/-!
# A113870: a(n) = a(n-1) + 2^(k(n)), where k(n) is the n-th term of the sequence formed by k(1)=0 together with the numbers A042963.

The programs for A113870, the canonical program `A113870.P3880821348973943803` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113870 has offset 1).

The definition of A113870 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113870.P4230548782792306329

`∑[2^comp[or(2, n)+1]]`
-/

namespace A113870.P4230548782792306329
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113870.P4230548782792306329

namespace A113870

/-- `∑[2^comp[or(2, n)+1]]` -/
def P4230548782792306329.Spec : Prop :=
  ∀ n, (P4230548782792306329.a n : ℤ) = A113870 (n + 1)

end A113870

/-! ## A113870.P3880821348973943803

`∑[record[and(2, n+1)^n]]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113870

/-- `∑[record[and(2, n+1)^n]]` -/
def P3880821348973943803.Spec : Prop :=
  ∀ n, (P3880821348973943803.a n : ℤ) = A113870 (n + 1)

theorem P3880821348973943803.correct : P3880821348973943803.Spec := by
  intro n
  simp only [A113870, Nat.add_sub_cancel]

end A113870

/-! ## A113870.P17036586765917685633

`16*a(n-2)-9` with `a(0)=1, a(1)=3`
-/

namespace A113870.P17036586765917685633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  16 * a (n - 2) - 9

end

end A113870.P17036586765917685633

namespace A113870

/-- `16*a(n-2)-9` -/
def P17036586765917685633.Spec : Prop :=
  ∀ n, P17036586765917685633.a n = A113870 (n + 1)

end A113870

/-! ## A113870.P1863418155484510703

`∑[a(n-2)/(1/4)²]` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A113870.P1863418155484510703
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 4] fun n f1 =>
  f1 (n - 2) / ((1 : ℚ) / 4) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113870.P1863418155484510703

namespace A113870

/-- `∑[a(n-2)/(1/4)²]` -/
def P1863418155484510703.Spec : Prop :=
  ∀ n, P1863418155484510703.a n = (A113870 (n + 1) : ℚ)

end A113870

/-! ## A113870.P19383937535108099

`∑[2^∑[4-a(n-1)]]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A113870.P19383937535108099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n f2 =>
  4 - f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113870.P19383937535108099

namespace A113870

/-- `∑[2^∑[4-a(n-1)]]` -/
def P19383937535108099.Spec : Prop :=
  ∀ n, P19383937535108099.a n = (A113870 (n + 1) : ℚ)

end A113870

/-! ## A113870.P10757140873909405023

`∑[2^(abs(char[2*n]-2*n)-1)]`
-/

namespace A113870.P10757140873909405023
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (|((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - (2 * n : ℤ)| - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113870.P10757140873909405023

namespace A113870

/-- `∑[2^(abs(char[2*n]-2*n)-1)]` -/
def P10757140873909405023.Spec : Prop :=
  ∀ n, P10757140873909405023.a n = (A113870 (n + 1) : ℚ)

end A113870

/-! ## A113870.P6565402878344000842

`record[A137470(n)]`
-/

namespace A113870.P6565402878344000842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137470 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113870.P6565402878344000842

namespace A113870

/-- `record[A137470(n)]` -/
def P6565402878344000842.Spec : Prop :=
  ∀ n, P6565402878344000842.a n = A113870 (n + 1)

end A113870

/-! ## A113870.P11264787851167965385

`record[∑[A099087(2*n)]]`
-/

namespace A113870.P11264787851167965385
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099087 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113870.P11264787851167965385

namespace A113870

/-- `record[∑[A099087(2*n)]]` -/
def P11264787851167965385.Spec : Prop :=
  ∀ n, P11264787851167965385.a n = A113870 (n + 1)

end A113870

/-! ## A113870.P18126256802887733662

`record[∑[A108520(2*n)]]`
-/

namespace A113870.P18126256802887733662
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108520 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113870.P18126256802887733662

namespace A113870

/-- `record[∑[A108520(2*n)]]` -/
def P18126256802887733662.Spec : Prop :=
  ∀ n, P18126256802887733662.a n = A113870 (n + 1)

end A113870

/-! ## A113870.P9529730166950359037

`record[∑[A320770(2*n)]]`
-/

namespace A113870.P9529730166950359037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320770 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113870.P9529730166950359037

namespace A113870

/-- `record[∑[A320770(2*n)]]` -/
def P9529730166950359037.Spec : Prop :=
  ∀ n, P9529730166950359037.a n = A113870 (n + 1)

end A113870

/-! ## A113870.P15923960857657960169

`record[∑[A363524(2*n)]]`
-/

namespace A113870.P15923960857657960169
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363524 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113870.P15923960857657960169

namespace A113870

/-- `record[∑[A363524(2*n)]]` -/
def P15923960857657960169.Spec : Prop :=
  ∀ n, P15923960857657960169.a n = A113870 (n + 1)

end A113870

/-! ## A113870.P12091360955978094341

`ceil(A113876(n+1)/2)`
-/

namespace A113870.P12091360955978094341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A113876 (n + 1) : ℚ) / 2⌉

end

end A113870.P12091360955978094341

namespace A113870

/-- `ceil(A113876(n+1)/2)` -/
def P12091360955978094341.Spec : Prop :=
  ∀ n, P12091360955978094341.a n = A113870 (n + 1)

end A113870

/-! ## A113870.P709391805636572555

`record[(A077973(n)+1)/2]`
-/

namespace A113870.P709391805636572555
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077973 n + 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113870.P709391805636572555

namespace A113870

/-- `record[(A077973(n)+1)/2]` -/
def P709391805636572555.Spec : Prop :=
  ∀ n, P709391805636572555.a n = (A113870 (n + 1) : ℚ)

end A113870

/-! ## A113870.P3997236229203171526

`record[2*A137505(n)-1]`
-/

namespace A113870.P3997236229203171526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A137505 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113870.P3997236229203171526

namespace A113870

/-- `record[2*A137505(n)-1]` -/
def P3997236229203171526.Spec : Prop :=
  ∀ n, P3997236229203171526.a n = A113870 (n + 1)

end A113870

/-! ## A113870.P3124172752977661214

`record[∑[A009545(2*n+1)]]`
-/

namespace A113870.P3124172752977661214
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113870.P3124172752977661214

namespace A113870

/-- `record[∑[A009545(2*n+1)]]` -/
def P3124172752977661214.Spec : Prop :=
  ∀ n, P3124172752977661214.a n = A113870 (n + 1)

end A113870

/-! ## A113870.P14176385589418659449

`record[∑[A138377(2*n+1)]]`
-/

namespace A113870.P14176385589418659449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138377 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113870.P14176385589418659449

namespace A113870

/-- `record[∑[A138377(2*n+1)]]` -/
def P14176385589418659449.Spec : Prop :=
  ∀ n, P14176385589418659449.a n = A113870 (n + 1)

end A113870

/-! ## A113870.P1821690023819340447

`A342728(A047241(n+1))`
-/

namespace A113870.P1821690023819340447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342728 (A047241 (n + 1)).toNat

end

end A113870.P1821690023819340447

namespace A113870

/-- `A342728(A047241(n+1))` -/
def P1821690023819340447.Spec : Prop :=
  ∀ n, P1821690023819340447.a n = A113870 (n + 1)

end A113870

/-! ## A113870.P17011939777176530669

`(A077973(A047615(n+1))+1)/2`
-/

namespace A113870.P17011939777176530669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077973 (A047615 (n + 1)).toNat + 1 : ℚ) / 2

end

end A113870.P17011939777176530669

namespace A113870

/-- `(A077973(A047615(n+1))+1)/2` -/
def P17011939777176530669.Spec : Prop :=
  ∀ n, P17011939777176530669.a n = (A113870 (n + 1) : ℚ)

end A113870

/-! ## A113870.P12560019202053931769

`or(1, ∑[A117575(2*n)²*A176895(2*n)])`
-/

namespace A113870.P12560019202053931769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117575 (2 * n) ^ 2 * A176895 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A113870.P12560019202053931769

namespace A113870

/-- `or(1, ∑[A117575(2*n)²*A176895(2*n)])` -/
def P12560019202053931769.Spec : Prop :=
  ∀ n, P12560019202053931769.a n = A113870 (n + 1)

end A113870

/-! ## A113870.P17832287043723695884

`record[A077870(2*n)]`
-/

namespace A113870.P17832287043723695884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077870 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113870.P17832287043723695884

namespace A113870

/-- `record[A077870(2*n)]` -/
def P17832287043723695884.Spec : Prop :=
  ∀ n, P17832287043723695884.a n = A113870 (n + 1)

end A113870

/-!
# A113871: G.f.: 1/(Sum_{k>=0} (k!)^2 x^k).

The programs for A113871, there is no canonical definition to state claims against.
-/

/-! ## A113871.P6706828757515982138

`A306629(∑[n+3])`
-/

namespace A113871.P6706828757515982138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306629 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A113871.P6706828757515982138

/-! ## A113871.P11003361840840765773

`or(1, A306629(A141214(n)))`
-/

namespace A113871.P11003361840840765773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A306629 (A141214 n).toNat)

end

end A113871.P11003361840840765773

/-! ## A113871.P10373120911573833328

`A306629(A141214(n))+A178798(n)`
-/

namespace A113871.P10373120911573833328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306629 (A141214 n).toNat + A178798 n

end

end A113871.P10373120911573833328

/-! ## A113871.P4349002257168831528

`A306629(A141214(n))+A200214(n+1)`
-/

namespace A113871.P4349002257168831528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306629 (A141214 n).toNat + A200214 (n + 1)

end

end A113871.P4349002257168831528

/-! ## A113871.P14656316755951769873

`A007318(C(2, n))*A306629(A141214(n))`
-/

namespace A113871.P14656316755951769873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A306629 (A141214 n).toNat

end

end A113871.P14656316755951769873

/-!
# A113872: Last term of n-term arithmetic progression of primes described in A033188 and A033189.

The programs for A113872, there is no canonical definition to state claims against.
-/

/-! ## A113872.P2023023486875890481

`A033189(n+1)+n*A033188(n+1)`
-/

namespace A113872.P2023023486875890481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033189 (n + 1) + (n : ℤ) * A033188 (n + 1)

end

end A113872.P2023023486875890481

/-! ## A113872.P12190465043268730751

`A033189(n+1)+A354744(n+1)-A354743(n+1)`
-/

namespace A113872.P12190465043268730751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033189 (n + 1) + (A354744 (n + 1) - A354743 (n + 1))

end

end A113872.P12190465043268730751

/-! ## A113872.P16384912520673064544

`A354743(A296134(n+1)+n)+n*A033188(n+1)`
-/

namespace A113872.P16384912520673064544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354743 (A296134 (n + 1) + (n : ℤ)).toNat + (n : ℤ) * A033188 (n + 1)

end

end A113872.P16384912520673064544

/-! ## A113872.P13659197887747473398

`A354743(A296134(n+1)+n)+A354744(n+1)-A354743(n+1)`
-/

namespace A113872.P13659197887747473398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354743 (A296134 (n + 1) + (n : ℤ)).toNat + (A354744 (n + 1) - A354743 (n + 1))

end

end A113872.P13659197887747473398

/-! ## A113872.P8368711542049050764

`A133276(∑[n+1])`
-/

namespace A113872.P8368711542049050764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133276 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A113872.P8368711542049050764

/-!
# A113873: a(3n) = a(3n-1) + a(3n-2), a(3n+1) = 2n*a(3n) + a(3n-1), a(3n+2) = a(3n+1) + a(3n).

The programs for A113873, the canonical program `A113873.P74120000114504862` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113873 has offset 0).

The definition of A113873 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113873.P74120000114504862

`a(n-2)+a(n-1)*A005131(n)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A113873

/-- `a(n-2)+a(n-1)*A005131(n)` -/
def P74120000114504862.Spec : Prop :=
  ∀ n, P74120000114504862.a n = A113873 n

theorem P74120000114504862.correct : P74120000114504862.Spec := by
  intro n
  simp only [A113873]

end A113873

/-! ## A113873.P13624307968179092212

`A006258(∑[Δ[floor((n-2)/3)²]+1])`
-/

namespace A113873.P13624307968179092212
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 2 : ℚ) / 3⌋ ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006258 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A113873.P13624307968179092212

namespace A113873

/-- `A006258(∑[Δ[floor((n-2)/3)²]+1])` -/
def P13624307968179092212.Spec : Prop :=
  ∀ n, P13624307968179092212.a n = A113873 n

end A113873

/-! ## A113873.P17312593611631562694

`A259589(n-2)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A113873.P17312593611631562694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A259589 (n - 2) - a (n - 1)

end

end A113873.P17312593611631562694

namespace A113873

/-- `A259589(n-2)-a(n-1)` -/
def P17312593611631562694.Spec : Prop :=
  ∀ n, P17312593611631562694.a n = A113873 n

end A113873

/-! ## A113873.P6050318749115668931

`A259589(n)%A007676(A028310(n)-1)`
-/

namespace A113873.P6050318749115668931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259589 n) (A007676 (A028310 n - 1).toNat)

end

end A113873.P6050318749115668931

namespace A113873

/-- `A259589(n)%A007676(A028310(n)-1)` -/
def P6050318749115668931.Spec : Prop :=
  ∀ n, P6050318749115668931.a n = A113873 n

end A113873

/-!
# A113874: a(3n) = a(3n-1) + a(3n-2), a(3n+1) = 2n*a(3n) + a(3n-1), a(3n+2) = a(3n+1) + a(3n).

The programs for A113874, the canonical program `A113874.P794801418721017797` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113874 has offset 0).

The definition of A113874 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113874.P15857389098286323672

`A007677(floor(n-atan(n)))-char[1]`
-/

namespace A113874.P15857389098286323672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007677 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A113874.P15857389098286323672

namespace A113874

/-- `A007677(floor(n-atan(n)))-char[1]` -/
def P15857389098286323672.Spec : Prop :=
  ∀ n, P15857389098286323672.a n = A113874 n

end A113874

/-! ## A113874.P794801418721017797

`a(n-2)+a(n-1)*A005131(n)` with `a(0)=1, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A113874

/-- `a(n-2)+a(n-1)*A005131(n)` -/
def P794801418721017797.Spec : Prop :=
  ∀ n, P794801418721017797.a n = A113874 n

theorem P794801418721017797.correct : P794801418721017797.Spec := by
  intro n
  simp only [A113874]

end A113874

/-! ## A113874.P6558351750800252203

`A159075(n)+A007677(floor(n-atan(n)))`
-/

namespace A113874.P6558351750800252203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A007677 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat

end

end A113874.P6558351750800252203

namespace A113874

/-- `A159075(n)+A007677(floor(n-atan(n)))` -/
def P6558351750800252203.Spec : Prop :=
  ∀ n, P6558351750800252203.a n = A113874 n

end A113874

/-! ## A113874.P12513796109105856244

`A007677(floor(n-atan(n)))*A060576(n)`
-/

namespace A113874.P12513796109105856244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007677 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat * A060576 n

end

end A113874.P12513796109105856244

namespace A113874

/-- `A007677(floor(n-atan(n)))*A060576(n)` -/
def P12513796109105856244.Spec : Prop :=
  ∀ n, P12513796109105856244.a n = A113874 n

end A113874

/-! ## A113874.P1932711417937916188

`A007677(floor(n-atan(n)))%(A060435(n)+1)`
-/

namespace A113874.P1932711417937916188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007677 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat) (A060435 n + 1)

end

end A113874.P1932711417937916188

namespace A113874

/-- `A007677(floor(n-atan(n)))%(A060435(n)+1)` -/
def P1932711417937916188.Spec : Prop :=
  ∀ n, P1932711417937916188.a n = A113874 n

end A113874

/-!
# A113875: Slowest growing sequence of primes having the prime-pairwise-average property: if i

The programs for A113875, there is no canonical definition to state claims against.
-/

/-! ## A113875.P12784733292599672538

`2*A119751(n+1)+1`
-/

namespace A113875.P12784733292599672538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A119751 (n + 1) + 1

end

end A113875.P12784733292599672538

/-! ## A113875.P11325882853710033351

`A007318(C(2, n))+lcm(2, A119751(n+1))`
-/

namespace A113875.P11325882853710033351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) + (Int.lcm 2 (A119751 (n + 1)) : ℤ)

end

end A113875.P11325882853710033351

/-! ## A113875.P10149317224786098203

`A119751(n+1)+A119751(A005496(n))+1`
-/

namespace A113875.P10149317224786098203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119751 (n + 1) + (A119751 (A005496 n).toNat + 1)

end

end A113875.P10149317224786098203

/-! ## A113875.P3470260719352606790

`A119751(n+1)+A119751(A077168(n))+1`
-/

namespace A113875.P3470260719352606790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119751 (n + 1) + (A119751 (A077168 n).toNat + 1)

end

end A113875.P3470260719352606790

/-! ## A113875.P7762297728528393869

`A119751(A348553(n))+A119751(n+1)+1`
-/

namespace A113875.P7762297728528393869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119751 (A348553 n).toNat + (A119751 (n + 1) + 1)

end

end A113875.P7762297728528393869

/-!
# A113876: a(n) = a(n-1) + 2^(k(n)), where k(n) is the n-th term of the sequence formed by k(1)=0 together with the numbers A042964.

The programs for A113876, the canonical program `A113876.P15705939937260484029` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113876 has offset 1).

The definition of A113876 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113876.P15705939937260484029

`(4+(-4)^(n+1)+5*4^(n+1))/20`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113876

/-- `(4+(-4)^(n+1)+5*4^(n+1))/20` -/
def P15705939937260484029.Spec : Prop :=
  ∀ n, P15705939937260484029.a n = (A113876 (n + 1) : ℚ)

end A113876

/-! ## A113876.P290410283249784706

`∑[record[and(2, n)^n]]`
-/

namespace A113876.P290410283249784706
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113876.P290410283249784706

namespace A113876

/-- `∑[record[and(2, n)^n]]` -/
def P290410283249784706.Spec : Prop :=
  ∀ n, (P290410283249784706.a n : ℤ) = A113876 (n + 1)

end A113876

/-! ## A113876.P10515728475922833863

`∑[ceil(4^n/gcd(2, n))]`
-/

namespace A113876.P10515728475922833863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 ^ n : ℚ) / (Nat.gcd 2 n : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113876.P10515728475922833863

namespace A113876

/-- `∑[ceil(4^n/gcd(2, n))]` -/
def P10515728475922833863.Spec : Prop :=
  ∀ n, P10515728475922833863.a n = A113876 (n + 1)

end A113876

/-! ## A113876.P6243432034642870025

`16*a(n-2)-3` with `a(0)=1, a(1)=5`
-/

namespace A113876.P6243432034642870025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  16 * a (n - 2) - 3

end

end A113876.P6243432034642870025

namespace A113876

/-- `16*a(n-2)-3` -/
def P6243432034642870025.Spec : Prop :=
  ∀ n, P6243432034642870025.a n = A113876 (n + 1)

end A113876

/-! ## A113876.P8213756264758808820

`a(n-2)/(1/4)²-3` with `a(0)=1, a(1)=5`
-/

namespace A113876.P8213756264758808820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 2) / ((1 : ℚ) / 4) ^ 2 - 3

end

end A113876.P8213756264758808820

namespace A113876

/-- `a(n-2)/(1/4)²-3` -/
def P8213756264758808820.Spec : Prop :=
  ∀ n, P8213756264758808820.a n = (A113876 (n + 1) : ℚ)

end A113876

/-! ## A113876.P16886276622258569747

`∑[2^∑[4-a(n-1)]]` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A113876.P16886276622258569747
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1] fun n f2 =>
  4 - f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113876.P16886276622258569747

namespace A113876

/-- `∑[2^∑[4-a(n-1)]]` -/
def P16886276622258569747.Spec : Prop :=
  ∀ n, P16886276622258569747.a n = (A113876 (n + 1) : ℚ)

end A113876

/-! ## A113876.P17526566613138669720

`a(n-1)+4^n/a(n-1)%3` with `a(0)=1`
-/

namespace A113876.P17526566613138669720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (4 ^ n : ℚ) / (Int.tmod (SequenceMachineLib.roundAway (a (n - 1))) 3 : ℚ)

end

end A113876.P17526566613138669720

namespace A113876

/-- `a(n-1)+4^n/a(n-1)%3` -/
def P17526566613138669720.Spec : Prop :=
  ∀ n, P17526566613138669720.a n = (A113876 (n + 1) : ℚ)

end A113876

/-! ## A113876.P18146237659327635981

`record[A077973(n)]`
-/

namespace A113876.P18146237659327635981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077973 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113876.P18146237659327635981

namespace A113876

/-- `record[A077973(n)]` -/
def P18146237659327635981.Spec : Prop :=
  ∀ n, P18146237659327635981.a n = A113876 (n + 1)

end A113876

/-! ## A113876.P2601196467565620138

`∑[abs(A091095(n))]`
-/

namespace A113876.P2601196467565620138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A091095 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113876.P2601196467565620138

namespace A113876

/-- `∑[abs(A091095(n))]` -/
def P2601196467565620138.Spec : Prop :=
  ∀ n, P2601196467565620138.a n = A113876 (n + 1)

end A113876

/-! ## A113876.P16589826580226702904

`record[∑[A108520(n)]]`
-/

namespace A113876.P16589826580226702904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108520 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113876.P16589826580226702904

namespace A113876

/-- `record[∑[A108520(n)]]` -/
def P16589826580226702904.Spec : Prop :=
  ∀ n, P16589826580226702904.a n = A113876 (n + 1)

end A113876

/-! ## A113876.P16313355185756595390

`record[2-∑[A084102(n)]]`
-/

namespace A113876.P16313355185756595390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084102 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113876.P16313355185756595390

namespace A113876

/-- `record[2-∑[A084102(n)]]` -/
def P16313355185756595390.Spec : Prop :=
  ∀ n, P16313355185756595390.a n = A113876 (n + 1)

end A113876

/-! ## A113876.P11014891417937400694

`∑[record[A084102(2*n)]]`
-/

namespace A113876.P11014891417937400694
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084102 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113876.P11014891417937400694

namespace A113876

/-- `∑[record[A084102(2*n)]]` -/
def P11014891417937400694.Spec : Prop :=
  ∀ n, P11014891417937400694.a n = A113876 (n + 1)

end A113876

/-! ## A113876.P2502240821324846261

`record[2*A137470(n)-1]`
-/

namespace A113876.P2502240821324846261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A137470 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113876.P2502240821324846261

namespace A113876

/-- `record[2*A137470(n)-1]` -/
def P2502240821324846261.Spec : Prop :=
  ∀ n, P2502240821324846261.a n = A113876 (n + 1)

end A113876

/-! ## A113876.P5067505036509844597

`2*A113870(n+1)-1`
-/

namespace A113876.P5067505036509844597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A113870 (n + 1) - 1

end

end A113876.P5067505036509844597

namespace A113876

/-- `2*A113870(n+1)-1` -/
def P5067505036509844597.Spec : Prop :=
  ∀ n, P5067505036509844597.a n = A113876 (n + 1)

end A113876

/-! ## A113876.P14136384853322002044

`∑[2^lt[A020639(∑[n+1]), 3]]`
-/

namespace A113876.P14136384853322002044
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ j ∈ Finset.range (n + 1), f3 j)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => f2 j < (f4 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113876.P14136384853322002044

namespace A113876

/-- `∑[2^lt[A020639(∑[n+1]), 3]]` -/
def P14136384853322002044.Spec : Prop :=
  ∀ n, (P14136384853322002044.a n : ℤ) = A113876 (n + 1)

end A113876

/-! ## A113876.P5295930712428761719

`∑[record[and(2, n)/2*A000079(n)]]+1`
-/

namespace A113876.P5295930712428761719
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 2 n : ℚ) / 2 * (A000079 n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A113876.P5295930712428761719

namespace A113876

/-- `∑[record[and(2, n)/2*A000079(n)]]+1` -/
def P5295930712428761719.Spec : Prop :=
  ∀ n, P5295930712428761719.a n = (A113876 (n + 1) : ℚ)

end A113876

/-! ## A113876.P14018845544658534751

`∑[4^n/(char[A000265(n+1)+1]+1)]`
-/

namespace A113876.P14018845544658534751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) + 1

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℚ) / (((if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1 : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113876.P14018845544658534751

namespace A113876

/-- `∑[4^n/(char[A000265(n+1)+1]+1)]` -/
def P14018845544658534751.Spec : Prop :=
  ∀ n, P14018845544658534751.a n = (A113876 (n + 1) : ℚ)

end A113876

/-! ## A113876.P12835497026166368350

`∑[A151821(A053438(n))]`
-/

namespace A113876.P12835497026166368350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151821 (A053438 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113876.P12835497026166368350

namespace A113876

/-- `∑[A151821(A053438(n))]` -/
def P12835497026166368350.Spec : Prop :=
  ∀ n, P12835497026166368350.a n = A113876 (n + 1)

end A113876

/-! ## A113876.P5611537938023503937

`A077973(A047615(n+1))`
-/

namespace A113876.P5611537938023503937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077973 (A047615 (n + 1)).toNat

end

end A113876.P5611537938023503937

namespace A113876

/-- `A077973(A047615(n+1))` -/
def P5611537938023503937.Spec : Prop :=
  ∀ n, P5611537938023503937.a n = A113876 (n + 1)

end A113876

/-! ## A113876.P14300337166771852471

`A166114(n)+A024036(n)`
-/

namespace A113876.P14300337166771852471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166114 n + A024036 n

end

end A113876.P14300337166771852471

namespace A113876

/-- `A166114(n)+A024036(n)` -/
def P14300337166771852471.Spec : Prop :=
  ∀ n, P14300337166771852471.a n = A113876 (n + 1)

end A113876

/-!
# A113877: Semiprimes to semiprime powers.

The programs for A113877, there is no canonical definition to state claims against.
-/

/-! ## A113877.P12952345093437674807

`A129539(lt[A129508(n+1), A129531(2*(n+2))])`
-/

namespace A113877.P12952345093437674807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129508 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129531 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129539 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A113877.P12952345093437674807

/-! ## A113877.P862917036627491802

`A129539(A374633(n+1)%A101573(2*(n+2)))`
-/

namespace A113877.P862917036627491802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129539 (Int.tmod (A374633 (n + 1)) (A101573 (2 * (n + 2)))).toNat

end

end A113877.P862917036627491802

/-! ## A113877.P17246910710744334682

`A223456(record[A136868(n)])²`
-/

namespace A113877.P17246910710744334682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223456 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2

end

end A113877.P17246910710744334682

/-!
# A113878: a(1)=0; a(n+1) is the least number > a(n) such that Sum_{k=1..n+1} 2^a(k) is not composite.

The programs for A113878, there is no canonical definition to state claims against.
-/

/-! ## A113878.P9741567290640664048

`A113879(n+1)-1`
-/

namespace A113878.P9741567290640664048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113879 (n + 1) - 1

end

end A113878.P9741567290640664048

/-! ## A113878.P726562350335757894

`A023443(A113879(n+1))`
-/

namespace A113878.P726562350335757894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A113879 (n + 1)).toNat

end

end A113878.P726562350335757894

/-! ## A113878.P18016286508804755554

`A023444(A113879(n+1)+1)`
-/

namespace A113878.P18016286508804755554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A113879 (n + 1) + 1).toNat

end

end A113878.P18016286508804755554

/-! ## A113878.P10021560457216585921

`A289207(A113879(n+1)+1)`
-/

namespace A113878.P10021560457216585921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A113879 (n + 1) + 1).toNat

end

end A113878.P10021560457216585921

/-! ## A113878.P12861242818607728128

`A023448(A113879(n+1)+5)`
-/

namespace A113878.P12861242818607728128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023448 (A113879 (n + 1) + 5).toNat

end

end A113878.P12861242818607728128

/-!
# A113879: a(n) = 1+A113878(n).

The programs for A113879, there is no canonical definition to state claims against.
-/

/-! ## A113879.P2543405835006560341

`1+A113878(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A113879.P2543405835006560341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A113878 (n + 1)

end

end A113879.P2543405835006560341

/-! ## A113879.P10285248839353528800

`A113878(A005496(n))+1`
-/

namespace A113879.P10285248839353528800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113878 (A005496 n).toNat + 1

end

end A113879.P10285248839353528800

/-! ## A113879.P17677896480368262603

`A113878(A077168(n))+1`
-/

namespace A113879.P17677896480368262603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113878 (A077168 n).toNat + 1

end

end A113879.P17677896480368262603

/-! ## A113879.P5816772936524153855

`A113878(A096076(n))+1`
-/

namespace A113879.P5816772936524153855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113878 (A096076 n).toNat + 1

end

end A113879.P5816772936524153855

/-! ## A113879.P7199704272290663511

`A113878(A291766(n))+1`
-/

namespace A113879.P7199704272290663511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113878 (A291766 n).toNat + 1

end

end A113879.P7199704272290663511

/-!
# A113881: Table of smallest number of squares, T(m,n), needed to tile an m X n rectangle, read by antidiagonals.

The programs for A113881, there is no canonical definition to state claims against.
-/

/-! ## A113881.P3694378744967876151

`A338573(n+1)`
-/

namespace A113881.P3694378744967876151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338573 (n + 1)

end

end A113881.P3694378744967876151

/-! ## A113881.P7557521562320635660

`A338573(-xor(n, -1))%14`
-/

namespace A113881.P7557521562320635660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338573 (-Int.xor (n : ℤ) (-1)).toNat) 14

end

end A113881.P7557521562320635660

/-! ## A113881.P9085246664351452172

`A338573(Δ[n²]-n)%14`
-/

namespace A113881.P9085246664351452172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338573 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat) 14

end

end A113881.P9085246664351452172

/-! ## A113881.P10224368323735561191

`A080197(A338573(-xor(n, -1)))`
-/

namespace A113881.P10224368323735561191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080197 (A338573 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A113881.P10224368323735561191

/-! ## A113881.P10672046868511470178

`A000027(A338573(Δ[n²]-n))`
-/

namespace A113881.P10672046868511470178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A338573 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A113881.P10672046868511470178

/-! ## A113881.P18196654775199768114

`A000188(A338573(Δ[n²]-n)²)`
-/

namespace A113881.P18196654775199768114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A338573 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat ^ 2).toNat

end

end A113881.P18196654775199768114

/-! ## A113881.P16029281188058080869

`A001222(2^A338573(Δ[n²]-n))`
-/

namespace A113881.P16029281188058080869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A338573 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℤ))).toNat

end

end A113881.P16029281188058080869

/-! ## A113881.P2799804540122144498

`gcd(A000038(n), A338573(Δ[n²]-n))`
-/

namespace A113881.P2799804540122144498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A338573 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A113881.P2799804540122144498

/-! ## A113881.P8632419124528871760

`or(A000007(n), A338573(Δ[n²]-n))`
-/

namespace A113881.P8632419124528871760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A338573 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A113881.P8632419124528871760

/-!
# A113882: Number of well-nested drawings of a rooted tree.

The programs for A113882, there is no canonical definition to state claims against.
-/

/-! ## A113882.P4658458466272277985

`A028310(n)*A132070(A028310(n)-1)`
-/

namespace A113882.P4658458466272277985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A132070 (A028310 n - 1).toNat

end

end A113882.P4658458466272277985

/-! ## A113882.P18209823699456848684

`A049981(A385765(n))`
-/

namespace A113882.P18209823699456848684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049981 (A385765 n).toNat

end

end A113882.P18209823699456848684

/-!
# A113884: Pentanacci analog of A055502.

The programs for A113884, there is no canonical definition to state claims against.
-/

/-! ## A113884.P9838545535804825400

`A212300(A287275(n+2))%A212326(n)`
-/

namespace A113884.P9838545535804825400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212300 (A287275 (n + 2)).toNat) (A212326 n)

end

end A113884.P9838545535804825400

/-!
# A113885: Recursive sequence with a(n)=a(a(a(n-2)))+a(n-a(n-1)) and a(0)=a(1)=1.

The programs for A113885, the canonical program `A113885.P3290461540044180745` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113885 has offset 0).

The definition of A113885 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(a(n-2)))+a(n-a(n-1))` (program `A113885.P3290461540044180745`, by `A113885.P3290461540044180745.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A113885.P3290461540044180745

`a(a(a(n-2)))+a(n-a(n-1))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113885

/-- `a(a(a(n-2)))+a(n-a(n-1))` -/
def P3290461540044180745.Spec : Prop :=
  ∀ n, (P3290461540044180745.a n : ℤ) = A113885 n

theorem P3290461540044180745.correct : P3290461540044180745.Spec := by
  intro n
  simp only [A113885]

end A113885

/-!
# A113886: Finite recursive sequence with a(n) = a(a(n-2)) + a(n-a(n-1)).

The programs for A113886, there is no canonical definition to state claims against.
-/

/-! ## A113886.P14313875429483817794

`A327695(A327717(2*(n+2)))+A228179(n+2)`
-/

namespace A113886.P14313875429483817794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327695 (A327717 (2 * (n + 2))).toNat + A228179 (n + 2)

end

end A113886.P14313875429483817794

/-!
# A113887: Numbers n such that floor(exp(sqrt(n))) is a prime number.

The programs for A113887, there is no canonical definition to state claims against.
-/

/-! ## A113887.P2527932106393808167

`ceil(log(p?[A058577(n+1)])²)`
-/

namespace A113887.P2527932106393808167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ) ^ 2⌉

end

end A113887.P2527932106393808167

/-!
# A113888: a(n) = C(2*n+1,n)*C(2*n+6,n+1).

The programs for A113888, the canonical program `A113888.P10371745730053456748` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113888 has offset 0).

The definition of A113888 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*n+1, n)*C(2*n+6, n+1)` (program `A113888.P10371745730053456748`, by `A113888.P10371745730053456748.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A113888.P10371745730053456748

`C(2*n+1, n)*C(2*n+6, n+1)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113888

/-- `C(2*n+1, n)*C(2*n+6, n+1)` -/
def P10371745730053456748.Spec : Prop :=
  ∀ n, (P10371745730053456748.a n : ℤ) = A113888 n

theorem P10371745730053456748.correct : P10371745730053456748.Spec := by
  intro n
  simp only [A113888]

end A113888

/-! ## A113888.P8571320524160810048

`A001700(n)*A002694(n+3)`
-/

namespace A113888.P8571320524160810048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n * A002694 (n + 3)

end

end A113888.P8571320524160810048

namespace A113888

/-- `A001700(n)*A002694(n+3)` -/
def P8571320524160810048.Spec : Prop :=
  ∀ n, P8571320524160810048.a n = A113888 n

theorem P8571320524160810048.correct : P8571320524160810048.Spec := by
  intro n
  simp only [A113888, Nat.add_sub_cancel, A113888.P8571320524160810048.a, A113888.P10371745730053456748.a, A001700, A001700.P11212155124506223364.a, A002694, A002694.P4701693230279570942.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A113888

/-! ## A113888.P12221186204780687807

`A002694(n+3)*A138364(2*n+1)`
-/

namespace A113888.P12221186204780687807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002694 (n + 3) * A138364 (2 * n + 1)

end

end A113888.P12221186204780687807

namespace A113888

/-- `A002694(n+3)*A138364(2*n+1)` -/
def P12221186204780687807.Spec : Prop :=
  ∀ n, P12221186204780687807.a n = A113888 n

end A113888

/-! ## A113888.P18426811227201192324

`A000984(n+1)/2*A002694(n+3)`
-/

namespace A113888.P18426811227201192324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 (n + 1) : ℚ) / 2 * (A002694 (n + 3) : ℚ)

end

end A113888.P18426811227201192324

namespace A113888

/-- `A000984(n+1)/2*A002694(n+3)` -/
def P18426811227201192324.Spec : Prop :=
  ∀ n, P18426811227201192324.a n = (A113888 n : ℚ)

end A113888

/-! ## A113888.P376295771736006402

`A002694(n+3)*A111418(A000217(n))`
-/

namespace A113888.P376295771736006402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002694 (n + 3) * A111418 (A000217 n).toNat

end

end A113888.P376295771736006402

namespace A113888

/-- `A002694(n+3)*A111418(A000217(n))` -/
def P376295771736006402.Spec : Prop :=
  ∀ n, P376295771736006402.a n = A113888 n

end A113888

/-! ## A113888.P12184838793215318783

`(A001791(n)+A000984(n))*A002694(n+3)`
-/

namespace A113888.P12184838793215318783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001791 n + A000984 n) * A002694 (n + 3)

end

end A113888.P12184838793215318783

namespace A113888

/-- `(A001791(n)+A000984(n))*A002694(n+3)` -/
def P12184838793215318783.Spec : Prop :=
  ∀ n, P12184838793215318783.a n = A113888 n

end A113888

/-! ## A113888.P14968830220942134919

`(A003516(n+2)+A002054(n+2))*A001700(n)`
-/

namespace A113888.P14968830220942134919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003516 (n + 2) + A002054 (n + 2)) * A001700 n

end

end A113888.P14968830220942134919

namespace A113888

/-- `(A003516(n+2)+A002054(n+2))*A001700(n)` -/
def P14968830220942134919.Spec : Prop :=
  ∀ n, P14968830220942134919.a n = A113888 n

end A113888

/-! ## A113888.P12567474579261503485

`(A003516(n+3)-A002696(n+3))*A001700(n)`
-/

namespace A113888.P12567474579261503485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003516 (n + 3) - A002696 (n + 3)) * A001700 n

end

end A113888.P12567474579261503485

namespace A113888

/-- `(A003516(n+3)-A002696(n+3))*A001700(n)` -/
def P12567474579261503485.Spec : Prop :=
  ∀ n, P12567474579261503485.a n = A113888 n

end A113888

/-! ## A113888.P11595453649888644297

`(A121686(n+1)-A344136(n+1))*A002694(n+3)`
-/

namespace A113888.P11595453649888644297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A121686 (n + 1) - A344136 (n + 1)) * A002694 (n + 3)

end

end A113888.P11595453649888644297

namespace A113888

/-- `(A121686(n+1)-A344136(n+1))*A002694(n+3)` -/
def P11595453649888644297.Spec : Prop :=
  ∀ n, P11595453649888644297.a n = A113888 n

end A113888

/-! ## A113888.P2070784532973599405

`A062190(2*(n+1)²)`
-/

namespace A113888.P2070784532973599405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062190 (2 * (n + 1) ^ 2)

end

end A113888.P2070784532973599405

namespace A113888

/-- `A062190(2*(n+1)²)` -/
def P2070784532973599405.Spec : Prop :=
  ∀ n, P2070784532973599405.a n = A113888 n

end A113888

/-!
# A113891: Smallest prime of the form: all nines followed by prime(n) with a(n) > prime(n); or 0 if no such prime exists.

The programs for A113891, there is no canonical definition to state claims against.
-/

/-! ## A113891.P12965539615348904200

`A230379(xor(n, a(floor(n/2))))` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A113891.P12965539615348904200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  A230379 (Int.xor (n : ℤ) (a ⌊(n : ℚ) / 2⌋.toNat)).toNat

end

end A113891.P12965539615348904200

/-!
# A113892: a(1) = 3; thereafter, a(n+1) is the largest prime divisor of the concatenation of all previous terms.

The programs for A113892, there is no canonical definition to state claims against.
-/

/-! ## A113892.P1117614685711057730

`A324695(a(n-1)+n)` with `a(0)=3, a(1)=3`
-/

namespace A113892.P1117614685711057730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n a =>
  A324695 (a (n - 1) + (n : ℤ)).toNat

end

end A113892.P1117614685711057730

/-!
# A113893: Smallest prime obtained as a concatenation of prime(n) and prime(m) with m > n.

The programs for A113893, there is no canonical definition to state claims against.
-/

/-! ## A113893.P15128741193440681004

`filter[A327919(2*n+1), A285258(#)]`
-/

namespace A113893.P15128741193440681004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327919 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285258 (f1 j).toNat = 1) n)

end

end A113893.P15128741193440681004

/-!
# A113894: a(n) = binomial(2*n, n) * binomial(2*n+5, n).

The programs for A113894, the canonical program `A113894.P3594518385672214030` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113894 has offset 0).

The definition of A113894 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*n, n)*C(2*n+5, n)` (program `A113894.P3594518385672214030`, by `A113894.P3594518385672214030.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A113894.P3594518385672214030

`C(2*n, n)*C(2*n+5, n)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113894

/-- `C(2*n, n)*C(2*n+5, n)` -/
def P3594518385672214030.Spec : Prop :=
  ∀ n, (P3594518385672214030.a n : ℤ) = A113894 n

theorem P3594518385672214030.correct : P3594518385672214030.Spec := by
  intro n
  simp only [A113894]

end A113894

/-! ## A113894.P10568588566300881872

`A000984(n)*A003516(n+2)`
-/

namespace A113894.P10568588566300881872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A003516 (n + 2)

end

end A113894.P10568588566300881872

namespace A113894

/-- `A000984(n)*A003516(n+2)` -/
def P10568588566300881872.Spec : Prop :=
  ∀ n, P10568588566300881872.a n = A113894 n

theorem P10568588566300881872.correct : P10568588566300881872.Spec := by
  intro n
  simp only [A113894, Nat.add_sub_cancel, A113894.P10568588566300881872.a, A113894.P3594518385672214030.a, A000984, A000984.P7946844122574426130.a, A003516, A003516.P5833190185912987795.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A113894

/-! ## A113894.P2709013760273506711

`A001405(2*n)*A003516(n+2)`
-/

namespace A113894.P2709013760273506711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) * A003516 (n + 2)

end

end A113894.P2709013760273506711

namespace A113894

/-- `A001405(2*n)*A003516(n+2)` -/
def P2709013760273506711.Spec : Prop :=
  ∀ n, P2709013760273506711.a n = A113894 n

end A113894

/-! ## A113894.P2516995544705139804

`(A001700(n)-A001791(n))*A003516(n+2)`
-/

namespace A113894.P2516995544705139804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001700 n - A001791 n) * A003516 (n + 2)

end

end A113894.P2516995544705139804

namespace A113894

/-- `(A001700(n)-A001791(n))*A003516(n+2)` -/
def P2516995544705139804.Spec : Prop :=
  ∀ n, P2516995544705139804.a n = A113894 n

end A113894

/-! ## A113894.P3577181366855243444

`(A002694(n+3)-A002054(n+2))*A000984(n)`
-/

namespace A113894.P3577181366855243444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002694 (n + 3) - A002054 (n + 2)) * A000984 n

end

end A113894.P3577181366855243444

namespace A113894

/-- `(A002694(n+3)-A002054(n+2))*A000984(n)` -/
def P3577181366855243444.Spec : Prop :=
  ∀ n, P3577181366855243444.a n = A113894 n

end A113894

/-! ## A113894.P3058164291963975688

`A062190(∑[4*n])`
-/

namespace A113894.P3058164291963975688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062190 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A113894.P3058164291963975688

namespace A113894

/-- `A062190(∑[4*n])` -/
def P3058164291963975688.Spec : Prop :=
  ∀ n, P3058164291963975688.a n = A113894 n

end A113894

/-! ## A113894.P1903006224094123291

`A098473(A268581(n+1))`
-/

namespace A113894.P1903006224094123291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098473 (A268581 (n + 1)).toNat

end

end A113894.P1903006224094123291

namespace A113894

/-- `A098473(A268581(n+1))` -/
def P1903006224094123291.Spec : Prop :=
  ∀ n, P1903006224094123291.a n = A113894 n

end A113894

/-!
# A113895: a(n) = C(2+2*n, n) * C(7+2*n, 2+n).

The programs for A113895, the canonical program `A113895.P984791214728094110` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113895 has offset 0).

The definition of A113895 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2+2*n, n)*C(7+2*n, 2+n)` (program `A113895.P984791214728094110`, by `A113895.P984791214728094110.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A113895.P984791214728094110

`C(2+2*n, n)*C(7+2*n, 2+n)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113895

/-- `C(2+2*n, n)*C(7+2*n, 2+n)` -/
def P984791214728094110.Spec : Prop :=
  ∀ n, (P984791214728094110.a n : ℤ) = A113895 n

theorem P984791214728094110.correct : P984791214728094110.Spec := by
  intro n
  simp only [A113895]

end A113895

/-! ## A113895.P17522331545707215979

`A001791(n+1)*A002054(n+3)`
-/

namespace A113895.P17522331545707215979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 (n + 1) * A002054 (n + 3)

end

end A113895.P17522331545707215979

namespace A113895

/-- `A001791(n+1)*A002054(n+3)` -/
def P17522331545707215979.Spec : Prop :=
  ∀ n, P17522331545707215979.a n = A113895 n

end A113895

/-! ## A113895.P11686298086920256470

`A002054(n+3)*A026023(2*n)`
-/

namespace A113895.P11686298086920256470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002054 (n + 3) * A026023 (2 * n)

end

end A113895.P11686298086920256470

namespace A113895

/-- `A002054(n+3)*A026023(2*n)` -/
def P11686298086920256470.Spec : Prop :=
  ∀ n, P11686298086920256470.a n = A113895 n

end A113895

/-! ## A113895.P11024629181715574012

`A002054(n+3)*A037952(2*(n+1))`
-/

namespace A113895.P11024629181715574012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002054 (n + 3) * A037952 (2 * (n + 1))

end

end A113895.P11024629181715574012

namespace A113895

/-- `A002054(n+3)*A037952(2*(n+1))` -/
def P11024629181715574012.Spec : Prop :=
  ∀ n, P11024629181715574012.a n = A113895 n

end A113895

/-! ## A113895.P887962848665515210

`A002054(n+3)*A037955(2*(n+1))`
-/

namespace A113895.P887962848665515210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002054 (n + 3) * A037955 (2 * (n + 1))

end

end A113895.P887962848665515210

namespace A113895

/-- `A002054(n+3)*A037955(2*(n+1))` -/
def P887962848665515210.Spec : Prop :=
  ∀ n, P887962848665515210.a n = A113895 n

end A113895

/-! ## A113895.P16921690056418860566

`A001791(n+1)*A037955(A004273(n+4))`
-/

namespace A113895.P16921690056418860566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 (n + 1) * A037955 (A004273 (n + 4)).toNat

end

end A113895.P16921690056418860566

namespace A113895

/-- `A001791(n+1)*A037955(A004273(n+4))` -/
def P16921690056418860566.Spec : Prop :=
  ∀ n, P16921690056418860566.a n = A113895 n

end A113895

/-! ## A113895.P12250873118275214098

`A037952(2*(n+1))*A037955(A004273(n+4))`
-/

namespace A113895.P12250873118275214098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (2 * (n + 1)) * A037955 (A004273 (n + 4)).toNat

end

end A113895.P12250873118275214098

namespace A113895

/-- `A037952(2*(n+1))*A037955(A004273(n+4))` -/
def P12250873118275214098.Spec : Prop :=
  ∀ n, P12250873118275214098.a n = A113895 n

end A113895

/-! ## A113895.P5957122588316531476

`A062190(A001844(n+1))`
-/

namespace A113895.P5957122588316531476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062190 (A001844 (n + 1)).toNat

end

end A113895.P5957122588316531476

namespace A113895

/-- `A062190(A001844(n+1))` -/
def P5957122588316531476.Spec : Prop :=
  ∀ n, P5957122588316531476.a n = A113895 n

end A113895

/-! ## A113895.P2129164448111105344

`A062190(A099776(n+1))`
-/

namespace A113895.P2129164448111105344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062190 (A099776 (n + 1)).toNat

end

end A113895.P2129164448111105344

namespace A113895

/-- `A062190(A099776(n+1))` -/
def P2129164448111105344.Spec : Prop :=
  ∀ n, P2129164448111105344.a n = A113895 n

end A113895

/-! ## A113895.P4759455661638783433

`A062190(A132209(n+1)+2)`
-/

namespace A113895.P4759455661638783433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062190 (A132209 (n + 1) + 2).toNat

end

end A113895.P4759455661638783433

namespace A113895

/-- `A062190(A132209(n+1)+2)` -/
def P4759455661638783433.Spec : Prop :=
  ∀ n, P4759455661638783433.a n = A113895 n

end A113895

/-!
# A113897: Triangle read by rows: number of simsun n-permutations with k descents.

The programs for A113897, there is no canonical definition to state claims against.
-/

/-! ## A113897.P7341898239832845488

`A094503(n+2)`
-/

namespace A113897.P7341898239832845488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094503 (n + 2)

end

end A113897.P7341898239832845488

/-! ## A113897.P462574555810874771

`A096078(A091018(n+1))`
-/

namespace A113897.P462574555810874771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096078 (A091018 (n + 1)).toNat

end

end A113897.P462574555810874771

/-! ## A113897.P5596352976106159381

`A124796(A025616(n+2))`
-/

namespace A113897.P5596352976106159381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124796 (A025616 (n + 2)).toNat

end

end A113897.P5596352976106159381

/-! ## A113897.P5687912349696734801

`A145271(lt[A000073(n), A013617(n)])`
-/

namespace A113897.P5687912349696734801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013617 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145271 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A113897.P5687912349696734801

