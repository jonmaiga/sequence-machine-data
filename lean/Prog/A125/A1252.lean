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
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
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
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A125200: a(n) = n*(4*n^2 + n - 1)/2.

The programs for A125200, the canonical program `A125200.P15027065757027609428` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125200 has offset 1).

The definition of A125200 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(4*(n+1)²+n+1-1)/2` (program `A125200.P6406720388008801006`, by `A125200.P6406720388008801006.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A125200.P6406720388008801006

`(n+1)*(4*(n+1)²+n+1-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A125200.P6406720388008801006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * ((4 * (n + 1) ^ 2 + (n + 1) : ℤ) - 1) : ℚ) / 2

end

end A125200.P6406720388008801006

namespace A125200

/-- `(n+1)*(4*(n+1)²+n+1-1)/2` -/
def P6406720388008801006.Spec : Prop :=
  ∀ n, P6406720388008801006.a n = (A125200 (n + 1) : ℚ)

theorem P6406720388008801006.correct : P6406720388008801006.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A125200, Nat.add_sub_cancel, A125200.P6406720388008801006.a, A125200.P15027065757027609428.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A125200, Nat.add_sub_cancel, A125200.P6406720388008801006.a, A125200.P15027065757027609428.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A125200

/-! ## A125200.P15027065757027609428

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=2, a(1)=17, a(2)=57, a(3)=134`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A125200

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P15027065757027609428.Spec : Prop :=
  ∀ n, P15027065757027609428.a n = A125200 (n + 1)

theorem P15027065757027609428.correct : P15027065757027609428.Spec := by
  intro n
  simp only [A125200, Nat.add_sub_cancel]

end A125200

/-! ## A125200.P18017260046492120036

`∑[∑[a(n-1)+12]]` with `a(0)=2, a(1)=13`
-/

namespace A125200.P18017260046492120036
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 13] fun n f2 =>
  f2 (n - 1) + 12

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125200.P18017260046492120036

namespace A125200

/-- `∑[∑[a(n-1)+12]]` -/
def P18017260046492120036.Spec : Prop :=
  ∀ n, (P18017260046492120036.a n : ℤ) = A125200 (n + 1)

end A125200

/-! ## A125200.P5378623254662983460

`∑[lcm(2*n+1, 3*n+2)]`
-/

namespace A125200.P5378623254662983460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125200.P5378623254662983460

namespace A125200

/-- `∑[lcm(2*n+1, 3*n+2)]` -/
def P5378623254662983460.Spec : Prop :=
  ∀ n, (P5378623254662983460.a n : ℤ) = A125200 (n + 1)

end A125200

/-! ## A125200.P3852889020238386184

`∑[∑[ogf((2+10x)/(1-2x+x^2))]]-∑[n]`
-/

namespace A125200.P3852889020238386184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 10] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A125200.P3852889020238386184

namespace A125200

/-- `∑[∑[ogf((2+10x)/(1-2x+x^2))]]-∑[n]` -/
def P3852889020238386184.Spec : Prop :=
  ∀ n, P3852889020238386184.a n = A125200 (n + 1)

end A125200

/-! ## A125200.P625337249803344971

`∑[Δ[(n+1)*C(2*n, 2)]-n]`
-/

namespace A125200.P625337249803344971
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.choose (2 * n) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125200.P625337249803344971

namespace A125200

/-- `∑[Δ[(n+1)*C(2*n, 2)]-n]` -/
def P625337249803344971.Spec : Prop :=
  ∀ n, P625337249803344971.a n = A125200 (n + 1)

end A125200

/-! ## A125200.P11317656756633662624

`∑[(2*n+n+2)*or(1, 2*n)]`
-/

namespace A125200.P11317656756633662624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + (n + 2)) * Nat.lor 1 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125200.P11317656756633662624

namespace A125200

/-- `∑[(2*n+n+2)*or(1, 2*n)]` -/
def P11317656756633662624.Spec : Prop :=
  ∀ n, (P11317656756633662624.a n : ℤ) = A125200 (n + 1)

end A125200

/-! ## A125200.P18064859362586951870

`∑[(2*n+n+2)*xor(1, 2*n)]`
-/

namespace A125200.P18064859362586951870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + (n + 2)) * Nat.xor 1 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125200.P18064859362586951870

namespace A125200

/-- `∑[(2*n+n+2)*xor(1, 2*n)]` -/
def P18064859362586951870.Spec : Prop :=
  ∀ n, (P18064859362586951870.a n : ℤ) = A125200 (n + 1)

end A125200

/-! ## A125200.P6292562724065682841

`∑[C(2*(n+1), 2)+(2*n+1)²]`
-/

namespace A125200.P6292562724065682841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * (n + 1)) 2 + (2 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125200.P6292562724065682841

namespace A125200

/-- `∑[C(2*(n+1), 2)+(2*n+1)²]` -/
def P6292562724065682841.Spec : Prop :=
  ∀ n, (P6292562724065682841.a n : ℤ) = A125200 (n + 1)

end A125200

/-! ## A125200.P9648266825358345133

`∑[(2*n+1)*(∑[n+2]-C(n, 2))]`
-/

namespace A125200.P9648266825358345133
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (Nat.choose n 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125200.P9648266825358345133

namespace A125200

/-- `∑[(2*n+1)*(∑[n+2]-C(n, 2))]` -/
def P9648266825358345133.Spec : Prop :=
  ∀ n, P9648266825358345133.a n = A125200 (n + 1)

end A125200

/-! ## A125200.P2579416436042332644

`∑[(2*n+1)*(C(n+1, n)+2*n+1)]`
-/

namespace A125200.P2579416436042332644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (Nat.choose (n + 1) n + (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125200.P2579416436042332644

namespace A125200

/-- `∑[(2*n+1)*(C(n+1, n)+2*n+1)]` -/
def P2579416436042332644.Spec : Prop :=
  ∀ n, (P2579416436042332644.a n : ℤ) = A125200 (n + 1)

end A125200

/-! ## A125200.P2638956032030518193

`a(n-1)+(2*n+1)*(2*n+n+2)` with `a(0)=2`
-/

namespace A125200.P2638956032030518193
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (2 * n + 1) * (2 * n + (n + 2))

end

end A125200.P2638956032030518193

namespace A125200

/-- `a(n-1)+(2*n+1)*(2*n+n+2)` -/
def P2638956032030518193.Spec : Prop :=
  ∀ n, (P2638956032030518193.a n : ℤ) = A125200 (n + 1)

end A125200

/-! ## A125200.P10201055367078799757

`∑[(2*n+1)*(and(2*n+1, 2*n)+n+2)]`
-/

namespace A125200.P10201055367078799757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (Nat.land (2 * n + 1) (2 * n) + (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125200.P10201055367078799757

namespace A125200

/-- `∑[(2*n+1)*(and(2*n+1, 2*n)+n+2)]` -/
def P10201055367078799757.Spec : Prop :=
  ∀ n, (P10201055367078799757.a n : ℤ) = A125200 (n + 1)

end A125200

/-! ## A125200.P10357655262648074492

`∑[(2*n+1)*(gcd(n+1, ∑[2*n])+2*n+1)]`
-/

namespace A125200.P10357655262648074492
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f2 j) + (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125200.P10357655262648074492

namespace A125200

/-- `∑[(2*n+1)*(gcd(n+1, ∑[2*n])+2*n+1)]` -/
def P10357655262648074492.Spec : Prop :=
  ∀ n, (P10357655262648074492.a n : ℤ) = A125200 (n + 1)

end A125200

/-! ## A125200.P14888601112659513864

`A135712(n)+(n+1)²`
-/

namespace A125200.P14888601112659513864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135712 n + ((n + 1) ^ 2 : ℤ)

end

end A125200.P14888601112659513864

namespace A125200

/-- `A135712(n)+(n+1)²` -/
def P14888601112659513864.Spec : Prop :=
  ∀ n, P14888601112659513864.a n = A125200 (n + 1)

end A125200

/-! ## A125200.P15786801308296472332

`A033431(n+1)+∑[n]`
-/

namespace A125200.P15786801308296472332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A125200.P15786801308296472332

namespace A125200

/-- `A033431(n+1)+∑[n]` -/
def P15786801308296472332.Spec : Prop :=
  ∀ n, P15786801308296472332.a n = A125200 (n + 1)

end A125200

/-! ## A125200.P16251325959042825507

`A213820(n+1)-∑[n]`
-/

namespace A125200.P16251325959042825507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213820 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A125200.P16251325959042825507

namespace A125200

/-- `A213820(n+1)-∑[n]` -/
def P16251325959042825507.Spec : Prop :=
  ∀ n, P16251325959042825507.a n = A125200 (n + 1)

end A125200

/-! ## A125200.P1394087955803556287

`∑[A033570(n)]+(n+1)²`
-/

namespace A125200.P1394087955803556287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A125200.P1394087955803556287

namespace A125200

/-- `∑[A033570(n)]+(n+1)²` -/
def P1394087955803556287.Spec : Prop :=
  ∀ n, P1394087955803556287.a n = A125200 (n + 1)

end A125200

/-! ## A125200.P4407139507679352002

`∑[∑[A017533(n)]]+n+1`
-/

namespace A125200.P4407139507679352002
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A125200.P4407139507679352002

namespace A125200

/-- `∑[∑[A017533(n)]]+n+1` -/
def P4407139507679352002.Spec : Prop :=
  ∀ n, P4407139507679352002.a n = A125200 (n + 1)

end A125200

/-! ## A125200.P13698444276321197081

`A007588(n+1)+∑[n+1]`
-/

namespace A125200.P13698444276321197081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007588 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A125200.P13698444276321197081

namespace A125200

/-- `A007588(n+1)+∑[n+1]` -/
def P13698444276321197081.Spec : Prop :=
  ∀ n, P13698444276321197081.a n = A125200 (n + 1)

end A125200

/-!
# A125201: a(n) = 8*n^2 - 7*n + 1.

The programs for A125201, the canonical program `A125201.P9072291273738928373` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125201 has offset 0).

The definition of A125201 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*n²-7*n+1` (program `A125201.P9072291273738928373`, by `A125201.P9072291273738928373.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A125201.P9072291273738928373

`8*n²-7*n+1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A125201

/-- `8*n²-7*n+1` -/
def P9072291273738928373.Spec : Prop :=
  ∀ n, P9072291273738928373.a n = A125201 n

theorem P9072291273738928373.correct : P9072291273738928373.Spec := by
  intro n
  simp only [A125201]

end A125201

/-! ## A125201.P9602162644649428079

`∑[a(n-1)+16]` with `a(0)=1, a(1)=1`
-/

namespace A125201.P9602162644649428079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125201.P9602162644649428079

namespace A125201

/-- `∑[a(n-1)+16]` -/
def P9602162644649428079.Spec : Prop :=
  ∀ n, (P9602162644649428079.a n : ℤ) = A125201 n

end A125201

/-! ## A125201.P13843469497216100391

`∑[2*a(n-1)-a(n-2)]` with `a(0)=1, a(1)=1, a(2)=17`
-/

namespace A125201.P13843469497216100391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 17] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125201.P13843469497216100391

namespace A125201

/-- `∑[2*a(n-1)-a(n-2)]` -/
def P13843469497216100391.Spec : Prop :=
  ∀ n, P13843469497216100391.a n = A125201 n

end A125201

/-! ## A125201.P8847270208808413717

`abs(1-A360417(n))`
-/

namespace A125201.P8847270208808413717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A360417 n|

end

end A125201.P8847270208808413717

namespace A125201

/-- `abs(1-A360417(n))` -/
def P8847270208808413717.Spec : Prop :=
  ∀ n, P8847270208808413717.a n = A125201 n

end A125201

/-! ## A125201.P12229868982299579436

`abs(n-A033567(n))`
-/

namespace A125201.P12229868982299579436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A033567 n|

end

end A125201.P12229868982299579436

namespace A125201

/-- `abs(n-A033567(n))` -/
def P12229868982299579436.Spec : Prop :=
  ∀ n, P12229868982299579436.a n = A125201 n

end A125201

/-! ## A125201.P16270767381520309645

`∑[A298035(n)-A052928(2*n+1)]`
-/

namespace A125201.P16270767381520309645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298035 n - A052928 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125201.P16270767381520309645

namespace A125201

/-- `∑[A298035(n)-A052928(2*n+1)]` -/
def P16270767381520309645.Spec : Prop :=
  ∀ n, P16270767381520309645.a n = A125201 n

end A125201

/-! ## A125201.P3535266863849682300

`(A051870(n)+1)%A039935(n+1)`
-/

namespace A125201.P3535266863849682300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051870 n + 1) (A039935 (n + 1))

end

end A125201.P3535266863849682300

namespace A125201

/-- `(A051870(n)+1)%A039935(n+1)` -/
def P3535266863849682300.Spec : Prop :=
  ∀ n, P3535266863849682300.a n = A125201 n

end A125201

/-! ## A125201.P8116246430510238750

`A000027(A051870(n)+1)`
-/

namespace A125201.P8116246430510238750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A051870 n + 1).toNat

end

end A125201.P8116246430510238750

namespace A125201

/-- `A000027(A051870(n)+1)` -/
def P8116246430510238750.Spec : Prop :=
  ∀ n, P8116246430510238750.a n = A125201 n

end A125201

/-! ## A125201.P5110738276635256531

`A000027(A033567(n)-n)`
-/

namespace A125201.P5110738276635256531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A033567 n - (n : ℤ)).toNat

end

end A125201.P5110738276635256531

namespace A125201

/-- `A000027(A033567(n)-n)` -/
def P5110738276635256531.Spec : Prop :=
  ∀ n, P5110738276635256531.a n = A125201 n

end A125201

/-! ## A125201.P9378836426139365278

`A162917(A054552(n))`
-/

namespace A125201.P9378836426139365278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162917 (A054552 n).toNat

end

end A125201.P9378836426139365278

namespace A125201

/-- `A162917(A054552(n))` -/
def P9378836426139365278.Spec : Prop :=
  ∀ n, P9378836426139365278.a n = A125201 n

end A125201

/-!
# A125202: a(n) = 4*n^2 - 6*n + 1.

The programs for A125202, the canonical program `A125202.P2347162376427039196` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125202 has offset 1).

The definition of A125202 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(n+1)²-6*(n+1)+1` (program `A125202.P2347162376427039196`, by `A125202.P2347162376427039196.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A125202.P3178364757278011799

`a(n-1)+8*(n+1)-10` with `a(0)=-1`
-/

namespace A125202.P3178364757278011799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n a =>
  a (n - 1) + (8 * (n + 1) : ℤ) - 10

end

end A125202.P3178364757278011799

namespace A125202

/-- `a(n-1)+8*(n+1)-10` -/
def P3178364757278011799.Spec : Prop :=
  ∀ n, P3178364757278011799.a n = A125202 (n + 1)

theorem P3178364757278011799.correct : P3178364757278011799.Spec := by
  intro n
  induction n with
  | zero => simp [A125202, A125202.P3178364757278011799.a, A125202.P2347162376427039196.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A125202, Nat.add_sub_cancel, A125202.P3178364757278011799.a, A125202.P2347162376427039196.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A125202

/-! ## A125202.P2347162376427039196

`4*(n+1)²-6*(n+1)+1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A125202

/-- `4*(n+1)²-6*(n+1)+1` -/
def P2347162376427039196.Spec : Prop :=
  ∀ n, P2347162376427039196.a n = A125202 (n + 1)

theorem P2347162376427039196.correct : P2347162376427039196.Spec := by
  intro n
  simp only [A125202, Nat.add_sub_cancel]

end A125202

/-! ## A125202.P3158870956796914948

`or(1, ∑[8*n-2])`
-/

namespace A125202.P3158870956796914948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A125202.P3158870956796914948

namespace A125202

/-- `or(1, ∑[8*n-2])` -/
def P3158870956796914948.Spec : Prop :=
  ∀ n, P3158870956796914948.a n = A125202 (n + 1)

end A125202

/-! ## A125202.P11137135133485889737

`xor(1, ∑[8*n-2])`
-/

namespace A125202.P11137135133485889737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A125202.P11137135133485889737

namespace A125202

/-- `xor(1, ∑[8*n-2])` -/
def P11137135133485889737.Spec : Prop :=
  ∀ n, P11137135133485889737.a n = A125202 (n + 1)

end A125202

/-! ## A125202.P13873579767050027754

`record[or(1, n)²-(n+2)]`
-/

namespace A125202.P13873579767050027754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n ^ 2 : ℤ) - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125202.P13873579767050027754

namespace A125202

/-- `record[or(1, n)²-(n+2)]` -/
def P13873579767050027754.Spec : Prop :=
  ∀ n, P13873579767050027754.a n = A125202 (n + 1)

end A125202

/-! ## A125202.P1827138029464180088

`record[xor(1, n)²-(n+2)]`
-/

namespace A125202.P1827138029464180088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n ^ 2 : ℤ) - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125202.P1827138029464180088

namespace A125202

/-- `record[xor(1, n)²-(n+2)]` -/
def P1827138029464180088.Spec : Prop :=
  ∀ n, P1827138029464180088.a n = A125202 (n + 1)

end A125202

/-! ## A125202.P15289715437784728357

`∑[a(n-1)+8]` with `a(0)=-1, a(1)=6`
-/

namespace A125202.P15289715437784728357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 6] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125202.P15289715437784728357

namespace A125202

/-- `∑[a(n-1)+8]` -/
def P15289715437784728357.Spec : Prop :=
  ∀ n, P15289715437784728357.a n = A125202 (n + 1)

end A125202

/-! ## A125202.P1883002649457204032

`∑[ogf((-1+8x+x^2)/(1-2x+x^2))]`
-/

namespace A125202.P1883002649457204032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 8, 1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125202.P1883002649457204032

namespace A125202

/-- `∑[ogf((-1+8x+x^2)/(1-2x+x^2))]` -/
def P1883002649457204032.Spec : Prop :=
  ∀ n, P1883002649457204032.a n = A125202 (n + 1)

end A125202

/-! ## A125202.P16008483856312378973

`ogf((-1+8x+x^2)/(1-3x+3x^2-x^3))`
-/

namespace A125202.P16008483856312378973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 8, 1] [1, -3, 3, -1] n

end

end A125202.P16008483856312378973

namespace A125202

/-- `ogf((-1+8x+x^2)/(1-3x+3x^2-x^3))` -/
def P16008483856312378973.Spec : Prop :=
  ∀ n, P16008483856312378973.a n = A125202 (n + 1)

end A125202

/-! ## A125202.P9664808623147431839

`-(n*(1-record[xor(3, n)])+1)`
-/

namespace A125202.P9664808623147431839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * (1 - (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)) + 1)

end

end A125202.P9664808623147431839

namespace A125202

/-- `-(n*(1-record[xor(3, n)])+1)` -/
def P9664808623147431839.Spec : Prop :=
  ∀ n, P9664808623147431839.a n = A125202 (n + 1)

end A125202

/-! ## A125202.P14789548009911028266

`record[(n²-n)*n%2-1]`
-/

namespace A125202.P14789548009911028266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - (n : ℤ)) * ((n % 2 : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125202.P14789548009911028266

namespace A125202

/-- `record[(n²-n)*n%2-1]` -/
def P14789548009911028266.Spec : Prop :=
  ∀ n, P14789548009911028266.a n = A125202 (n + 1)

end A125202

/-! ## A125202.P11056343414223997956

`(Δ[C(4*n, 3)/4]-3)/2`
-/

namespace A125202.P11056343414223997956
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (4 * n) 3 : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - 3) / 2

end

end A125202.P11056343414223997956

namespace A125202

/-- `(Δ[C(4*n, 3)/4]-3)/2` -/
def P11056343414223997956.Spec : Prop :=
  ∀ n, P11056343414223997956.a n = (A125202 (n + 1) : ℚ)

theorem P11056343414223997956.correct : P11056343414223997956.Spec := by
  intro n
  simp only [A125202, Nat.add_sub_cancel, A125202.P11056343414223997956.f1, A125202.P11056343414223997956.a, A125202.P2347162376427039196.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A125202

/-! ## A125202.P3823135483042799041

`record[(n+2)*xor(1, n-2)+1]`
-/

namespace A125202.P3823135483042799041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * Int.xor 1 ((n : ℤ) - 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125202.P3823135483042799041

namespace A125202

/-- `record[(n+2)*xor(1, n-2)+1]` -/
def P3823135483042799041.Spec : Prop :=
  ∀ n, P3823135483042799041.a n = A125202 (n + 1)

end A125202

/-! ## A125202.P403594986921004146

`-or(1, -((2*n)²+2*n))`
-/

namespace A125202.P403594986921004146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (-((2 * n) ^ 2 + 2 * n : ℤ))

end

end A125202.P403594986921004146

namespace A125202

/-- `-or(1, -((2*n)²+2*n))` -/
def P403594986921004146.Spec : Prop :=
  ∀ n, P403594986921004146.a n = A125202 (n + 1)

end A125202

/-! ## A125202.P17772524254921702414

`-xor(1, -((2*n)²+2*n))`
-/

namespace A125202.P17772524254921702414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 (-((2 * n) ^ 2 + 2 * n : ℤ))

end

end A125202.P17772524254921702414

namespace A125202

/-- `-xor(1, -((2*n)²+2*n))` -/
def P17772524254921702414.Spec : Prop :=
  ∀ n, P17772524254921702414.a n = A125202 (n + 1)

end A125202

/-! ## A125202.P12121049982173538885

`record[n^gcd(2, n+1)-(n+1)]`
-/

namespace A125202.P12121049982173538885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ Nat.gcd 2 (n + 1) : ℤ) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125202.P12121049982173538885

namespace A125202

/-- `record[n^gcd(2, n+1)-(n+1)]` -/
def P12121049982173538885.Spec : Prop :=
  ∀ n, P12121049982173538885.a n = A125202 (n + 1)

end A125202

/-! ## A125202.P3204253715741831676

`floor(n²-∑[a(n-1)-6])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A125202.P3204253715741831676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125202.P3204253715741831676

namespace A125202

/-- `floor(n²-∑[a(n-1)-6])` -/
def P3204253715741831676.Spec : Prop :=
  ∀ n, P3204253715741831676.a n = A125202 (n + 1)

end A125202

/-! ## A125202.P1138295010113174879

`2*(C(2*n+1, 2)-1/2)`
-/

namespace A125202.P1138295010113174879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.choose (2 * n + 1) 2 : ℚ) - (1 : ℚ) / 2)

end

end A125202.P1138295010113174879

namespace A125202

/-- `2*(C(2*n+1, 2)-1/2)` -/
def P1138295010113174879.Spec : Prop :=
  ∀ n, P1138295010113174879.a n = (A125202 (n + 1) : ℚ)

theorem P1138295010113174879.correct : P1138295010113174879.Spec := by
  intro n
  simp only [A125202, Nat.add_sub_cancel, A125202.P1138295010113174879.a, A125202.P2347162376427039196.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A125202

/-! ## A125202.P18091236022857382427

`2*(lcm(n, 2*n+1)-1/2)`
-/

namespace A125202.P18091236022857382427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.lcm n (2 * n + 1) : ℚ) - (1 : ℚ) / 2)

end

end A125202.P18091236022857382427

namespace A125202

/-- `2*(lcm(n, 2*n+1)-1/2)` -/
def P18091236022857382427.Spec : Prop :=
  ∀ n, P18091236022857382427.a n = (A125202 (n + 1) : ℚ)

end A125202

/-! ## A125202.P11148751004095534550

`Δ[C(2*n+1, 3)-(n²+n)]`
-/

namespace A125202.P11148751004095534550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n + 1) 3 : ℤ) - (n ^ 2 + n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A125202.P11148751004095534550

namespace A125202

/-- `Δ[C(2*n+1, 3)-(n²+n)]` -/
def P11148751004095534550.Spec : Prop :=
  ∀ n, P11148751004095534550.a n = A125202 (n + 1)

theorem P11148751004095534550.correct : P11148751004095534550.Spec := by
  intro n
  simp only [A125202, Nat.add_sub_cancel, A125202.P11148751004095534550.f1, A125202.P11148751004095534550.a, A125202.P2347162376427039196.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A125202

/-!
# A125203: Number of ways to write n as 4*x*y - x - y with 1<=x<=y.

The programs for A125203, the canonical program `A125203.P7914855552444812704` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125203 has offset 1).

The definition of A125203 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4095 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125203.P7914855552444812704

`round(A293513(4*n+5)/2)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A125203

/-- `round(A293513(4*n+5)/2)` -/
def P7914855552444812704.Spec : Prop :=
  ∀ n, P7914855552444812704.a n = A125203 (n + 1)

theorem P7914855552444812704.correct : P7914855552444812704.Spec := by
  intro n
  simp only [A125203, Nat.add_sub_cancel]

end A125203

/-! ## A125203.P8662853937537472622

`A123108(A293513(4*n+5)+1)`
-/

namespace A125203.P8662853937537472622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A293513 (4 * n + 5) + 1).toNat

end

end A125203.P8662853937537472622

namespace A125203

/-- `A123108(A293513(4*n+5)+1)` -/
def P8662853937537472622.Spec : Prop :=
  ∀ n, P8662853937537472622.a n = A125203 (n + 1)

end A125203

/-! ## A125203.P13497043977830221787

`ceil(A001842(4*n+5)/2)`
-/

namespace A125203.P13497043977830221787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001842 (4 * n + 5) : ℚ) / 2⌉

end

end A125203.P13497043977830221787

namespace A125203

/-- `ceil(A001842(4*n+5)/2)` -/
def P13497043977830221787.Spec : Prop :=
  ∀ n, P13497043977830221787.a n = A125203 (n + 1)

end A125203

/-! ## A125203.P17747700611516416827

`A364387(A004766(n+1))`
-/

namespace A125203.P17747700611516416827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364387 (A004766 (n + 1)).toNat

end

end A125203.P17747700611516416827

namespace A125203

/-- `A364387(A004766(n+1))` -/
def P17747700611516416827.Spec : Prop :=
  ∀ n, P17747700611516416827.a n = A125203 (n + 1)

end A125203

/-! ## A125203.P6693431973817992706

`A364387(A016813(n+1))`
-/

namespace A125203.P6693431973817992706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364387 (A016813 (n + 1)).toNat

end

end A125203.P6693431973817992706

namespace A125203

/-- `A364387(A016813(n+1))` -/
def P6693431973817992706.Spec : Prop :=
  ∀ n, P6693431973817992706.a n = A125203 (n + 1)

end A125203

/-! ## A125203.P13711917582247986886

`A364387(A222945(n+1))`
-/

namespace A125203.P13711917582247986886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364387 (A222945 (n + 1)).toNat

end

end A125203.P13711917582247986886

namespace A125203

/-- `A364387(A222945(n+1))` -/
def P13711917582247986886.Spec : Prop :=
  ∀ n, P13711917582247986886.a n = A125203 (n + 1)

end A125203

/-! ## A125203.P15876823978593173157

`A110654(A001842(4*n+5))`
-/

namespace A125203.P15876823978593173157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A001842 (4 * n + 5)).toNat

end

end A125203.P15876823978593173157

namespace A125203

/-- `A110654(A001842(4*n+5))` -/
def P15876823978593173157.Spec : Prop :=
  ∀ n, P15876823978593173157.a n = A125203 (n + 1)

end A125203

/-! ## A125203.P18207585366551647984

`A004526(A001842(4*n+5)+1)`
-/

namespace A125203.P18207585366551647984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A001842 (4 * n + 5) + 1).toNat

end

end A125203.P18207585366551647984

namespace A125203

/-- `A004526(A001842(4*n+5)+1)` -/
def P18207585366551647984.Spec : Prop :=
  ∀ n, P18207585366551647984.a n = A125203 (n + 1)

end A125203

/-! ## A125203.P11115725089943788613

`A123108(A001842(4*n+5)+1)`
-/

namespace A125203.P11115725089943788613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A001842 (4 * n + 5) + 1).toNat

end

end A125203.P11115725089943788613

namespace A125203

/-- `A123108(A001842(4*n+5)+1)` -/
def P11115725089943788613.Spec : Prop :=
  ∀ n, P11115725089943788613.a n = A125203 (n + 1)

end A125203

/-! ## A125203.P10365869227468257196

`A001842(3^A001842(4*n+5))`
-/

namespace A125203.P10365869227468257196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A001842 (4 * n + 5) : ℤ))).toNat

end

end A125203.P10365869227468257196

namespace A125203

/-- `A001842(3^A001842(4*n+5))` -/
def P10365869227468257196.Spec : Prop :=
  ∀ n, P10365869227468257196.a n = A125203 (n + 1)

end A125203

/-!
# A125204: a(0)=0, a(1)=1; and a(n) = a(n-1) + a(a(n-1) mod n) for n>=2.

The programs for A125204, the canonical program `A125204.P1835112252610200560` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125204 has offset 0).

The definition of A125204 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A125204.P1835112252610200560

`a(n-1)+a(a(n-1)%n)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A125204

/-- `a(n-1)+a(a(n-1)%n)` -/
def P1835112252610200560.Spec : Prop :=
  ∀ n, (P1835112252610200560.a n : ℤ) = A125204 n

theorem P1835112252610200560.correct : P1835112252610200560.Spec := by
  intro n
  simp only [A125204]

end A125204

/-!
# A125207: Total number of connected components in all subgraphs obtained from the complete labeled graph K_n by removing zero or more edges.

The programs for A125207, there is no canonical definition to state claims against.
-/

/-! ## A125207.P1324930978175871891

`A131010(A005425(comp[2*(n+1)]))`
-/

namespace A125207.P1324930978175871891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131010 (A005425 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A125207.P1324930978175871891

/-!
# A125211: a(n) = total number of primes of the form |k! - n|.

The programs for A125211, there is no canonical definition to state claims against.
-/

/-! ## A125211.P12562601083558156834

`A323077(A168268(n)+A102489(2*(n+2)))`
-/

namespace A125211.P12562601083558156834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323077 (A168268 n + A102489 (2 * (n + 2))).toNat

end

end A125211.P12562601083558156834

/-!
# A125212: Numbers m such that no prime exists of the form |k! - m|; or A125211(m) = 0.

The programs for A125212, there is no canonical definition to state claims against.
-/

/-! ## A125212.P15932292799623521938

`eq[0, A125211(n+1)]+1`
-/

namespace A125212.P15932292799623521938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125211 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A125212.P15932292799623521938

/-! ## A125212.P9054805550079500735

`record[n+1-A000118(n)*A125211(n+1)]`
-/

namespace A125212.P9054805550079500735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000118 n * A125211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125212.P9054805550079500735

/-! ## A125212.P13624659194900849561

`record[n+1-A047842(n)*A125211(n+1)]`
-/

namespace A125212.P13624659194900849561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A047842 n * A125211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125212.P13624659194900849561

/-! ## A125212.P5357646559562663404

`record[n+1-A038609(n+1)*A125211(n+1)]`
-/

namespace A125212.P5357646559562663404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A038609 (n + 1) * A125211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125212.P5357646559562663404

/-! ## A125212.P8931845935988914676

`record[n+1-A109990(n+1)*A125211(n+1)]`
-/

namespace A125212.P8931845935988914676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A109990 (n + 1) * A125211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125212.P8931845935988914676

/-!
# A125213: Integers m such that no prime exists of the form abs(k! - 3m - 1), abs(k! - 3m), or abs(k! - 3m + 1).

The programs for A125213, there is no canonical definition to state claims against.
-/

/-! ## A125213.P5371544567331293454

`lt[A125211(A008486(n)), n%2]`
-/

namespace A125213.P5371544567331293454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125211 (A008486 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A125213.P5371544567331293454

/-! ## A125213.P6841669884961221398

`lt[A125211(A008486(n)), A000035(n)]`
-/

namespace A125213.P6841669884961221398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125211 (A008486 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A125213.P6841669884961221398

/-! ## A125213.P13255119089650294909

`eq[A125211(A008486(n)), A167297(n+1)]`
-/

namespace A125213.P13255119089650294909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125211 (A008486 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167297 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125213.P13255119089650294909

/-! ## A125213.P3501446806706232165

`eq[A125211(A008486(n)), A193356(n+1)]`
-/

namespace A125213.P3501446806706232165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125211 (A008486 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193356 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125213.P3501446806706232165

/-! ## A125213.P14444242447898028517

`lt[A125211(A008486(n)), A056594(n+1)²]`
-/

namespace A125213.P14444242447898028517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125211 (A008486 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A125213.P14444242447898028517

/-! ## A125213.P4448854979658115302

`eq[A125211(A008486(n))^n+n, A317319(n)]`
-/

namespace A125213.P4448854979658115302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125211 (A008486 n).toNat ^ n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317319 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125213.P4448854979658115302

/-!
# A125215: Semiprimes s such that s- /+2 are primes.

The programs for A125215, there is no canonical definition to state claims against.
-/

/-! ## A125215.P15966716865539451787

`A176229(n+1)+2`
-/

namespace A125215.P15966716865539451787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176229 (n + 1) + 2

end

end A125215.P15966716865539451787

/-! ## A125215.P5678993847829367429

`3*A125272(n+1)`
-/

namespace A125215.P5678993847829367429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A125272 (n + 1)

end

end A125215.P5678993847829367429

/-! ## A125215.P10959682173797541166

`∩[A283532(n+1), A288632(n+1)]+2`
-/

namespace A125215.P10959682173797541166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288632 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A125215.P10959682173797541166

/-! ## A125215.P1731911081813509636

`∩[A029710(n+1), A283532(n+1)]+2`
-/

namespace A125215.P1731911081813509636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A125215.P1731911081813509636

/-! ## A125215.P7286871556842106993

`∩[A029710(n+1), A288632(n+1)]+2`
-/

namespace A125215.P7286871556842106993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288632 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A125215.P7286871556842106993

/-! ## A125215.P9150080239662768045

`∩[A029710(n+1), A091180(n+1)]+2`
-/

namespace A125215.P9150080239662768045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A125215.P9150080239662768045

/-! ## A125215.P2181780971164930673

`∩[A029708(n+1), A075278(n+1)]`
-/

namespace A125215.P2181780971164930673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125215.P2181780971164930673

/-! ## A125215.P15910299042650965624

`3*p?[A157834(n+1)]`
-/

namespace A125215.P15910299042650965624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125215.P15910299042650965624

/-! ## A125215.P13701820063033935627

`∩[A075278(n+1), A087679(n+1)]`
-/

namespace A125215.P13701820063033935627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075278 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087679 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125215.P13701820063033935627

/-! ## A125215.P15073772665807227007

`∩[A015913(n+1), A091180(n+1)]+2`
-/

namespace A125215.P15073772665807227007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A125215.P15073772665807227007

/-! ## A125215.P3812903778543012747

`∩[A091180(n+1), A172238(n+1)]+2`
-/

namespace A125215.P3812903778543012747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A125215.P3812903778543012747

/-! ## A125215.P18024804283576446363

`∩[A015913(n+1), A283532(n+1)]+2`
-/

namespace A125215.P18024804283576446363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A125215.P18024804283576446363

/-! ## A125215.P4066069351855697120

`∩[A015913(n+1), A288632(n+1)]+2`
-/

namespace A125215.P4066069351855697120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288632 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A125215.P4066069351855697120

/-! ## A125215.P1475705338072456461

`∩[A172238(n+1), A283532(n+1)]+2`
-/

namespace A125215.P1475705338072456461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A125215.P1475705338072456461

/-! ## A125215.P12739809094121717918

`∩[A172238(n+1), A288632(n+1)]+2`
-/

namespace A125215.P12739809094121717918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288632 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A125215.P12739809094121717918

/-! ## A125215.P17970364386422704263

`∩[A056772(n+1), A091180(n+1)]+2`
-/

namespace A125215.P17970364386422704263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A125215.P17970364386422704263

/-! ## A125215.P7324456042357412233

`∩[A056772(n+1), A283532(n+1)]+2`
-/

namespace A125215.P7324456042357412233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A125215.P7324456042357412233

/-! ## A125215.P14995246899147906304

`∩[A056772(n+1), A288632(n+1)]+2`
-/

namespace A125215.P14995246899147906304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288632 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A125215.P14995246899147906304

/-! ## A125215.P8784787145123636157

`p?[A094524(n+1)-4]+2`
-/

namespace A125215.P8784787145123636157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094524 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2

end

end A125215.P8784787145123636157

/-!
# A125216: Semiprimes s such that s- /+4 are primes.

The programs for A125216, there is no canonical definition to state claims against.
-/

/-! ## A125216.P12189095650030519036

`3*A124098(n+1)`
-/

namespace A125216.P12189095650030519036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A124098 (n + 1)

end

end A125216.P12189095650030519036

/-! ## A125216.P7615528567799907293

`A008486(A124098(n+1))`
-/

namespace A125216.P7615528567799907293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A124098 (n + 1)).toNat

end

end A125216.P7615528567799907293

/-! ## A125216.P14950341230187656955

`A250469(A124098(n+1)+1)`
-/

namespace A125216.P14950341230187656955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250469 (A124098 (n + 1) + 1).toNat

end

end A125216.P14950341230187656955

/-! ## A125216.P4045752991361880310

`filter[A087680(n+1), A064911(#)]`
-/

namespace A125216.P4045752991361880310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A125216.P4045752991361880310

/-!
# A125217: Numbers that can be written uniquely as 4*x*y-x-y with 1<=x<=y.

The programs for A125217, the canonical program `A125217.P12158118302977097912` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125217 has offset 1).

The definition of A125217 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2774 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125217.P12158118302977097912

`eq[1, A125203(n+1)]+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A125217

/-- `eq[1, A125203(n+1)]+1` -/
def P12158118302977097912.Spec : Prop :=
  ∀ n, (P12158118302977097912.a n : ℤ) = A125217 (n + 1)

theorem P12158118302977097912.correct : P12158118302977097912.Spec := by
  intro n
  simp only [A125217, Nat.add_sub_cancel]

end A125217

/-! ## A125217.P1434269016961562253

`eq[1, log2(a(A125203(n)))]` with `a(0)=6, a(1)=2`
-/

namespace A125217.P1434269016961562253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.rec [6, 2] fun n f2 =>
  Real.logb 2 (f2 (A125203 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A125217.P1434269016961562253

namespace A125217

/-- `eq[1, log2(a(A125203(n)))]` -/
def P1434269016961562253.Spec : Prop :=
  ∀ n, (P1434269016961562253.a n : ℤ) = A125217 (n + 1)

end A125217

/-! ## A125217.P6301976164531815266

`eq[1, A125203(A028310(n))]`
-/

namespace A125217.P6301976164531815266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125203 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125217.P6301976164531815266

namespace A125217

/-- `eq[1, A125203(A028310(n))]` -/
def P6301976164531815266.Spec : Prop :=
  ∀ n, (P6301976164531815266.a n : ℤ) = A125217 (n + 1)

end A125217

/-! ## A125217.P11513108139228877921

`eq[1, A000045(A359240(n+1))]`
-/

namespace A125217.P11513108139228877921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A359240 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125217.P11513108139228877921

namespace A125217

/-- `eq[1, A000045(A359240(n+1))]` -/
def P11513108139228877921.Spec : Prop :=
  ∀ n, (P11513108139228877921.a n : ℤ) = A125217 (n + 1)

end A125217

/-! ## A125217.P5297269828804758585

`eq[1, A125203(A000007(n)+n)]`
-/

namespace A125217.P5297269828804758585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125203 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125217.P5297269828804758585

namespace A125217

/-- `eq[1, A125203(A000007(n)+n)]` -/
def P5297269828804758585.Spec : Prop :=
  ∀ n, (P5297269828804758585.a n : ℤ) = A125217 (n + 1)

end A125217

/-! ## A125217.P11045840443971011696

`eq[1, A004884(a(A125203(n)))]` with `a(0)=6, a(1)=2`
-/

namespace A125217.P11045840443971011696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6, 2] fun n f2 =>
  A004884 (f2 (A125203 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125217.P11045840443971011696

namespace A125217

/-- `eq[1, A004884(a(A125203(n)))]` -/
def P11045840443971011696.Spec : Prop :=
  ∀ n, (P11045840443971011696.a n : ℤ) = A125217 (n + 1)

end A125217

/-! ## A125217.P4005940764196153446

`eq[1, A000045(A001842(A098180(4*n)))]`
-/

namespace A125217.P4005940764196153446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A001842 (A098180 (4 * n)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125217.P4005940764196153446

namespace A125217

/-- `eq[1, A000045(A001842(A098180(4*n)))]` -/
def P4005940764196153446.Spec : Prop :=
  ∀ n, (P4005940764196153446.a n : ℤ) = A125217 (n + 1)

end A125217

/-! ## A125217.P8437382923231329829

`eq[1, A000045(A001842(A016861(n)-n))]`
-/

namespace A125217.P8437382923231329829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A001842 (A016861 n - (n : ℤ)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125217.P8437382923231329829

namespace A125217

/-- `eq[1, A000045(A001842(A016861(n)-n))]` -/
def P8437382923231329829.Spec : Prop :=
  ∀ n, (P8437382923231329829.a n : ℤ) = A125217 (n + 1)

end A125217

/-!
# A125218: Numbers having at least two representations as 4*x*y-x-y with 1<=x<=y.

The programs for A125218, the canonical program `A125218.P3417562193377331111` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125218 has offset 1).

The definition of A125218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3223 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125218.P3417562193377331111

`lt[1, A125203(n+1)]+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A125218

/-- `lt[1, A125203(n+1)]+1` -/
def P3417562193377331111.Spec : Prop :=
  ∀ n, (P3417562193377331111.a n : ℤ) = A125218 (n + 1)

theorem P3417562193377331111.correct : P3417562193377331111.Spec := by
  intro n
  simp only [A125218, Nat.add_sub_cancel]

end A125218

/-! ## A125218.P8375087566842695758

`eq[1, log2(a(A125203(n)))]` with `a(0)=4, a(1)=4`
-/

namespace A125218.P8375087566842695758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.rec [4, 4] fun n f2 =>
  Real.logb 2 (f2 (A125203 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A125218.P8375087566842695758

namespace A125218

/-- `eq[1, log2(a(A125203(n)))]` -/
def P8375087566842695758.Spec : Prop :=
  ∀ n, (P8375087566842695758.a n : ℤ) = A125218 (n + 1)

end A125218

/-! ## A125218.P14765306461542414207

`eq[1, A000045(a(A125203(n)))]` with `a(0)=3, a(1)=3`
-/

namespace A125218.P14765306461542414207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f2 =>
  A000045 (f2 (A125203 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125218.P14765306461542414207

namespace A125218

/-- `eq[1, A000045(a(A125203(n)))]` -/
def P14765306461542414207.Spec : Prop :=
  ∀ n, (P14765306461542414207.a n : ℤ) = A125218 (n + 1)

end A125218

/-! ## A125218.P12704047637373875692

`eq[1, A004884(a(A125203(n)))]` with `a(0)=3, a(1)=3`
-/

namespace A125218.P12704047637373875692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f2 =>
  A004884 (f2 (A125203 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125218.P12704047637373875692

namespace A125218

/-- `eq[1, A004884(a(A125203(n)))]` -/
def P12704047637373875692.Spec : Prop :=
  ∀ n, (P12704047637373875692.a n : ℤ) = A125218 (n + 1)

end A125218

/-! ## A125218.P7501150831596251373

`eq[1, A001222(a(A125203(n)))]` with `a(0)=4, a(1)=4`
-/

namespace A125218.P7501150831596251373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 4] fun n f2 =>
  A001222 (f2 (A125203 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125218.P7501150831596251373

namespace A125218

/-- `eq[1, A001222(a(A125203(n)))]` -/
def P7501150831596251373.Spec : Prop :=
  ∀ n, (P7501150831596251373.a n : ℤ) = A125218 (n + 1)

end A125218

/-! ## A125218.P2632797551333253092

`eq[1, A001221(a(A125203(n)))]` with `a(0)=6, a(1)=6, a(2)=2`
-/

namespace A125218.P2632797551333253092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6, 6, 2] fun n f2 =>
  A001221 (f2 (A125203 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125218.P2632797551333253092

namespace A125218

/-- `eq[1, A001221(a(A125203(n)))]` -/
def P2632797551333253092.Spec : Prop :=
  ∀ n, (P2632797551333253092.a n : ℤ) = A125218 (n + 1)

end A125218

/-!
# A125221: Numbers k such that binomial(3k, k) + 1 is prime.

The programs for A125221, there is no canonical definition to state claims against.
-/

/-! ## A125221.P6820149802367778355

`record[A208510(A247341(3*(n+1)))-1]`
-/

namespace A125221.P6820149802367778355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208510 (A247341 (3 * (n + 1))).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125221.P6820149802367778355

/-!
# A125222: a(n) = Sum_{k=0..n} C(n,k)* [x^(n-k)] A(x)^k for n>0, with a(0)=1.

The programs for A125222, there is no canonical definition to state claims against.
-/

/-! ## A125222.P16743006908993564880

`A054895((9*n+2)*a(n-1))` with `a(0)=1`
-/

namespace A125222.P16743006908993564880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A054895 ((9 * n + 2 : ℤ) * a (n - 1)).toNat

end

end A125222.P16743006908993564880

/-! ## A125222.P3735809522930858735

`A222254(A220352(n))`
-/

namespace A125222.P3735809522930858735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A220352 n).toNat

end

end A125222.P3735809522930858735

/-!
# A125223: a(n) = Sum_{k=0..n-1} C(n-1,k)* [x^(n-k-1)] A(x)^(k+1) for n>0, with a(0)=1.

The programs for A125223, there is no canonical definition to state claims against.
-/

/-! ## A125223.P12503793556112810343

`A101402(A005500(n))+A002266(n)`
-/

namespace A125223.P12503793556112810343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101402 (A005500 n).toNat + A002266 n

end

end A125223.P12503793556112810343

/-! ## A125223.P12459718906397797353

`A101402(A096765(n)+A005500(n))`
-/

namespace A125223.P12459718906397797353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101402 (A096765 n + A005500 n).toNat

end

end A125223.P12459718906397797353

/-! ## A125223.P307442527645636723

`A143426(n)+A111900(A008981(n))`
-/

namespace A125223.P307442527645636723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143426 n + A111900 (A008981 n).toNat

end

end A125223.P307442527645636723

/-!
# A125224: G.f. satisfies: A(x) = 1 + Sum_{n>=1} x^(n-1)*series_reversion( x/A(x)^n ).

The programs for A125224, there is no canonical definition to state claims against.
-/

/-! ## A125224.P2326846904645231495

`A008619(∑[A259869(n+1)])`
-/

namespace A125224.P2326846904645231495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A125224.P2326846904645231495

/-! ## A125224.P7545417794688841166

`A152271(∑[A259869(n+1)])`
-/

namespace A125224.P7545417794688841166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A125224.P7545417794688841166

/-! ## A125224.P6043852812890593476

`A260731(∑[A261001(n+1)])`
-/

namespace A125224.P6043852812890593476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260731 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A125224.P6043852812890593476

/-!
# A125225: Numbers n such that n-1 can be represented as a sum of a subset of divisors of n.

The programs for A125225, there is no canonical definition to state claims against.
-/

/-! ## A125225.P4257150619016431414

`lt[0, A085491(n)]+1`
-/

namespace A125225.P4257150619016431414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085491 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A125225.P4257150619016431414

/-! ## A125225.P783648035764383855

`A085493(A028310(n))+ceil(sin(n)²)`
-/

namespace A125225.P783648035764383855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085493 (A028310 n).toNat + ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A125225.P783648035764383855

/-! ## A125225.P16202555576616697045

`record[A000027(n%(A085491(n)+n)+1)]`
-/

namespace A125225.P16202555576616697045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.tmod (n : ℤ) (A085491 n + (n : ℤ)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125225.P16202555576616697045

/-! ## A125225.P14699349700120432659

`A085493(A028310(n))+A057427(n)`
-/

namespace A125225.P14699349700120432659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085493 (A028310 n).toNat + A057427 n

end

end A125225.P14699349700120432659

/-! ## A125225.P8584610599304009478

`A085493(A028310(n))-A057428(n)`
-/

namespace A125225.P8584610599304009478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085493 (A028310 n).toNat - A057428 n

end

end A125225.P8584610599304009478

/-! ## A125225.P17494435279984808609

`A085493(A028310(n))+and(1, A000040(n+1))`
-/

namespace A125225.P17494435279984808609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085493 (A028310 n).toNat + Int.land 1 (A000040 (n + 1))

end

end A125225.P17494435279984808609

/-! ## A125225.P18089928972687462886

`eq[2, A094284(A085491(n)+3)]+1`
-/

namespace A125225.P18089928972687462886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094284 (A085491 n + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A125225.P18089928972687462886

/-! ## A125225.P4712519307581275698

`record[gcd(n+1, A085491(2*A085491(n)))]`
-/

namespace A125225.P4712519307581275698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A085491 (2 * A085491 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125225.P4712519307581275698

/-!
# A125226: Array, read by antidiagonals, where A(1,1) = A(1,2) = A(2,1) = A(2,2) = 1, A(n,k) = 0 if n

The programs for A125226, there is no canonical definition to state claims against.
-/

/-! ## A125226.P2198150606209816543

`A067948(n+1)%A060117(A067948(n+1))`
-/

namespace A125226.P2198150606209816543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067948 (n + 1)) (A060117 (A067948 (n + 1)).toNat)

end

end A125226.P2198150606209816543

/-! ## A125226.P13332148205330251053

`and(A109649(A132439(n+1)), A132439(n+1))`
-/

namespace A125226.P13332148205330251053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A109649 (A132439 (n + 1)).toNat) (A132439 (n + 1))

end

end A125226.P13332148205330251053

/-! ## A125226.P17138278795489158022

`and(A058071(n), A214491(A346517(n)))`
-/

namespace A125226.P17138278795489158022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A058071 n) (A214491 (A346517 n).toNat)

end

end A125226.P17138278795489158022

/-! ## A125226.P8162431673478933368

`A216218(n)+A014415(A210000(3*n+4))`
-/

namespace A125226.P8162431673478933368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216218 n + A014415 (A210000 (3 * n + 4)).toNat

end

end A125226.P8162431673478933368

/-! ## A125226.P17671099577274245358

`A320808(A196322(n+1))`
-/

namespace A125226.P17671099577274245358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320808 (A196322 (n + 1)).toNat

end

end A125226.P17671099577274245358

/-!
# A125227: A014741(n)/6 for n>2.

The programs for A125227, there is no canonical definition to state claims against.
-/

/-! ## A125227.P2709374398259703695

`A014945(n+2)/3`
-/

namespace A125227.P2709374398259703695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014945 (n + 2) : ℚ) / 3

end

end A125227.P2709374398259703695

/-! ## A125227.P6393348495717504151

`A014741(n+3)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A125227.P6393348495717504151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014741 (n + 3) : ℚ) / 6

end

end A125227.P6393348495717504151

/-! ## A125227.P6693760822060832266

`a(n-1)*ratio[A014741(n+2)]` with `a(0)=1`
-/

namespace A125227.P6693760822060832266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014741 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A125227.P6693760822060832266

/-! ## A125227.P13147828950429391392

`record[A014945(A028310(n))/A122553(n)]`
-/

namespace A125227.P13147828950429391392
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014945 (A028310 n).toNat : ℚ) / (A122553 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125227.P13147828950429391392

/-! ## A125227.P10497621783311456412

`record[A014741(A183041(n))]/6`
-/

namespace A125227.P10497621783311456412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014741 (A183041 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 6

end

end A125227.P10497621783311456412

/-! ## A125227.P10131412157675463177

`∑[A075861(Δ[A014945(n+1)])]`
-/

namespace A125227.P10131412157675463177
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014945 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075861 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125227.P10131412157675463177

/-! ## A125227.P17824713266230149743

`∑[A285870(Δ[A014945(n+1)])]`
-/

namespace A125227.P17824713266230149743
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014945 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285870 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125227.P17824713266230149743

/-! ## A125227.P11457021681910412000

`A015942(n+1)/6`
-/

namespace A125227.P11457021681910412000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015942 (n + 1) : ℚ) / 6

end

end A125227.P11457021681910412000

/-! ## A125227.P131190405254859059

`A093411(A015942(n+1))`
-/

namespace A125227.P131190405254859059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (A015942 (n + 1)).toNat

end

end A125227.P131190405254859059

/-! ## A125227.P12235446116646367807

`A006083(A014945(n+2))`
-/

namespace A125227.P12235446116646367807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006083 (A014945 (n + 2)).toNat

end

end A125227.P12235446116646367807

/-!
# A125228: Maximal number of squares of side 1 in a disk of radius n.

The programs for A125228, there is no canonical definition to state claims against.
-/

/-! ## A125228.P15527510862131762264

`A175679(A332490(n+1))`
-/

namespace A125228.P15527510862131762264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175679 (A332490 (n + 1)).toNat

end

end A125228.P15527510862131762264

/-! ## A125228.P11368323900547812657

`A368729(A398060(n+1))`
-/

namespace A125228.P11368323900547812657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368729 (A398060 (n + 1)).toNat

end

end A125228.P11368323900547812657

/-! ## A125228.P3490280472483116274

`A368729(A217748(n+3))`
-/

namespace A125228.P3490280472483116274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368729 (A217748 (n + 3)).toNat

end

end A125228.P3490280472483116274

/-!
# A125229: a(n) = j such that i^j is maximized subject to i+j = n (i >= 0, j >= 0).

The programs for A125229, there is no canonical definition to state claims against.
-/

/-! ## A125229.P15296528899701957442

`n-A255270(A269755(n)-1)`
-/

namespace A125229.P15296528899701957442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A255270 (A269755 n - 1).toNat

end

end A125229.P15296528899701957442

/-! ## A125229.P7626730304155803639

`floor(∑[A062786(n+1)/A355529(2*n+5)]/(n+1))`
-/

namespace A125229.P7626730304155803639
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062786 (n + 1) : ℚ) / (A355529 (2 * n + 5) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∑ j ∈ Finset.range (n + 1), f1 j) / (n + 1 : ℚ)⌋

end

end A125229.P7626730304155803639

/-! ## A125229.P5358884863458357997

`A028310(n)-A255270(A269755(n))`
-/

namespace A125229.P5358884863458357997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A255270 (A269755 n).toNat

end

end A125229.P5358884863458357997

/-! ## A125229.P17210291875240704677

`n-A244160(A263360(n+4))`
-/

namespace A125229.P17210291875240704677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A244160 (A263360 (n + 4)).toNat

end

end A125229.P17210291875240704677

/-! ## A125229.P14268572238176177936

`A329194(A073941(n+1))`
-/

namespace A125229.P14268572238176177936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329194 (A073941 (n + 1)).toNat

end

end A125229.P14268572238176177936

/-!
# A125230: Triangle T(n,k) (0<=k<=n) read by rows in which column k contains the binomial transform of the sequence of k 0's, (k+1) 1's, followed by 0's.

The programs for A125230, there is no canonical definition to state claims against.
-/

/-! ## A125230.P2175423729565017827

`A208334(n+1)-A010894(A208330(n+1))`
-/

namespace A125230.P2175423729565017827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208334 (n + 1) - A010894 ((A208330 (n + 1)).toNat + 21)

end

end A125230.P2175423729565017827

/-! ## A125230.P13447914937755620210

`A208334(n+1)-A185284(A209575(n+1))`
-/

namespace A125230.P13447914937755620210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208334 (n + 1) - A185284 (A209575 (n + 1)).toNat

end

end A125230.P13447914937755620210

/-! ## A125230.P6448413734187131264

`A132663(A331969(n))`
-/

namespace A125230.P6448413734187131264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132663 (A331969 n).toNat

end

end A125230.P6448413734187131264

/-! ## A125230.P11638890295130416436

`A082429(A109960(n))`
-/

namespace A125230.P11638890295130416436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082429 (A109960 n).toNat

end

end A125230.P11638890295130416436

/-! ## A125230.P16696256810413338186

`A283297(A179837(n))`
-/

namespace A125230.P16696256810413338186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283297 (A179837 n).toNat

end

end A125230.P16696256810413338186

/-!
# A125231: Triangle read by rows: T(n,k) = ceiling((k+1)/2)*binomial(n,k) (0 <= k <= n).

The programs for A125231, there is no canonical definition to state claims against.
-/

/-! ## A125231.P1046358333417220707

`gcd(A124847(n+1), A163649(n))`
-/

namespace A125231.P1046358333417220707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124847 (n + 1)) (A163649 n)

end

end A125231.P1046358333417220707

/-! ## A125231.P12530987761837786141

`(floor(A002262(n)/2)+1)*A007318(n)`
-/

namespace A125231.P12530987761837786141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(A002262 n : ℚ) / 2⌋ + 1) * A007318 n

end

end A125231.P12530987761837786141

/-! ## A125231.P18399705878845341849

`ceil(A002260(n+1)/2)*A007318(n)`
-/

namespace A125231.P18399705878845341849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002260 (n + 1) : ℚ) / 2⌉ * A007318 n

end

end A125231.P18399705878845341849

/-! ## A125231.P239743983734433427

`ceil(A134868(n+1)/2)*A007318(n)`
-/

namespace A125231.P239743983734433427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134868 (n + 1) : ℚ) / 2⌉ * A007318 n

end

end A125231.P239743983734433427

/-! ## A125231.P8153627846751720680

`A007318(n)*ceil((log2(A059268(n))+1)/2)`
-/

namespace A125231.P8153627846751720680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * ⌈(Real.logb 2 (A059268 n : ℝ) + 1) / 2⌉

end

end A125231.P8153627846751720680

/-! ## A125231.P17256240916051388262

`ceil((A002262(n)+1)/2)*Δ[A102363(n)]`
-/

namespace A125231.P17256240916051388262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002262 n + 1 : ℚ) / 2⌉ * (f1 (n + 1) - f1 n)

end

end A125231.P17256240916051388262

/-! ## A125231.P9233519001512088977

`A007318(n)*A115514(∑[char[∑[n]]]²-n)`
-/

namespace A125231.P9233519001512088977
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A115514 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A125231.P9233519001512088977

/-! ## A125231.P2477890988888367932

`A007318(n)*ceil((1-A057944(n)+n)/2)`
-/

namespace A125231.P2477890988888367932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * ⌈(1 - A057944 n + (n : ℤ) : ℚ) / 2⌉

end

end A125231.P2477890988888367932

/-! ## A125231.P10971760376867970913

`A007318(n)*A008619(A002262(n))`
-/

namespace A125231.P10971760376867970913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A008619 (A002262 n).toNat

end

end A125231.P10971760376867970913

/-! ## A125231.P17753715414472912425

`A007318(n)*A001817(A059268(n))`
-/

namespace A125231.P17753715414472912425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A001817 (A059268 n).toNat

end

end A125231.P17753715414472912425

/-!
# A125232: Triangle T(n,k) read by rows: the (n-k)-th term of the k-fold iterated partial sum of the pentagonal numbers.

The programs for A125232, the canonical program `A125232.P7385240608015978380` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125232 has offset 1).

The definition of A125232 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125232.P12553553567409296169

`(A125233(n)+A125165(n))/2`
-/

namespace A125232.P12553553567409296169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125233 n + A125165 n : ℚ) / 2

end

end A125232.P12553553567409296169

namespace A125232

/-- `(A125233(n)+A125165(n))/2` -/
def P12553553567409296169.Spec : Prop :=
  ∀ n, P12553553567409296169.a n = (A125232 (n + 1) : ℚ)

theorem P12553553567409296169.correct : P12553553567409296169.Spec := by
  intro n
  simp only [A125232, Nat.add_sub_cancel, A125232.P12553553567409296169.a, A125232.P7385240608015978380.a, A104712, A104712.P8393777965278521263.a, A125165, A125165.P1719362185260033778.a, A125233, A125233.P3882684822699850619.a, A014410, A014410.P12420516935091573692.a, A135278, A135278.P10862305414900331449.a, A168577, A168577.P14364464542492817144.a, A002024, A002024.P11700297927830783882.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A000217, A000217.P10269402890581615239.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A125232

/-! ## A125232.P3419557298805048086

`A095660(A140978(n+1)-(n+1))`
-/

namespace A125232.P3419557298805048086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095660 (A140978 (n + 1) - (n + 1 : ℤ)).toNat

end

end A125232.P3419557298805048086

namespace A125232

/-- `A095660(A140978(n+1)-(n+1))` -/
def P3419557298805048086.Spec : Prop :=
  ∀ n, P3419557298805048086.a n = A125232 (n + 1)

end A125232

/-! ## A125232.P7385240608015978380

`2*A125165(n)-A104712(n+2)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A125232

/-- `2*A125165(n)-A104712(n+2)` -/
def P7385240608015978380.Spec : Prop :=
  ∀ n, P7385240608015978380.a n = A125232 (n + 1)

theorem P7385240608015978380.correct : P7385240608015978380.Spec := by
  intro n
  simp only [A125232, Nat.add_sub_cancel]

end A125232

/-! ## A125232.P1952224181106381595

`A095660((A003056(n)+2)²-(n+1))`
-/

namespace A125232.P1952224181106381595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095660 ((A003056 n + 2) ^ 2 - (n + 1 : ℤ)).toNat

end

end A125232.P1952224181106381595

namespace A125232

/-- `A095660((A003056(n)+2)²-(n+1))` -/
def P1952224181106381595.Spec : Prop :=
  ∀ n, P1952224181106381595.a n = A125232 (n + 1)

end A125232

/-! ## A125232.P14054925552643885444

`A095660(A099375(n)+A014132(n+1))`
-/

namespace A125232.P14054925552643885444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095660 (A099375 n + A014132 (n + 1)).toNat

end

end A125232.P14054925552643885444

namespace A125232

/-- `A095660(A099375(n)+A014132(n+1))` -/
def P14054925552643885444.Spec : Prop :=
  ∀ n, P14054925552643885444.a n = A125232 (n + 1)

end A125232

/-! ## A125232.P16339475549620546896

`A135857(comp[∑[n]])`
-/

namespace A125232.P16339475549620546896
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135857 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A125232.P16339475549620546896

namespace A125232

/-- `A135857(comp[∑[n]])` -/
def P16339475549620546896.Spec : Prop :=
  ∀ n, P16339475549620546896.a n = A125232 (n + 1)

end A125232

/-! ## A125232.P18334866557276560502

`A093560(A014132(A014132(n+1)+1))`
-/

namespace A125232.P18334866557276560502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093560 (A014132 (A014132 (n + 1) + 1).toNat).toNat

end

end A125232.P18334866557276560502

namespace A125232

/-- `A093560(A014132(A014132(n+1)+1))` -/
def P18334866557276560502.Spec : Prop :=
  ∀ n, P18334866557276560502.a n = A125232 (n + 1)

end A125232

/-! ## A125232.P7857055230397930019

`2*A125233(n)-A125234(n+1)`
-/

namespace A125232.P7857055230397930019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125233 n - A125234 (n + 1)

end

end A125232.P7857055230397930019

namespace A125232

/-- `2*A125233(n)-A125234(n+1)` -/
def P7857055230397930019.Spec : Prop :=
  ∀ n, P7857055230397930019.a n = A125232 (n + 1)

end A125232

/-! ## A125232.P7622041931653372803

`(A125234(n+1)+A104712(n+2))/2`
-/

namespace A125232.P7622041931653372803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125234 (n + 1) + A104712 (n + 2) : ℚ) / 2

end

end A125232.P7622041931653372803

namespace A125232

/-- `(A125234(n+1)+A104712(n+2))/2` -/
def P7622041931653372803.Spec : Prop :=
  ∀ n, P7622041931653372803.a n = (A125232 (n + 1) : ℚ)

end A125232

/-! ## A125232.P1190776990032907742

`A005843(A125233(n))-A125234(n+1)`
-/

namespace A125232.P1190776990032907742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A125233 n).toNat - A125234 (n + 1)

end

end A125232.P1190776990032907742

namespace A125232

/-- `A005843(A125233(n))-A125234(n+1)` -/
def P1190776990032907742.Spec : Prop :=
  ∀ n, P1190776990032907742.a n = A125232 (n + 1)

end A125232

/-!
# A125233: Triangle T(n,k) read by rows, the (n-k)-th term of the k times repeated partial sum of the hexagonal numbers, 0 <= k < n, 0 < n.

The programs for A125233, the canonical program `A125233.P3882684822699850619` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125233 has offset 0).

The definition of A125233 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125233.P3882684822699850619

`2*A125165(n)-A135278(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A125233

/-- `2*A125165(n)-A135278(n)` -/
def P3882684822699850619.Spec : Prop :=
  ∀ n, P3882684822699850619.a n = A125233 n

theorem P3882684822699850619.correct : P3882684822699850619.Spec := by
  intro n
  simp only [A125233]

end A125233

/-! ## A125233.P8154009327032037639

`2*A125232(n+1)-A125165(n)`
-/

namespace A125233.P8154009327032037639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125232 (n + 1) - A125165 n

end

end A125233.P8154009327032037639

namespace A125233

/-- `2*A125232(n+1)-A125165(n)` -/
def P8154009327032037639.Spec : Prop :=
  ∀ n, P8154009327032037639.a n = A125233 n

theorem P8154009327032037639.correct : P8154009327032037639.Spec := by
  intro n
  simp only [A125233, Nat.add_sub_cancel, A125233.P8154009327032037639.a, A125233.P3882684822699850619.a, A125165, A125165.P1719362185260033778.a, A125232, A125232.P7385240608015978380.a, A135278, A135278.P10862305414900331449.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A104712, A104712.P8393777965278521263.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, A014410, A014410.P12420516935091573692.a, A168577, A168577.P14364464542492817144.a, A002024, A002024.P11700297927830783882.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A005369, A005369.P10796159359873341658.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A125233

/-! ## A125233.P12430855305737006055

`(A125235(n+1)+A125165(n))/2`
-/

namespace A125233.P12430855305737006055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125235 (n + 1) + A125165 n : ℚ) / 2

end

end A125233.P12430855305737006055

namespace A125233

/-- `(A125235(n+1)+A125165(n))/2` -/
def P12430855305737006055.Spec : Prop :=
  ∀ n, P12430855305737006055.a n = (A125233 n : ℚ)

theorem P12430855305737006055.correct : P12430855305737006055.Spec := by
  intro n
  simp only [A125233, Nat.add_sub_cancel, A125233.P12430855305737006055.a, A125233.P3882684822699850619.a, A125165, A125165.P1719362185260033778.a, A125235, A125235.P13924204334101341039.a, A135278, A135278.P10862305414900331449.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A104712, A104712.P8393777965278521263.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, A014410, A014410.P12420516935091573692.a, A168577, A168577.P14364464542492817144.a, A002024, A002024.P11700297927830783882.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A005369, A005369.P10796159359873341658.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A125233

/-! ## A125233.P13590141227349218602

`A135856(comp[∑[n]]+1)`
-/

namespace A125233.P13590141227349218602
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135856 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A125233.P13590141227349218602

namespace A125233

/-- `A135856(comp[∑[n]]+1)` -/
def P13590141227349218602.Spec : Prop :=
  ∀ n, P13590141227349218602.a n = A125233 n

end A125233

/-! ## A125233.P5917823081677560864

`A093561(lt[1, A002262(n)])`
-/

namespace A125233.P5917823081677560864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093561 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A125233.P5917823081677560864

namespace A125233

/-- `A093561(lt[1, A002262(n)])` -/
def P5917823081677560864.Spec : Prop :=
  ∀ n, P5917823081677560864.a n = A125233 n

end A125233

/-! ## A125233.P8206716892633328945

`A093561(lt[1, A034261(n)])`
-/

namespace A125233.P8206716892633328945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034261 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093561 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A125233.P8206716892633328945

namespace A125233

/-- `A093561(lt[1, A034261(n)])` -/
def P8206716892633328945.Spec : Prop :=
  ∀ n, P8206716892633328945.a n = A125233 n

end A125233

/-! ## A125233.P14203378247795447398

`A093561(lt[1, A180662(n)])`
-/

namespace A125233.P14203378247795447398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093561 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A125233.P14203378247795447398

namespace A125233

/-- `A093561(lt[1, A180662(n)])` -/
def P14203378247795447398.Spec : Prop :=
  ∀ n, P14203378247795447398.a n = A125233 n

end A125233

/-! ## A125233.P7741386321244516747

`A093561(lt[1, A232089(n)])`
-/

namespace A125233.P7741386321244516747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093561 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A125233.P7741386321244516747

namespace A125233

/-- `A093561(lt[1, A232089(n)])` -/
def P7741386321244516747.Spec : Prop :=
  ∀ n, P7741386321244516747.a n = A125233 n

end A125233

/-! ## A125233.P9902752377030443154

`A093561(lt[2, A059268(n)])`
-/

namespace A125233.P9902752377030443154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093561 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A125233.P9902752377030443154

namespace A125233

/-- `A093561(lt[2, A059268(n)])` -/
def P9902752377030443154.Spec : Prop :=
  ∀ n, P9902752377030443154.a n = A125233 n

end A125233

/-! ## A125233.P8406207725252493361

`A093561(eq[0, A103516(n)]+1)`
-/

namespace A125233.P8406207725252493361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093561 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A125233.P8406207725252493361

namespace A125233

/-- `A093561(eq[0, A103516(n)]+1)` -/
def P8406207725252493361.Spec : Prop :=
  ∀ n, P8406207725252493361.a n = A125233 n

end A125233

/-! ## A125233.P9289112734161041638

`A093561(lt[1, A086810(n)])`
-/

namespace A125233.P9289112734161041638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093561 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A125233.P9289112734161041638

namespace A125233

/-- `A093561(lt[1, A086810(n)])` -/
def P9289112734161041638.Spec : Prop :=
  ∀ n, P9289112734161041638.a n = A125233 n

end A125233

/-! ## A125233.P5516013917371059417

`A093561(lt[1, A211608(n)])`
-/

namespace A125233.P5516013917371059417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211608 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093561 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A125233.P5516013917371059417

namespace A125233

/-- `A093561(lt[1, A211608(n)])` -/
def P5516013917371059417.Spec : Prop :=
  ∀ n, P5516013917371059417.a n = A125233 n

end A125233

/-! ## A125233.P1660670273925478958

`A093561(lt[1, A135313(n)])`
-/

namespace A125233.P1660670273925478958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093561 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A125233.P1660670273925478958

namespace A125233

/-- `A093561(lt[1, A135313(n)])` -/
def P1660670273925478958.Spec : Prop :=
  ∀ n, P1660670273925478958.a n = A125233 n

end A125233

/-!
# A125234: Triangle T(n,k) read by rows: the k-th column contains the k-fold iterated partial sum of A000566.

The programs for A125234, there is no canonical definition to state claims against.
-/

/-! ## A125234.P7358603485060580002

`A093562(comp[A114220(n)])`
-/

namespace A125234.P7358603485060580002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114220 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093562 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A125234.P7358603485060580002

/-! ## A125234.P3763543494706615282

`A093562(lt[1, A002262(n)])`
-/

namespace A125234.P3763543494706615282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A125234.P3763543494706615282

/-! ## A125234.P8945813537754301252

`A093562(lt[1, A034261(n)])`
-/

namespace A125234.P8945813537754301252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034261 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A125234.P8945813537754301252

/-! ## A125234.P17139776754274761312

`A093562(lt[1, A135313(n)])`
-/

namespace A125234.P17139776754274761312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A125234.P17139776754274761312

/-! ## A125234.P967332628212921655

`A093562(lt[1, A139601(n)])`
-/

namespace A125234.P967332628212921655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A125234.P967332628212921655

/-! ## A125234.P8508362186543659389

`A093562(lt[1, A143844(n)])`
-/

namespace A125234.P8508362186543659389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A125234.P8508362186543659389

/-! ## A125234.P6777551658239849219

`A093562(lt[1, A256117(n)])`
-/

namespace A125234.P6777551658239849219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256117 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A125234.P6777551658239849219

/-! ## A125234.P835451074267788250

`A093562(lt[1, A256311(n)])`
-/

namespace A125234.P835451074267788250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256311 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A125234.P835451074267788250

/-! ## A125234.P12419146245293145672

`A093562(lt[2, A059268(n)])`
-/

namespace A125234.P12419146245293145672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A125234.P12419146245293145672

/-! ## A125234.P2837183586153525471

`A093562(eq[0, A103516(n)]+1)`
-/

namespace A125234.P2837183586153525471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A125234.P2837183586153525471

/-!
# A125235: Triangle with the partial column sums of the octagonal numbers.

The programs for A125235, the canonical program `A125235.P13924204334101341039` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125235 has offset 1).

The definition of A125235 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125235.P13924204334101341039

`2*A125233(n)-A125165(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A125235

/-- `2*A125233(n)-A125165(n)` -/
def P13924204334101341039.Spec : Prop :=
  ∀ n, P13924204334101341039.a n = A125235 (n + 1)

theorem P13924204334101341039.correct : P13924204334101341039.Spec := by
  intro n
  simp only [A125235, Nat.add_sub_cancel]

end A125235

/-! ## A125235.P2220715186141565728

`A096956(A140978(n+1)-(n+1))`
-/

namespace A125235.P2220715186141565728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096956 (A140978 (n + 1) - (n + 1 : ℤ)).toNat

end

end A125235.P2220715186141565728

namespace A125235

/-- `A096956(A140978(n+1)-(n+1))` -/
def P2220715186141565728.Spec : Prop :=
  ∀ n, P2220715186141565728.a n = A125235 (n + 1)

end A125235

/-! ## A125235.P1321306532481154543

`A125232(n+1)+A125233(n)-A104712(n+2)`
-/

namespace A125235.P1321306532481154543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125232 (n + 1) + (A125233 n - A104712 (n + 2))

end

end A125235.P1321306532481154543

namespace A125235

/-- `A125232(n+1)+A125233(n)-A104712(n+2)` -/
def P1321306532481154543.Spec : Prop :=
  ∀ n, P1321306532481154543.a n = A125235 (n + 1)

theorem P1321306532481154543.correct : P1321306532481154543.Spec := by
  intro n
  simp only [A125235, Nat.add_sub_cancel, A125235.P1321306532481154543.a, A125235.P13924204334101341039.a, A104712, A104712.P8393777965278521263.a, A125165, A125165.P1719362185260033778.a, A125232, A125232.P7385240608015978380.a, A125233, A125233.P3882684822699850619.a, A014410, A014410.P12420516935091573692.a, A135278, A135278.P10862305414900331449.a, A168577, A168577.P14364464542492817144.a, A002024, A002024.P11700297927830783882.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A000217, A000217.P10269402890581615239.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A125235

/-! ## A125235.P4256017470450523950

`A093563(A080036(∑[A035214(n)]))`
-/

namespace A125235.P4256017470450523950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093563 (A080036 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A125235.P4256017470450523950

namespace A125235

/-- `A093563(A080036(∑[A035214(n)]))` -/
def P4256017470450523950.Spec : Prop :=
  ∀ n, P4256017470450523950.a n = A125235 (n + 1)

end A125235

/-! ## A125235.P2273041654214955788

`A093563(A080036(A014132(n+1)))`
-/

namespace A125235.P2273041654214955788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093563 (A080036 (A014132 (n + 1)).toNat).toNat

end

end A125235.P2273041654214955788

namespace A125235

/-- `A093563(A080036(A014132(n+1)))` -/
def P2273041654214955788.Spec : Prop :=
  ∀ n, P2273041654214955788.a n = A125235 (n + 1)

end A125235

/-! ## A125235.P10963048644586519174

`A093563(record[n%A008459(n)]-A057428(n))`
-/

namespace A125235.P10963048644586519174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A008459 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093563 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A057428 n).toNat

end

end A125235.P10963048644586519174

namespace A125235

/-- `A093563(record[n%A008459(n)]-A057428(n))` -/
def P10963048644586519174.Spec : Prop :=
  ∀ n, P10963048644586519174.a n = A125235 (n + 1)

end A125235

/-! ## A125235.P13929206353486916142

`A093563(A133196(n+1)+A014132(n+1))`
-/

namespace A125235.P13929206353486916142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093563 (A133196 (n + 1) + A014132 (n + 1)).toNat

end

end A125235.P13929206353486916142

namespace A125235

/-- `A093563(A133196(n+1)+A014132(n+1))` -/
def P13929206353486916142.Spec : Prop :=
  ∀ n, P13929206353486916142.a n = A125235 (n + 1)

end A125235

/-! ## A125235.P16627866166135241445

`A005843(A125233(n))-A125165(n)`
-/

namespace A125235.P16627866166135241445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A125233 n).toNat - A125165 n

end

end A125235.P16627866166135241445

namespace A125235

/-- `A005843(A125233(n))-A125165(n)` -/
def P16627866166135241445.Spec : Prop :=
  ∀ n, P16627866166135241445.a n = A125235 (n + 1)

end A125235

/-! ## A125235.P10413635799451529370

`2*A125234(n+1)-A125233(n)`
-/

namespace A125235.P10413635799451529370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125234 (n + 1) - A125233 n

end

end A125235.P10413635799451529370

namespace A125235

/-- `2*A125234(n+1)-A125233(n)` -/
def P10413635799451529370.Spec : Prop :=
  ∀ n, P10413635799451529370.a n = A125235 (n + 1)

end A125235

/-! ## A125235.P15329692114796024333

`A005843(A125234(n+1))-A125233(n)`
-/

namespace A125235.P15329692114796024333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A125234 (n + 1)).toNat - A125233 n

end

end A125235.P15329692114796024333

namespace A125235

/-- `A005843(A125234(n+1))-A125233(n)` -/
def P15329692114796024333.Spec : Prop :=
  ∀ n, P15329692114796024333.a n = A125235 (n + 1)

end A125235

/-!
# A125236: Numbers n for which the absolute value of the abundance of n^2 is a prime number.

The programs for A125236, there is no canonical definition to state claims against.
-/

/-! ## A125236.P866466344783108200

`sqrt(∩[A088005(n+1), n²])`
-/

namespace A125236.P866466344783108200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088005 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A125236.P866466344783108200

/-! ## A125236.P8137429667314968771

`record[A056926(A088005(n+2))]`
-/

namespace A125236.P8137429667314968771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A088005 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125236.P8137429667314968771

/-! ## A125236.P15319296054995682188

`A056926(∩[A088005(n+1), n²])`
-/

namespace A125236.P15319296054995682188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088005 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n)

end

end A125236.P15319296054995682188

/-! ## A125236.P18158301162756951735

`record[A071974(A088005(n+4))]`
-/

namespace A125236.P18158301162756951735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071974 (A088005 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125236.P18158301162756951735

/-! ## A125236.P7800275748460777362

`A000188(∩[A088005(n+1), n²])`
-/

namespace A125236.P7800275748460777362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088005 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n)

end

end A125236.P7800275748460777362

/-!
# A125237: Numbers n for which the absolute value of the abundance of both n and n^2 is a prime number.

The programs for A125237, there is no canonical definition to state claims against.
-/

/-! ## A125237.P6441318801393281756

`∩[A088005(n+1), A125236(n+1)]`
-/

namespace A125237.P6441318801393281756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125237.P6441318801393281756

/-! ## A125237.P1427144836210990621

`A056926(∩[A088005(n+1), A088005(n+1)²])`
-/

namespace A125237.P1427144836210990621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088005 (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A125237.P1427144836210990621

/-!
# A125238: Differences between consecutive deficient numbers.

The programs for A125238, the canonical program `A125238.P17761678390908912446` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125238 has offset 1).

The definition of A125238 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005100, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A125238.P17761678390908912446

`A005100(n+2)-A005100(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A125238

/-- `A005100(n+2)-A005100(n+1)` -/
def P17761678390908912446.Spec : Prop :=
  ∀ n, P17761678390908912446.a n = A125238 (n + 1)

theorem P17761678390908912446.correct : P17761678390908912446.Spec := by
  intro n
  simp only [A125238, Nat.add_sub_cancel]

end A125238

/-! ## A125238.P8034753802733261519

`Δ[A005100(n+1)]`
-/

namespace A125238.P8034753802733261519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A125238.P8034753802733261519

namespace A125238

/-- `Δ[A005100(n+1)]` -/
def P8034753802733261519.Spec : Prop :=
  ∀ n, P8034753802733261519.a n = A125238 (n + 1)

theorem P8034753802733261519.correct : P8034753802733261519.Spec := by
  intro n
  simp only [A125238, Nat.add_sub_cancel, A125238.P8034753802733261519.f1, A125238.P8034753802733261519.a, A125238.P17761678390908912446.a, SequenceMachineLib.memo_apply]

end A125238

/-! ## A125238.P7865267931675941770

`Δ[record[A125746(n+1)]]`
-/

namespace A125238.P7865267931675941770
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A125238.P7865267931675941770

namespace A125238

/-- `Δ[record[A125746(n+1)]]` -/
def P7865267931675941770.Spec : Prop :=
  ∀ n, P7865267931675941770.a n = A125238 (n + 1)

end A125238

/-! ## A125238.P9818745187960109196

`Δ[A225241(n+1)/2]`
-/

namespace A125238.P9818745187960109196
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225241 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A125238.P9818745187960109196

namespace A125238

/-- `Δ[A225241(n+1)/2]` -/
def P9818745187960109196.Spec : Prop :=
  ∀ n, P9818745187960109196.a n = (A125238 (n + 1) : ℚ)

theorem P9818745187960109196.correct : P9818745187960109196.Spec := by
  intro n
  simp only [A125238, Nat.add_sub_cancel, A125238.P9818745187960109196.f1, A125238.P9818745187960109196.a, A125238.P17761678390908912446.a, A005100, A005100.P5902118993367235572.f1, A005100.P5902118993367235572.a, A225241, A225241.P5113222394722278636.a, A082551, A082551.P4316828637772613674.f1, A082551.P4316828637772613674.f2, A082551.P4316828637772613674.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A125238

/-! ## A125238.P17662263187954455668

`Δ[lt[0, A033879(n+1)]]`
-/

namespace A125238.P17662263187954455668
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A125238.P17662263187954455668

namespace A125238

/-- `Δ[lt[0, A033879(n+1)]]` -/
def P17662263187954455668.Spec : Prop :=
  ∀ n, P17662263187954455668.a n = A125238 (n + 1)

end A125238

/-! ## A125238.P12234516611289202979

`Δ[eq[1, A060862(n+1)+1]]`
-/

namespace A125238.P12234516611289202979
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060862 (n + 1) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A125238.P12234516611289202979

namespace A125238

/-- `Δ[eq[1, A060862(n+1)+1]]` -/
def P12234516611289202979.Spec : Prop :=
  ∀ n, P12234516611289202979.a n = A125238 (n + 1)

end A125238

/-! ## A125238.P8094349094807416370

`Δ[lt[A000203(n+1), 2*(n+1)]]`
-/

namespace A125238.P8094349094807416370
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A125238.P8094349094807416370

namespace A125238

/-- `Δ[lt[A000203(n+1), 2*(n+1)]]` -/
def P8094349094807416370.Spec : Prop :=
  ∀ n, P8094349094807416370.a n = A125238 (n + 1)

end A125238

/-! ## A125238.P419367568093978113

`Δ[lt[A336563(n+1), A336564(n+1)]]`
-/

namespace A125238.P419367568093978113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336563 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336564 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A125238.P419367568093978113

namespace A125238

/-- `Δ[lt[A336563(n+1), A336564(n+1)]]` -/
def P419367568093978113.Spec : Prop :=
  ∀ n, P419367568093978113.a n = A125238 (n + 1)

end A125238

/-! ## A125238.P13243864965856893008

`Δ[lt[∑{d}[n, #], 2*n]]`
-/

namespace A125238.P13243864965856893008
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f4 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A125238.P13243864965856893008

namespace A125238

/-- `Δ[lt[∑{d}[n, #], 2*n]]` -/
def P13243864965856893008.Spec : Prop :=
  ∀ n, P13243864965856893008.a n = A125238 (n + 1)

end A125238

/-! ## A125238.P5645347188057396360

`Δ[record[A387717(n+1)]]`
-/

namespace A125238.P5645347188057396360
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387717 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A125238.P5645347188057396360

namespace A125238

/-- `Δ[record[A387717(n+1)]]` -/
def P5645347188057396360.Spec : Prop :=
  ∀ n, P5645347188057396360.a n = A125238 (n + 1)

end A125238

/-! ## A125238.P1847234248365987509

`Δ[lt[A237588(n+1), 1]]`
-/

namespace A125238.P1847234248365987509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A125238.P1847234248365987509

namespace A125238

/-- `Δ[lt[A237588(n+1), 1]]` -/
def P1847234248365987509.Spec : Prop :=
  ∀ n, P1847234248365987509.a n = A125238 (n + 1)

end A125238

/-! ## A125238.P16494236398448760008

`Δ[lt[A001065(n+1), n+1]]`
-/

namespace A125238.P16494236398448760008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A125238.P16494236398448760008

namespace A125238

/-- `Δ[lt[A001065(n+1), n+1]]` -/
def P16494236398448760008.Spec : Prop :=
  ∀ n, P16494236398448760008.a n = A125238 (n + 1)

end A125238

/-! ## A125238.P2991821901944140504

`Δ[lt[0, 2*n-A064987(n+1)/(n+1)+2]]`
-/

namespace A125238.P2991821901944140504
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) - (A064987 (n + 1) : ℚ) / (n + 1 : ℚ) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℚ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A125238.P2991821901944140504

namespace A125238

/-- `Δ[lt[0, 2*n-A064987(n+1)/(n+1)+2]]` -/
def P2991821901944140504.Spec : Prop :=
  ∀ n, P2991821901944140504.a n = A125238 (n + 1)

end A125238

/-!
# A125239: Smallest prime divisor of 10*T(n)+1 = 5*n*(n+1)+1, where T(n) = 1 + 2 + ... + n.

The programs for A125239, there is no canonical definition to state claims against.
-/

/-! ## A125239.P5827085828257767427

`A020639(∑[10*(n+1)]+1)`
-/

namespace A125239.P5827085828257767427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A125239.P5827085828257767427

/-! ## A125239.P11023810740214423623

`p?[A020639(5*(n²+n)+1)]`
-/

namespace A125239.P11023810740214423623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (5 * (n ^ 2 + n) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125239.P11023810740214423623

/-! ## A125239.P8179367661339482097

`∏{p}[A020639(5*(n+1)*(n+2)+1), #]`
-/

namespace A125239.P8179367661339482097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (5 * ((n + 1) * (n + 2)) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A125239.P8179367661339482097

/-! ## A125239.P2466088524704345573

`or(1, A020639(A062786(n+2)))`
-/

namespace A125239.P2466088524704345573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A020639 (A062786 (n + 2)).toNat)

end

end A125239.P2466088524704345573

/-! ## A125239.P1737432274865727642

`or(1, A020639(A032527(2*n+3)))`
-/

namespace A125239.P1737432274865727642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A020639 (A032527 (2 * n + 3)).toNat)

end

end A125239.P1737432274865727642

/-! ## A125239.P10059421419400175565

`A020639(A062786(n+2))%A062749(n)`
-/

namespace A125239.P10059421419400175565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (A062786 (n + 2)).toNat) (A062749 n)

end

end A125239.P10059421419400175565

/-! ## A125239.P8676226923521727714

`∑{d}[A020639(A062786(n+2)), A000010(#)]`
-/

namespace A125239.P8676226923521727714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A062786 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A125239.P8676226923521727714

/-! ## A125239.P13921292650066972188

`∏{d}[A020639(A062786(n+2)), A006530(#)]`
-/

namespace A125239.P13921292650066972188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A062786 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A006530 d

end

end A125239.P13921292650066972188

/-! ## A125239.P7680116313629627271

`A000007(n+1)+A020639(A062786(n+2))`
-/

namespace A125239.P7680116313629627271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + A020639 (A062786 (n + 2)).toNat

end

end A125239.P7680116313629627271

/-! ## A125239.P2565944879748685272

`A000035(2*n)+A020639(A062786(n+2))`
-/

namespace A125239.P2565944879748685272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + A020639 (A062786 (n + 2)).toNat

end

end A125239.P2565944879748685272

/-! ## A125239.P2431164513862757341

`A020639(A062786(n+2))-dr(A168329(n+1))%3`
-/

namespace A125239.P2431164513862757341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A062786 (n + 2)).toNat - ((SequenceMachineLib.digitalRoot (A168329 (n + 1)) % 3 : ℕ) : ℤ)

end

end A125239.P2431164513862757341

/-! ## A125239.P10437795992217802467

`A020639(A062786(n+2))+n*A008683(A140513(n))`
-/

namespace A125239.P10437795992217802467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A062786 (n + 2)).toNat + (n : ℤ) * A008683 (A140513 n).toNat

end

end A125239.P10437795992217802467

/-!
# A125241: Numbers k such that binomial(4k, k) + 1 is prime.

The programs for A125241, there is no canonical definition to state claims against.
-/

/-! ## A125241.P13899347686370864284

`eq[A038566(n+1), A067992(A026780(n))]`
-/

namespace A125241.P13899347686370864284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067992 (A026780 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125241.P13899347686370864284

/-!
# A125246: Numbers m whose abundance sigma(m) - 2m = -4. Numbers whose deficiency is 4.

The programs for A125246, there is no canonical definition to state claims against.
-/

/-! ## A125246.P3001104457513918337

`A298563(A009005(n+1))`
-/

namespace A125246.P3001104457513918337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298563 (A009005 (n + 1)).toNat

end

end A125246.P3001104457513918337

/-! ## A125246.P740318348536490913

`A298563(A065475(n+1)+2)`
-/

namespace A125246.P740318348536490913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298563 (A065475 (n + 1) + 2).toNat

end

end A125246.P740318348536490913

/-! ## A125246.P10512310897564070521

`A298563(3-A057428(n)+n)`
-/

namespace A125246.P10512310897564070521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298563 (3 - A057428 n + (n : ℤ)).toNat

end

end A125246.P10512310897564070521

/-! ## A125246.P5800115237178492571

`A298563(4-A000007(n)+n)`
-/

namespace A125246.P5800115237178492571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298563 (4 - A000007 n + (n : ℤ)).toNat

end

end A125246.P5800115237178492571

/-!
# A125247: Numbers k whose abundance sigma(k) - 2*k = -8. Numbers k whose deficiency is 8.

The programs for A125247, there is no canonical definition to state claims against.
-/

/-! ## A125247.P5642866829704815206

`A274554(A107820(n+2))`
-/

namespace A125247.P5642866829704815206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274554 (A107820 (n + 2)).toNat

end

end A125247.P5642866829704815206

/-! ## A125247.P13749769060665022663

`∩[A088820(n+1), A274554(n+1)]`
-/

namespace A125247.P13749769060665022663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125247.P13749769060665022663

/-! ## A125247.P11574583116574144909

`∩[A088820(n+1), A286843(n+1)]`
-/

namespace A125247.P11574583116574144909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125247.P11574583116574144909

/-! ## A125247.P3840780332278540572

`∩[A088820(n+1), A350521(n)]`
-/

namespace A125247.P3840780332278540572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350521 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125247.P3840780332278540572

/-! ## A125247.P8921713463821086233

`filter[A088820(n+1), A373977(#)]`
-/

namespace A125247.P8921713463821086233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A125247.P8921713463821086233

/-!
# A125248: Numbers k whose abundance sigma(k) - 2*k = -16. Numbers k whose deficiency is 16.

The programs for A125248, there is no canonical definition to state claims against.
-/

/-! ## A125248.P4665578455319275652

`eq[10, A286449(A028310(n))]`
-/

namespace A125248.P4665578455319275652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286449 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125248.P4665578455319275652

/-! ## A125248.P6869163675044777673

`A020725(eq[16, A033879(n+1)])`
-/

namespace A125248.P6869163675044777673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125248.P6869163675044777673

/-! ## A125248.P13135513547658734934

`A065475(eq[16, A033879(n+1)])`
-/

namespace A125248.P13135513547658734934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125248.P13135513547658734934

/-!
# A125250: Square array, read by antidiagonals, where A(1,1) = A(2,2) = 1, A(1,2) = A(2,1) = 0, A(n,k) = 0 if n < 1 or k < 1, otherwise A(n,k) = A(n-2,k-2) + A(n-1,k-2) + A(n-2,k-1) + A(n-1,k-1).

The programs for A125250, there is no canonical definition to state claims against.
-/

/-! ## A125250.P28894833034533121

`A196564(A091466(n+1))`
-/

namespace A125250.P28894833034533121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A091466 (n + 1)).toNat

end

end A125250.P28894833034533121

/-! ## A125250.P5055728783071403872

`A294880(A215122(n)+1)`
-/

namespace A125250.P5055728783071403872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294880 (A215122 n + 1).toNat

end

end A125250.P5055728783071403872

/-! ## A125250.P16210698809958379984

`A298307(or(6, A154844(n)))`
-/

namespace A125250.P16210698809958379984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298307 (Int.lor 6 (A154844 n)).toNat

end

end A125250.P16210698809958379984

/-! ## A125250.P10224705297833071218

`A343453(A180984(n+1)+7)`
-/

namespace A125250.P10224705297833071218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343453 (A180984 (n + 1) + 7).toNat

end

end A125250.P10224705297833071218

/-! ## A125250.P7952002122865782606

`A280749(A358125(n+1))`
-/

namespace A125250.P7952002122865782606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280749 (A358125 (n + 1)).toNat

end

end A125250.P7952002122865782606

/-!
# A125251: a(n)=sqrt(A051779(n+2)-1)/30.

The programs for A125251, there is no canonical definition to state claims against.
-/

/-! ## A125251.P14209676758849579282

`sqrt(A051779(n+3)-1)/30`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A125251.P14209676758849579282
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A051779 (n + 3) - 1 : ℝ) / 30

end

end A125251.P14209676758849579282

/-! ## A125251.P16016049055862806526

`A284045(n+2)/5`
-/

namespace A125251.P16016049055862806526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284045 (n + 2) : ℚ) / 5

end

end A125251.P16016049055862806526

/-! ## A125251.P8237582700057725104

`A070155(n+3)/30`
-/

namespace A125251.P8237582700057725104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070155 (n + 3) : ℚ) / 30

end

end A125251.P8237582700057725104

/-! ## A125251.P18185871390162382667

`round(A108013(n+3)/6)/5`
-/

namespace A125251.P18185871390162382667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A108013 (n + 3) : ℚ) / 6) : ℚ) / 5

end

end A125251.P18185871390162382667

/-! ## A125251.P6272434134770920936

`∩[A138220(n+1), A176114(n+1)]`
-/

namespace A125251.P6272434134770920936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125251.P6272434134770920936

/-! ## A125251.P17742844183469541643

`A002266(A284045(n+2))`
-/

namespace A125251.P17742844183469541643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A284045 (n + 2)).toNat

end

end A125251.P17742844183469541643

/-!
# A125252: Primes p that divide Fibonacci[(p+1)/7].

The programs for A125252, there is no canonical definition to state claims against.
-/

/-! ## A125252.P7006230717337841083

`A082572(A308785(n+1))`
-/

namespace A125252.P7006230717337841083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082572 (A308785 (n + 1)).toNat

end

end A125252.P7006230717337841083

/-! ## A125252.P13836594112442613749

`filter[A308785(n+1), A276950(#)]`
-/

namespace A125252.P13836594112442613749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A276950 (f1 j).toNat = 1) n)

end

end A125252.P13836594112442613749

/-!
# A125254: Smallest prime divisor of 4n-1 that is of the form 4k-1.

The programs for A125254, there is no canonical definition to state claims against.
-/

/-! ## A125254.P7136532296576682848

`A020639(A170819(record[xor(3, n)]))`
-/

namespace A125254.P7136532296576682848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A170819 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A125254.P7136532296576682848

/-! ## A125254.P17968040920974393077

`A020639(A072438(4*n+3))`
-/

namespace A125254.P17968040920974393077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A072438 (4 * n + 3)).toNat

end

end A125254.P17968040920974393077

/-! ## A125254.P3067446986360929068

`A020639(A097706(4*n+3))`
-/

namespace A125254.P3067446986360929068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A097706 (4 * n + 3)).toNat

end

end A125254.P3067446986360929068

/-! ## A125254.P1383496379655728038

`A020639(A170819(3*(n+1)+n))`
-/

namespace A125254.P1383496379655728038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A170819 (3 * (n + 1) + n)).toNat

end

end A125254.P1383496379655728038

/-! ## A125254.P6763439421477170326

`A020639(∏{p}[A004767(n), A072438(#)])`
-/

namespace A125254.P6763439421477170326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A072438 p).toNat

end

end A125254.P6763439421477170326

/-! ## A125254.P3376748201108184686

`A020639(∏{p}[A098502(n+1), A097706(#)])`
-/

namespace A125254.P3376748201108184686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A097706 p).toNat

end

end A125254.P3376748201108184686

/-!
# A125255: Smallest prime divisor of 4n-1.

The programs for A125255, there is no canonical definition to state claims against.
-/

/-! ## A125255.P11901255174679434473

`A020639(4*(n+1)-1)`
-/

namespace A125255.P11901255174679434473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (4 * (n + 1) - 1)

end

end A125255.P11901255174679434473

/-! ## A125255.P4282016968936719071

`2*A214062(n+1)+1`
-/

namespace A125255.P4282016968936719071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A214062 (n + 1) + 1

end

end A125255.P4282016968936719071

/-! ## A125255.P1388423897975164412

`2*A214061(n+1)-1`
-/

namespace A125255.P1388423897975164412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A214061 (n + 1) - 1

end

end A125255.P1388423897975164412

/-! ## A125255.P8438378506815844820

`A374196(3*(n+1)+n)`
-/

namespace A125255.P8438378506815844820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374196 (3 * (n + 1) + n)

end

end A125255.P8438378506815844820

/-! ## A125255.P4478000478078299845

`∏{d}[A020639(5*n-(n-3)), #]`
-/

namespace A125255.P4478000478078299845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((5 * n : ℤ) - ((n : ℤ) - 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A125255.P4478000478078299845

/-! ## A125255.P9986085960803937823

`p?[gcd(and(3, n+2), A020639(n+1))]`
-/

namespace A125255.P9986085960803937823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.land 3 (n + 2) : ℤ) (A020639 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A125255.P9986085960803937823

/-! ## A125255.P14910428196382511017

`∏{p}[A020639(Δ[n²]+n+2+n), #]`
-/

namespace A125255.P14910428196382511017
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) + (n + 2 : ℤ) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A125255.P14910428196382511017

/-! ## A125255.P9192638154098922575

`or(1, A020639(A004767(n)))`
-/

namespace A125255.P9192638154098922575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A020639 (A004767 n).toNat)

end

end A125255.P9192638154098922575

/-! ## A125255.P9106963539636660998

`A214062(n+1)+A214061(n+1)`
-/

namespace A125255.P9106963539636660998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214062 (n + 1) + A214061 (n + 1)

end

end A125255.P9106963539636660998

/-! ## A125255.P12428988636050495943

`A004273(A214061(n+1))`
-/

namespace A125255.P12428988636050495943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A214061 (n + 1)).toNat

end

end A125255.P12428988636050495943

/-! ## A125255.P8095346428974673837

`A090368(2*(n+1))`
-/

namespace A125255.P8095346428974673837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (2 * (n + 1))

end

end A125255.P8095346428974673837

/-! ## A125255.P11515644190173365068

`2*A195508(2*n+1)+1`
-/

namespace A125255.P11515644190173365068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195508 (2 * n + 1) + 1

end

end A125255.P11515644190173365068

/-! ## A125255.P7938730141084122346

`A151800(A117368(2*(n+1)))`
-/

namespace A125255.P7938730141084122346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A117368 (2 * (n + 1))).toNat

end

end A125255.P7938730141084122346

/-! ## A125255.P7128333677450109622

`A060684(A195508(2*n+1))+1`
-/

namespace A125255.P7128333677450109622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060684 (A195508 (2 * n + 1)).toNat + 1

end

end A125255.P7128333677450109622

/-! ## A125255.P8360679371032084249

`A117367(A117368(2*n+2))`
-/

namespace A125255.P8360679371032084249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117367 (A117368 (2 * n + 2)).toNat

end

end A125255.P8360679371032084249

/-! ## A125255.P7911329527881320500

`A090369(A090368(n+2+n))`
-/

namespace A125255.P7911329527881320500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090369 (A090368 (n + 2 + n)).toNat

end

end A125255.P7911329527881320500

/-! ## A125255.P4076891112543161298

`A078788(4*(n+1))`
-/

namespace A125255.P4076891112543161298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078788 (4 * (n + 1))

end

end A125255.P4076891112543161298

/-! ## A125255.P10888183213667334333

`A078701(4*n+3)`
-/

namespace A125255.P10888183213667334333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (4 * n + 3)

end

end A125255.P10888183213667334333

/-! ## A125255.P2375858025927405914

`A090369(3*(n+1)+n)`
-/

namespace A125255.P2375858025927405914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090369 (3 * (n + 1) + n)

end

end A125255.P2375858025927405914

/-!
# A125256: Smallest odd prime divisor of n^2 + 1.

The programs for A125256, there is no canonical definition to state claims against.
-/

/-! ## A125256.P6594384695739058371

`p?[A020639(A228564(n))]`
-/

namespace A125256.P6594384695739058371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A228564 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125256.P6594384695739058371

/-! ## A125256.P969071702608863674

`A020639(A228564(n+2))`
-/

namespace A125256.P969071702608863674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A228564 (n + 2)).toNat

end

end A125256.P969071702608863674

/-! ## A125256.P13682308009219440882

`A020639(A243883(2*(n+2)))`
-/

namespace A125256.P13682308009219440882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A243883 (2 * (n + 2))).toNat

end

end A125256.P13682308009219440882

/-! ## A125256.P8637367181772734288

`A020639(A281660(n+2)/(n+3))`
-/

namespace A125256.P8637367181772734288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A281660 (n + 2) : ℚ) / (n + 3 : ℚ))).toNat

end

end A125256.P8637367181772734288

/-! ## A125256.P1511580094513900407

`A020639(A066830(n+2)+gcd(2, n))`
-/

namespace A125256.P1511580094513900407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A066830 (n + 2) + (Nat.gcd 2 n : ℤ)).toNat

end

end A125256.P1511580094513900407

/-! ## A125256.P107333129949271853

`A020639(((n+2)²+1)/A000034(n))`
-/

namespace A125256.P107333129949271853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (((n + 2) ^ 2 + 1 : ℚ) / (A000034 n : ℚ))).toNat

end

end A125256.P107333129949271853

/-! ## A125256.P14664320257123761664

`A020639(A000265((n+2)²+1))`
-/

namespace A125256.P14664320257123761664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000265 ((n + 2) ^ 2 + 1)).toNat

end

end A125256.P14664320257123761664

/-! ## A125256.P4572916224622415274

`A020639(A093411((n+2)²+1))`
-/

namespace A125256.P4572916224622415274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A093411 ((n + 2) ^ 2 + 1)).toNat

end

end A125256.P4572916224622415274

/-! ## A125256.P5032356946716020525

`A020639(A342918((n+2)²))`
-/

namespace A125256.P5032356946716020525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A342918 ((n + 2) ^ 2)).toNat

end

end A125256.P5032356946716020525

/-! ## A125256.P2333397597588590716

`A020639(A145051((n+2)²))`
-/

namespace A125256.P2333397597588590716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A145051 ((n + 2) ^ 2)).toNat

end

end A125256.P2333397597588590716

/-!
# A125257: Smallest prime divisor of 4n^2+3 that is of the form 6k+1.

The programs for A125257, there is no canonical definition to state claims against.
-/

/-! ## A125257.P15206413150893859648

`A020639(A030102(A030102((2*(n+1))²+3)))`
-/

namespace A125257.P15206413150893859648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A030102 (A030102 ((2 * (n + 1)) ^ 2 + 3)).toNat).toNat

end

end A125257.P15206413150893859648

/-! ## A125257.P14488758237122196326

`p?[A284252(A017137(n²))]`
-/

namespace A125257.P14488758237122196326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284252 (A017137 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125257.P14488758237122196326

/-! ## A125257.P10525333911276729133

`A284252(A017137((n+1)²))`
-/

namespace A125257.P10525333911276729133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284252 (A017137 ((n + 1) ^ 2)).toNat

end

end A125257.P10525333911276729133

/-! ## A125257.P15188634347651740190

`A284252(A268581(2*n)+9)`
-/

namespace A125257.P15188634347651740190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284252 (A268581 (2 * n) + 9).toNat

end

end A125257.P15188634347651740190

/-!
# A125258: Smallest prime divisor of n^4-n^2+1.

The programs for A125258, there is no canonical definition to state claims against.
-/

/-! ## A125258.P11036352701717453286

`A209189((n+1)*(n+3))`
-/

namespace A125258.P11036352701717453286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209189 ((n + 1) * (n + 3))

end

end A125258.P11036352701717453286

/-! ## A125258.P5464154311699099646

`A020639(2*C((n+2)², 2)+1)`
-/

namespace A125258.P5464154311699099646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * Nat.choose ((n + 2) ^ 2) 2 + 1)

end

end A125258.P5464154311699099646

/-! ## A125258.P3455630825018384423

`A020639(∑[∑[12*(n+1)²]]+1)`
-/

namespace A125258.P3455630825018384423
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * (n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A125258.P3455630825018384423

/-! ## A125258.P17975328315245412580

`p?[A020639(A060886(n))]`
-/

namespace A125258.P17975328315245412580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A060886 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125258.P17975328315245412580

/-! ## A125258.P8705980614774795369

`or(1, A020639(A060886(n+2)))`
-/

namespace A125258.P8705980614774795369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A020639 (A060886 (n + 2)).toNat)

end

end A125258.P8705980614774795369

/-!
# A125259: Numbers k such that k^4 + 3 is prime.

The programs for A125259, there is no canonical definition to state claims against.
-/

/-! ## A125259.P15665886369150620825

`2*A147515(n+1)`
-/

namespace A125259.P15665886369150620825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A147515 (n + 1)

end

end A125259.P15665886369150620825

/-! ## A125259.P1709167933482750369

`A147515(A000027(n+1))+A147515(n+1)`
-/

namespace A125259.P1709167933482750369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147515 (A000027 (n + 1)).toNat + A147515 (n + 1)

end

end A125259.P1709167933482750369

/-! ## A125259.P15138669730835844810

`A147515(n+1)+A147515(n+1)%A010005(n)`
-/

namespace A125259.P15138669730835844810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147515 (n + 1) + Int.tmod (A147515 (n + 1)) (A010005 n)

end

end A125259.P15138669730835844810

/-! ## A125259.P14113733319450407650

`(A147515(n+1)+A147515(n+1))%(A000217(n+6)+7)`
-/

namespace A125259.P14113733319450407650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147515 (n + 1) + A147515 (n + 1)) (A000217 (n + 6) + 7)

end

end A125259.P14113733319450407650

/-! ## A125259.P15318645167547262394

`A005843(A147515(n+1))`
-/

namespace A125259.P15318645167547262394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A147515 (n + 1)).toNat

end

end A125259.P15318645167547262394

/-! ## A125259.P7157093467320959730

`A004273(A147515(n+1)+1)-1`
-/

namespace A125259.P7157093467320959730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A147515 (n + 1) + 1).toNat - 1

end

end A125259.P7157093467320959730

/-! ## A125259.P1144773020552956307

`A004277(A147515(n+1)+1)-2`
-/

namespace A125259.P1144773020552956307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A147515 (n + 1) + 1).toNat - 2

end

end A125259.P1144773020552956307

/-! ## A125259.P11659988809588112298

`A057427(n)+A004273(A147515(n+1))`
-/

namespace A125259.P11659988809588112298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A004273 (A147515 (n + 1)).toNat

end

end A125259.P11659988809588112298

/-! ## A125259.P14251019324024396154

`A004277(A147515(n+1))-A000007(n)`
-/

namespace A125259.P14251019324024396154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A147515 (n + 1)).toNat - A000007 n

end

end A125259.P14251019324024396154

/-! ## A125259.P18401213048635748581

`A004277(A147515(n+1))%A001844(n)`
-/

namespace A125259.P18401213048635748581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004277 (A147515 (n + 1)).toNat) (A001844 n)

end

end A125259.P18401213048635748581

/-! ## A125259.P865239301243107783

`A005408(A147515(n+1)%A010005(n))-1`
-/

namespace A125259.P865239301243107783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (Int.tmod (A147515 (n + 1)) (A010005 n)).toNat - 1

end

end A125259.P865239301243107783

/-! ## A125259.P6169191278037474816

`A004396(lcm(3, A147515(n+1)))`
-/

namespace A125259.P6169191278037474816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (Int.lcm 3 (A147515 (n + 1)))

end

end A125259.P6169191278037474816

/-!
# A125265: Numbers k such that k^11 + 10 is prime.

The programs for A125265, there is no canonical definition to state claims against.
-/

/-! ## A125265.P11749809596985880434

`∑[A073809(A030192(n))]`
-/

namespace A125265.P11749809596985880434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073809 (A030192 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125265.P11749809596985880434

/-!
# A125266: Number of repetitions in A007918.

The programs for A125266, the canonical program `A125266.P13168429370287137297` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125266 has offset 1).

The definition of A125266 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125266.P13168429370287137297

`A054541(n+1)+C(2, n+2)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A125266

/-- `A054541(n+1)+C(2, n+2)` -/
def P13168429370287137297.Spec : Prop :=
  ∀ n, P13168429370287137297.a n = A125266 (n + 1)

theorem P13168429370287137297.correct : P13168429370287137297.Spec := by
  intro n
  simp only [A125266, Nat.add_sub_cancel]

end A125266

/-! ## A125266.P17906517455984076690

`abs(Δ[A000040(abs(1-n)+1)]-1)+1`
-/

namespace A125266.P17906517455984076690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n - 1| + 1

end

end A125266.P17906517455984076690

namespace A125266

/-- `abs(Δ[A000040(abs(1-n)+1)]-1)+1` -/
def P17906517455984076690.Spec : Prop :=
  ∀ n, P17906517455984076690.a n = A125266 (n + 1)

end A125266

/-! ## A125266.P11975102047278334367

`A075526(n)+A000038(n)`
-/

namespace A125266.P11975102047278334367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n + A000038 n

end

end A125266.P11975102047278334367

namespace A125266

/-- `A075526(n)+A000038(n)` -/
def P11975102047278334367.Spec : Prop :=
  ∀ n, P11975102047278334367.a n = A125266 (n + 1)

end A125266

/-! ## A125266.P7546638112583578373

`lcm(A075526(n), A319956(n))`
-/

namespace A125266.P7546638112583578373
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A075526 n) (A319956 n)

end

end A125266.P7546638112583578373

namespace A125266

/-- `lcm(A075526(n), A319956(n))` -/
def P7546638112583578373.Spec : Prop :=
  ∀ n, (P7546638112583578373.a n : ℤ) = A125266 (n + 1)

end A125266

/-! ## A125266.P18013810282035291266

`A054541(n+1)+A000007(n)`
-/

namespace A125266.P18013810282035291266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1) + A000007 n

end

end A125266.P18013810282035291266

namespace A125266

/-- `A054541(n+1)+A000007(n)` -/
def P18013810282035291266.Spec : Prop :=
  ∀ n, P18013810282035291266.a n = A125266 (n + 1)

end A125266

/-! ## A125266.P12263561692042118721

`A230847(n+1)+A057428(n)`
-/

namespace A125266.P12263561692042118721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 1) + A057428 n

end

end A125266.P12263561692042118721

namespace A125266

/-- `A230847(n+1)+A057428(n)` -/
def P12263561692042118721.Spec : Prop :=
  ∀ n, P12263561692042118721.a n = A125266 (n + 1)

end A125266

/-! ## A125266.P10053251435382050921

`A230847(n+1)-A057427(n)`
-/

namespace A125266.P10053251435382050921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 1) - A057427 n

end

end A125266.P10053251435382050921

namespace A125266

/-- `A230847(n+1)-A057427(n)` -/
def P10053251435382050921.Spec : Prop :=
  ∀ n, P10053251435382050921.a n = A125266 (n + 1)

end A125266

/-! ## A125266.P15563697535422925742

`A230846(n+1)-A158388(n)`
-/

namespace A125266.P15563697535422925742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230846 (n + 1) - A158388 n

end

end A125266.P15563697535422925742

namespace A125266

/-- `A230846(n+1)-A158388(n)` -/
def P15563697535422925742.Spec : Prop :=
  ∀ n, P15563697535422925742.a n = A125266 (n + 1)

end A125266

/-! ## A125266.P9990765634250069716

`A075526(n)+2*A000007(n)`
-/

namespace A125266.P9990765634250069716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n + 2 * A000007 n

end

end A125266.P9990765634250069716

namespace A125266

/-- `A075526(n)+2*A000007(n)` -/
def P9990765634250069716.Spec : Prop :=
  ∀ n, P9990765634250069716.a n = A125266 (n + 1)

end A125266

/-! ## A125266.P13474863788845506080

`A230846(n+1)+A153881(n+1)`
-/

namespace A125266.P13474863788845506080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230846 (n + 1) + A153881 (n + 1)

end

end A125266.P13474863788845506080

namespace A125266

/-- `A230846(n+1)+A153881(n+1)` -/
def P13474863788845506080.Spec : Prop :=
  ∀ n, P13474863788845506080.a n = A125266 (n + 1)

end A125266

/-! ## A125266.P843917638363587576

`A054541(n+1)+1-A057427(n)`
-/

namespace A125266.P843917638363587576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1) + (1 - A057427 n)

end

end A125266.P843917638363587576

namespace A125266

/-- `A054541(n+1)+1-A057427(n)` -/
def P843917638363587576.Spec : Prop :=
  ∀ n, P843917638363587576.a n = A125266 (n + 1)

end A125266

/-! ## A125266.P14320194908386894557

`A230847(n+1)+A000007(n)-1`
-/

namespace A125266.P14320194908386894557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 1) + (A000007 n - 1)

end

end A125266.P14320194908386894557

namespace A125266

/-- `A230847(n+1)+A000007(n)-1` -/
def P14320194908386894557.Spec : Prop :=
  ∀ n, P14320194908386894557.a n = A125266 (n + 1)

end A125266

/-! ## A125266.P6727812944200321769

`A078916(n+1)-A171575(n+1)`
-/

namespace A125266.P6727812944200321769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078916 (n + 1) - A171575 (n + 1)

end

end A125266.P6727812944200321769

namespace A125266

/-- `A078916(n+1)-A171575(n+1)` -/
def P6727812944200321769.Spec : Prop :=
  ∀ n, P6727812944200321769.a n = A125266 (n + 1)

end A125266

/-! ## A125266.P7328107617728883267

`A175216(n+1)-A299763(n+1)`
-/

namespace A125266.P7328107617728883267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175216 (n + 1) - A299763 (n + 1)

end

end A125266.P7328107617728883267

namespace A125266

/-- `A175216(n+1)-A299763(n+1)` -/
def P7328107617728883267.Spec : Prop :=
  ∀ n, P7328107617728883267.a n = A125266 (n + 1)

end A125266

/-! ## A125266.P10484452869728803237

`A230847(n+1)+A054977(n)-2`
-/

namespace A125266.P10484452869728803237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 1) + (A054977 n - 2)

end

end A125266.P10484452869728803237

namespace A125266

/-- `A230847(n+1)+A054977(n)-2` -/
def P10484452869728803237.Spec : Prop :=
  ∀ n, P10484452869728803237.a n = A125266 (n + 1)

end A125266

/-! ## A125266.P10241372685022980458

`A054977(n)*A230846(n+1)-1`
-/

namespace A125266.P10241372685022980458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A230846 (n + 1) - 1

end

end A125266.P10241372685022980458

namespace A125266

/-- `A054977(n)*A230846(n+1)-1` -/
def P10241372685022980458.Spec : Prop :=
  ∀ n, P10241372685022980458.a n = A125266 (n + 1)

end A125266

/-! ## A125266.P9001457596825784197

`2*A054541(n+1)-A075526(n)`
-/

namespace A125266.P9001457596825784197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054541 (n + 1) - A075526 n

end

end A125266.P9001457596825784197

namespace A125266

/-- `2*A054541(n+1)-A075526(n)` -/
def P9001457596825784197.Spec : Prop :=
  ∀ n, P9001457596825784197.a n = A125266 (n + 1)

end A125266

/-! ## A125266.P15369854026068946143

`A054541(n+1)+A028310(n)-n`
-/

namespace A125266.P15369854026068946143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1) + (A028310 n - (n : ℤ))

end

end A125266.P15369854026068946143

namespace A125266

/-- `A054541(n+1)+A028310(n)-n` -/
def P15369854026068946143.Spec : Prop :=
  ∀ n, P15369854026068946143.a n = A125266 (n + 1)

end A125266

/-! ## A125266.P10610749098486961773

`A230847(n+1)-n/A028310(n)`
-/

namespace A125266.P10610749098486961773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230847 (n + 1) : ℚ) - (n : ℚ) / (A028310 n : ℚ)

end

end A125266.P10610749098486961773

namespace A125266

/-- `A230847(n+1)-n/A028310(n)` -/
def P10610749098486961773.Spec : Prop :=
  ∀ n, P10610749098486961773.a n = (A125266 (n + 1) : ℚ)

end A125266

/-! ## A125266.P15162483544961898678

`A039915(n+1)+1-A008578(n+1)`
-/

namespace A125266.P15162483544961898678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039915 (n + 1) + (1 - A008578 (n + 1))

end

end A125266.P15162483544961898678

namespace A125266

/-- `A039915(n+1)+1-A008578(n+1)` -/
def P15162483544961898678.Spec : Prop :=
  ∀ n, P15162483544961898678.a n = A125266 (n + 1)

end A125266

/-!
# A125267: Number of Motzkin paths with no peaks and with level steps at height 0 having three colors except that consecutive level steps at height 0 must have different colors.

The programs for A125267, there is no canonical definition to state claims against.
-/

/-! ## A125267.P15389764720068906250

`record[Δ[A000034(n)*A088518(n)]]`
-/

namespace A125267.P15389764720068906250
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A088518 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125267.P15389764720068906250

/-! ## A125267.P323519934061456943

`A078678(n+1)-A088518(2*n)`
-/

namespace A125267.P323519934061456943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078678 (n + 1) - A088518 (2 * n)

end

end A125267.P323519934061456943

/-! ## A125267.P14869642276136132751

`2*A091964(n)-A088518(2*n)`
-/

namespace A125267.P14869642276136132751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091964 n - A088518 (2 * n)

end

end A125267.P14869642276136132751

/-! ## A125267.P1121401965399573533

`2*A088518(2*n+1)-A088518(2*n)`
-/

namespace A125267.P1121401965399573533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088518 (2 * n + 1) - A088518 (2 * n)

end

end A125267.P1121401965399573533

/-! ## A125267.P1556581074637861670

`A078678(n)+Δ[A088518(A004273(n))]`
-/

namespace A125267.P1556581074637861670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088518 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078678 n + (f1 (n + 1) - f1 n)

end

end A125267.P1556581074637861670

/-! ## A125267.P4276532378681811031

`A078678(n)+Δ[A088518(A004280(n+1))]`
-/

namespace A125267.P4276532378681811031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088518 (A004280 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078678 n + (f1 (n + 1) - f1 n)

end

end A125267.P4276532378681811031

/-! ## A125267.P2705935462723685881

`A078678(n)+Δ[A132893(A002620(n))]`
-/

namespace A125267.P2705935462723685881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132893 (A002620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078678 n + (f1 (n + 1) - f1 n)

end

end A125267.P2705935462723685881

/-!
# A125269: Minimal number of states required for a 2-symbol, 5-tuple Turing machine that takes n steps on an initially blank tape before halting.

The programs for A125269, there is no canonical definition to state claims against.
-/

/-! ## A125269.P9007714840186889040

`A062153(A353686(n+1)+A004709(n+1))`
-/

namespace A125269.P9007714840186889040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (A353686 (n + 1) + A004709 (n + 1)).toNat

end

end A125269.P9007714840186889040

/-! ## A125269.P5711783533535413812

`A225541(9*(n+1)+lt[A151950(n), A241494(n)²])`
-/

namespace A125269.P5711783533535413812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151950 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241494 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225541 (9 * (n + 1) + SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A125269.P5711783533535413812

/-! ## A125269.P2169483575372764492

`A225541(9*(n+1)+lt[A347689(n), A241494(n)²])`
-/

namespace A125269.P2169483575372764492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241494 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225541 (9 * (n + 1) + SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A125269.P2169483575372764492

/-! ## A125269.P7432975622014350178

`A097944(A229154(2*(n+2))+A124154(3*(n+1)))-1`
-/

namespace A125269.P7432975622014350178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097944 (A229154 (2 * (n + 2)) + A124154 (3 * (n + 1))).toNat - 1

end

end A125269.P7432975622014350178

/-! ## A125269.P682127017160759169

`round(∑[acot(A118170(n))])`
-/

namespace A125269.P682127017160759169
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A118170 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A125269.P682127017160759169

/-! ## A125269.P5198731553120701948

`A055642(A260734(2*n+3)²)`
-/

namespace A125269.P5198731553120701948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A260734 (2 * n + 3) ^ 2).toNat

end

end A125269.P5198731553120701948

/-! ## A125269.P1433052696096918853

`A000194(A036042(∑[A102352(n+1)]))`
-/

namespace A125269.P1433052696096918853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A036042 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A125269.P1433052696096918853

/-! ## A125269.P17407092351732744498

`A004218(∑[4*(n+1)])`
-/

namespace A125269.P17407092351732744498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A125269.P17407092351732744498

/-! ## A125269.P10268803099384431089

`A055642(∑[4*(n+1)])`
-/

namespace A125269.P10268803099384431089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A125269.P10268803099384431089

/-! ## A125269.P4679949242577939787

`filter[A226029(2*n+1), A140653(#)]`
-/

namespace A125269.P4679949242577939787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226029 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A140653 (f1 j).toNat = 1) n)

end

end A125269.P4679949242577939787

/-!
# A125270: Coefficient of x^2 in polynomial whose zeros are 5 consecutive primes starting with the n-th prime.

The programs for A125270, there is no canonical definition to state claims against.
-/

/-! ## A125270.P17106268572240601899

`A127349(n+2)+A000040(n+1)*A127348(n+2)`
-/

namespace A125270.P17106268572240601899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127349 (n + 2) + A000040 (n + 1) * A127348 (n + 2)

end

end A125270.P17106268572240601899

/-!
# A125271: Number of Gaussian integer divisors of n (having positive real part).

The programs for A125271, the canonical program `A125271.P12543909301820514993` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125271 has offset 1).

The definition of A125271 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062327, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A125271.P12543909301820514993

`2*A062327(n+1)-A000005(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A125271

/-- `2*A062327(n+1)-A000005(n+1)` -/
def P12543909301820514993.Spec : Prop :=
  ∀ n, P12543909301820514993.a n = A125271 (n + 1)

theorem P12543909301820514993.correct : P12543909301820514993.Spec := by
  intro n
  simp only [A125271, Nat.add_sub_cancel]

end A125271

/-! ## A125271.P235203180952270824

`2*A062327(n+1)-Δ[A006218(n)]`
-/

namespace A125271.P235203180952270824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062327 (n + 1) - (f1 (n + 1) - f1 n)

end

end A125271.P235203180952270824

namespace A125271

/-- `2*A062327(n+1)-Δ[A006218(n)]` -/
def P235203180952270824.Spec : Prop :=
  ∀ n, P235203180952270824.a n = A125271 (n + 1)

end A125271

/-! ## A125271.P11445033739412472399

`A004277(A062327(n+1))-Δ[A006218(n)]`
-/

namespace A125271.P11445033739412472399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A062327 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A125271.P11445033739412472399

namespace A125271

/-- `A004277(A062327(n+1))-Δ[A006218(n)]` -/
def P11445033739412472399.Spec : Prop :=
  ∀ n, P11445033739412472399.a n = A125271 (n + 1)

end A125271

/-! ## A125271.P16110723955298033130

`A004277(A062327(n+1))-A000005(n+1)`
-/

namespace A125271.P16110723955298033130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A062327 (n + 1)).toNat - A000005 (n + 1)

end

end A125271.P16110723955298033130

namespace A125271

/-- `A004277(A062327(n+1))-A000005(n+1)` -/
def P16110723955298033130.Spec : Prop :=
  ∀ n, P16110723955298033130.a n = A125271 (n + 1)

end A125271

/-! ## A125271.P9884883682244730483

`A004277(A062327(n+1))-∑{d}[n+1, A020639(2*#)]/2`
-/

namespace A125271.P9884883682244730483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 (A062327 (n + 1)).toNat : ℚ) - ((∑ d ∈ Nat.divisors (f1 n), A020639 (2 * d) : ℤ) : ℚ) / 2

end

end A125271.P9884883682244730483

namespace A125271

/-- `A004277(A062327(n+1))-∑{d}[n+1, A020639(2*#)]/2` -/
def P9884883682244730483.Spec : Prop :=
  ∀ n, P9884883682244730483.a n = (A125271 (n + 1) : ℚ)

end A125271

/-! ## A125271.P13146265774633131668

`A004277(A062327(n+1))-(∑{d}[n+1, 1-A000010(#)]+n+1)`
-/

namespace A125271.P13146265774633131668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A062327 (n + 1)).toNat - (∑ d ∈ Nat.divisors (f1 n), (1 - A000010 d) + (n + 1 : ℤ))

end

end A125271.P13146265774633131668

namespace A125271

/-- `A004277(A062327(n+1))-(∑{d}[n+1, 1-A000010(#)]+n+1)` -/
def P13146265774633131668.Spec : Prop :=
  ∀ n, P13146265774633131668.a n = A125271 (n + 1)

end A125271

/-! ## A125271.P5855401810722097738

`A004277(A062327(n+1))-(∑{d}[n+1, 1-#]+A000203(n+1))`
-/

namespace A125271.P5855401810722097738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A062327 (n + 1)).toNat - (∑ d ∈ Nat.divisors (f1 n), (1 - (d : ℤ)) + A000203 (n + 1))

end

end A125271.P5855401810722097738

namespace A125271

/-- `A004277(A062327(n+1))-(∑{d}[n+1, 1-#]+A000203(n+1))` -/
def P5855401810722097738.Spec : Prop :=
  ∀ n, P5855401810722097738.a n = A125271 (n + 1)

end A125271

/-! ## A125271.P15231002822010568336

`A004277(∑{d}[n+1, A000005(#)*A000089((n+1)/#)])-∏{e}[n+1, #+1]`
-/

namespace A125271.P15231002822010568336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (∑ d ∈ Nat.divisors (f1 n), A000005 d * A000089 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat).toNat - ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ)

end

end A125271.P15231002822010568336

namespace A125271

/-- `A004277(∑{d}[n+1, A000005(#)*A000089((n+1)/#)])-∏{e}[n+1, #+1]` -/
def P15231002822010568336.Spec : Prop :=
  ∀ n, P15231002822010568336.a n = A125271 (n + 1)

end A125271

/-! ## A125271.P13779062378912447772

`A004277(∑{d}[n+1, A000005(#)*A000089((n+1)/#)])-(∑{d}[n+1, 1-A000010(#)]+n+1)`
-/

namespace A125271.P13779062378912447772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (∑ d ∈ Nat.divisors (f1 n), A000005 d * A000089 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat).toNat - (∑ d ∈ Nat.divisors (f2 n), (1 - A000010 d) + (n + 1 : ℤ))

end

end A125271.P13779062378912447772

namespace A125271

/-- `A004277(∑{d}[n+1, A000005(#)*A000089((n+1)/#)])-(∑{d}[n+1, 1-A000010(#)]+n+1)` -/
def P13779062378912447772.Spec : Prop :=
  ∀ n, P13779062378912447772.a n = A125271 (n + 1)

end A125271

/-!
# A125272: Primes p such that 3p - 2 and 3p + 2 are also primes.

The programs for A125272, there is no canonical definition to state claims against.
-/

/-! ## A125272.P13238746139116899161

`A125215(n+1)/3`
-/

namespace A125272.P13238746139116899161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125215 (n + 1) : ℚ) / 3

end

end A125272.P13238746139116899161

/-! ## A125272.P9410305878771908689

`ceil(A176229(n+1)/3)`
-/

namespace A125272.P9410305878771908689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A176229 (n + 1) : ℚ) / 3⌉

end

end A125272.P9410305878771908689

/-! ## A125272.P2238447644854103675

`∩[A088878(n+1), A163487(n+1)]`
-/

namespace A125272.P2238447644854103675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125272.P2238447644854103675

/-! ## A125272.P8641756880499563376

`∩[A023208(n+1), A088878(n+1)]`
-/

namespace A125272.P8641756880499563376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125272.P8641756880499563376

/-! ## A125272.P9034922176610164035

`∩[A023208(n+1), A163487(n+1)]`
-/

namespace A125272.P9034922176610164035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125272.P9034922176610164035

/-! ## A125272.P16131409174747265322

`∩[A088878(n+1), A162338(n+1)]`
-/

namespace A125272.P16131409174747265322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125272.P16131409174747265322

/-! ## A125272.P13419644254180053323

`p?[A157834(n+1)]`
-/

namespace A125272.P13419644254180053323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125272.P13419644254180053323

/-! ## A125272.P13604657443774754512

`p?[2*A056956(n+1)+1]`
-/

namespace A125272.P13604657443774754512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056956 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125272.P13604657443774754512

/-! ## A125272.P13253892219119975829

`p?[2*A186243(n+1)-1]`
-/

namespace A125272.P13253892219119975829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A186243 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125272.P13253892219119975829

/-! ## A125272.P17281074023234673115

`∩[A023208(n+1), A157834(n+1)]`
-/

namespace A125272.P17281074023234673115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125272.P17281074023234673115

/-! ## A125272.P9559059382103732948

`∩[A088878(n+1), A157834(n+1)]`
-/

namespace A125272.P9559059382103732948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125272.P9559059382103732948

/-! ## A125272.P6062147445676206253

`∩[A157834(n+1), A162338(n+1)]`
-/

namespace A125272.P6062147445676206253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125272.P6062147445676206253

/-! ## A125272.P6941490832853216666

`∩[A157834(n+1), A163487(n+1)]`
-/

namespace A125272.P6941490832853216666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125272.P6941490832853216666

/-! ## A125272.P15828729639640212917

`∩[A157834(n+1), A283562(n+1)]`
-/

namespace A125272.P15828729639640212917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125272.P15828729639640212917

/-! ## A125272.P5653424840768445373

`p?[A186243(n+1)+A056956(n+1)]`
-/

namespace A125272.P5653424840768445373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186243 (n + 1) + A056956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125272.P5653424840768445373

/-! ## A125272.P10603033814263080107

`∩[A120637(n+1), A157834(n+1)]`
-/

namespace A125272.P10603033814263080107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125272.P10603033814263080107

/-! ## A125272.P13261737233512270646

`∩[A120637(n+1), A163487(n+1)]`
-/

namespace A125272.P13261737233512270646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125272.P13261737233512270646

/-! ## A125272.P6445261733777776833

`∩[A042993(n+1), A157834(n+1)]`
-/

namespace A125272.P6445261733777776833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125272.P6445261733777776833

/-! ## A125272.P10276839569155401279

`∩[A157834(n+1), A380468(n+1)]`
-/

namespace A125272.P10276839569155401279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125272.P10276839569155401279

/-!
# A125273: Eigensequence of triangle A085478: a(n) = Sum_{k=0..n-1} A085478(n-1,k)*a(k) for n > 0 with a(0) = 1.

The programs for A125273, there is no canonical definition to state claims against.
-/

/-! ## A125273.P14519553138220669844

`A144250(∑[n]+n)`
-/

namespace A125273.P14519553138220669844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144250 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A125273.P14519553138220669844

/-! ## A125273.P14474468977035346964

`A186023(∑[n])`
-/

namespace A125273.P14474468977035346964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186023 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A125273.P14474468977035346964

/-! ## A125273.P11958735381579387920

`A186023(A000217(n))+char[15]`
-/

namespace A125273.P11958735381579387920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186023 (A000217 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A125273.P11958735381579387920

/-! ## A125273.P8717156047603294817

`A309471(n)+A186023(A000217(n))`
-/

namespace A125273.P8717156047603294817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309471 n + A186023 (A000217 n).toNat

end

end A125273.P8717156047603294817

/-! ## A125273.P14741387035857466720

`gcd(A000038(n), A186023(A000217(n)))`
-/

namespace A125273.P14741387035857466720
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A186023 (A000217 n).toNat)

end

end A125273.P14741387035857466720

/-!
# A125274: Eigensequence of triangle A078812: a(n) = Sum_{k=0..n-1} A078812(n-1,k)*a(k) for n > 0 with a(0)=1.

The programs for A125274, there is no canonical definition to state claims against.
-/

/-! ## A125274.P13706502467524961173

`A144254(∑[n+1])`
-/

namespace A125274.P13706502467524961173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144254 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A125274.P13706502467524961173

/-! ## A125274.P1400945777756070900

`A144254(A000217(n+1))-A000038(A059268(n))`
-/

namespace A125274.P1400945777756070900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144254 (A000217 (n + 1)).toNat - A000038 (A059268 n).toNat

end

end A125274.P1400945777756070900

/-! ## A125274.P15868492615034321123

`A005185(A338179(n)-∑{p}[n+1, gcd(n, #)])`
-/

namespace A125274.P15868492615034321123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (A338179 n - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p : ℕ) : ℤ)).toNat

end

end A125274.P15868492615034321123

/-!
# A125275: Eigensequence of triangle A039599: a(n) = Sum_{k=0..n-1} A039599(n-1,k)*a(k) for n > 0 with a(0) = 1.

The programs for A125275, there is no canonical definition to state claims against.
-/

/-! ## A125275.P10404921914591280169

`A147294(∑[n+1])`
-/

namespace A125275.P10404921914591280169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147294 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A125275.P10404921914591280169

/-! ## A125275.P6799045115610937308

`A000027(A147294(C(n+2, 2)))`
-/

namespace A125275.P6799045115610937308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A147294 (Nat.choose (n + 2) 2)).toNat

end

end A125275.P6799045115610937308

/-! ## A125275.P13482938555777421960

`A147294(A261422(n))+floor(n/10)`
-/

namespace A125275.P13482938555777421960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147294 (A261422 n).toNat + ⌊(n : ℚ) / 10⌋

end

end A125275.P13482938555777421960

/-! ## A125275.P13133971858116469065

`A147294(A261422(n))%A034513(n)`
-/

namespace A125275.P13133971858116469065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147294 (A261422 n).toNat) (A034513 n)

end

end A125275.P13133971858116469065

/-! ## A125275.P2172826698351248036

`gcd(A000038(n), A147294(A261422(n)))`
-/

namespace A125275.P2172826698351248036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A147294 (A261422 n).toNat)

end

end A125275.P2172826698351248036

/-!
# A125276: Eigensequence of triangle A039598: a(n) = Sum_{k=0..n-1} A039598(n-1,k)*a(k) for n>0 with a(0)=1.

The programs for A125276, there is no canonical definition to state claims against.
-/

/-! ## A125276.P3199781012982211470

`A132289(n²)`
-/

namespace A125276.P3199781012982211470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132289 (n ^ 2)

end

end A125276.P3199781012982211470

/-! ## A125276.P256307014757397556

`A132289(n*∏{digits}[n, #])^∏{digits}[n, ceil(#/9)]`
-/

namespace A125276.P256307014757397556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132289 (n * ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod) : ℚ) ^ (((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => ⌈(x : ℚ) / 9⌉).prod : ℤ)

end

end A125276.P256307014757397556

/-! ## A125276.P11816629181215559025

`A132289(A230101(n))+char[23]`
-/

namespace A125276.P11816629181215559025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132289 (A230101 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A125276.P11816629181215559025

/-! ## A125276.P15218126199734437559

`A132289(n*∏{digits}[n, #])*A274193(n)`
-/

namespace A125276.P15218126199734437559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132289 (n * ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod) * A274193 n

end

end A125276.P15218126199734437559

/-!
# A125277: Eigensequence of triangle A110616: a(n) = Sum_{k=0..n-1} A110616(n-1,k)*a(k) for n>0 with a(0)=1.

The programs for A125277, there is no canonical definition to state claims against.
-/

/-! ## A125277.P7425179724040000557

`A005229(A189171(n!))`
-/

namespace A125277.P7425179724040000557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005229 (A189171 (Nat.factorial n)).toNat

end

end A125277.P7425179724040000557

/-! ## A125277.P11942208001056140674

`A008620(n*A263576(n)+1)`
-/

namespace A125277.P11942208001056140674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 ((n : ℤ) * A263576 n + 1).toNat

end

end A125277.P11942208001056140674

/-! ## A125277.P4666829111126360561

`A054899(A050146(n))+A000142(n)`
-/

namespace A125277.P4666829111126360561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A050146 n).toNat + A000142 n

end

end A125277.P4666829111126360561

/-!
# A125278: Convolution triangle of A030266, which shifts left under self-COMPOSE.

The programs for A125278, there is no canonical definition to state claims against.
-/

/-! ## A125278.P5018628917456208722

`A379598(∑[2*n]%(comp[∑[n]]+1)+1+n)`
-/

namespace A125278.P5018628917456208722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379598 ((∑ j ∈ Finset.range (n + 1), f1 j) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1) + 1 + n)

end

end A125278.P5018628917456208722

/-! ## A125278.P16374368114425023935

`A379598(A380649(n+1))`
-/

namespace A125278.P16374368114425023935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379598 (A380649 (n + 1)).toNat

end

end A125278.P16374368114425023935

/-! ## A125278.P5286192006525405584

`A379598(A099375(n)+n)`
-/

namespace A125278.P5286192006525405584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379598 (A099375 n + (n : ℤ)).toNat

end

end A125278.P5286192006525405584

/-! ## A125278.P10950561017467718534

`A055570(A189175(n))`
-/

namespace A125278.P10950561017467718534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055570 (A189175 n).toNat

end

end A125278.P10950561017467718534

/-! ## A125278.P7185364833657100990

`A113007(A134558(n))`
-/

namespace A125278.P7185364833657100990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113007 (A134558 n).toNat

end

end A125278.P7185364833657100990

/-!
# A125279: G.f.: A(x) = (1/x)*series_reversion(x^2/G(x)) where G(x) is the g.f. of A030266, which shifts left under self-COMPOSE.

The programs for A125279, there is no canonical definition to state claims against.
-/

/-! ## A125279.P9635031832173485717

`A007094(A014375(2*(n+1)))+A000260(n)`
-/

namespace A125279.P9635031832173485717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A014375 (2 * (n + 1))).toNat + A000260 n

end

end A125279.P9635031832173485717

/-! ## A125279.P17953039528593062969

`A056177(A270789(n)-1)`
-/

namespace A125279.P17953039528593062969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056177 (A270789 n - 1).toNat

end

end A125279.P17953039528593062969

/-!
# A125280: Row sums of triangle A125280, which is the convolution triangle of A030266.

The programs for A125280, there is no canonical definition to state claims against.
-/

/-! ## A125280.P5180913857525228259

`A263779(n)+Δ[A338728(n)]`
-/

namespace A125280.P5180913857525228259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263779 n + (f1 (n + 1) - f1 n)

end

end A125280.P5180913857525228259

/-! ## A125280.P4785981361922264949

`A120567(n+1)+Δ[A338728(n)]`
-/

namespace A125280.P4785981361922264949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120567 (n + 1) + (f1 (n + 1) - f1 n)

end

end A125280.P4785981361922264949

/-! ## A125280.P16487243050348635196

`A316364(23*n!)+Δ[A022493(n)]`
-/

namespace A125280.P16487243050348635196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022493 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316364 (23 * Nat.factorial n) + (f1 (n + 1) - f1 n)

end

end A125280.P16487243050348635196

/-!
# A125281: E.g.f. satisfies: A(x) = Sum{n>=0} x^n * A(n*x)/n!.

The programs for A125281, there is no canonical definition to state claims against.
-/

/-! ## A125281.P6800166207923736478

`A052382(C(A153006(n), A000065(n)))`
-/

namespace A125281.P6800166207923736478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (Nat.choose (A153006 n).toNat (A000065 n).toNat)

end

end A125281.P6800166207923736478

/-! ## A125281.P3578208018346759479

`A052382(C(A153006(n), A002620(n)))`
-/

namespace A125281.P3578208018346759479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (Nat.choose (A153006 n).toNat (A002620 n).toNat)

end

end A125281.P3578208018346759479

/-!
# A125282: G.f. satisfies: A(x) = Sum{n>=0} x^n * A(n*x).

The programs for A125282, there is no canonical definition to state claims against.
-/

/-! ## A125282.P2210383202731757055

`A194640(or(round(21^(n/5)), A000274(n+1)))`
-/

namespace A125282.P2210383202731757055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (Int.lor (SequenceMachineLib.roundAway ((21 : ℝ) ^ ((n : ℚ) / 5 : ℝ))) (A000274 (n + 1))).toNat

end

end A125282.P2210383202731757055

/-! ## A125282.P8212779731361522331

`A186998(n)+A054899(A330624(n))`
-/

namespace A125282.P8212779731361522331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186998 n + A054899 (A330624 n).toNat

end

end A125282.P8212779731361522331

/-! ## A125282.P18241479134758813756

`A008619(A241842(n+1)+A000110(n))`
-/

namespace A125282.P18241479134758813756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A241842 (n + 1) + A000110 n).toNat

end

end A125282.P18241479134758813756

/-!
# A125283: Primes p for which there exists no integer n with 1 < n^2 < p such that n^4 - n^2 + p is prime (i.e., primes that don't arise as q's in A126769).

The programs for A125283, there is no canonical definition to state claims against.
-/

/-! ## A125283.P13381523152929095180

`A154726(2*6^n+n)`
-/

namespace A125283.P13381523152929095180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154726 (2 * 6 ^ n + n)

end

end A125283.P13381523152929095180

/-!
# A125284: Lower indices of duplicate terms in A125204, i.e., k such that A125204(k) = A125204(k + 1).

The programs for A125284, there is no canonical definition to state claims against.
-/

/-! ## A125284.P16659975210286475568

`eq[A125204(A065635(n+1)), A125204(n)]`
-/

namespace A125284.P16659975210286475568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125204 (A065635 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125204 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125284.P16659975210286475568

/-!
# A125286: a(0)=1. a(n) = a(n-1) + (the largest term among {a(0),a(1),...a(n-1)} that has the same number of positive divisors as n).

The programs for A125286, there is no canonical definition to state claims against.
-/

/-! ## A125286.P16597696201369044629

`record[A091820(Δ[A291247(n)])]`
-/

namespace A125286.P16597696201369044629
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291247 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091820 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125286.P16597696201369044629

/-! ## A125286.P16772455506824569334

`record[∏{p}[n+1, #-1]%A242731(n+1)]`
-/

namespace A125286.P16772455506824569334
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1)) (A242731 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125286.P16772455506824569334

/-! ## A125286.P4797994787840612373

`record[A232642(A126572(n+1))]`
-/

namespace A125286.P4797994787840612373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232642 (A126572 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125286.P4797994787840612373

/-! ## A125286.P11609464245487034777

`record[A000010(n+1)%A242731(n+1)]`
-/

namespace A125286.P11609464245487034777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 1)) (A242731 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125286.P11609464245487034777

/-! ## A125286.P15406748717936492207

`eq[char[A305540(2*n+5)], A294787(n+1)]`
-/

namespace A125286.P15406748717936492207
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305540 (2 * n + 5)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294787 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A125286.P15406748717936492207

/-!
# A125287: a(n) = mu(n) * A000217(n).

The programs for A125287, the canonical program `A125287.P16942603445800787172` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125287 has offset 1).

The definition of A125287 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125287.P6779535260257410790

`∑[n+1]*∏{e}[n+1, floor(log(atan(#)))]`
-/

namespace A125287.P6779535260257410790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (∏ p ∈ Nat.primeFactors (f2 n), ⌊Real.log (Real.arctan (Nat.factorization (f2 n) p : ℝ))⌋)

end

end A125287.P6779535260257410790

namespace A125287

/-- `∑[n+1]*∏{e}[n+1, floor(log(atan(#)))]` -/
def P6779535260257410790.Spec : Prop :=
  ∀ n, P6779535260257410790.a n = A125287 (n + 1)

end A125287

/-! ## A125287.P17579587510126210181

`round(acot(∏{e}[n+1, -#]))*∑[n+1]`
-/

namespace A125287.P17579587510126210181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot ((∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p : ℤ)) : ℤ) : ℝ)) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A125287.P17579587510126210181

namespace A125287

/-- `round(acot(∏{e}[n+1, -#]))*∑[n+1]` -/
def P17579587510126210181.Spec : Prop :=
  ∀ n, P17579587510126210181.a n = A125287 (n + 1)

end A125287

/-! ## A125287.P16861758273822054971

`C(n+2, 2)*round(acot(∏{e}[n+1, -#]))`
-/

namespace A125287.P16861758273822054971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 : ℤ) * SequenceMachineLib.roundAway (SequenceMachineLib.acot ((∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p : ℤ)) : ℤ) : ℝ))

end

end A125287.P16861758273822054971

namespace A125287

/-- `C(n+2, 2)*round(acot(∏{e}[n+1, -#]))` -/
def P16861758273822054971.Spec : Prop :=
  ∀ n, P16861758273822054971.a n = A125287 (n + 1)

end A125287

/-! ## A125287.P16942603445800787172

`C(n+2, 2)*∏{e}[n+1, -C(2, #+1)]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A125287

/-- `C(n+2, 2)*∏{e}[n+1, -C(2, #+1)]` -/
def P16942603445800787172.Spec : Prop :=
  ∀ n, P16942603445800787172.a n = A125287 (n + 1)

theorem P16942603445800787172.correct : P16942603445800787172.Spec := by
  intro n
  simp only [A125287, Nat.add_sub_cancel]

end A125287

/-! ## A125287.P8293001742832358879

`∑[n+1]*A008683(n+1)`
-/

namespace A125287.P8293001742832358879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A008683 (n + 1)

end

end A125287.P8293001742832358879

namespace A125287

/-- `∑[n+1]*A008683(n+1)` -/
def P8293001742832358879.Spec : Prop :=
  ∀ n, P8293001742832358879.a n = A125287 (n + 1)

end A125287

/-! ## A125287.P14814505500750944972

`A131732(n)*A361985(n+1)`
-/

namespace A125287.P14814505500750944972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 n * A361985 (n + 1)

end

end A125287.P14814505500750944972

namespace A125287

/-- `A131732(n)*A361985(n+1)` -/
def P14814505500750944972.Spec : Prop :=
  ∀ n, P14814505500750944972.a n = A125287 (n + 1)

end A125287

/-! ## A125287.P14627906534522343718

`A176743(n)*A326937(n+1)`
-/

namespace A125287.P14627906534522343718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176743 n * A326937 (n + 1)

end

end A125287.P14627906534522343718

namespace A125287

/-- `A176743(n)*A326937(n+1)` -/
def P14627906534522343718.Spec : Prop :=
  ∀ n, P14627906534522343718.a n = A125287 (n + 1)

end A125287

/-! ## A125287.P9290901326649935540

`A008683(n+1)*A143869(n+1)`
-/

namespace A125287.P9290901326649935540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A143869 (n + 1)

end

end A125287.P9290901326649935540

namespace A125287

/-- `A008683(n+1)*A143869(n+1)` -/
def P9290901326649935540.Spec : Prop :=
  ∀ n, P9290901326649935540.a n = A125287 (n + 1)

end A125287

/-! ## A125287.P14711157340311552637

`A008683(n+1)*A373189(n+1)`
-/

namespace A125287.P14711157340311552637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A373189 (n + 1)

end

end A125287.P14711157340311552637

namespace A125287

/-- `A008683(n+1)*A373189(n+1)` -/
def P14711157340311552637.Spec : Prop :=
  ∀ n, P14711157340311552637.a n = A125287 (n + 1)

end A125287

/-! ## A125287.P7965034656663179458

`A008683(n+1)*A390806(n+1)`
-/

namespace A125287.P7965034656663179458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A390806 (n + 1)

end

end A125287.P7965034656663179458

namespace A125287

/-- `A008683(n+1)*A390806(n+1)` -/
def P7965034656663179458.Spec : Prop :=
  ∀ n, P7965034656663179458.a n = A125287 (n + 1)

end A125287

/-! ## A125287.P15599534860597451144

`A008683(n+1)*A390807(n+1)`
-/

namespace A125287.P15599534860597451144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A390807 (n + 1)

end

end A125287.P15599534860597451144

namespace A125287

/-- `A008683(n+1)*A390807(n+1)` -/
def P15599534860597451144.Spec : Prop :=
  ∀ n, P15599534860597451144.a n = A125287 (n + 1)

end A125287

/-! ## A125287.P6333503895081371018

`A145051(n+1)*A326937(n+1)`
-/

namespace A125287.P6333503895081371018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145051 (n + 1) * A326937 (n + 1)

end

end A125287.P6333503895081371018

namespace A125287

/-- `A145051(n+1)*A326937(n+1)` -/
def P6333503895081371018.Spec : Prop :=
  ∀ n, P6333503895081371018.a n = A125287 (n + 1)

end A125287

/-! ## A125287.P8448359741360076818

`A220466(n+1)*A326937(n+1)`
-/

namespace A125287.P8448359741360076818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220466 (n + 1) * A326937 (n + 1)

end

end A125287.P8448359741360076818

namespace A125287

/-- `A220466(n+1)*A326937(n+1)` -/
def P8448359741360076818.Spec : Prop :=
  ∀ n, P8448359741360076818.a n = A125287 (n + 1)

end A125287

/-! ## A125287.P10714020037419322924

`A334660(n+1)%A099776(n+1)`
-/

namespace A125287.P10714020037419322924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334660 (n + 1)) (A099776 (n + 1))

end

end A125287.P10714020037419322924

namespace A125287

/-- `A334660(n+1)%A099776(n+1)` -/
def P10714020037419322924.Spec : Prop :=
  ∀ n, P10714020037419322924.a n = A125287 (n + 1)

end A125287

/-! ## A125287.P14699069633482365935

`∑{d}[n+1, A053822(#)*A057661((n+1)/#)]`
-/

namespace A125287.P14699069633482365935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053822 d * A057661 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A125287.P14699069633482365935

namespace A125287

/-- `∑{d}[n+1, A053822(#)*A057661((n+1)/#)]` -/
def P14699069633482365935.Spec : Prop :=
  ∀ n, P14699069633482365935.a n = A125287 (n + 1)

end A125287

/-! ## A125287.P14468348802049370016

`∑{d}[n+1, A007437(#)*A328254((n+1)/#)]`
-/

namespace A125287.P14468348802049370016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007437 d * A328254 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A125287.P14468348802049370016

namespace A125287

/-- `∑{d}[n+1, A007437(#)*A328254((n+1)/#)]` -/
def P14468348802049370016.Spec : Prop :=
  ∀ n, P14468348802049370016.a n = A125287 (n + 1)

end A125287

/-! ## A125287.P4761356518384777305

`∑{d}[n+1, A023896(#)*A334657((n+1)/#)]`
-/

namespace A125287.P4761356518384777305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023896 d * A334657 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A125287.P4761356518384777305

namespace A125287

/-- `∑{d}[n+1, A023896(#)*A334657((n+1)/#)]` -/
def P4761356518384777305.Spec : Prop :=
  ∀ n, P4761356518384777305.a n = A125287 (n + 1)

end A125287

/-! ## A125287.P16819921544749775546

`∑{d}[n+1, A007438(#)*A351654((n+1)/#)]`
-/

namespace A125287.P16819921544749775546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007438 d * A351654 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A125287.P16819921544749775546

namespace A125287

/-- `∑{d}[n+1, A007438(#)*A351654((n+1)/#)]` -/
def P16819921544749775546.Spec : Prop :=
  ∀ n, P16819921544749775546.a n = A125287 (n + 1)

end A125287

/-! ## A125287.P1178824935005489682

`A008683(n+1)+A000096(n)*A008683(n+1)`
-/

namespace A125287.P1178824935005489682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + A000096 n * A008683 (n + 1)

end

end A125287.P1178824935005489682

namespace A125287

/-- `A008683(n+1)+A000096(n)*A008683(n+1)` -/
def P1178824935005489682.Spec : Prop :=
  ∀ n, P1178824935005489682.a n = A125287 (n + 1)

end A125287

/-! ## A125287.P17116183680276214904

`A000124(n+1)*A008683(n+1)-A008683(n+1)`
-/

namespace A125287.P17116183680276214904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (n + 1) * A008683 (n + 1) - A008683 (n + 1)

end

end A125287.P17116183680276214904

namespace A125287

/-- `A000124(n+1)*A008683(n+1)-A008683(n+1)` -/
def P17116183680276214904.Spec : Prop :=
  ∀ n, P17116183680276214904.a n = A125287 (n + 1)

end A125287

/-!
# A125289: Numbers with unique nonzero digit in decimal representation.

The programs for A125289, there is no canonical definition to state claims against.
-/

/-! ## A125289.P4569244355850918327

`eq[1, A061827(n+1)]+1`
-/

namespace A125289.P4569244355850918327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061827 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A125289.P4569244355850918327

/-! ## A125289.P13128616141250835405

`eq[n+1, A336956(n+1)]+1`
-/

namespace A125289.P13128616141250835405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336956 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A125289.P13128616141250835405

/-! ## A125289.P7518886376071070392

`eq[1, A055640(A137564(n))]`
-/

namespace A125289.P7518886376071070392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A137564 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125289.P7518886376071070392

/-! ## A125289.P396868078028142741

`eq[1, A151702(A086066(n))]`
-/

namespace A125289.P396868078028142741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151702 (A086066 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125289.P396868078028142741

/-! ## A125289.P9370248249731932681

`eq[n, A336956(A028310(n))]`
-/

namespace A125289.P9370248249731932681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336956 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125289.P9370248249731932681

/-! ## A125289.P18244072722997478415

`record[gcd(A028310(n), A068522(n))]`
-/

namespace A125289.P18244072722997478415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028310 n) (A068522 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125289.P18244072722997478415

/-! ## A125289.P419394632736804281

`lt[n*A106747(A123895(n)), n]`
-/

namespace A125289.P419394632736804281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A106747 (A123895 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A125289.P419394632736804281

/-! ## A125289.P16695915962954787675

`lt[n*A338827(A004185(n)), n]`
-/

namespace A125289.P16695915962954787675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A338827 (A004185 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A125289.P16695915962954787675

/-! ## A125289.P10297262490179642447

`eq[1, A052429(A350494(n+1))]+1`
-/

namespace A125289.P10297262490179642447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052429 (A350494 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A125289.P10297262490179642447

/-! ## A125289.P2211749176954541034

`eq[A052423(n+1), A052429(n+1)]+1`
-/

namespace A125289.P2211749176954541034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052429 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A125289.P2211749176954541034

/-! ## A125289.P2802876275393518746

`eq[A054055(n+1), A217928(n+1)]+1`
-/

namespace A125289.P2802876275393518746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217928 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A125289.P2802876275393518746

/-! ## A125289.P3120371177537203874

`eq[A054055(A028310(n)), A217928(n)]`
-/

namespace A125289.P3120371177537203874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125289.P3120371177537203874

/-! ## A125289.P12039419178783983449

`eq[A000038(n), A256756(n-A193581(n))]`
-/

namespace A125289.P12039419178783983449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 ((n : ℤ) - A193581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125289.P12039419178783983449

/-! ## A125289.P6945889640298577723

`eq[A123895(n+1), A136400(n+1)]+1`
-/

namespace A125289.P6945889640298577723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A125289.P6945889640298577723

/-! ## A125289.P14589412073081168331

`eq[A000007(n), A064834(A004185(n))]`
-/

namespace A125289.P14589412073081168331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (A004185 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125289.P14589412073081168331

/-! ## A125289.P6102062771066359653

`eq[A123895(A028310(n)), A136400(n)]`
-/

namespace A125289.P6102062771066359653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123895 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125289.P6102062771066359653

/-! ## A125289.P5807998269092063662

`lt[A106747(A123895(n)), A057427(n)]`
-/

namespace A125289.P5807998269092063662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 (A123895 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A125289.P5807998269092063662

/-!
# A125290: Numbers with at least two distinct digits in decimal representation, none of which is 0.

The programs for A125290, the canonical program `A125290.P9146773712146445150` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125290 has offset 1).

The definition of A125290 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7344 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125290.P728949264108923381

`eq[1, A081729(A086066(n))]`
-/

namespace A125290.P728949264108923381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081729 (A086066 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125290.P728949264108923381

namespace A125290

/-- `eq[1, A081729(A086066(n))]` -/
def P728949264108923381.Spec : Prop :=
  ∀ n, (P728949264108923381.a n : ℤ) = A125290 (n + 1)

end A125290

/-! ## A125290.P3267795239114982624

`lt[9, A355223(A227362(n))]`
-/

namespace A125290.P3267795239114982624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355223 (A227362 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A125290.P3267795239114982624

namespace A125290

/-- `lt[9, A355223(A227362(n))]` -/
def P3267795239114982624.Spec : Prop :=
  ∀ n, (P3267795239114982624.a n : ℤ) = A125290 (n + 1)

end A125290

/-! ## A125290.P5067105261491393729

`lt[A054054(n), A004430(n)]`
-/

namespace A125290.P5067105261491393729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004430 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A125290.P5067105261491393729

namespace A125290

/-- `lt[A054054(n), A004430(n)]` -/
def P5067105261491393729.Spec : Prop :=
  ∀ n, (P5067105261491393729.a n : ℤ) = A125290 (n + 1)

end A125290

/-! ## A125290.P16493126782284787178

`eq[tan(A055641(n)), A202022(n)]`
-/

namespace A125290.P16493126782284787178
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A055641 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202022 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A125290.P16493126782284787178

namespace A125290

/-- `eq[tan(A055641(n)), A202022(n)]` -/
def P16493126782284787178.Spec : Prop :=
  ∀ n, (P16493126782284787178.a n : ℤ) = A125290 (n + 1)

end A125290

/-! ## A125290.P2218291866772206527

`filter[A139819(n+1), A168046(#)]`
-/

namespace A125290.P2218291866772206527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A125290.P2218291866772206527

namespace A125290

/-- `filter[A139819(n+1), A168046(#)]` -/
def P2218291866772206527.Spec : Prop :=
  ∀ n, P2218291866772206527.a n = A125290 (n + 1)

end A125290

/-! ## A125290.P9146773712146445150

`∩[A139819(n+1), A052382(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A125290

/-- `∩[A139819(n+1), A052382(n+1)]` -/
def P9146773712146445150.Spec : Prop :=
  ∀ n, (P9146773712146445150.a n : ℤ) = A125290 (n + 1)

theorem P9146773712146445150.correct : P9146773712146445150.Spec := by
  intro n
  simp only [A125290, Nat.add_sub_cancel]

end A125290

/-! ## A125290.P10910790136533781145

`eq[A000038(A151949(n)), A055641(n)]`
-/

namespace A125290.P10910790136533781145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A151949 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125290.P10910790136533781145

namespace A125290

/-- `eq[A000038(A151949(n)), A055641(n)]` -/
def P10910790136533781145.Spec : Prop :=
  ∀ n, (P10910790136533781145.a n : ℤ) = A125290 (n + 1)

end A125290

/-! ## A125290.P12961878130966271039

`eq[A000038(A151950(n)), A055641(n)]`
-/

namespace A125290.P12961878130966271039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A151950 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125290.P12961878130966271039

namespace A125290

/-- `eq[A000038(A151950(n)), A055641(n)]` -/
def P12961878130966271039.Spec : Prop :=
  ∀ n, (P12961878130966271039.a n : ℤ) = A125290 (n + 1)

end A125290

/-! ## A125290.P14152851054894409257

`eq[A014963(A086066(n)), A168046(n)]`
-/

namespace A125290.P14152851054894409257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A086066 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125290.P14152851054894409257

namespace A125290

/-- `eq[A014963(A086066(n)), A168046(n)]` -/
def P14152851054894409257.Spec : Prop :=
  ∀ n, (P14152851054894409257.a n : ℤ) = A125290 (n + 1)

end A125290

/-! ## A125290.P10877124168188686279

`lt[A151950(n), A108782(A070196(n)-n)]`
-/

namespace A125290.P10877124168188686279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151950 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108782 (A070196 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A125290.P10877124168188686279

namespace A125290

/-- `lt[A151950(n), A108782(A070196(n)-n)]` -/
def P10877124168188686279.Spec : Prop :=
  ∀ n, (P10877124168188686279.a n : ℤ) = A125290 (n + 1)

end A125290

/-! ## A125290.P17348128048489133008

`lt[A151950(n), A108782(n-A193581(n))]`
-/

namespace A125290.P17348128048489133008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151950 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108782 ((n : ℤ) - A193581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A125290.P17348128048489133008

namespace A125290

/-- `lt[A151950(n), A108782(n-A193581(n))]` -/
def P17348128048489133008.Spec : Prop :=
  ∀ n, (P17348128048489133008.a n : ℤ) = A125290 (n + 1)

end A125290

/-! ## A125290.P15862235355247593830

`lt[A328447(n), A333659(A070196(n)-n)]`
-/

namespace A125290.P15862235355247593830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328447 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333659 (A070196 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A125290.P15862235355247593830

namespace A125290

/-- `lt[A328447(n), A333659(A070196(n)-n)]` -/
def P15862235355247593830.Spec : Prop :=
  ∀ n, (P15862235355247593830.a n : ℤ) = A125290 (n + 1)

end A125290

/-! ## A125290.P8463685230230038278

`lt[A328447(n), A333659(n-A193581(n))]`
-/

namespace A125290.P8463685230230038278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328447 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333659 ((n : ℤ) - A193581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A125290.P8463685230230038278

namespace A125290

/-- `lt[A328447(n), A333659(n-A193581(n))]` -/
def P8463685230230038278.Spec : Prop :=
  ∀ n, (P8463685230230038278.a n : ℤ) = A125290 (n + 1)

end A125290

/-! ## A125290.P6067236161031849170

`lt[63, A355223(A321485(n))]`
-/

namespace A125290.P6067236161031849170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  63

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355223 (A321485 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A125290.P6067236161031849170

namespace A125290

/-- `lt[63, A355223(A321485(n))]` -/
def P6067236161031849170.Spec : Prop :=
  ∀ n, (P6067236161031849170.a n : ℤ) = A125290 (n + 1)

end A125290

/-! ## A125290.P4308421377562079734

`eq[A014963(A113581(n)), A168046(n)]`
-/

namespace A125290.P4308421377562079734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A113581 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125290.P4308421377562079734

namespace A125290

/-- `eq[A014963(A113581(n)), A168046(n)]` -/
def P4308421377562079734.Spec : Prop :=
  ∀ n, (P4308421377562079734.a n : ℤ) = A125290 (n + 1)

end A125290

/-!
# A125292: Numbers having either no ones or no twos in their ternary representation.

The programs for A125292, the canonical program `A125292.P473886197961113192` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125292 has offset 1).

The definition of A125292 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8190 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125292.P473886197961113192

`∪[2*A005836(n+2), A005836(n+2)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A125292

/-- `∪[2*A005836(n+2), A005836(n+2)]` -/
def P473886197961113192.Spec : Prop :=
  ∀ n, (P473886197961113192.a n : ℤ) = A125292 (n + 1)

theorem P473886197961113192.correct : P473886197961113192.Spec := by
  intro n
  simp only [A125292, Nat.add_sub_cancel]

end A125292

/-! ## A125292.P3849240533576647854

`eq[1, A088917(2*n)+A088917(n)]`
-/

namespace A125292.P3849240533576647854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088917 (2 * n) + A088917 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125292.P3849240533576647854

namespace A125292

/-- `eq[1, A088917(2*n)+A088917(n)]` -/
def P3849240533576647854.Spec : Prop :=
  ∀ n, (P3849240533576647854.a n : ℤ) = A125292 (n + 1)

end A125292

/-! ## A125292.P12159621426189197295

`eq[1, A001221(A006047(n))]`
-/

namespace A125292.P12159621426189197295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A006047 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125292.P12159621426189197295

namespace A125292

/-- `eq[1, A001221(A006047(n))]` -/
def P12159621426189197295.Spec : Prop :=
  ∀ n, (P12159621426189197295.a n : ℤ) = A125292 (n + 1)

end A125292

/-! ## A125292.P2663821464659965181

`eq[1, A001221(A331279(n))]`
-/

namespace A125292.P2663821464659965181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A331279 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125292.P2663821464659965181

namespace A125292

/-- `eq[1, A001221(A331279(n))]` -/
def P2663821464659965181.Spec : Prop :=
  ∀ n, (P2663821464659965181.a n : ℤ) = A125292 (n + 1)

end A125292

/-! ## A125292.P15175524487249815593

`eq[A088917(2*n), A316829(n)]`
-/

namespace A125292.P15175524487249815593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088917 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125292.P15175524487249815593

namespace A125292

/-- `eq[A088917(2*n), A316829(n)]` -/
def P15175524487249815593.Spec : Prop :=
  ∀ n, (P15175524487249815593.a n : ℤ) = A125292 (n + 1)

end A125292

/-! ## A125292.P15701033487390167246

`eq[1, A125291(n+1)]+1`
-/

namespace A125292.P15701033487390167246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125291 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A125292.P15701033487390167246

namespace A125292

/-- `eq[1, A125291(n+1)]+1` -/
def P15701033487390167246.Spec : Prop :=
  ∀ n, (P15701033487390167246.a n : ℤ) = A125292 (n + 1)

end A125292

/-! ## A125292.P1823938048739903655

`record[(n+1)/(A265352(n+1)-n)]`
-/

namespace A125292.P1823938048739903655
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A265352 (n + 1) - (n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125292.P1823938048739903655

namespace A125292

/-- `record[(n+1)/(A265352(n+1)-n)]` -/
def P1823938048739903655.Spec : Prop :=
  ∀ n, P1823938048739903655.a n = (A125292 (n + 1) : ℚ)

end A125292

/-! ## A125292.P9181352577620282020

`eq[1, A001221(A120879(n))]`
-/

namespace A125292.P9181352577620282020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A120879 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125292.P9181352577620282020

namespace A125292

/-- `eq[1, A001221(A120879(n))]` -/
def P9181352577620282020.Spec : Prop :=
  ∀ n, (P9181352577620282020.a n : ℤ) = A125292 (n + 1)

end A125292

/-! ## A125292.P7886309923792663519

`eq[A004277(n), A265342(n)]`
-/

namespace A125292.P7886309923792663519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265342 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125292.P7886309923792663519

namespace A125292

/-- `eq[A004277(n), A265342(n)]` -/
def P7886309923792663519.Spec : Prop :=
  ∀ n, (P7886309923792663519.a n : ℤ) = A125292 (n + 1)

end A125292

/-! ## A125292.P16955888360733831231

`eq[n, A265351(A028310(n))]`
-/

namespace A125292.P16955888360733831231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265351 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125292.P16955888360733831231

namespace A125292

/-- `eq[n, A265351(A028310(n))]` -/
def P16955888360733831231.Spec : Prop :=
  ∀ n, (P16955888360733831231.a n : ℤ) = A125292 (n + 1)

end A125292

/-! ## A125292.P3326745582078451891

`eq[A028310(n), A265352(n)]`
-/

namespace A125292.P3326745582078451891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265352 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125292.P3326745582078451891

namespace A125292

/-- `eq[A028310(n), A265352(n)]` -/
def P3326745582078451891.Spec : Prop :=
  ∀ n, (P3326745582078451891.a n : ℤ) = A125292 (n + 1)

end A125292

/-! ## A125292.P3206396388968247272

`eq[A039966(n), A316829(n)]`
-/

namespace A125292.P3206396388968247272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039966 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125292.P3206396388968247272

namespace A125292

/-- `eq[A039966(n), A316829(n)]` -/
def P3206396388968247272.Spec : Prop :=
  ∀ n, (P3206396388968247272.a n : ℤ) = A125292 (n + 1)

end A125292

/-! ## A125292.P18171489031061235738

`eq[A088917(n), A189820(n+1)]`
-/

namespace A125292.P18171489031061235738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088917 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125292.P18171489031061235738

namespace A125292

/-- `eq[A088917(n), A189820(n+1)]` -/
def P18171489031061235738.Spec : Prop :=
  ∀ n, (P18171489031061235738.a n : ℤ) = A125292 (n + 1)

end A125292

/-! ## A125292.P18003735722448233208

`eq[2, A105220(n)*A190592(n)]`
-/

namespace A125292.P18003735722448233208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105220 n * A190592 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125292.P18003735722448233208

namespace A125292

/-- `eq[2, A105220(n)*A190592(n)]` -/
def P18003735722448233208.Spec : Prop :=
  ∀ n, (P18003735722448233208.a n : ℤ) = A125292 (n + 1)

end A125292

/-! ## A125292.P1267395727580515874

`eq[char[A005836(n+1)], A316829(n)]`
-/

namespace A125292.P1267395727580515874
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A125292.P1267395727580515874

namespace A125292

/-- `eq[char[A005836(n+1)], A316829(n)]` -/
def P1267395727580515874.Spec : Prop :=
  ∀ n, (P1267395727580515874.a n : ℤ) = A125292 (n + 1)

end A125292

/-! ## A125292.P1807045799917701543

`eq[1, A316829(2*n)+A316829(n)]`
-/

namespace A125292.P1807045799917701543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316829 (2 * n) + A316829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125292.P1807045799917701543

namespace A125292

/-- `eq[1, A316829(2*n)+A316829(n)]` -/
def P1807045799917701543.Spec : Prop :=
  ∀ n, (P1807045799917701543.a n : ℤ) = A125292 (n + 1)

end A125292

/-! ## A125292.P5989872659935769722

`eq[2, A105220(2*n)*A105220(n)]`
-/

namespace A125292.P5989872659935769722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105220 (2 * n) * A105220 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125292.P5989872659935769722

namespace A125292

/-- `eq[2, A105220(2*n)*A105220(n)]` -/
def P5989872659935769722.Spec : Prop :=
  ∀ n, (P5989872659935769722.a n : ℤ) = A125292 (n + 1)

end A125292

/-! ## A125292.P5276028994092818270

`eq[A030102(n+1), A263272(A038502(n+1))]+1`
-/

namespace A125292.P5276028994092818270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A038502 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A125292.P5276028994092818270

namespace A125292

/-- `eq[A030102(n+1), A263272(A038502(n+1))]+1` -/
def P5276028994092818270.Spec : Prop :=
  ∀ n, (P5276028994092818270.a n : ℤ) = A125292 (n + 1)

end A125292

/-! ## A125292.P6858080564983299865

`eq[2, A043530(A008486(n))]`
-/

namespace A125292.P6858080564983299865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043530 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125292.P6858080564983299865

namespace A125292

/-- `eq[2, A043530(A008486(n))]` -/
def P6858080564983299865.Spec : Prop :=
  ∀ n, (P6858080564983299865.a n : ℤ) = A125292 (n + 1)

end A125292

/-!
# A125293: Numbers with at least one 1 and one 2 in ternary representation.

The programs for A125293, there is no canonical definition to state claims against.
-/

/-! ## A125293.P15784429145798710153

`lt[2, A261787(n)]`
-/

namespace A125293.P15784429145798710153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261787 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A125293.P15784429145798710153

/-! ## A125293.P9236521812885842163

`comp[lcm(n, A374363(n))]`
-/

namespace A125293.P9236521812885842163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A374363 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A125293.P9236521812885842163

/-! ## A125293.P4255745421991611540

`comp[eq[n, A265351(n)]]`
-/

namespace A125293.P4255745421991611540
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265351 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A125293.P4255745421991611540

/-! ## A125293.P18316113228539054535

`comp[eq[n, A265352(n)]]`
-/

namespace A125293.P18316113228539054535
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265352 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A125293.P18316113228539054535

/-! ## A125293.P2049638710419044777

`comp[eq[n, A321524(n)]]`
-/

namespace A125293.P2049638710419044777
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321524 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A125293.P2049638710419044777

/-! ## A125293.P9141971321027769519

`comp[eq[n, A321525(n)]]`
-/

namespace A125293.P9141971321027769519
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321525 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A125293.P9141971321027769519

/-! ## A125293.P8953905066036138997

`lt[2, A212193(3*n)]`
-/

namespace A125293.P8953905066036138997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212193 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A125293.P8953905066036138997

/-! ## A125293.P17400892439956204025

`lt[1, A125291(n+1)]+1`
-/

namespace A125293.P17400892439956204025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125291 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A125293.P17400892439956204025

/-! ## A125293.P10570150706947181485

`lt[1, A001221(A006047(n))]`
-/

namespace A125293.P10570150706947181485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A006047 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A125293.P10570150706947181485

/-! ## A125293.P9903329074577853029

`lt[1, A001221(A120879(n))]`
-/

namespace A125293.P9903329074577853029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A120879 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A125293.P9903329074577853029

/-!
# A125294: Numerator of (Sum_{k=1..n} k^2) / (Product_{k=1..n} k^2).

The programs for A125294, there is no canonical definition to state claims against.
-/

/-! ## A125294.P7979967342051596339

`∏{p}[∑[(n+1)²], C(#, #%(n+1))]`
-/

namespace A125294.P7979967342051596339
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.choose p (p % (n + 1))

end

end A125294.P7979967342051596339

/-! ## A125294.P4388959209336576126

`gcd(∑[(n+1)²], A193873(n+1))`
-/

namespace A125294.P4388959209336576126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A193873 (n + 1))

end

end A125294.P4388959209336576126

/-! ## A125294.P13762354114091686918

`(n+2)^round(n/∏{d}[n+2, #])*A145737(n+1)`
-/

namespace A125294.P13762354114091686918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (SequenceMachineLib.roundAway ((n : ℚ) / ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ)) : ℤ) * (A145737 (n + 1) : ℚ)

end

end A125294.P13762354114091686918

/-! ## A125294.P16016674586377948958

`A145737(n+1)*A308090(n+1)`
-/

namespace A125294.P16016674586377948958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145737 (n + 1) * A308090 (n + 1)

end

end A125294.P16016674586377948958

/-! ## A125294.P16720877500175738448

`gcd(A098735(n+1), A261272(n+1))`
-/

namespace A125294.P16720877500175738448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098735 (n + 1)) (A261272 (n + 1))

end

end A125294.P16720877500175738448

/-! ## A125294.P6525359604468507406

`gcd(A193873(n+1)², A175485(n+1))`
-/

namespace A125294.P6525359604468507406
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A193873 (n + 1) ^ 2) (A175485 (n + 1))

end

end A125294.P6525359604468507406

/-! ## A125294.P14728984319126576128

`A308090(2*(n+1))*A308090(n+1)`
-/

namespace A125294.P14728984319126576128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308090 (2 * (n + 1)) * A308090 (n + 1)

end

end A125294.P14728984319126576128

/-! ## A125294.P11727689297500540186

`lcm((n+2)^val(A006530(5*(n+2)), n+2), A145737(n+1))`
-/

namespace A125294.P11727689297500540186
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n + 2) ^ SequenceMachineLib.valuation (A006530 (5 * (n + 2))).toNat (n + 2) : ℤ) (A145737 (n + 1))

end

end A125294.P11727689297500540186

/-! ## A125294.P17363117711259760296

`A145737(n+1)*A145737(A152271(n))`
-/

namespace A125294.P17363117711259760296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145737 (n + 1) * A145737 (A152271 n).toNat

end

end A125294.P17363117711259760296

/-! ## A125294.P8748611055571076616

`A051724(A014973(2*n+3)*A014973(n+2))`
-/

namespace A125294.P8748611055571076616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A014973 (2 * n + 3) * A014973 (n + 2)).toNat

end

end A125294.P8748611055571076616

/-!
# A125295: Number of different non-self-crossing ways of moving a tower of Hanoi from one peg onto another peg.

The programs for A125295, there is no canonical definition to state claims against.
-/

/-! ## A125295.P17195494079573084704

`(a(n-1)+1)*a(n-1)²` with `a(0)=1`
-/

namespace A125295.P17195494079573084704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + 1) * a (n - 1) ^ 2

end

end A125295.P17195494079573084704

/-! ## A125295.P8980307323754723049

`a(n-1)^3+a(n-1)²` with `a(0)=1`
-/

namespace A125295.P8980307323754723049
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) ^ 3 + a (n - 1) ^ 2

end

end A125295.P8980307323754723049

/-! ## A125295.P2734678988843768808

`lcm(a(n-1)+1, a(n-1)²)` with `a(0)=1`
-/

namespace A125295.P2734678988843768808
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (a (n - 1) + 1) (a (n - 1) ^ 2)

end

end A125295.P2734678988843768808

/-!
# A125296: a(1)=1. a(n) is the number of earlier terms of the sequence which are noncomposites (1 or primes) and are coprime to n.

The programs for A125296, there is no canonical definition to state claims against.
-/

/-! ## A125296.P231577174555662757

`A000194(lcm(A077168(n), A280253(2*n+3)))`
-/

namespace A125296.P231577174555662757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (Int.lcm (A077168 n) (A280253 (2 * n + 3)))

end

end A125296.P231577174555662757

/-! ## A125296.P11621707753645843117

`A319951(C(A046108(n+1), A067086(n+1)))`
-/

namespace A125296.P11621707753645843117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (Nat.choose (A046108 (n + 1)).toNat (A067086 (n + 1)).toNat)

end

end A125296.P11621707753645843117

/-! ## A125296.P10511698774813966529

`A329199(A282075(n+1))`
-/

namespace A125296.P10511698774813966529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329199 (A282075 (n + 1)).toNat

end

end A125296.P10511698774813966529

/-! ## A125296.P8894524015699711312

`A086436(lcm(3, A287760(n)))`
-/

namespace A125296.P8894524015699711312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (Int.lcm 3 (A287760 n))

end

end A125296.P8894524015699711312

/-! ## A125296.P17326573359342855203

`A000120(A027642(n)*A365925(n))`
-/

namespace A125296.P17326573359342855203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A027642 n * A365925 n).toNat

end

end A125296.P17326573359342855203

/-!
# A125297: Number of nonempty subsets S of {1,2,3,...,n} such that each member of S divides the sum of all members of S.

The programs for A125297, there is no canonical definition to state claims against.
-/

/-! ## A125297.P10657440308908700232

`eq[2, A006530(A337744(n+2))]`
-/

namespace A125297.P10657440308908700232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A337744 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125297.P10657440308908700232

/-! ## A125297.P13815670923837868852

`eq[A010060(n), A017867(A017876(n+3))]`
-/

namespace A125297.P13815670923837868852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017867 (A017876 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125297.P13815670923837868852

/-! ## A125297.P13277846362775623321

`record[A233390(A052382(3*n+2))]`
-/

namespace A125297.P13277846362775623321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233390 (A052382 (3 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125297.P13277846362775623321

/-! ## A125297.P15582383449652592283

`floor(A352745(A329358(n+1))+atan(n))`
-/

namespace A125297.P15582383449652592283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A352745 (A329358 (n + 1)).toNat : ℝ) + Real.arctan (n : ℝ)⌋

end

end A125297.P15582383449652592283

/-! ## A125297.P2322200613533128877

`A157928(ceil(sqrt(n!)))+A044051(n+1)`
-/

namespace A125297.P2322200613533128877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 ⌈Real.sqrt (Nat.factorial n : ℝ)⌉.toNat + A044051 (n + 1)

end

end A125297.P2322200613533128877

/-!
# A125298: Atomic numbers of elements having a single letter chemical symbol.

The programs for A125298, there is no canonical definition to state claims against.
-/

/-! ## A125298.P1271393522838208876

`eq[1, A126061(n+1)]+1`
-/

namespace A125298.P1271393522838208876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126061 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A125298.P1271393522838208876

/-! ## A125298.P15331501409119645420

`A199344(eq[1, A126061(n+1)])`
-/

namespace A125298.P15331501409119645420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125298.P15331501409119645420

/-! ## A125298.P5034310243680450462

`A199344(lt[A126061(n+1), 2])`
-/

namespace A125298.P5034310243680450462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126061 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199344 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A125298.P5034310243680450462

