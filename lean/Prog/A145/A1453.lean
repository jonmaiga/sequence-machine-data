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
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
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
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
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
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C013
import Seq.Opaque.C014
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
# A145300: a(n) is the maximal prime such that if p_n is the n-th prime then ceiling(sqrt(a(n)*p_n))^2 - a(n)*p_n is a perfect square.

The programs for A145300, there is no canonical definition to state claims against.
-/

/-! ## A145300.P17313866245182506646

`p?[A336562(A336415(n))+n-2]`
-/

namespace A145300.P17313866245182506646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336562 (A336415 n).toNat + (n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145300.P17313866245182506646

/-! ## A145300.P7821713724154539137

`p?[A137893(A178030(n)+A003815(n))+n]`
-/

namespace A145300.P7821713724154539137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137893 (A178030 n + A003815 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145300.P7821713724154539137

/-! ## A145300.P6628576607505969080

`p?[A141468(n+1)-(A124778(n)+1)]`
-/

namespace A145300.P6628576607505969080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1) - (A124778 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145300.P6628576607505969080

/-! ## A145300.P5343263723424340137

`p?[∑[A242778(2*n+3)%5]]`
-/

namespace A145300.P5343263723424340137
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242778 (2 * n + 3)) 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145300.P5343263723424340137

/-! ## A145300.P4563974007317429331

`p?[A325362(n+1)-∑{d}[n+1, 1-#+n]]`
-/

namespace A145300.P4563974007317429331
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325362 (n + 1) - ∑ d ∈ Nat.divisors (f2 n), (1 - (d : ℤ) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145300.P4563974007317429331

/-!
# A145301: a(n) = 12*a(n-1) - 30*a(n-2) with a(0)=1 and a(1)=6.

The programs for A145301, the canonical program `A145301.P2923564903746286724` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145301 has offset 0).

The definition of A145301 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*a(n-1)-30*a(n-2)` (program `A145301.P2923564903746286724`, by `A145301.P2923564903746286724.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A145301.P3953143874169211697

`ogf((1-6x)/(1-12x+30x^2))`
-/

namespace A145301.P3953143874169211697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -6] [1, -12, 30] n

end

end A145301.P3953143874169211697

namespace A145301

/-- `ogf((1-6x)/(1-12x+30x^2))` -/
def P3953143874169211697.Spec : Prop :=
  ∀ n, P3953143874169211697.a n = A145301 n

end A145301

/-! ## A145301.P2923564903746286724

`12*a(n-1)-30*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A145301

/-- `12*a(n-1)-30*a(n-2)` -/
def P2923564903746286724.Spec : Prop :=
  ∀ n, P2923564903746286724.a n = A145301 n

theorem P2923564903746286724.correct : P2923564903746286724.Spec := by
  intro n
  simp only [A145301]

end A145301

/-! ## A145301.P17234728416467827477

`((6+sqrt(6))^n+(6-sqrt(6))^n)/2`
-/

namespace A145301.P17234728416467827477
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((6 + Real.sqrt (6 : ℝ)) ^ n + (6 - Real.sqrt (6 : ℝ)) ^ n) / 2

end

end A145301.P17234728416467827477

namespace A145301

/-- `((6+sqrt(6))^n+(6-sqrt(6))^n)/2` -/
def P17234728416467827477.Spec : Prop :=
  ∀ n, P17234728416467827477.a n = (A145301 n : ℝ)

theorem P17234728416467827477.correct : P17234728416467827477.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A145301, Nat.add_sub_cancel, A145301.P17234728416467827477.a, A145301.P2923564903746286724.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A145301, Nat.add_sub_cancel, A145301.P17234728416467827477.a, A145301.P2923564903746286724.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A145301

/-!
# A145302: a(n) = ((7 + sqrt(7))^n + (7 - sqrt(7))^n)/2.

The programs for A145302, the canonical program `A145302.P11663080953578143865` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145302 has offset 0).

The definition of A145302 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145302.P2737344333505850372

`ogf((1-7x)/(1-14x+42x^2))`
-/

namespace A145302.P2737344333505850372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -7] [1, -14, 42] n

end

end A145302.P2737344333505850372

namespace A145302

/-- `ogf((1-7x)/(1-14x+42x^2))` -/
def P2737344333505850372.Spec : Prop :=
  ∀ n, P2737344333505850372.a n = A145302 n

end A145302

/-! ## A145302.P11663080953578143865

`14*a(n-1)-42*a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A145302

/-- `14*a(n-1)-42*a(n-2)` -/
def P11663080953578143865.Spec : Prop :=
  ∀ n, P11663080953578143865.a n = A145302 n

theorem P11663080953578143865.correct : P11663080953578143865.Spec := by
  intro n
  simp only [A145302]

end A145302

/-! ## A145302.P1443553352632348774

`((7+sqrt(7))^n+(7-sqrt(7))^n)/2`
-/

namespace A145302.P1443553352632348774
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((7 + Real.sqrt (7 : ℝ)) ^ n + (7 - Real.sqrt (7 : ℝ)) ^ n) / 2

end

end A145302.P1443553352632348774

namespace A145302

/-- `((7+sqrt(7))^n+(7-sqrt(7))^n)/2` -/
def P1443553352632348774.Spec : Prop :=
  ∀ n, P1443553352632348774.a n = (A145302 n : ℝ)

theorem P1443553352632348774.correct : P1443553352632348774.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A145302, Nat.add_sub_cancel, A145302.P1443553352632348774.a, A145302.P11663080953578143865.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A145302, Nat.add_sub_cancel, A145302.P1443553352632348774.a, A145302.P11663080953578143865.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A145302

/-! ## A145302.P12363110074529671531

`A361432(2*n+A056119(n)+28)`
-/

namespace A145302.P12363110074529671531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361432 ((2 * n : ℤ) + (A056119 n + 28)).toNat

end

end A145302.P12363110074529671531

namespace A145302

/-- `A361432(2*n+A056119(n)+28)` -/
def P12363110074529671531.Spec : Prop :=
  ∀ n, P12363110074529671531.a n = A145302 n

end A145302

/-!
# A145303: a(n) = ((8 + sqrt(8))^n + (8 - sqrt(8))^n)/2.

The programs for A145303, the canonical program `A145303.P13654559816268441305` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145303 has offset 0).

The definition of A145303 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((8+sqrt(8))^n+(8-sqrt(8))^n)/2` (program `A145303.P9806040368826022692`, by `A145303.P9806040368826022692.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A145303.P7145360051433856069

`ogf((1-8x)/(1-16x+56x^2))`
-/

namespace A145303.P7145360051433856069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -8] [1, -16, 56] n

end

end A145303.P7145360051433856069

namespace A145303

/-- `ogf((1-8x)/(1-16x+56x^2))` -/
def P7145360051433856069.Spec : Prop :=
  ∀ n, P7145360051433856069.a n = A145303 n

end A145303

/-! ## A145303.P13654559816268441305

`16*a(n-1)-56*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A145303

/-- `16*a(n-1)-56*a(n-2)` -/
def P13654559816268441305.Spec : Prop :=
  ∀ n, P13654559816268441305.a n = A145303 n

theorem P13654559816268441305.correct : P13654559816268441305.Spec := by
  intro n
  simp only [A145303]

end A145303

/-! ## A145303.P9806040368826022692

`((8+sqrt(8))^n+(8-sqrt(8))^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A145303.P9806040368826022692
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((8 + Real.sqrt (8 : ℝ)) ^ n + (8 - Real.sqrt (8 : ℝ)) ^ n) / 2

end

end A145303.P9806040368826022692

namespace A145303

/-- `((8+sqrt(8))^n+(8-sqrt(8))^n)/2` -/
def P9806040368826022692.Spec : Prop :=
  ∀ n, P9806040368826022692.a n = (A145303 n : ℝ)

theorem P9806040368826022692.correct : P9806040368826022692.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A145303, Nat.add_sub_cancel, A145303.P9806040368826022692.a, A145303.P13654559816268441305.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A145303, Nat.add_sub_cancel, A145303.P9806040368826022692.a, A145303.P13654559816268441305.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A145303

/-! ## A145303.P16262842082408124648

`2^n*A081180(n+1)-2^(n+2)*A081180(n)`
-/

namespace A145303.P16262842082408124648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A081180 (n + 1) - (2 ^ (n + 2) : ℤ) * A081180 n

end

end A145303.P16262842082408124648

namespace A145303

/-- `2^n*A081180(n+1)-2^(n+2)*A081180(n)` -/
def P16262842082408124648.Spec : Prop :=
  ∀ n, P16262842082408124648.a n = A145303 n

end A145303

/-! ## A145303.P1428151051161041315

`A000079(n)*A083879(n)`
-/

namespace A145303.P1428151051161041315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A083879 n

end

end A145303.P1428151051161041315

namespace A145303

/-- `A000079(n)*A083879(n)` -/
def P1428151051161041315.Spec : Prop :=
  ∀ n, P1428151051161041315.a n = A145303 n

end A145303

/-! ## A145303.P14229460178400805527

`∑[A011782(n)]*A083879(n)`
-/

namespace A145303.P14229460178400805527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A083879 n

end

end A145303.P14229460178400805527

namespace A145303

/-- `∑[A011782(n)]*A083879(n)` -/
def P14229460178400805527.Spec : Prop :=
  ∀ n, P14229460178400805527.a n = A145303 n

end A145303

/-! ## A145303.P11305615760050666893

`A011782(n+1)*A083879(n)`
-/

namespace A145303.P11305615760050666893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) * A083879 n

end

end A145303.P11305615760050666893

namespace A145303

/-- `A011782(n+1)*A083879(n)` -/
def P11305615760050666893.Spec : Prop :=
  ∀ n, P11305615760050666893.a n = A145303 n

end A145303

/-! ## A145303.P16304525202422567601

`A077957(2*n)*A083879(n)`
-/

namespace A145303.P16304525202422567601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (2 * n) * A083879 n

end

end A145303.P16304525202422567601

namespace A145303

/-- `A077957(2*n)*A083879(n)` -/
def P16304525202422567601.Spec : Prop :=
  ∀ n, P16304525202422567601.a n = A145303 n

end A145303

/-! ## A145303.P1378828728255398396

`A083879(n)*A112032(2*n+1)`
-/

namespace A145303.P1378828728255398396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083879 n * A112032 (2 * n + 1)

end

end A145303.P1378828728255398396

namespace A145303

/-- `A083879(n)*A112032(2*n+1)` -/
def P1378828728255398396.Spec : Prop :=
  ∀ n, P1378828728255398396.a n = A145303 n

end A145303

/-! ## A145303.P18165920060792715132

`A083879(n)*A131572(2*n+1)`
-/

namespace A145303.P18165920060792715132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083879 n * A131572 (2 * n + 1)

end

end A145303.P18165920060792715132

namespace A145303

/-- `A083879(n)*A131572(2*n+1)` -/
def P18165920060792715132.Spec : Prop :=
  ∀ n, P18165920060792715132.a n = A145303 n

end A145303

/-!
# A145312: Coefficients in expansion of E''_4(q), where E_4 is the Eisenstein series in A004009.

The programs for A145312, the canonical program `A145312.P5025964341216795` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145312 has offset 0).

The definition of A145312 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2077 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145312.P5025964341216795

`(n+1)*A145094(n+2)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A145312

/-- `(n+1)*A145094(n+2)` -/
def P5025964341216795.Spec : Prop :=
  ∀ n, P5025964341216795.a n = A145312 n

theorem P5025964341216795.correct : P5025964341216795.Spec := by
  intro n
  simp only [A145312]

end A145312

/-! ## A145312.P157535727660797579

`∑[2*(n+1)]*A004009(n+2)`
-/

namespace A145312.P157535727660797579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A004009 (n + 2)

end

end A145312.P157535727660797579

namespace A145312

/-- `∑[2*(n+1)]*A004009(n+2)` -/
def P157535727660797579.Spec : Prop :=
  ∀ n, P157535727660797579.a n = A145312 n

end A145312

/-! ## A145312.P1968590993564046999

`A004009(n+2)*A005843(A000217(n+1))`
-/

namespace A145312.P1968590993564046999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004009 (n + 2) * A005843 (A000217 (n + 1)).toNat

end

end A145312.P1968590993564046999

namespace A145312

/-- `A004009(n+2)*A005843(A000217(n+1))` -/
def P1968590993564046999.Spec : Prop :=
  ∀ n, P1968590993564046999.a n = A145312 n

end A145312

/-! ## A145312.P6397194410369210691

`A004009(n+2)*A056537(∑[n+2])`
-/

namespace A145312.P6397194410369210691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004009 (n + 2) * A056537 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A145312.P6397194410369210691

namespace A145312

/-- `A004009(n+2)*A056537(∑[n+2])` -/
def P6397194410369210691.Spec : Prop :=
  ∀ n, P6397194410369210691.a n = A145312 n

end A145312

/-!
# A145315: Numbers k for which the set {30*k-13, 30*k-11, 30*k-7, 30*k-1, 30*k+1, 30*k+7, 30*k+11, 30*k+13} forms a symmetrical prime octuplet.

The programs for A145315, there is no canonical definition to state claims against.
-/

/-! ## A145315.P14451435390105109004

`(A022012(n+1)+13)/30`
-/

namespace A145315.P14451435390105109004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022012 (n + 1) + 13 : ℚ) / 30

end

end A145315.P14451435390105109004

/-! ## A145315.P5528093316796201159

`ceil(A022012(n+1)/30)`
-/

namespace A145315.P5528093316796201159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A022012 (n + 1) : ℚ) / 30⌉

end

end A145315.P5528093316796201159

/-!
# A145316: L-matrix for Hankel matrix of aerated factorials.

The programs for A145316, there is no canonical definition to state claims against.
-/

/-! ## A145316.P15803638360169358451

`abs(A178090(comp[∑[n]]))`
-/

namespace A145316.P15803638360169358451
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A178090 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)|

end

end A145316.P15803638360169358451

/-! ## A145316.P9527336204233980965

`gcd(A000038(n), A178090(A014132(n+1)))`
-/

namespace A145316.P9527336204233980965
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A178090 (A014132 (n + 1)).toNat)

end

end A145316.P9527336204233980965

/-! ## A145316.P9170371456818250875

`∑{d}[A178090(A014132(n+1)), A000010(#)]`
-/

namespace A145316.P9170371456818250875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178090 (A014132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A145316.P9170371456818250875

/-! ## A145316.P6798569270946558229

`∑{d}[A178090(A003056(n)+2+n), A000010(#)]`
-/

namespace A145316.P6798569270946558229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178090 (A003056 n + 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A145316.P6798569270946558229

/-! ## A145316.P10081665233512525045

`∑{d}[A178090(A003057(n+2)+n), A000010(#)]`
-/

namespace A145316.P10081665233512525045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178090 (A003057 (n + 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A145316.P10081665233512525045

/-!
# A145322: 

The programs for A145322, there is no canonical definition to state claims against.
-/

/-! ## A145322.P10160319754547541037

`A041705(or(2, 4*n)+2*n)`
-/

namespace A145322.P10160319754547541037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041705 (Nat.lor 2 (4 * n) + 2 * n)

end

end A145322.P10160319754547541037

/-!
# A145324: Triangle read by rows: coefficients of 1; 1(X+2); 1(X+2)(X+3); 1(X+2)(X+3)(X+4); ....

The programs for A145324, the canonical program `A145324.P16663090684557002436` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145324 has offset 1).

The definition of A145324 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145324.P16663090684557002436

`T(n-1,k)+(row(n)+1)*T(n-1,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A145324

/-- `T(n-1,k)+(row(n)+1)*T(n-1,k-1)` -/
def P16663090684557002436.Spec : Prop :=
  ∀ n, (P16663090684557002436.a n : ℤ) = A145324 (n + 1)

theorem P16663090684557002436.correct : P16663090684557002436.Spec := by
  intro n
  simp only [A145324, Nat.add_sub_cancel]

end A145324

/-! ## A145324.P16805795764803665576

`(row(n)+1)*T(n-1,k-1)+T(n-1,k)` with `a(0)=1`
-/

namespace A145324.P16805795764803665576
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triRow n + 1) * SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n

end

end A145324.P16805795764803665576

namespace A145324

/-- `(row(n)+1)*T(n-1,k-1)+T(n-1,k)` -/
def P16805795764803665576.Spec : Prop :=
  ∀ n, (P16805795764803665576.a n : ℤ) = A145324 (n + 1)

end A145324

/-! ## A145324.P6964493706132831494

`T(n-2,k)+T(n-1,k-1)+(T(n-2,k-1)+T(n-1,k-1))*row(n)` with `a(0)=1, a(1)=1`
-/

namespace A145324.P6964493706132831494
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triUp2 a n + SequenceMachineLib.triUpLeft a n + (SequenceMachineLib.triUp2Left a n + SequenceMachineLib.triUpLeft a n) * SequenceMachineLib.triRow n

end

end A145324.P6964493706132831494

namespace A145324

/-- `T(n-2,k)+T(n-1,k-1)+(T(n-2,k-1)+T(n-1,k-1))*row(n)` -/
def P6964493706132831494.Spec : Prop :=
  ∀ n, (P6964493706132831494.a n : ℤ) = A145324 (n + 1)

end A145324

/-! ## A145324.P8133266739303584856

`abs(A049444(A061579(n)))`
-/

namespace A145324.P8133266739303584856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A049444 (A061579 n).toNat|

end

end A145324.P8133266739303584856

namespace A145324

/-- `abs(A049444(A061579(n)))` -/
def P8133266739303584856.Spec : Prop :=
  ∀ n, P8133266739303584856.a n = A145324 (n + 1)

end A145324

/-! ## A145324.P16690103253104247869

`A136124(A061579(n)+2)`
-/

namespace A145324.P16690103253104247869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136124 (A061579 n + 2).toNat

end

end A145324.P16690103253104247869

namespace A145324

/-- `A136124(A061579(n)+2)` -/
def P16690103253104247869.Spec : Prop :=
  ∀ n, P16690103253104247869.a n = A145324 (n + 1)

end A145324

/-! ## A145324.P16399094614816864053

`A136124(A038722(n+1)+1)`
-/

namespace A145324.P16399094614816864053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136124 (A038722 (n + 1) + 1).toNat

end

end A145324.P16399094614816864053

namespace A145324

/-- `A136124(A038722(n+1)+1)` -/
def P16399094614816864053.Spec : Prop :=
  ∀ n, P16399094614816864053.a n = A145324 (n + 1)

end A145324

/-! ## A145324.P18410838197945220608

`A136124(A093995(n+1)+1-n)`
-/

namespace A145324.P18410838197945220608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136124 (A093995 (n + 1) + (1 - (n : ℤ))).toNat

end

end A145324.P18410838197945220608

namespace A145324

/-- `A136124(A093995(n+1)+1-n)` -/
def P18410838197945220608.Spec : Prop :=
  ∀ n, P18410838197945220608.a n = A145324 (n + 1)

end A145324

/-! ## A145324.P17219057429378031603

`gcd(A000038(n), A049444(A061579(n)))`
-/

namespace A145324.P17219057429378031603
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A049444 (A061579 n).toNat)

end

end A145324.P17219057429378031603

namespace A145324

/-- `gcd(A000038(n), A049444(A061579(n)))` -/
def P17219057429378031603.Spec : Prop :=
  ∀ n, (P17219057429378031603.a n : ℤ) = A145324 (n + 1)

end A145324

/-! ## A145324.P3727474102540414070

`lcm(A020985(n), A049444(A061579(n)))`
-/

namespace A145324.P3727474102540414070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A049444 (A061579 n).toNat)

end

end A145324.P3727474102540414070

namespace A145324

/-- `lcm(A020985(n), A049444(A061579(n)))` -/
def P3727474102540414070.Spec : Prop :=
  ∀ n, (P3727474102540414070.a n : ℤ) = A145324 (n + 1)

end A145324

/-! ## A145324.P957354416289223066

`A155755(n)-abs(A049444(n))`
-/

namespace A145324.P957354416289223066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155755 n - |A049444 n|

end

end A145324.P957354416289223066

namespace A145324

/-- `A155755(n)-abs(A049444(n))` -/
def P957354416289223066.Spec : Prop :=
  ∀ n, P957354416289223066.a n = A145324 (n + 1)

end A145324

/-! ## A145324.P7182334062537116835

`A155755(n)-A136124(n+2)`
-/

namespace A145324.P7182334062537116835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155755 n - A136124 (n + 2)

end

end A145324.P7182334062537116835

namespace A145324

/-- `A155755(n)-A136124(n+2)` -/
def P7182334062537116835.Spec : Prop :=
  ∀ n, P7182334062537116835.a n = A145324 (n + 1)

theorem P7182334062537116835.correct : P7182334062537116835.Spec := by
  intro n
  simp only [A145324, Nat.add_sub_cancel, A145324.P7182334062537116835.a, A145324.P16663090684557002436.a, A136124, A136124.P13496521046208496963.a, A155755, A155755.P15617599271686111311.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A145324

/-!
# A145325: Least k such that f(n,k) is not a prime, where f(n,1)=2n+1 and f(n,k)=f(f(n,k-1)) for k>=2.

The programs for A145325, there is no canonical definition to state claims against.
-/

/-! ## A145325.P1765276471242525558

`A000005((2*n+3)^A063377(2*n+3))`
-/

namespace A145325.P1765276471242525558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 * n + 3 : ℚ) ^ (A063377 (2 * n + 3) : ℤ))).toNat

end

end A145325.P1765276471242525558

/-! ## A145325.P9046001194834259197

`A067849(n+1)+A010054(A069712(n))`
-/

namespace A145325.P9046001194834259197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067849 (n + 1) + A010054 (A069712 n).toNat

end

end A145325.P9046001194834259197

/-! ## A145325.P118351492864612276

`A000005(A007918(n)^A067849(n+1))`
-/

namespace A145325.P118351492864612276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A007918 n : ℚ) ^ (A067849 (n + 1) : ℤ))).toNat

end

end A145325.P118351492864612276

/-! ## A145325.P7766512480746991840

`A000005(A051698(n)^A067849(n+1))`
-/

namespace A145325.P7766512480746991840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A051698 n : ℚ) ^ (A067849 (n + 1) : ℤ))).toNat

end

end A145325.P7766512480746991840

/-! ## A145325.P7166951956534996674

`A323166(A231588(n+1))+A067849(n+1)`
-/

namespace A145325.P7166951956534996674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323166 (A231588 (n + 1)).toNat + A067849 (n + 1)

end

end A145325.P7166951956534996674

/-!
# A145326: Least k such that f(n,k) is not a prime, where f(n,1)=4n-1 and f(n,k)=f(f(n,k-1)) for k>=2.

The programs for A145326, there is no canonical definition to state claims against.
-/

/-! ## A145326.P5599752265015000933

`A232802(A057889(A116111(n+1)))+1`
-/

namespace A145326.P5599752265015000933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232802 (A057889 (A116111 (n + 1)).toNat).toNat + 1

end

end A145326.P5599752265015000933

/-! ## A145326.P18329626558653843386

`5-A073855(A108698(n+1))`
-/

namespace A145326.P18329626558653843386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A073855 (A108698 (n + 1)).toNat

end

end A145326.P18329626558653843386

/-! ## A145326.P4031668218290544067

`round(A155085(3*n+4)/A327415(4*n+3))`
-/

namespace A145326.P4031668218290544067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A155085 (3 * n + 4) : ℚ) / (A327415 (4 * n + 3) : ℚ))

end

end A145326.P4031668218290544067

/-! ## A145326.P9900086659067359742

`A001511(A350460(n+3)+A107785(n))`
-/

namespace A145326.P9900086659067359742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A350460 (n + 3) + A107785 n).toNat

end

end A145326.P9900086659067359742

/-! ## A145326.P6148215165048437233

`A038800(A049615(n)+A000079(n))`
-/

namespace A145326.P6148215165048437233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 (A049615 n + A000079 n).toNat

end

end A145326.P6148215165048437233

/-!
# A145327: Least k such that f(n,k) is not a prime, where f(n,1)=4n+1 and f(n,k)=f(f(n,k-1)) for k>=2.

The programs for A145327, there is no canonical definition to state claims against.
-/

/-! ## A145327.P2545669567956963558

`A001221(A282344(n+2)+A156707(2*(n+1)))`
-/

namespace A145327.P2545669567956963558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A282344 (n + 2) + A156707 (2 * (n + 1))).toNat

end

end A145327.P2545669567956963558

/-! ## A145327.P6949778399150089253

`A191770(∑[dr(A086117(n+1))])`
-/

namespace A145327.P6949778399150089253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A086117 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191770 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A145327.P6949778399150089253

/-! ## A145327.P12533930695905616674

`p?[A305531(2*(n+1))]^A056562(2*n+1)`
-/

namespace A145327.P12533930695905616674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305531 (2 * (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A056562 (2 * n + 1) : ℤ)

end

end A145327.P12533930695905616674

/-! ## A145327.P13090431368232119070

`A378282(A387330(n+1))+A000122(2*n)`
-/

namespace A145327.P13090431368232119070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378282 (A387330 (n + 1)).toNat + A000122 (2 * n)

end

end A145327.P13090431368232119070

/-! ## A145327.P7603178062722010585

`gcd(A017981(A133808(n+1)), A179792(n+4))`
-/

namespace A145327.P7603178062722010585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A017981 (A133808 (n + 1)).toNat) (A179792 (n + 4))

end

end A145327.P7603178062722010585

/-!
# A145328: Partial sums of A007925, starting at n=1.

The programs for A145328, there is no canonical definition to state claims against.
-/

/-! ## A145328.P1734357774417743941

`∑[(n+1)^(n+2)-(n+2)^(n+1)]`
-/

namespace A145328.P1734357774417743941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ (n + 2) : ℤ) - ((n + 2) ^ (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145328.P1734357774417743941

/-! ## A145328.P10023593831856522930

`or(2, ∑[A007925(n+1)])`
-/

namespace A145328.P10023593831856522930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007925 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A145328.P10023593831856522930

/-! ## A145328.P2433642905690006717

`∑[A007925(n+1)]/A007318(∑[n])`
-/

namespace A145328.P2433642905690006717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007925 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ)

end

end A145328.P2433642905690006717

/-! ## A145328.P16035758345043018879

`A000035(2*n)+∑[A007925(n+1)]`
-/

namespace A145328.P16035758345043018879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007925 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145328.P16035758345043018879

/-! ## A145328.P3139099324378741626

`A289741(2*n)+∑[A007925(n+1)]`
-/

namespace A145328.P3139099324378741626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007925 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289741 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145328.P3139099324378741626

/-!
# A145329: Partial sums of A051442, starting at n=1.

The programs for A145329, there is no canonical definition to state claims against.
-/

/-! ## A145329.P14403871602071913978

`∑[(n+1)^(n+2)+(n+2)^(n+1)]`
-/

namespace A145329.P14403871602071913978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (n + 2) + (n + 2) ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145329.P14403871602071913978

/-! ## A145329.P1572808631092117804

`A051442(n+1)+a(n-1)` with `a(0)=3`
-/

namespace A145329.P1572808631092117804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A051442 (n + 1) + a (n - 1)

end

end A145329.P1572808631092117804

/-! ## A145329.P3616564233999406935

`∑[A258389(n+1)]+∑[A051442(n)]`
-/

namespace A145329.P3616564233999406935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A145329.P3616564233999406935

/-! ## A145329.P9018414390543851428

`A000035(2*n)+∑[A051442(n+1)]`
-/

namespace A145329.P9018414390543851428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051442 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145329.P9018414390543851428

/-! ## A145329.P10000740760541309383

`A020639(2*(n+1))+∑[A051442(n+1)]-2`
-/

namespace A145329.P10000740760541309383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051442 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1)) + (∑ j ∈ Finset.range (n + 1), f1 j - 2)

end

end A145329.P10000740760541309383

/-!
# A145337: a(n) = d(p(n)+1) - d(p(n)-1), where d(m) = the number of divisors of m, p(n) = the n-th prime.

The programs for A145337, the canonical program `A145337.P14852323097851792559` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145337 has offset 0).

The definition of A145337 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145337.P14852323097851792559

`A008329(n+1)-A008328(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A145337

/-- `A008329(n+1)-A008328(n+1)` -/
def P14852323097851792559.Spec : Prop :=
  ∀ n, P14852323097851792559.a n = A145337 n

theorem P14852323097851792559.correct : P14852323097851792559.Spec := by
  intro n
  simp only [A145337]

end A145337

/-! ## A145337.P15183035310976418466

`A175144(n+1)-2*A008328(n+1)`
-/

namespace A145337.P15183035310976418466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175144 (n + 1) - 2 * A008328 (n + 1)

end

end A145337.P15183035310976418466

namespace A145337

/-- `A175144(n+1)-2*A008328(n+1)` -/
def P15183035310976418466.Spec : Prop :=
  ∀ n, P15183035310976418466.a n = A145337 n

theorem P15183035310976418466.correct : P15183035310976418466.Spec := by
  intro n
  simp only [A145337, Nat.add_sub_cancel, A145337.P15183035310976418466.a, A145337.P14852323097851792559.a, A008328, A008328.P3425095105082656605.a, A008329, A008329.P18061230809908035593.a, A175144, A175144.P696110972913207213.a, A000005, A000005.P16091521709108585461.a, A006093, A006093.P2906174024863549003.a, A008864, A008864.P9177617808325052279.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A145337

/-! ## A145337.P2747119507324621567

`2*A008329(n+1)-A175144(n+1)`
-/

namespace A145337.P2747119507324621567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008329 (n + 1) - A175144 (n + 1)

end

end A145337.P2747119507324621567

namespace A145337

/-- `2*A008329(n+1)-A175144(n+1)` -/
def P2747119507324621567.Spec : Prop :=
  ∀ n, P2747119507324621567.a n = A145337 n

theorem P2747119507324621567.correct : P2747119507324621567.Spec := by
  intro n
  simp only [A145337, Nat.add_sub_cancel, A145337.P2747119507324621567.a, A145337.P14852323097851792559.a, A008328, A008328.P3425095105082656605.a, A008329, A008329.P18061230809908035593.a, A175144, A175144.P696110972913207213.a, A000005, A000005.P16091521709108585461.a, A006093, A006093.P2906174024863549003.a, A008864, A008864.P9177617808325052279.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A145337

/-! ## A145337.P16092489394521603814

`A008329(n+1)-A000005(A006093(n+1))`
-/

namespace A145337.P16092489394521603814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008329 (n + 1) - A000005 (A006093 (n + 1)).toNat

end

end A145337.P16092489394521603814

namespace A145337

/-- `A008329(n+1)-A000005(A006093(n+1))` -/
def P16092489394521603814.Spec : Prop :=
  ∀ n, P16092489394521603814.a n = A145337 n

end A145337

/-! ## A145337.P2004361781931797695

`A000005(A000040(n+1)+1)-A008328(n+1)`
-/

namespace A145337.P2004361781931797695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000040 (n + 1) + 1).toNat - A008328 (n + 1)

end

end A145337.P2004361781931797695

namespace A145337

/-- `A000005(A000040(n+1)+1)-A008328(n+1)` -/
def P2004361781931797695.Spec : Prop :=
  ∀ n, P2004361781931797695.a n = A145337 n

end A145337

/-! ## A145337.P17247810008794048961

`A008329(n+1)-A000005(A008864(n+1)-2)`
-/

namespace A145337.P17247810008794048961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008329 (n + 1) - A000005 (A008864 (n + 1) - 2).toNat

end

end A145337.P17247810008794048961

namespace A145337

/-- `A008329(n+1)-A000005(A008864(n+1)-2)` -/
def P17247810008794048961.Spec : Prop :=
  ∀ n, P17247810008794048961.a n = A145337 n

theorem P17247810008794048961.correct : P17247810008794048961.Spec := by
  intro n
  simp only [A145337, Nat.add_sub_cancel, A145337.P17247810008794048961.a, A145337.P14852323097851792559.a, A000005, A000005.P16091521709108585461.a, A008328, A008328.P3425095105082656605.a, A008329, A008329.P18061230809908035593.a, A008864, A008864.P9177617808325052279.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A145337

/-! ## A145337.P1862080591224599382

`A000005(A008864(n+1))-A000005(A006093(n+1))`
-/

namespace A145337.P1862080591224599382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008864 (n + 1)).toNat - A000005 (A006093 (n + 1)).toNat

end

end A145337.P1862080591224599382

namespace A145337

/-- `A000005(A008864(n+1))-A000005(A006093(n+1))` -/
def P1862080591224599382.Spec : Prop :=
  ∀ n, P1862080591224599382.a n = A145337 n

end A145337

/-! ## A145337.P15022635420685700780

`A384195(A000040(n+1))`
-/

namespace A145337.P15022635420685700780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384195 (A000040 (n + 1)).toNat

end

end A145337.P15022635420685700780

namespace A145337

/-- `A384195(A000040(n+1))` -/
def P15022635420685700780.Spec : Prop :=
  ∀ n, P15022635420685700780.a n = A145337 n

end A145337

/-! ## A145337.P2427102744049544336

`A384195(A008578(n+2))`
-/

namespace A145337.P2427102744049544336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384195 (A008578 (n + 2)).toNat

end

end A145337.P2427102744049544336

namespace A145337

/-- `A384195(A008578(n+2))` -/
def P2427102744049544336.Spec : Prop :=
  ∀ n, P2427102744049544336.a n = A145337 n

end A145337

/-! ## A145337.P14469963029971065898

`A384195(A182986(n+2))`
-/

namespace A145337.P14469963029971065898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384195 (A182986 (n + 2)).toNat

end

end A145337.P14469963029971065898

namespace A145337

/-- `A384195(A182986(n+2))` -/
def P14469963029971065898.Spec : Prop :=
  ∀ n, P14469963029971065898.a n = A145337 n

end A145337

/-!
# A145339: a(n) = the minimum of d(p(n)-1) and d(p(n)+1), where d(m) is the number of divisors of m and p(n) is the n-th prime.

The programs for A145339, there is no canonical definition to state claims against.
-/

/-! ## A145339.P5928450873667687964

`A145340(n+1)-abs(A145337(n))`
-/

namespace A145339.P5928450873667687964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145340 (n + 1) - |A145337 n|

end

end A145339.P5928450873667687964

/-! ## A145339.P17485317772212550643

`A175144(n+1)-A145340(n+1)`
-/

namespace A145339.P17485317772212550643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175144 (n + 1) - A145340 (n + 1)

end

end A145339.P17485317772212550643

/-! ## A145339.P7899913265559635076

`A189827(A000040(n+1))-A145340(n+1)`
-/

namespace A145339.P7899913265559635076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189827 (A000040 (n + 1)).toNat - A145340 (n + 1)

end

end A145339.P7899913265559635076

/-! ## A145339.P1860264483332319080

`A145340(n+1)-gcd(A000038(n), A145337(n))`
-/

namespace A145339.P1860264483332319080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145340 (n + 1) - (Int.gcd (A000038 n) (A145337 n) : ℤ)

end

end A145339.P1860264483332319080

/-! ## A145339.P13292008447262548492

`A189827(record[A006530(n+2)])-A145340(n+1)`
-/

namespace A145339.P13292008447262548492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189827 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A145340 (n + 1)

end

end A145339.P13292008447262548492

/-! ## A145339.P4091876284647814339

`A189827(record[A014963(n+2)])-A145340(n+1)`
-/

namespace A145339.P4091876284647814339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189827 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A145340 (n + 1)

end

end A145339.P4091876284647814339

/-! ## A145339.P2240389887039448306

`A008328(n+1)+A008329(n+1)-A145340(n+1)`
-/

namespace A145339.P2240389887039448306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008328 (n + 1) + (A008329 (n + 1) - A145340 (n + 1))

end

end A145339.P2240389887039448306

/-! ## A145339.P5945836075059666108

`A000005(A006093(n+1))+A008329(n+1)-A145340(n+1)`
-/

namespace A145339.P5945836075059666108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A006093 (n + 1)).toNat + (A008329 (n + 1) - A145340 (n + 1))

end

end A145339.P5945836075059666108

/-!
# A145340: a(n) = the maximum of d(p(n)-1) and d(p(n)+1), where d(m) is the number of divisors of m and p(n) is the n-th prime.

The programs for A145340, there is no canonical definition to state claims against.
-/

/-! ## A145340.P14039675860986245148

`A145339(n+1)+abs(A145337(n))`
-/

namespace A145340.P14039675860986245148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145339 (n + 1) + |A145337 n|

end

end A145340.P14039675860986245148

/-! ## A145340.P2896948541016861882

`A175144(n+1)-A145339(n+1)`
-/

namespace A145340.P2896948541016861882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175144 (n + 1) - A145339 (n + 1)

end

end A145340.P2896948541016861882

/-! ## A145340.P8814602820088022569

`A189827(A000040(n+1))-A145339(n+1)`
-/

namespace A145340.P8814602820088022569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189827 (A000040 (n + 1)).toNat - A145339 (n + 1)

end

end A145340.P8814602820088022569

/-! ## A145340.P5737981646639249163

`A145339(n+1)+gcd(A000038(n), A145337(n))`
-/

namespace A145340.P5737981646639249163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145339 (n + 1) + (Int.gcd (A000038 n) (A145337 n) : ℤ)

end

end A145340.P5737981646639249163

/-! ## A145340.P17020683861253380758

`A189827(record[A006530(n+2)])-A145339(n+1)`
-/

namespace A145340.P17020683861253380758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189827 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A145339 (n + 1)

end

end A145340.P17020683861253380758

/-! ## A145340.P5208534172013156391

`A189827(record[A014963(n+2)])-A145339(n+1)`
-/

namespace A145340.P5208534172013156391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189827 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A145339 (n + 1)

end

end A145340.P5208534172013156391

/-! ## A145340.P3525249657456959729

`A008328(n+1)+A008329(n+1)-A145339(n+1)`
-/

namespace A145340.P3525249657456959729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008328 (n + 1) + (A008329 (n + 1) - A145339 (n + 1))

end

end A145340.P3525249657456959729

/-! ## A145340.P17536347501879412813

`A000005(A006093(n+1))+A008329(n+1)-A145339(n+1)`
-/

namespace A145340.P17536347501879412813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A006093 (n + 1)).toNat + (A008329 (n + 1) - A145339 (n + 1))

end

end A145340.P17536347501879412813

/-!
# A145341: Convert 2n-1 to binary. Reverse its digits. Convert back to decimal to get a(n).

The programs for A145341, the canonical program `A145341.P17834554394848515737` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145341 has offset 1).

The definition of A145341 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A145341.P14788707804864281313

`A145342(n+1)*2-1`
-/

namespace A145341.P14788707804864281313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145342 (n + 1) * 2 - 1

end

end A145341.P14788707804864281313

namespace A145341

/-- `A145342(n+1)*2-1` -/
def P14788707804864281313.Spec : Prop :=
  ∀ n, P14788707804864281313.a n = A145341 (n + 1)

end A145341

/-! ## A145341.P17834554394848515737

`A030101(2*(n+1)-1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A145341

/-- `A030101(2*(n+1)-1)` -/
def P17834554394848515737.Spec : Prop :=
  ∀ n, P17834554394848515737.a n = A145341 (n + 1)

theorem P17834554394848515737.correct : P17834554394848515737.Spec := by
  intro n
  simp only [A145341, Nat.add_sub_cancel]

end A145341

/-! ## A145341.P3878319944366073216

`2*A145342(n+1)-1`
-/

namespace A145341.P3878319944366073216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A145342 (n + 1) - 1

end

end A145341.P3878319944366073216

namespace A145341

/-- `2*A145342(n+1)-1` -/
def P3878319944366073216.Spec : Prop :=
  ∀ n, P3878319944366073216.a n = A145341 (n + 1)

end A145341

/-! ## A145341.P4352139815960824077

`A030101(n)+2^ceil(log2(n+1))`
-/

namespace A145341.P4352139815960824077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030101 n : ℚ) + (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)

end

end A145341.P4352139815960824077

namespace A145341

/-- `A030101(n)+2^ceil(log2(n+1))` -/
def P4352139815960824077.Spec : Prop :=
  ∀ n, P4352139815960824077.a n = (A145341 (n + 1) : ℚ)

end A145341

/-! ## A145341.P5991977602540179256

`A062383(n)+A030101(n)`
-/

namespace A145341.P5991977602540179256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n + A030101 n

end

end A145341.P5991977602540179256

namespace A145341

/-- `A062383(n)+A030101(n)` -/
def P5991977602540179256.Spec : Prop :=
  ∀ n, P5991977602540179256.a n = A145341 (n + 1)

end A145341

/-! ## A145341.P14603984563014822795

`A003817(n)+A030101(n)+1`
-/

namespace A145341.P14603984563014822795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n + (A030101 n + 1)

end

end A145341.P14603984563014822795

namespace A145341

/-- `A003817(n)+A030101(n)+1` -/
def P14603984563014822795.Spec : Prop :=
  ∀ n, P14603984563014822795.a n = A145341 (n + 1)

end A145341

/-! ## A145341.P3788022943444234636

`xor(A010078(n+1), A175920(n))`
-/

namespace A145341.P3788022943444234636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010078 (n + 1)) (A175920 n)

end

end A145341.P3788022943444234636

namespace A145341

/-- `xor(A010078(n+1), A175920(n))` -/
def P3788022943444234636.Spec : Prop :=
  ∀ n, P3788022943444234636.a n = A145341 (n + 1)

end A145341

/-! ## A145341.P15751899527083868042

`A062383(n)+A055944(n)-n`
-/

namespace A145341.P15751899527083868042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n + (A055944 n - (n : ℤ))

end

end A145341.P15751899527083868042

namespace A145341

/-- `A062383(n)+A055944(n)-n` -/
def P15751899527083868042.Spec : Prop :=
  ∀ n, P15751899527083868042.a n = A145341 (n + 1)

end A145341

/-! ## A145341.P9118573918497510855

`A062383(n)+n-A055945(n)`
-/

namespace A145341.P9118573918497510855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n + ((n : ℤ) - A055945 n)

end

end A145341.P9118573918497510855

namespace A145341

/-- `A062383(n)+n-A055945(n)` -/
def P9118573918497510855.Spec : Prop :=
  ∀ n, P9118573918497510855.a n = A145341 (n + 1)

end A145341

/-! ## A145341.P15063309382453002778

`A062383(n)+A264618(n)%A004277(n)`
-/

namespace A145341.P15063309382453002778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n + Int.tmod (A264618 n) (A004277 n)

end

end A145341.P15063309382453002778

namespace A145341

/-- `A062383(n)+A264618(n)%A004277(n)` -/
def P15063309382453002778.Spec : Prop :=
  ∀ n, P15063309382453002778.a n = A145341 (n + 1)

end A145341

/-! ## A145341.P12517978912406385379

`A062383(n)+and(A175298(n), A264618(n))`
-/

namespace A145341.P12517978912406385379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n + Int.land (A175298 n) (A264618 n)

end

end A145341.P12517978912406385379

namespace A145341

/-- `A062383(n)+and(A175298(n), A264618(n))` -/
def P12517978912406385379.Spec : Prop :=
  ∀ n, P12517978912406385379.a n = A145341 (n + 1)

end A145341

/-! ## A145341.P1953839075356982056

`A004273(A145342(n+1))`
-/

namespace A145341.P1953839075356982056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A145342 (n + 1)).toNat

end

end A145341.P1953839075356982056

namespace A145341

/-- `A004273(A145342(n+1))` -/
def P1953839075356982056.Spec : Prop :=
  ∀ n, P1953839075356982056.a n = A145341 (n + 1)

end A145341

/-! ## A145341.P10625451430512298319

`A057889(Δ[n²])`
-/

namespace A145341.P10625451430512298319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A145341.P10625451430512298319

namespace A145341

/-- `A057889(Δ[n²])` -/
def P10625451430512298319.Spec : Prop :=
  ∀ n, P10625451430512298319.a n = A145341 (n + 1)

end A145341

/-! ## A145341.P6463360635101523257

`or(1, A057889(2*n+1))`
-/

namespace A145341.P6463360635101523257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A057889 (2 * n + 1))

end

end A145341.P6463360635101523257

namespace A145341

/-- `or(1, A057889(2*n+1))` -/
def P6463360635101523257.Spec : Prop :=
  ∀ n, P6463360635101523257.a n = A145341 (n + 1)

end A145341

/-! ## A145341.P9156059235487686703

`Δ[n²]-A055945(2*n+1)`
-/

namespace A145341.P9156059235487686703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A055945 (2 * n + 1)

end

end A145341.P9156059235487686703

namespace A145341

/-- `Δ[n²]-A055945(2*n+1)` -/
def P9156059235487686703.Spec : Prop :=
  ∀ n, P9156059235487686703.a n = A145341 (n + 1)

end A145341

/-! ## A145341.P6119646818054448475

`xor(2*n+1, A175919(2*n+1))`
-/

namespace A145341.P6119646818054448475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * n + 1 : ℤ) (A175919 (2 * n + 1))

end

end A145341.P6119646818054448475

namespace A145341

/-- `xor(2*n+1, A175919(2*n+1))` -/
def P6119646818054448475.Spec : Prop :=
  ∀ n, P6119646818054448475.a n = A145341 (n + 1)

end A145341

/-! ## A145341.P11853715919689653565

`or(A030101(n), A265509(n))`
-/

namespace A145341.P11853715919689653565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A030101 n) (A265509 n)

end

end A145341.P11853715919689653565

namespace A145341

/-- `or(A030101(n), A265509(n))` -/
def P11853715919689653565.Spec : Prop :=
  ∀ n, P11853715919689653565.a n = A145341 (n + 1)

end A145341

/-! ## A145341.P13882282633746136738

`A000027(A057889(2*n+1))`
-/

namespace A145341.P13882282633746136738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A057889 (2 * n + 1)).toNat

end

end A145341.P13882282633746136738

namespace A145341

/-- `A000027(A057889(2*n+1))` -/
def P13882282633746136738.Spec : Prop :=
  ∀ n, P13882282633746136738.a n = A145341 (n + 1)

end A145341

/-! ## A145341.P12695820036711081528

`A302027(A057889(2*n)+1)`
-/

namespace A145341.P12695820036711081528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302027 (A057889 (2 * n) + 1).toNat

end

end A145341.P12695820036711081528

namespace A145341

/-- `A302027(A057889(2*n)+1)` -/
def P12695820036711081528.Spec : Prop :=
  ∀ n, P12695820036711081528.a n = A145341 (n + 1)

end A145341

/-! ## A145341.P14420560562492699162

`A056539(Δ[n²])`
-/

namespace A145341.P14420560562492699162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A145341.P14420560562492699162

namespace A145341

/-- `A056539(Δ[n²])` -/
def P14420560562492699162.Spec : Prop :=
  ∀ n, P14420560562492699162.a n = A145341 (n + 1)

end A145341

/-!
# A145342: a(n) = (A145341(n) + 1)/2.

The programs for A145342, the canonical program `A145342.P11180459690303212781` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145342 has offset 1).

The definition of A145342 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145341, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A145342.P11180459690303212781

`(A145341(n+1)+1)/2`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A145342

/-- `(A145341(n+1)+1)/2` -/
def P11180459690303212781.Spec : Prop :=
  ∀ n, P11180459690303212781.a n = (A145342 (n + 1) : ℚ)

end A145342

/-! ## A145342.P9243264917708869308

`ceil(A145341(n+1)/2)`
-/

namespace A145342.P9243264917708869308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A145341 (n + 1) : ℚ) / 2⌉

end

end A145342.P9243264917708869308

namespace A145342

/-- `ceil(A145341(n+1)/2)` -/
def P9243264917708869308.Spec : Prop :=
  ∀ n, P9243264917708869308.a n = A145342 (n + 1)

end A145342

/-! ## A145342.P1073320563767577149

`A003188(A341916(n))+1`
-/

namespace A145342.P1073320563767577149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A341916 n).toNat + 1

end

end A145342.P1073320563767577149

namespace A145342

/-- `A003188(A341916(n))+1` -/
def P1073320563767577149.Spec : Prop :=
  ∀ n, P1073320563767577149.a n = A145342 (n + 1)

end A145342

/-! ## A145342.P9505022554790383372

`A333777(A333692(n))+1`
-/

namespace A145342.P9505022554790383372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333777 (A333692 n).toNat + 1

end

end A145342.P9505022554790383372

namespace A145342

/-- `A333777(A333692(n))+1` -/
def P9505022554790383372.Spec : Prop :=
  ∀ n, P9505022554790383372.a n = A145342 (n + 1)

end A145342

/-! ## A145342.P16931644588878118412

`A333693(A333776(n))+1`
-/

namespace A145342.P16931644588878118412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333693 (A333776 n).toNat + 1

end

end A145342.P16931644588878118412

namespace A145342

/-- `A333693(A333776(n))+1` -/
def P16931644588878118412.Spec : Prop :=
  ∀ n, P16931644588878118412.a n = A145342 (n + 1)

end A145342

/-! ## A145342.P11476299662630956441

`ceil(A057889(2*n+1)/2)`
-/

namespace A145342.P11476299662630956441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057889 (2 * n + 1) : ℚ) / 2⌉

end

end A145342.P11476299662630956441

namespace A145342

/-- `ceil(A057889(2*n+1)/2)` -/
def P11476299662630956441.Spec : Prop :=
  ∀ n, P11476299662630956441.a n = A145342 (n + 1)

end A145342

/-! ## A145342.P1921386279757101479

`A341915(A006068(n))+1`
-/

namespace A145342.P1921386279757101479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341915 (A006068 n).toNat + 1

end

end A145342.P1921386279757101479

namespace A145342

/-- `A341915(A006068(n))+1` -/
def P1921386279757101479.Spec : Prop :=
  ∀ n, P1921386279757101479.a n = A145342 (n + 1)

end A145342

/-! ## A145342.P2137357738729337889

`A105081(A341916(n)+1)`
-/

namespace A145342.P2137357738729337889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105081 (A341916 n + 1).toNat

end

end A145342.P2137357738729337889

namespace A145342

/-- `A105081(A341916(n)+1)` -/
def P2137357738729337889.Spec : Prop :=
  ∀ n, P2137357738729337889.a n = A145342 (n + 1)

end A145342

/-! ## A145342.P5532832393013957638

`A325642(A145341(n+1)+1)`
-/

namespace A145342.P5532832393013957638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325642 (A145341 (n + 1) + 1).toNat

end

end A145342.P5532832393013957638

namespace A145342

/-- `A325642(A145341(n+1)+1)` -/
def P5532832393013957638.Spec : Prop :=
  ∀ n, P5532832393013957638.a n = A145342 (n + 1)

end A145342

/-! ## A145342.P1508107543298106826

`(A005843(n+1)-A055945(2*n+1))/2`
-/

namespace A145342.P1508107543298106826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (n + 1) - A055945 (2 * n + 1) : ℚ) / 2

end

end A145342.P1508107543298106826

namespace A145342

/-- `(A005843(n+1)-A055945(2*n+1))/2` -/
def P1508107543298106826.Spec : Prop :=
  ∀ n, P1508107543298106826.a n = (A145342 (n + 1) : ℚ)

end A145342

/-! ## A145342.P16066645819601693619

`(A057889(2*n+1)+1)/A020639(2*(n+1))`
-/

namespace A145342.P16066645819601693619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057889 (2 * n + 1) + 1 : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A145342.P16066645819601693619

namespace A145342

/-- `(A057889(2*n+1)+1)/A020639(2*(n+1))` -/
def P16066645819601693619.Spec : Prop :=
  ∀ n, P16066645819601693619.a n = (A145342 (n + 1) : ℚ)

end A145342

/-! ## A145342.P1995353161832987124

`A049773(Δ[n²])`
-/

namespace A145342.P1995353161832987124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049773 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A145342.P1995353161832987124

namespace A145342

/-- `A049773(Δ[n²])` -/
def P1995353161832987124.Spec : Prop :=
  ∀ n, P1995353161832987124.a n = A145342 (n + 1)

end A145342

/-! ## A145342.P12384599907755437343

`A030109(Δ[n²])+1`
-/

namespace A145342.P12384599907755437343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A145342.P12384599907755437343

namespace A145342

/-- `A030109(Δ[n²])+1` -/
def P12384599907755437343.Spec : Prop :=
  ∀ n, P12384599907755437343.a n = A145342 (n + 1)

end A145342

/-! ## A145342.P3811040243426088206

`(A030101(Δ[n²])+1)/2`
-/

namespace A145342.P3811040243426088206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030101 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1 : ℚ) / 2

end

end A145342.P3811040243426088206

namespace A145342

/-- `(A030101(Δ[n²])+1)/2` -/
def P3811040243426088206.Spec : Prop :=
  ∀ n, P3811040243426088206.a n = (A145342 (n + 1) : ℚ)

end A145342

/-! ## A145342.P4927736163876582105

`ceil(A030101(2*n+1)/2)`
-/

namespace A145342.P4927736163876582105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A030101 (2 * n + 1) : ℚ) / 2⌉

end

end A145342.P4927736163876582105

namespace A145342

/-- `ceil(A030101(2*n+1)/2)` -/
def P4927736163876582105.Spec : Prop :=
  ∀ n, P4927736163876582105.a n = A145342 (n + 1)

end A145342

/-! ## A145342.P12384803961136755056

`ceil(A056539(2*n+1)/2)`
-/

namespace A145342.P12384803961136755056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A056539 (2 * n + 1) : ℚ) / 2⌉

end

end A145342.P12384803961136755056

namespace A145342

/-- `ceil(A056539(2*n+1)/2)` -/
def P12384803961136755056.Spec : Prop :=
  ∀ n, P12384803961136755056.a n = A145342 (n + 1)

end A145342

/-! ## A145342.P12999152328437826136

`(A163807(2*n+1)+1)/2`
-/

namespace A145342.P12999152328437826136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163807 (2 * n + 1) + 1 : ℚ) / 2

end

end A145342.P12999152328437826136

namespace A145342

/-- `(A163807(2*n+1)+1)/2` -/
def P12999152328437826136.Spec : Prop :=
  ∀ n, P12999152328437826136.a n = (A145342 (n + 1) : ℚ)

end A145342

/-! ## A145342.P13209154715069928170

`(A165789(2*n+1)+1)/2`
-/

namespace A145342.P13209154715069928170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165789 (2 * n + 1) + 1 : ℚ) / 2

end

end A145342.P13209154715069928170

namespace A145342

/-- `(A165789(2*n+1)+1)/2` -/
def P13209154715069928170.Spec : Prop :=
  ∀ n, P13209154715069928170.a n = (A145342 (n + 1) : ℚ)

end A145342

/-! ## A145342.P16594816699840108930

`A055944(2*n+1)/2-n`
-/

namespace A145342.P16594816699840108930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055944 (2 * n + 1) : ℚ) / 2 - (n : ℚ)

end

end A145342.P16594816699840108930

namespace A145342

/-- `A055944(2*n+1)/2-n` -/
def P16594816699840108930.Spec : Prop :=
  ∀ n, P16594816699840108930.a n = (A145342 (n + 1) : ℚ)

end A145342

/-! ## A145342.P5992331893478553714

`A325642(A030101(2*n+1)+1)`
-/

namespace A145342.P5992331893478553714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325642 (A030101 (2 * n + 1) + 1).toNat

end

end A145342.P5992331893478553714

namespace A145342

/-- `A325642(A030101(2*n+1)+1)` -/
def P5992331893478553714.Spec : Prop :=
  ∀ n, P5992331893478553714.a n = A145342 (n + 1)

end A145342

/-!
# A145343: a(n) = largest prime <= the smallest positive integer with exactly n divisors.

The programs for A145343, there is no canonical definition to state claims against.
-/

/-! ## A145343.P5518723287704175314

`A007917(A005179(n+2))`
-/

namespace A145343.P5518723287704175314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (A005179 (n + 2)).toNat

end

end A145343.P5518723287704175314

/-! ## A145343.P9682187254549526432

`A079707(A145344(n+2))`
-/

namespace A145343.P9682187254549526432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079707 (A145344 (n + 2)).toNat

end

end A145343.P9682187254549526432

/-! ## A145343.P2349263252329126490

`A007917(sqrt(A130279(n+2)))`
-/

namespace A145343.P2349263252329126490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (SequenceMachineLib.roundAway (Real.sqrt (A130279 (n + 2) : ℝ))).toNat

end

end A145343.P2349263252329126490

/-! ## A145343.P1191263254431414442

`A056813(A130279(n+2))`
-/

namespace A145343.P1191263254431414442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (A130279 (n + 2)).toNat

end

end A145343.P1191263254431414442

/-!
# A145344: a(n) = smallest prime >= the smallest positive integer with exactly n divisors.

The programs for A145344, there is no canonical definition to state claims against.
-/

/-! ## A145344.P8167866177568910938

`A007918(A005179(n+1))`
-/

namespace A145344.P8167866177568910938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A005179 (n + 1)).toNat

end

end A145344.P8167866177568910938

/-! ## A145344.P1486036488234957232

`A151800(A005179(n+1)-1)`
-/

namespace A145344.P1486036488234957232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A005179 (n + 1) - 1).toNat

end

end A145344.P1486036488234957232

/-! ## A145344.P6988188636273144974

`A151800(sqrt(A130279(n+1))-1)`
-/

namespace A145344.P6988188636273144974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.roundAway (Real.sqrt (A130279 (n + 1) : ℝ) - 1)).toNat

end

end A145344.P6988188636273144974

/-! ## A145344.P13869958584080879412

`A151800(A081532(∑[n+1])-1)`
-/

namespace A145344.P13869958584080879412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A081532 (∑ j ∈ Finset.range (n + 1), f1 j) - 1).toNat

end

end A145344.P13869958584080879412

/-! ## A145344.P15667370686547053364

`A151800(A187941(n+1)/2-1)`
-/

namespace A145344.P15667370686547053364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.roundAway ((A187941 (n + 1) : ℚ) / 2 - 1)).toNat

end

end A145344.P15667370686547053364

/-!
# A145345: G.f. satisfies: A(x/A(x)) = 1 + x*A(x).

The programs for A145345, there is no canonical definition to state claims against.
-/

/-! ## A145345.P16642183540227310547

`A195177(floor(sqrt(e)*(n+1)!)-A036599(2*n+1))`
-/

namespace A145345.P16642183540227310547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (⌊Real.sqrt (Real.exp 1) * (Nat.factorial (n + 1) : ℝ)⌋ - A036599 (2 * n + 1)).toNat

end

end A145345.P16642183540227310547

/-! ## A145345.P1191649019732864847

`∏{p}[A056543(n+1)², #]`
-/

namespace A145345.P1191649019732864847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056543 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A145345.P1191649019732864847

/-!
# A145346: A145312(n)/1440.

The programs for A145346, there is no canonical definition to state claims against.
-/

/-! ## A145346.P7667329844246097158

`∑[n+1]/3*∑{d}[n+2, #^3]`
-/

namespace A145346.P7667329844246097158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3 * ((∑ d ∈ Nat.divisors (f2 n), d ^ 3 : ℕ) : ℚ)

end

end A145346.P7667329844246097158

/-! ## A145346.P847057413466295192

`(n+1)/6*A281372(n+2)`
-/

namespace A145346.P847057413466295192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 6 * (A281372 (n + 2) : ℚ)

end

end A145346.P847057413466295192

/-! ## A145346.P6653453673492848015

`∑[(n+1)/3]*A001158(n+2)`
-/

namespace A145346.P6653453673492848015
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A001158 (n + 2) : ℚ)

end

end A145346.P6653453673492848015

/-!
# A145347: G.f. satisfies: A(x/A(x)) = 1 + x*A(x)^3.

The programs for A145347, there is no canonical definition to state claims against.
-/

/-! ## A145347.P16667748064094618312

`A005411(n)+A005047(A054423(n))`
-/

namespace A145347.P16667748064094618312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005411 n + A005047 (A054423 n).toNat

end

end A145347.P16667748064094618312

/-! ## A145347.P18347149722192370095

`A050292(A265953(n)+A090677(n))`
-/

namespace A145347.P18347149722192370095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050292 (A265953 n + A090677 n).toNat

end

end A145347.P18347149722192370095

/-!
# A145348: G.f. satisfies: A(x/A(x)^2) = 1 + x*A(x)^2.

The programs for A145348, there is no canonical definition to state claims against.
-/

/-! ## A145348.P7159920193199437301

`A028310(n*A008620(A121674(n)))`
-/

namespace A145348.P7159920193199437301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n : ℤ) * A008620 (A121674 n).toNat).toNat

end

end A145348.P7159920193199437301

/-! ## A145348.P5567916346436366020

`A008620(A121674(n))*A118083(n)`
-/

namespace A145348.P5567916346436366020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A121674 n).toNat * A118083 n

end

end A145348.P5567916346436366020

/-!
# A145349: G.f. satisfies: A(x/A(x)^3) = 1 + x*A(x).

The programs for A145349, there is no canonical definition to state claims against.
-/

/-! ## A145349.P14641466798994558905

`A076077(A242533(n+1)+A002846(n+1))`
-/

namespace A145349.P14641466798994558905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076077 (A242533 (n + 1) + A002846 (n + 1)).toNat

end

end A145349.P14641466798994558905

/-!
# A145350: G.f. satisfies: A(x/A(x)^2) = 1 + x*A(x).

The programs for A145350, there is no canonical definition to state claims against.
-/

/-! ## A145350.P4051214760030460008

`A065033(((n+2)^(n+1)-1)/(n+1)²-n)`
-/

namespace A145350.P4051214760030460008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (SequenceMachineLib.roundAway ((((n + 2) ^ (n + 1) : ℤ) - 1 : ℚ) / ((n + 1) ^ 2 : ℚ) - (n : ℚ))).toNat

end

end A145350.P4051214760030460008

/-! ## A145350.P9394513251700264655

`A096125(((n+2)^(n+1)-1)/(n+1)²-n)`
-/

namespace A145350.P9394513251700264655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096125 (SequenceMachineLib.roundAway ((((n + 2) ^ (n + 1) : ℤ) - 1 : ℚ) / ((n + 1) ^ 2 : ℚ) - (n : ℚ))).toNat

end

end A145350.P9394513251700264655

/-!
# A145351: Prime-indexed composites k such that lpf(k) + gpf(k) is a prime.

The programs for A145351, the canonical program `A145351.P718792965962728334` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145351 has offset 1).

The definition of A145351 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145351.P718792965962728334

`∩[A022449(n+1), A119689(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A145351

/-- `∩[A022449(n+1), A119689(n+1)]` -/
def P718792965962728334.Spec : Prop :=
  ∀ n, (P718792965962728334.a n : ℤ) = A145351 (n + 1)

theorem P718792965962728334.correct : P718792965962728334.Spec := by
  intro n
  simp only [A145351, Nat.add_sub_cancel]

end A145351

/-! ## A145351.P14447522154392348514

`∩[A065858(n+1), A119689(n+1)]`
-/

namespace A145351.P14447522154392348514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145351.P14447522154392348514

namespace A145351

/-- `∩[A065858(n+1), A119689(n+1)]` -/
def P14447522154392348514.Spec : Prop :=
  ∀ n, (P14447522154392348514.a n : ℤ) = A145351 (n + 1)

end A145351

/-! ## A145351.P16506473443799548901

`A088608(A397468(n+1))`
-/

namespace A145351.P16506473443799548901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088608 (A397468 (n + 1)).toNat

end

end A145351.P16506473443799548901

namespace A145351

/-- `A088608(A397468(n+1))` -/
def P16506473443799548901.Spec : Prop :=
  ∀ n, P16506473443799548901.a n = A145351 (n + 1)

end A145351

/-! ## A145351.P1903834637355816375

`A065858(A022838(n+1))%A319589(n+1)`
-/

namespace A145351.P1903834637355816375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065858 (A022838 (n + 1)).toNat) (A319589 (n + 1))

end

end A145351.P1903834637355816375

namespace A145351

/-- `A065858(A022838(n+1))%A319589(n+1)` -/
def P1903834637355816375.Spec : Prop :=
  ∀ n, P1903834637355816375.a n = A145351 (n + 1)

end A145351

/-! ## A145351.P6995589965990148484

`A065858(A329829(n+1))%A319589(n+1)`
-/

namespace A145351.P6995589965990148484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065858 (A329829 (n + 1)).toNat) (A319589 (n + 1))

end

end A145351.P6995589965990148484

namespace A145351

/-- `A065858(A329829(n+1))%A319589(n+1)` -/
def P6995589965990148484.Spec : Prop :=
  ∀ n, P6995589965990148484.a n = A145351 (n + 1)

end A145351

/-!
# A145352: Triangle read by rows, A054525 * A157497.

The programs for A145352, there is no canonical definition to state claims against.
-/

/-! ## A145352.P2675922012531335714

`lcm(A127465(n+1), A344339(A318754(n+1)))`
-/

namespace A145352.P2675922012531335714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A127465 (n + 1)) (A344339 (A318754 (n + 1)).toNat)

end

end A145352.P2675922012531335714

/-! ## A145352.P12341118416444864968

`A055640(A090238(n))*A127093(n+1)`
-/

namespace A145352.P12341118416444864968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A090238 n).toNat * A127093 (n + 1)

end

end A145352.P12341118416444864968

/-! ## A145352.P15921743630467170012

`A124765(A110510(n))*A127093(n+1)`
-/

namespace A145352.P15921743630467170012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (A110510 n).toNat * A127093 (n + 1)

end

end A145352.P15921743630467170012

/-! ## A145352.P14634625585169365500

`A115722(A132062(n))*A127093(n+1)`
-/

namespace A145352.P14634625585169365500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115722 (A132062 n).toNat * A127093 (n + 1)

end

end A145352.P14634625585169365500

/-! ## A145352.P17894203826721881456

`A127093(n+1)*A249615(A109971(n))`
-/

namespace A145352.P17894203826721881456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) * A249615 (A109971 n).toNat

end

end A145352.P17894203826721881456

/-!
# A145353: Sum of the number of e-divisors of all numbers from 1 up to n.

The programs for A145353, the canonical program `A145353.P8451049038095436919` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145353 has offset 1).

The definition of A145353 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145353.P8451049038095436919

`∑[A049419(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A145353

/-- `∑[A049419(n+1)]` -/
def P8451049038095436919.Spec : Prop :=
  ∀ n, P8451049038095436919.a n = A145353 (n + 1)

theorem P8451049038095436919.correct : P8451049038095436919.Spec := by
  intro n
  simp only [A145353, Nat.add_sub_cancel]

end A145353

/-! ## A145353.P15901426724624197607

`A099593(n+1)+1`
-/

namespace A145353.P15901426724624197607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099593 (n + 1) + 1

end

end A145353.P15901426724624197607

namespace A145353

/-- `A099593(n+1)+1` -/
def P15901426724624197607.Spec : Prop :=
  ∀ n, P15901426724624197607.a n = A145353 (n + 1)

theorem P15901426724624197607.correct : P15901426724624197607.Spec := by
  intro n
  simp only [A145353, Nat.add_sub_cancel, A145353.P15901426724624197607.a, A145353.P8451049038095436919.f1, A145353.P8451049038095436919.a, A049419, A049419.P11075566220394595585.f1, A049419.P11075566220394595585.a, A099593, A099593.P12963312768206956457.f1, A099593.P12963312768206956457.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A145353

/-! ## A145353.P6389558773744114133

`∑[∏{e}[n+1, A000005(#)]]`
-/

namespace A145353.P6389558773744114133
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A000005 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145353.P6389558773744114133

namespace A145353

/-- `∑[∏{e}[n+1, A000005(#)]]` -/
def P6389558773744114133.Spec : Prop :=
  ∀ n, P6389558773744114133.a n = A145353 (n + 1)

end A145353

/-! ## A145353.P12673408984293438369

`∑[∏{p}[n+1, A000005(val(n+1, #))]]`
-/

namespace A145353.P12673408984293438369
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A000005 (SequenceMachineLib.valuation (n + 1) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145353.P12673408984293438369

namespace A145353

/-- `∑[∏{p}[n+1, A000005(val(n+1, #))]]` -/
def P12673408984293438369.Spec : Prop :=
  ∀ n, P12673408984293438369.a n = A145353 (n + 1)

end A145353

/-! ## A145353.P14161197541332081746

`∑[∏{e}[n+1, A032847(A032741(#)+1)]]`
-/

namespace A145353.P14161197541332081746
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A032847 (A032741 (Nat.factorization (f2 n) p) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145353.P14161197541332081746

namespace A145353

/-- `∑[∏{e}[n+1, A032847(A032741(#)+1)]]` -/
def P14161197541332081746.Spec : Prop :=
  ∀ n, P14161197541332081746.a n = A145353 (n + 1)

end A145353

/-! ## A145353.P7625641159264044499

`∑[A368980((n+1)²)]`
-/

namespace A145353.P7625641159264044499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368980 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145353.P7625641159264044499

namespace A145353

/-- `∑[A368980((n+1)²)]` -/
def P7625641159264044499.Spec : Prop :=
  ∀ n, P7625641159264044499.a n = A145353 (n + 1)

end A145353

/-! ## A145353.P5880222321030737866

`∑[A057945(A046643(n+1)²+2)]`
-/

namespace A145353.P5880222321030737866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057945 (A046643 (n + 1) ^ 2 + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145353.P5880222321030737866

namespace A145353

/-- `∑[A057945(A046643(n+1)²+2)]` -/
def P5880222321030737866.Spec : Prop :=
  ∀ n, P5880222321030737866.a n = A145353 (n + 1)

end A145353

/-!
# A145354: It is conjectured that for each m >= 1 there exist primes Q=Q(m) and P=P(m) with (2m)^2 + 1 <= Q <= (2m+1)^2 - 2m <= P <= (2m+1)^2; then set a(2m-1) = Q, a(2m) = P.

The programs for A145354, there is no canonical definition to state claims against.
-/

/-! ## A145354.P12889038864700477403

`A007918((or(1, n)+1)*(n+2))`
-/

namespace A145354.P12889038864700477403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 ((Nat.lor 1 n + 1) * (n + 2))

end

end A145354.P12889038864700477403

/-! ## A145354.P14021598011635715501

`A151800((or(1, n)+1)*(n+2))`
-/

namespace A145354.P14021598011635715501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ((Nat.lor 1 n + 1) * (n + 2))

end

end A145354.P14021598011635715501

/-! ## A145354.P4843200274205978101

`A151800(lcm(n+1, or(1, n+2)))`
-/

namespace A145354.P4843200274205978101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (Nat.lcm (n + 1) (Nat.lor 1 (n + 2)))

end

end A145354.P4843200274205978101

/-! ## A145354.P3668330823983060850

`A007918((gcd(2, n)+n)*(n+2))`
-/

namespace A145354.P3668330823983060850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 ((Nat.gcd 2 n + n) * (n + 2))

end

end A145354.P3668330823983060850

/-! ## A145354.P1375130472974895263

`A060264((n+2)*∑[char[2*n]])`
-/

namespace A145354.P1375130472974895263
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 ((n + 2) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A145354.P1375130472974895263

/-! ## A145354.P2915090203515413576

`A007918((n+2)*and(n+2, -2))`
-/

namespace A145354.P2915090203515413576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 ((n + 2 : ℤ) * Int.land (n + 2 : ℤ) (-2)).toNat

end

end A145354.P2915090203515413576

/-! ## A145354.P10863135615651652773

`A007918((n+2)*∑[and(2, n²-1)])`
-/

namespace A145354.P10863135615651652773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 ((n ^ 2 : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 ((n + 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A145354.P10863135615651652773

/-! ## A145354.P17881821384921118275

`A007918(A238411(n+2))`
-/

namespace A145354.P17881821384921118275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A238411 (n + 2)).toNat

end

end A145354.P17881821384921118275

/-! ## A145354.P9975742369147557346

`A007918(2*A093353(n+1))`
-/

namespace A145354.P9975742369147557346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (2 * A093353 (n + 1)).toNat

end

end A145354.P9975742369147557346

/-! ## A145354.P14585654997884880994

`A000040(A000720((char[2*n]+n+1)*(n+2))+1)`
-/

namespace A145354.P14585654997884880994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (((if ∃ j, f1 j = n then 1 else 0) + (n + 1)) * (n + 2)) + 1).toNat

end

end A145354.P14585654997884880994

/-!
# A145356: Partition number array, called M31hat(6).

The programs for A145356, there is no canonical definition to state claims against.
-/

/-! ## A145356.P13062451031858279442

`A144356(n+1)/A036040(n+1)`
-/

namespace A145356.P13062451031858279442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144356 (n + 1) : ℚ) / (A036040 (n + 1) : ℚ)

end

end A145356.P13062451031858279442

/-! ## A145356.P10416129027761740235

`A144356(n+1)/A124794(A185974(n+1))`
-/

namespace A145356.P10416129027761740235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144356 (n + 1) : ℚ) / (A124794 (A185974 (n + 1)).toNat : ℚ)

end

end A145356.P10416129027761740235

/-! ## A145356.P17814041861333724041

`A134133(n+1)/A130561(n+1)*A144356(n+1)`
-/

namespace A145356.P17814041861333724041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134133 (n + 1) : ℚ) / (A130561 (n + 1) : ℚ) * (A144356 (n + 1) : ℚ)

end

end A145356.P17814041861333724041

/-! ## A145356.P9603609764688266413

`A144269(n+1)/A143171(n+1)*A144356(n+1)`
-/

namespace A145356.P9603609764688266413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144269 (n + 1) : ℚ) / (A143171 (n + 1) : ℚ) * (A144356 (n + 1) : ℚ)

end

end A145356.P9603609764688266413

/-! ## A145356.P6413550166743680469

`A134150(n+1)/A134149(n+1)*A144356(n+1)`
-/

namespace A145356.P6413550166743680469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134150 (n + 1) : ℚ) / (A134149 (n + 1) : ℚ) * (A144356 (n + 1) : ℚ)

end

end A145356.P6413550166743680469

/-!
# A145357: Lower triangular array, called S1hat(6), related to partition number array A145356.

The programs for A145357, there is no canonical definition to state claims against.
-/

/-! ## A145357.P13878030253777653301

`A145356(A024648(n+1))`
-/

namespace A145357.P13878030253777653301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145356 (A024648 (n + 1)).toNat

end

end A145357.P13878030253777653301

/-! ## A145357.P8136627339280791196

`A145356(A024649(n+1))`
-/

namespace A145357.P8136627339280791196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145356 (A024649 (n + 1)).toNat

end

end A145357.P8136627339280791196

/-! ## A145357.P2813670248888961640

`A145356(A028429(n+1))`
-/

namespace A145357.P2813670248888961640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145356 (A028429 (n + 1)).toNat

end

end A145357.P2813670248888961640

/-!
# A145358: Row sums of triangle A145357 and of array A145356.

The programs for A145358, there is no canonical definition to state claims against.
-/

/-! ## A145358.P6018633971639532829

`∑[A315469(A015576(n))]`
-/

namespace A145358.P6018633971639532829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315469 (A015576 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145358.P6018633971639532829

/-!
# A145359: Second column (m=2) of triangle A145357 (S1hat(6)).

The programs for A145359, there is no canonical definition to state claims against.
-/

/-! ## A145359.P13179237304989275098

`A145357(∑[n+1]+2)`
-/

namespace A145359.P13179237304989275098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145357 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A145359.P13179237304989275098

/-! ## A145359.P7352111067459877951

`record[A145357(A080036(n))]`
-/

namespace A145359.P7352111067459877951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145357 (A080036 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145359.P7352111067459877951

/-! ## A145359.P17437976110636903432

`record[A145357(A072233(n)+n)]`
-/

namespace A145359.P17437976110636903432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145357 (A072233 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145359.P17437976110636903432

/-! ## A145359.P10070417405930639956

`record[A051168(n)*A145357(n+1)]`
-/

namespace A145359.P10070417405930639956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 n * A145357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145359.P10070417405930639956

/-! ## A145359.P6147978235596136639

`record[A097805(n)*A145357(n+1)]`
-/

namespace A145359.P6147978235596136639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n * A145357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145359.P6147978235596136639

/-!
# A145360: Third column (m=3) of triangle A145357 (S1hat(6)).

The programs for A145360, there is no canonical definition to state claims against.
-/

/-! ## A145360.P3174525800114671913

`A145357(∑[n+2]+4)`
-/

namespace A145360.P3174525800114671913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145357 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A145360.P3174525800114671913

/-! ## A145360.P8785271789050601064

`lcm(∏{e}[n+1, #], A145357(A167614(n+1)))`
-/

namespace A145360.P8785271789050601064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) (A145357 (A167614 (n + 1)).toNat)

end

end A145360.P8785271789050601064

/-! ## A145360.P1172034516236273825

`A145357(A167614(n+1))+A011732(n)`
-/

namespace A145360.P1172034516236273825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145357 (A167614 (n + 1)).toNat + A011732 n

end

end A145360.P1172034516236273825

/-! ## A145360.P15433312094893791739

`A145357(A167614(n+1))+A025443(n)`
-/

namespace A145360.P15433312094893791739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145357 (A167614 (n + 1)).toNat + A025443 n

end

end A145360.P15433312094893791739

/-!
# A145361: Characteristic partition array for partitions with parts 1 and 2 only.

The programs for A145361, there is no canonical definition to state claims against.
-/

/-! ## A145361.P4840162026728594385

`A107106(n+1)%2`
-/

namespace A145361.P4840162026728594385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107106 (n + 1)) 2

end

end A145361.P4840162026728594385

/-! ## A145361.P3813046829725700678

`A179380(n+1)%2`
-/

namespace A145361.P3813046829725700678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179380 (n + 1)) 2

end

end A145361.P3813046829725700678

/-! ## A145361.P15914761119008806821

`floor(1/A179318(n+1))`
-/

namespace A145361.P15914761119008806821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A179318 (n + 1) : ℚ)⌋

end

end A145361.P15914761119008806821

/-! ## A145361.P8026482587693553103

`round(1/A049085(n+1))`
-/

namespace A145361.P8026482587693553103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A049085 (n + 1) : ℚ))

end

end A145361.P8026482587693553103

/-! ## A145361.P10456806257122091328

`floor(acot(val(A036035(n+1), 8)))`
-/

namespace A145361.P10456806257122091328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (SequenceMachineLib.valuation (A036035 (n + 1)).toNat 8 : ℝ)⌋

end

end A145361.P10456806257122091328

/-! ## A145361.P2411096411308153338

`A014042(A049085(n+1))`
-/

namespace A145361.P2411096411308153338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014042 (A049085 (n + 1)).toNat

end

end A145361.P2411096411308153338

/-! ## A145361.P1752728421487227213

`A000086(A179318(n+1))`
-/

namespace A145361.P1752728421487227213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000086 (A179318 (n + 1)).toNat

end

end A145361.P1752728421487227213

/-! ## A145361.P9896794570372016005

`A065333(A185974(n+1))`
-/

namespace A145361.P9896794570372016005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065333 (A185974 (n + 1)).toNat

end

end A145361.P9896794570372016005

/-! ## A145361.P3118118463007970466

`A065333(A334438(n+1))`
-/

namespace A145361.P3118118463007970466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065333 (A334438 (n + 1)).toNat

end

end A145361.P3118118463007970466

/-! ## A145361.P9134727551331879356

`A101040(A334434(n+1))`
-/

namespace A145361.P9134727551331879356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101040 (A334434 (n + 1)).toNat

end

end A145361.P9134727551331879356

/-! ## A145361.P11670803692262580525

`A000045(C(2, A049085(n+1)))`
-/

namespace A145361.P11670803692262580525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 2 (A049085 (n + 1)).toNat)

end

end A145361.P11670803692262580525

/-! ## A145361.P18123785368740787643

`A000007(val(A036035(n+1), 8))`
-/

namespace A145361.P18123785368740787643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (SequenceMachineLib.valuation (A036035 (n + 1)).toNat 8)

end

end A145361.P18123785368740787643

/-! ## A145361.P7760276628295264465

`and(A001576(n), A107106(n+1))`
-/

namespace A145361.P7760276628295264465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001576 n) (A107106 (n + 1))

end

end A145361.P7760276628295264465

/-! ## A145361.P14052059325992946365

`and(A002064(n), A107106(n+1))`
-/

namespace A145361.P14052059325992946365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002064 n) (A107106 (n + 1))

end

end A145361.P14052059325992946365

/-! ## A145361.P17247205923060741928

`and(A006483(n), A107106(n+1))`
-/

namespace A145361.P17247205923060741928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006483 n) (A107106 (n + 1))

end

end A145361.P17247205923060741928

/-! ## A145361.P3645531142718787597

`and(A020515(n), A107106(n+1))`
-/

namespace A145361.P3645531142718787597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020515 n) (A107106 (n + 1))

end

end A145361.P3645531142718787597

/-! ## A145361.P12266822998169075816

`and(A020527(n), A107106(n+1))`
-/

namespace A145361.P12266822998169075816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020527 n) (A107106 (n + 1))

end

end A145361.P12266822998169075816

/-! ## A145361.P9238105823150677854

`and(A020737(n), A107106(n+1))`
-/

namespace A145361.P9238105823150677854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A107106 (n + 1))

end

end A145361.P9238105823150677854

/-! ## A145361.P16625568773680317400

`and(A027608(n), A107106(n+1))`
-/

namespace A145361.P16625568773680317400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027608 n) (A107106 (n + 1))

end

end A145361.P16625568773680317400

/-! ## A145361.P14443086041567899869

`and(A033622(n), A107106(n+1))`
-/

namespace A145361.P14443086041567899869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033622 n) (A107106 (n + 1))

end

end A145361.P14443086041567899869

/-!
# A145362: Lower triangular array S1hat(-1) read by rows, related to partition number array A145361.

The programs for A145362, the canonical program `A145362.P12024282433137715574` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145362 has offset 1).

The definition of A145362 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145362.P15929489882161412238

`ceil(sqrt(8*n+9))%2`
-/

namespace A145362.P15929489882161412238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.sqrt (8 * n + 9 : ℝ)⌉ 2

end

end A145362.P15929489882161412238

namespace A145362

/-- `ceil(sqrt(8*n+9))%2` -/
def P15929489882161412238.Spec : Prop :=
  ∀ n, P15929489882161412238.a n = A145362 (n + 1)

end A145362

/-! ## A145362.P4901071035607599537

`and(1, ceil(sqrt(8*n+9)))`
-/

namespace A145362.P4901071035607599537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌈Real.sqrt (8 * n + 9 : ℝ)⌉

end

end A145362.P4901071035607599537

namespace A145362

/-- `and(1, ceil(sqrt(8*n+9)))` -/
def P4901071035607599537.Spec : Prop :=
  ∀ n, P4901071035607599537.a n = A145362 (n + 1)

end A145362

/-! ## A145362.P16885846870136467018

`T(n-2,k-1)+(1-T(n-1,k))*T(n-1,k-1)` with `a(0)=1, a(1)=1`
-/

namespace A145362.P16885846870136467018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triUp2Left a n + (1 - SequenceMachineLib.triUp a n) * SequenceMachineLib.triUpLeft a n

end

end A145362.P16885846870136467018

namespace A145362

/-- `T(n-2,k-1)+(1-T(n-1,k))*T(n-1,k-1)` -/
def P16885846870136467018.Spec : Prop :=
  ∀ n, P16885846870136467018.a n = A145362 (n + 1)

end A145362

/-! ## A145362.P2887063821461748858

`T(n-1,k-1)+(1-T(n-1,k-1))*T(n-2,k-1)` with `a(0)=1, a(1)=1`
-/

namespace A145362.P2887063821461748858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triUpLeft a n + (1 - SequenceMachineLib.triUpLeft a n) * SequenceMachineLib.triUp2Left a n

end

end A145362.P2887063821461748858

namespace A145362

/-- `T(n-1,k-1)+(1-T(n-1,k-1))*T(n-2,k-1)` -/
def P2887063821461748858.Spec : Prop :=
  ∀ n, P2887063821461748858.a n = A145362 (n + 1)

end A145362

/-! ## A145362.P6827293525373173722

`T(n-2,k-1)+(1-T(n-1,k))*T(n,k-1)` with `a(0)=1, a(1)=1`
-/

namespace A145362.P6827293525373173722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triUp2Left a n + (1 - SequenceMachineLib.triUp a n) * SequenceMachineLib.triLeft a n

end

end A145362.P6827293525373173722

namespace A145362

/-- `T(n-2,k-1)+(1-T(n-1,k))*T(n,k-1)` -/
def P6827293525373173722.Spec : Prop :=
  ∀ n, P6827293525373173722.a n = A145362 (n + 1)

end A145362

/-! ## A145362.P9534068554949682042

`T(n-2,k-1)-(T(n-1,k)-1)*T(n-1,k-1)` with `a(0)=1, a(1)=1`
-/

namespace A145362.P9534068554949682042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triUp2Left a n - (SequenceMachineLib.triUp a n - 1) * SequenceMachineLib.triUpLeft a n

end

end A145362.P9534068554949682042

namespace A145362

/-- `T(n-2,k-1)-(T(n-1,k)-1)*T(n-1,k-1)` -/
def P9534068554949682042.Spec : Prop :=
  ∀ n, P9534068554949682042.a n = A145362 (n + 1)

end A145362

/-! ## A145362.P17823278094689524840

`T(n-1,k-1)-(T(n-1,k-1)-1)*T(n-2,k-1)` with `a(0)=1, a(1)=1`
-/

namespace A145362.P17823278094689524840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triUpLeft a n - (SequenceMachineLib.triUpLeft a n - 1) * SequenceMachineLib.triUp2Left a n

end

end A145362.P17823278094689524840

namespace A145362

/-- `T(n-1,k-1)-(T(n-1,k-1)-1)*T(n-2,k-1)` -/
def P17823278094689524840.Spec : Prop :=
  ∀ n, P17823278094689524840.a n = A145362 (n + 1)

end A145362

/-! ## A145362.P3902045758010445999

`T(n-2,k-1)-(T(n-1,k)-1)*T(n,k-1)` with `a(0)=1, a(1)=1`
-/

namespace A145362.P3902045758010445999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triUp2Left a n - (SequenceMachineLib.triUp a n - 1) * SequenceMachineLib.triLeft a n

end

end A145362.P3902045758010445999

namespace A145362

/-- `T(n-2,k-1)-(T(n-1,k)-1)*T(n,k-1)` -/
def P3902045758010445999.Spec : Prop :=
  ∀ n, P3902045758010445999.a n = A145362 (n + 1)

end A145362

/-! ## A145362.P16886703199646424271

`T(n,k-1)+(1-T(n,k-1))*T(n-2,k-1)` with `a(0)=1, a(1)=1`
-/

namespace A145362.P16886703199646424271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triLeft a n + (1 - SequenceMachineLib.triLeft a n) * SequenceMachineLib.triUp2Left a n

end

end A145362.P16886703199646424271

namespace A145362

/-- `T(n,k-1)+(1-T(n,k-1))*T(n-2,k-1)` -/
def P16886703199646424271.Spec : Prop :=
  ∀ n, P16886703199646424271.a n = A145362 (n + 1)

end A145362

/-! ## A145362.P10546460456997674244

`T(n,k-1)-(T(n,k-1)-1)*T(n-2,k-1)` with `a(0)=1, a(1)=1`
-/

namespace A145362.P10546460456997674244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triLeft a n - (SequenceMachineLib.triLeft a n - 1) * SequenceMachineLib.triUp2Left a n

end

end A145362.P10546460456997674244

namespace A145362

/-- `T(n,k-1)-(T(n,k-1)-1)*T(n-2,k-1)` -/
def P10546460456997674244.Spec : Prop :=
  ∀ n, P10546460456997674244.a n = A145362 (n + 1)

end A145362

/-! ## A145362.P618405594832397278

`round((n+1)/∑[char[∑[n]]]²)`
-/

namespace A145362.P618405594832397278
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) / (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ))

end

end A145362.P618405594832397278

namespace A145362

/-- `round((n+1)/∑[char[∑[n]]]²)` -/
def P618405594832397278.Spec : Prop :=
  ∀ n, P618405594832397278.a n = A145362 (n + 1)

end A145362

/-! ## A145362.P12024282433137715574

`gcd(2, floor(sqrt(8*(n+1))))-1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A145362

/-- `gcd(2, floor(sqrt(8*(n+1))))-1` -/
def P12024282433137715574.Spec : Prop :=
  ∀ n, P12024282433137715574.a n = A145362 (n + 1)

theorem P12024282433137715574.correct : P12024282433137715574.Spec := by
  intro n
  simp only [A145362, Nat.add_sub_cancel]

end A145362

/-! ## A145362.P5586628764014725219

`val(∏{p}[floor(sqrt(8*(n+1))), #], 2)`
-/

namespace A145362.P5586628764014725219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (8 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), p) 2

end

end A145362.P5586628764014725219

namespace A145362

/-- `val(∏{p}[floor(sqrt(8*(n+1))), #], 2)` -/
def P5586628764014725219.Spec : Prop :=
  ∀ n, (P5586628764014725219.a n : ℤ) = A145362 (n + 1)

end A145362

/-! ## A145362.P9502886257659294020

`floor(sqrt(A114114(n)))`
-/

namespace A145362.P9502886257659294020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A114114 n)

end

end A145362.P9502886257659294020

namespace A145362

/-- `floor(sqrt(A114114(n)))` -/
def P9502886257659294020.Spec : Prop :=
  ∀ n, P9502886257659294020.a n = A145362 (n + 1)

end A145362

/-! ## A145362.P2227468323422255826

`floor(ratio[A271709(n)])`
-/

namespace A145362.P2227468323422255826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A145362.P2227468323422255826

namespace A145362

/-- `floor(ratio[A271709(n)])` -/
def P2227468323422255826.Spec : Prop :=
  ∀ n, P2227468323422255826.a n = A145362 (n + 1)

end A145362

/-! ## A145362.P6633196003766996073

`1-abs(A072786(n))`
-/

namespace A145362.P6633196003766996073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - |A072786 n|

end

end A145362.P6633196003766996073

namespace A145362

/-- `1-abs(A072786(n))` -/
def P6633196003766996073.Spec : Prop :=
  ∀ n, P6633196003766996073.a n = A145362 (n + 1)

end A145362

/-! ## A145362.P13640560803319398092

`floor(1/A064645(n))`
-/

namespace A145362.P13640560803319398092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A064645 n : ℚ)⌋

end

end A145362.P13640560803319398092

namespace A145362

/-- `floor(1/A064645(n))` -/
def P13640560803319398092.Spec : Prop :=
  ∀ n, P13640560803319398092.a n = A145362 (n + 1)

end A145362

/-! ## A145362.P15306163126391540770

`char[lt[A114327(n), 2]]`
-/

namespace A145362.P15306163126391540770
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A145362.P15306163126391540770

namespace A145362

/-- `char[lt[A114327(n), 2]]` -/
def P15306163126391540770.Spec : Prop :=
  ∀ n, (P15306163126391540770.a n : ℤ) = A145362 (n + 1)

end A145362

/-! ## A145362.P12193958835515441326

`1-A080343(n+1)`
-/

namespace A145362.P12193958835515441326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A080343 (n + 1)

end

end A145362.P12193958835515441326

namespace A145362

/-- `1-A080343(n+1)` -/
def P12193958835515441326.Spec : Prop :=
  ∀ n, P12193958835515441326.a n = A145362 (n + 1)

end A145362

/-! ## A145362.P2378628558837081984

`C(2, A102430(n+2))`
-/

namespace A145362.P2378628558837081984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A102430 (n + 2)).toNat

end

end A145362.P2378628558837081984

namespace A145362

/-- `C(2, A102430(n+2))` -/
def P2378628558837081984.Spec : Prop :=
  ∀ n, (P2378628558837081984.a n : ℤ) = A145362 (n + 1)

end A145362

/-!
# A145363: Partition number array, called M31hat(-2).

The programs for A145363, there is no canonical definition to state claims against.
-/

/-! ## A145363.P2124278882892141463

`A144358(n+1)/A036040(n+1)`
-/

namespace A145363.P2124278882892141463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144358 (n + 1) : ℚ) / (A036040 (n + 1) : ℚ)

end

end A145363.P2124278882892141463

/-! ## A145363.P4608509609307669674

`and(A000194(A145369(n+1)), A144274(n+1))`
-/

namespace A145363.P4608509609307669674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000194 (A145369 (n + 1)).toNat) (A144274 (n + 1))

end

end A145363.P4608509609307669674

/-! ## A145363.P4680362469052111054

`and(gcd(8, A144274(n+1)), A145356(n+1))`
-/

namespace A145363.P4680362469052111054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.gcd 8 (A144274 (n + 1)) : ℤ) (A145356 (n + 1))

end

end A145363.P4680362469052111054

/-! ## A145363.P11038587835202773936

`and(A000194(A145369(n+1)), A145356(n+1))`
-/

namespace A145363.P11038587835202773936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000194 (A145369 (n + 1)).toNat) (A145356 (n + 1))

end

end A145363.P11038587835202773936

/-! ## A145363.P9624211467357221431

`and(A002487(A145366(n+1)), A145356(n+1))`
-/

namespace A145363.P9624211467357221431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002487 (A145366 (n + 1)).toNat) (A145356 (n + 1))

end

end A145363.P9624211467357221431

/-! ## A145363.P15535734702799105320

`and(A145356(n+1), A195080(A119441(n+1)))`
-/

namespace A145363.P15535734702799105320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A145356 (n + 1)) (A195080 (A119441 (n + 1)).toNat)

end

end A145363.P15535734702799105320

/-!
# A145364: Lower triangular array, called S1hat(-2), related to partition number array A145363.

The programs for A145364, there is no canonical definition to state claims against.
-/

/-! ## A145364.P12222829693377887918

`A004736(n+1)!%A301337(n+5)`
-/

namespace A145364.P12222829693377887918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial (A004736 (n + 1)).toNat : ℤ) (A301337 (n + 5))

end

end A145364.P12222829693377887918

/-! ## A145364.P8696185600372481587

`A028609(A269947(n+1)%A146205(n))`
-/

namespace A145364.P8696185600372481587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028609 (Int.tmod (A269947 (n + 1)) (A146205 n)).toNat

end

end A145364.P8696185600372481587

/-! ## A145364.P9029309362728723470

`and(A006530(A146205(n)), A144275(n+1))`
-/

namespace A145364.P9029309362728723470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006530 (A146205 n).toNat) (A144275 (n + 1))

end

end A145364.P9029309362728723470

/-! ## A145364.P13480851090949042964

`A038540(A134146(n+1)%∑[A146205(n)])`
-/

namespace A145364.P13480851090949042964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146205 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038540 (Int.tmod (A134146 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A145364.P13480851090949042964

/-!
# A145365: Row sums of triangle A145364 (S1hat(-2)) and partition array A145363 (M31hat(-2)).

The programs for A145365, there is no canonical definition to state claims against.
-/

/-! ## A145365.P16950357228185016917

`A077866(n+1)-∑[A077885(n)]`
-/

namespace A145365.P16950357228185016917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077866 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145365.P16950357228185016917

/-! ## A145365.P16465420843250736602

`A027383(n+3)-A200672(n+4)`
-/

namespace A145365.P16465420843250736602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 (n + 3) - A200672 (n + 4)

end

end A145365.P16465420843250736602

/-! ## A145365.P2714003112128654997

`A209721(n+5)-A029747(n+7)`
-/

namespace A145365.P2714003112128654997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209721 (n + 5) - A029747 (n + 7)

end

end A145365.P2714003112128654997

/-! ## A145365.P3412860270423546095

`A063759(n+4)-A004273(A029747(n+4))`
-/

namespace A145365.P3412860270423546095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063759 (n + 4) - A004273 (A029747 (n + 4)).toNat

end

end A145365.P3412860270423546095

/-! ## A145365.P5471493245777084580

`A029744(n+6)-A004273(A029747(n+4))`
-/

namespace A145365.P5471493245777084580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (n + 6) - A004273 (A029747 (n + 4)).toNat

end

end A145365.P5471493245777084580

/-!
# A145366: Partition number array, called M31hat(-3).

The programs for A145366, there is no canonical definition to state claims against.
-/

/-! ## A145366.P14827242508565910164

`A144877(n+1)/A036040(n+1)`
-/

namespace A145366.P14827242508565910164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144877 (n + 1) : ℚ) / (A036040 (n + 1) : ℚ)

end

end A145366.P14827242508565910164

/-! ## A145366.P14566111094512744143

`A134274(n+1)/A134273(n+1)*A144877(n+1)`
-/

namespace A145366.P14566111094512744143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134274 (n + 1) : ℚ) / (A134273 (n + 1) : ℚ) * (A144877 (n + 1) : ℚ)

end

end A145366.P14566111094512744143

/-! ## A145366.P11600678265151964556

`A144877(n+1)/A118759(A134273(n+1)/A134274(n+1))`
-/

namespace A145366.P11600678265151964556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144877 (n + 1) : ℚ) / (A118759 (SequenceMachineLib.roundAway ((A134273 (n + 1) : ℚ) / (A134274 (n + 1) : ℚ))).toNat : ℚ)

end

end A145366.P11600678265151964556

/-! ## A145366.P6605274935655560337

`A084681(A144279(n+1))`
-/

namespace A145366.P6605274935655560337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084681 (A144279 (n + 1)).toNat

end

end A145366.P6605274935655560337

/-! ## A145366.P209603080716518044

`A084681(A143173(n+1)/A036040(n+1))`
-/

namespace A145366.P209603080716518044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084681 (SequenceMachineLib.roundAway ((A143173 (n + 1) : ℚ) / (A036040 (n + 1) : ℚ))).toNat

end

end A145366.P209603080716518044

/-!
# A145368: Row sums of triangle A145367 (S1hat(-3)) and partition array A145366 (M31hat(-3)).

The programs for A145368, there is no canonical definition to state claims against.
-/

/-! ## A145368.P11787395503329528092

`A164903(A283583(n))`
-/

namespace A145368.P11787395503329528092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164903 (A283583 n).toNat

end

end A145368.P11787395503329528092

/-! ## A145368.P2162020521820383649

`A204028(∑[A092055(n)])`
-/

namespace A145368.P2162020521820383649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092055 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204028 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A145368.P2162020521820383649

/-!
# A145369: Partition number array, called M31hat(-4).

The programs for A145369, there is no canonical definition to state claims against.
-/

/-! ## A145369.P14914253458741383793

`A144878(n+1)/A036040(n+1)`
-/

namespace A145369.P14914253458741383793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144878 (n + 1) : ℚ) / (A036040 (n + 1) : ℚ)

end

end A145369.P14914253458741383793

/-! ## A145369.P5515578276094556727

`A144878(n+1)/A124794(A185974(n+1))`
-/

namespace A145369.P5515578276094556727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144878 (n + 1) : ℚ) / (A124794 (A185974 (n + 1)).toNat : ℚ)

end

end A145369.P5515578276094556727

/-! ## A145369.P15519643682100842155

`A107106(n+1)/A036039(n+1)*A144878(n+1)`
-/

namespace A145369.P15519643682100842155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107106 (n + 1) : ℚ) / (A036039 (n + 1) : ℚ) * (A144878 (n + 1) : ℚ)

end

end A145369.P15519643682100842155

/-! ## A145369.P9745005350604438530

`A098546(n+1)/A122454(n+1)*A144878(n+1)`
-/

namespace A145369.P9745005350604438530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098546 (n + 1) : ℚ) / (A122454 (n + 1) : ℚ) * (A144878 (n + 1) : ℚ)

end

end A145369.P9745005350604438530

/-! ## A145369.P17791420146105877463

`A144878(n+1)/floor(A049009(n+1)/A178888(n+1))`
-/

namespace A145369.P17791420146105877463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144878 (n + 1) : ℚ) / (⌊(A049009 (n + 1) : ℚ) / (A178888 (n + 1) : ℚ)⌋ : ℚ)

end

end A145369.P17791420146105877463

/-! ## A145369.P774689175497921071

`A144878(n+1)/A144353(n+1)*A144880(n+1)`
-/

namespace A145369.P774689175497921071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144878 (n + 1) : ℚ) / (A144353 (n + 1) : ℚ) * (A144880 (n + 1) : ℚ)

end

end A145369.P774689175497921071

/-!
# A145371: Row sums of triangle A145370 (S1hat(-4)) and partition array A145359 (M31hat(-4)).

The programs for A145371, there is no canonical definition to state claims against.
-/

/-! ## A145371.P17733148742807469563

`∑[A119791(∏[Δ[n²]])]`
-/

namespace A145371.P17733148742807469563
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119791 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145371.P17733148742807469563

/-!
# A145372: Partition number array, called M31hat(-5).

The programs for A145372, there is no canonical definition to state claims against.
-/

/-! ## A145372.P15652283523146887778

`A144879(n+1)/A036040(n+1)`
-/

namespace A145372.P15652283523146887778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144879 (n + 1) : ℚ) / (A036040 (n + 1) : ℚ)

end

end A145372.P15652283523146887778

/-! ## A145372.P17211380572313398081

`A144879(n+1)/A124794(A185974(n+1))`
-/

namespace A145372.P17211380572313398081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144879 (n + 1) : ℚ) / (A124794 (A185974 (n + 1)).toNat : ℚ)

end

end A145372.P17211380572313398081

/-! ## A145372.P11785694048275317766

`A107106(n+1)/A036039(n+1)*A144879(n+1)`
-/

namespace A145372.P11785694048275317766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107106 (n + 1) : ℚ) / (A036039 (n + 1) : ℚ) * (A144879 (n + 1) : ℚ)

end

end A145372.P11785694048275317766

/-! ## A145372.P9230944781059833923

`A098546(n+1)/A122454(n+1)*A144879(n+1)`
-/

namespace A145372.P9230944781059833923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098546 (n + 1) : ℚ) / (A122454 (n + 1) : ℚ) * (A144879 (n + 1) : ℚ)

end

end A145372.P9230944781059833923

/-! ## A145372.P4854017366210661041

`A144879(n+1)/floor(A049009(n+1)/A178888(n+1))`
-/

namespace A145372.P4854017366210661041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144879 (n + 1) : ℚ) / (⌊(A049009 (n + 1) : ℚ) / (A178888 (n + 1) : ℚ)⌋ : ℚ)

end

end A145372.P4854017366210661041

/-! ## A145372.P3545669234590711752

`A144879(n+1)/A144353(n+1)*A144880(n+1)`
-/

namespace A145372.P3545669234590711752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144879 (n + 1) : ℚ) / (A144353 (n + 1) : ℚ) * (A144880 (n + 1) : ℚ)

end

end A145372.P3545669234590711752

/-!
# A145374: Row sums of triangle A145373 (S1hat(-5)) and partition array A145372 (M31hat(-5)).

The programs for A145374, there is no canonical definition to state claims against.
-/

/-! ## A145374.P17734964201625683501

`A123755(xor(10, A038119(n+4)))`
-/

namespace A145374.P17734964201625683501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123755 (Int.xor 10 (A038119 (n + 4))).toNat

end

end A145374.P17734964201625683501

/-!
# A145377: a(n) = A002324(n) mod 2.

The programs for A145377, the canonical program `A145377.P12032856002733329322` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145377 has offset 1).

The definition of A145377 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002324, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A145377.P12032856002733329322

`A002324(n+1)%2`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A145377

/-- `A002324(n+1)%2` -/
def P12032856002733329322.Spec : Prop :=
  ∀ n, P12032856002733329322.a n = A145377 (n + 1)

theorem P12032856002733329322.correct : P12032856002733329322.Spec := by
  intro n
  simp only [A145377, Nat.add_sub_cancel]

end A145377

/-! ## A145377.P7483498716604053717

`A195198(n+1)`
-/

namespace A145377.P7483498716604053717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195198 (n + 1)

end

end A145377.P7483498716604053717

namespace A145377

/-- `A195198(n+1)` -/
def P7483498716604053717.Spec : Prop :=
  ∀ n, P7483498716604053717.a n = A145377 (n + 1)

end A145377

/-! ## A145377.P8515442294161253077

`∑{d}[n+1, #²%3]%2`
-/

namespace A145377.P8515442294161253077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d ^ 2 % 3) % 2

end

end A145377.P8515442294161253077

namespace A145377

/-- `∑{d}[n+1, #²%3]%2` -/
def P8515442294161253077.Spec : Prop :=
  ∀ n, (P8515442294161253077.a n : ℤ) = A145377 (n + 1)

end A145377

/-! ## A145377.P1569859289154507327

`∑{d}[n+1, round(sin(#%6))]%2`
-/

namespace A145377.P1569859289154507327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.roundAway (Real.sin ((d % 6 : ℕ) : ℝ))) 2

end

end A145377.P1569859289154507327

namespace A145377

/-- `∑{d}[n+1, round(sin(#%6))]%2` -/
def P1569859289154507327.Spec : Prop :=
  ∀ n, P1569859289154507327.a n = A145377 (n + 1)

end A145377

/-! ## A145377.P497378841526897867

`abs(A214295(n+1))`
-/

namespace A145377.P497378841526897867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A214295 (n + 1)|

end

end A145377.P497378841526897867

namespace A145377

/-- `abs(A214295(n+1))` -/
def P497378841526897867.Spec : Prop :=
  ∀ n, P497378841526897867.a n = A145377 (n + 1)

end A145377

/-! ## A145377.P17174343297989544871

`A035181(n+1)%2`
-/

namespace A145377.P17174343297989544871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035181 (n + 1)) 2

end

end A145377.P17174343297989544871

namespace A145377

/-- `A035181(n+1)%2` -/
def P17174343297989544871.Spec : Prop :=
  ∀ n, P17174343297989544871.a n = A145377 (n + 1)

end A145377

/-! ## A145377.P4719267844072661731

`A035186(n+1)%2`
-/

namespace A145377.P4719267844072661731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035186 (n + 1)) 2

end

end A145377.P4719267844072661731

namespace A145377

/-- `A035186(n+1)%2` -/
def P4719267844072661731.Spec : Prop :=
  ∀ n, P4719267844072661731.a n = A145377 (n + 1)

end A145377

/-! ## A145377.P4510749783304043057

`A035191(n+1)%2`
-/

namespace A145377.P4510749783304043057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035191 (n + 1)) 2

end

end A145377.P4510749783304043057

namespace A145377

/-- `A035191(n+1)%2` -/
def P4510749783304043057.Spec : Prop :=
  ∀ n, P4510749783304043057.a n = A145377 (n + 1)

end A145377

/-! ## A145377.P438297539684741727

`A096936(n+1)%2`
-/

namespace A145377.P438297539684741727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096936 (n + 1)) 2

end

end A145377.P438297539684741727

namespace A145377

/-- `A096936(n+1)%2` -/
def P438297539684741727.Spec : Prop :=
  ∀ n, P438297539684741727.a n = A145377 (n + 1)

end A145377

/-! ## A145377.P5001229949237447696

`A099751(n+1)%2`
-/

namespace A145377.P5001229949237447696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099751 (n + 1)) 2

end

end A145377.P5001229949237447696

namespace A145377

/-- `A099751(n+1)%2` -/
def P5001229949237447696.Spec : Prop :=
  ∀ n, P5001229949237447696.a n = A145377 (n + 1)

end A145377

/-! ## A145377.P8802260743551677484

`A122860(n+1)%2`
-/

namespace A145377.P8802260743551677484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122860 (n + 1)) 2

end

end A145377.P8802260743551677484

namespace A145377

/-- `A122860(n+1)%2` -/
def P8802260743551677484.Spec : Prop :=
  ∀ n, P8802260743551677484.a n = A145377 (n + 1)

end A145377

/-! ## A145377.P9408497805309765355

`A123331(n+1)%2`
-/

namespace A145377.P9408497805309765355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123331 (n + 1)) 2

end

end A145377.P9408497805309765355

namespace A145377

/-- `A123331(n+1)%2` -/
def P9408497805309765355.Spec : Prop :=
  ∀ n, P9408497805309765355.a n = A145377 (n + 1)

end A145377

/-! ## A145377.P11414241650224847802

`A317838(n+1)%2`
-/

namespace A145377.P11414241650224847802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317838 (n + 1)) 2

end

end A145377.P11414241650224847802

namespace A145377

/-- `A317838(n+1)%2` -/
def P11414241650224847802.Spec : Prop :=
  ∀ n, P11414241650224847802.a n = A145377 (n + 1)

end A145377

/-! ## A145377.P9681402210141308871

`A319442(n+1)%2`
-/

namespace A145377.P9681402210141308871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319442 (n + 1)) 2

end

end A145377.P9681402210141308871

namespace A145377

/-- `A319442(n+1)%2` -/
def P9681402210141308871.Spec : Prop :=
  ∀ n, P9681402210141308871.a n = A145377 (n + 1)

end A145377

/-! ## A145377.P6714913832726476389

`and(1, A113661(n+1))`
-/

namespace A145377.P6714913832726476389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A113661 (n + 1))

end

end A145377.P6714913832726476389

namespace A145377

/-- `and(1, A113661(n+1))` -/
def P6714913832726476389.Spec : Prop :=
  ∀ n, P6714913832726476389.a n = A145377 (n + 1)

end A145377

/-! ## A145377.P9282113856432795299

`and(1, A115979(n+1))`
-/

namespace A145377.P9282113856432795299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A115979 (n + 1))

end

end A145377.P9282113856432795299

namespace A145377

/-- `and(1, A115979(n+1))` -/
def P9282113856432795299.Spec : Prop :=
  ∀ n, P9282113856432795299.a n = A145377 (n + 1)

end A145377

/-! ## A145377.P1408654928156193413

`and(1, A139139(n+1))`
-/

namespace A145377.P1408654928156193413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A139139 (n + 1))

end

end A145377.P1408654928156193413

namespace A145377

/-- `and(1, A139139(n+1))` -/
def P1408654928156193413.Spec : Prop :=
  ∀ n, P1408654928156193413.a n = A145377 (n + 1)

end A145377

/-! ## A145377.P6557195671152159979

`and(1, A256232(n+1))`
-/

namespace A145377.P6557195671152159979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A256232 (n + 1))

end

end A145377.P6557195671152159979

namespace A145377

/-- `and(1, A256232(n+1))` -/
def P6557195671152159979.Spec : Prop :=
  ∀ n, P6557195671152159979.a n = A145377 (n + 1)

end A145377

/-! ## A145377.P4353123767450023484

`floor(log(A092205(n+1)))`
-/

namespace A145377.P4353123767450023484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A092205 (n + 1) : ℝ)⌋

end

end A145377.P4353123767450023484

namespace A145377

/-- `floor(log(A092205(n+1)))` -/
def P4353123767450023484.Spec : Prop :=
  ∀ n, P4353123767450023484.a n = A145377 (n + 1)

end A145377

/-! ## A145377.P12085231664788772367

`∑{d}[n+1, A359378(#)]`
-/

namespace A145377.P12085231664788772367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A359378 d

end

end A145377.P12085231664788772367

namespace A145377

/-- `∑{d}[n+1, A359378(#)]` -/
def P12085231664788772367.Spec : Prop :=
  ∀ n, P12085231664788772367.a n = A145377 (n + 1)

end A145377

/-!
# A145378: a(n) = Sum_{d|n} sigma(d) - 2*Sum_{2c|n} sigma(c) + 4*Sum_{4b|n} sigma(b).

The programs for A145378, the canonical program `A145378.P6152489767625416770` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145378 has offset 1).

The definition of A145378 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145378.P6152489767625416770

`∑{d}[n+1, A113184(#)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A145378

/-- `∑{d}[n+1, A113184(#)]` -/
def P6152489767625416770.Spec : Prop :=
  ∀ n, P6152489767625416770.a n = A145378 (n + 1)

theorem P6152489767625416770.correct : P6152489767625416770.Spec := by
  intro n
  simp only [A145378, Nat.add_sub_cancel]

end A145378

/-! ## A145378.P5025001468142956829

`∑{d}[n+1, abs(A002129(#))]`
-/

namespace A145378.P5025001468142956829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), |A002129 d|

end

end A145378.P5025001468142956829

namespace A145378

/-- `∑{d}[n+1, abs(A002129(#))]` -/
def P5025001468142956829.Spec : Prop :=
  ∀ n, P5025001468142956829.a n = A145378 (n + 1)

end A145378

/-! ## A145378.P7596419046738287001

`∑{d}[n+1, A080278(#)*A113262((n+1)/#)]`
-/

namespace A145378.P7596419046738287001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A080278 d * A113262 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A145378.P7596419046738287001

namespace A145378

/-- `∑{d}[n+1, A080278(#)*A113262((n+1)/#)]` -/
def P7596419046738287001.Spec : Prop :=
  ∀ n, P7596419046738287001.a n = A145378 (n + 1)

end A145378

/-! ## A145378.P723929505212330461

`A263827(A000265(n+1))-A327242(n+1)`
-/

namespace A145378.P723929505212330461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263827 (A000265 (n + 1)).toNat - A327242 (n + 1)

end

end A145378.P723929505212330461

namespace A145378

/-- `A263827(A000265(n+1))-A327242(n+1)` -/
def P723929505212330461.Spec : Prop :=
  ∀ n, P723929505212330461.a n = A145378 (n + 1)

end A145378

/-!
# A145379: Square array read by antidiagonals upwards: T(n,k) = 1 if n divides k, T(n,k) = 0 otherwise, n >= 1, k >= 2.

The programs for A145379, the canonical program `A145379.P6530098402621285829` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145379 has offset 1).

The definition of A145379 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145379.P15251309840253315856

`C((comp[∑[n]]-n)%(C(comp[∑[n]]-n, 2)-n), C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A145379.P15251309840253315856
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.tmod ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))).toNat ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f5 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat

end

end A145379.P15251309840253315856

namespace A145379

/-- `C((comp[∑[n]]-n)%(C(comp[∑[n]]-n, 2)-n), C(comp[∑[n]]-n, 2)-(n+1))` -/
def P15251309840253315856.Spec : Prop :=
  ∀ n, (P15251309840253315856.a n : ℤ) = A145379 (n + 1)

end A145379

/-! ## A145379.P6530098402621285829

`A077049(A005843(A004736(n+1))+n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A145379

/-- `A077049(A005843(A004736(n+1))+n)` -/
def P6530098402621285829.Spec : Prop :=
  ∀ n, P6530098402621285829.a n = A145379 (n + 1)

theorem P6530098402621285829.correct : P6530098402621285829.Spec := by
  intro n
  simp only [A145379, Nat.add_sub_cancel]

end A145379

/-! ## A145379.P16933664753792940449

`A077051(comp[∑[n]]+1)`
-/

namespace A145379.P16933664753792940449
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077051 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A145379.P16933664753792940449

namespace A145379

/-- `A077051(comp[∑[n]]+1)` -/
def P16933664753792940449.Spec : Prop :=
  ∀ n, P16933664753792940449.a n = A145379 (n + 1)

end A145379

/-! ## A145379.P17214358153785770697

`A113998(lt[3, A131818(n+1)])`
-/

namespace A145379.P17214358153785770697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A145379.P17214358153785770697

namespace A145379

/-- `A113998(lt[3, A131818(n+1)])` -/
def P17214358153785770697.Spec : Prop :=
  ∀ n, P17214358153785770697.a n = A145379 (n + 1)

end A145379

/-! ## A145379.P12584045355716967229

`A051731((n-comp[∑[n]])²-n)`
-/

namespace A145379.P12584045355716967229
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 - (n : ℤ)).toNat

end

end A145379.P12584045355716967229

namespace A145379

/-- `A051731((n-comp[∑[n]])²-n)` -/
def P12584045355716967229.Spec : Prop :=
  ∀ n, P12584045355716967229.a n = A145379 (n + 1)

end A145379

/-! ## A145379.P5445957948643957079

`A175992((n-comp[∑[n]])²-n)`
-/

namespace A145379.P5445957948643957079
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175992 (((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 - (n : ℤ)).toNat

end

end A145379.P5445957948643957079

namespace A145379

/-- `A175992((n-comp[∑[n]])²-n)` -/
def P5445957948643957079.Spec : Prop :=
  ∀ n, P5445957948643957079.a n = A145379 (n + 1)

end A145379

/-! ## A145379.P12527741890052628444

`round(acot(A227984(comp[∑[n]])))`
-/

namespace A145379.P12527741890052628444
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A227984 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℝ))

end

end A145379.P12527741890052628444

namespace A145379

/-- `round(acot(A227984(comp[∑[n]])))` -/
def P12527741890052628444.Spec : Prop :=
  ∀ n, P12527741890052628444.a n = A145379 (n + 1)

end A145379

/-! ## A145379.P9726733320521799053

`A143104(comp[∑[n]]+1)`
-/

namespace A145379.P9726733320521799053
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143104 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A145379.P9726733320521799053

namespace A145379

/-- `A143104(comp[∑[n]]+1)` -/
def P9726733320521799053.Spec : Prop :=
  ∀ n, P9726733320521799053.a n = A145379 (n + 1)

end A145379

/-! ## A145379.P11837615606038104764

`floor(1/A112543(comp[∑[n]]+1))`
-/

namespace A145379.P11837615606038104764
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A112543 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) : ℚ)⌋

end

end A145379.P11837615606038104764

namespace A145379

/-- `floor(1/A112543(comp[∑[n]]+1))` -/
def P11837615606038104764.Spec : Prop :=
  ∀ n, P11837615606038104764.a n = A145379 (n + 1)

end A145379

/-! ## A145379.P6185961412760287695

`A344884(A204985(n+1))`
-/

namespace A145379.P6185961412760287695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344884 (A204985 (n + 1)).toNat

end

end A145379.P6185961412760287695

namespace A145379

/-- `A344884(A204985(n+1))` -/
def P6185961412760287695.Spec : Prop :=
  ∀ n, P6185961412760287695.a n = A145379 (n + 1)

end A145379

/-!
# A145380: Prime narcissistic (or Armstrong) numbers.

The programs for A145380, there is no canonical definition to state claims against.
-/

/-! ## A145380.P18409367147127465864

`A306360(A244595(n+1))`
-/

namespace A145380.P18409367147127465864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306360 (A244595 (n + 1)).toNat

end

end A145380.P18409367147127465864

/-!
# A145382: Write the n-th prime in binary. Change all 0's to 1's and all 1's to 0's. a(n) is the decimal equivalent of the result.

The programs for A145382, the canonical program `A145382.P14950422092557236085` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145382 has offset 1).

The definition of A145382 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145382.P5944417825625671576

`A035327(p?[comp[n²]])`
-/

namespace A145382.P5944417825625671576
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A145382.P5944417825625671576

namespace A145382

/-- `A035327(p?[comp[n²]])` -/
def P5944417825625671576.Spec : Prop :=
  ∀ n, P5944417825625671576.a n = A145382 (n + 1)

end A145382

/-! ## A145382.P14950422092557236085

`A080079(p?[xor(1, n)+1])-1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A145382

/-- `A080079(p?[xor(1, n)+1])-1` -/
def P14950422092557236085.Spec : Prop :=
  ∀ n, P14950422092557236085.a n = A145382 (n + 1)

theorem P14950422092557236085.correct : P14950422092557236085.Spec := by
  intro n
  simp only [A145382, Nat.add_sub_cancel]

end A145382

/-! ## A145382.P2929653723771392567

`∑{d}[p?[xor(1, n)+1], A035327(#)]`
-/

namespace A145382.P2929653723771392567
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035327 d

end

end A145382.P2929653723771392567

namespace A145382

/-- `∑{d}[p?[xor(1, n)+1], A035327(#)]` -/
def P2929653723771392567.Spec : Prop :=
  ∀ n, P2929653723771392567.a n = A145382 (n + 1)

end A145382

/-! ## A145382.P15850688720629271164

`A035327(or(n%2, p?[xor(1, n)+1]))`
-/

namespace A145382.P15850688720629271164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (Nat.lor (n % 2) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A145382.P15850688720629271164

namespace A145382

/-- `A035327(or(n%2, p?[xor(1, n)+1]))` -/
def P15850688720629271164.Spec : Prop :=
  ∀ n, P15850688720629271164.a n = A145382 (n + 1)

end A145382

/-! ## A145382.P16300873498840954828

`A035327(lcm((-1)^n, p?[xor(1, n)+1]))`
-/

namespace A145382.P16300873498840954828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (Int.lcm ((-1) ^ n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ))

end

end A145382.P16300873498840954828

namespace A145382

/-- `A035327(lcm((-1)^n, p?[xor(1, n)+1]))` -/
def P16300873498840954828.Spec : Prop :=
  ∀ n, P16300873498840954828.a n = A145382 (n + 1)

end A145382

/-! ## A145382.P4309480353551480512

`p?[n-(-1)^n]-A006257(p?[n-(-1)^n])`
-/

namespace A145382.P4309480353551480512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A006257 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

end

end A145382.P4309480353551480512

namespace A145382

/-- `p?[n-(-1)^n]-A006257(p?[n-(-1)^n])` -/
def P4309480353551480512.Spec : Prop :=
  ∀ n, P4309480353551480512.a n = A145382 (n + 1)

end A145382

/-! ## A145382.P16486990980070128781

`A035327(Δ[A007504(n)])`
-/

namespace A145382.P16486990980070128781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (f1 (n + 1) - f1 n).toNat

end

end A145382.P16486990980070128781

namespace A145382

/-- `A035327(Δ[A007504(n)])` -/
def P16486990980070128781.Spec : Prop :=
  ∀ n, P16486990980070128781.a n = A145382 (n + 1)

end A145382

/-! ## A145382.P121276824199674465

`A035327(A000040(n+1))`
-/

namespace A145382.P121276824199674465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A000040 (n + 1)).toNat

end

end A145382.P121276824199674465

namespace A145382

/-- `A035327(A000040(n+1))` -/
def P121276824199674465.Spec : Prop :=
  ∀ n, P121276824199674465.a n = A145382 (n + 1)

end A145382

/-! ## A145382.P9500494704566486194

`A035327(A171577(n+1))`
-/

namespace A145382.P9500494704566486194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A171577 (n + 1)).toNat

end

end A145382.P9500494704566486194

namespace A145382

/-- `A035327(A171577(n+1))` -/
def P9500494704566486194.Spec : Prop :=
  ∀ n, P9500494704566486194.a n = A145382 (n + 1)

end A145382

/-! ## A145382.P8016411568053623095

`A292246(A006254(n+1))`
-/

namespace A145382.P8016411568053623095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292246 (A006254 (n + 1)).toNat

end

end A145382.P8016411568053623095

namespace A145382

/-- `A292246(A006254(n+1))` -/
def P8016411568053623095.Spec : Prop :=
  ∀ n, P8016411568053623095.a n = A145382 (n + 1)

end A145382

/-! ## A145382.P15994586787550977680

`A279645(A338524(n+1))`
-/

namespace A145382.P15994586787550977680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279645 (A338524 (n + 1)).toNat

end

end A145382.P15994586787550977680

namespace A145382

/-- `A279645(A338524(n+1))` -/
def P15994586787550977680.Spec : Prop :=
  ∀ n, P15994586787550977680.a n = A145382 (n + 1)

end A145382

/-! ## A145382.P9176702280230564158

`A035327(A008578(n+2))`
-/

namespace A145382.P9176702280230564158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A008578 (n + 2)).toNat

end

end A145382.P9176702280230564158

namespace A145382

/-- `A035327(A008578(n+2))` -/
def P9176702280230564158.Spec : Prop :=
  ∀ n, P9176702280230564158.a n = A145382 (n + 1)

end A145382

/-! ## A145382.P11165119162055150743

`A035327(A182986(n+2))`
-/

namespace A145382.P11165119162055150743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A182986 (n + 2)).toNat

end

end A145382.P11165119162055150743

namespace A145382

/-- `A035327(A182986(n+2))` -/
def P11165119162055150743.Spec : Prop :=
  ∀ n, P11165119162055150743.a n = A145382 (n + 1)

end A145382

/-! ## A145382.P13129476561715895742

`A292246(A111333(n+2))`
-/

namespace A145382.P13129476561715895742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292246 (A111333 (n + 2)).toNat

end

end A145382.P13129476561715895742

namespace A145382

/-- `A292246(A111333(n+2))` -/
def P13129476561715895742.Spec : Prop :=
  ∀ n, P13129476561715895742.a n = A145382 (n + 1)

end A145382

/-! ## A145382.P10644756455194572865

`A292246(A130291(n+2))`
-/

namespace A145382.P10644756455194572865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292246 (A130291 (n + 2)).toNat

end

end A145382.P10644756455194572865

namespace A145382

/-- `A292246(A130291(n+2))` -/
def P10644756455194572865.Spec : Prop :=
  ∀ n, P10644756455194572865.a n = A145382 (n + 1)

end A145382

/-! ## A145382.P8386243562476273873

`A000040(n+1)-A088147(n+1)`
-/

namespace A145382.P8386243562476273873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A088147 (n + 1)

end

end A145382.P8386243562476273873

namespace A145382

/-- `A000040(n+1)-A088147(n+1)` -/
def P8386243562476273873.Spec : Prop :=
  ∀ n, P8386243562476273873.a n = A145382 (n + 1)

end A145382

/-! ## A145382.P1911945147212620719

`A159006(n+1)-A265326(n+1)`
-/

namespace A145382.P1911945147212620719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159006 (n + 1) - A265326 (n + 1)

end

end A145382.P1911945147212620719

namespace A145382

/-- `A159006(n+1)-A265326(n+1)` -/
def P1911945147212620719.Spec : Prop :=
  ∀ n, P1911945147212620719.a n = A145382 (n + 1)

end A145382

/-! ## A145382.P9462487710476552701

`A035327(∑{p}[p?[round(8*n/7)]², #])`
-/

namespace A145382.P9462487710476552701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A145382.P9462487710476552701

namespace A145382

/-- `A035327(∑{p}[p?[round(8*n/7)]², #])` -/
def P9462487710476552701.Spec : Prop :=
  ∀ n, P9462487710476552701.a n = A145382 (n + 1)

end A145382

/-!
# A145383: Indices in A050791 for the subsequence A141326.

The programs for A145383, there is no canonical definition to state claims against.
-/

/-! ## A145383.P12489238647685784876

`∑[A145384(n+1)+1]`
-/

namespace A145383.P12489238647685784876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145384 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145383.P12489238647685784876

/-! ## A145383.P1715079212194636545

`a(n-1)+A000038(n)+A145384(n+1)+1` with `a(0)=1`
-/

namespace A145383.P1715079212194636545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A000038 n + (A145384 (n + 1) + 1))

end

end A145383.P1715079212194636545

/-! ## A145383.P3988757544387654754

`∑[A241173(∑[A188149(n+1)+1])+1]`
-/

namespace A145383.P3988757544387654754
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188149 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241173 (∑ j ∈ Finset.range (n + 1), f2 j).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145383.P3988757544387654754

/-!
# A145384: The number of terms of A050791 bracketed by successive terms of A141326.

The programs for A145384, there is no canonical definition to state claims against.
-/

/-! ## A145384.P6633768582563177041

`((Δ[A145383(abs(1-n)+1)]-1)*n²)%(n+1)`
-/

namespace A145384.P6633768582563177041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145383 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) - f1 n - 1) * (n ^ 2 : ℤ)) (n + 1 : ℤ)

end

end A145384.P6633768582563177041

/-! ## A145384.P17775355860837584720

`(Δ[A145383(A028310(n))]-1)%(n+1)`
-/

namespace A145384.P17775355860837584720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145383 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n - 1) (n + 1 : ℤ)

end

end A145384.P17775355860837584720

/-! ## A145384.P16041287205002610817

`(Δ[A145383(abs(1-n)+1)]-1)%A080036(n)`
-/

namespace A145384.P16041287205002610817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145383 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n - 1) (A080036 n)

end

end A145384.P16041287205002610817

/-! ## A145384.P10436079447407554672

`A057428(n)+Δ[A145383(A028310(n))]`
-/

namespace A145384.P10436079447407554672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145383 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (f1 (n + 1) - f1 n)

end

end A145384.P10436079447407554672

/-! ## A145384.P3246247408345021114

`Δ[A145383(A028310(n))]-A057427(n)`
-/

namespace A145384.P3246247408345021114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145383 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A057427 n

end

end A145384.P3246247408345021114

/-! ## A145384.P4618204932066007893

`A000007(n)+Δ[A145383(A028310(n))]-1`
-/

namespace A145384.P4618204932066007893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145383 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n - 1)

end

end A145384.P4618204932066007893

/-! ## A145384.P8470421397386468901

`Δ[A145383(A028310(n))]-A052409(n²+1)`
-/

namespace A145384.P8470421397386468901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145383 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A052409 (n ^ 2 + 1)

end

end A145384.P8470421397386468901

/-! ## A145384.P13966877690514700768

`A036987(2*n)+Δ[A145383(A028310(n))]-1`
-/

namespace A145384.P13966877690514700768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145383 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n) + (f1 (n + 1) - f1 n - 1)

end

end A145384.P13966877690514700768

/-! ## A145384.P17919242316647267649

`A145383(n+1)-(A145383(A028310(n))+A057427(n))`
-/

namespace A145384.P17919242316647267649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145383 (n + 1) - (A145383 (A028310 n).toNat + A057427 n)

end

end A145384.P17919242316647267649

/-! ## A145384.P1365371882120999496

`A145383(n+1)+A057428(n)-A145383(A028310(n))`
-/

namespace A145384.P1365371882120999496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145383 (n + 1) + (A057428 n - A145383 (A028310 n).toNat)

end

end A145384.P1365371882120999496

/-!
# A145386: a(1) = 1; a(n) = a(n-1)*(2*(n-1)+a(n-1)) for n > 1.

The programs for A145386, the canonical program `A145386.P9784246736224676441` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145386 has offset 1).

The definition of A145386 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*(2*n+a(n-1))` (program `A145386.P9784246736224676441`, by `A145386.P9784246736224676441.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A145386.P9784246736224676441

`a(n-1)*(2*n+a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A145386

/-- `a(n-1)*(2*n+a(n-1))` -/
def P9784246736224676441.Spec : Prop :=
  ∀ n, (P9784246736224676441.a n : ℤ) = A145386 (n + 1)

theorem P9784246736224676441.correct : P9784246736224676441.Spec := by
  intro n
  simp only [A145386, Nat.add_sub_cancel]

end A145386

/-! ## A145386.P3252280685856775922

`(a(n-1)+n)²-n²` with `a(0)=1`
-/

namespace A145386.P3252280685856775922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + (n : ℤ)) ^ 2 - (n ^ 2 : ℤ)

end

end A145386.P3252280685856775922

namespace A145386

/-- `(a(n-1)+n)²-n²` -/
def P3252280685856775922.Spec : Prop :=
  ∀ n, P3252280685856775922.a n = A145386 (n + 1)

end A145386

/-! ## A145386.P13823485538281132665

`(3*n-(n-a(n-1)))*a(n-1)` with `a(0)=1`
-/

namespace A145386.P13823485538281132665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((3 * n : ℤ) - ((n : ℤ) - a (n - 1))) * a (n - 1)

end

end A145386.P13823485538281132665

namespace A145386

/-- `(3*n-(n-a(n-1)))*a(n-1)` -/
def P13823485538281132665.Spec : Prop :=
  ∀ n, P13823485538281132665.a n = A145386 (n + 1)

end A145386

/-! ## A145386.P16515228623598129723

`(A004277(n)+a(n-1))*a(n-1)` with `a(0)=1`
-/

namespace A145386.P16515228623598129723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A004277 n + a (n - 1)) * a (n - 1)

end

end A145386.P16515228623598129723

namespace A145386

/-- `(A004277(n)+a(n-1))*a(n-1)` -/
def P16515228623598129723.Spec : Prop :=
  ∀ n, P16515228623598129723.a n = A145386 (n + 1)

end A145386

/-!
# A145387: Natural numbers n such that n-1 and n+1 are prime, also (sum of digits) + 1 and (sum of digits) - 1 is prime.

The programs for A145387, the canonical program `A145387.P17092783934499524427` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145387 has offset 1).

The definition of A145387 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145387.P5007920531725265776

`A038500(2^A090329(n+1))+p?[A046704(n+1)-2]`
-/

namespace A145387.P5007920531725265776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A090329 (n + 1) : ℤ))).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145387.P5007920531725265776

namespace A145387

/-- `A038500(2^A090329(n+1))+p?[A046704(n+1)-2]` -/
def P5007920531725265776.Spec : Prop :=
  ∀ n, P5007920531725265776.a n = A145387 (n + 1)

end A145387

/-! ## A145387.P4113767959113094226

`A091090(2^A090329(n+1))+p?[A046704(n+1)-2]`
-/

namespace A145387.P4113767959113094226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A090329 (n + 1) : ℤ))).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145387.P4113767959113094226

namespace A145387

/-- `A091090(2^A090329(n+1))+p?[A046704(n+1)-2]` -/
def P4113767959113094226.Spec : Prop :=
  ∀ n, P4113767959113094226.a n = A145387 (n + 1)

end A145387

/-! ## A145387.P9166841567318922843

`A000688(A215132(n+1))+p?[A046704(n+1)-2]`
-/

namespace A145387.P9166841567318922843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A215132 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145387.P9166841567318922843

namespace A145387

/-- `A000688(A215132(n+1))+p?[A046704(n+1)-2]` -/
def P9166841567318922843.Spec : Prop :=
  ∀ n, P9166841567318922843.a n = A145387 (n + 1)

end A145387

/-! ## A145387.P7304721393710125654

`∩[A014574(n+1), A129630(n+1)]`
-/

namespace A145387.P7304721393710125654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145387.P7304721393710125654

namespace A145387

/-- `∩[A014574(n+1), A129630(n+1)]` -/
def P7304721393710125654.Spec : Prop :=
  ∀ n, (P7304721393710125654.a n : ℤ) = A145387 (n + 1)

end A145387

/-! ## A145387.P17092783934499524427

`A348937(p?[A046704(n+1)-2])`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A145387

/-- `A348937(p?[A046704(n+1)-2])` -/
def P17092783934499524427.Spec : Prop :=
  ∀ n, P17092783934499524427.a n = A145387 (n + 1)

theorem P17092783934499524427.correct : P17092783934499524427.Spec := by
  intro n
  simp only [A145387, Nat.add_sub_cancel]

end A145387

/-! ## A145387.P10095051041287354031

`A000688(A215101(n+1))+p?[A046704(n+1)-2]`
-/

namespace A145387.P10095051041287354031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A215101 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145387.P10095051041287354031

namespace A145387

/-- `A000688(A215101(n+1))+p?[A046704(n+1)-2]` -/
def P10095051041287354031.Spec : Prop :=
  ∀ n, P10095051041287354031.a n = A145387 (n + 1)

end A145387

/-! ## A145387.P18181221709543012536

`A000593(p?[A046704(n+1)-2])`
-/

namespace A145387.P18181221709543012536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A145387.P18181221709543012536

namespace A145387

/-- `A000593(p?[A046704(n+1)-2])` -/
def P18181221709543012536.Spec : Prop :=
  ∀ n, P18181221709543012536.a n = A145387 (n + 1)

end A145387

/-! ## A145387.P9917664740723899703

`A014681(p?[A046704(n+1)-2])`
-/

namespace A145387.P9917664740723899703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A145387.P9917664740723899703

namespace A145387

/-- `A014681(p?[A046704(n+1)-2])` -/
def P9917664740723899703.Spec : Prop :=
  ∀ n, P9917664740723899703.a n = A145387 (n + 1)

end A145387

/-! ## A145387.P12368766899975168808

`A017665(p?[A046704(n+1)-2])`
-/

namespace A145387.P12368766899975168808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A145387.P12368766899975168808

namespace A145387

/-- `A017665(p?[A046704(n+1)-2])` -/
def P12368766899975168808.Spec : Prop :=
  ∀ n, P12368766899975168808.a n = A145387 (n + 1)

end A145387

/-! ## A145387.P5190269361589576165

`A023888(p?[A046704(n+1)-2])`
-/

namespace A145387.P5190269361589576165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023888 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A145387.P5190269361589576165

namespace A145387

/-- `A023888(p?[A046704(n+1)-2])` -/
def P5190269361589576165.Spec : Prop :=
  ∀ n, P5190269361589576165.a n = A145387 (n + 1)

end A145387

/-!
# A145388: Sum of (k,n)_* for k=1,2,...,n, where (k,n)_* is the greatest divisor of k which is a unitary divisor of n.

The programs for A145388, the canonical program `A145388.P4550273155118403063` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145388 has offset 1).

The definition of A145388 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145388.P14526803047808392842

`∑{d}[n+1, abs(A023900(#))*(n+1)/#]`
-/

namespace A145388.P14526803047808392842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (|A023900 d| * (n + 1 : ℤ) : ℚ) / (d : ℚ)

end

end A145388.P14526803047808392842

namespace A145388

/-- `∑{d}[n+1, abs(A023900(#))*(n+1)/#]` -/
def P14526803047808392842.Spec : Prop :=
  ∀ n, P14526803047808392842.a n = (A145388 (n + 1) : ℚ)

end A145388

/-! ## A145388.P4550273155118403063

`∑{d}[n+1, A000010(#)*A034444(#)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A145388

/-- `∑{d}[n+1, A000010(#)*A034444(#)]` -/
def P4550273155118403063.Spec : Prop :=
  ∀ n, P4550273155118403063.a n = A145388 (n + 1)

theorem P4550273155118403063.correct : P4550273155118403063.Spec := by
  intro n
  simp only [A145388, Nat.add_sub_cancel]

end A145388

/-! ## A145388.P11195314797546770617

`∑{#}[n, A034444((n+1)/gcd(n+1, #))]`
-/

namespace A145388.P11195314797546770617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A034444 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.gcd (n + 1) k : ℚ))).toNat

end

end A145388.P11195314797546770617

namespace A145388

/-- `∑{#}[n, A034444((n+1)/gcd(n+1, #))]` -/
def P11195314797546770617.Spec : Prop :=
  ∀ n, P11195314797546770617.a n = A145388 (n + 1)

end A145388

/-! ## A145388.P4006960786848265282

`∑{d}[n+1, #*A173557((n+1)/#)]`
-/

namespace A145388.P4006960786848265282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A173557 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A145388.P4006960786848265282

namespace A145388

/-- `∑{d}[n+1, #*A173557((n+1)/#)]` -/
def P4006960786848265282.Spec : Prop :=
  ∀ n, P4006960786848265282.a n = A145388 (n + 1)

end A145388

/-! ## A145388.P5432194978496946212

`∑{d}[A003557(n+1), A078439((n+1)/#)]`
-/

namespace A145388.P5432194978496946212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A078439 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A145388.P5432194978496946212

namespace A145388

/-- `∑{d}[A003557(n+1), A078439((n+1)/#)]` -/
def P5432194978496946212.Spec : Prop :=
  ∀ n, P5432194978496946212.a n = A145388 (n + 1)

end A145388

/-! ## A145388.P17887996432269222603

`∑{d}[n+1, A023900(#)*A384531((n+1)/#)]`
-/

namespace A145388.P17887996432269222603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A384531 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A145388.P17887996432269222603

namespace A145388

/-- `∑{d}[n+1, A023900(#)*A384531((n+1)/#)]` -/
def P17887996432269222603.Spec : Prop :=
  ∀ n, P17887996432269222603.a n = A145388 (n + 1)

end A145388

/-! ## A145388.P13623226060891254263

`∑{d}[n+1, A000005(A007947(#))*A000010(#)]`
-/

namespace A145388.P13623226060891254263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 (A007947 d).toNat * A000010 d

end

end A145388.P13623226060891254263

namespace A145388

/-- `∑{d}[n+1, A000005(A007947(#))*A000010(#)]` -/
def P13623226060891254263.Spec : Prop :=
  ∀ n, P13623226060891254263.a n = A145388 (n + 1)

end A145388

/-! ## A145388.P11754972666076735117

`∑{d}[(n+1)², A000010(A019554(#))]`
-/

namespace A145388.P11754972666076735117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (A019554 d).toNat

end

end A145388.P11754972666076735117

namespace A145388

/-- `∑{d}[(n+1)², A000010(A019554(#))]` -/
def P11754972666076735117.Spec : Prop :=
  ∀ n, P11754972666076735117.a n = A145388 (n + 1)

end A145388

/-!
# A145389: Digital roots of triangular numbers.

The programs for A145389, the canonical program `A145389.P11585340278673087355` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145389 has offset 0).

The definition of A145389 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145389.P11585340278673087355

`dr(n*(n+1)/2)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A145389

/-- `dr(n*(n+1)/2)` -/
def P11585340278673087355.Spec : Prop :=
  ∀ n, (P11585340278673087355.a n : ℤ) = A145389 n

theorem P11585340278673087355.correct : P11585340278673087355.Spec := by
  intro n
  simp only [A145389]

end A145389

/-!
# A145390: Number of sublattices of index n of a centered rectangular lattice fixed by a reflection.

The programs for A145390, the canonical program `A145390.P15585800402733348238` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145390 has offset 1).

The definition of A145390 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145390.P15585800402733348238

`A112329(n+1)+A183063(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A145390

/-- `A112329(n+1)+A183063(n+1)` -/
def P15585800402733348238.Spec : Prop :=
  ∀ n, P15585800402733348238.a n = A145390 (n + 1)

theorem P15585800402733348238.correct : P15585800402733348238.Spec := by
  intro n
  simp only [A145390, Nat.add_sub_cancel]

end A145390

/-! ## A145390.P9770246597412991101

`2*A145391(n+1)-A000203(n+1)`
-/

namespace A145390.P9770246597412991101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A145391 (n + 1) - A000203 (n + 1)

end

end A145390.P9770246597412991101

namespace A145390

/-- `2*A145391(n+1)-A000203(n+1)` -/
def P9770246597412991101.Spec : Prop :=
  ∀ n, P9770246597412991101.a n = A145390 (n + 1)

end A145390

/-! ## A145390.P8332240474922815203

`∑{d}[n+1, A010052(#)*A060594((n+1)/#)]`
-/

namespace A145390.P8332240474922815203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010052 d * A060594 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A145390.P8332240474922815203

namespace A145390

/-- `∑{d}[n+1, A010052(#)*A060594((n+1)/#)]` -/
def P8332240474922815203.Spec : Prop :=
  ∀ n, P8332240474922815203.a n = A145390 (n + 1)

end A145390

/-! ## A145390.P6258699717790665387

`∑{d}[n+1, A092089(#)*A008836((n+1)/#)]`
-/

namespace A145390.P6258699717790665387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A092089 d * A008836 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A145390.P6258699717790665387

namespace A145390

/-- `∑{d}[n+1, A092089(#)*A008836((n+1)/#)]` -/
def P6258699717790665387.Spec : Prop :=
  ∀ n, P6258699717790665387.a n = A145390 (n + 1)

end A145390

/-! ## A145390.P14729281796818011591

`∑{d}[n+1, A046951(#)*A114643((n+1)/#)]`
-/

namespace A145390.P14729281796818011591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046951 d * A114643 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A145390.P14729281796818011591

namespace A145390

/-- `∑{d}[n+1, A046951(#)*A114643((n+1)/#)]` -/
def P14729281796818011591.Spec : Prop :=
  ∀ n, P14729281796818011591.a n = A145390 (n + 1)

end A145390

/-! ## A145390.P18337850367666039653

`∑{d}[n+1, A098178(#)]`
-/

namespace A145390.P18337850367666039653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A098178 d

end

end A145390.P18337850367666039653

namespace A145390

/-- `∑{d}[n+1, A098178(#)]` -/
def P18337850367666039653.Spec : Prop :=
  ∀ n, P18337850367666039653.a n = A145390 (n + 1)

end A145390

/-! ## A145390.P2185144025007394465

`∑{d}[gcd(n+1, ∑[n]), gcd(2, #)]`
-/

namespace A145390.P2185144025007394465
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.gcd 2 d

end

end A145390.P2185144025007394465

namespace A145390

/-- `∑{d}[gcd(n+1, ∑[n]), gcd(2, #)]` -/
def P2185144025007394465.Spec : Prop :=
  ∀ n, (P2185144025007394465.a n : ℤ) = A145390 (n + 1)

end A145390

/-! ## A145390.P6151353381866705245

`A069735(A026741(n+1))`
-/

namespace A145390.P6151353381866705245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069735 (A026741 (n + 1)).toNat

end

end A145390.P6151353381866705245

namespace A145390

/-- `A069735(A026741(n+1))` -/
def P6151353381866705245.Spec : Prop :=
  ∀ n, P6151353381866705245.a n = A145390 (n + 1)

end A145390

/-! ## A145390.P5402769650927617615

`A069735((n+1)/A000034(n))`
-/

namespace A145390.P5402769650927617615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069735 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000034 n : ℚ))).toNat

end

end A145390.P5402769650927617615

namespace A145390

/-- `A069735((n+1)/A000034(n))` -/
def P5402769650927617615.Spec : Prop :=
  ∀ n, P5402769650927617615.a n = A145390 (n + 1)

end A145390

/-! ## A145390.P4895234205597375857

`A069735((n+1)/A040001(n+1))`
-/

namespace A145390.P4895234205597375857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069735 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A040001 (n + 1) : ℚ))).toNat

end

end A145390.P4895234205597375857

namespace A145390

/-- `A069735((n+1)/A040001(n+1))` -/
def P4895234205597375857.Spec : Prop :=
  ∀ n, P4895234205597375857.a n = A145390 (n + 1)

end A145390

/-! ## A145390.P9107022572263527847

`A183063(n+1)+abs(A048272(n+1))`
-/

namespace A145390.P9107022572263527847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (n + 1) + |A048272 (n + 1)|

end

end A145390.P9107022572263527847

namespace A145390

/-- `A183063(n+1)+abs(A048272(n+1))` -/
def P9107022572263527847.Spec : Prop :=
  ∀ n, P9107022572263527847.a n = A145390 (n + 1)

end A145390

/-! ## A145390.P14946899559323681511

`2*A003051(n+1)-A145394(n+1)`
-/

namespace A145390.P14946899559323681511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003051 (n + 1) - A145394 (n + 1)

end

end A145390.P14946899559323681511

namespace A145390

/-- `2*A003051(n+1)-A145394(n+1)` -/
def P14946899559323681511.Spec : Prop :=
  ∀ n, P14946899559323681511.a n = A145390 (n + 1)

end A145390

/-! ## A145390.P1350570412815874995

`A183063(n+1)+A094572(n+1)/2`
-/

namespace A145390.P1350570412815874995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183063 (n + 1) : ℚ) + (A094572 (n + 1) : ℚ) / 2

end

end A145390.P1350570412815874995

namespace A145390

/-- `A183063(n+1)+A094572(n+1)/2` -/
def P1350570412815874995.Spec : Prop :=
  ∀ n, P1350570412815874995.a n = (A145390 (n + 1) : ℚ)

theorem P1350570412815874995.correct : P1350570412815874995.Spec := by
  intro n
  simp only [A145390, Nat.add_sub_cancel, A145390.P1350570412815874995.a, A145390.P15585800402733348238.a, A094572, A094572.P824634437400607663.a, A112329, A112329.P3260148740044455417.f1, A112329.P3260148740044455417.a, A183063, A183063.P14549643650991336837.a, A062011, A062011.P17525320077853469406.a, A099777, A099777.P11792433152824821401.a, A140670, A140670.P15032429316490350293.a, A000005, A000005.P16091521709108585461.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A006519, A006519.P10435570611646570274.a, A059841, A059841.P7264174615531153985.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A145390

/-! ## A145390.P9816511767604196228

`2*A320111(n+1)-A001227(n+1)`
-/

namespace A145390.P9816511767604196228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A320111 (n + 1) - A001227 (n + 1)

end

end A145390.P9816511767604196228

namespace A145390

/-- `2*A320111(n+1)-A001227(n+1)` -/
def P9816511767604196228.Spec : Prop :=
  ∀ n, P9816511767604196228.a n = A145390 (n + 1)

end A145390

/-! ## A145390.P13261864295514973136

`abs(A183063(n+1)-A325937(n+1))+1`
-/

namespace A145390.P13261864295514973136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A183063 (n + 1) - A325937 (n + 1)| + 1

end

end A145390.P13261864295514973136

namespace A145390

/-- `abs(A183063(n+1)-A325937(n+1))+1` -/
def P13261864295514973136.Spec : Prop :=
  ∀ n, P13261864295514973136.a n = A145390 (n + 1)

end A145390

/-! ## A145390.P1816088955753266438

`abs(2*A048272(n+1)-A001227(n+1))`
-/

namespace A145390.P1816088955753266438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A048272 (n + 1) - A001227 (n + 1)|

end

end A145390.P1816088955753266438

namespace A145390

/-- `abs(2*A048272(n+1)-A001227(n+1))` -/
def P1816088955753266438.Spec : Prop :=
  ∀ n, P1816088955753266438.a n = A145390 (n + 1)

end A145390

/-! ## A145390.P6336764373374533835

`∑{d}[n+1, A008836(#)*A092089((n+1)/#)]`
-/

namespace A145390.P6336764373374533835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A092089 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A145390.P6336764373374533835

namespace A145390

/-- `∑{d}[n+1, A008836(#)*A092089((n+1)/#)]` -/
def P6336764373374533835.Spec : Prop :=
  ∀ n, P6336764373374533835.a n = A145390 (n + 1)

end A145390

/-! ## A145390.P11863022409600580897

`A320111(n+1)+A299480(A093178(n)+1)`
-/

namespace A145390.P11863022409600580897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (n + 1) + A299480 (A093178 n + 1).toNat

end

end A145390.P11863022409600580897

namespace A145390

/-- `A320111(n+1)+A299480(A093178(n)+1)` -/
def P11863022409600580897.Spec : Prop :=
  ∀ n, P11863022409600580897.a n = A145390 (n + 1)

end A145390

/-! ## A145390.P16499759542814994605

`2*A320111(n+1)-A320111(A000265(n+1))`
-/

namespace A145390.P16499759542814994605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A320111 (n + 1) - A320111 (A000265 (n + 1)).toNat

end

end A145390.P16499759542814994605

namespace A145390

/-- `2*A320111(n+1)-A320111(A000265(n+1))` -/
def P16499759542814994605.Spec : Prop :=
  ∀ n, P16499759542814994605.a n = A145390 (n + 1)

end A145390

/-! ## A145390.P2542524722359755639

`A000005(n+1)+A112329(n+1)-A001227(n+1)`
-/

namespace A145390.P2542524722359755639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A112329 (n + 1) - A001227 (n + 1))

end

end A145390.P2542524722359755639

namespace A145390

/-- `A000005(n+1)+A112329(n+1)-A001227(n+1)` -/
def P2542524722359755639.Spec : Prop :=
  ∀ n, P2542524722359755639.a n = A145390 (n + 1)

theorem P2542524722359755639.correct : P2542524722359755639.Spec := by
  intro n
  simp only [A145390, Nat.add_sub_cancel, A145390.P2542524722359755639.a, A145390.P15585800402733348238.a, A000005, A000005.P16091521709108585461.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A112329, A112329.P3260148740044455417.f1, A112329.P3260148740044455417.a, A183063, A183063.P14549643650991336837.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A062011, A062011.P17525320077853469406.a, A099777, A099777.P11792433152824821401.a, A140670, A140670.P15032429316490350293.a, A006519, A006519.P10435570611646570274.a, A059841, A059841.P7264174615531153985.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A145390

/-!
# A145391: Number of inequivalent sublattices of index n in centered rectangular lattice.

The programs for A145391, the canonical program `A145391.P5707543150065796905` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145391 has offset 1).

The definition of A145391 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145391.P5707543150065796905

`(A000203(n+1)+A145390(n+1))/2`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A145391

/-- `(A000203(n+1)+A145390(n+1))/2` -/
def P5707543150065796905.Spec : Prop :=
  ∀ n, P5707543150065796905.a n = (A145391 (n + 1) : ℚ)

end A145391

/-! ## A145391.P3317859177891179136

`∑{d}[n+1, A004525(#+1)]`
-/

namespace A145391.P3317859177891179136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A004525 (d + 1)

end

end A145391.P3317859177891179136

namespace A145391

/-- `∑{d}[n+1, A004525(#+1)]` -/
def P3317859177891179136.Spec : Prop :=
  ∀ n, P3317859177891179136.a n = A145391 (n + 1)

end A145391

/-! ## A145391.P11083683105405211433

`A320111(n+1)+A086670(n+1)`
-/

namespace A145391.P11083683105405211433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (n + 1) + A086670 (n + 1)

end

end A145391.P11083683105405211433

namespace A145391

/-- `A320111(n+1)+A086670(n+1)` -/
def P11083683105405211433.Spec : Prop :=
  ∀ n, P11083683105405211433.a n = A145391 (n + 1)

end A145391

/-! ## A145391.P1479731247580315217

`A003051(n+1)+A145394(n+1)-A002324(n+1)`
-/

namespace A145391.P1479731247580315217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003051 (n + 1) + (A145394 (n + 1) - A002324 (n + 1))

end

end A145391.P1479731247580315217

namespace A145391

/-- `A003051(n+1)+A145394(n+1)-A002324(n+1)` -/
def P1479731247580315217.Spec : Prop :=
  ∀ n, P1479731247580315217.a n = A145391 (n + 1)

end A145391

/-! ## A145391.P14008079602098829654

`∑{d}[n+1, A004524(#)+1]`
-/

namespace A145391.P14008079602098829654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A004524 d + 1)

end

end A145391.P14008079602098829654

namespace A145391

/-- `∑{d}[n+1, A004524(#)+1]` -/
def P14008079602098829654.Spec : Prop :=
  ∀ n, P14008079602098829654.a n = A145391 (n + 1)

end A145391

/-! ## A145391.P11132826702917620468

`A069734(n+1)-A001227(n+1)*A059841(n+1)`
-/

namespace A145391.P11132826702917620468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069734 (n + 1) - A001227 (n + 1) * A059841 (n + 1)

end

end A145391.P11132826702917620468

namespace A145391

/-- `A069734(n+1)-A001227(n+1)*A059841(n+1)` -/
def P11132826702917620468.Spec : Prop :=
  ∀ n, P11132826702917620468.a n = A145391 (n + 1)

end A145391

/-! ## A145391.P8739861955549198737

`A004525(A145390(n+1)+A000203(n+1))`
-/

namespace A145391.P8739861955549198737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A145390 (n + 1) + A000203 (n + 1)).toNat

end

end A145391.P8739861955549198737

namespace A145391

/-- `A004525(A145390(n+1)+A000203(n+1))` -/
def P8739861955549198737.Spec : Prop :=
  ∀ n, P8739861955549198737.a n = A145391 (n + 1)

end A145391

/-!
# A145392: Number of inequivalent sublattices of index n in square lattice, where two sublattices are considered equivalent if one can be rotated by a multiple of Pi/2 to give the other.

The programs for A145392, the canonical program `A145392.P1031704144359577095` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145392 has offset 1).

The definition of A145392 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145392.P12301005850268364408

`∑{d}[n+1, A004525(#)]`
-/

namespace A145392.P12301005850268364408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A004525 d

end

end A145392.P12301005850268364408

namespace A145392

/-- `∑{d}[n+1, A004525(#)]` -/
def P12301005850268364408.Spec : Prop :=
  ∀ n, P12301005850268364408.a n = A145392 (n + 1)

end A145392

/-! ## A145392.P1031704144359577095

`(A000203(n+1)+A002654(n+1))/2`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A145392

/-- `(A000203(n+1)+A002654(n+1))/2` -/
def P1031704144359577095.Spec : Prop :=
  ∀ n, P1031704144359577095.a n = (A145392 (n + 1) : ℚ)

end A145392

/-! ## A145392.P5444998280830368383

`∑{d}[n+1, A004524(#-1)+1]`
-/

namespace A145392.P5444998280830368383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A004524 (d - 1) + 1)

end

end A145392.P5444998280830368383

namespace A145392

/-- `∑{d}[n+1, A004524(#-1)+1]` -/
def P5444998280830368383.Spec : Prop :=
  ∀ n, P5444998280830368383.a n = A145392 (n + 1)

end A145392

/-! ## A145392.P2573894779112986939

`A086670(n+1)+A001826(n+1)`
-/

namespace A145392.P2573894779112986939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086670 (n + 1) + A001826 (n + 1)

end

end A145392.P2573894779112986939

namespace A145392

/-- `A086670(n+1)+A001826(n+1)` -/
def P2573894779112986939.Spec : Prop :=
  ∀ n, P2573894779112986939.a n = A145392 (n + 1)

end A145392

/-! ## A145392.P6053974826377386822

`A014682(A002654(n+1)+A000203(n+1))`
-/

namespace A145392.P6053974826377386822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A002654 (n + 1) + A000203 (n + 1)).toNat

end

end A145392.P6053974826377386822

namespace A145392

/-- `A014682(A002654(n+1)+A000203(n+1))` -/
def P6053974826377386822.Spec : Prop :=
  ∀ n, P6053974826377386822.a n = A145392 (n + 1)

end A145392

/-! ## A145392.P16058656965088643164

`∑{d}[n+1, A002654(#)*A096445((n+1)/#)]`
-/

namespace A145392.P16058656965088643164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002654 d * A096445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A145392.P16058656965088643164

namespace A145392

/-- `∑{d}[n+1, A002654(#)*A096445((n+1)/#)]` -/
def P16058656965088643164.Spec : Prop :=
  ∀ n, P16058656965088643164.a n = A145392 (n + 1)

end A145392

/-! ## A145392.P12977747081136659080

`A004525(A002654(n+1)+A000203(n+1))`
-/

namespace A145392.P12977747081136659080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A002654 (n + 1) + A000203 (n + 1)).toNat

end

end A145392.P12977747081136659080

namespace A145392

/-- `A004525(A002654(n+1)+A000203(n+1))` -/
def P12977747081136659080.Spec : Prop :=
  ∀ n, P12977747081136659080.a n = A145392 (n + 1)

end A145392

/-! ## A145392.P10666678816597356507

`A002265(A105673(n+1)+2*A000203(n+1))`
-/

namespace A145392.P10666678816597356507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A105673 (n + 1) + 2 * A000203 (n + 1)).toNat

end

end A145392.P10666678816597356507

namespace A145392

/-- `A002265(A105673(n+1)+2*A000203(n+1))` -/
def P10666678816597356507.Spec : Prop :=
  ∀ n, P10666678816597356507.a n = A145392 (n + 1)

end A145392

/-! ## A145392.P3934092549249295687

`A002265(A000203(n+1)+A105673(n+1)+A000203(n+1))`
-/

namespace A145392.P3934092549249295687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A000203 (n + 1) + (A105673 (n + 1) + A000203 (n + 1))).toNat

end

end A145392.P3934092549249295687

namespace A145392

/-- `A002265(A000203(n+1)+A105673(n+1)+A000203(n+1))` -/
def P3934092549249295687.Spec : Prop :=
  ∀ n, P3934092549249295687.a n = A145392 (n + 1)

end A145392

/-!
# A145393: Number of inequivalent sublattices of index n in square lattice, where two sublattices are considered equivalent if one can be rotated or reflected to give the other, with that rotation or reflection preserving the parent square lattice.

The programs for A145393, the canonical program `A145393.P14008747392456650763` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145393 has offset 1).

The definition of A145393 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145393.P2638116540686622141

`∑{d}[n+1, 1+floor(#/4)]`
-/

namespace A145393.P2638116540686622141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (1 + ⌊(d : ℚ) / 4⌋)

end

end A145393.P2638116540686622141

namespace A145393

/-- `∑{d}[n+1, 1+floor(#/4)]` -/
def P2638116540686622141.Spec : Prop :=
  ∀ n, P2638116540686622141.a n = A145393 (n + 1)

end A145393

/-! ## A145393.P14008747392456650763

`(A000203(n+1)+A002654(n+1)+A069735(n+1)+A145390(n+1))/4`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A145393

/-- `(A000203(n+1)+A002654(n+1)+A069735(n+1)+A145390(n+1))/4` -/
def P14008747392456650763.Spec : Prop :=
  ∀ n, P14008747392456650763.a n = (A145393 (n + 1) : ℚ)

end A145393

/-! ## A145393.P934579136726338878

`∑{d}[n+1, A047201(#+1)]-∑{d}[n+1, #]`
-/

namespace A145393.P934579136726338878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A047201 (d + 1) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A145393.P934579136726338878

namespace A145393

/-- `∑{d}[n+1, A047201(#+1)]-∑{d}[n+1, #]` -/
def P934579136726338878.Spec : Prop :=
  ∀ n, P934579136726338878.a n = A145393 (n + 1)

end A145393

/-! ## A145393.P14092856246449355512

`A000027(∑{d}[n+1, A008621(#)])`
-/

namespace A145393.P14092856246449355512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ d ∈ Nat.divisors (f1 n), A008621 d).toNat

end

end A145393.P14092856246449355512

namespace A145393

/-- `A000027(∑{d}[n+1, A008621(#)])` -/
def P14092856246449355512.Spec : Prop :=
  ∀ n, P14092856246449355512.a n = A145393 (n + 1)

end A145393

/-! ## A145393.P16719695388037186819

`A028310(∑{d}[n+1, A008621(#)])`
-/

namespace A145393.P16719695388037186819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ d ∈ Nat.divisors (f1 n), A008621 d).toNat

end

end A145393.P16719695388037186819

namespace A145393

/-- `A028310(∑{d}[n+1, A008621(#)])` -/
def P16719695388037186819.Spec : Prop :=
  ∀ n, P16719695388037186819.a n = A145393 (n + 1)

end A145393

/-! ## A145393.P15263877299106762071

`∑{d}[n+1, A004526(A004526(#))]+A000005(n+1)`
-/

namespace A145393.P15263877299106762071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A004526 (A004526 d).toNat + A000005 (n + 1)

end

end A145393.P15263877299106762071

namespace A145393

/-- `∑{d}[n+1, A004526(A004526(#))]+A000005(n+1)` -/
def P15263877299106762071.Spec : Prop :=
  ∀ n, P15263877299106762071.a n = A145393 (n + 1)

end A145393

/-!
# A145394: Number of inequivalent sublattices of index n in hexagonal lattice, where two sublattices are considered equivalent if one can be rotated by a multiple of Pi/3 to give the other.

The programs for A145394, the canonical program `A145394.P404841157394091667` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145394 has offset 1).

The definition of A145394 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002324, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A145394.P9082693538650058531

`∑{d}[n+1, A008611(#-1)]`
-/

namespace A145394.P9082693538650058531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008611 (d - 1)

end

end A145394.P9082693538650058531

namespace A145394

/-- `∑{d}[n+1, A008611(#-1)]` -/
def P9082693538650058531.Spec : Prop :=
  ∀ n, P9082693538650058531.a n = A145394 (n + 1)

end A145394

/-! ## A145394.P404841157394091667

`(A000203(n+1)+2*A002324(n+1))/3`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A145394

/-- `(A000203(n+1)+2*A002324(n+1))/3` -/
def P404841157394091667.Spec : Prop :=
  ∀ n, P404841157394091667.a n = (A145394 (n + 1) : ℚ)

end A145394

/-! ## A145394.P871412807916483729

`∑{d}[n+1, 2*A004396(#)-#]`
-/

namespace A145394.P871412807916483729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (2 * A004396 d - (d : ℤ))

end

end A145394.P871412807916483729

namespace A145394

/-- `∑{d}[n+1, 2*A004396(#)-#]` -/
def P871412807916483729.Spec : Prop :=
  ∀ n, P871412807916483729.a n = A145394 (n + 1)

end A145394

/-! ## A145394.P3744705959657790656

`2*A003051(n+1)-A145390(n+1)`
-/

namespace A145394.P3744705959657790656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003051 (n + 1) - A145390 (n + 1)

end

end A145394.P3744705959657790656

namespace A145394

/-- `2*A003051(n+1)-A145390(n+1)` -/
def P3744705959657790656.Spec : Prop :=
  ∀ n, P3744705959657790656.a n = A145394 (n + 1)

end A145394

/-! ## A145394.P7533132206001236564

`A002324(n+1)+A145391(n+1)-A003051(n+1)`
-/

namespace A145394.P7533132206001236564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (n + 1) + (A145391 (n + 1) - A003051 (n + 1))

end

end A145394.P7533132206001236564

namespace A145394

/-- `A002324(n+1)+A145391(n+1)-A003051(n+1)` -/
def P7533132206001236564.Spec : Prop :=
  ∀ n, P7533132206001236564.a n = A145394 (n + 1)

end A145394

/-! ## A145394.P12276002627059121621

`∑{d}[n+1, A054384(#)*A319691((n+1)/#)]`
-/

namespace A145394.P12276002627059121621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A054384 d * A319691 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A145394.P12276002627059121621

namespace A145394

/-- `∑{d}[n+1, A054384(#)*A319691((n+1)/#)]` -/
def P12276002627059121621.Spec : Prop :=
  ∀ n, P12276002627059121621.a n = A145394 (n + 1)

end A145394

/-! ## A145394.P11351757086456267873

`A275632(n+1)-A000203(n+1)`
-/

namespace A145394.P11351757086456267873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275632 (n + 1) - A000203 (n + 1)

end

end A145394.P11351757086456267873

namespace A145394

/-- `A275632(n+1)-A000203(n+1)` -/
def P11351757086456267873.Spec : Prop :=
  ∀ n, P11351757086456267873.a n = A145394 (n + 1)

end A145394

/-!
# A145395: Complement of the primes of form 4k+3 (A002145).

The programs for A145395, there is no canonical definition to state claims against.
-/

/-! ## A145395.P4697357331881932513

`comp[p?[or(3, n)]]`
-/

namespace A145395.P4697357331881932513
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A145395.P4697357331881932513

/-! ## A145395.P15902256078628851128

`comp[∏{d}[or(3, n), #]]`
-/

namespace A145395.P15902256078628851128
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), d

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A145395.P15902256078628851128

/-! ## A145395.P9610967435158741754

`comp[p?[record[xor(3, n)]]]`
-/

namespace A145395.P9610967435158741754
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A145395.P9610967435158741754

/-! ## A145395.P482957250269429265

`comp[∏{d}[record[xor(3, n)], #]]`
-/

namespace A145395.P482957250269429265
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), d

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A145395.P482957250269429265

/-! ## A145395.P13981562966990404633

`comp[p?[a(n-1)+4]]` with `a(0)=3`
-/

namespace A145395.P13981562966990404633
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A145395.P13981562966990404633

/-! ## A145395.P6834140049919567348

`comp[p?[3*(n+1)+n]]`
-/

namespace A145395.P6834140049919567348
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A145395.P6834140049919567348

/-! ## A145395.P15032221540714156424

`comp[∏{d}[3*(n+1)+n, #]]`
-/

namespace A145395.P15032221540714156424
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), d

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A145395.P15032221540714156424

/-! ## A145395.P8644469777556567584

`comp[A002145(n+1)]`
-/

namespace A145395.P8644469777556567584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A145395.P8644469777556567584

/-! ## A145395.P12953307812014998872

`comp[A053444(n+1)]`
-/

namespace A145395.P12953307812014998872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A145395.P12953307812014998872

/-! ## A145395.P16471408474477514258

`comp[A125254(n+1)]`
-/

namespace A145395.P16471408474477514258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A145395.P16471408474477514258

/-!
# A145396: a(n) = Sum_{d|n} sigma(d) + 3*Sum_{2c|n} sigma(c).

The programs for A145396, the canonical program `A145396.P8922029266753393626` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145396 has offset 1).

The definition of A145396 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145396.P5396022818324803208

`2*A263826(n+1)-A001001(n+1)`
-/

namespace A145396.P5396022818324803208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A263826 (n + 1) - A001001 (n + 1)

end

end A145396.P5396022818324803208

namespace A145396

/-- `2*A263826(n+1)-A001001(n+1)` -/
def P5396022818324803208.Spec : Prop :=
  ∀ n, P5396022818324803208.a n = A145396 (n + 1)

end A145396

/-! ## A145396.P1635707460767290275

`∑{d}[n+1, A000005(#)*A195140((n+1)/#)]`
-/

namespace A145396.P1635707460767290275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A195140 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A145396.P1635707460767290275

namespace A145396

/-- `∑{d}[n+1, A000005(#)*A195140((n+1)/#)]` -/
def P1635707460767290275.Spec : Prop :=
  ∀ n, P1635707460767290275.a n = A145396 (n + 1)

end A145396

/-! ## A145396.P8922029266753393626

`∑{d}[n+1, A000203(#)*A010685((n+1)/#-1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A145396

/-- `∑{d}[n+1, A000203(#)*A010685((n+1)/#-1)]` -/
def P8922029266753393626.Spec : Prop :=
  ∀ n, P8922029266753393626.a n = A145396 (n + 1)

theorem P8922029266753393626.correct : P8922029266753393626.Spec := by
  intro n
  simp only [A145396, Nat.add_sub_cancel]

end A145396

/-! ## A145396.P8890739910067309345

`∑{d}[n+1, A007429(#)*A169585((n+1)/#-1)]`
-/

namespace A145396.P8890739910067309345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A169585 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A145396.P8890739910067309345

namespace A145396

/-- `∑{d}[n+1, A007429(#)*A169585((n+1)/#-1)]` -/
def P8890739910067309345.Spec : Prop :=
  ∀ n, P8890739910067309345.a n = A145396 (n + 1)

end A145396

/-! ## A145396.P14508134260296787138

`A007429(n+1)+A327096(n+1)-A327242(n+1)`
-/

namespace A145396.P14508134260296787138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007429 (n + 1) + (A327096 (n + 1) - A327242 (n + 1))

end

end A145396.P14508134260296787138

namespace A145396

/-- `A007429(n+1)+A327096(n+1)-A327242(n+1)` -/
def P14508134260296787138.Spec : Prop :=
  ∀ n, P14508134260296787138.a n = A145396 (n + 1)

end A145396

/-! ## A145396.P174707155260074869

`A005843(A263826(n+1))-A001001(n+1)`
-/

namespace A145396.P174707155260074869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A263826 (n + 1)).toNat - A001001 (n + 1)

end

end A145396.P174707155260074869

namespace A145396

/-- `A005843(A263826(n+1))-A001001(n+1)` -/
def P174707155260074869.Spec : Prop :=
  ∀ n, P174707155260074869.a n = A145396 (n + 1)

end A145396

/-!
# A145397: Numbers not of the form m*(m+1)*(m+2)/6, the non-tetrahedral numbers.

The programs for A145397, the canonical program `A145397.P13289001597681325502` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145397 has offset 1).

The definition of A145397 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145397.P5783037341321229103

`comp[C(n, 3)]`
-/

namespace A145397.P5783037341321229103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A145397.P5783037341321229103

namespace A145397

/-- `comp[C(n, 3)]` -/
def P5783037341321229103.Spec : Prop :=
  ∀ n, (P5783037341321229103.a n : ℤ) = A145397 (n + 1)

end A145397

/-! ## A145397.P16375806199818188276

`comp[∑[∑[n]]]`
-/

namespace A145397.P16375806199818188276
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A145397.P16375806199818188276

namespace A145397

/-- `comp[∑[∑[n]]]` -/
def P16375806199818188276.Spec : Prop :=
  ∀ n, (P16375806199818188276.a n : ℤ) = A145397 (n + 1)

end A145397

/-! ## A145397.P13289001597681325502

`lt[0, A014306(n)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A145397

/-- `lt[0, A014306(n)]` -/
def P13289001597681325502.Spec : Prop :=
  ∀ n, (P13289001597681325502.a n : ℤ) = A145397 (n + 1)

theorem P13289001597681325502.correct : P13289001597681325502.Spec := by
  intro n
  simp only [A145397, Nat.add_sub_cancel]

end A145397

/-! ## A145397.P10082185339097359571

`comp[A050407(n)]-1`
-/

namespace A145397.P10082185339097359571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050407 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 1

end

end A145397.P10082185339097359571

namespace A145397

/-- `comp[A050407(n)]-1` -/
def P10082185339097359571.Spec : Prop :=
  ∀ n, P10082185339097359571.a n = A145397 (n + 1)

end A145397

/-! ## A145397.P15755935947108446304

`and(comp[A000292(n)], -1)`
-/

namespace A145397.P15755935947108446304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (-1)

end

end A145397.P15755935947108446304

namespace A145397

/-- `and(comp[A000292(n)], -1)` -/
def P15755935947108446304.Spec : Prop :=
  ∀ n, P15755935947108446304.a n = A145397 (n + 1)

end A145397

/-! ## A145397.P8280350126084983164

`A000027(comp[A000292(n)])`
-/

namespace A145397.P8280350126084983164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A145397.P8280350126084983164

namespace A145397

/-- `A000027(comp[A000292(n)])` -/
def P8280350126084983164.Spec : Prop :=
  ∀ n, P8280350126084983164.a n = A145397 (n + 1)

end A145397

/-! ## A145397.P11952077443937418910

`A000027(comp[A000217(n)+a(n-1)])` with `a(0)=0`
-/

namespace A145397.P11952077443937418910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A000217 n + f1 (n - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A145397.P11952077443937418910

namespace A145397

/-- `A000027(comp[A000217(n)+a(n-1)])` -/
def P11952077443937418910.Spec : Prop :=
  ∀ n, P11952077443937418910.a n = A145397 (n + 1)

end A145397

/-! ## A145397.P2102637363101744275

`eq[0, A023533(n)]`
-/

namespace A145397.P2102637363101744275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023533 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A145397.P2102637363101744275

namespace A145397

/-- `eq[0, A023533(n)]` -/
def P2102637363101744275.Spec : Prop :=
  ∀ n, (P2102637363101744275.a n : ℤ) = A145397 (n + 1)

end A145397

/-! ## A145397.P15895397732432568606

`eq[2, gcd(2, A331919(n))]`
-/

namespace A145397.P15895397732432568606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A331919 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A145397.P15895397732432568606

namespace A145397

/-- `eq[2, gcd(2, A331919(n))]` -/
def P15895397732432568606.Spec : Prop :=
  ∀ n, (P15895397732432568606.a n : ℤ) = A145397 (n + 1)

end A145397

/-! ## A145397.P11259552987214007694

`eq[0, char[C(n, 3)]]`
-/

namespace A145397.P11259552987214007694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A145397.P11259552987214007694

namespace A145397

/-- `eq[0, char[C(n, 3)]]` -/
def P11259552987214007694.Spec : Prop :=
  ∀ n, (P11259552987214007694.a n : ℤ) = A145397 (n + 1)

end A145397

/-! ## A145397.P535658536637470442

`lt[char[C(n, 3)], 1]`
-/

namespace A145397.P535658536637470442
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A145397.P535658536637470442

namespace A145397

/-- `lt[char[C(n, 3)], 1]` -/
def P535658536637470442.Spec : Prop :=
  ∀ n, (P535658536637470442.a n : ℤ) = A145397 (n + 1)

end A145397

/-! ## A145397.P12394240578434342396

`eq[0, char[∑[∑[n]]]]`
-/

namespace A145397.P12394240578434342396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A145397.P12394240578434342396

namespace A145397

/-- `eq[0, char[∑[∑[n]]]]` -/
def P12394240578434342396.Spec : Prop :=
  ∀ n, (P12394240578434342396.a n : ℤ) = A145397 (n + 1)

end A145397

/-! ## A145397.P1686820477888083465

`lt[char[∑[∑[n]]], 1]`
-/

namespace A145397.P1686820477888083465
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f5 j) n

end

end A145397.P1686820477888083465

namespace A145397

/-- `lt[char[∑[∑[n]]], 1]` -/
def P1686820477888083465.Spec : Prop :=
  ∀ n, (P1686820477888083465.a n : ℤ) = A145397 (n + 1)

end A145397

/-!
# A145398: a(n) = Sum_{d|n} sigma(d) - Sum_{2c|n} sigma(c) + 4*Sum_{4b|n} sigma(b).

The programs for A145398, the canonical program `A145398.P13757038828564537059` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145398 has offset 1).

The definition of A145398 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145398.P5074972421243146495

`2*A263830(n+1)-A001001(n+1)`
-/

namespace A145398.P5074972421243146495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A263830 (n + 1) - A001001 (n + 1)

end

end A145398.P5074972421243146495

namespace A145398

/-- `2*A263830(n+1)-A001001(n+1)` -/
def P5074972421243146495.Spec : Prop :=
  ∀ n, P5074972421243146495.a n = A145398 (n + 1)

end A145398

/-! ## A145398.P13757038828564537059

`A007429(n+1)+A145378(n+1)-A327096(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A145398

/-- `A007429(n+1)+A145378(n+1)-A327096(n+1)` -/
def P13757038828564537059.Spec : Prop :=
  ∀ n, P13757038828564537059.a n = A145398 (n + 1)

theorem P13757038828564537059.correct : P13757038828564537059.Spec := by
  intro n
  simp only [A145398, Nat.add_sub_cancel]

end A145398

/-! ## A145398.P9176482810260119430

`A004277(A263830(n+1))-A001001(n+1)`
-/

namespace A145398.P9176482810260119430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A263830 (n + 1)).toNat - A001001 (n + 1)

end

end A145398.P9176482810260119430

namespace A145398

/-- `A004277(A263830(n+1))-A001001(n+1)` -/
def P9176482810260119430.Spec : Prop :=
  ∀ n, P9176482810260119430.a n = A145398 (n + 1)

end A145398

/-! ## A145398.P13035351654348448044

`A004277(A263830(n+1))-∑{d}[n+1, #*A000203(#)]`
-/

namespace A145398.P13035351654348448044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A263830 (n + 1)).toNat - ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000203 d

end

end A145398.P13035351654348448044

namespace A145398

/-- `A004277(A263830(n+1))-∑{d}[n+1, #*A000203(#)]` -/
def P13035351654348448044.Spec : Prop :=
  ∀ n, P13035351654348448044.a n = A145398 (n + 1)

end A145398

/-! ## A145398.P16979545613787062229

`A004277(A263830(n+1))-∑{d}[n+1, #*(A001065(#)+#)]`
-/

namespace A145398.P16979545613787062229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A263830 (n + 1)).toNat - ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * (A001065 d + (d : ℤ))

end

end A145398.P16979545613787062229

namespace A145398

/-- `A004277(A263830(n+1))-∑{d}[n+1, #*(A001065(#)+#)]` -/
def P16979545613787062229.Spec : Prop :=
  ∀ n, P16979545613787062229.a n = A145398 (n + 1)

end A145398

/-! ## A145398.P10308072362170039832

`A004277(A263830(n+1))-∑{d}[n+1, (n+1)/#*A001157(#)]`
-/

namespace A145398.P10308072362170039832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 (A263830 (n + 1)).toNat : ℚ) - ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A001157 d : ℚ)

end

end A145398.P10308072362170039832

namespace A145398

/-- `A004277(A263830(n+1))-∑{d}[n+1, (n+1)/#*A001157(#)]` -/
def P10308072362170039832.Spec : Prop :=
  ∀ n, P10308072362170039832.a n = (A145398 (n + 1) : ℚ)

end A145398

/-!
# A145399: Dirichlet g.f.: (1+4/2^s+1/4^s)*zeta(s)^3.

The programs for A145399, there is no canonical definition to state claims against.
-/

/-! ## A145399.P12065802450260290585

`A145511(2*(n+1))`
-/

namespace A145399.P12065802450260290585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145511 (2 * (n + 1))

end

end A145399.P12065802450260290585

/-! ## A145399.P17839481357264612750

`A158360(2*(n+1))+A145501(2*(n+1))`
-/

namespace A145399.P17839481357264612750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158360 (2 * (n + 1)) + A145501 (2 * (n + 1))

end

end A145399.P17839481357264612750

/-! ## A145399.P2962701151986625923

`A145444(2*(n+1))-A158327(2*(n+1))`
-/

namespace A145399.P2962701151986625923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145444 (2 * (n + 1)) - A158327 (2 * (n + 1))

end

end A145399.P2962701151986625923

/-! ## A145399.P14706141301649990926

`A158360(A259445(2*(n+1)))+A145444(2*(n+1))`
-/

namespace A145399.P14706141301649990926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158360 (A259445 (2 * (n + 1))).toNat + A145444 (2 * (n + 1))

end

end A145399.P14706141301649990926

/-! ## A145399.P7167780302755503930

`A145444(2*(n+1))+A158360(2*(n+1))-A158801(2*(n+1))`
-/

namespace A145399.P7167780302755503930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145444 (2 * (n + 1)) + (A158360 (2 * (n + 1)) - A158801 (2 * (n + 1)))

end

end A145399.P7167780302755503930

/-! ## A145399.P14830986802437886509

`A145501(2*(n+1))+A158801(2*(n+1))-A158327(2*(n+1))`
-/

namespace A145399.P14830986802437886509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145501 (2 * (n + 1)) + (A158801 (2 * (n + 1)) - A158327 (2 * (n + 1)))

end

end A145399.P14830986802437886509

