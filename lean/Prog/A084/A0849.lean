import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C045
import Seq.B000.C048
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A084900: a(n) = 3^(n-2)*n*(5*n+1)/2.

The programs for A084900, the canonical program `A084900.P6868314053743698268` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084900 has offset 0).

The definition of A084900 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084900.P14341580011326205908

`ogf((x+2x^2)/(1-9x+27x^2-27x^3))`
-/

namespace A084900.P14341580011326205908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2] [1, -9, 27, -27] n

end

end A084900.P14341580011326205908

namespace A084900

/-- `ogf((x+2x^2)/(1-9x+27x^2-27x^3))` -/
def P14341580011326205908.Spec : Prop :=
  ∀ n, P14341580011326205908.a n = A084900 n

end A084900

/-! ## A084900.P6868314053743698268

`3^(n-2)*n*(5*n+1)/2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A084900

/-- `3^(n-2)*n*(5*n+1)/2` -/
def P6868314053743698268.Spec : Prop :=
  ∀ n, P6868314053743698268.a n = (A084900 n : ℚ)

end A084900

/-! ## A084900.P17986428652664911808

`A383136(n)+A129530(n)`
-/

namespace A084900.P17986428652664911808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383136 n + A129530 n

end

end A084900.P17986428652664911808

namespace A084900

/-- `A383136(n)+A129530(n)` -/
def P17986428652664911808.Spec : Prop :=
  ∀ n, P17986428652664911808.a n = A084900 n

end A084900

/-! ## A084900.P254576350055060350

`A086951(n)-A129530(n)`
-/

namespace A084900.P254576350055060350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086951 n - A129530 n

end

end A084900.P254576350055060350

namespace A084900

/-- `A086951(n)-A129530(n)` -/
def P254576350055060350.Spec : Prop :=
  ∀ n, P254576350055060350.a n = A084900 n

end A084900

/-! ## A084900.P17579964088668338040

`A129530(n)+A069515(n+1)/3`
-/

namespace A084900.P17579964088668338040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129530 n : ℚ) + (A069515 (n + 1) : ℚ) / 3

end

end A084900.P17579964088668338040

namespace A084900

/-- `A129530(n)+A069515(n+1)/3` -/
def P17579964088668338040.Spec : Prop :=
  ∀ n, P17579964088668338040.a n = (A084900 n : ℚ)

end A084900

/-! ## A084900.P3622848253262757043

`A062189(n)-A116138(n)/6`
-/

namespace A084900.P3622848253262757043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062189 n : ℚ) - (A116138 n : ℚ) / 6

end

end A084900.P3622848253262757043

namespace A084900

/-- `A062189(n)-A116138(n)/6` -/
def P3622848253262757043.Spec : Prop :=
  ∀ n, P3622848253262757043.a n = (A084900 n : ℚ)

end A084900

/-!
# A084901: a(n) = 4^(n-2)*n*(5*n+3)/2.

The programs for A084901, the canonical program `A084901.P12328575855124752553` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084901 has offset 0).

The definition of A084901 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^(n-2)*n*(5*n+3)/2` (program `A084901.P17398047900294711779`, by `A084901.P17398047900294711779.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084901.P6274410993881688341

`2^(2*n-5)*n*(5*n+3)`
-/

namespace A084901.P6274410993881688341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((2 * n : ℤ) - 5 : ℤ) * (n : ℚ) * (5 * n + 3 : ℚ)

end

end A084901.P6274410993881688341

namespace A084901

/-- `2^(2*n-5)*n*(5*n+3)` -/
def P6274410993881688341.Spec : Prop :=
  ∀ n, P6274410993881688341.a n = (A084901 n : ℚ)

theorem P6274410993881688341.correct : P6274410993881688341.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A084901, Nat.add_sub_cancel, A084901.P6274410993881688341.a, A084901.P12328575855124752553.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A084901, Nat.add_sub_cancel, A084901.P6274410993881688341.a, A084901.P12328575855124752553.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A084901

/-! ## A084901.P17012817875500750255

`ogf((x+x^2)/(1-12x+48x^2-64x^3))`
-/

namespace A084901.P17012817875500750255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, -12, 48, -64] n

end

end A084901.P17012817875500750255

namespace A084901

/-- `ogf((x+x^2)/(1-12x+48x^2-64x^3))` -/
def P17012817875500750255.Spec : Prop :=
  ∀ n, P17012817875500750255.a n = A084901 n

end A084901

/-! ## A084901.P17398047900294711779

`4^(n-2)*n*(5*n+3)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A084901.P17398047900294711779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (n : ℚ) * (5 * n + 3 : ℚ) / 2

end

end A084901.P17398047900294711779

namespace A084901

/-- `4^(n-2)*n*(5*n+3)/2` -/
def P17398047900294711779.Spec : Prop :=
  ∀ n, P17398047900294711779.a n = (A084901 n : ℚ)

theorem P17398047900294711779.correct : P17398047900294711779.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A084901, Nat.add_sub_cancel, A084901.P17398047900294711779.a, A084901.P12328575855124752553.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A084901, Nat.add_sub_cancel, A084901.P17398047900294711779.a, A084901.P12328575855124752553.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A084901

/-! ## A084901.P12328575855124752553

`12*a(n-1)-48*a(n-2)+64*a(n-3)` with `a(0)=0, a(1)=1, a(2)=13`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A084901

/-- `12*a(n-1)-48*a(n-2)+64*a(n-3)` -/
def P12328575855124752553.Spec : Prop :=
  ∀ n, P12328575855124752553.a n = A084901 n

theorem P12328575855124752553.correct : P12328575855124752553.Spec := by
  intro n
  simp only [A084901]

end A084901

/-! ## A084901.P6094169849089411637

`abs(Δ[A097067(n)*A168150(n)])`
-/

namespace A084901.P6094169849089411637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097067 n * A168150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A084901.P6094169849089411637

namespace A084901

/-- `abs(Δ[A097067(n)*A168150(n)])` -/
def P6094169849089411637.Spec : Prop :=
  ∀ n, P6094169849089411637.a n = A084901 n

end A084901

/-! ## A084901.P12533636592041710841

`abs(Δ[A139756(n)*A168150(n)])`
-/

namespace A084901.P12533636592041710841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 n * A168150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A084901.P12533636592041710841

namespace A084901

/-- `abs(Δ[A139756(n)*A168150(n)])` -/
def P12533636592041710841.Spec : Prop :=
  ∀ n, P12533636592041710841.a n = A084901 n

end A084901

/-! ## A084901.P2226266045553237512

`A052780(n)+Δ[A052780(n)/2]`
-/

namespace A084901.P2226266045553237512
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052780 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052780 n : ℚ) + (f1 (n + 1) - f1 n)

end

end A084901.P2226266045553237512

namespace A084901

/-- `A052780(n)+Δ[A052780(n)/2]` -/
def P2226266045553237512.Spec : Prop :=
  ∀ n, P2226266045553237512.a n = (A084901 n : ℚ)

end A084901

/-!
# A084902: a(n) = 5^(n-1)*n*(n+1)/2.

The programs for A084902, the canonical program `A084902.P4479946568884461797` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084902 has offset 0).

The definition of A084902 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^(n-1)*n*(n+1)/2` (program `A084902.P16008763076103518958`, by `A084902.P16008763076103518958.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084902.P4144899636278468899

`5^(n-1)*C(n+1, 2)`
-/

namespace A084902.P4144899636278468899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.choose (n + 1) 2 : ℚ)

end

end A084902.P4144899636278468899

namespace A084902

/-- `5^(n-1)*C(n+1, 2)` -/
def P4144899636278468899.Spec : Prop :=
  ∀ n, P4144899636278468899.a n = (A084902 n : ℚ)

end A084902

/-! ## A084902.P16008763076103518958

`5^(n-1)*n*(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A084902.P16008763076103518958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (n : ℚ) * (n + 1 : ℚ) / 2

end

end A084902.P16008763076103518958

namespace A084902

/-- `5^(n-1)*n*(n+1)/2` -/
def P16008763076103518958.Spec : Prop :=
  ∀ n, P16008763076103518958.a n = (A084902 n : ℚ)

theorem P16008763076103518958.correct : P16008763076103518958.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A084902, Nat.add_sub_cancel, A084902.P16008763076103518958.a, A084902.P4479946568884461797.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A084902, Nat.add_sub_cancel, A084902.P16008763076103518958.a, A084902.P4479946568884461797.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A084902

/-! ## A084902.P4479946568884461797

`15*a(n-1)-75*a(n-2)+125*a(n-3)` with `a(0)=0, a(1)=1, a(2)=15`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A084902

/-- `15*a(n-1)-75*a(n-2)+125*a(n-3)` -/
def P4479946568884461797.Spec : Prop :=
  ∀ n, P4479946568884461797.a n = A084902 n

theorem P4479946568884461797.correct : P4479946568884461797.Spec := by
  intro n
  simp only [A084902]

end A084902

/-! ## A084902.P9754151981202903846

`A081135(n+1)`
-/

namespace A084902.P9754151981202903846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081135 (n + 1)

end

end A084902.P9754151981202903846

namespace A084902

/-- `A081135(n+1)` -/
def P9754151981202903846.Spec : Prop :=
  ∀ n, P9754151981202903846.a n = A084902 n

end A084902

/-! ## A084902.P7437233619993131539

`record[n*A152572(n)]`
-/

namespace A084902.P7437233619993131539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A152572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084902.P7437233619993131539

namespace A084902

/-- `record[n*A152572(n)]` -/
def P7437233619993131539.Spec : Prop :=
  ∀ n, P7437233619993131539.a n = A084902 n

end A084902

/-! ## A084902.P1294227689085151374

`∑[abs(Δ[A081135(n)])]`
-/

namespace A084902.P1294227689085151374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081135 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084902.P1294227689085151374

namespace A084902

/-- `∑[abs(Δ[A081135(n)])]` -/
def P1294227689085151374.Spec : Prop :=
  ∀ n, P1294227689085151374.a n = A084902 n

end A084902

/-! ## A084902.P6492395087490794905

`record[A081135(A008611(n))]`
-/

namespace A084902.P6492395087490794905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081135 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084902.P6492395087490794905

namespace A084902

/-- `record[A081135(A008611(n))]` -/
def P6492395087490794905.Spec : Prop :=
  ∀ n, P6492395087490794905.a n = A084902 n

end A084902

/-! ## A084902.P13420500706117300124

`record[A081135(A008624(n))]`
-/

namespace A084902.P13420500706117300124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081135 (A008624 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084902.P13420500706117300124

namespace A084902

/-- `record[A081135(A008624(n))]` -/
def P13420500706117300124.Spec : Prop :=
  ∀ n, P13420500706117300124.a n = A084902 n

end A084902

/-! ## A084902.P10002582681512743900

`record[A081135(A028242(n))]`
-/

namespace A084902.P10002582681512743900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081135 (A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084902.P10002582681512743900

namespace A084902

/-- `record[A081135(A028242(n))]` -/
def P10002582681512743900.Spec : Prop :=
  ∀ n, P10002582681512743900.a n = A084902 n

end A084902

/-! ## A084902.P17365521164976262899

`record[A081135(A057979(n))]`
-/

namespace A084902.P17365521164976262899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081135 (A057979 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084902.P17365521164976262899

namespace A084902

/-- `record[A081135(A057979(n))]` -/
def P17365521164976262899.Spec : Prop :=
  ∀ n, P17365521164976262899.a n = A084902 n

end A084902

/-! ## A084902.P9448081052234877828

`lcm(A000217(n), A013612(A055998(n)))`
-/

namespace A084902.P9448081052234877828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000217 n) (A013612 (A055998 n).toNat)

end

end A084902.P9448081052234877828

namespace A084902

/-- `lcm(A000217(n), A013612(A055998(n)))` -/
def P9448081052234877828.Spec : Prop :=
  ∀ n, (P9448081052234877828.a n : ℤ) = A084902 n

end A084902

/-!
# A084903: Binomial transform of positive cubes.

The programs for A084903, the canonical program `A084903.P12250343439386562872` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084903 has offset 0).

The definition of A084903 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084903.P12250343439386562872

`2^(n-3)*(n^3+9*n²+18*n+8)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A084903

/-- `2^(n-3)*(n^3+9*n²+18*n+8)` -/
def P12250343439386562872.Spec : Prop :=
  ∀ n, P12250343439386562872.a n = (A084903 n : ℚ)

end A084903

/-! ## A084903.P13993658309503695765

`ogf((1+x-4x^2+2x^3)/(1-8x+24x^2-32x^3+16x^4))`
-/

namespace A084903.P13993658309503695765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -4, 2] [1, -8, 24, -32, 16] n

end

end A084903.P13993658309503695765

namespace A084903

/-- `ogf((1+x-4x^2+2x^3)/(1-8x+24x^2-32x^3+16x^4))` -/
def P13993658309503695765.Spec : Prop :=
  ∀ n, P13993658309503695765.a n = A084903 n

end A084903

/-! ## A084903.P12201578422327380636

`∑{#}[n, C(n, #)*(1+#)^3]`
-/

namespace A084903.P12201578422327380636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose n k * (1 + k) ^ 3

end

end A084903.P12201578422327380636

namespace A084903

/-- `∑{#}[n, C(n, #)*(1+#)^3]` -/
def P12201578422327380636.Spec : Prop :=
  ∀ n, (P12201578422327380636.a n : ℤ) = A084903 n

end A084903

/-! ## A084903.P8709428754928887345

`∑[A084851(n)]+n*A084851(n)`
-/

namespace A084903.P8709428754928887345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) * A084851 n

end

end A084903.P8709428754928887345

namespace A084903

/-- `∑[A084851(n)]+n*A084851(n)` -/
def P8709428754928887345.Spec : Prop :=
  ∀ n, P8709428754928887345.a n = A084903 n

end A084903

/-! ## A084903.P7511220413181362448

`A001793(n+1)+n*A084851(n)`
-/

namespace A084903.P7511220413181362448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001793 (n + 1) + (n : ℤ) * A084851 n

end

end A084903.P7511220413181362448

namespace A084903

/-- `A001793(n+1)+n*A084851(n)` -/
def P7511220413181362448.Spec : Prop :=
  ∀ n, P7511220413181362448.a n = A084903 n

end A084903

/-! ## A084903.P12345796187328631940

`A001793(n+1)+n*∑[A058396(n)]`
-/

namespace A084903.P12345796187328631940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001793 (n + 1) + (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084903.P12345796187328631940

namespace A084903

/-- `A001793(n+1)+n*∑[A058396(n)]` -/
def P12345796187328631940.Spec : Prop :=
  ∀ n, P12345796187328631940.a n = A084903 n

end A084903

/-! ## A084903.P1222964933497758827

`Δ[A058645(n)]`
-/

namespace A084903.P1222964933497758827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084903.P1222964933497758827

namespace A084903

/-- `Δ[A058645(n)]` -/
def P1222964933497758827.Spec : Prop :=
  ∀ n, P1222964933497758827.a n = A084903 n

end A084903

/-! ## A084903.P14414980605401335303

`Δ[n*∑[A049611(n)]]`
-/

namespace A084903.P14414980605401335303
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084903.P14414980605401335303

namespace A084903

/-- `Δ[n*∑[A049611(n)]]` -/
def P14414980605401335303.Spec : Prop :=
  ∀ n, P14414980605401335303.a n = A084903 n

end A084903

/-! ## A084903.P13461214108654565529

`Δ[n²/2*A045623(n)]`
-/

namespace A084903.P13461214108654565529
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / 2 * (A045623 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084903.P13461214108654565529

namespace A084903

/-- `Δ[n²/2*A045623(n)]` -/
def P13461214108654565529.Spec : Prop :=
  ∀ n, P13461214108654565529.a n = (A084903 n : ℚ)

end A084903

/-! ## A084903.P13594677656109427417

`Δ[n/2*Δ[A001815(n)]]`
-/

namespace A084903.P13594677656109427417
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001815 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084903.P13594677656109427417

namespace A084903

/-- `Δ[n/2*Δ[A001815(n)]]` -/
def P13594677656109427417.Spec : Prop :=
  ∀ n, P13594677656109427417.a n = (A084903 n : ℚ)

end A084903

/-! ## A084903.P4282408340507054514

`Δ[n*A001793(A028310(n))]`
-/

namespace A084903.P4282408340507054514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001793 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084903.P4282408340507054514

namespace A084903

/-- `Δ[n*A001793(A028310(n))]` -/
def P4282408340507054514.Spec : Prop :=
  ∀ n, P4282408340507054514.a n = A084903 n

end A084903

/-! ## A084903.P284828593892486980

`A058645(n+1)-A058645(n)`
-/

namespace A084903.P284828593892486980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058645 (n + 1) - A058645 n

end

end A084903.P284828593892486980

namespace A084903

/-- `A058645(n+1)-A058645(n)` -/
def P284828593892486980.Spec : Prop :=
  ∀ n, P284828593892486980.a n = A084903 n

end A084903

/-! ## A084903.P15449584723467296091

`Δ[n*(A084851(n)-A001792(n))]`
-/

namespace A084903.P15449584723467296091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A084851 n - A001792 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084903.P15449584723467296091

namespace A084903

/-- `Δ[n*(A084851(n)-A001792(n))]` -/
def P15449584723467296091.Spec : Prop :=
  ∀ n, P15449584723467296091.a n = A084903 n

end A084903

/-! ## A084903.P6081906519212595501

`Δ[(∑[n]+n)*A001787(n)]/2`
-/

namespace A084903.P6081906519212595501
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j + n : ℕ) : ℤ) * A001787 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 2

end

end A084903.P6081906519212595501

namespace A084903

/-- `Δ[(∑[n]+n)*A001787(n)]/2` -/
def P6081906519212595501.Spec : Prop :=
  ∀ n, P6081906519212595501.a n = (A084903 n : ℚ)

end A084903

/-! ## A084903.P12742939056590279376

`A058649(n+1)/(n+1)`
-/

namespace A084903.P12742939056590279376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058649 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A084903.P12742939056590279376

namespace A084903

/-- `A058649(n+1)/(n+1)` -/
def P12742939056590279376.Spec : Prop :=
  ∀ n, P12742939056590279376.a n = (A084903 n : ℚ)

end A084903

/-! ## A084903.P3494925183041151852

`A001792(n)*A084266(n)/A011782(n)`
-/

namespace A084903.P3494925183041151852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001792 n * A084266 n : ℚ) / (A011782 n : ℚ)

end

end A084903.P3494925183041151852

namespace A084903

/-- `A001792(n)*A084266(n)/A011782(n)` -/
def P3494925183041151852.Spec : Prop :=
  ∀ n, P3494925183041151852.a n = (A084903 n : ℚ)

end A084903

/-! ## A084903.P1856749044920316099

`Δ[n*A336996(n²+2)]`
-/

namespace A084903.P1856749044920316099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A336996 (n ^ 2 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084903.P1856749044920316099

namespace A084903

/-- `Δ[n*A336996(n²+2)]` -/
def P1856749044920316099.Spec : Prop :=
  ∀ n, P1856749044920316099.a n = A084903 n

end A084903

/-!
# A084904: Number of places to insert a division operator in the decimal string of n such that an integer results.

The programs for A084904, there is no canonical definition to state claims against.
-/

/-! ## A084904.P11844647721526757457

`A226357(n)%A083911(A028310(n))`
-/

namespace A084904.P11844647721526757457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226357 n) (A083911 (A028310 n).toNat)

end

end A084904.P11844647721526757457

/-! ## A084904.P16579940632289260083

`A109833(n+2)%A083911(A028310(n))`
-/

namespace A084904.P16579940632289260083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109833 (n + 2)) (A083911 (A028310 n).toNat)

end

end A084904.P16579940632289260083

/-! ## A084904.P15377564378346781048

`A138576(n+1)%A380706(n)`
-/

namespace A084904.P15377564378346781048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138576 (n + 1)) (A380706 n)

end

end A084904.P15377564378346781048

/-! ## A084904.P3816743371407367050

`A139481(n+2)%A380706(n)`
-/

namespace A084904.P3816743371407367050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139481 (n + 2)) (A380706 n)

end

end A084904.P3816743371407367050

/-! ## A084904.P13331821817777966064

`A364353(n+1)%A380706(n)`
-/

namespace A084904.P13331821817777966064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A364353 (n + 1)) (A380706 n)

end

end A084904.P13331821817777966064

/-!
# A084906: Numbers with at least one place in their decimal representation to insert a division operator such that an integer results.

The programs for A084906, there is no canonical definition to state claims against.
-/

/-! ## A084906.P17715532703682951638

`lt[0, A084904(n)]`
-/

namespace A084906.P17715532703682951638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084904 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A084906.P17715532703682951638

/-! ## A084906.P6006030886219120929

`eq[1, A057427(n*A084904(n))]`
-/

namespace A084906.P6006030886219120929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 ((n : ℤ) * A084904 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084906.P6006030886219120929

/-! ## A084906.P5304788464496017329

`A118759(A232184(n+1))`
-/

namespace A084906.P5304788464496017329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A232184 (n + 1)).toNat

end

end A084906.P5304788464496017329

/-! ## A084906.P14425149098867858874

`A232185(A132264(n+1))`
-/

namespace A084906.P14425149098867858874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232185 (A132264 (n + 1)).toNat

end

end A084906.P14425149098867858874

/-! ## A084906.P16356888958712762809

`A239217(A232185(n+1))`
-/

namespace A084906.P16356888958712762809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239217 (A232185 (n + 1)).toNat

end

end A084906.P16356888958712762809

/-!
# A084908: Fibonacci numbers that satisfy: Sum_{k>=1} 1/a(k) = 1, such that the partial sums are nearest to, but never exceed, unity.

The programs for A084908, there is no canonical definition to state claims against.
-/

/-! ## A084908.P10187934875083481573

`A000045(A084907(n+1)+1)`
-/

namespace A084908.P10187934875083481573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A084907 (n + 1) + 1).toNat

end

end A084908.P10187934875083481573

/-! ## A084908.P17088577035030564880

`abs(A236191(A084907(n+1)+1))`
-/

namespace A084908.P17088577035030564880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A236191 (A084907 (n + 1) + 1).toNat|

end

end A084908.P17088577035030564880

/-! ## A084908.P16331246441679140004

`A103609(2*(A084907(n+1)+1))`
-/

namespace A084908.P16331246441679140004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * (A084907 (n + 1) + 1)).toNat

end

end A084908.P16331246441679140004

/-! ## A084908.P13007731987837191271

`A103609(A084907(n+1)+A084907(n+1)+2)`
-/

namespace A084908.P13007731987837191271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A084907 (n + 1) + (A084907 (n + 1) + 2)).toNat

end

end A084908.P13007731987837191271

/-!
# A084909: Indices of Fibonacci numbers that satisfy: Sum_{k>=1} 1/F(a(k)) = tau-1, where F(k) gives the k-th Fibonacci number with F(0)=1, such that the partial sums are nearest to, but never exceed, tau-1 = (sqrt(5)-1)/2.

The programs for A084909, there is no canonical definition to state claims against.
-/

/-! ## A084909.P10479920197346819017

`A287202(n+1)-A003849(A354551(n))`
-/

namespace A084909.P10479920197346819017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287202 (n + 1) - A003849 (A354551 n).toNat

end

end A084909.P10479920197346819017

/-!
# A084910: Fibonacci numbers that satisfy: Sum_{k>=1} 1/a(k) = tau-1, such that the partial sums are nearest to, but never exceed, tau-1 = (sqrt(5)-1)/2.

The programs for A084910, there is no canonical definition to state claims against.
-/

/-! ## A084910.P13040763531954539968

`A000045(A084909(n+1)+1)`
-/

namespace A084910.P13040763531954539968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A084909 (n + 1) + 1).toNat

end

end A084910.P13040763531954539968

/-! ## A084910.P14053648345116487145

`A264800(A084909(n+1)+1)`
-/

namespace A084910.P14053648345116487145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264800 (A084909 (n + 1) + 1).toNat

end

end A084910.P14053648345116487145

/-! ## A084910.P16711304022843817977

`abs(A236191(A084909(n+1)+1))`
-/

namespace A084910.P16711304022843817977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A236191 (A084909 (n + 1) + 1).toNat|

end

end A084910.P16711304022843817977

/-! ## A084910.P9981794572320299205

`A000071(A084909(n+1)+1)+1`
-/

namespace A084910.P9981794572320299205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (A084909 (n + 1) + 1).toNat + 1

end

end A084910.P9981794572320299205

/-! ## A084910.P5209508919057829041

`A001611(A084909(n+1)+1)-1`
-/

namespace A084910.P5209508919057829041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (A084909 (n + 1) + 1).toNat - 1

end

end A084910.P5209508919057829041

/-!
# A084914: Numbers k such that k^k*k! - 1 is prime.

The programs for A084914, there is no canonical definition to state claims against.
-/

/-! ## A084914.P18179381343464257859

`A360006(A279286(n+1))+A326677(n+1)`
-/

namespace A084914.P18179381343464257859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360006 (A279286 (n + 1)).toNat + A326677 (n + 1)

end

end A084914.P18179381343464257859

/-!
# A084915: a(n) = (n!)^2*n.

The programs for A084915, the canonical program `A084915.P2786478024170913240` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084915 has offset 0).

The definition of A084915 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!²*n` (program `A084915.P2786478024170913240`, by `A084915.P2786478024170913240.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084915.P2786478024170913240

`n!²*n`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A084915

/-- `n!²*n` -/
def P2786478024170913240.Spec : Prop :=
  ∀ n, (P2786478024170913240.a n : ℤ) = A084915 n

theorem P2786478024170913240.correct : P2786478024170913240.Spec := by
  intro n
  simp only [A084915]

end A084915

/-! ## A084915.P6478196237910404640

`n*n!²`
-/

namespace A084915.P6478196237910404640
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.factorial n ^ 2

end

end A084915.P6478196237910404640

namespace A084915

/-- `n*n!²` -/
def P6478196237910404640.Spec : Prop :=
  ∀ n, (P6478196237910404640.a n : ℤ) = A084915 n

theorem P6478196237910404640.correct : P6478196237910404640.Spec := by
  intro n
  simp only [A084915, Nat.add_sub_cancel, A084915.P6478196237910404640.a, A084915.P2786478024170913240.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A084915

/-! ## A084915.P4732084204380729721

`n*n!^2`
-/

namespace A084915.P4732084204380729721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.factorial n ^ 2

end

end A084915.P4732084204380729721

namespace A084915

/-- `n*n!^2` -/
def P4732084204380729721.Spec : Prop :=
  ∀ n, (P4732084204380729721.a n : ℤ) = A084915 n

theorem P4732084204380729721.correct : P4732084204380729721.Spec := by
  intro n
  simp only [A084915, Nat.add_sub_cancel, A084915.P4732084204380729721.a, A084915.P2786478024170913240.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A084915

/-! ## A084915.P6077961946668637228

`n!*Δ[n!]`
-/

namespace A084915.P6077961946668637228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A084915.P6077961946668637228

namespace A084915

/-- `n!*Δ[n!]` -/
def P6077961946668637228.Spec : Prop :=
  ∀ n, P6077961946668637228.a n = A084915 n

theorem P6077961946668637228.correct : P6077961946668637228.Spec := by
  intro n
  simp only [A084915, Nat.add_sub_cancel, A084915.P6077961946668637228.f1, A084915.P6077961946668637228.a, A084915.P2786478024170913240.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A084915

/-! ## A084915.P14291400753035180615

`n*n!*n!`
-/

namespace A084915.P14291400753035180615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.factorial n * Nat.factorial n)

end

end A084915.P14291400753035180615

namespace A084915

/-- `n*n!*n!` -/
def P14291400753035180615.Spec : Prop :=
  ∀ n, (P14291400753035180615.a n : ℤ) = A084915 n

theorem P14291400753035180615.correct : P14291400753035180615.Spec := by
  intro n
  simp only [A084915, Nat.add_sub_cancel, A084915.P14291400753035180615.a, A084915.P2786478024170913240.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A084915

/-!
# A084916: Positive numbers of the form k = x^2 - 3*y^2.

The programs for A084916, the canonical program `A084916.P17538053219360215237` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084916 has offset 1).

The definition of A084916 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1315 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084916.P1424469141819049441

`lt[0, char[A180497(n+1)]]`
-/

namespace A084916.P1424469141819049441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180497 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A084916.P1424469141819049441

namespace A084916

/-- `lt[0, char[A180497(n+1)]]` -/
def P1424469141819049441.Spec : Prop :=
  ∀ n, (P1424469141819049441.a n : ℤ) = A084916 (n + 1)

end A084916

/-! ## A084916.P17538053219360215237

`eq[1, char[A120865(n+1)]]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A084916

/-- `eq[1, char[A120865(n+1)]]` -/
def P17538053219360215237.Spec : Prop :=
  ∀ n, (P17538053219360215237.a n : ℤ) = A084916 (n + 1)

theorem P17538053219360215237.correct : P17538053219360215237.Spec := by
  intro n
  simp only [A084916, Nat.add_sub_cancel]

end A084916

/-! ## A084916.P7542956571272322888

`record[A025480(A084917(n+1))]`
-/

namespace A084916.P7542956571272322888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A084917 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084916.P7542956571272322888

namespace A084916

/-- `record[A025480(A084917(n+1))]` -/
def P7542956571272322888.Spec : Prop :=
  ∀ n, P7542956571272322888.a n = A084916 (n + 1)

end A084916

/-! ## A084916.P12438208442412768642

`record[A032742(A084917(n+2))]`
-/

namespace A084916.P12438208442412768642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A084917 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084916.P12438208442412768642

namespace A084916

/-- `record[A032742(A084917(n+2))]` -/
def P12438208442412768642.Spec : Prop :=
  ∀ n, P12438208442412768642.a n = A084916 (n + 1)

end A084916

/-! ## A084916.P5822163660581608413

`eq[A006928(n+1), A074803(A156247(2*n+3))]`
-/

namespace A084916.P5822163660581608413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074803 (A156247 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084916.P5822163660581608413

namespace A084916

/-- `eq[A006928(n+1), A074803(A156247(2*n+3))]` -/
def P5822163660581608413.Spec : Prop :=
  ∀ n, (P5822163660581608413.a n : ℤ) = A084916 (n + 1)

end A084916

/-!
# A084917: Positive numbers of the form 3*y^2 - x^2.

The programs for A084917, the canonical program `A084917.P988097393730579605` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084917 has offset 1).

The definition of A084917 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5189 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084917.P988097393730579605

`∩[2*n, A084916(n+1)]/2`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A084917

/-- `∩[2*n, A084916(n+1)]/2` -/
def P988097393730579605.Spec : Prop :=
  ∀ n, P988097393730579605.a n = (A084917 (n + 1) : ℚ)

end A084917

/-! ## A084917.P5326915392474989865

`∩[A084916(n+1), A005843(n)]/2`
-/

namespace A084917.P5326915392474989865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A084917.P5326915392474989865

namespace A084917

/-- `∩[A084916(n+1), A005843(n)]/2` -/
def P5326915392474989865.Spec : Prop :=
  ∀ n, P5326915392474989865.a n = (A084917 (n + 1) : ℚ)

end A084917

/-! ## A084917.P14999669460861295784

`record[A025480(A084916(n+2))]`
-/

namespace A084917.P14999669460861295784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A084916 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084917.P14999669460861295784

namespace A084917

/-- `record[A025480(A084916(n+2))]` -/
def P14999669460861295784.Spec : Prop :=
  ∀ n, P14999669460861295784.a n = A084917 (n + 1)

end A084917

/-! ## A084917.P6485548548130526002

`A078898(∩[2*n, A084916(n+1)])`
-/

namespace A084917.P6485548548130526002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084916 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A084917.P6485548548130526002

namespace A084917

/-- `A078898(∩[2*n, A084916(n+1)])` -/
def P6485548548130526002.Spec : Prop :=
  ∀ n, P6485548548130526002.a n = A084917 (n + 1)

end A084917

/-! ## A084917.P18326479945438404918

`A078898(∩[A084916(n+1), A005843(n)])`
-/

namespace A084917.P18326479945438404918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A084917.P18326479945438404918

namespace A084917

/-- `A078898(∩[A084916(n+1), A005843(n)])` -/
def P18326479945438404918.Spec : Prop :=
  ∀ n, P18326479945438404918.a n = A084917 (n + 1)

end A084917

/-! ## A084917.P5798863597564311841

`record[A032742(A084916(n+1))+A000007(n)]`
-/

namespace A084917.P5798863597564311841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A084916 (n + 1)).toNat + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084917.P5798863597564311841

namespace A084917

/-- `record[A032742(A084916(n+1))+A000007(n)]` -/
def P5798863597564311841.Spec : Prop :=
  ∀ n, P5798863597564311841.a n = A084917 (n + 1)

end A084917

/-! ## A084917.P4537431760005102495

`record[A032742(A084916(n+1))+1-A057427(n)]`
-/

namespace A084917.P4537431760005102495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A084916 (n + 1)).toNat + (1 - A057427 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084917.P4537431760005102495

namespace A084917

/-- `record[A032742(A084916(n+1))+1-A057427(n)]` -/
def P4537431760005102495.Spec : Prop :=
  ∀ n, P4537431760005102495.a n = A084917 (n + 1)

end A084917

/-! ## A084917.P12396874297941138785

`record[A014963(4*n+2)*A032742(A084916(n+1))]`
-/

namespace A084917.P12396874297941138785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) * A032742 (A084916 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084917.P12396874297941138785

namespace A084917

/-- `record[A014963(4*n+2)*A032742(A084916(n+1))]` -/
def P12396874297941138785.Spec : Prop :=
  ∀ n, P12396874297941138785.a n = A084917 (n + 1)

end A084917

/-! ## A084917.P6574986113278066631

`record[A135997(A084916(n+1))]`
-/

namespace A084917.P6574986113278066631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A084916 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084917.P6574986113278066631

namespace A084917

/-- `record[A135997(A084916(n+1))]` -/
def P6574986113278066631.Spec : Prop :=
  ∀ n, P6574986113278066631.a n = A084917 (n + 1)

end A084917

/-! ## A084917.P17303809948452426389

`record[A103627(A084916(n+3))]`
-/

namespace A084917.P17303809948452426389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103627 (A084916 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084917.P17303809948452426389

namespace A084917

/-- `record[A103627(A084916(n+3))]` -/
def P17303809948452426389.Spec : Prop :=
  ∀ n, P17303809948452426389.a n = A084917 (n + 1)

end A084917

/-!
# A084918: Numbers n >= 1000, such that if prime P divides n, then so does each smaller prime.

The programs for A084918, there is no canonical definition to state claims against.
-/

/-! ## A084918.P17076257550882885684

`A055932(n+58)`
-/

namespace A084918.P17076257550882885684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 58)

end

end A084918.P17076257550882885684

/-!
# A084919: First differences of A048093.

The programs for A084919, the canonical program `A084919.P3867448010283316592` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084919 has offset 1).

The definition of A084919 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1628 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084919.P3867448010283316592

`Δ[C(n+1, floor(sqrt(n+1)))]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A084919

/-- `Δ[C(n+1, floor(sqrt(n+1)))]` -/
def P3867448010283316592.Spec : Prop :=
  ∀ n, P3867448010283316592.a n = A084919 (n + 1)

theorem P3867448010283316592.correct : P3867448010283316592.Spec := by
  intro n
  simp only [A084919, Nat.add_sub_cancel]

end A084919

/-! ## A084919.P8785014707314215025

`Δ[A048093(n+1)]`
-/

namespace A084919.P8785014707314215025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084919.P8785014707314215025

namespace A084919

/-- `Δ[A048093(n+1)]` -/
def P8785014707314215025.Spec : Prop :=
  ∀ n, P8785014707314215025.a n = A084919 (n + 1)

theorem P8785014707314215025.correct : P8785014707314215025.Spec := by
  intro n
  simp only [A084919, Nat.add_sub_cancel, A084919.P8785014707314215025.f1, A084919.P8785014707314215025.a, A084919.P3867448010283316592.f1, A084919.P3867448010283316592.a, A048093, A048093.P16359371054396509096.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A084919

/-! ## A084919.P5010659957821395821

`Δ[A102366(n+1)]`
-/

namespace A084919.P5010659957821395821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102366 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084919.P5010659957821395821

namespace A084919

/-- `Δ[A102366(n+1)]` -/
def P5010659957821395821.Spec : Prop :=
  ∀ n, P5010659957821395821.a n = A084919 (n + 1)

end A084919

/-! ## A084919.P13743453131369832597

`abs(Δ[A048093(Δ[n²]-n)])`
-/

namespace A084919.P13743453131369832597
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048093 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A084919.P13743453131369832597

namespace A084919

/-- `abs(Δ[A048093(Δ[n²]-n)])` -/
def P13743453131369832597.Spec : Prop :=
  ∀ n, P13743453131369832597.a n = A084919 (n + 1)

end A084919

/-! ## A084919.P2743651694757846301

`A048093(n+2)-A048093(n+1)`
-/

namespace A084919.P2743651694757846301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048093 (n + 2) - A048093 (n + 1)

end

end A084919.P2743651694757846301

namespace A084919

/-- `A048093(n+2)-A048093(n+1)` -/
def P2743651694757846301.Spec : Prop :=
  ∀ n, P2743651694757846301.a n = A084919 (n + 1)

theorem P2743651694757846301.correct : P2743651694757846301.Spec := by
  intro n
  simp only [A084919, Nat.add_sub_cancel, A084919.P2743651694757846301.a, A084919.P3867448010283316592.f1, A084919.P3867448010283316592.a, A048093, A048093.P16359371054396509096.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A084919

/-! ## A084919.P3277980201083841079

`A102366(n+2)-A102366(n+1)`
-/

namespace A084919.P3277980201083841079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102366 (n + 2) - A102366 (n + 1)

end

end A084919.P3277980201083841079

namespace A084919

/-- `A102366(n+2)-A102366(n+1)` -/
def P3277980201083841079.Spec : Prop :=
  ∀ n, P3277980201083841079.a n = A084919 (n + 1)

end A084919

/-! ## A084919.P4447278025865120615

`Δ[A007318(∑[A275437(n)+n])]`
-/

namespace A084919.P4447278025865120615
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275437 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084919.P4447278025865120615

namespace A084919

/-- `Δ[A007318(∑[A275437(n)+n])]` -/
def P4447278025865120615.Spec : Prop :=
  ∀ n, P4447278025865120615.a n = A084919 (n + 1)

end A084919

/-! ## A084919.P9173854940345740322

`Δ[A007318(∑[A169695(n+1)+n])]`
-/

namespace A084919.P9173854940345740322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 (n + 1) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084919.P9173854940345740322

namespace A084919

/-- `Δ[A007318(∑[A169695(n+1)+n])]` -/
def P9173854940345740322.Spec : Prop :=
  ∀ n, P9173854940345740322.a n = A084919 (n + 1)

end A084919

/-!
# A084920: a(n) = (prime(n)-1)*(prime(n)+1).

The programs for A084920, the canonical program `A084920.P13392903182497119137` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084920 has offset 1).

The definition of A084920 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(A000040(n+1)-1)*(A000040(n+1)+1)` (program `A084920.P13392903182497119137`, by `A084920.P13392903182497119137.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084920.P18008529996685256336

`A001248(n+1)-1`
-/

namespace A084920.P18008529996685256336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - 1

end

end A084920.P18008529996685256336

namespace A084920

/-- `A001248(n+1)-1` -/
def P18008529996685256336.Spec : Prop :=
  ∀ n, P18008529996685256336.a n = A084920 (n + 1)

theorem P18008529996685256336.correct : P18008529996685256336.Spec := by
  intro n
  simp only [A084920, Nat.add_sub_cancel, A084920.P18008529996685256336.a, A084920.P13392903182497119137.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A084920

/-! ## A084920.P10377941652279867941

`A000040(n+1)²-1`
-/

namespace A084920.P10377941652279867941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - 1

end

end A084920.P10377941652279867941

namespace A084920

/-- `A000040(n+1)²-1` -/
def P10377941652279867941.Spec : Prop :=
  ∀ n, P10377941652279867941.a n = A084920 (n + 1)

theorem P10377941652279867941.correct : P10377941652279867941.Spec := by
  intro n
  simp only [A084920, Nat.add_sub_cancel, A084920.P10377941652279867941.a, A084920.P13392903182497119137.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A084920

/-! ## A084920.P16680079666679647329

`A006093(n+1)*A008864(n+1)`
-/

namespace A084920.P16680079666679647329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) * A008864 (n + 1)

end

end A084920.P16680079666679647329

namespace A084920

/-- `A006093(n+1)*A008864(n+1)` -/
def P16680079666679647329.Spec : Prop :=
  ∀ n, P16680079666679647329.a n = A084920 (n + 1)

end A084920

/-! ## A084920.P13392903182497119137

`(A000040(n+1)-1)*(A000040(n+1)+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A084920

/-- `(A000040(n+1)-1)*(A000040(n+1)+1)` -/
def P13392903182497119137.Spec : Prop :=
  ∀ n, P13392903182497119137.a n = A084920 (n + 1)

theorem P13392903182497119137.correct : P13392903182497119137.Spec := by
  intro n
  simp only [A084920, Nat.add_sub_cancel]

end A084920

/-! ## A084920.P4801932304725505404

`A049001(n+1)+1`
-/

namespace A084920.P4801932304725505404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049001 (n + 1) + 1

end

end A084920.P4801932304725505404

namespace A084920

/-- `A049001(n+1)+1` -/
def P4801932304725505404.Spec : Prop :=
  ∀ n, P4801932304725505404.a n = A084920 (n + 1)

theorem P4801932304725505404.correct : P4801932304725505404.Spec := by
  intro n
  simp only [A084920, Nat.add_sub_cancel, A084920.P4801932304725505404.a, A084920.P13392903182497119137.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A049001, A049001.P8777299766092042792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A084920

/-! ## A084920.P4777054101147550440

`A182200(n+1)+2`
-/

namespace A084920.P4777054101147550440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182200 (n + 1) + 2

end

end A084920.P4777054101147550440

namespace A084920

/-- `A182200(n+1)+2` -/
def P4777054101147550440.Spec : Prop :=
  ∀ n, P4777054101147550440.a n = A084920 (n + 1)

theorem P4777054101147550440.correct : P4777054101147550440.Spec := by
  intro n
  simp only [A084920, Nat.add_sub_cancel, A084920.P4777054101147550440.a, A084920.P13392903182497119137.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A182200, A182200.P11759421930425352337.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A084920

/-! ## A084920.P13358993603718012337

`A066872(n+1)-2`
-/

namespace A084920.P13358993603718012337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066872 (n + 1) - 2

end

end A084920.P13358993603718012337

namespace A084920

/-- `A066872(n+1)-2` -/
def P13358993603718012337.Spec : Prop :=
  ∀ n, P13358993603718012337.a n = A084920 (n + 1)

theorem P13358993603718012337.correct : P13358993603718012337.Spec := by
  intro n
  simp only [A084920, Nat.add_sub_cancel, A084920.P13358993603718012337.a, A084920.P13392903182497119137.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A066872, A066872.P16166098773502812344.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A084920

/-! ## A084920.P3586803708601299415

`A166010(n+1)+3`
-/

namespace A084920.P3586803708601299415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166010 (n + 1) + 3

end

end A084920.P3586803708601299415

namespace A084920

/-- `A166010(n+1)+3` -/
def P3586803708601299415.Spec : Prop :=
  ∀ n, P3586803708601299415.a n = A084920 (n + 1)

theorem P3586803708601299415.correct : P3586803708601299415.Spec := by
  intro n
  simp only [A084920, Nat.add_sub_cancel, A084920.P3586803708601299415.a, A084920.P13392903182497119137.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A166010, A166010.P2375559703123786713.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A084920

/-! ## A084920.P11633737126301800382

`A061725(n+1)-3`
-/

namespace A084920.P11633737126301800382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061725 (n + 1) - 3

end

end A084920.P11633737126301800382

namespace A084920

/-- `A061725(n+1)-3` -/
def P11633737126301800382.Spec : Prop :=
  ∀ n, P11633737126301800382.a n = A084920 (n + 1)

theorem P11633737126301800382.correct : P11633737126301800382.Spec := by
  intro n
  simp only [A084920, Nat.add_sub_cancel, A084920.P11633737126301800382.a, A084920.P13392903182497119137.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A061725, A061725.P7248628641150990420.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A084920

/-! ## A084920.P16693185843987657697

`A153480(n)/2+1`
-/

namespace A084920.P16693185843987657697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153480 n : ℚ) / 2 + 1

end

end A084920.P16693185843987657697

namespace A084920

/-- `A153480(n)/2+1` -/
def P16693185843987657697.Spec : Prop :=
  ∀ n, P16693185843987657697.a n = (A084920 (n + 1) : ℚ)

theorem P16693185843987657697.correct : P16693185843987657697.Spec := by
  intro n
  simp only [A084920, Nat.add_sub_cancel, A084920.P16693185843987657697.a, A084920.P13392903182497119137.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A153480, A153480.P7601742437354690742.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A084920

/-! ## A084920.P1993661571412423642

`A287922(n+1)-5`
-/

namespace A084920.P1993661571412423642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287922 (n + 1) - 5

end

end A084920.P1993661571412423642

namespace A084920

/-- `A287922(n+1)-5` -/
def P1993661571412423642.Spec : Prop :=
  ∀ n, P1993661571412423642.a n = A084920 (n + 1)

end A084920

/-! ## A084920.P12546753682591714482

`A182174(n+1)+n`
-/

namespace A084920.P12546753682591714482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182174 (n + 1) + (n : ℤ)

end

end A084920.P12546753682591714482

namespace A084920

/-- `A182174(n+1)+n` -/
def P12546753682591714482.Spec : Prop :=
  ∀ n, P12546753682591714482.a n = A084920 (n + 1)

theorem P12546753682591714482.correct : P12546753682591714482.Spec := by
  intro n
  simp only [A084920, Nat.add_sub_cancel, A084920.P12546753682591714482.a, A084920.P13392903182497119137.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A182174, A182174.P16448291357391898493.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A084920

/-! ## A084920.P5978777268021195932

`floor(sqrt(A138401(n+1)))`
-/

namespace A084920.P5978777268021195932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A138401 (n + 1))

end

end A084920.P5978777268021195932

namespace A084920

/-- `floor(sqrt(A138401(n+1)))` -/
def P5978777268021195932.Spec : Prop :=
  ∀ n, P5978777268021195932.a n = A084920 (n + 1)

end A084920

/-! ## A084920.P17875634687814576580

`floor(sqrt(A138402(n+1)))`
-/

namespace A084920.P17875634687814576580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A138402 (n + 1))

end

end A084920.P17875634687814576580

namespace A084920

/-- `floor(sqrt(A138402(n+1)))` -/
def P17875634687814576580.Spec : Prop :=
  ∀ n, P17875634687814576580.a n = A084920 (n + 1)

end A084920

/-! ## A084920.P13387040163986249309

`Δ[A007504(n)]²-1`
-/

namespace A084920.P13387040163986249309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - 1

end

end A084920.P13387040163986249309

namespace A084920

/-- `Δ[A007504(n)]²-1` -/
def P13387040163986249309.Spec : Prop :=
  ∀ n, P13387040163986249309.a n = A084920 (n + 1)

end A084920

/-! ## A084920.P7690329196207823850

`Δ[A008348(n)]²-1`
-/

namespace A084920.P7690329196207823850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - 1

end

end A084920.P7690329196207823850

namespace A084920

/-- `Δ[A008348(n)]²-1` -/
def P7690329196207823850.Spec : Prop :=
  ∀ n, P7690329196207823850.a n = A084920 (n + 1)

end A084920

/-! ## A084920.P15892269102800960389

`Δ[A022837(n)]²-1`
-/

namespace A084920.P15892269102800960389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - 1

end

end A084920.P15892269102800960389

namespace A084920

/-- `Δ[A022837(n)]²-1` -/
def P15892269102800960389.Spec : Prop :=
  ∀ n, P15892269102800960389.a n = A084920 (n + 1)

end A084920

/-! ## A084920.P12501679050730231268

`Δ[A064365(n)]²-1`
-/

namespace A084920.P12501679050730231268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - 1

end

end A084920.P12501679050730231268

namespace A084920

/-- `Δ[A064365(n)]²-1` -/
def P12501679050730231268.Spec : Prop :=
  ∀ n, P12501679050730231268.a n = A084920 (n + 1)

end A084920

/-! ## A084920.P5445135649007712345

`Δ[A309222(n)]²-1`
-/

namespace A084920.P5445135649007712345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - 1

end

end A084920.P5445135649007712345

namespace A084920

/-- `Δ[A309222(n)]²-1` -/
def P5445135649007712345.Spec : Prop :=
  ∀ n, P5445135649007712345.a n = A084920 (n + 1)

end A084920

/-!
# A084921: a(n) = lcm(p-1, p+1) where p is the n-th prime.

The programs for A084921, the canonical program `A084921.P9444845645736558906` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084921 has offset 1).

The definition of A084921 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084921.P9444845645736558906

`A009286(A000040(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A084921

/-- `A009286(A000040(n+1))` -/
def P9444845645736558906.Spec : Prop :=
  ∀ n, P9444845645736558906.a n = A084921 (n + 1)

theorem P9444845645736558906.correct : P9444845645736558906.Spec := by
  intro n
  simp only [A084921, Nat.add_sub_cancel]

end A084921

/-! ## A084921.P6990821540545604271

`lcm(2, A084920(n+1))/2`
-/

namespace A084921.P6990821540545604271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A084920 (n + 1)) : ℚ) / 2

end

end A084921.P6990821540545604271

namespace A084921

/-- `lcm(2, A084920(n+1))/2` -/
def P6990821540545604271.Spec : Prop :=
  ∀ n, P6990821540545604271.a n = (A084921 (n + 1) : ℚ)

end A084921

/-! ## A084921.P8062135450618471510

`A124434(n)+a(n-1)` with `a(0)=3, a(1)=4`
-/

namespace A084921.P8062135450618471510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n a =>
  A124434 n + a (n - 1)

end

end A084921.P8062135450618471510

namespace A084921

/-- `A124434(n)+a(n-1)` -/
def P8062135450618471510.Spec : Prop :=
  ∀ n, P8062135450618471510.a n = A084921 (n + 1)

end A084921

/-! ## A084921.P11982289882949634708

`A110494(n+1)+A057428(n)`
-/

namespace A084921.P11982289882949634708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110494 (n + 1) + A057428 n

end

end A084921.P11982289882949634708

namespace A084921

/-- `A110494(n+1)+A057428(n)` -/
def P11982289882949634708.Spec : Prop :=
  ∀ n, P11982289882949634708.a n = A084921 (n + 1)

end A084921

/-! ## A084921.P10065004028186688442

`A110494(n+1)-A057427(n)`
-/

namespace A084921.P10065004028186688442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110494 (n + 1) - A057427 n

end

end A084921.P10065004028186688442

namespace A084921

/-- `A110494(n+1)-A057427(n)` -/
def P10065004028186688442.Spec : Prop :=
  ∀ n, P10065004028186688442.a n = A084921 (n + 1)

end A084921

/-! ## A084921.P8922533752360213457

`A138420(n+1)%A153480(n)`
-/

namespace A084921.P8922533752360213457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138420 (n + 1)) (A153480 n)

end

end A084921.P8922533752360213457

namespace A084921

/-- `A138420(n+1)%A153480(n)` -/
def P8922533752360213457.Spec : Prop :=
  ∀ n, P8922533752360213457.a n = A084921 (n + 1)

end A084921

/-! ## A084921.P9424585501069281456

`A008864(n+1)*A130290(n+1)`
-/

namespace A084921.P9424585501069281456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) * A130290 (n + 1)

end

end A084921.P9424585501069281456

namespace A084921

/-- `A008864(n+1)*A130290(n+1)` -/
def P9424585501069281456.Spec : Prop :=
  ∀ n, P9424585501069281456.a n = A084921 (n + 1)

end A084921

/-! ## A084921.P1395650247138955405

`A039915(n+1)*A111333(n+1)`
-/

namespace A084921.P1395650247138955405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039915 (n + 1) * A111333 (n + 1)

end

end A084921.P1395650247138955405

namespace A084921

/-- `A039915(n+1)*A111333(n+1)` -/
def P1395650247138955405.Spec : Prop :=
  ∀ n, P1395650247138955405.a n = A084921 (n + 1)

end A084921

/-! ## A084921.P17950470775961263706

`A117762(n+1)/A000040(n+1)`
-/

namespace A084921.P17950470775961263706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117762 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A084921.P17950470775961263706

namespace A084921

/-- `A117762(n+1)/A000040(n+1)` -/
def P17950470775961263706.Spec : Prop :=
  ∀ n, P17950470775961263706.a n = (A084921 (n + 1) : ℚ)

end A084921

/-! ## A084921.P14246780916537887366

`A127918(n+1)/A006005(n+1)`
-/

namespace A084921.P14246780916537887366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127918 (n + 1) : ℚ) / (A006005 (n + 1) : ℚ)

end

end A084921.P14246780916537887366

namespace A084921

/-- `A127918(n+1)/A006005(n+1)` -/
def P14246780916537887366.Spec : Prop :=
  ∀ n, P14246780916537887366.a n = (A084921 (n + 1) : ℚ)

end A084921

/-! ## A084921.P14280208897562711736

`A138443(n+1)%A061725(n+1)`
-/

namespace A084921.P14280208897562711736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138443 (n + 1)) (A061725 (n + 1))

end

end A084921.P14280208897562711736

namespace A084921

/-- `A138443(n+1)%A061725(n+1)` -/
def P14280208897562711736.Spec : Prop :=
  ∀ n, P14280208897562711736.a n = A084921 (n + 1)

end A084921

/-! ## A084921.P16933870866846988066

`gcd(A084920(n+1), A117762(n+1))`
-/

namespace A084921.P16933870866846988066
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A084920 (n + 1)) (A117762 (n + 1))

end

end A084921.P16933870866846988066

namespace A084921

/-- `gcd(A084920(n+1), A117762(n+1))` -/
def P16933870866846988066.Spec : Prop :=
  ∀ n, (P16933870866846988066.a n : ℤ) = A084921 (n + 1)

end A084921

/-! ## A084921.P10826140874283263026

`lcm(A006093(n+1), A008864(n+1))`
-/

namespace A084921.P10826140874283263026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006093 (n + 1)) (A008864 (n + 1))

end

end A084921.P10826140874283263026

namespace A084921

/-- `lcm(A006093(n+1), A008864(n+1))` -/
def P10826140874283263026.Spec : Prop :=
  ∀ n, (P10826140874283263026.a n : ℤ) = A084921 (n + 1)

end A084921

/-! ## A084921.P6457456033322643767

`lcm(A039915(n+1), A055670(n+1))`
-/

namespace A084921.P6457456033322643767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A039915 (n + 1)) (A055670 (n + 1))

end

end A084921.P6457456033322643767

namespace A084921

/-- `lcm(A039915(n+1), A055670(n+1))` -/
def P6457456033322643767.Spec : Prop :=
  ∀ n, (P6457456033322643767.a n : ℤ) = A084921 (n + 1)

end A084921

/-! ## A084921.P2352590179808313924

`lcm(A014686(n+1), A172022(n+1))`
-/

namespace A084921.P2352590179808313924
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014686 (n + 1)) (A172022 (n + 1))

end

end A084921.P2352590179808313924

namespace A084921

/-- `lcm(A014686(n+1), A172022(n+1))` -/
def P2352590179808313924.Spec : Prop :=
  ∀ n, (P2352590179808313924.a n : ℤ) = A084921 (n + 1)

end A084921

/-! ## A084921.P10678883711503829257

`xor(A000040(n+1)², A054977(n))/2`
-/

namespace A084921.P10678883711503829257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (A000040 (n + 1) ^ 2) (A054977 n) : ℚ) / 2

end

end A084921.P10678883711503829257

namespace A084921

/-- `xor(A000040(n+1)², A054977(n))/2` -/
def P10678883711503829257.Spec : Prop :=
  ∀ n, P10678883711503829257.a n = (A084921 (n + 1) : ℚ)

end A084921

/-! ## A084921.P13148621013140703111

`(A000040(n+1)+1)*A130290(n+1)`
-/

namespace A084921.P13148621013140703111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) + 1) * A130290 (n + 1)

end

end A084921.P13148621013140703111

namespace A084921

/-- `(A000040(n+1)+1)*A130290(n+1)` -/
def P13148621013140703111.Spec : Prop :=
  ∀ n, P13148621013140703111.a n = A084921 (n + 1)

end A084921

/-!
# A084922: a(n) = (prime(n)-1)*(prime(n)+1)/6.

The programs for A084922, the canonical program `A084922.P12180075061364049737` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084922 has offset 3).

The definition of A084922 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084922.P12142189937185721109

`A084921(n+3)/3`
-/

namespace A084922.P12142189937185721109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084921 (n + 3) : ℚ) / 3

end

end A084922.P12142189937185721109

namespace A084922

/-- `A084921(n+3)/3` -/
def P12142189937185721109.Spec : Prop :=
  ∀ n, P12142189937185721109.a n = (A084922 (n + 3) : ℚ)

end A084922

/-! ## A084922.P12180075061364049737

`A084920(n+3)/6`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A084922

/-- `A084920(n+3)/6` -/
def P12180075061364049737.Spec : Prop :=
  ∀ n, P12180075061364049737.a n = (A084922 (n + 3) : ℚ)

end A084922

/-! ## A084922.P10089168997066484364

`(A000040(n+3)²-1)/6`
-/

namespace A084922.P10089168997066484364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 3) ^ 2 - 1 : ℚ) / 6

end

end A084922.P10089168997066484364

namespace A084922

/-- `(A000040(n+3)²-1)/6` -/
def P10089168997066484364.Spec : Prop :=
  ∀ n, P10089168997066484364.a n = (A084922 (n + 3) : ℚ)

end A084922

/-! ## A084922.P7331689291528871772

`(A000040(n+3)-1)*(A000040(n+3)+1)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A084922.P7331689291528871772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000040 (n + 3) - 1) * (A000040 (n + 3) + 1) : ℚ) / 6

end

end A084922.P7331689291528871772

namespace A084922

/-- `(A000040(n+3)-1)*(A000040(n+3)+1)/6` -/
def P7331689291528871772.Spec : Prop :=
  ∀ n, P7331689291528871772.a n = (A084922 (n + 3) : ℚ)

end A084922

/-! ## A084922.P9789673031943160119

`floor(p?[2*n+5]²/3)/2`
-/

namespace A084922.P9789673031943160119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2 : ℚ) / 3⌋ : ℚ) / 2

end

end A084922.P9789673031943160119

namespace A084922

/-- `floor(p?[2*n+5]²/3)/2` -/
def P9789673031943160119.Spec : Prop :=
  ∀ n, P9789673031943160119.a n = (A084922 (n + 3) : ℚ)

end A084922

/-! ## A084922.P8206996055673713029

`A024700(n+1)/2`
-/

namespace A084922.P8206996055673713029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024700 (n + 1) : ℚ) / 2

end

end A084922.P8206996055673713029

namespace A084922

/-- `A024700(n+1)/2` -/
def P8206996055673713029.Spec : Prop :=
  ∀ n, P8206996055673713029.a n = (A084922 (n + 3) : ℚ)

end A084922

/-! ## A084922.P12530556586160958201

`2*A081115(n+3)`
-/

namespace A084922.P12530556586160958201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081115 (n + 3)

end

end A084922.P12530556586160958201

namespace A084922

/-- `2*A081115(n+3)` -/
def P12530556586160958201.Spec : Prop :=
  ∀ n, P12530556586160958201.a n = A084922 (n + 3)

end A084922

/-! ## A084922.P13339718767401109218

`4*A024702(n+3)`
-/

namespace A084922.P13339718767401109218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A024702 (n + 3)

end

end A084922.P13339718767401109218

namespace A084922

/-- `4*A024702(n+3)` -/
def P13339718767401109218.Spec : Prop :=
  ∀ n, P13339718767401109218.a n = A084922 (n + 3)

end A084922

/-! ## A084922.P10951069895335587215

`(A286679(n+3)-1)/4`
-/

namespace A084922.P10951069895335587215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286679 (n + 3) - 1 : ℚ) / 4

end

end A084922.P10951069895335587215

namespace A084922

/-- `(A286679(n+3)-1)/4` -/
def P10951069895335587215.Spec : Prop :=
  ∀ n, P10951069895335587215.a n = (A084922 (n + 3) : ℚ)

end A084922

/-! ## A084922.P12006273494380938337

`A081115(n+3)²/A024702(n+3)`
-/

namespace A084922.P12006273494380938337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081115 (n + 3) ^ 2 : ℚ) / (A024702 (n + 3) : ℚ)

end

end A084922.P12006273494380938337

namespace A084922

/-- `A081115(n+3)²/A024702(n+3)` -/
def P12006273494380938337.Spec : Prop :=
  ∀ n, P12006273494380938337.a n = (A084922 (n + 3) : ℚ)

end A084922

/-! ## A084922.P13292719936438093127

`A024702(n+3)/(A158388(n)/2)²`
-/

namespace A084922.P13292719936438093127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024702 (n + 3) : ℚ) / ((A158388 n : ℚ) / 2) ^ 2

end

end A084922.P13292719936438093127

namespace A084922

/-- `A024702(n+3)/(A158388(n)/2)²` -/
def P13292719936438093127.Spec : Prop :=
  ∀ n, P13292719936438093127.a n = (A084922 (n + 3) : ℚ)

end A084922

/-! ## A084922.P18214699146618464227

`A024700(n+1)-(A081115(n+3)+A081115(n+3))`
-/

namespace A084922.P18214699146618464227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024700 (n + 1) - (A081115 (n + 3) + A081115 (n + 3))

end

end A084922.P18214699146618464227

namespace A084922

/-- `A024700(n+1)-(A081115(n+3)+A081115(n+3))` -/
def P18214699146618464227.Spec : Prop :=
  ∀ n, P18214699146618464227.a n = A084922 (n + 3)

end A084922

/-! ## A084922.P10188316453520920604

`A216244(n+3)/3`
-/

namespace A084922.P10188316453520920604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216244 (n + 3) : ℚ) / 3

end

end A084922.P10188316453520920604

namespace A084922

/-- `A216244(n+3)/3` -/
def P10188316453520920604.Spec : Prop :=
  ∀ n, P10188316453520920604.a n = (A084922 (n + 3) : ℚ)

end A084922

/-! ## A084922.P13268087290180301252

`(A066885(n+3)-1)/3`
-/

namespace A084922.P13268087290180301252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066885 (n + 3) - 1 : ℚ) / 3

end

end A084922.P13268087290180301252

namespace A084922

/-- `(A066885(n+3)-1)/3` -/
def P13268087290180301252.Spec : Prop :=
  ∀ n, P13268087290180301252.a n = (A084922 (n + 3) : ℚ)

end A084922

/-! ## A084922.P15052368348633094471

`2/3*A024701(n+2)`
-/

namespace A084922.P15052368348633094471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A024701 (n + 2) : ℚ)

end

end A084922.P15052368348633094471

namespace A084922

/-- `2/3*A024701(n+2)` -/
def P15052368348633094471.Spec : Prop :=
  ∀ n, P15052368348633094471.a n = (A084922 (n + 3) : ℚ)

end A084922

/-! ## A084922.P15766763267076508078

`A216244(n+3)-A024700(n+1)`
-/

namespace A084922.P15766763267076508078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216244 (n + 3) - A024700 (n + 1)

end

end A084922.P15766763267076508078

namespace A084922

/-- `A216244(n+3)-A024700(n+1)` -/
def P15766763267076508078.Spec : Prop :=
  ∀ n, P15766763267076508078.a n = A084922 (n + 3)

end A084922

/-! ## A084922.P17957549722594190178

`A061066(n+3)+A024702(n+3)`
-/

namespace A084922.P17957549722594190178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061066 (n + 3) + A024702 (n + 3)

end

end A084922.P17957549722594190178

namespace A084922

/-- `A061066(n+3)+A024702(n+3)` -/
def P17957549722594190178.Spec : Prop :=
  ∀ n, P17957549722594190178.a n = A084922 (n + 3)

end A084922

/-! ## A084922.P3041342896140325051

`A024701(n+2)-A081115(n+3)`
-/

namespace A084922.P3041342896140325051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024701 (n + 2) - A081115 (n + 3)

end

end A084922.P3041342896140325051

namespace A084922

/-- `A024701(n+2)-A081115(n+3)` -/
def P3041342896140325051.Spec : Prop :=
  ∀ n, P3041342896140325051.a n = A084922 (n + 3)

end A084922

/-! ## A084922.P11291219677718418822

`A024701(n+2)+A024701(n+2)-A024700(n+1)`
-/

namespace A084922.P11291219677718418822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024701 (n + 2) + (A024701 (n + 2) - A024700 (n + 1))

end

end A084922.P11291219677718418822

namespace A084922

/-- `A024701(n+2)+A024701(n+2)-A024700(n+1)` -/
def P11291219677718418822.Spec : Prop :=
  ∀ n, P11291219677718418822.a n = A084922 (n + 3)

end A084922

/-! ## A084922.P12146865180912200850

`A024701(n+2)-(A024702(n+3)+A024702(n+3))`
-/

namespace A084922.P12146865180912200850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024701 (n + 2) - (A024702 (n + 3) + A024702 (n + 3))

end

end A084922.P12146865180912200850

namespace A084922

/-- `A024701(n+2)-(A024702(n+3)+A024702(n+3))` -/
def P12146865180912200850.Spec : Prop :=
  ∀ n, P12146865180912200850.a n = A084922 (n + 3)

end A084922

/-!
# A084924: Let t(x) be the highest power of 2 which divides x+1. Then a(1)=3; a(n) is the least prime p for which t(p) > t(a(n-1)).

The programs for A084924, there is no canonical definition to state claims against.
-/

/-! ## A084924.P1524381849159849399

`record[A127582(abs(1-n))]`
-/

namespace A084924.P1524381849159849399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127582 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084924.P1524381849159849399

/-! ## A084924.P12901012011687851302

`record[A087522(abs(2-n))]`
-/

namespace A084924.P12901012011687851302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087522 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084924.P12901012011687851302

/-! ## A084924.P7074136150371698172

`record[or(n+1, A087522(n))]`
-/

namespace A084924.P7074136150371698172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A087522 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084924.P7074136150371698172

/-! ## A084924.P5662646550788633253

`record[A087522(n)+A000007(n)]`
-/

namespace A084924.P5662646550788633253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087522 n + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084924.P5662646550788633253

/-! ## A084924.P7040195987455955793

`record[or(A087522(n), A108115(n))]`
-/

namespace A084924.P7040195987455955793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A087522 n) (A108115 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084924.P7040195987455955793

/-! ## A084924.P13297972100997930331

`record[or(A087522(n), A209599(n))]`
-/

namespace A084924.P13297972100997930331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A087522 n) (A209599 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084924.P13297972100997930331

/-!
# A084925: Inverse hyperbolic cotangent irreducible numbers: positive integers such that the arccoth of these numbers form a basis for the space of arccoth of rationals >=1. The hyperbolic analog of the Stormer numbers (A005528).

The programs for A084925, there is no canonical definition to state claims against.
-/

/-! ## A084925.P15670019347793920295

`eq[0, (A008574(A104566(n+1))+1)%A051700(n)]`
-/

namespace A084925.P15670019347793920295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008574 (A104566 (n + 1)).toNat + 1) (A051700 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084925.P15670019347793920295

/-! ## A084925.P15466534649324319328

`eq[0, A051992(n+1)%A051700(n)]`
-/

namespace A084925.P15466534649324319328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051992 (n + 1)) (A051700 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084925.P15466534649324319328

/-! ## A084925.P15217870435822948950

`eq[A051700(n), A304042(A166155(n+1))]`
-/

namespace A084925.P15217870435822948950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304042 (A166155 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084925.P15217870435822948950

/-! ## A084925.P14000103286572271343

`eq[1, and(A051700(n), A051728(n+1))]`
-/

namespace A084925.P14000103286572271343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051700 n) (A051728 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084925.P14000103286572271343

/-! ## A084925.P9996222940545711322

`lt[A133276(n+1), A002378(A141310(n))]`
-/

namespace A084925.P9996222940545711322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133276 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A141310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A084925.P9996222940545711322

/-!
# A084926: Inverse hyperbolic cotangent reducible numbers. The hyperbolic analog of the non-Stormer numbers (A002312).

The programs for A084926, there is no canonical definition to state claims against.
-/

/-! ## A084926.P9873513247874876049

`comp[A084925(n+1)-1]+1`
-/

namespace A084926.P9873513247874876049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084925 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A084926.P9873513247874876049

/-! ## A084926.P8198049148380887183

`comp[A084925(n-a(2%n))]` with `a(0)=0`
-/

namespace A084926.P8198049148380887183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A084925 ((n : ℤ) - f1 (2 % n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A084926.P8198049148380887183

/-! ## A084926.P3284789750227732997

`∩[comp[A084925(n+1)], A099047(n+1)]`
-/

namespace A084926.P3284789750227732997
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084925 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A084926.P3284789750227732997

/-! ## A084926.P10793193240146154672

`A020725(comp[A084925(n+1)-1])`
-/

namespace A084926.P10793193240146154672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084925 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A084926.P10793193240146154672

/-! ## A084926.P7739443532627915781

`∩[A099047(n+1), A325400(n+1)]`
-/

namespace A084926.P7739443532627915781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084926.P7739443532627915781

/-!
# A084927: If the numbers 1 to n^3 are arranged in a cubic array, a(n) is the minimum number of primes in each column of the n^2 columns in the "top view" that can have primes.

The programs for A084927, there is no canonical definition to state claims against.
-/

/-! ## A084927.P9607128094704212715

`A138553(n+4)+A057428(A072576(n+2))`
-/

namespace A084927.P9607128094704212715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138553 (n + 4) + A057428 (A072576 (n + 2)).toNat

end

end A084927.P9607128094704212715

/-! ## A084927.P14251669602775016421

`A138553(n+4)-A057427(A331967(n+1))`
-/

namespace A084927.P14251669602775016421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138553 (n + 4) - A057427 (A331967 (n + 1)).toNat

end

end A084927.P14251669602775016421

/-! ## A084927.P7822328181857452683

`A023583(A023596(n+1))%A138553(n+4)`
-/

namespace A084927.P7822328181857452683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023583 (A023596 (n + 1)).toNat) (A138553 (n + 4))

end

end A084927.P7822328181857452683

/-! ## A084927.P4062686142510551567

`A051697(A333458(n+1))%A138553(n+4)`
-/

namespace A084927.P4062686142510551567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051697 (A333458 (n + 1)).toNat) (A138553 (n + 4))

end

end A084927.P4062686142510551567

/-! ## A084927.P16498047570025910020

`A138553(n+4)-A034460(2^A263744(n+1))`
-/

namespace A084927.P16498047570025910020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138553 (n + 4) - A034460 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A263744 (n + 1) : ℤ))).toNat

end

end A084927.P16498047570025910020

/-!
# A084928: If the numbers 1 to n^3 are arranged in a cubic array, a(n) is the minimum number of primes in each row of the n^2 rows in the "east-west view" that can have primes.

The programs for A084928, there is no canonical definition to state claims against.
-/

/-! ## A084928.P392837571715403228

`and(A007953(A265571(n)), A292438(n))`
-/

namespace A084928.P392837571715403228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007953 (A265571 n).toNat) (A292438 n)

end

end A084928.P392837571715403228

/-! ## A084928.P16028577787827046599

`A033182(gcd(A103221(n), A225633(n)))`
-/

namespace A084928.P16028577787827046599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (Int.gcd (A103221 n) (A225633 n))

end

end A084928.P16028577787827046599

/-! ## A084928.P11953420945042175609

`A293814(A103221(n)+Δ[A225643(n)])`
-/

namespace A084928.P11953420945042175609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293814 (A103221 n + (f1 (n + 1) - f1 n)).toNat

end

end A084928.P11953420945042175609

/-! ## A084928.P13900843846300177686

`A130638(A103221(n)+Δ[A225643(n)]+2)`
-/

namespace A084928.P13900843846300177686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130638 (A103221 n + (f1 (n + 1) - f1 n) + 2).toNat

end

end A084928.P13900843846300177686

/-! ## A084928.P10563602522036597930

`and(A265552(A265570(n)), A292438(n))`
-/

namespace A084928.P10563602522036597930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A265552 (A265570 n).toNat) (A292438 n)

end

end A084928.P10563602522036597930

/-! ## A084928.P16111614174275331678

`and(A155797(A103221(n)), A225634(n))`
-/

namespace A084928.P16111614174275331678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A155797 (A103221 n).toNat) (A225634 n)

end

end A084928.P16111614174275331678

/-! ## A084928.P17979843287859603363

`floor(A131156(n)/A147562(A225634(n)))`
-/

namespace A084928.P17979843287859603363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A131156 n : ℚ) / (A147562 (A225634 n).toNat : ℚ)⌋

end

end A084928.P17979843287859603363

/-!
# A084929: If the numbers 1 to n^3 are arranged in a cubic array, a(n) is the minimum number of primes in each column of the n^2 columns in the "north-south view" that can have primes.

The programs for A084929, there is no canonical definition to state claims against.
-/

/-! ## A084929.P6803064908813087667

`A010051(A081668(n))+A001222(A324537(n+1))`
-/

namespace A084929.P6803064908813087667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A081668 n).toNat + A001222 (A324537 (n + 1)).toNat

end

end A084929.P6803064908813087667

/-! ## A084929.P709524729027240002

`A328830(n+1)-A293810(A182522(n))`
-/

namespace A084929.P709524729027240002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328830 (n + 1) - A293810 (A182522 n).toNat

end

end A084929.P709524729027240002

/-! ## A084929.P11622933453224050928

`A140747(gcd(A000204(n+1), A027656(n)))`
-/

namespace A084929.P11622933453224050928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140747 (Int.gcd (A000204 (n + 1)) (A027656 n))

end

end A084929.P11622933453224050928

/-! ## A084929.P17567137604050063513

`A347440(n+1)+A093709(A156552(3*n+4))`
-/

namespace A084929.P17567137604050063513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347440 (n + 1) + A093709 (A156552 (3 * n + 4)).toNat

end

end A084929.P17567137604050063513

/-! ## A084929.P12947326153414462306

`A324774(A296188(n+1))%A000005(n+1)`
-/

namespace A084929.P12947326153414462306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324774 (A296188 (n + 1)).toNat) (A000005 (n + 1))

end

end A084929.P12947326153414462306

/-!
# A084930: Triangle of coefficients of Chebyshev polynomials T_{2n+1} (x).

The programs for A084930, the canonical program `A084930.P17811611135321501921` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084930 has offset 0).

The definition of A084930 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4950 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084930.P828430418666695698

`A008310(C(comp[∑[n]]-n, 2)+n)`
-/

namespace A084930.P828430418666695698
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008310 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 + n)

end

end A084930.P828430418666695698

namespace A084930

/-- `A008310(C(comp[∑[n]]-n, 2)+n)` -/
def P828430418666695698.Spec : Prop :=
  ∀ n, P828430418666695698.a n = A084930 n

end A084930

/-! ## A084930.P8954605906254766989

`A008310(lt[0, n-round(sqrt(n))²]-1)`
-/

namespace A084930.P8954605906254766989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n - 1)

end

end A084930.P8954605906254766989

namespace A084930

/-- `A008310(lt[0, n-round(sqrt(n))²]-1)` -/
def P8954605906254766989.Spec : Prop :=
  ∀ n, P8954605906254766989.a n = A084930 n

end A084930

/-! ## A084930.P17811611135321501921

`A008310(eq[0, floor(sqrt(4*n+1))%2])`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A084930

/-- `A008310(eq[0, floor(sqrt(4*n+1))%2])` -/
def P17811611135321501921.Spec : Prop :=
  ∀ n, P17811611135321501921.a n = A084930 n

theorem P17811611135321501921.correct : P17811611135321501921.Spec := by
  intro n
  simp only [A084930]

end A084930

/-! ## A084930.P2302753595426012884

`A137307(A195437(n))`
-/

namespace A084930.P2302753595426012884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137307 (A195437 n).toNat

end

end A084930.P2302753595426012884

namespace A084930

/-- `A137307(A195437(n))` -/
def P2302753595426012884.Spec : Prop :=
  ∀ n, P2302753595426012884.a n = A084930 n

end A084930

/-! ## A084930.P3509189229861815092

`A008310(A064801(n+1))`
-/

namespace A084930.P3509189229861815092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008310 (A064801 (n + 1)).toNat

end

end A084930.P3509189229861815092

namespace A084930

/-- `A008310(A064801(n+1))` -/
def P3509189229861815092.Spec : Prop :=
  ∀ n, P3509189229861815092.a n = A084930 n

end A084930

/-! ## A084930.P2072059362721525666

`A008310(eq[0, A109983(n)])`
-/

namespace A084930.P2072059362721525666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084930.P2072059362721525666

namespace A084930

/-- `A008310(eq[0, A109983(n)])` -/
def P2072059362721525666.Spec : Prop :=
  ∀ n, P2072059362721525666.a n = A084930 n

end A084930

/-! ## A084930.P5172723103509914578

`A008310(eq[0, A118175(n)])`
-/

namespace A084930.P5172723103509914578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118175 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084930.P5172723103509914578

namespace A084930

/-- `A008310(eq[0, A118175(n)])` -/
def P5172723103509914578.Spec : Prop :=
  ∀ n, P5172723103509914578.a n = A084930 n

end A084930

/-! ## A084930.P6707131795811904999

`A008310(A004202(n+1)-1)`
-/

namespace A084930.P6707131795811904999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008310 (A004202 (n + 1) - 1).toNat

end

end A084930.P6707131795811904999

namespace A084930

/-- `A008310(A004202(n+1)-1)` -/
def P6707131795811904999.Spec : Prop :=
  ∀ n, P6707131795811904999.a n = A084930 n

end A084930

/-! ## A084930.P17892553923267180670

`A053120(record[xor(1, n)+round(sqrt(n+1))²])`
-/

namespace A084930.P17892553923267180670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n : ℤ) + SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053120 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A084930.P17892553923267180670

namespace A084930

/-- `A053120(record[xor(1, n)+round(sqrt(n+1))²])` -/
def P17892553923267180670.Spec : Prop :=
  ∀ n, P17892553923267180670.a n = A084930 n

end A084930

/-! ## A084930.P2092043486951821241

`A053120(2*n+∑[char[∑[n]]]²+1)`
-/

namespace A084930.P2092043486951821241
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053120 (2 * n + ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1))

end

end A084930.P2092043486951821241

namespace A084930

/-- `A053120(2*n+∑[char[∑[n]]]²+1)` -/
def P2092043486951821241.Spec : Prop :=
  ∀ n, P2092043486951821241.a n = A084930 n

end A084930

/-! ## A084930.P16231101185475602682

`A137422(A185871(n+1))`
-/

namespace A084930.P16231101185475602682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137422 (A185871 (n + 1)).toNat

end

end A084930.P16231101185475602682

namespace A084930

/-- `A137422(A185871(n+1))` -/
def P16231101185475602682.Spec : Prop :=
  ∀ n, P16231101185475602682.a n = A084930 n

end A084930

/-!
# A084932: Primes corresponding to A084931.

The programs for A084932, there is no canonical definition to state claims against.
-/

/-! ## A084932.P12681857684693541390

`A029908(A001414(A084931(n+1)))`
-/

namespace A084932.P12681857684693541390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029908 (A001414 (A084931 (n + 1)).toNat).toNat

end

end A084932.P12681857684693541390

/-! ## A084932.P1313802420455110183

`filter[A155189(n+2), A089829(#)]`
-/

namespace A084932.P1313802420455110183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155189 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A089829 (f1 j).toNat = 1) n)

end

end A084932.P1313802420455110183

/-! ## A084932.P7096779039733707010

`A059788(lt[A255562(n+1), A227432(n+1)])`
-/

namespace A084932.P7096779039733707010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059788 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A084932.P7096779039733707010

/-! ## A084932.P18204992403224105181

`filter[A124661(n+3), A089829(#)]`
-/

namespace A084932.P18204992403224105181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124661 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A089829 (f1 j).toNat = 1) n)

end

end A084932.P18204992403224105181

/-! ## A084932.P5608406959328637098

`filter[A385503(n+3), A089829(#)]`
-/

namespace A084932.P5608406959328637098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385503 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A089829 (f1 j).toNat = 1) n)

end

end A084932.P5608406959328637098

/-!
# A084934: Rectangular array T(m,n) (m>=1, n>=1) read by antidiagonals: row m consists of the numbers ( i + mj : i >= 0, j >= 0 ), sorted in increasing order, with repetitions allowed.

The programs for A084934, there is no canonical definition to state claims against.
-/

/-! ## A084934.P6409370213351448782

`A072643(round(log(A060637(n))))`
-/

namespace A084934.P6409370213351448782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 (SequenceMachineLib.roundAway (Real.log (A060637 n : ℝ))).toNat

end

end A084934.P6409370213351448782

/-! ## A084934.P1401218841267631962

`A276621(round(log(A060637(n))))`
-/

namespace A084934.P1401218841267631962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276621 (SequenceMachineLib.roundAway (Real.log (A060637 n : ℝ))).toNat

end

end A084934.P1401218841267631962

/-! ## A084934.P4847885380864050192

`A004218(A128747(n+2))`
-/

namespace A084934.P4847885380864050192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A128747 (n + 2)).toNat

end

end A084934.P4847885380864050192

/-! ## A084934.P11512418738062264603

`A056556(floor(log2(A222159(n+1))))`
-/

namespace A084934.P11512418738062264603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (Nat.log 2 (A222159 (n + 1)).toNat)

end

end A084934.P11512418738062264603

/-! ## A084934.P6120977334088822332

`A056556(round(log2(A222159(n+1))))`
-/

namespace A084934.P6120977334088822332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (SequenceMachineLib.roundAway (Real.logb 2 (A222159 (n + 1) : ℝ))).toNat

end

end A084934.P6120977334088822332

/-!
# A084935: Diagonal sums of the array T in A084934.

The programs for A084935, there is no canonical definition to state claims against.
-/

/-! ## A084935.P2502412104960259109

`∑[A059851(n)-A018843(A326497(n))]`
-/

namespace A084935.P2502412104960259109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059851 n - A018843 (A326497 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084935.P2502412104960259109

/-! ## A084935.P18290184897980296804

`∑[∑[∑{d}[n, -(-1)^#]]]%A087610(n+1)`
-/

namespace A084935.P18290184897980296804
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), (-((-1) ^ d))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A087610 (n + 1))

end

end A084935.P18290184897980296804

/-! ## A084935.P2542355732070197961

`∑[A059851(n)]%A054903(n+1)`
-/

namespace A084935.P2542355732070197961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A054903 (n + 1))

end

end A084935.P2542355732070197961

/-! ## A084935.P4874995674264932288

`∑[A059851(n)%A004023(n+1)]`
-/

namespace A084935.P4874995674264932288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059851 n) (A004023 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084935.P4874995674264932288

/-!
# A084936: Nonsquarefree numbers divided by their squarefree kernels.

The programs for A084936, the canonical program `A084936.P14305718559506900468` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084936 has offset 1).

The definition of A084936 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A084936.P14305718559506900468

`A003557(A013929(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A084936

/-- `A003557(A013929(n+1))` -/
def P14305718559506900468.Spec : Prop :=
  ∀ n, P14305718559506900468.a n = A084936 (n + 1)

theorem P14305718559506900468.correct : P14305718559506900468.Spec := by
  intro n
  simp only [A084936, Nat.add_sub_cancel]

end A084936

/-! ## A084936.P16195245060163187222

`A013929(n+1)/A076333(n+1)`
-/

namespace A084936.P16195245060163187222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013929 (n + 1) : ℚ) / (A076333 (n + 1) : ℚ)

end

end A084936.P16195245060163187222

namespace A084936

/-- `A013929(n+1)/A076333(n+1)` -/
def P16195245060163187222.Spec : Prop :=
  ∀ n, P16195245060163187222.a n = (A084936 (n + 1) : ℚ)

end A084936

/-! ## A084936.P15064962197261190522

`A336551(comp[A005117(xor(56, n)+1)-1]+1)+1`
-/

namespace A084936.P15064962197261190522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (Nat.xor 56 n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) + 1

end

end A084936.P15064962197261190522

namespace A084936

/-- `A336551(comp[A005117(xor(56, n)+1)-1]+1)+1` -/
def P15064962197261190522.Spec : Prop :=
  ∀ n, P15064962197261190522.a n = A084936 (n + 1)

end A084936

/-! ## A084936.P12187154106783415048

`A013929(n+1)/A007947(A015049(n+1))`
-/

namespace A084936.P12187154106783415048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013929 (n + 1) : ℚ) / (A007947 (A015049 (n + 1)).toNat : ℚ)

end

end A084936.P12187154106783415048

namespace A084936

/-- `A013929(n+1)/A007947(A015049(n+1))` -/
def P12187154106783415048.Spec : Prop :=
  ∀ n, P12187154106783415048.a n = (A084936 (n + 1) : ℚ)

end A084936

/-! ## A084936.P12355320213549397142

`A013929(n+1)/A007947(A015051(n+1))`
-/

namespace A084936.P12355320213549397142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013929 (n + 1) : ℚ) / (A007947 (A015051 (n + 1)).toNat : ℚ)

end

end A084936.P12355320213549397142

namespace A084936

/-- `A013929(n+1)/A007947(A015051(n+1))` -/
def P12355320213549397142.Spec : Prop :=
  ∀ n, P12355320213549397142.a n = (A084936 (n + 1) : ℚ)

end A084936

/-! ## A084936.P1460101647219167910

`A013929(n+1)/A007947(A362041(n+1))`
-/

namespace A084936.P1460101647219167910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013929 (n + 1) : ℚ) / (A007947 (A362041 (n + 1)).toNat : ℚ)

end

end A084936.P1460101647219167910

namespace A084936

/-- `A013929(n+1)/A007947(A362041(n+1))` -/
def P1460101647219167910.Spec : Prop :=
  ∀ n, P1460101647219167910.a n = (A084936 (n + 1) : ℚ)

end A084936

/-! ## A084936.P4092451052755638439

`(eq[0, A008683(n+1)]+1)/A007947(A013929(n+1))`
-/

namespace A084936.P4092451052755638439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℚ) / (A007947 (A013929 (n + 1)).toNat : ℚ)

end

end A084936.P4092451052755638439

namespace A084936

/-- `(eq[0, A008683(n+1)]+1)/A007947(A013929(n+1))` -/
def P4092451052755638439.Spec : Prop :=
  ∀ n, P4092451052755638439.a n = (A084936 (n + 1) : ℚ)

end A084936

/-! ## A084936.P11587689009569023512

`(lt[A008966(n+1), 1]+1)/A007947(A013929(n+1))`
-/

namespace A084936.P11587689009569023512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1 : ℚ) / (A007947 (A013929 (n + 1)).toNat : ℚ)

end

end A084936.P11587689009569023512

namespace A084936

/-- `(lt[A008966(n+1), 1]+1)/A007947(A013929(n+1))` -/
def P11587689009569023512.Spec : Prop :=
  ∀ n, P11587689009569023512.a n = (A084936 (n + 1) : ℚ)

end A084936

/-! ## A084936.P11435211409604679042

`A013929(n+1)/A007947(lt[A008683(n+1)², 1]+1)`
-/

namespace A084936.P11435211409604679042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013929 (n + 1) : ℚ) / (A007947 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) : ℚ)

end

end A084936.P11435211409604679042

namespace A084936

/-- `A013929(n+1)/A007947(lt[A008683(n+1)², 1]+1)` -/
def P11435211409604679042.Spec : Prop :=
  ∀ n, P11435211409604679042.a n = (A084936 (n + 1) : ℚ)

end A084936

/-! ## A084936.P11196918392869114647

`A162966(n+2)/A007947(A162966(n+2))`
-/

namespace A084936.P11196918392869114647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162966 (n + 2) : ℚ) / (A007947 (A162966 (n + 2)).toNat : ℚ)

end

end A084936.P11196918392869114647

namespace A084936

/-- `A162966(n+2)/A007947(A162966(n+2))` -/
def P11196918392869114647.Spec : Prop :=
  ∀ n, P11196918392869114647.a n = (A084936 (n + 1) : ℚ)

end A084936

/-! ## A084936.P5459923812236319584

`A013929(n+1)/A015052(A015050(n+1))`
-/

namespace A084936.P5459923812236319584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013929 (n + 1) : ℚ) / (A015052 (A015050 (n + 1)).toNat : ℚ)

end

end A084936.P5459923812236319584

namespace A084936

/-- `A013929(n+1)/A015052(A015050(n+1))` -/
def P5459923812236319584.Spec : Prop :=
  ∀ n, P5459923812236319584.a n = (A084936 (n + 1) : ℚ)

end A084936

/-! ## A084936.P17024531269884270113

`A003557(A368040(n+1))`
-/

namespace A084936.P17024531269884270113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A368040 (n + 1)).toNat

end

end A084936.P17024531269884270113

namespace A084936

/-- `A003557(A368040(n+1))` -/
def P17024531269884270113.Spec : Prop :=
  ∀ n, P17024531269884270113.a n = A084936 (n + 1)

end A084936

/-! ## A084936.P9173342029171740925

`A003557(A162966(n+2))`
-/

namespace A084936.P9173342029171740925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A162966 (n + 2)).toNat

end

end A084936.P9173342029171740925

namespace A084936

/-- `A003557(A162966(n+2))` -/
def P9173342029171740925.Spec : Prop :=
  ∀ n, P9173342029171740925.a n = A084936 (n + 1)

end A084936

/-! ## A084936.P12108942596812366310

`A003557(lt[1, A003557(n+1)]+1)`
-/

namespace A084936.P12108942596812366310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A084936.P12108942596812366310

namespace A084936

/-- `A003557(lt[1, A003557(n+1)]+1)` -/
def P12108942596812366310.Spec : Prop :=
  ∀ n, P12108942596812366310.a n = A084936 (n + 1)

end A084936

/-! ## A084936.P10386662951128692091

`A003557(comp[A005117(xor(56, n)+1)-1]+1)`
-/

namespace A084936.P10386662951128692091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (Nat.xor 56 n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A084936.P10386662951128692091

namespace A084936

/-- `A003557(comp[A005117(xor(56, n)+1)-1]+1)` -/
def P10386662951128692091.Spec : Prop :=
  ∀ n, P10386662951128692091.a n = A084936 (n + 1)

end A084936

/-! ## A084936.P9938728773771490676

`eq[1, A249442(n)]/A007947(A013929(n+1))`
-/

namespace A084936.P9938728773771490676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249442 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / (A007947 (A013929 (n + 1)).toNat : ℚ)

end

end A084936.P9938728773771490676

namespace A084936

/-- `eq[1, A249442(n)]/A007947(A013929(n+1))` -/
def P9938728773771490676.Spec : Prop :=
  ∀ n, P9938728773771490676.a n = (A084936 (n + 1) : ℚ)

end A084936

/-! ## A084936.P8318433793388699750

`A003557(lt[∏{p}[n, #], n])`
-/

namespace A084936.P8318433793388699750
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (SequenceMachineLib.nth (fun j => f1 j < f3 j) n)

end

end A084936.P8318433793388699750

namespace A084936

/-- `A003557(lt[∏{p}[n, #], n])` -/
def P8318433793388699750.Spec : Prop :=
  ∀ n, P8318433793388699750.a n = A084936 (n + 1)

end A084936

/-! ## A084936.P9304983087004226605

`A003557(lt[1, A285718(n+1)])`
-/

namespace A084936.P9304983087004226605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A084936.P9304983087004226605

namespace A084936

/-- `A003557(lt[1, A285718(n+1)])` -/
def P9304983087004226605.Spec : Prop :=
  ∀ n, P9304983087004226605.a n = A084936 (n + 1)

end A084936

/-! ## A084936.P9726224835631004211

`ratio[A084744(n+1)]`
-/

namespace A084936.P9726224835631004211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084744 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A084936.P9726224835631004211

namespace A084936

/-- `ratio[A084744(n+1)]` -/
def P9726224835631004211.Spec : Prop :=
  ∀ n, P9726224835631004211.a n = (A084936 (n + 1) : ℚ)

end A084936

/-! ## A084936.P12786529668740753072

`A084744(n+2)/A084744(n+1)`
-/

namespace A084936.P12786529668740753072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084744 (n + 2) : ℚ) / (A084744 (n + 1) : ℚ)

end

end A084936.P12786529668740753072

namespace A084936

/-- `A084744(n+2)/A084744(n+1)` -/
def P12786529668740753072.Spec : Prop :=
  ∀ n, P12786529668740753072.a n = (A084936 (n + 1) : ℚ)

end A084936

/-!
# A084937: Smallest number which is coprime to the last two predecessors and has not yet appeared; a(1)=1, a(2)=2.

The programs for A084937, there is no canonical definition to state claims against.
-/

/-! ## A084937.P5744112128156983348

`A344307(n+1)-A185284(A027581(n))`
-/

namespace A084937.P5744112128156983348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344307 (n + 1) - A185284 (A027581 n).toNat

end

end A084937.P5744112128156983348

/-! ## A084937.P2674197912659056310

`A344307(n+1)-A185284(A330141(n))`
-/

namespace A084937.P2674197912659056310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344307 (n + 1) - A185284 (A330141 n).toNat

end

end A084937.P2674197912659056310

/-! ## A084937.P10201104451207032381

`A344307(n+1)-A185284(A013948(n+1))`
-/

namespace A084937.P10201104451207032381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344307 (n + 1) - A185284 (A013948 (n + 1)).toNat

end

end A084937.P10201104451207032381

/-! ## A084937.P446057860584787910

`A344307(n+1)-A185284(A096988(n+1))`
-/

namespace A084937.P446057860584787910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344307 (n + 1) - A185284 (A096988 (n + 1)).toNat

end

end A084937.P446057860584787910

/-! ## A084937.P908228657987778116

`A344307(n+1)-A185284(A277124(n+1))`
-/

namespace A084937.P908228657987778116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344307 (n + 1) - A185284 (A277124 (n + 1)).toNat

end

end A084937.P908228657987778116

/-!
# A084938: Triangle read by rows: T(n,k) = Sum_{j>=0} j!*T(n-j-1, k-1) for n >= 0, k >= 0.

The programs for A084938, there is no canonical definition to state claims against.
-/

/-! ## A084938.P12288787287048801488

`A130167(n)+A010893(A069777(n))`
-/

namespace A084938.P12288787287048801488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130167 n + A010893 ((A069777 n).toNat + 13)

end

end A084938.P12288787287048801488

/-! ## A084938.P7776128303245829007

`A130167(n)+A010893(A091351(n))`
-/

namespace A084938.P7776128303245829007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130167 n + A010893 ((A091351 n).toNat + 13)

end

end A084938.P7776128303245829007

/-! ## A084938.P4401515774034060899

`A130167(n)+A010893(A125781(n))`
-/

namespace A084938.P4401515774034060899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130167 n + A010893 ((A125781 n).toNat + 13)

end

end A084938.P4401515774034060899

/-! ## A084938.P2971235074323288785

`A116543(A117414(n))`
-/

namespace A084938.P2971235074323288785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116543 (A117414 n).toNat

end

end A084938.P2971235074323288785

/-! ## A084938.P2333206299703737053

`A001876(A269946(n))`
-/

namespace A084938.P2333206299703737053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 (A269946 n).toNat

end

end A084938.P2333206299703737053

/-!
# A084939: Pentagorials: n-th polygorial for k=5.

The programs for A084939, the canonical program `A084939.P7029245499545971231` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084939 has offset 0).

The definition of A084939 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084939.P7029245499545971231

`A000142(n)/A000079(n)*A008544(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A084939

/-- `A000142(n)/A000079(n)*A008544(n)` -/
def P7029245499545971231.Spec : Prop :=
  ∀ n, P7029245499545971231.a n = (A084939 n : ℚ)

end A084939

/-! ## A084939.P15729037262197981036

`∏[C(n, 2)+n^ceil(atan(n))]`
-/

namespace A084939.P15729037262197981036
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℚ) + (n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A084939.P15729037262197981036

namespace A084939

/-- `∏[C(n, 2)+n^ceil(atan(n))]` -/
def P15729037262197981036.Spec : Prop :=
  ∀ n, P15729037262197981036.a n = (A084939 n : ℚ)

end A084939

/-! ## A084939.P581338357816676302

`∏[∑[a(n-1)+3]]` with `a(0)=1, a(1)=0, a(2)=4`
-/

namespace A084939.P581338357816676302
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 4] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A084939.P581338357816676302

namespace A084939

/-- `∏[∑[a(n-1)+3]]` -/
def P581338357816676302.Spec : Prop :=
  ∀ n, (P581338357816676302.a n : ℤ) = A084939 n

end A084939

/-! ## A084939.P17748243346764234081

`∏[floor(acot(n))+C(n, 2)+n²]`
-/

namespace A084939.P17748243346764234081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + (Nat.choose n 2 + n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A084939.P17748243346764234081

namespace A084939

/-- `∏[floor(acot(n))+C(n, 2)+n²]` -/
def P17748243346764234081.Spec : Prop :=
  ∀ n, P17748243346764234081.a n = A084939 n

end A084939

/-! ## A084939.P4164482895844462538

`(C(n, 2)+n²)*a(n-1)` with `a(0)=1`
-/

namespace A084939.P4164482895844462538
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose n 2 + n ^ 2) * a (n - 1)

end

end A084939.P4164482895844462538

namespace A084939

/-- `(C(n, 2)+n²)*a(n-1)` -/
def P4164482895844462538.Spec : Prop :=
  ∀ n, (P4164482895844462538.a n : ℤ) = A084939 n

end A084939

/-!
# A084940: Heptagorials: n-th polygorial for k=7.

The programs for A084940, there is no canonical definition to state claims against.
-/

/-! ## A084940.P9306160484039698041

`A000142(n)/A000079(n)*A047055(n)`
-/

namespace A084940.P9306160484039698041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A000079 n : ℚ) * (A047055 n : ℚ)

end

end A084940.P9306160484039698041

/-! ## A084940.P16582062700099307429

`(5*C(n, 2)+n)*a(n-1)` with `a(0)=1`
-/

namespace A084940.P16582062700099307429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (5 * Nat.choose n 2 + n) * a (n - 1)

end

end A084940.P16582062700099307429

/-! ## A084940.P12906502557312119519

`a(n-1)*∑[comp[gcd(5, n)+n]]` with `a(0)=1`
-/

namespace A084940.P12906502557312119519
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 5 n + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084940.P12906502557312119519

/-! ## A084940.P9852137362515720285

`∏[gcd(5*C(n, 2)+n, C(n, n²))]`
-/

namespace A084940.P9852137362515720285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (5 * Nat.choose n 2 + n) (Nat.choose n (n ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A084940.P9852137362515720285

/-! ## A084940.P12234981468070815773

`∏[or(5*C(n, 2)+n, C(n, n²))]`
-/

namespace A084940.P12234981468070815773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (5 * Nat.choose n 2 + n) (Nat.choose n (n ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A084940.P12234981468070815773

/-!
# A084941: Octagorials: n-th polygorial for k=8.

The programs for A084941, the canonical program `A084941.P9215614167873030960` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084941 has offset 0).

The definition of A084941 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084941.P9215614167873030960

`n*(3*n-2)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A084941

/-- `n*(3*n-2)*a(n-1)` -/
def P9215614167873030960.Spec : Prop :=
  ∀ n, P9215614167873030960.a n = A084941 n

theorem P9215614167873030960.correct : P9215614167873030960.Spec := by
  intro n
  simp only [A084941]

end A084941

/-! ## A084941.P17491377258194904266

`A000142(n)/A000079(n)*A047657(n)`
-/

namespace A084941.P17491377258194904266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A000079 n : ℚ) * (A047657 n : ℚ)

end

end A084941.P17491377258194904266

namespace A084941

/-- `A000142(n)/A000079(n)*A047657(n)` -/
def P17491377258194904266.Spec : Prop :=
  ∀ n, P17491377258194904266.a n = (A084941 n : ℚ)

end A084941

/-! ## A084941.P6143692304533985008

`n!*∏[floor(abs(3*n-ϕ))]`
-/

namespace A084941.P6143692304533985008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(3 * n : ℝ) - Real.goldenRatio|⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A084941.P6143692304533985008

namespace A084941

/-- `n!*∏[floor(abs(3*n-ϕ))]` -/
def P6143692304533985008.Spec : Prop :=
  ∀ n, P6143692304533985008.a n = A084941 n

end A084941

/-! ## A084941.P4225991612663602653

`∏[(n*(3*n-2))^ceil(abs(sin(n)))]`
-/

namespace A084941.P4225991612663602653
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((3 * n : ℤ) - 2) : ℚ) ^ (⌈|Real.sin (n : ℝ)|⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A084941.P4225991612663602653

namespace A084941

/-- `∏[(n*(3*n-2))^ceil(abs(sin(n)))]` -/
def P4225991612663602653.Spec : Prop :=
  ∀ n, P4225991612663602653.a n = (A084941 n : ℚ)

end A084941

/-! ## A084941.P14953246203947471028

`∏[record[(n²+n)^(n%2)]-n²]`
-/

namespace A084941.P14953246203947471028
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n) ^ (n % 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A084941.P14953246203947471028

namespace A084941

/-- `∏[record[(n²+n)^(n%2)]-n²]` -/
def P14953246203947471028.Spec : Prop :=
  ∀ n, P14953246203947471028.a n = A084941 n

end A084941

/-!
# A084942: Enneagorials: n-th polygorial for k=9.

The programs for A084942, the canonical program `A084942.P4821313571364401220` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084942 has offset 0).

The definition of A084942 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084942.P4821313571364401220

`A000142(n)/A000079(n)*A084947(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A084942

/-- `A000142(n)/A000079(n)*A084947(n)` -/
def P4821313571364401220.Spec : Prop :=
  ∀ n, P4821313571364401220.a n = (A084942 n : ℚ)

end A084942

/-! ## A084942.P15722092427424472878

`(7*C(n, 2)+n)*a(n-1)` with `a(0)=1`
-/

namespace A084942.P15722092427424472878
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (7 * Nat.choose n 2 + n) * a (n - 1)

end

end A084942.P15722092427424472878

namespace A084942

/-- `(7*C(n, 2)+n)*a(n-1)` -/
def P15722092427424472878.Spec : Prop :=
  ∀ n, (P15722092427424472878.a n : ℤ) = A084942 n

end A084942

/-! ## A084942.P3811759580636378330

`a(n-1)*∑[comp[gcd(7, n)+n]]` with `a(0)=1`
-/

namespace A084942.P3811759580636378330
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 7 n + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084942.P3811759580636378330

namespace A084942

/-- `a(n-1)*∑[comp[gcd(7, n)+n]]` -/
def P3811759580636378330.Spec : Prop :=
  ∀ n, (P3811759580636378330.a n : ℤ) = A084942 n

end A084942

/-! ## A084942.P18282125079710743771

`(∑[a(n-1)+7]-1)*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A084942.P18282125079710743771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + 7

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) * a (n - 1)

end

end A084942.P18282125079710743771

namespace A084942

/-- `(∑[a(n-1)+7]-1)*a(n-1)` -/
def P18282125079710743771.Spec : Prop :=
  ∀ n, P18282125079710743771.a n = A084942 n

end A084942

/-! ## A084942.P1137690605080161452

`a(n-1)*A001106(n)` with `a(0)=1`
-/

namespace A084942.P1137690605080161452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A001106 n

end

end A084942.P1137690605080161452

namespace A084942

/-- `a(n-1)*A001106(n)` -/
def P1137690605080161452.Spec : Prop :=
  ∀ n, P1137690605080161452.a n = A084942 n

end A084942

/-!
# A084943: Decagorials: n-th polygorial for k=10.

The programs for A084943, the canonical program `A084943.P14103048050172487520` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084943 has offset 0).

The definition of A084943 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084943.P14103048050172487520

`n*(4*n-3)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A084943

/-- `n*(4*n-3)*a(n-1)` -/
def P14103048050172487520.Spec : Prop :=
  ∀ n, P14103048050172487520.a n = A084943 n

theorem P14103048050172487520.correct : P14103048050172487520.Spec := by
  intro n
  simp only [A084943]

end A084943

/-! ## A084943.P538240856373282777

`A000142(n)/A000079(n)*A084948(n)`
-/

namespace A084943.P538240856373282777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A000079 n : ℚ) * (A084948 n : ℚ)

end

end A084943.P538240856373282777

namespace A084943

/-- `A000142(n)/A000079(n)*A084948(n)` -/
def P538240856373282777.Spec : Prop :=
  ∀ n, P538240856373282777.a n = (A084943 n : ℚ)

end A084943

/-! ## A084943.P1315605182456731514

`∏[record[(n²+n)^(n%2)]-n]`
-/

namespace A084943.P1315605182456731514
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n) ^ (n % 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A084943.P1315605182456731514

namespace A084943

/-- `∏[record[(n²+n)^(n%2)]-n]` -/
def P1315605182456731514.Spec : Prop :=
  ∀ n, P1315605182456731514.a n = A084943 n

end A084943

/-! ## A084943.P9001963562624093955

`n!*A007696(n)`
-/

namespace A084943.P9001963562624093955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A007696 n

end

end A084943.P9001963562624093955

namespace A084943

/-- `n!*A007696(n)` -/
def P9001963562624093955.Spec : Prop :=
  ∀ n, P9001963562624093955.a n = A084943 n

end A084943

/-! ## A084943.P4357937094725603947

`n!*A290319(∑[n])`
-/

namespace A084943.P4357937094725603947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A290319 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084943.P4357937094725603947

namespace A084943

/-- `n!*A290319(∑[n])` -/
def P4357937094725603947.Spec : Prop :=
  ∀ n, P4357937094725603947.a n = A084943 n

end A084943

/-!
# A084944: Hendecagorials: n-th polygorial for k=11.

The programs for A084944, there is no canonical definition to state claims against.
-/

/-! ## A084944.P12953739277247245798

`A000142(n)/A000079(n)*A084949(n)`
-/

namespace A084944.P12953739277247245798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A000079 n : ℚ) * (A084949 n : ℚ)

end

end A084944.P12953739277247245798

/-! ## A084944.P17034439521351861314

`∏[floor(acot(n))+9*C(n, 2)+n]`
-/

namespace A084944.P17034439521351861314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + (9 * Nat.choose n 2 + n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A084944.P17034439521351861314

/-! ## A084944.P14362042174732770122

`(9*C(n, 2)+n)*a(n-1)` with `a(0)=1`
-/

namespace A084944.P14362042174732770122
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (9 * Nat.choose n 2 + n) * a (n - 1)

end

end A084944.P14362042174732770122

/-! ## A084944.P6315327577744211108

`(C(3*n, 2)-2*n)*a(n-1)` with `a(0)=1`
-/

namespace A084944.P6315327577744211108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((Nat.choose (3 * n) 2 : ℤ) - (2 * n : ℤ)) * a (n - 1)

end

end A084944.P6315327577744211108

/-! ## A084944.P388562282158083718

`∏[C(abs(1-3*n)+1, 2)-2*n]`
-/

namespace A084944.P388562282158083718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (|1 - (3 * n : ℤ)| + 1).toNat 2 : ℤ) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A084944.P388562282158083718

/-!
# A084947: a(n) = Product_{i=0..n-1} (7*i+2).

The programs for A084947, the canonical program `A084947.P3066773946224750945` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084947 has offset 0).

The definition of A084947 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084947.P3066773946224750945

`(7*n-5)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A084947

/-- `(7*n-5)*a(n-1)` -/
def P3066773946224750945.Spec : Prop :=
  ∀ n, P3066773946224750945.a n = A084947 n

theorem P3066773946224750945.correct : P3066773946224750945.Spec := by
  intro n
  simp only [A084947]

end A084947

/-! ## A084947.P5457280879195348875

`A084942(n)/A000142(n)*A000079(n)`
-/

namespace A084947.P5457280879195348875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084942 n : ℚ) / (A000142 n : ℚ) * (A000079 n : ℚ)

end

end A084947.P5457280879195348875

namespace A084947

/-- `A084942(n)/A000142(n)*A000079(n)` -/
def P5457280879195348875.Spec : Prop :=
  ∀ n, P5457280879195348875.a n = (A084947 n : ℚ)

end A084947

/-! ## A084947.P15921414233259948852

`∏[a(n-1)+7]` with `a(0)=1, a(1)=2`
-/

namespace A084947.P15921414233259948852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A084947.P15921414233259948852

namespace A084947

/-- `∏[a(n-1)+7]` -/
def P15921414233259948852.Spec : Prop :=
  ∀ n, (P15921414233259948852.a n : ℤ) = A084947 n

end A084947

/-! ## A084947.P11109638855168378057

`∏[record[A078688(n)]-n]`
-/

namespace A084947.P11109638855168378057
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078688 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A084947.P11109638855168378057

namespace A084947

/-- `∏[record[A078688(n)]-n]` -/
def P11109638855168378057.Spec : Prop :=
  ∀ n, P11109638855168378057.a n = A084947 n

end A084947

/-! ## A084947.P3032860854195233699

`∏[abs(record[A188134(n)]-(n+1))]`
-/

namespace A084947.P3032860854195233699
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188134 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - (n + 1 : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A084947.P3032860854195233699

namespace A084947

/-- `∏[abs(record[A188134(n)]-(n+1))]` -/
def P3032860854195233699.Spec : Prop :=
  ∀ n, P3032860854195233699.a n = A084947 n

end A084947

/-!
# A084948: a(n) = Product_{i=0..n-1} (8*i+2).

The programs for A084948, the canonical program `A084948.P14514199610506259215` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084948 has offset 0).

The definition of A084948 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084948.P14514199610506259215

`A084943(n)/A000142(n)*A000079(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A084948

/-- `A084943(n)/A000142(n)*A000079(n)` -/
def P14514199610506259215.Spec : Prop :=
  ∀ n, P14514199610506259215.a n = (A084948 n : ℚ)

end A084948

/-! ## A084948.P5067471732130493294

`∏[a(n-1)+8]` with `a(0)=1, a(1)=2`
-/

namespace A084948.P5067471732130493294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A084948.P5067471732130493294

namespace A084948

/-- `∏[a(n-1)+8]` -/
def P5067471732130493294.Spec : Prop :=
  ∀ n, (P5067471732130493294.a n : ℤ) = A084948 n

end A084948

/-! ## A084948.P6122037180732047908

`(8*n-6)*a(n-1)` with `a(0)=1`
-/

namespace A084948.P6122037180732047908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((8 * n : ℤ) - 6) * a (n - 1)

end

end A084948.P6122037180732047908

namespace A084948

/-- `(8*n-6)*a(n-1)` -/
def P6122037180732047908.Spec : Prop :=
  ∀ n, P6122037180732047908.a n = A084948 n

end A084948

/-! ## A084948.P12029267016990750578

`abs(∏[a(n-1)-8])/6` with `a(0)=6`
-/

namespace A084948.P12029267016990750578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  f1 (n - 1) - 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((|∏ j ∈ Finset.range (n + 1), f1 j| : ℤ) : ℚ) / 6

end

end A084948.P12029267016990750578

namespace A084948

/-- `abs(∏[a(n-1)-8])/6` -/
def P12029267016990750578.Spec : Prop :=
  ∀ n, P12029267016990750578.a n = (A084948 n : ℚ)

end A084948

/-! ## A084948.P9512032501698233611

`∏[record[3-xor(6, a(n-1))]]` with `a(0)=1, a(1)=2`
-/

namespace A084948.P9512032501698233611
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  3 - Int.xor 6 (f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A084948.P9512032501698233611

namespace A084948

/-- `∏[record[3-xor(6, a(n-1))]]` -/
def P9512032501698233611.Spec : Prop :=
  ∀ n, P9512032501698233611.a n = A084948 n

end A084948

/-!
# A084949: a(n) = Product_{i=0..n-1} (9*i+2).

The programs for A084949, there is no canonical definition to state claims against.
-/

/-! ## A084949.P15276558838300528156

`A084944(n)/A000142(n)*A000079(n)`
-/

namespace A084949.P15276558838300528156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084944 n : ℚ) / (A000142 n : ℚ) * (A000079 n : ℚ)

end

end A084949.P15276558838300528156

/-! ## A084949.P12822040046511865884

`∏[a(n-1)+9]` with `a(0)=1, a(1)=2`
-/

namespace A084949.P12822040046511865884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A084949.P12822040046511865884

/-! ## A084949.P12986872521226810602

`(9*n-7)*a(n-1)` with `a(0)=1`
-/

namespace A084949.P12986872521226810602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((9 * n : ℤ) - 7) * a (n - 1)

end

end A084949.P12986872521226810602

/-! ## A084949.P17231297907755400285

`∏[lcm(4, 1-2*n)+n-3]`
-/

namespace A084949.P17231297907755400285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 4 (1 - (2 * n : ℤ)) : ℤ) + ((n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A084949.P17231297907755400285

/-! ## A084949.P6732786896903161425

`∏[(A298035(n)+1)/2]`
-/

namespace A084949.P6732786896903161425
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298035 n + 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A084949.P6732786896903161425

/-!
# A084950: Array of coefficients of denominator polynomials of the n-th approximation of the continued fraction x/(1+x/(2+x/(3+..., related to Laguerre polynomial coefficients.

The programs for A084950, the canonical program `A084950.P11041438467242688939` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084950 has offset 0).

The definition of A084950 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1260 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084950.P11041438467242688939

`A011973(n)²*A082375(n)!`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A084950

/-- `A011973(n)²*A082375(n)!` -/
def P11041438467242688939.Spec : Prop :=
  ∀ n, P11041438467242688939.a n = A084950 n

theorem P11041438467242688939.correct : P11041438467242688939.Spec := by
  intro n
  simp only [A084950]

end A084950

/-! ## A084950.P2361371431211416443

`abs(A021009(A091018(n)))`
-/

namespace A084950.P2361371431211416443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A021009 (A091018 n).toNat|

end

end A084950.P2361371431211416443

namespace A084950

/-- `abs(A021009(A091018(n)))` -/
def P2361371431211416443.Spec : Prop :=
  ∀ n, P2361371431211416443.a n = A084950 n

end A084950

/-! ## A084950.P9289028223241062554

`gcd(A000038(n), A021009(A091018(n)))`
-/

namespace A084950.P9289028223241062554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A021009 (A091018 n).toNat)

end

end A084950.P9289028223241062554

namespace A084950

/-- `gcd(A000038(n), A021009(A091018(n)))` -/
def P9289028223241062554.Spec : Prop :=
  ∀ n, (P9289028223241062554.a n : ℤ) = A084950 n

end A084950

/-! ## A084950.P15384594505448652412

`lcm(A011973(n), A021009(A091018(n)))`
-/

namespace A084950.P15384594505448652412
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011973 n) (A021009 (A091018 n).toNat)

end

end A084950.P15384594505448652412

namespace A084950

/-- `lcm(A011973(n), A021009(A091018(n)))` -/
def P15384594505448652412.Spec : Prop :=
  ∀ n, (P15384594505448652412.a n : ℤ) = A084950 n

end A084950

/-! ## A084950.P9581984073475799562

`lcm(-A021009(A091018(n)), A033999(n))`
-/

namespace A084950.P9581984073475799562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A021009 (A091018 n).toNat) (A033999 n)

end

end A084950.P9581984073475799562

namespace A084950

/-- `lcm(-A021009(A091018(n)), A033999(n))` -/
def P9581984073475799562.Spec : Prop :=
  ∀ n, (P9581984073475799562.a n : ℤ) = A084950 n

end A084950

/-! ## A084950.P15212192674435383088

`A011973(n)²*A173279(n)`
-/

namespace A084950.P15212192674435383088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 n ^ 2 * A173279 n

end

end A084950.P15212192674435383088

namespace A084950

/-- `A011973(n)²*A173279(n)` -/
def P15212192674435383088.Spec : Prop :=
  ∀ n, P15212192674435383088.a n = A084950 n

end A084950

/-!
# A084951: Primes in A075893: Primes of the form (p^2+q^2+r^2)/3, where p,q,r are 3 consecutive primes.

The programs for A084951, there is no canonical definition to state claims against.
-/

/-! ## A084951.P9075870974251986233

`A242209(n+2)/3`
-/

namespace A084951.P9075870974251986233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242209 (n + 2) : ℚ) / 3

end

end A084951.P9075870974251986233

/-! ## A084951.P17680842519623723322

`A075893(A133940(n+1))`
-/

namespace A084951.P17680842519623723322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075893 (A133940 (n + 1)).toNat

end

end A084951.P17680842519623723322

/-! ## A084951.P17748974945191009787

`A075893(∑{d}[A084952(n+1), A082460(#)])`
-/

namespace A084951.P17748974945191009787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075893 (∑ d ∈ Nat.divisors (f1 n).natAbs, A082460 d).toNat

end

end A084951.P17748974945191009787

/-! ## A084951.P2979595420204895642

`A075893(∑{p}[A084952(n+1), A082460(#)])`
-/

namespace A084951.P2979595420204895642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075893 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A082460 p).toNat

end

end A084951.P2979595420204895642

/-! ## A084951.P4838484058676166662

`A075893(∑{d}[A084952(n+1), A033270(#)])`
-/

namespace A084951.P4838484058676166662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075893 (∑ d ∈ Nat.divisors (f1 n).natAbs, A033270 d).toNat

end

end A084951.P4838484058676166662

/-!
# A084952: Middle q of three consecutive primes p,q,r such that (p^2 + q^2 + r^2)/3 is prime.

The programs for A084952, there is no canonical definition to state claims against.
-/

/-! ## A084952.P4351912114985397791

`A045319(A133940(n+1))`
-/

namespace A084952.P4351912114985397791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A133940 (n + 1)).toNat

end

end A084952.P4351912114985397791

/-! ## A084952.P13851834696038081162

`A000040(A133940(n+1)+1)`
-/

namespace A084952.P13851834696038081162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A133940 (n + 1) + 1).toNat

end

end A084952.P13851834696038081162

/-! ## A084952.P1577622742844613181

`A008578(A133940(n+1)+2)`
-/

namespace A084952.P1577622742844613181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A133940 (n + 1) + 2).toNat

end

end A084952.P1577622742844613181

/-! ## A084952.P13970938586871829042

`A093515(2*A133940(n+1))`
-/

namespace A084952.P13970938586871829042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (2 * A133940 (n + 1)).toNat

end

end A084952.P13970938586871829042

/-! ## A084952.P11829638452272115002

`A006093(A133940(n+1)+1)+1`
-/

namespace A084952.P11829638452272115002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A133940 (n + 1) + 1).toNat + 1

end

end A084952.P11829638452272115002

/-!
# A084953: Numbers k such that k! is the sum of 4 but no fewer nonzero squares.

The programs for A084953, there is no canonical definition to state claims against.
-/

/-! ## A084953.P10640737878027935938

`lt[3, A084966(n+1)]+1`
-/

namespace A084953.P10640737878027935938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084966 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A084953.P10640737878027935938

/-! ## A084953.P1219280292408254305

`eq[4, A084966(n+2)]+2`
-/

namespace A084953.P1219280292408254305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084966 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A084953.P1219280292408254305

/-! ## A084953.P14409091650324039300

`lt[3, A084966(A028310(n))]`
-/

namespace A084953.P14409091650324039300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084966 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A084953.P14409091650324039300

/-! ## A084953.P17266632626397952805

`A020725(lt[3, A084966(n+1)])`
-/

namespace A084953.P17266632626397952805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A084953.P17266632626397952805

/-! ## A084953.P5672619817861963247

`A020725(eq[4, A084966(n+1)])`
-/

namespace A084953.P5672619817861963247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084953.P5672619817861963247

/-!
# A084954: Smallest initial prime of a prime chain of length n under the iteration x->2x+3.

The programs for A084954, there is no canonical definition to state claims against.
-/

/-! ## A084954.P13074726034679131330

`A060308(A089694(n+5)^A011864(n))`
-/

namespace A084954.P13074726034679131330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (SequenceMachineLib.roundAway ((A089694 (n + 5) : ℚ) ^ (A011864 n : ℤ))).toNat

end

end A084954.P13074726034679131330

/-!
# A084955: Smallest initial prime of a prime chain of length n under the iteration x->2x+5.

The programs for A084955, there is no canonical definition to state claims against.
-/

/-! ## A084955.P6100933257538916256

`p?[A322225(n)+A010123(n)]`
-/

namespace A084955.P6100933257538916256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322225 n + A010123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A084955.P6100933257538916256

/-! ## A084955.P9856173967618447102

`A039650(lcm(A003959(n+1), A335456(n)))`
-/

namespace A084955.P9856173967618447102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039650 (Int.lcm (A003959 (n + 1)) (A335456 n))

end

end A084955.P9856173967618447102

/-! ## A084955.P13730580123180915506

`A254461(A235937(n+1)+A092543(n+4))`
-/

namespace A084955.P13730580123180915506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254461 (A235937 (n + 1) + A092543 (n + 4)).toNat

end

end A084955.P13730580123180915506

/-!
# A084956: Smallest initial prime of the first prime chain of length n under the iteration x -> 3x+4.

The programs for A084956, there is no canonical definition to state claims against.
-/

/-! ## A084956.P4561816523970890026

`p?[(n+5)*a(n-2)-n]` with `a(0)=2, a(1)=3, a(2)=3`
-/

namespace A084956.P4561816523970890026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 3] fun n f1 =>
  (n + 5 : ℤ) * f1 (n - 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A084956.P4561816523970890026

/-!
# A084958: Smallest initial prime of a prime chain of length n under the iteration x->5x+2.

The programs for A084958, there is no canonical definition to state claims against.
-/

/-! ## A084958.P3663581915454505708

`A249573(A249422(n+1)+n)`
-/

namespace A084958.P3663581915454505708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249573 (A249422 (n + 1) + (n : ℤ)).toNat

end

end A084958.P3663581915454505708

/-! ## A084958.P4092059361152459476

`A249573(A318880(n+1)+n)`
-/

namespace A084958.P4092059361152459476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249573 (A318880 (n + 1) + (n : ℤ)).toNat

end

end A084958.P4092059361152459476

/-! ## A084958.P14675011673761215618

`A249573(A341619(n+1)+n)`
-/

namespace A084958.P14675011673761215618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249573 (A341619 (n + 1) + (n : ℤ)).toNat

end

end A084958.P14675011673761215618

/-! ## A084958.P15431918222076312723

`A249573(A083895(n+3)+n)`
-/

namespace A084958.P15431918222076312723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249573 (A083895 (n + 3) + (n : ℤ)).toNat

end

end A084958.P15431918222076312723

/-! ## A084958.P13787058837617179295

`A249573(A025465(n+4)+n)`
-/

namespace A084958.P13787058837617179295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249573 (A025465 (n + 4) + (n : ℤ)).toNat

end

end A084958.P13787058837617179295

/-!
# A084960: Smallest initial prime of a prime chain of length n under the iteration x->5x+4.

The programs for A084960, there is no canonical definition to state claims against.
-/

/-! ## A084960.P3377487107819896303

`p?[A112929(a(n-1)+1)]` with `a(0)=1, a(1)=2`
-/

namespace A084960.P3377487107819896303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A112929 (f1 (n - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A084960.P3377487107819896303

/-!
# A084964: Follow n+2 by n. Also solution of a(n+2)=a(n)+1, a(0)=2, a(1)=0.

The programs for A084964, the canonical program `A084964.P9276515896362852554` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084964 has offset 0).

The definition of A084964 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084964.P9276515896362852554

`n+1-a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A084964

/-- `n+1-a(n-1)` -/
def P9276515896362852554.Spec : Prop :=
  ∀ n, P9276515896362852554.a n = A084964 n

theorem P9276515896362852554.correct : P9276515896362852554.Spec := by
  intro n
  simp only [A084964]

end A084964

/-! ## A084964.P8131638258046056107

`ogf((2-2x+x^2)/(1-x-x^2+x^3))`
-/

namespace A084964.P8131638258046056107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2, 1] [1, -1, -1, 1] n

end

end A084964.P8131638258046056107

namespace A084964

/-- `ogf((2-2x+x^2)/(1-x-x^2+x^3))` -/
def P8131638258046056107.Spec : Prop :=
  ∀ n, P8131638258046056107.a n = A084964 n

end A084964

/-! ## A084964.P13535674554827227856

`floor(n/2)+1+(-1)^n`
-/

namespace A084964.P13535674554827227856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ + 1 + (-1) ^ n

end

end A084964.P13535674554827227856

namespace A084964

/-- `floor(n/2)+1+(-1)^n` -/
def P13535674554827227856.Spec : Prop :=
  ∀ n, P13535674554827227856.a n = A084964 n

end A084964

/-! ## A084964.P18026899211796686805

`a(n-2)+1` with `a(0)=2, a(1)=0`
-/

namespace A084964.P18026899211796686805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 0] fun n a =>
  a (n - 2) + 1

end

end A084964.P18026899211796686805

namespace A084964

/-- `a(n-2)+1` -/
def P18026899211796686805.Spec : Prop :=
  ∀ n, (P18026899211796686805.a n : ℤ) = A084964 n

end A084964

/-! ## A084964.P1546572520288557921

`ceil(xor(1, abs(xor(n, -2)))/2)`
-/

namespace A084964.P1546572520288557921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor 1 |Int.xor (n : ℤ) (-2)| : ℚ) / 2⌉

end

end A084964.P1546572520288557921

namespace A084964

/-- `ceil(xor(1, abs(xor(n, -2)))/2)` -/
def P1546572520288557921.Spec : Prop :=
  ∀ n, P1546572520288557921.a n = A084964 n

end A084964

/-! ## A084964.P5779963932614862

`round(xor(1, abs(xor(n, -2)))/2)`
-/

namespace A084964.P5779963932614862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.xor 1 |Int.xor (n : ℤ) (-2)| : ℚ) / 2)

end

end A084964.P5779963932614862

namespace A084964

/-- `round(xor(1, abs(xor(n, -2)))/2)` -/
def P5779963932614862.Spec : Prop :=
  ∀ n, P5779963932614862.a n = A084964 n

end A084964

/-! ## A084964.P12614150100662293787

`∑[∑[ogf((2-2x+x^2)/(1+x))]]`
-/

namespace A084964.P12614150100662293787
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2, 1] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084964.P12614150100662293787

namespace A084964

/-- `∑[∑[ogf((2-2x+x^2)/(1+x))]]` -/
def P12614150100662293787.Spec : Prop :=
  ∀ n, P12614150100662293787.a n = A084964 n

end A084964

/-! ## A084964.P9808081147552428351

`floor(n-a(n-3))` with `a(0)=2, a(1)=0, a(2)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A084964.P9808081147552428351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 3] fun n a =>
  (n : ℤ) - a (n - 3)

end

end A084964.P9808081147552428351

namespace A084964

/-- `floor(n-a(n-3))` -/
def P9808081147552428351.Spec : Prop :=
  ∀ n, P9808081147552428351.a n = A084964 n

end A084964

/-! ## A084964.P7610061132517808129

`ceil(n-a(n-3))` with `a(0)=2, a(1)=0, a(2)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A084964.P7610061132517808129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 3] fun n a =>
  (n : ℤ) - a (n - 3)

end

end A084964.P7610061132517808129

namespace A084964

/-- `ceil(n-a(n-3))` -/
def P7610061132517808129.Spec : Prop :=
  ∀ n, P7610061132517808129.a n = A084964 n

end A084964

/-! ## A084964.P7760432131218135460

`round(n-a(n-3))` with `a(0)=2, a(1)=0, a(2)=3`

`round` is left out, it is the identity on integers.
-/

namespace A084964.P7760432131218135460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 3] fun n a =>
  (n : ℤ) - a (n - 3)

end

end A084964.P7760432131218135460

namespace A084964

/-- `round(n-a(n-3))` -/
def P7760432131218135460.Spec : Prop :=
  ∀ n, P7760432131218135460.a n = A084964 n

end A084964

/-! ## A084964.P15688679286481795563

`∑[1-a(n-1)]-1` with `a(0)=3`
-/

namespace A084964.P15688679286481795563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A084964.P15688679286481795563

namespace A084964

/-- `∑[1-a(n-1)]-1` -/
def P15688679286481795563.Spec : Prop :=
  ∀ n, P15688679286481795563.a n = A084964 n

end A084964

/-! ## A084964.P15825065897724825494

`ceil(xor(1, xor(1, n)+1)/2)`
-/

namespace A084964.P15825065897724825494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (Nat.xor 1 n + 1) : ℚ) / 2⌉

end

end A084964.P15825065897724825494

namespace A084964

/-- `ceil(xor(1, xor(1, n)+1)/2)` -/
def P15825065897724825494.Spec : Prop :=
  ∀ n, P15825065897724825494.a n = A084964 n

end A084964

/-! ## A084964.P16594076772805053894

`round(xor(1, xor(1, n)+1)/2)`
-/

namespace A084964.P16594076772805053894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 (Nat.xor 1 n + 1) : ℚ) / 2)

end

end A084964.P16594076772805053894

namespace A084964

/-- `round(xor(1, xor(1, n)+1)/2)` -/
def P16594076772805053894.Spec : Prop :=
  ∀ n, P16594076772805053894.a n = A084964 n

end A084964

/-! ## A084964.P10132043460993397877

`xor(1, n)-floor((n-1)/2)`
-/

namespace A084964.P10132043460993397877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n : ℤ) - ⌊((n : ℤ) - 1 : ℚ) / 2⌋

end

end A084964.P10132043460993397877

namespace A084964

/-- `xor(1, n)-floor((n-1)/2)` -/
def P10132043460993397877.Spec : Prop :=
  ∀ n, P10132043460993397877.a n = A084964 n

end A084964

/-! ## A084964.P14230426972072711186

`ceil(xor(1, n)-(n-1)/2)`
-/

namespace A084964.P14230426972072711186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 n : ℚ) - ((n : ℤ) - 1 : ℚ) / 2⌉

end

end A084964.P14230426972072711186

namespace A084964

/-- `ceil(xor(1, n)-(n-1)/2)` -/
def P14230426972072711186.Spec : Prop :=
  ∀ n, P14230426972072711186.a n = A084964 n

end A084964

/-! ## A084964.P9087781919990136939

`round(xor(1, n)-(n-1)/2)`
-/

namespace A084964.P9087781919990136939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) - ((n : ℤ) - 1 : ℚ) / 2)

end

end A084964.P9087781919990136939

namespace A084964

/-- `round(xor(1, n)-(n-1)/2)` -/
def P9087781919990136939.Spec : Prop :=
  ∀ n, P9087781919990136939.a n = A084964 n

end A084964

/-! ## A084964.P3565662542830997497

`∑[gcd(2, n)]-xor(1, n+1)`
-/

namespace A084964.P3565662542830997497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.xor 1 (n + 1) : ℤ)

end

end A084964.P3565662542830997497

namespace A084964

/-- `∑[gcd(2, n)]-xor(1, n+1)` -/
def P3565662542830997497.Spec : Prop :=
  ∀ n, P3565662542830997497.a n = A084964 n

end A084964

/-! ## A084964.P11644099548267194991

`n-a(n-3)%n` with `a(0)=2, a(1)=0, a(2)=3`
-/

namespace A084964.P11644099548267194991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 3] fun n a =>
  (n : ℤ) - Int.tmod (a (n - 3)) (n : ℤ)

end

end A084964.P11644099548267194991

namespace A084964

/-- `n-a(n-3)%n` -/
def P11644099548267194991.Spec : Prop :=
  ∀ n, P11644099548267194991.a n = A084964 n

end A084964

/-! ## A084964.P2206828193984149436

`floor(a(n%2)+n/2)` with `a(0)=2, a(1)=0`
-/

namespace A084964.P2206828193984149436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n a =>
  ⌊(a (n % 2) : ℚ) + (n : ℚ) / 2⌋

end

end A084964.P2206828193984149436

namespace A084964

/-- `floor(a(n%2)+n/2)` -/
def P2206828193984149436.Spec : Prop :=
  ∀ n, P2206828193984149436.a n = A084964 n

end A084964

/-! ## A084964.P15155670160666877510

`floor(n/2+2*(n+1)%2)`
-/

namespace A084964.P15155670160666877510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2 + ((2 * ((n + 1) % 2) : ℕ) : ℚ)⌋

end

end A084964.P15155670160666877510

namespace A084964

/-- `floor(n/2+2*(n+1)%2)` -/
def P15155670160666877510.Spec : Prop :=
  ∀ n, P15155670160666877510.a n = A084964 n

end A084964

/-!
# A084965: Number of labeled totally ordered semigroups with n elements.

The programs for A084965, there is no canonical definition to state claims against.
-/

/-! ## A084965.P16079934527631596517

`A282649((n+1)^n-n)`
-/

namespace A084965.P16079934527631596517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282649 ((n + 1) ^ n - n)

end

end A084965.P16079934527631596517

/-!
# A084967: Multiples of 5 whose GCD with 6 is 1.

The programs for A084967, the canonical program `A084967.P10341513270236216654` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084967 has offset 1).

The definition of A084967 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084967.P10341513270236216654

`a(n-2)+30` with `a(0)=5, a(1)=25`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A084967

/-- `a(n-2)+30` -/
def P10341513270236216654.Spec : Prop :=
  ∀ n, (P10341513270236216654.a n : ℤ) = A084967 (n + 1)

theorem P10341513270236216654.correct : P10341513270236216654.Spec := by
  intro n
  simp only [A084967, Nat.add_sub_cancel]

end A084967

/-! ## A084967.P17777742326925055786

`ogf((5+20x+5x^2)/(1-x-x^2+x^3))`
-/

namespace A084967.P17777742326925055786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 20, 5] [1, -1, -1, 1] n

end

end A084967.P17777742326925055786

namespace A084967

/-- `ogf((5+20x+5x^2)/(1-x-x^2+x^3))` -/
def P17777742326925055786.Spec : Prop :=
  ∀ n, P17777742326925055786.a n = A084967 (n + 1)

end A084967

/-! ## A084967.P7006078009587921892

`5*A007310(n+1)`
-/

namespace A084967.P7006078009587921892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A007310 (n + 1)

end

end A084967.P7006078009587921892

namespace A084967

/-- `5*A007310(n+1)` -/
def P7006078009587921892.Spec : Prop :=
  ∀ n, P7006078009587921892.a n = A084967 (n + 1)

end A084967

/-! ## A084967.P13036064705823297339

`A007310(A273669(n+1))`
-/

namespace A084967.P13036064705823297339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A273669 (n + 1)).toNat

end

end A084967.P13036064705823297339

namespace A084967

/-- `A007310(A273669(n+1))` -/
def P13036064705823297339.Spec : Prop :=
  ∀ n, P13036064705823297339.a n = A084967 (n + 1)

end A084967

/-! ## A084967.P14839886591296816124

`filter[5*n, gcd(6, #)]`
-/

namespace A084967.P14839886591296816124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Nat.gcd 6 (f1 j) = 1) n)

end

end A084967.P14839886591296816124

namespace A084967

/-- `filter[5*n, gcd(6, #)]` -/
def P14839886591296816124.Spec : Prop :=
  ∀ n, (P14839886591296816124.a n : ℤ) = A084967 (n + 1)

end A084967

/-! ## A084967.P2442606230170934659

`5*or(1, 3*n+1)`
-/

namespace A084967.P2442606230170934659
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * Nat.lor 1 (3 * n + 1)

end

end A084967.P2442606230170934659

namespace A084967

/-- `5*or(1, 3*n+1)` -/
def P2442606230170934659.Spec : Prop :=
  ∀ n, (P2442606230170934659.a n : ℤ) = A084967 (n + 1)

end A084967

/-! ## A084967.P4495777450555268437

`∑[30-a(n-1)]` with `a(0)=5, a(1)=20`
-/

namespace A084967.P4495777450555268437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 20] fun n f1 =>
  30 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084967.P4495777450555268437

namespace A084967

/-- `∑[30-a(n-1)]` -/
def P4495777450555268437.Spec : Prop :=
  ∀ n, P4495777450555268437.a n = A084967 (n + 1)

end A084967

/-! ## A084967.P13555110393191766520

`10/gcd(2, n)+15*n`
-/

namespace A084967.P13555110393191766520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  10 / (Nat.gcd 2 n : ℚ) + (15 * n : ℚ)

end

end A084967.P13555110393191766520

namespace A084967

/-- `10/gcd(2, n)+15*n` -/
def P13555110393191766520.Spec : Prop :=
  ∀ n, P13555110393191766520.a n = (A084967 (n + 1) : ℚ)

end A084967

/-! ## A084967.P12558660267723357928

`30*n-a(n-1)` with `a(0)=5`
-/

namespace A084967.P12558660267723357928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  (30 * n : ℤ) - a (n - 1)

end

end A084967.P12558660267723357928

namespace A084967

/-- `30*n-a(n-1)` -/
def P12558660267723357928.Spec : Prop :=
  ∀ n, P12558660267723357928.a n = A084967 (n + 1)

end A084967

/-! ## A084967.P10755022263679993478

`5*lt[3*n, lcm(6, n)]`
-/

namespace A084967.P10755022263679993478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 6 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A084967.P10755022263679993478

namespace A084967

/-- `5*lt[3*n, lcm(6, n)]` -/
def P10755022263679993478.Spec : Prop :=
  ∀ n, (P10755022263679993478.a n : ℤ) = A084967 (n + 1)

end A084967

/-! ## A084967.P595233639045336077

`5*record[lcm(3, or(1, n))]/3`
-/

namespace A084967.P595233639045336077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (Nat.lor 1 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 3)

end

end A084967.P595233639045336077

namespace A084967

/-- `5*record[lcm(3, or(1, n))]/3` -/
def P595233639045336077.Spec : Prop :=
  ∀ n, P595233639045336077.a n = (A084967 (n + 1) : ℚ)

end A084967

/-! ## A084967.P15048288649717055324

`5*(∑[3^(n%2)]+n)`
-/

namespace A084967.P15048288649717055324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A084967.P15048288649717055324

namespace A084967

/-- `5*(∑[3^(n%2)]+n)` -/
def P15048288649717055324.Spec : Prop :=
  ∀ n, (P15048288649717055324.a n : ℤ) = A084967 (n + 1)

end A084967

/-! ## A084967.P3771474080815901704

`5*Δ[floor(3/2*n²)]`
-/

namespace A084967.P3771474080815901704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) / 2 * (n ^ 2 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (f1 (n + 1) - f1 n)

end

end A084967.P3771474080815901704

namespace A084967

/-- `5*Δ[floor(3/2*n²)]` -/
def P3771474080815901704.Spec : Prop :=
  ∀ n, P3771474080815901704.a n = A084967 (n + 1)

end A084967

/-! ## A084967.P2201294521372408790

`∑[5*A382713(n)]`
-/

namespace A084967.P2201294521372408790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A382713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084967.P2201294521372408790

namespace A084967

/-- `∑[5*A382713(n)]` -/
def P2201294521372408790.Spec : Prop :=
  ∀ n, P2201294521372408790.a n = A084967 (n + 1)

end A084967

/-! ## A084967.P10455016443417893053

`Δ[5*A032528(n)]`
-/

namespace A084967.P10455016443417893053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A032528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084967.P10455016443417893053

namespace A084967

/-- `Δ[5*A032528(n)]` -/
def P10455016443417893053.Spec : Prop :=
  ∀ n, P10455016443417893053.a n = A084967 (n + 1)

end A084967

/-! ## A084967.P16430104345257387912

`∑[A221921(a(n-1))]` with `a(0)=5`
-/

namespace A084967.P16430104345257387912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  A221921 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084967.P16430104345257387912

namespace A084967

/-- `∑[A221921(a(n-1))]` -/
def P16430104345257387912.Spec : Prop :=
  ∀ n, P16430104345257387912.a n = A084967 (n + 1)

end A084967

/-! ## A084967.P10137425967209560457

`5*A091999(n+1)/2`
-/

namespace A084967.P10137425967209560457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * A091999 (n + 1) : ℚ) / 2

end

end A084967.P10137425967209560457

namespace A084967

/-- `5*A091999(n+1)/2` -/
def P10137425967209560457.Spec : Prop :=
  ∀ n, P10137425967209560457.a n = (A084967 (n + 1) : ℚ)

end A084967

/-! ## A084967.P5634576425080192731

`5*A306771(n+1)/3`
-/

namespace A084967.P5634576425080192731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * A306771 (n + 1) : ℚ) / 3

end

end A084967.P5634576425080192731

namespace A084967

/-- `5*A306771(n+1)/3` -/
def P5634576425080192731.Spec : Prop :=
  ∀ n, P5634576425080192731.a n = (A084967 (n + 1) : ℚ)

end A084967

/-! ## A084967.P2707061986810425307

`5*A259755(n+1)/4`
-/

namespace A084967.P2707061986810425307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * A259755 (n + 1) : ℚ) / 4

end

end A084967.P2707061986810425307

namespace A084967

/-- `5*A259755(n+1)/4` -/
def P2707061986810425307.Spec : Prop :=
  ∀ n, P2707061986810425307.a n = (A084967 (n + 1) : ℚ)

theorem P2707061986810425307.correct : P2707061986810425307.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A084967, Nat.add_sub_cancel, A084967.P2707061986810425307.a, A084967.P10341513270236216654.a, A259755, A259755.P4631213340866640928.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A084967, Nat.add_sub_cancel, A084967.P2707061986810425307.a, A084967.P10341513270236216654.a, A259755, A259755.P4631213340866640928.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A084967

/-! ## A084967.P10130157507398480043

`2*(A168672(n+1)-n)+1`
-/

namespace A084967.P10130157507398480043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A168672 (n + 1) - (n : ℤ)) + 1

end

end A084967.P10130157507398480043

namespace A084967

/-- `2*(A168672(n+1)-n)+1` -/
def P10130157507398480043.Spec : Prop :=
  ∀ n, P10130157507398480043.a n = A084967 (n + 1)

end A084967

/-!
# A084968: Multiples of 7 coprime to 30.

The programs for A084968, the canonical program `A084968.P14169194673112967548` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084968 has offset 1).

The definition of A084968 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084968.P7546081567673369256

`ogf((7+42x+28x^2+14x^3+28x^4+14x^5+28x^6+42x^7+7x^8)/(1-x-x^8+x^9))`
-/

namespace A084968.P7546081567673369256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 42, 28, 14, 28, 14, 28, 42, 7] [1, -1, 0, 0, 0, 0, 0, 0, -1, 1] n

end

end A084968.P7546081567673369256

namespace A084968

/-- `ogf((7+42x+28x^2+14x^3+28x^4+14x^5+28x^6+42x^7+7x^8)/(1-x-x^8+x^9))` -/
def P7546081567673369256.Spec : Prop :=
  ∀ n, P7546081567673369256.a n = A084968 (n + 1)

end A084968

/-! ## A084968.P14169194673112967548

`7*A007775(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A084968

/-- `7*A007775(n+1)` -/
def P14169194673112967548.Spec : Prop :=
  ∀ n, P14169194673112967548.a n = A084968 (n + 1)

theorem P14169194673112967548.correct : P14169194673112967548.Spec := by
  intro n
  simp only [A084968, Nat.add_sub_cancel]

end A084968

/-! ## A084968.P16606418832026081186

`A147587((A007775(n+1)-1)/2)`
-/

namespace A084968.P16606418832026081186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147587 (SequenceMachineLib.roundAway ((A007775 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A084968.P16606418832026081186

namespace A084968

/-- `A147587((A007775(n+1)-1)/2)` -/
def P16606418832026081186.Spec : Prop :=
  ∀ n, P16606418832026081186.a n = A084968 (n + 1)

end A084968

/-! ## A084968.P824237339406698

`record[A133421(n+1)-1]`
-/

namespace A084968.P824237339406698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133421 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084968.P824237339406698

namespace A084968

/-- `record[A133421(n+1)-1]` -/
def P824237339406698.Spec : Prop :=
  ∀ n, P824237339406698.a n = A084968 (n + 1)

end A084968

/-! ## A084968.P9335085565888969789

`A008589(A007775(n+1))`
-/

namespace A084968.P9335085565888969789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 (A007775 (n + 1)).toNat

end

end A084968.P9335085565888969789

namespace A084968

/-- `A008589(A007775(n+1))` -/
def P9335085565888969789.Spec : Prop :=
  ∀ n, P9335085565888969789.a n = A084968 (n + 1)

end A084968

/-! ## A084968.P6850577417161756712

`filter[A147587(n), A162289(#)]`
-/

namespace A084968.P6850577417161756712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A084968.P6850577417161756712

namespace A084968

/-- `filter[A147587(n), A162289(#)]` -/
def P6850577417161756712.Spec : Prop :=
  ∀ n, P6850577417161756712.a n = A084968 (n + 1)

end A084968

/-! ## A084968.P6162958899520366062

`filter[A147601(n), A162289(#)]`
-/

namespace A084968.P6162958899520366062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A084968.P6162958899520366062

namespace A084968

/-- `filter[A147601(n), A162289(#)]` -/
def P6162958899520366062.Spec : Prop :=
  ∀ n, P6162958899520366062.a n = A084968 (n + 1)

end A084968

/-! ## A084968.P17162924930533634980

`filter[A008589(n+1), A162289(#)]`
-/

namespace A084968.P17162924930533634980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A084968.P17162924930533634980

namespace A084968

/-- `filter[A008589(n+1), A162289(#)]` -/
def P17162924930533634980.Spec : Prop :=
  ∀ n, P17162924930533634980.a n = A084968 (n + 1)

end A084968

/-! ## A084968.P14476554302230817616

`filter[A089644(n+1), A162289(#)]`
-/

namespace A084968.P14476554302230817616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A084968.P14476554302230817616

namespace A084968

/-- `filter[A089644(n+1), A162289(#)]` -/
def P14476554302230817616.Spec : Prop :=
  ∀ n, P14476554302230817616.a n = A084968 (n + 1)

end A084968

/-! ## A084968.P9154917900505650919

`filter[A182341(n+1), A162289(#)]`
-/

namespace A084968.P9154917900505650919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182341 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A084968.P9154917900505650919

namespace A084968

/-- `filter[A182341(n+1), A162289(#)]` -/
def P9154917900505650919.Spec : Prop :=
  ∀ n, P9154917900505650919.a n = A084968 (n + 1)

end A084968

/-! ## A084968.P17706566576926093135

`A017029(A007775(n+1)+n)-A017029(n)`
-/

namespace A084968.P17706566576926093135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 (A007775 (n + 1) + (n : ℤ)).toNat - A017029 n

end

end A084968.P17706566576926093135

namespace A084968

/-- `A017029(A007775(n+1)+n)-A017029(n)` -/
def P17706566576926093135.Spec : Prop :=
  ∀ n, P17706566576926093135.a n = A084968 (n + 1)

end A084968

/-! ## A084968.P10914845684218109058

`eq[7, A020639(n+1)]+1`
-/

namespace A084968.P10914845684218109058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A084968.P10914845684218109058

namespace A084968

/-- `eq[7, A020639(n+1)]+1` -/
def P10914845684218109058.Spec : Prop :=
  ∀ n, (P10914845684218109058.a n : ℤ) = A084968 (n + 1)

end A084968

/-! ## A084968.P5963743342822806171

`∩[A008589(n), A070884(n)]`
-/

namespace A084968.P5963743342822806171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084968.P5963743342822806171

namespace A084968

/-- `∩[A008589(n), A070884(n)]` -/
def P5963743342822806171.Spec : Prop :=
  ∀ n, (P5963743342822806171.a n : ℤ) = A084968 (n + 1)

end A084968

/-! ## A084968.P11370882802412676246

`∩[A070884(n), A147587(n)]`
-/

namespace A084968.P11370882802412676246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147587 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084968.P11370882802412676246

namespace A084968

/-- `∩[A070884(n), A147587(n)]` -/
def P11370882802412676246.Spec : Prop :=
  ∀ n, (P11370882802412676246.a n : ℤ) = A084968 (n + 1)

end A084968

/-! ## A084968.P7879099823304144332

`∩[A007775(n+1), A147587(n)]`
-/

namespace A084968.P7879099823304144332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147587 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084968.P7879099823304144332

namespace A084968

/-- `∩[A007775(n+1), A147587(n)]` -/
def P7879099823304144332.Spec : Prop :=
  ∀ n, (P7879099823304144332.a n : ℤ) = A084968 (n + 1)

end A084968

/-! ## A084968.P16670089546698708274

`∩[A089644(n+1), A070884(n)]`
-/

namespace A084968.P16670089546698708274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089644 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084968.P16670089546698708274

namespace A084968

/-- `∩[A089644(n+1), A070884(n)]` -/
def P16670089546698708274.Spec : Prop :=
  ∀ n, (P16670089546698708274.a n : ℤ) = A084968 (n + 1)

end A084968

/-! ## A084968.P176943155909024066

`∩[A182341(n+1), A070884(n)]`
-/

namespace A084968.P176943155909024066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084968.P176943155909024066

namespace A084968

/-- `∩[A182341(n+1), A070884(n)]` -/
def P176943155909024066.Spec : Prop :=
  ∀ n, (P176943155909024066.a n : ℤ) = A084968 (n + 1)

end A084968

/-! ## A084968.P8919284813319809436

`∩[A007775(n+1), A089644(n+1)]`
-/

namespace A084968.P8919284813319809436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084968.P8919284813319809436

namespace A084968

/-- `∩[A007775(n+1), A089644(n+1)]` -/
def P8919284813319809436.Spec : Prop :=
  ∀ n, (P8919284813319809436.a n : ℤ) = A084968 (n + 1)

end A084968

/-! ## A084968.P5146449466075426524

`∩[A007775(n+1), A182341(n+1)]`
-/

namespace A084968.P5146449466075426524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084968.P5146449466075426524

namespace A084968

/-- `∩[A007775(n+1), A182341(n+1)]` -/
def P5146449466075426524.Spec : Prop :=
  ∀ n, (P5146449466075426524.a n : ℤ) = A084968 (n + 1)

end A084968

/-! ## A084968.P10133129116994575435

`∩[A054403(n+1), A008589(n)]`
-/

namespace A084968.P10133129116994575435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084968.P10133129116994575435

namespace A084968

/-- `∩[A054403(n+1), A008589(n)]` -/
def P10133129116994575435.Spec : Prop :=
  ∀ n, (P10133129116994575435.a n : ℤ) = A084968 (n + 1)

end A084968

/-!
# A084969: Numbers whose smallest prime factor is 11.

The programs for A084969, the canonical program `A084969.P18318459922529985573` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084969 has offset 1).

The definition of A084969 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008364, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A084969.P18318459922529985573

`11*A008364(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A084969

/-- `11*A008364(n+1)` -/
def P18318459922529985573.Spec : Prop :=
  ∀ n, P18318459922529985573.a n = A084969 (n + 1)

theorem P18318459922529985573.correct : P18318459922529985573.Spec := by
  intro n
  simp only [A084969, Nat.add_sub_cancel]

end A084969

/-! ## A084969.P10401615760532317494

`A008593(A008364(n+1))`
-/

namespace A084969.P10401615760532317494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 (A008364 (n + 1)).toNat

end

end A084969.P10401615760532317494

namespace A084969

/-- `A008593(A008364(n+1))` -/
def P10401615760532317494.Spec : Prop :=
  ∀ n, P10401615760532317494.a n = A084969 (n + 1)

end A084969

/-! ## A084969.P146035503040313081

`eq[11, A020639(n+1)]+1`
-/

namespace A084969.P146035503040313081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A084969.P146035503040313081

namespace A084969

/-- `eq[11, A020639(n+1)]+1` -/
def P146035503040313081.Spec : Prop :=
  ∀ n, (P146035503040313081.a n : ℤ) = A084969 (n + 1)

end A084969

/-! ## A084969.P7042563762235365587

`∩[A052424(n+1), A008593(n)]`
-/

namespace A084969.P7042563762235365587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084969.P7042563762235365587

namespace A084969

/-- `∩[A052424(n+1), A008593(n)]` -/
def P7042563762235365587.Spec : Prop :=
  ∀ n, (P7042563762235365587.a n : ℤ) = A084969 (n + 1)

end A084969

/-! ## A084969.P14896003325230834607

`∩[A055398(n+1), A008593(n)]`
-/

namespace A084969.P14896003325230834607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084969.P14896003325230834607

namespace A084969

/-- `∩[A055398(n+1), A008593(n)]` -/
def P14896003325230834607.Spec : Prop :=
  ∀ n, (P14896003325230834607.a n : ℤ) = A084969 (n + 1)

end A084969

/-! ## A084969.P3818675815530612389

`A269360(A084968(n+1))-1`
-/

namespace A084969.P3818675815530612389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269360 (A084968 (n + 1)).toNat - 1

end

end A084969.P3818675815530612389

namespace A084969

/-- `A269360(A084968(n+1))-1` -/
def P3818675815530612389.Spec : Prop :=
  ∀ n, P3818675815530612389.a n = A084969 (n + 1)

end A084969

/-! ## A084969.P4240619579498606312

`∩[A008364(n+1), A230193(n+1)]`
-/

namespace A084969.P4240619579498606312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084969.P4240619579498606312

namespace A084969

/-- `∩[A008364(n+1), A230193(n+1)]` -/
def P4240619579498606312.Spec : Prop :=
  ∀ n, (P4240619579498606312.a n : ℤ) = A084969 (n + 1)

end A084969

/-! ## A084969.P11803639348028276828

`A268674(A084970(n+1))`
-/

namespace A084969.P11803639348028276828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (A084970 (n + 1)).toNat

end

end A084969.P11803639348028276828

namespace A084969

/-- `A268674(A084970(n+1))` -/
def P11803639348028276828.Spec : Prop :=
  ∀ n, P11803639348028276828.a n = A084969 (n + 1)

end A084969

/-! ## A084969.P978678715005103672

`∩[A055398(n+1), A315479(n)]`
-/

namespace A084969.P978678715005103672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315479 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084969.P978678715005103672

namespace A084969

/-- `∩[A055398(n+1), A315479(n)]` -/
def P978678715005103672.Spec : Prop :=
  ∀ n, (P978678715005103672.a n : ℤ) = A084969 (n + 1)

end A084969

/-! ## A084969.P16297414689218285961

`A207801(A128468(n)+2*n)`
-/

namespace A084969.P16297414689218285961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207801 (A128468 n + (2 * n : ℤ)).toNat

end

end A084969.P16297414689218285961

namespace A084969

/-- `A207801(A128468(n)+2*n)` -/
def P16297414689218285961.Spec : Prop :=
  ∀ n, P16297414689218285961.a n = A084969 (n + 1)

end A084969

/-! ## A084969.P5829536377815201761

`A207801(A128468(n)+n+n)`
-/

namespace A084969.P5829536377815201761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207801 (A128468 n + (n : ℤ) + (n : ℤ)).toNat

end

end A084969.P5829536377815201761

namespace A084969

/-- `A207801(A128468(n)+n+n)` -/
def P5829536377815201761.Spec : Prop :=
  ∀ n, P5829536377815201761.a n = A084969 (n + 1)

end A084969

/-! ## A084969.P8784714659870486514

`A301708(lcm(2, A008364(n+1)))`
-/

namespace A084969.P8784714659870486514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301708 (Int.lcm 2 (A008364 (n + 1)))

end

end A084969.P8784714659870486514

namespace A084969

/-- `A301708(lcm(2, A008364(n+1)))` -/
def P8784714659870486514.Spec : Prop :=
  ∀ n, P8784714659870486514.a n = A084969 (n + 1)

end A084969

/-! ## A084969.P3060407700182334798

`∩[A055398(n+1), A301708(n)]`
-/

namespace A084969.P3060407700182334798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301708 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084969.P3060407700182334798

namespace A084969

/-- `∩[A055398(n+1), A301708(n)]` -/
def P3060407700182334798.Spec : Prop :=
  ∀ n, (P3060407700182334798.a n : ℤ) = A084969 (n + 1)

end A084969

/-! ## A084969.P15242423185095237855

`∩[A055398(n+1), A315446(n)]`
-/

namespace A084969.P15242423185095237855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315446 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084969.P15242423185095237855

namespace A084969

/-- `∩[A055398(n+1), A315446(n)]` -/
def P15242423185095237855.Spec : Prop :=
  ∀ n, (P15242423185095237855.a n : ℤ) = A084969 (n + 1)

end A084969

/-! ## A084969.P4836662469684577213

`A287932(a(n-1))` with `a(0)=11`
-/

namespace A084969.P4836662469684577213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11] fun n a =>
  A287932 (a (n - 1)).toNat

end

end A084969.P4836662469684577213

namespace A084969

/-- `A287932(a(n-1))` -/
def P4836662469684577213.Spec : Prop :=
  ∀ n, P4836662469684577213.a n = A084969 (n + 1)

end A084969

/-! ## A084969.P11046258546050504017

`eq[11, A020639(A028310(n))]`
-/

namespace A084969.P11046258546050504017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084969.P11046258546050504017

namespace A084969

/-- `eq[11, A020639(A028310(n))]` -/
def P11046258546050504017.Spec : Prop :=
  ∀ n, (P11046258546050504017.a n : ℤ) = A084969 (n + 1)

end A084969

/-! ## A084969.P14431852600748301257

`eq[A040111(n), A172170(n)]`
-/

namespace A084969.P14431852600748301257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040111 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172170 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084969.P14431852600748301257

namespace A084969

/-- `eq[A040111(n), A172170(n)]` -/
def P14431852600748301257.Spec : Prop :=
  ∀ n, (P14431852600748301257.a n : ℤ) = A084969 (n + 1)

end A084969

/-! ## A084969.P2319998572624116423

`A109613(eq[5, A055396(n+1)])`
-/

namespace A084969.P2319998572624116423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084969.P2319998572624116423

namespace A084969

/-- `A109613(eq[5, A055396(n+1)])` -/
def P2319998572624116423.Spec : Prop :=
  ∀ n, P2319998572624116423.a n = A084969 (n + 1)

end A084969

/-! ## A084969.P11243440619485211798

`eq[A040110(n), A090088(n+1)]`
-/

namespace A084969.P11243440619485211798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040110 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090088 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084969.P11243440619485211798

namespace A084969

/-- `eq[A040110(n), A090088(n+1)]` -/
def P11243440619485211798.Spec : Prop :=
  ∀ n, (P11243440619485211798.a n : ℤ) = A084969 (n + 1)

end A084969

/-! ## A084969.P8388647331586673127

`eq[A040463(n), A090088(n+1)]`
-/

namespace A084969.P8388647331586673127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040463 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090088 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084969.P8388647331586673127

namespace A084969

/-- `eq[A040463(n), A090088(n+1)]` -/
def P8388647331586673127.Spec : Prop :=
  ∀ n, (P8388647331586673127.a n : ℤ) = A084969 (n + 1)

end A084969

/-!
# A084970: Numbers whose smallest prime factor is 13.

The programs for A084970, the canonical program `A084970.P17840610211621121280` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084970 has offset 1).

The definition of A084970 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008365, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A084970.P17840610211621121280

`13*A008365(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A084970

/-- `13*A008365(n+1)` -/
def P17840610211621121280.Spec : Prop :=
  ∀ n, P17840610211621121280.a n = A084970 (n + 1)

theorem P17840610211621121280.correct : P17840610211621121280.Spec := by
  intro n
  simp only [A084970, Nat.add_sub_cancel]

end A084970

/-! ## A084970.P15186642364918807537

`A008595(A008365(n+1))`
-/

namespace A084970.P15186642364918807537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008595 (A008365 (n + 1)).toNat

end

end A084970.P15186642364918807537

namespace A084970

/-- `A008595(A008365(n+1))` -/
def P15186642364918807537.Spec : Prop :=
  ∀ n, P15186642364918807537.a n = A084970 (n + 1)

end A084970

/-! ## A084970.P4990244449580820755

`∩[A008365(n+1), A230215(n+1)]`
-/

namespace A084970.P4990244449580820755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084970.P4990244449580820755

namespace A084970

/-- `∩[A008365(n+1), A230215(n+1)]` -/
def P4990244449580820755.Spec : Prop :=
  ∀ n, (P4990244449580820755.a n : ℤ) = A084970 (n + 1)

end A084970

/-! ## A084970.P16491811241769975384

`A268674(A332799(n+1))`
-/

namespace A084970.P16491811241769975384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (A332799 (n + 1)).toNat

end

end A084970.P16491811241769975384

namespace A084970

/-- `A268674(A332799(n+1))` -/
def P16491811241769975384.Spec : Prop :=
  ∀ n, P16491811241769975384.a n = A084970 (n + 1)

end A084970

/-! ## A084970.P12079653714175543755

`A269360(A084969(n+1))-1`
-/

namespace A084970.P12079653714175543755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269360 (A084969 (n + 1)).toNat - 1

end

end A084970.P12079653714175543755

namespace A084970

/-- `A269360(A084969(n+1))-1` -/
def P12079653714175543755.Spec : Prop :=
  ∀ n, P12079653714175543755.a n = A084970 (n + 1)

end A084970

/-! ## A084970.P12177282590471992476

`A316441(A000040(n+1))+A269360(A084969(n+1))`
-/

namespace A084970.P12177282590471992476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A000040 (n + 1)).toNat + A269360 (A084969 (n + 1)).toNat

end

end A084970.P12177282590471992476

namespace A084970

/-- `A316441(A000040(n+1))+A269360(A084969(n+1))` -/
def P12177282590471992476.Spec : Prop :=
  ∀ n, P12177282590471992476.a n = A084970 (n + 1)

end A084970

/-! ## A084970.P4727453578357854912

`A298268(A080196(n+1))`
-/

namespace A084970.P4727453578357854912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298268 (A080196 (n + 1)).toNat

end

end A084970.P4727453578357854912

namespace A084970

/-- `A298268(A080196(n+1))` -/
def P4727453578357854912.Spec : Prop :=
  ∀ n, P4727453578357854912.a n = A084970 (n + 1)

end A084970

/-! ## A084970.P16626376664991059871

`record[A000265(A270300(n+1))]`
-/

namespace A084970.P16626376664991059871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A270300 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084970.P16626376664991059871

namespace A084970

/-- `record[A000265(A270300(n+1))]` -/
def P16626376664991059871.Spec : Prop :=
  ∀ n, P16626376664991059871.a n = A084970 (n + 1)

end A084970

/-! ## A084970.P18402435683679541872

`A287932(a(n-1))` with `a(0)=13`
-/

namespace A084970.P18402435683679541872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13] fun n a =>
  A287932 (a (n - 1)).toNat

end

end A084970.P18402435683679541872

namespace A084970

/-- `A287932(a(n-1))` -/
def P18402435683679541872.Spec : Prop :=
  ∀ n, P18402435683679541872.a n = A084970 (n + 1)

end A084970

/-! ## A084970.P9664701869432450271

`A250469(A084969(n+1))`
-/

namespace A084970.P9664701869432450271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250469 (A084969 (n + 1)).toNat

end

end A084970.P9664701869432450271

namespace A084970

/-- `A250469(A084969(n+1))` -/
def P9664701869432450271.Spec : Prop :=
  ∀ n, P9664701869432450271.a n = A084970 (n + 1)

end A084970

/-! ## A084970.P12538963314808122453

`A250469(A250469(A084968(n+1)))`
-/

namespace A084970.P12538963314808122453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250469 (A250469 (A084968 (n + 1)).toNat).toNat

end

end A084970.P12538963314808122453

namespace A084970

/-- `A250469(A250469(A084968(n+1)))` -/
def P12538963314808122453.Spec : Prop :=
  ∀ n, P12538963314808122453.a n = A084970 (n + 1)

end A084970

/-! ## A084970.P8050693270786534636

`A250469(A250469(A250469(A084967(n+1))))`
-/

namespace A084970.P8050693270786534636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250469 (A250469 (A250469 (A084967 (n + 1)).toNat).toNat).toNat

end

end A084970.P8050693270786534636

namespace A084970

/-- `A250469(A250469(A250469(A084967(n+1))))` -/
def P8050693270786534636.Spec : Prop :=
  ∀ n, P8050693270786534636.a n = A084970 (n + 1)

end A084970

/-! ## A084970.P2137307773268935013

`A250469(A250469(A250469(A250469(A016945(n)))))`
-/

namespace A084970.P2137307773268935013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250469 (A250469 (A250469 (A250469 (A016945 n).toNat).toNat).toNat).toNat

end

end A084970.P2137307773268935013

namespace A084970

/-- `A250469(A250469(A250469(A250469(A016945(n)))))` -/
def P2137307773268935013.Spec : Prop :=
  ∀ n, P2137307773268935013.a n = A084970 (n + 1)

end A084970

/-! ## A084970.P3980347576904574380

`A250470(A332799(n+1))`
-/

namespace A084970.P3980347576904574380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (A332799 (n + 1)).toNat

end

end A084970.P3980347576904574380

namespace A084970

/-- `A250470(A332799(n+1))` -/
def P3980347576904574380.Spec : Prop :=
  ∀ n, P3980347576904574380.a n = A084970 (n + 1)

end A084970

/-!
# A084972: When A058033 first reaches n.

The programs for A084972, there is no canonical definition to state claims against.
-/

/-! ## A084972.P13321111518976378725

`A135664(∑[∑[7*a(n-2)-1]]+1)` with `a(0)=2, a(1)=2, a(2)=4`
-/

namespace A084972.P13321111518976378725
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 4] fun n f2 =>
  7 * f2 (n - 2) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135664 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A084972.P13321111518976378725

/-! ## A084972.P15516584360233398454

`A325368(A018145(n))`
-/

namespace A084972.P15516584360233398454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325368 (A018145 n).toNat

end

end A084972.P15516584360233398454

/-! ## A084972.P9363297371333521305

`A365737(A129772(n))`
-/

namespace A084972.P9363297371333521305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365737 (A129772 n).toNat

end

end A084972.P9363297371333521305

/-! ## A084972.P9918739205842177626

`A365737(A361286(n))`
-/

namespace A084972.P9918739205842177626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365737 (A361286 n).toNat

end

end A084972.P9918739205842177626

/-! ## A084972.P14005639514839723569

`A325368(A050195(n+2))`
-/

namespace A084972.P14005639514839723569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325368 (A050195 (n + 2)).toNat

end

end A084972.P14005639514839723569

/-!
# A084973: The maximum departure from the x axis, rounded to the nearest integer, in each cycle of the zeta function for increasingly larger negative values.

The programs for A084973, there is no canonical definition to state claims against.
-/

/-! ## A084973.P2032936583348365098

`1-A195838(A060945(n))`
-/

namespace A084973.P2032936583348365098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A195838 (A060945 n).toNat

end

end A084973.P2032936583348365098

/-! ## A084973.P15708804425888203996

`Δ[A296030(∑[A324432(n)])]`
-/

namespace A084973.P15708804425888203996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324432 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296030 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084973.P15708804425888203996

/-! ## A084973.P4632441384156488034

`round(A158916(3*n+2)/A158918(3*n+1))`
-/

namespace A084973.P4632441384156488034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A158916 (3 * n + 2) : ℚ) / (A158918 (3 * n + 1) : ℚ))

end

end A084973.P4632441384156488034

/-! ## A084973.P1810798626371878224

`A181587(A279568(n+1)+A220588(n))`
-/

namespace A084973.P1810798626371878224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181587 (A279568 (n + 1) + A220588 n).toNat

end

end A084973.P1810798626371878224

/-! ## A084973.P6765308692909011304

`A284501(A048194(n+1))%A018146(n)`
-/

namespace A084973.P6765308692909011304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284501 (A048194 (n + 1)).toNat) (A018146 n)

end

end A084973.P6765308692909011304

/-!
# A084974: Primes p(k) that show the slow decrease in the larger values of the Andrica function Af(k) = sqrt(p(k+1)) - sqrt(p(k)), where p(k) denotes the k-th prime.

The programs for A084974, there is no canonical definition to state claims against.
-/

/-! ## A084974.P17224486759317119267

`record[A079296(n+1)]`
-/

namespace A084974.P17224486759317119267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084974.P17224486759317119267

/-! ## A084974.P14564116188071943822

`record[A079296(A008619(2*n))]*A304042(n)`
-/

namespace A084974.P14564116188071943822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079296 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A304042 n

end

end A084974.P14564116188071943822

/-! ## A084974.P9408470251275279188

`A084975(n+1)-A001223(A084976(n+1))`
-/

namespace A084974.P9408470251275279188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084975 (n + 1) - A001223 (A084976 (n + 1)).toNat

end

end A084974.P9408470251275279188

/-! ## A084974.P8763578885772945689

`A000040(A084976(n+1))`
-/

namespace A084974.P8763578885772945689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A084976 (n + 1)).toNat

end

end A084974.P8763578885772945689

/-!
# A084975: Primes p(k+1) that show the slow decrease in the larger values of the Andrica function Af(k) = sqrt(p(k+1)) - sqrt(p(k)), where p(k) denotes the k-th prime.

The programs for A084975, there is no canonical definition to state claims against.
-/

/-! ## A084975.P11473599825616214202

`A084974(n+1)+A001223(A084976(n+1))`
-/

namespace A084975.P11473599825616214202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084974 (n + 1) + A001223 (A084976 (n + 1)).toNat

end

end A084975.P11473599825616214202

/-! ## A084975.P6469177834326689561

`A001223(A084976(n+1))+record[A079296(n+1)]`
-/

namespace A084975.P6469177834326689561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A084976 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084975.P6469177834326689561

/-! ## A084975.P18093980379239167192

`A001748(A084976(n+1)+1)/3`
-/

namespace A084975.P18093980379239167192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A084976 (n + 1) + 1).toNat : ℚ) / 3

end

end A084975.P18093980379239167192

/-! ## A084975.P3603778450713965920

`A045319(A084976(n+1))`
-/

namespace A084975.P3603778450713965920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A084976 (n + 1)).toNat

end

end A084975.P3603778450713965920

/-! ## A084975.P14793183572147562689

`A151800(A084974(n+1))`
-/

namespace A084975.P14793183572147562689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A084974 (n + 1)).toNat

end

end A084975.P14793183572147562689

/-!
# A084976: Values of k that show the slow decrease in the larger values of the Andrica function Af(k) = sqrt(p(k+1)) - sqrt(p(k)), where p(k) denotes the k-th prime.

The programs for A084976, there is no canonical definition to state claims against.
-/

/-! ## A084976.P17905181408383105371

`A000720(A084974(n+1))`
-/

namespace A084976.P17905181408383105371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A084974 (n + 1)).toNat

end

end A084976.P17905181408383105371

/-! ## A084976.P10810928254812599125

`A329622(A084975(n+1))`
-/

namespace A084976.P10810928254812599125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329622 (A084975 (n + 1)).toNat

end

end A084976.P10810928254812599125

/-! ## A084976.P2700383301960654715

`A000720(record[A079296(n+1)])`
-/

namespace A084976.P2700383301960654715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A084976.P2700383301960654715

/-! ## A084976.P3622453162376106713

`A061395(record[A079296(n+1)])`
-/

namespace A084976.P3622453162376106713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A084976.P3622453162376106713

/-! ## A084976.P4143270855321324499

`A066328(record[A079296(n+1)])`
-/

namespace A084976.P4143270855321324499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A084976.P4143270855321324499

/-!
# A084978: Number of ways to represent n as a+b*(c+d*(e+f*(...x+y*(z)...))) in positive integers.

The programs for A084978, there is no canonical definition to state claims against.
-/

/-! ## A084978.P3349698627213645336

`A014668(n+1)+A320222(n+1)-A000007(n)`
-/

namespace A084978.P3349698627213645336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014668 (n + 1) + (A320222 (n + 1) - A000007 n)

end

end A084978.P3349698627213645336

/-! ## A084978.P12345009117378899998

`A320222(n+1)+A014668(n+1)%A059570(n+1)`
-/

namespace A084978.P12345009117378899998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320222 (n + 1) + Int.tmod (A014668 (n + 1)) (A059570 (n + 1))

end

end A084978.P12345009117378899998

/-! ## A084978.P1047444064441034604

`A014668(n+1)+A320222(n+1)%A026743(n)`
-/

namespace A084978.P1047444064441034604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014668 (n + 1) + Int.tmod (A320222 (n + 1)) (A026743 n)

end

end A084978.P1047444064441034604

/-!
# A084979: Palindromes such that the product of the digits + 1 is prime.

The programs for A084979, there is no canonical definition to state claims against.
-/

/-! ## A084979.P14811847729349658457

`∩[A002113(n+1), A081988(n+1)]`
-/

namespace A084979.P14811847729349658457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084979.P14811847729349658457

/-! ## A084979.P2171421730778567014

`∩[A061917(n+1), A081988(n+1)]`
-/

namespace A084979.P2171421730778567014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084979.P2171421730778567014

/-! ## A084979.P6910115005965378459

`∩[A081988(n+1), A084353(n+1)]`
-/

namespace A084979.P6910115005965378459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084979.P6910115005965378459

/-! ## A084979.P12054978788405744013

`∩[A052382(n+1), A084353(n+1)]`
-/

namespace A084979.P12054978788405744013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084979.P12054978788405744013

/-! ## A084979.P2017911562896454988

`record[A004719(A084353(n+1))]`
-/

namespace A084979.P2017911562896454988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A084353 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084979.P2017911562896454988

/-! ## A084979.P4856214340241112983

`filter[A081988(n+1), A136522(#)]`
-/

namespace A084979.P4856214340241112983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A084979.P4856214340241112983

/-! ## A084979.P13840073899951418576

`filter[A084353(n+1), A168046(#)]`
-/

namespace A084979.P13840073899951418576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084353 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A084979.P13840073899951418576

/-! ## A084979.P3841983716048959345

`∩[A081988(n+1), A281625(n+1)]`
-/

namespace A084979.P3841983716048959345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084979.P3841983716048959345

/-!
# A084980: Triangle of multifactorials: n-th row is (n+1)!!... {n "!"s}, (n+1)!... {n-1 "!"s}, ..., (n+1)!.

The programs for A084980, there is no canonical definition to state claims against.
-/

/-! ## A084980.P9957031964099147097

`(A003056(n)+2)*A129116(n+1)`
-/

namespace A084980.P9957031964099147097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003056 n + 2) * A129116 (n + 1)

end

end A084980.P9957031964099147097

/-! ## A084980.P543875345254163427

`A003057(n+2)*A129116(n+1)`
-/

namespace A084980.P543875345254163427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) * A129116 (n + 1)

end

end A084980.P543875345254163427

/-! ## A084980.P8222060963121263151

`(A002024(n+1)+1)*A129116(n+1)`
-/

namespace A084980.P8222060963121263151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) + 1) * A129116 (n + 1)

end

end A084980.P8222060963121263151

/-! ## A084980.P17064206049169423673

`(A014132(n+1)-n)*A129116(n+1)`
-/

namespace A084980.P17064206049169423673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014132 (n + 1) - (n : ℤ)) * A129116 (n + 1)

end

end A084980.P17064206049169423673

/-! ## A084980.P11053679173929721373

`A002024(A014132(n+1))*A129116(n+1)`
-/

namespace A084980.P11053679173929721373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A014132 (n + 1)).toNat * A129116 (n + 1)

end

end A084980.P11053679173929721373

/-! ## A084980.P6728324301713524412

`A008619(A111650(n+1))*A129116(n+1)`
-/

namespace A084980.P6728324301713524412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A111650 (n + 1)).toNat * A129116 (n + 1)

end

end A084980.P6728324301713524412

/-! ## A084980.P15691517507559845507

`A000005(A140513(n))*A129116(n+1)`
-/

namespace A084980.P15691517507559845507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A140513 n).toNat * A129116 (n + 1)

end

end A084980.P15691517507559845507

/-! ## A084980.P6948525724362419499

`A029837(A018900(n+1))*A129116(n+1)`
-/

namespace A084980.P6948525724362419499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A018900 (n + 1)).toNat * A129116 (n + 1)

end

end A084980.P6948525724362419499

/-! ## A084980.P8325337923635794747

`A121663(A330220(n+2))`
-/

namespace A084980.P8325337923635794747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121663 (A330220 (n + 2)).toNat

end

end A084980.P8325337923635794747

/-!
# A084981: Numbers all of whose proper divisors are palindromic.

The programs for A084981, there is no canonical definition to state claims against.
-/

/-! ## A084981.P3450909584293508303

`lt[A001156(A307719(n)), A001462(n+1)]`
-/

namespace A084981.P3450909584293508303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 (A307719 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A084981.P3450909584293508303

/-! ## A084981.P437588291238066348

`lt[A002865(A307719(n)), A002202(n+1)]`
-/

namespace A084981.P437588291238066348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (A307719 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A084981.P437588291238066348

/-! ## A084981.P3244619053075350512

`lt[A002865(A307719(n)), A066208(n+1)]`
-/

namespace A084981.P3244619053075350512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (A307719 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066208 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A084981.P3244619053075350512

/-! ## A084981.P7788198844469996569

`lt[A127403(A307719(n)), A119480(n+1)]`
-/

namespace A084981.P7788198844469996569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127403 (A307719 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119480 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A084981.P7788198844469996569

/-! ## A084981.P7165182618021761657

`lt[A176472(A018783(n)), A176472(3*n)]`
-/

namespace A084981.P7165182618021761657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176472 (A018783 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176472 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A084981.P7165182618021761657

/-!
# A084983: Palindromes made of only prime digits.

The programs for A084983, there is no canonical definition to state claims against.
-/

/-! ## A084983.P6978983509996405220

`∩[A002113(n+1), A046034(n+1)]`
-/

namespace A084983.P6978983509996405220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084983.P6978983509996405220

/-! ## A084983.P7891593316298841829

`∩[A046034(n+1), A061917(n+1)]`
-/

namespace A084983.P7891593316298841829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084983.P7891593316298841829

/-! ## A084983.P8817914571933488565

`∩[A046034(n+1), A083158(n+1)]`
-/

namespace A084983.P8817914571933488565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084983.P8817914571933488565

/-! ## A084983.P2734401419017924568

`∩[A046034(n+1), A118599(n+1)]`
-/

namespace A084983.P2734401419017924568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084983.P2734401419017924568

/-! ## A084983.P13252043981865796082

`∩[A046034(n+1), A118600(n+1)]`
-/

namespace A084983.P13252043981865796082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118600 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084983.P13252043981865796082

/-! ## A084983.P9447399510048712480

`∩[A046034(n+1), A169824(n+1)]`
-/

namespace A084983.P9447399510048712480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084983.P9447399510048712480

/-! ## A084983.P153301187167314713

`∩[A046034(n+1), A178354(n+1)]`
-/

namespace A084983.P153301187167314713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084983.P153301187167314713

/-! ## A084983.P16530166308262835994

`∩[A046034(n+1), A306273(n+1)]`
-/

namespace A084983.P16530166308262835994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084983.P16530166308262835994

/-! ## A084983.P5618154465046123929

`∩[A046034(n+1), A110751(n+1)]`
-/

namespace A084983.P5618154465046123929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084983.P5618154465046123929

/-!
# A084984: Numbers containing no prime digits.

The programs for A084984, the canonical program `A084984.P8323402415979542972` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084984 has offset 1).

The definition of A084984 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1297 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084984.P3040493899763669203

`∩[A085558(n+1), A365472(n+1)]`
-/

namespace A084984.P3040493899763669203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085558 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365472 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084984.P3040493899763669203

namespace A084984

/-- `∩[A085558(n+1), A365472(n+1)]` -/
def P3040493899763669203.Spec : Prop :=
  ∀ n, (P3040493899763669203.a n : ℤ) = A084984 (n + 1)

end A084984

/-! ## A084984.P13359825593633740336

`comp[A118950(n+1)]`
-/

namespace A084984.P13359825593633740336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A084984.P13359825593633740336

namespace A084984

/-- `comp[A118950(n+1)]` -/
def P13359825593633740336.Spec : Prop :=
  ∀ n, (P13359825593633740336.a n : ℤ) = A084984 (n + 1)

end A084984

/-! ## A084984.P13947383685389734225

`record[A019516(n)]`
-/

namespace A084984.P13947383685389734225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084984.P13947383685389734225

namespace A084984

/-- `record[A019516(n)]` -/
def P13947383685389734225.Spec : Prop :=
  ∀ n, P13947383685389734225.a n = A084984 (n + 1)

end A084984

/-! ## A084984.P17062632547898503228

`∩[A365471(n+1), A365472(n+1)]`
-/

namespace A084984.P17062632547898503228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365472 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084984.P17062632547898503228

namespace A084984

/-- `∩[A365471(n+1), A365472(n+1)]` -/
def P17062632547898503228.Spec : Prop :=
  ∀ n, (P17062632547898503228.a n : ℤ) = A084984 (n + 1)

end A084984

/-! ## A084984.P17263795390387039702

`eq[0, A193238(n)]`
-/

namespace A084984.P17263795390387039702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084984.P17263795390387039702

namespace A084984

/-- `eq[0, A193238(n)]` -/
def P17263795390387039702.Spec : Prop :=
  ∀ n, (P17263795390387039702.a n : ℤ) = A084984 (n + 1)

end A084984

/-! ## A084984.P8951114711305333496

`lt[0, A276729(A211396(n))]`
-/

namespace A084984.P8951114711305333496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 (A211396 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A084984.P8951114711305333496

namespace A084984

/-- `lt[0, A276729(A211396(n))]` -/
def P8951114711305333496.Spec : Prop :=
  ∀ n, (P8951114711305333496.a n : ℤ) = A084984 (n + 1)

end A084984

/-! ## A084984.P8323402415979542972

`eq[A055642(n), A276729(n)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A084984

/-- `eq[A055642(n), A276729(n)]` -/
def P8323402415979542972.Spec : Prop :=
  ∀ n, (P8323402415979542972.a n : ℤ) = A084984 (n + 1)

theorem P8323402415979542972.correct : P8323402415979542972.Spec := by
  intro n
  simp only [A084984, Nat.add_sub_cancel]

end A084984

/-! ## A084984.P4240437261874874477

`lt[A000292(n)*A193238(n), 2]`
-/

namespace A084984.P4240437261874874477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n * A193238 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A084984.P4240437261874874477

namespace A084984

/-- `lt[A000292(n)*A193238(n), 2]` -/
def P4240437261874874477.Spec : Prop :=
  ∀ n, (P4240437261874874477.a n : ℤ) = A084984 (n + 1)

end A084984

/-! ## A084984.P5847949957759831353

`lt[A193238(n)*A215099(n), 2]`
-/

namespace A084984.P5847949957759831353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 n * A215099 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A084984.P5847949957759831353

namespace A084984

/-- `lt[A193238(n)*A215099(n), 2]` -/
def P5847949957759831353.Spec : Prop :=
  ∀ n, (P5847949957759831353.a n : ℤ) = A084984 (n + 1)

end A084984

/-! ## A084984.P3020150073437393324

`lt[A001414(n+1)*A193238(n), 2]`
-/

namespace A084984.P3020150073437393324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) * A193238 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A084984.P3020150073437393324

namespace A084984

/-- `lt[A001414(n+1)*A193238(n), 2]` -/
def P3020150073437393324.Spec : Prop :=
  ∀ n, (P3020150073437393324.a n : ℤ) = A084984 (n + 1)

end A084984

/-! ## A084984.P15882027702551739400

`record[n-A000203(n+1)*A193238(n)]`
-/

namespace A084984.P15882027702551739400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000203 (n + 1) * A193238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084984.P15882027702551739400

namespace A084984

/-- `record[n-A000203(n+1)*A193238(n)]` -/
def P15882027702551739400.Spec : Prop :=
  ∀ n, P15882027702551739400.a n = A084984 (n + 1)

end A084984

/-! ## A084984.P5076821248652305907

`record[n-A002808(n+1)*A193238(n)]`
-/

namespace A084984.P5076821248652305907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A002808 (n + 1) * A193238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084984.P5076821248652305907

namespace A084984

/-- `record[n-A002808(n+1)*A193238(n)]` -/
def P5076821248652305907.Spec : Prop :=
  ∀ n, P5076821248652305907.a n = A084984 (n + 1)

end A084984

/-! ## A084984.P12756117358228880536

`record[n-lcm(A002808(n+2), A193238(n))]`
-/

namespace A084984.P12756117358228880536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Int.lcm (A002808 (n + 2)) (A193238 n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084984.P12756117358228880536

namespace A084984

/-- `record[n-lcm(A002808(n+2), A193238(n))]` -/
def P12756117358228880536.Spec : Prop :=
  ∀ n, P12756117358228880536.a n = A084984 (n + 1)

end A084984

/-! ## A084984.P11686973845703865816

`A035043(A276138(n+1))`
-/

namespace A084984.P11686973845703865816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (A276138 (n + 1)).toNat

end

end A084984.P11686973845703865816

namespace A084984

/-- `A035043(A276138(n+1))` -/
def P11686973845703865816.Spec : Prop :=
  ∀ n, P11686973845703865816.a n = A084984 (n + 1)

end A084984

/-! ## A084984.P15227515364861857248

`eq[n, A222246(A035044(n))]`
-/

namespace A084984.P15227515364861857248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (A035044 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084984.P15227515364861857248

namespace A084984

/-- `eq[n, A222246(A035044(n))]` -/
def P15227515364861857248.Spec : Prop :=
  ∀ n, (P15227515364861857248.a n : ℤ) = A084984 (n + 1)

end A084984

/-! ## A084984.P6763161642776650064

`eq[n, A222237(A222229(n))]`
-/

namespace A084984.P6763161642776650064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222237 (A222229 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084984.P6763161642776650064

namespace A084984

/-- `eq[n, A222237(A222229(n))]` -/
def P6763161642776650064.Spec : Prop :=
  ∀ n, (P6763161642776650064.a n : ℤ) = A084984 (n + 1)

end A084984

/-! ## A084984.P9781181675994471801

`eq[n, A222235(A222231(n))]`
-/

namespace A084984.P9781181675994471801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 (A222231 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084984.P9781181675994471801

namespace A084984

/-- `eq[n, A222235(A222231(n))]` -/
def P9781181675994471801.Spec : Prop :=
  ∀ n, (P9781181675994471801.a n : ℤ) = A084984 (n + 1)

end A084984

/-! ## A084984.P15872345708463175380

`record[gcd(A035044(n), A222246(n))]`
-/

namespace A084984.P15872345708463175380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035044 n) (A222246 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084984.P15872345708463175380

namespace A084984

/-- `record[gcd(A035044(n), A222246(n))]` -/
def P15872345708463175380.Spec : Prop :=
  ∀ n, (P15872345708463175380.a n : ℤ) = A084984 (n + 1)

end A084984

/-! ## A084984.P11327300524717905060

`lt[A004218(n+1), A276729(n)+1]`
-/

namespace A084984.P11327300524717905060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A084984.P11327300524717905060

namespace A084984

/-- `lt[A004218(n+1), A276729(n)+1]` -/
def P11327300524717905060.Spec : Prop :=
  ∀ n, (P11327300524717905060.a n : ℤ) = A084984 (n + 1)

end A084984

/-! ## A084984.P12958612231020776388

`record[n-A000040(n+1)*A193238(n)]`
-/

namespace A084984.P12958612231020776388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000040 (n + 1) * A193238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084984.P12958612231020776388

namespace A084984

/-- `record[n-A000040(n+1)*A193238(n)]` -/
def P12958612231020776388.Spec : Prop :=
  ∀ n, P12958612231020776388.a n = A084984 (n + 1)

end A084984

/-!
# A084985: Palindromes in sequence A084984.

The programs for A084985, there is no canonical definition to state claims against.
-/

/-! ## A084985.P4729390110788030510

`filter[A084984(n+2), A136522(#)]`
-/

namespace A084985.P4729390110788030510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A084985.P4729390110788030510

/-! ## A084985.P14969055980119649654

`∩[A109882(n+1), A202268(n+1)]`
-/

namespace A084985.P14969055980119649654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084985.P14969055980119649654

/-!
# A084988: Numbers made with nonprime digits such that the sum of the digits is also not prime.

The programs for A084988, the canonical program `A084988.P10462834294168288044` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084988 has offset 1).

The definition of A084988 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1263 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084988.P10462834294168288044

`∩[A084984(n+1), A104211(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A084988

/-- `∩[A084984(n+1), A104211(n+1)]` -/
def P10462834294168288044.Spec : Prop :=
  ∀ n, (P10462834294168288044.a n : ℤ) = A084988 (n + 1)

theorem P10462834294168288044.correct : P10462834294168288044.Spec := by
  intro n
  simp only [A084988, Nat.add_sub_cancel]

end A084988

/-! ## A084988.P6649627692641978520

`∩[A104211(n+1), record[A019516(n)]]`
-/

namespace A084988.P6649627692641978520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104211 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019516 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084988.P6649627692641978520

namespace A084988

/-- `∩[A104211(n+1), record[A019516(n)]]` -/
def P6649627692641978520.Spec : Prop :=
  ∀ n, (P6649627692641978520.a n : ℤ) = A084988 (n + 1)

end A084988

/-! ## A084988.P7446198234359316515

`∩[A104211(n+1), A035043(A276138(n+1))]`
-/

namespace A084988.P7446198234359316515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (A276138 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084988.P7446198234359316515

namespace A084988

/-- `∩[A104211(n+1), A035043(A276138(n+1))]` -/
def P7446198234359316515.Spec : Prop :=
  ∀ n, (P7446198234359316515.a n : ℤ) = A084988 (n + 1)

end A084988

/-! ## A084988.P9791440064621814806

`∩[A104211(n+1), A222234(A137386(n+1))]`
-/

namespace A084988.P9791440064621814806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (A137386 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084988.P9791440064621814806

namespace A084988

/-- `∩[A104211(n+1), A222234(A137386(n+1))]` -/
def P9791440064621814806.Spec : Prop :=
  ∀ n, (P9791440064621814806.a n : ℤ) = A084988 (n + 1)

end A084988

/-!
# A084989: Number of 4-year terms served by n-th President of U.S.A.

The programs for A084989, there is no canonical definition to state claims against.
-/

/-! ## A084989.P18061565495125525432

`gcd(A000034(A242324(n+1)), A179242(2*n+1))`
-/

namespace A084989.P18061565495125525432
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000034 (A242324 (n + 1)).toNat) (A179242 (2 * n + 1))

end

end A084989.P18061565495125525432

/-! ## A084989.P540181017701489464

`A000002(A103859(n+1)+A040341(n)-1)`
-/

namespace A084989.P540181017701489464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A103859 (n + 1) + (A040341 n - 1)).toNat

end

end A084989.P540181017701489464

/-! ## A084989.P16330582329220586834

`A000002(A000034(n+1)*A103859(n+1))`
-/

namespace A084989.P16330582329220586834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A000034 (n + 1) * A103859 (n + 1)).toNat

end

end A084989.P16330582329220586834

/-! ## A084989.P17865368585846605037

`A305393(A001034(n+1)-A122618(n+1))`
-/

namespace A084989.P17865368585846605037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305393 (A001034 (n + 1) - A122618 (n + 1)).toNat

end

end A084989.P17865368585846605037

/-! ## A084989.P4387325226537183775

`A270646(A062668(n+1)*A270616(n+1))`
-/

namespace A084989.P4387325226537183775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270646 (A062668 (n + 1) * A270616 (n + 1)).toNat

end

end A084989.P4387325226537183775

/-!
# A084990: a(n) = n*(n^2+3*n-1)/3.

The programs for A084990, the canonical program `A084990.P3371967452102574378` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084990 has offset 0).

The definition of A084990 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084990.P3371967452102574378

`ogf((x+2x^2-x^3)/(1-4x+6x^2-4x^3+x^4))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A084990

/-- `ogf((x+2x^2-x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P3371967452102574378.Spec : Prop :=
  ∀ n, P3371967452102574378.a n = A084990 n

theorem P3371967452102574378.correct : P3371967452102574378.Spec := by
  intro n
  simp only [A084990]

end A084990

/-! ## A084990.P9109985148676781051

`n*(n²+3*n-1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A084990.P9109985148676781051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n ^ 2 + 3 * n : ℤ) - 1) : ℚ) / 3

end

end A084990.P9109985148676781051

namespace A084990

/-- `n*(n²+3*n-1)/3` -/
def P9109985148676781051.Spec : Prop :=
  ∀ n, P9109985148676781051.a n = (A084990 n : ℚ)

end A084990

/-! ## A084990.P4326357596434365784

`∑[n²]+C(n, 2)`
-/

namespace A084990.P4326357596434365784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose n 2

end

end A084990.P4326357596434365784

namespace A084990

/-- `∑[n²]+C(n, 2)` -/
def P4326357596434365784.Spec : Prop :=
  ∀ n, (P4326357596434365784.a n : ℤ) = A084990 n

end A084990

/-! ## A084990.P8299285653335106452

`∑[∑[n*ceil(atan(n))]]`
-/

namespace A084990.P8299285653335106452
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈Real.arctan (n : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084990.P8299285653335106452

namespace A084990

/-- `∑[∑[n*ceil(atan(n))]]` -/
def P8299285653335106452.Spec : Prop :=
  ∀ n, P8299285653335106452.a n = A084990 n

end A084990

/-! ## A084990.P3969631653993716513

`∑[lcm(n, n+1)]-n`
-/

namespace A084990.P3969631653993716513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A084990.P3969631653993716513

namespace A084990

/-- `∑[lcm(n, n+1)]-n` -/
def P3969631653993716513.Spec : Prop :=
  ∀ n, P3969631653993716513.a n = A084990 n

end A084990

/-! ## A084990.P17396816082802693225

`∑[∑[xor(n, char[1])+n]]`
-/

namespace A084990.P17396816082802693225
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (if ∃ j, f3 j = n then 1 else 0) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084990.P17396816082802693225

namespace A084990

/-- `∑[∑[xor(n, char[1])+n]]` -/
def P17396816082802693225.Spec : Prop :=
  ∀ n, (P17396816082802693225.a n : ℤ) = A084990 n

end A084990

/-! ## A084990.P8944829983223964212

`∑[∑[n*ceil(acot(acot(n)))]]`
-/

namespace A084990.P8944829983223964212
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈SequenceMachineLib.acot (SequenceMachineLib.acot (n : ℝ))⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084990.P8944829983223964212

namespace A084990

/-- `∑[∑[n*ceil(acot(acot(n)))]]` -/
def P8944829983223964212.Spec : Prop :=
  ∀ n, P8944829983223964212.a n = A084990 n

end A084990

/-! ## A084990.P3720312312681724504

`2*C(n+2, 3)-n`
-/

namespace A084990.P3720312312681724504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (n + 2) 3 : ℤ) - (n : ℤ)

end

end A084990.P3720312312681724504

namespace A084990

/-- `2*C(n+2, 3)-n` -/
def P3720312312681724504.Spec : Prop :=
  ∀ n, P3720312312681724504.a n = A084990 n

end A084990

/-! ## A084990.P67506475613179151

`∑[∑[n*(2%(n+1))!]]`
-/

namespace A084990.P67506475613179151
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.factorial (2 % (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084990.P67506475613179151

namespace A084990

/-- `∑[∑[n*(2%(n+1))!]]` -/
def P67506475613179151.Spec : Prop :=
  ∀ n, (P67506475613179151.a n : ℤ) = A084990 n

end A084990

/-! ## A084990.P527270714428998459

`∑[floor(n/tan(1/(n+1)))]`
-/

namespace A084990.P527270714428998459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.tan (1 / (n + 1 : ℚ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084990.P527270714428998459

namespace A084990

/-- `∑[floor(n/tan(1/(n+1)))]` -/
def P527270714428998459.Spec : Prop :=
  ∀ n, P527270714428998459.a n = A084990 n

end A084990

/-! ## A084990.P17595342561754023376

`∑[floor(n/asin(1/(n+1)))]`
-/

namespace A084990.P17595342561754023376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.arcsin (1 / (n + 1 : ℚ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084990.P17595342561754023376

namespace A084990

/-- `∑[floor(n/asin(1/(n+1)))]` -/
def P17595342561754023376.Spec : Prop :=
  ∀ n, P17595342561754023376.a n = A084990 n

end A084990

/-! ## A084990.P6227357391291584301

`∑[floor(n/sinh(1/(n+1)))]`
-/

namespace A084990.P6227357391291584301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.sinh (1 / (n + 1 : ℚ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084990.P6227357391291584301

namespace A084990

/-- `∑[floor(n/sinh(1/(n+1)))]` -/
def P6227357391291584301.Spec : Prop :=
  ∀ n, P6227357391291584301.a n = A084990 n

end A084990

/-! ## A084990.P5332070358701715981

`∑[floor(n*cot(1/(n+1)))]`
-/

namespace A084990.P5332070358701715981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.cot (1 / (n + 1 : ℚ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084990.P5332070358701715981

namespace A084990

/-- `∑[floor(n*cot(1/(n+1)))]` -/
def P5332070358701715981.Spec : Prop :=
  ∀ n, P5332070358701715981.a n = A084990 n

end A084990

/-! ## A084990.P4387704003836214952

`∑[floor(sinh(log(2*n+1))²)]`
-/

namespace A084990.P4387704003836214952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (2 * n + 1 : ℝ)) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084990.P4387704003836214952

namespace A084990

/-- `∑[floor(sinh(log(2*n+1))²)]` -/
def P4387704003836214952.Spec : Prop :=
  ∀ n, P4387704003836214952.a n = A084990 n

end A084990

/-! ## A084990.P11010424925821391818

`∑[∑[n*round(atan(n+1)²)]]`
-/

namespace A084990.P11010424925821391818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * SequenceMachineLib.roundAway (Real.arctan (n + 1 : ℝ) ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084990.P11010424925821391818

namespace A084990

/-- `∑[∑[n*round(atan(n+1)²)]]` -/
def P11010424925821391818.Spec : Prop :=
  ∀ n, P11010424925821391818.a n = A084990 n

end A084990

/-! ## A084990.P2318979307170875890

`∑[∑[a(n-1)+2]]` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A084990.P2318979307170875890
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084990.P2318979307170875890

namespace A084990

/-- `∑[∑[a(n-1)+2]]` -/
def P2318979307170875890.Spec : Prop :=
  ∀ n, (P2318979307170875890.a n : ℤ) = A084990 n

end A084990

/-! ## A084990.P11872105463092848523

`((n+2)^3)%∑[(n+2)²]`
-/

namespace A084990.P11872105463092848523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 3 % (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084990.P11872105463092848523

namespace A084990

/-- `((n+2)^3)%∑[(n+2)²]` -/
def P11872105463092848523.Spec : Prop :=
  ∀ n, (P11872105463092848523.a n : ℤ) = A084990 n

end A084990

/-! ## A084990.P2223742138981284396

`a(n-1)+n²+n-1` with `a(0)=0`
-/

namespace A084990.P2223742138981284396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n ^ 2 : ℤ) + ((n : ℤ) - 1)

end

end A084990.P2223742138981284396

namespace A084990

/-- `a(n-1)+n²+n-1` -/
def P2223742138981284396.Spec : Prop :=
  ∀ n, P2223742138981284396.a n = A084990 n

end A084990

/-! ## A084990.P12528779524515825124

`∑[(n²-1+n)%(n+1)²]`
-/

namespace A084990.P12528779524515825124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ 2 : ℤ) - 1 + (n : ℤ)) ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084990.P12528779524515825124

namespace A084990

/-- `∑[(n²-1+n)%(n+1)²]` -/
def P12528779524515825124.Spec : Prop :=
  ∀ n, P12528779524515825124.a n = A084990 n

end A084990

/-! ## A084990.P3732709933784973037

`∑[∑[2*n/(C(2, n+1)+1)]]`
-/

namespace A084990.P3732709933784973037
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) / (Nat.choose 2 (n + 1) + 1 : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084990.P3732709933784973037

namespace A084990

/-- `∑[∑[2*n/(C(2, n+1)+1)]]` -/
def P3732709933784973037.Spec : Prop :=
  ∀ n, P3732709933784973037.a n = (A084990 n : ℚ)

end A084990

/-!
# A084991: Palindromes which can be written as a sum of two prime numbers.

The programs for A084991, there is no canonical definition to state claims against.
-/

/-! ## A084991.P7418043855633299641

`∩[A002113(n+1), A014091(n+1)]`
-/

namespace A084991.P7418043855633299641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084991.P7418043855633299641

/-! ## A084991.P13011934606396832920

`∩[A014091(n+1), A083158(n+1)]`
-/

namespace A084991.P13011934606396832920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084991.P13011934606396832920

/-! ## A084991.P13619468005216559195

`record[A047813(A014091(n+1))]`
-/

namespace A084991.P13619468005216559195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A014091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084991.P13619468005216559195

/-! ## A084991.P18301751114089461452

`filter[A014091(n+1), A136522(#)]`
-/

namespace A084991.P18301751114089461452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A084991.P18301751114089461452

/-! ## A084991.P9793334455481466300

`record[A047813(A106092(n+1)+2)]`
-/

namespace A084991.P9793334455481466300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A106092 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084991.P9793334455481466300

/-!
# A084992: Palindromes such that the difference between the consecutive terms are palindromes and this has not been the difference of any two consecutive terms earlier.

The programs for A084992, there is no canonical definition to state claims against.
-/

/-! ## A084992.P9428705867939661712

`a(n-1)+A118596(n+1)%A252159(n+1)` with `a(0)=1`
-/

namespace A084992.P9428705867939661712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A118596 (n + 1)) (A252159 (n + 1))

end

end A084992.P9428705867939661712

/-! ## A084992.P4978222720641694580

`A327296(A016116(n)²)+∑[A118596(n+1)]`
-/

namespace A084992.P4978222720641694580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327296 (A016116 n ^ 2).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084992.P4978222720641694580

/-! ## A084992.P6175320317930944944

`A327296(A016116(2*n+1))+∑[A118596(n+1)]`
-/

namespace A084992.P6175320317930944944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327296 (A016116 (2 * n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084992.P6175320317930944944

/-! ## A084992.P12838364373500705846

`A204129(A041249(n))+∑[A118596(n+1)]`
-/

namespace A084992.P12838364373500705846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204129 (A041249 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084992.P12838364373500705846

/-! ## A084992.P15429418384969576484

`∑[A118596(n+1)^A057979(A003418(n))]`
-/

namespace A084992.P15429418384969576484
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118596 (n + 1) : ℚ) ^ (A057979 (A003418 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084992.P15429418384969576484

/-!
# A084993: Total number of parts in all partitions of n into prime parts.

The programs for A084993, there is no canonical definition to state claims against.
-/

/-! ## A084993.P16018527213468347034

`A033485(n+1)-A278163(A000051(n))`
-/

namespace A084993.P16018527213468347034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033485 (n + 1) - A278163 (A000051 n).toNat

end

end A084993.P16018527213468347034

/-! ## A084993.P511508905925738917

`A111660(A087750(n+1))`
-/

namespace A084993.P511508905925738917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A087750 (n + 1)).toNat

end

end A084993.P511508905925738917

/-!
# A084995: Numbers which can be written as the product of two different primes and the sum of digits is also prime.

The programs for A084995, there is no canonical definition to state claims against.
-/

/-! ## A084995.P7934027192570414571

`record[A007947(A108606(n+1))]`
-/

namespace A084995.P7934027192570414571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A108606 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084995.P7934027192570414571

/-! ## A084995.P13811609749463539584

`filter[A108606(n+1), A008966(#)]`
-/

namespace A084995.P13811609749463539584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A084995.P13811609749463539584

/-! ## A084995.P2176728397887286233

`∩[A005117(n+1), A108606(n+1)]`
-/

namespace A084995.P2176728397887286233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084995.P2176728397887286233

/-! ## A084995.P4761227998830025314

`filter[A108606(n+1), A049240(#)]`
-/

namespace A084995.P4761227998830025314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A084995.P4761227998830025314

/-! ## A084995.P12353737710350924428

`filter[A108606(n+1), A181183(#)]`
-/

namespace A084995.P12353737710350924428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A084995.P12353737710350924428

/-! ## A084995.P13651801552729087702

`filter[A028834(n+1), A280710(#)]`
-/

namespace A084995.P13651801552729087702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A084995.P13651801552729087702

/-! ## A084995.P16906140814242497462

`filter[A108606(n+1), A262684(#)]`
-/

namespace A084995.P16906140814242497462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262684 (f1 j).toNat = 1) n)

end

end A084995.P16906140814242497462

/-! ## A084995.P12904941952587317322

`filter[A108606(n+1), A280710(#)]`
-/

namespace A084995.P12904941952587317322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A084995.P12904941952587317322

/-! ## A084995.P15107583425291433590

`filter[A108606(n+1), A295316(#)]`
-/

namespace A084995.P15107583425291433590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A084995.P15107583425291433590

/-! ## A084995.P14329405910755572140

`filter[A108606(n+1), A323154(#)]`
-/

namespace A084995.P14329405910755572140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A084995.P14329405910755572140

/-! ## A084995.P1380977852984452883

`filter[A108606(n+1), A343219(#)]`
-/

namespace A084995.P1380977852984452883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A343219 (f1 j).toNat = 1) n)

end

end A084995.P1380977852984452883

/-! ## A084995.P16391047310034870090

`filter[A108606(n+1), A353471(#)]`
-/

namespace A084995.P16391047310034870090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A084995.P16391047310034870090

/-! ## A084995.P16822851181849053565

`filter[A108606(n+1), A353519(#)]`
-/

namespace A084995.P16822851181849053565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A084995.P16822851181849053565

/-! ## A084995.P13021672313108628805

`filter[A108606(n+1), A353559(#)]`
-/

namespace A084995.P13021672313108628805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A084995.P13021672313108628805

/-! ## A084995.P17836134132544448768

`filter[A108606(n+1), A353627(#)]`
-/

namespace A084995.P17836134132544448768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A084995.P17836134132544448768

/-! ## A084995.P12863078121995764167

`filter[A108606(n+1), A353628(#)]`
-/

namespace A084995.P12863078121995764167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353628 (f1 j).toNat = 1) n)

end

end A084995.P12863078121995764167

/-! ## A084995.P13117922039552610016

`filter[A141642(n+1), A280710(#)]`
-/

namespace A084995.P13117922039552610016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A084995.P13117922039552610016

/-! ## A084995.P1890396925766327679

`filter[A141642(n+1), A353471(#)]`
-/

namespace A084995.P1890396925766327679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A084995.P1890396925766327679

/-! ## A084995.P10126632270384813296

`filter[A329522(n+2), A280710(#)]`
-/

namespace A084995.P10126632270384813296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329522 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A084995.P10126632270384813296

/-! ## A084995.P11335338569517611884

`filter[A329522(n+2), A353471(#)]`
-/

namespace A084995.P11335338569517611884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329522 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A084995.P11335338569517611884

/-!
# A084996: Numbers which can be written as the product of two distinct primes and containing only prime decimal digits.

The programs for A084996, there is no canonical definition to state claims against.
-/

/-! ## A084996.P1475011230385508299

`record[∏{p}[A108632(n+1), #]]`
-/

namespace A084996.P1475011230385508299
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108632 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084996.P1475011230385508299

/-! ## A084996.P15363858839173685193

`A108632(n+2-floor(acot(n)))`
-/

namespace A084996.P15363858839173685193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108632 ((n + 2 : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A084996.P15363858839173685193

/-! ## A084996.P2796171176997477610

`A108632(ceil(sqrt(∑[2*n]))+1)`
-/

namespace A084996.P2796171176997477610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108632 (⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉ + 1).toNat

end

end A084996.P2796171176997477610

/-! ## A084996.P11883021361261406206

`record[A108632(A052938(n))]`
-/

namespace A084996.P11883021361261406206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108632 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084996.P11883021361261406206

/-! ## A084996.P10449993855063225990

`∩[A062087(n+1), A108632(n+1)]`
-/

namespace A084996.P10449993855063225990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108632 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084996.P10449993855063225990

/-! ## A084996.P13612771091533942947

`∩[A077674(n+1), A108632(n+1)]`
-/

namespace A084996.P13612771091533942947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108632 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084996.P13612771091533942947

/-! ## A084996.P4085252051761645095

`∩[A062087(n+1), A108614(n+1)]`
-/

namespace A084996.P4085252051761645095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084996.P4085252051761645095

/-! ## A084996.P14096460542227732965

`∩[A077674(n+1), A108614(n+1)]`
-/

namespace A084996.P14096460542227732965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084996.P14096460542227732965

/-! ## A084996.P13577379143888814578

`filter[A108632(n+1), A008966(#)]`
-/

namespace A084996.P13577379143888814578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108632 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A084996.P13577379143888814578

/-! ## A084996.P9243545615579528607

`filter[A062087(n+1), A354927(#)]`
-/

namespace A084996.P9243545615579528607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A084996.P9243545615579528607

/-! ## A084996.P835088142501331803

`filter[A061371(n+1), A374128(#)]`
-/

namespace A084996.P835088142501331803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A084996.P835088142501331803

/-! ## A084996.P8527829137541110467

`∩[A001358(n+1), A062087(n+1)]`
-/

namespace A084996.P8527829137541110467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084996.P8527829137541110467

/-! ## A084996.P10672596828366199245

`∩[A005117(n+1), A108632(n+1)]`
-/

namespace A084996.P10672596828366199245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108632 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084996.P10672596828366199245

/-! ## A084996.P9606193531732775964

`filter[A062087(n+1), A064911(#)]`
-/

namespace A084996.P9606193531732775964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A084996.P9606193531732775964

/-! ## A084996.P764344113667866152

`filter[A108632(n+1), A049240(#)]`
-/

namespace A084996.P764344113667866152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108632 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A084996.P764344113667866152

/-! ## A084996.P10849205390035281006

`filter[A108632(n+1), A181183(#)]`
-/

namespace A084996.P10849205390035281006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108632 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A084996.P10849205390035281006

/-! ## A084996.P6121539631492340397

`filter[A046034(n+1), A280710(#)]`
-/

namespace A084996.P6121539631492340397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A084996.P6121539631492340397

/-! ## A084996.P1426751046932159791

`filter[A061371(n+1), A280710(#)]`
-/

namespace A084996.P1426751046932159791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A084996.P1426751046932159791

/-! ## A084996.P15878735255679377375

`filter[A062087(n+1), A280710(#)]`
-/

namespace A084996.P15878735255679377375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A084996.P15878735255679377375

/-! ## A084996.P9834758515381281604

`filter[A108632(n+1), A262684(#)]`
-/

namespace A084996.P9834758515381281604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108632 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262684 (f1 j).toNat = 1) n)

end

end A084996.P9834758515381281604

