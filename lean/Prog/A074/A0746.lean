import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
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
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
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
# A074600: a(n) = 2^n + 5^n.

The programs for A074600, the canonical program `A074600.P5556424794481818079` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074600 has offset 0).

The definition of A074600 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+5^n` (program `A074600.P5556424794481818079`, by `A074600.P5556424794481818079.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074600.P5556424794481818079

`2^n+5^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074600

/-- `2^n+5^n` -/
def P5556424794481818079.Spec : Prop :=
  ∀ n, (P5556424794481818079.a n : ℤ) = A074600 n

theorem P5556424794481818079.correct : P5556424794481818079.Spec := by
  intro n
  simp only [A074600]

end A074600

/-! ## A074600.P1754887727213245145

`ogf((2-7x)/(1-7x+10x^2))`
-/

namespace A074600.P1754887727213245145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -7] [1, -7, 10] n

end

end A074600.P1754887727213245145

namespace A074600

/-- `ogf((2-7x)/(1-7x+10x^2))` -/
def P1754887727213245145.Spec : Prop :=
  ∀ n, P1754887727213245145.a n = A074600 n

end A074600

/-! ## A074600.P2632201901192981821

`∑{p}[-a(n-1), #^n]` with `a(0)=10`
-/

namespace A074600.P2632201901192981821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [10] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ n

end

end A074600.P2632201901192981821

namespace A074600

/-- `∑{p}[-a(n-1), #^n]` -/
def P2632201901192981821.Spec : Prop :=
  ∀ n, (P2632201901192981821.a n : ℤ) = A074600 n

end A074600

/-! ## A074600.P12307882636930480769

`abs(1-A074501(n))`
-/

namespace A074600.P12307882636930480769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A074501 n|

end

end A074600.P12307882636930480769

namespace A074600

/-- `abs(1-A074501(n))` -/
def P12307882636930480769.Spec : Prop :=
  ∀ n, P12307882636930480769.a n = A074600 n

end A074600

/-! ## A074600.P9300325872208465314

`or(A155588(n)+1, char[12])`
-/

namespace A074600.P9300325872208465314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A155588 n + 1) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A074600.P9300325872208465314

namespace A074600

/-- `or(A155588(n)+1, char[12])` -/
def P9300325872208465314.Spec : Prop :=
  ∀ n, P9300325872208465314.a n = A074600 n

end A074600

/-! ## A074600.P17987621189521224879

`∑[A011782(n)+A005054(n)]`
-/

namespace A074600.P17987621189521224879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + A005054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074600.P17987621189521224879

namespace A074600

/-- `∑[A011782(n)+A005054(n)]` -/
def P17987621189521224879.Spec : Prop :=
  ∀ n, P17987621189521224879.a n = A074600 n

end A074600

/-! ## A074600.P18284308669869392238

`abs(A020515(n)-(A074611(n)+1))`
-/

namespace A074600.P18284308669869392238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A020515 n - (A074611 n + 1)|

end

end A074600.P18284308669869392238

namespace A074600

/-- `abs(A020515(n)-(A074611(n)+1))` -/
def P18284308669869392238.Spec : Prop :=
  ∀ n, P18284308669869392238.a n = A074600 n

end A074600

/-! ## A074600.P13369094478740878055

`abs(A104745(n)+A000079(n)-n)`
-/

namespace A074600.P13369094478740878055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104745 n + A000079 n - (n : ℤ)|

end

end A074600.P13369094478740878055

namespace A074600

/-- `abs(A104745(n)+A000079(n)-n)` -/
def P13369094478740878055.Spec : Prop :=
  ∀ n, P13369094478740878055.a n = A074600 n

end A074600

/-! ## A074600.P16084188779651462816

`abs(1-(A155596(n)+A155559(n+1)))`
-/

namespace A074600.P16084188779651462816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A155596 n + A155559 (n + 1))|

end

end A074600.P16084188779651462816

namespace A074600

/-- `abs(1-(A155596(n)+A155559(n+1)))` -/
def P16084188779651462816.Spec : Prop :=
  ∀ n, P16084188779651462816.a n = A074600 n

end A074600

/-! ## A074600.P5100998046136022246

`Δ[A003463(n)+A000051(n)]`
-/

namespace A074600.P5100998046136022246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n + A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074600.P5100998046136022246

namespace A074600

/-- `Δ[A003463(n)+A000051(n)]` -/
def P5100998046136022246.Spec : Prop :=
  ∀ n, P5100998046136022246.a n = A074600 n

end A074600

/-! ## A074600.P16216068829190293965

`Δ[A003463(n)+A000079(n)]`
-/

namespace A074600.P16216068829190293965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n + A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074600.P16216068829190293965

namespace A074600

/-- `Δ[A003463(n)+A000079(n)]` -/
def P16216068829190293965.Spec : Prop :=
  ∀ n, P16216068829190293965.a n = A074600 n

end A074600

/-! ## A074600.P3886189773753009031

`Δ[A003463(n)+A000225(n)]`
-/

namespace A074600.P3886189773753009031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n + A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074600.P3886189773753009031

namespace A074600

/-- `Δ[A003463(n)+A000225(n)]` -/
def P3886189773753009031.Spec : Prop :=
  ∀ n, P3886189773753009031.a n = A074600 n

end A074600

/-! ## A074600.P761323798206145033

`Δ[A047850(n)+A000051(n)]`
-/

namespace A074600.P761323798206145033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047850 n + A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074600.P761323798206145033

namespace A074600

/-- `Δ[A047850(n)+A000051(n)]` -/
def P761323798206145033.Spec : Prop :=
  ∀ n, P761323798206145033.a n = A074600 n

end A074600

/-! ## A074600.P5219158278893045931

`Δ[A052548(n)+A003463(n)]`
-/

namespace A074600.P5219158278893045931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052548 n + A003463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074600.P5219158278893045931

namespace A074600

/-- `Δ[A052548(n)+A003463(n)]` -/
def P5219158278893045931.Spec : Prop :=
  ∀ n, P5219158278893045931.a n = A074600 n

end A074600

/-! ## A074600.P11705910343285470855

`record[A227076(n)+A137688(n)]`
-/

namespace A074600.P11705910343285470855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227076 n + A137688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074600.P11705910343285470855

namespace A074600

/-- `record[A227076(n)+A137688(n)]` -/
def P11705910343285470855.Spec : Prop :=
  ∀ n, P11705910343285470855.a n = A074600 n

end A074600

/-! ## A074600.P4768867173008390788

`abs(A000079(n)+A081916(n)-A081143(n))`
-/

namespace A074600.P4768867173008390788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n + (A081916 n - A081143 n)|

end

end A074600.P4768867173008390788

namespace A074600

/-- `abs(A000079(n)+A081916(n)-A081143(n))` -/
def P4768867173008390788.Spec : Prop :=
  ∀ n, P4768867173008390788.a n = A074600 n

end A074600

/-! ## A074600.P13085058138804943672

`record[A191702(n+1)+A131816(n)]`
-/

namespace A074600.P13085058138804943672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191702 (n + 1) + A131816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074600.P13085058138804943672

namespace A074600

/-- `record[A191702(n+1)+A131816(n)]` -/
def P13085058138804943672.Spec : Prop :=
  ∀ n, P13085058138804943672.a n = A074600 n

end A074600

/-! ## A074600.P2421044924666494756

`(A093136(n+1)+2*A000079(n)²)/A000079(n+1)`
-/

namespace A074600.P2421044924666494756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093136 (n + 1) + 2 * A000079 n ^ 2 : ℚ) / (A000079 (n + 1) : ℚ)

end

end A074600.P2421044924666494756

namespace A074600

/-- `(A093136(n+1)+2*A000079(n)²)/A000079(n+1)` -/
def P2421044924666494756.Spec : Prop :=
  ∀ n, P2421044924666494756.a n = (A074600 n : ℚ)

end A074600

/-!
# A074601: a(n) = 2^n + 6^n.

The programs for A074601, the canonical program `A074601.P15053699154710411113` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074601 has offset 0).

The definition of A074601 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+6^n` (program `A074601.P15053699154710411113`, by `A074601.P15053699154710411113.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074601.P15053699154710411113

`2^n+6^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074601

/-- `2^n+6^n` -/
def P15053699154710411113.Spec : Prop :=
  ∀ n, (P15053699154710411113.a n : ℤ) = A074601 n

theorem P15053699154710411113.correct : P15053699154710411113.Spec := by
  intro n
  simp only [A074601]

end A074601

/-! ## A074601.P13191444085472973511

`ogf((2-8x)/(1-8x+12x^2))`
-/

namespace A074601.P13191444085472973511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -8] [1, -8, 12] n

end

end A074601.P13191444085472973511

namespace A074601

/-- `ogf((2-8x)/(1-8x+12x^2))` -/
def P13191444085472973511.Spec : Prop :=
  ∀ n, P13191444085472973511.a n = A074601 n

end A074601

/-! ## A074601.P5874256483474855414

`2*A081335(n)`
-/

namespace A074601.P5874256483474855414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081335 n

end

end A074601.P5874256483474855414

namespace A074601

/-- `2*A081335(n)` -/
def P5874256483474855414.Spec : Prop :=
  ∀ n, P5874256483474855414.a n = A074601 n

end A074601

/-! ## A074601.P17412636714228707799

`2*(3*a(n-1)-2^n)` with `a(0)=2`
-/

namespace A074601.P17412636714228707799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * (3 * a (n - 1) - (2 ^ n : ℤ))

end

end A074601.P17412636714228707799

namespace A074601

/-- `2*(3*a(n-1)-2^n)` -/
def P17412636714228707799.Spec : Prop :=
  ∀ n, P17412636714228707799.a n = A074601 n

theorem P17412636714228707799.correct : P17412636714228707799.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A074601, Nat.add_sub_cancel, A074601.P17412636714228707799.a, A074601.P15053699154710411113.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A074601, Nat.add_sub_cancel, A074601.P17412636714228707799.a, A074601.P15053699154710411113.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A074601

/-! ## A074601.P17858344985233183814

`A092807(n+1)`
-/

namespace A074601.P17858344985233183814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092807 (n + 1)

end

end A074601.P17858344985233183814

namespace A074601

/-- `A092807(n+1)` -/
def P17858344985233183814.Spec : Prop :=
  ∀ n, P17858344985233183814.a n = A074601 n

end A074601

/-! ## A074601.P5692951374806090517

`xor(1, A074502(n))`
-/

namespace A074601.P5692951374806090517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A074502 n)

end

end A074601.P5692951374806090517

namespace A074601

/-- `xor(1, A074502(n))` -/
def P5692951374806090517.Spec : Prop :=
  ∀ n, P5692951374806090517.a n = A074601 n

end A074601

/-! ## A074601.P12580785712374653775

`2^n*A034472(n)`
-/

namespace A074601.P12580785712374653775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A034472 n

end

end A074601.P12580785712374653775

namespace A074601

/-- `2^n*A034472(n)` -/
def P12580785712374653775.Spec : Prop :=
  ∀ n, P12580785712374653775.a n = A074601 n

end A074601

/-! ## A074601.P2867177230900262339

`record[A092807(abs(1-n))]`
-/

namespace A074601.P2867177230900262339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092807 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074601.P2867177230900262339

namespace A074601

/-- `record[A092807(abs(1-n))]` -/
def P2867177230900262339.Spec : Prop :=
  ∀ n, P2867177230900262339.a n = A074601 n

end A074601

/-! ## A074601.P10369155672918633489

`2^(n-1)*A115099(n)`
-/

namespace A074601.P10369155672918633489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A115099 n : ℚ)

end

end A074601.P10369155672918633489

namespace A074601

/-- `2^(n-1)*A115099(n)` -/
def P10369155672918633489.Spec : Prop :=
  ∀ n, P10369155672918633489.a n = (A074601 n : ℚ)

end A074601

/-! ## A074601.P3236486121849318569

`2*(A167747(n)+a(n-1))` with `a(0)=2`
-/

namespace A074601.P3236486121849318569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * (A167747 n + a (n - 1))

end

end A074601.P3236486121849318569

namespace A074601

/-- `2*(A167747(n)+a(n-1))` -/
def P3236486121849318569.Spec : Prop :=
  ∀ n, P3236486121849318569.a n = A074601 n

end A074601

/-! ## A074601.P6464087715145894953

`∑[A052934(n)+A011782(n)]`
-/

namespace A074601.P6464087715145894953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052934 n + A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074601.P6464087715145894953

namespace A074601

/-- `∑[A052934(n)+A011782(n)]` -/
def P6464087715145894953.Spec : Prop :=
  ∀ n, P6464087715145894953.a n = A074601 n

end A074601

/-! ## A074601.P14384394039472196736

`Δ[A003464(n)+A000051(n)]`
-/

namespace A074601.P14384394039472196736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003464 n + A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074601.P14384394039472196736

namespace A074601

/-- `Δ[A003464(n)+A000051(n)]` -/
def P14384394039472196736.Spec : Prop :=
  ∀ n, P14384394039472196736.a n = A074601 n

end A074601

/-! ## A074601.P16112606896805502945

`Δ[A003464(n)+A000225(n)]`
-/

namespace A074601.P16112606896805502945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003464 n + A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074601.P16112606896805502945

namespace A074601

/-- `Δ[A003464(n)+A000225(n)]` -/
def P16112606896805502945.Spec : Prop :=
  ∀ n, P16112606896805502945.a n = A074601 n

end A074601

/-! ## A074601.P3769579314420982095

`record[A055235(n)*A055248(n)]`
-/

namespace A074601.P3769579314420982095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055235 n * A055248 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074601.P3769579314420982095

namespace A074601

/-- `record[A055235(n)*A055248(n)]` -/
def P3769579314420982095.Spec : Prop :=
  ∀ n, P3769579314420982095.a n = A074601 n

end A074601

/-! ## A074601.P11712249678754904938

`(A000244(n)+1)*A000079(n)`
-/

namespace A074601.P11712249678754904938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 n + 1) * A000079 n

end

end A074601.P11712249678754904938

namespace A074601

/-- `(A000244(n)+1)*A000079(n)` -/
def P11712249678754904938.Spec : Prop :=
  ∀ n, P11712249678754904938.a n = A074601 n

end A074601

/-! ## A074601.P8556380600774432194

`A000079(n+1)*A007051(n)`
-/

namespace A074601.P8556380600774432194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A007051 n

end

end A074601.P8556380600774432194

namespace A074601

/-- `A000079(n+1)*A007051(n)` -/
def P8556380600774432194.Spec : Prop :=
  ∀ n, P8556380600774432194.a n = A074601 n

end A074601

/-! ## A074601.P14854383188863160930

`A000079(n)*A094388(n+1)`
-/

namespace A074601.P14854383188863160930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A094388 (n + 1)

end

end A074601.P14854383188863160930

namespace A074601

/-- `A000079(n)*A094388(n+1)` -/
def P14854383188863160930.Spec : Prop :=
  ∀ n, P14854383188863160930.a n = A074601 n

end A074601

/-! ## A074601.P9368936071664014434

`A007051(n)*A011782(n+2)`
-/

namespace A074601.P9368936071664014434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n * A011782 (n + 2)

end

end A074601.P9368936071664014434

namespace A074601

/-- `A007051(n)*A011782(n+2)` -/
def P9368936071664014434.Spec : Prop :=
  ∀ n, P9368936071664014434.a n = A074601 n

end A074601

/-! ## A074601.P7424239973301419887

`(A024023(n)+2)*A000079(n)`
-/

namespace A074601.P7424239973301419887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024023 n + 2) * A000079 n

end

end A074601.P7424239973301419887

namespace A074601

/-- `(A024023(n)+2)*A000079(n)` -/
def P7424239973301419887.Spec : Prop :=
  ∀ n, P7424239973301419887.a n = A074601 n

end A074601

/-! ## A074601.P17115576665017006361

`(A048578(n)-1)*A007051(n)`
-/

namespace A074601.P17115576665017006361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048578 n - 1) * A007051 n

end

end A074601.P17115576665017006361

namespace A074601

/-- `(A048578(n)-1)*A007051(n)` -/
def P17115576665017006361.Spec : Prop :=
  ∀ n, P17115576665017006361.a n = A074601 n

end A074601

/-!
# A074602: a(n) = 2^n + 7^n.

The programs for A074602, the canonical program `A074602.P9804625586035608722` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074602 has offset 0).

The definition of A074602 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+7^n` (program `A074602.P9804625586035608722`, by `A074602.P9804625586035608722.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074602.P9804625586035608722

`2^n+7^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074602

/-- `2^n+7^n` -/
def P9804625586035608722.Spec : Prop :=
  ∀ n, (P9804625586035608722.a n : ℤ) = A074602 n

theorem P9804625586035608722.correct : P9804625586035608722.Spec := by
  intro n
  simp only [A074602]

end A074602

/-! ## A074602.P2515221487348600110

`ogf((2-9x)/(1-9x+14x^2))`
-/

namespace A074602.P2515221487348600110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -9] [1, -9, 14] n

end

end A074602.P2515221487348600110

namespace A074602

/-- `ogf((2-9x)/(1-9x+14x^2))` -/
def P2515221487348600110.Spec : Prop :=
  ∀ n, P2515221487348600110.a n = A074602 n

end A074602

/-! ## A074602.P16493836429985462634

`abs(1-A074503(n))`
-/

namespace A074602.P16493836429985462634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A074503 n|

end

end A074602.P16493836429985462634

namespace A074602

/-- `abs(1-A074503(n))` -/
def P16493836429985462634.Spec : Prop :=
  ∀ n, P16493836429985462634.a n = A074602 n

end A074602

/-! ## A074602.P12061063910268809715

`abs(log2(1/2)-A155590(n))`
-/

namespace A074602.P12061063910268809715
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |Real.logb 2 ((1 : ℚ) / 2 : ℝ) - (A155590 n : ℝ)|

end

end A074602.P12061063910268809715

namespace A074602

/-- `abs(log2(1/2)-A155590(n))` -/
def P12061063910268809715.Spec : Prop :=
  ∀ n, P12061063910268809715.a n = (A074602 n : ℝ)

end A074602

/-! ## A074602.P9670470743518840509

`abs(A001047(n)-A074608(n))`
-/

namespace A074602.P9670470743518840509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001047 n - A074608 n|

end

end A074602.P9670470743518840509

namespace A074602

/-- `abs(A001047(n)-A074608(n))` -/
def P9670470743518840509.Spec : Prop :=
  ∀ n, P9670470743518840509.a n = A074602 n

end A074602

/-! ## A074602.P2880811050468814921

`∑[A055272(n)+A011782(n)]`
-/

namespace A074602.P2880811050468814921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055272 n + A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074602.P2880811050468814921

namespace A074602

/-- `∑[A055272(n)+A011782(n)]` -/
def P2880811050468814921.Spec : Prop :=
  ∀ n, P2880811050468814921.a n = A074602 n

end A074602

/-! ## A074602.P5188686303966883256

`Δ[A023000(n)+A000051(n)]`
-/

namespace A074602.P5188686303966883256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023000 n + A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074602.P5188686303966883256

namespace A074602

/-- `Δ[A023000(n)+A000051(n)]` -/
def P5188686303966883256.Spec : Prop :=
  ∀ n, P5188686303966883256.a n = A074602 n

end A074602

/-! ## A074602.P16177005454105812858

`Δ[A023000(n)+A000079(n)]`
-/

namespace A074602.P16177005454105812858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023000 n + A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074602.P16177005454105812858

namespace A074602

/-- `Δ[A023000(n)+A000079(n)]` -/
def P16177005454105812858.Spec : Prop :=
  ∀ n, P16177005454105812858.a n = A074602 n

end A074602

/-! ## A074602.P6692598022976766560

`Δ[A023000(n)+A000225(n)]`
-/

namespace A074602.P6692598022976766560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023000 n + A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074602.P6692598022976766560

namespace A074602

/-- `Δ[A023000(n)+A000225(n)]` -/
def P6692598022976766560.Spec : Prop :=
  ∀ n, P6692598022976766560.a n = A074602 n

end A074602

/-! ## A074602.P4302975653308110534

`Δ[A023000(n)+A000918(n)]`
-/

namespace A074602.P4302975653308110534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023000 n + A000918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074602.P4302975653308110534

namespace A074602

/-- `Δ[A023000(n)+A000918(n)]` -/
def P4302975653308110534.Spec : Prop :=
  ∀ n, P4302975653308110534.a n = A074602 n

end A074602

/-! ## A074602.P10019548263956727490

`Δ[A047852(n)+A000051(n)]`
-/

namespace A074602.P10019548263956727490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047852 n + A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074602.P10019548263956727490

namespace A074602

/-- `Δ[A047852(n)+A000051(n)]` -/
def P10019548263956727490.Spec : Prop :=
  ∀ n, P10019548263956727490.a n = A074602 n

end A074602

/-! ## A074602.P14775797169230785041

`Δ[A047852(n)+A000225(n)]`
-/

namespace A074602.P14775797169230785041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047852 n + A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074602.P14775797169230785041

namespace A074602

/-- `Δ[A047852(n)+A000225(n)]` -/
def P14775797169230785041.Spec : Prop :=
  ∀ n, P14775797169230785041.a n = A074602 n

end A074602

/-! ## A074602.P4878457922413711217

`abs(A000420(n)+Δ[A000225(n)])`
-/

namespace A074602.P4878457922413711217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000420 n + (f1 (n + 1) - f1 n)|

end

end A074602.P4878457922413711217

namespace A074602

/-- `abs(A000420(n)+Δ[A000225(n)])` -/
def P4878457922413711217.Spec : Prop :=
  ∀ n, P4878457922413711217.a n = A074602 n

end A074602

/-! ## A074602.P3817870227455270847

`Δ[A023000(n)+Δ[A000295(n)]]`
-/

namespace A074602.P3817870227455270847
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023000 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074602.P3817870227455270847

namespace A074602

/-- `Δ[A023000(n)+Δ[A000295(n)]]` -/
def P3817870227455270847.Spec : Prop :=
  ∀ n, P3817870227455270847.a n = A074602 n

end A074602

/-! ## A074602.P4295863559355433174

`Δ[A023000(n)+Δ[A005126(n)]]`
-/

namespace A074602.P4295863559355433174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005126 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023000 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074602.P4295863559355433174

namespace A074602

/-- `Δ[A023000(n)+Δ[A005126(n)]]` -/
def P4295863559355433174.Spec : Prop :=
  ∀ n, P4295863559355433174.a n = A074602 n

end A074602

/-! ## A074602.P2167436813636477216

`Δ[A023000(n)+record[A130321(n)]]`
-/

namespace A074602.P2167436813636477216
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023000 n + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074602.P2167436813636477216

namespace A074602

/-- `Δ[A023000(n)+record[A130321(n)]]` -/
def P2167436813636477216.Spec : Prop :=
  ∀ n, P2167436813636477216.a n = A074602 n

end A074602

/-! ## A074602.P15107474273164277081

`(A155590(n)+1)/A002260(∑[n]+1)`
-/

namespace A074602.P15107474273164277081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155590 n + 1 : ℚ) / (A002260 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ)

end

end A074602.P15107474273164277081

namespace A074602

/-- `(A155590(n)+1)/A002260(∑[n]+1)` -/
def P15107474273164277081.Spec : Prop :=
  ∀ n, P15107474273164277081.a n = (A074602 n : ℚ)

end A074602

/-! ## A074602.P830924606640871298

`(A155590(n)+1)*A177704(2*(n+1))`
-/

namespace A074602.P830924606640871298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155590 n + 1) * A177704 (2 * (n + 1))

end

end A074602.P830924606640871298

namespace A074602

/-- `(A155590(n)+1)*A177704(2*(n+1))` -/
def P830924606640871298.Spec : Prop :=
  ∀ n, P830924606640871298.a n = A074602 n

end A074602

/-! ## A074602.P16069073668026480922

`(A155590(n)+1)*A325470(2*n+1)`
-/

namespace A074602.P16069073668026480922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155590 n + 1) * A325470 (2 * n + 1)

end

end A074602.P16069073668026480922

namespace A074602

/-- `(A155590(n)+1)*A325470(2*n+1)` -/
def P16069073668026480922.Spec : Prop :=
  ∀ n, P16069073668026480922.a n = A074602 n

end A074602

/-!
# A074603: a(n) = 2^n + 8^n.

The programs for A074603, the canonical program `A074603.P11349206355285757590` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074603 has offset 0).

The definition of A074603 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+8^n` (program `A074603.P11349206355285757590`, by `A074603.P11349206355285757590.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074603.P11349206355285757590

`2^n+8^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074603

/-- `2^n+8^n` -/
def P11349206355285757590.Spec : Prop :=
  ∀ n, (P11349206355285757590.a n : ℤ) = A074603 n

theorem P11349206355285757590.correct : P11349206355285757590.Spec := by
  intro n
  simp only [A074603]

end A074603

/-! ## A074603.P2410071953301362730

`ogf((2-10x)/(1-10x+16x^2))`
-/

namespace A074603.P2410071953301362730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -10] [1, -10, 16] n

end

end A074603.P2410071953301362730

namespace A074603

/-- `ogf((2-10x)/(1-10x+16x^2))` -/
def P2410071953301362730.Spec : Prop :=
  ∀ n, P2410071953301362730.a n = A074603 n

end A074603

/-! ## A074603.P11485812318008102985

`lcm(2, or(2^n, 8^n))`
-/

namespace A074603.P11485812318008102985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (Nat.lor (2 ^ n) (8 ^ n))

end

end A074603.P11485812318008102985

namespace A074603

/-- `lcm(2, or(2^n, 8^n))` -/
def P11485812318008102985.Spec : Prop :=
  ∀ n, (P11485812318008102985.a n : ℤ) = A074603 n

end A074603

/-! ## A074603.P13847772333507084511

`2^n*∑[4*a(n-1)]` with `a(0)=2, a(1)=3`
-/

namespace A074603.P13847772333507084511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074603.P13847772333507084511

namespace A074603

/-- `2^n*∑[4*a(n-1)]` -/
def P13847772333507084511.Spec : Prop :=
  ∀ n, (P13847772333507084511.a n : ℤ) = A074603 n

end A074603

/-! ## A074603.P14805682074213833410

`2*A081342(n)`
-/

namespace A074603.P14805682074213833410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081342 n

end

end A074603.P14805682074213833410

namespace A074603

/-- `2*A081342(n)` -/
def P14805682074213833410.Spec : Prop :=
  ∀ n, P14805682074213833410.a n = A074603 n

end A074603

/-! ## A074603.P2472372876902134115

`abs(1-A074504(n))`
-/

namespace A074603.P2472372876902134115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A074504 n|

end

end A074603.P2472372876902134115

namespace A074603

/-- `abs(1-A074504(n))` -/
def P2472372876902134115.Spec : Prop :=
  ∀ n, P2472372876902134115.a n = A074603 n

end A074603

/-! ## A074603.P2889575854169258436

`2^n*A052539(n)`
-/

namespace A074603.P2889575854169258436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A052539 n

end

end A074603.P2889575854169258436

namespace A074603

/-- `2^n*A052539(n)` -/
def P2889575854169258436.Spec : Prop :=
  ∀ n, P2889575854169258436.a n = A074603 n

end A074603

/-! ## A074603.P5321174973351208200

`2^(n-1)*A283070(n)`
-/

namespace A074603.P5321174973351208200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A283070 n : ℚ)

end

end A074603.P5321174973351208200

namespace A074603

/-- `2^(n-1)*A283070(n)` -/
def P5321174973351208200.Spec : Prop :=
  ∀ n, P5321174973351208200.a n = (A074603 n : ℚ)

end A074603

/-! ## A074603.P1451337015490967450

`2^n*A000051(2*n)`
-/

namespace A074603.P1451337015490967450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000051 (2 * n)

end

end A074603.P1451337015490967450

namespace A074603

/-- `2^n*A000051(2*n)` -/
def P1451337015490967450.Spec : Prop :=
  ∀ n, P1451337015490967450.a n = A074603 n

end A074603

/-! ## A074603.P12054988010336843923

`lcm(A000079(n), A052539(n))`
-/

namespace A074603.P12054988010336843923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A052539 n)

end

end A074603.P12054988010336843923

namespace A074603

/-- `lcm(A000079(n), A052539(n))` -/
def P12054988010336843923.Spec : Prop :=
  ∀ n, (P12054988010336843923.a n : ℤ) = A074603 n

end A074603

/-! ## A074603.P2070363269975123395

`Δ[A023001(n)+A000225(n)]`
-/

namespace A074603.P2070363269975123395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023001 n + A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074603.P2070363269975123395

namespace A074603

/-- `Δ[A023001(n)+A000225(n)]` -/
def P2070363269975123395.Spec : Prop :=
  ∀ n, P2070363269975123395.a n = A074603 n

end A074603

/-! ## A074603.P16874121359984964882

`record[A055236(n)*A055248(n)]`
-/

namespace A074603.P16874121359984964882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055236 n * A055248 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074603.P16874121359984964882

namespace A074603

/-- `record[A055236(n)*A055248(n)]` -/
def P16874121359984964882.Spec : Prop :=
  ∀ n, P16874121359984964882.a n = A074603 n

end A074603

/-! ## A074603.P6993671115449369884

`(A000302(n)+1)*A000079(n)`
-/

namespace A074603.P6993671115449369884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000302 n + 1) * A000079 n

end

end A074603.P6993671115449369884

namespace A074603

/-- `(A000302(n)+1)*A000079(n)` -/
def P6993671115449369884.Spec : Prop :=
  ∀ n, P6993671115449369884.a n = A074603 n

end A074603

/-! ## A074603.P1098967625642685356

`A052539(n)*A131577(n+1)`
-/

namespace A074603.P1098967625642685356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052539 n * A131577 (n + 1)

end

end A074603.P1098967625642685356

namespace A074603

/-- `A052539(n)*A131577(n+1)` -/
def P1098967625642685356.Spec : Prop :=
  ∀ n, P1098967625642685356.a n = A074603 n

end A074603

/-! ## A074603.P4605447618492453280

`A000051(2*n)*A000079(n)`
-/

namespace A074603.P4605447618492453280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (2 * n) * A000079 n

end

end A074603.P4605447618492453280

namespace A074603

/-- `A000051(2*n)*A000079(n)` -/
def P4605447618492453280.Spec : Prop :=
  ∀ n, P4605447618492453280.a n = A074603 n

end A074603

/-! ## A074603.P7833011879595183361

`A000079(n)*A014551(2*n)`
-/

namespace A074603.P7833011879595183361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A014551 (2 * n)

end

end A074603.P7833011879595183361

namespace A074603

/-- `A000079(n)*A014551(2*n)` -/
def P7833011879595183361.Spec : Prop :=
  ∀ n, P7833011879595183361.a n = A074603 n

end A074603

/-! ## A074603.P2484339240523562793

`A000079(n)*A049332(2*n)`
-/

namespace A074603.P2484339240523562793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A049332 (2 * n)

end

end A074603.P2484339240523562793

namespace A074603

/-- `A000079(n)*A049332(2*n)` -/
def P2484339240523562793.Spec : Prop :=
  ∀ n, P2484339240523562793.a n = A074603 n

end A074603

/-! ## A074603.P17785175164744941949

`cosh(log(A000079(n)))*A004171(n)`
-/

namespace A074603.P17785175164744941949
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh (Real.log (A000079 n : ℝ)) * (A004171 n : ℝ)

end

end A074603.P17785175164744941949

namespace A074603

/-- `cosh(log(A000079(n)))*A004171(n)` -/
def P17785175164744941949.Spec : Prop :=
  ∀ n, P17785175164744941949.a n = (A074603 n : ℝ)

end A074603

/-! ## A074603.P17285657774427175988

`A011782(n+1)*A123166(n+1)`
-/

namespace A074603.P17285657774427175988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) * A123166 (n + 1)

end

end A074603.P17285657774427175988

namespace A074603

/-- `A011782(n+1)*A123166(n+1)` -/
def P17285657774427175988.Spec : Prop :=
  ∀ n, P17285657774427175988.a n = A074603 n

end A074603

/-! ## A074603.P2253298377271241686

`A123166(n+1)*A131577(n+1)`
-/

namespace A074603.P2253298377271241686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123166 (n + 1) * A131577 (n + 1)

end

end A074603.P2253298377271241686

namespace A074603

/-- `A123166(n+1)*A131577(n+1)` -/
def P2253298377271241686.Spec : Prop :=
  ∀ n, P2253298377271241686.a n = A074603 n

end A074603

/-!
# A074604: a(n) = 2^n + 9^n.

The programs for A074604, the canonical program `A074604.P11482361029459250406` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074604 has offset 0).

The definition of A074604 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+9^n` (program `A074604.P11482361029459250406`, by `A074604.P11482361029459250406.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074604.P11482361029459250406

`2^n+9^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074604

/-- `2^n+9^n` -/
def P11482361029459250406.Spec : Prop :=
  ∀ n, (P11482361029459250406.a n : ℤ) = A074604 n

theorem P11482361029459250406.correct : P11482361029459250406.Spec := by
  intro n
  simp only [A074604]

end A074604

/-! ## A074604.P15843158254756161232

`ogf((2-11x)/(1-11x+18x^2))`
-/

namespace A074604.P15843158254756161232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -11] [1, -11, 18] n

end

end A074604.P15843158254756161232

namespace A074604

/-- `ogf((2-11x)/(1-11x+18x^2))` -/
def P15843158254756161232.Spec : Prop :=
  ∀ n, P15843158254756161232.a n = A074604 n

end A074604

/-! ## A074604.P5703860727177070661

`abs(1-A074505(n))`
-/

namespace A074604.P5703860727177070661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A074505 n|

end

end A074604.P5703860727177070661

namespace A074604

/-- `abs(1-A074505(n))` -/
def P5703860727177070661.Spec : Prop :=
  ∀ n, P5703860727177070661.a n = A074604 n

end A074604

/-! ## A074604.P8659443937280045868

`xor(1, abs(2-A155593(n))+2)`
-/

namespace A074604.P8659443937280045868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (|2 - A155593 n| + 2)

end

end A074604.P8659443937280045868

namespace A074604

/-- `xor(1, abs(2-A155593(n))+2)` -/
def P8659443937280045868.Spec : Prop :=
  ∀ n, P8659443937280045868.a n = A074604 n

end A074604

/-! ## A074604.P12503738998679777888

`abs(A001047(n)-A074610(n))`
-/

namespace A074604.P12503738998679777888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001047 n - A074610 n|

end

end A074604.P12503738998679777888

namespace A074604

/-- `abs(A001047(n)-A074610(n))` -/
def P12503738998679777888.Spec : Prop :=
  ∀ n, P12503738998679777888.a n = A074604 n

end A074604

/-! ## A074604.P12880461823053536946

`∑[A055275(n)+A011782(n)]`
-/

namespace A074604.P12880461823053536946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055275 n + A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074604.P12880461823053536946

namespace A074604

/-- `∑[A055275(n)+A011782(n)]` -/
def P12880461823053536946.Spec : Prop :=
  ∀ n, P12880461823053536946.a n = A074604 n

end A074604

/-! ## A074604.P11741468786103630109

`Δ[A002452(n)+A000051(n)]`
-/

namespace A074604.P11741468786103630109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002452 n + A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074604.P11741468786103630109

namespace A074604

/-- `Δ[A002452(n)+A000051(n)]` -/
def P11741468786103630109.Spec : Prop :=
  ∀ n, P11741468786103630109.a n = A074604 n

end A074604

/-! ## A074604.P16584894217801560269

`Δ[A002452(n)+A000079(n)]`
-/

namespace A074604.P16584894217801560269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002452 n + A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074604.P16584894217801560269

namespace A074604

/-- `Δ[A002452(n)+A000079(n)]` -/
def P16584894217801560269.Spec : Prop :=
  ∀ n, P16584894217801560269.a n = A074604 n

end A074604

/-! ## A074604.P2530442610237683043

`Δ[A002452(n)+A000225(n)]`
-/

namespace A074604.P2530442610237683043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002452 n + A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074604.P2530442610237683043

namespace A074604

/-- `Δ[A002452(n)+A000225(n)]` -/
def P2530442610237683043.Spec : Prop :=
  ∀ n, P2530442610237683043.a n = A074604 n

end A074604

/-! ## A074604.P13721098385992649829

`Δ[A002452(n)+A000918(n)]`
-/

namespace A074604.P13721098385992649829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002452 n + A000918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074604.P13721098385992649829

namespace A074604

/-- `Δ[A002452(n)+A000918(n)]` -/
def P13721098385992649829.Spec : Prop :=
  ∀ n, P13721098385992649829.a n = A074604 n

end A074604

/-! ## A074604.P6590242912587753838

`Δ[A047854(n)+A000051(n)]`
-/

namespace A074604.P6590242912587753838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047854 n + A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074604.P6590242912587753838

namespace A074604

/-- `Δ[A047854(n)+A000051(n)]` -/
def P6590242912587753838.Spec : Prop :=
  ∀ n, P6590242912587753838.a n = A074604 n

end A074604

/-! ## A074604.P9313800513098201600

`Δ[A047854(n)+A000079(n)]`
-/

namespace A074604.P9313800513098201600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047854 n + A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074604.P9313800513098201600

namespace A074604

/-- `Δ[A047854(n)+A000079(n)]` -/
def P9313800513098201600.Spec : Prop :=
  ∀ n, P9313800513098201600.a n = A074604 n

end A074604

/-! ## A074604.P10621861575958543196

`record[A092270(n)+A077957(n)]`
-/

namespace A074604.P10621861575958543196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092270 n + A077957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074604.P10621861575958543196

namespace A074604

/-- `record[A092270(n)+A077957(n)]` -/
def P10621861575958543196.Spec : Prop :=
  ∀ n, P10621861575958543196.a n = A074604 n

end A074604

/-! ## A074604.P3064759258056188833

`Δ[A054582(∑[n])+A002452(n)]`
-/

namespace A074604.P3064759258056188833
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 (∑ j ∈ Finset.range (n + 1), f2 j) + A002452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074604.P3064759258056188833

namespace A074604

/-- `Δ[A054582(∑[n])+A002452(n)]` -/
def P3064759258056188833.Spec : Prop :=
  ∀ n, P3064759258056188833.a n = A074604 n

end A074604

/-! ## A074604.P4341690308014049285

`abs(A155592(n)+A074623(n)+1-A074622(n))`
-/

namespace A074604.P4341690308014049285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155592 n + (A074623 n + 1 - A074622 n)|

end

end A074604.P4341690308014049285

namespace A074604

/-- `abs(A155592(n)+A074623(n)+1-A074622(n))` -/
def P4341690308014049285.Spec : Prop :=
  ∀ n, P4341690308014049285.a n = A074604 n

end A074604

/-! ## A074604.P16878750517207030405

`record[A060546(n)+A084222(n+1)-A084222(n)]`
-/

namespace A074604.P16878750517207030405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n + (A084222 (n + 1) - A084222 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074604.P16878750517207030405

namespace A074604

/-- `record[A060546(n)+A084222(n+1)-A084222(n)]` -/
def P16878750517207030405.Spec : Prop :=
  ∀ n, P16878750517207030405.a n = A074604 n

end A074604

/-! ## A074604.P6154785969826934877

`abs(A155592(n)+A001019(n)+1-A000079(3*n))`
-/

namespace A074604.P6154785969826934877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155592 n + (A001019 n + 1 - A000079 (3 * n))|

end

end A074604.P6154785969826934877

namespace A074604

/-- `abs(A155592(n)+A001019(n)+1-A000079(3*n))` -/
def P6154785969826934877.Spec : Prop :=
  ∀ n, P6154785969826934877.a n = A074604 n

end A074604

/-! ## A074604.P4551484054438004434

`abs(A155592(n)+A000244(n)²+1-A000079(3*n))`
-/

namespace A074604.P4551484054438004434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155592 n + (A000244 n ^ 2 + 1 - A000079 (3 * n))|

end

end A074604.P4551484054438004434

namespace A074604

/-- `abs(A155592(n)+A000244(n)²+1-A000079(3*n))` -/
def P4551484054438004434.Spec : Prop :=
  ∀ n, P4551484054438004434.a n = A074604 n

end A074604

/-!
# A074605: a(n) = 3^n + 4^n.

The programs for A074605, the canonical program `A074605.P9191075828594097155` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074605 has offset 0).

The definition of A074605 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+4^n` (program `A074605.P9191075828594097155`, by `A074605.P9191075828594097155.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074605.P9191075828594097155

`3^n+4^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074605

/-- `3^n+4^n` -/
def P9191075828594097155.Spec : Prop :=
  ∀ n, (P9191075828594097155.a n : ℤ) = A074605 n

theorem P9191075828594097155.correct : P9191075828594097155.Spec := by
  intro n
  simp only [A074605]

end A074605

/-! ## A074605.P1234341596564396333

`ogf((2-7x)/(1-7x+12x^2))`
-/

namespace A074605.P1234341596564396333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -7] [1, -7, 12] n

end

end A074605.P1234341596564396333

namespace A074605

/-- `ogf((2-7x)/(1-7x+12x^2))` -/
def P1234341596564396333.Spec : Prop :=
  ∀ n, P1234341596564396333.a n = A074605 n

end A074605

/-! ## A074605.P2733061290790116872

`or(A155602(n)+1, char[12])`
-/

namespace A074605.P2733061290790116872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A155602 n + 1) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A074605.P2733061290790116872

namespace A074605

/-- `or(A155602(n)+1, char[12])` -/
def P2733061290790116872.Spec : Prop :=
  ∀ n, P2733061290790116872.a n = A074605 n

end A074605

/-! ## A074605.P2186208767788659910

`abs(2^n-A074526(n))`
-/

namespace A074605.P2186208767788659910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) - A074526 n|

end

end A074605.P2186208767788659910

namespace A074605

/-- `abs(2^n-A074526(n))` -/
def P2186208767788659910.Spec : Prop :=
  ∀ n, P2186208767788659910.a n = A074605 n

end A074605

/-! ## A074605.P302538427950393436

`∑{#}[n, C(n, #)*A007689(#)]`
-/

namespace A074605.P302538427950393436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A007689 k

end

end A074605.P302538427950393436

namespace A074605

/-- `∑{#}[n, C(n, #)*A007689(#)]` -/
def P302538427950393436.Spec : Prop :=
  ∀ n, P302538427950393436.a n = A074605 n

end A074605

/-! ## A074605.P176019445251472901

`or(A024023(n), A052539(n))`
-/

namespace A074605.P176019445251472901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A024023 n) (A052539 n)

end

end A074605.P176019445251472901

namespace A074605

/-- `or(A024023(n), A052539(n))` -/
def P176019445251472901.Spec : Prop :=
  ∀ n, P176019445251472901.a n = A074605 n

end A074605

/-! ## A074605.P12886588811536932967

`record[A254006(n)+A122803(n)]`
-/

namespace A074605.P12886588811536932967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254006 n + A122803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074605.P12886588811536932967

namespace A074605

/-- `record[A254006(n)+A122803(n)]` -/
def P12886588811536932967.Spec : Prop :=
  ∀ n, P12886588811536932967.a n = A074605 n

end A074605

/-! ## A074605.P14397424110123792792

`or(A024036(n)+2, A024023(n))`
-/

namespace A074605.P14397424110123792792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A024036 n + 2) (A024023 n)

end

end A074605.P14397424110123792792

namespace A074605

/-- `or(A024036(n)+2, A024023(n))` -/
def P14397424110123792792.Spec : Prop :=
  ∀ n, P14397424110123792792.a n = A074605 n

end A074605

/-! ## A074605.P13756025675481667392

`record[A123344(n+1)+A038754(n)]`
-/

namespace A074605.P13756025675481667392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123344 (n + 1) + A038754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074605.P13756025675481667392

namespace A074605

/-- `record[A123344(n+1)+A038754(n)]` -/
def P13756025675481667392.Spec : Prop :=
  ∀ n, P13756025675481667392.a n = A074605 n

end A074605

/-! ## A074605.P5544038473520684616

`abs(1-(A000244(n)+A000051(2*n)))`
-/

namespace A074605.P5544038473520684616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A000244 n + A000051 (2 * n))|

end

end A074605.P5544038473520684616

namespace A074605

/-- `abs(1-(A000244(n)+A000051(2*n)))` -/
def P5544038473520684616.Spec : Prop :=
  ∀ n, P5544038473520684616.a n = A074605 n

end A074605

/-! ## A074605.P13520112565949661834

`xor(A000244(A028310(n)), A000302(n))`
-/

namespace A074605.P13520112565949661834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000244 (A028310 n).toNat) (A000302 n)

end

end A074605.P13520112565949661834

namespace A074605

/-- `xor(A000244(A028310(n)), A000302(n))` -/
def P13520112565949661834.Spec : Prop :=
  ∀ n, P13520112565949661834.a n = A074605 n

end A074605

/-! ## A074605.P8884752910482725374

`Δ[A085282(n)]`
-/

namespace A074605.P8884752910482725374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085282 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074605.P8884752910482725374

namespace A074605

/-- `Δ[A085282(n)]` -/
def P8884752910482725374.Spec : Prop :=
  ∀ n, P8884752910482725374.a n = A074605 n

end A074605

/-! ## A074605.P9555360932794091545

`Δ[A036557(Δ[n²])]`
-/

namespace A074605.P9555360932794091545
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036557 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074605.P9555360932794091545

namespace A074605

/-- `Δ[A036557(Δ[n²])]` -/
def P9555360932794091545.Spec : Prop :=
  ∀ n, P9555360932794091545.a n = A074605 n

end A074605

/-! ## A074605.P4158627722497484026

`Δ[A087433(n+1)/2]`
-/

namespace A074605.P4158627722497484026
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087433 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074605.P4158627722497484026

namespace A074605

/-- `Δ[A087433(n+1)/2]` -/
def P4158627722497484026.Spec : Prop :=
  ∀ n, P4158627722497484026.a n = (A074605 n : ℚ)

end A074605

/-! ## A074605.P6098703863811591732

`Δ[A007051(n)+A002450(n)]`
-/

namespace A074605.P6098703863811591732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n + A002450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074605.P6098703863811591732

namespace A074605

/-- `Δ[A007051(n)+A002450(n)]` -/
def P6098703863811591732.Spec : Prop :=
  ∀ n, P6098703863811591732.a n = A074605 n

end A074605

/-! ## A074605.P4252288002153591862

`(A008776(n)+A004171(n))/2`
-/

namespace A074605.P4252288002153591862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008776 n + A004171 n : ℚ) / 2

end

end A074605.P4252288002153591862

namespace A074605

/-- `(A008776(n)+A004171(n))/2` -/
def P4252288002153591862.Spec : Prop :=
  ∀ n, P4252288002153591862.a n = (A074605 n : ℚ)

end A074605

/-! ## A074605.P13292953974598594064

`(Δ[A024036(n)]-A002250(n))/2`
-/

namespace A074605.P13292953974598594064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024036 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - A002250 n : ℚ) / 2

end

end A074605.P13292953974598594064

namespace A074605

/-- `(Δ[A024036(n)]-A002250(n))/2` -/
def P13292953974598594064.Spec : Prop :=
  ∀ n, P13292953974598594064.a n = (A074605 n : ℚ)

theorem P13292953974598594064.correct : P13292953974598594064.Spec := by
  intro n
  simp only [A074605, Nat.add_sub_cancel, A074605.P13292953974598594064.f1, A074605.P13292953974598594064.a, A074605.P9191075828594097155.a, A002250, A002250.P15900526212734195691.a, A024036, A024036.P9245189437657330470.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A074605

/-! ## A074605.P10728103775031358325

`(A025192(n+1)+2*A000079(n)²)/2`
-/

namespace A074605.P10728103775031358325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025192 (n + 1) + 2 * A000079 n ^ 2 : ℚ) / 2

end

end A074605.P10728103775031358325

namespace A074605

/-- `(A025192(n+1)+2*A000079(n)²)/2` -/
def P10728103775031358325.Spec : Prop :=
  ∀ n, P10728103775031358325.a n = (A074605 n : ℚ)

end A074605

/-! ## A074605.P2248789059064700090

`(A025192(n+1)+A000079(2*n+1))/2`
-/

namespace A074605.P2248789059064700090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025192 (n + 1) + A000079 (2 * n + 1) : ℚ) / 2

end

end A074605.P2248789059064700090

namespace A074605

/-- `(A025192(n+1)+A000079(2*n+1))/2` -/
def P2248789059064700090.Spec : Prop :=
  ∀ n, P2248789059064700090.a n = (A074605 n : ℚ)

end A074605

/-!
# A074606: a(n) = 3^n + 5^n.

The programs for A074606, the canonical program `A074606.P17107400510171925079` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074606 has offset 0).

The definition of A074606 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+5^n` (program `A074606.P17107400510171925079`, by `A074606.P17107400510171925079.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074606.P17107400510171925079

`3^n+5^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074606

/-- `3^n+5^n` -/
def P17107400510171925079.Spec : Prop :=
  ∀ n, (P17107400510171925079.a n : ℤ) = A074606 n

theorem P17107400510171925079.correct : P17107400510171925079.Spec := by
  intro n
  simp only [A074606]

end A074606

/-! ## A074606.P5979171677126407737

`ogf((2-8x)/(1-8x+15x^2))`
-/

namespace A074606.P5979171677126407737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -8] [1, -8, 15] n

end

end A074606.P5979171677126407737

namespace A074606

/-- `ogf((2-8x)/(1-8x+15x^2))` -/
def P5979171677126407737.Spec : Prop :=
  ∀ n, P5979171677126407737.a n = A074606 n

end A074606

/-! ## A074606.P16586480808462193960

`2*A081186(n)`
-/

namespace A074606.P16586480808462193960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081186 n

end

end A074606.P16586480808462193960

namespace A074606

/-- `2*A081186(n)` -/
def P16586480808462193960.Spec : Prop :=
  ∀ n, P16586480808462193960.a n = A074606 n

end A074606

/-! ## A074606.P1485835602974838834

`abs(1-A074507(n))`
-/

namespace A074606.P1485835602974838834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A074507 n|

end

end A074606.P1485835602974838834

namespace A074606

/-- `abs(1-A074507(n))` -/
def P1485835602974838834.Spec : Prop :=
  ∀ n, P1485835602974838834.a n = A074606 n

end A074606

/-! ## A074606.P15448108337360820300

`xor(1, A155603(n)+2)`
-/

namespace A074606.P15448108337360820300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A155603 n + 2)

end

end A074606.P15448108337360820300

namespace A074606

/-- `xor(1, A155603(n)+2)` -/
def P15448108337360820300.Spec : Prop :=
  ∀ n, P15448108337360820300.a n = A074606 n

end A074606

/-! ## A074606.P5450850831651373634

`2*Δ[A233106(n+1)]`
-/

namespace A074606.P5450850831651373634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A074606.P5450850831651373634

namespace A074606

/-- `2*Δ[A233106(n+1)]` -/
def P5450850831651373634.Spec : Prop :=
  ∀ n, P5450850831651373634.a n = A074606 n

end A074606

/-! ## A074606.P11031136655255832560

`abs(2*n-A120949(n))`
-/

namespace A074606.P11031136655255832560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - A120949 n|

end

end A074606.P11031136655255832560

namespace A074606

/-- `abs(2*n-A120949(n))` -/
def P11031136655255832560.Spec : Prop :=
  ∀ n, P11031136655255832560.a n = A074606 n

end A074606

/-! ## A074606.P10383768774880856241

`2*(A005059(n)+A000244(n))`
-/

namespace A074606.P10383768774880856241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005059 n + A000244 n)

end

end A074606.P10383768774880856241

namespace A074606

/-- `2*(A005059(n)+A000244(n))` -/
def P10383768774880856241.Spec : Prop :=
  ∀ n, P10383768774880856241.a n = A074606 n

end A074606

/-! ## A074606.P14516454235769068471

`2*(A034478(n)+A003462(n))`
-/

namespace A074606.P14516454235769068471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A034478 n + A003462 n)

end

end A074606.P14516454235769068471

namespace A074606

/-- `2*(A034478(n)+A003462(n))` -/
def P14516454235769068471.Spec : Prop :=
  ∀ n, P14516454235769068471.a n = A074606 n

end A074606

/-! ## A074606.P16285177807372360057

`xor(A120950(n)+A004277(n), A000007(n))`
-/

namespace A074606.P16285177807372360057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A120950 n + A004277 n) (A000007 n)

end

end A074606.P16285177807372360057

namespace A074606

/-- `xor(A120950(n)+A004277(n), A000007(n))` -/
def P16285177807372360057.Spec : Prop :=
  ∀ n, P16285177807372360057.a n = A074606 n

end A074606

/-! ## A074606.P6777516704549835455

`Δ[A003463(n)+A003462(n)]`
-/

namespace A074606.P6777516704549835455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n + A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074606.P6777516704549835455

namespace A074606

/-- `Δ[A003463(n)+A003462(n)]` -/
def P6777516704549835455.Spec : Prop :=
  ∀ n, P6777516704549835455.a n = A074606 n

end A074606

/-! ## A074606.P17666917519916292673

`Δ[A007051(n)+A003463(n)]`
-/

namespace A074606.P17666917519916292673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n + A003463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074606.P17666917519916292673

namespace A074606

/-- `Δ[A007051(n)+A003463(n)]` -/
def P17666917519916292673.Spec : Prop :=
  ∀ n, P17666917519916292673.a n = A074606 n

end A074606

/-! ## A074606.P537931439377253548

`(A020729(n)+A008776(n))/2`
-/

namespace A074606.P537931439377253548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020729 n + A008776 n : ℚ) / 2

end

end A074606.P537931439377253548

namespace A074606

/-- `(A020729(n)+A008776(n))/2` -/
def P537931439377253548.Spec : Prop :=
  ∀ n, P537931439377253548.a n = (A074606 n : ℚ)

theorem P537931439377253548.correct : P537931439377253548.Spec := by
  intro n
  simp only [A074606, Nat.add_sub_cancel, A074606.P537931439377253548.a, A074606.P17107400510171925079.a, A008776, A008776.P11088121667404015999.a, A020729, A020729.P10295770726716872561.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A074606

/-! ## A074606.P5017586290920385821

`2/(n+1)*A082135(n+1)`
-/

namespace A074606.P5017586290920385821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A082135 (n + 1) : ℚ)

end

end A074606.P5017586290920385821

namespace A074606

/-- `2/(n+1)*A082135(n+1)` -/
def P5017586290920385821.Spec : Prop :=
  ∀ n, P5017586290920385821.a n = (A074606 n : ℚ)

end A074606

/-! ## A074606.P17724157179794475855

`record[A227076(n)+A098355(n)]`
-/

namespace A074606.P17724157179794475855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227076 n + A098355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074606.P17724157179794475855

namespace A074606

/-- `record[A227076(n)+A098355(n)]` -/
def P17724157179794475855.Spec : Prop :=
  ∀ n, P17724157179794475855.a n = A074606 n

end A074606

/-! ## A074606.P6924217548385580247

`record[A227076(n)+A227075(n)]`
-/

namespace A074606.P6924217548385580247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227076 n + A227075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074606.P6924217548385580247

namespace A074606

/-- `record[A227076(n)+A227075(n)]` -/
def P6924217548385580247.Spec : Prop :=
  ∀ n, P6924217548385580247.a n = A074606 n

end A074606

/-! ## A074606.P5018379770451050853

`(A169604(n)+A093138(n+1))/A007283(n)`
-/

namespace A074606.P5018379770451050853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169604 n + A093138 (n + 1) : ℚ) / (A007283 n : ℚ)

end

end A074606.P5018379770451050853

namespace A074606

/-- `(A169604(n)+A093138(n+1))/A007283(n)` -/
def P5018379770451050853.Spec : Prop :=
  ∀ n, P5018379770451050853.a n = (A074606 n : ℚ)

end A074606

/-!
# A074607: a(n) = 3^n + 6^n.

The programs for A074607, the canonical program `A074607.P4213775453506225124` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074607 has offset 0).

The definition of A074607 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+6^n` (program `A074607.P4213775453506225124`, by `A074607.P4213775453506225124.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074607.P4213775453506225124

`3^n+6^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074607

/-- `3^n+6^n` -/
def P4213775453506225124.Spec : Prop :=
  ∀ n, (P4213775453506225124.a n : ℤ) = A074607 n

theorem P4213775453506225124.correct : P4213775453506225124.Spec := by
  intro n
  simp only [A074607]

end A074607

/-! ## A074607.P3393182289194350089

`ogf((2-9x)/(1-9x+18x^2))`
-/

namespace A074607.P3393182289194350089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -9] [1, -9, 18] n

end

end A074607.P3393182289194350089

namespace A074607

/-- `ogf((2-9x)/(1-9x+18x^2))` -/
def P3393182289194350089.Spec : Prop :=
  ∀ n, P3393182289194350089.a n = A074607 n

end A074607

/-! ## A074607.P3320305130089817994

`floor(6*a(n-1)-3^n)` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A074607.P3320305130089817994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  6 * a (n - 1) - (3 ^ n : ℤ)

end

end A074607.P3320305130089817994

namespace A074607

/-- `floor(6*a(n-1)-3^n)` -/
def P3320305130089817994.Spec : Prop :=
  ∀ n, P3320305130089817994.a n = A074607 n

theorem P3320305130089817994.correct : P3320305130089817994.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A074607, Nat.add_sub_cancel, A074607.P3320305130089817994.a, A074607.P4213775453506225124.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A074607, Nat.add_sub_cancel, A074607.P3320305130089817994.a, A074607.P4213775453506225124.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A074607

/-! ## A074607.P13920072672339316420

`3^n*∑[2*a(n-1)]` with `a(0)=2, a(1)=1`
-/

namespace A074607.P13920072672339316420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074607.P13920072672339316420

namespace A074607

/-- `3^n*∑[2*a(n-1)]` -/
def P13920072672339316420.Spec : Prop :=
  ∀ n, (P13920072672339316420.a n : ℤ) = A074607 n

end A074607

/-! ## A074607.P7825219143384762246

`abs(1-A074508(n))`
-/

namespace A074607.P7825219143384762246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A074508 n|

end

end A074607.P7825219143384762246

namespace A074607

/-- `abs(1-A074508(n))` -/
def P7825219143384762246.Spec : Prop :=
  ∀ n, P7825219143384762246.a n = A074607 n

end A074607

/-! ## A074607.P8460448857447963824

`3^n*A000051(n)`
-/

namespace A074607.P8460448857447963824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A000051 n

end

end A074607.P8460448857447963824

namespace A074607

/-- `3^n*A000051(n)` -/
def P8460448857447963824.Spec : Prop :=
  ∀ n, P8460448857447963824.a n = A074607 n

end A074607

/-! ## A074607.P3815563881520157384

`or(A155604(n)+1, char[12])`
-/

namespace A074607.P3815563881520157384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A155604 n + 1) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A074607.P3815563881520157384

namespace A074607

/-- `or(A155604(n)+1, char[12])` -/
def P3815563881520157384.Spec : Prop :=
  ∀ n, P3815563881520157384.a n = A074607 n

end A074607

/-! ## A074607.P3424924173148588309

`abs(A001579(n)-5^n)`
-/

namespace A074607.P3424924173148588309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001579 n - (5 ^ n : ℤ)|

end

end A074607.P3424924173148588309

namespace A074607

/-- `abs(A001579(n)-5^n)` -/
def P3424924173148588309.Spec : Prop :=
  ∀ n, P3424924173148588309.a n = A074607 n

end A074607

/-! ## A074607.P16049860962830866008

`3^n*Δ[A005126(n)]`
-/

namespace A074607.P16049860962830866008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * (f1 (n + 1) - f1 n)

end

end A074607.P16049860962830866008

namespace A074607

/-- `3^n*Δ[A005126(n)]` -/
def P16049860962830866008.Spec : Prop :=
  ∀ n, P16049860962830866008.a n = A074607 n

end A074607

/-! ## A074607.P17923471333867900268

`(A052548(n)-1)*3^n`
-/

namespace A074607.P17923471333867900268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052548 n - 1) * (3 ^ n : ℤ)

end

end A074607.P17923471333867900268

namespace A074607

/-- `(A052548(n)-1)*3^n` -/
def P17923471333867900268.Spec : Prop :=
  ∀ n, P17923471333867900268.a n = A074607 n

end A074607

/-! ## A074607.P362943537410270259

`A000051(n)*A000244(n)`
-/

namespace A074607.P362943537410270259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n * A000244 n

end

end A074607.P362943537410270259

namespace A074607

/-- `A000051(n)*A000244(n)` -/
def P362943537410270259.Spec : Prop :=
  ∀ n, P362943537410270259.a n = A074607 n

end A074607

/-! ## A074607.P15322058200365182395

`record[A155604(A271439(n))+1]`
-/

namespace A074607.P15322058200365182395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155604 (A271439 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074607.P15322058200365182395

namespace A074607

/-- `record[A155604(A271439(n))+1]` -/
def P15322058200365182395.Spec : Prop :=
  ∀ n, P15322058200365182395.a n = A074607 n

end A074607

/-! ## A074607.P13240428517804076927

`abs(A000051(n)-A034488(n))`
-/

namespace A074607.P13240428517804076927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000051 n - A034488 n|

end

end A074607.P13240428517804076927

namespace A074607

/-- `abs(A000051(n)-A034488(n))` -/
def P13240428517804076927.Spec : Prop :=
  ∀ n, P13240428517804076927.a n = A074607 n

end A074607

/-! ## A074607.P7525799582428495653

`Δ[A005126(n)]*A000244(n)`
-/

namespace A074607.P7525799582428495653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000244 n

end

end A074607.P7525799582428495653

namespace A074607

/-- `Δ[A005126(n)]*A000244(n)` -/
def P7525799582428495653.Spec : Prop :=
  ∀ n, P7525799582428495653.a n = A074607 n

end A074607

/-! ## A074607.P14138263112100763797

`(A000079(n)+1)*A000244(n)`
-/

namespace A074607.P14138263112100763797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 n + 1) * A000244 n

end

end A074607.P14138263112100763797

namespace A074607

/-- `(A000079(n)+1)*A000244(n)` -/
def P14138263112100763797.Spec : Prop :=
  ∀ n, P14138263112100763797.a n = A074607 n

end A074607

/-! ## A074607.P7133808534705232046

`A000244(n)*A094373(n+1)`
-/

namespace A074607.P7133808534705232046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A094373 (n + 1)

end

end A074607.P7133808534705232046

namespace A074607

/-- `A000244(n)*A094373(n+1)` -/
def P7133808534705232046.Spec : Prop :=
  ∀ n, P7133808534705232046.a n = A074607 n

end A074607

/-! ## A074607.P9679384169548985517

`(A000225(n)+2)*A000244(n)`
-/

namespace A074607.P9679384169548985517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000225 n + 2) * A000244 n

end

end A074607.P9679384169548985517

namespace A074607

/-- `(A000225(n)+2)*A000244(n)` -/
def P9679384169548985517.Spec : Prop :=
  ∀ n, P9679384169548985517.a n = A074607 n

end A074607

/-! ## A074607.P13188400434447157519

`A000051(n)*A017914(2*n)`
-/

namespace A074607.P13188400434447157519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n * A017914 (2 * n)

end

end A074607.P13188400434447157519

namespace A074607

/-- `A000051(n)*A017914(2*n)` -/
def P13188400434447157519.Spec : Prop :=
  ∀ n, P13188400434447157519.a n = A074607 n

end A074607

/-! ## A074607.P7007398878179348243

`A000051(n)*A038754(2*n)`
-/

namespace A074607.P7007398878179348243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n * A038754 (2 * n)

end

end A074607.P7007398878179348243

namespace A074607

/-- `A000051(n)*A038754(2*n)` -/
def P7007398878179348243.Spec : Prop :=
  ∀ n, P7007398878179348243.a n = A074607 n

end A074607

/-! ## A074607.P1069679329657660829

`A094373(n+1)*A140429(n+1)`
-/

namespace A074607.P1069679329657660829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 (n + 1) * A140429 (n + 1)

end

end A074607.P1069679329657660829

namespace A074607

/-- `A094373(n+1)*A140429(n+1)` -/
def P1069679329657660829.Spec : Prop :=
  ∀ n, P1069679329657660829.a n = A074607 n

end A074607

/-!
# A074608: a(n) = 3^n + 7^n.

The programs for A074608, the canonical program `A074608.P13147997992987809488` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074608 has offset 0).

The definition of A074608 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+7^n` (program `A074608.P13147997992987809488`, by `A074608.P13147997992987809488.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074608.P13147997992987809488

`3^n+7^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074608

/-- `3^n+7^n` -/
def P13147997992987809488.Spec : Prop :=
  ∀ n, (P13147997992987809488.a n : ℤ) = A074608 n

theorem P13147997992987809488.correct : P13147997992987809488.Spec := by
  intro n
  simp only [A074608]

end A074608

/-! ## A074608.P3490192188644299340

`ogf((2-10x)/(1-10x+21x^2))`
-/

namespace A074608.P3490192188644299340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -10] [1, -10, 21] n

end

end A074608.P3490192188644299340

namespace A074608

/-- `ogf((2-10x)/(1-10x+21x^2))` -/
def P3490192188644299340.Spec : Prop :=
  ∀ n, P3490192188644299340.a n = A074608 n

end A074608

/-! ## A074608.P7907052082300476081

`2*A081336(n)`
-/

namespace A074608.P7907052082300476081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081336 n

end

end A074608.P7907052082300476081

namespace A074608

/-- `2*A081336(n)` -/
def P7907052082300476081.Spec : Prop :=
  ∀ n, P7907052082300476081.a n = A074608 n

end A074608

/-! ## A074608.P2241058929998983128

`xor(1, A074509(n))`
-/

namespace A074608.P2241058929998983128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A074509 n)

end

end A074608.P2241058929998983128

namespace A074608

/-- `xor(1, A074509(n))` -/
def P2241058929998983128.Spec : Prop :=
  ∀ n, P2241058929998983128.a n = A074608 n

end A074608

/-! ## A074608.P6300898723503063255

`xor(3, A155605(n))`
-/

namespace A074608.P6300898723503063255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A155605 n)

end

end A074608.P6300898723503063255

namespace A074608

/-- `xor(3, A155605(n))` -/
def P6300898723503063255.Spec : Prop :=
  ∀ n, P6300898723503063255.a n = A074608 n

end A074608

/-! ## A074608.P5020161678666035304

`∑[A055272(n)+A025192(n)]`
-/

namespace A074608.P5020161678666035304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055272 n + A025192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074608.P5020161678666035304

namespace A074608

/-- `∑[A055272(n)+A025192(n)]` -/
def P5020161678666035304.Spec : Prop :=
  ∀ n, P5020161678666035304.a n = A074608 n

end A074608

/-! ## A074608.P2083960626059935874

`Δ[A023000(n)+A003462(n)]`
-/

namespace A074608.P2083960626059935874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023000 n + A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074608.P2083960626059935874

namespace A074608

/-- `Δ[A023000(n)+A003462(n)]` -/
def P2083960626059935874.Spec : Prop :=
  ∀ n, P2083960626059935874.a n = A074608 n

end A074608

/-! ## A074608.P9908517885689763629

`Δ[A341590(n)+A000244(n)]`
-/

namespace A074608.P9908517885689763629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341590 n + A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074608.P9908517885689763629

namespace A074608

/-- `Δ[A341590(n)+A000244(n)]` -/
def P9908517885689763629.Spec : Prop :=
  ∀ n, P9908517885689763629.a n = A074608 n

end A074608

/-! ## A074608.P15032791047247024726

`2*(A034494(n)+A003462(n))`
-/

namespace A074608.P15032791047247024726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A034494 n + A003462 n)

end

end A074608.P15032791047247024726

namespace A074608

/-- `2*(A034494(n)+A003462(n))` -/
def P15032791047247024726.Spec : Prop :=
  ∀ n, P15032791047247024726.a n = A074608 n

end A074608

/-! ## A074608.P8371269193055617934

`2*(A120741(n)+A007051(n))`
-/

namespace A074608.P8371269193055617934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A120741 n + A007051 n)

end

end A074608.P8371269193055617934

namespace A074608

/-- `2*(A120741(n)+A007051(n))` -/
def P8371269193055617934.Spec : Prop :=
  ∀ n, P8371269193055617934.a n = A074608 n

end A074608

/-! ## A074608.P4389758892991326137

`lcm(2, A081336(n)%A121199(n))`
-/

namespace A074608.P4389758892991326137
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (Int.tmod (A081336 n) (A121199 n))

end

end A074608.P4389758892991326137

namespace A074608

/-- `lcm(2, A081336(n)%A121199(n))` -/
def P4389758892991326137.Spec : Prop :=
  ∀ n, (P4389758892991326137.a n : ℤ) = A074608 n

end A074608

/-! ## A074608.P17292809460160847695

`2*(A120741(n)+Δ[A164039(n)])`
-/

namespace A074608.P17292809460160847695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A120741 n + (f1 (n + 1) - f1 n))

end

end A074608.P17292809460160847695

namespace A074608

/-- `2*(A120741(n)+Δ[A164039(n)])` -/
def P17292809460160847695.Spec : Prop :=
  ∀ n, P17292809460160847695.a n = A074608 n

end A074608

/-! ## A074608.P8575323174355802898

`ceil(A074602(n)+Δ[A260217(n+1)/4])`
-/

namespace A074608.P8575323174355802898
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260217 (n + 1) : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A074602 n : ℚ) + (f1 (n + 1) - f1 n)⌉

end

end A074608.P8575323174355802898

namespace A074608

/-- `ceil(A074602(n)+Δ[A260217(n+1)/4])` -/
def P8575323174355802898.Spec : Prop :=
  ∀ n, P8575323174355802898.a n = A074608 n

end A074608

/-! ## A074608.P6226779759874607910

`ceil(A074602(n)+Δ[(A028243(n+1)+2)/2])`
-/

namespace A074608.P6226779759874607910
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028243 (n + 1) + 2 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A074602 n : ℚ) + (f1 (n + 1) - f1 n)⌉

end

end A074608.P6226779759874607910

namespace A074608

/-- `ceil(A074602(n)+Δ[(A028243(n+1)+2)/2])` -/
def P6226779759874607910.Spec : Prop :=
  ∀ n, P6226779759874607910.a n = A074608 n

end A074608

/-! ## A074608.P12289519667771795168

`lcm(A000005(A052480(n)), A081336(n))`
-/

namespace A074608.P12289519667771795168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (A052480 n).toNat) (A081336 n)

end

end A074608.P12289519667771795168

namespace A074608

/-- `lcm(A000005(A052480(n)), A081336(n))` -/
def P12289519667771795168.Spec : Prop :=
  ∀ n, (P12289519667771795168.a n : ℤ) = A074608 n

end A074608

/-! ## A074608.P10033264290325591099

`abs(A000188(A006530(n+1))-A074509(n))`
-/

namespace A074608.P10033264290325591099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000188 (A006530 (n + 1)).toNat - A074509 n|

end

end A074608.P10033264290325591099

namespace A074608

/-- `abs(A000188(A006530(n+1))-A074509(n))` -/
def P10033264290325591099.Spec : Prop :=
  ∀ n, P10033264290325591099.a n = A074608 n

end A074608

/-! ## A074608.P128209362446349590

`Δ[A007051(n)+A125725(n+1)/2]`
-/

namespace A074608.P128209362446349590
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007051 n : ℚ) + (A125725 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074608.P128209362446349590

namespace A074608

/-- `Δ[A007051(n)+A125725(n+1)/2]` -/
def P128209362446349590.Spec : Prop :=
  ∀ n, P128209362446349590.a n = (A074608 n : ℚ)

end A074608

/-! ## A074608.P8303199406078318123

`(A027474(n+2)+A027472(n+3))/A000217(n+1)`
-/

namespace A074608.P8303199406078318123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027474 (n + 2) + A027472 (n + 3) : ℚ) / (A000217 (n + 1) : ℚ)

end

end A074608.P8303199406078318123

namespace A074608

/-- `(A027474(n+2)+A027472(n+3))/A000217(n+1)` -/
def P8303199406078318123.Spec : Prop :=
  ∀ n, P8303199406078318123.a n = (A074608 n : ℚ)

end A074608

/-!
# A074609: a(n) = 3^n + 8^n.

The programs for A074609, the canonical program `A074609.P664708194004387163` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074609 has offset 0).

The definition of A074609 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+8^n` (program `A074609.P664708194004387163`, by `A074609.P664708194004387163.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074609.P664708194004387163

`3^n+8^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074609

/-- `3^n+8^n` -/
def P664708194004387163.Spec : Prop :=
  ∀ n, (P664708194004387163.a n : ℤ) = A074609 n

theorem P664708194004387163.correct : P664708194004387163.Spec := by
  intro n
  simp only [A074609]

end A074609

/-! ## A074609.P18391032270177206815

`ogf((2-11x)/(1-11x+24x^2))`
-/

namespace A074609.P18391032270177206815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -11] [1, -11, 24] n

end

end A074609.P18391032270177206815

namespace A074609

/-- `ogf((2-11x)/(1-11x+24x^2))` -/
def P18391032270177206815.Spec : Prop :=
  ∀ n, P18391032270177206815.a n = A074609 n

end A074609

/-! ## A074609.P17827486338952214223

`abs(1-A074510(n))`
-/

namespace A074609.P17827486338952214223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A074510 n|

end

end A074609.P17827486338952214223

namespace A074609

/-- `abs(1-A074510(n))` -/
def P17827486338952214223.Spec : Prop :=
  ∀ n, P17827486338952214223.a n = A074609 n

end A074609

/-! ## A074609.P10085330335398275566

`or(A024023(n), A062395(n))`
-/

namespace A074609.P10085330335398275566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A024023 n) (A062395 n)

end

end A074609.P10085330335398275566

namespace A074609

/-- `or(A024023(n), A062395(n))` -/
def P10085330335398275566.Spec : Prop :=
  ∀ n, P10085330335398275566.a n = A074609 n

end A074609

/-! ## A074609.P18249403869965147510

`∑[A055274(n)+A025192(n)]`
-/

namespace A074609.P18249403869965147510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055274 n + A025192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074609.P18249403869965147510

namespace A074609

/-- `∑[A055274(n)+A025192(n)]` -/
def P18249403869965147510.Spec : Prop :=
  ∀ n, P18249403869965147510.a n = A074609 n

end A074609

/-! ## A074609.P8875186861787098718

`Δ[A023001(n)+A003462(n)]`
-/

namespace A074609.P8875186861787098718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023001 n + A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074609.P8875186861787098718

namespace A074609

/-- `Δ[A023001(n)+A003462(n)]` -/
def P8875186861787098718.Spec : Prop :=
  ∀ n, P8875186861787098718.a n = A074609 n

end A074609

/-! ## A074609.P3022628516714699292

`Δ[A023001(n)+A007051(n)]`
-/

namespace A074609.P3022628516714699292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023001 n + A007051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074609.P3022628516714699292

namespace A074609

/-- `Δ[A023001(n)+A007051(n)]` -/
def P3022628516714699292.Spec : Prop :=
  ∀ n, P3022628516714699292.a n = A074609 n

end A074609

/-! ## A074609.P13234799964651899669

`Δ[A047853(n)+A003462(n)]`
-/

namespace A074609.P13234799964651899669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047853 n + A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074609.P13234799964651899669

namespace A074609

/-- `Δ[A047853(n)+A003462(n)]` -/
def P13234799964651899669.Spec : Prop :=
  ∀ n, P13234799964651899669.a n = A074609 n

end A074609

/-! ## A074609.P8664313501089424300

`Δ[A047853(n)+A007051(n)]`
-/

namespace A074609.P8664313501089424300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047853 n + A007051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074609.P8664313501089424300

namespace A074609

/-- `Δ[A047853(n)+A007051(n)]` -/
def P8664313501089424300.Spec : Prop :=
  ∀ n, P8664313501089424300.a n = A074609 n

end A074609

/-! ## A074609.P13528513675856015730

`(A013730(n)+A008776(n))/2`
-/

namespace A074609.P13528513675856015730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013730 n + A008776 n : ℚ) / 2

end

end A074609.P13528513675856015730

namespace A074609

/-- `(A013730(n)+A008776(n))/2` -/
def P13528513675856015730.Spec : Prop :=
  ∀ n, P13528513675856015730.a n = (A074609 n : ℚ)

end A074609

/-! ## A074609.P14971439034546139223

`C(A155606(n)+1, A155606(n))`
-/

namespace A074609.P14971439034546139223
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A155606 n + 1).toNat (A155606 n).toNat

end

end A074609.P14971439034546139223

namespace A074609

/-- `C(A155606(n)+1, A155606(n))` -/
def P14971439034546139223.Spec : Prop :=
  ∀ n, (P14971439034546139223.a n : ℤ) = A074609 n

end A074609

/-! ## A074609.P4469483171972844276

`or(A000051(3*n), A024023(n))`
-/

namespace A074609.P4469483171972844276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000051 (3 * n)) (A024023 n)

end

end A074609.P4469483171972844276

namespace A074609

/-- `or(A000051(3*n), A024023(n))` -/
def P4469483171972844276.Spec : Prop :=
  ∀ n, P4469483171972844276.a n = A074609 n

end A074609

/-! ## A074609.P5297729857630694114

`abs(A001018(n)+Δ[A003462(n)])`
-/

namespace A074609.P5297729857630694114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001018 n + (f1 (n + 1) - f1 n)|

end

end A074609.P5297729857630694114

namespace A074609

/-- `abs(A001018(n)+Δ[A003462(n)])` -/
def P5297729857630694114.Spec : Prop :=
  ∀ n, P5297729857630694114.a n = A074609 n

end A074609

/-! ## A074609.P16458310532279641008

`xor(A000244(A028310(n)), A001018(n))`
-/

namespace A074609.P16458310532279641008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000244 (A028310 n).toNat) (A001018 n)

end

end A074609.P16458310532279641008

namespace A074609

/-- `xor(A000244(A028310(n)), A001018(n))` -/
def P16458310532279641008.Spec : Prop :=
  ∀ n, P16458310532279641008.a n = A074609 n

end A074609

/-! ## A074609.P3310612969038070569

`xor(A000051(A008585(n)), A024023(n))`
-/

namespace A074609.P3310612969038070569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000051 (A008585 n).toNat) (A024023 n)

end

end A074609.P3310612969038070569

namespace A074609

/-- `xor(A000051(A008585(n)), A024023(n))` -/
def P3310612969038070569.Spec : Prop :=
  ∀ n, P3310612969038070569.a n = A074609 n

end A074609

/-! ## A074609.P5169438984991969828

`Δ[A023001(n)+A099754(n)-A000079(n)]`
-/

namespace A074609.P5169438984991969828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023001 n + (A099754 n - A000079 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074609.P5169438984991969828

namespace A074609

/-- `Δ[A023001(n)+A099754(n)-A000079(n)]` -/
def P5169438984991969828.Spec : Prop :=
  ∀ n, P5169438984991969828.a n = A074609 n

end A074609

/-!
# A074610: a(n) = 3^n + 9^n.

The programs for A074610, the canonical program `A074610.P9060047500786557276` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074610 has offset 0).

The definition of A074610 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+9^n` (program `A074610.P9060047500786557276`, by `A074610.P9060047500786557276.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074610.P9060047500786557276

`3^n+9^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074610

/-- `3^n+9^n` -/
def P9060047500786557276.Spec : Prop :=
  ∀ n, (P9060047500786557276.a n : ℤ) = A074610 n

theorem P9060047500786557276.correct : P9060047500786557276.Spec := by
  intro n
  simp only [A074610]

end A074610

/-! ## A074610.P11364184220483503503

`ogf((2-12x)/(1-12x+27x^2))`
-/

namespace A074610.P11364184220483503503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -12] [1, -12, 27] n

end

end A074610.P11364184220483503503

namespace A074610

/-- `ogf((2-12x)/(1-12x+27x^2))` -/
def P11364184220483503503.Spec : Prop :=
  ∀ n, P11364184220483503503.a n = A074610 n

end A074610

/-! ## A074610.P17573647667486194423

`2*A025551(n)`
-/

namespace A074610.P17573647667486194423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025551 n

end

end A074610.P17573647667486194423

namespace A074610

/-- `2*A025551(n)` -/
def P17573647667486194423.Spec : Prop :=
  ∀ n, P17573647667486194423.a n = A074610 n

end A074610

/-! ## A074610.P9432491446868808265

`2*C(∑[3*a(n-1)], 2)` with `a(0)=2, a(1)=2`
-/

namespace A074610.P9432491446868808265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A074610.P9432491446868808265

namespace A074610

/-- `2*C(∑[3*a(n-1)], 2)` -/
def P9432491446868808265.Spec : Prop :=
  ∀ n, (P9432491446868808265.a n : ℤ) = A074610 n

end A074610

/-! ## A074610.P513030589726225431

`3^n*∑[3*a(n-1)]` with `a(0)=2, a(1)=2`
-/

namespace A074610.P513030589726225431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074610.P513030589726225431

namespace A074610

/-- `3^n*∑[3*a(n-1)]` -/
def P513030589726225431.Spec : Prop :=
  ∀ n, (P513030589726225431.a n : ℤ) = A074610 n

end A074610

/-! ## A074610.P11221701556168541287

`floor((∑[3*a(n-1)]/2)²)` with `a(0)=3, a(1)=4`
-/

namespace A074610.P11221701556168541287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 4] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2) ^ 2⌋

end

end A074610.P11221701556168541287

namespace A074610

/-- `floor((∑[3*a(n-1)]/2)²)` -/
def P11221701556168541287.Spec : Prop :=
  ∀ n, P11221701556168541287.a n = A074610 n

end A074610

/-! ## A074610.P11819001457783948231

`xor(1, A034513(n))`
-/

namespace A074610.P11819001457783948231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A034513 n)

end

end A074610.P11819001457783948231

namespace A074610

/-- `xor(1, A034513(n))` -/
def P11819001457783948231.Spec : Prop :=
  ∀ n, P11819001457783948231.a n = A074610 n

end A074610

/-! ## A074610.P8162788191901664989

`A032124(Δ[n²])`
-/

namespace A074610.P8162788191901664989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032124 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A074610.P8162788191901664989

namespace A074610

/-- `A032124(Δ[n²])` -/
def P8162788191901664989.Spec : Prop :=
  ∀ n, P8162788191901664989.a n = A074610 n

end A074610

/-! ## A074610.P17430940593018923888

`A122007(2*(n+1))`
-/

namespace A074610.P17430940593018923888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122007 (2 * (n + 1))

end

end A074610.P17430940593018923888

namespace A074610

/-- `A122007(2*(n+1))` -/
def P17430940593018923888.Spec : Prop :=
  ∀ n, P17430940593018923888.a n = A074610 n

end A074610

/-! ## A074610.P8995634933802859256

`2*A001444(2*n)`
-/

namespace A074610.P8995634933802859256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001444 (2 * n)

end

end A074610.P8995634933802859256

namespace A074610

/-- `2*A001444(2*n)` -/
def P8995634933802859256.Spec : Prop :=
  ∀ n, P8995634933802859256.a n = A074610 n

end A074610

/-! ## A074610.P17021548009207914143

`2*A032120(2*n)`
-/

namespace A074610.P17021548009207914143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032120 (2 * n)

end

end A074610.P17021548009207914143

namespace A074610

/-- `2*A032120(2*n)` -/
def P17021548009207914143.Spec : Prop :=
  ∀ n, P17021548009207914143.a n = A074610 n

end A074610

/-! ## A074610.P14778636710585286109

`A056504(4*n+2)`
-/

namespace A074610.P14778636710585286109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056504 (4 * n + 2)

end

end A074610.P14778636710585286109

namespace A074610

/-- `A056504(4*n+2)` -/
def P14778636710585286109.Spec : Prop :=
  ∀ n, P14778636710585286109.a n = A074610 n

end A074610

/-! ## A074610.P12579876544407082913

`2*C(A034472(n), 2)`
-/

namespace A074610.P12579876544407082913
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A034472 n).toNat 2

end

end A074610.P12579876544407082913

namespace A074610

/-- `2*C(A034472(n), 2)` -/
def P12579876544407082913.Spec : Prop :=
  ∀ n, (P12579876544407082913.a n : ℤ) = A074610 n

end A074610

/-! ## A074610.P15183875313793145383

`2*A323845(Δ[n²])`
-/

namespace A074610.P15183875313793145383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A323845 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A074610.P15183875313793145383

namespace A074610

/-- `2*A323845(Δ[n²])` -/
def P15183875313793145383.Spec : Prop :=
  ∀ n, P15183875313793145383.a n = A074610 n

end A074610

/-! ## A074610.P9814567999046226088

`Δ[C(A003462(n)+2, 2)]`
-/

namespace A074610.P9814567999046226088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003462 n + 2).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A074610.P9814567999046226088

namespace A074610

/-- `Δ[C(A003462(n)+2, 2)]` -/
def P9814567999046226088.Spec : Prop :=
  ∀ n, P9814567999046226088.a n = A074610 n

end A074610

/-! ## A074610.P6108652831725627329

`(A169724(n+1)-1)/4`
-/

namespace A074610.P6108652831725627329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169724 (n + 1) - 1 : ℚ) / 4

end

end A074610.P6108652831725627329

namespace A074610

/-- `(A169724(n+1)-1)/4` -/
def P6108652831725627329.Spec : Prop :=
  ∀ n, P6108652831725627329.a n = (A074610 n : ℚ)

end A074610

/-! ## A074610.P11736492458429573134

`(A198410(n+2)-1)/3`
-/

namespace A074610.P11736492458429573134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198410 (n + 2) - 1 : ℚ) / 3

end

end A074610.P11736492458429573134

namespace A074610

/-- `(A198410(n+2)-1)/3` -/
def P11736492458429573134.Spec : Prop :=
  ∀ n, P11736492458429573134.a n = (A074610 n : ℚ)

end A074610

/-! ## A074610.P11537663496785662662

`lcm(2, A032124(2*n+1))`
-/

namespace A074610.P11537663496785662662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A032124 (2 * n + 1))

end

end A074610.P11537663496785662662

namespace A074610

/-- `lcm(2, A032124(2*n+1))` -/
def P11537663496785662662.Spec : Prop :=
  ∀ n, (P11537663496785662662.a n : ℤ) = A074610 n

end A074610

/-! ## A074610.P17776117561831653687

`floor((A052919(n+1)/2)²)`
-/

namespace A074610.P17776117561831653687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A052919 (n + 1) : ℚ) / 2) ^ 2⌋

end

end A074610.P17776117561831653687

namespace A074610

/-- `floor((A052919(n+1)/2)²)` -/
def P17776117561831653687.Spec : Prop :=
  ∀ n, P17776117561831653687.a n = A074610 n

end A074610

/-! ## A074610.P2035619180318387137

`A007051(n)*A008776(n)`
-/

namespace A074610.P2035619180318387137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n * A008776 n

end

end A074610.P2035619180318387137

namespace A074610

/-- `A007051(n)*A008776(n)` -/
def P2035619180318387137.Spec : Prop :=
  ∀ n, P2035619180318387137.a n = A074610 n

end A074610

/-!
# A074611: a(n) = 4^n + 5^n.

The programs for A074611, the canonical program `A074611.P3381804651692788497` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074611 has offset 0).

The definition of A074611 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n+5^n` (program `A074611.P3381804651692788497`, by `A074611.P3381804651692788497.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074611.P3381804651692788497

`4^n+5^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074611

/-- `4^n+5^n` -/
def P3381804651692788497.Spec : Prop :=
  ∀ n, (P3381804651692788497.a n : ℤ) = A074611 n

theorem P3381804651692788497.correct : P3381804651692788497.Spec := by
  intro n
  simp only [A074611]

end A074611

/-! ## A074611.P5544756681657189795

`ogf((2-9x)/(1-9x+20x^2))`
-/

namespace A074611.P5544756681657189795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -9] [1, -9, 20] n

end

end A074611.P5544756681657189795

namespace A074611

/-- `ogf((2-9x)/(1-9x+20x^2))` -/
def P5544756681657189795.Spec : Prop :=
  ∀ n, P5544756681657189795.a n = A074611 n

end A074611

/-! ## A074611.P3040875816854446455

`abs(1-A074511(n))`
-/

namespace A074611.P3040875816854446455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A074511 n|

end

end A074611.P3040875816854446455

namespace A074611

/-- `abs(1-A074511(n))` -/
def P3040875816854446455.Spec : Prop :=
  ∀ n, P3040875816854446455.a n = A074611 n

end A074611

/-! ## A074611.P4500554408498357852

`abs(A001550(n)-A001552(n))`
-/

namespace A074611.P4500554408498357852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001550 n - A001552 n|

end

end A074611.P4500554408498357852

namespace A074611

/-- `abs(A001550(n)-A001552(n))` -/
def P4500554408498357852.Spec : Prop :=
  ∀ n, P4500554408498357852.a n = A074611 n

end A074611

/-! ## A074611.P3177456385377887204

`∑[A005054(n)+A002001(n)]`
-/

namespace A074611.P3177456385377887204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005054 n + A002001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074611.P3177456385377887204

namespace A074611

/-- `∑[A005054(n)+A002001(n)]` -/
def P3177456385377887204.Spec : Prop :=
  ∀ n, P3177456385377887204.a n = A074611 n

end A074611

/-! ## A074611.P5165520531414712376

`∑[∑[A055842(n)+A055841(n)]]`
-/

namespace A074611.P5165520531414712376
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055842 n + A055841 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074611.P5165520531414712376

namespace A074611

/-- `∑[∑[A055842(n)+A055841(n)]]` -/
def P5165520531414712376.Spec : Prop :=
  ∀ n, P5165520531414712376.a n = A074611 n

end A074611

/-! ## A074611.P15637611948728631018

`∑[A133632(A004277(n))+A002001(n)]`
-/

namespace A074611.P15637611948728631018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133632 (A004277 n).toNat + A002001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074611.P15637611948728631018

namespace A074611

/-- `∑[A133632(A004277(n))+A002001(n)]` -/
def P15637611948728631018.Spec : Prop :=
  ∀ n, P15637611948728631018.a n = A074611 n

end A074611

/-! ## A074611.P13442515257359954709

`Δ[A003463(n)+A002450(n)]`
-/

namespace A074611.P13442515257359954709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n + A002450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074611.P13442515257359954709

namespace A074611

/-- `Δ[A003463(n)+A002450(n)]` -/
def P13442515257359954709.Spec : Prop :=
  ∀ n, P13442515257359954709.a n = A074611 n

end A074611

/-! ## A074611.P8444083290991630752

`Δ[A047849(n)+A003463(n)]`
-/

namespace A074611.P8444083290991630752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047849 n + A003463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074611.P8444083290991630752

namespace A074611

/-- `Δ[A047849(n)+A003463(n)]` -/
def P8444083290991630752.Spec : Prop :=
  ∀ n, P8444083290991630752.a n = A074611 n

end A074611

/-! ## A074611.P11302061953424424931

`record[A227076(n)+A227074(n)]`
-/

namespace A074611.P11302061953424424931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227076 n + A227074 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074611.P11302061953424424931

namespace A074611

/-- `record[A227076(n)+A227074(n)]` -/
def P11302061953424424931.Spec : Prop :=
  ∀ n, P11302061953424424931.a n = A074611 n

end A074611

/-! ## A074611.P8986677002164161777

`record[A152568(n)²-A152572(n)]`
-/

namespace A074611.P8986677002164161777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152568 n ^ 2 - A152572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074611.P8986677002164161777

namespace A074611

/-- `record[A152568(n)²-A152572(n)]` -/
def P8986677002164161777.Spec : Prop :=
  ∀ n, P8986677002164161777.a n = A074611 n

end A074611

/-! ## A074611.P1238793242219910686

`2/A000079(n)*A060531(n)`
-/

namespace A074611.P1238793242219910686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000079 n : ℚ) * (A060531 n : ℚ)

end

end A074611.P1238793242219910686

namespace A074611

/-- `2/A000079(n)*A060531(n)` -/
def P1238793242219910686.Spec : Prop :=
  ∀ n, P1238793242219910686.a n = (A074611 n : ℚ)

end A074611

/-! ## A074611.P1514130476975610856

`A000051(n)/A007582(n)*A060531(n)`
-/

namespace A074611.P1514130476975610856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000051 n : ℚ) / (A007582 n : ℚ) * (A060531 n : ℚ)

end

end A074611.P1514130476975610856

namespace A074611

/-- `A000051(n)/A007582(n)*A060531(n)` -/
def P1514130476975610856.Spec : Prop :=
  ∀ n, P1514130476975610856.a n = (A074611 n : ℚ)

end A074611

/-! ## A074611.P17709187925820221381

`(A155616(n)+1)%∑[A169963(n)]`
-/

namespace A074611.P17709187925820221381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169963 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155616 n + 1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074611.P17709187925820221381

namespace A074611

/-- `(A155616(n)+1)%∑[A169963(n)]` -/
def P17709187925820221381.Spec : Prop :=
  ∀ n, P17709187925820221381.a n = A074611 n

end A074611

/-! ## A074611.P5976166898944995693

`(A011557(n)+A001018(n))/A000079(n)`
-/

namespace A074611.P5976166898944995693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011557 n + A001018 n : ℚ) / (A000079 n : ℚ)

end

end A074611.P5976166898944995693

namespace A074611

/-- `(A011557(n)+A001018(n))/A000079(n)` -/
def P5976166898944995693.Spec : Prop :=
  ∀ n, P5976166898944995693.a n = (A074611 n : ℚ)

end A074611

/-!
# A074612: a(n) = 4^n + 6^n.

The programs for A074612, the canonical program `A074612.P18231376859110003432` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074612 has offset 0).

The definition of A074612 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n+6^n` (program `A074612.P18231376859110003432`, by `A074612.P18231376859110003432.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074612.P18231376859110003432

`4^n+6^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074612

/-- `4^n+6^n` -/
def P18231376859110003432.Spec : Prop :=
  ∀ n, (P18231376859110003432.a n : ℤ) = A074612 n

theorem P18231376859110003432.correct : P18231376859110003432.Spec := by
  intro n
  simp only [A074612]

end A074612

/-! ## A074612.P549009660276521130

`ogf((2-10x)/(1-10x+24x^2))`
-/

namespace A074612.P549009660276521130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -10] [1, -10, 24] n

end

end A074612.P549009660276521130

namespace A074612

/-- `ogf((2-10x)/(1-10x+24x^2))` -/
def P549009660276521130.Spec : Prop :=
  ∀ n, P549009660276521130.a n = A074612 n

end A074612

/-! ## A074612.P13392720955521307162

`2*A081187(n)`
-/

namespace A074612.P13392720955521307162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081187 n

end

end A074612.P13392720955521307162

namespace A074612

/-- `2*A081187(n)` -/
def P13392720955521307162.Spec : Prop :=
  ∀ n, P13392720955521307162.a n = A074612 n

end A074612

/-! ## A074612.P11265200537104151856

`abs(1-A074512(n))`
-/

namespace A074612.P11265200537104151856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A074512 n|

end

end A074612.P11265200537104151856

namespace A074612

/-- `abs(1-A074512(n))` -/
def P11265200537104151856.Spec : Prop :=
  ∀ n, P11265200537104151856.a n = A074612 n

end A074612

/-! ## A074612.P7541950390533094723

`lcm(2, A155617(n)+1)`
-/

namespace A074612.P7541950390533094723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A155617 n + 1)

end

end A074612.P7541950390533094723

namespace A074612

/-- `lcm(2, A155617(n)+1)` -/
def P7541950390533094723.Spec : Prop :=
  ∀ n, (P7541950390533094723.a n : ℤ) = A074612 n

end A074612

/-! ## A074612.P8880165334835592236

`2^n*A007689(n)`
-/

namespace A074612.P8880165334835592236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A007689 n

end

end A074612.P8880165334835592236

namespace A074612

/-- `2^n*A007689(n)` -/
def P8880165334835592236.Spec : Prop :=
  ∀ n, P8880165334835592236.a n = A074612 n

end A074612

/-! ## A074612.P13097833120734931463

`2^n*Δ[A099754(n)]`
-/

namespace A074612.P13097833120734931463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (f1 (n + 1) - f1 n)

end

end A074612.P13097833120734931463

namespace A074612

/-- `2^n*Δ[A099754(n)]` -/
def P13097833120734931463.Spec : Prop :=
  ∀ n, P13097833120734931463.a n = A074612 n

end A074612

/-! ## A074612.P9390163387592917138

`(A001550(n)-1)*2^n`
-/

namespace A074612.P9390163387592917138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001550 n - 1) * (2 ^ n : ℤ)

end

end A074612.P9390163387592917138

namespace A074612

/-- `(A001550(n)-1)*2^n` -/
def P9390163387592917138.Spec : Prop :=
  ∀ n, P9390163387592917138.a n = A074612 n

end A074612

/-! ## A074612.P8556248033211202236

`(5*3^n-A214091(n))*2^(n-2)`
-/

namespace A074612.P8556248033211202236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 3 ^ n : ℤ) - A214091 n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A074612.P8556248033211202236

namespace A074612

/-- `(5*3^n-A214091(n))*2^(n-2)` -/
def P8556248033211202236.Spec : Prop :=
  ∀ n, P8556248033211202236.a n = (A074612 n : ℚ)

end A074612

/-! ## A074612.P1589587219545476597

`lcm(A000079(n), A007689(n))`
-/

namespace A074612.P1589587219545476597
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A007689 n)

end

end A074612.P1589587219545476597

namespace A074612

/-- `lcm(A000079(n), A007689(n))` -/
def P1589587219545476597.Spec : Prop :=
  ∀ n, (P1589587219545476597.a n : ℤ) = A074612 n

end A074612

/-! ## A074612.P14269705041714335057

`Δ[A094374(n)]*A000079(n)`
-/

namespace A074612.P14269705041714335057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094374 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000079 n

end

end A074612.P14269705041714335057

namespace A074612

/-- `Δ[A094374(n)]*A000079(n)` -/
def P14269705041714335057.Spec : Prop :=
  ∀ n, P14269705041714335057.a n = A074612 n

end A074612

/-! ## A074612.P16003753786217067700

`Δ[A099754(n)]*A000079(n)`
-/

namespace A074612.P16003753786217067700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000079 n

end

end A074612.P16003753786217067700

namespace A074612

/-- `Δ[A099754(n)]*A000079(n)` -/
def P16003753786217067700.Spec : Prop :=
  ∀ n, P16003753786217067700.a n = A074612 n

end A074612

/-! ## A074612.P17982669987489419967

`(A005056(n)+1)*A000079(n)`
-/

namespace A074612.P17982669987489419967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005056 n + 1) * A000079 n

end

end A074612.P17982669987489419967

namespace A074612

/-- `(A005056(n)+1)*A000079(n)` -/
def P17982669987489419967.Spec : Prop :=
  ∀ n, P17982669987489419967.a n = A074612 n

end A074612

/-! ## A074612.P7951293649104246092

`A007689(n)*A011782(n+1)`
-/

namespace A074612.P7951293649104246092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007689 n * A011782 (n + 1)

end

end A074612.P7951293649104246092

namespace A074612

/-- `A007689(n)*A011782(n+1)` -/
def P7951293649104246092.Spec : Prop :=
  ∀ n, P7951293649104246092.a n = A074612 n

end A074612

/-! ## A074612.P12270984280545834687

`A000079(n)*A085281(n+1)`
-/

namespace A074612.P12270984280545834687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A085281 (n + 1)

end

end A074612.P12270984280545834687

namespace A074612

/-- `A000079(n)*A085281(n+1)` -/
def P12270984280545834687.Spec : Prop :=
  ∀ n, P12270984280545834687.a n = A074612 n

end A074612

/-! ## A074612.P15309795417653384120

`A007689(n)*A131577(n+1)`
-/

namespace A074612.P15309795417653384120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007689 n * A131577 (n + 1)

end

end A074612.P15309795417653384120

namespace A074612

/-- `A007689(n)*A131577(n+1)` -/
def P15309795417653384120.Spec : Prop :=
  ∀ n, P15309795417653384120.a n = A074612 n

end A074612

/-! ## A074612.P9886128545480889481

`A007689(n)*A077957(2*n)`
-/

namespace A074612.P9886128545480889481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007689 n * A077957 (2 * n)

end

end A074612.P9886128545480889481

namespace A074612

/-- `A007689(n)*A077957(2*n)` -/
def P9886128545480889481.Spec : Prop :=
  ∀ n, P9886128545480889481.a n = A074612 n

end A074612

/-! ## A074612.P9986281576197285107

`A011782(n+1)*A085281(n+1)`
-/

namespace A074612.P9986281576197285107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) * A085281 (n + 1)

end

end A074612.P9986281576197285107

namespace A074612

/-- `A011782(n+1)*A085281(n+1)` -/
def P9986281576197285107.Spec : Prop :=
  ∀ n, P9986281576197285107.a n = A074612 n

end A074612

/-! ## A074612.P7107683760250694669

`A085281(n+1)*A131577(n+1)`
-/

namespace A074612.P7107683760250694669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085281 (n + 1) * A131577 (n + 1)

end

end A074612.P7107683760250694669

namespace A074612

/-- `A085281(n+1)*A131577(n+1)` -/
def P7107683760250694669.Spec : Prop :=
  ∀ n, P7107683760250694669.a n = A074612 n

end A074612

/-! ## A074612.P8185992586134720149

`(A000244(n)+A000079(n))*A000079(n)`
-/

namespace A074612.P8185992586134720149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 n + A000079 n) * A000079 n

end

end A074612.P8185992586134720149

namespace A074612

/-- `(A000244(n)+A000079(n))*A000079(n)` -/
def P8185992586134720149.Spec : Prop :=
  ∀ n, P8185992586134720149.a n = A074612 n

end A074612

/-!
# A074613: a(n) = 4^n + 7^n.

The programs for A074613, the canonical program `A074613.P17633161584751536381` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074613 has offset 0).

The definition of A074613 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n+7^n` (program `A074613.P17633161584751536381`, by `A074613.P17633161584751536381.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074613.P17633161584751536381

`4^n+7^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074613

/-- `4^n+7^n` -/
def P17633161584751536381.Spec : Prop :=
  ∀ n, (P17633161584751536381.a n : ℤ) = A074613 n

theorem P17633161584751536381.correct : P17633161584751536381.Spec := by
  intro n
  simp only [A074613]

end A074613

/-! ## A074613.P5286592403882251174

`ogf((2-11x)/(1-11x+28x^2))`
-/

namespace A074613.P5286592403882251174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -11] [1, -11, 28] n

end

end A074613.P5286592403882251174

namespace A074613

/-- `ogf((2-11x)/(1-11x+28x^2))` -/
def P5286592403882251174.Spec : Prop :=
  ∀ n, P5286592403882251174.a n = A074613 n

end A074613

/-! ## A074613.P15466544013441795530

`abs(1-A074513(n))`
-/

namespace A074613.P15466544013441795530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A074513 n|

end

end A074613.P15466544013441795530

namespace A074613

/-- `abs(1-A074513(n))` -/
def P15466544013441795530.Spec : Prop :=
  ∀ n, P15466544013441795530.a n = A074613 n

end A074613

/-! ## A074613.P1741079019286995422

`abs(A000244(n)-A074549(n))`
-/

namespace A074613.P1741079019286995422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000244 n - A074549 n|

end

end A074613.P1741079019286995422

namespace A074613

/-- `abs(A000244(n)-A074549(n))` -/
def P1741079019286995422.Spec : Prop :=
  ∀ n, P1741079019286995422.a n = A074613 n

end A074613

/-! ## A074613.P5359473288995546752

`∑[A055272(n)+A002001(n)]`
-/

namespace A074613.P5359473288995546752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055272 n + A002001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074613.P5359473288995546752

namespace A074613

/-- `∑[A055272(n)+A002001(n)]` -/
def P5359473288995546752.Spec : Prop :=
  ∀ n, P5359473288995546752.a n = A074613 n

end A074613

/-! ## A074613.P15290491501447030076

`Δ[A023000(n)+A002450(n)]`
-/

namespace A074613.P15290491501447030076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023000 n + A002450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074613.P15290491501447030076

namespace A074613

/-- `Δ[A023000(n)+A002450(n)]` -/
def P15290491501447030076.Spec : Prop :=
  ∀ n, P15290491501447030076.a n = A074613 n

end A074613

/-! ## A074613.P7122161020383459798

`Δ[A047852(n)+A047849(n)]`
-/

namespace A074613.P7122161020383459798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047852 n + A047849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074613.P7122161020383459798

namespace A074613

/-- `Δ[A047852(n)+A047849(n)]` -/
def P7122161020383459798.Spec : Prop :=
  ∀ n, P7122161020383459798.a n = A074613 n

end A074613

/-! ## A074613.P8024214547700102385

`or(A155618(n)+1, abs(A057428(n)))`
-/

namespace A074613.P8024214547700102385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A155618 n + 1) |A057428 n|

end

end A074613.P8024214547700102385

namespace A074613

/-- `or(A155618(n)+1, abs(A057428(n)))` -/
def P8024214547700102385.Spec : Prop :=
  ∀ n, P8024214547700102385.a n = A074613 n

end A074613

/-! ## A074613.P18164670568710503298

`or(A155618(n)+1, A010051(n+1))`
-/

namespace A074613.P18164670568710503298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A155618 n + 1) (A010051 (n + 1))

end

end A074613.P18164670568710503298

namespace A074613

/-- `or(A155618(n)+1, A010051(n+1))` -/
def P18164670568710503298.Spec : Prop :=
  ∀ n, P18164670568710503298.a n = A074613 n

end A074613

/-! ## A074613.P3272384325482768282

`or(A155618(n)+1, char[A054406(n+1)])`
-/

namespace A074613.P3272384325482768282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A155618 n + 1) ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A074613.P3272384325482768282

namespace A074613

/-- `or(A155618(n)+1, char[A054406(n+1)])` -/
def P3272384325482768282.Spec : Prop :=
  ∀ n, P3272384325482768282.a n = A074613 n

end A074613

/-! ## A074613.P2149795290063943627

`C(A155618(n)+1, A155618(n))`
-/

namespace A074613.P2149795290063943627
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A155618 n + 1).toNat (A155618 n).toNat

end

end A074613.P2149795290063943627

namespace A074613

/-- `C(A155618(n)+1, A155618(n))` -/
def P2149795290063943627.Spec : Prop :=
  ∀ n, (P2149795290063943627.a n : ℤ) = A074613 n

end A074613

/-! ## A074613.P13798680612250875713

`(A038845(n)+A027474(n+2))/A000217(n+1)`
-/

namespace A074613.P13798680612250875713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038845 n + A027474 (n + 2) : ℚ) / (A000217 (n + 1) : ℚ)

end

end A074613.P13798680612250875713

namespace A074613

/-- `(A038845(n)+A027474(n+2))/A000217(n+1)` -/
def P13798680612250875713.Spec : Prop :=
  ∀ n, P13798680612250875713.a n = (A074613 n : ℚ)

end A074613

/-!
# A074614: a(n) = 4^n + 9^n.

The programs for A074614, the canonical program `A074614.P16955876325207716964` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074614 has offset 0).

The definition of A074614 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n+9^n` (program `A074614.P16955876325207716964`, by `A074614.P16955876325207716964.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074614.P16955876325207716964

`4^n+9^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074614

/-- `4^n+9^n` -/
def P16955876325207716964.Spec : Prop :=
  ∀ n, (P16955876325207716964.a n : ℤ) = A074614 n

theorem P16955876325207716964.correct : P16955876325207716964.Spec := by
  intro n
  simp only [A074614]

end A074614

/-! ## A074614.P11440636607006178014

`ogf((2-13x)/(1-13x+36x^2))`
-/

namespace A074614.P11440636607006178014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -13] [1, -13, 36] n

end

end A074614.P11440636607006178014

namespace A074614

/-- `ogf((2-13x)/(1-13x+36x^2))` -/
def P11440636607006178014.Spec : Prop :=
  ∀ n, P11440636607006178014.a n = A074614 n

end A074614

/-! ## A074614.P13063512750564110228

`∑{p}[-a(n-1), #^(2*n)]` with `a(0)=6`
-/

namespace A074614.P13063512750564110228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ (2 * n)

end

end A074614.P13063512750564110228

namespace A074614

/-- `∑{p}[-a(n-1), #^(2*n)]` -/
def P13063512750564110228.Spec : Prop :=
  ∀ n, (P13063512750564110228.a n : ℤ) = A074614 n

end A074614

/-! ## A074614.P4259438444330443440

`A007689(2*n)`
-/

namespace A074614.P4259438444330443440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007689 (2 * n)

end

end A074614.P4259438444330443440

namespace A074614

/-- `A007689(2*n)` -/
def P4259438444330443440.Spec : Prop :=
  ∀ n, P4259438444330443440.a n = A074614 n

end A074614

/-! ## A074614.P13211512641887398674

`A087451(2*n)`
-/

namespace A074614.P13211512641887398674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087451 (2 * n)

end

end A074614.P13211512641887398674

namespace A074614

/-- `A087451(2*n)` -/
def P13211512641887398674.Spec : Prop :=
  ∀ n, P13211512641887398674.a n = A074614 n

end A074614

/-! ## A074614.P7075168636254526770

`A085281(Δ[n²])`
-/

namespace A074614.P7075168636254526770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085281 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A074614.P7075168636254526770

namespace A074614

/-- `A085281(Δ[n²])` -/
def P7075168636254526770.Spec : Prop :=
  ∀ n, P7075168636254526770.a n = A074614 n

end A074614

/-! ## A074614.P2570195983921629642

`abs(A001550(2*n)-1)`
-/

namespace A074614.P2570195983921629642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001550 (2 * n) - 1|

end

end A074614.P2570195983921629642

namespace A074614

/-- `abs(A001550(2*n)-1)` -/
def P2570195983921629642.Spec : Prop :=
  ∀ n, P2570195983921629642.a n = A074614 n

end A074614

/-! ## A074614.P12443241525157439860

`A229194(3*(n+1)+n)`
-/

namespace A074614.P12443241525157439860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229194 (3 * (n + 1) + n)

end

end A074614.P12443241525157439860

namespace A074614

/-- `A229194(3*(n+1)+n)` -/
def P12443241525157439860.Spec : Prop :=
  ∀ n, P12443241525157439860.a n = A074614 n

end A074614

/-! ## A074614.P7018621807663451502

`Δ[A093379(2*n+1)/2]`
-/

namespace A074614.P7018621807663451502
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093379 (2 * n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074614.P7018621807663451502

namespace A074614

/-- `Δ[A093379(2*n+1)/2]` -/
def P7018621807663451502.Spec : Prop :=
  ∀ n, P7018621807663451502.a n = (A074614 n : ℚ)

end A074614

/-! ## A074614.P17401279528155396291

`xor(1, xor(1, A085281(2*n+1)))`
-/

namespace A074614.P17401279528155396291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A085281 (2 * n + 1)))

end

end A074614.P17401279528155396291

namespace A074614

/-- `xor(1, xor(1, A085281(2*n+1)))` -/
def P17401279528155396291.Spec : Prop :=
  ∀ n, P17401279528155396291.a n = A074614 n

end A074614

/-! ## A074614.P6235341469361510464

`Δ[A047849(n)+A002452(n)]`
-/

namespace A074614.P6235341469361510464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047849 n + A002452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074614.P6235341469361510464

namespace A074614

/-- `Δ[A047849(n)+A002452(n)]` -/
def P6235341469361510464.Spec : Prop :=
  ∀ n, P6235341469361510464.a n = A074614 n

end A074614

/-! ## A074614.P9424094314304074834

`abs(A155619(n)+A074623(n)+1-A074622(n))`
-/

namespace A074614.P9424094314304074834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155619 n + (A074623 n + 1 - A074622 n)|

end

end A074614.P9424094314304074834

namespace A074614

/-- `abs(A155619(n)+A074623(n)+1-A074622(n))` -/
def P9424094314304074834.Spec : Prop :=
  ∀ n, P9424094314304074834.a n = A074614 n

end A074614

/-! ## A074614.P10847467938741878386

`abs(A155619(n)+A001019(n)+1-A000079(3*n))`
-/

namespace A074614.P10847467938741878386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155619 n + (A001019 n + 1 - A000079 (3 * n))|

end

end A074614.P10847467938741878386

namespace A074614

/-- `abs(A155619(n)+A001019(n)+1-A000079(3*n))` -/
def P10847467938741878386.Spec : Prop :=
  ∀ n, P10847467938741878386.a n = A074614 n

end A074614

/-! ## A074614.P11608358345685957460

`abs(A155619(n)+A000244(n)²+1-A000079(3*n))`
-/

namespace A074614.P11608358345685957460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155619 n + (A000244 n ^ 2 + 1 - A000079 (3 * n))|

end

end A074614.P11608358345685957460

namespace A074614

/-- `abs(A155619(n)+A000244(n)²+1-A000079(3*n))` -/
def P11608358345685957460.Spec : Prop :=
  ∀ n, P11608358345685957460.a n = A074614 n

end A074614

/-! ## A074614.P4143823368503839608

`A094125(2*n+1)/6`
-/

namespace A074614.P4143823368503839608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094125 (2 * n + 1) : ℚ) / 6

end

end A074614.P4143823368503839608

namespace A074614

/-- `A094125(2*n+1)/6` -/
def P4143823368503839608.Spec : Prop :=
  ∀ n, P4143823368503839608.a n = (A074614 n : ℚ)

end A074614

/-! ## A074614.P16355849492510945720

`(A027649(2*n+1)-A145563(2*n))/2`
-/

namespace A074614.P16355849492510945720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027649 (2 * n + 1) - A145563 (2 * n) : ℚ) / 2

end

end A074614.P16355849492510945720

namespace A074614

/-- `(A027649(2*n+1)-A145563(2*n))/2` -/
def P16355849492510945720.Spec : Prop :=
  ∀ n, P16355849492510945720.a n = (A074614 n : ℚ)

end A074614

/-!
# A074615: a(n) = 5^n + 6^n.

The programs for A074615, the canonical program `A074615.P3230879015559903895` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074615 has offset 0).

The definition of A074615 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n+6^n` (program `A074615.P3230879015559903895`, by `A074615.P3230879015559903895.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074615.P3230879015559903895

`5^n+6^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074615

/-- `5^n+6^n` -/
def P3230879015559903895.Spec : Prop :=
  ∀ n, (P3230879015559903895.a n : ℤ) = A074615 n

theorem P3230879015559903895.correct : P3230879015559903895.Spec := by
  intro n
  simp only [A074615]

end A074615

/-! ## A074615.P1250329884379249424

`ogf((2-11x)/(1-11x+30x^2))`
-/

namespace A074615.P1250329884379249424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -11] [1, -11, 30] n

end

end A074615.P1250329884379249424

namespace A074615

/-- `ogf((2-11x)/(1-11x+30x^2))` -/
def P1250329884379249424.Spec : Prop :=
  ∀ n, P1250329884379249424.a n = A074615 n

end A074615

/-! ## A074615.P16140357825270829953

`abs(1-A074516(n))`
-/

namespace A074615.P16140357825270829953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A074516 n|

end

end A074615.P16140357825270829953

namespace A074615

/-- `abs(1-A074516(n))` -/
def P16140357825270829953.Spec : Prop :=
  ∀ n, P16140357825270829953.a n = A074615 n

end A074615

/-! ## A074615.P11859970182261994408

`abs(A001579(n)-3^n)`
-/

namespace A074615.P11859970182261994408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001579 n - (3 ^ n : ℤ)|

end

end A074615.P11859970182261994408

namespace A074615

/-- `abs(A001579(n)-3^n)` -/
def P11859970182261994408.Spec : Prop :=
  ∀ n, P11859970182261994408.a n = A074615 n

end A074615

/-! ## A074615.P1002195887308404235

`abs(A000244(n)-A001579(n))`
-/

namespace A074615.P1002195887308404235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000244 n - A001579 n|

end

end A074615.P1002195887308404235

namespace A074615

/-- `abs(A000244(n)-A001579(n))` -/
def P1002195887308404235.Spec : Prop :=
  ∀ n, P1002195887308404235.a n = A074615 n

end A074615

/-! ## A074615.P7868138353482319151

`abs(A001551(n)-A001553(n))`
-/

namespace A074615.P7868138353482319151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001551 n - A001553 n|

end

end A074615.P7868138353482319151

namespace A074615

/-- `abs(A001551(n)-A001553(n))` -/
def P7868138353482319151.Spec : Prop :=
  ∀ n, P7868138353482319151.a n = A074615 n

end A074615

/-! ## A074615.P1341190615402328825

`abs(A283456(n)-A283457(n))`
-/

namespace A074615.P1341190615402328825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A283456 n - A283457 n|

end

end A074615.P1341190615402328825

namespace A074615

/-- `abs(A283456(n)-A283457(n))` -/
def P1341190615402328825.Spec : Prop :=
  ∀ n, P1341190615402328825.a n = A074615 n

end A074615

/-! ## A074615.P11590928626853498366

`∑[A052934(n)+A005054(n)]`
-/

namespace A074615.P11590928626853498366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052934 n + A005054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074615.P11590928626853498366

namespace A074615

/-- `∑[A052934(n)+A005054(n)]` -/
def P11590928626853498366.Spec : Prop :=
  ∀ n, P11590928626853498366.a n = A074615 n

end A074615

/-! ## A074615.P8957552931015615387

`Δ[A003464(n)+A003463(n)]`
-/

namespace A074615.P8957552931015615387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003464 n + A003463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074615.P8957552931015615387

namespace A074615

/-- `Δ[A003464(n)+A003463(n)]` -/
def P8957552931015615387.Spec : Prop :=
  ∀ n, P8957552931015615387.a n = A074615 n

end A074615

/-! ## A074615.P3697140645597177103

`Δ[A003463(n)+A152596(n)/2]`
-/

namespace A074615.P3697140645597177103
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003463 n : ℚ) + (A152596 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074615.P3697140645597177103

namespace A074615

/-- `Δ[A003463(n)+A152596(n)/2]` -/
def P3697140645597177103.Spec : Prop :=
  ∀ n, P3697140645597177103.a n = (A074615 n : ℚ)

end A074615

/-! ## A074615.P10492171427939278628

`abs(A000420(n)-A074571(n))`
-/

namespace A074615.P10492171427939278628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000420 n - A074571 n|

end

end A074615.P10492171427939278628

namespace A074615

/-- `abs(A000420(n)-A074571(n))` -/
def P10492171427939278628.Spec : Prop :=
  ∀ n, P10492171427939278628.a n = A074615 n

end A074615

/-!
# A074616: a(n) = 5^n + 7^n.

The programs for A074616, the canonical program `A074616.P1217150069312467191` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074616 has offset 0).

The definition of A074616 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n+7^n` (program `A074616.P1217150069312467191`, by `A074616.P1217150069312467191.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074616.P1217150069312467191

`5^n+7^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074616

/-- `5^n+7^n` -/
def P1217150069312467191.Spec : Prop :=
  ∀ n, (P1217150069312467191.a n : ℤ) = A074616 n

theorem P1217150069312467191.correct : P1217150069312467191.Spec := by
  intro n
  simp only [A074616]

end A074616

/-! ## A074616.P5951279915579856017

`ogf((2-12x)/(1-12x+35x^2))`
-/

namespace A074616.P5951279915579856017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -12] [1, -12, 35] n

end

end A074616.P5951279915579856017

namespace A074616

/-- `ogf((2-12x)/(1-12x+35x^2))` -/
def P5951279915579856017.Spec : Prop :=
  ∀ n, P5951279915579856017.a n = A074616 n

end A074616

/-! ## A074616.P16680592892612832498

`2*A081188(n)`
-/

namespace A074616.P16680592892612832498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081188 n

end

end A074616.P16680592892612832498

namespace A074616

/-- `2*A081188(n)` -/
def P16680592892612832498.Spec : Prop :=
  ∀ n, P16680592892612832498.a n = A074616 n

end A074616

/-! ## A074616.P17605767587905031313

`abs(1-A074517(n))`
-/

namespace A074616.P17605767587905031313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A074517 n|

end

end A074616.P17605767587905031313

namespace A074616

/-- `abs(1-A074517(n))` -/
def P17605767587905031313.Spec : Prop :=
  ∀ n, P17605767587905031313.a n = A074616 n

end A074616

/-! ## A074616.P6145983152808154287

`abs(2*n-A121200(n))`
-/

namespace A074616.P6145983152808154287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - A121200 n|

end

end A074616.P6145983152808154287

namespace A074616

/-- `abs(2*n-A121200(n))` -/
def P6145983152808154287.Spec : Prop :=
  ∀ n, P6145983152808154287.a n = A074616 n

end A074616

/-! ## A074616.P7521666399548624444

`abs(3^n-2^n-A135167(n))`
-/

namespace A074616.P7521666399548624444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 ^ n : ℤ) - (2 ^ n : ℤ) - A135167 n|

end

end A074616.P7521666399548624444

namespace A074616

/-- `abs(3^n-2^n-A135167(n))` -/
def P7521666399548624444.Spec : Prop :=
  ∀ n, P7521666399548624444.a n = A074616 n

end A074616

/-! ## A074616.P4673754206116278658

`abs(A000244(n)-A074552(n))`
-/

namespace A074616.P4673754206116278658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000244 n - A074552 n|

end

end A074616.P4673754206116278658

namespace A074616

/-- `abs(A000244(n)-A074552(n))` -/
def P4673754206116278658.Spec : Prop :=
  ∀ n, P4673754206116278658.a n = A074616 n

end A074616

/-! ## A074616.P8844188421718435563

`∑[A055272(n)+A005054(n)]`
-/

namespace A074616.P8844188421718435563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055272 n + A005054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074616.P8844188421718435563

namespace A074616

/-- `∑[A055272(n)+A005054(n)]` -/
def P8844188421718435563.Spec : Prop :=
  ∀ n, P8844188421718435563.a n = A074616 n

end A074616

/-! ## A074616.P6401512058556564431

`Δ[A023000(n)+A003463(n)]`
-/

namespace A074616.P6401512058556564431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023000 n + A003463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074616.P6401512058556564431

namespace A074616

/-- `Δ[A023000(n)+A003463(n)]` -/
def P6401512058556564431.Spec : Prop :=
  ∀ n, P6401512058556564431.a n = A074616 n

end A074616

/-! ## A074616.P4498125844911459408

`2*(A120741(n)+A034478(n))`
-/

namespace A074616.P4498125844911459408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A120741 n + A034478 n)

end

end A074616.P4498125844911459408

namespace A074616

/-- `2*(A120741(n)+A034478(n))` -/
def P4498125844911459408.Spec : Prop :=
  ∀ n, P4498125844911459408.a n = A074616 n

end A074616

/-! ## A074616.P5098986612660930173

`(A135167(n)+A135166(n))/2`
-/

namespace A074616.P5098986612660930173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135167 n + A135166 n : ℚ) / 2

end

end A074616.P5098986612660930173

namespace A074616

/-- `(A135167(n)+A135166(n))/2` -/
def P5098986612660930173.Spec : Prop :=
  ∀ n, P5098986612660930173.a n = (A074616 n : ℚ)

theorem P5098986612660930173.correct : P5098986612660930173.Spec := by
  intro n
  simp only [A074616, Nat.add_sub_cancel, A074616.P5098986612660930173.a, A074616.P1217150069312467191.a, A135166, A135166.P6805597353140494519.a, A135167, A135167.P2904130348192986132.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A074616

/-! ## A074616.P5256280949715426643

`(A000420(n)+A000351(n))*A053186(n²)!`
-/

namespace A074616.P5256280949715426643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000420 n + A000351 n) * (Nat.factorial (A053186 (n ^ 2)).toNat : ℤ)

end

end A074616.P5256280949715426643

namespace A074616

/-- `(A000420(n)+A000351(n))*A053186(n²)!` -/
def P5256280949715426643.Spec : Prop :=
  ∀ n, P5256280949715426643.a n = A074616 n

end A074616

/-!
# A074617: a(n) = 5^n + 8^n.

The programs for A074617, the canonical program `A074617.P8814488106222779027` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074617 has offset 0).

The definition of A074617 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n+8^n` (program `A074617.P8814488106222779027`, by `A074617.P8814488106222779027.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074617.P8814488106222779027

`5^n+8^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074617

/-- `5^n+8^n` -/
def P8814488106222779027.Spec : Prop :=
  ∀ n, (P8814488106222779027.a n : ℤ) = A074617 n

theorem P8814488106222779027.correct : P8814488106222779027.Spec := by
  intro n
  simp only [A074617]

end A074617

/-! ## A074617.P472152206005131743

`ogf((2-13x)/(1-13x+40x^2))`
-/

namespace A074617.P472152206005131743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -13] [1, -13, 40] n

end

end A074617.P472152206005131743

namespace A074617

/-- `ogf((2-13x)/(1-13x+40x^2))` -/
def P472152206005131743.Spec : Prop :=
  ∀ n, P472152206005131743.a n = A074617 n

end A074617

/-! ## A074617.P16459521635274326821

`abs(1-A074518(n))`
-/

namespace A074617.P16459521635274326821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A074518 n|

end

end A074617.P16459521635274326821

namespace A074617

/-- `abs(1-A074518(n))` -/
def P16459521635274326821.Spec : Prop :=
  ∀ n, P16459521635274326821.a n = A074617 n

end A074617

/-! ## A074617.P2994541220474442375

`xor(5^n-1, A062395(n))`
-/

namespace A074617.P2994541220474442375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((5 ^ n : ℤ) - 1) (A062395 n)

end

end A074617.P2994541220474442375

namespace A074617

/-- `xor(5^n-1, A062395(n))` -/
def P2994541220474442375.Spec : Prop :=
  ∀ n, P2994541220474442375.a n = A074617 n

end A074617

/-! ## A074617.P11891993833089739465

`∑[A055274(n)+A005054(n)]`
-/

namespace A074617.P11891993833089739465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055274 n + A005054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074617.P11891993833089739465

namespace A074617

/-- `∑[A055274(n)+A005054(n)]` -/
def P11891993833089739465.Spec : Prop :=
  ∀ n, P11891993833089739465.a n = A074617 n

end A074617

/-! ## A074617.P1216976713368540731

`Δ[A023001(n)+A003463(n)]`
-/

namespace A074617.P1216976713368540731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023001 n + A003463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074617.P1216976713368540731

namespace A074617

/-- `Δ[A023001(n)+A003463(n)]` -/
def P1216976713368540731.Spec : Prop :=
  ∀ n, P1216976713368540731.a n = A074617 n

end A074617

/-! ## A074617.P7107887351590391982

`Δ[A047853(n)+A003463(n)]`
-/

namespace A074617.P7107887351590391982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047853 n + A003463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074617.P7107887351590391982

namespace A074617

/-- `Δ[A047853(n)+A003463(n)]` -/
def P7107887351590391982.Spec : Prop :=
  ∀ n, P7107887351590391982.a n = A074617 n

end A074617

/-! ## A074617.P2734030419315818743

`Δ[A047850(n)+A023001(n)]`
-/

namespace A074617.P2734030419315818743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047850 n + A023001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074617.P2734030419315818743

namespace A074617

/-- `Δ[A047850(n)+A023001(n)]` -/
def P2734030419315818743.Spec : Prop :=
  ∀ n, P2734030419315818743.a n = A074617 n

end A074617

/-! ## A074617.P17149650894895053605

`C(A155635(n)+1, A155635(n))`
-/

namespace A074617.P17149650894895053605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A155635 n + 1).toNat (A155635 n).toNat

end

end A074617.P17149650894895053605

namespace A074617

/-- `C(A155635(n)+1, A155635(n))` -/
def P17149650894895053605.Spec : Prop :=
  ∀ n, (P17149650894895053605.a n : ℤ) = A074617 n

end A074617

/-! ## A074617.P3201721356761430205

`or(A155635(n)+1, A000035(n))`
-/

namespace A074617.P3201721356761430205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A155635 n + 1) (A000035 n)

end

end A074617.P3201721356761430205

namespace A074617

/-- `or(A155635(n)+1, A000035(n))` -/
def P3201721356761430205.Spec : Prop :=
  ∀ n, P3201721356761430205.a n = A074617 n

end A074617

/-! ## A074617.P14932004572847442065

`(A155635(n)+1)*A007318(∑[n])`
-/

namespace A074617.P14932004572847442065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155635 n + 1) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074617.P14932004572847442065

namespace A074617

/-- `(A155635(n)+1)*A007318(∑[n])` -/
def P14932004572847442065.Spec : Prop :=
  ∀ n, P14932004572847442065.a n = A074617 n

end A074617

/-!
# A074618: a(n) = 5^n + 9^n.

The programs for A074618, the canonical program `A074618.P15232598785644778021` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074618 has offset 0).

The definition of A074618 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n+9^n` (program `A074618.P15232598785644778021`, by `A074618.P15232598785644778021.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074618.P15232598785644778021

`5^n+9^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074618

/-- `5^n+9^n` -/
def P15232598785644778021.Spec : Prop :=
  ∀ n, (P15232598785644778021.a n : ℤ) = A074618 n

theorem P15232598785644778021.correct : P15232598785644778021.Spec := by
  intro n
  simp only [A074618]

end A074618

/-! ## A074618.P11284825802971450377

`ogf((2-14x)/(1-14x+45x^2))`
-/

namespace A074618.P11284825802971450377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -14] [1, -14, 45] n

end

end A074618.P11284825802971450377

namespace A074618

/-- `ogf((2-14x)/(1-14x+45x^2))` -/
def P11284825802971450377.Spec : Prop :=
  ∀ n, P11284825802971450377.a n = A074618 n

end A074618

/-! ## A074618.P16681466548357277196

`2*A081338(n)`
-/

namespace A074618.P16681466548357277196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081338 n

end

end A074618.P16681466548357277196

namespace A074618

/-- `2*A081338(n)` -/
def P16681466548357277196.Spec : Prop :=
  ∀ n, P16681466548357277196.a n = A074618 n

end A074618

/-! ## A074618.P3372109906247053874

`xor(1, A074519(n))`
-/

namespace A074618.P3372109906247053874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A074519 n)

end

end A074618.P3372109906247053874

namespace A074618

/-- `xor(1, A074519(n))` -/
def P3372109906247053874.Spec : Prop :=
  ∀ n, P3372109906247053874.a n = A074618 n

end A074618

/-! ## A074618.P17944435855106985007

`xor(3, A155636(n))`
-/

namespace A074618.P17944435855106985007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A155636 n)

end

end A074618.P17944435855106985007

namespace A074618

/-- `xor(3, A155636(n))` -/
def P17944435855106985007.Spec : Prop :=
  ∀ n, P17944435855106985007.a n = A074618 n

end A074618

/-! ## A074618.P14360193717843454588

`record[A155636(A213714(n))+1]`
-/

namespace A074618.P14360193717843454588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155636 (A213714 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074618.P14360193717843454588

namespace A074618

/-- `record[A155636(A213714(n))+1]` -/
def P14360193717843454588.Spec : Prop :=
  ∀ n, P14360193717843454588.a n = A074618 n

end A074618

/-! ## A074618.P17058382644736318073

`record[A155636(A234017(n))+1]`
-/

namespace A074618.P17058382644736318073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155636 (A234017 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074618.P17058382644736318073

namespace A074618

/-- `record[A155636(A234017(n))+1]` -/
def P17058382644736318073.Spec : Prop :=
  ∀ n, P17058382644736318073.a n = A074618 n

end A074618

/-! ## A074618.P14854695579148553701

`abs(A000244(n)-A074554(n))`
-/

namespace A074618.P14854695579148553701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000244 n - A074554 n|

end

end A074618.P14854695579148553701

namespace A074618

/-- `abs(A000244(n)-A074554(n))` -/
def P14854695579148553701.Spec : Prop :=
  ∀ n, P14854695579148553701.a n = A074618 n

end A074618

/-! ## A074618.P16268090241255056938

`∑[A055275(n)+A005054(n)]`
-/

namespace A074618.P16268090241255056938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055275 n + A005054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074618.P16268090241255056938

namespace A074618

/-- `∑[A055275(n)+A005054(n)]` -/
def P16268090241255056938.Spec : Prop :=
  ∀ n, P16268090241255056938.a n = A074618 n

end A074618

/-! ## A074618.P7709437364864124967

`Δ[A003463(n)+A002452(n)]`
-/

namespace A074618.P7709437364864124967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n + A002452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074618.P7709437364864124967

namespace A074618

/-- `Δ[A003463(n)+A002452(n)]` -/
def P7709437364864124967.Spec : Prop :=
  ∀ n, P7709437364864124967.a n = A074618 n

end A074618

/-! ## A074618.P13010702505227289057

`2*(A081202(n)+A081188(n))`
-/

namespace A074618.P13010702505227289057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A081202 n + A081188 n)

end

end A074618.P13010702505227289057

namespace A074618

/-- `2*(A081202(n)+A081188(n))` -/
def P13010702505227289057.Spec : Prop :=
  ∀ n, P13010702505227289057.a n = A074618 n

end A074618

/-! ## A074618.P9717764638966795201

`2*(A191681(n)+A034478(n))`
-/

namespace A074618.P9717764638966795201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A191681 n + A034478 n)

end

end A074618.P9717764638966795201

namespace A074618

/-- `2*(A191681(n)+A034478(n))` -/
def P9717764638966795201.Spec : Prop :=
  ∀ n, P9717764638966795201.a n = A074618 n

end A074618

/-! ## A074618.P7308641688719260228

`2*(A081190(n)-A081200(n))`
-/

namespace A074618.P7308641688719260228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A081190 n - A081200 n)

end

end A074618.P7308641688719260228

namespace A074618

/-- `2*(A081190(n)-A081200(n))` -/
def P7308641688719260228.Spec : Prop :=
  ∀ n, P7308641688719260228.a n = A074618 n

end A074618

/-! ## A074618.P3061086124297027008

`record[A227076(n)+A098355(n)²]`
-/

namespace A074618.P3061086124297027008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227076 n + A098355 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074618.P3061086124297027008

namespace A074618

/-- `record[A227076(n)+A098355(n)²]` -/
def P3061086124297027008.Spec : Prop :=
  ∀ n, P3061086124297027008.a n = A074618 n

end A074618

/-! ## A074618.P17455434391674258065

`record[A227076(n)+A227075(n)²]`
-/

namespace A074618.P17455434391674258065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227076 n + A227075 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074618.P17455434391674258065

namespace A074618

/-- `record[A227076(n)+A227075(n)²]` -/
def P17455434391674258065.Spec : Prop :=
  ∀ n, P17455434391674258065.a n = A074618 n

end A074618

/-! ## A074618.P2351767221459989363

`Δ[A003463(n)+A191681(n)/4]`
-/

namespace A074618.P2351767221459989363
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003463 n : ℚ) + (A191681 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074618.P2351767221459989363

namespace A074618

/-- `Δ[A003463(n)+A191681(n)/4]` -/
def P2351767221459989363.Spec : Prop :=
  ∀ n, P2351767221459989363.a n = (A074618 n : ℚ)

end A074618

/-! ## A074618.P423109241984461498

`2*floor((A155596(n)+A155593(n))/2)`
-/

namespace A074618.P423109241984461498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(A155596 n + A155593 n : ℚ) / 2⌋

end

end A074618.P423109241984461498

namespace A074618

/-- `2*floor((A155596(n)+A155593(n))/2)` -/
def P423109241984461498.Spec : Prop :=
  ∀ n, P423109241984461498.a n = A074618 n

end A074618

/-! ## A074618.P17291052319036995715

`(A155596(n)+A155593(n))*A006519(2*n+1)`
-/

namespace A074618.P17291052319036995715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155596 n + A155593 n) * A006519 (2 * n + 1)

end

end A074618.P17291052319036995715

namespace A074618

/-- `(A155596(n)+A155593(n))*A006519(2*n+1)` -/
def P17291052319036995715.Spec : Prop :=
  ∀ n, P17291052319036995715.a n = A074618 n

end A074618

/-!
# A074619: a(n) = 6^n + 7^n.

The programs for A074619, the canonical program `A074619.P5107111466550013292` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074619 has offset 0).

The definition of A074619 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n+7^n` (program `A074619.P5107111466550013292`, by `A074619.P5107111466550013292.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074619.P5107111466550013292

`6^n+7^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074619

/-- `6^n+7^n` -/
def P5107111466550013292.Spec : Prop :=
  ∀ n, (P5107111466550013292.a n : ℤ) = A074619 n

theorem P5107111466550013292.correct : P5107111466550013292.Spec := by
  intro n
  simp only [A074619]

end A074619

/-! ## A074619.P5654355110325845813

`ogf((2-13x)/(1-13x+42x^2))`
-/

namespace A074619.P5654355110325845813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -13] [1, -13, 42] n

end

end A074619.P5654355110325845813

namespace A074619

/-- `ogf((2-13x)/(1-13x+42x^2))` -/
def P5654355110325845813.Spec : Prop :=
  ∀ n, P5654355110325845813.a n = A074619 n

end A074619

/-! ## A074619.P7201358215562791332

`abs(1-A074520(n))`
-/

namespace A074619.P7201358215562791332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A074520 n|

end

end A074619.P7201358215562791332

namespace A074619

/-- `abs(1-A074520(n))` -/
def P7201358215562791332.Spec : Prop :=
  ∀ n, P7201358215562791332.a n = A074619 n

end A074619

/-! ## A074619.P1097751491229325509

`abs(A001552(n)-A001554(n))`
-/

namespace A074619.P1097751491229325509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001552 n - A001554 n|

end

end A074619.P1097751491229325509

namespace A074619

/-- `abs(A001552(n)-A001554(n))` -/
def P1097751491229325509.Spec : Prop :=
  ∀ n, P1097751491229325509.a n = A074619 n

end A074619

/-! ## A074619.P15651633333881157971

`abs(A000244(n)-A074555(n))`
-/

namespace A074619.P15651633333881157971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000244 n - A074555 n|

end

end A074619.P15651633333881157971

namespace A074619

/-- `abs(A000244(n)-A074555(n))` -/
def P15651633333881157971.Spec : Prop :=
  ∀ n, P15651633333881157971.a n = A074619 n

end A074619

/-! ## A074619.P12018780043994404904

`∑[A055272(n)+A052934(n)]`
-/

namespace A074619.P12018780043994404904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055272 n + A052934 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074619.P12018780043994404904

namespace A074619

/-- `∑[A055272(n)+A052934(n)]` -/
def P12018780043994404904.Spec : Prop :=
  ∀ n, P12018780043994404904.a n = A074619 n

end A074619

/-! ## A074619.P3963823681319128878

`Δ[A023000(n)+A003464(n)]`
-/

namespace A074619.P3963823681319128878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023000 n + A003464 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074619.P3963823681319128878

namespace A074619

/-- `Δ[A023000(n)+A003464(n)]` -/
def P3963823681319128878.Spec : Prop :=
  ∀ n, P3963823681319128878.a n = A074619 n

end A074619

/-! ## A074619.P17546413693821417704

`Δ[A047852(n)+A047851(n)]`
-/

namespace A074619.P17546413693821417704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047852 n + A047851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074619.P17546413693821417704

namespace A074619

/-- `Δ[A047852(n)+A047851(n)]` -/
def P17546413693821417704.Spec : Prop :=
  ∀ n, P17546413693821417704.a n = A074619 n

end A074619

/-! ## A074619.P17831082366113601096

`abs(A062394(n)+A000420(n)-1)`
-/

namespace A074619.P17831082366113601096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A062394 n + (A000420 n - 1)|

end

end A074619.P17831082366113601096

namespace A074619

/-- `abs(A062394(n)+A000420(n)-1)` -/
def P17831082366113601096.Spec : Prop :=
  ∀ n, P17831082366113601096.a n = A074619 n

end A074619

/-! ## A074619.P12426910357279927759

`Δ[A003464(n)+A125725(n+1)/2]`
-/

namespace A074619.P12426910357279927759
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003464 n : ℚ) + (A125725 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074619.P12426910357279927759

namespace A074619

/-- `Δ[A003464(n)+A125725(n+1)/2]` -/
def P12426910357279927759.Spec : Prop :=
  ∀ n, P12426910357279927759.a n = (A074619 n : ℚ)

end A074619

/-! ## A074619.P5075569026133588273

`Δ[A047851(n)+A125725(n+1)/2]`
-/

namespace A074619.P5075569026133588273
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047851 n : ℚ) + (A125725 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074619.P5075569026133588273

namespace A074619

/-- `Δ[A047851(n)+A125725(n+1)/2]` -/
def P5075569026133588273.Spec : Prop :=
  ∀ n, P5075569026133588273.a n = (A074619 n : ℚ)

end A074619

/-!
# A074620: a(n) = 6^n + 8^n.

The programs for A074620, the canonical program `A074620.P2810001240065533373` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074620 has offset 0).

The definition of A074620 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n+8^n` (program `A074620.P2810001240065533373`, by `A074620.P2810001240065533373.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074620.P2810001240065533373

`6^n+8^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074620

/-- `6^n+8^n` -/
def P2810001240065533373.Spec : Prop :=
  ∀ n, (P2810001240065533373.a n : ℤ) = A074620 n

theorem P2810001240065533373.correct : P2810001240065533373.Spec := by
  intro n
  simp only [A074620]

end A074620

/-! ## A074620.P7569804074188367119

`ogf((2-14x)/(1-14x+48x^2))`
-/

namespace A074620.P7569804074188367119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -14] [1, -14, 48] n

end

end A074620.P7569804074188367119

namespace A074620

/-- `ogf((2-14x)/(1-14x+48x^2))` -/
def P7569804074188367119.Spec : Prop :=
  ∀ n, P7569804074188367119.a n = A074620 n

end A074620

/-! ## A074620.P18381827432972916640

`2*A081189(n)`
-/

namespace A074620.P18381827432972916640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081189 n

end

end A074620.P18381827432972916640

namespace A074620

/-- `2*A081189(n)` -/
def P18381827432972916640.Spec : Prop :=
  ∀ n, P18381827432972916640.a n = A074620 n

end A074620

/-! ## A074620.P14841159431708670495

`xor(1, A074521(n))`
-/

namespace A074620.P14841159431708670495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A074521 n)

end

end A074620.P14841159431708670495

namespace A074620

/-- `xor(1, A074521(n))` -/
def P14841159431708670495.Spec : Prop :=
  ∀ n, P14841159431708670495.a n = A074620 n

end A074620

/-! ## A074620.P5182107614197436944

`lcm(2, A155646(n)+1)`
-/

namespace A074620.P5182107614197436944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A155646 n + 1)

end

end A074620.P5182107614197436944

namespace A074620

/-- `lcm(2, A155646(n)+1)` -/
def P5182107614197436944.Spec : Prop :=
  ∀ n, (P5182107614197436944.a n : ℤ) = A074620 n

end A074620

/-! ## A074620.P4052486383234521802

`2^n*A074605(n)`
-/

namespace A074620.P4052486383234521802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A074605 n

end

end A074620.P4052486383234521802

namespace A074620

/-- `2^n*A074605(n)` -/
def P4052486383234521802.Spec : Prop :=
  ∀ n, P4052486383234521802.a n = A074620 n

end A074620

/-! ## A074620.P5853867623855101282

`(A074506(n)-1)*2^n`
-/

namespace A074620.P5853867623855101282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074506 n - 1) * (2 ^ n : ℤ)

end

end A074620.P5853867623855101282

namespace A074620

/-- `(A074506(n)-1)*2^n` -/
def P5853867623855101282.Spec : Prop :=
  ∀ n, P5853867623855101282.a n = A074620 n

end A074620

/-! ## A074620.P14243139653484082966

`lcm(A000079(n), A074605(n))`
-/

namespace A074620.P14243139653484082966
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A074605 n)

end

end A074620.P14243139653484082966

namespace A074620

/-- `lcm(A000079(n), A074605(n))` -/
def P14243139653484082966.Spec : Prop :=
  ∀ n, (P14243139653484082966.a n : ℤ) = A074620 n

end A074620

/-! ## A074620.P8863980491036812913

`abs(A000244(n)-A074556(n))`
-/

namespace A074620.P8863980491036812913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000244 n - A074556 n|

end

end A074620.P8863980491036812913

namespace A074620

/-- `abs(A000244(n)-A074556(n))` -/
def P8863980491036812913.Spec : Prop :=
  ∀ n, P8863980491036812913.a n = A074620 n

end A074620

/-! ## A074620.P3776243923699941703

`abs(A000420(n)-A074577(n))`
-/

namespace A074620.P3776243923699941703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000420 n - A074577 n|

end

end A074620.P3776243923699941703

namespace A074620

/-- `abs(A000420(n)-A074577(n))` -/
def P3776243923699941703.Spec : Prop :=
  ∀ n, P3776243923699941703.a n = A074620 n

end A074620

/-! ## A074620.P3006219575255051545

`∑[A055274(n)+A052934(n)]`
-/

namespace A074620.P3006219575255051545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055274 n + A052934 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074620.P3006219575255051545

namespace A074620

/-- `∑[A055274(n)+A052934(n)]` -/
def P3006219575255051545.Spec : Prop :=
  ∀ n, P3006219575255051545.a n = A074620 n

end A074620

/-! ## A074620.P6325929364651177453

`Δ[A023001(n)+A003464(n)]`
-/

namespace A074620.P6325929364651177453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023001 n + A003464 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074620.P6325929364651177453

namespace A074620

/-- `Δ[A023001(n)+A003464(n)]` -/
def P6325929364651177453.Spec : Prop :=
  ∀ n, P6325929364651177453.a n = A074620 n

end A074620

/-! ## A074620.P1474295862675537743

`Δ[A085282(n)]*A000079(n)`
-/

namespace A074620.P1474295862675537743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085282 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000079 n

end

end A074620.P1474295862675537743

namespace A074620

/-- `Δ[A085282(n)]*A000079(n)` -/
def P1474295862675537743.Spec : Prop :=
  ∀ n, P1474295862675537743.a n = A074620 n

end A074620

/-! ## A074620.P1163360765371541141

`record[A094014(n)+A026549(n)]`
-/

namespace A074620.P1163360765371541141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094014 n + A026549 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074620.P1163360765371541141

namespace A074620

/-- `record[A094014(n)+A026549(n)]` -/
def P1163360765371541141.Spec : Prop :=
  ∀ n, P1163360765371541141.a n = A074620 n

end A074620

/-! ## A074620.P14634658984175033746

`lcm(Δ[A155559(n)], A081189(n))`
-/

namespace A074620.P14634658984175033746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A081189 n)

end

end A074620.P14634658984175033746

namespace A074620

/-- `lcm(Δ[A155559(n)], A081189(n))` -/
def P14634658984175033746.Spec : Prop :=
  ∀ n, (P14634658984175033746.a n : ℤ) = A074620 n

end A074620

/-! ## A074620.P9815446754886470523

`A074605(n)*A077957(2*n)`
-/

namespace A074620.P9815446754886470523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074605 n * A077957 (2 * n)

end

end A074620.P9815446754886470523

namespace A074620

/-- `A074605(n)*A077957(2*n)` -/
def P9815446754886470523.Spec : Prop :=
  ∀ n, P9815446754886470523.a n = A074620 n

end A074620

/-! ## A074620.P8251222745774407889

`2*or(A081341(n), A081342(n))`
-/

namespace A074620.P8251222745774407889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.lor (A081341 n) (A081342 n)

end

end A074620.P8251222745774407889

namespace A074620

/-- `2*or(A081341(n), A081342(n))` -/
def P8251222745774407889.Spec : Prop :=
  ∀ n, P8251222745774407889.a n = A074620 n

end A074620

/-! ## A074620.P16723801423847932810

`Δ[A000051(n)]*Δ[A085282(n)]`
-/

namespace A074620.P16723801423847932810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085282 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A074620.P16723801423847932810

namespace A074620

/-- `Δ[A000051(n)]*Δ[A085282(n)]` -/
def P16723801423847932810.Spec : Prop :=
  ∀ n, P16723801423847932810.a n = A074620 n

end A074620

/-! ## A074620.P4050927224028726592

`Δ[A036557(2*n+1)]*A000079(n)`
-/

namespace A074620.P4050927224028726592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036557 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000079 n

end

end A074620.P4050927224028726592

namespace A074620

/-- `Δ[A036557(2*n+1)]*A000079(n)` -/
def P4050927224028726592.Spec : Prop :=
  ∀ n, P4050927224028726592.a n = A074620 n

end A074620

/-! ## A074620.P12042207352398914452

`(A000302(n)+A000244(n))*A000079(n)`
-/

namespace A074620.P12042207352398914452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000302 n + A000244 n) * A000079 n

end

end A074620.P12042207352398914452

namespace A074620

/-- `(A000302(n)+A000244(n))*A000079(n)` -/
def P12042207352398914452.Spec : Prop :=
  ∀ n, P12042207352398914452.a n = A074620 n

end A074620

/-!
# A074621: a(n) = 6^n + 9^n.

The programs for A074621, the canonical program `A074621.P7676745700190966279` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074621 has offset 0).

The definition of A074621 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n+9^n` (program `A074621.P7676745700190966279`, by `A074621.P7676745700190966279.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074621.P7676745700190966279

`6^n+9^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074621

/-- `6^n+9^n` -/
def P7676745700190966279.Spec : Prop :=
  ∀ n, (P7676745700190966279.a n : ℤ) = A074621 n

theorem P7676745700190966279.correct : P7676745700190966279.Spec := by
  intro n
  simp only [A074621]

end A074621

/-! ## A074621.P17649002135839930517

`ogf((2-15x)/(1-15x+54x^2))`
-/

namespace A074621.P17649002135839930517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -15] [1, -15, 54] n

end

end A074621.P17649002135839930517

namespace A074621

/-- `ogf((2-15x)/(1-15x+54x^2))` -/
def P17649002135839930517.Spec : Prop :=
  ∀ n, P17649002135839930517.a n = A074621 n

end A074621

/-! ## A074621.P268396041157757041

`3^n*A007689(n)`
-/

namespace A074621.P268396041157757041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A007689 n

end

end A074621.P268396041157757041

namespace A074621

/-- `3^n*A007689(n)` -/
def P268396041157757041.Spec : Prop :=
  ∀ n, P268396041157757041.a n = A074621 n

end A074621

/-! ## A074621.P2290980398246608432

`3^n*Δ[A094374(n)]`
-/

namespace A074621.P2290980398246608432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094374 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * (f1 (n + 1) - f1 n)

end

end A074621.P2290980398246608432

namespace A074621

/-- `3^n*Δ[A094374(n)]` -/
def P2290980398246608432.Spec : Prop :=
  ∀ n, P2290980398246608432.a n = A074621 n

end A074621

/-! ## A074621.P3539736607744172819

`3^n*Δ[A099754(n)]`
-/

namespace A074621.P3539736607744172819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * (f1 (n + 1) - f1 n)

end

end A074621.P3539736607744172819

namespace A074621

/-- `3^n*Δ[A099754(n)]` -/
def P3539736607744172819.Spec : Prop :=
  ∀ n, P3539736607744172819.a n = A074621 n

end A074621

/-! ## A074621.P13024192760921215373

`(A001550(n)-1)*3^n`
-/

namespace A074621.P13024192760921215373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001550 n - 1) * (3 ^ n : ℤ)

end

end A074621.P13024192760921215373

namespace A074621

/-- `(A001550(n)-1)*3^n` -/
def P13024192760921215373.Spec : Prop :=
  ∀ n, P13024192760921215373.a n = A074621 n

end A074621

/-! ## A074621.P216940729602490004

`3^n*Δ[A072674(n)/2]`
-/

namespace A074621.P216940729602490004
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072674 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℚ) * (f1 (n + 1) - f1 n)

end

end A074621.P216940729602490004

namespace A074621

/-- `3^n*Δ[A072674(n)/2]` -/
def P216940729602490004.Spec : Prop :=
  ∀ n, P216940729602490004.a n = (A074621 n : ℚ)

end A074621

/-! ## A074621.P8110247323979924729

`lcm(A000244(n), A007689(n))`
-/

namespace A074621.P8110247323979924729
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000244 n) (A007689 n)

end

end A074621.P8110247323979924729

namespace A074621

/-- `lcm(A000244(n), A007689(n))` -/
def P8110247323979924729.Spec : Prop :=
  ∀ n, (P8110247323979924729.a n : ℤ) = A074621 n

end A074621

/-! ## A074621.P426294950827674507

`∑[A055275(n)+A052934(n)]`
-/

namespace A074621.P426294950827674507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055275 n + A052934 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074621.P426294950827674507

namespace A074621

/-- `∑[A055275(n)+A052934(n)]` -/
def P426294950827674507.Spec : Prop :=
  ∀ n, P426294950827674507.a n = A074621 n

end A074621

/-! ## A074621.P1463382277163901918

`Δ[A003464(n)+A002452(n)]`
-/

namespace A074621.P1463382277163901918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003464 n + A002452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074621.P1463382277163901918

namespace A074621

/-- `Δ[A003464(n)+A002452(n)]` -/
def P1463382277163901918.Spec : Prop :=
  ∀ n, P1463382277163901918.a n = A074621 n

end A074621

/-! ## A074621.P16930748962843870131

`Δ[A099754(n)]*A000244(n)`
-/

namespace A074621.P16930748962843870131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000244 n

end

end A074621.P16930748962843870131

namespace A074621

/-- `Δ[A099754(n)]*A000244(n)` -/
def P16930748962843870131.Spec : Prop :=
  ∀ n, P16930748962843870131.a n = A074621 n

end A074621

/-! ## A074621.P1537344172695242493

`(A005056(n)+1)*A000244(n)`
-/

namespace A074621.P1537344172695242493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005056 n + 1) * A000244 n

end

end A074621.P1537344172695242493

namespace A074621

/-- `(A005056(n)+1)*A000244(n)` -/
def P1537344172695242493.Spec : Prop :=
  ∀ n, P1537344172695242493.a n = A074621 n

end A074621

/-! ## A074621.P4954740692063939141

`A007689(n)*A038754(2*n)`
-/

namespace A074621.P4954740692063939141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007689 n * A038754 (2 * n)

end

end A074621.P4954740692063939141

namespace A074621

/-- `A007689(n)*A038754(2*n)` -/
def P4954740692063939141.Spec : Prop :=
  ∀ n, P4954740692063939141.a n = A074621 n

end A074621

/-! ## A074621.P2581171916389250956

`(A074522(n)-1)%A074522(n)`
-/

namespace A074621.P2581171916389250956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074522 n - 1) (A074522 n)

end

end A074621.P2581171916389250956

namespace A074621

/-- `(A074522(n)-1)%A074522(n)` -/
def P2581171916389250956.Spec : Prop :=
  ∀ n, P2581171916389250956.a n = A074621 n

end A074621

/-! ## A074621.P8378078613597400236

`(A000244(n)+A000079(n))*A000244(n)`
-/

namespace A074621.P8378078613597400236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 n + A000079 n) * A000244 n

end

end A074621.P8378078613597400236

namespace A074621

/-- `(A000244(n)+A000079(n))*A000244(n)` -/
def P8378078613597400236.Spec : Prop :=
  ∀ n, P8378078613597400236.a n = A074621 n

end A074621

/-! ## A074621.P10592719889353761121

`(A024023(n)+A000051(n))*A000244(n)`
-/

namespace A074621.P10592719889353761121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024023 n + A000051 n) * A000244 n

end

end A074621.P10592719889353761121

namespace A074621

/-- `(A024023(n)+A000051(n))*A000244(n)` -/
def P10592719889353761121.Spec : Prop :=
  ∀ n, P10592719889353761121.a n = A074621 n

end A074621

/-! ## A074621.P15967768694678737575

`(A105723(n)+A014551(n))*A000244(n)`
-/

namespace A074621.P15967768694678737575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A105723 n + A014551 n) * A000244 n

end

end A074621.P15967768694678737575

namespace A074621

/-- `(A105723(n)+A014551(n))*A000244(n)` -/
def P15967768694678737575.Spec : Prop :=
  ∀ n, P15967768694678737575.a n = A074621 n

end A074621

/-! ## A074621.P10556809527932703342

`(A102345(n)+A062510(n))*A000244(n)`
-/

namespace A074621.P10556809527932703342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A102345 n + A062510 n) * A000244 n

end

end A074621.P10556809527932703342

namespace A074621

/-- `(A102345(n)+A062510(n))*A000244(n)` -/
def P10556809527932703342.Spec : Prop :=
  ∀ n, P10556809527932703342.a n = A074621 n

end A074621

/-! ## A074621.P8178022774604120665

`(A212262(n)+A099036(n))*A000244(n)`
-/

namespace A074621.P8178022774604120665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A212262 n + A099036 n) * A000244 n

end

end A074621.P8178022774604120665

namespace A074621

/-- `(A212262(n)+A099036(n))*A000244(n)` -/
def P8178022774604120665.Spec : Prop :=
  ∀ n, P8178022774604120665.a n = A074621 n

end A074621

/-! ## A074621.P7249326158143340431

`(A212323(n)+A117591(n))*A000244(n)`
-/

namespace A074621.P7249326158143340431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A212323 n + A117591 n) * A000244 n

end

end A074621.P7249326158143340431

namespace A074621

/-- `(A212323(n)+A117591(n))*A000244(n)` -/
def P7249326158143340431.Spec : Prop :=
  ∀ n, P7249326158143340431.a n = A074621 n

end A074621

/-!
# A074622: a(n) = 7^n + 8^n.

The programs for A074622, the canonical program `A074622.P2474329347051089710` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074622 has offset 0).

The definition of A074622 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n+8^n` (program `A074622.P2474329347051089710`, by `A074622.P2474329347051089710.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074622.P2474329347051089710

`7^n+8^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074622

/-- `7^n+8^n` -/
def P2474329347051089710.Spec : Prop :=
  ∀ n, (P2474329347051089710.a n : ℤ) = A074622 n

theorem P2474329347051089710.correct : P2474329347051089710.Spec := by
  intro n
  simp only [A074622]

end A074622

/-! ## A074622.P3834076785756298682

`ogf((2-15x)/(1-15x+56x^2))`
-/

namespace A074622.P3834076785756298682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -15] [1, -15, 56] n

end

end A074622.P3834076785756298682

namespace A074622

/-- `ogf((2-15x)/(1-15x+56x^2))` -/
def P3834076785756298682.Spec : Prop :=
  ∀ n, P3834076785756298682.a n = A074622 n

end A074622

/-! ## A074622.P18329812847829664483

`abs(1-A074523(n))`
-/

namespace A074622.P18329812847829664483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A074523 n|

end

end A074622.P18329812847829664483

namespace A074622

/-- `abs(1-A074523(n))` -/
def P18329812847829664483.Spec : Prop :=
  ∀ n, P18329812847829664483.a n = A074622 n

end A074622

/-! ## A074622.P3007960973918007861

`abs(A001553(n)-A001555(n))`
-/

namespace A074622.P3007960973918007861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001553 n - A001555 n|

end

end A074622.P3007960973918007861

namespace A074622

/-- `abs(A001553(n)-A001555(n))` -/
def P3007960973918007861.Spec : Prop :=
  ∀ n, P3007960973918007861.a n = A074622 n

end A074622

/-! ## A074622.P12951658018630882958

`abs(A000244(n)-A074558(n))`
-/

namespace A074622.P12951658018630882958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000244 n - A074558 n|

end

end A074622.P12951658018630882958

namespace A074622

/-- `abs(A000244(n)-A074558(n))` -/
def P12951658018630882958.Spec : Prop :=
  ∀ n, P12951658018630882958.a n = A074622 n

end A074622

/-! ## A074622.P11182082086385355579

`∑[A055274(n)+A055272(n)]`
-/

namespace A074622.P11182082086385355579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055274 n + A055272 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074622.P11182082086385355579

namespace A074622

/-- `∑[A055274(n)+A055272(n)]` -/
def P11182082086385355579.Spec : Prop :=
  ∀ n, P11182082086385355579.a n = A074622 n

end A074622

/-! ## A074622.P1864092653649985145

`Δ[A023001(n)+A023000(n)]`
-/

namespace A074622.P1864092653649985145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023001 n + A023000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074622.P1864092653649985145

namespace A074622

/-- `Δ[A023001(n)+A023000(n)]` -/
def P1864092653649985145.Spec : Prop :=
  ∀ n, P1864092653649985145.a n = A074622 n

end A074622

/-! ## A074622.P18243339458418473669

`abs(A074523(n)+A008683(A031933(n)))`
-/

namespace A074622.P18243339458418473669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074523 n + A008683 (A031933 n).toNat|

end

end A074622.P18243339458418473669

namespace A074622

/-- `abs(A074523(n)+A008683(A031933(n)))` -/
def P18243339458418473669.Spec : Prop :=
  ∀ n, P18243339458418473669.a n = A074622 n

end A074622

/-!
# A074623: a(n) = 7^n + 9^n.

The programs for A074623, the canonical program `A074623.P12972122544469744375` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074623 has offset 0).

The definition of A074623 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n+9^n` (program `A074623.P12972122544469744375`, by `A074623.P12972122544469744375.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074623.P12972122544469744375

`7^n+9^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074623

/-- `7^n+9^n` -/
def P12972122544469744375.Spec : Prop :=
  ∀ n, (P12972122544469744375.a n : ℤ) = A074623 n

theorem P12972122544469744375.correct : P12972122544469744375.Spec := by
  intro n
  simp only [A074623]

end A074623

/-! ## A074623.P13727154273432083862

`ogf((2-16x)/(1-16x+63x^2))`
-/

namespace A074623.P13727154273432083862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -16] [1, -16, 63] n

end

end A074623.P13727154273432083862

namespace A074623

/-- `ogf((2-16x)/(1-16x+63x^2))` -/
def P13727154273432083862.Spec : Prop :=
  ∀ n, P13727154273432083862.a n = A074623 n

end A074623

/-! ## A074623.P912794719921168659

`2*A081190(n)`
-/

namespace A074623.P912794719921168659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081190 n

end

end A074623.P912794719921168659

namespace A074623

/-- `2*A081190(n)` -/
def P912794719921168659.Spec : Prop :=
  ∀ n, P912794719921168659.a n = A074623 n

end A074623

/-! ## A074623.P927663657648162418

`xor(1, A074524(n))`
-/

namespace A074623.P927663657648162418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A074524 n)

end

end A074623.P927663657648162418

namespace A074623

/-- `xor(1, A074524(n))` -/
def P927663657648162418.Spec : Prop :=
  ∀ n, P927663657648162418.a n = A074623 n

end A074623

/-! ## A074623.P13914484151029758541

`abs(A000244(n)-A074559(n))`
-/

namespace A074623.P13914484151029758541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000244 n - A074559 n|

end

end A074623.P13914484151029758541

namespace A074623

/-- `abs(A000244(n)-A074559(n))` -/
def P13914484151029758541.Spec : Prop :=
  ∀ n, P13914484151029758541.a n = A074623 n

end A074623

/-! ## A074623.P7927791200940609055

`abs(A001018(n)-A074580(n))`
-/

namespace A074623.P7927791200940609055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001018 n - A074580 n|

end

end A074623.P7927791200940609055

namespace A074623

/-- `abs(A001018(n)-A074580(n))` -/
def P7927791200940609055.Spec : Prop :=
  ∀ n, P7927791200940609055.a n = A074623 n

end A074623

/-! ## A074623.P6911897046319076520

`∑[A055275(n)+A055272(n)]`
-/

namespace A074623.P6911897046319076520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055275 n + A055272 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074623.P6911897046319076520

namespace A074623

/-- `∑[A055275(n)+A055272(n)]` -/
def P6911897046319076520.Spec : Prop :=
  ∀ n, P6911897046319076520.a n = A074623 n

end A074623

/-! ## A074623.P26483035845597725

`Δ[A023000(n)+A002452(n)]`
-/

namespace A074623.P26483035845597725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023000 n + A002452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074623.P26483035845597725

namespace A074623

/-- `Δ[A023000(n)+A002452(n)]` -/
def P26483035845597725.Spec : Prop :=
  ∀ n, P26483035845597725.a n = A074623 n

end A074623

/-! ## A074623.P12181655706445055562

`Δ[A047852(n)+A002452(n)]`
-/

namespace A074623.P12181655706445055562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047852 n + A002452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074623.P12181655706445055562

namespace A074623

/-- `Δ[A047852(n)+A002452(n)]` -/
def P12181655706445055562.Spec : Prop :=
  ∀ n, P12181655706445055562.a n = A074623 n

end A074623

/-! ## A074623.P8744573043398666053

`abs(A155655(n)+A001019(n)+1-A000079(3*n))`
-/

namespace A074623.P8744573043398666053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155655 n + (A001019 n + 1 - A000079 (3 * n))|

end

end A074623.P8744573043398666053

namespace A074623

/-- `abs(A155655(n)+A001019(n)+1-A000079(3*n))` -/
def P8744573043398666053.Spec : Prop :=
  ∀ n, P8744573043398666053.a n = A074623 n

end A074623

/-!
# A074624: a(n) = 8^n + 9^n.

The programs for A074624, the canonical program `A074624.P4022493453023741287` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074624 has offset 0).

The definition of A074624 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^n+9^n` (program `A074624.P4022493453023741287`, by `A074624.P4022493453023741287.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074624.P4022493453023741287

`8^n+9^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074624

/-- `8^n+9^n` -/
def P4022493453023741287.Spec : Prop :=
  ∀ n, (P4022493453023741287.a n : ℤ) = A074624 n

theorem P4022493453023741287.correct : P4022493453023741287.Spec := by
  intro n
  simp only [A074624]

end A074624

/-! ## A074624.P9924336056075060612

`ogf((2-17x)/(1-17x+72x^2))`
-/

namespace A074624.P9924336056075060612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -17] [1, -17, 72] n

end

end A074624.P9924336056075060612

namespace A074624

/-- `ogf((2-17x)/(1-17x+72x^2))` -/
def P9924336056075060612.Spec : Prop :=
  ∀ n, P9924336056075060612.a n = A074624 n

end A074624

/-! ## A074624.P2480323759667824383

`abs(1-A074525(n))`
-/

namespace A074624.P2480323759667824383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A074525 n|

end

end A074624.P2480323759667824383

namespace A074624

/-- `abs(1-A074525(n))` -/
def P2480323759667824383.Spec : Prop :=
  ∀ n, P2480323759667824383.a n = A074624 n

end A074624

/-! ## A074624.P7866874028597308518

`abs(6^n-A074579(n))`
-/

namespace A074624.P7866874028597308518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(6 ^ n : ℤ) - A074579 n|

end

end A074624.P7866874028597308518

namespace A074624

/-- `abs(6^n-A074579(n))` -/
def P7866874028597308518.Spec : Prop :=
  ∀ n, P7866874028597308518.a n = A074624 n

end A074624

/-! ## A074624.P7707222434318193079

`abs(A074580(n)-7^n)`
-/

namespace A074624.P7707222434318193079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074580 n - (7 ^ n : ℤ)|

end

end A074624.P7707222434318193079

namespace A074624

/-- `abs(A074580(n)-7^n)` -/
def P7707222434318193079.Spec : Prop :=
  ∀ n, P7707222434318193079.a n = A074624 n

end A074624

/-! ## A074624.P13403653665929950742

`abs(A001554(n)-A001556(n))`
-/

namespace A074624.P13403653665929950742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001554 n - A001556 n|

end

end A074624.P13403653665929950742

namespace A074624

/-- `abs(A001554(n)-A001556(n))` -/
def P13403653665929950742.Spec : Prop :=
  ∀ n, P13403653665929950742.a n = A074624 n

end A074624

/-! ## A074624.P15923741836788839101

`abs(A000244(n)-A074560(n))`
-/

namespace A074624.P15923741836788839101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000244 n - A074560 n|

end

end A074624.P15923741836788839101

namespace A074624

/-- `abs(A000244(n)-A074560(n))` -/
def P15923741836788839101.Spec : Prop :=
  ∀ n, P15923741836788839101.a n = A074624 n

end A074624

/-! ## A074624.P4473481445303893327

`∑[A055275(n)+A055274(n)]`
-/

namespace A074624.P4473481445303893327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055275 n + A055274 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074624.P4473481445303893327

namespace A074624

/-- `∑[A055275(n)+A055274(n)]` -/
def P4473481445303893327.Spec : Prop :=
  ∀ n, P4473481445303893327.a n = A074624 n

end A074624

/-! ## A074624.P14907988665354608557

`Δ[A023001(n)+A002452(n)]`
-/

namespace A074624.P14907988665354608557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023001 n + A002452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074624.P14907988665354608557

namespace A074624

/-- `Δ[A023001(n)+A002452(n)]` -/
def P14907988665354608557.Spec : Prop :=
  ∀ n, P14907988665354608557.a n = A074624 n

end A074624

/-! ## A074624.P6249018554386893022

`or(A074525(n)-1, A304273(n+1))`
-/

namespace A074624.P6249018554386893022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A074525 n - 1) (A304273 (n + 1))

end

end A074624.P6249018554386893022

namespace A074624

/-- `or(A074525(n)-1, A304273(n+1))` -/
def P6249018554386893022.Spec : Prop :=
  ∀ n, P6249018554386893022.a n = A074624 n

end A074624

/-! ## A074624.P11705891275159747890

`abs(A155656(n)+A155613(n)-A155612(n)+1)`
-/

namespace A074624.P11705891275159747890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155656 n + (A155613 n - A155612 n + 1)|

end

end A074624.P11705891275159747890

namespace A074624

/-- `abs(A155656(n)+A155613(n)-A155612(n)+1)` -/
def P11705891275159747890.Spec : Prop :=
  ∀ n, P11705891275159747890.a n = A074624 n

end A074624

/-!
# A074626: Prime following the n-th Mersenne prime.

The programs for A074626, there is no canonical definition to state claims against.
-/

/-! ## A074626.P18081265802538372530

`A000668(n+1)+A365160(n+1)`
-/

namespace A074626.P18081265802538372530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000668 (n + 1) + A365160 (n + 1)

end

end A074626.P18081265802538372530

/-! ## A074626.P10479890058487828881

`A014210(A000043(n+1))`
-/

namespace A074626.P10479890058487828881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 (A000043 (n + 1)).toNat

end

end A074626.P10479890058487828881

/-! ## A074626.P12923106879648342261

`A203074(A050475(n+1))`
-/

namespace A074626.P12923106879648342261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203074 (A050475 (n + 1)).toNat

end

end A074626.P12923106879648342261

/-! ## A074626.P10793516238037562982

`A014210(A366029(n+1))`
-/

namespace A074626.P10793516238037562982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 (A366029 (n + 1)).toNat

end

end A074626.P10793516238037562982

/-! ## A074626.P15798946458499355541

`A073715(n+1)+A365161(n+1)+A365160(n+1)`
-/

namespace A074626.P15798946458499355541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073715 (n + 1) + (A365161 (n + 1) + A365160 (n + 1))

end

end A074626.P15798946458499355541

/-!
# A074627: Numbers n such that sigma(n) is divisible by 6.

The programs for A074627, the canonical program `A074627.P9456993586647811186` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074627 has offset 1).

The definition of A074627 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074627.P16877467545689276345

`eq[0, A084301(n+1)]+1`
-/

namespace A074627.P16877467545689276345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084301 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A074627.P16877467545689276345

namespace A074627

/-- `eq[0, A084301(n+1)]+1` -/
def P16877467545689276345.Spec : Prop :=
  ∀ n, (P16877467545689276345.a n : ℤ) = A074627 (n + 1)

end A074627

/-! ## A074627.P6164718868885528122

`lt[A084301(C(n, n²)+n), 1]`
-/

namespace A074627.P6164718868885528122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084301 (Nat.choose n (n ^ 2) + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A074627.P6164718868885528122

namespace A074627

/-- `lt[A084301(C(n, n²)+n), 1]` -/
def P6164718868885528122.Spec : Prop :=
  ∀ n, (P6164718868885528122.a n : ℤ) = A074627 (n + 1)

end A074627

/-! ## A074627.P9456993586647811186

`eq[0, A000203(n+1)%6]+1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A074627

/-- `eq[0, A000203(n+1)%6]+1` -/
def P9456993586647811186.Spec : Prop :=
  ∀ n, (P9456993586647811186.a n : ℤ) = A074627 (n + 1)

theorem P9456993586647811186.correct : P9456993586647811186.Spec := by
  intro n
  simp only [A074627, Nat.add_sub_cancel]

end A074627

/-! ## A074627.P8328738723697795373

`eq[A000203(n+2), A339873(A000203(n+2)+2)]+2`
-/

namespace A074627.P8328738723697795373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339873 (A000203 (n + 2) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A074627.P8328738723697795373

namespace A074627

/-- `eq[A000203(n+2), A339873(A000203(n+2)+2)]+2` -/
def P8328738723697795373.Spec : Prop :=
  ∀ n, (P8328738723697795373.a n : ℤ) = A074627 (n + 1)

end A074627

/-! ## A074627.P2852293135291249147

`∩[A028983(n+1), A087943(n+1)]`
-/

namespace A074627.P2852293135291249147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074627.P2852293135291249147

namespace A074627

/-- `∩[A028983(n+1), A087943(n+1)]` -/
def P2852293135291249147.Spec : Prop :=
  ∀ n, (P2852293135291249147.a n : ℤ) = A074627 (n + 1)

end A074627

/-! ## A074627.P2260631344327721416

`eq[1, (∑{d}[n+1, #]+1)%6]+1`
-/

namespace A074627.P2260631344327721416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f3 n), d + 1) % 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A074627.P2260631344327721416

namespace A074627

/-- `eq[1, (∑{d}[n+1, #]+1)%6]+1` -/
def P2260631344327721416.Spec : Prop :=
  ∀ n, (P2260631344327721416.a n : ℤ) = A074627 (n + 1)

end A074627

/-! ## A074627.P2555421521291005820

`lt[∑{d}[n+1, #]²%12+2, 3]+1`
-/

namespace A074627.P2555421521291005820
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f2 n), d) ^ 2 % 12 + 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 1

end

end A074627.P2555421521291005820

namespace A074627

/-- `lt[∑{d}[n+1, #]²%12+2, 3]+1` -/
def P2555421521291005820.Spec : Prop :=
  ∀ n, (P2555421521291005820.a n : ℤ) = A074627 (n + 1)

end A074627

/-! ## A074627.P8276350023190719435

`eq[5, A039653(n)%6]`
-/

namespace A074627.P8276350023190719435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039653 n) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A074627.P8276350023190719435

namespace A074627

/-- `eq[5, A039653(n)%6]` -/
def P8276350023190719435.Spec : Prop :=
  ∀ n, (P8276350023190719435.a n : ℤ) = A074627 (n + 1)

end A074627

/-! ## A074627.P11466977261504076349

`eq[1, A088580(n+1)%6]+1`
-/

namespace A074627.P11466977261504076349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088580 (n + 1)) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A074627.P11466977261504076349

namespace A074627

/-- `eq[1, A088580(n+1)%6]+1` -/
def P11466977261504076349.Spec : Prop :=
  ∀ n, (P11466977261504076349.a n : ℤ) = A074627 (n + 1)

end A074627

/-! ## A074627.P1519173655912089498

`eq[1, A084301(A028310(n))+1]`
-/

namespace A074627.P1519173655912089498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084301 (A028310 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A074627.P1519173655912089498

namespace A074627

/-- `eq[1, A084301(A028310(n))+1]` -/
def P1519173655912089498.Spec : Prop :=
  ∀ n, (P1519173655912089498.a n : ℤ) = A074627 (n + 1)

end A074627

/-! ## A074627.P14243832938221652690

`eq[1, A010875(A039653(n)+2)]`
-/

namespace A074627.P14243832938221652690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A039653 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A074627.P14243832938221652690

namespace A074627

/-- `eq[1, A010875(A039653(n)+2)]` -/
def P14243832938221652690.Spec : Prop :=
  ∀ n, (P14243832938221652690.a n : ℤ) = A074627 (n + 1)

end A074627

/-! ## A074627.P8159879771081503511

`eq[2, A245477(A039653(n))]`
-/

namespace A074627.P8159879771081503511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245477 (A039653 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A074627.P8159879771081503511

namespace A074627

/-- `eq[2, A245477(A039653(n))]` -/
def P8159879771081503511.Spec : Prop :=
  ∀ n, (P8159879771081503511.a n : ℤ) = A074627 (n + 1)

end A074627

/-! ## A074627.P925264467751589214

`lt[2, A055874(A001065(n+1)+1+n)]+1`
-/

namespace A074627.P925264467751589214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055874 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A074627.P925264467751589214

namespace A074627

/-- `lt[2, A055874(A001065(n+1)+1+n)]+1` -/
def P925264467751589214.Spec : Prop :=
  ∀ n, (P925264467751589214.a n : ℤ) = A074627 (n + 1)

end A074627

/-! ## A074627.P15153218482297681931

`lt[1, A077959(∑{d}[n, #])]`
-/

namespace A074627.P15153218482297681931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077959 (∑ d ∈ Nat.divisors (f3 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A074627.P15153218482297681931

namespace A074627

/-- `lt[1, A077959(∑{d}[n, #])]` -/
def P15153218482297681931.Spec : Prop :=
  ∀ n, (P15153218482297681931.a n : ℤ) = A074627 (n + 1)

end A074627

/-!
# A074628: Numbers k such that sigma(k) == 2 mod 6.

The programs for A074628, the canonical program `A074628.P11886909399494549536` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074628 has offset 1).

The definition of A074628 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6591 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074628.P3313560335865078798

`eq[3, A336924(n+1)]+1`
-/

namespace A074628.P3313560335865078798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336924 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A074628.P3313560335865078798

namespace A074628

/-- `eq[3, A336924(n+1)]+1` -/
def P3313560335865078798.Spec : Prop :=
  ∀ n, (P3313560335865078798.a n : ℤ) = A074628 (n + 1)

end A074628

/-! ## A074628.P11886909399494549536

`eq[2, A000203(n+1)%6]+1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A074628

/-- `eq[2, A000203(n+1)%6]+1` -/
def P11886909399494549536.Spec : Prop :=
  ∀ n, (P11886909399494549536.a n : ℤ) = A074628 (n + 1)

theorem P11886909399494549536.correct : P11886909399494549536.Spec := by
  intro n
  simp only [A074628, Nat.add_sub_cancel]

end A074628

/-! ## A074628.P2647321829577816923

`eq[2, A084301(n+1)]+1`
-/

namespace A074628.P2647321829577816923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084301 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A074628.P2647321829577816923

namespace A074628

/-- `eq[2, A084301(n+1)]+1` -/
def P2647321829577816923.Spec : Prop :=
  ∀ n, (P2647321829577816923.a n : ℤ) = A074628 (n + 1)

end A074628

/-! ## A074628.P11308367665113951901

`eq[2, A084301(A028310(n))]`
-/

namespace A074628.P11308367665113951901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084301 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A074628.P11308367665113951901

namespace A074628

/-- `eq[2, A084301(A028310(n))]` -/
def P11308367665113951901.Spec : Prop :=
  ∀ n, (P11308367665113951901.a n : ℤ) = A074628 (n + 1)

end A074628

/-! ## A074628.P6450793891849580362

`eq[3, A020639(A088580(n+2))]+2`
-/

namespace A074628.P6450793891849580362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A088580 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A074628.P6450793891849580362

namespace A074628

/-- `eq[3, A020639(A088580(n+2))]+2` -/
def P6450793891849580362.Spec : Prop :=
  ∀ n, (P6450793891849580362.a n : ℤ) = A074628 (n + 1)

end A074628

/-! ## A074628.P17247090363880565957

`eq[2, A010155(A039653(n)+2)]`
-/

namespace A074628.P17247090363880565957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010155 (A039653 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A074628.P17247090363880565957

namespace A074628

/-- `eq[2, A010155(A039653(n)+2)]` -/
def P17247090363880565957.Spec : Prop :=
  ∀ n, (P17247090363880565957.a n : ℤ) = A074628 (n + 1)

end A074628

/-! ## A074628.P7618707433342157597

`eq[3, A020639(A242480(A000203(n+1)+1))]+1`
-/

namespace A074628.P7618707433342157597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A242480 (A000203 (n + 1) + 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A074628.P7618707433342157597

namespace A074628

/-- `eq[3, A020639(A242480(A000203(n+1)+1))]+1` -/
def P7618707433342157597.Spec : Prop :=
  ∀ n, (P7618707433342157597.a n : ℤ) = A074628 (n + 1)

end A074628

/-! ## A074628.P14044174068686135263

`eq[A040132(n), A227354(n)]`
-/

namespace A074628.P14044174068686135263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227354 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074628.P14044174068686135263

namespace A074628

/-- `eq[A040132(n), A227354(n)]` -/
def P14044174068686135263.Spec : Prop :=
  ∀ n, (P14044174068686135263.a n : ℤ) = A074628 (n + 1)

end A074628

/-! ## A074628.P4878739657541176411

`eq[A186682(n+1), A227354(n)]`
-/

namespace A074628.P4878739657541176411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227354 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074628.P4878739657541176411

namespace A074628

/-- `eq[A186682(n+1), A227354(n)]` -/
def P4878739657541176411.Spec : Prop :=
  ∀ n, (P4878739657541176411.a n : ℤ) = A074628 (n + 1)

end A074628

/-!
# A074630: Numbers k such that sigma(k) == 4 mod 6.

The programs for A074630, the canonical program `A074630.P4310877530525918201` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074630 has offset 1).

The definition of A074630 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 608 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074630.P4310877530525918201

`eq[3, A039653(n)%6]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A074630

/-- `eq[3, A039653(n)%6]` -/
def P4310877530525918201.Spec : Prop :=
  ∀ n, (P4310877530525918201.a n : ℤ) = A074630 (n + 1)

theorem P4310877530525918201.correct : P4310877530525918201.Spec := by
  intro n
  simp only [A074630, Nat.add_sub_cancel]

end A074630

/-! ## A074630.P10968290796197733734

`eq[3, A010875(A039653(n))]`
-/

namespace A074630.P10968290796197733734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A039653 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A074630.P10968290796197733734

namespace A074630

/-- `eq[3, A010875(A039653(n))]` -/
def P10968290796197733734.Spec : Prop :=
  ∀ n, (P10968290796197733734.a n : ℤ) = A074630 (n + 1)

end A074630

/-! ## A074630.P10028386378872970522

`eq[4, A084301(A028310(n))]`
-/

namespace A074630.P10028386378872970522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084301 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A074630.P10028386378872970522

namespace A074630

/-- `eq[4, A084301(A028310(n))]` -/
def P10028386378872970522.Spec : Prop :=
  ∀ n, (P10028386378872970522.a n : ℤ) = A074630 (n + 1)

end A074630

/-! ## A074630.P10320737424628675511

`eq[A000122(n), A014453(A004016(n))]`
-/

namespace A074630.P10320737424628675511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014453 (A004016 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074630.P10320737424628675511

namespace A074630

/-- `eq[A000122(n), A014453(A004016(n))]` -/
def P10320737424628675511.Spec : Prop :=
  ∀ n, (P10320737424628675511.a n : ℤ) = A074630 (n + 1)

end A074630

/-! ## A074630.P16719567710405783772

`eq[A002448(n), A014453(A004016(n))]`
-/

namespace A074630.P16719567710405783772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014453 (A004016 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074630.P16719567710405783772

namespace A074630

/-- `eq[A002448(n), A014453(A004016(n))]` -/
def P16719567710405783772.Spec : Prop :=
  ∀ n, (P16719567710405783772.a n : ℤ) = A074630 (n + 1)

end A074630

/-! ## A074630.P13724113962453460579

`eq[2, A245477(A039653(n)+2)]`
-/

namespace A074630.P13724113962453460579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245477 (A039653 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A074630.P13724113962453460579

namespace A074630

/-- `eq[2, A245477(A039653(n)+2)]` -/
def P13724113962453460579.Spec : Prop :=
  ∀ n, (P13724113962453460579.a n : ℤ) = A074630 (n + 1)

end A074630

/-! ## A074630.P16191293680203832619

`eq[A000122(n), A091684(A039653(n))]`
-/

namespace A074630.P16191293680203832619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091684 (A039653 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074630.P16191293680203832619

namespace A074630

/-- `eq[A000122(n), A091684(A039653(n))]` -/
def P16191293680203832619.Spec : Prop :=
  ∀ n, (P16191293680203832619.a n : ℤ) = A074630 (n + 1)

end A074630

/-!
# A074631: a(n) is the smallest k such that the sum of the first k terms of the composite-harmonic series, Sum_{j=1..k} 1/(j-th composite), is > n.

The programs for A074631, there is no canonical definition to state claims against.
-/

/-! ## A074631.P1782053932034553415

`A065855(A076751(n+1))`
-/

namespace A074631.P1782053932034553415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (A076751 (n + 1)).toNat

end

end A074631.P1782053932034553415

/-! ## A074631.P16183086036317334806

`A026233(A076751(n+1)-1)`
-/

namespace A074631.P16183086036317334806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (A076751 (n + 1) - 1).toNat

end

end A074631.P16183086036317334806

/-!
# A074633: a(n) is the smallest index m such that Sum_{k=2..m} 1/PrimePi(k) >= n, where PrimePi()=A000720().

The programs for A074633, there is no canonical definition to state claims against.
-/

/-! ## A074633.P9212473554776329169

`A003056(A138879(2*n+3)-A272919(n+1))`
-/

namespace A074633.P9212473554776329169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A138879 (2 * n + 3) - A272919 (n + 1)).toNat

end

end A074633.P9212473554776329169

/-! ## A074633.P9906683726208977421

`A003056(A376624(3*n+4)-A032353(n+1))`
-/

namespace A074633.P9906683726208977421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A376624 (3 * n + 4) - A032353 (n + 1)).toNat

end

end A074633.P9906683726208977421

/-! ## A074633.P535524188673202070

`A338331(2*∑[round((n+4)²/20)])`
-/

namespace A074633.P535524188673202070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 4) ^ 2 : ℚ) / 20)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338331 (2 * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A074633.P535524188673202070

/-! ## A074633.P2497615484738187384

`A346447(A006501(n+1))`
-/

namespace A074633.P2497615484738187384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346447 (A006501 (n + 1)).toNat

end

end A074633.P2497615484738187384

/-! ## A074633.P5075585447180107790

`A335469(A248956(n+1))`
-/

namespace A074633.P5075585447180107790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335469 (A248956 (n + 1)).toNat

end

end A074633.P5075585447180107790

/-!
# A074634: Cototient-remainder triangle: triangular array T(n,k) (n >= 1, 0 <= k < n) read by rows, where T(n,k) = smallest number x such that cototient(x) mod n = k.

The programs for A074634, there is no canonical definition to state claims against.
-/

/-! ## A074634.P5486515976691331979

`A018412(2^(n-C(∑[char[∑[n]]], 2)))%10`
-/

namespace A074634.P5486515976691331979
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018412 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ))).toNat) 10

end

end A074634.P5486515976691331979

/-! ## A074634.P13852709265021388176

`A018609(2^(n-C(∑[char[∑[n]]], 2)))%12`
-/

namespace A074634.P13852709265021388176
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018609 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ))).toNat) 12

end

end A074634.P13852709265021388176

/-! ## A074634.P11718972620955559030

`A200370((n+1-C(∑[char[∑[n]]], 2))!)+n-C(∑[char[∑[n]]], 2)`
-/

namespace A074634.P11718972620955559030
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (Nat.factorial ((n + 1 : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)).toNat) + ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ))

end

end A074634.P11718972620955559030

/-! ## A074634.P3626839515573759854

`dr(A018669(A059268(n)))`
-/

namespace A074634.P3626839515573759854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A018669 (A059268 n).toNat)

end

end A074634.P3626839515573759854

/-! ## A074634.P13235715582047863775

`A399829(A033918(n+1))`
-/

namespace A074634.P13235715582047863775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399829 (A033918 (n + 1)).toNat

end

end A074634.P13235715582047863775

/-!
# A074635: a(0)=1, a(n) = Sum_{k=0..n} (binomial(n,k)^2 * binomial(n+k,k+1)^2)/n^2.

The programs for A074635, there is no canonical definition to state claims against.
-/

/-! ## A074635.P7380853050166631652

`A277549((n+1)*a(n-1)+1)-3` with `a(0)=1`
-/

namespace A074635.P7380853050166631652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A277549 ((n + 1 : ℤ) * a (n - 1) + 1).toNat - 3

end

end A074635.P7380853050166631652

/-!
# A074638: Denominator of 1/3 + 1/7 + 1/11 + ... + 1/(4n-1).

The programs for A074638, there is no canonical definition to state claims against.
-/

/-! ## A074638.P7843094817531510450

`A355567(∑[4*n+7]+1)`
-/

namespace A074638.P7843094817531510450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355567 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A074638.P7843094817531510450

/-!
# A074639: a(n)=Sum_h (hh'-1)/n with h and h' in [1,n], (h,n)=1, hh'=1 (mod n).

The programs for A074639, there is no canonical definition to state claims against.
-/

/-! ## A074639.P6542120115467163848

`A074641(A028310(n))*A074642(A028310(n))`
-/

namespace A074639.P6542120115467163848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074641 (A028310 n).toNat * A074642 (A028310 n).toNat

end

end A074639.P6542120115467163848

/-!
# A074640: a(n) = A074639(n) mod A000010(n).

The programs for A074640, there is no canonical definition to state claims against.
-/

/-! ## A074640.P15661572254157561317

`A074639(n+1)%A000010(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A074640.P15661572254157561317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074639 (n + 1)) (A000010 (n + 1))

end

end A074640.P15661572254157561317

/-! ## A074640.P6809280228635332105

`A074639(n+1)%Δ[A002088(n)]`
-/

namespace A074640.P6809280228635332105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074639 (n + 1)) (f1 (n + 1) - f1 n)

end

end A074640.P6809280228635332105

/-! ## A074640.P7471290930314362695

`A074639(A000027(n+1))%Δ[A005728(n)]`
-/

namespace A074640.P7471290930314362695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074639 (A000027 (n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A074640.P7471290930314362695

/-! ## A074640.P2102563405488030770

`A074642(n+1)%A074643(n+1)*A074641(n+1)`
-/

namespace A074640.P2102563405488030770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074642 (n + 1)) (A074643 (n + 1)) * A074641 (n + 1)

end

end A074640.P2102563405488030770

/-! ## A074640.P17218355172743432200

`A028310(A074639(n+1))%∑{d}[n+1, (n+1)/#*A008683(#)]`
-/

namespace A074640.P17218355172743432200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 (A074639 (n + 1)).toNat) (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A008683 d : ℚ)))

end

end A074640.P17218355172743432200

/-!
# A074641: a(n) = gcd(A074639(n), A000010(n)).

The programs for A074641, there is no canonical definition to state claims against.
-/

/-! ## A074641.P9165817498667580517

`gcd(A074639(n+1), A000010(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A074641.P9165817498667580517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A074639 (n + 1)) (A000010 (n + 1))

end

end A074641.P9165817498667580517

/-! ## A074641.P7862041225963278763

`Δ[A002088(n)]/A074643(n+1)`
-/

namespace A074641.P7862041225963278763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A074643 (n + 1) : ℚ)

end

end A074641.P7862041225963278763

/-! ## A074641.P1854452500777159508

`Δ[A005728(n)]/A074643(n+1)`
-/

namespace A074641.P1854452500777159508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A074643 (n + 1) : ℚ)

end

end A074641.P1854452500777159508

/-! ## A074641.P16498576973928059280

`gcd(Δ[A002088(n)], A074639(n+1))`
-/

namespace A074641.P16498576973928059280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A074639 (n + 1))

end

end A074641.P16498576973928059280

/-! ## A074641.P15731085992117101205

`A000010(n+1)/A074643(n+1)`
-/

namespace A074641.P15731085992117101205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A074643 (n + 1) : ℚ)

end

end A074641.P15731085992117101205

/-! ## A074641.P5606556882093033674

`∑{d}[n+1, (n+1)/#*A008683(#)]/A074643(n+1)`
-/

namespace A074641.P5606556882093033674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A008683 d : ℚ)) / (A074643 (n + 1) : ℚ)

end

end A074641.P5606556882093033674

/-! ## A074641.P14646728163197335251

`A067541(2*n+1)/A074643(n+1)`
-/

namespace A074641.P14646728163197335251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067541 (2 * n + 1) : ℚ) / (A074643 (n + 1) : ℚ)

end

end A074641.P14646728163197335251

/-! ## A074641.P6371225442755833588

`gcd(A039649(n+1)-1, A028310(A074639(n+1)))`
-/

namespace A074641.P6371225442755833588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A039649 (n + 1) - 1) (A028310 (A074639 (n + 1)).toNat)

end

end A074641.P6371225442755833588

/-! ## A074641.P8990700597853996078

`A054523(A000124(n))/A074643(n+1)`
-/

namespace A074641.P8990700597853996078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054523 (A000124 n).toNat : ℚ) / (A074643 (n + 1) : ℚ)

end

end A074641.P8990700597853996078

/-!
# A074642: Numerator of A074639(n)/A000010(n).

The programs for A074642, there is no canonical definition to state claims against.
-/

/-! ## A074642.P6673464848527974239

`A074639(n+1)/A074641(n+1)`
-/

namespace A074642.P6673464848527974239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074639 (n + 1) : ℚ) / (A074641 (n + 1) : ℚ)

end

end A074642.P6673464848527974239

/-! ## A074642.P6176555010439371526

`A074639(n+1)/A000010(n+1)*A074643(n+1)`
-/

namespace A074642.P6176555010439371526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074639 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ) * (A074643 (n + 1) : ℚ)

end

end A074642.P6176555010439371526

/-!
# A074643: Denominator of A074639(n)/A000010(n).

The programs for A074643, there is no canonical definition to state claims against.
-/

/-! ## A074643.P4800048928658135722

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]/A074641(n+1)`
-/

namespace A074643.P4800048928658135722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) / (A074641 (n + 1) : ℚ)

end

end A074643.P4800048928658135722

/-! ## A074643.P12663684226819173934

`Δ[A002088(n)]/A074641(n+1)`
-/

namespace A074643.P12663684226819173934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A074641 (n + 1) : ℚ)

end

end A074643.P12663684226819173934

/-! ## A074643.P11686826874639035009

`Δ[A005728(n)]/A074641(n+1)`
-/

namespace A074643.P11686826874639035009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A074641 (n + 1) : ℚ)

end

end A074643.P11686826874639035009

/-! ## A074643.P18409100478042364029

`A000010(n+1)/A074641(n+1)`
-/

namespace A074643.P18409100478042364029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A074641 (n + 1) : ℚ)

end

end A074643.P18409100478042364029

/-! ## A074643.P16988040670493611138

`sqrt(A127473(n+1))/A074641(n+1)`
-/

namespace A074643.P16988040670493611138
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A127473 (n + 1) : ℝ) / (A074641 (n + 1) : ℝ)

end

end A074643.P16988040670493611138

/-! ## A074643.P2546000995458338735

`(A039649(n+1)-1)/A074641(n+1)`
-/

namespace A074643.P2546000995458338735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039649 (n + 1) - 1 : ℚ) / (A074641 (n + 1) : ℚ)

end

end A074643.P2546000995458338735

/-! ## A074643.P13831987196676040992

`A349137(2*n+1)/A074641(n+1)`
-/

namespace A074643.P13831987196676040992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349137 (2 * n + 1) : ℚ) / (A074641 (n + 1) : ℚ)

end

end A074643.P13831987196676040992

/-! ## A074643.P13745065073190324735

`∑{d}[n+1, (n+1)/#*A008683(#)]/A074641(n+1)`
-/

namespace A074643.P13745065073190324735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A008683 d : ℚ)) / (A074641 (n + 1) : ℚ)

end

end A074643.P13745065073190324735

/-! ## A074643.P6786626229384844933

`A000010(n+1)/gcd(A000010(n+1), A074640(n+1))`
-/

namespace A074643.P6786626229384844933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (Int.gcd (A000010 (n + 1)) (A074640 (n + 1)) : ℚ)

end

end A074643.P6786626229384844933

/-! ## A074643.P3946636996762785264

`A054523(A000124(n))/A074641(n+1)`
-/

namespace A074643.P3946636996762785264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054523 (A000124 n).toNat : ℚ) / (A074641 (n + 1) : ℚ)

end

end A074643.P3946636996762785264

/-! ## A074643.P10616187654493613832

`A054522(∑[n+1])/A074641(n+1)`
-/

namespace A074643.P10616187654493613832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054522 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A074641 (n + 1) : ℚ)

end

end A074643.P10616187654493613832

/-!
# A074644: a(n) = (A074639(n^2) - A074639(n)) mod n.

The programs for A074644, the canonical program `A074644.P111578526858648291` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074644 has offset 1).

The definition of A074644 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074644.P5389032354083302711

`(A074639((n+1)²)-A074639(n+1))%(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A074644.P5389032354083302711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074639 ((n + 1) ^ 2) - A074639 (n + 1)) (n + 1 : ℤ)

end

end A074644.P5389032354083302711

namespace A074644

/-- `(A074639((n+1)²)-A074639(n+1))%(n+1)` -/
def P5389032354083302711.Spec : Prop :=
  ∀ n, P5389032354083302711.a n = A074644 (n + 1)

end A074644

/-! ## A074644.P111578526858648291

`C(A002618(n+1), 3)%(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A074644

/-- `C(A002618(n+1), 3)%(n+1)` -/
def P111578526858648291.Spec : Prop :=
  ∀ n, (P111578526858648291.a n : ℤ) = A074644 (n + 1)

theorem P111578526858648291.correct : P111578526858648291.Spec := by
  intro n
  simp only [A074644, Nat.add_sub_cancel]

end A074644

/-! ## A074644.P11843899067920262181

`(C(n+1, 3)*A000010(n+1))%(n+1)`
-/

namespace A074644.P11843899067920262181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((Nat.choose (n + 1) 3 : ℤ) * A000010 (n + 1)) (n + 1 : ℤ)

end

end A074644.P11843899067920262181

namespace A074644

/-- `(C(n+1, 3)*A000010(n+1))%(n+1)` -/
def P11843899067920262181.Spec : Prop :=
  ∀ n, P11843899067920262181.a n = A074644 (n + 1)

end A074644

/-! ## A074644.P1985498104135804830

`((A109606(n+1)+1)*∑[∑[n+1]])%(n+1)`
-/

namespace A074644.P1985498104135804830
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A109606 (n + 1) + 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) (n + 1 : ℤ)

end

end A074644.P1985498104135804830

namespace A074644

/-- `((A109606(n+1)+1)*∑[∑[n+1]])%(n+1)` -/
def P1985498104135804830.Spec : Prop :=
  ∀ n, P1985498104135804830.a n = A074644 (n + 1)

end A074644

/-! ## A074644.P3072095251704726320

`A074942(n+1)*A175676(n+1)`
-/

namespace A074644.P3072095251704726320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074942 (n + 1) * A175676 (n + 1)

end

end A074644.P3072095251704726320

namespace A074644

/-- `A074942(n+1)*A175676(n+1)` -/
def P3072095251704726320.Spec : Prop :=
  ∀ n, P3072095251704726320.a n = A074644 (n + 1)

end A074644

/-! ## A074644.P951902941973403846

`C(A000010((n+1)²), 3)%(n+1)`
-/

namespace A074644.P951902941973403846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000010 ((n + 1) ^ 2)).toNat 3 % (n + 1)

end

end A074644.P951902941973403846

namespace A074644

/-- `C(A000010((n+1)²), 3)%(n+1)` -/
def P951902941973403846.Spec : Prop :=
  ∀ n, (P951902941973403846.a n : ℤ) = A074644 (n + 1)

end A074644

/-! ## A074644.P13776389503431324333

`A000010(lcm(3, (n+1)²)/3)%(n+1)`
-/

namespace A074644.P13776389503431324333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (SequenceMachineLib.roundAway ((Nat.lcm 3 ((n + 1) ^ 2) : ℚ) / 3)).toNat) (n + 1 : ℤ)

end

end A074644.P13776389503431324333

namespace A074644

/-- `A000010(lcm(3, (n+1)²)/3)%(n+1)` -/
def P13776389503431324333.Spec : Prop :=
  ∀ n, P13776389503431324333.a n = A074644 (n + 1)

end A074644

/-! ## A074644.P16062494984999187731

`A000010(A046162(n+2))%(n+1)`
-/

namespace A074644.P16062494984999187731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A046162 (n + 2)).toNat) (n + 1 : ℤ)

end

end A074644.P16062494984999187731

namespace A074644

/-- `A000010(A046162(n+2))%(n+1)` -/
def P16062494984999187731.Spec : Prop :=
  ∀ n, P16062494984999187731.a n = A074644 (n + 1)

end A074644

/-! ## A074644.P17023409825295994086

`A000010(2*A129202(n))%(n+1)`
-/

namespace A074644.P17023409825295994086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (2 * A129202 n).toNat) (n + 1 : ℤ)

end

end A074644.P17023409825295994086

namespace A074644

/-- `A000010(2*A129202(n))%(n+1)` -/
def P17023409825295994086.Spec : Prop :=
  ∀ n, P17023409825295994086.a n = A074644 (n + 1)

end A074644

/-! ## A074644.P5103500596459923869

`A117108((n+1)²)%(n+1)`
-/

namespace A074644.P5103500596459923869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117108 ((n + 1) ^ 2)) (n + 1 : ℤ)

end

end A074644.P5103500596459923869

namespace A074644

/-- `A117108((n+1)²)%(n+1)` -/
def P5103500596459923869.Spec : Prop :=
  ∀ n, P5103500596459923869.a n = A074644 (n + 1)

end A074644

/-! ## A074644.P13752118651743203584

`A346760((n+1)²)%(n+1)`
-/

namespace A074644.P13752118651743203584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346760 ((n + 1) ^ 2)) (n + 1 : ℤ)

end

end A074644.P13752118651743203584

namespace A074644

/-- `A346760((n+1)²)%(n+1)` -/
def P13752118651743203584.Spec : Prop :=
  ∀ n, P13752118651743203584.a n = A074644 (n + 1)

end A074644

/-!
# A074645: Numbers k such that A000010(k) divides A074639(k).

The programs for A074645, there is no canonical definition to state claims against.
-/

/-! ## A074645.P62564361859855873

`eq[0, A074640(n+1)]+1`
-/

namespace A074645.P62564361859855873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074640 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A074645.P62564361859855873

/-! ## A074645.P11838048285466195420

`eq[1, A074643(n+1)]+1`
-/

namespace A074645.P11838048285466195420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074643 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A074645.P11838048285466195420

/-! ## A074645.P16859362315716840406

`record[A000027(n+1)/A074643(n+1)]`
-/

namespace A074645.P16859362315716840406
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A074643 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074645.P16859362315716840406

/-! ## A074645.P17570186658229901809

`eq[A000010(n+1), A074641(n+1)]+1`
-/

namespace A074645.P17570186658229901809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074641 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A074645.P17570186658229901809

/-! ## A074645.P9745950872197070640

`lt[A074639(n+1)%A000010(n+1), 1]+1`
-/

namespace A074645.P9745950872197070640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074639 (n + 1)) (A000010 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A074645.P9745950872197070640

/-!
# A074646: a(n) = A074639(A074645(n)).

The programs for A074646, there is no canonical definition to state claims against.
-/

/-! ## A074646.P7295511998504607344

`A074639(A074645(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A074646.P7295511998504607344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074639 (A074645 (n + 1)).toNat

end

end A074646.P7295511998504607344

/-! ## A074646.P1869765914245568046

`A074639(eq[0, A074640(n+1)]+1)`
-/

namespace A074646.P1869765914245568046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074639 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A074646.P1869765914245568046

/-! ## A074646.P7581997617555042535

`A074639(eq[1, A074643(n+1)]+1)`
-/

namespace A074646.P7581997617555042535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074643 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074639 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A074646.P7581997617555042535

/-! ## A074646.P17431569529520499226

`A074639(lt[A074643(n+1), 2]+1)`
-/

namespace A074646.P17431569529520499226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074643 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074639 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A074646.P17431569529520499226

/-! ## A074646.P3053559767244605397

`A074639(record[(n+1)/A074643(n+1)])`
-/

namespace A074646.P3053559767244605397
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A074643 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074639 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A074646.P3053559767244605397

/-!
# A074647: Numbers k such that A074639(k) and A000010(k) are coprime.

The programs for A074647, there is no canonical definition to state claims against.
-/

/-! ## A074647.P6994423971219588207

`eq[1, A074641(n+1)]+1`
-/

namespace A074647.P6994423971219588207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074641 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A074647.P6994423971219588207

/-! ## A074647.P5387550798192008892

`record[(n+1)/A074641(A028310(n)+1)]`
-/

namespace A074647.P5387550798192008892
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A074641 (A028310 n + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074647.P5387550798192008892

/-! ## A074647.P1097605701780166550

`eq[A000010(n+1), A074643(n+1)]+1`
-/

namespace A074647.P1097605701780166550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074643 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A074647.P1097605701780166550

/-! ## A074647.P15123857256206992551

`eq[1, gcd(A000010(n+1), A074639(n+1))]+1`
-/

namespace A074647.P15123857256206992551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (n + 1)) (A074639 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A074647.P15123857256206992551

/-! ## A074647.P18439834361479431985

`record[A130091(n+1)/A074641(A130091(n+1))]`
-/

namespace A074647.P18439834361479431985
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130091 (n + 1) : ℚ) / (A074641 (A130091 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074647.P18439834361479431985

/-!
# A074648: a(n)=A074639(A074647(n)).

The programs for A074648, there is no canonical definition to state claims against.
-/

/-! ## A074648.P8020618390525639435

`A074639(A074647(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A074648.P8020618390525639435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074639 (A074647 (n + 1)).toNat

end

end A074648.P8020618390525639435

/-! ## A074648.P6043305389592085803

`A074642(A074647(2*n+1-n))`
-/

namespace A074648.P6043305389592085803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074642 (A074647 (2 * n + 1 - n)).toNat

end

end A074648.P6043305389592085803

/-! ## A074648.P8273237166630641783

`A074639(record[(n+1)/A074641(n+1)])`
-/

namespace A074648.P8273237166630641783
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A074641 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074639 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A074648.P8273237166630641783

/-! ## A074648.P13186187775160360655

`A074642(A074647(n+1)%A121035(n+1))`
-/

namespace A074648.P13186187775160360655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074642 (Int.tmod (A074647 (n + 1)) (A121035 (n + 1))).toNat

end

end A074648.P13186187775160360655

/-! ## A074648.P13516853253942884234

`A074642(A074647(n+1))%A191456(n+1)`
-/

namespace A074648.P13516853253942884234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074642 (A074647 (n + 1)).toNat) (A191456 (n + 1))

end

end A074648.P13516853253942884234

/-! ## A074648.P1514324737466744816

`A074644(3*n+5)+A074642(A074647(n+1))`
-/

namespace A074648.P1514324737466744816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074644 (3 * n + 5) + A074642 (A074647 (n + 1)).toNat

end

end A074648.P1514324737466744816

/-!
# A074650: Table T(n,k) read by downward antidiagonals: number of Lyndon words (aperiodic necklaces) with n beads of k colors, n >= 1, k >= 1.

The programs for A074650, there is no canonical definition to state claims against.
-/

/-! ## A074650.P3213286000308863398

`A143324(n+1)/A128227(n)`
-/

namespace A074650.P3213286000308863398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143324 (n + 1) : ℚ) / (A128227 n : ℚ)

end

end A074650.P3213286000308863398

/-! ## A074650.P17643692034381576731

`A143324(n+1)/A193738(n)`
-/

namespace A074650.P17643692034381576731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143324 (n + 1) : ℚ) / (A193738 n : ℚ)

end

end A074650.P17643692034381576731

/-! ## A074650.P7331978964579701297

`A143324(n+1)/A002260(n+1)`
-/

namespace A074650.P7331978964579701297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143324 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A074650.P7331978964579701297

/-! ## A074650.P9585588207991492311

`A143324(n+1)/(A002262(n)+1)`
-/

namespace A074650.P9585588207991492311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143324 (n + 1) : ℚ) / (A002262 n + 1 : ℚ)

end

end A074650.P9585588207991492311

/-! ## A074650.P10941549983045016496

`A143324(n+1)/A080511(n+1)`
-/

namespace A074650.P10941549983045016496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143324 (n + 1) : ℚ) / (A080511 (n + 1) : ℚ)

end

end A074650.P10941549983045016496

/-! ## A074650.P17736103831926804479

`A143324(n+1)/A080818(n+1)`
-/

namespace A074650.P17736103831926804479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143324 (n + 1) : ℚ) / (A080818 (n + 1) : ℚ)

end

end A074650.P17736103831926804479

/-! ## A074650.P12009615905257168021

`A143324(n+1)/A081517(n+1)`
-/

namespace A074650.P12009615905257168021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143324 (n + 1) : ℚ) / (A081517 (n + 1) : ℚ)

end

end A074650.P12009615905257168021

/-! ## A074650.P1178759141035590504

`A143324(n+1)/A128077(n+1)`
-/

namespace A074650.P1178759141035590504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143324 (n + 1) : ℚ) / (A128077 (n + 1) : ℚ)

end

end A074650.P1178759141035590504

/-! ## A074650.P12922979839360979210

`A143324(n+1)/sqrt(A133819(n+1))`
-/

namespace A074650.P12922979839360979210
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A143324 (n + 1) : ℝ) / Real.sqrt (A133819 (n + 1) : ℝ)

end

end A074650.P12922979839360979210

/-! ## A074650.P1344789991478241414

`A143324(n+1)/A004736(A038722(n+1))`
-/

namespace A074650.P1344789991478241414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143324 (n + 1) : ℚ) / (A004736 (A038722 (n + 1)).toNat : ℚ)

end

end A074650.P1344789991478241414

/-! ## A074650.P13637207182084038140

`2*A276550(n+1)-A284856(n+1)`
-/

namespace A074650.P13637207182084038140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A276550 (n + 1) - A284856 (n + 1)

end

end A074650.P13637207182084038140

/-! ## A074650.P7302707071366381180

`A143324(n+1)/A080508(n+1)`
-/

namespace A074650.P7302707071366381180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143324 (n + 1) : ℚ) / (A080508 (n + 1) : ℚ)

end

end A074650.P7302707071366381180

/-!
# A074651: (1/n) * sum over d|n of {mu(n/d) * (3d)! / d!^3}.

The programs for A074651, there is no canonical definition to state claims against.
-/

/-! ## A074651.P15477506623539108655

`3*A074655(n+1)`
-/

namespace A074651.P15477506623539108655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A074655 (n + 1)

end

end A074651.P15477506623539108655

/-! ## A074651.P16520996330334265106

`6*A029808(n+1)`
-/

namespace A074651.P16520996330334265106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A029808 (n + 1)

end

end A074651.P16520996330334265106

/-! ## A074651.P772032582262332072

`Δ[3*∑[A074655(n)]]`
-/

namespace A074651.P772032582262332072
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074655 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074651.P772032582262332072

/-!
# A074652: 1/n * sum over d|n of {mu(n/d) * (4d)! / d!^4}.

The programs for A074652, there is no canonical definition to state claims against.
-/

/-! ## A074652.P18367973424954636061

`4*A074656(n+1)`
-/

namespace A074652.P18367973424954636061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A074656 (n + 1)

end

end A074652.P18367973424954636061

/-! ## A074652.P9017901314343210605

`24*A029809(n+1)`
-/

namespace A074652.P9017901314343210605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A029809 (n + 1)

end

end A074652.P9017901314343210605

/-! ## A074652.P6216225599856255903

`Δ[4*∑[A074656(n)]]`
-/

namespace A074652.P6216225599856255903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074656 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074652.P6216225599856255903

/-! ## A074652.P9420746297128063843

`24*record[ratio[A074656(A158416(n))]]`
-/

namespace A074652.P9420746297128063843
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074656 (A158416 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  24 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074652.P9420746297128063843

/-!
# A074653: 1/n * sum over d|n of {mu(n/d) * (5d)! / d!^5}.

The programs for A074653, there is no canonical definition to state claims against.
-/

/-! ## A074653.P9000212834253799945

`5*A074657(n+1)`
-/

namespace A074653.P9000212834253799945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A074657 (n + 1)

end

end A074653.P9000212834253799945

/-!
# A074654: Number of Lyndon words (aperiodic necklaces) with 5n beads of 5 colors, n beads of each color. One color labeled, the other 4 unlabeled.

The programs for A074654, there is no canonical definition to state claims against.
-/

/-! ## A074654.P17931896415734287291

`record[ratio[A074653(A158416(n))]]`
-/

namespace A074654.P17931896415734287291
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074653 (A158416 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074654.P17931896415734287291

/-!
# A074658: Number of 'convex' partitions of n; i.e., partitions of n for which the Ferrers graph is the intersection of a convex set and the integer lattice.

The programs for A074658, there is no canonical definition to state claims against.
-/

/-! ## A074658.P13006181824916483570

`∑[A074659(abs(1-n))]`
-/

namespace A074658.P13006181824916483570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074659 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074658.P13006181824916483570

/-! ## A074658.P15303736124242399020

`A074659(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A074658.P15303736124242399020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A074659 (n - 1) + a (n - 1)

end

end A074658.P15303736124242399020

/-! ## A074658.P2011872496540211526

`∑[A074659(A028310(n)-1)]+1`
-/

namespace A074658.P2011872496540211526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074659 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A074658.P2011872496540211526

/-! ## A074658.P15227248907908082791

`∑[A074659(n)]+1-A074659(n)`
-/

namespace A074658.P15227248907908082791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A074659 n)

end

end A074658.P15227248907908082791

/-! ## A074658.P7405513586537292835

`∑[A074659(A028310(n))]-A074659(n)`
-/

namespace A074658.P7405513586537292835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074659 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A074659 n

end

end A074658.P7405513586537292835

/-!
# A074659: First differences of A074658, which counts the convex partitions of n.

The programs for A074659, there is no canonical definition to state claims against.
-/

/-! ## A074659.P685484162691630490

`A074658(n+1)-A074658(n)`
-/

namespace A074659.P685484162691630490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074658 (n + 1) - A074658 n

end

end A074659.P685484162691630490

/-! ## A074659.P12260716924993732984

`Δ[A074658(n)]`
-/

namespace A074659.P12260716924993732984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074658 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074659.P12260716924993732984

/-! ## A074659.P9752568509632194755

`∑[A074660(abs(1-n))]`
-/

namespace A074659.P9752568509632194755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074660 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074659.P9752568509632194755

/-! ## A074659.P7542007653642163555

`A074660(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A074659.P7542007653642163555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A074660 (n - 1) + a (n - 1)

end

end A074659.P7542007653642163555

/-! ## A074659.P12378060135986111418

`∑[A074660(n)]-A074660(n)`
-/

namespace A074659.P12378060135986111418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074660 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A074660 n

end

end A074659.P12378060135986111418

/-!
# A074660: Second differences of A074658, which counts the convex partitions of n.

The programs for A074660, there is no canonical definition to state claims against.
-/

/-! ## A074660.P6835796303413989434

`A074659(n+1)-A074659(n)`
-/

namespace A074660.P6835796303413989434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074659 (n + 1) - A074659 n

end

end A074660.P6835796303413989434

/-! ## A074660.P14126358698583679837

`A074658(n+2)-2*A074658(n+1)+A074658(n)`
-/

namespace A074660.P14126358698583679837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074658 (n + 2) - 2 * A074658 (n + 1) + A074658 n

end

end A074660.P14126358698583679837

/-! ## A074660.P15324181823879117551

`Δ[A074659(n)]`
-/

namespace A074660.P15324181823879117551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074660.P15324181823879117551

/-! ## A074660.P14305724300300819401

`Δ[Δ[A074658(n)]]`
-/

namespace A074660.P14305724300300819401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074658 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074660.P14305724300300819401

/-! ## A074660.P4959399448920255445

`A074659(A052938(2*n))-A121418(A228362(n))%A052938(n)`
-/

namespace A074660.P4959399448920255445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074659 (A052938 (2 * n)).toNat - Int.tmod (A121418 (A228362 n).toNat) (A052938 n)

end

end A074660.P4959399448920255445

/-!
# A074661: Let n = 2^e_2 * 3^e_3 * 5^e_5 * ... be the prime factorization of n; sequence gives n such that max{e_2, e_3, ...} is prime.

The programs for A074661, the canonical program `A074661.P11748437704259827702` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074661 has offset 1).

The definition of A074661 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074661.P11748437704259827702

`eq[1, A003415(A051903(n+1))]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A074661

/-- `eq[1, A003415(A051903(n+1))]+1` -/
def P11748437704259827702.Spec : Prop :=
  ∀ n, (P11748437704259827702.a n : ℤ) = A074661 (n + 1)

theorem P11748437704259827702.correct : P11748437704259827702.Spec := by
  intro n
  simp only [A074661, Nat.add_sub_cancel]

end A074661

/-! ## A074661.P4114960096798192696

`eq[1, A001222(A051903(n+2))]+2`
-/

namespace A074661.P4114960096798192696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A051903 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A074661.P4114960096798192696

namespace A074661

/-- `eq[1, A001222(A051903(n+2))]+2` -/
def P4114960096798192696.Spec : Prop :=
  ∀ n, (P4114960096798192696.a n : ℤ) = A074661 (n + 1)

end A074661

/-! ## A074661.P15677489386625330319

`eq[1, A001222(A066301(n+1)+1)]+1`
-/

namespace A074661.P15677489386625330319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A066301 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A074661.P15677489386625330319

namespace A074661

/-- `eq[1, A001222(A066301(n+1)+1)]+1` -/
def P15677489386625330319.Spec : Prop :=
  ∀ n, (P15677489386625330319.a n : ℤ) = A074661 (n + 1)

end A074661

/-! ## A074661.P1016996001663464584

`lt[A125071(n+1), A125030(n+1)]+1`
-/

namespace A074661.P1016996001663464584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125030 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A074661.P1016996001663464584

namespace A074661

/-- `lt[A125071(n+1), A125030(n+1)]+1` -/
def P1016996001663464584.Spec : Prop :=
  ∀ n, (P1016996001663464584.a n : ℤ) = A074661 (n + 1)

end A074661

/-! ## A074661.P4844516890667407809

`eq[2, A005128(A051903(A233583(n+1)))]`
-/

namespace A074661.P4844516890667407809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005128 (A051903 (A233583 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A074661.P4844516890667407809

namespace A074661

/-- `eq[2, A005128(A051903(A233583(n+1)))]` -/
def P4844516890667407809.Spec : Prop :=
  ∀ n, (P4844516890667407809.a n : ℤ) = A074661 (n + 1)

end A074661

/-! ## A074661.P8806913814194145521

`lt[A008683(n+1)^A226951(n+6), A317941(n+1)]+1`
-/

namespace A074661.P8806913814194145521
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (n + 1) : ℚ) ^ (A226951 (n + 6) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317941 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A074661.P8806913814194145521

namespace A074661

/-- `lt[A008683(n+1)^A226951(n+6), A317941(n+1)]+1` -/
def P8806913814194145521.Spec : Prop :=
  ∀ n, (P8806913814194145521.a n : ℤ) = A074661 (n + 1)

end A074661

/-! ## A074661.P12905924848268274614

`∪[A082293(n+1), A385097(n+1)]`
-/

namespace A074661.P12905924848268274614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082293 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A074661.P12905924848268274614

namespace A074661

/-- `∪[A082293(n+1), A385097(n+1)]` -/
def P12905924848268274614.Spec : Prop :=
  ∀ n, (P12905924848268274614.a n : ℤ) = A074661 (n + 1)

end A074661

/-!
# A074662: a(n) = Fibonacci(n+1)+cos(n*Pi/2).

The programs for A074662, the canonical program `A074662.P2985262252299663908` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074662 has offset 0).

The definition of A074662 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074662.P15561913035638906721

`ogf((2-x)/(1-x-x^3-x^4))`
-/

namespace A074662.P15561913035638906721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1] [1, -1, 0, -1, -1] n

end

end A074662.P15561913035638906721

namespace A074662

/-- `ogf((2-x)/(1-x-x^3-x^4))` -/
def P15561913035638906721.Spec : Prop :=
  ∀ n, P15561913035638906721.a n = A074662 n

end A074662

/-! ## A074662.P2985262252299663908

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=2, a(1)=1, a(2)=1, a(3)=3`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074662

/-- `a(n-1)+a(n-3)+a(n-4)` -/
def P2985262252299663908.Spec : Prop :=
  ∀ n, (P2985262252299663908.a n : ℤ) = A074662 n

theorem P2985262252299663908.correct : P2985262252299663908.Spec := by
  intro n
  simp only [A074662]

end A074662

/-! ## A074662.P16190473291350040138

`A000045(n+1)+cos(n*π/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A074662.P16190473291350040138
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) : ℝ) + Real.cos ((n : ℝ) * Real.pi / 2)

end

end A074662.P16190473291350040138

namespace A074662

/-- `A000045(n+1)+cos(n*π/2)` -/
def P16190473291350040138.Spec : Prop :=
  ∀ n, P16190473291350040138.a n = (A074662 n : ℝ)

end A074662

/-! ## A074662.P9586954263667607493

`A115008(n)+A057077(n)`
-/

namespace A074662.P9586954263667607493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115008 n + A057077 n

end

end A074662.P9586954263667607493

namespace A074662

/-- `A115008(n)+A057077(n)` -/
def P9586954263667607493.Spec : Prop :=
  ∀ n, P9586954263667607493.a n = A074662 n

end A074662

/-! ## A074662.P8783096407771968058

`A295684(n)+A295681(n)`
-/

namespace A074662.P8783096407771968058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295684 n + A295681 n

end

end A074662.P8783096407771968058

namespace A074662

/-- `A295684(n)+A295681(n)` -/
def P8783096407771968058.Spec : Prop :=
  ∀ n, P8783096407771968058.a n = A074662 n

end A074662

/-! ## A074662.P13764575814163433469

`A295685(n)+A295680(n)`
-/

namespace A074662.P13764575814163433469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295685 n + A295680 n

end

end A074662.P13764575814163433469

namespace A074662

/-- `A295685(n)+A295680(n)` -/
def P13764575814163433469.Spec : Prop :=
  ∀ n, P13764575814163433469.a n = A074662 n

end A074662

/-! ## A074662.P16687793719382696795

`A236144(n)-A101455(n)`
-/

namespace A074662.P16687793719382696795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236144 n - A101455 n

end

end A074662.P16687793719382696795

namespace A074662

/-- `A236144(n)-A101455(n)` -/
def P16687793719382696795.Spec : Prop :=
  ∀ n, P16687793719382696795.a n = A074662 n

end A074662

/-! ## A074662.P2663530918770598980

`A081659(n)-A290562(n)`
-/

namespace A074662.P2663530918770598980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081659 n - A290562 n

end

end A074662.P2663530918770598980

namespace A074662

/-- `A081659(n)-A290562(n)` -/
def P2663530918770598980.Spec : Prop :=
  ∀ n, P2663530918770598980.a n = A074662 n

end A074662

/-! ## A074662.P9153197414953831392

`A056594(n)+A000045(n+1)`
-/

namespace A074662.P9153197414953831392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n + A000045 (n + 1)

end

end A074662.P9153197414953831392

namespace A074662

/-- `A056594(n)+A000045(n+1)` -/
def P9153197414953831392.Spec : Prop :=
  ∀ n, P9153197414953831392.a n = A074662 n

end A074662

/-! ## A074662.P5160772047466949186

`A236144(n)+A056594(n+1)`
-/

namespace A074662.P5160772047466949186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236144 n + A056594 (n + 1)

end

end A074662.P5160772047466949186

namespace A074662

/-- `A236144(n)+A056594(n+1)` -/
def P5160772047466949186.Spec : Prop :=
  ∀ n, P5160772047466949186.a n = A074662 n

end A074662

/-! ## A074662.P7632773706328679472

`A236165(n+1)+A126116(n)`
-/

namespace A074662.P7632773706328679472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236165 (n + 1) + A126116 n

end

end A074662.P7632773706328679472

namespace A074662

/-- `A236165(n+1)+A126116(n)` -/
def P7632773706328679472.Spec : Prop :=
  ∀ n, P7632773706328679472.a n = A074662 n

end A074662

/-! ## A074662.P18351679890429653726

`A115008(n)-A087960(n+1)`
-/

namespace A074662.P18351679890429653726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115008 n - A087960 (n + 1)

end

end A074662.P18351679890429653726

namespace A074662

/-- `A115008(n)-A087960(n+1)` -/
def P18351679890429653726.Spec : Prop :=
  ∀ n, P18351679890429653726.a n = A074662 n

end A074662

/-! ## A074662.P17995038131553241416

`A111573(n)+2*A056594(n)`
-/

namespace A074662.P17995038131553241416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111573 n + 2 * A056594 n

end

end A074662.P17995038131553241416

namespace A074662

/-- `A111573(n)+2*A056594(n)` -/
def P17995038131553241416.Spec : Prop :=
  ∀ n, P17995038131553241416.a n = A074662 n

end A074662

/-! ## A074662.P3224964802998471053

`A143621(2*n)+A115008(n)`
-/

namespace A074662.P3224964802998471053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143621 (2 * n) + A115008 n

end

end A074662.P3224964802998471053

namespace A074662

/-- `A143621(2*n)+A115008(n)` -/
def P3224964802998471053.Spec : Prop :=
  ∀ n, P3224964802998471053.a n = A074662 n

end A074662

/-! ## A074662.P8615260683322351608

`∑[A212804(n)+A057077(n+1)]`
-/

namespace A074662.P8615260683322351608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A057077 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074662.P8615260683322351608

namespace A074662

/-- `∑[A212804(n)+A057077(n+1)]` -/
def P8615260683322351608.Spec : Prop :=
  ∀ n, P8615260683322351608.a n = A074662 n

end A074662

/-! ## A074662.P1059624027447655254

`A074677(n+1)+Δ[A074677(n)]`
-/

namespace A074662.P1059624027447655254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074677 (n + 1) + (f1 (n + 1) - f1 n)

end

end A074662.P1059624027447655254

namespace A074662

/-- `A074677(n+1)+Δ[A074677(n)]` -/
def P1059624027447655254.Spec : Prop :=
  ∀ n, P1059624027447655254.a n = A074662 n

end A074662

/-! ## A074662.P17530479055331776918

`A000071(n+1)+A056594(n)+1`
-/

namespace A074662.P17530479055331776918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + (A056594 n + 1)

end

end A074662.P17530479055331776918

namespace A074662

/-- `A000071(n+1)+A056594(n)+1` -/
def P17530479055331776918.Spec : Prop :=
  ∀ n, P17530479055331776918.a n = A074662 n

end A074662

/-! ## A074662.P1941592287280458872

`A101455(n+1)+A000045(n+1)`
-/

namespace A074662.P1941592287280458872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 (n + 1) + A000045 (n + 1)

end

end A074662.P1941592287280458872

namespace A074662

/-- `A101455(n+1)+A000045(n+1)` -/
def P1941592287280458872.Spec : Prop :=
  ∀ n, P1941592287280458872.a n = A074662 n

end A074662

/-! ## A074662.P12476666616773950796

`A000071(n+1)+A007877(n+2)`
-/

namespace A074662.P12476666616773950796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + A007877 (n + 2)

end

end A074662.P12476666616773950796

namespace A074662

/-- `A000071(n+1)+A007877(n+2)` -/
def P12476666616773950796.Spec : Prop :=
  ∀ n, P12476666616773950796.a n = A074662 n

end A074662

/-! ## A074662.P6810994096540648638

`A014017(2*n)+A000045(n+1)`
-/

namespace A074662.P6810994096540648638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014017 (2 * n) + A000045 (n + 1)

end

end A074662.P6810994096540648638

namespace A074662

/-- `A014017(2*n)+A000045(n+1)` -/
def P6810994096540648638.Spec : Prop :=
  ∀ n, P6810994096540648638.a n = A074662 n

end A074662

/-!
# A074663: a(n) = sum of n-th row of the triangle formed by replacing each m in Pascal's triangle with the m-th prime.

The programs for A074663, there is no canonical definition to state claims against.
-/

/-! ## A074663.P1854016705201053402

`A350425(A000079(n))+A276086(n)`
-/

namespace A074663.P1854016705201053402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350425 (A000079 n).toNat + A276086 n

end

end A074663.P1854016705201053402

/-! ## A074663.P14868979237448649557

`A262357(A064856(n))+A005313(n+1)`
-/

namespace A074663.P14868979237448649557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262357 (A064856 n).toNat + A005313 (n + 1)

end

end A074663.P14868979237448649557

/-! ## A074663.P4846988263057576574

`A338643(A338626(n+1)+A052918(n))`
-/

namespace A074663.P4846988263057576574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338643 (A338626 (n + 1) + A052918 n).toNat

end

end A074663.P4846988263057576574

/-!
# A074664: Number of algebraically independent elements of degree n in the algebra of symmetric polynomials in noncommuting variables.

The programs for A074664, there is no canonical definition to state claims against.
-/

/-! ## A074664.P7919920255155907072

`A086211(∑[n]+1)`
-/

namespace A074664.P7919920255155907072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086211 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A074664.P7919920255155907072

/-! ## A074664.P15927916265012188534

`A127743(∑[n]+1)`
-/

namespace A074664.P15927916265012188534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127743 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A074664.P15927916265012188534

/-! ## A074664.P14432383444767402228

`A130167(∑[n+1]+1)`
-/

namespace A074664.P14432383444767402228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130167 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A074664.P14432383444767402228

/-! ## A074664.P14378328412573481658

`A127745(n+1)+A000108(n)`
-/

namespace A074664.P14378328412573481658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127745 (n + 1) + A000108 n

end

end A074664.P14378328412573481658

/-! ## A074664.P6987514650474399449

`A127745(n+1)+A120588(n+1)`
-/

namespace A074664.P6987514650474399449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127745 (n + 1) + A120588 (n + 1)

end

end A074664.P6987514650474399449

/-! ## A074664.P16515166851195843182

`A127745(n+1)-A115140(n+1)`
-/

namespace A074664.P16515166851195843182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127745 (n + 1) - A115140 (n + 1)

end

end A074664.P16515166851195843182

/-! ## A074664.P10489211569795825124

`A127745(n+1)+A126120(2*n)`
-/

namespace A074664.P10489211569795825124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127745 (n + 1) + A126120 (2 * n)

end

end A074664.P10489211569795825124

/-!
# A074666: Differences between successive 8-digit distinct digit primes.

The programs for A074666, there is no canonical definition to state claims against.
-/

/-! ## A074666.P9628338203228433268

`Δ[A074665(n+1)]`
-/

namespace A074666.P9628338203228433268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074666.P9628338203228433268

/-! ## A074666.P10621521177774014330

`A074665(n+2)-A074665(n+1)`
-/

namespace A074666.P10621521177774014330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074665 (n + 2) - A074665 (n + 1)

end

end A074666.P10621521177774014330

/-! ## A074666.P9895042582282136485

`A074665(A000027(n+2))%A074665(n+1)`
-/

namespace A074666.P9895042582282136485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074665 (A000027 (n + 2)).toNat) (A074665 (n + 1))

end

end A074666.P9895042582282136485

/-! ## A074666.P1123432151812180948

`A074665(A028310(n+2))%A074665(n+1)`
-/

namespace A074666.P1123432151812180948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074665 (A028310 (n + 2)).toNat) (A074665 (n + 1))

end

end A074666.P1123432151812180948

/-!
# A074668: Differences between successive 7-digit distinct-digit primes.

The programs for A074668, there is no canonical definition to state claims against.
-/

/-! ## A074668.P1970814544377436806

`Δ[A074667(n+1)]`
-/

namespace A074668.P1970814544377436806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074668.P1970814544377436806

/-! ## A074668.P16667271128321978737

`A074667(n+2)-A074667(n+1)`
-/

namespace A074668.P16667271128321978737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074667 (n + 2) - A074667 (n + 1)

end

end A074668.P16667271128321978737

/-! ## A074668.P3392388387908812846

`Δ[record[A074667(A133310(n))]]`
-/

namespace A074668.P3392388387908812846
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074667 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074668.P3392388387908812846

/-! ## A074668.P17089992768460723005

`Δ[record[A074667(A109785(n))]]`
-/

namespace A074668.P17089992768460723005
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074667 (A109785 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074668.P17089992768460723005

/-! ## A074668.P10487025819605133446

`Δ[record[A074667(A263274(n))]]`
-/

namespace A074668.P10487025819605133446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074667 (A263274 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074668.P10487025819605133446

/-! ## A074668.P17053153963812805903

`Δ[record[A074667(A134478(n))]]`
-/

namespace A074668.P17053153963812805903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074667 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074668.P17053153963812805903

/-!
# A074669: Six-digit distinct-digit primes.

The programs for A074669, there is no canonical definition to state claims against.
-/

/-! ## A074669.P17995589686287890420

`p?[A220076(n+1)]`
-/

namespace A074669.P17995589686287890420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074669.P17995589686287890420

/-!
# A074670: Differences between successive six-digit distinct-digit primes.

The programs for A074670, there is no canonical definition to state claims against.
-/

/-! ## A074670.P6900321899147350198

`Δ[A074669(n+1)]`
-/

namespace A074670.P6900321899147350198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074670.P6900321899147350198

/-! ## A074670.P1344342582028609536

`A074669(n+2)-A074669(n+1)`
-/

namespace A074670.P1344342582028609536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074669 (n + 2) - A074669 (n + 1)

end

end A074670.P1344342582028609536

/-! ## A074670.P1498756407401235661

`Δ[record[A074669(A133310(n))]]`
-/

namespace A074670.P1498756407401235661
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074669 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074670.P1498756407401235661

/-! ## A074670.P9886310484713930446

`Δ[record[A074669(A109785(n))]]`
-/

namespace A074670.P9886310484713930446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074669 (A109785 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074670.P9886310484713930446

/-! ## A074670.P13404699095180480896

`Δ[p?[A220076(n+1)]]`
-/

namespace A074670.P13404699095180480896
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220076 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074670.P13404699095180480896

/-! ## A074670.P14870241003428370861

`Δ[record[A074669(A134478(n))]]`
-/

namespace A074670.P14870241003428370861
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074669 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074670.P14870241003428370861

/-!
# A074671: Five-digit distinct-digit primes.

The programs for A074671, there is no canonical definition to state claims against.
-/

/-! ## A074671.P11589710365369903281

`p?[A031987(n+1)]`
-/

namespace A074671.P11589710365369903281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074671.P11589710365369903281

/-! ## A074671.P13849488564864161534

`filter[A031987(n+1), A010051(#)]`
-/

namespace A074671.P13849488564864161534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A074671.P13849488564864161534

/-! ## A074671.P13525309808646288276

`filter[A031987(n+1), A323153(#)]`
-/

namespace A074671.P13525309808646288276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A074671.P13525309808646288276

/-! ## A074671.P4119389820645198232

`∩[A031987(n+1), A120533(n+1)]`
-/

namespace A074671.P4119389820645198232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074671.P4119389820645198232

/-! ## A074671.P13172381025659183805

`∩[A031987(n+1), A045707(n+1)]`
-/

namespace A074671.P13172381025659183805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074671.P13172381025659183805

/-!
# A074672: Differences between successive five-digit distinct-digit primes.

The programs for A074672, there is no canonical definition to state claims against.
-/

/-! ## A074672.P16524289021987281069

`Δ[A074671(n+1)]`
-/

namespace A074672.P16524289021987281069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074672.P16524289021987281069

/-! ## A074672.P6577971260664962208

`A074671(n+2)-A074671(n+1)`
-/

namespace A074672.P6577971260664962208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074671 (n + 2) - A074671 (n + 1)

end

end A074672.P6577971260664962208

/-! ## A074672.P12931888887253803777

`A074671(n+2)%A074671(A000027(n+1))`
-/

namespace A074672.P12931888887253803777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074671 (n + 2)) (A074671 (A000027 (n + 1)).toNat)

end

end A074672.P12931888887253803777

/-! ## A074672.P14890625178644205160

`Δ[p?[A031987(n+1)]]`
-/

namespace A074672.P14890625178644205160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031987 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074672.P14890625178644205160

/-!
# A074673: Four-digit distinct-digit primes.

The programs for A074673, the canonical program `A074673.P8380680126646116252` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074673 has offset 1).

The definition of A074673 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 510 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074673.P8937235682474981206

`A029743(11*(n/11+11)+1)`
-/

namespace A074673.P8937235682474981206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029743 (SequenceMachineLib.roundAway (11 * ((n : ℚ) / 11 + 11) + 1)).toNat

end

end A074673.P8937235682474981206

namespace A074673

/-- `A029743(11*(n/11+11)+1)` -/
def P8937235682474981206.Spec : Prop :=
  ∀ n, P8937235682474981206.a n = A074673 (n + 1)

end A074673

/-! ## A074673.P8380680126646116252

`filter[A031969(n+1), A080339(#)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A074673

/-- `filter[A031969(n+1), A080339(#)]` -/
def P8380680126646116252.Spec : Prop :=
  ∀ n, P8380680126646116252.a n = A074673 (n + 1)

theorem P8380680126646116252.correct : P8380680126646116252.Spec := by
  intro n
  simp only [A074673, Nat.add_sub_cancel]

end A074673

/-! ## A074673.P11776176693980835482

`filter[A031969(n+1), A080545(#)]`
-/

namespace A074673.P11776176693980835482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031969 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A074673.P11776176693980835482

namespace A074673

/-- `filter[A031969(n+1), A080545(#)]` -/
def P11776176693980835482.Spec : Prop :=
  ∀ n, P11776176693980835482.a n = A074673 (n + 1)

end A074673

/-! ## A074673.P13478807418042295415

`filter[A031969(n+1), A171387(#)]`
-/

namespace A074673.P13478807418042295415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031969 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A074673.P13478807418042295415

namespace A074673

/-- `filter[A031969(n+1), A171387(#)]` -/
def P13478807418042295415.Spec : Prop :=
  ∀ n, P13478807418042295415.a n = A074673 (n + 1)

end A074673

/-! ## A074673.P1978575034279218518

`∩[A029743(n+1), A031969(n+1)]`
-/

namespace A074673.P1978575034279218518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074673.P1978575034279218518

namespace A074673

/-- `∩[A029743(n+1), A031969(n+1)]` -/
def P1978575034279218518.Spec : Prop :=
  ∀ n, (P1978575034279218518.a n : ℤ) = A074673 (n + 1)

end A074673

/-! ## A074673.P10553217396114696025

`∩[A029743(n+1), A043640(n+1)]`
-/

namespace A074673.P10553217396114696025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074673.P10553217396114696025

namespace A074673

/-- `∩[A029743(n+1), A043640(n+1)]` -/
def P10553217396114696025.Spec : Prop :=
  ∀ n, (P10553217396114696025.a n : ℤ) = A074673 (n + 1)

end A074673

/-! ## A074673.P10082879367460033562

`∩[A031969(n+1), A050757(n+1)]`
-/

namespace A074673.P10082879367460033562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074673.P10082879367460033562

namespace A074673

/-- `∩[A031969(n+1), A050757(n+1)]` -/
def P10082879367460033562.Spec : Prop :=
  ∀ n, (P10082879367460033562.a n : ℤ) = A074673 (n + 1)

end A074673

/-! ## A074673.P10627826747431315151

`∩[A043640(n+1), A052085(n+1)]`
-/

namespace A074673.P10627826747431315151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074673.P10627826747431315151

namespace A074673

/-- `∩[A043640(n+1), A052085(n+1)]` -/
def P10627826747431315151.Spec : Prop :=
  ∀ n, (P10627826747431315151.a n : ℤ) = A074673 (n + 1)

end A074673

/-! ## A074673.P9931934233334164342

`∩[A043640(n+1), A082646(n+1)]`
-/

namespace A074673.P9931934233334164342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074673.P9931934233334164342

namespace A074673

/-- `∩[A043640(n+1), A082646(n+1)]` -/
def P9931934233334164342.Spec : Prop :=
  ∀ n, (P9931934233334164342.a n : ℤ) = A074673 (n + 1)

end A074673

/-!
# A074674: Differences between successive four-digit distinct-digit primes.

The programs for A074674, the canonical program `A074674.P16459407419065976174` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074674 has offset 1).

The definition of A074674 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 509 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074674.P7981779253606655807

`Δ[A074673(n+1)]`
-/

namespace A074674.P7981779253606655807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074674.P7981779253606655807

namespace A074674

/-- `Δ[A074673(n+1)]` -/
def P7981779253606655807.Spec : Prop :=
  ∀ n, P7981779253606655807.a n = A074674 (n + 1)

end A074674

/-! ## A074674.P16459407419065976174

`Δ[p?[A031969(n+1)]]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A074674

/-- `Δ[p?[A031969(n+1)]]` -/
def P16459407419065976174.Spec : Prop :=
  ∀ n, P16459407419065976174.a n = A074674 (n + 1)

theorem P16459407419065976174.correct : P16459407419065976174.Spec := by
  intro n
  simp only [A074674, Nat.add_sub_cancel]

end A074674

/-! ## A074674.P16118569984777077606

`Δ[record[A074673(A117910(n))]]`
-/

namespace A074674.P16118569984777077606
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074673 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074674.P16118569984777077606

namespace A074674

/-- `Δ[record[A074673(A117910(n))]]` -/
def P16118569984777077606.Spec : Prop :=
  ∀ n, P16118569984777077606.a n = A074674 (n + 1)

end A074674

/-! ## A074674.P11528139323108526079

`A074673(n+2)-A074673(n+1)`
-/

namespace A074674.P11528139323108526079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074673 (n + 2) - A074673 (n + 1)

end

end A074674.P11528139323108526079

namespace A074674

/-- `A074673(n+2)-A074673(n+1)` -/
def P11528139323108526079.Spec : Prop :=
  ∀ n, P11528139323108526079.a n = A074674 (n + 1)

end A074674

/-!
# A074675: Three-digit distinct-digit primes.

The programs for A074675, there is no canonical definition to state claims against.
-/

/-! ## A074675.P3069931899714553439

`p?[A078199(n)]`
-/

namespace A074675.P3069931899714553439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078199 (n + 100)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074675.P3069931899714553439

/-! ## A074675.P1635543940107078277

`A029743(n+25)`
-/

namespace A074675.P1635543940107078277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029743 (n + 25)

end

end A074675.P1635543940107078277

/-! ## A074675.P15240797597526864712

`A082646(n+26)`
-/

namespace A074675.P15240797597526864712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082646 (n + 26)

end

end A074675.P15240797597526864712

/-! ## A074675.P11999721567764842537

`p?[lt[n, A196222(n)]]`
-/

namespace A074675.P11999721567764842537
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196222 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A074675.P11999721567764842537

/-! ## A074675.P17404920186787441449

`p?[comp[A303502(n+1)]]`
-/

namespace A074675.P17404920186787441449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303502 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A074675.P17404920186787441449

/-! ## A074675.P15527613874653271688

`filter[A078199(n), A010051(#)]`
-/

namespace A074675.P15527613874653271688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078199 (n + 100)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A074675.P15527613874653271688

/-! ## A074675.P6270697639254125259

`record[A020639(A078199(n+3))]`
-/

namespace A074675.P6270697639254125259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A078199 (n + 3 + 100)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074675.P6270697639254125259

/-! ## A074675.P18104087505096726110

`filter[A235155(n+1), A072165(#)]`
-/

namespace A074675.P18104087505096726110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A072165 (f1 j).toNat = 1) n)

end

end A074675.P18104087505096726110

/-!
# A074676: Differences between consecutive three-digit distinct-digit primes.

The programs for A074676, there is no canonical definition to state claims against.
-/

/-! ## A074676.P16051095084275328076

`Δ[p?[A078199(n)]]`
-/

namespace A074676.P16051095084275328076
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078199 (n + 100)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074676.P16051095084275328076

/-! ## A074676.P17466613956078467862

`Δ[A074675(n+1)]`
-/

namespace A074676.P17466613956078467862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074676.P17466613956078467862

/-! ## A074676.P17626121375777729262

`Δ[A235155(n+1)]`
-/

namespace A074676.P17626121375777729262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074676.P17626121375777729262

/-! ## A074676.P15734893038202246793

`Δ[A029743(n+25)]`
-/

namespace A074676.P15734893038202246793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029743 (n + 25)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074676.P15734893038202246793

/-! ## A074676.P14462213042438336600

`Δ[A082646(n+26)]`
-/

namespace A074676.P14462213042438336600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082646 (n + 26)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074676.P14462213042438336600

/-! ## A074676.P2694557396773598717

`Δ[p?[A031962(n+1)]]`
-/

namespace A074676.P2694557396773598717
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031962 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074676.P2694557396773598717

/-! ## A074676.P17180475010171013554

`abs(Δ[A074675(-xor(n, -1))])`
-/

namespace A074676.P17180475010171013554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074675 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A074676.P17180475010171013554

/-! ## A074676.P13191952444079520716

`A074675(n+2)-A074675(n+1)`
-/

namespace A074676.P13191952444079520716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074675 (n + 2) - A074675 (n + 1)

end

end A074676.P13191952444079520716

/-! ## A074676.P3728219782084987462

`A235155(n+2)-A235155(n+1)`
-/

namespace A074676.P3728219782084987462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235155 (n + 2) - A235155 (n + 1)

end

end A074676.P3728219782084987462

/-!
# A074677: a(n) = Sum_{i = 0..floor(n/2)} (-1)^(i + floor(n/2)) F(2*i + e), where F = A000045 (Fibonacci numbers) and e = (1-(-1)^n)/2.

The programs for A074677, the canonical program `A074677.P3973385360439744347` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074677 has offset 0).

The definition of A074677 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074677.P13476727634502554036

`ogf(x/(1-x-x^3-x^4))`
-/

namespace A074677.P13476727634502554036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -1, 0, -1, -1] n

end

end A074677.P13476727634502554036

namespace A074677

/-- `ogf(x/(1-x-x^3-x^4))` -/
def P13476727634502554036.Spec : Prop :=
  ∀ n, P13476727634502554036.a n = A074677 n

end A074677

/-! ## A074677.P3973385360439744347

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074677

/-- `a(n-1)+a(n-3)+a(n-4)` -/
def P3973385360439744347.Spec : Prop :=
  ∀ n, (P3973385360439744347.a n : ℤ) = A074677 n

theorem P3973385360439744347.correct : P3973385360439744347.Spec := by
  intro n
  simp only [A074677]

end A074677

/-! ## A074677.P7539172542555221710

`round(A000045(n)/(3-ϕ))`
-/

namespace A074677.P7539172542555221710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000045 n : ℝ) / (3 - Real.goldenRatio))

end

end A074677.P7539172542555221710

namespace A074677

/-- `round(A000045(n)/(3-ϕ))` -/
def P7539172542555221710.Spec : Prop :=
  ∀ n, P7539172542555221710.a n = A074677 n

end A074677

/-! ## A074677.P2712123340109162018

`∑[A000045(n-2)-a(n-2)]` with `a(0)=0, a(1)=1`
-/

namespace A074677.P2712123340109162018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A000045 (n - 2) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074677.P2712123340109162018

namespace A074677

/-- `∑[A000045(n-2)-a(n-2)]` -/
def P2712123340109162018.Spec : Prop :=
  ∀ n, P2712123340109162018.a n = A074677 n

end A074677

/-! ## A074677.P12739812472193673655

`A000045(n-1)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A074677.P12739812472193673655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1] fun n a =>
  A000045 (n - 1) + a (n - 4)

end

end A074677.P12739812472193673655

namespace A074677

/-- `A000045(n-1)+a(n-4)` -/
def P12739812472193673655.Spec : Prop :=
  ∀ n, P12739812472193673655.a n = A074677 n

end A074677

/-! ## A074677.P10456781568636939390

`floor(A000045(2*n-n)-a(n-2))` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A074677.P10456781568636939390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000045 (2 * n - n) - a (n - 2)

end

end A074677.P10456781568636939390

namespace A074677

/-- `floor(A000045(2*n-n)-a(n-2))` -/
def P10456781568636939390.Spec : Prop :=
  ∀ n, P10456781568636939390.a n = A074677 n

end A074677

/-! ## A074677.P1314267690665426112

`A111569(n)+A056594(n)`
-/

namespace A074677.P1314267690665426112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111569 n + A056594 n

end

end A074677.P1314267690665426112

namespace A074677

/-- `A111569(n)+A056594(n)` -/
def P1314267690665426112.Spec : Prop :=
  ∀ n, P1314267690665426112.a n = A074677 n

end A074677

/-! ## A074677.P16307314618926994462

`A111569(n)+A014017(2*n)`
-/

namespace A074677.P16307314618926994462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111569 n + A014017 (2 * n)

end

end A074677.P16307314618926994462

namespace A074677

/-- `A111569(n)+A014017(2*n)` -/
def P16307314618926994462.Spec : Prop :=
  ∀ n, P16307314618926994462.a n = A074677 n

end A074677

/-! ## A074677.P4470245297568042573

`A128130(2*n)+A111569(n)`
-/

namespace A074677.P4470245297568042573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128130 (2 * n) + A111569 n

end

end A074677.P4470245297568042573

namespace A074677

/-- `A128130(2*n)+A111569(n)` -/
def P4470245297568042573.Spec : Prop :=
  ∀ n, P4470245297568042573.a n = A074677 n

end A074677

/-! ## A074677.P17482308559239568964

`A000045(n)-A295680(n)/2`
-/

namespace A074677.P17482308559239568964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) - (A295680 n : ℚ) / 2

end

end A074677.P17482308559239568964

namespace A074677

/-- `A000045(n)-A295680(n)/2` -/
def P17482308559239568964.Spec : Prop :=
  ∀ n, P17482308559239568964.a n = (A074677 n : ℚ)

end A074677

/-! ## A074677.P17600522820220064631

`A103609(n+1)*A103609(n+2)`
-/

namespace A074677.P17600522820220064631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (n + 1) * A103609 (n + 2)

end

end A074677.P17600522820220064631

namespace A074677

/-- `A103609(n+1)*A103609(n+2)` -/
def P17600522820220064631.Spec : Prop :=
  ∀ n, P17600522820220064631.a n = A074677 n

end A074677

/-! ## A074677.P16507491233167089743

`A295671(n+2)-A295672(n+2)`
-/

namespace A074677.P16507491233167089743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295671 (n + 2) - A295672 (n + 2)

end

end A074677.P16507491233167089743

namespace A074677

/-- `A295671(n+2)-A295672(n+2)` -/
def P16507491233167089743.Spec : Prop :=
  ∀ n, P16507491233167089743.a n = A074677 n

end A074677

/-! ## A074677.P7234204424004899926

`A000045(floor(n/2)+1)*A000045(ceil(n/2))`
-/

namespace A074677.P7234204424004899926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (⌊(n : ℚ) / 2⌋ + 1).toNat * A000045 ⌈(n : ℚ) / 2⌉.toNat

end

end A074677.P7234204424004899926

namespace A074677

/-- `A000045(floor(n/2)+1)*A000045(ceil(n/2))` -/
def P7234204424004899926.Spec : Prop :=
  ∀ n, P7234204424004899926.a n = A074677 n

end A074677

/-! ## A074677.P7833725963325309624

`A295680(n+2)/2`
-/

namespace A074677.P7833725963325309624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295680 (n + 2) : ℚ) / 2

end

end A074677.P7833725963325309624

namespace A074677

/-- `A295680(n+2)/2` -/
def P7833725963325309624.Spec : Prop :=
  ∀ n, P7833725963325309624.a n = (A074677 n : ℚ)

end A074677

/-! ## A074677.P10940315258858918331

`A111573(n)-(a(n-1)+a(n-1))` with `a(0)=0`
-/

namespace A074677.P10940315258858918331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A111573 n - (a (n - 1) + a (n - 1))

end

end A074677.P10940315258858918331

namespace A074677

/-- `A111573(n)-(a(n-1)+a(n-1))` -/
def P10940315258858918331.Spec : Prop :=
  ∀ n, P10940315258858918331.a n = A074677 n

end A074677

/-! ## A074677.P405127174630878248

`A236144(n)-A295683(n)`
-/

namespace A074677.P405127174630878248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236144 n - A295683 n

end

end A074677.P405127174630878248

namespace A074677

/-- `A236144(n)-A295683(n)` -/
def P405127174630878248.Spec : Prop :=
  ∀ n, P405127174630878248.a n = A074677 n

end A074677

/-! ## A074677.P7932280455140728322

`A000045(n)-Δ[A126116(n)/2]`
-/

namespace A074677.P7932280455140728322
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126116 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) - (f1 (n + 1) - f1 n)

end

end A074677.P7932280455140728322

namespace A074677

/-- `A000045(n)-Δ[A126116(n)/2]` -/
def P7932280455140728322.Spec : Prop :=
  ∀ n, P7932280455140728322.a n = (A074677 n : ℚ)

end A074677

/-! ## A074677.P13184405205336315081

`A126116(n+1)-A236165(n+1)`
-/

namespace A074677.P13184405205336315081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126116 (n + 1) - A236165 (n + 1)

end

end A074677.P13184405205336315081

namespace A074677

/-- `A126116(n+1)-A236165(n+1)` -/
def P13184405205336315081.Spec : Prop :=
  ∀ n, P13184405205336315081.a n = A074677 n

end A074677

/-! ## A074677.P12370863591217326888

`A111572(n)+A111574(n)-A111573(n)`
-/

namespace A074677.P12370863591217326888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111572 n + (A111574 n - A111573 n)

end

end A074677.P12370863591217326888

namespace A074677

/-- `A111572(n)+A111574(n)-A111573(n)` -/
def P12370863591217326888.Spec : Prop :=
  ∀ n, P12370863591217326888.a n = A074677 n

end A074677

/-! ## A074677.P12661974861867057788

`A111569(n)+A295690(n)-A295687(n)`
-/

namespace A074677.P12661974861867057788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111569 n + (A295690 n - A295687 n)

end

end A074677.P12661974861867057788

namespace A074677

/-- `A111569(n)+A295690(n)-A295687(n)` -/
def P12661974861867057788.Spec : Prop :=
  ∀ n, P12661974861867057788.a n = A074677 n

end A074677

/-!
# A074678: a(n) = Sum_{j=0..floor(n/2)} (-1)^(j+floor(n/2))*S(2j+q), where S(n) are generalized tribonacci numbers (A001644) and q = (1-(-1)^n)/2.

The programs for A074678, the canonical program `A074678.P13777984428231167519` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074678 has offset 0).

The definition of A074678 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074678.P7223278672083518050

`ogf((3-2x-x^2)/(1-x-2x^3-x^4-x^5))`
-/

namespace A074678.P7223278672083518050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -2, -1] [1, -1, 0, -2, -1, -1] n

end

end A074678.P7223278672083518050

namespace A074678

/-- `ogf((3-2x-x^2)/(1-x-2x^3-x^4-x^5))` -/
def P7223278672083518050.Spec : Prop :=
  ∀ n, P7223278672083518050.a n = A074678 n

end A074678

/-! ## A074678.P13777984428231167519

`a(n-1)+2*a(n-3)+a(n-4)+a(n-5)` with `a(0)=3, a(1)=1, a(2)=0, a(3)=6, a(4)=11`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074678

/-- `a(n-1)+2*a(n-3)+a(n-4)+a(n-5)` -/
def P13777984428231167519.Spec : Prop :=
  ∀ n, (P13777984428231167519.a n : ℤ) = A074678 n

theorem P13777984428231167519.correct : P13777984428231167519.Spec := by
  intro n
  simp only [A074678]

end A074678

/-! ## A074678.P17337103126292124840

`A228826(n)+A214727(n)`
-/

namespace A074678.P17337103126292124840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228826 n + A214727 n

end

end A074678.P17337103126292124840

namespace A074678

/-- `A228826(n)+A214727(n)` -/
def P17337103126292124840.Spec : Prop :=
  ∀ n, P17337103126292124840.a n = A074678 n

end A074678

/-! ## A074678.P18233571593383590798

`A214727(n)-A228826(xor(2, n))`
-/

namespace A074678.P18233571593383590798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 n - A228826 (Nat.xor 2 n)

end

end A074678.P18233571593383590798

namespace A074678

/-- `A214727(n)-A228826(xor(2, n))` -/
def P18233571593383590798.Spec : Prop :=
  ∀ n, P18233571593383590798.a n = A074678 n

end A074678

/-! ## A074678.P13950769626473868768

`A056594(n)+A214727(n)+A087960(n)`
-/

namespace A074678.P13950769626473868768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n + (A214727 n + A087960 n)

end

end A074678.P13950769626473868768

namespace A074678

/-- `A056594(n)+A214727(n)+A087960(n)` -/
def P13950769626473868768.Spec : Prop :=
  ∀ n, P13950769626473868768.a n = A074678 n

end A074678

/-! ## A074678.P15112366330005040589

`A001644(n)-a(n-2)` with `a(0)=3, a(1)=1`
-/

namespace A074678.P15112366330005040589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n a =>
  A001644 n - a (n - 2)

end

end A074678.P15112366330005040589

namespace A074678

/-- `A001644(n)-a(n-2)` -/
def P15112366330005040589.Spec : Prop :=
  ∀ n, P15112366330005040589.a n = A074678 n

end A074678

/-!
# A074679: Signature permutation of a Catalan automorphism: Rotate binary tree left if possible, otherwise swap its sides.

The programs for A074679, there is no canonical definition to state claims against.
-/

/-! ## A074679.P11867232877673185669

`A072797(A073269(n))`
-/

namespace A074679.P11867232877673185669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072797 (A073269 n).toNat

end

end A074679.P11867232877673185669

/-! ## A074679.P17627866677776518508

`A057163(A074680(A057163(n)))`
-/

namespace A074679.P17627866677776518508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A074680 (A057163 n).toNat).toNat

end

end A074679.P17627866677776518508

/-! ## A074679.P5246528289310706589

`A082335(A074680(A082335(n)))`
-/

namespace A074679.P5246528289310706589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082335 (A074680 (A082335 n).toNat).toNat

end

end A074679.P5246528289310706589

/-! ## A074679.P8813289110989982643

`A082351(A074680(A082351(n)))`
-/

namespace A074679.P8813289110989982643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082351 (A074680 (A082351 n).toNat).toNat

end

end A074679.P8813289110989982643

/-! ## A074679.P5852063575520164529

`A082354(A074680(A082354(n)))`
-/

namespace A074679.P5852063575520164529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082354 (A074680 (A082354 n).toNat).toNat

end

end A074679.P5852063575520164529

/-! ## A074679.P11611678013204219131

`A057502(n)+n-A074680(A057502(n))`
-/

namespace A074679.P11611678013204219131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057502 n + ((n : ℤ) - A074680 (A057502 n).toNat)

end

end A074679.P11611678013204219131

/-! ## A074679.P14846599739603706378

`A069770(A074680(A069770(A074680(A069770(n)))))`
-/

namespace A074679.P14846599739603706378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A074680 (A069770 (A074680 (A069770 n).toNat).toNat).toNat).toNat

end

end A074679.P14846599739603706378

/-! ## A074679.P5608781746096939129

`A082351(A154126(n))`
-/

namespace A074679.P5608781746096939129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082351 (A154126 n).toNat

end

end A074679.P5608781746096939129

/-! ## A074679.P2781601004874651253

`A154126(A082354(n))`
-/

namespace A074679.P2781601004874651253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154126 (A082354 n).toNat

end

end A074679.P2781601004874651253

/-! ## A074679.P9228555280242435251

`A129609(A154121(n))`
-/

namespace A074679.P9228555280242435251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129609 (A154121 n).toNat

end

end A074679.P9228555280242435251

/-! ## A074679.P6757940520854559901

`A129609(n)+n-A074680(A129609(n))`
-/

namespace A074679.P6757940520854559901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129609 n + ((n : ℤ) - A074680 (A129609 n).toNat)

end

end A074679.P6757940520854559901

/-! ## A074679.P1952638283988505048

`A130369(n)+n-A074680(A130369(n))`
-/

namespace A074679.P1952638283988505048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130369 n + ((n : ℤ) - A074680 (A130369 n).toNat)

end

end A074679.P1952638283988505048

/-! ## A074679.P18010608354243391710

`A130924(n)+n-A074680(A130924(n))`
-/

namespace A074679.P18010608354243391710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130924 n + ((n : ℤ) - A074680 (A130924 n).toNat)

end

end A074679.P18010608354243391710

/-! ## A074679.P11644517643250301602

`A123714(A069770(n)%A153830(n+3))`
-/

namespace A074679.P11644517643250301602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123714 (Int.tmod (A069770 n) (A153830 (n + 3))).toNat

end

end A074679.P11644517643250301602

/-! ## A074679.P14758250286217569977

`A123714(A069770(n)%A007782(n))`
-/

namespace A074679.P14758250286217569977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123714 (Int.tmod (A069770 n) (A007782 n)).toNat

end

end A074679.P14758250286217569977

/-!
# A074680: Signature permutation of the seventeenth nonrecursive Catalan automorphism in table A089840. (Rotate binary tree right if possible, otherwise swap its sides.)

The programs for A074680, there is no canonical definition to state claims against.
-/

/-! ## A074680.P5877278520456920066

`A073270(A072797(n))`
-/

namespace A074680.P5877278520456920066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073270 (A072797 n).toNat

end

end A074680.P5877278520456920066

/-! ## A074680.P8499410120775963158

`A057163(A074679(A057163(n)))`
-/

namespace A074680.P8499410120775963158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A074679 (A057163 n).toNat).toNat

end

end A074680.P8499410120775963158

/-! ## A074680.P9052885839240257128

`A073282(A069770(A073282(n)))`
-/

namespace A074680.P9052885839240257128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073282 (A069770 (A073282 n).toNat).toNat

end

end A074680.P9052885839240257128

/-! ## A074680.P3716231627536981368

`A082336(A074679(A082336(n)))`
-/

namespace A074680.P3716231627536981368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082336 (A074679 (A082336 n).toNat).toNat

end

end A074680.P3716231627536981368

/-! ## A074680.P9882382237243652679

`A057501(n)+n-A074679(A057501(n))`
-/

namespace A074680.P9882382237243652679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 n + ((n : ℤ) - A074679 (A057501 n).toNat)

end

end A074680.P9882382237243652679

/-! ## A074680.P13382556251613381594

`A073280(A069770(A074679(A073280(A069770(n)))))`
-/

namespace A074680.P13382556251613381594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073280 (A069770 (A074679 (A073280 (A069770 n).toNat).toNat).toNat).toNat

end

end A074680.P13382556251613381594

/-! ## A074680.P9014144115172417504

`A072796(A073282(A074679(A073283(A072796(n)))))`
-/

namespace A074680.P9014144115172417504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072796 (A073282 (A074679 (A073283 (A072796 n).toNat).toNat).toNat).toNat

end

end A074680.P9014144115172417504

/-! ## A074680.P13594574784526518936

`A154126(A082352(n))`
-/

namespace A074680.P13594574784526518936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154126 (A082352 n).toNat

end

end A074680.P13594574784526518936

/-! ## A074680.P16571820094330638534

`A082353(A154126(n))`
-/

namespace A074680.P16571820094330638534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082353 (A154126 n).toNat

end

end A074680.P16571820094330638534

/-! ## A074680.P1481021235152764859

`A154122(A129610(n))`
-/

namespace A074680.P1481021235152764859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154122 (A129610 n).toNat

end

end A074680.P1481021235152764859

/-! ## A074680.P259444230277187102

`A130370(n)+n-A074679(A130370(n))`
-/

namespace A074680.P259444230277187102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130370 n + ((n : ℤ) - A074679 (A130370 n).toNat)

end

end A074680.P259444230277187102

/-! ## A074680.P11546283369981951326

`A130923(n)+n-A074679(A130923(n))`
-/

namespace A074680.P11546283369981951326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130923 n + ((n : ℤ) - A074679 (A130923 n).toNat)

end

end A074680.P11546283369981951326

/-!
# A074681: Permutation of natural numbers induced by the Catalan bijection gmA074681! acting on the parenthesizations encoded by A014486/A063171.

The programs for A074681, there is no canonical definition to state claims against.
-/

/-! ## A074681.P7413121909341165300

`A082360(A057163(n))`
-/

namespace A074681.P7413121909341165300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082360 (A057163 n).toNat

end

end A074681.P7413121909341165300

/-! ## A074681.P6556752551984401422

`A082360(A074682(A082360(n)))`
-/

namespace A074681.P6556752551984401422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082360 (A074682 (A082360 n).toNat).toNat

end

end A074681.P6556752551984401422

/-! ## A074681.P9544040876703361355

`A082360(A082360(A074683(n)))`
-/

namespace A074681.P9544040876703361355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082360 (A082360 (A074683 n).toNat).toNat

end

end A074681.P9544040876703361355

/-! ## A074681.P4169983150442834389

`A082360(A074684(A082359(n)))`
-/

namespace A074681.P4169983150442834389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082360 (A074684 (A082359 n).toNat).toNat

end

end A074681.P4169983150442834389

/-! ## A074681.P15211297619382368441

`A082360(A082358(A082355(n)))`
-/

namespace A074681.P15211297619382368441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082360 (A082358 (A082355 n).toNat).toNat

end

end A074681.P15211297619382368441

/-! ## A074681.P3148700472563757661

`A082360(A082356(A082357(n)))`
-/

namespace A074681.P3148700472563757661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082360 (A082356 (A082357 n).toNat).toNat

end

end A074681.P3148700472563757661

/-! ## A074681.P2943889513852070805

`A057163(A074684(A057163(A082357(A082358(n)))))`
-/

namespace A074681.P2943889513852070805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A074684 (A057163 (A082357 (A082358 n).toNat).toNat).toNat).toNat

end

end A074681.P2943889513852070805

/-! ## A074681.P11839365270098261767

`A086431(A086427(A074684(A086431(A086427(n)))))`
-/

namespace A074681.P11839365270098261767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086431 (A086427 (A074684 (A086431 (A086427 n).toNat).toNat).toNat).toNat

end

end A074681.P11839365270098261767

/-! ## A074681.P5063646128206973612

`A086428(A086431(A074684(A086428(A086431(n)))))`
-/

namespace A074681.P5063646128206973612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086428 (A086431 (A074684 (A086428 (A086431 n).toNat).toNat).toNat).toNat

end

end A074681.P5063646128206973612

/-! ## A074681.P6590922410630857783

`A057163(A130921(A057505(n)))`
-/

namespace A074681.P6590922410630857783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A130921 (A057505 n).toNat).toNat

end

end A074681.P6590922410630857783

/-!
# A074682: Permutation of natural numbers induced by the Catalan bijection gmA074682! acting on the parenthesizations encoded by A014486/A063171.

The programs for A074682, there is no canonical definition to state claims against.
-/

/-! ## A074682.P15113006807703469138

`A057163(A082359(n))`
-/

namespace A074682.P15113006807703469138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A082359 n).toNat

end

end A074682.P15113006807703469138

/-! ## A074682.P8206373545265447471

`A074684(A082359(A082359(2*n-n)))`
-/

namespace A074682.P8206373545265447471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074684 (A082359 (A082359 (2 * n - n)).toNat).toNat

end

end A074682.P8206373545265447471

/-! ## A074682.P13753516231199595023

`A057163(A082355(A082360(A082355(n))))`
-/

namespace A074682.P13753516231199595023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A082355 (A082360 (A082355 n).toNat).toNat).toNat

end

end A074682.P13753516231199595023

/-! ## A074682.P3046490747400355068

`A082358(A082355(A082359(A082355(A082356(n)))))`
-/

namespace A074682.P3046490747400355068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082358 (A082355 (A082359 (A082355 (A082356 n).toNat).toNat).toNat).toNat

end

end A074682.P3046490747400355068

/-! ## A074682.P17909138328691382176

`A057163(A074683(A057163(n)))`
-/

namespace A074682.P17909138328691382176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A074683 (A057163 n).toNat).toNat

end

end A074682.P17909138328691382176

/-! ## A074682.P18351034785488305610

`A057163(A082357(A082360(A082357(n))))`
-/

namespace A074682.P18351034785488305610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A082357 (A082360 (A082357 n).toNat).toNat).toNat

end

end A074682.P18351034785488305610

/-! ## A074682.P4026681783881750745

`A082360(A074683(A074683(A082360(A074683(n)))))`
-/

namespace A074682.P4026681783881750745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082360 (A074683 (A074683 (A082360 (A074683 n).toNat).toNat).toNat).toNat

end

end A074682.P4026681783881750745

/-! ## A074682.P18169145666995487187

`A086431(A086427(A074683(A086431(A086427(n)))))`
-/

namespace A074682.P18169145666995487187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086431 (A086427 (A074683 (A086431 (A086427 n).toNat).toNat).toNat).toNat

end

end A074682.P18169145666995487187

/-! ## A074682.P16576376640120774513

`A086428(A086431(A074683(A086428(A086431(n)))))`
-/

namespace A074682.P16576376640120774513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086428 (A086431 (A074683 (A086428 (A086431 n).toNat).toNat).toNat).toNat

end

end A074682.P16576376640120774513

/-! ## A074682.P16317340343997432564

`A122354(A082326(n))`
-/

namespace A074682.P16317340343997432564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122354 (A082326 n).toNat

end

end A074682.P16317340343997432564

/-!
# A074683: Permutation of natural numbers induced by the Catalan Automorphism *A074683 acting on parenthesizations as encoded and ordered by A014486/A063171.

The programs for A074683, there is no canonical definition to state claims against.
-/

/-! ## A074683.P15777888303316813185

`A057502(A085170(n))`
-/

namespace A074683.P15777888303316813185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057502 (A085170 n).toNat

end

end A074683.P15777888303316813185

/-! ## A074683.P13061850232645959756

`A082357(A082360(A082355(n)))`
-/

namespace A074683.P13061850232645959756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082357 (A082360 (A082355 n).toNat).toNat

end

end A074683.P13061850232645959756

/-! ## A074683.P15912933781265655081

`A086426(A057164(n))`
-/

namespace A074683.P15912933781265655081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086426 (A057164 n).toNat

end

end A074683.P15912933781265655081

/-! ## A074683.P8506219350747643204

`A082359(A057163(n))`
-/

namespace A074683.P8506219350747643204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082359 (A057163 n).toNat

end

end A074683.P8506219350747643204

/-! ## A074683.P11530289794767153882

`A085170(A085174(n))`
-/

namespace A074683.P11530289794767153882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085170 (A085174 n).toNat

end

end A074683.P11530289794767153882

/-! ## A074683.P17179660032075197874

`A082355(A074684(A082355(n)))`
-/

namespace A074683.P17179660032075197874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082355 (A074684 (A082355 n).toNat).toNat

end

end A074683.P17179660032075197874

/-! ## A074683.P10188289939351208584

`A082357(A074684(A082357(n)))`
-/

namespace A074683.P10188289939351208584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082357 (A074684 (A082357 n).toNat).toNat

end

end A074683.P10188289939351208584

/-! ## A074683.P480135862697203068

`A082359(A074684(A082359(n)))`
-/

namespace A074683.P480135862697203068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082359 (A074684 (A082359 n).toNat).toNat

end

end A074683.P480135862697203068

/-! ## A074683.P9866651599923630031

`A086426(A074684(A086426(n)))`
-/

namespace A074683.P9866651599923630031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086426 (A074684 (A086426 n).toNat).toNat

end

end A074683.P9866651599923630031

/-! ## A074683.P9743301797248751513

`A085170(A074684(A085170(A085160(n))))`
-/

namespace A074683.P9743301797248751513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085170 (A074684 (A085170 (A085160 n).toNat).toNat).toNat

end

end A074683.P9743301797248751513

/-! ## A074683.P6986792028209235182

`A086426(A086426(A086431(A086425(n))))`
-/

namespace A074683.P6986792028209235182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086426 (A086426 (A086431 (A086425 n).toNat).toNat).toNat

end

end A074683.P6986792028209235182

/-! ## A074683.P10966518649092405336

`A082359(A082358(A082355(A082355(A082356(n)))))`
-/

namespace A074683.P10966518649092405336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082359 (A082358 (A082355 (A082355 (A082356 n).toNat).toNat).toNat).toNat

end

end A074683.P10966518649092405336

/-! ## A074683.P11164776876991666805

`A082359(A082358(A082355(A082357(A082358(n)))))`
-/

namespace A074683.P11164776876991666805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082359 (A082358 (A082355 (A082357 (A082358 n).toNat).toNat).toNat).toNat

end

end A074683.P11164776876991666805

/-! ## A074683.P6633437376248633273

`A082359(A082358(A082355(A082359(A082360(n)))))`
-/

namespace A074683.P6633437376248633273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082359 (A082358 (A082355 (A082359 (A082360 n).toNat).toNat).toNat).toNat

end

end A074683.P6633437376248633273

/-! ## A074683.P16857057496412108989

`A057164(A130922(n))`
-/

namespace A074683.P16857057496412108989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A130922 n).toNat

end

end A074683.P16857057496412108989

/-! ## A074683.P15340608141077706601

`A125981(A085172(n))`
-/

namespace A074683.P15340608141077706601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125981 (A085172 n).toNat

end

end A074683.P15340608141077706601

/-! ## A074683.P3860871991818276403

`A130922(A085161(n))`
-/

namespace A074683.P3860871991818276403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130922 (A085161 n).toNat

end

end A074683.P3860871991818276403

/-! ## A074683.P13094876605023329222

`A130922(A074684(A130922(A130922(A130921(n)))))`
-/

namespace A074683.P13094876605023329222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130922 (A074684 (A130922 (A130922 (A130921 n).toNat).toNat).toNat).toNat

end

end A074683.P13094876605023329222

/-!
# A074684: Permutation of natural numbers induced by Catalan Automorphism *A074684 acting on the parenthesizations encoded by A014486/A063171.

The programs for A074684, there is no canonical definition to state claims against.
-/

/-! ## A074684.P9416248831126655001

`A085173(A085169(n))`
-/

namespace A074684.P9416248831126655001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085173 (A085169 n).toNat

end

end A074684.P9416248831126655001

/-! ## A074684.P3237601404789448293

`A057163(A082360(n))`
-/

namespace A074684.P3237601404789448293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A082360 n).toNat

end

end A074684.P3237601404789448293

/-! ## A074684.P16499988797011242799

`A082358(A082359(A082356(n)))`
-/

namespace A074684.P16499988797011242799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082358 (A082359 (A082356 n).toNat).toNat

end

end A074684.P16499988797011242799

/-! ## A074684.P5435977201618477773

`A085169(A057501(n))`
-/

namespace A074684.P5435977201618477773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085169 (A057501 n).toNat

end

end A074684.P5435977201618477773

/-! ## A074684.P8084827180999978795

`A057164(A086425(n))`
-/

namespace A074684.P8084827180999978795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A086425 n).toNat

end

end A074684.P8084827180999978795

/-! ## A074684.P8728821045038856524

`A082358(A074683(A082358(n)))`
-/

namespace A074684.P8728821045038856524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082358 (A074683 (A082358 n).toNat).toNat

end

end A074684.P8728821045038856524

/-! ## A074684.P8109035568745747316

`A082360(A082357(A082356(n)))`
-/

namespace A074684.P8109035568745747316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082360 (A082357 (A082356 n).toNat).toNat

end

end A074684.P8109035568745747316

/-! ## A074684.P8262626070554999648

`A082360(A074683(A082360(A082360(A082359(n)))))`
-/

namespace A074684.P8262626070554999648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082360 (A074683 (A082360 (A082360 (A082359 n).toNat).toNat).toNat).toNat

end

end A074684.P8262626070554999648

/-! ## A074684.P15973727865039926275

`A086425(A074683(A086425(A086425(A086426(n)))))`
-/

namespace A074684.P15973727865039926275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086425 (A074683 (A086425 (A086425 (A086426 n).toNat).toNat).toNat).toNat

end

end A074684.P15973727865039926275

/-! ## A074684.P17947033477068814385

`A130921(A057164(n))`
-/

namespace A074684.P17947033477068814385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130921 (A057164 n).toNat

end

end A074684.P17947033477068814385

/-! ## A074684.P2610608968732594509

`A085171(A125982(n))`
-/

namespace A074684.P2610608968732594509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085171 (A125982 n).toNat

end

end A074684.P2610608968732594509

/-! ## A074684.P8679199545108335924

`A085161(A130921(n))`
-/

namespace A074684.P8679199545108335924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085161 (A130921 n).toNat

end

end A074684.P8679199545108335924

/-! ## A074684.P14818898700011257597

`A072771(A085169(A057548(n)))`
-/

namespace A074684.P14818898700011257597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072771 (A085169 (A057548 n).toNat).toNat

end

end A074684.P14818898700011257597

/-! ## A074684.P13578713456380585206

`A130921(A086425(A074683(n)))`
-/

namespace A074684.P13578713456380585206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130921 (A086425 (A074683 n).toNat).toNat

end

end A074684.P13578713456380585206

/-!
# A074685: Permutation of natural numbers induced by the Catalan bijection gmA074685! acting on the parenthesizations encoded by A014486/A063171.

The programs for A074685, there is no canonical definition to state claims against.
-/

/-! ## A074685.P11356496719954229173

`A057163(A074689(A057163(n)))`
-/

namespace A074685.P11356496719954229173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A074689 (A057163 n).toNat).toNat

end

end A074685.P11356496719954229173

/-! ## A074685.P14907934779164201691

`A130369(A130371(n))`
-/

namespace A074685.P14907934779164201691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130369 (A130371 n).toNat

end

end A074685.P14907934779164201691

/-! ## A074685.P435558689856375439

`A130375(A130369(n))`
-/

namespace A074685.P435558689856375439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130375 (A130369 n).toNat

end

end A074685.P435558689856375439

/-! ## A074685.P16797428747668248713

`A122282(A130355(n))`
-/

namespace A074685.P16797428747668248713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122282 (A130355 n).toNat

end

end A074685.P16797428747668248713

/-! ## A074685.P12024005194313181627

`A069767(A122309(n)%A131194(n+1))`
-/

namespace A074685.P12024005194313181627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (Int.tmod (A122309 n) (A131194 (n + 1))).toNat

end

end A074685.P12024005194313181627

/-!
# A074686: Permutation of natural numbers induced by the Catalan bijection gmA074686! acting on the parenthesizations encoded by A014486/A063171.

The programs for A074686, there is no canonical definition to state claims against.
-/

/-! ## A074686.P10985077059818790267

`A057163(A074690(A057163(n)))`
-/

namespace A074686.P10985077059818790267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A074690 (A057163 n).toNat).toNat

end

end A074686.P10985077059818790267

/-! ## A074686.P3266404284123658705

`A130372(A130370(n))`
-/

namespace A074686.P3266404284123658705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130372 (A130370 n).toNat

end

end A074686.P3266404284123658705

/-! ## A074686.P7919184928029974951

`A130370(A130376(n))`
-/

namespace A074686.P7919184928029974951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130370 (A130376 n).toNat

end

end A074686.P7919184928029974951

/-! ## A074686.P2064086033206463890

`A130356(A074685(A130356(n)))`
-/

namespace A074686.P2064086033206463890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130356 (A074685 (A130356 n).toNat).toNat

end

end A074686.P2064086033206463890

/-! ## A074686.P15472009834495473573

`A130356(A122282(n))`
-/

namespace A074686.P15472009834495473573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130356 (A122282 n).toNat

end

end A074686.P15472009834495473573

/-!
# A074687: Permutation of natural numbers induced by the Catalan bijection gmA074687! acting on the parenthesizations encoded by A014486/A063171.

The programs for A074687, there is no canonical definition to state claims against.
-/

/-! ## A074687.P9844743329613417017

`A057163(A074688(A057163(n)))`
-/

namespace A074687.P9844743329613417017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A074688 (A057163 n).toNat).toNat

end

end A074687.P9844743329613417017

/-! ## A074687.P15045541302116183582

`A130954(A122303(n))^A089026(A299477(n+1))`
-/

namespace A074687.P15045541302116183582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130954 (A122303 n).toNat : ℚ) ^ (A089026 (A299477 (n + 1)).toNat : ℤ)

end

end A074687.P15045541302116183582

/-!
# A074688: Permutation of natural numbers induced by the Catalan bijection gmA074688! acting on the parenthesizations encoded by A014486/A063171.

The programs for A074688, there is no canonical definition to state claims against.
-/

/-! ## A074688.P12307608368070067039

`A057163(A074687(A057163(n)))`
-/

namespace A074688.P12307608368070067039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A074687 (A057163 n).toNat).toNat

end

end A074688.P12307608368070067039

/-! ## A074688.P9868592340225297159

`A122303(A130953(n)*A254730(n))`
-/

namespace A074688.P9868592340225297159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122303 (A130953 n * A254730 n).toNat

end

end A074688.P9868592340225297159

/-! ## A074688.P6749218210970312047

`A122303(A130953(n)^A254730(n))`
-/

namespace A074688.P6749218210970312047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122303 (SequenceMachineLib.roundAway ((A130953 n : ℚ) ^ (A254730 n : ℤ))).toNat

end

end A074688.P6749218210970312047

/-! ## A074688.P14176473117644894763

`A123696(A154122(n)^A289014(n+1))`
-/

namespace A074688.P14176473117644894763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123696 (SequenceMachineLib.roundAway ((A154122 n : ℚ) ^ (A289014 (n + 1) : ℤ))).toNat

end

end A074688.P14176473117644894763

/-! ## A074688.P18020889137356617659

`A123696(A289014(n+1)²*A154122(n))`
-/

namespace A074688.P18020889137356617659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123696 (A289014 (n + 1) ^ 2 * A154122 n).toNat

end

end A074688.P18020889137356617659

/-!
# A074689: Permutation of natural numbers induced by the Catalan bijection gmA074689! acting on the parenthesizations encoded by A014486/A063171.

The programs for A074689, there is no canonical definition to state claims against.
-/

/-! ## A074689.P14383477243545140684

`A057163(A074685(A057163(n)))`
-/

namespace A074689.P14383477243545140684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A074685 (A057163 n).toNat).toNat

end

end A074689.P14383477243545140684

/-! ## A074689.P5153867728298145983

`A069768(A130349(n))`
-/

namespace A074689.P5153867728298145983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069768 (A130349 n).toNat

end

end A074689.P5153867728298145983

/-! ## A074689.P11037161214204395329

`A130360(A130351(n))`
-/

namespace A074689.P11037161214204395329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130360 (A130351 n).toNat

end

end A074689.P11037161214204395329

/-! ## A074689.P2522514719968458420

`A122333(A122349(n)+A034443(n+2))`
-/

namespace A074689.P2522514719968458420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122333 (A122349 n + A034443 (n + 2)).toNat

end

end A074689.P2522514719968458420

/-! ## A074689.P7311681649244588310

`A130372(A074680(n)%A183019(2*n+1))`
-/

namespace A074689.P7311681649244588310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130372 (Int.tmod (A074680 n) (A183019 (2 * n + 1))).toNat

end

end A074689.P7311681649244588310

/-!
# A074690: Permutation of natural numbers induced by the Catalan bijection gmA074690! acting on the parenthesizations encoded by A014486/A063171.

The programs for A074690, there is no canonical definition to state claims against.
-/

/-! ## A074690.P5416637999049925970

`A057163(A074686(A057163(n)))`
-/

namespace A074690.P5416637999049925970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A074686 (A057163 n).toNat).toNat

end

end A074690.P5416637999049925970

/-! ## A074690.P1979052514697070221

`A130350(A069767(n))`
-/

namespace A074690.P1979052514697070221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130350 (A069767 n).toNat

end

end A074690.P1979052514697070221

/-! ## A074690.P6133822930710937610

`A130352(A130359(n))`
-/

namespace A074690.P6133822930710937610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130352 (A130359 n).toNat

end

end A074690.P6133822930710937610

/-! ## A074690.P9660452916859713854

`A122350(A122334(n)%A233353(n+1))`
-/

namespace A074690.P9660452916859713854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122350 (Int.tmod (A122334 n) (A233353 (n + 1))).toNat

end

end A074690.P9660452916859713854

/-!
# A074691: Squarefree Fibonacci numbers with odd number of prime factors.

The programs for A074691, the canonical program `A074691.P2345954875371412393` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074691 has offset 1).

The definition of A074691 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074691.P2345954875371412393

`A000045(eq[-1, A174340(n+2)]+2)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A074691

/-- `A000045(eq[-1, A174340(n+2)]+2)` -/
def P2345954875371412393.Spec : Prop :=
  ∀ n, P2345954875371412393.a n = A074691 (n + 1)

theorem P2345954875371412393.correct : P2345954875371412393.Spec := by
  intro n
  simp only [A074691, Nat.add_sub_cancel]

end A074691

/-! ## A074691.P8865753075200888868

`record[and(A069110(n+3), A174340(n+3))]`
-/

namespace A074691.P8865753075200888868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A069110 (n + 3)) (A174340 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074691.P8865753075200888868

namespace A074691

/-- `record[and(A069110(n+3), A174340(n+3))]` -/
def P8865753075200888868.Spec : Prop :=
  ∀ n, P8865753075200888868.a n = A074691 (n + 1)

end A074691

/-! ## A074691.P8550019302288925867

`A000045(eq[0, A174340(n+1)+1]+1)`
-/

namespace A074691.P8550019302288925867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174340 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A074691.P8550019302288925867

namespace A074691

/-- `A000045(eq[0, A174340(n+1)+1]+1)` -/
def P8550019302288925867.Spec : Prop :=
  ∀ n, P8550019302288925867.a n = A074691 (n + 1)

end A074691

/-! ## A074691.P4271496344084373630

`A139589(n+3)*A162642(A179234(n+1))`
-/

namespace A074691.P4271496344084373630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139589 (n + 3) * A162642 (A179234 (n + 1)).toNat

end

end A074691.P4271496344084373630

namespace A074691

/-- `A139589(n+3)*A162642(A179234(n+1))` -/
def P4271496344084373630.Spec : Prop :=
  ∀ n, P4271496344084373630.a n = A074691 (n + 1)

end A074691

/-! ## A074691.P3576843718666240318

`A139589(n+3)+A010815(A260793(3*n+1))`
-/

namespace A074691.P3576843718666240318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139589 (n + 3) + A010815 (A260793 (3 * n + 1)).toNat

end

end A074691.P3576843718666240318

namespace A074691

/-- `A139589(n+3)+A010815(A260793(3*n+1))` -/
def P3576843718666240318.Spec : Prop :=
  ∀ n, P3576843718666240318.a n = A074691 (n + 1)

end A074691

/-!
# A074692: 1 + n-th prime is harmonic.

The programs for A074692, there is no canonical definition to state claims against.
-/

/-! ## A074692.P14061761299082643109

`A000720(p?[A074245(n+1)])`
-/

namespace A074692.P14061761299082643109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074245 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A074692.P14061761299082643109

/-! ## A074692.P2432703740571069472

`A003963(p?[A074245(n+1)])`
-/

namespace A074692.P2432703740571069472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074245 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A074692.P2432703740571069472

/-!
# A074693: a(1) = 1, a(n) = a(n-1) + phi(a(n-1)).

The programs for A074693, the canonical program `A074693.P18283627497497882236` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074693 has offset 1).

The definition of A074693 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+A000010(a(n-1))` (program `A074693.P18283627497497882236`, by `A074693.P18283627497497882236.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074693.P18283627497497882236

`a(n-1)+A000010(a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A074693

/-- `a(n-1)+A000010(a(n-1))` -/
def P18283627497497882236.Spec : Prop :=
  ∀ n, P18283627497497882236.a n = A074693 (n + 1)

theorem P18283627497497882236.correct : P18283627497497882236.Spec := by
  intro n
  simp only [A074693, Nat.add_sub_cancel]

end A074693

/-! ## A074693.P5302361986399099629

`∑[A165931(n+1)]`
-/

namespace A074693.P5302361986399099629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074693.P5302361986399099629

namespace A074693

/-- `∑[A165931(n+1)]` -/
def P5302361986399099629.Spec : Prop :=
  ∀ n, P5302361986399099629.a n = A074693 (n + 1)

end A074693

/-! ## A074693.P10493444741555879777

`A165931(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A074693.P10493444741555879777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A165931 (n + 1) + a (A023443 n).toNat

end

end A074693.P10493444741555879777

namespace A074693

/-- `A165931(n+1)+a(A023443(n))` -/
def P10493444741555879777.Spec : Prop :=
  ∀ n, P10493444741555879777.a n = A074693 (n + 1)

end A074693

/-! ## A074693.P3781086757436577097

`A165931(n+1)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A074693.P3781086757436577097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A165931 (n + 1) + a (A028310 n - 1).toNat

end

end A074693.P3781086757436577097

namespace A074693

/-- `A165931(n+1)+a(A028310(n)-1)` -/
def P3781086757436577097.Spec : Prop :=
  ∀ n, P3781086757436577097.a n = A074693 (n + 1)

end A074693

/-! ## A074693.P11846209340089246006

`A165931(n+1)+A000027(a(n-1))` with `a(0)=1`
-/

namespace A074693.P11846209340089246006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A165931 (n + 1) + A000027 (a (n - 1)).toNat

end

end A074693.P11846209340089246006

namespace A074693

/-- `A165931(n+1)+A000027(a(n-1))` -/
def P11846209340089246006.Spec : Prop :=
  ∀ n, P11846209340089246006.a n = A074693 (n + 1)

end A074693

/-!
# A074695: Greatest common divisor of n and floor(n^(1/2))^2.

The programs for A074695, the canonical program `A074695.P418180351724272515` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074695 has offset 1).

The definition of A074695 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074695.P418180351724272515

`gcd(n+1, floor(sqrt(n+1))²)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074695

/-- `gcd(n+1, floor(sqrt(n+1))²)` -/
def P418180351724272515.Spec : Prop :=
  ∀ n, (P418180351724272515.a n : ℤ) = A074695 (n + 1)

theorem P418180351724272515.correct : P418180351724272515.Spec := by
  intro n
  simp only [A074695, Nat.add_sub_cancel]

end A074695

/-! ## A074695.P9287996595829922175

`A000027(gcd(n+1, A048760(n+1)))`
-/

namespace A074695.P9287996595829922175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.gcd (n + 1 : ℤ) (A048760 (n + 1)))

end

end A074695.P9287996595829922175

namespace A074695

/-- `A000027(gcd(n+1, A048760(n+1)))` -/
def P9287996595829922175.Spec : Prop :=
  ∀ n, P9287996595829922175.a n = A074695 (n + 1)

end A074695

/-! ## A074695.P9791736518426845910

`A000027(gcd(A000027(n+1), A053186(n+1)))`
-/

namespace A074695.P9791736518426845910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.gcd (A000027 (n + 1)) (A053186 (n + 1)))

end

end A074695.P9791736518426845910

namespace A074695

/-- `A000027(gcd(A000027(n+1), A053186(n+1)))` -/
def P9791736518426845910.Spec : Prop :=
  ∀ n, P9791736518426845910.a n = A074695 (n + 1)

end A074695

/-! ## A074695.P8709840385345860642

`gcd(A005843(n+1), A005843(A053186(n+1)))/2`
-/

namespace A074695.P8709840385345860642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A005843 (n + 1)) (A005843 (A053186 (n + 1)).toNat) : ℚ) / 2

end

end A074695.P8709840385345860642

namespace A074695

/-- `gcd(A005843(n+1), A005843(A053186(n+1)))/2` -/
def P8709840385345860642.Spec : Prop :=
  ∀ n, P8709840385345860642.a n = (A074695 (n + 1) : ℚ)

end A074695

/-! ## A074695.P9738300644661710517

`A050873(A000217(n)+A067815(n+1)²)`
-/

namespace A074695.P9738300644661710517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (A000217 n + A067815 (n + 1) ^ 2).toNat

end

end A074695.P9738300644661710517

namespace A074695

/-- `A050873(A000217(n)+A067815(n+1)²)` -/
def P9738300644661710517.Spec : Prop :=
  ∀ n, P9738300644661710517.a n = A074695 (n + 1)

end A074695

/-! ## A074695.P4924987693440006833

`A109004(∑[n+1]+A000196(n+1)²)`
-/

namespace A074695.P4924987693440006833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + A000196 (n + 1) ^ 2).toNat

end

end A074695.P4924987693440006833

namespace A074695

/-- `A109004(∑[n+1]+A000196(n+1)²)` -/
def P4924987693440006833.Spec : Prop :=
  ∀ n, P4924987693440006833.a n = A074695 (n + 1)

end A074695

/-! ## A074695.P10939742534469643865

`A245717(A000217(n)+A000196(n+1))`
-/

namespace A074695.P10939742534469643865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245717 (A000217 n + A000196 (n + 1)).toNat

end

end A074695.P10939742534469643865

namespace A074695

/-- `A245717(A000217(n)+A000196(n+1))` -/
def P10939742534469643865.Spec : Prop :=
  ∀ n, P10939742534469643865.a n = A074695 (n + 1)

end A074695

/-!
# A074696: Numbers k such that 2^k+1 has more than k divisors (k such that A000005(2^k+1) > k).

The programs for A074696, the canonical program `A074696.P4846602148293109203` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074696 has offset 1).

The definition of A074696 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 460 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074696.P4846602148293109203

`lt[n, A046798(n)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A074696

/-- `lt[n, A046798(n)]` -/
def P4846602148293109203.Spec : Prop :=
  ∀ n, (P4846602148293109203.a n : ℤ) = A074696 (n + 1)

theorem P4846602148293109203.correct : P4846602148293109203.Spec := by
  intro n
  simp only [A074696, Nat.add_sub_cancel]

end A074696

/-! ## A074696.P2621505772208496237

`lt[n, A324105(A001747(n+1))]`
-/

namespace A074696.P2621505772208496237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324105 (A001747 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A074696.P2621505772208496237

namespace A074696

/-- `lt[n, A324105(A001747(n+1))]` -/
def P2621505772208496237.Spec : Prop :=
  ∀ n, (P2621505772208496237.a n : ℤ) = A074696 (n + 1)

end A074696

/-! ## A074696.P8064563799222920236

`lt[n, A324105(A161344(n+1))]`
-/

namespace A074696.P8064563799222920236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324105 (A161344 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A074696.P8064563799222920236

namespace A074696

/-- `lt[n, A324105(A161344(n+1))]` -/
def P8064563799222920236.Spec : Prop :=
  ∀ n, (P8064563799222920236.a n : ℤ) = A074696 (n + 1)

end A074696

/-! ## A074696.P17575434013663601629

`lt[n, A324105(lcm(2, A074845(n+1)))]`
-/

namespace A074696.P17575434013663601629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324105 (Int.lcm 2 (A074845 (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A074696.P17575434013663601629

namespace A074696

/-- `lt[n, A324105(lcm(2, A074845(n+1)))]` -/
def P17575434013663601629.Spec : Prop :=
  ∀ n, (P17575434013663601629.a n : ℤ) = A074696 (n + 1)

end A074696

/-! ## A074696.P15291419947985610209

`lt[n, A324117(A074845(n+1))]`
-/

namespace A074696.P15291419947985610209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324117 (A074845 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A074696.P15291419947985610209

namespace A074696

/-- `lt[n, A324117(A074845(n+1))]` -/
def P15291419947985610209.Spec : Prop :=
  ∀ n, (P15291419947985610209.a n : ℤ) = A074696 (n + 1)

end A074696

/-! ## A074696.P16601403297060054082

`lt[n, A324117(A001747(n+1)+A000038(n))]`
-/

namespace A074696.P16601403297060054082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324117 (A001747 (n + 1) + A000038 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A074696.P16601403297060054082

namespace A074696

/-- `lt[n, A324117(A001747(n+1)+A000038(n))]` -/
def P16601403297060054082.Spec : Prop :=
  ∀ n, (P16601403297060054082.a n : ℤ) = A074696 (n + 1)

end A074696

/-! ## A074696.P2816802015210244899

`lt[n, A324117(A161344(n+1)+A000038(n))]`
-/

namespace A074696.P2816802015210244899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324117 (A161344 (n + 1) + A000038 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A074696.P2816802015210244899

namespace A074696

/-- `lt[n, A324117(A161344(n+1)+A000038(n))]` -/
def P2816802015210244899.Spec : Prop :=
  ∀ n, (P2816802015210244899.a n : ℤ) = A074696 (n + 1)

end A074696

/-! ## A074696.P2277729658473549763

`lt[n, A324117(A001747(n+1)*A054977(n))]`
-/

namespace A074696.P2277729658473549763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324117 (A001747 (n + 1) * A054977 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A074696.P2277729658473549763

namespace A074696

/-- `lt[n, A324117(A001747(n+1)*A054977(n))]` -/
def P2277729658473549763.Spec : Prop :=
  ∀ n, (P2277729658473549763.a n : ℤ) = A074696 (n + 1)

end A074696

/-! ## A074696.P7314501440672383741

`lt[n, A324117(A001748(n+1))]`
-/

namespace A074696.P7314501440672383741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324117 (A001748 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A074696.P7314501440672383741

namespace A074696

/-- `lt[n, A324117(A001748(n+1))]` -/
def P7314501440672383741.Spec : Prop :=
  ∀ n, (P7314501440672383741.a n : ℤ) = A074696 (n + 1)

end A074696

/-! ## A074696.P2979701621924172003

`lt[n, A324117(3*A000040(n+1))]`
-/

namespace A074696.P2979701621924172003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324117 (3 * A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A074696.P2979701621924172003

namespace A074696

/-- `lt[n, A324117(3*A000040(n+1))]` -/
def P2979701621924172003.Spec : Prop :=
  ∀ n, (P2979701621924172003.a n : ℤ) = A074696 (n + 1)

end A074696

/-!
# A074697: Fibonacci(k) has more than k divisors (k such that A000005(A000045(k)) > k).

The programs for A074697, the canonical program `A074697.P17142386647616674480` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074697 has offset 1).

The definition of A074697 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 701 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074697.P17142386647616674480

`lt[n, A152774(n+1)]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A074697

/-- `lt[n, A152774(n+1)]+1` -/
def P17142386647616674480.Spec : Prop :=
  ∀ n, (P17142386647616674480.a n : ℤ) = A074697 (n + 1)

theorem P17142386647616674480.correct : P17142386647616674480.Spec := by
  intro n
  simp only [A074697, Nat.add_sub_cancel]

end A074697

/-! ## A074697.P4904069208025046187

`lt[n+1, A063375(n+1)]+1`
-/

namespace A074697.P4904069208025046187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063375 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A074697.P4904069208025046187

namespace A074697

/-- `lt[n+1, A063375(n+1)]+1` -/
def P4904069208025046187.Spec : Prop :=
  ∀ n, (P4904069208025046187.a n : ℤ) = A074697 (n + 1)

end A074697

/-! ## A074697.P5841833663256431906

`lt[n, A152774(A028310(n))]`
-/

namespace A074697.P5841833663256431906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152774 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A074697.P5841833663256431906

namespace A074697

/-- `lt[n, A152774(A028310(n))]` -/
def P5841833663256431906.Spec : Prop :=
  ∀ n, (P5841833663256431906.a n : ℤ) = A074697 (n + 1)

end A074697

/-! ## A074697.P2861774911212037023

`A020725(lt[n, A152774(n+1)])`
-/

namespace A074697.P2861774911212037023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A074697.P2861774911212037023

namespace A074697

/-- `A020725(lt[n, A152774(n+1)])` -/
def P2861774911212037023.Spec : Prop :=
  ∀ n, P2861774911212037023.a n = A074697 (n + 1)

end A074697

/-! ## A074697.P15720221764462491817

`A020725(lt[n+1, A063375(n+1)])`
-/

namespace A074697.P15720221764462491817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A074697.P15720221764462491817

namespace A074697

/-- `A020725(lt[n+1, A063375(n+1)])` -/
def P15720221764462491817.Spec : Prop :=
  ∀ n, P15720221764462491817.a n = A074697 (n + 1)

end A074697

/-! ## A074697.P16494804268808226584

`A065475(lt[n+1, A063375(n+1)])`
-/

namespace A074697.P16494804268808226584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A074697.P16494804268808226584

namespace A074697

/-- `A065475(lt[n+1, A063375(n+1)])` -/
def P16494804268808226584.Spec : Prop :=
  ∀ n, P16494804268808226584.a n = A074697 (n + 1)

end A074697

/-! ## A074697.P13389351425717341703

`lt[n+1, A063375(A233583(n+1))]`
-/

namespace A074697.P13389351425717341703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063375 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A074697.P13389351425717341703

namespace A074697

/-- `lt[n+1, A063375(A233583(n+1))]` -/
def P13389351425717341703.Spec : Prop :=
  ∀ n, (P13389351425717341703.a n : ℤ) = A074697 (n + 1)

end A074697

/-!
# A074698: Numbers k that divide the number of divisors of Fibonacci(k).

The programs for A074698, there is no canonical definition to state claims against.
-/

/-! ## A074698.P8174725912579477429

`lt[A063375(n+1)%(n+1), 1]+1`
-/

namespace A074698.P8174725912579477429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063375 (n + 1)) (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A074698.P8174725912579477429

/-! ## A074698.P3710939897374475608

`record[A145154(A153792(n))]`
-/

namespace A074698.P3710939897374475608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 (A153792 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074698.P3710939897374475608

