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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A094701: Smallest linear combination of phi(n) and sigma(n) with nonnegative coefficients: a(n) = Min_{x>=0,y>=0} (x+y) for which x*phi(n) + y*sigma(n) is a multiple of n.

The programs for A094701, there is no canonical definition to state claims against.
-/

/-! ## A094701.P16587248413066798339

`A064547(A127680(n)+A017317(n))`
-/

namespace A094701.P16587248413066798339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A127680 n + A017317 n).toNat

end

end A094701.P16587248413066798339

/-! ## A094701.P13278044250248165605

`A339579(A138822(n+1))+A097033(n+1)`
-/

namespace A094701.P13278044250248165605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (A138822 (n + 1)).toNat + A097033 (n + 1)

end

end A094701.P13278044250248165605

/-! ## A094701.P2512473146209786679

`A001221(A242309(A228372(n+1)²))`
-/

namespace A094701.P2512473146209786679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A242309 (A228372 (n + 1) ^ 2).toNat).toNat

end

end A094701.P2512473146209786679

/-! ## A094701.P17250959968010437575

`A297770(A275870(n+1)^A005134(n))`
-/

namespace A094701.P17250959968010437575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297770 (SequenceMachineLib.roundAway ((A275870 (n + 1) : ℚ) ^ (A005134 n : ℤ))).toNat

end

end A094701.P17250959968010437575

/-! ## A094701.P2675213336560162332

`A001221(A330647(3*n+5)+A195458(n+1))`
-/

namespace A094701.P2675213336560162332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A330647 (3 * n + 5) + A195458 (n + 1)).toNat

end

end A094701.P2675213336560162332

/-!
# A094702: Least linear combinations of phi(n) and sigma(n) are multiple.

The programs for A094702, there is no canonical definition to state claims against.
-/

/-! ## A094702.P8594084783171861703

`∩[n²+n, A137904(n)]`
-/

namespace A094702.P8594084783171861703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137904 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094702.P8594084783171861703

/-!
# A094703: a(n) = 8*a(n-1) + 21*a(n-2), with a(1)=1, a(2)=11.

The programs for A094703, the canonical program `A094703.P4079175300680916480` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094703 has offset 1).

The definition of A094703 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)+21*a(n-2)` (program `A094703.P4079175300680916480`, by `A094703.P4079175300680916480.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094703.P4079175300680916480

`8*a(n-1)+21*a(n-2)` with `a(0)=1, a(1)=11`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094703

/-- `8*a(n-1)+21*a(n-2)` -/
def P4079175300680916480.Spec : Prop :=
  ∀ n, (P4079175300680916480.a n : ℤ) = A094703 (n + 1)

theorem P4079175300680916480.correct : P4079175300680916480.Spec := by
  intro n
  simp only [A094703, Nat.add_sub_cancel]

end A094703

/-! ## A094703.P2259044361993876694

`ogf((1+3x)/(1-8x-21x^2))`
-/

namespace A094703.P2259044361993876694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -8, -21] n

end

end A094703.P2259044361993876694

namespace A094703

/-- `ogf((1+3x)/(1-8x-21x^2))` -/
def P2259044361993876694.Spec : Prop :=
  ∀ n, P2259044361993876694.a n = A094703 (n + 1)

end A094703

/-! ## A094703.P13880836171227668277

`Δ[A093103(n+1)/7]`
-/

namespace A094703.P13880836171227668277
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093103 (n + 1) : ℚ) / 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094703.P13880836171227668277

namespace A094703

/-- `Δ[A093103(n+1)/7]` -/
def P13880836171227668277.Spec : Prop :=
  ∀ n, P13880836171227668277.a n = (A094703 (n + 1) : ℚ)

end A094703

/-!
# A094704: Convolution of Fibonacci(n) and 10^n.

The programs for A094704, the canonical program `A094704.P17729493596373703749` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094704 has offset 0).

The definition of A094704 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094704.P17729493596373703749

`11*a(n-1)-9*a(n-2)-10*a(n-3)` with `a(0)=0, a(1)=1, a(2)=11`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094704

/-- `11*a(n-1)-9*a(n-2)-10*a(n-3)` -/
def P17729493596373703749.Spec : Prop :=
  ∀ n, P17729493596373703749.a n = A094704 n

theorem P17729493596373703749.correct : P17729493596373703749.Spec := by
  intro n
  simp only [A094704]

end A094704

/-! ## A094704.P9133667865703326753

`ogf(x/(1-11x+9x^2+10x^3))`
-/

namespace A094704.P9133667865703326753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -11, 9, 10] n

end

end A094704.P9133667865703326753

namespace A094704

/-- `ogf(x/(1-11x+9x^2+10x^3))` -/
def P9133667865703326753.Spec : Prop :=
  ∀ n, P9133667865703326753.a n = A094704 n

end A094704

/-! ## A094704.P12587677031231930523

`10*a(n-1)+A000045(n)` with `a(0)=0`
-/

namespace A094704.P12587677031231930523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  10 * a (n - 1) + A000045 n

end

end A094704.P12587677031231930523

namespace A094704

/-- `10*a(n-1)+A000045(n)` -/
def P12587677031231930523.Spec : Prop :=
  ∀ n, P12587677031231930523.a n = A094704 n

end A094704

/-! ## A094704.P4492062530190670838

`A094570(∑[n])+10*a(n-1)` with `a(0)=0`
-/

namespace A094704.P4492062530190670838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A094570 (∑ j ∈ Finset.range (n + 1), f1 j) + 10 * a (n - 1)

end

end A094704.P4492062530190670838

namespace A094704

/-- `A094570(∑[n])+10*a(n-1)` -/
def P4492062530190670838.Spec : Prop :=
  ∀ n, P4492062530190670838.a n = A094704 n

end A094704

/-! ## A094704.P5331965313439921748

`A212804(n+1)+10*a(n-1)` with `a(0)=0`
-/

namespace A094704.P5331965313439921748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A212804 (n + 1) + 10 * a (n - 1)

end

end A094704.P5331965313439921748

namespace A094704

/-- `A212804(n+1)+10*a(n-1)` -/
def P5331965313439921748.Spec : Prop :=
  ∀ n, P5331965313439921748.a n = A094704 n

end A094704

/-! ## A094704.P3515011004279551696

`A103609(2*n)+10*a(n-1)` with `a(0)=0`
-/

namespace A094704.P3515011004279551696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A103609 (2 * n) + 10 * a (n - 1)

end

end A094704.P3515011004279551696

namespace A094704

/-- `A103609(2*n)+10*a(n-1)` -/
def P3515011004279551696.Spec : Prop :=
  ∀ n, P3515011004279551696.a n = A094704 n

end A094704

/-! ## A094704.P13328211714699269314

`∑[A000045(n)/A011557(n)]*A011557(n)`
-/

namespace A094704.P13328211714699269314
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) / (A011557 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A011557 n : ℚ)

end

end A094704.P13328211714699269314

namespace A094704

/-- `∑[A000045(n)/A011557(n)]*A011557(n)` -/
def P13328211714699269314.Spec : Prop :=
  ∀ n, P13328211714699269314.a n = (A094704 n : ℚ)

end A094704

/-! ## A094704.P17268461632635193734

`A180175(n+2)-A011557(n+1)`
-/

namespace A094704.P17268461632635193734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180175 (n + 2) - A011557 (n + 1)

end

end A094704.P17268461632635193734

namespace A094704

/-- `A180175(n+2)-A011557(n+1)` -/
def P17268461632635193734.Spec : Prop :=
  ∀ n, P17268461632635193734.a n = A094704 n

end A094704

/-!
# A094705: Convolution of Jacobsthal(n) and 3^n.

The programs for A094705, the canonical program `A094705.P6205004324361361156` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094705 has offset 0).

The definition of A094705 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094705.P6205004324361361156

`4*a(n-1)-a(n-2)-6*a(n-3)` with `a(0)=0, a(1)=1, a(2)=4`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094705

/-- `4*a(n-1)-a(n-2)-6*a(n-3)` -/
def P6205004324361361156.Spec : Prop :=
  ∀ n, P6205004324361361156.a n = A094705 n

theorem P6205004324361361156.correct : P6205004324361361156.Spec := by
  intro n
  simp only [A094705]

end A094705

/-! ## A094705.P11597858862285156533

`(3^(n+1)-A001045(n+3))/4`
-/

namespace A094705.P11597858862285156533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ (n + 1) : ℤ) - A001045 (n + 3) : ℚ) / 4

end

end A094705.P11597858862285156533

namespace A094705

/-- `(3^(n+1)-A001045(n+3))/4` -/
def P11597858862285156533.Spec : Prop :=
  ∀ n, P11597858862285156533.a n = (A094705 n : ℚ)

end A094705

/-! ## A094705.P16496093071573792138

`(3^(n+2)-2^(n+3)-(-1)^n)/12`
-/

namespace A094705.P16496093071573792138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ (n + 2) : ℤ) - (2 ^ (n + 3) : ℤ) - (-1) ^ n : ℚ) / 12

end

end A094705.P16496093071573792138

namespace A094705

/-- `(3^(n+2)-2^(n+3)-(-1)^n)/12` -/
def P16496093071573792138.Spec : Prop :=
  ∀ n, P16496093071573792138.a n = (A094705 n : ℚ)

theorem P16496093071573792138.correct : P16496093071573792138.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A094705, Nat.add_sub_cancel, A094705.P16496093071573792138.a, A094705.P6205004324361361156.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A094705, Nat.add_sub_cancel, A094705.P16496093071573792138.a, A094705.P6205004324361361156.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A094705

/-! ## A094705.P6473475284980638796

`ogf(x/(1-4x+x^2+6x^3))`
-/

namespace A094705.P6473475284980638796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -4, 1, 6] n

end

end A094705.P6473475284980638796

namespace A094705

/-- `ogf(x/(1-4x+x^2+6x^3))` -/
def P6473475284980638796.Spec : Prop :=
  ∀ n, P6473475284980638796.a n = A094705 n

end A094705

/-! ## A094705.P15277046048940708496

`3^n-(a(n-1)+2^n)` with `a(0)=0`
-/

namespace A094705.P15277046048940708496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (3 ^ n : ℤ) - (a (n - 1) + (2 ^ n : ℤ))

end

end A094705.P15277046048940708496

namespace A094705

/-- `3^n-(a(n-1)+2^n)` -/
def P15277046048940708496.Spec : Prop :=
  ∀ n, P15277046048940708496.a n = A094705 n

end A094705

/-! ## A094705.P12562521139208308286

`3^n-2^n-a(n-1)` with `a(0)=0`
-/

namespace A094705.P12562521139208308286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (3 ^ n : ℤ) - (2 ^ n : ℤ) - a (n - 1)

end

end A094705.P12562521139208308286

namespace A094705

/-- `3^n-2^n-a(n-1)` -/
def P12562521139208308286.Spec : Prop :=
  ∀ n, P12562521139208308286.a n = A094705 n

end A094705

/-! ## A094705.P9910104643584865206

`3^n-A093379(n+1)`
-/

namespace A094705.P9910104643584865206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A093379 (n + 1)

end

end A094705.P9910104643584865206

namespace A094705

/-- `3^n-A093379(n+1)` -/
def P9910104643584865206.Spec : Prop :=
  ∀ n, P9910104643584865206.a n = A094705 n

end A094705

/-! ## A094705.P6239917560599186116

`abs(a(n-1)-A001047(n))` with `a(0)=0`
-/

namespace A094705.P6239917560599186116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  |a (n - 1) - A001047 n|

end

end A094705.P6239917560599186116

namespace A094705

/-- `abs(a(n-1)-A001047(n))` -/
def P6239917560599186116.Spec : Prop :=
  ∀ n, P6239917560599186116.a n = A094705 n

end A094705

/-! ## A094705.P8166274659737423622

`A015518(n)+2*a(n-1)` with `a(0)=0`
-/

namespace A094705.P8166274659737423622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A015518 n + 2 * a (n - 1)

end

end A094705.P8166274659737423622

namespace A094705

/-- `A015518(n)+2*a(n-1)` -/
def P8166274659737423622.Spec : Prop :=
  ∀ n, P8166274659737423622.a n = A094705 n

end A094705

/-! ## A094705.P9675962121940906155

`A001045(n)+3*a(n-1)` with `a(0)=0`
-/

namespace A094705.P9675962121940906155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001045 n + 3 * a (n - 1)

end

end A094705.P9675962121940906155

namespace A094705

/-- `A001045(n)+3*a(n-1)` -/
def P9675962121940906155.Spec : Prop :=
  ∀ n, P9675962121940906155.a n = A094705 n

end A094705

/-! ## A094705.P2808638806026783387

`∑[A003462(n)-floor(2^n/3)]`
-/

namespace A094705.P2808638806026783387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n - ⌊(2 ^ n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094705.P2808638806026783387

namespace A094705

/-- `∑[A003462(n)-floor(2^n/3)]` -/
def P2808638806026783387.Spec : Prop :=
  ∀ n, P2808638806026783387.a n = A094705 n

end A094705

/-! ## A094705.P8152980103139217993

`A099623(n)+A045883(n)`
-/

namespace A094705.P8152980103139217993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099623 n + A045883 n

end

end A094705.P8152980103139217993

namespace A094705

/-- `A099623(n)+A045883(n)` -/
def P8152980103139217993.Spec : Prop :=
  ∀ n, P8152980103139217993.a n = A094705 n

end A094705

/-! ## A094705.P16813037349106421936

`A047926(n)-A086445(n)`
-/

namespace A094705.P16813037349106421936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047926 n - A086445 n

end

end A094705.P16813037349106421936

namespace A094705

/-- `A047926(n)-A086445(n)` -/
def P16813037349106421936.Spec : Prop :=
  ∀ n, P16813037349106421936.a n = A094705 n

end A094705

/-! ## A094705.P18079510962105814125

`A132353(n)-A130781(n)`
-/

namespace A094705.P18079510962105814125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132353 n - A130781 n

end

end A094705.P18079510962105814125

namespace A094705

/-- `A132353(n)-A130781(n)` -/
def P18079510962105814125.Spec : Prop :=
  ∀ n, P18079510962105814125.a n = A094705 n

end A094705

/-! ## A094705.P16687916162533274542

`A004054(n)-∑[A046717(n)]`
-/

namespace A094705.P16687916162533274542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004054 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094705.P16687916162533274542

namespace A094705

/-- `A004054(n)-∑[A046717(n)]` -/
def P16687916162533274542.Spec : Prop :=
  ∀ n, P16687916162533274542.a n = A094705 n

end A094705

/-! ## A094705.P17075647245231812672

`A132353(n)-A024493(n+1)`
-/

namespace A094705.P17075647245231812672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132353 n - A024493 (n + 1)

end

end A094705.P17075647245231812672

namespace A094705

/-- `A132353(n)-A024493(n+1)` -/
def P17075647245231812672.Spec : Prop :=
  ∀ n, P17075647245231812672.a n = A094705 n

end A094705

/-! ## A094705.P4434246389967114898

`A132868(n)-A024494(n+1)`
-/

namespace A094705.P4434246389967114898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132868 n - A024494 (n + 1)

end

end A094705.P4434246389967114898

namespace A094705

/-- `A132868(n)-A024494(n+1)` -/
def P4434246389967114898.Spec : Prop :=
  ∀ n, P4434246389967114898.a n = A094705 n

end A094705

/-! ## A094705.P15789343437519719822

`∑[∑[A093833(n)]-A093833(n)]`
-/

namespace A094705.P15789343437519719822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093833 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A093833 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094705.P15789343437519719822

namespace A094705

/-- `∑[∑[A093833(n)]-A093833(n)]` -/
def P15789343437519719822.Spec : Prop :=
  ∀ n, P15789343437519719822.a n = A094705 n

end A094705

/-! ## A094705.P14522624639376547179

`abs(A014983(n+1)-A077925(n))`
-/

namespace A094705.P14522624639376547179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014983 (n + 1) - A077925 n|

end

end A094705.P14522624639376547179

namespace A094705

/-- `abs(A014983(n+1)-A077925(n))` -/
def P14522624639376547179.Spec : Prop :=
  ∀ n, P14522624639376547179.a n = A094705 n

end A094705

/-! ## A094705.P1393672989075428432

`A015518(n+1)-A001045(n+1)`
-/

namespace A094705.P1393672989075428432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 (n + 1) - A001045 (n + 1)

end

end A094705.P1393672989075428432

namespace A094705

/-- `A015518(n+1)-A001045(n+1)` -/
def P1393672989075428432.Spec : Prop :=
  ∀ n, P1393672989075428432.a n = A094705 n

end A094705

/-!
# A094706: Convolution of Pell(n) and 2^n.

The programs for A094706, the canonical program `A094706.P604253351711443591` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094706 has offset 0).

The definition of A094706 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094706.P604253351711443591

`A000129(n+2)-2^(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A094706

/-- `A000129(n+2)-2^(n+1)` -/
def P604253351711443591.Spec : Prop :=
  ∀ n, P604253351711443591.a n = A094706 n

theorem P604253351711443591.correct : P604253351711443591.Spec := by
  intro n
  simp only [A094706]

end A094706

/-! ## A094706.P12287516030440050334

`2*a(n-1)+A000129(n)` with `a(0)=0`
-/

namespace A094706.P12287516030440050334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (n - 1) + A000129 n

end

end A094706.P12287516030440050334

namespace A094706

/-- `2*a(n-1)+A000129(n)` -/
def P12287516030440050334.Spec : Prop :=
  ∀ n, P12287516030440050334.a n = A094706 n

end A094706

/-! ## A094706.P14221529163042489516

`4*a(n-1)-3*a(n-2)-2*a(n-3)` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A094706.P14221529163042489516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  4 * a (n - 1) - 3 * a (n - 2) - 2 * a (n - 3)

end

end A094706.P14221529163042489516

namespace A094706

/-- `4*a(n-1)-3*a(n-2)-2*a(n-3)` -/
def P14221529163042489516.Spec : Prop :=
  ∀ n, P14221529163042489516.a n = A094706 n

end A094706

/-! ## A094706.P8659083355412712459

`ogf(x/(1-4x+3x^2+2x^3))`
-/

namespace A094706.P8659083355412712459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -4, 3, 2] n

end

end A094706.P8659083355412712459

namespace A094706

/-- `ogf(x/(1-4x+3x^2+2x^3))` -/
def P8659083355412712459.Spec : Prop :=
  ∀ n, P8659083355412712459.a n = A094706 n

end A094706

/-! ## A094706.P11605296943052690671

`A094723(n)-2^n`
-/

namespace A094706.P11605296943052690671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094723 n - (2 ^ n : ℤ)

end

end A094706.P11605296943052690671

namespace A094706

/-- `A094723(n)-2^n` -/
def P11605296943052690671.Spec : Prop :=
  ∀ n, P11605296943052690671.a n = A094706 n

end A094706

/-! ## A094706.P8646759422050775022

`∑[A078057(n)-2^n]`
-/

namespace A094706.P8646759422050775022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 n - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094706.P8646759422050775022

namespace A094706

/-- `∑[A078057(n)-2^n]` -/
def P8646759422050775022.Spec : Prop :=
  ∀ n, P8646759422050775022.a n = A094706 n

end A094706

/-! ## A094706.P4222765105435031733

`A215928(n+2)-2^(n+1)`
-/

namespace A094706.P4222765105435031733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 (n + 2) - (2 ^ (n + 1) : ℤ)

end

end A094706.P4222765105435031733

namespace A094706

/-- `A215928(n+2)-2^(n+1)` -/
def P4222765105435031733.Spec : Prop :=
  ∀ n, P4222765105435031733.a n = A094706 n

end A094706

/-! ## A094706.P11042067680522087406

`A249576(3*n)+2*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A094706.P11042067680522087406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A249576 (3 * n) + 2 * a (n - 1)

end

end A094706.P11042067680522087406

namespace A094706

/-- `A249576(3*n)+2*a(n-1)` -/
def P11042067680522087406.Spec : Prop :=
  ∀ n, P11042067680522087406.a n = A094706 n

end A094706

/-! ## A094706.P2769640399467893683

`A350551(n+1)+A350551(n)`
-/

namespace A094706.P2769640399467893683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350551 (n + 1) + A350551 n

end

end A094706.P2769640399467893683

namespace A094706

/-- `A350551(n+1)+A350551(n)` -/
def P2769640399467893683.Spec : Prop :=
  ∀ n, P2769640399467893683.a n = A094706 n

end A094706

/-! ## A094706.P12148748090669492514

`A106514(n)-A000129(n+1)`
-/

namespace A094706.P12148748090669492514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106514 n - A000129 (n + 1)

end

end A094706.P12148748090669492514

namespace A094706

/-- `A106514(n)-A000129(n+1)` -/
def P12148748090669492514.Spec : Prop :=
  ∀ n, P12148748090669492514.a n = A094706 n

end A094706

/-! ## A094706.P13991818136103277419

`∑[∑[A052542(n)]-A000079(n)]`
-/

namespace A094706.P13991818136103277419
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052542 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094706.P13991818136103277419

namespace A094706

/-- `∑[∑[A052542(n)]-A000079(n)]` -/
def P13991818136103277419.Spec : Prop :=
  ∀ n, P13991818136103277419.a n = A094706 n

end A094706

/-! ## A094706.P6582858053104326959

`∑[∑[A156664(n)]-A156664(n)]`
-/

namespace A094706.P6582858053104326959
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156664 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A156664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094706.P6582858053104326959

namespace A094706

/-- `∑[∑[A156664(n)]-A156664(n)]` -/
def P6582858053104326959.Spec : Prop :=
  ∀ n, P6582858053104326959.a n = A094706 n

end A094706

/-! ## A094706.P16377153234520654608

`∑[A001333(n+1)-A000079(n)]`
-/

namespace A094706.P16377153234520654608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) - A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094706.P16377153234520654608

namespace A094706

/-- `∑[A001333(n+1)-A000079(n)]` -/
def P16377153234520654608.Spec : Prop :=
  ∀ n, P16377153234520654608.a n = A094706 n

end A094706

/-! ## A094706.P2539393132091548117

`∑[A094723(n)-A000129(n+1)]`
-/

namespace A094706.P2539393132091548117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094723 n - A000129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094706.P2539393132091548117

namespace A094706

/-- `∑[A094723(n)-A000129(n+1)]` -/
def P2539393132091548117.Spec : Prop :=
  ∀ n, P2539393132091548117.a n = A094706 n

end A094706

/-! ## A094706.P3606195347723980080

`A052937(n+1)-A000051(n+1)`
-/

namespace A094706.P3606195347723980080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052937 (n + 1) - A000051 (n + 1)

end

end A094706.P3606195347723980080

namespace A094706

/-- `A052937(n+1)-A000051(n+1)` -/
def P3606195347723980080.Spec : Prop :=
  ∀ n, P3606195347723980080.a n = A094706 n

end A094706

/-! ## A094706.P7237125806715432605

`A005409(n+2)-A000225(n+1)`
-/

namespace A094706.P7237125806715432605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005409 (n + 2) - A000225 (n + 1)

end

end A094706.P7237125806715432605

namespace A094706

/-- `A005409(n+2)-A000225(n+1)` -/
def P7237125806715432605.Spec : Prop :=
  ∀ n, P7237125806715432605.a n = A094706 n

end A094706

/-! ## A094706.P2626358061896184103

`∑[A001333(n+1)]-A000225(n+1)`
-/

namespace A094706.P2626358061896184103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000225 (n + 1)

end

end A094706.P2626358061896184103

namespace A094706

/-- `∑[A001333(n+1)]-A000225(n+1)` -/
def P2626358061896184103.Spec : Prop :=
  ∀ n, P2626358061896184103.a n = A094706 n

end A094706

/-! ## A094706.P9952530696904449041

`∑[A001333(n+1)-A011782(n+1)]`
-/

namespace A094706.P9952530696904449041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) - A011782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094706.P9952530696904449041

namespace A094706

/-- `∑[A001333(n+1)-A011782(n+1)]` -/
def P9952530696904449041.Spec : Prop :=
  ∀ n, P9952530696904449041.a n = A094706 n

end A094706

/-! ## A094706.P3778563325692204055

`∑[A001333(n+1)-A166444(n+2)]`
-/

namespace A094706.P3778563325692204055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) - A166444 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094706.P3778563325692204055

namespace A094706

/-- `∑[A001333(n+1)-A166444(n+2)]` -/
def P3778563325692204055.Spec : Prop :=
  ∀ n, P3778563325692204055.a n = A094706 n

end A094706

/-! ## A094706.P13223740829416018981

`∑[A001333(n+1)-A016116(2*n)]`
-/

namespace A094706.P13223740829416018981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) - A016116 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094706.P13223740829416018981

namespace A094706

/-- `∑[A001333(n+1)-A016116(2*n)]` -/
def P13223740829416018981.Spec : Prop :=
  ∀ n, P13223740829416018981.a n = A094706 n

end A094706

/-!
# A094707: Partial sums of repeated Fibonacci sequence.

The programs for A094707, the canonical program `A094707.P1211566064202947397` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094707 has offset 0).

The definition of A094707 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 955 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094707.P14831480747310856026

`∑[ogf((x^2+x^3)/(1-x^2-x^4))]`
-/

namespace A094707.P14831480747310856026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, 1] [1, 0, -1, 0, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094707.P14831480747310856026

namespace A094707

/-- `∑[ogf((x^2+x^3)/(1-x^2-x^4))]` -/
def P14831480747310856026.Spec : Prop :=
  ∀ n, P14831480747310856026.a n = A094707 n

end A094707

/-! ## A094707.P1211566064202947397

`∑[a(n-2)+a(n-4)]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094707

/-- `∑[a(n-2)+a(n-4)]` -/
def P1211566064202947397.Spec : Prop :=
  ∀ n, (P1211566064202947397.a n : ℤ) = A094707 n

theorem P1211566064202947397.correct : P1211566064202947397.Spec := by
  intro n
  simp only [A094707]

end A094707

/-! ## A094707.P17436863582427490274

`a(n-2)+a(n-4)+2` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A094707.P17436863582427490274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 2] fun n a =>
  a (n - 2) + (a (n - 4) + 2)

end

end A094707.P17436863582427490274

namespace A094707

/-- `a(n-2)+a(n-4)+2` -/
def P17436863582427490274.Spec : Prop :=
  ∀ n, (P17436863582427490274.a n : ℤ) = A094707 n

end A094707

/-! ## A094707.P5463144762578742913

`∑[A103609(n)]`
-/

namespace A094707.P5463144762578742913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094707.P5463144762578742913

namespace A094707

/-- `∑[A103609(n)]` -/
def P5463144762578742913.Spec : Prop :=
  ∀ n, P5463144762578742913.a n = A094707 n

end A094707

/-! ## A094707.P5955839485362710744

`∑[A103610(4*n)]`
-/

namespace A094707.P5955839485362710744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103610 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094707.P5955839485362710744

namespace A094707

/-- `∑[A103610(4*n)]` -/
def P5955839485362710744.Spec : Prop :=
  ∀ n, P5955839485362710744.a n = A094707 n

end A094707

/-! ## A094707.P15812808990702137438

`A096748(n+2)-2`
-/

namespace A094707.P15812808990702137438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096748 (n + 2) - 2

end

end A094707.P15812808990702137438

namespace A094707

/-- `A096748(n+2)-2` -/
def P15812808990702137438.Spec : Prop :=
  ∀ n, P15812808990702137438.a n = A094707 n

end A094707

/-! ## A094707.P10945447721881673035

`∑[A000045(floor(n/2))]`
-/

namespace A094707.P10945447721881673035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094707.P10945447721881673035

namespace A094707

/-- `∑[A000045(floor(n/2))]` -/
def P10945447721881673035.Spec : Prop :=
  ∀ n, P10945447721881673035.a n = A094707 n

end A094707

/-! ## A094707.P1176351270658508832

`∑[A214927(n+2)/2]`
-/

namespace A094707.P1176351270658508832
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214927 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094707.P1176351270658508832

namespace A094707

/-- `∑[A214927(n+2)/2]` -/
def P1176351270658508832.Spec : Prop :=
  ∀ n, P1176351270658508832.a n = (A094707 n : ℚ)

end A094707

/-! ## A094707.P12296005449556882123

`∑[A212804(ceil((n+1)/2))]`
-/

namespace A094707.P12296005449556882123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 ⌈(n + 1 : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094707.P12296005449556882123

namespace A094707

/-- `∑[A212804(ceil((n+1)/2))]` -/
def P12296005449556882123.Spec : Prop :=
  ∀ n, P12296005449556882123.a n = A094707 n

end A094707

/-! ## A094707.P10627992910486831337

`∑[A001611(ceil((n-1)/2))-1]`
-/

namespace A094707.P10627992910486831337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 ⌈((n : ℤ) - 1 : ℚ) / 2⌉.toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094707.P10627992910486831337

namespace A094707

/-- `∑[A001611(ceil((n-1)/2))-1]` -/
def P10627992910486831337.Spec : Prop :=
  ∀ n, P10627992910486831337.a n = A094707 n

end A094707

/-! ## A094707.P15543901643759054010

`∑[A129982(n+1)*A129982(n)]`
-/

namespace A094707.P15543901643759054010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129982 (n + 1) * A129982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094707.P15543901643759054010

namespace A094707

/-- `∑[A129982(n+1)*A129982(n)]` -/
def P15543901643759054010.Spec : Prop :=
  ∀ n, P15543901643759054010.a n = A094707 n

end A094707

/-! ## A094707.P15946527251208282364

`A000045(A028242(or(1, n)))+a(n-1)` with `a(0)=0`
-/

namespace A094707.P15946527251208282364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000045 (A028242 (Nat.lor 1 n)).toNat + a (n - 1)

end

end A094707.P15946527251208282364

namespace A094707

/-- `A000045(A028242(or(1, n)))+a(n-1)` -/
def P15946527251208282364.Spec : Prop :=
  ∀ n, P15946527251208282364.a n = A094707 n

end A094707

/-! ## A094707.P6279245929731601262

`∑[A000045(A002265(2*n))-1]+n+1`
-/

namespace A094707.P6279245929731601262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002265 (2 * n)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) + 1

end

end A094707.P6279245929731601262

namespace A094707

/-- `∑[A000045(A002265(2*n))-1]+n+1` -/
def P6279245929731601262.Spec : Prop :=
  ∀ n, P6279245929731601262.a n = A094707 n

end A094707

/-! ## A094707.P7922363346600689833

`A131524(n+1)+A131524(n+2)-A103609(n+1)`
-/

namespace A094707.P7922363346600689833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131524 (n + 1) + (A131524 (n + 2) - A103609 (n + 1))

end

end A094707.P7922363346600689833

namespace A094707

/-- `A131524(n+1)+A131524(n+2)-A103609(n+1)` -/
def P7922363346600689833.Spec : Prop :=
  ∀ n, P7922363346600689833.a n = A094707 n

end A094707

/-! ## A094707.P11558294323114107326

`A179999(n+2)/2-1`
-/

namespace A094707.P11558294323114107326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179999 (n + 2) : ℚ) / 2 - 1

end

end A094707.P11558294323114107326

namespace A094707

/-- `A179999(n+2)/2-1` -/
def P11558294323114107326.Spec : Prop :=
  ∀ n, P11558294323114107326.a n = (A094707 n : ℚ)

end A094707

/-! ## A094707.P12191967576619744572

`(A355019(n)-A355018(n))/2`
-/

namespace A094707.P12191967576619744572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355019 n - A355018 n : ℚ) / 2

end

end A094707.P12191967576619744572

namespace A094707

/-- `(A355019(n)-A355018(n))/2` -/
def P12191967576619744572.Spec : Prop :=
  ∀ n, P12191967576619744572.a n = (A094707 n : ℚ)

end A094707

/-!
# A094708: Size of the smallest set hitting all {x, 2x, 3x} contained in D(n) = the first n 3-smooth numbers {1, 2, 3, 4, 6, 8, 9, 12, 16, 18, 24, 27,...} (A003586).

The programs for A094708, there is no canonical definition to state claims against.
-/

/-! ## A094708.P11349216927568321158

`n+1-A057561(n+1)`
-/

namespace A094708.P11349216927568321158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A057561 (n + 1)

end

end A094708.P11349216927568321158

/-! ## A094708.P2437504346942889298

`(n+1)%A057561(C(n+1, n))`
-/

namespace A094708.P2437504346942889298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A057561 (Nat.choose (n + 1) n))

end

end A094708.P2437504346942889298

/-! ## A094708.P16838791464728317791

`1-(A057561(n-log2(1/2))-n)`
-/

namespace A094708.P16838791464728317791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A057561 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat - (n : ℤ))

end

end A094708.P16838791464728317791

/-! ## A094708.P14602881986596588933

`(Δ[n²]-n)%A057561(Δ[n²]-n)`
-/

namespace A094708.P14602881986596588933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)) (A057561 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat)

end

end A094708.P14602881986596588933

/-! ## A094708.P17200793143553775598

`A024000(A057561(n+1))+n`
-/

namespace A094708.P17200793143553775598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A057561 (n + 1)).toNat + (n : ℤ)

end

end A094708.P17200793143553775598

/-! ## A094708.P5334378862804314944

`abs(A131738(n)%A057561(n+1))`
-/

namespace A094708.P5334378862804314944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A131738 n) (A057561 (n + 1))|

end

end A094708.P5334378862804314944

/-!
# A094710: Smaller of a pair (p,q) of primes with (p+q)/2=prime(n)# and q-p is minimal.

The programs for A094710, there is no canonical definition to state claims against.
-/

/-! ## A094710.P7346507194947506681

`A002110(n+2)-A094709(n+2)`
-/

namespace A094710.P7346507194947506681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 2) - A094709 (n + 2)

end

end A094710.P7346507194947506681

/-! ## A094710.P15265536113007156508

`A094711(n+2)-(A094709(n+2)+A094709(n+2))`
-/

namespace A094710.P15265536113007156508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094711 (n + 2) - (A094709 (n + 2) + A094709 (n + 2))

end

end A094710.P15265536113007156508

/-!
# A094711: Larger of a pair (p,q) of primes with (p+q)/2=prime(n)# and q-p is minimal.

The programs for A094711, there is no canonical definition to state claims against.
-/

/-! ## A094711.P13257441733759351346

`A094709(n+2)+A002110(n+2)`
-/

namespace A094711.P13257441733759351346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094709 (n + 2) + A002110 (n + 2)

end

end A094711.P13257441733759351346

/-! ## A094711.P4053370994646444561

`A094709(n+2)+A094710(n+2)+A094709(n+2)`
-/

namespace A094711.P4053370994646444561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094709 (n + 2) + (A094710 (n + 2) + A094709 (n + 2))

end

end A094711.P4053370994646444561

/-!
# A094712: Primes that are not the sum of three positive squares.

The programs for A094712, there is no canonical definition to state claims against.
-/

/-! ## A094712.P9634350864540958636

`record[gcd(A000040(n+1), A094713(n+1))]`
-/

namespace A094712.P9634350864540958636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (n + 1)) (A094713 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094712.P9634350864540958636

/-! ## A094712.P16862110684960985480

`p?[A004214(n+1)]`
-/

namespace A094712.P16862110684960985480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094712.P16862110684960985480

/-! ## A094712.P9793402008953609954

`record[A006530(A004214(n+2))]`
-/

namespace A094712.P9793402008953609954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A004214 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094712.P9793402008953609954

/-! ## A094712.P9468367681828171767

`record[A020639(A004214(n+3))]`
-/

namespace A094712.P9468367681828171767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004214 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094712.P9468367681828171767

/-! ## A094712.P666683436868028004

`filter[A004214(n+1), A010051(#)]`
-/

namespace A094712.P666683436868028004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A094712.P666683436868028004

/-! ## A094712.P11894911276630473895

`filter[A004214(n+1), A353499(#)]`
-/

namespace A094712.P11894911276630473895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353499 (f1 j).toNat = 1) n)

end

end A094712.P11894911276630473895

/-! ## A094712.P3507981988959472148

`filter[A004214(n+2), A380467(#)]`
-/

namespace A094712.P3507981988959472148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004214 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A094712.P3507981988959472148

/-! ## A094712.P8232723242151353816

`∩[A000040(n+1), A004214(n+1)]`
-/

namespace A094712.P8232723242151353816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094712.P8232723242151353816

/-! ## A094712.P13297216403823833578

`∩[A004214(n+1), A042987(n+1)]`
-/

namespace A094712.P13297216403823833578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094712.P13297216403823833578

/-! ## A094712.P7792518980960799387

`∩[A004214(n+1), A045344(n+1)]`
-/

namespace A094712.P7792518980960799387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094712.P7792518980960799387

/-! ## A094712.P5819480480665734966

`∩[A004214(n+1), A045352(n+1)]`
-/

namespace A094712.P5819480480665734966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094712.P5819480480665734966

/-! ## A094712.P5983128073946364298

`∩[A004214(n+1), A045355(n+1)]`
-/

namespace A094712.P5983128073946364298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094712.P5983128073946364298

/-! ## A094712.P8199304744915037376

`∩[A004214(n+1), A116974(n+1)]`
-/

namespace A094712.P8199304744915037376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094712.P8199304744915037376

/-! ## A094712.P1948104123665918743

`∩[A004214(n+1), A182986(n+1)]`
-/

namespace A094712.P1948104123665918743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094712.P1948104123665918743

/-! ## A094712.P7439236018839452070

`∩[A004214(n+1), A189710(n+1)]`
-/

namespace A094712.P7439236018839452070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094712.P7439236018839452070

/-! ## A094712.P4845567842561052710

`∩[A004214(n+1), A216286(n+1)]`
-/

namespace A094712.P4845567842561052710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216286 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094712.P4845567842561052710

/-! ## A094712.P16339955368500315637

`∩[A004214(n+1), A270617(n+1)]`
-/

namespace A094712.P16339955368500315637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094712.P16339955368500315637

/-! ## A094712.P2965042885036780590

`∩[A004214(n+1), A328232(n+1)]`
-/

namespace A094712.P2965042885036780590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094712.P2965042885036780590

/-! ## A094712.P12838908213852835574

`∩[A004214(n+1), A339817(n+1)]`
-/

namespace A094712.P12838908213852835574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094712.P12838908213852835574

/-!
# A094713: Number of ways that prime(n) can be represented as a^2+b^2+c^2 with c >= b >= a > 0.

The programs for A094713, there is no canonical definition to state claims against.
-/

/-! ## A094713.P863152871837521949

`A025427(p?[comp[n²]])`
-/

namespace A094713.P863152871837521949
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A094713.P863152871837521949

/-! ## A094713.P17048022536459998570

`A223730(p?[comp[n²]])`
-/

namespace A094713.P17048022536459998570
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223730 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A094713.P17048022536459998570

/-! ## A094713.P10652631410722741031

`A223730(record[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1])`
-/

namespace A094713.P10652631410722741031
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223730 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A094713.P10652631410722741031

/-! ## A094713.P16193013000264293118

`A025427(A000040(n+1))`
-/

namespace A094713.P16193013000264293118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 (A000040 (n + 1)).toNat

end

end A094713.P16193013000264293118

/-! ## A094713.P10967237488560946691

`A025427(A006005(n+1))`
-/

namespace A094713.P10967237488560946691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 (A006005 (n + 1)).toNat

end

end A094713.P10967237488560946691

/-! ## A094713.P9360346474390410247

`A025427(A161847(n+1))`
-/

namespace A094713.P9360346474390410247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 (A161847 (n + 1)).toNat

end

end A094713.P9360346474390410247

/-! ## A094713.P17631271671595973055

`A025427(A008578(n+2))`
-/

namespace A094713.P17631271671595973055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 (A008578 (n + 2)).toNat

end

end A094713.P17631271671595973055

/-! ## A094713.P1368386121280148379

`A025427(A075643(n+2))`
-/

namespace A094713.P1368386121280148379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 (A075643 (n + 2)).toNat

end

end A094713.P1368386121280148379

/-! ## A094713.P1642760514021579874

`A025427(eq[2, A092976(n)])`
-/

namespace A094713.P1642760514021579874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092976 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A094713.P1642760514021579874

/-! ## A094713.P4372570326038743839

`A025427(eq[2, A225244(n)])`
-/

namespace A094713.P4372570326038743839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A094713.P4372570326038743839

/-! ## A094713.P6313582147126609683

`A025427(eq[2, A327859(n)])`
-/

namespace A094713.P6313582147126609683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A094713.P6313582147126609683

/-! ## A094713.P18357499729526415578

`A025427(eq[2, A343371(n)])`
-/

namespace A094713.P18357499729526415578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343371 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A094713.P18357499729526415578

/-! ## A094713.P12981536417287066688

`A025427(record[A006530(n+2)])`
-/

namespace A094713.P12981536417287066688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A094713.P12981536417287066688

/-! ## A094713.P12522325171622663352

`A025427(record[A014963(n+2)])`
-/

namespace A094713.P12522325171622663352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A094713.P12522325171622663352

/-! ## A094713.P8127432219348413670

`A025427(record[A020639(n+2)])`
-/

namespace A094713.P8127432219348413670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A094713.P8127432219348413670

/-! ## A094713.P10257102229931850997

`A223730(record[A006530(n+2)])`
-/

namespace A094713.P10257102229931850997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223730 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A094713.P10257102229931850997

/-! ## A094713.P12327478150203103335

`A223730(record[A014963(n+2)])`
-/

namespace A094713.P12327478150203103335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223730 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A094713.P12327478150203103335

/-! ## A094713.P3711031943183460013

`A223730(record[A020639(n+2)])`
-/

namespace A094713.P3711031943183460013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223730 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A094713.P3711031943183460013

/-! ## A094713.P14101471796140056682

`A025427(eq[1, A001222(n+1)]+1)`
-/

namespace A094713.P14101471796140056682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A094713.P14101471796140056682

/-! ## A094713.P13660803498941983668

`A025427(eq[2, A000005(n+1)]+1)`
-/

namespace A094713.P13660803498941983668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A094713.P13660803498941983668

/-!
# A094714: Smallest prime having exactly n representations as a^2+b^2+c^2 with c >= b >= a > 0.

The programs for A094714, there is no canonical definition to state claims against.
-/

/-! ## A094714.P3193029556563721236

`A166985(A108701(n+1))`
-/

namespace A094714.P3193029556563721236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166985 (A108701 (n + 1)).toNat

end

end A094714.P3193029556563721236

/-!
# A094717: a(n) = n! * Sum_{i+2j+3k=n} 1/(i!*(2j)!*(3k)!).

The programs for A094717, the canonical program `A094717.P15065802490078978138` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094717 has offset 0).

The definition of A094717 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094717.P15065802490078978138

`ceil(A092236(n)/2)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A094717

/-- `ceil(A092236(n)/2)` -/
def P15065802490078978138.Spec : Prop :=
  ∀ n, P15065802490078978138.a n = A094717 n

theorem P15065802490078978138.correct : P15065802490078978138.Spec := by
  intro n
  simp only [A094717]

end A094717

/-! ## A094717.P6115038240372329876

`ceil((A057681(n)+3^(n-1))/2)`
-/

namespace A094717.P6115038240372329876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A057681 n : ℚ) + (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) / 2⌉

end

end A094717.P6115038240372329876

namespace A094717

/-- `ceil((A057681(n)+3^(n-1))/2)` -/
def P6115038240372329876.Spec : Prop :=
  ∀ n, P6115038240372329876.a n = A094717 n

end A094717

/-! ## A094717.P10378700981873395299

`ceil((A140429(n)+A057681(n))/2)`
-/

namespace A094717.P10378700981873395299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A140429 n + A057681 n : ℚ) / 2⌉

end

end A094717.P10378700981873395299

namespace A094717

/-- `ceil((A140429(n)+A057681(n))/2)` -/
def P10378700981873395299.Spec : Prop :=
  ∀ n, P10378700981873395299.a n = A094717 n

end A094717

/-! ## A094717.P12771077212070924967

`round(A092236(n)/A020639(A125514(n)))`
-/

namespace A094717.P12771077212070924967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A092236 n : ℚ) / (A020639 (A125514 n).toNat : ℚ))

end

end A094717.P12771077212070924967

namespace A094717

/-- `round(A092236(n)/A020639(A125514(n)))` -/
def P12771077212070924967.Spec : Prop :=
  ∀ n, P12771077212070924967.a n = A094717 n

end A094717

/-!
# A094718: Array T read by antidiagonals: T(n,k) is the number of involutions avoiding 132 and 12...k.

The programs for A094718, there is no canonical definition to state claims against.
-/

/-! ## A094718.P2465828799816215597

`A068914(∑[2*n]%(comp[∑[n]]+1)+1+n)`
-/

namespace A094718.P2465828799816215597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068914 ((∑ j ∈ Finset.range (n + 1), f1 j) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1) + 1 + n)

end

end A094718.P2465828799816215597

/-! ## A094718.P6078841285711293302

`A068914(A099375(n)+n)`
-/

namespace A094718.P6078841285711293302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068914 (A099375 n + (n : ℤ)).toNat

end

end A094718.P6078841285711293302

/-! ## A094718.P17475373119815691518

`A068914(A038722(comp[∑[n]]+2))`
-/

namespace A094718.P17475373119815691518
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068914 (A038722 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2)).toNat

end

end A094718.P17475373119815691518

/-! ## A094718.P1961248863819069406

`A068914(A007401(n+1)+round(sqrt(2*(n+1)))²-(2*n+1))`
-/

namespace A094718.P1961248863819069406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068914 (A007401 (n + 1) + (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ))).toNat

end

end A094718.P1961248863819069406

/-! ## A094718.P11601604339080529641

`A068914(A007401(A061579(n)+1))`
-/

namespace A094718.P11601604339080529641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068914 (A007401 (A061579 n + 1).toNat).toNat

end

end A094718.P11601604339080529641

/-! ## A094718.P14184988201272136452

`A068914(A038722(n+1)+A003056(n))`
-/

namespace A094718.P14184988201272136452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068914 (A038722 (n + 1) + A003056 n).toNat

end

end A094718.P14184988201272136452

/-! ## A094718.P6688397248065743541

`A068914(A061579(n)+A002024(n+1))`
-/

namespace A094718.P6688397248065743541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068914 (A061579 n + A002024 (n + 1)).toNat

end

end A094718.P6688397248065743541

/-! ## A094718.P16971905942556309190

`A068914(A380649(n+1))`
-/

namespace A094718.P16971905942556309190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068914 (A380649 (n + 1)).toNat

end

end A094718.P16971905942556309190

/-!
# A094719: Sum[k=1..n, T(k,n-k+1)], where T is array A094718.

The programs for A094719, there is no canonical definition to state claims against.
-/

/-! ## A094719.P12952781368957593477

`A334683(n+2)-1`
-/

namespace A094719.P12952781368957593477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334683 (n + 2) - 1

end

end A094719.P12952781368957593477

/-! ## A094719.P10819290930643086930

`∑[abs(Δ[A334683(n+1)])]`
-/

namespace A094719.P10819290930643086930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334683 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094719.P10819290930643086930

/-! ## A094719.P3079143942582969423

`record[A334683(n)+A057428(n)]`
-/

namespace A094719.P3079143942582969423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334683 n + A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094719.P3079143942582969423

/-! ## A094719.P12236616956212056552

`record[A334683(n)-A057427(n)]`
-/

namespace A094719.P12236616956212056552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334683 n - A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094719.P12236616956212056552

/-! ## A094719.P13065142102860213098

`record[A334683(n)-A178334(n)]`
-/

namespace A094719.P13065142102860213098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334683 n - A178334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094719.P13065142102860213098

/-!
# A094722: Primes p whose order of primeness A078442(p) is at least 13.

The programs for A094722, there is no canonical definition to state claims against.
-/

/-! ## A094722.P16550524977715737464

`A093047(∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]]+1)`
-/

namespace A094722.P16550524977715737464
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093047 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A094722.P16550524977715737464

/-!
# A094723: a(n) = Pell(n+2) - 2^n.

The programs for A094723, the canonical program `A094723.P7094102109919281291` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094723 has offset 0).

The definition of A094723 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094723.P7094102109919281291

`4*a(n-1)-3*a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=3, a(2)=8`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094723

/-- `4*a(n-1)-3*a(n-2)-2*a(n-3)` -/
def P7094102109919281291.Spec : Prop :=
  ∀ n, P7094102109919281291.a n = A094723 n

theorem P7094102109919281291.correct : P7094102109919281291.Spec := by
  intro n
  simp only [A094723]

end A094723

/-! ## A094723.P15435980521472764317

`ogf((1-x-x^2)/(1-4x+3x^2+2x^3))`
-/

namespace A094723.P15435980521472764317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -4, 3, 2] n

end

end A094723.P15435980521472764317

namespace A094723

/-- `ogf((1-x-x^2)/(1-4x+3x^2+2x^3))` -/
def P15435980521472764317.Spec : Prop :=
  ∀ n, P15435980521472764317.a n = A094723 n

end A094723

/-! ## A094723.P12087924135559618155

`A094706(n)+2^n`
-/

namespace A094723.P12087924135559618155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094706 n + (2 ^ n : ℤ)

end

end A094723.P12087924135559618155

namespace A094723

/-- `A094706(n)+2^n` -/
def P12087924135559618155.Spec : Prop :=
  ∀ n, P12087924135559618155.a n = A094723 n

end A094723

/-! ## A094723.P16449309745424582323

`∑[round(A175658(n)/2)]`
-/

namespace A094723.P16449309745424582323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A175658 n : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094723.P16449309745424582323

namespace A094723

/-- `∑[round(A175658(n)/2)]` -/
def P16449309745424582323.Spec : Prop :=
  ∀ n, P16449309745424582323.a n = A094723 n

end A094723

/-! ## A094723.P8528676837735626446

`A000129(n+2)-2^n`
-/

namespace A094723.P8528676837735626446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 2) - (2 ^ n : ℤ)

end

end A094723.P8528676837735626446

namespace A094723

/-- `A000129(n+2)-2^n` -/
def P8528676837735626446.Spec : Prop :=
  ∀ n, P8528676837735626446.a n = A094723 n

end A094723

/-! ## A094723.P8050614947802404459

`A215928(n+2)-2^n`
-/

namespace A094723.P8050614947802404459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 (n + 2) - (2 ^ n : ℤ)

end

end A094723.P8050614947802404459

namespace A094723

/-- `A215928(n+2)-2^n` -/
def P8050614947802404459.Spec : Prop :=
  ∀ n, P8050614947802404459.a n = A094723 n

end A094723

/-! ## A094723.P16941349819496570490

`A249576(3*n)+2*a(n-1)` with `a(0)=1`
-/

namespace A094723.P16941349819496570490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A249576 (3 * n) + 2 * a (n - 1)

end

end A094723.P16941349819496570490

namespace A094723

/-- `A249576(3*n)+2*a(n-1)` -/
def P16941349819496570490.Spec : Prop :=
  ∀ n, P16941349819496570490.a n = A094723 n

end A094723

/-! ## A094723.P7706381717896725834

`∑[A001333(n+1)-floor(2^(n-1))]`
-/

namespace A094723.P7706381717896725834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) - ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094723.P7706381717896725834

namespace A094723

/-- `∑[A001333(n+1)-floor(2^(n-1))]` -/
def P7706381717896725834.Spec : Prop :=
  ∀ n, P7706381717896725834.a n = A094723 n

end A094723

/-! ## A094723.P10669974992544325698

`A156664(n)+A000129(n)`
-/

namespace A094723.P10669974992544325698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156664 n + A000129 n

end

end A094723.P10669974992544325698

namespace A094723

/-- `A156664(n)+A000129(n)` -/
def P10669974992544325698.Spec : Prop :=
  ∀ n, P10669974992544325698.a n = A094723 n

end A094723

/-! ## A094723.P2928386109546600324

`A175658(n)-A000129(n)`
-/

namespace A094723.P2928386109546600324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175658 n - A000129 n

end

end A094723.P2928386109546600324

namespace A094723

/-- `A175658(n)-A000129(n)` -/
def P2928386109546600324.Spec : Prop :=
  ∀ n, P2928386109546600324.a n = A094723 n

end A094723

/-! ## A094723.P15250161742827684445

`A052937(n+1)-A000051(n)`
-/

namespace A094723.P15250161742827684445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052937 (n + 1) - A000051 n

end

end A094723.P15250161742827684445

namespace A094723

/-- `A052937(n+1)-A000051(n)` -/
def P15250161742827684445.Spec : Prop :=
  ∀ n, P15250161742827684445.a n = A094723 n

end A094723

/-! ## A094723.P17897344803369391268

`A129589(n+1)-A000295(n)`
-/

namespace A094723.P17897344803369391268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129589 (n + 1) - A000295 n

end

end A094723.P17897344803369391268

namespace A094723

/-- `A129589(n+1)-A000295(n)` -/
def P17897344803369391268.Spec : Prop :=
  ∀ n, P17897344803369391268.a n = A094723 n

end A094723

/-! ## A094723.P8897672366264417594

`A005409(n+2)-A000225(n)`
-/

namespace A094723.P8897672366264417594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005409 (n + 2) - A000225 n

end

end A094723.P8897672366264417594

namespace A094723

/-- `A005409(n+2)-A000225(n)` -/
def P8897672366264417594.Spec : Prop :=
  ∀ n, P8897672366264417594.a n = A094723 n

end A094723

/-! ## A094723.P8962289000731674872

`A052548(n)+A094706(n)-2`
-/

namespace A094723.P8962289000731674872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052548 n + (A094706 n - 2)

end

end A094723.P8962289000731674872

namespace A094723

/-- `A052548(n)+A094706(n)-2` -/
def P8962289000731674872.Spec : Prop :=
  ∀ n, P8962289000731674872.a n = A094723 n

end A094723

/-! ## A094723.P295063303112750409

`∑[A001333(n+1)]-A000225(n)`
-/

namespace A094723.P295063303112750409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000225 n

end

end A094723.P295063303112750409

namespace A094723

/-- `∑[A001333(n+1)]-A000225(n)` -/
def P295063303112750409.Spec : Prop :=
  ∀ n, P295063303112750409.a n = A094723 n

end A094723

/-! ## A094723.P5901105325613209377

`A156664(n)+A163271(n+1)/2`
-/

namespace A094723.P5901105325613209377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156664 n : ℚ) + (A163271 (n + 1) : ℚ) / 2

end

end A094723.P5901105325613209377

namespace A094723

/-- `A156664(n)+A163271(n+1)/2` -/
def P5901105325613209377.Spec : Prop :=
  ∀ n, P5901105325613209377.a n = (A094723 n : ℚ)

end A094723

/-! ## A094723.P3031327392203066511

`A175658(n)-A163271(n+1)/2`
-/

namespace A094723.P3031327392203066511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175658 n : ℚ) - (A163271 (n + 1) : ℚ) / 2

end

end A094723.P3031327392203066511

namespace A094723

/-- `A175658(n)-A163271(n+1)/2` -/
def P3031327392203066511.Spec : Prop :=
  ∀ n, P3031327392203066511.a n = (A094723 n : ℚ)

end A094723

/-! ## A094723.P4698011129113217676

`A052937(n+1)-(A011782(n+1)+1)`
-/

namespace A094723.P4698011129113217676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052937 (n + 1) - (A011782 (n + 1) + 1)

end

end A094723.P4698011129113217676

namespace A094723

/-- `A052937(n+1)-(A011782(n+1)+1)` -/
def P4698011129113217676.Spec : Prop :=
  ∀ n, P4698011129113217676.a n = A094723 n

end A094723

/-! ## A094723.P10286227914377547295

`A307465(n+1)+A307465(n+1)-A000325(n)`
-/

namespace A094723.P10286227914377547295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307465 (n + 1) + (A307465 (n + 1) - A000325 n)

end

end A094723.P10286227914377547295

namespace A094723

/-- `A307465(n+1)+A307465(n+1)-A000325(n)` -/
def P10286227914377547295.Spec : Prop :=
  ∀ n, P10286227914377547295.a n = A094723 n

end A094723

/-! ## A094723.P17484981743365550644

`Δ[A267905(n+1)]`
-/

namespace A094723.P17484981743365550644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094723.P17484981743365550644

namespace A094723

/-- `Δ[A267905(n+1)]` -/
def P17484981743365550644.Spec : Prop :=
  ∀ n, P17484981743365550644.a n = A094723 n

end A094723

/-!
# A094726: Let M = the 2 X 2 matrix [ 0 3 / 3 2]. Take (M^n * [1 1])/3 = [p q]; then a(n) = p.

The programs for A094726, the canonical program `A094726.P3974197819166346047` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094726 has offset 1).

The definition of A094726 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094726.P3974197819166346047

`2*a(n-1)+9*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094726

/-- `2*a(n-1)+9*a(n-2)` -/
def P3974197819166346047.Spec : Prop :=
  ∀ n, (P3974197819166346047.a n : ℤ) = A094726 (n + 1)

theorem P3974197819166346047.correct : P3974197819166346047.Spec := by
  intro n
  simp only [A094726, Nat.add_sub_cancel]

end A094726

/-! ## A094726.P5414719356946240592

`ogf((1+3x)/(1-2x-9x^2))`
-/

namespace A094726.P5414719356946240592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -2, -9] n

end

end A094726.P5414719356946240592

namespace A094726

/-- `ogf((1+3x)/(1-2x-9x^2))` -/
def P5414719356946240592.Spec : Prop :=
  ∀ n, P5414719356946240592.a n = A094726 (n + 1)

end A094726

/-! ## A094726.P18112312797659416632

`a(n-1)+a(n-1)+a(n-2)/(1/3)²` with `a(0)=1, a(1)=5`
-/

namespace A094726.P18112312797659416632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 2) / ((1 : ℚ) / 3) ^ 2)

end

end A094726.P18112312797659416632

namespace A094726

/-- `a(n-1)+a(n-1)+a(n-2)/(1/3)²` -/
def P18112312797659416632.Spec : Prop :=
  ∀ n, P18112312797659416632.a n = (A094726 (n + 1) : ℚ)

end A094726

/-! ## A094726.P10029173113783728553

`6*a(n-1)-A002535(n)` with `a(0)=1, a(1)=5`
-/

namespace A094726.P10029173113783728553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  6 * a (n - 1) - A002535 n

end

end A094726.P10029173113783728553

namespace A094726

/-- `6*a(n-1)-A002535(n)` -/
def P10029173113783728553.Spec : Prop :=
  ∀ n, P10029173113783728553.a n = A094726 (n + 1)

end A094726

/-! ## A094726.P16122831750275916959

`6*a(n-1)-Δ[A002534(n)]` with `a(0)=1`
-/

namespace A094726.P16122831750275916959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002534 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (n - 1) - (f1 (n + 1) - f1 n)

end

end A094726.P16122831750275916959

namespace A094726

/-- `6*a(n-1)-Δ[A002534(n)]` -/
def P16122831750275916959.Spec : Prop :=
  ∀ n, P16122831750275916959.a n = A094726 (n + 1)

end A094726

/-! ## A094726.P14123532396359736280

`A123007(n+1)+2*A002534(n)`
-/

namespace A094726.P14123532396359736280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123007 (n + 1) + 2 * A002534 n

end

end A094726.P14123532396359736280

namespace A094726

/-- `A123007(n+1)+2*A002534(n)` -/
def P14123532396359736280.Spec : Prop :=
  ∀ n, P14123532396359736280.a n = A094726 (n + 1)

end A094726

/-! ## A094726.P6998848720203046475

`2*A123007(n+1)-A002535(n)`
-/

namespace A094726.P6998848720203046475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A123007 (n + 1) - A002535 n

end

end A094726.P6998848720203046475

namespace A094726

/-- `2*A123007(n+1)-A002535(n)` -/
def P6998848720203046475.Spec : Prop :=
  ∀ n, P6998848720203046475.a n = A094726 (n + 1)

end A094726

/-! ## A094726.P17068661664104360599

`A123007(n+2)/3`
-/

namespace A094726.P17068661664104360599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123007 (n + 2) : ℚ) / 3

end

end A094726.P17068661664104360599

namespace A094726

/-- `A123007(n+2)/3` -/
def P17068661664104360599.Spec : Prop :=
  ∀ n, P17068661664104360599.a n = (A094726 (n + 1) : ℚ)

end A094726

/-! ## A094726.P14272145299527596095

`A328604(n+2)/27`
-/

namespace A094726.P14272145299527596095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328604 (n + 2) : ℚ) / 27

end

end A094726.P14272145299527596095

namespace A094726

/-- `A328604(n+2)/27` -/
def P14272145299527596095.Spec : Prop :=
  ∀ n, P14272145299527596095.a n = (A094726 (n + 1) : ℚ)

end A094726

/-!
# A094727: Triangle read by rows: T(n,k) = n + k, 0 <= k < n, n >= 1.

The programs for A094727, the canonical program `A094727.P1759177724676722475` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094727 has offset 1).

The definition of A094727 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094727.P1759177724676722475

`A002260(n+1)+A003056(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A094727

/-- `A002260(n+1)+A003056(n)` -/
def P1759177724676722475.Spec : Prop :=
  ∀ n, P1759177724676722475.a n = A094727 (n + 1)

theorem P1759177724676722475.correct : P1759177724676722475.Spec := by
  intro n
  simp only [A094727, Nat.add_sub_cancel]

end A094727

/-! ## A094727.P9357711725587089769

`1-C(∑[char[∑[n+1]]], 2)+n`
-/

namespace A094727.P9357711725587089769
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)

end

end A094727.P9357711725587089769

namespace A094727

/-- `1-C(∑[char[∑[n+1]]], 2)+n` -/
def P9357711725587089769.Spec : Prop :=
  ∀ n, P9357711725587089769.a n = A094727 (n + 1)

end A094727

/-! ## A094727.P6792689790337923027

`Δ[n²]-eq[0, floor(2*sqrt(n))%2]`
-/

namespace A094727.P6792689790337923027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt (n : ℝ)⌋ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ)

end

end A094727.P6792689790337923027

namespace A094727

/-- `Δ[n²]-eq[0, floor(2*sqrt(n))%2]` -/
def P6792689790337923027.Spec : Prop :=
  ∀ n, P6792689790337923027.a n = A094727 (n + 1)

end A094727

/-! ## A094727.P18041856960598457153

`A051162(n)+1`
-/

namespace A094727.P18041856960598457153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 n + 1

end

end A094727.P18041856960598457153

namespace A094727

/-- `A051162(n)+1` -/
def P18041856960598457153.Spec : Prop :=
  ∀ n, P18041856960598457153.a n = A094727 (n + 1)

end A094727

/-! ## A094727.P2165048043961329341

`A108872(n+1)-1`
-/

namespace A094727.P2165048043961329341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108872 (n + 1) - 1

end

end A094727.P2165048043961329341

namespace A094727

/-- `A108872(n+1)-1` -/
def P2165048043961329341.Spec : Prop :=
  ∀ n, P2165048043961329341.a n = A094727 (n + 1)

end A094727

/-! ## A094727.P13866355582558679039

`(A131432(n)+2)/3`
-/

namespace A094727.P13866355582558679039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131432 n + 2 : ℚ) / 3

end

end A094727.P13866355582558679039

namespace A094727

/-- `(A131432(n)+2)/3` -/
def P13866355582558679039.Spec : Prop :=
  ∀ n, P13866355582558679039.a n = (A094727 (n + 1) : ℚ)

end A094727

/-! ## A094727.P3030407873718151801

`floor(sqrt(A214604(n+1)))`
-/

namespace A094727.P3030407873718151801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A214604 (n + 1))

end

end A094727.P3030407873718151801

namespace A094727

/-- `floor(sqrt(A214604(n+1)))` -/
def P3030407873718151801.Spec : Prop :=
  ∀ n, P3030407873718151801.a n = A094727 (n + 1)

end A094727

/-! ## A094727.P11686785675461283302

`ceil(sqrt(A214661(n+1)))`
-/

namespace A094727.P11686785675461283302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A214661 (n + 1) : ℝ)⌉

end

end A094727.P11686785675461283302

namespace A094727

/-- `ceil(sqrt(A214661(n+1)))` -/
def P11686785675461283302.Spec : Prop :=
  ∀ n, P11686785675461283302.a n = A094727 (n + 1)

end A094727

/-! ## A094727.P12831113169747557349

`floor(log2(A130324(n)))+1`
-/

namespace A094727.P12831113169747557349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A130324 n).toNat + 1

end

end A094727.P12831113169747557349

namespace A094727

/-- `floor(log2(A130324(n)))+1` -/
def P12831113169747557349.Spec : Prop :=
  ∀ n, (P12831113169747557349.a n : ℤ) = A094727 (n + 1)

end A094727

/-! ## A094727.P1863541068459472017

`Δ[n²]-A063656(n)`
-/

namespace A094727.P1863541068459472017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A063656 n

end

end A094727.P1863541068459472017

namespace A094727

/-- `Δ[n²]-A063656(n)` -/
def P1863541068459472017.Spec : Prop :=
  ∀ n, P1863541068459472017.a n = A094727 (n + 1)

end A094727

/-! ## A094727.P9293087796147231749

`(A131421(n+1)+1)/2`
-/

namespace A094727.P9293087796147231749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131421 (n + 1) + 1 : ℚ) / 2

end

end A094727.P9293087796147231749

namespace A094727

/-- `(A131421(n+1)+1)/2` -/
def P9293087796147231749.Spec : Prop :=
  ∀ n, P9293087796147231749.a n = (A094727 (n + 1) : ℚ)

end A094727

/-! ## A094727.P8362576865823842077

`floor(log2(A233757(n+1)))+1`
-/

namespace A094727.P8362576865823842077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A233757 (n + 1)).toNat + 1

end

end A094727.P8362576865823842077

namespace A094727

/-- `floor(log2(A233757(n+1)))+1` -/
def P8362576865823842077.Spec : Prop :=
  ∀ n, (P8362576865823842077.a n : ℤ) = A094727 (n + 1)

end A094727

/-! ## A094727.P16202129890062974432

`∑[char[∑[n+1]]]+A002262(n)+1`
-/

namespace A094727.P16202129890062974432
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A002262 n + 1)

end

end A094727.P16202129890062974432

namespace A094727

/-- `∑[char[∑[n+1]]]+A002262(n)+1` -/
def P16202129890062974432.Spec : Prop :=
  ∀ n, P16202129890062974432.a n = A094727 (n + 1)

end A094727

/-! ## A094727.P8555004963217490641

`A008620(A131432(n))`
-/

namespace A094727.P8555004963217490641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A131432 n).toNat

end

end A094727.P8555004963217490641

namespace A094727

/-- `A008620(A131432(n))` -/
def P8555004963217490641.Spec : Prop :=
  ∀ n, P8555004963217490641.a n = A094727 (n + 1)

end A094727

/-! ## A094727.P13982063180527395210

`A000463(A131421(n+1))`
-/

namespace A094727.P13982063180527395210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A131421 (n + 1)).toNat

end

end A094727.P13982063180527395210

namespace A094727

/-- `A000463(A131421(n+1))` -/
def P13982063180527395210.Spec : Prop :=
  ∀ n, P13982063180527395210.a n = A094727 (n + 1)

end A094727

/-! ## A094727.P15312048574219228703

`A294317(A061579(n))+1`
-/

namespace A094727.P15312048574219228703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294317 (A061579 n).toNat + 1

end

end A094727.P15312048574219228703

namespace A094727

/-- `A294317(A061579(n))+1` -/
def P15312048574219228703.Spec : Prop :=
  ∀ n, P15312048574219228703.a n = A094727 (n + 1)

end A094727

/-! ## A094727.P6989305072137333733

`A008619(2*A051162(n))`
-/

namespace A094727.P6989305072137333733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A051162 n).toNat

end

end A094727.P6989305072137333733

namespace A094727

/-- `A008619(2*A051162(n))` -/
def P6989305072137333733.Spec : Prop :=
  ∀ n, P6989305072137333733.a n = A094727 (n + 1)

end A094727

/-! ## A094727.P1222539563986439701

`A027656(2*A051162(n))`
-/

namespace A094727.P1222539563986439701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (2 * A051162 n).toNat

end

end A094727.P1222539563986439701

namespace A094727

/-- `A027656(2*A051162(n))` -/
def P1222539563986439701.Spec : Prop :=
  ∀ n, P1222539563986439701.a n = A094727 (n + 1)

end A094727

/-! ## A094727.P16606343462778368609

`A028242(2*A051162(n))`
-/

namespace A094727.P16606343462778368609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A051162 n).toNat

end

end A094727.P16606343462778368609

namespace A094727

/-- `A028242(2*A051162(n))` -/
def P16606343462778368609.Spec : Prop :=
  ∀ n, P16606343462778368609.a n = A094727 (n + 1)

end A094727

/-! ## A094727.P5362112681156422422

`A029579(2*A051162(n))`
-/

namespace A094727.P5362112681156422422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A051162 n).toNat

end

end A094727.P5362112681156422422

namespace A094727

/-- `A029579(2*A051162(n))` -/
def P5362112681156422422.Spec : Prop :=
  ∀ n, P5362112681156422422.a n = A094727 (n + 1)

end A094727

/-!
# A094728: Triangle read by rows: T(n,k) = n^2 - k^2, 0 <= k < n.

The programs for A094728, the canonical program `A094728.P9076247720807902935` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094728 has offset 1).

The definition of A094728 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094728.P15343177627336678451

`∑[char[∑[n]]]²-A002262(n)²`
-/

namespace A094728.P15343177627336678451
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - A002262 n ^ 2

end

end A094728.P15343177627336678451

namespace A094728

/-- `∑[char[∑[n]]]²-A002262(n)²` -/
def P15343177627336678451.Spec : Prop :=
  ∀ n, P15343177627336678451.a n = A094728 (n + 1)

end A094728

/-! ## A094728.P14121474854294135261

`comp[∑[n]]+n-A002260(n+1)²`
-/

namespace A094728.P14121474854294135261
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n : ℤ) - A002260 (n + 1) ^ 2

end

end A094728.P14121474854294135261

namespace A094728

/-- `comp[∑[n]]+n-A002260(n+1)²` -/
def P14121474854294135261.Spec : Prop :=
  ∀ n, P14121474854294135261.a n = A094728 (n + 1)

end A094728

/-! ## A094728.P2555224788671253889

`A271668(n)+A049780(n)`
-/

namespace A094728.P2555224788671253889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271668 n + A049780 n

end

end A094728.P2555224788671253889

namespace A094728

/-- `A271668(n)+A049780(n)` -/
def P2555224788671253889.Spec : Prop :=
  ∀ n, P2555224788671253889.a n = A094728 (n + 1)

end A094728

/-! ## A094728.P12786862424005658655

`A335821(n)+A131507(n)`
-/

namespace A094728.P12786862424005658655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335821 n + A131507 n

end

end A094728.P12786862424005658655

namespace A094728

/-- `A335821(n)+A131507(n)` -/
def P12786862424005658655.Spec : Prop :=
  ∀ n, P12786862424005658655.a n = A094728 (n + 1)

end A094728

/-! ## A094728.P10070540928477867611

`A128140(n+1)+A059036(n)`
-/

namespace A094728.P10070540928477867611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128140 (n + 1) + A059036 n

end

end A094728.P10070540928477867611

namespace A094728

/-- `A128140(n+1)+A059036(n)` -/
def P10070540928477867611.Spec : Prop :=
  ∀ n, P10070540928477867611.a n = A094728 (n + 1)

end A094728

/-! ## A094728.P16005139219090234243

`A101447(n)+A095832(n+1)`
-/

namespace A094728.P16005139219090234243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101447 n + A095832 (n + 1)

end

end A094728.P16005139219090234243

namespace A094728

/-- `A101447(n)+A095832(n+1)` -/
def P16005139219090234243.Spec : Prop :=
  ∀ n, P16005139219090234243.a n = A094728 (n + 1)

end A094728

/-! ## A094728.P5325081141451333195

`A185877(n+1)+A051162(n)`
-/

namespace A094728.P5325081141451333195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185877 (n + 1) + A051162 n

end

end A094728.P5325081141451333195

namespace A094728

/-- `A185877(n+1)+A051162(n)` -/
def P5325081141451333195.Spec : Prop :=
  ∀ n, P5325081141451333195.a n = A094728 (n + 1)

end A094728

/-! ## A094728.P7912573413859074698

`A204250(n+1)+A091435(n)`
-/

namespace A094728.P7912573413859074698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204250 (n + 1) + A091435 n

end

end A094728.P7912573413859074698

namespace A094728

/-- `A204250(n+1)+A091435(n)` -/
def P7912573413859074698.Spec : Prop :=
  ∀ n, P7912573413859074698.a n = A094728 (n + 1)

end A094728

/-! ## A094728.P8833172757310839901

`A093995(n+1)-A143844(n)`
-/

namespace A094728.P8833172757310839901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) - A143844 n

end

end A094728.P8833172757310839901

namespace A094728

/-- `A093995(n+1)-A143844(n)` -/
def P8833172757310839901.Spec : Prop :=
  ∀ n, P8833172757310839901.a n = A094728 (n + 1)

end A094728

/-! ## A094728.P7279202396849706589

`A131896(n+1)*A193592(n)`
-/

namespace A094728.P7279202396849706589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131896 (n + 1) * A193592 n

end

end A094728.P7279202396849706589

namespace A094728

/-- `A131896(n+1)*A193592(n)` -/
def P7279202396849706589.Spec : Prop :=
  ∀ n, P7279202396849706589.a n = A094728 (n + 1)

end A094728

/-! ## A094728.P11733796348494297820

`A002024(n+1)²-A143844(n)`
-/

namespace A094728.P11733796348494297820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) ^ 2 - A143844 n

end

end A094728.P11733796348494297820

namespace A094728

/-- `A002024(n+1)²-A143844(n)` -/
def P11733796348494297820.Spec : Prop :=
  ∀ n, P11733796348494297820.a n = A094728 (n + 1)

end A094728

/-! ## A094728.P18242232412915689165

`(A003056(n)+1)²-A143844(n)`
-/

namespace A094728.P18242232412915689165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003056 n + 1) ^ 2 - A143844 n

end

end A094728.P18242232412915689165

namespace A094728

/-- `(A003056(n)+1)²-A143844(n)` -/
def P18242232412915689165.Spec : Prop :=
  ∀ n, P18242232412915689165.a n = A094728 (n + 1)

end A094728

/-! ## A094728.P14993589653464313071

`A096037(n+1)-A049777(n+1)`
-/

namespace A094728.P14993589653464313071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096037 (n + 1) - A049777 (n + 1)

end

end A094728.P14993589653464313071

namespace A094728

/-- `A096037(n+1)-A049777(n+1)` -/
def P14993589653464313071.Spec : Prop :=
  ∀ n, P14993589653464313071.a n = A094728 (n + 1)

end A094728

/-! ## A094728.P5466361077993019247

`A217575(n+1)-A185910(n+1)`
-/

namespace A094728.P5466361077993019247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217575 (n + 1) - A185910 (n + 1)

end

end A094728.P5466361077993019247

namespace A094728

/-- `A217575(n+1)-A185910(n+1)` -/
def P5466361077993019247.Spec : Prop :=
  ∀ n, P5466361077993019247.a n = A094728 (n + 1)

end A094728

/-! ## A094728.P15203407522336615032

`A205128(n+1)-A205016(n+1)`
-/

namespace A094728.P15203407522336615032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205128 (n + 1) - A205016 (n + 1)

end

end A094728.P15203407522336615032

namespace A094728

/-- `A205128(n+1)-A205016(n+1)` -/
def P15203407522336615032.Spec : Prop :=
  ∀ n, P15203407522336615032.a n = A094728 (n + 1)

end A094728

/-! ## A094728.P9076247720807902935

`(A051162(n)+1)*A004736(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A094728

/-- `(A051162(n)+1)*A004736(n+1)` -/
def P9076247720807902935.Spec : Prop :=
  ∀ n, P9076247720807902935.a n = A094728 (n + 1)

theorem P9076247720807902935.correct : P9076247720807902935.Spec := by
  intro n
  simp only [A094728, Nat.add_sub_cancel]

end A094728

/-! ## A094728.P7585605385363523928

`(A025581(n)+1)*(A051162(n)+1)`
-/

namespace A094728.P7585605385363523928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * (A051162 n + 1)

end

end A094728.P7585605385363523928

namespace A094728

/-- `(A025581(n)+1)*(A051162(n)+1)` -/
def P7585605385363523928.Spec : Prop :=
  ∀ n, P7585605385363523928.a n = A094728 (n + 1)

end A094728

/-! ## A094728.P17839154853464317525

`A004736(n+1)*A094727(n+1)`
-/

namespace A094728.P17839154853464317525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A094727 (n + 1)

end

end A094728.P17839154853464317525

namespace A094728

/-- `A004736(n+1)*A094727(n+1)` -/
def P17839154853464317525.Spec : Prop :=
  ∀ n, P17839154853464317525.a n = A094728 (n + 1)

end A094728

/-! ## A094728.P17677286121851860322

`(A025581(n)+1)*A094727(n+1)`
-/

namespace A094728.P17677286121851860322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A094727 (n + 1)

end

end A094728.P17677286121851860322

namespace A094728

/-- `(A025581(n)+1)*A094727(n+1)` -/
def P17677286121851860322.Spec : Prop :=
  ∀ n, P17677286121851860322.a n = A094728 (n + 1)

end A094728

/-! ## A094728.P16687958539219855324

`A120070(n+2)-(A099375(n)+1)`
-/

namespace A094728.P16687958539219855324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (n + 2) - (A099375 n + 1)

end

end A094728.P16687958539219855324

namespace A094728

/-- `A120070(n+2)-(A099375(n)+1)` -/
def P16687958539219855324.Spec : Prop :=
  ∀ n, P16687958539219855324.a n = A094728 (n + 1)

end A094728

/-!
# A094729: Number of connected ordered 2-element multiantichains on a labeled n-set.

The programs for A094729, the canonical program `A094729.P13902128729243799292` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094729 has offset 0).

The definition of A094729 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094729.P13902128729243799292

`6*a(n-1)-11*a(n-2)+6*a(n-3)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=7`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094729

/-- `6*a(n-1)-11*a(n-2)+6*a(n-3)` -/
def P13902128729243799292.Spec : Prop :=
  ∀ n, P13902128729243799292.a n = A094729 n

theorem P13902128729243799292.correct : P13902128729243799292.Spec := by
  intro n
  simp only [A094729]

end A094729

/-! ## A094729.P7276342112807414520

`3^n-abs(4-3*2^n)`
-/

namespace A094729.P7276342112807414520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - |4 - (3 * 2 ^ n : ℤ)|

end

end A094729.P7276342112807414520

namespace A094729

/-- `3^n-abs(4-3*2^n)` -/
def P7276342112807414520.Spec : Prop :=
  ∀ n, P7276342112807414520.a n = A094729 n

end A094729

/-! ## A094729.P17452601788096576110

`xor(1, 3^n+3*(1-2^n))`
-/

namespace A094729.P17452601788096576110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((3 ^ n : ℤ) + 3 * (1 - (2 ^ n : ℤ)))

end

end A094729.P17452601788096576110

namespace A094729

/-- `xor(1, 3^n+3*(1-2^n))` -/
def P17452601788096576110.Spec : Prop :=
  ∀ n, P17452601788096576110.a n = A094729 n

end A094729

/-! ## A094729.P11904926746763222655

`abs(xor(A001117(n), A033999(n)))`
-/

namespace A094729.P11904926746763222655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (A001117 n) (A033999 n)|

end

end A094729.P11904926746763222655

namespace A094729

/-- `abs(xor(A001117(n), A033999(n)))` -/
def P11904926746763222655.Spec : Prop :=
  ∀ n, P11904926746763222655.a n = A094729 n

end A094729

/-! ## A094729.P9032668984269259446

`A199108(n)%A005056(n)`
-/

namespace A094729.P9032668984269259446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199108 n) (A005056 n)

end

end A094729.P9032668984269259446

namespace A094729

/-- `A199108(n)%A005056(n)` -/
def P9032668984269259446.Spec : Prop :=
  ∀ n, P9032668984269259446.a n = A094729 n

end A094729

/-! ## A094729.P1123761519319904795

`(A001117(n)+1)%A002783(n)`
-/

namespace A094729.P1123761519319904795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001117 n + 1) (A002783 n)

end

end A094729.P1123761519319904795

namespace A094729

/-- `(A001117(n)+1)%A002783(n)` -/
def P1123761519319904795.Spec : Prop :=
  ∀ n, P1123761519319904795.a n = A094729 n

end A094729

/-! ## A094729.P16853724271179492616

`A304167(n+1)%A005056(n)`
-/

namespace A094729.P16853724271179492616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304167 (n + 1)) (A005056 n)

end

end A094729.P16853724271179492616

namespace A094729

/-- `A304167(n+1)%A005056(n)` -/
def P16853724271179492616.Spec : Prop :=
  ∀ n, P16853724271179492616.a n = A094729 n

end A094729

/-! ## A094729.P2891361802905706976

`A168583(n+3)%A165746(n)`
-/

namespace A094729.P2891361802905706976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168583 (n + 3)) (A165746 n)

end

end A094729.P2891361802905706976

namespace A094729

/-- `A168583(n+3)%A165746(n)` -/
def P2891361802905706976.Spec : Prop :=
  ∀ n, P2891361802905706976.a n = A094729 n

end A094729

/-! ## A094729.P12734491758815947014

`A169687(n+2)%A048473(n)`
-/

namespace A094729.P12734491758815947014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169687 (n + 2)) (A048473 n)

end

end A094729.P12734491758815947014

namespace A094729

/-- `A169687(n+2)%A048473(n)` -/
def P12734491758815947014.Spec : Prop :=
  ∀ n, P12734491758815947014.a n = A094729 n

end A094729

/-! ## A094729.P17534585383471044092

`A253208(n)%A134168(n)`
-/

namespace A094729.P17534585383471044092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253208 n) (A134168 n)

end

end A094729.P17534585383471044092

namespace A094729

/-- `A253208(n)%A134168(n)` -/
def P17534585383471044092.Spec : Prop :=
  ∀ n, P17534585383471044092.a n = A094729 n

end A094729

/-! ## A094729.P8057694470584328328

`A090021(n)%(3^n+1)`
-/

namespace A094729.P8057694470584328328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090021 n) (3 ^ n + 1 : ℤ)

end

end A094729.P8057694470584328328

namespace A094729

/-- `A090021(n)%(3^n+1)` -/
def P8057694470584328328.Spec : Prop :=
  ∀ n, P8057694470584328328.a n = A094729 n

end A094729

/-! ## A094729.P12079203457681959616

`abs(A094034(n)-A094735(n))`
-/

namespace A094729.P12079203457681959616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A094034 n - A094735 n|

end

end A094729.P12079203457681959616

namespace A094729

/-- `abs(A094034(n)-A094735(n))` -/
def P12079203457681959616.Spec : Prop :=
  ∀ n, P12079203457681959616.a n = A094729 n

end A094729

/-!
# A094730: Number of connected ordered 3-element multiantichains on a labeled n-set.

The programs for A094730, there is no canonical definition to state claims against.
-/

/-! ## A094730.P5256282353572112475

`A004273(A094736(n)-A094035(n))`
-/

namespace A094730.P5256282353572112475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A094736 n - A094035 n).toNat

end

end A094730.P5256282353572112475

/-!
# A094731: Number of connected ordered 4-element multiantichains on a labeled n-set.

The programs for A094731, there is no canonical definition to state claims against.
-/

/-! ## A094731.P5687477754874340665

`A095200(a(n-1)+2^n+n+1)+1` with `a(0)=0`
-/

namespace A094731.P5687477754874340665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A095200 (a (n - 1) + (2 ^ n : ℤ) + (n : ℤ) + 1).toNat + 1

end

end A094731.P5687477754874340665

/-!
# A094732: Number of connected ordered 5-element multiantichains on a labeled n-set.

The programs for A094732, there is no canonical definition to state claims against.
-/

/-! ## A094732.P8497378378613595339

`A157078(A319174(n))%A004009(n)`
-/

namespace A094732.P8497378378613595339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157078 (A319174 n).toNat) (A004009 n)

end

end A094732.P8497378378613595339

/-!
# A094734: Number of connected 2-element multiantichains on a labeled n-set.

The programs for A094734, the canonical program `A094734.P15058109410242893930` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094734 has offset 0).

The definition of A094734 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094734.P15058109410242893930

`6*a(n-1)-11*a(n-2)+6*a(n-3)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=4`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094734

/-- `6*a(n-1)-11*a(n-2)+6*a(n-3)` -/
def P15058109410242893930.Spec : Prop :=
  ∀ n, P15058109410242893930.a n = A094734 n

theorem P15058109410242893930.correct : P15058109410242893930.Spec := by
  intro n
  simp only [A094734]

end A094734

/-! ## A094734.P5013707896962228181

`A094033(n)+ceil(sin(n)²)`
-/

namespace A094734.P5013707896962228181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094033 n + ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A094734.P5013707896962228181

namespace A094734

/-- `A094033(n)+ceil(sin(n)²)` -/
def P5013707896962228181.Spec : Prop :=
  ∀ n, P5013707896962228181.a n = A094734 n

end A094734

/-! ## A094734.P7309503431216988999

`A094033(n)+A057427(n)`
-/

namespace A094734.P7309503431216988999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094033 n + A057427 n

end

end A094734.P7309503431216988999

namespace A094734

/-- `A094033(n)+A057427(n)` -/
def P7309503431216988999.Spec : Prop :=
  ∀ n, P7309503431216988999.a n = A094734 n

end A094734

/-! ## A094734.P9535044670697881016

`A094033(n)-A057428(n)`
-/

namespace A094734.P9535044670697881016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094033 n - A057428 n

end

end A094734.P9535044670697881016

namespace A094734

/-- `A094033(n)-A057428(n)` -/
def P9535044670697881016.Spec : Prop :=
  ∀ n, P9535044670697881016.a n = A094734 n

end A094734

/-! ## A094734.P10226991021618200615

`A094374(n)-A154117(n)`
-/

namespace A094734.P10226991021618200615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094374 n - A154117 n

end

end A094734.P10226991021618200615

namespace A094734

/-- `A094374(n)-A154117(n)` -/
def P10226991021618200615.Spec : Prop :=
  ∀ n, P10226991021618200615.a n = A094734 n

end A094734

/-! ## A094734.P6296543468456873033

`A094033(n)+abs(A062157(n))`
-/

namespace A094734.P6296543468456873033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094033 n + |A062157 n|

end

end A094734.P6296543468456873033

namespace A094734

/-- `A094033(n)+abs(A062157(n))` -/
def P6296543468456873033.Spec : Prop :=
  ∀ n, P6296543468456873033.a n = A094734 n

end A094734

/-! ## A094734.P16035161148041596815

`∑[A085281(n)]-A154117(n)`
-/

namespace A094734.P16035161148041596815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A154117 n

end

end A094734.P16035161148041596815

namespace A094734

/-- `∑[A085281(n)]-A154117(n)` -/
def P16035161148041596815.Spec : Prop :=
  ∀ n, P16035161148041596815.a n = A094734 n

end A094734

/-! ## A094734.P14812657861865404224

`A094033(n)+char[A331303(n)]`
-/

namespace A094734.P14812657861865404224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331303 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094033 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A094734.P14812657861865404224

namespace A094734

/-- `A094033(n)+char[A331303(n)]` -/
def P14812657861865404224.Spec : Prop :=
  ∀ n, P14812657861865404224.a n = A094734 n

end A094734

/-! ## A094734.P815538488953385129

`A094033(n)+1-A000007(n)`
-/

namespace A094734.P815538488953385129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094033 n + (1 - A000007 n)

end

end A094734.P815538488953385129

namespace A094734

/-- `A094033(n)+1-A000007(n)` -/
def P815538488953385129.Spec : Prop :=
  ∀ n, P815538488953385129.a n = A094734 n

end A094734

/-! ## A094734.P10162441302275650237

`A094033(n)-A062157(2*n)`
-/

namespace A094734.P10162441302275650237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094033 n - A062157 (2 * n)

end

end A094734.P10162441302275650237

namespace A094734

/-- `A094033(n)-A062157(2*n)` -/
def P10162441302275650237.Spec : Prop :=
  ∀ n, P10162441302275650237.a n = A094734 n

end A094734

/-! ## A094734.P7408023697219893948

`A094033(n)+A001222(A027748(n+1))`
-/

namespace A094734.P7408023697219893948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094033 n + A001222 (A027748 (n + 1)).toNat

end

end A094734.P7408023697219893948

namespace A094734

/-- `A094033(n)+A001222(A027748(n+1))` -/
def P7408023697219893948.Spec : Prop :=
  ∀ n, P7408023697219893948.a n = A094734 n

end A094734

/-! ## A094734.P3079627596013482177

`A094033(n)+A001222(A129759(n+1))`
-/

namespace A094734.P3079627596013482177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094033 n + A001222 (A129759 (n + 1)).toNat

end

end A094734.P3079627596013482177

namespace A094734

/-- `A094033(n)+A001222(A129759(n+1))` -/
def P3079627596013482177.Spec : Prop :=
  ∀ n, P3079627596013482177.a n = A094734 n

end A094734

/-! ## A094734.P13584836955180711773

`A094729(n)-A094033(n)`
-/

namespace A094734.P13584836955180711773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094729 n - A094033 n

end

end A094734.P13584836955180711773

namespace A094734

/-- `A094729(n)-A094033(n)` -/
def P13584836955180711773.Spec : Prop :=
  ∀ n, P13584836955180711773.a n = A094734 n

end A094734

/-! ## A094734.P844314314316149398

`A057427(n)+A281773(n)-A000392(n+1)`
-/

namespace A094734.P844314314316149398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + (A281773 n - A000392 (n + 1))

end

end A094734.P844314314316149398

namespace A094734

/-- `A057427(n)+A281773(n)-A000392(n+1)` -/
def P844314314316149398.Spec : Prop :=
  ∀ n, P844314314316149398.a n = A094734 n

end A094734

/-!
# A094735: Number of connected 3-element multiantichains on a labeled n-set.

The programs for A094735, there is no canonical definition to state claims against.
-/

/-! ## A094735.P12051141010820271967

`A094034(n)+3^n-abs(4-3*2^n)`
-/

namespace A094735.P12051141010820271967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094034 n + ((3 ^ n : ℤ) - |4 - (3 * 2 ^ n : ℤ)|)

end

end A094735.P12051141010820271967

/-! ## A094735.P319474551207279577

`A094729(n)+A094034(n)`
-/

namespace A094735.P319474551207279577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094729 n + A094034 n

end

end A094735.P319474551207279577

/-! ## A094735.P13492859792489116909

`A001117(n)+A158388(n)+A094034(n)`
-/

namespace A094735.P13492859792489116909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001117 n + (A158388 n + A094034 n)

end

end A094735.P13492859792489116909

/-! ## A094735.P3138308822068473769

`A094033(n)+A094734(n)+A094034(n)`
-/

namespace A094735.P3138308822068473769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094033 n + (A094734 n + A094034 n)

end

end A094735.P3138308822068473769

/-! ## A094735.P7332338176886581308

`A091344(n)+A094034(n)-A058809(n)`
-/

namespace A094735.P7332338176886581308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091344 n + (A094034 n - A058809 n)

end

end A094735.P7332338176886581308

/-!
# A094736: Number of connected 4-element multiantichains on a labeled n-set.

The programs for A094736, there is no canonical definition to state claims against.
-/

/-! ## A094736.P1080902997642843252

`A110654(A094730(n))+A094035(n)`
-/

namespace A094736.P1080902997642843252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A094730 n).toNat + A094035 n

end

end A094736.P1080902997642843252

/-!
# A094737: Number of connected 5-element multiantichains on a labeled n-set.

The programs for A094737, there is no canonical definition to state claims against.
-/

/-! ## A094737.P5259058836931211949

`A049472(29*a(n-1)+1)-3` with `a(0)=0, a(1)=1, a(2)=1, a(3)=19`
-/

namespace A094737.P5259058836931211949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 19] fun n a =>
  A049472 (29 * a (n - 1) + 1).toNat - 3

end

end A094737.P5259058836931211949

/-!
# A094738: Number of connected 6-element multiantichains on a labeled n-set.

The programs for A094738, there is no canonical definition to state claims against.
-/

/-! ## A094738.P1453486382826663354

`A341145(A382948(n))`
-/

namespace A094738.P1453486382826663354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341145 ((A382948 n).toNat + 39)

end

end A094738.P1453486382826663354

/-!
# A094739: Numbers m such that 4^k*m, for integer k >= 0, are numbers having a unique partition into three squares.

The programs for A094739, there is no canonical definition to state claims against.
-/

/-! ## A094739.P11139302712311331269

`eq[A000164(n), A010130(n)]`
-/

namespace A094739.P11139302712311331269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010130 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094739.P11139302712311331269

/-! ## A094739.P13689735590276929089

`eq[A000164(n), A010153(n)]`
-/

namespace A094739.P13689735590276929089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010153 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094739.P13689735590276929089

/-! ## A094739.P8653860532052474062

`eq[A000164(n), A010195(n)]`
-/

namespace A094739.P8653860532052474062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010195 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094739.P8653860532052474062

/-! ## A094739.P16930675386335718583

`eq[A000164(n), A010209(n)]`
-/

namespace A094739.P16930675386335718583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010209 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094739.P16930675386335718583

/-! ## A094739.P11496199422939380328

`eq[A000164(n), A040200(n)]`
-/

namespace A094739.P11496199422939380328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040200 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094739.P11496199422939380328

/-!
# A094740: Numbers n such that 4^k n, for k >= 0, are numbers having a unique partition into three positive squares.

The programs for A094740, there is no canonical definition to state claims against.
-/

/-! ## A094740.P10881311626528864847

`eq[A010130(n), A025427(n)]`
-/

namespace A094740.P10881311626528864847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010130 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094740.P10881311626528864847

/-! ## A094740.P5941622960216873040

`eq[A010153(n), A025427(n)]`
-/

namespace A094740.P5941622960216873040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010153 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094740.P5941622960216873040

/-! ## A094740.P3431279834582651924

`eq[A010195(n), A025427(n)]`
-/

namespace A094740.P3431279834582651924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010195 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094740.P3431279834582651924

/-! ## A094740.P2934031548692669391

`eq[A010209(n), A025427(n)]`
-/

namespace A094740.P2934031548692669391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010209 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094740.P2934031548692669391

/-! ## A094740.P14523791475562112637

`eq[A025427(n), A040200(n)]`
-/

namespace A094740.P14523791475562112637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040200 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094740.P14523791475562112637

/-! ## A094740.P6859287757721766669

`eq[A025427(n), A040294(n)]`
-/

namespace A094740.P6859287757721766669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040294 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094740.P6859287757721766669

/-! ## A094740.P8436223999976861530

`eq[A025427(n), A040329(n)]`
-/

namespace A094740.P8436223999976861530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040329 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094740.P8436223999976861530

/-! ## A094740.P9701843525199133346

`eq[A025427(n), A040406(n)]`
-/

namespace A094740.P9701843525199133346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040406 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094740.P9701843525199133346

/-! ## A094740.P17766517416285135474

`eq[A025427(n), A040536(n)]`
-/

namespace A094740.P17766517416285135474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040536 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094740.P17766517416285135474

/-! ## A094740.P2287936830754413831

`eq[A025427(n), A040583(n)]`
-/

namespace A094740.P2287936830754413831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040583 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094740.P2287936830754413831

/-!
# A094741: Number of primes of the form k+1 where k is coprime to n, k < n.

The programs for A094741, there is no canonical definition to state claims against.
-/

/-! ## A094741.P13233528429094573084

`gcd(and(1, n), A061395(∑[n+1]²))`
-/

namespace A094741.P13233528429094573084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.land 1 n : ℤ) (A061395 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2))

end

end A094741.P13233528429094573084

/-! ## A094741.P13738461992595056094

`A061395(∏{d}[n, A141310(#)])`
-/

namespace A094741.P13738461992595056094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ d ∈ Nat.divisors (f1 n), A141310 d).toNat

end

end A094741.P13738461992595056094

/-! ## A094741.P4059524566979470003

`ceil(A061395(∑[n+1]²)^A009531(2*n+1))`
-/

namespace A094741.P4059524566979470003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A061395 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) : ℚ) ^ (A009531 (2 * n + 1) : ℤ)⌉

end

end A094741.P4059524566979470003

/-! ## A094741.P14314589025441738571

`A061395(lcm(A001316(n), A227540(n)))`
-/

namespace A094741.P14314589025441738571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm (A001316 n) (A227540 n))

end

end A094741.P14314589025441738571

/-!
# A094743: Beginning with 2, increasing primes such that the sum of successive differences is also prime.

The programs for A094743, the canonical program `A094743.P3700161173286017778` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094743 has offset 1).

The definition of A094743 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094743.P15259233058063627504

`record[A076555(n+1)]`
-/

namespace A094743.P15259233058063627504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076555 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094743.P15259233058063627504

namespace A094743

/-- `record[A076555(n+1)]` -/
def P15259233058063627504.Spec : Prop :=
  ∀ n, P15259233058063627504.a n = A094743 (n + 1)

end A094743

/-! ## A094743.P17184459376013036978

`p?[A055670(n+1)+1]`
-/

namespace A094743.P17184459376013036978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094743.P17184459376013036978

namespace A094743

/-- `p?[A055670(n+1)+1]` -/
def P17184459376013036978.Spec : Prop :=
  ∀ n, P17184459376013036978.a n = A094743 (n + 1)

end A094743

/-! ## A094743.P8318765433355483119

`p?[A299763(n+1)+1]`
-/

namespace A094743.P8318765433355483119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094743.P8318765433355483119

namespace A094743

/-- `p?[A299763(n+1)+1]` -/
def P8318765433355483119.Spec : Prop :=
  ∀ n, P8318765433355483119.a n = A094743 (n + 1)

end A094743

/-! ## A094743.P13242176784863636273

`p?[A182986(n+1)+2]`
-/

namespace A094743.P13242176784863636273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094743.P13242176784863636273

namespace A094743

/-- `p?[A182986(n+1)+2]` -/
def P13242176784863636273.Spec : Prop :=
  ∀ n, P13242176784863636273.a n = A094743 (n + 1)

end A094743

/-! ## A094743.P3700161173286017778

`p?[xor(1, A008864(n+1))]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A094743

/-- `p?[xor(1, A008864(n+1))]` -/
def P3700161173286017778.Spec : Prop :=
  ∀ n, P3700161173286017778.a n = A094743 (n + 1)

theorem P3700161173286017778.correct : P3700161173286017778.Spec := by
  intro n
  simp only [A094743, Nat.add_sub_cancel]

end A094743

/-! ## A094743.P13628088408397917283

`A006512(n%a(n-1))` with `a(0)=2`
-/

namespace A094743.P13628088408397917283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A006512 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A094743.P13628088408397917283

namespace A094743

/-- `A006512(n%a(n-1))` -/
def P13628088408397917283.Spec : Prop :=
  ∀ n, P13628088408397917283.a n = A094743 (n + 1)

end A094743

/-! ## A094743.P10649369352744855412

`p?[record[A001414(n+1)+2]]`
-/

namespace A094743.P10649369352744855412
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094743.P10649369352744855412

namespace A094743

/-- `p?[record[A001414(n+1)+2]]` -/
def P10649369352744855412.Spec : Prop :=
  ∀ n, P10649369352744855412.a n = A094743 (n + 1)

end A094743

/-! ## A094743.P12704546012851592184

`p?[record[A008472(n+1)+2]]`
-/

namespace A094743.P12704546012851592184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094743.P12704546012851592184

namespace A094743

/-- `p?[record[A008472(n+1)+2]]` -/
def P12704546012851592184.Spec : Prop :=
  ∀ n, P12704546012851592184.a n = A094743 (n + 1)

end A094743

/-! ## A094743.P15901872889123553357

`A099609(A103517(n))`
-/

namespace A094743.P15901872889123553357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099609 (A103517 n).toNat

end

end A094743.P15901872889123553357

namespace A094743

/-- `A099609(A103517(n))` -/
def P15901872889123553357.Spec : Prop :=
  ∀ n, P15901872889123553357.a n = A094743 (n + 1)

end A094743

/-! ## A094743.P8559433528805512264

`A171821(A092535(n+1))`
-/

namespace A094743.P8559433528805512264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (A092535 (n + 1)).toNat

end

end A094743.P8559433528805512264

namespace A094743

/-- `A171821(A092535(n+1))` -/
def P8559433528805512264.Spec : Prop :=
  ∀ n, P8559433528805512264.a n = A094743 (n + 1)

end A094743

/-! ## A094743.P792074650229618866

`A171821(A058992(n+2))`
-/

namespace A094743.P792074650229618866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (A058992 (n + 2)).toNat

end

end A094743.P792074650229618866

namespace A094743

/-- `A171821(A058992(n+2))` -/
def P792074650229618866.Spec : Prop :=
  ∀ n, P792074650229618866.a n = A094743 (n + 1)

end A094743

/-! ## A094743.P17474752026347909260

`record[A006530(A052147(n+1))]`
-/

namespace A094743.P17474752026347909260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A052147 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094743.P17474752026347909260

namespace A094743

/-- `record[A006530(A052147(n+1))]` -/
def P17474752026347909260.Spec : Prop :=
  ∀ n, P17474752026347909260.a n = A094743 (n + 1)

end A094743

/-! ## A094743.P11790944017339082067

`record[A006530(A139690(n+1))]`
-/

namespace A094743.P11790944017339082067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A139690 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094743.P11790944017339082067

namespace A094743

/-- `record[A006530(A139690(n+1))]` -/
def P11790944017339082067.Spec : Prop :=
  ∀ n, P11790944017339082067.a n = A094743 (n + 1)

end A094743

/-! ## A094743.P9204723968413639182

`record[A006530(A263427(n+1))]`
-/

namespace A094743.P9204723968413639182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A263427 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094743.P9204723968413639182

namespace A094743

/-- `record[A006530(A263427(n+1))]` -/
def P9204723968413639182.Spec : Prop :=
  ∀ n, P9204723968413639182.a n = A094743 (n + 1)

end A094743

/-! ## A094743.P15605221089434242291

`record[A006530(A151800(n)+2)]`
-/

namespace A094743.P15605221089434242291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A151800 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094743.P15605221089434242291

namespace A094743

/-- `record[A006530(A151800(n)+2)]` -/
def P15605221089434242291.Spec : Prop :=
  ∀ n, P15605221089434242291.a n = A094743 (n + 1)

end A094743

/-! ## A094743.P14604181081930348279

`record[A020639(A151800(n)+2)]`
-/

namespace A094743.P14604181081930348279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A151800 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094743.P14604181081930348279

namespace A094743

/-- `record[A020639(A151800(n)+2)]` -/
def P14604181081930348279.Spec : Prop :=
  ∀ n, P14604181081930348279.a n = A094743 (n + 1)

end A094743

/-! ## A094743.P5184277342185284979

`A001414(A181747(n+1))+2`
-/

namespace A094743.P5184277342185284979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A181747 (n + 1)).toNat + 2

end

end A094743.P5184277342185284979

namespace A094743

/-- `A001414(A181747(n+1))+2` -/
def P5184277342185284979.Spec : Prop :=
  ∀ n, P5184277342185284979.a n = A094743 (n + 1)

end A094743

/-! ## A094743.P17863610755170429850

`A099609(A114112(2*n+1))`
-/

namespace A094743.P17863610755170429850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099609 (A114112 (2 * n + 1)).toNat

end

end A094743.P17863610755170429850

namespace A094743

/-- `A099609(A114112(2*n+1))` -/
def P17863610755170429850.Spec : Prop :=
  ∀ n, P17863610755170429850.a n = A094743 (n + 1)

end A094743

/-! ## A094743.P8631450930749512129

`A067829(n+1)-A000007(n)`
-/

namespace A094743.P8631450930749512129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (n + 1) - A000007 n

end

end A094743.P8631450930749512129

namespace A094743

/-- `A067829(n+1)-A000007(n)` -/
def P8631450930749512129.Spec : Prop :=
  ∀ n, P8631450930749512129.a n = A094743 (n + 1)

end A094743

/-!
# A094744: Rearrangement of primes so that sum of the absolute value of the successive differences is also a prime.

The programs for A094744, there is no canonical definition to state claims against.
-/

/-! ## A094744.P518466611639487238

`A028864(A191672(n+1)%A101451(n+1))`
-/

namespace A094744.P518466611639487238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028864 (Int.tmod (A191672 (n + 1)) (A101451 (n + 1))).toNat

end

end A094744.P518466611639487238

/-! ## A094744.P12628559068606105805

`A028864(A191672(n+1))%A094745(A028864(n+1))`
-/

namespace A094744.P12628559068606105805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028864 (A191672 (n + 1)).toNat) (A094745 (A028864 (n + 1)).toNat)

end

end A094744.P12628559068606105805

/-!
# A094745: Primes arising as the partial sums of the successive differences in A094744.

The programs for A094745, there is no canonical definition to state claims against.
-/

/-! ## A094745.P14983364765512059660

`∑[abs(Δ[A094744(n+1)])]`
-/

namespace A094745.P14983364765512059660
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094744 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094745.P14983364765512059660

/-! ## A094745.P12097097679163826948

`∑[abs(A094744(n+1)-A094744(n+2))]`
-/

namespace A094745.P12097097679163826948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A094744 (n + 1) - A094744 (n + 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094745.P12097097679163826948

/-! ## A094745.P14760616832010897957

`p?[A174530(∑[A296082(n+1)])]`
-/

namespace A094745.P14760616832010897957
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296082 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174530 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094745.P14760616832010897957

/-! ## A094745.P8209238962475965767

`p?[record[A087734(A332071(n+1))]]`
-/

namespace A094745.P8209238962475965767
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087734 (A332071 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094745.P8209238962475965767

/-! ## A094745.P9138295867164367592

`p?[A345917(n+1)-39]`
-/

namespace A094745.P9138295867164367592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345917 (n + 1) - 39

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094745.P9138295867164367592

/-!
# A094746: Primes arising as successive differences in A093903.

The programs for A094746, there is no canonical definition to state claims against.
-/

/-! ## A094746.P7868436216006487717

`abs(Δ[A093903(n+1)])`
-/

namespace A094746.P7868436216006487717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A094746.P7868436216006487717

/-! ## A094746.P5518087148739467633

`A006530(Δ[A093903(n+1)]²)`
-/

namespace A094746.P5518087148739467633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A094746.P5518087148739467633

/-! ## A094746.P7213493603970007983

`A007947(Δ[A093903(n+1)]²)`
-/

namespace A094746.P7213493603970007983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A094746.P7213493603970007983

/-! ## A094746.P3957986491380303043

`gcd(Δ[A093903(n+1)], A000038(n))`
-/

namespace A094746.P3957986491380303043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093903 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A000038 n)

end

end A094746.P3957986491380303043

/-! ## A094746.P1588319260284033457

`lcm(Δ[A093903(n+1)], A097807(n))`
-/

namespace A094746.P1588319260284033457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093903 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A097807 n)

end

end A094746.P1588319260284033457

/-! ## A094746.P17257779188506471695

`abs(A093903(n+1)-A093903(n+2))`
-/

namespace A094746.P17257779188506471695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A093903 (n + 1) - A093903 (n + 2)|

end

end A094746.P17257779188506471695

/-!
# A094747: Rearrangement of odd primes so that absolute successive differences are the least distinct even numbers. Priority is given to the least successive difference that has not occurred earlier.

The programs for A094747, there is no canonical definition to state claims against.
-/

/-! ## A094747.P1237248626368840159

`A239929(A244418(n+1)^A182961(n))`
-/

namespace A094747.P1237248626368840159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239929 (SequenceMachineLib.roundAway ((A244418 (n + 1) : ℚ) ^ (A182961 n : ℤ))).toNat

end

end A094747.P1237248626368840159

/-! ## A094747.P12753654030155423005

`A239929(A182961(n)²*A244418(n+1))`
-/

namespace A094747.P12753654030155423005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239929 (A182961 n ^ 2 * A244418 (n + 1)).toNat

end

end A094747.P12753654030155423005

/-!
# A094748: Successive differences arising in A094747.

The programs for A094748, there is no canonical definition to state claims against.
-/

/-! ## A094748.P7780620781713171557

`abs(Δ[A094747(n+1)])`
-/

namespace A094748.P7780620781713171557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A094748.P7780620781713171557

/-! ## A094748.P14978673425804979358

`A018851(Δ[A094747(n+1)]²)`
-/

namespace A094748.P14978673425804979358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A094748.P14978673425804979358

/-! ## A094748.P12030142368895158285

`A056622(Δ[A094747(n+1)]²)`
-/

namespace A094748.P12030142368895158285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056622 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A094748.P12030142368895158285

/-! ## A094748.P5571008646008746988

`A056926(Δ[A094747(n+1)]²)`
-/

namespace A094748.P5571008646008746988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A094748.P5571008646008746988

/-! ## A094748.P15943190894035490187

`A000027(lcm(2, Δ[A094747(n+1)]))`
-/

namespace A094748.P15943190894035490187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.lcm 2 (f1 (n + 1) - f1 n))

end

end A094748.P15943190894035490187

/-! ## A094748.P12065814310178582059

`gcd(Δ[A094747(n+1)], A000038(n))`
-/

namespace A094748.P12065814310178582059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094747 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A000038 n)

end

end A094748.P12065814310178582059

/-! ## A094748.P17613749405226675568

`∑{d}[Δ[A094747(n+1)], A000010(#)]`
-/

namespace A094748.P17613749405226675568
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094747 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A094748.P17613749405226675568

/-! ## A094748.P5941003132687592116

`∏{d}[Δ[A094747(n+1)], A014963(#)]`
-/

namespace A094748.P5941003132687592116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094747 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A094748.P5941003132687592116

/-! ## A094748.P7557380245289704514

`lcm(A020639(2*(n+1)), Δ[-A094747(n+1)])`
-/

namespace A094748.P7557380245289704514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A094747 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020639 (2 * (n + 1))) (f1 (n + 1) - f1 n)

end

end A094748.P7557380245289704514

/-!
# A094751: Primes arising as the successive difference in A094750.

The programs for A094751, there is no canonical definition to state claims against.
-/

/-! ## A094751.P10168285871108429076

`abs(Δ[A094750(n+1)])`
-/

namespace A094751.P10168285871108429076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A094751.P10168285871108429076

/-! ## A094751.P6544050468737757247

`A006530(Δ[A094750(n+1)]²)`
-/

namespace A094751.P6544050468737757247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A094751.P6544050468737757247

/-! ## A094751.P6864414939596643184

`A007947(Δ[A094750(n+1)]²)`
-/

namespace A094751.P6864414939596643184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A094751.P6864414939596643184

/-! ## A094751.P10466638151677329414

`A008472(Δ[A094750(n+1)]²)`
-/

namespace A094751.P10466638151677329414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A094751.P10466638151677329414

/-! ## A094751.P6708473024203279035

`A020639(Δ[A094750(n+1)]²)`
-/

namespace A094751.P6708473024203279035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A094751.P6708473024203279035

/-! ## A094751.P4482782833442983683

`A052410(Δ[A094750(n+1)]²)`
-/

namespace A094751.P4482782833442983683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A094751.P4482782833442983683

/-! ## A094751.P16055612188866099183

`A006530(lcm(2, Δ[A094750(n+1)]))`
-/

namespace A094751.P16055612188866099183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm 2 (f1 (n + 1) - f1 n))

end

end A094751.P16055612188866099183

/-! ## A094751.P17797216869478983199

`∑{d}[Δ[A094750(n+1)], A000010(#)]`
-/

namespace A094751.P17797216869478983199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094750 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A094751.P17797216869478983199

/-! ## A094751.P13496916572922856302

`∏{d}[Δ[A094750(n+1)], A014963(#)]`
-/

namespace A094751.P13496916572922856302
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094750 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A094751.P13496916572922856302

/-! ## A094751.P17696044540848353075

`A006530(∑{p}[Δ[A094750(n+1)], #])`
-/

namespace A094751.P17696044540848353075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094750 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A094751.P17696044540848353075

/-!
# A094753: Largest k such that (2n-1)/k + 2 as well as (2n-1)k + 2 are prime, or 0 if no such number exists.

The programs for A094753, there is no canonical definition to state claims against.
-/

/-! ## A094753.P14758037454798042093

`and(A343782(2*n+5), A343785(A343769(n+1)))`
-/

namespace A094753.P14758037454798042093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A343782 (2 * n + 5)) (A343785 (A343769 (n + 1)).toNat)

end

end A094753.P14758037454798042093

/-!
# A094754: Middle coefficient of cyclotomic polynomial Phi_n(x).

The programs for A094754, there is no canonical definition to state claims against.
-/

/-! ## A094754.P8745256012584382061

`A165581(A025480(n)*A318909(n+1))`
-/

namespace A094754.P8745256012584382061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165581 (A025480 n * A318909 (n + 1)).toNat

end

end A094754.P8745256012584382061

/-! ## A094754.P4131620025696736637

`A134824(A324827(n+1)^A103663(n))`
-/

namespace A094754.P4131620025696736637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (SequenceMachineLib.roundAway ((A324827 (n + 1) : ℚ) ^ (A103663 n : ℤ))).toNat

end

end A094754.P4131620025696736637

/-! ## A094754.P8398334156012437602

`A134824(A324827(n+1)^A143862(n))`
-/

namespace A094754.P8398334156012437602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (SequenceMachineLib.roundAway ((A324827 (n + 1) : ℚ) ^ (A143862 n : ℤ))).toNat

end

end A094754.P8398334156012437602

/-! ## A094754.P7660949704760492628

`A134824(A324827(n+1)^A176289(n))`
-/

namespace A094754.P7660949704760492628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (SequenceMachineLib.roundAway ((A324827 (n + 1) : ℚ) ^ (A176289 n : ℤ))).toNat

end

end A094754.P7660949704760492628

/-! ## A094754.P424554648536600691

`A134824(A324827(n+1)^A077609(n+1))`
-/

namespace A094754.P424554648536600691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (SequenceMachineLib.roundAway ((A324827 (n + 1) : ℚ) ^ (A077609 (n + 1) : ℤ))).toNat

end

end A094754.P424554648536600691

/-!
# A094756: a(n) = least k>1 such that (1+2+3+...+k) divides (1^n + 2^n + 3^n + ... + k^n).

The programs for A094756, there is no canonical definition to state claims against.
-/

/-! ## A094756.P17183785239026510776

`A007953(∑{d}[(A143543(n+1)+1)^and(1, n), #]+1)`
-/

namespace A094756.P17183785239026510776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A143543 (n + 1) + 1) ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (∑ d ∈ Nat.divisors (f1 n).natAbs, d + 1)

end

end A094756.P17183785239026510776

/-! ## A094756.P3970764444951310028

`A223625(gcd(A002532(n+1), A193428(2*n+5)))`
-/

namespace A094756.P3970764444951310028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223625 (Int.gcd (A002532 (n + 1)) (A193428 (2 * n + 5)))

end

end A094756.P3970764444951310028

/-!
# A094758: Least k <= n such that n*tau(k) = k*tau(n), where tau(n) is the number of divisors of n (A000005).

The programs for A094758, there is no canonical definition to state claims against.
-/

/-! ## A094758.P12578937582921801624

`and(A128337(A278223(2*n+1)), A348173(n+1))`
-/

namespace A094758.P12578937582921801624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A128337 (A278223 (2 * n + 1)).toNat) (A348173 (n + 1))

end

end A094758.P12578937582921801624

/-! ## A094758.P15425264457669916558

`A348158(n+1)+A000035(A117662(n))`
-/

namespace A094758.P15425264457669916558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348158 (n + 1) + A000035 (A117662 n).toNat

end

end A094758.P15425264457669916558

/-! ## A094758.P943221000904738940

`A353470(∑[A000322(n)])+A348158(n+1)`
-/

namespace A094758.P943221000904738940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000322 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353470 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A348158 (n + 1)

end

end A094758.P943221000904738940

/-! ## A094758.P2609836290121498944

`A348173(n+1)-A192323(A032392(n+1))`
-/

namespace A094758.P2609836290121498944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348173 (n + 1) - A192323 (A032392 (n + 1)).toNat

end

end A094758.P2609836290121498944

/-! ## A094758.P15053870684757134577

`(n+1-A192323(A032392(n+1)))/A138191(n+1)`
-/

namespace A094758.P15053870684757134577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A192323 (A032392 (n + 1)).toNat : ℚ) / (A138191 (n + 1) : ℚ)

end

end A094758.P15053870684757134577

/-!
# A094759: Least k <= n such that n*sigma(k) = k*sigma(n), where sigma(n) is the sum of divisors of n (A000203).

The programs for A094759, there is no canonical definition to state claims against.
-/

/-! ## A094759.P15774195040990216413

`(n+1)%A257681(A133263(n+4))`
-/

namespace A094759.P15774195040990216413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A257681 (A133263 (n + 4)).toNat)

end

end A094759.P15774195040990216413

/-! ## A094759.P14489310534879964625

`(n+1)%A289838(A155212(n))`
-/

namespace A094759.P14489310534879964625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A289838 (A155212 n).toNat)

end

end A094759.P14489310534879964625

/-! ## A094759.P11499895600303745089

`n%A248753(A098007(n+1))+1`
-/

namespace A094759.P11499895600303745089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A248753 (A098007 (n + 1)).toNat) + 1

end

end A094759.P11499895600303745089

/-! ## A094759.P14222551996283402213

`-xor(n, -1)%A248753(A098007(-xor(n, -1)))`
-/

namespace A094759.P14222551996283402213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-Int.xor (n : ℤ) (-1)) (A248753 (A098007 (-Int.xor (n : ℤ) (-1)).toNat).toNat)

end

end A094759.P14222551996283402213

/-! ## A094759.P8010771265127870142

`(record[xor(1, n)]-n)%A032764(A000217(n+4)+5)`
-/

namespace A094759.P8010771265127870142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (n : ℤ)) (A032764 (A000217 (n + 4) + 5).toNat)

end

end A094759.P8010771265127870142

/-! ## A094759.P12976474229513658404

`A000027(n+1)%A200460(A098007(n+1))`
-/

namespace A094759.P12976474229513658404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A200460 (A098007 (n + 1)).toNat)

end

end A094759.P12976474229513658404

/-! ## A094759.P18119487276399515504

`A008611(A008585(n))%A223742(A344758(n+1))`
-/

namespace A094759.P18119487276399515504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008611 (A008585 n).toNat) (A223742 (A344758 (n + 1)).toNat)

end

end A094759.P18119487276399515504

/-! ## A094759.P864642494083446387

`((n+1)*A104762(A118135(n+1)+1))%A186157(n+1)`
-/

namespace A094759.P864642494083446387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) * A104762 (A118135 (n + 1) + 1).toNat) (A186157 (n + 1))

end

end A094759.P864642494083446387

/-!
# A094761: a(n) = n + (square excess of n).

The programs for A094761, the canonical program `A094761.P14380524267373049670` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094761 has offset 0).

The definition of A094761 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094761.P14380524267373049670

`n+A053186(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A094761

/-- `n+A053186(n)` -/
def P14380524267373049670.Spec : Prop :=
  ∀ n, P14380524267373049670.a n = A094761 n

theorem P14380524267373049670.correct : P14380524267373049670.Spec := by
  intro n
  simp only [A094761]

end A094761

/-! ## A094761.P6642590519452113428

`2*n-floor(sqrt(n))²`
-/

namespace A094761.P6642590519452113428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (Nat.sqrt n ^ 2 : ℤ)

end

end A094761.P6642590519452113428

namespace A094761

/-- `2*n-floor(sqrt(n))²` -/
def P6642590519452113428.Spec : Prop :=
  ∀ n, P6642590519452113428.a n = A094761 n

end A094761

/-! ## A094761.P3282366129714154954

`and(n-floor(sqrt(n))²+n, -1)`
-/

namespace A094761.P3282366129714154954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - (Nat.sqrt n ^ 2 : ℤ) + (n : ℤ)) (-1)

end

end A094761.P3282366129714154954

namespace A094761

/-- `and(n-floor(sqrt(n))²+n, -1)` -/
def P3282366129714154954.Spec : Prop :=
  ∀ n, P3282366129714154954.a n = A094761 n

end A094761

/-! ## A094761.P3555591337648629831

`or(n-floor(sqrt(n))²+n, char[1])`
-/

namespace A094761.P3555591337648629831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) - (Nat.sqrt n ^ 2 : ℤ) + (n : ℤ)) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A094761.P3555591337648629831

namespace A094761

/-- `or(n-floor(sqrt(n))²+n, char[1])` -/
def P3555591337648629831.Spec : Prop :=
  ∀ n, P3555591337648629831.a n = A094761 n

end A094761

/-! ## A094761.P569060924614124882

`floor(n-floor(sqrt(n))²-(cos(2)-n))`
-/

namespace A094761.P569060924614124882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - (Nat.sqrt n ^ 2 : ℤ) : ℝ) - (Real.cos (2 : ℝ) - (n : ℝ))⌋

end

end A094761.P569060924614124882

namespace A094761

/-- `floor(n-floor(sqrt(n))²-(cos(2)-n))` -/
def P569060924614124882.Spec : Prop :=
  ∀ n, P569060924614124882.a n = A094761 n

end A094761

/-! ## A094761.P17374580429604410435

`(n-floor(sqrt(n))²+n)/ceil(acot(n))`
-/

namespace A094761.P17374580429604410435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (Nat.sqrt n ^ 2 : ℤ) + (n : ℤ) : ℚ) / (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℚ)

end

end A094761.P17374580429604410435

namespace A094761

/-- `(n-floor(sqrt(n))²+n)/ceil(acot(n))` -/
def P17374580429604410435.Spec : Prop :=
  ∀ n, P17374580429604410435.a n = (A094761 n : ℚ)

end A094761

/-! ## A094761.P7584396017957428811

`lcm(n-floor(sqrt(n))²+n, (-1)^n)`
-/

namespace A094761.P7584396017957428811
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - (Nat.sqrt n ^ 2 : ℤ) + (n : ℤ)) ((-1) ^ n)

end

end A094761.P7584396017957428811

namespace A094761

/-- `lcm(n-floor(sqrt(n))²+n, (-1)^n)` -/
def P7584396017957428811.Spec : Prop :=
  ∀ n, (P7584396017957428811.a n : ℤ) = A094761 n

end A094761

/-! ## A094761.P9870737326904307043

`floor(n-floor(sqrt(n))²+sin(n)²+n)`
-/

namespace A094761.P9870737326904307043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - (Nat.sqrt n ^ 2 : ℤ) : ℝ) + (Real.sin (n : ℝ) ^ 2 + (n : ℝ))⌋

end

end A094761.P9870737326904307043

namespace A094761

/-- `floor(n-floor(sqrt(n))²+sin(n)²+n)` -/
def P9870737326904307043.Spec : Prop :=
  ∀ n, P9870737326904307043.a n = A094761 n

end A094761

/-! ## A094761.P1331500836256606279

`(n-floor(sqrt(n))²+n)%C(n+4, 4)`
-/

namespace A094761.P1331500836256606279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - (Nat.sqrt n ^ 2 : ℤ) + (n : ℤ)) (Nat.choose (n + 4) 4 : ℤ)

end

end A094761.P1331500836256606279

namespace A094761

/-- `(n-floor(sqrt(n))²+n)%C(n+4, 4)` -/
def P1331500836256606279.Spec : Prop :=
  ∀ n, P1331500836256606279.a n = A094761 n

end A094761

/-! ## A094761.P9575987031152715107

`(2*n-∑[char[(n+1)²]]²)*n²%(n+1)`
-/

namespace A094761.P9575987031152715107
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)) * ((n ^ 2 % (n + 1) : ℕ) : ℤ)

end

end A094761.P9575987031152715107

namespace A094761

/-- `(2*n-∑[char[(n+1)²]]²)*n²%(n+1)` -/
def P9575987031152715107.Spec : Prop :=
  ∀ n, P9575987031152715107.a n = A094761 n

end A094761

/-! ## A094761.P17480041544744296033

`(A094765(n)+n)/2`
-/

namespace A094761.P17480041544744296033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094765 n + (n : ℤ) : ℚ) / 2

end

end A094761.P17480041544744296033

namespace A094761

/-- `(A094765(n)+n)/2` -/
def P17480041544744296033.Spec : Prop :=
  ∀ n, P17480041544744296033.a n = (A094761 n : ℚ)

end A094761

/-! ## A094761.P14420819346049059421

`abs(2*n-A048760(n))`
-/

namespace A094761.P14420819346049059421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - A048760 n|

end

end A094761.P14420819346049059421

namespace A094761

/-- `abs(2*n-A048760(n))` -/
def P14420819346049059421.Spec : Prop :=
  ∀ n, P14420819346049059421.a n = A094761 n

end A094761

/-! ## A094761.P4180658446202979462

`(n-floor(sqrt(n))²+n)%A250120(n)`
-/

namespace A094761.P4180658446202979462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - (Nat.sqrt n ^ 2 : ℤ) + (n : ℤ)) (A250120 n)

end

end A094761.P4180658446202979462

namespace A094761

/-- `(n-floor(sqrt(n))²+n)%A250120(n)` -/
def P4180658446202979462.Spec : Prop :=
  ∀ n, P4180658446202979462.a n = A094761 n

end A094761

/-! ## A094761.P6670727076894403762

`A023443(A071797(n+1)+n)`
-/

namespace A094761.P6670727076894403762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A071797 (n + 1) + (n : ℤ)).toNat

end

end A094761.P6670727076894403762

namespace A094761

/-- `A023443(A071797(n+1)+n)` -/
def P6670727076894403762.Spec : Prop :=
  ∀ n, P6670727076894403762.a n = A094761 n

end A094761

/-!
# A094762: a(n) = Bell(n+1) - 2^n + 1 + n, where Bell(i) is the i-th Bell number A000110(i).

The programs for A094762, there is no canonical definition to state claims against.
-/

/-! ## A094762.P11829919305421412845

`A058681(n)+1+n`
-/

namespace A094762.P11829919305421412845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058681 n + 1 + (n : ℤ)

end

end A094762.P11829919305421412845

/-! ## A094762.P5927493732087706810

`A011972(∑[n])-2^n+1+n`
-/

namespace A094762.P5927493732087706810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 (∑ j ∈ Finset.range (n + 1), f1 j) - (2 ^ n : ℤ) + 1 + (n : ℤ)

end

end A094762.P5927493732087706810

/-! ## A094762.P271701990366198867

`record[A095149(n)]-A000295(n)`
-/

namespace A094762.P271701990366198867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000295 n

end

end A094762.P271701990366198867

/-! ## A094762.P17856950200644453579

`record[A108087(n)]-A000295(n)`
-/

namespace A094762.P17856950200644453579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000295 n

end

end A094762.P17856950200644453579

/-! ## A094762.P11653596241216820216

`record[A123346(n)]-A000295(n)`
-/

namespace A094762.P11653596241216820216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123346 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000295 n

end

end A094762.P11653596241216820216

/-! ## A094762.P7393254579126093174

`A000110(n+1)-A000295(n)`
-/

namespace A094762.P7393254579126093174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 1) - A000295 n

end

end A094762.P7393254579126093174

/-! ## A094762.P13416911945532712394

`record[A108087(n)]+n-A000225(n)`
-/

namespace A094762.P13416911945532712394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ((n : ℤ) - A000225 n)

end

end A094762.P13416911945532712394

/-! ## A094762.P4579801952514158013

`A087650(n+1)+A087650(n)-A000295(n)`
-/

namespace A094762.P4579801952514158013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087650 (n + 1) + (A087650 n - A000295 n)

end

end A094762.P4579801952514158013

/-! ## A094762.P10780909152268643708

`A000110(n+1)+A000108(n)-A338726(n)`
-/

namespace A094762.P10780909152268643708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 1) + (A000108 n - A338726 n)

end

end A094762.P10780909152268643708

/-! ## A094762.P13124009249689886580

`A000110(n+1)+A000079(n)-A000325(n+1)`
-/

namespace A094762.P13124009249689886580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 1) + (A000079 n - A000325 (n + 1))

end

end A094762.P13124009249689886580

/-!
# A094763: Trajectory of 2 under repeated application of the map n -> n + square excess of n.

The programs for A094763, the canonical program `A094763.P14347053228472757393` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094763 has offset 0).

The definition of A094763 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094763.P14347053228472757393

`2*a(n-1)-floor(sqrt(a(n-1)))²` with `a(0)=2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094763

/-- `2*a(n-1)-floor(sqrt(a(n-1)))²` -/
def P14347053228472757393.Spec : Prop :=
  ∀ n, P14347053228472757393.a n = A094763 n

theorem P14347053228472757393.correct : P14347053228472757393.Spec := by
  intro n
  simp only [A094763]

end A094763

/-! ## A094763.P1798738401150304360

`2*a(n-1)-(1-ceil(sqrt(a(n-1))))²` with `a(0)=2`
-/

namespace A094763.P1798738401150304360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * a (n - 1) - (1 - ⌈Real.sqrt (a (n - 1) : ℝ)⌉) ^ 2

end

end A094763.P1798738401150304360

namespace A094763

/-- `2*a(n-1)-(1-ceil(sqrt(a(n-1))))²` -/
def P1798738401150304360.Spec : Prop :=
  ∀ n, P1798738401150304360.a n = A094763 n

end A094763

/-! ## A094763.P16151474270393225730

`a(n-1)+a(n-1)-floor(sqrt(a(n-1)))²` with `a(0)=2`
-/

namespace A094763.P16151474270393225730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (a (n - 1) - Int.sqrt (a (n - 1)) ^ 2)

end

end A094763.P16151474270393225730

namespace A094763

/-- `a(n-1)+a(n-1)-floor(sqrt(a(n-1)))²` -/
def P16151474270393225730.Spec : Prop :=
  ∀ n, P16151474270393225730.a n = A094763 n

theorem P16151474270393225730.correct : P16151474270393225730.Spec := by
  intro n
  simp only [A094763, Nat.add_sub_cancel, A094763.P16151474270393225730.a, A094763.P14347053228472757393.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A094763

/-! ## A094763.P13105697626067750475

`a(n-1)-(floor(sqrt(a(n-1)))²-a(n-1))` with `a(0)=2`
-/

namespace A094763.P13105697626067750475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) - (Int.sqrt (a (n - 1)) ^ 2 - a (n - 1))

end

end A094763.P13105697626067750475

namespace A094763

/-- `a(n-1)-(floor(sqrt(a(n-1)))²-a(n-1))` -/
def P13105697626067750475.Spec : Prop :=
  ∀ n, P13105697626067750475.a n = A094763 n

theorem P13105697626067750475.correct : P13105697626067750475.Spec := by
  intro n
  simp only [A094763, Nat.add_sub_cancel, A094763.P13105697626067750475.a, A094763.P14347053228472757393.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A094763

/-! ## A094763.P14701044781636154936

`∑[A129144(n+2)]+1`
-/

namespace A094763.P14701044781636154936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129144 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A094763.P14701044781636154936

namespace A094763

/-- `∑[A129144(n+2)]+1` -/
def P14701044781636154936.Spec : Prop :=
  ∀ n, P14701044781636154936.a n = A094763 n

end A094763

/-! ## A094763.P17949564488494474929

`A171746(a(n-2))+a(n-1)` with `a(0)=2, a(1)=3`
-/

namespace A094763.P17949564488494474929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A171746 (a (n - 2)).toNat + a (n - 1)

end

end A094763.P17949564488494474929

namespace A094763

/-- `A171746(a(n-2))+a(n-1)` -/
def P17949564488494474929.Spec : Prop :=
  ∀ n, P17949564488494474929.a n = A094763 n

end A094763

/-! ## A094763.P9001212841013917950

`A094761(a(n-1))` with `a(0)=2`
-/

namespace A094763.P9001212841013917950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A094761 (a (n - 1)).toNat

end

end A094763.P9001212841013917950

namespace A094763

/-- `A094761(a(n-1))` -/
def P9001212841013917950.Spec : Prop :=
  ∀ n, P9001212841013917950.a n = A094763 n

end A094763

/-! ## A094763.P9658063039996844709

`A053186(a(n-1))+a(n-1)` with `a(0)=2`
-/

namespace A094763.P9658063039996844709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A053186 (a (n - 1)).toNat + a (n - 1)

end

end A094763.P9658063039996844709

namespace A094763

/-- `A053186(a(n-1))+a(n-1)` -/
def P9658063039996844709.Spec : Prop :=
  ∀ n, P9658063039996844709.a n = A094763 n

end A094763

/-! ## A094763.P11590680227988251419

`A071797(a(n-1))+a(n-1)` with `a(0)=2`
-/

namespace A094763.P11590680227988251419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A071797 (a (n - 1)).toNat + a (n - 1)

end

end A094763.P11590680227988251419

namespace A094763

/-- `A071797(a(n-1))+a(n-1)` -/
def P11590680227988251419.Spec : Prop :=
  ∀ n, P11590680227988251419.a n = A094763 n

end A094763

/-! ## A094763.P9494704795455143566

`2*a(n-1)-A048760(a(n-1))` with `a(0)=2`
-/

namespace A094763.P9494704795455143566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * a (n - 1) - A048760 (a (n - 1)).toNat

end

end A094763.P9494704795455143566

namespace A094763

/-- `2*a(n-1)-A048760(a(n-1))` -/
def P9494704795455143566.Spec : Prop :=
  ∀ n, P9494704795455143566.a n = A094763 n

end A094763

/-!
# A094764: Trajectory of 7 under repeated application of the map n --> n + square excess of n.

The programs for A094764, there is no canonical definition to state claims against.
-/

/-! ## A094764.P9790807946621616893

`2*a(n-1)-floor(sqrt(a(n-1)))²` with `a(0)=7`
-/

namespace A094764.P9790807946621616893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  2 * a (n - 1) - Int.sqrt (a (n - 1)) ^ 2

end

end A094764.P9790807946621616893

/-! ## A094764.P13858401523396036714

`2*a(n-1)-(1-ceil(sqrt(a(n-1))))²` with `a(0)=7`
-/

namespace A094764.P13858401523396036714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  2 * a (n - 1) - (1 - ⌈Real.sqrt (a (n - 1) : ℝ)⌉) ^ 2

end

end A094764.P13858401523396036714

/-! ## A094764.P11916454397662791600

`A094761(a(n-1))` with `a(0)=7`
-/

namespace A094764.P11916454397662791600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A094761 (a (n - 1)).toNat

end

end A094764.P11916454397662791600

/-! ## A094764.P14522430457524637644

`A053186(a(n-1))+a(n-1)` with `a(0)=7`
-/

namespace A094764.P14522430457524637644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A053186 (a (n - 1)).toNat + a (n - 1)

end

end A094764.P14522430457524637644

/-! ## A094764.P7192570297157197682

`A071797(a(n-1))+a(n-1)` with `a(0)=7`
-/

namespace A094764.P7192570297157197682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A071797 (a (n - 1)).toNat + a (n - 1)

end

end A094764.P7192570297157197682

/-! ## A094764.P10665105559362046461

`A171746(a(n-2))+a(n-1)` with `a(0)=7, a(1)=10`
-/

namespace A094764.P10665105559362046461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 10] fun n a =>
  A171746 (a (n - 2)).toNat + a (n - 1)

end

end A094764.P10665105559362046461

/-! ## A094764.P1208442885958906815

`2*a(n-1)-A048760(a(n-1))` with `a(0)=7`
-/

namespace A094764.P1208442885958906815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  2 * a (n - 1) - A048760 (a (n - 1)).toNat

end

end A094764.P1208442885958906815

/-! ## A094764.P5625600107910875567

`a(n-1)+a(n-1)%A000196(a(n-1))²` with `a(0)=7`
-/

namespace A094764.P5625600107910875567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) + Int.tmod (a (n - 1)) (A000196 (a (n - 1)).toNat ^ 2)

end

end A094764.P5625600107910875567

/-! ## A094764.P137270786709464127

`a(n-1)-(A048760(floor(a(n-1)))-a(n-1))` with `a(0)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A094764.P137270786709464127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) - (A048760 (a (n - 1)).toNat - a (n - 1))

end

end A094764.P137270786709464127

/-!
# A094765: a(n) = n + 2 * square excess of n.

The programs for A094765, the canonical program `A094765.P13286102005147657890` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094765 has offset 0).

The definition of A094765 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094765.P13286102005147657890

`3*n-2*floor(sqrt(n))²`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094765

/-- `3*n-2*floor(sqrt(n))²` -/
def P13286102005147657890.Spec : Prop :=
  ∀ n, P13286102005147657890.a n = A094765 n

theorem P13286102005147657890.correct : P13286102005147657890.Spec := by
  intro n
  simp only [A094765]

end A094765

/-! ## A094765.P13947099282670866161

`abs(2*(A000196(n)²-n)-n)`
-/

namespace A094765.P13947099282670866161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * (A000196 n ^ 2 - (n : ℤ)) - (n : ℤ)|

end

end A094765.P13947099282670866161

namespace A094765

/-- `abs(2*(A000196(n)²-n)-n)` -/
def P13947099282670866161.Spec : Prop :=
  ∀ n, P13947099282670866161.a n = A094765 n

end A094765

/-! ## A094765.P578195107447208618

`abs(A094761(n)+n-floor(sqrt(n))²)`
-/

namespace A094765.P578195107447208618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A094761 n + ((n : ℤ) - (Nat.sqrt n ^ 2 : ℤ))|

end

end A094765.P578195107447208618

namespace A094765

/-- `abs(A094761(n)+n-floor(sqrt(n))²)` -/
def P578195107447208618.Spec : Prop :=
  ∀ n, P578195107447208618.a n = A094765 n

end A094765

/-! ## A094765.P8583801627839345528

`A004442(A053186(n)+A053186(n)+A004442(n))`
-/

namespace A094765.P8583801627839345528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A053186 n + (A053186 n + A004442 n)).toNat

end

end A094765.P8583801627839345528

namespace A094765

/-- `A004442(A053186(n)+A053186(n)+A004442(n))` -/
def P8583801627839345528.Spec : Prop :=
  ∀ n, P8583801627839345528.a n = A094765 n

end A094765

/-! ## A094765.P10163989806344858053

`A053186(A005563(A094761(n))-n)`
-/

namespace A094765.P10163989806344858053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A005563 (A094761 n).toNat - (n : ℤ)).toNat

end

end A094765.P10163989806344858053

namespace A094765

/-- `A053186(A005563(A094761(n))-n)` -/
def P10163989806344858053.Spec : Prop :=
  ∀ n, P10163989806344858053.a n = A094765 n

end A094765

/-!
# A094766: Trajectory of 11 under repeated application of the map n -> n + 2*square excess of n (see A094765).

The programs for A094766, there is no canonical definition to state claims against.
-/

/-! ## A094766.P15515359431296311497

`A094765(a(n-1))` with `a(0)=11`
-/

namespace A094766.P15515359431296311497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11] fun n a =>
  A094765 (a (n - 1)).toNat

end

end A094766.P15515359431296311497

/-!
# A094767: Square spiral of sums of selected preceding terms, starting at 1 (a spiral Fibonacci-like sequence).

The programs for A094767, there is no canonical definition to state claims against.
-/

/-! ## A094767.P6694285468536440688

`A330116(A191398(n))`
-/

namespace A094767.P6694285468536440688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330116 (A191398 n).toNat

end

end A094767.P6694285468536440688

/-! ## A094767.P4146129872438051560

`or(A048328(n), A106602(A007585(n)))`
-/

namespace A094767.P4146129872438051560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048328 n) (A106602 (A007585 n).toNat)

end

end A094767.P4146129872438051560

/-! ## A094767.P15710976179317099099

`A048328(n)+A010060(A050574(n+1))`
-/

namespace A094767.P15710976179317099099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048328 n + A010060 (A050574 (n + 1)).toNat

end

end A094767.P15710976179317099099

/-! ## A094767.P18147362597265023856

`A000196(A233450(n+1)+A001006(n))`
-/

namespace A094767.P18147362597265023856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A233450 (n + 1) + A001006 n).toNat

end

end A094767.P18147362597265023856

/-! ## A094767.P1459993598946523177

`A000196(A233450(n+1)+A006452(n))`
-/

namespace A094767.P1459993598946523177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A233450 (n + 1) + A006452 n).toNat

end

end A094767.P1459993598946523177

/-!
# A094768: Square spiral of sums of selected preceding terms, starting at 1 (a spiral Fibonacci-like sequence).

The programs for A094768, there is no canonical definition to state claims against.
-/

/-! ## A094768.P9644424828714383469

`A319642(n)+2*A326524(n)`
-/

namespace A094768.P9644424828714383469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319642 n + 2 * A326524 n

end

end A094768.P9644424828714383469

/-! ## A094768.P13972030678265741489

`A319642(n)+and(2, A319646(n))`
-/

namespace A094768.P13972030678265741489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319642 n + Int.land 2 (A319646 n)

end

end A094768.P13972030678265741489

/-! ## A094768.P16163353445882668486

`A319642(n)+∑[A318447(n+1)]`
-/

namespace A094768.P16163353445882668486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319642 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094768.P16163353445882668486

/-! ## A094768.P9787243458356845609

`A062114(n)+A014045(A001787(n))`
-/

namespace A094768.P9787243458356845609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062114 n + A014045 (A001787 n).toNat

end

end A094768.P9787243458356845609

/-! ## A094768.P15316615692766323090

`A082784(A076906(n))+A062114(n)`
-/

namespace A094768.P15316615692766323090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082784 (A076906 n).toNat + A062114 n

end

end A094768.P15316615692766323090

/-!
# A094769: Square spiral of sums of selected preceding terms, starting at 0 followed by 1 (a spiral Fibonacci-like sequence).

The programs for A094769, there is no canonical definition to state claims against.
-/

/-! ## A094769.P11364450825161215428

`xor(A319110(n), A353629(A094776(n)))`
-/

namespace A094769.P11364450825161215428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A319110 n) (A353629 (A094776 n).toNat)

end

end A094769.P11364450825161215428

/-! ## A094769.P10576817848409901923

`A304574(A229046(n+1))`
-/

namespace A094769.P10576817848409901923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304574 (A229046 (n + 1)).toNat

end

end A094769.P10576817848409901923

/-! ## A094769.P7684310519492556737

`A242736(A182522(n)+n)`
-/

namespace A094769.P7684310519492556737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242736 (A182522 n + (n : ℤ)).toNat

end

end A094769.P7684310519492556737

/-! ## A094769.P8323999270554666141

`Δ[A000194(A148173(n+1))]`
-/

namespace A094769.P8323999270554666141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A148173 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094769.P8323999270554666141

/-! ## A094769.P8231769740636454219

`A004523(A210671(n+2))-1`
-/

namespace A094769.P8231769740636454219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A210671 (n + 2)).toNat - 1

end

end A094769.P8231769740636454219

/-!
# A094777: Number of legal positions in Go played on an n X n grid (each group must have at least one liberty).

The programs for A094777, there is no canonical definition to state claims against.
-/

/-! ## A094777.P3980506072999993299

`A356134(∑[n+1])`
-/

namespace A094777.P3980506072999993299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356134 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A094777.P3980506072999993299

/-! ## A094777.P4510983652133015441

`A356049((n+1)²+n²)`
-/

namespace A094777.P4510983652133015441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356049 ((n + 1) ^ 2 + n ^ 2)

end

end A094777.P4510983652133015441

/-!
# A094779: Let 2^k = smallest power of 2 >= binomial(n,[n/2]); a(n) = 2^k - binomial(n,[n/2]).

The programs for A094779, there is no canonical definition to state claims against.
-/

/-! ## A094779.P4907897468420617692

`A094780(A065033(n))/(n%2+1)`
-/

namespace A094779.P4907897468420617692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094780 (A065033 n).toNat : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)

end

end A094779.P4907897468420617692

/-! ## A094779.P14567209554701326241

`A094780(A110654(n))/(and(1, n)+1)`
-/

namespace A094779.P14567209554701326241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094780 (A110654 n).toNat : ℚ) / (Nat.land 1 n + 1 : ℚ)

end

end A094779.P14567209554701326241

/-! ## A094779.P11276122562661698881

`A094780(A065033(n))/A000034(n)`
-/

namespace A094779.P11276122562661698881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094780 (A065033 n).toNat : ℚ) / (A000034 n : ℚ)

end

end A094779.P11276122562661698881

/-! ## A094779.P13624532434297142650

`A094780(A110654(n))/A000034(n)`
-/

namespace A094779.P13624532434297142650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094780 (A110654 n).toNat : ℚ) / (A000034 n : ℚ)

end

end A094779.P13624532434297142650

/-! ## A094779.P3527050378045353666

`A094780(A110654(n))/(A000035(n)+1)`
-/

namespace A094779.P3527050378045353666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094780 (A110654 n).toNat : ℚ) / (A000035 n + 1 : ℚ)

end

end A094779.P3527050378045353666

/-! ## A094779.P13919890881698523166

`A094780(A065033(n))/A134451(n+1)`
-/

namespace A094779.P13919890881698523166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094780 (A065033 n).toNat : ℚ) / (A134451 (n + 1) : ℚ)

end

end A094779.P13919890881698523166

/-! ## A094779.P15525165548838776622

`A094780(A065033(n))/2*A134451(n)`
-/

namespace A094779.P15525165548838776622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094780 (A065033 n).toNat : ℚ) / 2 * (A134451 n : ℚ)

end

end A094779.P15525165548838776622

/-! ## A094779.P2030377754913705935

`A094780(A065033(n))/A006519(n²+1)`
-/

namespace A094779.P2030377754913705935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094780 (A065033 n).toNat : ℚ) / (A006519 (n ^ 2 + 1) : ℚ)

end

end A094779.P2030377754913705935

/-! ## A094779.P6683136710524583860

`A094780(A065033(n))/Δ[A001651(n+1)]`
-/

namespace A094779.P6683136710524583860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094780 (A065033 n).toNat : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A094779.P6683136710524583860

/-! ## A094779.P17831795171954641021

`A094780(A065033(n))/(Δ[A008619(n)]+1)`
-/

namespace A094779.P17831795171954641021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094780 (A065033 n).toNat : ℚ) / (f1 (n + 1) - f1 n + 1 : ℚ)

end

end A094779.P17831795171954641021

/-!
# A094780: Let 2^k = smallest power of 2 >= binomial(2n,n); a(n) = 2^k - binomial(2n,n).

The programs for A094780, there is no canonical definition to state claims against.
-/

/-! ## A094780.P2683329523316706716

`A094779(2*n)`
-/

namespace A094780.P2683329523316706716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094779 (2 * n)

end

end A094780.P2683329523316706716

/-! ## A094780.P13492460591994170120

`lcm(2, A094779(gcd(n, C(2, n))+n))`
-/

namespace A094780.P13492460591994170120
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A094779 (Nat.gcd n (Nat.choose 2 n) + n))

end

end A094780.P13492460591994170120

/-! ## A094780.P5354493863921293639

`lcm(2, A094779(A004277(n)))`
-/

namespace A094780.P5354493863921293639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A094779 (A004277 n).toNat)

end

end A094780.P5354493863921293639

/-! ## A094780.P6081414130608685866

`xor(1, A094779(A005843(n))+1)`
-/

namespace A094780.P6081414130608685866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A094779 (A005843 n).toNat + 1)

end

end A094780.P6081414130608685866

/-! ## A094780.P11497412175338517987

`A094779(A005843(n))/A007318(∑[n])`
-/

namespace A094780.P11497412175338517987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094779 (A005843 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A094780.P11497412175338517987

/-!
# A094781: Array T(i,j), i>=1, j >= 1, forming a two-dimensional version of A090822, read by antidiagonals.

The programs for A094781, there is no canonical definition to state claims against.
-/

/-! ## A094781.P16598525520930864853

`A241898(A098008(A003990(n+1)²))`
-/

namespace A094781.P16598525520930864853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241898 (A098008 (A003990 (n + 1) ^ 2).toNat).toNat

end

end A094781.P16598525520930864853

/-! ## A094781.P16601208978754908777

`A262611(A003990(n+1)^A043283(n+1))`
-/

namespace A094781.P16601208978754908777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262611 (SequenceMachineLib.roundAway ((A003990 (n + 1) : ℚ) ^ (A043283 (n + 1) : ℤ))).toNat

end

end A094781.P16601208978754908777

/-! ## A094781.P11211229363697572479

`A262611(A257522(n+1)^A043283(n+1))`
-/

namespace A094781.P11211229363697572479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262611 (SequenceMachineLib.roundAway ((A257522 (n + 1) : ℚ) ^ (A043283 (n + 1) : ℤ))).toNat

end

end A094781.P11211229363697572479

/-! ## A094781.P1699471290200151969

`A262611(A003990(n+1)^A063065(n))`
-/

namespace A094781.P1699471290200151969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262611 (SequenceMachineLib.roundAway ((A003990 (n + 1) : ℚ) ^ (A063065 n : ℤ))).toNat

end

end A094781.P1699471290200151969

/-! ## A094781.P17224632837635098772

`A262611(A063065(n)²*A003990(n+1))`
-/

namespace A094781.P17224632837635098772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262611 (A063065 n ^ 2 * A003990 (n + 1)).toNat

end

end A094781.P17224632837635098772

/-!
# A094782: 4th row of array in A094781.

The programs for A094782, there is no canonical definition to state claims against.
-/

/-! ## A094782.P3642415991829111036

`A020639(gcd(A055161(n), A101353(n)))`
-/

namespace A094782.P3642415991829111036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd (A055161 n) (A101353 n))

end

end A094782.P3642415991829111036

/-! ## A094782.P13329529334379979201

`A127246(A349164(3*n+4)+A127217(2*(n+2)))`
-/

namespace A094782.P13329529334379979201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127246 (A349164 (3 * n + 4) + A127217 (2 * (n + 2))).toNat

end

end A094782.P13329529334379979201

/-! ## A094782.P5270364281706330990

`gcd(A020639(A101353(n)), A303298(n))`
-/

namespace A094782.P5270364281706330990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020639 (A101353 n).toNat) (A303298 n)

end

end A094782.P5270364281706330990

/-! ## A094782.P6137947378902841687

`or(A057559(n+1), A107393(A006414(n)))`
-/

namespace A094782.P6137947378902841687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057559 (n + 1)) (A107393 (A006414 n).toNat)

end

end A094782.P6137947378902841687

/-! ## A094782.P13345740349738359983

`A055881(∑[∑[A160889(n+1)]])`
-/

namespace A094782.P13345740349738359983
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160889 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A094782.P13345740349738359983

/-!
# A094783: Numbers k such that, for all m < k, d_i(k) <= d_i(m) for i=1 to Min(d(k),d(m)), where d_i(k) denotes the i-th smallest divisor of k.

The programs for A094783, there is no canonical definition to state claims against.
-/

/-! ## A094783.P8755817287607496856

`∩[A095848(n+1), A136339(n+1)]`
-/

namespace A094783.P8755817287607496856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094783.P8755817287607496856

/-! ## A094783.P18298981992774309450

`∩[A095849(n+1), A136339(n+1)]`
-/

namespace A094783.P18298981992774309450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094783.P18298981992774309450

/-! ## A094783.P5549707918726362181

`∩[A136339(n+1), A381849(n+1)]`
-/

namespace A094783.P5549707918726362181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094783.P5549707918726362181

/-! ## A094783.P15437689617236120983

`∩[A095848(n+1), A261220(n)]`
-/

namespace A094783.P15437689617236120983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261220 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094783.P15437689617236120983

/-! ## A094783.P10733727677178732514

`∩[A095849(n+1), A261220(n)]`
-/

namespace A094783.P10733727677178732514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261220 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094783.P10733727677178732514

/-!
# A094784: Numbers that are neither squares nor cubes.

The programs for A094784, the canonical program `A094784.P12250347698187847923` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094784 has offset 1).

The definition of A094784 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094784.P12250347698187847923

`comp[∪[n^3, n²]]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094784

/-- `comp[∪[n^3, n²]]` -/
def P12250347698187847923.Spec : Prop :=
  ∀ n, (P12250347698187847923.a n : ℤ) = A094784 (n + 1)

theorem P12250347698187847923.correct : P12250347698187847923.Spec := by
  intro n
  simp only [A094784, Nat.add_sub_cancel]

end A094784

/-! ## A094784.P17824993894577219653

`comp[A002760(n+1)]`
-/

namespace A094784.P17824993894577219653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A094784.P17824993894577219653

namespace A094784

/-- `comp[A002760(n+1)]` -/
def P17824993894577219653.Spec : Prop :=
  ∀ n, (P17824993894577219653.a n : ℤ) = A094784 (n + 1)

end A094784

/-! ## A094784.P18259101413760749040

`comp[A125643(n+1)]`
-/

namespace A094784.P18259101413760749040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A094784.P18259101413760749040

namespace A094784

/-- `comp[A125643(n+1)]` -/
def P18259101413760749040.Spec : Prop :=
  ∀ n, (P18259101413760749040.a n : ℤ) = A094784 (n + 1)

end A094784

/-! ## A094784.P16609231292515292525

`∩[comp[n^3], comp[n²]]`
-/

namespace A094784.P16609231292515292525
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = x) n

end

end A094784.P16609231292515292525

namespace A094784

/-- `∩[comp[n^3], comp[n²]]` -/
def P16609231292515292525.Spec : Prop :=
  ∀ n, (P16609231292515292525.a n : ℤ) = A094784 (n + 1)

end A094784

/-! ## A094784.P18185687937802322602

`filter[A007412(n+1), A049240(#)]`
-/

namespace A094784.P18185687937802322602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A094784.P18185687937802322602

namespace A094784

/-- `filter[A007412(n+1), A049240(#)]` -/
def P18185687937802322602.Spec : Prop :=
  ∀ n, P18185687937802322602.a n = A094784 (n + 1)

end A094784

/-! ## A094784.P7038104214123926683

`filter[A007412(n+1), A267635(#)]`
-/

namespace A094784.P7038104214123926683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267635 (f1 j).toNat = 1) n)

end

end A094784.P7038104214123926683

namespace A094784

/-- `filter[A007412(n+1), A267635(#)]` -/
def P7038104214123926683.Spec : Prop :=
  ∀ n, P7038104214123926683.a n = A094784 (n + 1)

end A094784

/-!
# A094786: Primes that are 2 less than a perfect power m^k, k >= 2.

The programs for A094786, there is no canonical definition to state claims against.
-/

/-! ## A094786.P7516943164870625762

`p?[∑[A076412(n)]-2]`
-/

namespace A094786.P7516943164870625762
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094786.P7516943164870625762

/-! ## A094786.P15398730239086810934

`p?[A045542(n+1)-1]`
-/

namespace A094786.P15398730239086810934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094786.P15398730239086810934

/-! ## A094786.P1215781179671644387

`p?[A080262(n+1)-1]`
-/

namespace A094786.P1215781179671644387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080262 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094786.P1215781179671644387

/-! ## A094786.P2839161842122768840

`p?[A329582(n+1)-1]`
-/

namespace A094786.P2839161842122768840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329582 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094786.P2839161842122768840

/-! ## A094786.P18074800496018263242

`p?[A001597(n+1)-2]`
-/

namespace A094786.P18074800496018263242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094786.P18074800496018263242

/-! ## A094786.P9558620171896629797

`p?[A216765(n+1)-3]`
-/

namespace A094786.P9558620171896629797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216765 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094786.P9558620171896629797

/-! ## A094786.P9433632283640508334

`p?[abs(A157985(n+1))-2]`
-/

namespace A094786.P9433632283640508334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157985 (n + 1)| - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094786.P9433632283640508334

/-! ## A094786.P16872882793657779962

`p?[floor(sqrt(A062965(n+1)))-1]`
-/

namespace A094786.P16872882793657779962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A062965 (n + 1)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094786.P16872882793657779962

/-! ## A094786.P18335628055929505015

`p?[A053289(n)+a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A094786.P18335628055929505015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A053289 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094786.P18335628055929505015

/-! ## A094786.P3479409059485869210

`p?[abs(2-A001597(n-log2(1/2)))]`
-/

namespace A094786.P3479409059485869210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A001597 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094786.P3479409059485869210

/-! ## A094786.P14210010989794893897

`p?[gcd(A000038(n), A157985(n+1))-2]`
-/

namespace A094786.P14210010989794893897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000038 n) (A157985 (n + 1)) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094786.P14210010989794893897

/-! ## A094786.P6306805022010287026

`p?[lcm(A020985(n), A157985(n+1))-2]`
-/

namespace A094786.P6306805022010287026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A020985 n) (A157985 (n + 1)) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094786.P6306805022010287026

/-! ## A094786.P14786650397712403766

`p?[lcm(-A157985(n+1), A065357(n))-2]`
-/

namespace A094786.P14786650397712403766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (-A157985 (n + 1)) (A065357 n) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094786.P14786650397712403766

/-! ## A094786.P6704920222198352808

`p?[A000040(n+1)+A075146(n+1)-2]`
-/

namespace A094786.P6704920222198352808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A075146 (n + 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094786.P6704920222198352808

/-!
# A094788: Number of (s(0), s(1), ..., s(2n+1)) such that 0 < s(i) < 10 and |s(i) - s(i-1)| = 1 for i = 1,2,...,2n+1, s(0) = 1, s(2n+1) = 6.

The programs for A094788, the canonical program `A094788.P18266647774665423363` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094788 has offset 2).

The definition of A094788 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094788.P18266647774665423363

`8*a(n-1)-21*a(n-2)+20*a(n-3)-5*a(n-4)` with `a(0)=1, a(1)=6, a(2)=27, a(3)=110`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094788

/-- `8*a(n-1)-21*a(n-2)+20*a(n-3)-5*a(n-4)` -/
def P18266647774665423363.Spec : Prop :=
  ∀ n, P18266647774665423363.a n = A094788 (n + 2)

theorem P18266647774665423363.correct : P18266647774665423363.Spec := by
  intro n
  simp only [A094788, Nat.add_sub_cancel]

end A094788

/-! ## A094788.P16709699979661315182

`∑[A217783(n)]`
-/

namespace A094788.P16709699979661315182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217783 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094788.P16709699979661315182

namespace A094788

/-- `∑[A217783(n)]` -/
def P16709699979661315182.Spec : Prop :=
  ∀ n, P16709699979661315182.a n = A094788 (n + 2)

end A094788

/-! ## A094788.P17254695299097301477

`A217779(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A094788.P17254695299097301477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A217779 n + 2 * a (n - 1)

end

end A094788.P17254695299097301477

namespace A094788

/-- `A217779(n)+2*a(n-1)` -/
def P17254695299097301477.Spec : Prop :=
  ∀ n, P17254695299097301477.a n = A094788 (n + 2)

end A094788

/-! ## A094788.P3406503685881954313

`∑[A094865(n+1)+A030191(n)]`
-/

namespace A094788.P3406503685881954313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094865 (n + 1) + A030191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094788.P3406503685881954313

namespace A094788

/-- `∑[A094865(n+1)+A030191(n)]` -/
def P3406503685881954313.Spec : Prop :=
  ∀ n, P3406503685881954313.a n = A094788 (n + 2)

end A094788

/-! ## A094788.P12288854637897890963

`A094667(n+2)-A001906(n+2)`
-/

namespace A094788.P12288854637897890963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094667 (n + 2) - A001906 (n + 2)

end

end A094788.P12288854637897890963

namespace A094788

/-- `A094667(n+2)-A001906(n+2)` -/
def P12288854637897890963.Spec : Prop :=
  ∀ n, P12288854637897890963.a n = A094788 (n + 2)

end A094788

/-! ## A094788.P14750466597119642056

`∑[A094865(n+1)+A093131(n+1)]`
-/

namespace A094788.P14750466597119642056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094865 (n + 1) + A093131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094788.P14750466597119642056

namespace A094788

/-- `∑[A094865(n+1)+A093131(n+1)]` -/
def P14750466597119642056.Spec : Prop :=
  ∀ n, P14750466597119642056.a n = A094788 (n + 2)

end A094788

/-! ## A094788.P8330333304115320766

`A094865(n+2)+∑[A094667(n+1)]`
-/

namespace A094788.P8330333304115320766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094865 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094788.P8330333304115320766

namespace A094788

/-- `A094865(n+2)+∑[A094667(n+1)]` -/
def P8330333304115320766.Spec : Prop :=
  ∀ n, P8330333304115320766.a n = A094788 (n + 2)

end A094788

/-! ## A094788.P8792887485305814878

`2*a(n-1)+A217782(n+1)-A000045(2*n+1)` with `a(0)=1`
-/

namespace A094788.P8792887485305814878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + (A217782 (n + 1) - A000045 (2 * n + 1))

end

end A094788.P8792887485305814878

namespace A094788

/-- `2*a(n-1)+A217782(n+1)-A000045(2*n+1)` -/
def P8792887485305814878.Spec : Prop :=
  ∀ n, P8792887485305814878.a n = A094788 (n + 2)

end A094788

/-! ## A094788.P5954425488552835619

`A217783(n)+A217783(n)-A217779(n)`
-/

namespace A094788.P5954425488552835619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217783 n + (A217783 n - A217779 n)

end

end A094788.P5954425488552835619

namespace A094788

/-- `A217783(n)+A217783(n)-A217779(n)` -/
def P5954425488552835619.Spec : Prop :=
  ∀ n, P5954425488552835619.a n = A094788 (n + 2)

end A094788

/-! ## A094788.P3013531850605498358

`A094667(n+2)-A000045(A005843(n+2))`
-/

namespace A094788.P3013531850605498358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094667 (n + 2) - A000045 (A005843 (n + 2)).toNat

end

end A094788.P3013531850605498358

namespace A094788

/-- `A094667(n+2)-A000045(A005843(n+2))` -/
def P3013531850605498358.Spec : Prop :=
  ∀ n, P3013531850605498358.a n = A094788 (n + 2)

end A094788

/-! ## A094788.P17603785475633964292

`A093131(n+1)+A094865(n+2)-A094865(n+1)`
-/

namespace A094788.P17603785475633964292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093131 (n + 1) + (A094865 (n + 2) - A094865 (n + 1))

end

end A094788.P17603785475633964292

namespace A094788

/-- `A093131(n+1)+A094865(n+2)-A094865(n+1)` -/
def P17603785475633964292.Spec : Prop :=
  ∀ n, P17603785475633964292.a n = A094788 (n + 2)

end A094788

/-! ## A094788.P9262446073374319338

`2*A217783(n)-A217779(n)`
-/

namespace A094788.P9262446073374319338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A217783 n - A217779 n

end

end A094788.P9262446073374319338

namespace A094788

/-- `2*A217783(n)-A217779(n)` -/
def P9262446073374319338.Spec : Prop :=
  ∀ n, P9262446073374319338.a n = A094788 (n + 2)

end A094788

/-! ## A094788.P8459107134087580200

`A030191(n+1)-A094667(n+2)`
-/

namespace A094788.P8459107134087580200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030191 (n + 1) - A094667 (n + 2)

end

end A094788.P8459107134087580200

namespace A094788

/-- `A030191(n+1)-A094667(n+2)` -/
def P8459107134087580200.Spec : Prop :=
  ∀ n, P8459107134087580200.a n = A094788 (n + 2)

end A094788

/-! ## A094788.P7976115894193137712

`A093131(n+2)-A094667(n+2)`
-/

namespace A094788.P7976115894193137712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093131 (n + 2) - A094667 (n + 2)

end

end A094788.P7976115894193137712

namespace A094788

/-- `A093131(n+2)-A094667(n+2)` -/
def P7976115894193137712.Spec : Prop :=
  ∀ n, P7976115894193137712.a n = A094788 (n + 2)

end A094788

/-! ## A094788.P5382021590442886103

`A094825(n+3)-A094865(n+2)`
-/

namespace A094788.P5382021590442886103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094825 (n + 3) - A094865 (n + 2)

end

end A094788.P5382021590442886103

namespace A094788

/-- `A094825(n+3)-A094865(n+2)` -/
def P5382021590442886103.Spec : Prop :=
  ∀ n, P5382021590442886103.a n = A094788 (n + 2)

end A094788

/-! ## A094788.P2267098736127415324

`A217783(n+1)-(A217783(n)+A081567(n+1))`
-/

namespace A094788.P2267098736127415324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217783 (n + 1) - (A217783 n + A081567 (n + 1))

end

end A094788.P2267098736127415324

namespace A094788

/-- `A217783(n+1)-(A217783(n)+A081567(n+1))` -/
def P2267098736127415324.Spec : Prop :=
  ∀ n, P2267098736127415324.a n = A094788 (n + 2)

end A094788

/-! ## A094788.P3033842765264193051

`Δ[A033190(n+3)]%A033190(n+3)`
-/

namespace A094788.P3033842765264193051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033190 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A033190 (n + 3))

end

end A094788.P3033842765264193051

namespace A094788

/-- `Δ[A033190(n+3)]%A033190(n+3)` -/
def P3033842765264193051.Spec : Prop :=
  ∀ n, P3033842765264193051.a n = A094788 (n + 2)

end A094788

/-!
# A094789: Number of (s(0), s(1), ..., s(2n+1)) such that 0 < s(i) < 7 and |s(i) - s(i-1)| = 1 for i = 1,2,...,2n+1, s(0) = 1, s(2n+1) = 4.

The programs for A094789, the canonical program `A094789.P7592324606686746429` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094789 has offset 1).

The definition of A094789 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094789.P7592324606686746429

`5*a(n-1)-6*a(n-2)+a(n-3)` with `a(0)=1, a(1)=4, a(2)=14`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094789

/-- `5*a(n-1)-6*a(n-2)+a(n-3)` -/
def P7592324606686746429.Spec : Prop :=
  ∀ n, P7592324606686746429.a n = A094789 (n + 1)

theorem P7592324606686746429.correct : P7592324606686746429.Spec := by
  intro n
  simp only [A094789, Nat.add_sub_cancel]

end A094789

/-! ## A094789.P4789899526585926438

`ogf((1-x)/(1-5x+6x^2-x^3))`
-/

namespace A094789.P4789899526585926438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -5, 6, -1] n

end

end A094789.P4789899526585926438

namespace A094789

/-- `ogf((1-x)/(1-5x+6x^2-x^3))` -/
def P4789899526585926438.Spec : Prop :=
  ∀ n, P4789899526585926438.a n = A094789 (n + 1)

end A094789

/-! ## A094789.P1813978767545338683

`∑[A060557(n)]`
-/

namespace A094789.P1813978767545338683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094789.P1813978767545338683

namespace A094789

/-- `∑[A060557(n)]` -/
def P1813978767545338683.Spec : Prop :=
  ∀ n, P1813978767545338683.a n = A094789 (n + 1)

end A094789

/-! ## A094789.P14725562815301227267

`∑[A028495(Δ[n²])]`
-/

namespace A094789.P14725562815301227267
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094789.P14725562815301227267

namespace A094789

/-- `∑[A028495(Δ[n²])]` -/
def P14725562815301227267.Spec : Prop :=
  ∀ n, P14725562815301227267.a n = A094789 (n + 1)

end A094789

/-! ## A094789.P18130482877645608276

`A006053(2*n+3)`
-/

namespace A094789.P18130482877645608276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006053 (2 * n + 3)

end

end A094789.P18130482877645608276

namespace A094789

/-- `A006053(2*n+3)` -/
def P18130482877645608276.Spec : Prop :=
  ∀ n, P18130482877645608276.a n = A094789 (n + 1)

end A094789

/-! ## A094789.P16585602141230842219

`A187067(4*(n+1))`
-/

namespace A094789.P16585602141230842219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187067 (4 * (n + 1))

end

end A094789.P16585602141230842219

namespace A094789

/-- `A187067(4*(n+1))` -/
def P16585602141230842219.Spec : Prop :=
  ∀ n, P16585602141230842219.a n = A094789 (n + 1)

end A094789

/-! ## A094789.P12651998408794709857

`A187066(4*n+5)`
-/

namespace A094789.P12651998408794709857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187066 (4 * n + 5)

end

end A094789.P12651998408794709857

namespace A094789

/-- `A187066(4*n+5)` -/
def P12651998408794709857.Spec : Prop :=
  ∀ n, P12651998408794709857.a n = A094789 (n + 1)

end A094789

/-! ## A094789.P3974740417718900204

`A187065(4*n+7)`
-/

namespace A094789.P3974740417718900204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187065 (4 * n + 7)

end

end A094789.P3974740417718900204

namespace A094789

/-- `A187065(4*n+7)` -/
def P3974740417718900204.Spec : Prop :=
  ∀ n, P3974740417718900204.a n = A094789 (n + 1)

end A094789

/-! ## A094789.P17924047463696122092

`∑[record[A028495(xor(1, n))]]`
-/

namespace A094789.P17924047463696122092
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 (Nat.xor 1 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094789.P17924047463696122092

namespace A094789

/-- `∑[record[A028495(xor(1, n))]]` -/
def P17924047463696122092.Spec : Prop :=
  ∀ n, P17924047463696122092.a n = A094789 (n + 1)

end A094789

/-! ## A094789.P3441895924163284971

`A265755(2*(2*n+3))`
-/

namespace A094789.P3441895924163284971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265755 (2 * (2 * n + 3))

end

end A094789.P3441895924163284971

namespace A094789

/-- `A265755(2*(2*n+3))` -/
def P3441895924163284971.Spec : Prop :=
  ∀ n, P3441895924163284971.a n = A094789 (n + 1)

end A094789

/-! ## A094789.P16115227710273755953

`A052975(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A094789.P16115227710273755953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052975 n + 2 * a (n - 1)

end

end A094789.P16115227710273755953

namespace A094789

/-- `A052975(n)+2*a(n-1)` -/
def P16115227710273755953.Spec : Prop :=
  ∀ n, P16115227710273755953.a n = A094789 (n + 1)

end A094789

/-! ## A094789.P2089598519523954958

`∑[A187067(A004767(n))]`
-/

namespace A094789.P2089598519523954958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187067 (A004767 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094789.P2089598519523954958

namespace A094789

/-- `∑[A187067(A004767(n))]` -/
def P2089598519523954958.Spec : Prop :=
  ∀ n, P2089598519523954958.a n = A094789 (n + 1)

end A094789

/-! ## A094789.P7205814639739809124

`A052975(n+1)-A080937(n+1)`
-/

namespace A094789.P7205814639739809124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052975 (n + 1) - A080937 (n + 1)

end

end A094789.P7205814639739809124

namespace A094789

/-- `A052975(n+1)-A080937(n+1)` -/
def P7205814639739809124.Spec : Prop :=
  ∀ n, P7205814639739809124.a n = A094789 (n + 1)

end A094789

/-! ## A094789.P1247166568062859620

`A052975(n+1)-A052547(2*n)`
-/

namespace A094789.P1247166568062859620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052975 (n + 1) - A052547 (2 * n)

end

end A094789.P1247166568062859620

namespace A094789

/-- `A052975(n+1)-A052547(2*n)` -/
def P1247166568062859620.Spec : Prop :=
  ∀ n, P1247166568062859620.a n = A094789 (n + 1)

end A094789

/-! ## A094789.P7402135770215351243

`A094790(n+1)+A052547(2*n+1)`
-/

namespace A094789.P7402135770215351243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094790 (n + 1) + A052547 (2 * n + 1)

end

end A094789.P7402135770215351243

namespace A094789

/-- `A094790(n+1)+A052547(2*n+1)` -/
def P7402135770215351243.Spec : Prop :=
  ∀ n, P7402135770215351243.a n = A094789 (n + 1)

end A094789

/-! ## A094789.P3758298858191437041

`A028495(2*(n+1))-A080937(n+1)`
-/

namespace A094789.P3758298858191437041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 (2 * (n + 1)) - A080937 (n + 1)

end

end A094789.P3758298858191437041

namespace A094789

/-- `A028495(2*(n+1))-A080937(n+1)` -/
def P3758298858191437041.Spec : Prop :=
  ∀ n, P3758298858191437041.a n = A094789 (n + 1)

end A094789

/-! ## A094789.P16026968084558424838

`A096976(2*n+3)+A094790(n+1)`
-/

namespace A094789.P16026968084558424838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096976 (2 * n + 3) + A094790 (n + 1)

end

end A094789.P16026968084558424838

namespace A094789

/-- `A096976(2*n+3)+A094790(n+1)` -/
def P16026968084558424838.Spec : Prop :=
  ∀ n, P16026968084558424838.a n = A094789 (n + 1)

end A094789

/-! ## A094789.P2798022471872835624

`A214683(2*n+1)+A052547(2*n)`
-/

namespace A094789.P2798022471872835624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214683 (2 * n + 1) + A052547 (2 * n)

end

end A094789.P2798022471872835624

namespace A094789

/-- `A214683(2*n+1)+A052547(2*n)` -/
def P2798022471872835624.Spec : Prop :=
  ∀ n, P2798022471872835624.a n = A094789 (n + 1)

end A094789

/-! ## A094789.P1400563642046022269

`A028495(2*(n+1))-A052547(2*n)`
-/

namespace A094789.P1400563642046022269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 (2 * (n + 1)) - A052547 (2 * n)

end

end A094789.P1400563642046022269

namespace A094789

/-- `A028495(2*(n+1))-A052547(2*n)` -/
def P1400563642046022269.Spec : Prop :=
  ∀ n, P1400563642046022269.a n = A094789 (n + 1)

end A094789

/-! ## A094789.P13354893504338162986

`∑[A052547(2*n+1)+A052547(2*n)]`
-/

namespace A094789.P13354893504338162986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052547 (2 * n + 1) + A052547 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094789.P13354893504338162986

namespace A094789

/-- `∑[A052547(2*n+1)+A052547(2*n)]` -/
def P13354893504338162986.Spec : Prop :=
  ∀ n, P13354893504338162986.a n = A094789 (n + 1)

end A094789

/-!
# A094790: Number of (s(0), s(1), ..., s(2n)) such that 0 < s(i) < 7 and |s(i) - s(i-1)| = 1 for i = 1,2,...,2*n, s(0) = 1, s(2n) = 3.

The programs for A094790, the canonical program `A094790.P6376287070715282765` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094790 has offset 1).

The definition of A094790 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094790.P6376287070715282765

`5*a(n-1)-6*a(n-2)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=9`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094790

/-- `5*a(n-1)-6*a(n-2)+a(n-3)` -/
def P6376287070715282765.Spec : Prop :=
  ∀ n, P6376287070715282765.a n = A094790 (n + 1)

theorem P6376287070715282765.correct : P6376287070715282765.Spec := by
  intro n
  simp only [A094790, Nat.add_sub_cancel]

end A094790

/-! ## A094790.P15393260016766776904

`ogf((1-2x)/(1-5x+6x^2-x^3))`
-/

namespace A094790.P15393260016766776904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -5, 6, -1] n

end

end A094790.P15393260016766776904

namespace A094790

/-- `ogf((1-2x)/(1-5x+6x^2-x^3))` -/
def P15393260016766776904.Spec : Prop :=
  ∀ n, P15393260016766776904.a n = A094790 (n + 1)

end A094790

/-! ## A094790.P9928847483813150981

`∑[A052975(n)]`
-/

namespace A094790.P9928847483813150981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094790.P9928847483813150981

namespace A094790

/-- `∑[A052975(n)]` -/
def P9928847483813150981.Spec : Prop :=
  ∀ n, P9928847483813150981.a n = A094790 (n + 1)

end A094790

/-! ## A094790.P14105295056145629454

`Δ[A080937(n+1)]`
-/

namespace A094790.P14105295056145629454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094790.P14105295056145629454

namespace A094790

/-- `Δ[A080937(n+1)]` -/
def P14105295056145629454.Spec : Prop :=
  ∀ n, P14105295056145629454.a n = A094790 (n + 1)

end A094790

/-! ## A094790.P4301076779927781974

`∑[A028495(2*n)]`
-/

namespace A094790.P4301076779927781974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094790.P4301076779927781974

namespace A094790

/-- `∑[A028495(2*n)]` -/
def P4301076779927781974.Spec : Prop :=
  ∀ n, P4301076779927781974.a n = A094790 (n + 1)

end A094790

/-! ## A094790.P5826586111549112469

`Δ[A052547(2*n)]`
-/

namespace A094790.P5826586111549112469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052547 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094790.P5826586111549112469

namespace A094790

/-- `Δ[A052547(2*n)]` -/
def P5826586111549112469.Spec : Prop :=
  ∀ n, P5826586111549112469.a n = A094790 (n + 1)

end A094790

/-! ## A094790.P198093985416962054

`Δ[A187066(4*n)]`
-/

namespace A094790.P198093985416962054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187066 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094790.P198093985416962054

namespace A094790

/-- `Δ[A187066(4*n)]` -/
def P198093985416962054.Spec : Prop :=
  ∀ n, P198093985416962054.a n = A094790 (n + 1)

end A094790

/-! ## A094790.P5700877659006379753

`A006053(2*(n+1))`
-/

namespace A094790.P5700877659006379753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006053 (2 * (n + 1))

end

end A094790.P5700877659006379753

namespace A094790

/-- `A006053(2*(n+1))` -/
def P5700877659006379753.Spec : Prop :=
  ∀ n, P5700877659006379753.a n = A094790 (n + 1)

end A094790

/-! ## A094790.P9864221740641400622

`A265755(4*(n+1))`
-/

namespace A094790.P9864221740641400622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265755 (4 * (n + 1))

end

end A094790.P9864221740641400622

namespace A094790

/-- `A265755(4*(n+1))` -/
def P9864221740641400622.Spec : Prop :=
  ∀ n, P9864221740641400622.a n = A094790 (n + 1)

end A094790

/-! ## A094790.P4539190787899278926

`A187067(4*n+2)`
-/

namespace A094790.P4539190787899278926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187067 (4 * n + 2)

end

end A094790.P4539190787899278926

namespace A094790

/-- `A187067(4*n+2)` -/
def P4539190787899278926.Spec : Prop :=
  ∀ n, P4539190787899278926.a n = A094790 (n + 1)

end A094790

/-! ## A094790.P12065280237919750204

`Δ[A096976(2*(n+1))]`
-/

namespace A094790.P12065280237919750204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096976 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094790.P12065280237919750204

namespace A094790

/-- `Δ[A096976(2*(n+1))]` -/
def P12065280237919750204.Spec : Prop :=
  ∀ n, P12065280237919750204.a n = A094790 (n + 1)

end A094790

/-! ## A094790.P12234237501418377653

`∑[abs(Δ[A006053(2*n)])]`
-/

namespace A094790.P12234237501418377653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006053 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094790.P12234237501418377653

namespace A094790

/-- `∑[abs(Δ[A006053(2*n)])]` -/
def P12234237501418377653.Spec : Prop :=
  ∀ n, P12234237501418377653.a n = A094790 (n + 1)

end A094790

/-! ## A094790.P16261644713184692617

`A187066(3*(n+1)+n)`
-/

namespace A094790.P16261644713184692617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187066 (3 * (n + 1) + n)

end

end A094790.P16261644713184692617

namespace A094790

/-- `A187066(3*(n+1)+n)` -/
def P16261644713184692617.Spec : Prop :=
  ∀ n, P16261644713184692617.a n = A094790 (n + 1)

end A094790

/-! ## A094790.P5233443705366599062

`record[A006053(lcm(2, n+1)-n)]`
-/

namespace A094790.P5233443705366599062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006053 (Nat.lcm 2 (n + 1) - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094790.P5233443705366599062

namespace A094790

/-- `record[A006053(lcm(2, n+1)-n)]` -/
def P5233443705366599062.Spec : Prop :=
  ∀ n, P5233443705366599062.a n = A094790 (n + 1)

end A094790

/-! ## A094790.P2611685183795153447

`A187065(3*(n+1)+n+2)`
-/

namespace A094790.P2611685183795153447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187065 (3 * (n + 1) + (n + 2))

end

end A094790.P2611685183795153447

namespace A094790

/-- `A187065(3*(n+1)+n+2)` -/
def P2611685183795153447.Spec : Prop :=
  ∀ n, P2611685183795153447.a n = A094790 (n + 1)

end A094790

/-! ## A094790.P15465025660265171263

`∑[A276055(2*n+2*n+1)]`
-/

namespace A094790.P15465025660265171263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276055 (2 * n + (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094790.P15465025660265171263

namespace A094790

/-- `∑[A276055(2*n+2*n+1)]` -/
def P15465025660265171263.Spec : Prop :=
  ∀ n, P15465025660265171263.a n = A094790 (n + 1)

end A094790

/-! ## A094790.P6151133090701525841

`∑[A187067(A004767(n)-2)]`
-/

namespace A094790.P6151133090701525841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187067 (A004767 n - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094790.P6151133090701525841

namespace A094790

/-- `∑[A187067(A004767(n)-2)]` -/
def P6151133090701525841.Spec : Prop :=
  ∀ n, P6151133090701525841.a n = A094790 (n + 1)

end A094790

/-! ## A094790.P6685471480146520119

`A052975(n+1)-A060557(n)`
-/

namespace A094790.P6685471480146520119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052975 (n + 1) - A060557 n

end

end A094790.P6685471480146520119

namespace A094790

/-- `A052975(n+1)-A060557(n)` -/
def P6685471480146520119.Spec : Prop :=
  ∀ n, P6685471480146520119.a n = A094790 (n + 1)

end A094790

/-! ## A094790.P13109253730295228799

`Δ[A028495(n)²]+A052547(n)²`
-/

namespace A094790.P13109253730295228799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A052547 n ^ 2

end

end A094790.P13109253730295228799

namespace A094790

/-- `Δ[A028495(n)²]+A052547(n)²` -/
def P13109253730295228799.Spec : Prop :=
  ∀ n, P13109253730295228799.a n = A094790 (n + 1)

end A094790

/-! ## A094790.P15086592945450628532

`A080937(n+2)-A080937(n+1)`
-/

namespace A094790.P15086592945450628532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080937 (n + 2) - A080937 (n + 1)

end

end A094790.P15086592945450628532

namespace A094790

/-- `A080937(n+2)-A080937(n+1)` -/
def P15086592945450628532.Spec : Prop :=
  ∀ n, P15086592945450628532.a n = A094790 (n + 1)

end A094790

/-!
# A094791: Triangle read by rows giving coefficients of polynomials arising in successive differences of (n!)_{n>=0}.

The programs for A094791, there is no canonical definition to state claims against.
-/

/-! ## A094791.P4114944021646923376

`A269954(A099375(n)+1+n)`
-/

namespace A094791.P4114944021646923376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269954 (A099375 n + 1 + (n : ℤ)).toNat

end

end A094791.P4114944021646923376

/-! ## A094791.P10682980999461707360

`abs(A126353(n+1))`
-/

namespace A094791.P10682980999461707360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A126353 (n + 1)|

end

end A094791.P10682980999461707360

/-! ## A094791.P2786744061816782038

`gcd(A000038(n), A126353(n+1))`
-/

namespace A094791.P2786744061816782038
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A126353 (n + 1))

end

end A094791.P2786744061816782038

/-! ## A094791.P5273096794977445877

`lcm(A020985(n), A126353(n+1))`
-/

namespace A094791.P5273096794977445877
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A126353 (n + 1))

end

end A094791.P5273096794977445877

/-! ## A094791.P17576142652729613135

`∑{d}[A126353(n+1), A000010(#)]`
-/

namespace A094791.P17576142652729613135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126353 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A094791.P17576142652729613135

/-!
# A094792: a(n) = (1/n!)*A001565(n).

The programs for A094792, the canonical program `A094792.P13284551861407983223` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094792 has offset 0).

The definition of A094792 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094792.P13284551861407983223

`n^3+3*n²+5*n+2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094792

/-- `n^3+3*n²+5*n+2` -/
def P13284551861407983223.Spec : Prop :=
  ∀ n, (P13284551861407983223.a n : ℤ) = A094792 n

theorem P13284551861407983223.correct : P13284551861407983223.Spec := by
  intro n
  simp only [A094792]

end A094792

/-! ## A094792.P5966957461906026725

`1/n!*A001565(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A094792.P5966957461906026725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ) * (A001565 n : ℚ)

end

end A094792.P5966957461906026725

namespace A094792

/-- `1/n!*A001565(n)` -/
def P5966957461906026725.Spec : Prop :=
  ∀ n, P5966957461906026725.a n = (A094792 n : ℚ)

end A094792

/-! ## A094792.P3401370471455192986

`Δ[C(n+1, 2)²+n²]`
-/

namespace A094792.P3401370471455192986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 ^ 2 + n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A094792.P3401370471455192986

namespace A094792

/-- `Δ[C(n+1, 2)²+n²]` -/
def P3401370471455192986.Spec : Prop :=
  ∀ n, P3401370471455192986.a n = A094792 n

end A094792

/-! ## A094792.P251468072337290912

`∑[∑[a(n-1)+6]]` with `a(0)=2, a(1)=7, a(2)=12`
-/

namespace A094792.P251468072337290912
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 7, 12] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094792.P251468072337290912

namespace A094792

/-- `∑[∑[a(n-1)+6]]` -/
def P251468072337290912.Spec : Prop :=
  ∀ n, (P251468072337290912.a n : ℤ) = A094792 n

end A094792

/-! ## A094792.P7688929078568071171

`abs(lcm(n+2, (n+1)²)-n²)`
-/

namespace A094792.P7688929078568071171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lcm (n + 2) ((n + 1) ^ 2) : ℤ) - (n ^ 2 : ℤ)|

end

end A094792.P7688929078568071171

namespace A094792

/-- `abs(lcm(n+2, (n+1)²)-n²)` -/
def P7688929078568071171.Spec : Prop :=
  ∀ n, P7688929078568071171.a n = A094792 n

end A094792

/-! ## A094792.P9317357092808669791

`floor(a(n-1)+3*(n²+1+n))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A094792.P9317357092808669791
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 3 * (n ^ 2 + 1 + n)

end

end A094792.P9317357092808669791

namespace A094792

/-- `floor(a(n-1)+3*(n²+1+n))` -/
def P9317357092808669791.Spec : Prop :=
  ∀ n, (P9317357092808669791.a n : ℤ) = A094792 n

theorem P9317357092808669791.correct : P9317357092808669791.Spec := by
  intro n
  induction n with
  | zero => simp [A094792, A094792.P9317357092808669791.a, A094792.P13284551861407983223.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A094792, Nat.add_sub_cancel, A094792.P9317357092808669791.a, A094792.P13284551861407983223.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A094792

/-! ## A094792.P2262519710593603879

`(lcm(2*n+1, n+1)+(n+1)²²)/(n+1)`
-/

namespace A094792.P2262519710593603879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (2 * n + 1) (n + 1) + ((n + 1) ^ 2) ^ 2 : ℚ) / (n + 1 : ℚ)

end

end A094792.P2262519710593603879

namespace A094792

/-- `(lcm(2*n+1, n+1)+(n+1)²²)/(n+1)` -/
def P2262519710593603879.Spec : Prop :=
  ∀ n, P2262519710593603879.a n = (A094792 n : ℚ)

end A094792

/-! ## A094792.P13538798082189779869

`Δ[n²+A000217(n)²]`
-/

namespace A094792.P13538798082189779869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + A000217 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094792.P13538798082189779869

namespace A094792

/-- `Δ[n²+A000217(n)²]` -/
def P13538798082189779869.Spec : Prop :=
  ∀ n, P13538798082189779869.a n = A094792 n

end A094792

/-! ## A094792.P12518504086495888983

`Δ[gcd(n, 2*n)²+∑[n]²]`
-/

namespace A094792.P12518504086495888983
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (2 * n) ^ 2 + (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A094792.P12518504086495888983

namespace A094792

/-- `Δ[gcd(n, 2*n)²+∑[n]²]` -/
def P12518504086495888983.Spec : Prop :=
  ∀ n, P12518504086495888983.a n = A094792 n

end A094792

/-! ## A094792.P9835462066509765078

`Δ[A123350(n)]`
-/

namespace A094792.P9835462066509765078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123350 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094792.P9835462066509765078

namespace A094792

/-- `Δ[A123350(n)]` -/
def P9835462066509765078.Spec : Prop :=
  ∀ n, P9835462066509765078.a n = A094792 n

end A094792

/-! ## A094792.P14270270906698801988

`Δ[A117717(n+1)]`
-/

namespace A094792.P14270270906698801988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094792.P14270270906698801988

namespace A094792

/-- `Δ[A117717(n+1)]` -/
def P14270270906698801988.Spec : Prop :=
  ∀ n, P14270270906698801988.a n = A094792 n

end A094792

/-! ## A094792.P16397751923144815573

`Δ[A061316(n)-n]`
-/

namespace A094792.P16397751923144815573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061316 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094792.P16397751923144815573

namespace A094792

/-- `Δ[A061316(n)-n]` -/
def P16397751923144815573.Spec : Prop :=
  ∀ n, P16397751923144815573.a n = A094792 n

end A094792

/-! ## A094792.P3652731583103460068

`Δ[A000537(n)+n²]`
-/

namespace A094792.P3652731583103460068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094792.P3652731583103460068

namespace A094792

/-- `Δ[A000537(n)+n²]` -/
def P3652731583103460068.Spec : Prop :=
  ∀ n, P3652731583103460068.a n = A094792 n

end A094792

/-! ## A094792.P3320981288700957994

`Δ[A154323(n)+n²]`
-/

namespace A094792.P3320981288700957994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154323 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094792.P3320981288700957994

namespace A094792

/-- `Δ[A154323(n)+n²]` -/
def P3320981288700957994.Spec : Prop :=
  ∀ n, P3320981288700957994.a n = A094792 n

end A094792

/-! ## A094792.P1993628473314388944

`Δ[A000290(n)+∑[n]²]`
-/

namespace A094792.P1993628473314388944
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n + (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094792.P1993628473314388944

namespace A094792

/-- `Δ[A000290(n)+∑[n]²]` -/
def P1993628473314388944.Spec : Prop :=
  ∀ n, P1993628473314388944.a n = A094792 n

end A094792

/-! ## A094792.P4929795628836036620

`Δ[∑[A000578(n)]+n²]`
-/

namespace A094792.P4929795628836036620
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094792.P4929795628836036620

namespace A094792

/-- `Δ[∑[A000578(n)]+n²]` -/
def P4929795628836036620.Spec : Prop :=
  ∀ n, P4929795628836036620.a n = A094792 n

end A094792

/-! ## A094792.P2847305868883830589

`Δ[A002522(n)+∑[n]²]`
-/

namespace A094792.P2847305868883830589
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n + (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094792.P2847305868883830589

namespace A094792

/-- `Δ[A002522(n)+∑[n]²]` -/
def P2847305868883830589.Spec : Prop :=
  ∀ n, P2847305868883830589.a n = A094792 n

end A094792

/-! ## A094792.P11841841866684071553

`Δ[A241848(n)+∑[n]²]`
-/

namespace A094792.P11841841866684071553
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241848 n + (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094792.P11841841866684071553

namespace A094792

/-- `Δ[A241848(n)+∑[n]²]` -/
def P11841841866684071553.Spec : Prop :=
  ∀ n, P11841841866684071553.a n = A094792 n

end A094792

/-! ## A094792.P305284070830932151

`ceil(Δ[A000538(n)]/(n+1)+2*n+1)`
-/

namespace A094792.P305284070830932151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ) + (2 * n + 1 : ℚ)⌉

end

end A094792.P305284070830932151

namespace A094792

/-- `ceil(Δ[A000538(n)]/(n+1)+2*n+1)` -/
def P305284070830932151.Spec : Prop :=
  ∀ n, P305284070830932151.a n = A094792 n

end A094792

/-!
# A094793: a(n) = (1/n!)*A001688(n).

The programs for A094793, the canonical program `A094793.P17828956578877188206` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094793 has offset 0).

The definition of A094793 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094793.P17828956578877188206

`n^4+6*n^3+17*n²+20*n+9`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094793

/-- `n^4+6*n^3+17*n²+20*n+9` -/
def P17828956578877188206.Spec : Prop :=
  ∀ n, (P17828956578877188206.a n : ℤ) = A094793 n

theorem P17828956578877188206.correct : P17828956578877188206.Spec := by
  intro n
  simp only [A094793]

end A094793

/-! ## A094793.P1746778730294231137

`1/n!*A001688(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A094793.P1746778730294231137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ) * (A001688 n : ℚ)

end

end A094793.P1746778730294231137

namespace A094793

/-- `1/n!*A001688(n)` -/
def P1746778730294231137.Spec : Prop :=
  ∀ n, P1746778730294231137.a n = (A094793 n : ℚ)

end A094793

/-! ## A094793.P5091899650728865298

`∑[A184536(n+1)+8*n+4]`
-/

namespace A094793.P5091899650728865298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184536 (n + 1) + (8 * n + 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094793.P5091899650728865298

namespace A094793

/-- `∑[A184536(n+1)+8*n+4]` -/
def P5091899650728865298.Spec : Prop :=
  ∀ n, P5091899650728865298.a n = A094793 n

end A094793

/-! ## A094793.P11207723016435124026

`Δ[lcm(n, (n+1)^3)+A054604(n)/5]`
-/

namespace A094793.P11207723016435124026
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n ((n + 1) ^ 3) : ℚ) + (A054604 n : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094793.P11207723016435124026

namespace A094793

/-- `Δ[lcm(n, (n+1)^3)+A054604(n)/5]` -/
def P11207723016435124026.Spec : Prop :=
  ∀ n, P11207723016435124026.a n = (A094793 n : ℚ)

end A094793

/-! ## A094793.P14763252588166683873

`∑[A008574(n)+4*A034262(n+1)]`
-/

namespace A094793.P14763252588166683873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + 4 * A034262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094793.P14763252588166683873

namespace A094793

/-- `∑[A008574(n)+4*A034262(n+1)]` -/
def P14763252588166683873.Spec : Prop :=
  ∀ n, P14763252588166683873.a n = A094793 n

end A094793

/-! ## A094793.P4601027612710199092

`∑[A105374(n+1)+A008574(n)]`
-/

namespace A094793.P4601027612710199092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105374 (n + 1) + A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094793.P4601027612710199092

namespace A094793

/-- `∑[A105374(n+1)+A008574(n)]` -/
def P4601027612710199092.Spec : Prop :=
  ∀ n, P4601027612710199092.a n = A094793 n

end A094793

/-! ## A094793.P3544328474907222696

`(A008514(n+1)+A000290(2*n+1))/2`
-/

namespace A094793.P3544328474907222696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008514 (n + 1) + A000290 (2 * n + 1) : ℚ) / 2

end

end A094793.P3544328474907222696

namespace A094793

/-- `(A008514(n+1)+A000290(2*n+1))/2` -/
def P3544328474907222696.Spec : Prop :=
  ∀ n, P3544328474907222696.a n = (A094793 n : ℚ)

end A094793

/-! ## A094793.P7648113669471688578

`∑[∑[A332019(A014206(n))]]`
-/

namespace A094793.P7648113669471688578
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332019 (A014206 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094793.P7648113669471688578

namespace A094793

/-- `∑[∑[A332019(A014206(n))]]` -/
def P7648113669471688578.Spec : Prop :=
  ∀ n, P7648113669471688578.a n = A094793 n

end A094793

/-! ## A094793.P1597427103078806582

`A060475(A056000(n)+14)`
-/

namespace A094793.P1597427103078806582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (A056000 n + 14).toNat

end

end A094793.P1597427103078806582

namespace A094793

/-- `A060475(A056000(n)+14)` -/
def P1597427103078806582.Spec : Prop :=
  ∀ n, P1597427103078806582.a n = A094793 n

end A094793

/-! ## A094793.P11816110197124786995

`A060475(eq[4, A002262(n)])`
-/

namespace A094793.P11816110197124786995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A094793.P11816110197124786995

namespace A094793

/-- `A060475(eq[4, A002262(n)])` -/
def P11816110197124786995.Spec : Prop :=
  ∀ n, P11816110197124786995.a n = A094793 n

end A094793

/-!
# A094794: a(n) = (1/n!)*A001689(n).

The programs for A094794, the canonical program `A094794.P9057796195112425245` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094794 has offset 0).

The definition of A094794 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094794.P9888833323444082743

`n^5+10*n^4+45*n^3+100*n²+109*n+44`
-/

namespace A094794.P9888833323444082743
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5 + 10 * n ^ 4 + 45 * n ^ 3 + 100 * n ^ 2 + 109 * n + 44

end

end A094794.P9888833323444082743

namespace A094794

/-- `n^5+10*n^4+45*n^3+100*n²+109*n+44` -/
def P9888833323444082743.Spec : Prop :=
  ∀ n, (P9888833323444082743.a n : ℤ) = A094794 n

end A094794

/-! ## A094794.P9057796195112425245

`1/n!*A001689(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A094794

/-- `1/n!*A001689(n)` -/
def P9057796195112425245.Spec : Prop :=
  ∀ n, P9057796195112425245.a n = (A094794 n : ℚ)

end A094794

/-! ## A094794.P5725344364780769052

`A060475(A167499(n+4))`
-/

namespace A094794.P5725344364780769052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (A167499 (n + 4)).toNat

end

end A094794.P5725344364780769052

namespace A094794

/-- `A060475(A167499(n+4))` -/
def P5725344364780769052.Spec : Prop :=
  ∀ n, P5725344364780769052.a n = A094794 n

end A094794

/-! ## A094794.P12333960922946007700

`A060475(A167614(n+4)+2)`
-/

namespace A094794.P12333960922946007700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (A167614 (n + 4) + 2).toNat

end

end A094794.P12333960922946007700

namespace A094794

/-- `A060475(A167614(n+4)+2)` -/
def P12333960922946007700.Spec : Prop :=
  ∀ n, P12333960922946007700.a n = A094794 n

end A094794

/-! ## A094794.P16411410303403928096

`A001689(n)/n!`
-/

namespace A094794.P16411410303403928096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001689 n : ℚ) / (Nat.factorial n : ℚ)

end

end A094794.P16411410303403928096

namespace A094794

/-- `A001689(n)/n!` -/
def P16411410303403928096.Spec : Prop :=
  ∀ n, P16411410303403928096.a n = (A094794 n : ℚ)

end A094794

/-! ## A094794.P15083055693255739700

`A001689(n)/A000142(n)`
-/

namespace A094794.P15083055693255739700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001689 n : ℚ) / (A000142 n : ℚ)

end

end A094794.P15083055693255739700

namespace A094794

/-- `A001689(n)/A000142(n)` -/
def P15083055693255739700.Spec : Prop :=
  ∀ n, P15083055693255739700.a n = (A094794 n : ℚ)

end A094794

/-! ## A094794.P636265138363783852

`Δ[A001688(n)]/A000142(n)`
-/

namespace A094794.P636265138363783852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001688 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000142 n : ℚ)

end

end A094794.P636265138363783852

namespace A094794

/-- `Δ[A001688(n)]/A000142(n)` -/
def P636265138363783852.Spec : Prop :=
  ∀ n, P636265138363783852.a n = (A094794 n : ℚ)

end A094794

/-! ## A094794.P6120992578622497291

`A001689(n)/A001565(n)*A094792(n)`
-/

namespace A094794.P6120992578622497291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001689 n : ℚ) / (A001565 n : ℚ) * (A094792 n : ℚ)

end

end A094794.P6120992578622497291

namespace A094794

/-- `A001689(n)/A001565(n)*A094792(n)` -/
def P6120992578622497291.Spec : Prop :=
  ∀ n, P6120992578622497291.a n = (A094794 n : ℚ)

end A094794

/-! ## A094794.P14177463276122174615

`A001689(n)/A001688(n)*A094793(n)`
-/

namespace A094794.P14177463276122174615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001689 n : ℚ) / (A001688 n : ℚ) * (A094793 n : ℚ)

end

end A094794.P14177463276122174615

namespace A094794

/-- `A001689(n)/A001688(n)*A094793(n)` -/
def P14177463276122174615.Spec : Prop :=
  ∀ n, P14177463276122174615.a n = (A094794 n : ℚ)

end A094794

/-! ## A094794.P718928779260951094

`(A001688(n+1)-A001688(n))/A000142(n)`
-/

namespace A094794.P718928779260951094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001688 (n + 1) - A001688 n : ℚ) / (A000142 n : ℚ)

end

end A094794.P718928779260951094

namespace A094794

/-- `(A001688(n+1)-A001688(n))/A000142(n)` -/
def P718928779260951094.Spec : Prop :=
  ∀ n, P718928779260951094.a n = (A094794 n : ℚ)

end A094794

/-!
# A094795: a(n) = (1/n!)*A023043(n).

The programs for A094795, the canonical program `A094795.P12341726238763693532` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094795 has offset 0).

The definition of A094795 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094795.P12341726238763693532

`n^6+15*n^5+100*n^4+355*n^3+694*n²+689*n+265`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094795

/-- `n^6+15*n^5+100*n^4+355*n^3+694*n²+689*n+265` -/
def P12341726238763693532.Spec : Prop :=
  ∀ n, (P12341726238763693532.a n : ℤ) = A094795 n

theorem P12341726238763693532.correct : P12341726238763693532.Spec := by
  intro n
  simp only [A094795]

end A094795

/-! ## A094795.P10143354247666599281

`1/n!*A023043(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A094795.P10143354247666599281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ) * (A023043 n : ℚ)

end

end A094795.P10143354247666599281

namespace A094795

/-- `1/n!*A023043(n)` -/
def P10143354247666599281.Spec : Prop :=
  ∀ n, P10143354247666599281.a n = (A094795 n : ℚ)

end A094795

/-! ## A094795.P10902964101327005225

`or(A019429(2*n)^n, ∑[6*A094794(n)])`
-/

namespace A094795.P10902964101327005225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A094794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A019429 (2 * n) ^ n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A094795.P10902964101327005225

namespace A094795

/-- `or(A019429(2*n)^n, ∑[6*A094794(n)])` -/
def P10902964101327005225.Spec : Prop :=
  ∀ n, P10902964101327005225.a n = A094795 n

end A094795

/-! ## A094795.P17516264970864923320

`A060475(eq[6, A002262(n)])`
-/

namespace A094795.P17516264970864923320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A094795.P17516264970864923320

namespace A094795

/-- `A060475(eq[6, A002262(n)])` -/
def P17516264970864923320.Spec : Prop :=
  ∀ n, P17516264970864923320.a n = A094795 n

end A094795

/-! ## A094795.P15207926843649067360

`A060475(A161680(n+7)+6)`
-/

namespace A094795.P15207926843649067360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (A161680 (n + 7) + 6).toNat

end

end A094795.P15207926843649067360

namespace A094795

/-- `A060475(A161680(n+7)+6)` -/
def P15207926843649067360.Spec : Prop :=
  ∀ n, P15207926843649067360.a n = A094795 n

end A094795

/-! ## A094795.P307117097311334606

`A060475(eq[7, A002260(n+1)])`
-/

namespace A094795.P307117097311334606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A094795.P307117097311334606

namespace A094795

/-- `A060475(eq[7, A002260(n+1)])` -/
def P307117097311334606.Spec : Prop :=
  ∀ n, P307117097311334606.a n = A094795 n

end A094795

/-! ## A094795.P14334175928264851856

`A023043(n)/n!`
-/

namespace A094795.P14334175928264851856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023043 n : ℚ) / (Nat.factorial n : ℚ)

end

end A094795.P14334175928264851856

namespace A094795

/-- `A023043(n)/n!` -/
def P14334175928264851856.Spec : Prop :=
  ∀ n, P14334175928264851856.a n = (A094795 n : ℚ)

end A094795

/-! ## A094795.P7810920419077835437

`Δ[A001689(n)]/n!`
-/

namespace A094795.P7810920419077835437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001689 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (Nat.factorial n : ℚ)

end

end A094795.P7810920419077835437

namespace A094795

/-- `Δ[A001689(n)]/n!` -/
def P7810920419077835437.Spec : Prop :=
  ∀ n, P7810920419077835437.a n = (A094795 n : ℚ)

end A094795

/-! ## A094795.P6397094738133731934

`Δ[Δ[A001688(n)]]/n!`
-/

namespace A094795.P6397094738133731934
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001688 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (Nat.factorial n : ℚ)

end

end A094795.P6397094738133731934

namespace A094795

/-- `Δ[Δ[A001688(n)]]/n!` -/
def P6397094738133731934.Spec : Prop :=
  ∀ n, P6397094738133731934.a n = (A094795 n : ℚ)

end A094795

/-! ## A094795.P11756780978383165822

`A023043(n)/A000142(n)`
-/

namespace A094795.P11756780978383165822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023043 n : ℚ) / (A000142 n : ℚ)

end

end A094795.P11756780978383165822

namespace A094795

/-- `A023043(n)/A000142(n)` -/
def P11756780978383165822.Spec : Prop :=
  ∀ n, P11756780978383165822.a n = (A094795 n : ℚ)

end A094795

/-!
# A094797: Number of times 1 is used in writing out all numbers 1 through 10^n.

The programs for A094797, the canonical program `A094797.P13001508532064911394` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094797 has offset 0).

The definition of A094797 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094797.P13001508532064911394

`n*10^(n-1)+1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094797

/-- `n*10^(n-1)+1` -/
def P13001508532064911394.Spec : Prop :=
  ∀ n, P13001508532064911394.a n = (A094797 n : ℚ)

end A094797

/-! ## A094797.P15546614093166765186

`A001202(A170939(n))`
-/

namespace A094797.P15546614093166765186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001202 (A170939 n).toNat

end

end A094797.P15546614093166765186

namespace A094797

/-- `A001202(A170939(n))` -/
def P15546614093166765186.Spec : Prop :=
  ∀ n, P15546614093166765186.a n = A094797 n

end A094797

/-!
# A094798: Number of times 1 is used in writing out all the numbers 1 through n.

The programs for A094798, the canonical program `A094798.P10006110087427864838` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094798 has offset 1).

The definition of A094798 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094798.P10006110087427864838

`∑[∑{digits}[n+1, C(C(2, #), 2)]]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094798

/-- `∑[∑{digits}[n+1, C(C(2, #), 2)]]` -/
def P10006110087427864838.Spec : Prop :=
  ∀ n, (P10006110087427864838.a n : ℤ) = A094798 (n + 1)

theorem P10006110087427864838.correct : P10006110087427864838.Spec := by
  intro n
  simp only [A094798, Nat.add_sub_cancel]

end A094798

/-! ## A094798.P3999707925199983694

`∑[A268643(n+1)]`
-/

namespace A094798.P3999707925199983694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094798.P3999707925199983694

namespace A094798

/-- `∑[A268643(n+1)]` -/
def P3999707925199983694.Spec : Prop :=
  ∀ n, P3999707925199983694.a n = A094798 (n + 1)

end A094798

/-! ## A094798.P15016117092571470755

`∑[∑[Δ[A268643(n)]^n]]`
-/

namespace A094798.P15016117092571470755
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) - f3 n) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094798.P15016117092571470755

namespace A094798

/-- `∑[∑[Δ[A268643(n)]^n]]` -/
def P15016117092571470755.Spec : Prop :=
  ∀ n, P15016117092571470755.a n = A094798 (n + 1)

end A094798

/-! ## A094798.P12045532229303554485

`∑[∑{digits}[n+1, C(#, A000032(#))]]`
-/

namespace A094798.P12045532229303554485
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => Nat.choose x (A000032 x).toNat).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094798.P12045532229303554485

namespace A094798

/-- `∑[∑{digits}[n+1, C(#, A000032(#))]]` -/
def P12045532229303554485.Spec : Prop :=
  ∀ n, (P12045532229303554485.a n : ℤ) = A094798 (n + 1)

end A094798

/-! ## A094798.P2041188460580341580

`A102685(n+1)-A102670(n+1)`
-/

namespace A094798.P2041188460580341580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102685 (n + 1) - A102670 (n + 1)

end

end A094798.P2041188460580341580

namespace A094798

/-- `A102685(n+1)-A102670(n+1)` -/
def P2041188460580341580.Spec : Prop :=
  ∀ n, P2041188460580341580.a n = A094798 (n + 1)

end A094798

/-! ## A094798.P2611170241021882374

`∑[A100910(A017281(n+1))]`
-/

namespace A094798.P2611170241021882374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100910 (A017281 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094798.P2611170241021882374

namespace A094798

/-- `∑[A100910(A017281(n+1))]` -/
def P2611170241021882374.Spec : Prop :=
  ∀ n, P2611170241021882374.a n = A094798 (n + 1)

end A094798

/-!
# A094799: First term of a run of 10 consecutive numbers such that for each m in the 10-tuple exactly m 1's are used in writing out all numbers 1 through m.

The programs for A094799, there is no canonical definition to state claims against.
-/

/-! ## A094799.P4325252129686865257

`A014778(3*A313693(n))`
-/

namespace A094799.P4325252129686865257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014778 (3 * A313693 n).toNat

end

end A094799.P4325252129686865257

