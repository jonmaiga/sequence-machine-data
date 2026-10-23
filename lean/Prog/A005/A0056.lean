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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
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
# A005602: Smallest prime beginning a complete Cunningham chain of length n (of the first kind).

The programs for A005602, there is no canonical definition to state claims against.
-/

/-! ## A005602.P4427283293705928616

`floor(A110056(n+1)/2^n)`
-/

namespace A005602.P4427283293705928616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A110056 (n + 1) : ℚ) / (2 ^ n : ℚ)⌋

end

end A005602.P4427283293705928616

/-!
# A005603: Smallest prime beginning a complete Cunningham chain (of the second kind) of length n.

The programs for A005603, there is no canonical definition to state claims against.
-/

/-! ## A005603.P1684515255854464623

`ceil(A110059(n+1)/2^n)`
-/

namespace A005603.P1684515255854464623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A110059 (n + 1) : ℚ) / (2 ^ n : ℚ)⌉

end

end A005603.P1684515255854464623

/-!
# A005604: a(n) = a(n-1)! + a(n-2)!.

The programs for A005604, there is no canonical definition to state claims against.
-/

/-! ## A005604.P1662917180326983469

`a(n-1)!+(n-2)!` with `a(0)=1, a(1)=1`
-/

namespace A005604.P1662917180326983469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.factorial (a (n - 1)) + Nat.factorial ((n : ℤ) - 2).toNat

end

end A005604.P1662917180326983469

/-!
# A005605: a(n) = a(n-1) + (-1)^(n-1) * a(n-2)^2 for n >= 2 with a(0) = 0 and a(1) = 1.

The programs for A005605, the canonical program `A005605.P13397592663865603121` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005605 has offset 0).

The definition of A005605 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005605.P13397592663865603121

`a(n-1)+(-1)^(n-1)*a(n-2)²` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005605

/-- `a(n-1)+(-1)^(n-1)*a(n-2)²` -/
def P13397592663865603121.Spec : Prop :=
  ∀ n, P13397592663865603121.a n = (A005605 n : ℚ)

end A005605

/-! ## A005605.P15358231588601724394

`a(n-1)-a(n-2)²*(-1)^n` with `a(0)=0, a(1)=1`
-/

namespace A005605.P15358231588601724394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - a (n - 2) ^ 2 * (-1) ^ n

end

end A005605.P15358231588601724394

namespace A005605

/-- `a(n-1)-a(n-2)²*(-1)^n` -/
def P15358231588601724394.Spec : Prop :=
  ∀ n, P15358231588601724394.a n = A005605 n

end A005605

/-! ## A005605.P9678320627095053029

`a(n-1)-a(n-2)²/(-1)^n` with `a(0)=0, a(1)=1`
-/

namespace A005605.P9678320627095053029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - a (n - 2) ^ 2 / ((-1) ^ n : ℚ)

end

end A005605.P9678320627095053029

namespace A005605

/-- `a(n-1)-a(n-2)²/(-1)^n` -/
def P9678320627095053029.Spec : Prop :=
  ∀ n, P9678320627095053029.a n = (A005605 n : ℚ)

end A005605

/-!
# A005607: a(n) = (a(n-1) + a(n-2))!.

The programs for A005607, there is no canonical definition to state claims against.
-/

/-! ## A005607.P2608259486717715423

`∏{d}[n, #]!`
-/

namespace A005607.P2608259486717715423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∏ d ∈ Nat.divisors (f1 n), d)

end

end A005607.P2608259486717715423

/-!
# A005609: Number of Boolean functions realized by cascades of n gates.

The programs for A005609, the canonical program `A005609.P5436122901212873318` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005609 has offset 1).

The definition of A005609 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005609.P5436122901212873318

`4*(4+5*28^(n+1))/9`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005609

/-- `4*(4+5*28^(n+1))/9` -/
def P5436122901212873318.Spec : Prop :=
  ∀ n, P5436122901212873318.a n = (A005609 (n + 1) : ℚ)

end A005609

/-!
# A005610: Number of Boolean functions realized by cascades of n gates.

The programs for A005610, the canonical program `A005610.P2850774746609968476` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005610 has offset 1).

The definition of A005610 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005610.P2850774746609968476

`6*a(n-1)+2` with `a(0)=2`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005610

/-- `6*a(n-1)+2` -/
def P2850774746609968476.Spec : Prop :=
  ∀ n, (P2850774746609968476.a n : ℤ) = A005610 (n + 1)

theorem P2850774746609968476.correct : P2850774746609968476.Spec := by
  intro n
  simp only [A005610, Nat.add_sub_cancel]

end A005610

/-! ## A005610.P12392270839618737541

`2/5*(6*6^n-1)`
-/

namespace A005610.P12392270839618737541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 5 * ((6 * 6 ^ n : ℤ) - 1 : ℚ)

end

end A005610.P12392270839618737541

namespace A005610

/-- `2/5*(6*6^n-1)` -/
def P12392270839618737541.Spec : Prop :=
  ∀ n, P12392270839618737541.a n = (A005610 (n + 1) : ℚ)

theorem P12392270839618737541.correct : P12392270839618737541.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A005610, Nat.add_sub_cancel, A005610.P12392270839618737541.a, A005610.P2850774746609968476.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A005610, Nat.add_sub_cancel, A005610.P12392270839618737541.a, A005610.P2850774746609968476.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A005610

/-! ## A005610.P7903623483936433388

`lcm(2, ∑[6^n])`
-/

namespace A005610.P7903623483936433388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005610.P7903623483936433388

namespace A005610

/-- `lcm(2, ∑[6^n])` -/
def P7903623483936433388.Spec : Prop :=
  ∀ n, (P7903623483936433388.a n : ℤ) = A005610 (n + 1)

end A005610

/-! ## A005610.P17589291137661300860

`ogf(2/(1-7x+6x^2))`
-/

namespace A005610.P17589291137661300860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2] [1, -7, 6] n

end

end A005610.P17589291137661300860

namespace A005610

/-- `ogf(2/(1-7x+6x^2))` -/
def P17589291137661300860.Spec : Prop :=
  ∀ n, P17589291137661300860.a n = A005610 (n + 1)

end A005610

/-! ## A005610.P6737379481542939027

`∑[6*a(n-1)]` with `a(0)=2`
-/

namespace A005610.P6737379481542939027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  6 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005610.P6737379481542939027

namespace A005610

/-- `∑[6*a(n-1)]` -/
def P6737379481542939027.Spec : Prop :=
  ∀ n, (P6737379481542939027.a n : ℤ) = A005610 (n + 1)

end A005610

/-! ## A005610.P11031180808130987915

`lcm(12, a(n-1))+2` with `a(0)=2`
-/

namespace A005610.P11031180808130987915
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.lcm 12 (a (n - 1)) + 2

end

end A005610.P11031180808130987915

namespace A005610

/-- `lcm(12, a(n-1))+2` -/
def P11031180808130987915.Spec : Prop :=
  ∀ n, (P11031180808130987915.a n : ℤ) = A005610 (n + 1)

end A005610

/-! ## A005610.P11745688639433995391

`or(2, 6*a(n-1))` with `a(0)=2`
-/

namespace A005610.P11745688639433995391
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.lor 2 (6 * a (n - 1))

end

end A005610.P11745688639433995391

namespace A005610

/-- `or(2, 6*a(n-1))` -/
def P11745688639433995391.Spec : Prop :=
  ∀ n, (P11745688639433995391.a n : ℤ) = A005610 (n + 1)

end A005610

/-! ## A005610.P13571439294285148288

`xor(2, 6*a(n-1))` with `a(0)=2`
-/

namespace A005610.P13571439294285148288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.xor 2 (6 * a (n - 1))

end

end A005610.P13571439294285148288

namespace A005610

/-- `xor(2, 6*a(n-1))` -/
def P13571439294285148288.Spec : Prop :=
  ∀ n, (P13571439294285148288.a n : ℤ) = A005610 (n + 1)

end A005610

/-! ## A005610.P3412400180580348373

`8-6*(1-a(n-1))` with `a(0)=2`
-/

namespace A005610.P3412400180580348373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  8 - 6 * (1 - a (n - 1))

end

end A005610.P3412400180580348373

namespace A005610

/-- `8-6*(1-a(n-1))` -/
def P3412400180580348373.Spec : Prop :=
  ∀ n, P3412400180580348373.a n = A005610 (n + 1)

end A005610

/-! ## A005610.P9374479572373327633

`A233325(n)+1`
-/

namespace A005610.P9374479572373327633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233325 n + 1

end

end A005610.P9374479572373327633

namespace A005610

/-- `A233325(n)+1` -/
def P9374479572373327633.Spec : Prop :=
  ∀ n, P9374479572373327633.a n = A005610 (n + 1)

end A005610

/-! ## A005610.P11590835447227765185

`A005618(n)-2`
-/

namespace A005610.P11590835447227765185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005618 n - 2

end

end A005610.P11590835447227765185

namespace A005610

/-- `A005618(n)-2` -/
def P11590835447227765185.Spec : Prop :=
  ∀ n, P11590835447227765185.a n = A005610 (n + 1)

end A005610

/-! ## A005610.P23214782887376267

`∑[A167747(n+1)]`
-/

namespace A005610.P23214782887376267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005610.P23214782887376267

namespace A005610

/-- `∑[A167747(n+1)]` -/
def P23214782887376267.Spec : Prop :=
  ∀ n, P23214782887376267.a n = A005610 (n + 1)

end A005610

/-! ## A005610.P8964627615764237777

`A152596(n+1)-1`
-/

namespace A005610.P8964627615764237777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152596 (n + 1) - 1

end

end A005610.P8964627615764237777

namespace A005610

/-- `A152596(n+1)-1` -/
def P8964627615764237777.Spec : Prop :=
  ∀ n, P8964627615764237777.a n = A005610 (n + 1)

end A005610

/-! ## A005610.P9619342987432609545

`A026567(2*n)+1`
-/

namespace A005610.P9619342987432609545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026567 (2 * n) + 1

end

end A005610.P9619342987432609545

namespace A005610

/-- `A026567(2*n)+1` -/
def P9619342987432609545.Spec : Prop :=
  ∀ n, P9619342987432609545.a n = A005610 (n + 1)

end A005610

/-! ## A005610.P10264361049521734508

`A329115(2*(n+2))`
-/

namespace A005610.P10264361049521734508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329115 (2 * (n + 2))

end

end A005610.P10264361049521734508

namespace A005610

/-- `A329115(2*(n+2))` -/
def P10264361049521734508.Spec : Prop :=
  ∀ n, P10264361049521734508.a n = A005610 (n + 1)

end A005610

/-! ## A005610.P13245811193818538595

`3*A083066(n)-1`
-/

namespace A005610.P13245811193818538595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A083066 n - 1

end

end A005610.P13245811193818538595

namespace A005610

/-- `3*A083066(n)-1` -/
def P13245811193818538595.Spec : Prop :=
  ∀ n, P13245811193818538595.a n = A005610 (n + 1)

end A005610

/-! ## A005610.P15552709129612692976

`∑[A026549(2*n+1)]`
-/

namespace A005610.P15552709129612692976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026549 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005610.P15552709129612692976

namespace A005610

/-- `∑[A026549(2*n+1)]` -/
def P15552709129612692976.Spec : Prop :=
  ∀ n, P15552709129612692976.a n = A005610 (n + 1)

end A005610

/-! ## A005610.P4644016378127276417

`4*A261399(n+1)-2`
-/

namespace A005610.P4644016378127276417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A261399 (n + 1) - 2

end

end A005610.P4644016378127276417

namespace A005610

/-- `4*A261399(n+1)-2` -/
def P4644016378127276417.Spec : Prop :=
  ∀ n, P4644016378127276417.a n = A005610 (n + 1)

end A005610

/-! ## A005610.P2314816123185829895

`A048331(A016873(n))`
-/

namespace A005610.P2314816123185829895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048331 (A016873 n).toNat

end

end A005610.P2314816123185829895

namespace A005610

/-- `A048331(A016873(n))` -/
def P2314816123185829895.Spec : Prop :=
  ∀ n, P2314816123185829895.a n = A005610 (n + 1)

end A005610

/-! ## A005610.P13725845121794415586

`A016211(n)+A003462(n+1)`
-/

namespace A005610.P13725845121794415586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016211 n + A003462 (n + 1)

end

end A005610.P13725845121794415586

namespace A005610

/-- `A016211(n)+A003462(n+1)` -/
def P13725845121794415586.Spec : Prop :=
  ∀ n, P13725845121794415586.a n = A005610 (n + 1)

end A005610

/-!
# A005612: Number of Boolean functions of n variables that are variously called "unate cascades" or "1-decision list functions" or "read-once threshold functions".

The programs for A005612, there is no canonical definition to state claims against.
-/

/-! ## A005612.P7579276808900966060

`2*A005840(n+1)*2^n`
-/

namespace A005612.P7579276808900966060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005840 (n + 1) * (2 ^ n : ℤ)

end

end A005612.P7579276808900966060

/-! ## A005612.P10490026544170081895

`record[A000079(n+1)*A053525(n)]`
-/

namespace A005612.P10490026544170081895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A053525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005612.P10490026544170081895

/-! ## A005612.P3264611708110670565

`record[A011782(n+2)*A053525(n)]`
-/

namespace A005612.P3264611708110670565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 2) * A053525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005612.P3264611708110670565

/-! ## A005612.P1587970026367000852

`record[2*A000079(n)*A053525(n)]`
-/

namespace A005612.P1587970026367000852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000079 n * A053525 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005612.P1587970026367000852

/-! ## A005612.P14883410233177293448

`A000079(n+1)*A005840(n+1)`
-/

namespace A005612.P14883410233177293448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A005840 (n + 1)

end

end A005612.P14883410233177293448

/-! ## A005612.P1820508479989768483

`record[(A000225(n+1)+1)*A053525(n)]`
-/

namespace A005612.P1820508479989768483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000225 (n + 1) + 1) * A053525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005612.P1820508479989768483

/-!
# A005613: Cascade-realizable Boolean functions of n variables.

The programs for A005613, there is no canonical definition to state claims against.
-/

/-! ## A005613.P4832464525222363291

`A239212(A271469(n)+1)`
-/

namespace A005613.P4832464525222363291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239212 (A271469 n + 1).toNat

end

end A005613.P4832464525222363291

/-!
# A005614: The binary complement of the infinite Fibonacci word A003849. Start with 1, apply 0->1, 1->10, iterate, take limit.

The programs for A005614, the canonical program `A005614.P5927283876123815402` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005614 has offset 0).

The definition of A005614 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005614.P5927283876123815402

`A005206(n+1)-A005206(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005614

/-- `A005206(n+1)-A005206(n)` -/
def P5927283876123815402.Spec : Prop :=
  ∀ n, P5927283876123815402.a n = A005614 n

theorem P5927283876123815402.correct : P5927283876123815402.Spec := by
  intro n
  simp only [A005614]

end A005614

/-! ## A005614.P14138877395688434928

`Δ[floor((n+1)/ϕ)]`
-/

namespace A005614.P14138877395688434928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005614.P14138877395688434928

namespace A005614

/-- `Δ[floor((n+1)/ϕ)]` -/
def P14138877395688434928.Spec : Prop :=
  ∀ n, P14138877395688434928.a n = A005614 n

end A005614

/-! ## A005614.P14285678544562451260

`dr(Δ[ceil((n+1)/ϕ)])`
-/

namespace A005614.P14285678544562451260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.goldenRatio⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n)

end

end A005614.P14285678544562451260

namespace A005614

/-- `dr(Δ[ceil((n+1)/ϕ)])` -/
def P14285678544562451260.Spec : Prop :=
  ∀ n, (P14285678544562451260.a n : ℤ) = A005614 n

end A005614

/-! ## A005614.P11976634473185075134

`3%Δ[floor(ϕ*(n+1))]`
-/

namespace A005614.P11976634473185075134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (f1 (n + 1) - f1 n)

end

end A005614.P11976634473185075134

namespace A005614

/-- `3%Δ[floor(ϕ*(n+1))]` -/
def P11976634473185075134.Spec : Prop :=
  ∀ n, P11976634473185075134.a n = A005614 n

end A005614

/-! ## A005614.P9517129290806536798

`val(Δ[floor(ϕ*(n+1))], 2)`
-/

namespace A005614.P9517129290806536798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A005614.P9517129290806536798

namespace A005614

/-- `val(Δ[floor(ϕ*(n+1))], 2)` -/
def P9517129290806536798.Spec : Prop :=
  ∀ n, (P9517129290806536798.a n : ℤ) = A005614 n

end A005614

/-! ## A005614.P13265054535551725554

`C(Δ[floor(ϕ*(n+1))], 2)`
-/

namespace A005614.P13265054535551725554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat 2

end

end A005614.P13265054535551725554

namespace A005614

/-- `C(Δ[floor(ϕ*(n+1))], 2)` -/
def P13265054535551725554.Spec : Prop :=
  ∀ n, (P13265054535551725554.a n : ℤ) = A005614 n

end A005614

/-! ## A005614.P8578968146855041041

`Δ[floor(ϕ*(n+1))]!-1`
-/

namespace A005614.P8578968146855041041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (f1 (n + 1) - f1 n).toNat : ℤ) - 1

end

end A005614.P8578968146855041041

namespace A005614

/-- `Δ[floor(ϕ*(n+1))]!-1` -/
def P8578968146855041041.Spec : Prop :=
  ∀ n, P8578968146855041041.a n = A005614 n

end A005614

/-! ## A005614.P2727765853498187409

`and(1, Δ[floor((n+1)*ϕ²)])`
-/

namespace A005614.P2727765853498187409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.goldenRatio ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (n + 1) - f1 n)

end

end A005614.P2727765853498187409

namespace A005614

/-- `and(1, Δ[floor((n+1)*ϕ²)])` -/
def P2727765853498187409.Spec : Prop :=
  ∀ n, P2727765853498187409.a n = A005614 n

end A005614

/-! ## A005614.P5661185281426164550

`Δ[n-a(a(n-1))]²` with `a(0)=0`
-/

namespace A005614.P5661185281426164550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) - f1 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A005614.P5661185281426164550

namespace A005614

/-- `Δ[n-a(a(n-1))]²` -/
def P5661185281426164550.Spec : Prop :=
  ∀ n, P5661185281426164550.a n = A005614 n

end A005614

/-! ## A005614.P337737114901253703

`a(Δ[floor(ϕ*(n+1))])` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A005614.P337737114901253703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  a (f1 (n + 1) - f1 n).toNat

end

end A005614.P337737114901253703

namespace A005614

/-- `a(Δ[floor(ϕ*(n+1))])` -/
def P337737114901253703.Spec : Prop :=
  ∀ n, (P337737114901253703.a n : ℤ) = A005614 n

end A005614

/-! ## A005614.P16884616944065273

`1-and(1, Δ[floor(ϕ*(n+1))])`
-/

namespace A005614.P16884616944065273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 1 (f1 (n + 1) - f1 n)

end

end A005614.P16884616944065273

namespace A005614

/-- `1-and(1, Δ[floor(ϕ*(n+1))])` -/
def P16884616944065273.Spec : Prop :=
  ∀ n, P16884616944065273.a n = A005614 n

end A005614

/-! ## A005614.P2517319286002098422

`gcd(2*n, Δ[floor(ϕ*(n+1))])-1`
-/

namespace A005614.P2517319286002098422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (2 * n : ℤ) (f1 (n + 1) - f1 n) : ℤ) - 1

end

end A005614.P2517319286002098422

namespace A005614

/-- `gcd(2*n, Δ[floor(ϕ*(n+1))])-1` -/
def P2517319286002098422.Spec : Prop :=
  ∀ n, P2517319286002098422.a n = A005614 n

end A005614

/-! ## A005614.P16138806862992184096

`log2(A014675(n))`
-/

namespace A005614.P16138806862992184096
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A014675 n : ℝ)

end

end A005614.P16138806862992184096

namespace A005614

/-- `log2(A014675(n))` -/
def P16138806862992184096.Spec : Prop :=
  ∀ n, P16138806862992184096.a n = (A005614 n : ℝ)

end A005614

/-! ## A005614.P14652009718720711600

`∑[A014677(n)]`
-/

namespace A005614.P14652009718720711600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005614.P14652009718720711600

namespace A005614

/-- `∑[A014677(n)]` -/
def P14652009718720711600.Spec : Prop :=
  ∀ n, P14652009718720711600.a n = A005614 n

end A005614

/-! ## A005614.P1824836054633739786

`char[A380960(n)]`
-/

namespace A005614.P1824836054633739786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380960 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A005614.P1824836054633739786

namespace A005614

/-- `char[A380960(n)]` -/
def P1824836054633739786.Spec : Prop :=
  ∀ n, (P1824836054633739786.a n : ℤ) = A005614 n

end A005614

/-! ## A005614.P12419654481167898223

`A096270(n+1)`
-/

namespace A005614.P12419654481167898223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (n + 1)

end

end A005614.P12419654481167898223

namespace A005614

/-- `A096270(n+1)` -/
def P12419654481167898223.Spec : Prop :=
  ∀ n, P12419654481167898223.a n = A005614 n

end A005614

/-!
# A005615: Number of non-degenerate fanout-free Boolean functions of n variables using And, Or, Not and Majority gates.

The programs for A005615, there is no canonical definition to state claims against.
-/

/-! ## A005615.P12880738729053870909

`A005743(A028310(n))-A005742(A028310(n))`
-/

namespace A005615.P12880738729053870909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005743 (A028310 n).toNat - A005742 (A028310 n).toNat

end

end A005615.P12880738729053870909

/-!
# A005616: Number of non-degenerate disjunctively-realizable functions of n variables.

The programs for A005616, there is no canonical definition to state claims against.
-/

/-! ## A005616.P1225987557490452357

`A005739(n)-A005738(n)`
-/

namespace A005616.P1225987557490452357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005739 n - A005738 n

end

end A005616.P1225987557490452357

/-!
# A005617: Number of non-degenerate fanout-free Boolean functions of n variables using And, Or, Xor, Not, and Majority gates.

The programs for A005617, there is no canonical definition to state claims against.
-/

/-! ## A005617.P18253368940550453654

`lcm(2, A326837(n^n))`
-/

namespace A005617.P18253368940550453654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A326837 (n ^ n))

end

end A005617.P18253368940550453654

/-!
# A005618: a(n) = 6*a(n-1) - 8, with a(0) = 4.

The programs for A005618, the canonical program `A005618.P543095689441702278` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005618 has offset 0).

The definition of A005618 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-8` (program `A005618.P543095689441702278`, by `A005618.P543095689441702278.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005618.P543095689441702278

`6*a(n-1)-8` with `a(0)=4`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005618

/-- `6*a(n-1)-8` -/
def P543095689441702278.Spec : Prop :=
  ∀ n, P543095689441702278.a n = A005618 n

theorem P543095689441702278.correct : P543095689441702278.Spec := by
  intro n
  simp only [A005618]

end A005618

/-! ## A005618.P2543078958105391768

`4*A261399(n+1)`
-/

namespace A005618.P2543078958105391768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A261399 (n + 1)

end

end A005618.P2543078958105391768

namespace A005618

/-- `4*A261399(n+1)` -/
def P2543078958105391768.Spec : Prop :=
  ∀ n, P2543078958105391768.a n = A005618 n

end A005618

/-! ## A005618.P7286120309979690408

`(12*6^n+8)/5`
-/

namespace A005618.P7286120309979690408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (12 * 6 ^ n + 8 : ℚ) / 5

end

end A005618.P7286120309979690408

namespace A005618

/-- `(12*6^n+8)/5` -/
def P7286120309979690408.Spec : Prop :=
  ∀ n, P7286120309979690408.a n = (A005618 n : ℚ)

theorem P7286120309979690408.correct : P7286120309979690408.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A005618, Nat.add_sub_cancel, A005618.P7286120309979690408.a, A005618.P543095689441702278.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A005618, Nat.add_sub_cancel, A005618.P7286120309979690408.a, A005618.P543095689441702278.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A005618

/-! ## A005618.P5177614200964724619

`ogf((4-12x)/(1-7x+6x^2))`
-/

namespace A005618.P5177614200964724619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -12] [1, -7, 6] n

end

end A005618.P5177614200964724619

namespace A005618

/-- `ogf((4-12x)/(1-7x+6x^2))` -/
def P5177614200964724619.Spec : Prop :=
  ∀ n, P5177614200964724619.a n = A005618 n

end A005618

/-! ## A005618.P10565661634287073427

`lcm(2, ∑[6^n])+2`
-/

namespace A005618.P10565661634287073427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j) + 2

end

end A005618.P10565661634287073427

namespace A005618

/-- `lcm(2, ∑[6^n])+2` -/
def P10565661634287073427.Spec : Prop :=
  ∀ n, (P10565661634287073427.a n : ℤ) = A005618 n

end A005618

/-! ## A005618.P6543646992320249036

`∑[lcm(4, 2*6^n)]`
-/

namespace A005618.P6543646992320249036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (2 * 6 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005618.P6543646992320249036

namespace A005618

/-- `∑[lcm(4, 2*6^n)]` -/
def P6543646992320249036.Spec : Prop :=
  ∀ n, (P6543646992320249036.a n : ℤ) = A005618 n

end A005618

/-! ## A005618.P14225116175753597910

`floor(a(n-1)+a(n-1)-2)+a(n-1)/(1/2)²-6` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A005618.P14225116175753597910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  (⌊a (n - 1) + (a (n - 1) - 2)⌋ : ℚ) + (a (n - 1) / ((1 : ℚ) / 2) ^ 2 - 6)

end

end A005618.P14225116175753597910

namespace A005618

/-- `floor(a(n-1)+a(n-1)-2)+a(n-1)/(1/2)²-6` -/
def P14225116175753597910.Spec : Prop :=
  ∀ n, P14225116175753597910.a n = (A005618 n : ℚ)

end A005618

/-! ## A005618.P9358888445045615124

`A233325(n)+3`
-/

namespace A005618.P9358888445045615124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233325 n + 3

end

end A005618.P9358888445045615124

namespace A005618

/-- `A233325(n)+3` -/
def P9358888445045615124.Spec : Prop :=
  ∀ n, P9358888445045615124.a n = A005618 n

end A005618

/-! ## A005618.P175304994102395113

`∑[4*A081341(n)]`
-/

namespace A005618.P175304994102395113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A081341 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005618.P175304994102395113

namespace A005618

/-- `∑[4*A081341(n)]` -/
def P175304994102395113.Spec : Prop :=
  ∀ n, P175304994102395113.a n = A005618 n

end A005618

/-! ## A005618.P7439441967980505018

`A152596(n+1)+1`
-/

namespace A005618.P7439441967980505018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152596 (n + 1) + 1

end

end A005618.P7439441967980505018

namespace A005618

/-- `A152596(n+1)+1` -/
def P7439441967980505018.Spec : Prop :=
  ∀ n, P7439441967980505018.a n = A005618 n

end A005618

/-! ## A005618.P4461248452386214838

`A005610(n+1)+2`
-/

namespace A005618.P4461248452386214838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005610 (n + 1) + 2

end

end A005618.P4461248452386214838

namespace A005618

/-- `A005610(n+1)+2` -/
def P4461248452386214838.Spec : Prop :=
  ∀ n, P4461248452386214838.a n = A005618 n

end A005618

/-! ## A005618.P5165077798299151666

`2*A047851(n+1)`
-/

namespace A005618.P5165077798299151666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047851 (n + 1)

end

end A005618.P5165077798299151666

namespace A005618

/-- `2*A047851(n+1)` -/
def P5165077798299151666.Spec : Prop :=
  ∀ n, P5165077798299151666.a n = A005618 n

end A005618

/-! ## A005618.P13288882521287424545

`3*A083066(n)+1`
-/

namespace A005618.P13288882521287424545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A083066 n + 1

end

end A005618.P13288882521287424545

namespace A005618

/-- `3*A083066(n)+1` -/
def P13288882521287424545.Spec : Prop :=
  ∀ n, P13288882521287424545.a n = A005618 n

end A005618

/-! ## A005618.P15996563351345951894

`2*(A105281(n)+2)`
-/

namespace A005618.P15996563351345951894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A105281 n + 2)

end

end A005618.P15996563351345951894

namespace A005618

/-- `2*(A105281(n)+2)` -/
def P15996563351345951894.Spec : Prop :=
  ∀ n, P15996563351345951894.a n = A005618 n

end A005618

/-! ## A005618.P7888121512674327238

`A026567(2*n)+3`
-/

namespace A005618.P7888121512674327238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026567 (2 * n) + 3

end

end A005618.P7888121512674327238

namespace A005618

/-- `A026567(2*n)+3` -/
def P7888121512674327238.Spec : Prop :=
  ∀ n, P7888121512674327238.a n = A005618 n

end A005618

/-! ## A005618.P8801628239946625585

`∑[A167747(n+1)]+2`
-/

namespace A005618.P8801628239946625585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A005618.P8801628239946625585

namespace A005618

/-- `∑[A167747(n+1)]+2` -/
def P8801628239946625585.Spec : Prop :=
  ∀ n, P8801628239946625585.a n = A005618 n

end A005618

/-! ## A005618.P17048321074862429174

`A329115(2*(n+2))+2`
-/

namespace A005618.P17048321074862429174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329115 (2 * (n + 2)) + 2

end

end A005618.P17048321074862429174

namespace A005618

/-- `A329115(2*(n+2))+2` -/
def P17048321074862429174.Spec : Prop :=
  ∀ n, P17048321074862429174.a n = A005618 n

end A005618

/-! ## A005618.P15494421321420220395

`∑[A164559(n+1)+1]+2`
-/

namespace A005618.P15494421321420220395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164559 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A005618.P15494421321420220395

namespace A005618

/-- `∑[A164559(n+1)+1]+2` -/
def P15494421321420220395.Spec : Prop :=
  ∀ n, P15494421321420220395.a n = A005618 n

end A005618

/-! ## A005618.P2348974435705945934

`∑[A026549(2*n+1)]+2`
-/

namespace A005618.P2348974435705945934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026549 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A005618.P2348974435705945934

namespace A005618

/-- `∑[A026549(2*n+1)]+2` -/
def P2348974435705945934.Spec : Prop :=
  ∀ n, P2348974435705945934.a n = A005618 n

end A005618

/-! ## A005618.P1231819998486363341

`∑[A164560(2*n+1)]+n+3`
-/

namespace A005618.P1231819998486363341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164560 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 3 : ℤ)

end

end A005618.P1231819998486363341

namespace A005618

/-- `∑[A164560(2*n+1)]+n+3` -/
def P1231819998486363341.Spec : Prop :=
  ∀ n, P1231819998486363341.a n = A005618 n

end A005618

/-!
# A005624: Spiral sieve using Fibonacci numbers.

The programs for A005624, there is no canonical definition to state claims against.
-/

/-! ## A005624.P17080235500780680729

`A002024(A182039(n+1)+A003101(n))`
-/

namespace A005624.P17080235500780680729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A182039 (n + 1) + A003101 n).toNat

end

end A005624.P17080235500780680729

/-!
# A005625: Spiral sieve using Fibonacci numbers.

The programs for A005625, there is no canonical definition to state claims against.
-/

/-! ## A005625.P16732955554318156506

`A343862(A149038(n))+A004525(n+3)`
-/

namespace A005625.P16732955554318156506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343862 (A149038 n).toNat + A004525 (n + 3)

end

end A005625.P16732955554318156506

/-!
# A005627: Number of achiral planted trees with n nodes.

The programs for A005627, there is no canonical definition to state claims against.
-/

/-! ## A005627.P6664786686060715977

`A000625(n)-A005628(n)`
-/

namespace A005627.P6664786686060715977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000625 n - A005628 n

end

end A005627.P6664786686060715977

/-! ## A005627.P12068744382235116867

`A000625(n)-2*A261336(A028310(n))`
-/

namespace A005627.P12068744382235116867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000625 n - 2 * A261336 (A028310 n).toNat

end

end A005627.P12068744382235116867

/-! ## A005627.P4077409738477615521

`A000625(n)-2*A261336(A233583(n+1))`
-/

namespace A005627.P4077409738477615521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000625 n - 2 * A261336 (A233583 (n + 1)).toNat

end

end A005627.P4077409738477615521

/-! ## A005627.P1893436894338280538

`A000625(n)-2*A261336(A123108(2*n))`
-/

namespace A005627.P1893436894338280538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000625 n - 2 * A261336 (A123108 (2 * n)).toNat

end

end A005627.P1893436894338280538

/-! ## A005627.P17379602456734224055

`A000625(n)-2*A261336(A000007(n)+n)`
-/

namespace A005627.P17379602456734224055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000625 n - 2 * A261336 (A000007 n + (n : ℤ)).toNat

end

end A005627.P17379602456734224055

/-! ## A005627.P12080328531799278010

`A000620(n+1)+A000621(n+1)-A005628(n)`
-/

namespace A005627.P12080328531799278010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000620 (n + 1) + (A000621 (n + 1) - A005628 n)

end

end A005627.P12080328531799278010

/-!
# A005628: Number of chiral planted trees with n nodes.

The programs for A005628, there is no canonical definition to state claims against.
-/

/-! ## A005628.P13491001575113315058

`A000625(n)-A005627(n)`
-/

namespace A005628.P13491001575113315058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000625 n - A005627 n

end

end A005628.P13491001575113315058

/-! ## A005628.P4806200059154283654

`2*A261336(A028310(n))`
-/

namespace A005628.P4806200059154283654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A261336 (A028310 n).toNat

end

end A005628.P4806200059154283654

/-! ## A005628.P5306763091410520132

`2*A261336(A233583(n+1))`
-/

namespace A005628.P5306763091410520132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A261336 (A233583 (n + 1)).toNat

end

end A005628.P5306763091410520132

/-! ## A005628.P9378746465898281352

`2*A261336(A123108(2*n))`
-/

namespace A005628.P9378746465898281352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A261336 (A123108 (2 * n)).toNat

end

end A005628.P9378746465898281352

/-! ## A005628.P794438810255943373

`2*A261336(A000007(n)+n)`
-/

namespace A005628.P794438810255943373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A261336 (A000007 n + (n : ℤ)).toNat

end

end A005628.P794438810255943373

/-! ## A005628.P4740539825529919940

`A000620(n+1)+A000621(n+1)-A005627(n)`
-/

namespace A005628.P4740539825529919940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000620 (n + 1) + (A000621 (n + 1) - A005627 n)

end

end A005628.P4740539825529919940

/-! ## A005628.P14268019875822029877

`2*A261336(A000196(A027688(n)))`
-/

namespace A005628.P14268019875822029877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A261336 (A000196 (A027688 n).toNat).toNat

end

end A005628.P14268019875822029877

/-!
# A005629: Number of achiral trees with n nodes.

The programs for A005629, there is no canonical definition to state claims against.
-/

/-! ## A005629.P7479801120657505692

`A000628(n+1)-A005630(n+1)`
-/

namespace A005629.P7479801120657505692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000628 (n + 1) - A005630 (n + 1)

end

end A005629.P7479801120657505692

/-! ## A005629.P2279506833504490843

`A000626(n+1)+A000627(n+1)-A005630(n+1)`
-/

namespace A005629.P2279506833504490843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000626 (n + 1) + (A000627 (n + 1) - A005630 (n + 1))

end

end A005629.P2279506833504490843

/-! ## A005629.P12563704793215054911

`A204164(A148013(n+1))`
-/

namespace A005629.P12563704793215054911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (A148013 (n + 1)).toNat

end

end A005629.P12563704793215054911

/-! ## A005629.P9114763918947102453

`A000196(A000602(n)*A325676(n))`
-/

namespace A005629.P9114763918947102453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000602 n * A325676 n).toNat

end

end A005629.P9114763918947102453

/-! ## A005629.P2425182878557059315

`A083544(A309807(n))`
-/

namespace A005629.P2425182878557059315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083544 (A309807 n).toNat

end

end A005629.P2425182878557059315

/-!
# A005630: Number of chiral trees with n nodes.

The programs for A005630, there is no canonical definition to state claims against.
-/

/-! ## A005630.P10192360466226365105

`A000628(n+1)-A005629(n+1)`
-/

namespace A005630.P10192360466226365105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000628 (n + 1) - A005629 (n + 1)

end

end A005630.P10192360466226365105

/-! ## A005630.P14352379457011949646

`A000628(n+1)-A204164(A148013(n+1))`
-/

namespace A005630.P14352379457011949646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000628 (n + 1) - A204164 (A148013 (n + 1)).toNat

end

end A005630.P14352379457011949646

/-! ## A005630.P16572448960887272648

`and(A017593(n), A092214(A218629(n)))`
-/

namespace A005630.P16572448960887272648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017593 n) (A092214 (A218629 n).toNat)

end

end A005630.P16572448960887272648

/-! ## A005630.P17061305380734593012

`A000628(n+1)-A083544(A309807(n))`
-/

namespace A005630.P17061305380734593012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000628 (n + 1) - A083544 (A309807 n).toNat

end

end A005630.P17061305380734593012

/-! ## A005630.P1970465293810686974

`A368094(A002113(n+1))-A308884(n)`
-/

namespace A005630.P1970465293810686974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368094 (A002113 (n + 1)).toNat - A308884 n

end

end A005630.P1970465293810686974

/-!
# A005631: Bishops on a 2n+1 X 2n+1 board (see Robinson paper for details).

The programs for A005631, the canonical program `A005631.P7171786025637869171` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005631 has offset 0).

The definition of A005631 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005631.P7171786025637869171

`A135401(n+2)/A135401(n)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A005631

/-- `A135401(n+2)/A135401(n)*a(n-1)` -/
def P7171786025637869171.Spec : Prop :=
  ∀ n, P7171786025637869171.a n = (A005631 n : ℚ)

end A005631

/-! ## A005631.P6177729537045429340

`A123071(n+1)/2`
-/

namespace A005631.P6177729537045429340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123071 (n + 1) : ℚ) / 2

end

end A005631.P6177729537045429340

namespace A005631

/-- `A123071(n+1)/2` -/
def P6177729537045429340.Spec : Prop :=
  ∀ n, P6177729537045429340.a n = (A005631 n : ℚ)

end A005631

/-! ## A005631.P10374485791960127523

`Δ[∑[A123071(n)]/2]`
-/

namespace A005631.P10374485791960127523
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123071 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005631.P10374485791960127523

namespace A005631

/-- `Δ[∑[A123071(n)]/2]` -/
def P10374485791960127523.Spec : Prop :=
  ∀ n, P10374485791960127523.a n = (A005631 n : ℚ)

end A005631

/-! ## A005631.P5313146594442234093

`round(A123071(2*n-(n-1))/2)`
-/

namespace A005631.P5313146594442234093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A123071 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat : ℚ) / 2)

end

end A005631.P5313146594442234093

namespace A005631

/-- `round(A123071(2*n-(n-1))/2)` -/
def P5313146594442234093.Spec : Prop :=
  ∀ n, P5313146594442234093.a n = A005631 n

end A005631

/-! ## A005631.P9644355545750548963

`record[ratio[A123071(A100727(n))]]`
-/

namespace A005631.P9644355545750548963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123071 (A100727 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005631.P9644355545750548963

namespace A005631

/-- `record[ratio[A123071(A100727(n))]]` -/
def P9644355545750548963.Spec : Prop :=
  ∀ n, P9644355545750548963.a n = (A005631 n : ℚ)

end A005631

/-!
# A005632: Bishops on a 2n+1 X 2n+1 board (see Robinson paper for details).

The programs for A005632, there is no canonical definition to state claims against.
-/

/-! ## A005632.P10617170360571257131

`∑{p}[A247808((∑[n+1]+1)/2*n!), #]`
-/

namespace A005632.P10617170360571257131
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247808 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℚ) / 2 * (Nat.factorial n : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A005632.P10617170360571257131

/-!
# A005635: Number of ways of placing n non-attacking bishops on an n X n board so that every square is attacked (or occupied).

The programs for A005635, there is no canonical definition to state claims against.
-/

/-! ## A005635.P9955628233986024575

`A065744(21*A202261(n))`
-/

namespace A005635.P9955628233986024575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065744 (21 * A202261 n).toNat

end

end A005635.P9955628233986024575

/-! ## A005635.P13445451476187324804

`A351902(A363199(n+1))*A359762(n)`
-/

namespace A005635.P13445451476187324804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351902 (A363199 (n + 1)).toNat * A359762 n

end

end A005635.P13445451476187324804

/-! ## A005635.P7600496912711322595

`floor(A278056(A125782(n))/A125732(n+1))`
-/

namespace A005635.P7600496912711322595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A278056 (A125782 n).toNat : ℚ) / (A125732 (n + 1) : ℚ)⌋

end

end A005635.P7600496912711322595

/-!
# A005636: Number of n-node connected graphs without points of degree 2.

The programs for A005636, there is no canonical definition to state claims against.
-/

/-! ## A005636.P12663232514953093699

`A008647(or(8, A158691(n)))`
-/

namespace A005636.P12663232514953093699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (Int.lor 8 (A158691 n)).toNat

end

end A005636.P12663232514953093699

/-! ## A005636.P8750076502943315676

`A162516(n)+A133430(A000111(n))`
-/

namespace A005636.P8750076502943315676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162516 n + A133430 (A000111 n).toNat

end

end A005636.P8750076502943315676

/-! ## A005636.P189463333653856389

`A265568(A004110(n))*A265582(n)`
-/

namespace A005636.P189463333653856389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265568 (A004110 n).toNat * A265582 n

end

end A005636.P189463333653856389

/-!
# A005637: Number of n-node graphs without nodes of degree 2.

The programs for A005637, there is no canonical definition to state claims against.
-/

/-! ## A005637.P2480585909860847521

`A157271(n+1)+A105518(A009599(n))`
-/

namespace A005637.P2480585909860847521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (n + 1) + A105518 (A009599 n).toNat

end

end A005637.P2480585909860847521

/-! ## A005637.P15690624466790622285

`A226190(n+1)+A105518(A009599(n))`
-/

namespace A005637.P15690624466790622285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (n + 1) + A105518 (A009599 n).toNat

end

end A005637.P15690624466790622285

/-! ## A005637.P12236512917213746497

`A060715(A322140(n))+A011973(n+3)`
-/

namespace A005637.P12236512917213746497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (A322140 n).toNat + A011973 (n + 3)

end

end A005637.P12236512917213746497

/-!
# A005638: Number of unlabeled trivalent (or cubic) graphs with 2n nodes.

The programs for A005638, there is no canonical definition to state claims against.
-/

/-! ## A005638.P477190592537881461

`A002851(n)+A165653(n)`
-/

namespace A005638.P477190592537881461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002851 n + A165653 n

end

end A005638.P477190592537881461

/-! ## A005638.P6982129226794456351

`A361361(n²)`
-/

namespace A005638.P6982129226794456351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361361 (n ^ 2)

end

end A005638.P6982129226794456351

/-! ## A005638.P3081885799364336465

`A321304(n²)+A165653(n)`
-/

namespace A005638.P3081885799364336465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321304 (n ^ 2) + A165653 n

end

end A005638.P3081885799364336465

/-! ## A005638.P9921774617850400619

`A002851(n)-(A011738(n)-A165653(n))`
-/

namespace A005638.P9921774617850400619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002851 n - (A011738 n - A165653 n)

end

end A005638.P9921774617850400619

/-! ## A005638.P7743601939317919128

`A002851(n)-(A086015(n)-A165653(n))`
-/

namespace A005638.P7743601939317919128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002851 n - (A086015 n - A165653 n)

end

end A005638.P7743601939317919128

/-!
# A005639: Number of self-converse oriented graphs with n nodes.

The programs for A005639, there is no canonical definition to state claims against.
-/

/-! ## A005639.P15041595763246673912

`A176253(A001006(n))+A101220(n)`
-/

namespace A005639.P15041595763246673912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176253 (A001006 n).toNat + A101220 n

end

end A005639.P15041595763246673912

/-! ## A005639.P16075321913460714709

`A325456(A000110(n))+A023037(n)`
-/

namespace A005639.P16075321913460714709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325456 (A000110 n).toNat + A023037 n

end

end A005639.P16075321913460714709

/-!
# A005640: Number of phylogenetic trees with n labels.

The programs for A005640, there is no canonical definition to state claims against.
-/

/-! ## A005640.P835074611331872716

`A224766((n-1)*a(A140356(n)-1))` with `a(0)=1, a(1)=1`
-/

namespace A005640.P835074611331872716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A224766 (((n : ℤ) - 1) * a (A140356 n - 1).toNat).toNat

end

end A005640.P835074611331872716

/-! ## A005640.P143455871290875340

`∏{e}[ceil(2^(n-1)), A224766(#)]`
-/

namespace A005640.P143455871290875340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A224766 (Nat.factorization (f1 n).natAbs p)

end

end A005640.P143455871290875340

/-! ## A005640.P11085749302604590485

`A224766((n-1)*a(A334622(n)-1))` with `a(0)=1, a(1)=1`
-/

namespace A005640.P11085749302604590485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A224766 (((n : ℤ) - 1) * a (A334622 n - 1).toNat).toNat

end

end A005640.P11085749302604590485

/-!
# A005641: Number of 2-diregular digraphs with n nodes.

The programs for A005641, there is no canonical definition to state claims against.
-/

/-! ## A005641.P12252007906142850816

`A338295(A001764(n))+A338279(n+1)`
-/

namespace A005641.P12252007906142850816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338295 (A001764 n).toNat + A338279 (n + 1)

end

end A005641.P12252007906142850816

/-! ## A005641.P6732681663885513711

`A118849(A084230(n+1))-A303434(n+1)`
-/

namespace A005641.P6732681663885513711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118849 (A084230 (n + 1)).toNat - A303434 (n + 1)

end

end A005641.P6732681663885513711

/-!
# A005642: Number of 2-diregular connected digraphs with n nodes.

The programs for A005642, there is no canonical definition to state claims against.
-/

/-! ## A005642.P14241797906801025064

`A230197(11*A322623(n))`
-/

namespace A005642.P14241797906801025064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230197 (11 * A322623 n).toNat

end

end A005642.P14241797906801025064

/-!
# A005645: Number of sensed 3-connected planar maps with n edges.

The programs for A005645, there is no canonical definition to state claims against.
-/

/-! ## A005645.P16617689644518528020

`A348582(A001790(n))-A007094(n)`
-/

namespace A005645.P16617689644518528020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348582 (A001790 n).toNat - A007094 n

end

end A005645.P16617689644518528020

/-! ## A005645.P17895579449099574478

`A075745(A283314(n))+A035263(n+1)`
-/

namespace A005645.P17895579449099574478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075745 (A283314 n).toNat + A035263 (n + 1)

end

end A005645.P17895579449099574478

/-!
# A005646: Number of classifications of n elements.

The programs for A005646, there is no canonical definition to state claims against.
-/

/-! ## A005646.P13445892114651268152

`A171166(a(n-1)+4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=6`
-/

namespace A005646.P13445892114651268152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 3, 6] fun n a =>
  A171166 (a (n - 1) + 4).toNat

end

end A005646.P13445892114651268152

/-! ## A005646.P17242157423293222116

`A359755(a(n-1)+9)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=6`
-/

namespace A005646.P17242157423293222116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 3, 6] fun n a =>
  A359755 (a (n - 1) + 9).toNat

end

end A005646.P17242157423293222116

/-! ## A005646.P9785852989714180718

`A135986(A303742(n))`
-/

namespace A005646.P9785852989714180718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135986 (A303742 n).toNat

end

end A005646.P9785852989714180718

/-!
# A005647: Salié numbers.

The programs for A005647, there is no canonical definition to state claims against.
-/

/-! ## A005647.P16879955757849100045

`A000795(n)/2^n`
-/

namespace A005647.P16879955757849100045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000795 n : ℚ) / (2 ^ n : ℚ)

end

end A005647.P16879955757849100045

/-! ## A005647.P5361254649000398838

`A250259(2*n)`
-/

namespace A005647.P5361254649000398838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250259 (2 * n)

end

end A005647.P5361254649000398838

/-! ## A005647.P6786856949512534636

`or(1, A250259(A005843(n)))`
-/

namespace A005647.P6786856949512534636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A250259 (A005843 n).toNat)

end

end A005647.P6786856949512534636

/-! ## A005647.P442207884136482136

`A003701(2*n)/2^n`
-/

namespace A005647.P442207884136482136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003701 (2 * n) : ℚ) / (2 ^ n : ℚ)

end

end A005647.P442207884136482136

/-! ## A005647.P5416210702530532888

`A250261(eq[5, A104567(n+1)])`
-/

namespace A005647.P5416210702530532888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250261 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005647.P5416210702530532888

/-!
# A005648: Number of 2n-bead black-white reversible necklaces with n black beads.

The programs for A005648, there is no canonical definition to state claims against.
-/

/-! ## A005648.P11201008666838252165

`A115120(n)+A045628(n)`
-/

namespace A005648.P11201008666838252165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115120 n + A045628 n

end

end A005648.P11201008666838252165

/-! ## A005648.P17350203159738318844

`∑{d}[A028310(n), A045628(#)]`
-/

namespace A005648.P17350203159738318844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A045628 d

end

end A005648.P17350203159738318844

/-! ## A005648.P11068528996613427232

`(A128014(n)+A003239(n))/2`
-/

namespace A005648.P11068528996613427232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128014 n + A003239 n : ℚ) / 2

end

end A005648.P11068528996613427232

/-! ## A005648.P6283586443665673373

`A073020(A179865(n+1))`
-/

namespace A005648.P6283586443665673373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073020 (A179865 (n + 1)).toNat

end

end A005648.P6283586443665673373

/-! ## A005648.P914105591509772002

`A052307(∑[4*n])`
-/

namespace A005648.P914105591509772002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005648.P914105591509772002

/-! ## A005648.P3250041616383999796

`A052307((n+1)*(n+n))*A133707(n+1)`
-/

namespace A005648.P3250041616383999796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 ((n + 1) * (n + n)) * A133707 (n + 1)

end

end A005648.P3250041616383999796

/-! ## A005648.P10105986532622468479

`A052307(A046092(n))%A112385(n+1)`
-/

namespace A005648.P10105986532622468479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052307 (A046092 n).toNat) (A112385 (n + 1))

end

end A005648.P10105986532622468479

/-! ## A005648.P8750316472118195910

`A052307(A106232(n+1))%A077413(n)`
-/

namespace A005648.P8750316472118195910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052307 (A106232 (n + 1)).toNat) (A077413 n)

end

end A005648.P8750316472118195910

/-! ## A005648.P7157547287705816234

`or(A000007(n), A052307(A106232(n+1)))`
-/

namespace A005648.P7157547287705816234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A052307 (A106232 (n + 1)).toNat)

end

end A005648.P7157547287705816234

/-! ## A005648.P14985633368746542385

`A052307(A106232(n+1))^cos(A000038(n))`
-/

namespace A005648.P14985633368746542385
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A052307 (A106232 (n + 1)).toNat : ℝ) ^ (Real.cos (A000038 n : ℝ))

end

end A005648.P14985633368746542385

/-!
# A005649: Expansion of e.g.f. (2 - e^x)^(-2).

The programs for A005649, there is no canonical definition to state claims against.
-/

/-! ## A005649.P11181580453644449648

`(A000670(n)+A000670(n+1))/2`
-/

namespace A005649.P11181580453644449648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000670 n + A000670 (n + 1) : ℚ) / 2

end

end A005649.P11181580453644449648

/-! ## A005649.P15447810787223532470

`A327868(2*n)`
-/

namespace A005649.P15447810787223532470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327868 (2 * n)

end

end A005649.P15447810787223532470

/-! ## A005649.P13179970861573756746

`A122101(∑[n+2]-1)`
-/

namespace A005649.P13179970861573756746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122101 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A005649.P13179970861573756746

/-! ## A005649.P13312328974663015628

`A226513(∑[n+2]-1)`
-/

namespace A005649.P13312328974663015628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A005649.P13312328974663015628

/-! ## A005649.P17049317265490036655

`record[A327868(A014681(n))]`
-/

namespace A005649.P17049317265490036655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327868 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005649.P17049317265490036655

/-! ## A005649.P17459897203580296791

`record[A327868(A029578(n))]`
-/

namespace A005649.P17459897203580296791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327868 (A029578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005649.P17459897203580296791

/-! ## A005649.P15755874989772244884

`A073146(A000124(n+1))/2`
-/

namespace A005649.P15755874989772244884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073146 (A000124 (n + 1)).toNat : ℚ) / 2

end

end A005649.P15755874989772244884

/-! ## A005649.P2829817748775607174

`A052841(n+1)+A052841(n)`
-/

namespace A005649.P2829817748775607174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052841 (n + 1) + A052841 n

end

end A005649.P2829817748775607174

/-! ## A005649.P953186715563338042

`A089677(n+1)+A089677(n)`
-/

namespace A005649.P953186715563338042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089677 (n + 1) + A089677 n

end

end A005649.P953186715563338042

/-! ## A005649.P7236231221388388717

`record[A327868(abs(A327898(n+1)))]`
-/

namespace A005649.P7236231221388388717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327868 |A327898 (n + 1)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005649.P7236231221388388717

/-!
# A005650: Number of "magic squares" of order n (see comment line for exact definition).

The programs for A005650, the canonical program `A005650.P7721051186316272428` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005650 has offset 0).

The definition of A005650 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005650.P7721051186316272428

`(2*n²-4*n+1)*a(n-2)-(n-3)*n*a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=7`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005650

/-- `(2*n²-4*n+1)*a(n-2)-(n-3)*n*a(n-4)` -/
def P7721051186316272428.Spec : Prop :=
  ∀ n, P7721051186316272428.a n = A005650 n

theorem P7721051186316272428.correct : P7721051186316272428.Spec := by
  intro n
  simp only [A005650]

end A005650

/-! ## A005650.P9603842567855061323

`A000681(n)*2^floor(n/2)/n!`
-/

namespace A005650.P9603842567855061323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000681 n : ℚ) * (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) / (Nat.factorial n : ℚ)

end

end A005650.P9603842567855061323

namespace A005650

/-- `A000681(n)*2^floor(n/2)/n!` -/
def P9603842567855061323.Spec : Prop :=
  ∀ n, P9603842567855061323.a n = (A005650 n : ℚ)

end A005650

/-! ## A005650.P1759045660831995092

`A084262(n)/∏[A000034(n)]`
-/

namespace A005650.P1759045660831995092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084262 n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A005650.P1759045660831995092

namespace A005650

/-- `A084262(n)/∏[A000034(n)]` -/
def P1759045660831995092.Spec : Prop :=
  ∀ n, P1759045660831995092.a n = (A005650 n : ℚ)

end A005650

/-! ## A005650.P11997293278480386576

`A084262(n)/A016116(n+1)`
-/

namespace A005650.P11997293278480386576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084262 n : ℚ) / (A016116 (n + 1) : ℚ)

end

end A005650.P11997293278480386576

namespace A005650

/-- `A084262(n)/A016116(n+1)` -/
def P11997293278480386576.Spec : Prop :=
  ∀ n, P11997293278480386576.a n = (A005650 n : ℚ)

end A005650

/-! ## A005650.P46951207883987875

`A084262(n)/A000079(A110654(n))`
-/

namespace A005650.P46951207883987875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084262 n : ℚ) / (A000079 (A110654 n).toNat : ℚ)

end

end A005650.P46951207883987875

namespace A005650

/-- `A084262(n)/A000079(A110654(n))` -/
def P46951207883987875.Spec : Prop :=
  ∀ n, P46951207883987875.a n = (A005650 n : ℚ)

end A005650

/-!
# A005651: Sum of multinomial coefficients (n_1+n_2+...)!/(n_1!*n_2!*...) where (n_1, n_2, ...) runs over all integer partitions of n.

The programs for A005651, there is no canonical definition to state claims against.
-/

/-! ## A005651.P5520699450301158801

`A327801(∑[n])`
-/

namespace A005651.P5520699450301158801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327801 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005651.P5520699450301158801

/-! ## A005651.P3359958277098600090

`∑{d}[A028310(n), #*A261600(#)]`
-/

namespace A005651.P3359958277098600090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A261600 d

end

end A005651.P3359958277098600090

/-! ## A005651.P6195148867402374060

`lcm(1-and(2, n), A327801(A000217(n)))`
-/

namespace A005651.P6195148867402374060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A327801 (A000217 n).toNat)

end

end A005651.P6195148867402374060

/-! ## A005651.P13708942936729467150

`or(A000007(n), A327801(A000217(n)))`
-/

namespace A005651.P13708942936729467150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A327801 (A000217 n).toNat)

end

end A005651.P13708942936729467150

/-! ## A005651.P2705185299696083066

`A327801(A000217(n))+A000007(n+1)`
-/

namespace A005651.P2705185299696083066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327801 (A000217 n).toNat + A000007 (n + 1)

end

end A005651.P2705185299696083066

/-! ## A005651.P3124285446699445433

`or(A000007(n), A327801(A179865(n+1)))`
-/

namespace A005651.P3124285446699445433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A327801 (A179865 (n + 1)).toNat)

end

end A005651.P3124285446699445433

/-! ## A005651.P12088754531023631654

`A327801(A179865(n+1))+A000007(n+1)`
-/

namespace A005651.P12088754531023631654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327801 (A179865 (n + 1)).toNat + A000007 (n + 1)

end

end A005651.P12088754531023631654

/-! ## A005651.P4857672287530282497

`A309973(∑[n]+n)`
-/

namespace A005651.P4857672287530282497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309973 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A005651.P4857672287530282497

/-! ## A005651.P1033789544284117713

`A327827(n+1)/(n+1)`
-/

namespace A005651.P1033789544284117713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327827 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A005651.P1033789544284117713

/-! ## A005651.P15204042676102232523

`A327828(n+2)/∑[n+1]`
-/

namespace A005651.P15204042676102232523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327828 (n + 2) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A005651.P15204042676102232523

/-!
# A005652: Lexicographically least increasing sequence, starting with 1, such that the sum of 2 distinct terms is never a Fibonacci number.

The programs for A005652, the canonical program `A005652.P16284320388527205357` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005652 has offset 1).

The definition of A005652 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005652.P10107432004663524147

`lt[0, floor(2*ϕ*n)%2]`
-/

namespace A005652.P10107432004663524147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * (Real.goldenRatio * (n : ℝ))⌋ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A005652.P10107432004663524147

namespace A005652

/-- `lt[0, floor(2*ϕ*n)%2]` -/
def P10107432004663524147.Spec : Prop :=
  ∀ n, (P10107432004663524147.a n : ℤ) = A005652 (n + 1)

end A005652

/-! ## A005652.P1673009250111399091

`eq[1, gcd(2, floor(2*ϕ*n))]`
-/

namespace A005652.P1673009250111399091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 ⌊2 * (Real.goldenRatio * (n : ℝ))⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A005652.P1673009250111399091

namespace A005652

/-- `eq[1, gcd(2, floor(2*ϕ*n))]` -/
def P1673009250111399091.Spec : Prop :=
  ∀ n, (P1673009250111399091.a n : ℤ) = A005652 (n + 1)

end A005652

/-! ## A005652.P6727050970817010311

`lt[0, and(1, floor(2*ϕ*n))]`
-/

namespace A005652.P6727050970817010311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊2 * (Real.goldenRatio * (n : ℝ))⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A005652.P6727050970817010311

namespace A005652

/-- `lt[0, and(1, floor(2*ϕ*n))]` -/
def P6727050970817010311.Spec : Prop :=
  ∀ n, (P6727050970817010311.a n : ℤ) = A005652 (n + 1)

end A005652

/-! ## A005652.P11707780179325113634

`eq[1, and(1, floor(2*ϕ*n))]`
-/

namespace A005652.P11707780179325113634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊2 * (Real.goldenRatio * (n : ℝ))⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A005652.P11707780179325113634

namespace A005652

/-- `eq[1, and(1, floor(2*ϕ*n))]` -/
def P11707780179325113634.Spec : Prop :=
  ∀ n, (P11707780179325113634.a n : ℤ) = A005652 (n + 1)

end A005652

/-! ## A005652.P9695278113038426582

`record[C(n, (floor(n*ϕ²)-round(n*ϕ²))²)]`
-/

namespace A005652.P9695278113038426582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n ((⌊(n : ℝ) * Real.goldenRatio ^ 2⌋ - SequenceMachineLib.roundAway ((n : ℝ) * Real.goldenRatio ^ 2)) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005652.P9695278113038426582

namespace A005652

/-- `record[C(n, (floor(n*ϕ²)-round(n*ϕ²))²)]` -/
def P9695278113038426582.Spec : Prop :=
  ∀ n, (P9695278113038426582.a n : ℤ) = A005652 (n + 1)

end A005652

/-! ## A005652.P8305033969181610252

`A279934(n+1)-1`
-/

namespace A005652.P8305033969181610252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279934 (n + 1) - 1

end

end A005652.P8305033969181610252

namespace A005652

/-- `A279934(n+1)-1` -/
def P8305033969181610252.Spec : Prop :=
  ∀ n, P8305033969181610252.a n = A005652 (n + 1)

end A005652

/-! ## A005652.P13856382275617107013

`A191331(n+1)/2`
-/

namespace A005652.P13856382275617107013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191331 (n + 1) : ℚ) / 2

end

end A005652.P13856382275617107013

namespace A005652

/-- `A191331(n+1)/2` -/
def P13856382275617107013.Spec : Prop :=
  ∀ n, P13856382275617107013.a n = (A005652 (n + 1) : ℚ)

end A005652

/-! ## A005652.P16284320388527205357

`eq[2, A191329(2*(n+1))]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A005652

/-- `eq[2, A191329(2*(n+1))]+1` -/
def P16284320388527205357.Spec : Prop :=
  ∀ n, (P16284320388527205357.a n : ℤ) = A005652 (n + 1)

theorem P16284320388527205357.correct : P16284320388527205357.Spec := by
  intro n
  simp only [A005652, Nat.add_sub_cancel]

end A005652

/-! ## A005652.P17466937886716853425

`∪[A190443(n+1), A026352(n)]`
-/

namespace A005652.P17466937886716853425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005652.P17466937886716853425

namespace A005652

/-- `∪[A190443(n+1), A026352(n)]` -/
def P17466937886716853425.Spec : Prop :=
  ∀ n, (P17466937886716853425.a n : ℤ) = A005652 (n + 1)

end A005652

/-! ## A005652.P2103698712368208231

`A387351(n+1)-A387350(n+1)`
-/

namespace A005652.P2103698712368208231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387351 (n + 1) - A387350 (n + 1)

end

end A005652.P2103698712368208231

namespace A005652

/-- `A387351(n+1)-A387350(n+1)` -/
def P2103698712368208231.Spec : Prop :=
  ∀ n, P2103698712368208231.a n = A005652 (n + 1)

end A005652

/-! ## A005652.P10451069206171856010

`∪[A003234(n+1), A190443(n+1)]`
-/

namespace A005652.P10451069206171856010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005652.P10451069206171856010

namespace A005652

/-- `∪[A003234(n+1), A190443(n+1)]` -/
def P10451069206171856010.Spec : Prop :=
  ∀ n, (P10451069206171856010.a n : ℤ) = A005652 (n + 1)

end A005652

/-! ## A005652.P12438238822579582353

`∪[A140400(n+1), A190443(n+1)]`
-/

namespace A005652.P12438238822579582353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005652.P12438238822579582353

namespace A005652

/-- `∪[A140400(n+1), A190443(n+1)]` -/
def P12438238822579582353.Spec : Prop :=
  ∀ n, (P12438238822579582353.a n : ℤ) = A005652 (n + 1)

end A005652

/-! ## A005652.P14527506340234016499

`∪[A187952(n+1), A190443(n+1)]`
-/

namespace A005652.P14527506340234016499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005652.P14527506340234016499

namespace A005652

/-- `∪[A187952(n+1), A190443(n+1)]` -/
def P14527506340234016499.Spec : Prop :=
  ∀ n, (P14527506340234016499.a n : ℤ) = A005652 (n + 1)

end A005652

/-! ## A005652.P13271054935346601303

`∪[A188018(n+1), A190443(n+1)]`
-/

namespace A005652.P13271054935346601303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005652.P13271054935346601303

namespace A005652

/-- `∪[A188018(n+1), A190443(n+1)]` -/
def P13271054935346601303.Spec : Prop :=
  ∀ n, (P13271054935346601303.a n : ℤ) = A005652 (n + 1)

end A005652

/-! ## A005652.P7122479827782914756

`∪[A188028(n+1), A190443(n+1)]`
-/

namespace A005652.P7122479827782914756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005652.P7122479827782914756

namespace A005652

/-- `∪[A188028(n+1), A190443(n+1)]` -/
def P7122479827782914756.Spec : Prop :=
  ∀ n, (P7122479827782914756.a n : ℤ) = A005652 (n + 1)

end A005652

/-! ## A005652.P5015461241830203246

`∪[A188473(n+1), A190443(n+1)]`
-/

namespace A005652.P5015461241830203246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005652.P5015461241830203246

namespace A005652

/-- `∪[A188473(n+1), A190443(n+1)]` -/
def P5015461241830203246.Spec : Prop :=
  ∀ n, (P5015461241830203246.a n : ℤ) = A005652 (n + 1)

end A005652

/-! ## A005652.P8931417604022605858

`∪[A190251(n+1), A190443(n+1)]`
-/

namespace A005652.P8931417604022605858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005652.P8931417604022605858

namespace A005652

/-- `∪[A190251(n+1), A190443(n+1)]` -/
def P8931417604022605858.Spec : Prop :=
  ∀ n, (P8931417604022605858.a n : ℤ) = A005652 (n + 1)

end A005652

/-! ## A005652.P6205963731011725957

`∪[A190430(n+1), A190443(n+1)]`
-/

namespace A005652.P6205963731011725957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005652.P6205963731011725957

namespace A005652

/-- `∪[A190430(n+1), A190443(n+1)]` -/
def P6205963731011725957.Spec : Prop :=
  ∀ n, (P6205963731011725957.a n : ℤ) = A005652 (n + 1)

end A005652

/-! ## A005652.P15115316537945575017

`comp[A005653(n+1)-1]+1`
-/

namespace A005652.P15115316537945575017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005653 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A005652.P15115316537945575017

namespace A005652

/-- `comp[A005653(n+1)-1]+1` -/
def P15115316537945575017.Spec : Prop :=
  ∀ n, (P15115316537945575017.a n : ℤ) = A005652 (n + 1)

end A005652

/-! ## A005652.P16182374820760910445

`eq[1, A078588(n)]`
-/

namespace A005652.P16182374820760910445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A005652.P16182374820760910445

namespace A005652

/-- `eq[1, A078588(n)]` -/
def P16182374820760910445.Spec : Prop :=
  ∀ n, (P16182374820760910445.a n : ℤ) = A005652 (n + 1)

end A005652

/-!
# A005653: Lexicographically least increasing sequence, starting with 2, such that the sum of two distinct terms of the sequence is never a Fibonacci number.

The programs for A005653, the canonical program `A005653.P6178401833394735769` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005653 has offset 1).

The definition of A005653 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005653.P6178401833394735769

`eq[1, gcd(2, floor(2*n/ϕ²))]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005653

/-- `eq[1, gcd(2, floor(2*n/ϕ²))]` -/
def P6178401833394735769.Spec : Prop :=
  ∀ n, (P6178401833394735769.a n : ℤ) = A005653 (n + 1)

theorem P6178401833394735769.correct : P6178401833394735769.Spec := by
  intro n
  simp only [A005653, Nat.add_sub_cancel]

end A005653

/-! ## A005653.P3568229344026149692

`eq[1, and(1, floor(2*n/ϕ²))]`
-/

namespace A005653.P3568229344026149692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊2 * ((n : ℝ) / Real.goldenRatio ^ 2)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A005653.P3568229344026149692

namespace A005653

/-- `eq[1, and(1, floor(2*n/ϕ²))]` -/
def P3568229344026149692.Spec : Prop :=
  ∀ n, (P3568229344026149692.a n : ℤ) = A005653 (n + 1)

end A005653

/-! ## A005653.P13587397617381482390

`comp[n*floor(2*ϕ*n)%2]`
-/

namespace A005653.P13587397617381482390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod ⌊2 * (Real.goldenRatio * (n : ℝ))⌋ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A005653.P13587397617381482390

namespace A005653

/-- `comp[n*floor(2*ϕ*n)%2]` -/
def P13587397617381482390.Spec : Prop :=
  ∀ n, (P13587397617381482390.a n : ℤ) = A005653 (n + 1)

end A005653

/-! ## A005653.P1149781223295520594

`comp[n*and(1, floor(2*ϕ*n))]`
-/

namespace A005653.P1149781223295520594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land 1 ⌊2 * (Real.goldenRatio * (n : ℝ))⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A005653.P1149781223295520594

namespace A005653

/-- `comp[n*and(1, floor(2*ϕ*n))]` -/
def P1149781223295520594.Spec : Prop :=
  ∀ n, (P1149781223295520594.a n : ℤ) = A005653 (n + 1)

end A005653

/-! ## A005653.P17893104125800123718

`round(∩[floor(ϕ*(n+1)), round(ϕ*n)]/ϕ)`
-/

namespace A005653.P17893104125800123718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ) / Real.goldenRatio)

end

end A005653.P17893104125800123718

namespace A005653

/-- `round(∩[floor(ϕ*(n+1)), round(ϕ*n)]/ϕ)` -/
def P17893104125800123718.Spec : Prop :=
  ∀ n, P17893104125800123718.a n = A005653 (n + 1)

end A005653

/-! ## A005653.P68664321084936579

`A191330(n+1)/2`
-/

namespace A005653.P68664321084936579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191330 (n + 1) : ℚ) / 2

end

end A005653.P68664321084936579

namespace A005653

/-- `A191330(n+1)/2` -/
def P68664321084936579.Spec : Prop :=
  ∀ n, P68664321084936579.a n = (A005653 (n + 1) : ℚ)

end A005653

/-! ## A005653.P6962333899286199743

`round(A190430(n+1)/ϕ)`
-/

namespace A005653.P6962333899286199743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A190430 (n + 1) : ℝ) / Real.goldenRatio)

end

end A005653.P6962333899286199743

namespace A005653

/-- `round(A190430(n+1)/ϕ)` -/
def P6962333899286199743.Spec : Prop :=
  ∀ n, P6962333899286199743.a n = A005653 (n + 1)

end A005653

/-! ## A005653.P7958763316111951065

`comp[A005652(n+1)-1]+1`
-/

namespace A005653.P7958763316111951065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005652 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A005653.P7958763316111951065

namespace A005653

/-- `comp[A005652(n+1)-1]+1` -/
def P7958763316111951065.Spec : Prop :=
  ∀ n, (P7958763316111951065.a n : ℤ) = A005653 (n + 1)

end A005653

/-! ## A005653.P1262627102063948018

`∪[A188468(n+1), A035511(n)]`
-/

namespace A005653.P1262627102063948018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035511 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005653.P1262627102063948018

namespace A005653

/-- `∪[A188468(n+1), A035511(n)]` -/
def P1262627102063948018.Spec : Prop :=
  ∀ n, (P1262627102063948018.a n : ℤ) = A005653 (n + 1)

end A005653

/-! ## A005653.P14598946445869623255

`A190428(n+1)-A190430(n+1)`
-/

namespace A005653.P14598946445869623255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190428 (n + 1) - A190430 (n + 1)

end

end A005653.P14598946445869623255

namespace A005653

/-- `A190428(n+1)-A190430(n+1)` -/
def P14598946445869623255.Spec : Prop :=
  ∀ n, P14598946445869623255.a n = A005653 (n + 1)

end A005653

/-! ## A005653.P9384367133885122833

`∪[A001950(n+1), A190442(n+1)]`
-/

namespace A005653.P9384367133885122833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005653.P9384367133885122833

namespace A005653

/-- `∪[A001950(n+1), A190442(n+1)]` -/
def P9384367133885122833.Spec : Prop :=
  ∀ n, (P9384367133885122833.a n : ℤ) = A005653 (n + 1)

end A005653

/-! ## A005653.P4647695399299313933

`∪[A140398(n+1), A190442(n+1)]`
-/

namespace A005653.P4647695399299313933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005653.P4647695399299313933

namespace A005653

/-- `∪[A140398(n+1), A190442(n+1)]` -/
def P4647695399299313933.Spec : Prop :=
  ∀ n, (P4647695399299313933.a n : ℤ) = A005653 (n + 1)

end A005653

/-! ## A005653.P7849296320845463617

`∪[A187949(n+1), A190442(n+1)]`
-/

namespace A005653.P7849296320845463617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005653.P7849296320845463617

namespace A005653

/-- `∪[A187949(n+1), A190442(n+1)]` -/
def P7849296320845463617.Spec : Prop :=
  ∀ n, (P7849296320845463617.a n : ℤ) = A005653 (n + 1)

end A005653

/-! ## A005653.P15738064909455634949

`∪[A188016(n+1), A190442(n+1)]`
-/

namespace A005653.P15738064909455634949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188016 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005653.P15738064909455634949

namespace A005653

/-- `∪[A188016(n+1), A190442(n+1)]` -/
def P15738064909455634949.Spec : Prop :=
  ∀ n, (P15738064909455634949.a n : ℤ) = A005653 (n + 1)

end A005653

/-! ## A005653.P15985930699733781852

`∪[A188025(n+1), A190442(n+1)]`
-/

namespace A005653.P15985930699733781852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005653.P15985930699733781852

namespace A005653

/-- `∪[A188025(n+1), A190442(n+1)]` -/
def P15985930699733781852.Spec : Prop :=
  ∀ n, (P15985930699733781852.a n : ℤ) = A005653 (n + 1)

end A005653

/-! ## A005653.P1078454959154173117

`∪[A188036(n+1), A190442(n+1)]`
-/

namespace A005653.P1078454959154173117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005653.P1078454959154173117

namespace A005653

/-- `∪[A188036(n+1), A190442(n+1)]` -/
def P1078454959154173117.Spec : Prop :=
  ∀ n, (P1078454959154173117.a n : ℤ) = A005653 (n + 1)

end A005653

/-! ## A005653.P330562184214716927

`∪[A188468(n+1), A190442(n+1)]`
-/

namespace A005653.P330562184214716927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005653.P330562184214716927

namespace A005653

/-- `∪[A188468(n+1), A190442(n+1)]` -/
def P330562184214716927.Spec : Prop :=
  ∀ n, (P330562184214716927.a n : ℤ) = A005653 (n + 1)

end A005653

/-! ## A005653.P3637337023103218487

`∪[A190249(n+1), A190442(n+1)]`
-/

namespace A005653.P3637337023103218487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005653.P3637337023103218487

namespace A005653

/-- `∪[A190249(n+1), A190442(n+1)]` -/
def P3637337023103218487.Spec : Prop :=
  ∀ n, (P3637337023103218487.a n : ℤ) = A005653 (n + 1)

end A005653

/-! ## A005653.P5562844748672299748

`∪[A190437(n+1), A190442(n+1)]`
-/

namespace A005653.P5562844748672299748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005653.P5562844748672299748

namespace A005653

/-- `∪[A190437(n+1), A190442(n+1)]` -/
def P5562844748672299748.Spec : Prop :=
  ∀ n, (P5562844748672299748.a n : ℤ) = A005653 (n + 1)

end A005653

/-! ## A005653.P2982328154043919253

`∪[A190442(n+1), A387350(n+1)]`
-/

namespace A005653.P2982328154043919253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005653.P2982328154043919253

namespace A005653

/-- `∪[A190442(n+1), A387350(n+1)]` -/
def P2982328154043919253.Spec : Prop :=
  ∀ n, (P2982328154043919253.a n : ℤ) = A005653 (n + 1)

end A005653

/-!
# A005654: Number of bracelets (turn over necklaces) with n red, 1 pink and n-1 blue beads; also reversible strings with n red and n-1 blue beads; also next-to-central column in Losanitsch's triangle A034851.

The programs for A005654, the canonical program `A005654.P13503926626580031579` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005654 has offset 1).

The definition of A005654 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005654.P13503926626580031579

`(C(2*(n+1)-1, n+1)+C(n, floor((n+1)/2)))/2`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005654

/-- `(C(2*(n+1)-1, n+1)+C(n, floor((n+1)/2)))/2` -/
def P13503926626580031579.Spec : Prop :=
  ∀ n, P13503926626580031579.a n = (A005654 (n + 1) : ℚ)

end A005654

/-! ## A005654.P4474491837008060267

`A034872(Δ[n²])`
-/

namespace A005654.P4474491837008060267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034872 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A005654.P4474491837008060267

namespace A005654

/-- `A034872(Δ[n²])` -/
def P4474491837008060267.Spec : Prop :=
  ∀ n, P4474491837008060267.a n = A005654 (n + 1)

end A005654

/-! ## A005654.P7893566665579539063

`A007123(n+1)+A001791(n)`
-/

namespace A005654.P7893566665579539063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007123 (n + 1) + A001791 n

end

end A005654.P7893566665579539063

namespace A005654

/-- `A007123(n+1)+A001791(n)` -/
def P7893566665579539063.Spec : Prop :=
  ∀ n, P7893566665579539063.a n = A005654 (n + 1)

end A005654

/-! ## A005654.P16932747676260429413

`A045723(n+1)-A058622(n)`
-/

namespace A005654.P16932747676260429413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045723 (n + 1) - A058622 n

end

end A005654.P16932747676260429413

namespace A005654

/-- `A045723(n+1)-A058622(n)` -/
def P16932747676260429413.Spec : Prop :=
  ∀ n, P16932747676260429413.a n = A005654 (n + 1)

end A005654

/-! ## A005654.P14498273151352260128

`A116406(n+1)+A042971(n+1)`
-/

namespace A005654.P14498273151352260128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116406 (n + 1) + A042971 (n + 1)

end

end A005654.P14498273151352260128

namespace A005654

/-- `A116406(n+1)+A042971(n+1)` -/
def P14498273151352260128.Spec : Prop :=
  ∀ n, P14498273151352260128.a n = A005654 (n + 1)

end A005654

/-! ## A005654.P13356829048884811621

`A037952(2*n)+A007123(n+1)`
-/

namespace A005654.P13356829048884811621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (2 * n) + A007123 (n + 1)

end

end A005654.P13356829048884811621

namespace A005654

/-- `A037952(2*n)+A007123(n+1)` -/
def P13356829048884811621.Spec : Prop :=
  ∀ n, P13356829048884811621.a n = A005654 (n + 1)

end A005654

/-! ## A005654.P2907056932983245319

`A007123(n+1)+n*A000108(n)`
-/

namespace A005654.P2907056932983245319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007123 (n + 1) + (n : ℤ) * A000108 n

end

end A005654.P2907056932983245319

namespace A005654

/-- `A007123(n+1)+n*A000108(n)` -/
def P2907056932983245319.Spec : Prop :=
  ∀ n, P2907056932983245319.a n = A005654 (n + 1)

end A005654

/-! ## A005654.P11049703617955251178

`A045723(n+1)+A027306(n)-A011782(n+1)`
-/

namespace A005654.P11049703617955251178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045723 (n + 1) + (A027306 n - A011782 (n + 1))

end

end A005654.P11049703617955251178

namespace A005654

/-- `A045723(n+1)+A027306(n)-A011782(n+1)` -/
def P11049703617955251178.Spec : Prop :=
  ∀ n, P11049703617955251178.a n = A005654 (n + 1)

end A005654

/-! ## A005654.P17321022286163291202

`A042971(n+1)+A248574(n+1)-A011782(n+1)`
-/

namespace A005654.P17321022286163291202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042971 (n + 1) + (A248574 (n + 1) - A011782 (n + 1))

end

end A005654.P17321022286163291202

namespace A005654

/-- `A042971(n+1)+A248574(n+1)-A011782(n+1)` -/
def P17321022286163291202.Spec : Prop :=
  ∀ n, P17321022286163291202.a n = A005654 (n + 1)

end A005654

/-! ## A005654.P2921194728359793943

`(A001700(n)+A001405(n))/2`
-/

namespace A005654.P2921194728359793943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001700 n + A001405 n : ℚ) / 2

end

end A005654.P2921194728359793943

namespace A005654

/-- `(A001700(n)+A001405(n))/2` -/
def P2921194728359793943.Spec : Prop :=
  ∀ n, P2921194728359793943.a n = (A005654 (n + 1) : ℚ)

end A005654

/-! ## A005654.P5890146160730342043

`(A037952(2*n+1)+A001405(n))/2`
-/

namespace A005654.P5890146160730342043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037952 (2 * n + 1) + A001405 n : ℚ) / 2

end

end A005654.P5890146160730342043

namespace A005654

/-- `(A037952(2*n+1)+A001405(n))/2` -/
def P5890146160730342043.Spec : Prop :=
  ∀ n, P5890146160730342043.a n = (A005654 (n + 1) : ℚ)

end A005654

/-! ## A005654.P12397901280840416299

`(A210736(n+1)+A001405(2*n+1))/2`
-/

namespace A005654.P12397901280840416299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210736 (n + 1) + A001405 (2 * n + 1) : ℚ) / 2

end

end A005654.P12397901280840416299

namespace A005654

/-- `(A210736(n+1)+A001405(2*n+1))/2` -/
def P12397901280840416299.Spec : Prop :=
  ∀ n, P12397901280840416299.a n = (A005654 (n + 1) : ℚ)

end A005654

/-! ## A005654.P15588005665662734943

`(A210736(n+1)+A037952(2*n+1))/2`
-/

namespace A005654.P15588005665662734943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210736 (n + 1) + A037952 (2 * n + 1) : ℚ) / 2

end

end A005654.P15588005665662734943

namespace A005654

/-- `(A210736(n+1)+A037952(2*n+1))/2` -/
def P15588005665662734943.Spec : Prop :=
  ∀ n, P15588005665662734943.a n = (A005654 (n + 1) : ℚ)

end A005654

/-! ## A005654.P1727877082005803520

`(A210736(n+1)+A138364(2*n+1))/2`
-/

namespace A005654.P1727877082005803520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210736 (n + 1) + A138364 (2 * n + 1) : ℚ) / 2

end

end A005654.P1727877082005803520

namespace A005654

/-- `(A210736(n+1)+A138364(2*n+1))/2` -/
def P1727877082005803520.Spec : Prop :=
  ∀ n, P1727877082005803520.a n = (A005654 (n + 1) : ℚ)

end A005654

/-! ## A005654.P15261877800125244483

`(A210736(n+1)-A126930(2*n+1))/2`
-/

namespace A005654.P15261877800125244483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210736 (n + 1) - A126930 (2 * n + 1) : ℚ) / 2

end

end A005654.P15261877800125244483

namespace A005654

/-- `(A210736(n+1)-A126930(2*n+1))/2` -/
def P15261877800125244483.Spec : Prop :=
  ∀ n, P15261877800125244483.a n = (A005654 (n + 1) : ℚ)

end A005654

/-! ## A005654.P5838908165524548212

`2*A034872(2*n+1)-A034872(2*n+1)`
-/

namespace A005654.P5838908165524548212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034872 (2 * n + 1) - A034872 (2 * n + 1)

end

end A005654.P5838908165524548212

namespace A005654

/-- `2*A034872(2*n+1)-A034872(2*n+1)` -/
def P5838908165524548212.Spec : Prop :=
  ∀ n, P5838908165524548212.a n = A005654 (n + 1)

end A005654

/-! ## A005654.P4474096138684685228

`(A001405(n)+A001405(A005408(n)))/2`
-/

namespace A005654.P4474096138684685228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 n + A001405 (A005408 n).toNat : ℚ) / 2

end

end A005654.P4474096138684685228

namespace A005654

/-- `(A001405(n)+A001405(A005408(n)))/2` -/
def P4474096138684685228.Spec : Prop :=
  ∀ n, P4474096138684685228.a n = (A005654 (n + 1) : ℚ)

end A005654

/-! ## A005654.P2155293757867315033

`A103943(n+1)-A008549(n)`
-/

namespace A005654.P2155293757867315033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103943 (n + 1) - A008549 n

end

end A005654.P2155293757867315033

namespace A005654

/-- `A103943(n+1)-A008549(n)` -/
def P2155293757867315033.Spec : Prop :=
  ∀ n, P2155293757867315033.a n = A005654 (n + 1)

end A005654

/-! ## A005654.P15636492918582922317

`(A212303(2*n+1)+A210736(n+1))/2`
-/

namespace A005654.P15636492918582922317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212303 (2 * n + 1) + A210736 (n + 1) : ℚ) / 2

end

end A005654.P15636492918582922317

namespace A005654

/-- `(A212303(2*n+1)+A210736(n+1))/2` -/
def P15636492918582922317.Spec : Prop :=
  ∀ n, P15636492918582922317.a n = (A005654 (n + 1) : ℚ)

end A005654

/-!
# A005655: Number of board configurations in Mu Torere (for one player).

The programs for A005655, there is no canonical definition to state claims against.
-/

/-! ## A005655.P1557542802849514864

`∑[2*A247911(A148833(n))]-A001405(n)`
-/

namespace A005655.P1557542802849514864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A247911 (A148833 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001405 n

end

end A005655.P1557542802849514864

/-! ## A005655.P12477780563193464257

`∑[A079930(a(n-1))+1]` with `a(0)=1`
-/

namespace A005655.P12477780563193464257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A079930 (f1 (n - 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005655.P12477780563193464257

/-!
# A005656: Number of bracelets (turn over necklaces) with n red, 1 pink and n - 3 blue beads; also reversible strings with n red and n-3 blue beads.

The programs for A005656, the canonical program `A005656.P12596922391734523113` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005656 has offset 1).

The definition of A005656 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005656.P12596922391734523113

`Δ[A034872(A004273(n))]%A088218(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A005656

/-- `Δ[A034872(A004273(n))]%A088218(n)` -/
def P12596922391734523113.Spec : Prop :=
  ∀ n, P12596922391734523113.a n = A005656 (n + 1)

theorem P12596922391734523113.correct : P12596922391734523113.Spec := by
  intro n
  simp only [A005656, Nat.add_sub_cancel]

end A005656

/-! ## A005656.P15299168934535830551

`A034851(A058331(n))*A157928(n)`
-/

namespace A005656.P15299168934535830551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 (A058331 n).toNat * A157928 n

end

end A005656.P15299168934535830551

namespace A005656

/-- `A034851(A058331(n))*A157928(n)` -/
def P15299168934535830551.Spec : Prop :=
  ∀ n, P15299168934535830551.a n = A005656 (n + 1)

end A005656

/-! ## A005656.P12250520817311412226

`A034851(A058331(n))%A088218(n)`
-/

namespace A005656.P12250520817311412226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034851 (A058331 n).toNat) (A088218 n)

end

end A005656.P12250520817311412226

namespace A005656

/-- `A034851(A058331(n))%A088218(n)` -/
def P12250520817311412226.Spec : Prop :=
  ∀ n, P12250520817311412226.a n = A005656 (n + 1)

end A005656

/-! ## A005656.P13770591605593371552

`A034851(A058331(n))-A036987(n²)`
-/

namespace A005656.P13770591605593371552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 (A058331 n).toNat - A036987 (n ^ 2)

end

end A005656.P13770591605593371552

namespace A005656

/-- `A034851(A058331(n))-A036987(n²)` -/
def P13770591605593371552.Spec : Prop :=
  ∀ n, P13770591605593371552.a n = A005656 (n + 1)

end A005656

/-! ## A005656.P13754759034735509086

`A004197(A000124(n))*A034851(A058331(n))`
-/

namespace A005656.P13754759034735509086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 (A000124 n).toNat * A034851 (A058331 n).toNat

end

end A005656.P13754759034735509086

namespace A005656

/-- `A004197(A000124(n))*A034851(A058331(n))` -/
def P13754759034735509086.Spec : Prop :=
  ∀ n, P13754759034735509086.a n = A005656 (n + 1)

end A005656

/-!
# A005657: a(n) = floor( tan(n)^2 ).

The programs for A005657, the canonical program `A005657.P15195155401083360350` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005657 has offset 0).

The definition of A005657 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(tan(n)²)` (program `A005657.P15195155401083360350`, by `A005657.P15195155401083360350.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005657.P15195155401083360350

`floor(tan(n)²)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005657

/-- `floor(tan(n)²)` -/
def P15195155401083360350.Spec : Prop :=
  ∀ n, P15195155401083360350.a n = A005657 n

theorem P15195155401083360350.correct : P15195155401083360350.Spec := by
  intro n
  simp only [A005657]

end A005657

/-! ## A005657.P1698633519168783776

`floor(cot(asin(cos(n)))²)`
-/

namespace A005657.P1698633519168783776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (Real.arcsin (Real.cos (n : ℝ))) ^ 2⌋

end

end A005657.P1698633519168783776

namespace A005657

/-- `floor(cot(asin(cos(n)))²)` -/
def P1698633519168783776.Spec : Prop :=
  ∀ n, P1698633519168783776.a n = A005657 n

end A005657

/-! ## A005657.P4408529159130495756

`floor(cot(acos(sin(n)))²)`
-/

namespace A005657.P4408529159130495756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (Real.arccos (Real.sin (n : ℝ))) ^ 2⌋

end

end A005657.P4408529159130495756

namespace A005657

/-- `floor(cot(acos(sin(n)))²)` -/
def P4408529159130495756.Spec : Prop :=
  ∀ n, P4408529159130495756.a n = A005657 n

end A005657

/-! ## A005657.P1778131631004547697

`floor(tan(n)^(4/2))`
-/

namespace A005657.P1778131631004547697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (n : ℝ) ^ ((4 : ℚ) / 2 : ℝ)⌋

end

end A005657.P1778131631004547697

namespace A005657

/-- `floor(tan(n)^(4/2))` -/
def P1778131631004547697.Spec : Prop :=
  ∀ n, P1778131631004547697.a n = A005657 n

theorem P1778131631004547697.correct : P1778131631004547697.Spec := by
  intro n
  simp only [A005657, Nat.add_sub_cancel, A005657.P1778131631004547697.a, A005657.P15195155401083360350.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A005657

/-! ## A005657.P6126515733795398291

`floor((1/cos(n))²)-1`
-/

namespace A005657.P6126515733795398291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(1 / Real.cos (n : ℝ)) ^ 2⌋ - 1

end

end A005657.P6126515733795398291

namespace A005657

/-- `floor((1/cos(n))²)-1` -/
def P6126515733795398291.Spec : Prop :=
  ∀ n, P6126515733795398291.a n = A005657 n

end A005657

/-! ## A005657.P2881216932858010932

`n-ceil(n-tan(n)²)`
-/

namespace A005657.P2881216932858010932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌈(n : ℝ) - Real.tan (n : ℝ) ^ 2⌉

end

end A005657.P2881216932858010932

namespace A005657

/-- `n-ceil(n-tan(n)²)` -/
def P2881216932858010932.Spec : Prop :=
  ∀ n, P2881216932858010932.a n = A005657 n

end A005657

/-! ## A005657.P781455157557460631

`ceil(A057428(n)+tan(n)²)`
-/

namespace A005657.P781455157557460631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057428 n : ℝ) + Real.tan (n : ℝ) ^ 2⌉

end

end A005657.P781455157557460631

namespace A005657

/-- `ceil(A057428(n)+tan(n)²)` -/
def P781455157557460631.Spec : Prop :=
  ∀ n, P781455157557460631.a n = A005657 n

end A005657

/-! ## A005657.P8178232982603370774

`ceil(tan(n)²-A057427(n))`
-/

namespace A005657.P8178232982603370774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (n : ℝ) ^ 2 - (A057427 n : ℝ)⌉

end

end A005657.P8178232982603370774

namespace A005657

/-- `ceil(tan(n)²-A057427(n))` -/
def P8178232982603370774.Spec : Prop :=
  ∀ n, P8178232982603370774.a n = A005657 n

end A005657

/-! ## A005657.P2527856663480457873

`floor(tan(n)*tan(A028310(n)))`
-/

namespace A005657.P2527856663480457873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (n : ℝ) * Real.tan (A028310 n : ℝ)⌋

end

end A005657.P2527856663480457873

namespace A005657

/-- `floor(tan(n)*tan(A028310(n)))` -/
def P2527856663480457873.Spec : Prop :=
  ∀ n, P2527856663480457873.a n = A005657 n

end A005657

/-! ## A005657.P8063559261587097078

`A057428(n)+A005699(n)`
-/

namespace A005657.P8063559261587097078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A005699 n

end

end A005657.P8063559261587097078

namespace A005657

/-- `A057428(n)+A005699(n)` -/
def P8063559261587097078.Spec : Prop :=
  ∀ n, P8063559261587097078.a n = A005657 n

end A005657

/-! ## A005657.P7047548392428821016

`A005699(n)-A057427(n)`
-/

namespace A005657.P7047548392428821016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005699 n - A057427 n

end

end A005657.P7047548392428821016

namespace A005657

/-- `A005699(n)-A057427(n)` -/
def P7047548392428821016.Spec : Prop :=
  ∀ n, P7047548392428821016.a n = A005657 n

end A005657

/-! ## A005657.P1969218799050477787

`A000503(n)+A005699(n)-A195910(n)`
-/

namespace A005657.P1969218799050477787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000503 n + (A005699 n - A195910 n)

end

end A005657.P1969218799050477787

namespace A005657

/-- `A000503(n)+A005699(n)-A195910(n)` -/
def P1969218799050477787.Spec : Prop :=
  ∀ n, P1969218799050477787.a n = A005657 n

end A005657

/-!
# A005658: If n appears so do 2n, 3n+2, 6n+3.

The programs for A005658, there is no canonical definition to state claims against.
-/

/-! ## A005658.P7190049804735995332

`∑[gcd(A000720(n+2), A107614(n+14))]`
-/

namespace A005658.P7190049804735995332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000720 (n + 2)) (A107614 (n + 14))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005658.P7190049804735995332

/-!
# A005659: If k appears so do 2k-2 and 3k-3. (duplicates omitted.)

The programs for A005659, there is no canonical definition to state claims against.
-/

/-! ## A005659.P8031062991123620748

`A190808(n+2)+2`
-/

namespace A005659.P8031062991123620748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190808 (n + 2) + 2

end

end A005659.P8031062991123620748

/-! ## A005659.P4093391675704439047

`A190803(n+3)+1`
-/

namespace A005659.P4093391675704439047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190803 (n + 3) + 1

end

end A005659.P4093391675704439047

/-! ## A005659.P5943121081162517394

`(A190804(n+3)+3)/2`
-/

namespace A005659.P5943121081162517394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190804 (n + 3) + 3 : ℚ) / 2

end

end A005659.P5943121081162517394

/-! ## A005659.P14715186251618860610

`(A190805(n+3)+5)/3`
-/

namespace A005659.P14715186251618860610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190805 (n + 3) + 5 : ℚ) / 3

end

end A005659.P14715186251618860610

/-! ## A005659.P12819482325515440310

`A009056(A190808(n+2))`
-/

namespace A005659.P12819482325515440310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A190808 (n + 2)).toNat

end

end A005659.P12819482325515440310

/-! ## A005659.P8154557755130066909

`A061767(A190803(n+3))`
-/

namespace A005659.P8154557755130066909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (A190803 (n + 3)).toNat

end

end A005659.P8154557755130066909

/-! ## A005659.P8743468699306649033

`A080513(A190804(n+3))`
-/

namespace A005659.P8743468699306649033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A190804 (n + 3)).toNat

end

end A005659.P8743468699306649033

/-!
# A005662: Start with 4; if k appears then so do 2k+2 and 3k+3. (duplicates omitted.)

The programs for A005662, there is no canonical definition to state claims against.
-/

/-! ## A005662.P13788544993978027498

`A379313(A005660(n+1))`
-/

namespace A005662.P13788544993978027498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379313 (A005660 (n + 1)).toNat

end

end A005662.P13788544993978027498

/-!
# A005663: Numerators of convergents to log_2(3) = log(3)/log(2).

The programs for A005663, there is no canonical definition to state claims against.
-/

/-! ## A005663.P4685892907693045822

`A355512(n+1)-A005664(n)`
-/

namespace A005663.P4685892907693045822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355512 (n + 1) - A005664 n

end

end A005663.P4685892907693045822

/-! ## A005663.P3789858773376069473

`A355512(n+1)-A206788(∑[A028507(n)])`
-/

namespace A005663.P3789858773376069473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355512 (n + 1) - A206788 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A005663.P3789858773376069473

/-! ## A005663.P18095940790714072462

`A020914(A005664(n))-A059841(n)`
-/

namespace A005663.P18095940790714072462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020914 (A005664 n).toNat - A059841 n

end

end A005663.P18095940790714072462

/-!
# A005664: Denominators of convergents to log_2 3.

The programs for A005664, there is no canonical definition to state claims against.
-/

/-! ## A005664.P3607075217856266544

`A355512(n+1)-A005663(n)`
-/

namespace A005664.P3607075217856266544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355512 (n + 1) - A005663 n

end

end A005664.P3607075217856266544

/-! ## A005664.P1776283645357102154

`A206788(∑[A028507(n)])`
-/

namespace A005664.P1776283645357102154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206788 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A005664.P1776283645357102154

/-! ## A005664.P1829023757396535164

`A136409(A005663(n)+1)`
-/

namespace A005664.P1829023757396535164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136409 (A005663 n + 1).toNat

end

end A005664.P1829023757396535164

/-!
# A005665: Minimal number of moves for the cyclic variant of the Towers of Hanoi for 3 pegs and n disks, with the final peg one step away.

The programs for A005665, the canonical program `A005665.P9211530614761677807` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005665 has offset 0).

The definition of A005665 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005665.P9211530614761677807

`2*a(n-1)+2*a(n-2)+3` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005665

/-- `2*a(n-1)+2*a(n-2)+3` -/
def P9211530614761677807.Spec : Prop :=
  ∀ n, (P9211530614761677807.a n : ℤ) = A005665 n

theorem P9211530614761677807.correct : P9211530614761677807.Spec := by
  intro n
  simp only [A005665]

end A005665

/-! ## A005665.P8566235316808140558

`ogf((x+2x^2)/(1-3x+2x^3))`
-/

namespace A005665.P8566235316808140558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2] [1, -3, 0, 2] n

end

end A005665.P8566235316808140558

namespace A005665

/-- `ogf((x+2x^2)/(1-3x+2x^3))` -/
def P8566235316808140558.Spec : Prop :=
  ∀ n, P8566235316808140558.a n = A005665 n

end A005665

/-! ## A005665.P3429476654665872961

`∑[ceil(((sqrt(3)+1)^n-1)/2)]`
-/

namespace A005665.P3429476654665872961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Real.sqrt (3 : ℝ) + 1) ^ n - 1) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005665.P3429476654665872961

namespace A005665

/-- `∑[ceil(((sqrt(3)+1)^n-1)/2)]` -/
def P3429476654665872961.Spec : Prop :=
  ∀ n, P3429476654665872961.a n = A005665 n

end A005665

/-! ## A005665.P13762395602299915641

`2*(a(n-1)+a(n-2))+3` with `a(0)=0, a(1)=1`
-/

namespace A005665.P13762395602299915641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * (a (n - 1) + a (n - 2)) + 3

end

end A005665.P13762395602299915641

namespace A005665

/-- `2*(a(n-1)+a(n-2))+3` -/
def P13762395602299915641.Spec : Prop :=
  ∀ n, (P13762395602299915641.a n : ℤ) = A005665 n

theorem P13762395602299915641.correct : P13762395602299915641.Spec := by
  intro n
  simp only [A005665, Nat.add_sub_cancel, A005665.P13762395602299915641.a, A005665.P9211530614761677807.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A005665

/-! ## A005665.P2095967819685695451

`3*a(n-1)-2*a(n-3)` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A005665.P2095967819685695451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5] fun n a =>
  3 * a (n - 1) - 2 * a (n - 3)

end

end A005665.P2095967819685695451

namespace A005665

/-- `3*a(n-1)-2*a(n-3)` -/
def P2095967819685695451.Spec : Prop :=
  ∀ n, P2095967819685695451.a n = A005665 n

end A005665

/-! ## A005665.P114557026724396767

`a(n-1)+3+a(n-2)+a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A005665.P114557026724396767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + 3 + (a (n - 2) + (a (n - 1) + a (n - 2)))

end

end A005665.P114557026724396767

namespace A005665

/-- `a(n-1)+3+a(n-2)+a(n-1)+a(n-2)` -/
def P114557026724396767.Spec : Prop :=
  ∀ n, (P114557026724396767.a n : ℤ) = A005665 n

theorem P114557026724396767.correct : P114557026724396767.Spec := by
  intro n
  simp only [A005665, Nat.add_sub_cancel, A005665.P114557026724396767.a, A005665.P9211530614761677807.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A005665

/-! ## A005665.P18133341445554867684

`∑[A026150(n)]-1`
-/

namespace A005665.P18133341445554867684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A005665.P18133341445554867684

namespace A005665

/-- `∑[A026150(n)]-1` -/
def P18133341445554867684.Spec : Prop :=
  ∀ n, P18133341445554867684.a n = A005665 n

end A005665

/-! ## A005665.P7063644299877125780

`A002605(n+1)-1`
-/

namespace A005665.P7063644299877125780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 (n + 1) - 1

end

end A005665.P7063644299877125780

namespace A005665

/-- `A002605(n+1)-1` -/
def P7063644299877125780.Spec : Prop :=
  ∀ n, P7063644299877125780.a n = A005665 n

end A005665

/-! ## A005665.P2420768074426455305

`∑[A080040(n)/2]-1`
-/

namespace A005665.P2420768074426455305
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080040 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A005665.P2420768074426455305

namespace A005665

/-- `∑[A080040(n)/2]-1` -/
def P2420768074426455305.Spec : Prop :=
  ∀ n, P2420768074426455305.a n = (A005665 n : ℚ)

end A005665

/-! ## A005665.P15533652407012948548

`A160444(2*n+3)-1`
-/

namespace A005665.P15533652407012948548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160444 (2 * n + 3) - 1

end

end A005665.P15533652407012948548

namespace A005665

/-- `A160444(2*n+3)-1` -/
def P15533652407012948548.Spec : Prop :=
  ∀ n, P15533652407012948548.a n = A005665 n

end A005665

/-! ## A005665.P178110690170539493

`∑[A160572(2*n+1)]-1`
-/

namespace A005665.P178110690170539493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160572 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A005665.P178110690170539493

namespace A005665

/-- `∑[A160572(2*n+1)]-1` -/
def P178110690170539493.Spec : Prop :=
  ∀ n, P178110690170539493.a n = A005665 n

end A005665

/-! ## A005665.P16198007464510333952

`A005666(n)-A002605(n)`
-/

namespace A005665.P16198007464510333952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005666 n - A002605 n

end

end A005665.P16198007464510333952

namespace A005665

/-- `A005666(n)-A002605(n)` -/
def P16198007464510333952.Spec : Prop :=
  ∀ n, P16198007464510333952.a n = A005665 n

end A005665

/-! ## A005665.P3759790061086418196

`A108898(n)+A028860(n+1)`
-/

namespace A005665.P3759790061086418196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108898 n + A028860 (n + 1)

end

end A005665.P3759790061086418196

namespace A005665

/-- `A108898(n)+A028860(n+1)` -/
def P3759790061086418196.Spec : Prop :=
  ∀ n, P3759790061086418196.a n = A005665 n

end A005665

/-! ## A005665.P1507434558777505691

`A083337(n)-(A028860(n)+1)`
-/

namespace A005665.P1507434558777505691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083337 n - (A028860 n + 1)

end

end A005665.P1507434558777505691

namespace A005665

/-- `A083337(n)-(A028860(n)+1)` -/
def P1507434558777505691.Spec : Prop :=
  ∀ n, P1507434558777505691.a n = A005665 n

end A005665

/-! ## A005665.P4058619928011932382

`A099176(n)+A099177(n)-1`
-/

namespace A005665.P4058619928011932382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099176 n + (A099177 n - 1)

end

end A005665.P4058619928011932382

namespace A005665

/-- `A099176(n)+A099177(n)-1` -/
def P4058619928011932382.Spec : Prop :=
  ∀ n, P4058619928011932382.a n = A005665 n

end A005665

/-! ## A005665.P5046862109313152856

`A152035(n)+A293007(n)-1`
-/

namespace A005665.P5046862109313152856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152035 n + (A293007 n - 1)

end

end A005665.P5046862109313152856

namespace A005665

/-- `A152035(n)+A293007(n)-1` -/
def P5046862109313152856.Spec : Prop :=
  ∀ n, P5046862109313152856.a n = A005665 n

end A005665

/-! ## A005665.P1915105595673293994

`A028859(n)-1-A002605(n)`
-/

namespace A005665.P1915105595673293994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028859 n - 1 - A002605 n

end

end A005665.P1915105595673293994

namespace A005665

/-- `A028859(n)-1-A002605(n)` -/
def P1915105595673293994.Spec : Prop :=
  ∀ n, P1915105595673293994.a n = A005665 n

end A005665

/-! ## A005665.P4032513571408962791

`A028860(n+1)+A293007(n+1)-1`
-/

namespace A005665.P4032513571408962791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028860 (n + 1) + (A293007 (n + 1) - 1)

end

end A005665.P4032513571408962791

namespace A005665

/-- `A028860(n+1)+A293007(n+1)-1` -/
def P4032513571408962791.Spec : Prop :=
  ∀ n, P4032513571408962791.a n = A005665 n

end A005665

/-! ## A005665.P10540171653317630299

`A002530(n+1)*A016116(n+1)-1`
-/

namespace A005665.P10540171653317630299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 (n + 1) * A016116 (n + 1) - 1

end

end A005665.P10540171653317630299

namespace A005665

/-- `A002530(n+1)*A016116(n+1)-1` -/
def P10540171653317630299.Spec : Prop :=
  ∀ n, P10540171653317630299.a n = A005665 n

end A005665

/-!
# A005666: Minimal number of moves for the cyclic variant of the Towers of Hanoi for 3 pegs and n disks, with the final peg two steps away.

The programs for A005666, the canonical program `A005666.P9289590962323084017` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005666 has offset 0).

The definition of A005666 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005666.P9289590962323084017

`2*a(n-1)+2*a(n-2)+3` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005666

/-- `2*a(n-1)+2*a(n-2)+3` -/
def P9289590962323084017.Spec : Prop :=
  ∀ n, (P9289590962323084017.a n : ℤ) = A005666 n

theorem P9289590962323084017.correct : P9289590962323084017.Spec := by
  intro n
  simp only [A005666]

end A005666

/-! ## A005666.P9902490085254144674

`A028859(n)-1`
-/

namespace A005666.P9902490085254144674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028859 n - 1

end

end A005666.P9902490085254144674

namespace A005666

/-- `A028859(n)-1` -/
def P9902490085254144674.Spec : Prop :=
  ∀ n, P9902490085254144674.a n = A005666 n

end A005666

/-! ## A005666.P2423086694776295544

`floor(1/(4*sqrt(3))*((1+sqrt(3))^(n+2)-1))`
-/

namespace A005666.P2423086694776295544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (4 * Real.sqrt (3 : ℝ)) * ((1 + Real.sqrt (3 : ℝ)) ^ (n + 2) - 1)⌋

end

end A005666.P2423086694776295544

namespace A005666

/-- `floor(1/(4*sqrt(3))*((1+sqrt(3))^(n+2)-1))` -/
def P2423086694776295544.Spec : Prop :=
  ∀ n, P2423086694776295544.a n = A005666 n

end A005666

/-! ## A005666.P7681166625796293798

`ogf((2x+x^2)/(1-3x+2x^3))`
-/

namespace A005666.P7681166625796293798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 1] [1, -3, 0, 2] n

end

end A005666.P7681166625796293798

namespace A005666

/-- `ogf((2x+x^2)/(1-3x+2x^3))` -/
def P7681166625796293798.Spec : Prop :=
  ∀ n, P7681166625796293798.a n = A005666 n

end A005666

/-! ## A005666.P457794739110149525

`floor((sqrt(3)+1)*a(n-1))+2` with `a(0)=0`
-/

namespace A005666.P457794739110149525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(Real.sqrt (3 : ℝ) + 1) * (a (n - 1) : ℝ)⌋ + 2

end

end A005666.P457794739110149525

namespace A005666

/-- `floor((sqrt(3)+1)*a(n-1))+2` -/
def P457794739110149525.Spec : Prop :=
  ∀ n, P457794739110149525.a n = A005666 n

end A005666

/-! ## A005666.P6475099071931993682

`round((sqrt(3)+1)*a(n-1))+2` with `a(0)=0`
-/

namespace A005666.P6475099071931993682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway ((Real.sqrt (3 : ℝ) + 1) * (a (n - 1) : ℝ)) + 2

end

end A005666.P6475099071931993682

namespace A005666

/-- `round((sqrt(3)+1)*a(n-1))+2` -/
def P6475099071931993682.Spec : Prop :=
  ∀ n, P6475099071931993682.a n = A005666 n

end A005666

/-! ## A005666.P16046206189391292153

`ceil((sqrt(3)+1)*a(n-1))+1` with `a(0)=0, a(1)=2`
-/

namespace A005666.P16046206189391292153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  ⌈(Real.sqrt (3 : ℝ) + 1) * (a (n - 1) : ℝ)⌉ + 1

end

end A005666.P16046206189391292153

namespace A005666

/-- `ceil((sqrt(3)+1)*a(n-1))+1` -/
def P16046206189391292153.Spec : Prop :=
  ∀ n, P16046206189391292153.a n = A005666 n

end A005666

/-! ## A005666.P8718372924372309371

`2*(a(n-1)+a(n-2))+3` with `a(0)=0, a(1)=2`
-/

namespace A005666.P8718372924372309371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  2 * (a (n - 1) + a (n - 2)) + 3

end

end A005666.P8718372924372309371

namespace A005666

/-- `2*(a(n-1)+a(n-2))+3` -/
def P8718372924372309371.Spec : Prop :=
  ∀ n, (P8718372924372309371.a n : ℤ) = A005666 n

theorem P8718372924372309371.correct : P8718372924372309371.Spec := by
  intro n
  simp only [A005666, Nat.add_sub_cancel, A005666.P8718372924372309371.a, A005666.P9289590962323084017.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A005666

/-! ## A005666.P17792612693670208615

`a(n-1)+3+a(n-1)+a(n-2)+a(n-2)` with `a(0)=0, a(1)=2`
-/

namespace A005666.P17792612693670208615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 1) + 3 + (a (n - 1) + (a (n - 2) + a (n - 2)))

end

end A005666.P17792612693670208615

namespace A005666

/-- `a(n-1)+3+a(n-1)+a(n-2)+a(n-2)` -/
def P17792612693670208615.Spec : Prop :=
  ∀ n, (P17792612693670208615.a n : ℤ) = A005666 n

theorem P17792612693670208615.correct : P17792612693670208615.Spec := by
  intro n
  simp only [A005666, Nat.add_sub_cancel, A005666.P17792612693670208615.a, A005666.P9289590962323084017.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A005666

/-! ## A005666.P2228826372054541582

`∑[A052945(n)]-1`
-/

namespace A005666.P2228826372054541582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A005666.P2228826372054541582

namespace A005666

/-- `∑[A052945(n)]-1` -/
def P2228826372054541582.Spec : Prop :=
  ∀ n, P2228826372054541582.a n = A005666 n

end A005666

/-! ## A005666.P9507618608826434628

`∑[abs(Δ[A155020(n)])]`
-/

namespace A005666.P9507618608826434628
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155020 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005666.P9507618608826434628

namespace A005666

/-- `∑[abs(Δ[A155020(n)])]` -/
def P9507618608826434628.Spec : Prop :=
  ∀ n, P9507618608826434628.a n = A005666 n

end A005666

/-! ## A005666.P4616694663213234053

`A155020(n+1)-1`
-/

namespace A005666.P4616694663213234053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155020 (n + 1) - 1

end

end A005666.P4616694663213234053

namespace A005666

/-- `A155020(n+1)-1` -/
def P4616694663213234053.Spec : Prop :=
  ∀ n, P4616694663213234053.a n = A005666 n

end A005666

/-! ## A005666.P7064686541478391716

`A005665(n)+A002605(n)`
-/

namespace A005666.P7064686541478391716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005665 n + A002605 n

end

end A005666.P7064686541478391716

namespace A005666

/-- `A005665(n)+A002605(n)` -/
def P7064686541478391716.Spec : Prop :=
  ∀ n, P7064686541478391716.a n = A005666 n

end A005666

/-! ## A005666.P15462834825166242424

`A108898(n)+A026150(n)`
-/

namespace A005666.P15462834825166242424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108898 n + A026150 n

end

end A005666.P15462834825166242424

namespace A005666

/-- `A108898(n)+A026150(n)` -/
def P15462834825166242424.Spec : Prop :=
  ∀ n, P15462834825166242424.a n = A005666 n

end A005666

/-! ## A005666.P8284229264973948376

`A108898(n)+Δ[A002605(n)]`
-/

namespace A005666.P8284229264973948376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108898 n + (f1 (n + 1) - f1 n)

end

end A005666.P8284229264973948376

namespace A005666

/-- `A108898(n)+Δ[A002605(n)]` -/
def P8284229264973948376.Spec : Prop :=
  ∀ n, P8284229264973948376.a n = A005666 n

end A005666

/-! ## A005666.P11428796971716833656

`∑[A052945(n)%A028859(n)]`
-/

namespace A005666.P11428796971716833656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052945 n) (A028859 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005666.P11428796971716833656

namespace A005666

/-- `∑[A052945(n)%A028859(n)]` -/
def P11428796971716833656.Spec : Prop :=
  ∀ n, P11428796971716833656.a n = A005666 n

end A005666

/-! ## A005666.P11473749829890433993

`A028860(n)+A080040(n)-1`
-/

namespace A005666.P11473749829890433993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028860 n + (A080040 n - 1)

end

end A005666.P11473749829890433993

namespace A005666

/-- `A028860(n)+A080040(n)-1` -/
def P11473749829890433993.Spec : Prop :=
  ∀ n, P11473749829890433993.a n = A005666 n

end A005666

/-! ## A005666.P6890584636169280667

`A108898(n)+A080040(n)/2`
-/

namespace A005666.P6890584636169280667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108898 n : ℚ) + (A080040 n : ℚ) / 2

end

end A005666.P6890584636169280667

namespace A005666

/-- `A108898(n)+A080040(n)/2` -/
def P6890584636169280667.Spec : Prop :=
  ∀ n, P6890584636169280667.a n = (A005666 n : ℚ)

end A005666

/-! ## A005666.P3784853502744032598

`A002605(n)+∑[A026150(n)]-1`
-/

namespace A005666.P3784853502744032598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 n + (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A005666.P3784853502744032598

namespace A005666

/-- `A002605(n)+∑[A026150(n)]-1` -/
def P3784853502744032598.Spec : Prop :=
  ∀ n, P3784853502744032598.a n = A005666 n

end A005666

/-! ## A005666.P10175054285421848343

`A026150(n)+Δ[A052948(n)]-1`
-/

namespace A005666.P10175054285421848343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 n + (f1 (n + 1) - f1 n - 1)

end

end A005666.P10175054285421848343

namespace A005666

/-- `A026150(n)+Δ[A052948(n)]-1` -/
def P10175054285421848343.Spec : Prop :=
  ∀ n, P10175054285421848343.a n = A005666 n

end A005666

/-!
# A005667: Numerators of continued fraction convergents to sqrt(10).

The programs for A005667, the canonical program `A005667.P11209746265413363693` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005667 has offset 0).

The definition of A005667 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005667.P11209746265413363693

`6*a(n-1)+a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005667

/-- `6*a(n-1)+a(n-2)` -/
def P11209746265413363693.Spec : Prop :=
  ∀ n, (P11209746265413363693.a n : ℤ) = A005667 n

theorem P11209746265413363693.correct : P11209746265413363693.Spec := by
  intro n
  simp only [A005667]

end A005667

/-! ## A005667.P5652480820708071009

`ogf((-1+3x)/(-1+6x+x^2))`
-/

namespace A005667.P5652480820708071009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3] [1, -6, -1] n

end

end A005667.P5652480820708071009

namespace A005667

/-- `ogf((-1+3x)/(-1+6x+x^2))` -/
def P5652480820708071009.Spec : Prop :=
  ∀ n, P5652480820708071009.a n = A005667 n

end A005667

/-! ## A005667.P13476744999068539249

`lcm(5, a(n-1))+a(n-1)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A005667.P13476744999068539249
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Nat.lcm 5 (a (n - 1)) + (a (n - 1) + a (n - 2))

end

end A005667.P13476744999068539249

namespace A005667

/-- `lcm(5, a(n-1))+a(n-1)+a(n-2)` -/
def P13476744999068539249.Spec : Prop :=
  ∀ n, (P13476744999068539249.a n : ℤ) = A005667 n

end A005667

/-! ## A005667.P5758148286185456880

`a(n-2)-2*(a(n-1)-4*a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A005667.P5758148286185456880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) - 2 * (a (n - 1) - 4 * a (n - 1))

end

end A005667.P5758148286185456880

namespace A005667

/-- `a(n-2)-2*(a(n-1)-4*a(n-1))` -/
def P5758148286185456880.Spec : Prop :=
  ∀ n, P5758148286185456880.a n = A005667 n

end A005667

/-! ## A005667.P8067238349096509849

`A179237(n)+A005668(n)`
-/

namespace A005667.P8067238349096509849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179237 n + A005668 n

end

end A005667.P8067238349096509849

namespace A005667

/-- `A179237(n)+A005668(n)` -/
def P8067238349096509849.Spec : Prop :=
  ∀ n, P8067238349096509849.a n = A005667 n

end A005667

/-! ## A005667.P11366337082592888061

`A015451(n)+2*A005668(n)`
-/

namespace A005667.P11366337082592888061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015451 n + 2 * A005668 n

end

end A005667.P11366337082592888061

namespace A005667

/-- `A015451(n)+2*A005668(n)` -/
def P11366337082592888061.Spec : Prop :=
  ∀ n, P11366337082592888061.a n = A005667 n

end A005667

/-! ## A005667.P7683700714876604287

`A179237(n)+A179237(n)-A015451(n)`
-/

namespace A005667.P7683700714876604287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179237 n + (A179237 n - A015451 n)

end

end A005667.P7683700714876604287

namespace A005667

/-- `A179237(n)+A179237(n)-A015451(n)` -/
def P7683700714876604287.Spec : Prop :=
  ∀ n, P7683700714876604287.a n = A005667 n

end A005667

/-! ## A005667.P9544062187182182961

`7*a(n-1)-(a(n-1)-a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A005667.P9544062187182182961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  7 * a (n - 1) - (a (n - 1) - a (n - 2))

end

end A005667.P9544062187182182961

namespace A005667

/-- `7*a(n-1)-(a(n-1)-a(n-2))` -/
def P9544062187182182961.Spec : Prop :=
  ∀ n, P9544062187182182961.a n = A005667 n

end A005667

/-! ## A005667.P9176087455295955981

`A085447(n)/2`
-/

namespace A005667.P9176087455295955981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085447 n : ℚ) / 2

end

end A005667.P9176087455295955981

namespace A005667

/-- `A085447(n)/2` -/
def P9176087455295955981.Spec : Prop :=
  ∀ n, P9176087455295955981.a n = (A005667 n : ℚ)

end A005667

/-! ## A005667.P4402605509933004855

`A116559(6*n+1)`
-/

namespace A005667.P4402605509933004855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116559 (6 * n + 1)

end

end A005667.P4402605509933004855

namespace A005667

/-- `A116559(6*n+1)` -/
def P4402605509933004855.Spec : Prop :=
  ∀ n, P4402605509933004855.a n = A005667 n

end A005667

/-! ## A005667.P16657093799578138611

`record[(A174507(n)+1)/2]`
-/

namespace A005667.P16657093799578138611
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174507 n + 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005667.P16657093799578138611

namespace A005667

/-- `record[(A174507(n)+1)/2]` -/
def P16657093799578138611.Spec : Prop :=
  ∀ n, P16657093799578138611.a n = (A005667 n : ℚ)

end A005667

/-! ## A005667.P17337494276229590017

`2*A179237(n)-A015451(n)`
-/

namespace A005667.P17337494276229590017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A179237 n - A015451 n

end

end A005667.P17337494276229590017

namespace A005667

/-- `2*A179237(n)-A015451(n)` -/
def P17337494276229590017.Spec : Prop :=
  ∀ n, P17337494276229590017.a n = A005667 n

end A005667

/-! ## A005667.P13150430023762527961

`record[Δ[A116559(A116568(n+1))]]`
-/

namespace A005667.P13150430023762527961
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116559 (A116568 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005667.P13150430023762527961

namespace A005667

/-- `record[Δ[A116559(A116568(n+1))]]` -/
def P13150430023762527961.Spec : Prop :=
  ∀ n, P13150430023762527961.a n = A005667 n

end A005667

/-! ## A005667.P17580946704311037572

`record[A295334(n)-Δ[A295334(n)]]`
-/

namespace A005667.P17580946704311037572
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295334 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295334 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005667.P17580946704311037572

namespace A005667

/-- `record[A295334(n)-Δ[A295334(n)]]` -/
def P17580946704311037572.Spec : Prop :=
  ∀ n, P17580946704311037572.a n = A005667 n

end A005667

/-!
# A005668: Denominators of continued fraction convergents to sqrt(10).

The programs for A005668, the canonical program `A005668.P16454621697673047627` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005668 has offset 0).

The definition of A005668 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005668.P16454621697673047627

`6*a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005668

/-- `6*a(n-1)+a(n-2)` -/
def P16454621697673047627.Spec : Prop :=
  ∀ n, (P16454621697673047627.a n : ℤ) = A005668 n

theorem P16454621697673047627.correct : P16454621697673047627.Spec := by
  intro n
  simp only [A005668]

end A005668

/-! ## A005668.P8459310559340062769

`ogf(x/(1-6x-x^2))`
-/

namespace A005668.P8459310559340062769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -6, -1] n

end

end A005668.P8459310559340062769

namespace A005668

/-- `ogf(x/(1-6x-x^2))` -/
def P8459310559340062769.Spec : Prop :=
  ∀ n, P8459310559340062769.a n = A005668 n

end A005668

/-! ## A005668.P1743564627006360724

`7*a(n-1)-(a(n-1)-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A005668.P1743564627006360724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  7 * a (n - 1) - (a (n - 1) - a (n - 2))

end

end A005668.P1743564627006360724

namespace A005668

/-- `7*a(n-1)-(a(n-1)-a(n-2))` -/
def P1743564627006360724.Spec : Prop :=
  ∀ n, P1743564627006360724.a n = A005668 n

end A005668

/-! ## A005668.P1047952488837286168

`floor(A078469(n)/2)`
-/

namespace A005668.P1047952488837286168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A078469 n : ℚ) / 2⌋

end

end A005668.P1047952488837286168

namespace A005668

/-- `floor(A078469(n)/2)` -/
def P1047952488837286168.Spec : Prop :=
  ∀ n, P1047952488837286168.a n = A005668 n

end A005668

/-! ## A005668.P17597009593268877472

`A015451(n)-a(n-1)` with `a(0)=0`
-/

namespace A005668.P17597009593268877472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A015451 n - a (n - 1)

end

end A005668.P17597009593268877472

namespace A005668

/-- `A015451(n)-a(n-1)` -/
def P17597009593268877472.Spec : Prop :=
  ∀ n, P17597009593268877472.a n = A005668 n

end A005668

/-! ## A005668.P8678192831504588453

`A085447(n-1)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A005668.P8678192831504588453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A085447 (n - 1) - a (n - 2)

end

end A005668.P8678192831504588453

namespace A005668

/-- `A085447(n-1)-a(n-2)` -/
def P8678192831504588453.Spec : Prop :=
  ∀ n, P8678192831504588453.a n = A005668 n

end A005668

/-! ## A005668.P12860510410675774198

`A005667(n)-A179237(n)`
-/

namespace A005668.P12860510410675774198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005667 n - A179237 n

end

end A005668.P12860510410675774198

namespace A005668

/-- `A005667(n)-A179237(n)` -/
def P12860510410675774198.Spec : Prop :=
  ∀ n, P12860510410675774198.a n = A005668 n

end A005668

/-! ## A005668.P12805930384372951588

`A179237(n)-A015451(n)`
-/

namespace A005668.P12805930384372951588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179237 n - A015451 n

end

end A005668.P12805930384372951588

namespace A005668

/-- `A179237(n)-A015451(n)` -/
def P12805930384372951588.Spec : Prop :=
  ∀ n, P12805930384372951588.a n = A005668 n

end A005668

/-! ## A005668.P1274055914337444140

`∑[A078469(n)-A015451(n)]`
-/

namespace A005668.P1274055914337444140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078469 n - A015451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005668.P1274055914337444140

namespace A005668

/-- `∑[A078469(n)-A015451(n)]` -/
def P1274055914337444140.Spec : Prop :=
  ∀ n, P1274055914337444140.a n = A005668 n

end A005668

/-! ## A005668.P11415374990367713871

`(A005667(n)-A015451(n))/2`
-/

namespace A005668.P11415374990367713871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005667 n - A015451 n : ℚ) / 2

end

end A005668.P11415374990367713871

namespace A005668

/-- `(A005667(n)-A015451(n))/2` -/
def P11415374990367713871.Spec : Prop :=
  ∀ n, P11415374990367713871.a n = (A005668 n : ℚ)

end A005668

/-! ## A005668.P16192094975936577700

`record[A228471(n)-A228470(n)]`
-/

namespace A005668.P16192094975936577700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228471 n - A228470 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005668.P16192094975936577700

namespace A005668

/-- `record[A228471(n)-A228470(n)]` -/
def P16192094975936577700.Spec : Prop :=
  ∀ n, P16192094975936577700.a n = A005668 n

end A005668

/-! ## A005668.P15347475357075369835

`record[A295333(n)-A295334(n+1)]`
-/

namespace A005668.P15347475357075369835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295333 n - A295334 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005668.P15347475357075369835

namespace A005668

/-- `record[A295333(n)-A295334(n+1)]` -/
def P15347475357075369835.Spec : Prop :=
  ∀ n, P15347475357075369835.a n = A005668 n

end A005668

/-! ## A005668.P3540240769992095852

`A179237(n+1)-A078469(n+1)`
-/

namespace A005668.P3540240769992095852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179237 (n + 1) - A078469 (n + 1)

end

end A005668.P3540240769992095852

namespace A005668

/-- `A179237(n+1)-A078469(n+1)` -/
def P3540240769992095852.Spec : Prop :=
  ∀ n, P3540240769992095852.a n = A005668 n

end A005668

/-! ## A005668.P11864198259399230042

`A228471(2*n)-A228470(2*n)`
-/

namespace A005668.P11864198259399230042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228471 (2 * n) - A228470 (2 * n)

end

end A005668.P11864198259399230042

namespace A005668

/-- `A228471(2*n)-A228470(2*n)` -/
def P11864198259399230042.Spec : Prop :=
  ∀ n, P11864198259399230042.a n = A005668 n

end A005668

/-! ## A005668.P11770125029817954095

`A015451(n+1)-A078469(n+1)/2`
-/

namespace A005668.P11770125029817954095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015451 (n + 1) : ℚ) - (A078469 (n + 1) : ℚ) / 2

end

end A005668.P11770125029817954095

namespace A005668

/-- `A015451(n+1)-A078469(n+1)/2` -/
def P11770125029817954095.Spec : Prop :=
  ∀ n, P11770125029817954095.a n = (A005668 n : ℚ)

end A005668

/-! ## A005668.P2056775790186668638

`A228471(2*n+1)-A228472(2*n)`
-/

namespace A005668.P2056775790186668638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228471 (2 * n + 1) - A228472 (2 * n)

end

end A005668.P2056775790186668638

namespace A005668

/-- `A228471(2*n+1)-A228472(2*n)` -/
def P2056775790186668638.Spec : Prop :=
  ∀ n, P2056775790186668638.a n = A005668 n

end A005668

/-! ## A005668.P5072619149481431070

`A228472(2*n+1)-(A228472(2*n)+A228470(2*n))`
-/

namespace A005668.P5072619149481431070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228472 (2 * n + 1) - (A228472 (2 * n) + A228470 (2 * n))

end

end A005668.P5072619149481431070

namespace A005668

/-- `A228472(2*n+1)-(A228472(2*n)+A228470(2*n))` -/
def P5072619149481431070.Spec : Prop :=
  ∀ n, P5072619149481431070.a n = A005668 n

end A005668

/-! ## A005668.P15339204386263801493

`A228469(2*n)+A228471(2*n)-A228471(2*n+1)`
-/

namespace A005668.P15339204386263801493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228469 (2 * n) + (A228471 (2 * n) - A228471 (2 * n + 1))

end

end A005668.P15339204386263801493

namespace A005668

/-- `A228469(2*n)+A228471(2*n)-A228471(2*n+1)` -/
def P15339204386263801493.Spec : Prop :=
  ∀ n, P15339204386263801493.a n = A005668 n

end A005668

/-! ## A005668.P12571620296394982854

`A228470(2*n+1)-(A228470(2*n)+A228469(2*n+1))`
-/

namespace A005668.P12571620296394982854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228470 (2 * n + 1) - (A228470 (2 * n) + A228469 (2 * n + 1))

end

end A005668.P12571620296394982854

namespace A005668

/-- `A228470(2*n+1)-(A228470(2*n)+A228469(2*n+1))` -/
def P12571620296394982854.Spec : Prop :=
  ∀ n, P12571620296394982854.a n = A005668 n

end A005668

/-!
# A005669: Indices of primes where largest gap occurs.

The programs for A005669, there is no canonical definition to state claims against.
-/

/-! ## A005669.P15042928416495699580

`A107578(n+1)-1`
-/

namespace A005669.P15042928416495699580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107578 (n + 1) - 1

end

end A005669.P15042928416495699580

/-! ## A005669.P761783625503254081

`A000720(A002386(n+1))`
-/

namespace A005669.P761783625503254081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A002386 (n + 1)).toNat

end

end A005669.P761783625503254081

/-! ## A005669.P4335362568002804326

`A153881(n+2)+A107578(n+1)`
-/

namespace A005669.P4335362568002804326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A107578 (n + 1)

end

end A005669.P4335362568002804326

/-! ## A005669.P3156207917366536887

`A260196(n+2)+A107578(n+1)`
-/

namespace A005669.P3156207917366536887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A107578 (n + 1)

end

end A005669.P3156207917366536887

/-! ## A005669.P5679012242962733162

`abs(A107578(n+1)+A033999(Δ[n²]))`
-/

namespace A005669.P5679012242962733162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A107578 (n + 1) + A033999 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A005669.P5679012242962733162

/-! ## A005669.P10461742636685145066

`A291200(ceil(2/(n+1)))+A107578(n+1)`
-/

namespace A005669.P10461742636685145066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291200 ⌈2 / (n + 1 : ℚ)⌉.toNat + A107578 (n + 1)

end

end A005669.P10461742636685145066

/-! ## A005669.P14809672135080420016

`A114592(A033217(n+1))+A107578(n+1)`
-/

namespace A005669.P14809672135080420016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114592 (A033217 (n + 1)).toNat + A107578 (n + 1)

end

end A005669.P14809672135080420016

/-! ## A005669.P6748648543382079021

`A295303(A066694(n+1))+A107578(n+1)`
-/

namespace A005669.P6748648543382079021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295303 (A066694 (n + 1)).toNat + A107578 (n + 1)

end

end A005669.P6748648543382079021

/-! ## A005669.P8214604110958026486

`A114592(A293200(n+1))+A107578(n+1)`
-/

namespace A005669.P8214604110958026486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114592 (A293200 (n + 1)).toNat + A107578 (n + 1)

end

end A005669.P8214604110958026486

/-!
# A005670: Mrs. Perkins's quilt: smallest coprime dissection of n X n square.

The programs for A005670, there is no canonical definition to state claims against.
-/

/-! ## A005670.P17259901174258409800

`A239684(A273304(n))`
-/

namespace A005670.P17259901174258409800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239684 (A273304 n).toNat

end

end A005670.P17259901174258409800

/-! ## A005670.P14328291927521903819

`A213711(or(A005891(n), A299814(n+1)))`
-/

namespace A005670.P14328291927521903819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213711 (Int.lor (A005891 n) (A299814 (n + 1))).toNat

end

end A005670.P14328291927521903819

/-! ## A005670.P16250640271610960662

`A356895(A013928(3*n+1)*A064368(n))`
-/

namespace A005670.P16250640271610960662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356895 (A013928 (3 * n + 1) * A064368 n).toNat

end

end A005670.P16250640271610960662

/-! ## A005670.P8986116521527030946

`A130250(A325515(n+2)+A033991(n))`
-/

namespace A005670.P8986116521527030946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130250 (A325515 (n + 2) + A033991 n).toNat

end

end A005670.P8986116521527030946

/-! ## A005670.P1171761172069557815

`A070941(n*A152468(n+1))`
-/

namespace A005670.P1171761172069557815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070941 ((n : ℤ) * A152468 (n + 1)).toNat

end

end A005670.P1171761172069557815

/-!
# A005671: Nearest integer to tan(n)^2.

The programs for A005671, the canonical program `A005671.P5170040865760010198` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005671 has offset 0).

The definition of A005671 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005671.P5170040865760010198

`round(tan(n)²)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005671

/-- `round(tan(n)²)` -/
def P5170040865760010198.Spec : Prop :=
  ∀ n, P5170040865760010198.a n = A005671 n

theorem P5170040865760010198.correct : P5170040865760010198.Spec := by
  intro n
  simp only [A005671]

end A005671

/-! ## A005671.P13517140346905564035

`round(tan(n)^2)`
-/

namespace A005671.P13517140346905564035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tan (n : ℝ) ^ 2)

end

end A005671.P13517140346905564035

namespace A005671

/-- `round(tan(n)^2)` -/
def P13517140346905564035.Spec : Prop :=
  ∀ n, P13517140346905564035.a n = A005671 n

theorem P13517140346905564035.correct : P13517140346905564035.Spec := by
  intro n
  simp only [A005671, Nat.add_sub_cancel, A005671.P13517140346905564035.a, A005671.P5170040865760010198.a, SequenceMachineLib.memo_apply]

end A005671

/-! ## A005671.P9974447270162288981

`round(tan(n)*tan(n))`
-/

namespace A005671.P9974447270162288981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tan (n : ℝ) * Real.tan (n : ℝ))

end

end A005671.P9974447270162288981

namespace A005671

/-- `round(tan(n)*tan(n))` -/
def P9974447270162288981.Spec : Prop :=
  ∀ n, P9974447270162288981.a n = A005671 n

theorem P9974447270162288981.correct : P9974447270162288981.Spec := by
  intro n
  simp only [A005671, Nat.add_sub_cancel, A005671.P9974447270162288981.a, A005671.P5170040865760010198.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A005671

/-! ## A005671.P17028407573945000250

`round(cot(asin(cos(n)))²)`
-/

namespace A005671.P17028407573945000250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (Real.arcsin (Real.cos (n : ℝ))) ^ 2)

end

end A005671.P17028407573945000250

namespace A005671

/-- `round(cot(asin(cos(n)))²)` -/
def P17028407573945000250.Spec : Prop :=
  ∀ n, P17028407573945000250.a n = A005671 n

end A005671

/-! ## A005671.P638916658638513864

`round(cot(acos(sin(n)))²)`
-/

namespace A005671.P638916658638513864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (Real.arccos (Real.sin (n : ℝ))) ^ 2)

end

end A005671.P638916658638513864

namespace A005671

/-- `round(cot(acos(sin(n)))²)` -/
def P638916658638513864.Spec : Prop :=
  ∀ n, P638916658638513864.a n = A005671 n

end A005671

/-! ## A005671.P15171661672312202717

`round(cot(asin(1)-n)²)`
-/

namespace A005671.P15171661672312202717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (Real.arcsin (1 : ℝ) - (n : ℝ)) ^ 2)

end

end A005671.P15171661672312202717

namespace A005671

/-- `round(cot(asin(1)-n)²)` -/
def P15171661672312202717.Spec : Prop :=
  ∀ n, P15171661672312202717.a n = A005671 n

end A005671

/-! ## A005671.P15576764963592734562

`round((1/cos(n))²)-1`
-/

namespace A005671.P15576764963592734562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((1 / Real.cos (n : ℝ)) ^ 2) - 1

end

end A005671.P15576764963592734562

namespace A005671

/-- `round((1/cos(n))²)-1` -/
def P15576764963592734562.Spec : Prop :=
  ∀ n, P15576764963592734562.a n = A005671 n

end A005671

/-! ## A005671.P4968581738926131916

`floor(tan(n)²+1/2)`
-/

namespace A005671.P4968581738926131916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (n : ℝ) ^ 2 + ((1 : ℚ) / 2 : ℝ)⌋

end

end A005671.P4968581738926131916

namespace A005671

/-- `floor(tan(n)²+1/2)` -/
def P4968581738926131916.Spec : Prop :=
  ∀ n, P4968581738926131916.a n = A005671 n

end A005671

/-! ## A005671.P2260299387567545050

`ceil(tan(n)²-1/2)`
-/

namespace A005671.P2260299387567545050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (n : ℝ) ^ 2 - ((1 : ℚ) / 2 : ℝ)⌉

end

end A005671.P2260299387567545050

namespace A005671

/-- `ceil(tan(n)²-1/2)` -/
def P2260299387567545050.Spec : Prop :=
  ∀ n, P2260299387567545050.a n = A005671 n

end A005671

/-!
# A005672: a(n) = Fibonacci(n+1) - 2^floor(n/2).

The programs for A005672, the canonical program `A005672.P8730404627455532594` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005672 has offset 0).

The definition of A005672 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005672.P11807324410083037504

`A000045(n+1)-2^floor(n/2)`
-/

namespace A005672.P11807324410083037504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) : ℚ) - (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A005672.P11807324410083037504

namespace A005672

/-- `A000045(n+1)-2^floor(n/2)` -/
def P11807324410083037504.Spec : Prop :=
  ∀ n, P11807324410083037504.a n = (A005672 n : ℚ)

end A005672

/-! ## A005672.P10914545288117585062

`A212804(n)+A028892(n)`
-/

namespace A005672.P10914545288117585062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A028892 n

end

end A005672.P10914545288117585062

namespace A005672

/-- `A212804(n)+A028892(n)` -/
def P10914545288117585062.Spec : Prop :=
  ∀ n, P10914545288117585062.a n = A005672 n

end A005672

/-! ## A005672.P8730404627455532594

`A028892(n)+Δ[A000045(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A005672

/-- `A028892(n)+Δ[A000045(n)]` -/
def P8730404627455532594.Spec : Prop :=
  ∀ n, P8730404627455532594.a n = A005672 n

theorem P8730404627455532594.correct : P8730404627455532594.Spec := by
  intro n
  simp only [A005672]

end A005672

/-! ## A005672.P862492933796423426

`∑[A212804(n)]-A016116(n)`
-/

namespace A005672.P862492933796423426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A016116 n

end

end A005672.P862492933796423426

namespace A005672

/-- `∑[A212804(n)]-A016116(n)` -/
def P862492933796423426.Spec : Prop :=
  ∀ n, P862492933796423426.a n = A005672 n

end A005672

/-! ## A005672.P2135236422183315456

`A097896(n+1)-A060546(n)`
-/

namespace A005672.P2135236422183315456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097896 (n + 1) - A060546 n

end

end A005672.P2135236422183315456

namespace A005672

/-- `A097896(n+1)-A060546(n)` -/
def P2135236422183315456.Spec : Prop :=
  ∀ n, P2135236422183315456.a n = A005672 n

end A005672

/-! ## A005672.P169667177778770863

`A212804(n+2)-A016116(n)`
-/

namespace A005672.P169667177778770863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 2) - A016116 n

end

end A005672.P169667177778770863

namespace A005672

/-- `A212804(n+2)-A016116(n)` -/
def P169667177778770863.Spec : Prop :=
  ∀ n, P169667177778770863.a n = A005672 n

end A005672

/-! ## A005672.P10849260709619494195

`A000071(n+1)+1-A016116(n)`
-/

namespace A005672.P10849260709619494195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + (1 - A016116 n)

end

end A005672.P10849260709619494195

namespace A005672

/-- `A000071(n+1)+1-A016116(n)` -/
def P10849260709619494195.Spec : Prop :=
  ∀ n, P10849260709619494195.a n = A005672 n

end A005672

/-! ## A005672.P8016072186314061109

`A097896(n+1)-A016116(n+1)`
-/

namespace A005672.P8016072186314061109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097896 (n + 1) - A016116 (n + 1)

end

end A005672.P8016072186314061109

namespace A005672

/-- `A097896(n+1)-A016116(n+1)` -/
def P8016072186314061109.Spec : Prop :=
  ∀ n, P8016072186314061109.a n = A005672 n

end A005672

/-! ## A005672.P21838316561740979

`A001611(n+1)-1-A016116(n)`
-/

namespace A005672.P21838316561740979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (n + 1) - 1 - A016116 n

end

end A005672.P21838316561740979

namespace A005672

/-- `A001611(n+1)-1-A016116(n)` -/
def P21838316561740979.Spec : Prop :=
  ∀ n, P21838316561740979.a n = A005672 n

end A005672

/-! ## A005672.P1734886199881470690

`A103609(A004277(n+1))-A016116(n)`
-/

namespace A005672.P1734886199881470690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A004277 (n + 1)).toNat - A016116 n

end

end A005672.P1734886199881470690

namespace A005672

/-- `A103609(A004277(n+1))-A016116(n)` -/
def P1734886199881470690.Spec : Prop :=
  ∀ n, P1734886199881470690.a n = A005672 n

end A005672

/-! ## A005672.P304235795227257188

`A212804(n+2)-A135530(A109613(n))`
-/

namespace A005672.P304235795227257188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 2) - A135530 (A109613 n).toNat

end

end A005672.P304235795227257188

namespace A005672

/-- `A212804(n+2)-A135530(A109613(n))` -/
def P304235795227257188.Spec : Prop :=
  ∀ n, P304235795227257188.a n = A005672 n

end A005672

/-! ## A005672.P1996611102126543187

`Δ[A000045(n)-A164090(n+1)]+A000045(n)`
-/

namespace A005672.P1996611102126543187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A164090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A000045 n

end

end A005672.P1996611102126543187

namespace A005672

/-- `Δ[A000045(n)-A164090(n+1)]+A000045(n)` -/
def P1996611102126543187.Spec : Prop :=
  ∀ n, P1996611102126543187.a n = A005672 n

end A005672

/-! ## A005672.P4439944891558358735

`ogf(x^3/(1-x-3x^2+2x^3+2x^4))`
-/

namespace A005672.P4439944891558358735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 1] [1, -1, -3, 2, 2] n

end

end A005672.P4439944891558358735

namespace A005672

/-- `ogf(x^3/(1-x-3x^2+2x^3+2x^4))` -/
def P4439944891558358735.Spec : Prop :=
  ∀ n, P4439944891558358735.a n = A005672 n

end A005672

/-! ## A005672.P16754653865641049380

`A295724(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A005672.P16754653865641049380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A295724 (n - 1) - a (n - 1)

end

end A005672.P16754653865641049380

namespace A005672

/-- `A295724(n-1)-a(n-1)` -/
def P16754653865641049380.Spec : Prop :=
  ∀ n, P16754653865641049380.a n = A005672 n

end A005672

/-! ## A005672.P13115067580002121171

`A005673(n)-A174959(n)`
-/

namespace A005672.P13115067580002121171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005673 n - A174959 n

end

end A005672.P13115067580002121171

namespace A005672

/-- `A005673(n)-A174959(n)` -/
def P13115067580002121171.Spec : Prop :=
  ∀ n, P13115067580002121171.a n = A005672 n

end A005672

/-! ## A005672.P3169380926621894818

`A295734(n)-A295725(n)`
-/

namespace A005672.P3169380926621894818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295734 n - A295725 n

end

end A005672.P3169380926621894818

namespace A005672

/-- `A295734(n)-A295725(n)` -/
def P3169380926621894818.Spec : Prop :=
  ∀ n, P3169380926621894818.a n = A005672 n

end A005672

/-! ## A005672.P8131464924053490464

`A028892(n+2)-A028892(n)`
-/

namespace A005672.P8131464924053490464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028892 (n + 2) - A028892 n

end

end A005672.P8131464924053490464

namespace A005672

/-- `A028892(n+2)-A028892(n)` -/
def P8131464924053490464.Spec : Prop :=
  ∀ n, P8131464924053490464.a n = A005672 n

end A005672

/-! ## A005672.P13209913581418883957

`A053602(2*(n+1))-A016116(n)`
-/

namespace A005672.P13209913581418883957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * (n + 1)) - A016116 n

end

end A005672.P13209913581418883957

namespace A005672

/-- `A053602(2*(n+1))-A016116(n)` -/
def P13209913581418883957.Spec : Prop :=
  ∀ n, P13209913581418883957.a n = A005672 n

end A005672

/-! ## A005672.P10303242829892460341

`A123231(2*n+1)-A016116(n)`
-/

namespace A005672.P10303242829892460341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123231 (2 * n + 1) - A016116 n

end

end A005672.P10303242829892460341

namespace A005672

/-- `A123231(2*n+1)-A016116(n)` -/
def P10303242829892460341.Spec : Prop :=
  ∀ n, P10303242829892460341.a n = A005672 n

end A005672

/-! ## A005672.P16020097609980906730

`Δ[A005673(n)]`
-/

namespace A005672.P16020097609980906730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005673 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005672.P16020097609980906730

namespace A005672

/-- `Δ[A005673(n)]` -/
def P16020097609980906730.Spec : Prop :=
  ∀ n, P16020097609980906730.a n = A005672 n

end A005672

/-!
# A005673: a(n) = F(n+2) - 2^[ (n+1)/2 ] - 2^[ n/2 ] + 1.

The programs for A005673, the canonical program `A005673.P16604126683258611025` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005673 has offset 0).

The definition of A005673 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005673.P16604126683258611025

`2*a(n-1)+2*a(n-2)-5*a(n-3)+2*a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005673

/-- `2*a(n-1)+2*a(n-2)-5*a(n-3)+2*a(n-5)` -/
def P16604126683258611025.Spec : Prop :=
  ∀ n, P16604126683258611025.a n = A005673 n

theorem P16604126683258611025.correct : P16604126683258611025.Spec := by
  intro n
  simp only [A005673]

end A005673

/-! ## A005673.P13862332554030979088

`∑[A005672(abs(1-n))]`
-/

namespace A005673.P13862332554030979088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005673.P13862332554030979088

namespace A005673

/-- `∑[A005672(abs(1-n))]` -/
def P13862332554030979088.Spec : Prop :=
  ∀ n, P13862332554030979088.a n = A005673 n

end A005673

/-! ## A005673.P15127609336057902876

`A005672(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A005673.P15127609336057902876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A005672 (n - 1) + a (n - 1)

end

end A005673.P15127609336057902876

namespace A005673

/-- `A005672(n-1)+a(n-1)` -/
def P15127609336057902876.Spec : Prop :=
  ∀ n, P15127609336057902876.a n = A005673 n

end A005673

/-! ## A005673.P5331376933210946912

`2*a(n-2)-(1-Δ[A000045(n)])` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A005673.P5331376933210946912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  2 * a (n - 2) - (1 - (f1 (n + 1) - f1 n))

end

end A005673.P5331376933210946912

namespace A005673

/-- `2*a(n-2)-(1-Δ[A000045(n)])` -/
def P5331376933210946912.Spec : Prop :=
  ∀ n, P5331376933210946912.a n = A005673 n

end A005673

/-! ## A005673.P3692938403326524028

`A174959(n)+A005672(n)`
-/

namespace A005673.P3692938403326524028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174959 n + A005672 n

end

end A005673.P3692938403326524028

namespace A005673

/-- `A174959(n)+A005672(n)` -/
def P3692938403326524028.Spec : Prop :=
  ∀ n, P3692938403326524028.a n = A005673 n

end A005673

/-! ## A005673.P10202124001050092749

`A016116(n)+∑[A028892(n)]`
-/

namespace A005673.P10202124001050092749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005673.P10202124001050092749

namespace A005673

/-- `A016116(n)+∑[A028892(n)]` -/
def P10202124001050092749.Spec : Prop :=
  ∀ n, P10202124001050092749.a n = A005673 n

end A005673

/-! ## A005673.P1701007733389306359

`A000045(n+2)-A052955(n)`
-/

namespace A005673.P1701007733389306359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) - A052955 n

end

end A005673.P1701007733389306359

namespace A005673

/-- `A000045(n+2)-A052955(n)` -/
def P1701007733389306359.Spec : Prop :=
  ∀ n, P1701007733389306359.a n = A005673 n

end A005673

/-! ## A005673.P510856819428751115

`A000071(n+2)+1-A052955(n)`
-/

namespace A005673.P510856819428751115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2) + 1 - A052955 n

end

end A005673.P510856819428751115

namespace A005673

/-- `A000071(n+2)+1-A052955(n)` -/
def P510856819428751115.Spec : Prop :=
  ∀ n, P510856819428751115.a n = A005673 n

end A005673

/-! ## A005673.P2314927020156094045

`record[A000045(abs(1-n))]-A052955(n)`
-/

namespace A005673.P2314927020156094045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A052955 n

end

end A005673.P2314927020156094045

namespace A005673

/-- `record[A000045(abs(1-n))]-A052955(n)` -/
def P2314927020156094045.Spec : Prop :=
  ∀ n, P2314927020156094045.a n = A005673 n

end A005673

/-! ## A005673.P18039259217529076246

`A000045(n+2)+1-A029744(n+2)`
-/

namespace A005673.P18039259217529076246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) + (1 - A029744 (n + 2))

end

end A005673.P18039259217529076246

namespace A005673

/-- `A000045(n+2)+1-A029744(n+2)` -/
def P18039259217529076246.Spec : Prop :=
  ∀ n, P18039259217529076246.a n = A005673 n

end A005673

/-! ## A005673.P13513543145930065562

`A000045(n+2)-A027383(n+1)/2`
-/

namespace A005673.P13513543145930065562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 2) : ℚ) - (A027383 (n + 1) : ℚ) / 2

end

end A005673.P13513543145930065562

namespace A005673

/-- `A000045(n+2)-A027383(n+1)/2` -/
def P13513543145930065562.Spec : Prop :=
  ∀ n, P13513543145930065562.a n = (A005673 n : ℚ)

end A005673

/-! ## A005673.P7130238345967259990

`A192727(A004273(n)-n)+A192727(n)`
-/

namespace A005673.P7130238345967259990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192727 (A004273 n - (n : ℤ)).toNat + A192727 n

end

end A005673.P7130238345967259990

namespace A005673

/-- `A192727(A004273(n)-n)+A192727(n)` -/
def P7130238345967259990.Spec : Prop :=
  ∀ n, P7130238345967259990.a n = A005673 n

end A005673

/-! ## A005673.P10051401724501717307

`A192727(A163985(n)-n)+A192727(n)`
-/

namespace A005673.P10051401724501717307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192727 (A163985 n - (n : ℤ)).toNat + A192727 n

end

end A005673.P10051401724501717307

namespace A005673

/-- `A192727(A163985(n)-n)+A192727(n)` -/
def P10051401724501717307.Spec : Prop :=
  ∀ n, P10051401724501717307.a n = A005673 n

end A005673

/-! ## A005673.P13897336842017911600

`A016116(n)+∑[A000045(n)-A016116(n)]`
-/

namespace A005673.P13897336842017911600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005673.P13897336842017911600

namespace A005673

/-- `A016116(n)+∑[A000045(n)-A016116(n)]` -/
def P13897336842017911600.Spec : Prop :=
  ∀ n, P13897336842017911600.a n = A005673 n

end A005673

/-! ## A005673.P12536546113028184422

`A000045(n+1)+A174959(n)-A016116(n)`
-/

namespace A005673.P12536546113028184422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A174959 n - A016116 n)

end

end A005673.P12536546113028184422

namespace A005673

/-- `A000045(n+1)+A174959(n)-A016116(n)` -/
def P12536546113028184422.Spec : Prop :=
  ∀ n, P12536546113028184422.a n = A005673 n

end A005673

/-! ## A005673.P4703050005064263190

`A192727(A004280(n+1)-n)+A192727(n)`
-/

namespace A005673.P4703050005064263190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192727 (A004280 (n + 1) - (n : ℤ)).toNat + A192727 n

end

end A005673.P4703050005064263190

namespace A005673

/-- `A192727(A004280(n+1)-n)+A192727(n)` -/
def P4703050005064263190.Spec : Prop :=
  ∀ n, P4703050005064263190.a n = A005673 n

end A005673

/-! ## A005673.P3136079684941688116

`A295730(n)+1-A000045(n)`
-/

namespace A005673.P3136079684941688116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295730 n + (1 - A000045 n)

end

end A005673.P3136079684941688116

namespace A005673

/-- `A295730(n)+1-A000045(n)` -/
def P3136079684941688116.Spec : Prop :=
  ∀ n, P3136079684941688116.a n = A005673 n

end A005673

/-! ## A005673.P3789879137508843042

`A295724(n)-A000071(n+1)`
-/

namespace A005673.P3789879137508843042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295724 n - A000071 (n + 1)

end

end A005673.P3789879137508843042

namespace A005673

/-- `A295724(n)-A000071(n+1)` -/
def P3789879137508843042.Spec : Prop :=
  ∀ n, P3789879137508843042.a n = A005673 n

end A005673

/-! ## A005673.P13795190776323541384

`A295723(n)+1-A295619(n)`
-/

namespace A005673.P13795190776323541384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295723 n + (1 - A295619 n)

end

end A005673.P13795190776323541384

namespace A005673

/-- `A295723(n)+1-A295619(n)` -/
def P13795190776323541384.Spec : Prop :=
  ∀ n, P13795190776323541384.a n = A005673 n

end A005673

/-! ## A005673.P2448658182437528802

`A295724(n)-A000045(n+1)+1`
-/

namespace A005673.P2448658182437528802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295724 n - A000045 (n + 1) + 1

end

end A005673.P2448658182437528802

namespace A005673

/-- `A295724(n)-A000045(n+1)+1` -/
def P2448658182437528802.Spec : Prop :=
  ∀ n, P2448658182437528802.a n = A005673 n

end A005673

/-!
# A005674: a(n) = 2^(n-1) + 2^[ n/2 ] + 2^[ (n-1)/2 ] - F(n+3).

The programs for A005674, the canonical program `A005674.P5964039898556817370` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005674 has offset 0).

The definition of A005674 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005674.P5964039898556817370

`A007179(n)-Δ[A295731(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005674

/-- `A007179(n)-Δ[A295731(n)]` -/
def P5964039898556817370.Spec : Prop :=
  ∀ n, P5964039898556817370.a n = A005674 n

theorem P5964039898556817370.correct : P5964039898556817370.Spec := by
  intro n
  simp only [A005674]

end A005674

/-! ## A005674.P3768695434145805118

`A007179(n)-A005672(n+2)`
-/

namespace A005674.P3768695434145805118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007179 n - A005672 (n + 2)

end

end A005674.P3768695434145805118

namespace A005674

/-- `A007179(n)-A005672(n+2)` -/
def P3768695434145805118.Spec : Prop :=
  ∀ n, P3768695434145805118.a n = A005674 n

end A005674

/-! ## A005674.P8786078166655708940

`A131577(n)-(A295724(n)+A131577(A110654(n)))`
-/

namespace A005674.P8786078166655708940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n - (A295724 n + A131577 (A110654 n).toNat)

end

end A005674.P8786078166655708940

namespace A005674

/-- `A131577(n)-(A295724(n)+A131577(A110654(n)))` -/
def P8786078166655708940.Spec : Prop :=
  ∀ n, P8786078166655708940.a n = A005674 n

end A005674

/-! ## A005674.P8631012178558264497

`A027558(n)/2`
-/

namespace A005674.P8631012178558264497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027558 n : ℚ) / 2

end

end A005674.P8631012178558264497

namespace A005674

/-- `A027558(n)/2` -/
def P8631012178558264497.Spec : Prop :=
  ∀ n, P8631012178558264497.a n = (A005674 n : ℚ)

end A005674

/-! ## A005674.P17035742938732206669

`(A000079(n)-A027557(n))/2`
-/

namespace A005674.P17035742938732206669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n - A027557 n : ℚ) / 2

end

end A005674.P17035742938732206669

namespace A005674

/-- `(A000079(n)-A027557(n))/2` -/
def P17035742938732206669.Spec : Prop :=
  ∀ n, P17035742938732206669.a n = (A005674 n : ℚ)

end A005674

/-! ## A005674.P2161290021365123219

`(A097895(n+1)-A295857(n))/2`
-/

namespace A005674.P2161290021365123219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097895 (n + 1) - A295857 n : ℚ) / 2

end

end A005674.P2161290021365123219

namespace A005674

/-- `(A097895(n+1)-A295857(n))/2` -/
def P2161290021365123219.Spec : Prop :=
  ∀ n, P2161290021365123219.a n = (A005674 n : ℚ)

end A005674

/-! ## A005674.P1331700040499486281

`A232580(n)+A357284(n)-A357284(n+1)`
-/

namespace A005674.P1331700040499486281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232580 n + (A357284 n - A357284 (n + 1))

end

end A005674.P1331700040499486281

namespace A005674

/-- `A232580(n)+A357284(n)-A357284(n+1)` -/
def P1331700040499486281.Spec : Prop :=
  ∀ n, P1331700040499486281.a n = A005674 n

end A005674

/-! ## A005674.P14296595428802182326

`∑[A027934(n)]-A135094(n)`
-/

namespace A005674.P14296595428802182326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027934 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A135094 n

end

end A005674.P14296595428802182326

namespace A005674

/-- `∑[A027934(n)]-A135094(n)` -/
def P14296595428802182326.Spec : Prop :=
  ∀ n, P14296595428802182326.a n = A005674 n

end A005674

/-! ## A005674.P4628113768624836449

`(A316528(n)-A107659(n))/2`
-/

namespace A005674.P4628113768624836449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316528 n - A107659 n : ℚ) / 2

end

end A005674.P4628113768624836449

namespace A005674

/-- `(A316528(n)-A107659(n))/2` -/
def P4628113768624836449.Spec : Prop :=
  ∀ n, P4628113768624836449.a n = (A005674 n : ℚ)

end A005674

/-!
# A005675: Deficit in peeling rinds.

The programs for A005675, there is no canonical definition to state claims against.
-/

/-! ## A005675.P2746242231031751028

`A165412(or(1, n*(n+2)))-∑{e}[n+1, #]`
-/

namespace A005675.P2746242231031751028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165412 (Nat.lor 1 (n * (n + 2))) - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A005675.P2746242231031751028

/-! ## A005675.P13713301767407250068

`∑[A303590(a(n-1))+n+1]+(n+1)/2^val(n+1, 2)` with `a(0)=0, a(1)=1`
-/

namespace A005675.P13713301767407250068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A303590 (f1 (n - 1)).toNat + (n + 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) + (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

end

end A005675.P13713301767407250068

/-!
# A005676: a(n) = Sum_{k=0..n} C(n-k,4*k).

The programs for A005676, the canonical program `A005676.P6375597071028584675` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005676 has offset 0).

The definition of A005676 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005676.P6375597071028584675

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005676

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)+a(n-5)` -/
def P6375597071028584675.Spec : Prop :=
  ∀ n, P6375597071028584675.a n = A005676 n

theorem P6375597071028584675.correct : P6375597071028584675.Spec := by
  intro n
  simp only [A005676]

end A005676

/-! ## A005676.P12208485696104768142

`A392250(2*n)`
-/

namespace A005676.P12208485696104768142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392250 (2 * n)

end

end A005676.P12208485696104768142

namespace A005676

/-- `A392250(2*n)` -/
def P12208485696104768142.Spec : Prop :=
  ∀ n, P12208485696104768142.a n = A005676 n

end A005676

/-! ## A005676.P17789889104114978237

`A017827(4*n)`
-/

namespace A005676.P17789889104114978237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017827 (4 * n)

end

end A005676.P17789889104114978237

namespace A005676

/-- `A017827(4*n)` -/
def P17789889104114978237.Spec : Prop :=
  ∀ n, P17789889104114978237.a n = A005676 n

end A005676

/-! ## A005676.P16796197767232081719

`A127839(4*n+6)`
-/

namespace A005676.P16796197767232081719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127839 (4 * n + 6)

end

end A005676.P16796197767232081719

namespace A005676

/-- `A127839(4*n+6)` -/
def P16796197767232081719.Spec : Prop :=
  ∀ n, P16796197767232081719.a n = A005676 n

end A005676

/-! ## A005676.P10734326494852748840

`∑[A127839(n+1+n+n+n)]`
-/

namespace A005676.P10734326494852748840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127839 (n + 1 + n + n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005676.P10734326494852748840

namespace A005676

/-- `∑[A127839(n+1+n+n+n)]` -/
def P10734326494852748840.Spec : Prop :=
  ∀ n, P10734326494852748840.a n = A005676 n

end A005676

/-! ## A005676.P4793363159766712446

`A017827(A008574(n))+A000007(n)`
-/

namespace A005676.P4793363159766712446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017827 (A008574 n).toNat + A000007 n

end

end A005676.P4793363159766712446

namespace A005676

/-- `A017827(A008574(n))+A000007(n)` -/
def P4793363159766712446.Spec : Prop :=
  ∀ n, P4793363159766712446.a n = A005676 n

end A005676

/-! ## A005676.P18009186323122664031

`or(A000007(n), A017827(A008587(n)-n))`
-/

namespace A005676.P18009186323122664031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A017827 (A008587 n - (n : ℤ)).toNat)

end

end A005676.P18009186323122664031

namespace A005676

/-- `or(A000007(n), A017827(A008587(n)-n))` -/
def P18009186323122664031.Spec : Prop :=
  ∀ n, P18009186323122664031.a n = A005676 n

end A005676

/-! ## A005676.P15127038417024607571

`Δ[A017827(A016813(n))]`
-/

namespace A005676.P15127038417024607571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017827 (A016813 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005676.P15127038417024607571

namespace A005676

/-- `Δ[A017827(A016813(n))]` -/
def P15127038417024607571.Spec : Prop :=
  ∀ n, P15127038417024607571.a n = A005676 n

end A005676

/-! ## A005676.P7025356560207391848

`Δ[A017827(A008574(n)+1)]`
-/

namespace A005676.P7025356560207391848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017827 (A008574 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005676.P7025356560207391848

namespace A005676

/-- `Δ[A017827(A008574(n)+1)]` -/
def P7025356560207391848.Spec : Prop :=
  ∀ n, P7025356560207391848.a n = A005676 n

end A005676

/-! ## A005676.P12881542367412100804

`Δ[A017827(A113127(n+1)-1)]`
-/

namespace A005676.P12881542367412100804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017827 (A113127 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005676.P12881542367412100804

namespace A005676

/-- `Δ[A017827(A113127(n+1)-1)]` -/
def P12881542367412100804.Spec : Prop :=
  ∀ n, P12881542367412100804.a n = A005676 n

end A005676

/-! ## A005676.P14635235951535921765

`Δ[Δ[A385142(n+2)]]`
-/

namespace A005676.P14635235951535921765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385142 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005676.P14635235951535921765

namespace A005676

/-- `Δ[Δ[A385142(n+2)]]` -/
def P14635235951535921765.Spec : Prop :=
  ∀ n, P14635235951535921765.a n = A005676 n

end A005676

/-! ## A005676.P15489827092159987740

`Δ[Δ[A017827(A113127(n+1))]]`
-/

namespace A005676.P15489827092159987740
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017827 (A113127 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005676.P15489827092159987740

namespace A005676

/-- `Δ[Δ[A017827(A113127(n+1))]]` -/
def P15489827092159987740.Spec : Prop :=
  ∀ n, P15489827092159987740.a n = A005676 n

end A005676

/-!
# A005678: A squarefree ternary sequence.

The programs for A005678, the canonical program `A005678.P5420556999215670440` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005678 has offset 1).

The definition of A005678 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005678.P5420556999215670440

`dr(Δ[A015521(A027615(n))])`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A005678

/-- `dr(Δ[A015521(A027615(n))])` -/
def P5420556999215670440.Spec : Prop :=
  ∀ n, (P5420556999215670440.a n : ℤ) = A005678 (n + 1)

theorem P5420556999215670440.correct : P5420556999215670440.Spec := by
  intro n
  simp only [A005678, Nat.add_sub_cancel]

end A005678

/-! ## A005678.P4908358676040972527

`A047789(Δ[A269027(n)]+1)`
-/

namespace A005678.P4908358676040972527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269027 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047789 (f1 (n + 1) - f1 n + 1).toNat

end

end A005678.P4908358676040972527

namespace A005678

/-- `A047789(Δ[A269027(n)]+1)` -/
def P4908358676040972527.Spec : Prop :=
  ∀ n, P4908358676040972527.a n = A005678 (n + 1)

end A005678

/-! ## A005678.P13880603312804250182

`11%Δ[A268272(2*n)]`
-/

namespace A005678.P13880603312804250182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268272 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 11 (f1 (n + 1) - f1 n)

end

end A005678.P13880603312804250182

namespace A005678

/-- `11%Δ[A268272(2*n)]` -/
def P13880603312804250182.Spec : Prop :=
  ∀ n, P13880603312804250182.a n = A005678 (n + 1)

end A005678

/-! ## A005678.P7475349751287547749

`A004648(Δ[A268272(2*n)])`
-/

namespace A005678.P7475349751287547749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268272 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004648 (f1 (n + 1) - f1 n).toNat

end

end A005678.P7475349751287547749

namespace A005678

/-- `A004648(Δ[A268272(2*n)])` -/
def P7475349751287547749.Spec : Prop :=
  ∀ n, P7475349751287547749.a n = A005678 (n + 1)

end A005678

/-! ## A005678.P10921921214652534957

`A022461(Δ[A268272(2*n)])`
-/

namespace A005678.P10921921214652534957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268272 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022461 (f1 (n + 1) - f1 n).toNat

end

end A005678.P10921921214652534957

namespace A005678

/-- `A022461(Δ[A268272(2*n)])` -/
def P10921921214652534957.Spec : Prop :=
  ∀ n, P10921921214652534957.a n = A005678 (n + 1)

end A005678

/-! ## A005678.P9337958152208811112

`A079087(Δ[A268272(2*n)])`
-/

namespace A005678.P9337958152208811112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268272 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079087 (f1 (n + 1) - f1 n).toNat

end

end A005678.P9337958152208811112

namespace A005678

/-- `A079087(Δ[A268272(2*n)])` -/
def P9337958152208811112.Spec : Prop :=
  ∀ n, P9337958152208811112.a n = A005678 (n + 1)

end A005678

/-! ## A005678.P1365281607464106649

`7%Δ[A268273(2*n+1)]`
-/

namespace A005678.P1365281607464106649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268273 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 7 (f1 (n + 1) - f1 n)

end

end A005678.P1365281607464106649

namespace A005678

/-- `7%Δ[A268273(2*n+1)]` -/
def P1365281607464106649.Spec : Prop :=
  ∀ n, P1365281607464106649.a n = A005678 (n + 1)

end A005678

/-! ## A005678.P7664385195743573280

`A004736(Δ[A268273(Δ[n²])])`
-/

namespace A005678.P7664385195743573280
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268273 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (f1 (n + 1) - f1 n).toNat

end

end A005678.P7664385195743573280

namespace A005678

/-- `A004736(Δ[A268273(Δ[n²])])` -/
def P7664385195743573280.Spec : Prop :=
  ∀ n, P7664385195743573280.a n = A005678 (n + 1)

end A005678

/-! ## A005678.P4917631061551131328

`A028242(Δ[A268273(Δ[n²])])`
-/

namespace A005678.P4917631061551131328
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268273 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (f1 (n + 1) - f1 n).toNat

end

end A005678.P4917631061551131328

namespace A005678

/-- `A028242(Δ[A268273(Δ[n²])])` -/
def P4917631061551131328.Spec : Prop :=
  ∀ n, P4917631061551131328.a n = A005678 (n + 1)

end A005678

/-! ## A005678.P11466427597052417135

`A214717(Δ[A268273(2*n+1)]²)`
-/

namespace A005678.P11466427597052417135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268273 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214717 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A005678.P11466427597052417135

namespace A005678

/-- `A214717(Δ[A268273(2*n+1)]²)` -/
def P11466427597052417135.Spec : Prop :=
  ∀ n, P11466427597052417135.a n = A005678 (n + 1)

end A005678

/-! ## A005678.P13450309419417563980

`A214717(Δ[A268273(2*n+1)]+2)`
-/

namespace A005678.P13450309419417563980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268273 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214717 (f1 (n + 1) - f1 n + 2).toNat

end

end A005678.P13450309419417563980

namespace A005678

/-- `A214717(Δ[A268273(2*n+1)]+2)` -/
def P13450309419417563980.Spec : Prop :=
  ∀ n, P13450309419417563980.a n = A005678 (n + 1)

end A005678

/-! ## A005678.P14856161824898474167

`A065190(Δ[A268273(2*n+1)]-2)`
-/

namespace A005678.P14856161824898474167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268273 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (f1 (n + 1) - f1 n - 2).toNat

end

end A005678.P14856161824898474167

namespace A005678

/-- `A065190(Δ[A268273(2*n+1)]-2)` -/
def P14856161824898474167.Spec : Prop :=
  ∀ n, P14856161824898474167.a n = A005678 (n + 1)

end A005678

/-! ## A005678.P10745316564910470870

`A000005(and(5, Δ[A268273(2*n+1)]))`
-/

namespace A005678.P10745316564910470870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268273 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.land 5 (f1 (n + 1) - f1 n)).toNat

end

end A005678.P10745316564910470870

namespace A005678

/-- `A000005(and(5, Δ[A268273(2*n+1)]))` -/
def P10745316564910470870.Spec : Prop :=
  ∀ n, P10745316564910470870.a n = A005678 (n + 1)

end A005678

/-!
# A005679: A squarefree (or Thue-Morse) ternary sequence: closed under a->abc, b->ac, c->b.

The programs for A005679, the canonical program `A005679.P11330707442932993347` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005679 has offset 1).

The definition of A005679 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005679.P15654181138644617489

`A036578(n)+1`
-/

namespace A005679.P15654181138644617489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036578 n + 1

end

end A005679.P15654181138644617489

namespace A005679

/-- `A036578(n)+1` -/
def P15654181138644617489.Spec : Prop :=
  ∀ n, P15654181138644617489.a n = A005679 (n + 1)

end A005679

/-! ## A005679.P73181647610217041

`3-A036579(n)`
-/

namespace A005679.P73181647610217041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A036579 n

end

end A005679.P73181647610217041

namespace A005679

/-- `3-A036579(n)` -/
def P73181647610217041.Spec : Prop :=
  ∀ n, P73181647610217041.a n = A005679 (n + 1)

end A005679

/-! ## A005679.P8755955033778032078

`4-A036582(n)`
-/

namespace A005679.P8755955033778032078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A036582 n

end

end A005679.P8755955033778032078

namespace A005679

/-- `4-A036582(n)` -/
def P8755955033778032078.Spec : Prop :=
  ∀ n, P8755955033778032078.a n = A005679 (n + 1)

end A005679

/-! ## A005679.P7340327764522951894

`a(A036584(n))` with `a(0)=2, a(1)=1, a(2)=3, a(3)=2`
-/

namespace A005679.P7340327764522951894
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 3, 2] fun n a =>
  a (A036584 n).toNat

end

end A005679.P7340327764522951894

namespace A005679

/-- `a(A036584(n))` -/
def P7340327764522951894.Spec : Prop :=
  ∀ n, (P7340327764522951894.a n : ℤ) = A005679 (n + 1)

end A005679

/-! ## A005679.P7791162961960849257

`C(2, A036581(n)²)+1`
-/

namespace A005679.P7791162961960849257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A036581 n ^ 2).toNat + 1

end

end A005679.P7791162961960849257

namespace A005679

/-- `C(2, A036581(n)²)+1` -/
def P7791162961960849257.Spec : Prop :=
  ∀ n, (P7791162961960849257.a n : ℤ) = A005679 (n + 1)

end A005679

/-! ## A005679.P12104733864831878433

`dr(C(38, A007413(n+1)))`
-/

namespace A005679.P12104733864831878433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Nat.choose 38 (A007413 (n + 1)).toNat : ℤ)

end

end A005679.P12104733864831878433

namespace A005679

/-- `dr(C(38, A007413(n+1)))` -/
def P12104733864831878433.Spec : Prop :=
  ∀ n, (P12104733864831878433.a n : ℤ) = A005679 (n + 1)

end A005679

/-! ## A005679.P11808864686596353296

`val(A354384(n+1), 2)+1`
-/

namespace A005679.P11808864686596353296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A354384 (n + 1)).toNat 2 + 1

end

end A005679.P11808864686596353296

namespace A005679

/-- `val(A354384(n+1), 2)+1` -/
def P11808864686596353296.Spec : Prop :=
  ∀ n, (P11808864686596353296.a n : ℤ) = A005679 (n + 1)

end A005679

/-! ## A005679.P7870198065257009736

`A130784(A233775(n+1))`
-/

namespace A005679.P7870198065257009736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130784 (A233775 (n + 1)).toNat

end

end A005679.P7870198065257009736

namespace A005679

/-- `A130784(A233775(n+1))` -/
def P7870198065257009736.Spec : Prop :=
  ∀ n, P7870198065257009736.a n = A005679 (n + 1)

end A005679

/-! ## A005679.P14840074732627724281

`A036586(n)+A036580(n)`
-/

namespace A005679.P14840074732627724281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036586 n + A036580 n

end

end A005679.P14840074732627724281

namespace A005679

/-- `A036586(n)+A036580(n)` -/
def P14840074732627724281.Spec : Prop :=
  ∀ n, P14840074732627724281.a n = A005679 (n + 1)

end A005679

/-! ## A005679.P2274697702963295068

`A036584(floor(ratio[A001285(n)]))`
-/

namespace A005679.P2274697702963295068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036584 ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋.toNat

end

end A005679.P2274697702963295068

namespace A005679

/-- `A036584(floor(ratio[A001285(n)]))` -/
def P2274697702963295068.Spec : Prop :=
  ∀ n, P2274697702963295068.a n = A005679 (n + 1)

end A005679

/-! ## A005679.P15202952507045176593

`A161916(floor(ratio[A001285(n)]))`
-/

namespace A005679.P15202952507045176593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161916 ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋.toNat

end

end A005679.P15202952507045176593

namespace A005679

/-- `A161916(floor(ratio[A001285(n)]))` -/
def P15202952507045176593.Spec : Prop :=
  ∀ n, P15202952507045176593.a n = A005679 (n + 1)

end A005679

/-! ## A005679.P11330707442932993347

`A000032(Δ[A010059(n)]+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A005679

/-- `A000032(Δ[A010059(n)]+1)` -/
def P11330707442932993347.Spec : Prop :=
  ∀ n, P11330707442932993347.a n = A005679 (n + 1)

theorem P11330707442932993347.correct : P11330707442932993347.Spec := by
  intro n
  simp only [A005679, Nat.add_sub_cancel]

end A005679

/-! ## A005679.P651528500441914600

`A000032(1-Δ[A001285(n)])`
-/

namespace A005679.P651528500441914600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (1 - (f1 (n + 1) - f1 n)).toNat

end

end A005679.P651528500441914600

namespace A005679

/-- `A000032(1-Δ[A001285(n)])` -/
def P651528500441914600.Spec : Prop :=
  ∀ n, P651528500441914600.a n = A005679 (n + 1)

end A005679

/-! ## A005679.P2189182764306224246

`A117407(Δ[A010059(n)]+2)`
-/

namespace A005679.P2189182764306224246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117407 (f1 (n + 1) - f1 n + 2).toNat

end

end A005679.P2189182764306224246

namespace A005679

/-- `A117407(Δ[A010059(n)]+2)` -/
def P2189182764306224246.Spec : Prop :=
  ∀ n, P2189182764306224246.a n = A005679 (n + 1)

end A005679

/-! ## A005679.P17118846051587822436

`A036584(n)-A029883(n+1)`
-/

namespace A005679.P17118846051587822436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036584 n - A029883 (n + 1)

end

end A005679.P17118846051587822436

namespace A005679

/-- `A036584(n)-A029883(n+1)` -/
def P17118846051587822436.Spec : Prop :=
  ∀ n, P17118846051587822436.a n = A005679 (n + 1)

end A005679

/-! ## A005679.P17364562923954090267

`A354384(n+1)-A036581(n)`
-/

namespace A005679.P17364562923954090267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354384 (n + 1) - A036581 n

end

end A005679.P17364562923954090267

namespace A005679

/-- `A354384(n+1)-A036581(n)` -/
def P17364562923954090267.Spec : Prop :=
  ∀ n, P17364562923954090267.a n = A005679 (n + 1)

end A005679

/-! ## A005679.P2474808878251468685

`xor(A035263(n+1), A036584(n))`
-/

namespace A005679.P2474808878251468685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A035263 (n + 1)) (A036584 n)

end

end A005679.P2474808878251468685

namespace A005679

/-- `xor(A035263(n+1), A036584(n))` -/
def P2474808878251468685.Spec : Prop :=
  ∀ n, P2474808878251468685.a n = A005679 (n + 1)

end A005679

/-! ## A005679.P17768938335938284394

`xor(A036583(n), A036585(n+1))`
-/

namespace A005679.P17768938335938284394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A036583 n) (A036585 (n + 1))

end

end A005679.P17768938335938284394

namespace A005679

/-- `xor(A036583(n), A036585(n+1))` -/
def P17768938335938284394.Spec : Prop :=
  ∀ n, P17768938335938284394.a n = A005679 (n + 1)

end A005679

/-! ## A005679.P8835976481947852433

`A000032(Δ[A000069(n+1)]-1)`
-/

namespace A005679.P8835976481947852433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f1 (n + 1) - f1 n - 1).toNat

end

end A005679.P8835976481947852433

namespace A005679

/-- `A000032(Δ[A000069(n+1)]-1)` -/
def P8835976481947852433.Spec : Prop :=
  ∀ n, P8835976481947852433.a n = A005679 (n + 1)

end A005679

/-! ## A005679.P14659041237912525229

`A001222(Δ[A000069(n+1)]+5)`
-/

namespace A005679.P14659041237912525229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n + 5).toNat

end

end A005679.P14659041237912525229

namespace A005679

/-- `A001222(Δ[A000069(n+1)]+5)` -/
def P14659041237912525229.Spec : Prop :=
  ∀ n, P14659041237912525229.a n = A005679 (n + 1)

end A005679

/-!
# A005680: A squarefree ternary sequence.

The programs for A005680, the canonical program `A005680.P13585271873868182678` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005680 has offset 1).

The definition of A005680 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005680.P16483359481014810734

`a(A007413(n))` with `a(0)=1, a(1)=2, a(2)=3, a(3)=1`
-/

namespace A005680.P16483359481014810734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 1] fun n a =>
  a (A007413 n).toNat

end

end A005680.P16483359481014810734

namespace A005680

/-- `a(A007413(n))` -/
def P16483359481014810734.Spec : Prop :=
  ∀ n, (P16483359481014810734.a n : ℤ) = A005680 (n + 1)

end A005680

/-! ## A005680.P1741837673805496118

`(A233775(n)-1)%3+1`
-/

namespace A005680.P1741837673805496118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233775 n - 1) 3 + 1

end

end A005680.P1741837673805496118

namespace A005680

/-- `(A233775(n)-1)%3+1` -/
def P1741837673805496118.Spec : Prop :=
  ∀ n, P1741837673805496118.a n = A005680 (n + 1)

end A005680

/-! ## A005680.P2719124459206708194

`A010882(A233775(n)-1)`
-/

namespace A005680.P2719124459206708194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (A233775 n - 1).toNat

end

end A005680.P2719124459206708194

namespace A005680

/-- `A010882(A233775(n)-1)` -/
def P2719124459206708194.Spec : Prop :=
  ∀ n, P2719124459206708194.a n = A005680 (n + 1)

end A005680

/-! ## A005680.P13585271873868182678

`A135764(a(A316826(n)))` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A005680

/-- `A135764(a(A316826(n)))` -/
def P13585271873868182678.Spec : Prop :=
  ∀ n, P13585271873868182678.a n = A005680 (n + 1)

theorem P13585271873868182678.correct : P13585271873868182678.Spec := by
  intro n
  simp only [A005680, Nat.add_sub_cancel]

end A005680

/-! ## A005680.P2866238483362087217

`A010872(A233775(n)-1)+1`
-/

namespace A005680.P2866238483362087217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A233775 n - 1).toNat + 1

end

end A005680.P2866238483362087217

namespace A005680

/-- `A010872(A233775(n)-1)+1` -/
def P2866238483362087217.Spec : Prop :=
  ∀ n, P2866238483362087217.a n = A005680 (n + 1)

end A005680

/-! ## A005680.P471685201378990609

`A007413(Δ[A000069(floor(1/(n+1)+n))]+1)`
-/

namespace A005680.P471685201378990609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 ⌊1 / (n + 1 : ℚ) + (n : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007413 (f1 (n + 1) - f1 n + 1).toNat

end

end A005680.P471685201378990609

namespace A005680

/-- `A007413(Δ[A000069(floor(1/(n+1)+n))]+1)` -/
def P471685201378990609.Spec : Prop :=
  ∀ n, P471685201378990609.a n = A005680 (n + 1)

end A005680

/-! ## A005680.P3623647780169921983

`A130784(A130784(n)+n-A233775(n))`
-/

namespace A005680.P3623647780169921983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130784 (A130784 n + ((n : ℤ) - A233775 n)).toNat

end

end A005680.P3623647780169921983

namespace A005680

/-- `A130784(A130784(n)+n-A233775(n))` -/
def P3623647780169921983.Spec : Prop :=
  ∀ n, P3623647780169921983.a n = A005680 (n + 1)

end A005680

/-! ## A005680.P14208697593942171671

`A130784(n-(A233775(n)-A130784(n)))`
-/

namespace A005680.P14208697593942171671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130784 ((n : ℤ) - (A233775 n - A130784 n)).toNat

end

end A005680.P14208697593942171671

namespace A005680

/-- `A130784(n-(A233775(n)-A130784(n)))` -/
def P14208697593942171671.Spec : Prop :=
  ∀ n, P14208697593942171671.a n = A005680 (n + 1)

end A005680

/-! ## A005680.P6563780709207718024

`A006068(Δ[comp[A181155(n+1)]])`
-/

namespace A005680.P6563780709207718024
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181155 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A005680.P6563780709207718024

namespace A005680

/-- `A006068(Δ[comp[A181155(n+1)]])` -/
def P6563780709207718024.Spec : Prop :=
  ∀ n, P6563780709207718024.a n = A005680 (n + 1)

end A005680

/-! ## A005680.P1068975465184525199

`A277820(Δ[comp[A181155(n+1)]])`
-/

namespace A005680.P1068975465184525199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181155 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277820 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A005680.P1068975465184525199

namespace A005680

/-- `A277820(Δ[comp[A181155(n+1)]])` -/
def P1068975465184525199.Spec : Prop :=
  ∀ n, P1068975465184525199.a n = A005680 (n + 1)

end A005680

/-! ## A005680.P17012369637620344459

`A277880(Δ[comp[A181155(n+1)]])`
-/

namespace A005680.P17012369637620344459
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181155 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277880 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A005680.P17012369637620344459

namespace A005680

/-- `A277880(Δ[comp[A181155(n+1)]])` -/
def P17012369637620344459.Spec : Prop :=
  ∀ n, P17012369637620344459.a n = A005680 (n + 1)

end A005680

/-! ## A005680.P4225174687256435553

`A277881(Δ[comp[A181155(n+1)]])`
-/

namespace A005680.P4225174687256435553
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181155 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277881 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A005680.P4225174687256435553

namespace A005680

/-- `A277881(Δ[comp[A181155(n+1)]])` -/
def P4225174687256435553.Spec : Prop :=
  ∀ n, P4225174687256435553.a n = A005680 (n + 1)

end A005680

/-! ## A005680.P17505050212311224952

`A130784(2*A233775(n)+1)`
-/

namespace A005680.P17505050212311224952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130784 (2 * A233775 n + 1).toNat

end

end A005680.P17505050212311224952

namespace A005680

/-- `A130784(2*A233775(n)+1)` -/
def P17505050212311224952.Spec : Prop :=
  ∀ n, P17505050212311224952.a n = A005680 (n + 1)

end A005680

/-! ## A005680.P3624837960187343341

`A130784(2*(A233775(n)-1))`
-/

namespace A005680.P3624837960187343341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130784 (2 * (A233775 n - 1)).toNat

end

end A005680.P3624837960187343341

namespace A005680

/-- `A130784(2*(A233775(n)-1))` -/
def P3624837960187343341.Spec : Prop :=
  ∀ n, P3624837960187343341.a n = A005680 (n + 1)

end A005680

/-! ## A005680.P6205574070077834697

`A130784(A233775(n)+A233775(n)+1)`
-/

namespace A005680.P6205574070077834697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130784 (A233775 n + (A233775 n + 1)).toNat

end

end A005680.P6205574070077834697

namespace A005680

/-- `A130784(A233775(n)+A233775(n)+1)` -/
def P6205574070077834697.Spec : Prop :=
  ∀ n, P6205574070077834697.a n = A005680 (n + 1)

end A005680

/-! ## A005680.P16579667971495861344

`A001285(n)+A001285(n+1)*A285383(2*n+1)`
-/

namespace A005680.P16579667971495861344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n + A001285 (n + 1) * A285383 (2 * n + 1)

end

end A005680.P16579667971495861344

namespace A005680

/-- `A001285(n)+A001285(n+1)*A285383(2*n+1)` -/
def P16579667971495861344.Spec : Prop :=
  ∀ n, P16579667971495861344.a n = A005680 (n + 1)

end A005680

/-! ## A005680.P14953475455725340876

`A036583(A206332(n+2)-2)`
-/

namespace A005680.P14953475455725340876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036583 (A206332 (n + 2) - 2).toNat

end

end A005680.P14953475455725340876

namespace A005680

/-- `A036583(A206332(n+2)-2)` -/
def P14953475455725340876.Spec : Prop :=
  ∀ n, P14953475455725340876.a n = A005680 (n + 1)

end A005680

/-! ## A005680.P3858206257559168935

`A019426(A019426(n)*A316826(n))+1`
-/

namespace A005680.P3858206257559168935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A019426 n * A316826 n).toNat + 1

end

end A005680.P3858206257559168935

namespace A005680

/-- `A019426(A019426(n)*A316826(n))+1` -/
def P3858206257559168935.Spec : Prop :=
  ∀ n, P3858206257559168935.a n = A005680 (n + 1)

end A005680

/-! ## A005680.P5636247807228203881

`A050604(A006257(2*n)*A316826(n))`
-/

namespace A005680.P5636247807228203881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050604 (A006257 (2 * n) * A316826 n).toNat

end

end A005680.P5636247807228203881

namespace A005680

/-- `A050604(A006257(2*n)*A316826(n))` -/
def P5636247807228203881.Spec : Prop :=
  ∀ n, P5636247807228203881.a n = A005680 (n + 1)

end A005680

/-! ## A005680.P14467998103615604092

`4-A316826(n*A316826(n)²)`
-/

namespace A005680.P14467998103615604092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A316826 ((n : ℤ) * A316826 n ^ 2).toNat

end

end A005680.P14467998103615604092

namespace A005680

/-- `4-A316826(n*A316826(n)²)` -/
def P14467998103615604092.Spec : Prop :=
  ∀ n, P14467998103615604092.a n = A005680 (n + 1)

end A005680

/-!
# A005681: A squarefree quaternary sequence.

The programs for A005681, the canonical program `A005681.P11362584673414120459` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005681 has offset 1).

The definition of A005681 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005681.P10320937386211644249

`A245188(n)+1`
-/

namespace A005681.P10320937386211644249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245188 n + 1

end

end A005681.P10320937386211644249

namespace A005681

/-- `A245188(n)+1` -/
def P10320937386211644249.Spec : Prop :=
  ∀ n, P10320937386211644249.a n = A005681 (n + 1)

end A005681

/-! ## A005681.P11362584673414120459

`A268676(n)+A010060(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A005681

/-- `A268676(n)+A010060(n+1)` -/
def P11362584673414120459.Spec : Prop :=
  ∀ n, P11362584673414120459.a n = A005681 (n + 1)

theorem P11362584673414120459.correct : P11362584673414120459.Spec := by
  intro n
  simp only [A005681, Nat.add_sub_cancel]

end A005681

/-! ## A005681.P6352692163700599039

`xor(A001285(n), A096268(n))+1`
-/

namespace A005681.P6352692163700599039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001285 n) (A096268 n) + 1

end

end A005681.P6352692163700599039

namespace A005681

/-- `xor(A001285(n), A096268(n))+1` -/
def P6352692163700599039.Spec : Prop :=
  ∀ n, P6352692163700599039.a n = A005681 (n + 1)

end A005681

/-! ## A005681.P10233834911189441871

`A001285(n)²-Δ[A010059(n)]`
-/

namespace A005681.P10233834911189441871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n ^ 2 - (f1 (n + 1) - f1 n)

end

end A005681.P10233834911189441871

namespace A005681

/-- `A001285(n)²-Δ[A010059(n)]` -/
def P10233834911189441871.Spec : Prop :=
  ∀ n, P10233834911189441871.a n = A005681 (n + 1)

end A005681

/-! ## A005681.P15834292196989397908

`A029883(n+1)+A001285(n)²`
-/

namespace A005681.P15834292196989397908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029883 (n + 1) + A001285 n ^ 2

end

end A005681.P15834292196989397908

namespace A005681

/-- `A029883(n+1)+A001285(n)²` -/
def P15834292196989397908.Spec : Prop :=
  ∀ n, P15834292196989397908.a n = A005681 (n + 1)

end A005681

/-! ## A005681.P8379532315025732934

`A001285(n)²+1-A036580(n)`
-/

namespace A005681.P8379532315025732934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n ^ 2 + (1 - A036580 n)

end

end A005681.P8379532315025732934

namespace A005681

/-- `A001285(n)²+1-A036580(n)` -/
def P8379532315025732934.Spec : Prop :=
  ∀ n, P8379532315025732934.a n = A005681 (n + 1)

end A005681

/-! ## A005681.P284825689019625971

`A268676(n)+1-A092436(n+1)`
-/

namespace A005681.P284825689019625971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268676 n + (1 - A092436 (n + 1))

end

end A005681.P284825689019625971

namespace A005681

/-- `A268676(n)+1-A092436(n+1)` -/
def P284825689019625971.Spec : Prop :=
  ∀ n, P284825689019625971.a n = A005681 (n + 1)

end A005681

/-! ## A005681.P7888723011254139387

`A010060(n+1)+2-A106400(n)`
-/

namespace A005681.P7888723011254139387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (n + 1) + (2 - A106400 n)

end

end A005681.P7888723011254139387

namespace A005681

/-- `A010060(n+1)+2-A106400(n)` -/
def P7888723011254139387.Spec : Prop :=
  ∀ n, P7888723011254139387.a n = A005681 (n + 1)

end A005681

/-! ## A005681.P17914200445069437316

`A001285(n+1)+2*A010060(n)`
-/

namespace A005681.P17914200445069437316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (n + 1) + 2 * A010060 n

end

end A005681.P17914200445069437316

namespace A005681

/-- `A001285(n+1)+2*A010060(n)` -/
def P17914200445069437316.Spec : Prop :=
  ∀ n, P17914200445069437316.a n = A005681 (n + 1)

end A005681

/-! ## A005681.P13410410052562424147

`A001285(n+1)+and(2, A001285(n))`
-/

namespace A005681.P13410410052562424147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (n + 1) + Int.land 2 (A001285 n)

end

end A005681.P13410410052562424147

namespace A005681

/-- `A001285(n+1)+and(2, A001285(n))` -/
def P13410410052562424147.Spec : Prop :=
  ∀ n, P13410410052562424147.a n = A005681 (n + 1)

end A005681

/-! ## A005681.P597225188107689233

`A029883(n+1)+(A010060(n)+1)²`
-/

namespace A005681.P597225188107689233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029883 (n + 1) + (A010060 n + 1) ^ 2

end

end A005681.P597225188107689233

namespace A005681

/-- `A029883(n+1)+(A010060(n)+1)²` -/
def P597225188107689233.Spec : Prop :=
  ∀ n, P597225188107689233.a n = A005681 (n + 1)

end A005681

/-! ## A005681.P18024025693772131808

`A036577(n+1)+A001285(n)²-1`
-/

namespace A005681.P18024025693772131808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036577 (n + 1) + (A001285 n ^ 2 - 1)

end

end A005681.P18024025693772131808

namespace A005681

/-- `A036577(n+1)+A001285(n)²-1` -/
def P18024025693772131808.Spec : Prop :=
  ∀ n, P18024025693772131808.a n = A005681 (n + 1)

end A005681

/-! ## A005681.P1364309707086704554

`A001285(n)²+2-A007413(n+1)`
-/

namespace A005681.P1364309707086704554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n ^ 2 + (2 - A007413 (n + 1))

end

end A005681.P1364309707086704554

namespace A005681

/-- `A001285(n)²+2-A007413(n+1)` -/
def P1364309707086704554.Spec : Prop :=
  ∀ n, P1364309707086704554.a n = A005681 (n + 1)

end A005681

/-! ## A005681.P7558079909853836094

`A036585(n+1)+A001285(n)²-2`
-/

namespace A005681.P7558079909853836094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036585 (n + 1) + (A001285 n ^ 2 - 2)

end

end A005681.P7558079909853836094

namespace A005681

/-- `A036585(n+1)+A001285(n)²-2` -/
def P7558079909853836094.Spec : Prop :=
  ∀ n, P7558079909853836094.a n = A005681 (n + 1)

end A005681

/-! ## A005681.P18263696013899024030

`A001285(n+1)-A101676(A001316(n))`
-/

namespace A005681.P18263696013899024030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (n + 1) - A101676 (A001316 n).toNat

end

end A005681.P18263696013899024030

namespace A005681

/-- `A001285(n+1)-A101676(A001316(n))` -/
def P18263696013899024030.Spec : Prop :=
  ∀ n, P18263696013899024030.a n = A005681 (n + 1)

end A005681

/-! ## A005681.P12428177141050237926

`A010060(n+1)+A010060(n)+A001285(n)`
-/

namespace A005681.P12428177141050237926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (n + 1) + (A010060 n + A001285 n)

end

end A005681.P12428177141050237926

namespace A005681

/-- `A010060(n+1)+A010060(n)+A001285(n)` -/
def P12428177141050237926.Spec : Prop :=
  ∀ n, P12428177141050237926.a n = A005681 (n + 1)

end A005681

/-! ## A005681.P13862418940523234689

`A001285(n+1)+A001285(n)-A010059(n)`
-/

namespace A005681.P13862418940523234689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (n + 1) + (A001285 n - A010059 n)

end

end A005681.P13862418940523234689

namespace A005681

/-- `A001285(n+1)+A001285(n)-A010059(n)` -/
def P13862418940523234689.Spec : Prop :=
  ∀ n, P13862418940523234689.a n = A005681 (n + 1)

end A005681

/-! ## A005681.P6402957951006541960

`A001285(n+1)+A026147(n+1)-A000069(n+1)`
-/

namespace A005681.P6402957951006541960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (n + 1) + (A026147 (n + 1) - A000069 (n + 1))

end

end A005681.P6402957951006541960

namespace A005681

/-- `A001285(n+1)+A026147(n+1)-A000069(n+1)` -/
def P6402957951006541960.Spec : Prop :=
  ∀ n, P6402957951006541960.a n = A005681 (n + 1)

end A005681

/-! ## A005681.P10349360409769063329

`A010060(n+1)+A140592(n+1)-A000069(n+1)`
-/

namespace A005681.P10349360409769063329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (n + 1) + (A140592 (n + 1) - A000069 (n + 1))

end

end A005681.P10349360409769063329

namespace A005681

/-- `A010060(n+1)+A140592(n+1)-A000069(n+1)` -/
def P10349360409769063329.Spec : Prop :=
  ∀ n, P10349360409769063329.a n = A005681 (n + 1)

end A005681

/-! ## A005681.P5774008133797125760

`A026147(n+2)-2*(A010059(n)+n)`
-/

namespace A005681.P5774008133797125760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026147 (n + 2) - 2 * (A010059 n + (n : ℤ))

end

end A005681.P5774008133797125760

namespace A005681

/-- `A026147(n+2)-2*(A010059(n)+n)` -/
def P5774008133797125760.Spec : Prop :=
  ∀ n, P5774008133797125760.a n = A005681 (n + 1)

end A005681

/-!
# A005682: Number of Twopins positions.

The programs for A005682, the canonical program `A005682.P13854821474382040934` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005682 has offset 5).

The definition of A005682 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005682.P13854821474382040934

`2*a(n-1)-a(n-4)-a(n-6)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=15, a(5)=28`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005682

/-- `2*a(n-1)-a(n-4)-a(n-6)` -/
def P13854821474382040934.Spec : Prop :=
  ∀ n, P13854821474382040934.a n = A005682 (n + 5)

theorem P13854821474382040934.correct : P13854821474382040934.Spec := by
  intro n
  simp only [A005682, Nat.add_sub_cancel]

end A005682

/-! ## A005682.P9533062830212668997

`A005683(n+5)-A000931(n+9)`
-/

namespace A005682.P9533062830212668997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005683 (n + 5) - A000931 (n + 9)

end

end A005682.P9533062830212668997

namespace A005682

/-- `A005683(n+5)-A000931(n+9)` -/
def P9533062830212668997.Spec : Prop :=
  ∀ n, P9533062830212668997.a n = A005682 (n + 5)

end A005682

/-! ## A005682.P244093694973100203

`∑[A173692(2*(n+2))-A173692(n)]`
-/

namespace A005682.P244093694973100203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173692 (2 * (n + 2)) - A173692 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005682.P244093694973100203

namespace A005682

/-- `∑[A173692(2*(n+2))-A173692(n)]` -/
def P244093694973100203.Spec : Prop :=
  ∀ n, P244093694973100203.a n = A005682 (n + 5)

end A005682

/-! ## A005682.P16218977204003335686

`A173692(2*n+7)-A173692(n+5)`
-/

namespace A005682.P16218977204003335686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173692 (2 * n + 7) - A173692 (n + 5)

end

end A005682.P16218977204003335686

namespace A005682

/-- `A173692(2*n+7)-A173692(n+5)` -/
def P16218977204003335686.Spec : Prop :=
  ∀ n, P16218977204003335686.a n = A005682 (n + 5)

end A005682

/-! ## A005682.P11674423090050596920

`A005251(n+5)-A005683(n+5)`
-/

namespace A005682.P11674423090050596920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 (n + 5) - A005683 (n + 5)

end

end A005682.P11674423090050596920

namespace A005682

/-- `A005251(n+5)-A005683(n+5)` -/
def P11674423090050596920.Spec : Prop :=
  ∀ n, P11674423090050596920.a n = A005682 (n + 5)

end A005682

/-! ## A005682.P5077264326372137883

`(A164001(2*(n+2))-A164001(n+2))/2`
-/

namespace A005682.P5077264326372137883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164001 (2 * (n + 2)) - A164001 (n + 2) : ℚ) / 2

end

end A005682.P5077264326372137883

namespace A005682

/-- `(A164001(2*(n+2))-A164001(n+2))/2` -/
def P5077264326372137883.Spec : Prop :=
  ∀ n, P5077264326372137883.a n = (A005682 (n + 5) : ℚ)

end A005682

/-!
# A005683: Numbers of Twopins positions.

The programs for A005683, the canonical program `A005683.P7143134002909578143` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005683 has offset 3).

The definition of A005683 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005683.P7143134002909578143

`2*a(n-1)-a(n-4)-a(n-6)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=8, a(5)=13`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005683

/-- `2*a(n-1)-a(n-4)-a(n-6)` -/
def P7143134002909578143.Spec : Prop :=
  ∀ n, P7143134002909578143.a n = A005683 (n + 3)

theorem P7143134002909578143.correct : P7143134002909578143.Spec := by
  intro n
  simp only [A005683, Nat.add_sub_cancel]

end A005683

/-! ## A005683.P7372689499785139133

`(A005251(n+3)+A000931(n+7))/2`
-/

namespace A005683.P7372689499785139133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005251 (n + 3) + A000931 (n + 7) : ℚ) / 2

end

end A005683.P7372689499785139133

namespace A005683

/-- `(A005251(n+3)+A000931(n+7))/2` -/
def P7372689499785139133.Spec : Prop :=
  ∀ n, P7372689499785139133.a n = (A005683 (n + 3) : ℚ)

end A005683

/-! ## A005683.P4786978281172922023

`A068930(2*(n+2))`
-/

namespace A005683.P4786978281172922023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068930 (2 * (n + 2))

end

end A005683.P4786978281172922023

namespace A005683

/-- `A068930(2*(n+2))` -/
def P4786978281172922023.Spec : Prop :=
  ∀ n, P4786978281172922023.a n = A005683 (n + 3)

end A005683

/-! ## A005683.P14448653475603515790

`(A134816(n+3)+A005251(n+3))/2`
-/

namespace A005683.P14448653475603515790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134816 (n + 3) + A005251 (n + 3) : ℚ) / 2

end

end A005683.P14448653475603515790

namespace A005683

/-- `(A134816(n+3)+A005251(n+3))/2` -/
def P14448653475603515790.Spec : Prop :=
  ∀ n, P14448653475603515790.a n = (A005683 (n + 3) : ℚ)

end A005683

/-! ## A005683.P16027352873589253812

`(A182097(2*(n+2))+A182097(n+4))/2`
-/

namespace A005683.P16027352873589253812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182097 (2 * (n + 2)) + A182097 (n + 4) : ℚ) / 2

end

end A005683.P16027352873589253812

namespace A005683

/-- `(A182097(2*(n+2))+A182097(n+4))/2` -/
def P16027352873589253812.Spec : Prop :=
  ∀ n, P16027352873589253812.a n = (A005683 (n + 3) : ℚ)

end A005683

/-! ## A005683.P16137019185740386704

`(A000931(2*n+7)+A000931(n+7))/2`
-/

namespace A005683.P16137019185740386704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000931 (2 * n + 7) + A000931 (n + 7) : ℚ) / 2

end

end A005683.P16137019185740386704

namespace A005683

/-- `(A000931(2*n+7)+A000931(n+7))/2` -/
def P16137019185740386704.Spec : Prop :=
  ∀ n, P16137019185740386704.a n = (A005683 (n + 3) : ℚ)

end A005683

/-! ## A005683.P18312209665423681209

`Δ[A005682(n+6)]-A005682(n+5)`
-/

namespace A005683.P18312209665423681209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005682 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A005682 (n + 5)

end

end A005683.P18312209665423681209

namespace A005683

/-- `Δ[A005682(n+6)]-A005682(n+5)` -/
def P18312209665423681209.Spec : Prop :=
  ∀ n, P18312209665423681209.a n = A005683 (n + 3)

end A005683

/-!
# A005684: Number of Twopins positions.

The programs for A005684, there is no canonical definition to state claims against.
-/

/-! ## A005684.P7934265989972460799

`A004697(n+6)-A004526(A103609(n+7))`
-/

namespace A005684.P7934265989972460799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004697 (n + 6) - A004526 (A103609 (n + 7)).toNat

end

end A005684.P7934265989972460799

/-! ## A005684.P17682474845608103150

`A193921(∑[n+1]+C(floor(n/2), 2)+2)`
-/

namespace A005684.P17682474845608103150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193921 (∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose ⌊(n : ℚ) / 2⌋.toNat 2 + 2)

end

end A005684.P17682474845608103150

/-! ## A005684.P9917258717131500719

`A172471(A248116(n)-A275210(n))`
-/

namespace A005684.P9917258717131500719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A248116 (n + 13) - A275210 n).toNat

end

end A005684.P9917258717131500719

/-! ## A005684.P16867084679236878107

`A014019(A214401(n+1))+A001911(n)`
-/

namespace A005684.P16867084679236878107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014019 (A214401 (n + 1)).toNat + A001911 n

end

end A005684.P16867084679236878107

/-! ## A005684.P500487514366462238

`A020695(n)-A092335(A092432(n+2))`
-/

namespace A005684.P500487514366462238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n - A092335 (A092432 (n + 2)).toNat

end

end A005684.P500487514366462238

/-!
# A005685: Number of Twopins positions.

The programs for A005685, the canonical program `A005685.P8577841201564284981` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005685 has offset 4).

The definition of A005685 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005685.P8577841201564284981

`A001224(n+1)-(a(n-2)-a(n-1))` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005685

/-- `A001224(n+1)-(a(n-2)-a(n-1))` -/
def P8577841201564284981.Spec : Prop :=
  ∀ n, P8577841201564284981.a n = A005685 (n + 4)

theorem P8577841201564284981.correct : P8577841201564284981.Spec := by
  intro n
  simp only [A005685, Nat.add_sub_cancel]

end A005685

/-! ## A005685.P5549513319218012203

`A060312(n+1)-(a(n-2)-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A005685.P5549513319218012203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A060312 (n + 1) - (a (n - 2) - a (n - 1))

end

end A005685.P5549513319218012203

namespace A005685

/-- `A060312(n+1)-(a(n-2)-a(n-1))` -/
def P5549513319218012203.Spec : Prop :=
  ∀ n, P5549513319218012203.a n = A005685 (n + 4)

end A005685

/-! ## A005685.P6353726345953158934

`A068928(n+1)-(a(n-2)-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A005685.P6353726345953158934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A068928 (n + 1) - (a (n - 2) - a (n - 1))

end

end A005685.P6353726345953158934

namespace A005685

/-- `A068928(n+1)-(a(n-2)-a(n-1))` -/
def P6353726345953158934.Spec : Prop :=
  ∀ n, P6353726345953158934.a n = A005685 (n + 4)

end A005685

/-! ## A005685.P1062352542582976481

`A102526(n+1)+a(n-1)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A005685.P1062352542582976481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A102526 (n + 1) + a (n - 1) - a (n - 2)

end

end A005685.P1062352542582976481

namespace A005685

/-- `A102526(n+1)+a(n-1)-a(n-2)` -/
def P1062352542582976481.Spec : Prop :=
  ∀ n, P1062352542582976481.a n = A005685 (n + 4)

end A005685

/-! ## A005685.P15435170668321686861

`A123578(∑[A100096(n)+1])`
-/

namespace A005685.P15435170668321686861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100096 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A005685.P15435170668321686861

namespace A005685

/-- `A123578(∑[A100096(n)+1])` -/
def P15435170668321686861.Spec : Prop :=
  ∀ n, P15435170668321686861.a n = A005685 (n + 4)

end A005685

/-!
# A005686: Number of Twopins positions.

The programs for A005686, the canonical program `A005686.P9914686524352431087` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005686 has offset 0).

The definition of A005686 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005686.P9914686524352431087

`a(n-2)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005686

/-- `a(n-2)+a(n-5)` -/
def P9914686524352431087.Spec : Prop :=
  ∀ n, (P9914686524352431087.a n : ℤ) = A005686 n

theorem P9914686524352431087.correct : P9914686524352431087.Spec := by
  intro n
  simp only [A005686]

end A005686

/-! ## A005686.P12149797717633181436

`ogf((x+x^2)/(1-x^2-x^5))`
-/

namespace A005686.P12149797717633181436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, 0, -1, 0, 0, -1] n

end

end A005686.P12149797717633181436

namespace A005686

/-- `ogf((x+x^2)/(1-x^2-x^5))` -/
def P12149797717633181436.Spec : Prop :=
  ∀ n, P12149797717633181436.a n = A005686 n

end A005686

/-! ## A005686.P10672200127744158804

`A001687(n)+A001687((2*n)%(n+1))`
-/

namespace A005686.P10672200127744158804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001687 n + A001687 (2 * n % (n + 1))

end

end A005686.P10672200127744158804

namespace A005686

/-- `A001687(n)+A001687((2*n)%(n+1))` -/
def P10672200127744158804.Spec : Prop :=
  ∀ n, P10672200127744158804.a n = A005686 n

end A005686

/-! ## A005686.P10848337432644199996

`A001687(n)+A001687(A004273(n)-n)`
-/

namespace A005686.P10848337432644199996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001687 n + A001687 (A004273 n - (n : ℤ)).toNat

end

end A005686.P10848337432644199996

namespace A005686

/-- `A001687(n)+A001687(A004273(n)-n)` -/
def P10848337432644199996.Spec : Prop :=
  ∀ n, P10848337432644199996.a n = A005686 n

end A005686

/-! ## A005686.P10262071515858971838

`A386709(n+3)-A386709(n+1)`
-/

namespace A005686.P10262071515858971838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386709 (n + 3) - A386709 (n + 1)

end

end A005686.P10262071515858971838

namespace A005686

/-- `A386709(n+3)-A386709(n+1)` -/
def P10262071515858971838.Spec : Prop :=
  ∀ n, P10262071515858971838.a n = A005686 n

end A005686

/-! ## A005686.P5443682992306040843

`A001687(A337108(n²))+A001687(n)`
-/

namespace A005686.P5443682992306040843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001687 (A337108 (n ^ 2)).toNat + A001687 n

end

end A005686.P5443682992306040843

namespace A005686

/-- `A001687(A337108(n²))+A001687(n)` -/
def P5443682992306040843.Spec : Prop :=
  ∀ n, P5443682992306040843.a n = A005686 n

end A005686

/-!
# A005687: Number of Twopins positions.

The programs for A005687, there is no canonical definition to state claims against.
-/

/-! ## A005687.P13383114459134626336

`∑[A228571(2*n+9)-A228571(2*(n+2))]`
-/

namespace A005687.P13383114459134626336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228571 (2 * n + 9) - A228571 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005687.P13383114459134626336

/-! ## A005687.P10646895903599484649

`record[A228571(A004275(n))-A005686(n)]`
-/

namespace A005687.P10646895903599484649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228571 (A004275 n).toNat - A005686 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005687.P10646895903599484649

/-! ## A005687.P14244436515698930502

`A337125(A120118(n)+A010060(3*n))`
-/

namespace A005687.P14244436515698930502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337125 (A120118 n + A010060 (3 * n)).toNat

end

end A005687.P14244436515698930502

/-! ## A005687.P11361704186172789468

`A002024(or(A217631(n)+1, A217649(n)))`
-/

namespace A005687.P11361704186172789468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (Int.lor (A217631 n + 1) (A217649 n)).toNat

end

end A005687.P11361704186172789468

/-! ## A005687.P3255343158347102023

`A194287(∑[A329673(n)])`
-/

namespace A005687.P3255343158347102023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329673 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194287 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A005687.P3255343158347102023

/-!
# A005688: Numbers of Twopins positions.

The programs for A005688, there is no canonical definition to state claims against.
-/

/-! ## A005688.P6227366105028499040

`A228571(2*(n+4))`
-/

namespace A005688.P6227366105028499040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228571 (2 * (n + 4))

end

end A005688.P6227366105028499040

/-! ## A005688.P13315946874651083319

`∑[A228571(A062545(n))]`
-/

namespace A005688.P13315946874651083319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228571 (A062545 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005688.P13315946874651083319

/-! ## A005688.P6633888154489940710

`record[A228571(A004275(n))]`
-/

namespace A005688.P6633888154489940710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228571 (A004275 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005688.P6633888154489940710

/-! ## A005688.P15633382785557591852

`∑[A228571(A103517(n)+1)]`
-/

namespace A005688.P15633382785557591852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228571 (A103517 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005688.P15633382785557591852

/-! ## A005688.P2174841953912283470

`∑[A228571(A005408(n+1))]+1`
-/

namespace A005688.P2174841953912283470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228571 (A005408 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A005688.P2174841953912283470

/-! ## A005688.P5494848219995836630

`∑[A228571(A243427(n+1)+n)]`
-/

namespace A005688.P5494848219995836630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228571 (A243427 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005688.P5494848219995836630

/-! ## A005688.P7962838417334998101

`∑[A228571(A020705(A004273(n)))]`
-/

namespace A005688.P7962838417334998101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228571 (A020705 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005688.P7962838417334998101

/-! ## A005688.P8539907159520735622

`∑[A228571(A004442(A103517(n)))]`
-/

namespace A005688.P8539907159520735622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228571 (A004442 (A103517 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005688.P8539907159520735622

/-! ## A005688.P6078217173111586035

`∑[A228571(A168230(A008574(n)))]`
-/

namespace A005688.P6078217173111586035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228571 (A168230 (A008574 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005688.P6078217173111586035

/-! ## A005688.P5993670009449087433

`∑[A228571(A243427(A005408(n)))]`
-/

namespace A005688.P5993670009449087433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228571 (A243427 (A005408 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005688.P5993670009449087433

/-!
# A005689: Number of Twopins positions.

The programs for A005689, the canonical program `A005689.P7428963177813137816` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005689 has offset 6).

The definition of A005689 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 598 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005689.P7428963177813137816

`Δ[A392541(n+4)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005689

/-- `Δ[A392541(n+4)]` -/
def P7428963177813137816.Spec : Prop :=
  ∀ n, P7428963177813137816.a n = A005689 (n + 6)

theorem P7428963177813137816.correct : P7428963177813137816.Spec := by
  intro n
  simp only [A005689, Nat.add_sub_cancel]

end A005689

/-! ## A005689.P15923414724344504430

`A217839(A046691(n+2))%(7*3^n)`
-/

namespace A005689.P15923414724344504430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217839 (A046691 (n + 2)).toNat) (7 * 3 ^ n : ℤ)

end

end A005689.P15923414724344504430

namespace A005689

/-- `A217839(A046691(n+2))%(7*3^n)` -/
def P15923414724344504430.Spec : Prop :=
  ∀ n, P15923414724344504430.a n = A005689 (n + 6)

end A005689

/-! ## A005689.P17453561392557928652

`A217839(A046691(n+2))^A178334(n)`
-/

namespace A005689.P17453561392557928652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217839 (A046691 (n + 2)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A005689.P17453561392557928652

namespace A005689

/-- `A217839(A046691(n+2))^A178334(n)` -/
def P17453561392557928652.Spec : Prop :=
  ∀ n, P17453561392557928652.a n = (A005689 (n + 6) : ℚ)

end A005689

/-! ## A005689.P13186316593080726971

`A217839(A046691(n+2))^A011590(n²)`
-/

namespace A005689.P13186316593080726971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217839 (A046691 (n + 2)).toNat : ℚ) ^ (A011590 (n ^ 2) : ℤ)

end

end A005689.P13186316593080726971

namespace A005689

/-- `A217839(A046691(n+2))^A011590(n²)` -/
def P13186316593080726971.Spec : Prop :=
  ∀ n, P13186316593080726971.a n = (A005689 (n + 6) : ℚ)

end A005689

/-! ## A005689.P6267562567271295406

`A217839(A046691(n+2))^and(1, A000040(n+1))`
-/

namespace A005689.P6267562567271295406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217839 (A046691 (n + 2)).toNat : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A005689.P6267562567271295406

namespace A005689

/-- `A217839(A046691(n+2))^and(1, A000040(n+1))` -/
def P6267562567271295406.Spec : Prop :=
  ∀ n, P6267562567271295406.a n = (A005689 (n + 6) : ℚ)

end A005689

/-!
# A005690: Number of Twopins positions.

The programs for A005690, there is no canonical definition to state claims against.
-/

/-! ## A005690.P6295874754561780061

`A005689(n+8)-A005691(n+8)`
-/

namespace A005690.P6295874754561780061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005689 (n + 8) - A005691 (n + 8)

end

end A005690.P6295874754561780061

/-! ## A005690.P18271584955297562227

`A307707(2*A037245(n+1))+n`
-/

namespace A005690.P18271584955297562227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307707 (2 * A037245 (n + 1)).toNat + (n : ℤ)

end

end A005690.P18271584955297562227

/-! ## A005690.P12232587519331238246

`A391623(A334271(n))+A390673(n+1)`
-/

namespace A005690.P12232587519331238246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391623 (A334271 n).toNat + A390673 (n + 1)

end

end A005690.P12232587519331238246

/-! ## A005690.P5190169593735481251

`A269394(A374746(n)+record[n-A268289(n)])`
-/

namespace A005690.P5190169593735481251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A268289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269394 (A374746 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A005690.P5190169593735481251

/-! ## A005690.P17581969668748546172

`A069904(A002805(n+1))+A000045(n+1)`
-/

namespace A005690.P17581969668748546172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (A002805 (n + 1)).toNat + A000045 (n + 1)

end

end A005690.P17581969668748546172

/-!
# A005691: Number of Twopins positions.

The programs for A005691, there is no canonical definition to state claims against.
-/

/-! ## A005691.P17048971296903577082

`A000194(A140226(n)+A002524(n))`
-/

namespace A005691.P17048971296903577082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A140226 n + A002524 n).toNat

end

end A005691.P17048971296903577082

/-! ## A005691.P11935846630511709057

`∑[A347648(A319106(n))]`
-/

namespace A005691.P11935846630511709057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347648 (A319106 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005691.P11935846630511709057

/-! ## A005691.P12990127869452648337

`A332656(A332622(n+2))+A332638(n)`
-/

namespace A005691.P12990127869452648337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332656 (A332622 (n + 2)).toNat + A332638 n

end

end A005691.P12990127869452648337

/-! ## A005691.P8951791569856493124

`A119485(a(n-2))+n` with `a(0)=1, a(1)=2`
-/

namespace A005691.P8951791569856493124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A119485 (a (n - 2)).toNat + (n : ℤ)

end

end A005691.P8951791569856493124

/-! ## A005691.P10863093934389598394

`A346132(A239883(n))`
-/

namespace A005691.P10863093934389598394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346132 (A239883 n).toNat

end

end A005691.P10863093934389598394

/-!
# A005698: Positions of remoteness 2 in Beans-Don't-Talk.

The programs for A005698, the canonical program `A005698.P13021387874667961066` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005698 has offset 1).

The definition of A005698 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 220 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005698.P11119952264530891665

`A131666(A049636(n+2))`
-/

namespace A005698.P11119952264530891665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131666 (A049636 (n + 2)).toNat

end

end A005698.P11119952264530891665

namespace A005698

/-- `A131666(A049636(n+2))` -/
def P11119952264530891665.Spec : Prop :=
  ∀ n, P11119952264530891665.a n = A005698 (n + 1)

end A005698

/-! ## A005698.P16385955419322589124

`A132780(A001651(n+4))`
-/

namespace A005698.P16385955419322589124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132780 (A001651 (n + 4)).toNat

end

end A005698.P16385955419322589124

namespace A005698

/-- `A132780(A001651(n+4))` -/
def P16385955419322589124.Spec : Prop :=
  ∀ n, P16385955419322589124.a n = A005698 (n + 1)

end A005698

/-! ## A005698.P13021387874667961066

`A131666(A007494(n+4))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005698

/-- `A131666(A007494(n+4))` -/
def P13021387874667961066.Spec : Prop :=
  ∀ n, P13021387874667961066.a n = A005698 (n + 1)

theorem P13021387874667961066.correct : P13021387874667961066.Spec := by
  intro n
  simp only [A005698, Nat.add_sub_cancel]

end A005698

/-! ## A005698.P15024355998985693952

`A132780(A007494(n)+5)`
-/

namespace A005698.P15024355998985693952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132780 (A007494 n + 5).toNat

end

end A005698.P15024355998985693952

namespace A005698

/-- `A132780(A007494(n)+5)` -/
def P15024355998985693952.Spec : Prop :=
  ∀ n, P15024355998985693952.a n = A005698 (n + 1)

end A005698

/-! ## A005698.P5225126294688920671

`A132780(∑[dr(A040024(n))])`
-/

namespace A005698.P5225126294688920671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040024 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132780 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005698.P5225126294688920671

namespace A005698

/-- `A132780(∑[dr(A040024(n))])` -/
def P5225126294688920671.Spec : Prop :=
  ∀ n, P5225126294688920671.a n = A005698 (n + 1)

end A005698

/-!
# A005699: a(n) = ceiling(tan(n)^2).

The programs for A005699, the canonical program `A005699.P4502952446841539985` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005699 has offset 0).

The definition of A005699 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(tan(n)²)` (program `A005699.P4502952446841539985`, by `A005699.P4502952446841539985.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005699.P4502952446841539985

`ceil(tan(n)²)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005699

/-- `ceil(tan(n)²)` -/
def P4502952446841539985.Spec : Prop :=
  ∀ n, P4502952446841539985.a n = A005699 n

theorem P4502952446841539985.correct : P4502952446841539985.Spec := by
  intro n
  simp only [A005699]

end A005699

/-! ## A005699.P18341080581848962604

`ceil(tan(n)^2)`
-/

namespace A005699.P18341080581848962604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (n : ℝ) ^ 2⌉

end

end A005699.P18341080581848962604

namespace A005699

/-- `ceil(tan(n)^2)` -/
def P18341080581848962604.Spec : Prop :=
  ∀ n, P18341080581848962604.a n = A005699 n

theorem P18341080581848962604.correct : P18341080581848962604.Spec := by
  intro n
  simp only [A005699, Nat.add_sub_cancel, A005699.P18341080581848962604.a, A005699.P4502952446841539985.a, SequenceMachineLib.memo_apply]

end A005699

/-! ## A005699.P1698979424570808228

`ceil(tan(n)*tan(n))`
-/

namespace A005699.P1698979424570808228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (n : ℝ) * Real.tan (n : ℝ)⌉

end

end A005699.P1698979424570808228

namespace A005699

/-- `ceil(tan(n)*tan(n))` -/
def P1698979424570808228.Spec : Prop :=
  ∀ n, P1698979424570808228.a n = A005699 n

theorem P1698979424570808228.correct : P1698979424570808228.Spec := by
  intro n
  simp only [A005699, Nat.add_sub_cancel, A005699.P1698979424570808228.a, A005699.P4502952446841539985.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A005699

/-! ## A005699.P11839941429246768834

`abs(floor(-tan(n)^2))`
-/

namespace A005699.P11839941429246768834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊-(Real.tan (n : ℝ) ^ 2)⌋|

end

end A005699.P11839941429246768834

namespace A005699

/-- `abs(floor(-tan(n)^2))` -/
def P11839941429246768834.Spec : Prop :=
  ∀ n, P11839941429246768834.a n = A005699 n

end A005699

/-! ## A005699.P6723301475076769147

`-floor(-tan(n)^2)`
-/

namespace A005699.P6723301475076769147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊-(Real.tan (n : ℝ) ^ 2)⌋

end

end A005699.P6723301475076769147

namespace A005699

/-- `-floor(-tan(n)^2)` -/
def P6723301475076769147.Spec : Prop :=
  ∀ n, P6723301475076769147.a n = A005699 n

end A005699

/-! ## A005699.P4490481348000073308

`ceil((sin(n)/cos(n))²)`
-/

namespace A005699.P4490481348000073308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sin (n : ℝ) / Real.cos (n : ℝ)) ^ 2⌉

end

end A005699.P4490481348000073308

namespace A005699

/-- `ceil((sin(n)/cos(n))²)` -/
def P4490481348000073308.Spec : Prop :=
  ∀ n, P4490481348000073308.a n = A005699 n

end A005699

/-! ## A005699.P14343156190755296236

`ceil((1/cos(n))²)-1`
-/

namespace A005699.P14343156190755296236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(1 / Real.cos (n : ℝ)) ^ 2⌉ - 1

end

end A005699.P14343156190755296236

namespace A005699

/-- `ceil((1/cos(n))²)-1` -/
def P14343156190755296236.Spec : Prop :=
  ∀ n, P14343156190755296236.a n = A005699 n

end A005699

/-! ## A005699.P4352761867277615226

`n-floor(n-tan(n)²)`
-/

namespace A005699.P4352761867277615226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(n : ℝ) - Real.tan (n : ℝ) ^ 2⌋

end

end A005699.P4352761867277615226

namespace A005699

/-- `n-floor(n-tan(n)²)` -/
def P4352761867277615226.Spec : Prop :=
  ∀ n, P4352761867277615226.a n = A005699 n

end A005699

/-! ## A005699.P12321572277886684287

`A057427(n)+A005657(n)`
-/

namespace A005699.P12321572277886684287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A005657 n

end

end A005699.P12321572277886684287

namespace A005699

/-- `A057427(n)+A005657(n)` -/
def P12321572277886684287.Spec : Prop :=
  ∀ n, P12321572277886684287.a n = A005699 n

end A005699

/-! ## A005699.P15365690198996854420

`A005657(n)-A057428(n)`
-/

namespace A005699.P15365690198996854420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005657 n - A057428 n

end

end A005699.P15365690198996854420

namespace A005699

/-- `A005657(n)-A057428(n)` -/
def P15365690198996854420.Spec : Prop :=
  ∀ n, P15365690198996854420.a n = A005699 n

end A005699

/-! ## A005699.P12293875097359802560

`A005657(n)+A195910(n)-A000503(n)`
-/

namespace A005699.P12293875097359802560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005657 n + (A195910 n - A000503 n)

end

end A005699.P12293875097359802560

namespace A005699

/-- `A005657(n)+A195910(n)-A000503(n)` -/
def P12293875097359802560.Spec : Prop :=
  ∀ n, P12293875097359802560.a n = A005699 n

end A005699

