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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C047
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A061000: a(n) = Sum_{k=1..n} A060999(k) * k^3.

The programs for A061000, the canonical program `A061000.P6083288921559906356` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061000 has offset 1).

The definition of A061000 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061000.P6083288921559906356

`∑[floor(sqrt((n+1)^6+3))*round((n+1)^3/9)]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A061000

/-- `∑[floor(sqrt((n+1)^6+3))*round((n+1)^3/9)]` -/
def P6083288921559906356.Spec : Prop :=
  ∀ n, P6083288921559906356.a n = A061000 (n + 1)

theorem P6083288921559906356.correct : P6083288921559906356.Spec := by
  intro n
  simp only [A061000, Nat.add_sub_cancel]

end A061000

/-!
# A061001: Partial sums of the squares of the terms of A060999.

The programs for A061001, the canonical program `A061001.P18397551110792185021` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061001 has offset 1).

The definition of A061001 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061001.P18397551110792185021

`∑[round((n+1)^3/9)²]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A061001

/-- `∑[round((n+1)^3/9)²]` -/
def P18397551110792185021.Spec : Prop :=
  ∀ n, P18397551110792185021.a n = A061001 (n + 1)

theorem P18397551110792185021.correct : P18397551110792185021.Spec := by
  intro n
  simp only [A061001, Nat.add_sub_cancel]

end A061001

/-! ## A061001.P8372995811674792084

`∑[A213396(n)²]/9`
-/

namespace A061001.P8372995811674792084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213396 n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 9

end

end A061001.P8372995811674792084

namespace A061001

/-- `∑[A213396(n)²]/9` -/
def P8372995811674792084.Spec : Prop :=
  ∀ n, P8372995811674792084.a n = (A061001 (n + 1) : ℚ)

end A061001

/-! ## A061001.P11677669446885171451

`or(∑[A060999(n)²], char[1])`
-/

namespace A061001.P11677669446885171451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060999 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A061001.P11677669446885171451

namespace A061001

/-- `or(∑[A060999(n)²], char[1])` -/
def P11677669446885171451.Spec : Prop :=
  ∀ n, P11677669446885171451.a n = A061001 (n + 1)

end A061001

/-! ## A061001.P18333123068394816447

`A079979(2*n+1)+∑[A060999(n)²]`
-/

namespace A061001.P18333123068394816447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060999 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079979 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061001.P18333123068394816447

namespace A061001

/-- `A079979(2*n+1)+∑[A060999(n)²]` -/
def P18333123068394816447.Spec : Prop :=
  ∀ n, P18333123068394816447.a n = A061001 (n + 1)

end A061001

/-! ## A061001.P2280571114545185735

`A058343(A001511(n+1))+∑[A060999(n)²]`
-/

namespace A061001.P2280571114545185735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060999 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058343 (A001511 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061001.P2280571114545185735

namespace A061001

/-- `A058343(A001511(n+1))+∑[A060999(n)²]` -/
def P2280571114545185735.Spec : Prop :=
  ∀ n, P2280571114545185735.a n = A061001 (n + 1)

end A061001

/-! ## A061001.P5579197911794502266

`∑[A060999(n)²]*A001511(2*n+1)`
-/

namespace A061001.P5579197911794502266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060999 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A001511 (2 * n + 1)

end

end A061001.P5579197911794502266

namespace A061001

/-- `∑[A060999(n)²]*A001511(2*n+1)` -/
def P5579197911794502266.Spec : Prop :=
  ∀ n, P5579197911794502266.a n = A061001 (n + 1)

end A061001

/-! ## A061001.P1660332137548939731

`∑[A060999(n)²]%A259720(n+1)`
-/

namespace A061001.P1660332137548939731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060999 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A259720 (n + 1))

end

end A061001.P1660332137548939731

namespace A061001

/-- `∑[A060999(n)²]%A259720(n+1)` -/
def P1660332137548939731.Spec : Prop :=
  ∀ n, P1660332137548939731.a n = A061001 (n + 1)

end A061001

/-! ## A061001.P2032887350866205638

`A007318(∑[n])*∑[A060999(n)²]`
-/

namespace A061001.P2032887350866205638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060999 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A061001.P2032887350866205638

namespace A061001

/-- `A007318(∑[n])*∑[A060999(n)²]` -/
def P2032887350866205638.Spec : Prop :=
  ∀ n, P2032887350866205638.a n = A061001 (n + 1)

end A061001

/-!
# A061002: As p runs through the primes >= 5, sequence gives { numerator of Sum_{k=1..p-1} 1/k } / p^2.

The programs for A061002, the canonical program `A061002.P3672038578860956447` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061002 has offset 3).

The definition of A061002 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061002.P3672038578860956447

`A120285(n+3)/A001248(n+3)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A061002

/-- `A120285(n+3)/A001248(n+3)` -/
def P3672038578860956447.Spec : Prop :=
  ∀ n, P3672038578860956447.a n = (A061002 (n + 3) : ℚ)

end A061002

/-! ## A061002.P13385146242208558711

`gcd(A120285(n+3), A120308(n+3))`
-/

namespace A061002.P13385146242208558711
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A120285 (n + 3)) (A120308 (n + 3))

end

end A061002.P13385146242208558711

namespace A061002

/-- `gcd(A120285(n+3), A120308(n+3))` -/
def P13385146242208558711.Spec : Prop :=
  ∀ n, (P13385146242208558711.a n : ℤ) = A061002 (n + 3)

end A061002

/-! ## A061002.P3396274684620599430

`A093600(A066047(n+1))/A066047(n+1)²`
-/

namespace A061002.P3396274684620599430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093600 (A066047 (n + 1)).toNat : ℚ) / (A066047 (n + 1) ^ 2 : ℚ)

end

end A061002.P3396274684620599430

namespace A061002

/-- `A093600(A066047(n+1))/A066047(n+1)²` -/
def P3396274684620599430.Spec : Prop :=
  ∀ n, P3396274684620599430.a n = (A061002 (n + 3) : ℚ)

end A061002

/-! ## A061002.P4697952552782378279

`A093600(A215848(n+1))/A215848(n+1)²`
-/

namespace A061002.P4697952552782378279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093600 (A215848 (n + 1)).toNat : ℚ) / (A215848 (n + 1) ^ 2 : ℚ)

end

end A061002.P4697952552782378279

namespace A061002

/-- `A093600(A215848(n+1))/A215848(n+1)²` -/
def P4697952552782378279.Spec : Prop :=
  ∀ n, P4697952552782378279.a n = (A061002 (n + 3) : ℚ)

end A061002

/-! ## A061002.P17252180444347078336

`A093600(A240710(n+1))/A240710(n+1)²`
-/

namespace A061002.P17252180444347078336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093600 (A240710 (n + 1)).toNat : ℚ) / (A240710 (n + 1) ^ 2 : ℚ)

end

end A061002.P17252180444347078336

namespace A061002

/-- `A093600(A240710(n+1))/A240710(n+1)²` -/
def P17252180444347078336.Spec : Prop :=
  ∀ n, P17252180444347078336.a n = (A061002 (n + 3) : ℚ)

end A061002

/-!
# A061003: Nearest integer to n^5/25.

The programs for A061003, the canonical program `A061003.P2407458788150239903` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061003 has offset 1).

The definition of A061003 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061003.P2407458788150239903

`round((n+1)^5/25)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A061003

/-- `round((n+1)^5/25)` -/
def P2407458788150239903.Spec : Prop :=
  ∀ n, P2407458788150239903.a n = A061003 (n + 1)

theorem P2407458788150239903.correct : P2407458788150239903.Spec := by
  intro n
  simp only [A061003, Nat.add_sub_cancel]

end A061003

/-! ## A061003.P11666432338320986405

`ogf((x+5x^2+x^3+10x^4+x^5+5x^6+x^7)/(1-5x+10x^2-10x^3+5x^4-2x^5+5x^6-10x^7+10x^8-5x^9+x^10))`
-/

namespace A061003.P11666432338320986405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 5, 1, 10, 1, 5, 1] [1, -5, 10, -10, 5, -2, 5, -10, 10, -5, 1] n

end

end A061003.P11666432338320986405

namespace A061003

/-- `ogf((x+5x^2+x^3+10x^4+x^5+5x^6+x^7)/(1-5x+10x^2-10x^3+5x^4-2x^5+5x^6-10x^7+10x^8-5x^9+x^10))` -/
def P11666432338320986405.Spec : Prop :=
  ∀ n, P11666432338320986405.a n = A061003 (n + 1)

end A061003

/-! ## A061003.P2586573680112698808

`Δ[floor(A000539(n)/25)]`
-/

namespace A061003.P2586573680112698808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000539 n : ℚ) / 25⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061003.P2586573680112698808

namespace A061003

/-- `Δ[floor(A000539(n)/25)]` -/
def P2586573680112698808.Spec : Prop :=
  ∀ n, P2586573680112698808.a n = A061003 (n + 1)

end A061003

/-! ## A061003.P12813412102617682726

`∑[round(A002061(A002061(n+1))/5)]`
-/

namespace A061003.P12813412102617682726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A002061 (A002061 (n + 1)).toNat : ℚ) / 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061003.P12813412102617682726

namespace A061003

/-- `∑[round(A002061(A002061(n+1))/5)]` -/
def P12813412102617682726.Spec : Prop :=
  ∀ n, P12813412102617682726.a n = A061003 (n + 1)

end A061003

/-! ## A061003.P12546159638246323659

`∑[A288156(∑[2*n*n²+n]+1)]`
-/

namespace A061003.P12546159638246323659
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n * n ^ 2) + n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288156 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061003.P12546159638246323659

namespace A061003

/-- `∑[A288156(∑[2*n*n²+n]+1)]` -/
def P12546159638246323659.Spec : Prop :=
  ∀ n, P12546159638246323659.a n = A061003 (n + 1)

end A061003

/-!
# A061004: Nearest integer to n^6/36.

The programs for A061004, the canonical program `A061004.P372726031514278398` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061004 has offset 1).

The definition of A061004 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061004.P372726031514278398

`ogf((2x+10x^2+32x^3+32x^4+32x^5+10x^6+2x^7)/(1-5x+9x^2-6x^3+6x^7-9x^8+5x^9-x^10))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A061004

/-- `ogf((2x+10x^2+32x^3+32x^4+32x^5+10x^6+2x^7)/(1-5x+9x^2-6x^3+6x^7-9x^8+5x^9-x^10))` -/
def P372726031514278398.Spec : Prop :=
  ∀ n, P372726031514278398.a n = A061004 (n + 1)

theorem P372726031514278398.correct : P372726031514278398.Spec := by
  intro n
  simp only [A061004, Nat.add_sub_cancel]

end A061004

/-! ## A061004.P5417499072161502293

`round((n+1)^6/36)`
-/

namespace A061004.P5417499072161502293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 1) ^ 6 : ℚ) / 36)

end

end A061004.P5417499072161502293

namespace A061004

/-- `round((n+1)^6/36)` -/
def P5417499072161502293.Spec : Prop :=
  ∀ n, P5417499072161502293.a n = A061004 (n + 1)

end A061004

/-! ## A061004.P2874366624482897131

`2*A061005(n+1)`
-/

namespace A061004.P2874366624482897131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061005 (n + 1)

end

end A061004.P2874366624482897131

namespace A061004

/-- `2*A061005(n+1)` -/
def P2874366624482897131.Spec : Prop :=
  ∀ n, P2874366624482897131.a n = A061004 (n + 1)

end A061004

/-! ## A061004.P6430263398476855386

`∑[round(A022522(n)/36)]`
-/

namespace A061004.P6430263398476855386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A022522 n : ℚ) / 36)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061004.P6430263398476855386

namespace A061004

/-- `∑[round(A022522(n)/36)]` -/
def P6430263398476855386.Spec : Prop :=
  ∀ n, P6430263398476855386.a n = A061004 (n + 1)

end A061004

/-! ## A061004.P846895452449685330

`A061005(A000027(n+1))+A061005(n+1)`
-/

namespace A061004.P846895452449685330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061005 (A000027 (n + 1)).toNat + A061005 (n + 1)

end

end A061004.P846895452449685330

namespace A061004

/-- `A061005(A000027(n+1))+A061005(n+1)` -/
def P846895452449685330.Spec : Prop :=
  ∀ n, P846895452449685330.a n = A061004 (n + 1)

end A061004

/-! ## A061004.P13053800595403317019

`A061005(A028310(n+1))+A061005(n+1)`
-/

namespace A061004.P13053800595403317019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061005 (A028310 (n + 1)).toNat + A061005 (n + 1)

end

end A061004.P13053800595403317019

namespace A061004

/-- `A061005(A028310(n+1))+A061005(n+1)` -/
def P13053800595403317019.Spec : Prop :=
  ∀ n, P13053800595403317019.a n = A061004 (n + 1)

end A061004

/-! ## A061004.P16144786251144253689

`A061005(n+1)+A061005(abs(A061019(n+1)))`
-/

namespace A061004.P16144786251144253689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061005 (n + 1) + A061005 |A061019 (n + 1)|.toNat

end

end A061004.P16144786251144253689

namespace A061004

/-- `A061005(n+1)+A061005(abs(A061019(n+1)))` -/
def P16144786251144253689.Spec : Prop :=
  ∀ n, P16144786251144253689.a n = A061004 (n + 1)

end A061004

/-! ## A061004.P11530664688732087740

`A026928(A056220(n+1))`
-/

namespace A061004.P11530664688732087740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026928 (A056220 (n + 1)).toNat

end

end A061004.P11530664688732087740

namespace A061004

/-- `A026928(A056220(n+1))` -/
def P11530664688732087740.Spec : Prop :=
  ∀ n, P11530664688732087740.a n = A061004 (n + 1)

end A061004

/-! ## A061004.P17366101208513177853

`A309712(A004273((n+1)²))`
-/

namespace A061004.P17366101208513177853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309712 (A004273 ((n + 1) ^ 2)).toNat

end

end A061004.P17366101208513177853

namespace A061004

/-- `A309712(A004273((n+1)²))` -/
def P17366101208513177853.Spec : Prop :=
  ∀ n, P17366101208513177853.a n = A061004 (n + 1)

end A061004

/-!
# A061005: (Nearest integer to n^6/36) / 2.

The programs for A061005, the canonical program `A061005.P5422000602343711254` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061005 has offset 1).

The definition of A061005 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061005.P5422000602343711254

`ogf((x+5x^2+16x^3+16x^4+16x^5+5x^6+x^7)/(1-5x+9x^2-6x^3+6x^7-9x^8+5x^9-x^10))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A061005

/-- `ogf((x+5x^2+16x^3+16x^4+16x^5+5x^6+x^7)/(1-5x+9x^2-6x^3+6x^7-9x^8+5x^9-x^10))` -/
def P5422000602343711254.Spec : Prop :=
  ∀ n, P5422000602343711254.a n = A061005 (n + 1)

theorem P5422000602343711254.correct : P5422000602343711254.Spec := by
  intro n
  simp only [A061005, Nat.add_sub_cancel]

end A061005

/-! ## A061005.P2141142227362209273

`round((n+1)^6/72)`
-/

namespace A061005.P2141142227362209273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 1) ^ 6 : ℚ) / 72)

end

end A061005.P2141142227362209273

namespace A061005

/-- `round((n+1)^6/72)` -/
def P2141142227362209273.Spec : Prop :=
  ∀ n, P2141142227362209273.a n = A061005 (n + 1)

end A061005

/-! ## A061005.P15713173619557972775

`A061004(n+1)/2`
-/

namespace A061005.P15713173619557972775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061004 (n + 1) : ℚ) / 2

end

end A061005.P15713173619557972775

namespace A061005

/-- `A061004(n+1)/2` -/
def P15713173619557972775.Spec : Prop :=
  ∀ n, P15713173619557972775.a n = (A061005 (n + 1) : ℚ)

end A061005

/-! ## A061005.P12942733384434611162

`∑[round(A022522(n)/72)]`
-/

namespace A061005.P12942733384434611162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A022522 n : ℚ) / 72)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061005.P12942733384434611162

namespace A061005

/-- `∑[round(A022522(n)/72)]` -/
def P12942733384434611162.Spec : Prop :=
  ∀ n, P12942733384434611162.a n = A061005 (n + 1)

end A061005

/-! ## A061005.P1422173501463499949

`A026928(A056220(n+1))/2`
-/

namespace A061005.P1422173501463499949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026928 (A056220 (n + 1)).toNat : ℚ) / 2

end

end A061005.P1422173501463499949

namespace A061005

/-- `A026928(A056220(n+1))/2` -/
def P1422173501463499949.Spec : Prop :=
  ∀ n, P1422173501463499949.a n = (A061005 (n + 1) : ℚ)

end A061005

/-! ## A061005.P6955181648756542251

`A309712(A004273((n+1)²))/2`
-/

namespace A061005.P6955181648756542251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309712 (A004273 ((n + 1) ^ 2)).toNat : ℚ) / 2

end

end A061005.P6955181648756542251

namespace A061005

/-- `A309712(A004273((n+1)²))/2` -/
def P6955181648756542251.Spec : Prop :=
  ∀ n, P6955181648756542251.a n = (A061005 (n + 1) : ℚ)

end A061005

/-!
# A061006: a(n) = (n-1)! mod n.

The programs for A061006, the canonical program `A061006.P10740485936205690005` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061006 has offset 1).

The definition of A061006 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!%(n+1)` (program `A061006.P10740485936205690005`, by `A061006.P10740485936205690005.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A061006.P10740485936205690005

`n!%(n+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A061006

/-- `n!%(n+1)` -/
def P10740485936205690005.Spec : Prop :=
  ∀ n, (P10740485936205690005.a n : ℤ) = A061006 (n + 1)

theorem P10740485936205690005.correct : P10740485936205690005.Spec := by
  intro n
  simp only [A061006, Nat.add_sub_cancel]

end A061006

/-! ## A061006.P4460727191720600248

`floor(sqrt(A072230(n+1)))`
-/

namespace A061006.P4460727191720600248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A072230 (n + 1))

end

end A061006.P4460727191720600248

namespace A061006

/-- `floor(sqrt(A072230(n+1)))` -/
def P4460727191720600248.Spec : Prop :=
  ∀ n, P4460727191720600248.a n = A061006 (n + 1)

end A061006

/-! ## A061006.P11585002722225028212

`and(n, -A061007(n+1))`
-/

namespace A061006.P11585002722225028212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-A061007 (n + 1))

end

end A061006.P11585002722225028212

namespace A061006

/-- `and(n, -A061007(n+1))` -/
def P11585002722225028212.Spec : Prop :=
  ∀ n, P11585002722225028212.a n = A061006 (n + 1)

end A061006

/-! ## A061006.P7718047759327038027

`and(n, A055976(n+1)-1)`
-/

namespace A061006.P7718047759327038027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A055976 (n + 1) - 1)

end

end A061006.P7718047759327038027

namespace A061006

/-- `and(n, A055976(n+1)-1)` -/
def P7718047759327038027.Spec : Prop :=
  ∀ n, P7718047759327038027.a n = A061006 (n + 1)

end A061006

/-! ## A061006.P1909642855000031275

`n-floor(n/A014973(n+1))`
-/

namespace A061006.P1909642855000031275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(n : ℚ) / (A014973 (n + 1) : ℚ)⌋

end

end A061006.P1909642855000031275

namespace A061006

/-- `n-floor(n/A014973(n+1))` -/
def P1909642855000031275.Spec : Prop :=
  ∀ n, P1909642855000031275.a n = A061006 (n + 1)

end A061006

/-! ## A061006.P16946774543983218145

`and(n, floor(ϕ/(n-2-A014963(n+1))))`
-/

namespace A061006.P16946774543983218145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ⌊Real.goldenRatio / ((n : ℤ) - 2 - A014963 (n + 1) : ℝ)⌋

end

end A061006.P16946774543983218145

namespace A061006

/-- `and(n, floor(ϕ/(n-2-A014963(n+1))))` -/
def P16946774543983218145.Spec : Prop :=
  ∀ n, P16946774543983218145.a n = A061006 (n + 1)

end A061006

/-! ## A061006.P18057251573475334356

`floor(∑{e}[n+1, #]^(4-n))*A033879(n+1)`
-/

namespace A061006.P18057251573475334356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℚ) ^ (4 - (n : ℤ) : ℤ)⌋ * A033879 (n + 1)

end

end A061006.P18057251573475334356

namespace A061006

/-- `floor(∑{e}[n+1, #]^(4-n))*A033879(n+1)` -/
def P18057251573475334356.Spec : Prop :=
  ∀ n, P18057251573475334356.a n = A061006 (n + 1)

end A061006

/-! ## A061006.P3097741972754373646

`A166260(A063659(n+1))`
-/

namespace A061006.P3097741972754373646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166260 (A063659 (n + 1)).toNat

end

end A061006.P3097741972754373646

namespace A061006

/-- `A166260(A063659(n+1))` -/
def P3097741972754373646.Spec : Prop :=
  ∀ n, P3097741972754373646.a n = A061006 (n + 1)

end A061006

/-! ## A061006.P11451478657321737473

`A166260(A384054(n+1))`
-/

namespace A061006.P11451478657321737473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166260 (A384054 (n + 1)).toNat

end

end A061006.P11451478657321737473

namespace A061006

/-- `A166260(A384054(n+1))` -/
def P11451478657321737473.Spec : Prop :=
  ∀ n, P11451478657321737473.a n = A061006 (n + 1)

end A061006

/-! ## A061006.P10568021917251585507

`A166260(A384249(n+1))`
-/

namespace A061006.P10568021917251585507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166260 (A384249 (n + 1)).toNat

end

end A061006.P10568021917251585507

namespace A061006

/-- `A166260(A384249(n+1))` -/
def P10568021917251585507.Spec : Prop :=
  ∀ n, P10568021917251585507.a n = A061006 (n + 1)

end A061006

/-! ## A061006.P12617685683411956868

`1-A181569(A028310(n))+n`
-/

namespace A061006.P12617685683411956868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A181569 (A028310 n).toNat + (n : ℤ)

end

end A061006.P12617685683411956868

namespace A061006

/-- `1-A181569(A028310(n))+n` -/
def P12617685683411956868.Spec : Prop :=
  ∀ n, P12617685683411956868.a n = A061006 (n + 1)

end A061006

/-! ## A061006.P1452048581337108866

`A014973(n+1)-A267871(n)`
-/

namespace A061006.P1452048581337108866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014973 (n + 1) - A267871 n

end

end A061006.P1452048581337108866

namespace A061006

/-- `A014973(n+1)-A267871(n)` -/
def P1452048581337108866.Spec : Prop :=
  ∀ n, P1452048581337108866.a n = A061006 (n + 1)

end A061006

/-! ## A061006.P1760896019492018385

`A061007(n+1)*A131516(n)`
-/

namespace A061006.P1760896019492018385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061007 (n + 1) * A131516 n

end

end A061006.P1760896019492018385

namespace A061006

/-- `A061007(n+1)*A131516(n)` -/
def P1760896019492018385.Spec : Prop :=
  ∀ n, P1760896019492018385.a n = A061006 (n + 1)

end A061006

/-! ## A061006.P16790018812477130959

`A061007(n+1)*A186421(n)`
-/

namespace A061006.P16790018812477130959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061007 (n + 1) * A186421 n

end

end A061006.P16790018812477130959

namespace A061006

/-- `A061007(n+1)*A186421(n)` -/
def P16790018812477130959.Spec : Prop :=
  ∀ n, P16790018812477130959.a n = A061006 (n + 1)

end A061006

/-! ## A061006.P7296940738617879102

`A061007(n+1)*A249151(n)`
-/

namespace A061006.P7296940738617879102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061007 (n + 1) * A249151 n

end

end A061006.P7296940738617879102

namespace A061006

/-- `A061007(n+1)*A249151(n)` -/
def P7296940738617879102.Spec : Prop :=
  ∀ n, P7296940738617879102.a n = A061006 (n + 1)

end A061006

/-! ## A061006.P12685724178302826468

`A061007(n+1)*A374840(n)`
-/

namespace A061006.P12685724178302826468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061007 (n + 1) * A374840 n

end

end A061006.P12685724178302826468

namespace A061006

/-- `A061007(n+1)*A374840(n)` -/
def P12685724178302826468.Spec : Prop :=
  ∀ n, P12685724178302826468.a n = A061006 (n + 1)

end A061006

/-! ## A061006.P15105969280144929224

`A061007(n+1)*A375277(n)`
-/

namespace A061006.P15105969280144929224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061007 (n + 1) * A375277 n

end

end A061006.P15105969280144929224

namespace A061006

/-- `A061007(n+1)*A375277(n)` -/
def P15105969280144929224.Spec : Prop :=
  ∀ n, P15105969280144929224.a n = A061006 (n + 1)

end A061006

/-! ## A061006.P8688867360350274143

`A072230(n+1)/A199343(n)`
-/

namespace A061006.P8688867360350274143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072230 (n + 1) : ℚ) / (A199343 n : ℚ)

end

end A061006.P8688867360350274143

namespace A061006

/-- `A072230(n+1)/A199343(n)` -/
def P8688867360350274143.Spec : Prop :=
  ∀ n, P8688867360350274143.a n = (A061006 (n + 1) : ℚ)

end A061006

/-! ## A061006.P6784169709025281929

`A072230(n+1)/A199344(n)`
-/

namespace A061006.P6784169709025281929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072230 (n + 1) : ℚ) / (A199344 n : ℚ)

end

end A061006.P6784169709025281929

namespace A061006

/-- `A072230(n+1)/A199344(n)` -/
def P6784169709025281929.Spec : Prop :=
  ∀ n, P6784169709025281929.a n = (A061006 (n + 1) : ℚ)

end A061006

/-! ## A061006.P938562526855223431

`A072230(n+1)/A222257(n)`
-/

namespace A061006.P938562526855223431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072230 (n + 1) : ℚ) / (A222257 n : ℚ)

end

end A061006.P938562526855223431

namespace A061006

/-- `A072230(n+1)/A222257(n)` -/
def P938562526855223431.Spec : Prop :=
  ∀ n, P938562526855223431.a n = (A061006 (n + 1) : ℚ)

end A061006

/-!
# A061007: a(n) = -(n-1)! mod n.

The programs for A061007, the canonical program `A061007.P1649170130193805129` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061007 has offset 1).

The definition of A061007 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061007.P1649170130193805129

`floor(∑{e}[n+1, #]^(4-n))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A061007

/-- `floor(∑{e}[n+1, #]^(4-n))` -/
def P1649170130193805129.Spec : Prop :=
  ∀ n, P1649170130193805129.a n = A061007 (n + 1)

theorem P1649170130193805129.correct : P1649170130193805129.Spec := by
  intro n
  simp only [A061007, Nat.add_sub_cancel]

end A061007

/-! ## A061007.P8023396824824629130

`round(∑{e}[n+1, #]^(ϕ-(n-2)))`
-/

namespace A061007.P8023396824824629130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ) ^ (Real.goldenRatio - ((n : ℤ) - 2 : ℝ)))

end

end A061007.P8023396824824629130

namespace A061007

/-- `round(∑{e}[n+1, #]^(ϕ-(n-2)))` -/
def P8023396824824629130.Spec : Prop :=
  ∀ n, P8023396824824629130.a n = A061007 (n + 1)

end A061007

/-! ## A061007.P2586709298076665570

`C(2, A347099(n+1)²)`
-/

namespace A061007.P2586709298076665570
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A347099 (n + 1) ^ 2).toNat

end

end A061007.P2586709298076665570

namespace A061007

/-- `C(2, A347099(n+1)²)` -/
def P2586709298076665570.Spec : Prop :=
  ∀ n, (P2586709298076665570.a n : ℤ) = A061007 (n + 1)

end A061007

/-! ## A061007.P11154338959294000581

`A394678(n+1)%(n+2)`
-/

namespace A061007.P11154338959294000581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A394678 (n + 1)) (n + 2 : ℤ)

end

end A061007.P11154338959294000581

namespace A061007

/-- `A394678(n+1)%(n+2)` -/
def P11154338959294000581.Spec : Prop :=
  ∀ n, P11154338959294000581.a n = A061007 (n + 1)

end A061007

/-! ## A061007.P12660586582463297126

`floor(A001222(n+1)^(4-n))`
-/

namespace A061007.P12660586582463297126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001222 (n + 1) : ℚ) ^ (4 - (n : ℤ) : ℤ)⌋

end

end A061007.P12660586582463297126

namespace A061007

/-- `floor(A001222(n+1)^(4-n))` -/
def P12660586582463297126.Spec : Prop :=
  ∀ n, P12660586582463297126.a n = A061007 (n + 1)

theorem P12660586582463297126.correct : P12660586582463297126.Spec := by
  intro n
  simp only [A061007, Nat.add_sub_cancel, A061007.P12660586582463297126.a, A061007.P1649170130193805129.f1, A061007.P1649170130193805129.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A061007

/-! ## A061007.P1234248920868463554

`a(C(2, A000005(n+1)))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A061007.P1234248920868463554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 2] fun n a =>
  a (Nat.choose 2 (A000005 (n + 1)).toNat)

end

end A061007.P1234248920868463554

namespace A061007

/-- `a(C(2, A000005(n+1)))` -/
def P1234248920868463554.Spec : Prop :=
  ∀ n, (P1234248920868463554.a n : ℤ) = A061007 (n + 1)

end A061007

/-! ## A061007.P5455954990341514777

`a(C(3, A007425(n+1)))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A061007.P5455954990341514777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 2] fun n a =>
  a (Nat.choose 3 (A007425 (n + 1)).toNat)

end

end A061007.P5455954990341514777

namespace A061007

/-- `a(C(3, A007425(n+1)))` -/
def P5455954990341514777.Spec : Prop :=
  ∀ n, (P5455954990341514777.a n : ℤ) = A061007 (n + 1)

end A061007

/-! ## A061007.P10763073704380767641

`a(C(A000010(n+1), n))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A061007.P10763073704380767641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 2] fun n a =>
  a (Nat.choose (A000010 (n + 1)).toNat n)

end

end A061007.P10763073704380767641

namespace A061007

/-- `a(C(A000010(n+1), n))` -/
def P10763073704380767641.Spec : Prop :=
  ∀ n, (P10763073704380767641.a n : ℤ) = A061007 (n + 1)

end A061007

/-! ## A061007.P16178165912275668113

`a(C(n+2, A000203(n+1)))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A061007.P16178165912275668113
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 2] fun n a =>
  a (Nat.choose (n + 2) (A000203 (n + 1)).toNat)

end

end A061007.P16178165912275668113

namespace A061007

/-- `a(C(n+2, A000203(n+1)))` -/
def P16178165912275668113.Spec : Prop :=
  ∀ n, (P16178165912275668113.a n : ℤ) = A061007 (n + 1)

end A061007

/-! ## A061007.P17768995897500957488

`A029832(A001616(n+1))`
-/

namespace A061007.P17768995897500957488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029832 (A001616 (n + 1)).toNat

end

end A061007.P17768995897500957488

namespace A061007

/-- `A029832(A001616(n+1))` -/
def P17768995897500957488.Spec : Prop :=
  ∀ n, P17768995897500957488.a n = A061007 (n + 1)

end A061007

/-! ## A061007.P15933543175323657833

`A105661(A100994(n+1))`
-/

namespace A061007.P15933543175323657833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105661 (A100994 (n + 1)).toNat

end

end A061007.P15933543175323657833

namespace A061007

/-- `A105661(A100994(n+1))` -/
def P15933543175323657833.Spec : Prop :=
  ∀ n, P15933543175323657833.a n = A061007 (n + 1)

end A061007

/-! ## A061007.P18290010512488931790

`A091227(A117658(n+1))`
-/

namespace A061007.P18290010512488931790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091227 (A117658 (n + 1)).toNat

end

end A061007.P18290010512488931790

namespace A061007

/-- `A091227(A117658(n+1))` -/
def P18290010512488931790.Spec : Prop :=
  ∀ n, P18290010512488931790.a n = A061007 (n + 1)

end A061007

/-! ## A061007.P10983266141027083826

`A061006(n+1)/A249151(n)`
-/

namespace A061007.P10983266141027083826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061006 (n + 1) : ℚ) / (A249151 n : ℚ)

end

end A061007.P10983266141027083826

namespace A061007

/-- `A061006(n+1)/A249151(n)` -/
def P10983266141027083826.Spec : Prop :=
  ∀ n, P10983266141027083826.a n = (A061007 (n + 1) : ℚ)

end A061007

/-! ## A061007.P10123718227341493793

`A061006(n+1)/A374840(n)`
-/

namespace A061007.P10123718227341493793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061006 (n + 1) : ℚ) / (A374840 n : ℚ)

end

end A061007.P10123718227341493793

namespace A061007

/-- `A061006(n+1)/A374840(n)` -/
def P10123718227341493793.Spec : Prop :=
  ∀ n, P10123718227341493793.a n = (A061007 (n + 1) : ℚ)

end A061007

/-! ## A061007.P9031204430322073813

`A061006(n+1)/A375277(n)`
-/

namespace A061007.P9031204430322073813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061006 (n + 1) : ℚ) / (A375277 n : ℚ)

end

end A061007.P9031204430322073813

namespace A061007

/-- `A061006(n+1)/A375277(n)` -/
def P9031204430322073813.Spec : Prop :=
  ∀ n, P9031204430322073813.a n = (A061007 (n + 1) : ℚ)

end A061007

/-! ## A061007.P513701000450349338

`A105661(n+1)%A000689(n)`
-/

namespace A061007.P513701000450349338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105661 (n + 1)) (A000689 n)

end

end A061007.P513701000450349338

namespace A061007

/-- `A105661(n+1)%A000689(n)` -/
def P513701000450349338.Spec : Prop :=
  ∀ n, P513701000450349338.a n = A061007 (n + 1)

end A061007

/-! ## A061007.P15801682763604510235

`A175126(C(A001414(n+1), n))`
-/

namespace A061007.P15801682763604510235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (Nat.choose (A001414 (n + 1)).toNat n)

end

end A061007.P15801682763604510235

namespace A061007

/-- `A175126(C(A001414(n+1), n))` -/
def P15801682763604510235.Spec : Prop :=
  ∀ n, P15801682763604510235.a n = A061007 (n + 1)

end A061007

/-! ## A061007.P17441430506874874754

`and(A002061(n), A105661(n+1))`
-/

namespace A061007.P17441430506874874754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002061 n) (A105661 (n + 1))

end

end A061007.P17441430506874874754

namespace A061007

/-- `and(A002061(n), A105661(n+1))` -/
def P17441430506874874754.Spec : Prop :=
  ∀ n, P17441430506874874754.a n = A061007 (n + 1)

end A061007

/-! ## A061007.P189545911869310991

`and(A004538(n), A105661(n+1))`
-/

namespace A061007.P189545911869310991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004538 n) (A105661 (n + 1))

end

end A061007.P189545911869310991

namespace A061007

/-- `and(A004538(n), A105661(n+1))` -/
def P189545911869310991.Spec : Prop :=
  ∀ n, P189545911869310991.a n = A061007 (n + 1)

end A061007

/-! ## A061007.P991643068515160347

`and(A005894(n), A105661(n+1))`
-/

namespace A061007.P991643068515160347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005894 n) (A105661 (n + 1))

end

end A061007.P991643068515160347

namespace A061007

/-- `and(A005894(n), A105661(n+1))` -/
def P991643068515160347.Spec : Prop :=
  ∀ n, P991643068515160347.a n = A061007 (n + 1)

end A061007

/-!
# A061008: a(n) = Sum_{j=1..n} (-(n-1)! mod n).

The programs for A061008, the canonical program `A061008.P3844537591406935097` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061008 has offset 1).

The definition of A061008 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061007, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A061008.P2001688553731546692

`A061009(n+1)+2`
-/

namespace A061008.P2001688553731546692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061009 (n + 1) + 2

end

end A061008.P2001688553731546692

namespace A061008

/-- `A061009(n+1)+2` -/
def P2001688553731546692.Spec : Prop :=
  ∀ n, P2001688553731546692.a n = A061008 (n + 1)

theorem P2001688553731546692.correct : P2001688553731546692.Spec := by
  intro n
  simp only [A061008, Nat.add_sub_cancel, A061008.P2001688553731546692.a, A061008.P3844537591406935097.a, A061007, A061007.P1649170130193805129.f1, A061007.P1649170130193805129.a, A061009, A061009.P3866037910941706690.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A061008

/-! ## A061008.P3844537591406935097

`a(n-1)+A061007(n+1)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A061008

/-- `a(n-1)+A061007(n+1)` -/
def P3844537591406935097.Spec : Prop :=
  ∀ n, P3844537591406935097.a n = A061008 (n + 1)

theorem P3844537591406935097.correct : P3844537591406935097.Spec := by
  intro n
  simp only [A061008, Nat.add_sub_cancel]

end A061008

/-! ## A061008.P12642350697616820104

`∑[floor(∑{e}[n+1, #]^(4-n))]`
-/

namespace A061008.P12642350697616820104
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℚ) ^ (4 - (n : ℤ) : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061008.P12642350697616820104

namespace A061008

/-- `∑[floor(∑{e}[n+1, #]^(4-n))]` -/
def P12642350697616820104.Spec : Prop :=
  ∀ n, P12642350697616820104.a n = A061008 (n + 1)

end A061008

/-! ## A061008.P17196583068645797092

`∑[A061007(n+1)]`
-/

namespace A061008.P17196583068645797092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061008.P17196583068645797092

namespace A061008

/-- `∑[A061007(n+1)]` -/
def P17196583068645797092.Spec : Prop :=
  ∀ n, P17196583068645797092.a n = A061008 (n + 1)

end A061008

/-! ## A061008.P5754281971150634162

`∑[floor(A001222(n+1)^(4-n))]`
-/

namespace A061008.P5754281971150634162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001222 (n + 1) : ℚ) ^ (4 - (n : ℤ) : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061008.P5754281971150634162

namespace A061008

/-- `∑[floor(A001222(n+1)^(4-n))]` -/
def P5754281971150634162.Spec : Prop :=
  ∀ n, P5754281971150634162.a n = A061008 (n + 1)

end A061008

/-! ## A061008.P17143302241194789892

`n+1-abs(A065855(n+1)-1)`
-/

namespace A061008.P17143302241194789892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - |A065855 (n + 1) - 1|

end

end A061008.P17143302241194789892

namespace A061008

/-- `n+1-abs(A065855(n+1)-1)` -/
def P17143302241194789892.Spec : Prop :=
  ∀ n, P17143302241194789892.a n = A061008 (n + 1)

end A061008

/-! ## A061008.P8145247932918950874

`∑[abs(a(C(2, A000005(n+1))))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A061008.P8145247932918950874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 2] fun n f1 =>
  f1 (Nat.choose 2 (A000005 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061008.P8145247932918950874

namespace A061008

/-- `∑[abs(a(C(2, A000005(n+1))))]` -/
def P8145247932918950874.Spec : Prop :=
  ∀ n, (P8145247932918950874.a n : ℤ) = A061008 (n + 1)

end A061008

/-! ## A061008.P18296933000487922705

`∑[A029832(A001616(n+1))]`
-/

namespace A061008.P18296933000487922705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029832 (A001616 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061008.P18296933000487922705

namespace A061008

/-- `∑[A029832(A001616(n+1))]` -/
def P18296933000487922705.Spec : Prop :=
  ∀ n, P18296933000487922705.a n = A061008 (n + 1)

end A061008

/-! ## A061008.P2998300943190710663

`A383259(n+1)+A158515(n)`
-/

namespace A061008.P2998300943190710663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383259 (n + 1) + A158515 n

end

end A061008.P2998300943190710663

namespace A061008

/-- `A383259(n+1)+A158515(n)` -/
def P2998300943190710663.Spec : Prop :=
  ∀ n, P2998300943190710663.a n = A061008 (n + 1)

end A061008

/-! ## A061008.P4849351575930838086

`∑[A175126(C(A001414(n+1), n))]`
-/

namespace A061008.P4849351575930838086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (Nat.choose (A001414 (n + 1)).toNat n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061008.P4849351575930838086

namespace A061008

/-- `∑[A175126(C(A001414(n+1), n))]` -/
def P4849351575930838086.Spec : Prop :=
  ∀ n, P4849351575930838086.a n = A061008 (n + 1)

end A061008

/-! ## A061008.P8542633229734664473

`A000720(n+1)+2%A028310(n)`
-/

namespace A061008.P8542633229734664473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + Int.tmod 2 (A028310 n)

end

end A061008.P8542633229734664473

namespace A061008

/-- `A000720(n+1)+2%A028310(n)` -/
def P8542633229734664473.Spec : Prop :=
  ∀ n, P8542633229734664473.a n = A061008 (n + 1)

end A061008

/-! ## A061008.P14514910170772835133

`∑[and(A000188(n+1), A105661(n+1))]`
-/

namespace A061008.P14514910170772835133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000188 (n + 1)) (A105661 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061008.P14514910170772835133

namespace A061008

/-- `∑[and(A000188(n+1), A105661(n+1))]` -/
def P14514910170772835133.Spec : Prop :=
  ∀ n, P14514910170772835133.a n = A061008 (n + 1)

end A061008

/-! ## A061008.P741769896046477544

`∑[A056051(n+2)]-A056051(n+2)+n`
-/

namespace A061008.P741769896046477544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056051 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A056051 (n + 2) + (n : ℤ)

end

end A061008.P741769896046477544

namespace A061008

/-- `∑[A056051(n+2)]-A056051(n+2)+n` -/
def P741769896046477544.Spec : Prop :=
  ∀ n, P741769896046477544.a n = A061008 (n + 1)

end A061008

/-! ## A061008.P7997971908961390599

`∑[A000045(a(C(2, A000005(n+1))))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A061008.P7997971908961390599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 2] fun n f1 =>
  A000045 (f1 (Nat.choose 2 (A000005 (n + 1)).toNat)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061008.P7997971908961390599

namespace A061008

/-- `∑[A000045(a(C(2, A000005(n+1))))]` -/
def P7997971908961390599.Spec : Prop :=
  ∀ n, P7997971908961390599.a n = A061008 (n + 1)

end A061008

/-! ## A061008.P786921192842017638

`A326178(A326178(n)+1-A062298(n+1))`
-/

namespace A061008.P786921192842017638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (A326178 n + (1 - A062298 (n + 1))).toNat

end

end A061008.P786921192842017638

namespace A061008

/-- `A326178(A326178(n)+1-A062298(n+1))` -/
def P786921192842017638.Spec : Prop :=
  ∀ n, P786921192842017638.a n = A061008 (n + 1)

end A061008

/-! ## A061008.P9868144782034211677

`A000720(n+1)+2*A057427(A065855(n+1))`
-/

namespace A061008.P9868144782034211677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + 2 * A057427 (A065855 (n + 1)).toNat

end

end A061008.P9868144782034211677

namespace A061008

/-- `A000720(n+1)+2*A057427(A065855(n+1))` -/
def P9868144782034211677.Spec : Prop :=
  ∀ n, P9868144782034211677.a n = A061008 (n + 1)

end A061008

/-! ## A061008.P14703877782739633920

`∑[A105661(A080785(n+1))]`
-/

namespace A061008.P14703877782739633920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105661 (A080785 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061008.P14703877782739633920

namespace A061008

/-- `∑[A105661(A080785(n+1))]` -/
def P14703877782739633920.Spec : Prop :=
  ∀ n, P14703877782739633920.a n = A061008 (n + 1)

end A061008

/-! ## A061008.P7328936771800708582

`∑[A105661(A080512(n+1))]`
-/

namespace A061008.P7328936771800708582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105661 (A080512 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061008.P7328936771800708582

namespace A061008

/-- `∑[A105661(A080512(n+1))]` -/
def P7328936771800708582.Spec : Prop :=
  ∀ n, P7328936771800708582.a n = A061008 (n + 1)

end A061008

/-! ## A061008.P4869889069732849295

`a(n-1)+C(2, C(a(n-1), A014963(n+1)))` with `a(0)=0`
-/

namespace A061008.P4869889069732849295
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Nat.choose 2 (Nat.choose (a (n - 1)) (A014963 (n + 1)).toNat)

end

end A061008.P4869889069732849295

namespace A061008

/-- `a(n-1)+C(2, C(a(n-1), A014963(n+1)))` -/
def P4869889069732849295.Spec : Prop :=
  ∀ n, (P4869889069732849295.a n : ℤ) = A061008 (n + 1)

end A061008

/-! ## A061008.P7323738406946369398

`∑[A007956(n+1)%A038387(n+1)]`
-/

namespace A061008.P7323738406946369398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007956 (n + 1)) (A038387 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061008.P7323738406946369398

namespace A061008

/-- `∑[A007956(n+1)%A038387(n+1)]` -/
def P7323738406946369398.Spec : Prop :=
  ∀ n, P7323738406946369398.a n = A061008 (n + 1)

end A061008

/-!
# A061009: a(n) = -2 + Sum_{j=1..n} (-(n-1)!) mod n.

The programs for A061009, the canonical program `A061009.P3866037910941706690` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061009 has offset 1).

The definition of A061009 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061008, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A061009.P3866037910941706690

`A061008(n+1)-2`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A061009

/-- `A061008(n+1)-2` -/
def P3866037910941706690.Spec : Prop :=
  ∀ n, P3866037910941706690.a n = A061009 (n + 1)

theorem P3866037910941706690.correct : P3866037910941706690.Spec := by
  intro n
  simp only [A061009, Nat.add_sub_cancel]

end A061009

/-! ## A061009.P832092235931003231

`a(n-1)+A061007(n+1)` with `a(0)=-2`
-/

namespace A061009.P832092235931003231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-2] fun n a =>
  a (n - 1) + A061007 (n + 1)

end

end A061009.P832092235931003231

namespace A061009

/-- `a(n-1)+A061007(n+1)` -/
def P832092235931003231.Spec : Prop :=
  ∀ n, P832092235931003231.a n = A061009 (n + 1)

end A061009

/-! ## A061009.P6505642588474389112

`∑[floor(∑{e}[n+1, #]^(4-n))]-2`
-/

namespace A061009.P6505642588474389112
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℚ) ^ (4 - (n : ℤ) : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A061009.P6505642588474389112

namespace A061009

/-- `∑[floor(∑{e}[n+1, #]^(4-n))]-2` -/
def P6505642588474389112.Spec : Prop :=
  ∀ n, P6505642588474389112.a n = A061009 (n + 1)

end A061009

/-! ## A061009.P6775517635366471366

`∑[round(∑{e}[n+1, #]^(ϕ-(n-2)))]-2`
-/

namespace A061009.P6775517635366471366
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℝ) ^ (Real.goldenRatio - ((n : ℤ) - 2 : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A061009.P6775517635366471366

namespace A061009

/-- `∑[round(∑{e}[n+1, #]^(ϕ-(n-2)))]-2` -/
def P6775517635366471366.Spec : Prop :=
  ∀ n, P6775517635366471366.a n = A061009 (n + 1)

end A061009

/-! ## A061009.P7414149692086914384

`∑[A061007(n+1)]-2`
-/

namespace A061009.P7414149692086914384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A061009.P7414149692086914384

namespace A061009

/-- `∑[A061007(n+1)]-2` -/
def P7414149692086914384.Spec : Prop :=
  ∀ n, P7414149692086914384.a n = A061009 (n + 1)

end A061009

/-! ## A061009.P1590566517178454494

`n-(abs(A036234(n+1)-n)+1)`
-/

namespace A061009.P1590566517178454494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (|A036234 (n + 1) - (n : ℤ)| + 1)

end

end A061009.P1590566517178454494

namespace A061009

/-- `n-(abs(A036234(n+1)-n)+1)` -/
def P1590566517178454494.Spec : Prop :=
  ∀ n, P1590566517178454494.a n = A061009 (n + 1)

end A061009

/-! ## A061009.P15271055176037615931

`∑[floor(A001222(n+1)^(4-n))]-2`
-/

namespace A061009.P15271055176037615931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001222 (n + 1) : ℚ) ^ (4 - (n : ℤ) : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A061009.P15271055176037615931

namespace A061009

/-- `∑[floor(A001222(n+1)^(4-n))]-2` -/
def P15271055176037615931.Spec : Prop :=
  ∀ n, P15271055176037615931.a n = A061009 (n + 1)

end A061009

/-! ## A061009.P4429156930601793181

`n-(abs(∑[C(A000010(n+1), n)]-n)+1)`
-/

namespace A061009.P4429156930601793181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000010 (n + 1)).toNat n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (|((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)| + 1)

end

end A061009.P4429156930601793181

namespace A061009

/-- `n-(abs(∑[C(A000010(n+1), n)]-n)+1)` -/
def P4429156930601793181.Spec : Prop :=
  ∀ n, P4429156930601793181.a n = A061009 (n + 1)

end A061009

/-! ## A061009.P4888448508375212401

`A023444(A061008(n+1))`
-/

namespace A061009.P4888448508375212401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A061008 (n + 1)).toNat

end

end A061009.P4888448508375212401

namespace A061009

/-- `A023444(A061008(n+1))` -/
def P4888448508375212401.Spec : Prop :=
  ∀ n, P4888448508375212401.a n = A061009 (n + 1)

end A061009

/-! ## A061009.P16131548385016816823

`∑[A029832(A001616(n+1))]-2`
-/

namespace A061009.P16131548385016816823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029832 (A001616 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A061009.P16131548385016816823

namespace A061009

/-- `∑[A029832(A001616(n+1))]-2` -/
def P16131548385016816823.Spec : Prop :=
  ∀ n, P16131548385016816823.a n = A061009 (n + 1)

end A061009

/-! ## A061009.P7352015823916859977

`∑[A000045(C(n, (A000010(n+1)-n)²²))]-2`
-/

namespace A061009.P7352015823916859977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose n (((A000010 (n + 1) - (n : ℤ)) ^ 2) ^ 2).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A061009.P7352015823916859977

namespace A061009

/-- `∑[A000045(C(n, (A000010(n+1)-n)²²))]-2` -/
def P7352015823916859977.Spec : Prop :=
  ∀ n, P7352015823916859977.a n = A061009 (n + 1)

end A061009

/-! ## A061009.P10277645569363231664

`∑[C(A001222(n+1), (A000010(n+1)-n)²)]-2`
-/

namespace A061009.P10277645569363231664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 (n + 1)).toNat ((A000010 (n + 1) - (n : ℤ)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A061009.P10277645569363231664

namespace A061009

/-- `∑[C(A001222(n+1), (A000010(n+1)-n)²)]-2` -/
def P10277645569363231664.Spec : Prop :=
  ∀ n, P10277645569363231664.a n = A061009 (n + 1)

end A061009

/-! ## A061009.P7194018206179849209

`∑[C(A001222(n+1), (A006530(n+1)-n)²)]-2`
-/

namespace A061009.P7194018206179849209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 (n + 1)).toNat ((A006530 (n + 1) - (n : ℤ)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A061009.P7194018206179849209

namespace A061009

/-- `∑[C(A001222(n+1), (A006530(n+1)-n)²)]-2` -/
def P7194018206179849209.Spec : Prop :=
  ∀ n, P7194018206179849209.a n = A061009 (n + 1)

end A061009

/-! ## A061009.P9265328830245831031

`∑[C(A001222(n+1), (A020639(n+1)-n)²)]-2`
-/

namespace A061009.P9265328830245831031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 (n + 1)).toNat ((A020639 (n + 1) - (n : ℤ)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A061009.P9265328830245831031

namespace A061009

/-- `∑[C(A001222(n+1), (A020639(n+1)-n)²)]-2` -/
def P9265328830245831031.Spec : Prop :=
  ∀ n, P9265328830245831031.a n = A061009 (n + 1)

end A061009

/-! ## A061009.P17816751136307052411

`∑[A105661(A080785(n+1))]-2`
-/

namespace A061009.P17816751136307052411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105661 (A080785 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A061009.P17816751136307052411

namespace A061009

/-- `∑[A105661(A080785(n+1))]-2` -/
def P17816751136307052411.Spec : Prop :=
  ∀ n, P17816751136307052411.a n = A061009 (n + 1)

end A061009

/-! ## A061009.P3355288444348753473

`∑[A105661(A080512(n+1))]-2`
-/

namespace A061009.P3355288444348753473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105661 (A080512 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A061009.P3355288444348753473

namespace A061009

/-- `∑[A105661(A080512(n+1))]-2` -/
def P3355288444348753473.Spec : Prop :=
  ∀ n, P3355288444348753473.a n = A061009 (n + 1)

end A061009

/-! ## A061009.P4858052633053594637

`A056172(2*(n+1))-A000038(A266715(2*(n+1)))`
-/

namespace A061009.P4858052633053594637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (2 * (n + 1)) - A000038 (A266715 (2 * (n + 1))).toNat

end

end A061009.P4858052633053594637

namespace A061009

/-- `A056172(2*(n+1))-A000038(A266715(2*(n+1)))` -/
def P4858052633053594637.Spec : Prop :=
  ∀ n, P4858052633053594637.a n = A061009 (n + 1)

end A061009

/-! ## A061009.P15743489642510243142

`∑[A055029(A018216(n+1))]-2`
-/

namespace A061009.P15743489642510243142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055029 (A018216 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A061009.P15743489642510243142

namespace A061009

/-- `∑[A055029(A018216(n+1))]-2` -/
def P15743489642510243142.Spec : Prop :=
  ∀ n, P15743489642510243142.a n = A061009 (n + 1)

end A061009

/-! ## A061009.P706355946993036965

`∑[A055029(A061034(n+1))]-2`
-/

namespace A061009.P706355946993036965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055029 (A061034 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A061009.P706355946993036965

namespace A061009

/-- `∑[A055029(A061034(n+1))]-2` -/
def P706355946993036965.Spec : Prop :=
  ∀ n, P706355946993036965.a n = A061009 (n + 1)

end A061009

/-!
# A061010: Number of digits in (10^n)!.

The programs for A061010, there is no canonical definition to state claims against.
-/

/-! ## A061010.P17209415248103333112

`A034886(10^n)`
-/

namespace A061010.P17209415248103333112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 (10 ^ n)

end

end A061010.P17209415248103333112

/-!
# A061011: Successive maxima in sequence A060457.

The programs for A061011, there is no canonical definition to state claims against.
-/

/-! ## A061011.P4737122921847834246

`record[A060457(n+1)]`
-/

namespace A061011.P4737122921847834246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061011.P4737122921847834246

/-! ## A061011.P15374854973379931164

`A060457(A061012(n+1))`
-/

namespace A061011.P15374854973379931164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060457 (A061012 (n + 1)).toNat

end

end A061011.P15374854973379931164

/-! ## A061011.P6487524838764428807

`record[A060457(A117910(n))/A051340(n)]`
-/

namespace A061011.P6487524838764428807
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060457 (A117910 n).toNat : ℚ) / (A051340 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061011.P6487524838764428807

/-! ## A061011.P7333997168512354013

`record[A366362(∑[n+1])]`
-/

namespace A061011.P7333997168512354013
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366362 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061011.P7333997168512354013

/-! ## A061011.P12395990576226582228

`record[and(A192205(n), A314725(n))]`
-/

namespace A061011.P12395990576226582228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A192205 n) (A314725 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061011.P12395990576226582228

/-!
# A061012: Index values for new maxima in sequence A060457.

The programs for A061012, there is no canonical definition to state claims against.
-/

/-! ## A061012.P16726537719471564201

`∑[dr(A000005(A058521(2*n+1)))]`
-/

namespace A061012.P16726537719471564201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000005 (A058521 (2 * n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061012.P16726537719471564201

/-! ## A061012.P18413761433809845162

`A280639(A003418(n))+A006093(n+1)`
-/

namespace A061012.P18413761433809845162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280639 (A003418 n).toNat + A006093 (n + 1)

end

end A061012.P18413761433809845162

/-! ## A061012.P14867552511351399323

`∑[A161901(((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])²)]`
-/

namespace A061012.P14867552511351399323
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161901 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061012.P14867552511351399323

/-! ## A061012.P6627308087176788739

`∑[A126889(((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])!)]`
-/

namespace A061012.P6627308087176788739
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126889 (Nat.factorial (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061012.P6627308087176788739

/-! ## A061012.P16142556736785701535

`∑[A328368(A000010(n+1)²)]`
-/

namespace A061012.P16142556736785701535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328368 (A000010 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061012.P16142556736785701535

/-!
# A061013: Numbers k such that (product of digits of k) is divisible by (sum of digits of k), where 0's are not permitted.

The programs for A061013, there is no canonical definition to state claims against.
-/

/-! ## A061013.P14147736669166742105

`∪[A034710(n+1), A062519(n+1)]`
-/

namespace A061013.P14147736669166742105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062519 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A061013.P14147736669166742105

/-! ## A061013.P3833515258537382405

`∩[A038367(n+1), A062998(n+1)]`
-/

namespace A061013.P3833515258537382405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061013.P3833515258537382405

/-! ## A061013.P10708419103784439315

`∩[A038367(n+1), A052382(n+1)]`
-/

namespace A061013.P10708419103784439315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061013.P10708419103784439315

/-! ## A061013.P16256997673758983344

`record[A004719(A038367(n+1))]`
-/

namespace A061013.P16256997673758983344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A038367 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061013.P16256997673758983344

/-! ## A061013.P7264451848338472073

`filter[A038367(n+1), A168046(#)]`
-/

namespace A061013.P7264451848338472073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A061013.P7264451848338472073

/-! ## A061013.P5813224579705427239

`record[A004719(record[gcd(n+1, A007954(n+1)%A007953(n+1))])]`
-/

namespace A061013.P5813224579705427239
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (Int.tmod (A007954 (n + 1)) (A007953 (n + 1)))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061013.P5813224579705427239

/-!
# A061015: Numerator of Sum_{i=1..n} 1/p(i)^2, p(i) = i-th prime.

The programs for A061015, there is no canonical definition to state claims against.
-/

/-! ## A061015.P3886254098211756474

`A075986(n+1)-A061742(n+1)`
-/

namespace A061015.P3886254098211756474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075986 (n + 1) - A061742 (n + 1)

end

end A061015.P3886254098211756474

/-! ## A061015.P5541277336419400334

`A075986(n+1)-A002110(n+1)²`
-/

namespace A061015.P5541277336419400334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075986 (n + 1) - A002110 (n + 1) ^ 2

end

end A061015.P5541277336419400334

/-! ## A061015.P6591540252391531878

`A075986((10^n+4)²%3+n)%A061742(n+1)`
-/

namespace A061015.P6591540252391531878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075986 ((10 ^ n + 4) ^ 2 % 3 + n)) (A061742 (n + 1))

end

end A061015.P6591540252391531878

/-!
# A061017: List in which n appears d(n) times, where d(n) [A000005] is the number of divisors of n.

The programs for A061017, the canonical program `A061017.P3381662168248992728` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061017 has offset 1).

The definition of A061017 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061017.P2095343695921928643

`A027750(n+1)*A056538(n+1)`
-/

namespace A061017.P2095343695921928643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1) * A056538 (n + 1)

end

end A061017.P2095343695921928643

namespace A061017

/-- `A027750(n+1)*A056538(n+1)` -/
def P2095343695921928643.Spec : Prop :=
  ∀ n, P2095343695921928643.a n = A061017 (n + 1)

end A061017

/-! ## A061017.P13740327726245851193

`∑[char[∑[∑{d}[n, ceil(acot(#))]]]]`
-/

namespace A061017.P13740327726245851193
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061017.P13740327726245851193

namespace A061017

/-- `∑[char[∑[∑{d}[n, ceil(acot(#))]]]]` -/
def P13740327726245851193.Spec : Prop :=
  ∀ n, (P13740327726245851193.a n : ℤ) = A061017 (n + 1)

end A061017

/-! ## A061017.P15887813093480507320

`∑[char[∑[∑{d}[n, ceil(1/#)]]]]`
-/

namespace A061017.P15887813093480507320
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), ⌈1 / (d : ℚ)⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061017.P15887813093480507320

namespace A061017

/-- `∑[char[∑[∑{d}[n, ceil(1/#)]]]]` -/
def P15887813093480507320.Spec : Prop :=
  ∀ n, (P15887813093480507320.a n : ℤ) = A061017 (n + 1)

end A061017

/-! ## A061017.P15229740956744832460

`∑[char[∑[∏{e}[n+1, #+1]]]]+1`
-/

namespace A061017.P15229740956744832460
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), (Nat.factorization (f4 n) p + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A061017.P15229740956744832460

namespace A061017

/-- `∑[char[∑[∏{e}[n+1, #+1]]]]+1` -/
def P15229740956744832460.Spec : Prop :=
  ∀ n, (P15229740956744832460.a n : ℤ) = A061017 (n + 1)

end A061017

/-! ## A061017.P3487310237955838765

`∑[char[A006218(n)]]`
-/

namespace A061017.P3487310237955838765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061017.P3487310237955838765

namespace A061017

/-- `∑[char[A006218(n)]]` -/
def P3487310237955838765.Spec : Prop :=
  ∀ n, (P3487310237955838765.a n : ℤ) = A061017 (n + 1)

end A061017

/-! ## A061017.P3381662168248992728

`A143502(n+1)-1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A061017

/-- `A143502(n+1)-1` -/
def P3381662168248992728.Spec : Prop :=
  ∀ n, P3381662168248992728.a n = A061017 (n + 1)

theorem P3381662168248992728.correct : P3381662168248992728.Spec := by
  intro n
  simp only [A061017, Nat.add_sub_cancel]

end A061017

/-! ## A061017.P12959461260151014387

`∑[char[A362059(n+1)]]`
-/

namespace A061017.P12959461260151014387
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362059 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061017.P12959461260151014387

namespace A061017

/-- `∑[char[A362059(n+1)]]` -/
def P12959461260151014387.Spec : Prop :=
  ∀ n, (P12959461260151014387.a n : ℤ) = A061017 (n + 1)

end A061017

/-! ## A061017.P17862846696652109135

`∑[char[A054519(n)-1]]`
-/

namespace A061017.P17862846696652109135
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061017.P17862846696652109135

namespace A061017

/-- `∑[char[A054519(n)-1]]` -/
def P17862846696652109135.Spec : Prop :=
  ∀ n, (P17862846696652109135.a n : ℤ) = A061017 (n + 1)

end A061017

/-! ## A061017.P4608758406270408209

`∑[char[∑[A032741(n)]+n]]`
-/

namespace A061017.P4608758406270408209
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061017.P4608758406270408209

namespace A061017

/-- `∑[char[∑[A032741(n)]+n]]` -/
def P4608758406270408209.Spec : Prop :=
  ∀ n, (P4608758406270408209.a n : ℤ) = A061017 (n + 1)

end A061017

/-! ## A061017.P11309597665610335633

`∑[C(2, A275055(n+1)+1)]`
-/

namespace A061017.P11309597665610335633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A275055 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061017.P11309597665610335633

namespace A061017

/-- `∑[C(2, A275055(n+1)+1)]` -/
def P11309597665610335633.Spec : Prop :=
  ∀ n, (P11309597665610335633.a n : ℤ) = A061017 (n + 1)

end A061017

/-! ## A061017.P14034242460863650410

`∑[char[∑[A000005(n+1)]]]+1`
-/

namespace A061017.P14034242460863650410
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A061017.P14034242460863650410

namespace A061017

/-- `∑[char[∑[A000005(n+1)]]]+1` -/
def P14034242460863650410.Spec : Prop :=
  ∀ n, (P14034242460863650410.a n : ℤ) = A061017 (n + 1)

end A061017

/-! ## A061017.P15301891212771311597

`∑[char[∑[1-A049820(n+1)+n]]]+1`
-/

namespace A061017.P15301891212771311597
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A049820 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A061017.P15301891212771311597

namespace A061017

/-- `∑[char[∑[1-A049820(n+1)+n]]]+1` -/
def P15301891212771311597.Spec : Prop :=
  ∀ n, (P15301891212771311597.a n : ℤ) = A061017 (n + 1)

end A061017

/-! ## A061017.P7446212950542606299

`∑[A063524(A027750(n+1))]`
-/

namespace A061017.P7446212950542606299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A027750 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061017.P7446212950542606299

namespace A061017

/-- `∑[A063524(A027750(n+1))]` -/
def P7446212950542606299.Spec : Prop :=
  ∀ n, P7446212950542606299.a n = A061017 (n + 1)

end A061017

/-! ## A061017.P7171887282745947548

`A088526(n+1)+A036234(n+1)`
-/

namespace A061017.P7171887282745947548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088526 (n + 1) + A036234 (n + 1)

end

end A061017.P7171887282745947548

namespace A061017

/-- `A088526(n+1)+A036234(n+1)` -/
def P7171887282745947548.Spec : Prop :=
  ∀ n, P7171887282745947548.a n = A061017 (n + 1)

theorem P7171887282745947548.correct : P7171887282745947548.Spec := by
  intro n
  simp only [A061017, Nat.add_sub_cancel, A061017.P7171887282745947548.a, A061017.P3381662168248992728.a, A036234, A036234.P2906282677021386800.a, A088526, A088526.P8703883917156406737.a, A143502, A143502.P12154908491860464719.f4, A143502.P12154908491860464719.f3, A143502.P12154908491860464719.f2, A143502.P12154908491860464719.f1, A143502.P12154908491860464719.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A061017

/-! ## A061017.P4508458393789296568

`abs(A056538(n+1)*A233773(n+1))`
-/

namespace A061017.P4508458393789296568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056538 (n + 1) * A233773 (n + 1)|

end

end A061017.P4508458393789296568

namespace A061017

/-- `abs(A056538(n+1)*A233773(n+1))` -/
def P4508458393789296568.Spec : Prop :=
  ∀ n, P4508458393789296568.a n = A061017 (n + 1)

end A061017

/-! ## A061017.P2305876216299223315

`(A263730(n+2)+1)*A056538(n+1)`
-/

namespace A061017.P2305876216299223315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A263730 (n + 2) + 1) * A056538 (n + 1)

end

end A061017.P2305876216299223315

namespace A061017

/-- `(A263730(n+2)+1)*A056538(n+1)` -/
def P2305876216299223315.Spec : Prop :=
  ∀ n, P2305876216299223315.a n = A061017 (n + 1)

end A061017

/-! ## A061017.P10215950438146644373

`lcm(A056538(n+1)*A233773(n+1), A020985(n))`
-/

namespace A061017.P10215950438146644373
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056538 (n + 1) * A233773 (n + 1)) (A020985 n)

end

end A061017.P10215950438146644373

namespace A061017

/-- `lcm(A056538(n+1)*A233773(n+1), A020985(n))` -/
def P10215950438146644373.Spec : Prop :=
  ∀ n, (P10215950438146644373.a n : ℤ) = A061017 (n + 1)

end A061017

/-! ## A061017.P4931787694138838476

`Δ[A397890(n)]`
-/

namespace A061017.P4931787694138838476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397890 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061017.P4931787694138838476

namespace A061017

/-- `Δ[A397890(n)]` -/
def P4931787694138838476.Spec : Prop :=
  ∀ n, P4931787694138838476.a n = A061017 (n + 1)

end A061017

/-! ## A061017.P6600789025746716557

`A397890(n+1)-A397890(n)`
-/

namespace A061017.P6600789025746716557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397890 (n + 1) - A397890 n

end

end A061017.P6600789025746716557

namespace A061017

/-- `A397890(n+1)-A397890(n)` -/
def P6600789025746716557.Spec : Prop :=
  ∀ n, P6600789025746716557.a n = A061017 (n + 1)

end A061017

/-! ## A061017.P3556036295899250733

`ceil(log2(A272919(n+2)))`
-/

namespace A061017.P3556036295899250733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A272919 (n + 2) : ℝ)⌉

end

end A061017.P3556036295899250733

namespace A061017

/-- `ceil(log2(A272919(n+2)))` -/
def P3556036295899250733.Spec : Prop :=
  ∀ n, P3556036295899250733.a n = A061017 (n + 1)

end A061017

/-!
# A061018: Triangle: a(n,m) = number of permutations of (1,2,...,n) with one or more fixed points in the m first positions.

The programs for A061018, the canonical program `A061018.P11941604777638041697` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061018 has offset 1).

The definition of A061018 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061018.P18126977494090724017

`A306461(eq[0, floor(2*sqrt(n))%2]+1)`
-/

namespace A061018.P18126977494090724017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt (n : ℝ)⌋ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306461 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A061018.P18126977494090724017

namespace A061018

/-- `A306461(eq[0, floor(2*sqrt(n))%2]+1)` -/
def P18126977494090724017.Spec : Prop :=
  ∀ n, P18126977494090724017.a n = A061018 (n + 1)

end A061018

/-! ## A061018.P4958350784252599677

`A306461(A063656(n)+1)`
-/

namespace A061018.P4958350784252599677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306461 (A063656 n + 1).toNat

end

end A061018.P4958350784252599677

namespace A061018

/-- `A306461(A063656(n)+1)` -/
def P4958350784252599677.Spec : Prop :=
  ∀ n, P4958350784252599677.a n = A061018 (n + 1)

end A061018

/-! ## A061018.P13099016401418895919

`∑[char[∑[n]]]!-A061312(n)`
-/

namespace A061018.P13099016401418895919
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - A061312 n

end

end A061018.P13099016401418895919

namespace A061018

/-- `∑[char[∑[n]]]!-A061312(n)` -/
def P13099016401418895919.Spec : Prop :=
  ∀ n, P13099016401418895919.a n = A061018 (n + 1)

end A061018

/-! ## A061018.P11941604777638041697

`A130493(n+1)-A061312(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A061018

/-- `A130493(n+1)-A061312(n)` -/
def P11941604777638041697.Spec : Prop :=
  ∀ n, P11941604777638041697.a n = A061018 (n + 1)

theorem P11941604777638041697.correct : P11941604777638041697.Spec := by
  intro n
  simp only [A061018, Nat.add_sub_cancel]

end A061018

/-! ## A061018.P13494218898041758098

`Δ[A200748(n)]-A061312(n)`
-/

namespace A061018.P13494218898041758098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A061312 n

end

end A061018.P13494218898041758098

namespace A061018

/-- `Δ[A200748(n)]-A061312(n)` -/
def P13494218898041758098.Spec : Prop :=
  ∀ n, P13494218898041758098.a n = A061018 (n + 1)

end A061018

/-!
# A061019: Negate primes in factorization of n.

The programs for A061019, the canonical program `A061019.P3085281496578978067` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061019 has offset 1).

The definition of A061019 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061019.P3085281496578978067

`(n+1)*A008836(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A061019

/-- `(n+1)*A008836(n+1)` -/
def P3085281496578978067.Spec : Prop :=
  ∀ n, P3085281496578978067.a n = A061019 (n + 1)

theorem P3085281496578978067.correct : P3085281496578978067.Spec := by
  intro n
  simp only [A061019, Nat.add_sub_cancel]

end A061019

/-! ## A061019.P15167381309904411956

`(n+1)*(-1)^A001222(n+1)`
-/

namespace A061019.P15167381309904411956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (-1 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A061019.P15167381309904411956

namespace A061019

/-- `(n+1)*(-1)^A001222(n+1)` -/
def P15167381309904411956.Spec : Prop :=
  ∀ n, P15167381309904411956.a n = (A061019 (n + 1) : ℚ)

end A061019

/-! ## A061019.P9087326291247252599

`(n+1)*(-1)^∑{e}[n+1, #]`
-/

namespace A061019.P9087326291247252599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A061019.P9087326291247252599

namespace A061019

/-- `(n+1)*(-1)^∑{e}[n+1, #]` -/
def P9087326291247252599.Spec : Prop :=
  ∀ n, P9087326291247252599.a n = A061019 (n + 1)

end A061019

/-! ## A061019.P11118022238383625836

`(n+1)/(-1)^∑{e}[n+1, #]`
-/

namespace A061019.P11118022238383625836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ)

end

end A061019.P11118022238383625836

namespace A061019

/-- `(n+1)/(-1)^∑{e}[n+1, #]` -/
def P11118022238383625836.Spec : Prop :=
  ∀ n, P11118022238383625836.a n = (A061019 (n + 1) : ℚ)

end A061019

/-! ## A061019.P17362401974026030869

`(n+1)*∏{e}[n+1, (-1)^#]`
-/

namespace A061019.P17362401974026030869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∏ p ∈ Nat.primeFactors (f1 n), (-1) ^ Nat.factorization (f1 n) p)

end

end A061019.P17362401974026030869

namespace A061019

/-- `(n+1)*∏{e}[n+1, (-1)^#]` -/
def P17362401974026030869.Spec : Prop :=
  ∀ n, P17362401974026030869.a n = A061019 (n + 1)

end A061019

/-! ## A061019.P6244348078355703180

`(n+1)/∏{e}[n+1, (-1)^#]`
-/

namespace A061019.P6244348078355703180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), (-1) ^ Nat.factorization (f1 n) p : ℤ) : ℚ)

end

end A061019.P6244348078355703180

namespace A061019

/-- `(n+1)/∏{e}[n+1, (-1)^#]` -/
def P6244348078355703180.Spec : Prop :=
  ∀ n, P6244348078355703180.a n = (A061019 (n + 1) : ℚ)

end A061019

/-! ## A061019.P9634297066952094629

`∏{p}[n+1, (-#)^val(n+1, #)]`
-/

namespace A061019.P9634297066952094629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ)) ^ SequenceMachineLib.valuation (n + 1) p

end

end A061019.P9634297066952094629

namespace A061019

/-- `∏{p}[n+1, (-#)^val(n+1, #)]` -/
def P9634297066952094629.Spec : Prop :=
  ∀ n, P9634297066952094629.a n = A061019 (n + 1)

end A061019

/-! ## A061019.P5264369352823938854

`∑{d}[n+1, A158523(#)]`
-/

namespace A061019.P5264369352823938854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158523 d

end

end A061019.P5264369352823938854

namespace A061019

/-- `∑{d}[n+1, A158523(#)]` -/
def P5264369352823938854.Spec : Prop :=
  ∀ n, P5264369352823938854.a n = A061019 (n + 1)

end A061019

/-! ## A061019.P5392889121799762030

`(n+1)*Δ[A002819(n)]`
-/

namespace A061019.P5392889121799762030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002819 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A061019.P5392889121799762030

namespace A061019

/-- `(n+1)*Δ[A002819(n)]` -/
def P5392889121799762030.Spec : Prop :=
  ∀ n, P5392889121799762030.a n = A061019 (n + 1)

end A061019

/-! ## A061019.P15568550724420144746

`(-1)^A001222(n+1)*(n+1)`
-/

namespace A061019.P15568550724420144746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A001222 (n + 1) : ℤ) * (n + 1 : ℚ)

end

end A061019.P15568550724420144746

namespace A061019

/-- `(-1)^A001222(n+1)*(n+1)` -/
def P15568550724420144746.Spec : Prop :=
  ∀ n, P15568550724420144746.a n = (A061019 (n + 1) : ℚ)

end A061019

/-! ## A061019.P8717313743882996716

`∑{d}[n+1, #*A298473((n+1)/#)]`
-/

namespace A061019.P8717313743882996716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A298473 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A061019.P8717313743882996716

namespace A061019

/-- `∑{d}[n+1, #*A298473((n+1)/#)]` -/
def P8717313743882996716.Spec : Prop :=
  ∀ n, P8717313743882996716.a n = A061019 (n + 1)

end A061019

/-! ## A061019.P665159574386753417

`(n+1)*A008683(A007913(n+1))`
-/

namespace A061019.P665159574386753417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008683 (A007913 (n + 1)).toNat

end

end A061019.P665159574386753417

namespace A061019

/-- `(n+1)*A008683(A007913(n+1))` -/
def P665159574386753417.Spec : Prop :=
  ∀ n, P665159574386753417.a n = A061019 (n + 1)

end A061019

/-! ## A061019.P4731847830727674777

`A007913(n+1)*A358272(n+1)`
-/

namespace A061019.P4731847830727674777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) * A358272 (n + 1)

end

end A061019.P4731847830727674777

namespace A061019

/-- `A007913(n+1)*A358272(n+1)` -/
def P4731847830727674777.Spec : Prop :=
  ∀ n, P4731847830727674777.a n = A061019 (n + 1)

end A061019

/-! ## A061019.P14515415634515533600

`A209615(n+1)*A209662(n+1)`
-/

namespace A061019.P14515415634515533600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 (n + 1) * A209662 (n + 1)

end

end A061019.P14515415634515533600

namespace A061019

/-- `A209615(n+1)*A209662(n+1)` -/
def P14515415634515533600.Spec : Prop :=
  ∀ n, P14515415634515533600.a n = A061019 (n + 1)

end A061019

/-! ## A061019.P12272211089958398099

`A123667(n+1)/A165872(n+1)`
-/

namespace A061019.P12272211089958398099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123667 (n + 1) : ℚ) / (A165872 (n + 1) : ℚ)

end

end A061019.P12272211089958398099

namespace A061019

/-- `A123667(n+1)/A165872(n+1)` -/
def P12272211089958398099.Spec : Prop :=
  ∀ n, P12272211089958398099.a n = (A061019 (n + 1) : ℚ)

end A061019

/-! ## A061019.P4369661190040913185

`A298473(n+1)/A034444(n+1)`
-/

namespace A061019.P4369661190040913185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298473 (n + 1) : ℚ) / (A034444 (n + 1) : ℚ)

end

end A061019.P4369661190040913185

namespace A061019

/-- `A298473(n+1)/A034444(n+1)` -/
def P4369661190040913185.Spec : Prop :=
  ∀ n, P4369661190040913185.a n = (A061019 (n + 1) : ℚ)

end A061019

/-! ## A061019.P13157609591155900694

`A038040(n+1)/A329484(n+1)`
-/

namespace A061019.P13157609591155900694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (A329484 (n + 1) : ℚ)

end

end A061019.P13157609591155900694

namespace A061019

/-- `A038040(n+1)/A329484(n+1)` -/
def P13157609591155900694.Spec : Prop :=
  ∀ n, P13157609591155900694.a n = (A061019 (n + 1) : ℚ)

end A061019

/-! ## A061019.P14997215961276009494

`A135323(n+1)/A355939(n+1)`
-/

namespace A061019.P14997215961276009494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135323 (n + 1) : ℚ) / (A355939 (n + 1) : ℚ)

end

end A061019.P14997215961276009494

namespace A061019

/-- `A135323(n+1)/A355939(n+1)` -/
def P14997215961276009494.Spec : Prop :=
  ∀ n, P14997215961276009494.a n = (A061019 (n + 1) : ℚ)

end A061019

/-! ## A061019.P14381077827657913820

`A181797(n+1)/A323363(n+1)`
-/

namespace A061019.P14381077827657913820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181797 (n + 1) : ℚ) / (A323363 (n + 1) : ℚ)

end

end A061019.P14381077827657913820

namespace A061019

/-- `A181797(n+1)/A323363(n+1)` -/
def P14381077827657913820.Spec : Prop :=
  ∀ n, P14381077827657913820.a n = (A061019 (n + 1) : ℚ)

end A061019

/-! ## A061019.P1915262199990337062

`∑{d}[n+1, A008683(#)*A061020((n+1)/#)]`
-/

namespace A061019.P1915262199990337062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A061020 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A061019.P1915262199990337062

namespace A061019

/-- `∑{d}[n+1, A008683(#)*A061020((n+1)/#)]` -/
def P1915262199990337062.Spec : Prop :=
  ∀ n, P1915262199990337062.a n = A061019 (n + 1)

end A061019

/-!
# A061020: Negate primes in factorizations of divisors of n, then sum.

The programs for A061020, the canonical program `A061020.P12638060660583157143` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061020 has offset 1).

The definition of A061020 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061020.P11860077041353706890

`∑{d}[n+1, #*(-1)^A001222(#)]`
-/

namespace A061020.P11860077041353706890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) * (-1 : ℚ) ^ (A001222 d : ℤ)

end

end A061020.P11860077041353706890

namespace A061020

/-- `∑{d}[n+1, #*(-1)^A001222(#)]` -/
def P11860077041353706890.Spec : Prop :=
  ∀ n, P11860077041353706890.a n = (A061020 (n + 1) : ℚ)

end A061020

/-! ## A061020.P12638060660583157143

`∑{d}[n+1, #*A008683(A007913(#))]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A061020

/-- `∑{d}[n+1, #*A008683(A007913(#))]` -/
def P12638060660583157143.Spec : Prop :=
  ∀ n, P12638060660583157143.a n = A061020 (n + 1)

theorem P12638060660583157143.correct : P12638060660583157143.Spec := by
  intro n
  simp only [A061020, Nat.add_sub_cancel]

end A061020

/-! ## A061020.P438561261790791314

`∑{d}[n+1, A061019(#)]`
-/

namespace A061020.P438561261790791314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061019 d

end

end A061020.P438561261790791314

namespace A061020

/-- `∑{d}[n+1, A061019(#)]` -/
def P438561261790791314.Spec : Prop :=
  ∀ n, P438561261790791314.a n = A061020 (n + 1)

end A061020

/-! ## A061020.P10902613395591274216

`A344440(n+1)-(n+1)`
-/

namespace A061020.P10902613395591274216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344440 (n + 1) - (n + 1 : ℤ)

end

end A061020.P10902613395591274216

namespace A061020

/-- `A344440(n+1)-(n+1)` -/
def P10902613395591274216.Spec : Prop :=
  ∀ n, P10902613395591274216.a n = A061020 (n + 1)

theorem P10902613395591274216.correct : P10902613395591274216.Spec := by
  intro n
  simp only [A061020, Nat.add_sub_cancel, A061020.P10902613395591274216.a, A061020.P12638060660583157143.f1, A061020.P12638060660583157143.a, A007913, A007913.P8131970495124731496.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A344440, A344440.P3915427148233125311.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061020

/-! ## A061020.P4390831439845927378

`∑{d}[n+1, #*A008836(#)]`
-/

namespace A061020.P4390831439845927378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A008836 d

end

end A061020.P4390831439845927378

namespace A061020

/-- `∑{d}[n+1, #*A008836(#)]` -/
def P4390831439845927378.Spec : Prop :=
  ∀ n, P4390831439845927378.a n = A061020 (n + 1)

end A061020

/-! ## A061020.P12713092933864597333

`A344441(n+1)-A206369(n+1)`
-/

namespace A061020.P12713092933864597333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344441 (n + 1) - A206369 (n + 1)

end

end A061020.P12713092933864597333

namespace A061020

/-- `A344441(n+1)-A206369(n+1)` -/
def P12713092933864597333.Spec : Prop :=
  ∀ n, P12713092933864597333.a n = A061020 (n + 1)

theorem P12713092933864597333.correct : P12713092933864597333.Spec := by
  intro n
  simp only [A061020, Nat.add_sub_cancel, A061020.P12713092933864597333.a, A061020.P12638060660583157143.f1, A061020.P12638060660583157143.a, A007913, A007913.P8131970495124731496.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A206369, A206369.P2534442500048428716.a, A344441, A344441.P17067382042004747526.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061020

/-! ## A061020.P12395675518850948102

`A318676(n+1)-A318677(n+1)`
-/

namespace A061020.P12395675518850948102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318676 (n + 1) - A318677 (n + 1)

end

end A061020.P12395675518850948102

namespace A061020

/-- `A318676(n+1)-A318677(n+1)` -/
def P12395675518850948102.Spec : Prop :=
  ∀ n, P12395675518850948102.a n = A061020 (n + 1)

end A061020

/-! ## A061020.P8740869360456788772

`A008836(n+1)*A206369(n+1)`
-/

namespace A061020.P8740869360456788772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A206369 (n + 1)

end

end A061020.P8740869360456788772

namespace A061020

/-- `A008836(n+1)*A206369(n+1)` -/
def P8740869360456788772.Spec : Prop :=
  ∀ n, P8740869360456788772.a n = A061020 (n + 1)

end A061020

/-! ## A061020.P9633269320532525787

`2*A318676(n+1)-A000203(n+1)`
-/

namespace A061020.P9633269320532525787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A318676 (n + 1) - A000203 (n + 1)

end

end A061020.P9633269320532525787

namespace A061020

/-- `2*A318676(n+1)-A000203(n+1)` -/
def P9633269320532525787.Spec : Prop :=
  ∀ n, P9633269320532525787.a n = A061020 (n + 1)

end A061020

/-! ## A061020.P2653244624225698918

`A000203(n+1)-2*A318677(n+1)`
-/

namespace A061020.P2653244624225698918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - 2 * A318677 (n + 1)

end

end A061020.P2653244624225698918

namespace A061020

/-- `A000203(n+1)-2*A318677(n+1)` -/
def P2653244624225698918.Spec : Prop :=
  ∀ n, P2653244624225698918.a n = A061020 (n + 1)

end A061020

/-! ## A061020.P15494906987197170254

`∑{d}[n+1, A035316(#)*A055615((n+1)/#)]`
-/

namespace A061020.P15494906987197170254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035316 d * A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A061020.P15494906987197170254

namespace A061020

/-- `∑{d}[n+1, A035316(#)*A055615((n+1)/#)]` -/
def P15494906987197170254.Spec : Prop :=
  ∀ n, P15494906987197170254.a n = A061020 (n + 1)

end A061020

/-! ## A061020.P12282159957108053444

`∑{d}[n+1, A000005(#)*A158523((n+1)/#)]`
-/

namespace A061020.P12282159957108053444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A158523 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A061020.P12282159957108053444

namespace A061020

/-- `∑{d}[n+1, A000005(#)*A158523((n+1)/#)]` -/
def P12282159957108053444.Spec : Prop :=
  ∀ n, P12282159957108053444.a n = A061020 (n + 1)

end A061020

/-! ## A061020.P8856517168126816648

`∑{d}[n+1, A000203(#)*A298473((n+1)/#)]`
-/

namespace A061020.P8856517168126816648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A298473 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A061020.P8856517168126816648

namespace A061020

/-- `∑{d}[n+1, A000203(#)*A298473((n+1)/#)]` -/
def P8856517168126816648.Spec : Prop :=
  ∀ n, P8856517168126816648.a n = A061020 (n + 1)

end A061020

/-! ## A061020.P3276713925932458507

`∑{d}[n+1, A068976(#)*A323363((n+1)/#)]`
-/

namespace A061020.P3276713925932458507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A068976 d * A323363 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A061020.P3276713925932458507

namespace A061020

/-- `∑{d}[n+1, A068976(#)*A323363((n+1)/#)]` -/
def P3276713925932458507.Spec : Prop :=
  ∀ n, P3276713925932458507.a n = A061020 (n + 1)

end A061020

/-! ## A061020.P11545935878744777572

`∑{d}[n+1, A046692(#)*A383795((n+1)/#)]`
-/

namespace A061020.P11545935878744777572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A383795 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A061020.P11545935878744777572

namespace A061020

/-- `∑{d}[n+1, A046692(#)*A383795((n+1)/#)]` -/
def P11545935878744777572.Spec : Prop :=
  ∀ n, P11545935878744777572.a n = A061020 (n + 1)

end A061020

/-! ## A061020.P10128839241927619292

`∑{d}[n+1, A130054(#)*A358272((n+1)/#)]`
-/

namespace A061020.P10128839241927619292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A358272 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A061020.P10128839241927619292

namespace A061020

/-- `∑{d}[n+1, A130054(#)*A358272((n+1)/#)]` -/
def P10128839241927619292.Spec : Prop :=
  ∀ n, P10128839241927619292.a n = A061020 (n + 1)

end A061020

/-! ## A061020.P1509436160217617796

`∑{d}[n+1, A300853(#)*A349343((n+1)/#)]`
-/

namespace A061020.P1509436160217617796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A300853 d * A349343 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A061020.P1509436160217617796

namespace A061020

/-- `∑{d}[n+1, A300853(#)*A349343((n+1)/#)]` -/
def P1509436160217617796.Spec : Prop :=
  ∀ n, P1509436160217617796.a n = A061020 (n + 1)

end A061020

/-! ## A061020.P90537749970461161

`∑{d}[n+1, A351600(#)*A351654((n+1)/#)]`
-/

namespace A061020.P90537749970461161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A351600 d * A351654 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A061020.P90537749970461161

namespace A061020

/-- `∑{d}[n+1, A351600(#)*A351654((n+1)/#)]` -/
def P90537749970461161.Spec : Prop :=
  ∀ n, P90537749970461161.a n = A061020 (n + 1)

end A061020

/-! ## A061020.P1277344488528263829

`∑{d}[n+1, A347236(#)*A378220((n+1)/#)]`
-/

namespace A061020.P1277344488528263829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347236 d * A378220 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A061020.P1277344488528263829

namespace A061020

/-- `∑{d}[n+1, A347236(#)*A378220((n+1)/#)]` -/
def P1277344488528263829.Spec : Prop :=
  ∀ n, P1277344488528263829.a n = A061020 (n + 1)

end A061020

/-! ## A061020.P7231701307974040402

`∑{d}[n+1, A099894(#-1)*A118209((n+1)/#)]`
-/

namespace A061020.P7231701307974040402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A099894 (d - 1) * A118209 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A061020.P7231701307974040402

namespace A061020

/-- `∑{d}[n+1, A099894(#-1)*A118209((n+1)/#)]` -/
def P7231701307974040402.Spec : Prop :=
  ∀ n, P7231701307974040402.a n = A061020 (n + 1)

end A061020

/-!
# A061021: a(n) = a(n-1)*a(n-2) - a(n-3) with a(0) = a(1) = a(2) = 3.

The programs for A061021, the canonical program `A061021.P2719619312425112089` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061021 has offset 0).

The definition of A061021 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-2)-a(n-3)` (program `A061021.P2719619312425112089`, by `A061021.P2719619312425112089.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A061021.P2719619312425112089

`a(n-1)*a(n-2)-a(n-3)` with `a(0)=3, a(1)=3, a(2)=3`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A061021

/-- `a(n-1)*a(n-2)-a(n-3)` -/
def P2719619312425112089.Spec : Prop :=
  ∀ n, P2719619312425112089.a n = A061021 n

theorem P2719619312425112089.correct : P2719619312425112089.Spec := by
  intro n
  simp only [A061021]

end A061021

/-! ## A061021.P6946049499670255938

`a(n-1)/a(n-2)^(-1)-a(n-3)` with `a(0)=3, a(1)=3, a(2)=3`
-/

namespace A061021.P6946049499670255938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3, 3, 3] fun n a =>
  a (n - 1) / a (n - 2) ^ (-1 : ℤ) - a (n - 3)

end

end A061021.P6946049499670255938

namespace A061021

/-- `a(n-1)/a(n-2)^(-1)-a(n-3)` -/
def P6946049499670255938.Spec : Prop :=
  ∀ n, P6946049499670255938.a n = (A061021 n : ℚ)

end A061021

/-! ## A061021.P387642156164485772

`3*A064098(n+1)`
-/

namespace A061021.P387642156164485772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A064098 (n + 1)

end

end A061021.P387642156164485772

namespace A061021

/-- `3*A064098(n+1)` -/
def P387642156164485772.Spec : Prop :=
  ∀ n, P387642156164485772.a n = A061021 n

end A061021

/-! ## A061021.P14563334313453041116

`lcm(3, A064098(A005496(n)))`
-/

namespace A061021.P14563334313453041116
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A064098 (A005496 n).toNat)

end

end A061021.P14563334313453041116

namespace A061021

/-- `lcm(3, A064098(A005496(n)))` -/
def P14563334313453041116.Spec : Prop :=
  ∀ n, (P14563334313453041116.a n : ℤ) = A061021 n

end A061021

/-! ## A061021.P15305594129029929522

`lcm(A000005(A046704(n+1)²), A064098(n+1))`
-/

namespace A061021.P15305594129029929522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (A046704 (n + 1) ^ 2).toNat) (A064098 (n + 1))

end

end A061021.P15305594129029929522

namespace A061021

/-- `lcm(A000005(A046704(n+1)²), A064098(n+1))` -/
def P15305594129029929522.Spec : Prop :=
  ∀ n, (P15305594129029929522.a n : ℤ) = A061021 n

end A061021

/-!
# A061022: Primes of the form abbbbb... where a and b are digits.

The programs for A061022, there is no canonical definition to state claims against.
-/

/-! ## A061022.P10545233098487022057

`∩[A051534(n+1), A069684(n+1)]`
-/

namespace A061022.P10545233098487022057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061022.P10545233098487022057

/-! ## A061022.P2389478521043760126

`A006530(A072900(n+1)*A269640(n+1))`
-/

namespace A061022.P2389478521043760126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A072900 (n + 1) * A269640 (n + 1)).toNat

end

end A061022.P2389478521043760126

/-! ## A061022.P11203621889407589483

`A069684(A243903(n+1)%A141096(n+1))`
-/

namespace A061022.P11203621889407589483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069684 (Int.tmod (A243903 (n + 1)) (A141096 (n + 1))).toNat

end

end A061022.P11203621889407589483

/-! ## A061022.P4808725225696828892

`A069684(and(A152388(n+1), A243903(n+1)))`
-/

namespace A061022.P4808725225696828892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069684 (Int.land (A152388 (n + 1)) (A243903 (n + 1))).toNat

end

end A061022.P4808725225696828892

/-!
# A061023: Difference between the closest square and the closest cube to n.

The programs for A061023, the canonical program `A061023.P5958186205212772420` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061023 has offset 0).

The definition of A061023 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A201053, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A061023.P5958186205212772420

`abs(A053187(n)-A201053(n))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A061023

/-- `abs(A053187(n)-A201053(n))` -/
def P5958186205212772420.Spec : Prop :=
  ∀ n, P5958186205212772420.a n = A061023 n

theorem P5958186205212772420.correct : P5958186205212772420.Spec := by
  intro n
  simp only [A061023]

end A061023

/-! ## A061023.P6732494619230555005

`abs(A201053(n)-∑[A245552(n)])`
-/

namespace A061023.P6732494619230555005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A201053 n - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A061023.P6732494619230555005

namespace A061023

/-- `abs(A201053(n)-∑[A245552(n)])` -/
def P6732494619230555005.Spec : Prop :=
  ∀ n, P6732494619230555005.a n = A061023 n

end A061023

/-! ## A061023.P5292079948782925859

`abs(A008217(A027709(n))-A201053(n))`
-/

namespace A061023.P5292079948782925859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008217 (A027709 n).toNat - A201053 n|

end

end A061023.P5292079948782925859

namespace A061023

/-- `abs(A008217(A027709(n))-A201053(n))` -/
def P5292079948782925859.Spec : Prop :=
  ∀ n, P5292079948782925859.a n = A061023 n

end A061023

/-! ## A061023.P10535380785847571748

`abs(A201053(n)-A048760(A232091(n)))`
-/

namespace A061023.P10535380785847571748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A201053 n - A048760 (A232091 n).toNat|

end

end A061023.P10535380785847571748

namespace A061023

/-- `abs(A201053(n)-A048760(A232091(n)))` -/
def P10535380785847571748.Spec : Prop :=
  ∀ n, P10535380785847571748.a n = A061023 n

end A061023

/-! ## A061023.P11999136565446930657

`A000194((A053187(n)-A201053(n))²)`
-/

namespace A061023.P11999136565446930657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((A053187 n - A201053 n) ^ 2).toNat

end

end A061023.P11999136565446930657

namespace A061023

/-- `A000194((A053187(n)-A201053(n))²)` -/
def P11999136565446930657.Spec : Prop :=
  ∀ n, P11999136565446930657.a n = A061023 n

end A061023

/-! ## A061023.P7532054008145513349

`A000196((A053187(n)-A201053(n))²)`
-/

namespace A061023.P7532054008145513349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((A053187 n - A201053 n) ^ 2).toNat

end

end A061023.P7532054008145513349

namespace A061023

/-- `A000196((A053187(n)-A201053(n))²)` -/
def P7532054008145513349.Spec : Prop :=
  ∀ n, P7532054008145513349.a n = A061023 n

end A061023

/-! ## A061023.P3976849077480214877

`A053615((A053187(n)-A201053(n))²)`
-/

namespace A061023.P3976849077480214877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 ((A053187 n - A201053 n) ^ 2).toNat

end

end A061023.P3976849077480214877

namespace A061023

/-- `A053615((A053187(n)-A201053(n))²)` -/
def P3976849077480214877.Spec : Prop :=
  ∀ n, P3976849077480214877.a n = A061023 n

end A061023

/-! ## A061023.P3215792189279987501

`A000194((A000194(n)²-A201053(n))²)`
-/

namespace A061023.P3215792189279987501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((A000194 n ^ 2 - A201053 n) ^ 2).toNat

end

end A061023.P3215792189279987501

namespace A061023

/-- `A000194((A000194(n)²-A201053(n))²)` -/
def P3215792189279987501.Spec : Prop :=
  ∀ n, P3215792189279987501.a n = A061023 n

end A061023

/-! ## A061023.P7820812456319896254

`A053615(A201053(n)+A053187(n)²)`
-/

namespace A061023.P7820812456319896254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A201053 n + A053187 n ^ 2).toNat

end

end A061023.P7820812456319896254

namespace A061023

/-- `A053615(A201053(n)+A053187(n)²)` -/
def P7820812456319896254.Spec : Prop :=
  ∀ n, P7820812456319896254.a n = A061023 n

end A061023

/-!
# A061024: a(n) = (prime(n)!)^2.

The programs for A061024, the canonical program `A061024.P9540300146082084684` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061024 has offset 1).

The definition of A061024 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)!²` (program `A061024.P9540300146082084684`, by `A061024.P9540300146082084684.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A061024.P9540300146082084684

`A000040(n+1)!²`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A061024

/-- `A000040(n+1)!²` -/
def P9540300146082084684.Spec : Prop :=
  ∀ n, (P9540300146082084684.a n : ℤ) = A061024 (n + 1)

theorem P9540300146082084684.correct : P9540300146082084684.Spec := by
  intro n
  simp only [A061024, Nat.add_sub_cancel]

end A061024

/-! ## A061024.P13962998426837015090

`p?[comp[n²]]!²`
-/

namespace A061024.P13962998426837015090
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) ^ 2

end

end A061024.P13962998426837015090

namespace A061024

/-- `p?[comp[n²]]!²` -/
def P13962998426837015090.Spec : Prop :=
  ∀ n, (P13962998426837015090.a n : ℤ) = A061024 (n + 1)

end A061024

/-! ## A061024.P11705300824304285534

`A039716(n+1)²`
-/

namespace A061024.P11705300824304285534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039716 (n + 1) ^ 2

end

end A061024.P11705300824304285534

namespace A061024

/-- `A039716(n+1)²` -/
def P11705300824304285534.Spec : Prop :=
  ∀ n, P11705300824304285534.a n = A061024 (n + 1)

theorem P11705300824304285534.correct : P11705300824304285534.Spec := by
  intro n
  simp only [A061024, Nat.add_sub_cancel, A061024.P11705300824304285534.a, A061024.P9540300146082084684.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A039716, A039716.P11033590145453247559.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061024

/-! ## A061024.P17573404410225089074

`(A139189(n+1)+1)²`
-/

namespace A061024.P17573404410225089074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A139189 (n + 1) + 1) ^ 2

end

end A061024.P17573404410225089074

namespace A061024

/-- `(A139189(n+1)+1)²` -/
def P17573404410225089074.Spec : Prop :=
  ∀ n, P17573404410225089074.a n = A061024 (n + 1)

theorem P17573404410225089074.correct : P17573404410225089074.Spec := by
  intro n
  simp only [A061024, Nat.add_sub_cancel, A061024.P17573404410225089074.a, A061024.P9540300146082084684.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A139189, A139189.P270170874357845193.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061024

/-! ## A061024.P6731569553996776965

`record[A006530(n+2)!²]`
-/

namespace A061024.P6731569553996776965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A006530 (n + 2)).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061024.P6731569553996776965

namespace A061024

/-- `record[A006530(n+2)!²]` -/
def P6731569553996776965.Spec : Prop :=
  ∀ n, (P6731569553996776965.a n : ℤ) = A061024 (n + 1)

end A061024

/-!
# A061025: 

The programs for A061025, there is no canonical definition to state claims against.
-/

/-! ## A061025.P15257729366537428712

`∏{p}[A006094(n+1), #!]`
-/

namespace A061025.P15257729366537428712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial p

end

end A061025.P15257729366537428712

/-! ## A061025.P13849794112744187194

`∏{p}[A251720(n+1), #!]`
-/

namespace A061025.P13849794112744187194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251720 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial p

end

end A061025.P13849794112744187194

/-! ## A061025.P2813532828188965623

`∏{p}[A006094(n+1), A000142(#)]`
-/

namespace A061025.P2813532828188965623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000142 p

end

end A061025.P2813532828188965623

/-! ## A061025.P14529673759897176189

`∏{p}[A251720(n+1), A000142(#)]`
-/

namespace A061025.P14529673759897176189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000142 p

end

end A061025.P14529673759897176189

/-! ## A061025.P17661226245762007960

`A039716(n+1)*A039716(n+2)`
-/

namespace A061025.P17661226245762007960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039716 (n + 1) * A039716 (n + 2)

end

end A061025.P17661226245762007960

/-!
# A061026: Smallest number m such that phi(m) is divisible by n, where phi = Euler totient function A000010.

The programs for A061026, there is no canonical definition to state claims against.
-/

/-! ## A061026.P3471557688507709217

`A049283(A066678(n+1))`
-/

namespace A061026.P3471557688507709217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (A066678 (n + 1)).toNat

end

end A061026.P3471557688507709217

/-! ## A061026.P10024558848590901849

`A049283((n+1)*A067005(n+1))`
-/

namespace A061026.P10024558848590901849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 ((n + 1 : ℤ) * A067005 (n + 1)).toNat

end

end A061026.P10024558848590901849

/-! ## A061026.P11681618258256521190

`or(A066678(n+1), A177849(A324687(n)))`
-/

namespace A061026.P11681618258256521190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A066678 (n + 1)) (A177849 (A324687 n).toNat)

end

end A061026.P11681618258256521190

/-!
# A061028: a(n) = n^p - (n-1)^p, where p is the n-th prime.

The programs for A061028, there is no canonical definition to state claims against.
-/

/-! ## A061028.P9492600161794129074

`A062481(n+1)-n^A006005(n+1)`
-/

namespace A061028.P9492600161794129074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062481 (n + 1) : ℚ) - (n : ℚ) ^ (A006005 (n + 1) : ℤ)

end

end A061028.P9492600161794129074

/-! ## A061028.P6413298639453969091

`A062481(n+1)-n^A038618(n+1)`
-/

namespace A061028.P6413298639453969091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062481 (n + 1) : ℚ) - (n : ℚ) ^ (A038618 (n + 1) : ℤ)

end

end A061028.P6413298639453969091

/-! ## A061028.P2704864116482274794

`A062481(n+1)-n^A057448(n+1)`
-/

namespace A061028.P2704864116482274794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062481 (n + 1) : ℚ) - (n : ℚ) ^ (A057448 (n + 1) : ℤ)

end

end A061028.P2704864116482274794

/-! ## A061028.P832488838737046330

`(n+1)^A000040(n+1)-n^A000040(n+1)`
-/

namespace A061028.P832488838737046330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A000040 (n + 1) : ℤ) - (n : ℚ) ^ (A000040 (n + 1) : ℤ)

end

end A061028.P832488838737046330

/-!
# A061029: 2^(n-1)*A000668(n).

The programs for A061029, there is no canonical definition to state claims against.
-/

/-! ## A061029.P4725978421886087889

`2^n*A000668(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A061029.P4725978421886087889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000668 (n + 1)

end

end A061029.P4725978421886087889

/-! ## A061029.P17105519670157246251

`A134872(n+1)/2`
-/

namespace A061029.P17105519670157246251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134872 (n + 1) : ℚ) / 2

end

end A061029.P17105519670157246251

/-! ## A061029.P14722962463645151398

`2^n*A343733(n+2)`
-/

namespace A061029.P14722962463645151398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A343733 (n + 2)

end

end A061029.P14722962463645151398

/-! ## A061029.P2851519222485302766

`2^n*A169628(∑[n+1])`
-/

namespace A061029.P2851519222485302766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A169628 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A061029.P2851519222485302766

/-! ## A061029.P12080340134609536598

`2^n*record[A016047(n+1)]`
-/

namespace A061029.P12080340134609536598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061029.P12080340134609536598

/-!
# A061030: Factorial splitting: write n! = x*y*z with x<y<z and x maximal; sequence gives value of x.

The programs for A061030, there is no canonical definition to state claims against.
-/

/-! ## A061030.P17725618066905603347

`A061032(n+3)-A061033(n+3)`
-/

namespace A061030.P17725618066905603347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061032 (n + 3) - A061033 (n + 3)

end

end A061030.P17725618066905603347

/-! ## A061030.P4449370237761362155

`A078451(A225958(n))`
-/

namespace A061030.P4449370237761362155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078451 (A225958 n).toNat

end

end A061030.P4449370237761362155

/-! ## A061030.P15757944088641201032

`A371477(A339507(n))`
-/

namespace A061030.P15757944088641201032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371477 (A339507 n).toNat

end

end A061030.P15757944088641201032

/-! ## A061030.P13970186835230257664

`A334274(A390351(n))`
-/

namespace A061030.P13970186835230257664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334274 (A390351 n).toNat

end

end A061030.P13970186835230257664

/-!
# A061031: Factorial splitting: write n! = x*y*z with x<y<z and x maximal and z is minimal; sequence gives value of y.

The programs for A061031, there is no canonical definition to state claims against.
-/

/-! ## A061031.P608428253002154279

`A307531(A344062(n)+A110577(n))`
-/

namespace A061031.P608428253002154279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307531 (A344062 n + A110577 n).toNat

end

end A061031.P608428253002154279

/-! ## A061031.P12177950487462161565

`A001221(n+1)+A000267(A197549(n+1))`
-/

namespace A061031.P12177950487462161565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + A000267 (A197549 (n + 1)).toNat

end

end A061031.P12177950487462161565

/-! ## A061031.P16615643770182184382

`A378117(A186649(n+1)+A071820(n+1))`
-/

namespace A061031.P16615643770182184382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378117 (A186649 (n + 1) + A071820 (n + 1)).toNat

end

end A061031.P16615643770182184382

/-!
# A061032: Factorial splitting: write n! = x*y*z with x<y<z and x maximal and z is minimal; sequence gives value of z.

The programs for A061032, there is no canonical definition to state claims against.
-/

/-! ## A061032.P4216904852542329809

`A061033(n+3)+A061030(n+3)`
-/

namespace A061032.P4216904852542329809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061033 (n + 3) + A061030 (n + 3)

end

end A061032.P4216904852542329809

/-! ## A061032.P17748713646044571711

`A078451(A225958(n))+A061033(n+3)`
-/

namespace A061032.P17748713646044571711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078451 (A225958 n).toNat + A061033 (n + 3)

end

end A061032.P17748713646044571711

/-! ## A061032.P2701395394165118319

`A082447(record[A124425(n)])+A061033(n+3)`
-/

namespace A061032.P2701395394165118319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A061033 (n + 3)

end

end A061032.P2701395394165118319

/-! ## A061032.P14365215245637152411

`A061033(n+3)+A100071(n)+A037800(A199108(n))`
-/

namespace A061032.P14365215245637152411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061033 (n + 3) + (A100071 n + A037800 (A199108 n).toNat)

end

end A061032.P14365215245637152411

/-!
# A061033: Factorial splitting: write n! = x*y*z with x<y<z and x maximal and z is minimal; sequence gives value of z-x.

The programs for A061033, there is no canonical definition to state claims against.
-/

/-! ## A061033.P1106850940990842436

`A061032(n+3)-A061030(n+3)`
-/

namespace A061033.P1106850940990842436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061032 (n + 3) - A061030 (n + 3)

end

end A061033.P1106850940990842436

/-!
# A061034: Maximal number of subgroups in an Abelian group with n elements.

The programs for A061034, there is no canonical definition to state claims against.
-/

/-! ## A061034.P12562829434987113278

`A053150(A124316(n+1)^4)`
-/

namespace A061034.P12562829434987113278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053150 (A124316 (n + 1) ^ 4).toNat

end

end A061034.P12562829434987113278

/-! ## A061034.P935264950893436142

`A053150(A124316(n+1)²²)`
-/

namespace A061034.P935264950893436142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053150 ((A124316 (n + 1) ^ 2) ^ 2).toNat

end

end A061034.P935264950893436142

/-! ## A061034.P6450997116016497894

`∑{d}[A054496(n+1), A078898(A048766(#))]`
-/

namespace A061034.P6450997116016497894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054496 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A078898 (A048766 d).toNat

end

end A061034.P6450997116016497894

/-! ## A061034.P16743689276397911031

`A032548(A002586(n+1))*A124316(n+1)`
-/

namespace A061034.P16743689276397911031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032548 (A002586 (n + 1)).toNat * A124316 (n + 1)

end

end A061034.P16743689276397911031

/-! ## A061034.P7255860187496172460

`A055229(A054496(n+1))*A124316(n+1)`
-/

namespace A061034.P7255860187496172460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (A054496 (n + 1)).toNat * A124316 (n + 1)

end

end A061034.P7255860187496172460

/-!
# A061035: Triangle T(m,n) = numerator of 1/m^2 - 1/n^2, n >= 1, m=n,n-1,n-2,...,1.

The programs for A061035, there is no canonical definition to state claims against.
-/

/-! ## A061035.P10916113035528178919

`A175779(comp[∑[n-1]])`
-/

namespace A061035.P10916113035528178919
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175779 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A061035.P10916113035528178919

/-! ## A061035.P7339750049986667990

`abs(A174233(A004201(n+1)))`
-/

namespace A061035.P7339750049986667990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A174233 (A004201 (n + 1)).toNat|

end

end A061035.P7339750049986667990

/-! ## A061035.P2134952200775910593

`A175779(A014132(n+1)-1)%((n+1)^6)`
-/

namespace A061035.P2134952200775910593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175779 (A014132 (n + 1) - 1).toNat) ((n + 1) ^ 6 : ℤ)

end

end A061035.P2134952200775910593

/-! ## A061035.P2303185212190313945

`A035214(n)*A175779(A007401(n+1))`
-/

namespace A061035.P2303185212190313945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n * A175779 (A007401 (n + 1)).toNat

end

end A061035.P2303185212190313945

/-! ## A061035.P3212737224831108379

`A175779(A007401(n+1))%A000124(n)`
-/

namespace A061035.P3212737224831108379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175779 (A007401 (n + 1)).toNat) (A000124 n)

end

end A061035.P3212737224831108379

/-! ## A061035.P6308116188827686135

`-(A174233(A004201(n+1))%A001844(n))`
-/

namespace A061035.P6308116188827686135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (A174233 (A004201 (n + 1)).toNat) (A001844 n)

end

end A061035.P6308116188827686135

/-! ## A061035.P214335421588466646

`A175779(A007401(n+1))*A344439(A175783(n+1))`
-/

namespace A061035.P214335421588466646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175779 (A007401 (n + 1)).toNat * A344439 (A175783 (n + 1)).toNat

end

end A061035.P214335421588466646

/-! ## A061035.P3588837223503135126

`abs(A174190(n+1))`
-/

namespace A061035.P3588837223503135126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A174190 (n + 1)|

end

end A061035.P3588837223503135126

/-! ## A061035.P17636998821735860597

`A243836(n)-A174190(n+1)`
-/

namespace A061035.P17636998821735860597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243836 n - A174190 (n + 1)

end

end A061035.P17636998821735860597

/-! ## A061035.P16326404823427354669

`A264668(n)-A174190(n+1)`
-/

namespace A061035.P16326404823427354669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n - A174190 (n + 1)

end

end A061035.P16326404823427354669

/-!
# A061036: Triangle T(m,n) = denominator of 1/m^2 - 1/n^2, n >= 1, m=n,n-1,n-2,...,1.

The programs for A061036, there is no canonical definition to state claims against.
-/

/-! ## A061036.P4832020275337085801

`A174381(A038722(n+1))+char[∑[n]]`
-/

namespace A061036.P4832020275337085801
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174381 (A038722 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A061036.P4832020275337085801

/-! ## A061036.P3250273435605078609

`gcd(A174381(A038722(n+1)), A197870(n))`
-/

namespace A061036.P3250273435605078609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A174381 (A038722 (n + 1)).toNat) (A197870 n)

end

end A061036.P3250273435605078609

/-! ## A061036.P7332177808777563558

`or(A010054(n), A174381(A038722(n+1)))`
-/

namespace A061036.P7332177808777563558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 n) (A174381 (A038722 (n + 1)).toNat)

end

end A061036.P7332177808777563558

/-! ## A061036.P1622083502515355247

`A216230(4*n)+A174381(A038722(n+1))`
-/

namespace A061036.P1622083502515355247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216230 (4 * n) + A174381 (A038722 (n + 1)).toNat

end

end A061036.P1622083502515355247

/-! ## A061036.P8928487104952458427

`A010054(n)-A174381(A038722(n+1))/A134824(3*(n+1))`
-/

namespace A061036.P8928487104952458427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010054 n : ℚ) - (A174381 (A038722 (n + 1)).toNat : ℚ) / (A134824 (3 * (n + 1)) : ℚ)

end

end A061036.P8928487104952458427

/-!
# A061037: Numerator of 1/4 - 1/n^2.

The programs for A061037, the canonical program `A061037.P80081350164223039` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061037 has offset 2).

The definition of A061037 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061037.P80081350164223039

`((n+2)²-4)/gcd(4*(n+2)², (n+2)²-4)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A061037

/-- `((n+2)²-4)/gcd(4*(n+2)², (n+2)²-4)` -/
def P80081350164223039.Spec : Prop :=
  ∀ n, P80081350164223039.a n = (A061037 (n + 2) : ℚ)

end A061037

/-! ## A061037.P3075664661483096322

`ogf((5x+3x^2+21x^3+2x^4+30x^5+6x^6+14x^7-3x^9-x^10-3x^11)/(1-3x^4+3x^8-x^12))`
-/

namespace A061037.P3075664661483096322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, 3, 21, 2, 30, 6, 14, 0, -3, -1, -3] [1, 0, 0, 0, -3, 0, 0, 0, 3, 0, 0, 0, -1] n

end

end A061037.P3075664661483096322

namespace A061037

/-- `ogf((5x+3x^2+21x^3+2x^4+30x^5+6x^6+14x^7-3x^9-x^10-3x^11)/(1-3x^4+3x^8-x^12))` -/
def P3075664661483096322.Spec : Prop :=
  ∀ n, P3075664661483096322.a n = A061037 (n + 2)

end A061037

/-! ## A061037.P16496462391066554996

`lcm(n, n+4)/gcd(4, n)`
-/

namespace A061037.P16496462391066554996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n (n + 4) : ℚ) / (Nat.gcd 4 n : ℚ)

end

end A061037.P16496462391066554996

namespace A061037

/-- `lcm(n, n+4)/gcd(4, n)` -/
def P16496462391066554996.Spec : Prop :=
  ∀ n, P16496462391066554996.a n = (A061037 (n + 2) : ℚ)

end A061037

/-! ## A061037.P11817576489268505317

`n*(n+4)*(37-27*cos(π*n)-6*cos(π*n/2))/64`
-/

namespace A061037.P11817576489268505317
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * ((n + 4 : ℝ) * ((37 - 27 * Real.cos (Real.pi * (n : ℝ)) - 6 * Real.cos (Real.pi * ((n : ℚ) / 2 : ℝ))) / 64))

end

end A061037.P11817576489268505317

namespace A061037

/-- `n*(n+4)*(37-27*cos(π*n)-6*cos(π*n/2))/64` -/
def P11817576489268505317.Spec : Prop :=
  ∀ n, P11817576489268505317.a n = (A061037 (n + 2) : ℝ)

end A061037

/-! ## A061037.P2918312911430715009

`n*(n+4)*4^((5*(n%4)^3-24*(n%4)²+31*n%4-12)/6)`
-/

namespace A061037.P2918312911430715009
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n * (n + 4) : ℝ) * (4 : ℝ) ^ ((((5 * (n % 4) ^ 3 : ℕ) : ℤ) - ((24 * (n % 4) ^ 2 : ℕ) : ℤ) + ((31 * (n % 4) : ℕ) : ℤ) - 12 : ℚ) / 6 : ℝ)

end

end A061037.P2918312911430715009

namespace A061037

/-- `n*(n+4)*4^((5*(n%4)^3-24*(n%4)²+31*n%4-12)/6)` -/
def P2918312911430715009.Spec : Prop :=
  ∀ n, P2918312911430715009.a n = (A061037 (n + 2) : ℝ)

end A061037

/-! ## A061037.P2233448753815737805

`sqrt(A181763(n+2))`
-/

namespace A061037.P2233448753815737805
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A181763 (n + 2) : ℝ)

end

end A061037.P2233448753815737805

namespace A061037

/-- `sqrt(A181763(n+2))` -/
def P2233448753815737805.Spec : Prop :=
  ∀ n, P2233448753815737805.a n = (A061037 (n + 2) : ℝ)

end A061037

/-! ## A061037.P12438852588191186662

`(n+4)*A188134(n)/4`
-/

namespace A061037.P12438852588191186662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 4 : ℤ) * A188134 n : ℚ) / 4

end

end A061037.P12438852588191186662

namespace A061037

/-- `(n+4)*A188134(n)/4` -/
def P12438852588191186662.Spec : Prop :=
  ∀ n, P12438852588191186662.a n = (A061037 (n + 2) : ℚ)

end A061037

/-! ## A061037.P2039967187649361783

`n*(n+4)/A010156(n)`
-/

namespace A061037.P2039967187649361783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 4) : ℚ) / (A010156 n : ℚ)

end

end A061037.P2039967187649361783

namespace A061037

/-- `n*(n+4)/A010156(n)` -/
def P2039967187649361783.Spec : Prop :=
  ∀ n, P2039967187649361783.a n = (A061037 (n + 2) : ℚ)

end A061037

/-! ## A061037.P6323072911559429320

`A188134(n)+A181318(n)`
-/

namespace A061037.P6323072911559429320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188134 n + A181318 n

end

end A061037.P6323072911559429320

namespace A061037

/-- `A188134(n)+A181318(n)` -/
def P6323072911559429320.Spec : Prop :=
  ∀ n, P6323072911559429320.a n = A061037 (n + 2)

end A061037

/-! ## A061037.P6278764894358618866

`A191567(n)-A181318(n)`
-/

namespace A061037.P6278764894358618866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191567 n - A181318 n

end

end A061037.P6278764894358618866

namespace A061037

/-- `A191567(n)-A181318(n)` -/
def P6278764894358618866.Spec : Prop :=
  ∀ n, P6278764894358618866.a n = A061037 (n + 2)

end A061037

/-! ## A061037.P5217156974146774523

`A246416(n)*A247617(n)`
-/

namespace A061037.P5217156974146774523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246416 n * A247617 n

end

end A061037.P5217156974146774523

namespace A061037

/-- `A246416(n)*A247617(n)` -/
def P5217156974146774523.Spec : Prop :=
  ∀ n, P5217156974146774523.a n = A061037 (n + 2)

end A061037

/-! ## A061037.P15791915941178945675

`A171621(n+2)/A010121(n)`
-/

namespace A061037.P15791915941178945675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171621 (n + 2) : ℚ) / (A010121 n : ℚ)

end

end A061037.P15791915941178945675

namespace A061037

/-- `A171621(n+2)/A010121(n)` -/
def P15791915941178945675.Spec : Prop :=
  ∀ n, P15791915941178945675.a n = (A061037 (n + 2) : ℚ)

end A061037

/-! ## A061037.P3821248773841904614

`A142883(n)-2*A181318(n)`
-/

namespace A061037.P3821248773841904614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142883 n - 2 * A181318 n

end

end A061037.P3821248773841904614

namespace A061037

/-- `A142883(n)-2*A181318(n)` -/
def P3821248773841904614.Spec : Prop :=
  ∀ n, P3821248773841904614.a n = A061037 (n + 2)

end A061037

/-! ## A061037.P12476154634117946218

`2*A191567(n)-A142883(n)`
-/

namespace A061037.P12476154634117946218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191567 n - A142883 n

end

end A061037.P12476154634117946218

namespace A061037

/-- `2*A191567(n)-A142883(n)` -/
def P12476154634117946218.Spec : Prop :=
  ∀ n, P12476154634117946218.a n = A061037 (n + 2)

end A061037

/-! ## A061037.P1334215351474436605

`(A191567(n)+A188134(n))/2`
-/

namespace A061037.P1334215351474436605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191567 n + A188134 n : ℚ) / 2

end

end A061037.P1334215351474436605

namespace A061037

/-- `(A191567(n)+A188134(n))/2` -/
def P1334215351474436605.Spec : Prop :=
  ∀ n, P1334215351474436605.a n = (A061037 (n + 2) : ℚ)

end A061037

/-! ## A061037.P8199234892885773668

`A000265(n+4)*A165342(n)`
-/

namespace A061037.P8199234892885773668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 4) * A165342 n

end

end A061037.P8199234892885773668

namespace A061037

/-- `A000265(n+4)*A165342(n)` -/
def P8199234892885773668.Spec : Prop :=
  ∀ n, P8199234892885773668.a n = A061037 (n + 2)

end A061037

/-! ## A061037.P18397158233386886052

`A188134(n)+n²/A010156(n)`
-/

namespace A061037.P18397158233386886052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188134 n : ℚ) + (n ^ 2 : ℚ) / (A010156 n : ℚ)

end

end A061037.P18397158233386886052

namespace A061037

/-- `A188134(n)+n²/A010156(n)` -/
def P18397158233386886052.Spec : Prop :=
  ∀ n, P18397158233386886052.a n = (A061037 (n + 2) : ℚ)

end A061037

/-! ## A061037.P9525089209092979449

`A188134(n)+(n/A109008(n))²`
-/

namespace A061037.P9525089209092979449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188134 n : ℚ) + ((n : ℚ) / (A109008 n : ℚ)) ^ 2

end

end A061037.P9525089209092979449

namespace A061037

/-- `A188134(n)+(n/A109008(n))²` -/
def P9525089209092979449.Spec : Prop :=
  ∀ n, P9525089209092979449.a n = (A061037 (n + 2) : ℚ)

end A061037

/-! ## A061037.P17006560561687672559

`A188134(n)+A026741(A026741(n))²`
-/

namespace A061037.P17006560561687672559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188134 n + A026741 (A026741 n).toNat ^ 2

end

end A061037.P17006560561687672559

namespace A061037

/-- `A188134(n)+A026741(A026741(n))²` -/
def P17006560561687672559.Spec : Prop :=
  ∀ n, P17006560561687672559.a n = A061037 (n + 2)

end A061037

/-! ## A061037.P8152314336842321647

`A191567(n)-A026741(A026741(n))²`
-/

namespace A061037.P8152314336842321647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191567 n - A026741 (A026741 n).toNat ^ 2

end

end A061037.P8152314336842321647

namespace A061037

/-- `A191567(n)-A026741(A026741(n))²` -/
def P8152314336842321647.Spec : Prop :=
  ∀ n, P8152314336842321647.a n = A061037 (n + 2)

end A061037

/-!
# A061038: Denominator of 1/4 - 1/n^2.

The programs for A061038, the canonical program `A061038.P13685063492506879656` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061038 has offset 2).

The definition of A061038 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061038.P13685063492506879656

`((n+2)/(n-2))²*a(n-4)` with `a(0)=1, a(1)=36, a(2)=16, a(3)=100`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A061038

/-- `((n+2)/(n-2))²*a(n-4)` -/
def P13685063492506879656.Spec : Prop :=
  ∀ n, P13685063492506879656.a n = (A061038 (n + 2) : ℚ)

end A061038

/-! ## A061038.P3168149405702326429

`4*(n+2)²/gcd(4*(n+2)², (n+2)²-4)`
-/

namespace A061038.P3168149405702326429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * (n + 2) ^ 2 : ℚ) / (Int.gcd (4 * (n + 2) ^ 2 : ℤ) (((n + 2) ^ 2 : ℤ) - 4) : ℚ)

end

end A061038.P3168149405702326429

namespace A061038

/-- `4*(n+2)²/gcd(4*(n+2)², (n+2)²-4)` -/
def P3168149405702326429.Spec : Prop :=
  ∀ n, P3168149405702326429.a n = (A061038 (n + 2) : ℚ)

end A061038

/-! ## A061038.P13646118847914084286

`ogf((1+36x+16x^2+100x^3+6x^4+88x^5+16x^6+24x^7+x^8+4x^9+4x^11)/(1-3x^4+3x^8-x^12))`
-/

namespace A061038.P13646118847914084286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 36, 16, 100, 6, 88, 16, 24, 1, 4, 0, 4] [1, 0, 0, 0, -3, 0, 0, 0, 3, 0, 0, 0, -1] n

end

end A061038.P13646118847914084286

namespace A061038

/-- `ogf((1+36x+16x^2+100x^3+6x^4+88x^5+16x^6+24x^7+x^8+4x^9+4x^11)/(1-3x^4+3x^8-x^12))` -/
def P13646118847914084286.Spec : Prop :=
  ∀ n, P13646118847914084286.a n = A061038 (n + 2)

end A061038

/-! ## A061038.P15005885884497036074

`(2*(n+2)/gcd(4, n))²`
-/

namespace A061038.P15005885884497036074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * ((n + 2 : ℚ) / (Nat.gcd 4 n : ℚ))) ^ 2

end

end A061038.P15005885884497036074

namespace A061038

/-- `(2*(n+2)/gcd(4, n))²` -/
def P15005885884497036074.Spec : Prop :=
  ∀ n, P15005885884497036074.a n = (A061038 (n + 2) : ℚ)

end A061038

/-! ## A061038.P3805779111787398877

`(lcm(2, n+2)/gcd(n+2, ∑[n]))²`
-/

namespace A061038.P3805779111787398877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 2 (n + 2) : ℚ) / (Nat.gcd (n + 2) (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)) ^ 2

end

end A061038.P3805779111787398877

namespace A061038

/-- `(lcm(2, n+2)/gcd(n+2, ∑[n]))²` -/
def P3805779111787398877.Spec : Prop :=
  ∀ n, P3805779111787398877.a n = (A061038 (n + 2) : ℚ)

end A061038

/-! ## A061038.P11338167755895140772

`(gcd(2*(n+2), ∑[n+1])*and(2, -n)!)²`
-/

namespace A061038.P11338167755895140772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (2 * (n + 2)) (∑ j ∈ Finset.range (n + 1), f1 j) * Nat.factorial (Int.land 2 (-(n : ℤ))).toNat) ^ 2

end

end A061038.P11338167755895140772

namespace A061038

/-- `(gcd(2*(n+2), ∑[n+1])*and(2, -n)!)²` -/
def P11338167755895140772.Spec : Prop :=
  ∀ n, (P11338167755895140772.a n : ℤ) = A061038 (n + 2)

end A061038

/-! ## A061038.P12681322252884966642

`A145979(n)²`
-/

namespace A061038.P12681322252884966642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145979 n ^ 2

end

end A061038.P12681322252884966642

namespace A061038

/-- `A145979(n)²` -/
def P12681322252884966642.Spec : Prop :=
  ∀ n, P12681322252884966642.a n = A061038 (n + 2)

end A061038

/-! ## A061038.P13576625093632089516

`(xor(1, A065171(n+1))+1)²`
-/

namespace A061038.P13576625093632089516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A065171 (n + 1)) + 1) ^ 2

end

end A061038.P13576625093632089516

namespace A061038

/-- `(xor(1, A065171(n+1))+1)²` -/
def P13576625093632089516.Spec : Prop :=
  ∀ n, P13576625093632089516.a n = A061038 (n + 2)

end A061038

/-! ## A061038.P5908724841003256301

`(n+2)²/4*A177499(n)`
-/

namespace A061038.P5908724841003256301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℚ) / 4 * (A177499 n : ℚ)

end

end A061038.P5908724841003256301

namespace A061038

/-- `(n+2)²/4*A177499(n)` -/
def P5908724841003256301.Spec : Prop :=
  ∀ n, P5908724841003256301.a n = (A061038 (n + 2) : ℚ)

end A061038

/-! ## A061038.P5187569057669436337

`(A247617(n)+A246416(n))²`
-/

namespace A061038.P5187569057669436337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A247617 n + A246416 n) ^ 2

end

end A061038.P5187569057669436337

namespace A061038

/-- `(A247617(n)+A246416(n))²` -/
def P5187569057669436337.Spec : Prop :=
  ∀ n, P5187569057669436337.a n = A061038 (n + 2)

end A061038

/-! ## A061038.P13402472310895766788

`(A014695(n)*A176743(n))²`
-/

namespace A061038.P13402472310895766788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014695 n * A176743 n) ^ 2

end

end A061038.P13402472310895766788

namespace A061038

/-- `(A014695(n)*A176743(n))²` -/
def P13402472310895766788.Spec : Prop :=
  ∀ n, P13402472310895766788.a n = A061038 (n + 2)

end A061038

/-! ## A061038.P7617942685337630983

`A145979(n*A057427(n))*A145979(n)`
-/

namespace A061038.P7617942685337630983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145979 ((n : ℤ) * A057427 n).toNat * A145979 n

end

end A061038.P7617942685337630983

namespace A061038

/-- `A145979(n*A057427(n))*A145979(n)` -/
def P7617942685337630983.Spec : Prop :=
  ∀ n, P7617942685337630983.a n = A061038 (n + 2)

end A061038

/-! ## A061038.P5244814772734151674

`(A247617(n)+A061037(n+2)/A247617(n))²`
-/

namespace A061038.P5244814772734151674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A247617 n : ℚ) + (A061037 (n + 2) : ℚ) / (A247617 n : ℚ)) ^ 2

end

end A061038.P5244814772734151674

namespace A061038

/-- `(A247617(n)+A061037(n+2)/A247617(n))²` -/
def P5244814772734151674.Spec : Prop :=
  ∀ n, P5244814772734151674.a n = (A061038 (n + 2) : ℚ)

end A061038

/-! ## A061038.P3708305696413647778

`(∑[A215898(n+1)]+n+3)²`
-/

namespace A061038.P3708305696413647778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3 : ℤ)) ^ 2

end

end A061038.P3708305696413647778

namespace A061038

/-- `(∑[A215898(n+1)]+n+3)²` -/
def P3708305696413647778.Spec : Prop :=
  ∀ n, P3708305696413647778.a n = A061038 (n + 2)

end A061038

/-! ## A061038.P7787340558677870022

`(A130658(n+1)*A176743(n))²`
-/

namespace A061038.P7787340558677870022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A130658 (n + 1) * A176743 n) ^ 2

end

end A061038.P7787340558677870022

namespace A061038

/-- `(A130658(n+1)*A176743(n))²` -/
def P7787340558677870022.Spec : Prop :=
  ∀ n, P7787340558677870022.a n = A061038 (n + 2)

end A061038

/-! ## A061038.P17104387535290475390

`A130658(n)²*A227168(n+2)`
-/

namespace A061038.P17104387535290475390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130658 n ^ 2 * A227168 (n + 2)

end

end A061038.P17104387535290475390

namespace A061038

/-- `A130658(n)²*A227168(n+2)` -/
def P17104387535290475390.Spec : Prop :=
  ∀ n, P17104387535290475390.a n = A061038 (n + 2)

end A061038

/-! ## A061038.P8507109208333583245

`A145979(A023443(n+1))*A145979(n)`
-/

namespace A061038.P8507109208333583245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145979 (A023443 (n + 1)).toNat * A145979 n

end

end A061038.P8507109208333583245

namespace A061038

/-- `A145979(A023443(n+1))*A145979(n)` -/
def P8507109208333583245.Spec : Prop :=
  ∀ n, P8507109208333583245.a n = A061038 (n + 2)

end A061038

/-! ## A061038.P291641166020873367

`A227168(n+1)/A181318(n+1)*A227168(n+2)`
-/

namespace A061038.P291641166020873367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227168 (n + 1) : ℚ) / (A181318 (n + 1) : ℚ) * (A227168 (n + 2) : ℚ)

end

end A061038.P291641166020873367

namespace A061038

/-- `A227168(n+1)/A181318(n+1)*A227168(n+2)` -/
def P291641166020873367.Spec : Prop :=
  ∀ n, P291641166020873367.a n = (A061038 (n + 2) : ℚ)

end A061038

/-! ## A061038.P16327636331550909784

`A176895(n)*A251091(n+2)`
-/

namespace A061038.P16327636331550909784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176895 n * A251091 (n + 2)

end

end A061038.P16327636331550909784

namespace A061038

/-- `A176895(n)*A251091(n+2)` -/
def P16327636331550909784.Spec : Prop :=
  ∀ n, P16327636331550909784.a n = A061038 (n + 2)

end A061038

/-! ## A061038.P12045188454687004521

`(Δ[A272212(n+2)]+n+2)²`
-/

namespace A061038.P12045188454687004521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272212 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + (n + 2 : ℤ)) ^ 2

end

end A061038.P12045188454687004521

namespace A061038

/-- `(Δ[A272212(n+2)]+n+2)²` -/
def P12045188454687004521.Spec : Prop :=
  ∀ n, P12045188454687004521.a n = A061038 (n + 2)

end A061038

/-!
# A061039: Numerator of 1/9 - 1/n^2.

The programs for A061039, there is no canonical definition to state claims against.
-/

/-! ## A061039.P4138378765155749993

`A106610(A106610(n*(n+6)))`
-/

namespace A061039.P4138378765155749993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A106610 (n * (n + 6))).toNat

end

end A061039.P4138378765155749993

/-! ## A061039.P16952950992187090072

`A061035(A034856(n+2))`
-/

namespace A061039.P16952950992187090072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061035 (A034856 (n + 2)).toNat

end

end A061039.P16952950992187090072

/-! ## A061039.P18384465684728143706

`A061035(A055999(n)+4)`
-/

namespace A061039.P18384465684728143706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061035 (A055999 n + 4).toNat

end

end A061039.P18384465684728143706

/-! ## A061039.P2877331722995863060

`A061035(eq[2, A193592(n)])`
-/

namespace A061039.P2877331722995863060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061035 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061039.P2877331722995863060

/-! ## A061039.P4640813605663340123

`A061035(A046691(n+1)+2)`
-/

namespace A061039.P4640813605663340123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061035 (A046691 (n + 1) + 2).toNat

end

end A061039.P4640813605663340123

/-! ## A061039.P7898885207698116880

`A165507(A034856(n+4))`
-/

namespace A061039.P7898885207698116880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165507 (A034856 (n + 4)).toNat

end

end A061039.P7898885207698116880

/-! ## A061039.P11712345440613579913

`A165507(A000096(n+4)-1)`
-/

namespace A061039.P11712345440613579913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165507 (A000096 (n + 4) - 1).toNat

end

end A061039.P11712345440613579913

/-! ## A061039.P2833576190075444373

`A165507(A000217(n+5)-2)`
-/

namespace A061039.P2833576190075444373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165507 (A000217 (n + 5) - 2).toNat

end

end A061039.P2833576190075444373

/-! ## A061039.P14904583271631621305

`A165507(A133263(n+5)-4)`
-/

namespace A061039.P14904583271631621305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165507 (A133263 (n + 5) - 4).toNat

end

end A061039.P14904583271631621305

/-! ## A061039.P3988432123334580913

`A165507(Δ[A023545(n+1)]+2)`
-/

namespace A061039.P3988432123334580913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165507 (f1 (n + 1) - f1 n + 2).toNat

end

end A061039.P3988432123334580913

/-!
# A061040: Denominator of 1/9 - 1/n^2.

The programs for A061040, there is no canonical definition to state claims against.
-/

/-! ## A061040.P10346654506334495026

`A061036(∑[n+3]+1)`
-/

namespace A061040.P10346654506334495026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061036 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A061040.P10346654506334495026

/-! ## A061040.P14125254819623622854

`or(char[2], A061036(A034856(n+2)))`
-/

namespace A061040.P14125254819623622854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A061036 (A034856 (n + 2)).toNat)

end

end A061040.P14125254819623622854

/-! ## A061040.P11174991553472569376

`or(char[2], A061036(A052905(n)+3))`
-/

namespace A061040.P11174991553472569376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A061036 (A052905 n + 3).toNat)

end

end A061040.P11174991553472569376

/-! ## A061040.P11825782815846994522

`log2(4/2)*A061036(Δ[A008778(n)])`
-/

namespace A061040.P11825782815846994522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((4 : ℚ) / 2 : ℝ) * (A061036 (f1 (n + 1) - f1 n).toNat : ℝ)

end

end A061040.P11825782815846994522

/-! ## A061040.P9517424516737332739

`gcd(A000038(n), A061036(A034856(n+2)))`
-/

namespace A061040.P9517424516737332739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A061036 (A034856 (n + 2)).toNat)

end

end A061040.P9517424516737332739

/-! ## A061040.P10973374272456827738

`A061036(Δ[A008778(n)])+A008683(8*(n+1))`
-/

namespace A061040.P10973374272456827738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061036 (f1 (n + 1) - f1 n).toNat + A008683 (8 * (n + 1))

end

end A061040.P10973374272456827738

/-! ## A061040.P17708640157645331891

`A007318(C(2, n+1))*A061036(A052905(n)+3)`
-/

namespace A061040.P17708640157645331891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 1)) * A061036 (A052905 n + 3).toNat

end

end A061040.P17708640157645331891

/-! ## A061040.P5722807335728275642

`lcm((-1)^A000203(n+1), A061036(A052905(n)+3))`
-/

namespace A061040.P5722807335728275642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((-1 : ℚ) ^ (A000203 (n + 1) : ℤ))) (A061036 (A052905 n + 3).toNat)

end

end A061040.P5722807335728275642

/-!
# A061041: Numerator of 1/16 - 1/n^2.

The programs for A061041, the canonical program `A061041.P300939408046985232` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061041 has offset 4).

The definition of A061041 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061041.P300939408046985232

`((n+4)²-16)/gcd(16*(n+4)², (n+4)²-16)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A061041

/-- `((n+4)²-16)/gcd(16*(n+4)², (n+4)²-16)` -/
def P300939408046985232.Spec : Prop :=
  ∀ n, P300939408046985232.a n = (A061041 (n + 4) : ℚ)

end A061041

/-! ## A061041.P2146883459345786902

`A174680(n+4)`
-/

namespace A061041.P2146883459345786902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174680 (n + 4)

end

end A061041.P2146883459345786902

namespace A061041

/-- `A174680(n+4)` -/
def P2146883459345786902.Spec : Prop :=
  ∀ n, P2146883459345786902.a n = A061041 (n + 4)

end A061041

/-! ## A061041.P13091040335067159868

`abs(A174680(A020705(n)))`
-/

namespace A061041.P13091040335067159868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A174680 (A020705 n).toNat|

end

end A061041.P13091040335067159868

namespace A061041

/-- `abs(A174680(A020705(n)))` -/
def P13091040335067159868.Spec : Prop :=
  ∀ n, P13091040335067159868.a n = A061041 (n + 4)

end A061041

/-! ## A061041.P5713988810893324068

`A227140(n+8)*A227140(n)`
-/

namespace A061041.P5713988810893324068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227140 (n + 8) * A227140 n

end

end A061041.P5713988810893324068

namespace A061041

/-- `A227140(n+8)*A227140(n)` -/
def P5713988810893324068.Spec : Prop :=
  ∀ n, P5713988810893324068.a n = A061041 (n + 4)

end A061041

/-! ## A061041.P6404631668972477522

`lcm(A227140(A020722(n)), A227140(n))`
-/

namespace A061041.P6404631668972477522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A227140 (A020722 n).toNat) (A227140 n)

end

end A061041.P6404631668972477522

namespace A061041

/-- `lcm(A227140(A020722(n)), A227140(n))` -/
def P6404631668972477522.Spec : Prop :=
  ∀ n, (P6404631668972477522.a n : ℤ) = A061041 (n + 4)

end A061041

/-! ## A061041.P14648229022187536947

`abs(A174680(A004525(A020744(n))))`
-/

namespace A061041.P14648229022187536947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A174680 (A004525 (A020744 n).toNat).toNat|

end

end A061041.P14648229022187536947

namespace A061041

/-- `abs(A174680(A004525(A020744(n))))` -/
def P14648229022187536947.Spec : Prop :=
  ∀ n, P14648229022187536947.a n = A061041 (n + 4)

end A061041

/-! ## A061041.P15766219373167697103

`A061035(∑[n+4]+3)`
-/

namespace A061041.P15766219373167697103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061035 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A061041.P15766219373167697103

namespace A061041

/-- `A061035(∑[n+4]+3)` -/
def P15766219373167697103.Spec : Prop :=
  ∀ n, P15766219373167697103.a n = A061041 (n + 4)

end A061041

/-! ## A061041.P4989582301813454253

`A165507(A055998(n+5))`
-/

namespace A061041.P4989582301813454253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165507 (A055998 (n + 5)).toNat

end

end A061041.P4989582301813454253

namespace A061041

/-- `A165507(A055998(n+5))` -/
def P4989582301813454253.Spec : Prop :=
  ∀ n, P4989582301813454253.a n = A061041 (n + 4)

end A061041

/-! ## A061041.P3527280625800622589

`A227140(lcm(n, n+8))`
-/

namespace A061041.P3527280625800622589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227140 (Nat.lcm n (n + 8))

end

end A061041.P3527280625800622589

namespace A061041

/-- `A227140(lcm(n, n+8))` -/
def P3527280625800622589.Spec : Prop :=
  ∀ n, P3527280625800622589.a n = A061041 (n + 4)

end A061041

/-! ## A061041.P11509302394155998944

`A175779(∑[n+5]+5)`
-/

namespace A061041.P11509302394155998944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175779 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A061041.P11509302394155998944

namespace A061041

/-- `A175779(∑[n+5]+5)` -/
def P11509302394155998944.Spec : Prop :=
  ∀ n, P11509302394155998944.a n = A061041 (n + 4)

end A061041

/-!
# A061042: Denominator of 1/16 - 1/n^2.

The programs for A061042, the canonical program `A061042.P17768335767421995644` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061042 has offset 4).

The definition of A061042 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061042.P17768335767421995644

`16*(n+4)²/gcd(16*(n+4)², (n+4)²-16)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A061042

/-- `16*(n+4)²/gcd(16*(n+4)², (n+4)²-16)` -/
def P17768335767421995644.Spec : Prop :=
  ∀ n, P17768335767421995644.a n = (A061042 (n + 4) : ℚ)

end A061042

/-! ## A061042.P17879589952983823846

`A061036(∑[n+4]+3)`
-/

namespace A061042.P17879589952983823846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061036 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A061042.P17879589952983823846

namespace A061042

/-- `A061036(∑[n+4]+3)` -/
def P17879589952983823846.Spec : Prop :=
  ∀ n, P17879589952983823846.a n = A061042 (n + 4)

end A061042

/-! ## A061042.P13551075467372783649

`A165441(A027379(n+5))`
-/

namespace A061042.P13551075467372783649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165441 (A027379 (n + 5)).toNat

end

end A061042.P13551075467372783649

namespace A061042

/-- `A165441(A027379(n+5))` -/
def P13551075467372783649.Spec : Prop :=
  ∀ n, P13551075467372783649.a n = A061042 (n + 4)

end A061042

/-! ## A061042.P9044557998215721100

`A165441(A055998(n+5))`
-/

namespace A061042.P9044557998215721100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165441 (A055998 (n + 5)).toNat

end

end A061042.P9044557998215721100

namespace A061042

/-- `A165441(A055998(n+5))` -/
def P9044557998215721100.Spec : Prop :=
  ∀ n, P9044557998215721100.a n = A061042 (n + 4)

end A061042

/-! ## A061042.P12617762720625097260

`A165441(A052905(n+4)+2)`
-/

namespace A061042.P12617762720625097260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165441 (A052905 (n + 4) + 2).toNat

end

end A061042.P12617762720625097260

namespace A061042

/-- `A165441(A052905(n+4)+2)` -/
def P12617762720625097260.Spec : Prop :=
  ∀ n, P12617762720625097260.a n = A061042 (n + 4)

end A061042

/-!
# A061043: Numerator of 1/25 - 1/n^2.

The programs for A061043, the canonical program `A061043.P8978401913737900306` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061043 has offset 5).

The definition of A061043 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061043.P8978401913737900306

`A172370(A055998(n+2))%(3*n+1)²`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A061043

/-- `A172370(A055998(n+2))%(3*n+1)²` -/
def P8978401913737900306.Spec : Prop :=
  ∀ n, P8978401913737900306.a n = A061043 (n + 5)

theorem P8978401913737900306.correct : P8978401913737900306.Spec := by
  intro n
  simp only [A061043, Nat.add_sub_cancel]

end A061043

/-! ## A061043.P15080998303370404455

`A172370(Δ[A006416(n+2)])%(5^(n+1))`
-/

namespace A061043.P15080998303370404455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172370 (f1 (n + 1) - f1 n).toNat) (5 ^ (n + 1) : ℤ)

end

end A061043.P15080998303370404455

namespace A061043

/-- `A172370(Δ[A006416(n+2)])%(5^(n+1))` -/
def P15080998303370404455.Spec : Prop :=
  ∀ n, P15080998303370404455.a n = A061043 (n + 5)

end A061043

/-! ## A061043.P18064133453181038974

`A172370(Δ[A034857(n+1)])%A078370(n)`
-/

namespace A061043.P18064133453181038974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172370 (f1 (n + 1) - f1 n).toNat) (A078370 n)

end

end A061043.P18064133453181038974

namespace A061043

/-- `A172370(Δ[A034857(n+1)])%A078370(n)` -/
def P18064133453181038974.Spec : Prop :=
  ∀ n, P18064133453181038974.a n = A061043 (n + 5)

end A061043

/-! ## A061043.P4971054666676693715

`A019426(2*n)*A172370(Δ[A006416(n+2)])`
-/

namespace A061043.P4971054666676693715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (2 * n) * A172370 (f1 (n + 1) - f1 n).toNat

end

end A061043.P4971054666676693715

namespace A061043

/-- `A019426(2*n)*A172370(Δ[A006416(n+2)])` -/
def P4971054666676693715.Spec : Prop :=
  ∀ n, P4971054666676693715.a n = A061043 (n + 5)

end A061043

/-! ## A061043.P7947156024119216532

`A061035(∑[n+5]+6)`
-/

namespace A061043.P7947156024119216532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061035 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A061043.P7947156024119216532

namespace A061043

/-- `A061035(∑[n+5]+6)` -/
def P7947156024119216532.Spec : Prop :=
  ∀ n, P7947156024119216532.a n = A061043 (n + 5)

end A061043

/-! ## A061043.P16334906165967321429

`A061035(A046691(n+3))%A002952(n+1)`
-/

namespace A061043.P16334906165967321429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061035 (A046691 (n + 3)).toNat) (A002952 (n + 1))

end

end A061043.P16334906165967321429

namespace A061043

/-- `A061035(A046691(n+3))%A002952(n+1)` -/
def P16334906165967321429.Spec : Prop :=
  ∀ n, P16334906165967321429.a n = A061043 (n + 5)

end A061043

/-! ## A061043.P16725423199034397380

`A165507(Δ[A023545(n+5)])`
-/

namespace A061043.P16725423199034397380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165507 (f1 (n + 1) - f1 n).toNat

end

end A061043.P16725423199034397380

namespace A061043

/-- `A165507(Δ[A023545(n+5)])` -/
def P16725423199034397380.Spec : Prop :=
  ∀ n, P16725423199034397380.a n = A061043 (n + 5)

end A061043

/-! ## A061043.P6624554632161781978

`A165507(A000096(n+8)-3)`
-/

namespace A061043.P6624554632161781978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165507 (A000096 (n + 8) - 3).toNat

end

end A061043.P6624554632161781978

namespace A061043

/-- `A165507(A000096(n+8)-3)` -/
def P6624554632161781978.Spec : Prop :=
  ∀ n, P6624554632161781978.a n = A061043 (n + 5)

end A061043

/-! ## A061043.P18176215331989850158

`A165507(A000217(n+9)-4)`
-/

namespace A061043.P18176215331989850158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165507 (A000217 (n + 9) - 4).toNat

end

end A061043.P18176215331989850158

namespace A061043

/-- `A165507(A000217(n+9)-4)` -/
def P18176215331989850158.Spec : Prop :=
  ∀ n, P18176215331989850158.a n = A061043 (n + 5)

end A061043

/-! ## A061043.P6774356861198026163

`A175779(∑[n+6]+9)`
-/

namespace A061043.P6774356861198026163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175779 (∑ j ∈ Finset.range (n + 1), f1 j + 9)

end

end A061043.P6774356861198026163

namespace A061043

/-- `A175779(∑[n+6]+9)` -/
def P6774356861198026163.Spec : Prop :=
  ∀ n, P6774356861198026163.a n = A061043 (n + 5)

end A061043

/-!
# A061044: Denominator of 1/25 - 1/n^2.

The programs for A061044, there is no canonical definition to state claims against.
-/

/-! ## A061044.P7103596872433995673

`A061036(∑[n+5]+6)`
-/

namespace A061044.P7103596872433995673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061036 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A061044.P7103596872433995673

/-! ## A061044.P16070645652019886600

`and(-3, A061036(A046691(n+3)))`
-/

namespace A061044.P16070645652019886600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A061036 (A046691 (n + 3)).toNat)

end

end A061044.P16070645652019886600

/-! ## A061044.P6371989402216424938

`or(A000007(n), A061036(A046691(n+3)))`
-/

namespace A061044.P6371989402216424938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A061036 (A046691 (n + 3)).toNat)

end

end A061044.P6371989402216424938

/-! ## A061044.P298387671396651984

`A061036(A046691(n+3))%A025293(n+1)`
-/

namespace A061044.P298387671396651984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061036 (A046691 (n + 3)).toNat) (A025293 (n + 1))

end

end A061044.P298387671396651984

/-! ## A061044.P8100507892765869074

`A061036(A046691(n+3))+A028326(n)%2`
-/

namespace A061044.P8100507892765869074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061036 (A046691 (n + 3)).toNat + Int.tmod (A028326 n) 2

end

end A061044.P8100507892765869074

/-! ## A061044.P11633956244021907274

`A007318(C(2, n))*A061036(A046691(n+3))`
-/

namespace A061044.P11633956244021907274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A061036 (A046691 (n + 3)).toNat

end

end A061044.P11633956244021907274

/-! ## A061044.P17309997539598859610

`A061036(A046691(n+3))+A008683(4*(n+1))`
-/

namespace A061044.P17309997539598859610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061036 (A046691 (n + 3)).toNat + A008683 (4 * (n + 1))

end

end A061044.P17309997539598859610

/-! ## A061044.P12253608632196354724

`A014963(6*(n+2))*A061036(A046691(n+3))`
-/

namespace A061044.P12253608632196354724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 2)) * A061036 (A046691 (n + 3)).toNat

end

end A061044.P12253608632196354724

/-! ## A061044.P17204350724927856551

`A061036(A046691(n+3))^(A000040(n+1)%2)`
-/

namespace A061044.P17204350724927856551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061036 (A046691 (n + 3)).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A061044.P17204350724927856551

/-! ## A061044.P8952535854143882638

`A000041(C(2, n+2))*A061036(A046691(n+3))`
-/

namespace A061044.P8952535854143882638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A061036 (A046691 (n + 3)).toNat

end

end A061044.P8952535854143882638

/-! ## A061044.P2268031149416725820

`A061036(A046691(n+3))/A000005(gcd(n, n+1))`
-/

namespace A061044.P2268031149416725820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061036 (A046691 (n + 3)).toNat : ℚ) / (A000005 (Nat.gcd n (n + 1)) : ℚ)

end

end A061044.P2268031149416725820

/-! ## A061044.P12936763331781461535

`A061036(A046691(n+3))+A001222(((-1)^n)²)`
-/

namespace A061044.P12936763331781461535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061036 (A046691 (n + 3)).toNat + A001222 (((-1) ^ n) ^ 2).toNat

end

end A061044.P12936763331781461535

/-! ## A061044.P9744528209196114026

`A000010(((-1)^n)²)*A061036(A046691(n+3))`
-/

namespace A061044.P9744528209196114026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (((-1) ^ n) ^ 2).toNat * A061036 (A046691 (n + 3)).toNat

end

end A061044.P9744528209196114026

/-!
# A061045: Numerator of 1/36 - 1/n^2.

The programs for A061045, there is no canonical definition to state claims against.
-/

/-! ## A061045.P7410224253248131586

`-A165507(A167487(n+4)-1)`
-/

namespace A061045.P7410224253248131586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A165507 (A167487 (n + 4) - 1).toNat

end

end A061045.P7410224253248131586

/-! ## A061045.P13376611799998591459

`-A165507(A000217(n+5)+6)`
-/

namespace A061045.P13376611799998591459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A165507 (A000217 (n + 5) + 6).toNat

end

end A061045.P13376611799998591459

/-! ## A061045.P6579186164500703033

`char[A074996(n)]-A165507(A167487(n+4)-1)`
-/

namespace A061045.P6579186164500703033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074996 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A165507 (A167487 (n + 4) - 1).toNat

end

end A061045.P6579186164500703033

/-! ## A061045.P7090580390816252857

`A000007(n+1)-A165507(A167487(n+4)-1)`
-/

namespace A061045.P7090580390816252857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A165507 (A167487 (n + 4) - 1).toNat

end

end A061045.P7090580390816252857

/-! ## A061045.P3413468118940659000

`A000007(n+1)-A165507(A000217(n+5)+6)`
-/

namespace A061045.P3413468118940659000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A165507 (A000217 (n + 5) + 6).toNat

end

end A061045.P3413468118940659000

/-! ## A061045.P14759661903176521962

`A000038(n+1)-A165507(A000217(n+5)+6)`
-/

namespace A061045.P14759661903176521962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A165507 (A000217 (n + 5) + 6).toNat

end

end A061045.P14759661903176521962

/-! ## A061045.P9193386924382752273

`and(2, A000035(n))-A165507(A167487(n+4)-1)`
-/

namespace A061045.P9193386924382752273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A000035 n) - A165507 (A167487 (n + 4) - 1).toNat

end

end A061045.P9193386924382752273

/-! ## A061045.P11842288965607425012

`and(2, A000290(n))-A165507(A167487(n+4)-1)`
-/

namespace A061045.P11842288965607425012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A000290 n) - A165507 (A167487 (n + 4) - 1).toNat

end

end A061045.P11842288965607425012

/-! ## A061045.P6841338535903346941

`A143433(∑[n+2])-A165507(A167487(n+4)-1)`
-/

namespace A061045.P6841338535903346941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143433 (∑ j ∈ Finset.range (n + 1), f1 j) - A165507 (A167487 (n + 4) - 1).toNat

end

end A061045.P6841338535903346941

/-! ## A061045.P8631016629968629786

`char[A082253(n+1)]-A165507(A167487(n+4)-1)`
-/

namespace A061045.P8631016629968629786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082253 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A165507 (A167487 (n + 4) - 1).toNat

end

end A061045.P8631016629968629786

/-! ## A061045.P780165297004527693

`A035363(2*n+1)-A165507(A167487(n+4)-1)`
-/

namespace A061045.P780165297004527693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n + 1) - A165507 (A167487 (n + 4) - 1).toNat

end

end A061045.P780165297004527693

/-! ## A061045.P9524294023635772903

`A008683(4*(n+1))-A165507(A167487(n+4)-1)`
-/

namespace A061045.P9524294023635772903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) - A165507 (A167487 (n + 4) - 1).toNat

end

end A061045.P9524294023635772903

/-! ## A061045.P5341881047448328222

`A033999(2*n+1)*A165507(A000217(n+5)+6)`
-/

namespace A061045.P5341881047448328222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) * A165507 (A000217 (n + 5) + 6).toNat

end

end A061045.P5341881047448328222

/-! ## A061045.P6152974011629501330

`A008683(4*(n+1))-A165507(A000217(n+5)+6)`
-/

namespace A061045.P6152974011629501330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) - A165507 (A000217 (n + 5) + 6).toNat

end

end A061045.P6152974011629501330

/-! ## A061045.P9366744175766945686

`1-A007318(C(2, n))-A165507(A000217(n+5)+6)`
-/

namespace A061045.P9366744175766945686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A007318 (Nat.choose 2 n) - A165507 (A000217 (n + 5) + 6).toNat

end

end A061045.P9366744175766945686

/-! ## A061045.P5950490956904026164

`A000045(C(n, n+1))-A165507(A167487(n+4)-1)`
-/

namespace A061045.P5950490956904026164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose n (n + 1)) - A165507 (A167487 (n + 4) - 1).toNat

end

end A061045.P5950490956904026164

/-! ## A061045.P10154116277072594841

`A002264(floor(1/(n+1)))-A165507(A167487(n+4)-1)`
-/

namespace A061045.P10154116277072594841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 ⌊1 / (n + 1 : ℚ)⌋.toNat - A165507 (A167487 (n + 4) - 1).toNat

end

end A061045.P10154116277072594841

/-!
# A061046: Denominator of 1/36 - 1/n^2.

The programs for A061046, there is no canonical definition to state claims against.
-/

/-! ## A061046.P10642645266790426995

`A165441(A374007(n+1))`
-/

namespace A061046.P10642645266790426995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165441 (A374007 (n + 1)).toNat

end

end A061046.P10642645266790426995

/-! ## A061046.P17228460339060411849

`A165441(A052905(n+3))`
-/

namespace A061046.P17228460339060411849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165441 (A052905 (n + 3)).toNat

end

end A061046.P17228460339060411849

/-! ## A061046.P10036051624888659526

`A165441(A166136(n+4))`
-/

namespace A061046.P10036051624888659526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165441 (A166136 (n + 4)).toNat

end

end A061046.P10036051624888659526

/-! ## A061046.P7228778606850531005

`A165441(A056119(n)+16)`
-/

namespace A061046.P7228778606850531005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165441 (A056119 n + 16).toNat

end

end A061046.P7228778606850531005

/-! ## A061046.P1669719008753564169

`A165441(eq[3, A219347(n)])`
-/

namespace A061046.P1669719008753564169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061046.P1669719008753564169

/-!
# A061047: Numerator of 1/49 - 1/n^2.

The programs for A061047, there is no canonical definition to state claims against.
-/

/-! ## A061047.P15149420475356182210

`A061035(C(n+7, 2)+n+1)`
-/

namespace A061047.P15149420475356182210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061035 (Nat.choose (n + 7) 2 + n + 1)

end

end A061047.P15149420475356182210

/-! ## A061047.P999028462377894415

`A061035(A055999(n+4))`
-/

namespace A061047.P999028462377894415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061035 (A055999 (n + 4)).toNat

end

end A061047.P999028462377894415

/-! ## A061047.P12745795914193506634

`A061035(eq[6, A193592(n)])`
-/

namespace A061047.P12745795914193506634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061035 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061047.P12745795914193506634

/-! ## A061047.P12645776400815654984

`A061035(Δ[A023551(n+2)])`
-/

namespace A061047.P12645776400815654984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061035 (f1 (n + 1) - f1 n).toNat

end

end A061047.P12645776400815654984

/-! ## A061047.P3556015081994045340

`A061035(Δ[A026054(n+4)])`
-/

namespace A061047.P3556015081994045340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061035 (f1 (n + 1) - f1 n).toNat

end

end A061047.P3556015081994045340

/-! ## A061047.P11107941837926322896

`A061035(A052905(n+4)-1)`
-/

namespace A061047.P11107941837926322896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061035 (A052905 (n + 4) - 1).toNat

end

end A061047.P11107941837926322896

/-! ## A061047.P5161070655540799543

`A061035(A046691(n+5)-2)`
-/

namespace A061047.P5161070655540799543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061035 (A046691 (n + 5) - 2).toNat

end

end A061047.P5161070655540799543

/-! ## A061047.P2938317478587299556

`A061035(A000096(n+6)-5)`
-/

namespace A061047.P2938317478587299556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061035 (A000096 (n + 6) - 5).toNat

end

end A061047.P2938317478587299556

/-! ## A061047.P240976661053662713

`A061035(A000217(n+7)-6)`
-/

namespace A061047.P240976661053662713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061035 (A000217 (n + 7) - 6).toNat

end

end A061047.P240976661053662713

/-! ## A061047.P17915883495936035302

`A175779(A155212(n+4))`
-/

namespace A061047.P17915883495936035302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175779 (A155212 (n + 4)).toNat

end

end A061047.P17915883495936035302

/-!
# A061048: Denominator of 1/49 - 1/n^2.

The programs for A061048, there is no canonical definition to state claims against.
-/

/-! ## A061048.P11160618714157324049

`A061036(A055999(n+4))`
-/

namespace A061048.P11160618714157324049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061036 (A055999 (n + 4)).toNat

end

end A061048.P11160618714157324049

/-! ## A061048.P13547351426003727535

`A061036(eq[6, A193592(n)])`
-/

namespace A061048.P13547351426003727535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061036 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061048.P13547351426003727535

/-! ## A061048.P17711194500710681891

`A061036(Δ[A023551(n+2)])`
-/

namespace A061048.P17711194500710681891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061036 (f1 (n + 1) - f1 n).toNat

end

end A061048.P17711194500710681891

/-! ## A061048.P17717854137246441583

`A061036(Δ[A026054(n+4)])`
-/

namespace A061048.P17717854137246441583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061036 (f1 (n + 1) - f1 n).toNat

end

end A061048.P17717854137246441583

/-! ## A061048.P1815789703545765350

`A061036(A155212(n+3)+2)`
-/

namespace A061048.P1815789703545765350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061036 (A155212 (n + 3) + 2).toNat

end

end A061048.P1815789703545765350

/-! ## A061048.P10766794165256099519

`A061036(A000096(n+6)-5)`
-/

namespace A061048.P10766794165256099519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061036 (A000096 (n + 6) - 5).toNat

end

end A061048.P10766794165256099519

/-! ## A061048.P2436556879302115142

`A061036(A000217(n+7)-6)`
-/

namespace A061048.P2436556879302115142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061036 (A000217 (n + 7) - 6).toNat

end

end A061048.P2436556879302115142

/-! ## A061048.P6693075556588526351

`A061036(A000124(n+7)-7)`
-/

namespace A061048.P6693075556588526351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061036 (A000124 (n + 7) - 7).toNat

end

end A061048.P6693075556588526351

/-! ## A061048.P11025022346319727401

`A061036(n+2+A000096(n+5))`
-/

namespace A061048.P11025022346319727401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061036 ((n + 2 : ℤ) + A000096 (n + 5)).toNat

end

end A061048.P11025022346319727401

/-!
# A061049: Numerator of 1/64 - 1/n^2.

The programs for A061049, there is no canonical definition to state claims against.
-/

/-! ## A061049.P6934755955602595102

`A098849(n)/gcd(A000079(n), A098849(n))`
-/

namespace A061049.P6934755955602595102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098849 n : ℚ) / (Int.gcd (A000079 n) (A098849 n) : ℚ)

end

end A061049.P6934755955602595102

/-! ## A061049.P13172790911372214807

`A061035(A056126(n)+29)`
-/

namespace A061049.P13172790911372214807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061035 (A056126 n + 29).toNat

end

end A061049.P13172790911372214807

/-! ## A061049.P4803885788211369616

`A061035(eq[7, A193592(n)])`
-/

namespace A061049.P4803885788211369616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061035 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061049.P4803885788211369616

/-! ## A061049.P12840771531062295236

`A061035(A155212(n+4)+1)`
-/

namespace A061049.P12840771531062295236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061035 (A155212 (n + 4) + 1).toNat

end

end A061049.P12840771531062295236

/-! ## A061049.P18013520078535500865

`A061035(A052905(n+5)-2)`
-/

namespace A061049.P18013520078535500865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061035 (A052905 (n + 5) - 2).toNat

end

end A061049.P18013520078535500865

/-! ## A061049.P10350489137668728464

`A061035(A000217(n+8)-7)`
-/

namespace A061049.P10350489137668728464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061035 (A000217 (n + 8) - 7).toNat

end

end A061049.P10350489137668728464

/-! ## A061049.P14916028969284469414

`A061035(A000124(n+8)-8)`
-/

namespace A061049.P14916028969284469414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061035 (A000124 (n + 8) - 8).toNat

end

end A061049.P14916028969284469414

/-! ## A061049.P8096907816061976724

`A030101(A030101(n*(n+16)))`
-/

namespace A061049.P8096907816061976724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A030101 (n * (n + 16))).toNat

end

end A061049.P8096907816061976724

/-!
# A061050: Denominator of 1/64 - 1/n^2.

The programs for A061050, there is no canonical definition to state claims against.
-/

/-! ## A061050.P6466915676846423973

`A061036(eq[7, A193592(n)])`
-/

namespace A061050.P6466915676846423973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061036 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061050.P6466915676846423973

/-! ## A061050.P3059895755883252391

`A061036(A046691(n+6)-3)`
-/

namespace A061050.P3059895755883252391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061036 (A046691 (n + 6) - 3).toNat

end

end A061050.P3059895755883252391

/-! ## A061050.P17839090724700685463

`A061036(A000096(n+7)-6)`
-/

namespace A061050.P17839090724700685463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061036 (A000096 (n + 7) - 6).toNat

end

end A061050.P17839090724700685463

/-! ## A061050.P8882204641314704905

`A061036(A000217(n+8)-7)`
-/

namespace A061050.P8882204641314704905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061036 (A000217 (n + 8) - 7).toNat

end

end A061050.P8882204641314704905

/-! ## A061050.P15155815248921016930

`A061036(A000124(n+8)-8)`
-/

namespace A061050.P15155815248921016930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061036 (A000124 (n + 8) - 8).toNat

end

end A061050.P15155815248921016930

/-! ## A061050.P14339962635343070488

`A061036(n+2+A000096(n+6))`
-/

namespace A061050.P14339962635343070488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061036 ((n + 2 : ℤ) + A000096 (n + 6)).toNat

end

end A061050.P14339962635343070488

/-!
# A061052: Floor[log(n)^log(n)].

The programs for A061052, the canonical program `A061052.P9961204127598124833` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061052 has offset 2).

The definition of A061052 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(log(n+2)^log(n+2))` (program `A061052.P9961204127598124833`, by `A061052.P9961204127598124833.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A061052.P9961204127598124833

`floor(log(n+2)^log(n+2))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A061052

/-- `floor(log(n+2)^log(n+2))` -/
def P9961204127598124833.Spec : Prop :=
  ∀ n, P9961204127598124833.a n = A061052 (n + 2)

theorem P9961204127598124833.correct : P9961204127598124833.Spec := by
  intro n
  simp only [A061052, Nat.add_sub_cancel]

end A061052

/-! ## A061052.P674294747892142681

`A062419(n+2)`
-/

namespace A061052.P674294747892142681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062419 (n + 2)

end

end A061052.P674294747892142681

namespace A061052

/-- `A062419(n+2)` -/
def P674294747892142681.Spec : Prop :=
  ∀ n, P674294747892142681.a n = A061052 (n + 2)

theorem P674294747892142681.correct : P674294747892142681.Spec := by
  intro n
  simp only [A061052, Nat.add_sub_cancel, A061052.P674294747892142681.a, A061052.P9961204127598124833.a, A062419, A062419.P7669946648936108240.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061052

/-! ## A061052.P14467556260284670797

`A054977(n)*A062419(2-A001057(2*n))`
-/

namespace A061052.P14467556260284670797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A062419 (2 - A001057 (2 * n)).toNat

end

end A061052.P14467556260284670797

namespace A061052

/-- `A054977(n)*A062419(2-A001057(2*n))` -/
def P14467556260284670797.Spec : Prop :=
  ∀ n, P14467556260284670797.a n = A061052 (n + 2)

end A061052

/-! ## A061052.P12797797804860795797

`A057427(n)*A062419(2-A001057(2*n))`
-/

namespace A061052.P12797797804860795797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A062419 (2 - A001057 (2 * n)).toNat

end

end A061052.P12797797804860795797

namespace A061052

/-- `A057427(n)*A062419(2-A001057(2*n))` -/
def P12797797804860795797.Spec : Prop :=
  ∀ n, P12797797804860795797.a n = A061052 (n + 2)

end A061052

/-! ## A061052.P2604040507413877028

`A062419(2-A001057(2*n))/A001222(A073609(n))`
-/

namespace A061052.P2604040507413877028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062419 (2 - A001057 (2 * n)).toNat : ℚ) / (A001222 (A073609 n).toNat : ℚ)

end

end A061052.P2604040507413877028

namespace A061052

/-- `A062419(2-A001057(2*n))/A001222(A073609(n))` -/
def P2604040507413877028.Spec : Prop :=
  ∀ n, P2604040507413877028.a n = (A061052 (n + 2) : ℚ)

end A061052

/-!
# A061053: a(n) = (n+1)!*Sum_{k=0..n} C(2k, k)*B(n-k), where B(n) is n-th Bernoulli number.

The programs for A061053, there is no canonical definition to state claims against.
-/

/-! ## A061053.P10210324361568698602

`A067251(A000110(n)*A246455(n))`
-/

namespace A061053.P10210324361568698602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (A000110 n * A246455 n).toNat

end

end A061053.P10210324361568698602

/-!
# A061054: a(n) = floor(n + n^(3/4)).

The programs for A061054, the canonical program `A061054.P13760439551365419119` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061054 has offset 0).

The definition of A061054 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n+n^(3/4))` (program `A061054.P13760439551365419119`, by `A061054.P13760439551365419119.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A061054.P13760439551365419119

`floor(n+n^(3/4))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A061054

/-- `floor(n+n^(3/4))` -/
def P13760439551365419119.Spec : Prop :=
  ∀ n, P13760439551365419119.a n = A061054 n

theorem P13760439551365419119.correct : P13760439551365419119.Spec := by
  intro n
  simp only [A061054]

end A061054

/-! ## A061054.P10100388691608723020

`n+A062108(n)`
-/

namespace A061054.P10100388691608723020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A062108 n

end

end A061054.P10100388691608723020

namespace A061054

/-- `n+A062108(n)` -/
def P10100388691608723020.Spec : Prop :=
  ∀ n, P10100388691608723020.a n = A061054 n

theorem P10100388691608723020.correct : P10100388691608723020.Spec := by
  intro n
  simp only [A061054, Nat.add_sub_cancel, A061054.P10100388691608723020.a, A061054.P13760439551365419119.a, A062108, A062108.P1540959847004753283.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061054

/-! ## A061054.P7586182538798701485

`floor(sqrt(sqrt(n^3)))+n%(n+1)`
-/

namespace A061054.P7586182538798701485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (n ^ 3 : ℝ))⌋ + ((n % (n + 1) : ℕ) : ℤ)

end

end A061054.P7586182538798701485

namespace A061054

/-- `floor(sqrt(sqrt(n^3)))+n%(n+1)` -/
def P7586182538798701485.Spec : Prop :=
  ∀ n, P7586182538798701485.a n = A061054 n

end A061054

/-! ## A061054.P2872380207144844905

`comp[A135677(n+1)-1]`
-/

namespace A061054.P2872380207144844905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135677 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A061054.P2872380207144844905

namespace A061054

/-- `comp[A135677(n+1)-1]` -/
def P2872380207144844905.Spec : Prop :=
  ∀ n, (P2872380207144844905.a n : ℤ) = A061054 n

end A061054

/-! ## A061054.P13199527575048442609

`comp[A134917(n+1)+n]`
-/

namespace A061054.P13199527575048442609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134917 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A061054.P13199527575048442609

namespace A061054

/-- `comp[A134917(n+1)+n]` -/
def P13199527575048442609.Spec : Prop :=
  ∀ n, (P13199527575048442609.a n : ℤ) = A061054 n

end A061054

/-! ## A061054.P4205583441627225118

`A062108(n)-A001489(n)`
-/

namespace A061054.P4205583441627225118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 n - A001489 n

end

end A061054.P4205583441627225118

namespace A061054

/-- `A062108(n)-A001489(n)` -/
def P4205583441627225118.Spec : Prop :=
  ∀ n, P4205583441627225118.a n = A061054 n

theorem P4205583441627225118.correct : P4205583441627225118.Spec := by
  intro n
  simp only [A061054, Nat.add_sub_cancel, A061054.P4205583441627225118.a, A061054.P13760439551365419119.a, A001489, A001489.P15233530513763566776.a, A062108, A062108.P1540959847004753283.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061054

/-! ## A061054.P6714131797616998834

`A000196(A000093(n))+n`
-/

namespace A061054.P6714131797616998834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000093 n).toNat + (n : ℤ)

end

end A061054.P6714131797616998834

namespace A061054

/-- `A000196(A000093(n))+n` -/
def P6714131797616998834.Spec : Prop :=
  ∀ n, P6714131797616998834.a n = A061054 n

end A061054

/-! ## A061054.P3019644078769785680

`A000196(sqrt(A065733(n)))+n`
-/

namespace A061054.P3019644078769785680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway (Real.sqrt (A065733 n : ℝ))).toNat + (n : ℤ)

end

end A061054.P3019644078769785680

namespace A061054

/-- `A000196(sqrt(A065733(n)))+n` -/
def P3019644078769785680.Spec : Prop :=
  ∀ n, P3019644078769785680.a n = A061054 n

end A061054

/-! ## A061054.P6637631246197566445

`A000196(A077121(n)-1)+n`
-/

namespace A061054.P6637631246197566445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A077121 n - 1).toNat + (n : ℤ)

end

end A061054.P6637631246197566445

namespace A061054

/-- `A000196(A077121(n)-1)+n` -/
def P6637631246197566445.Spec : Prop :=
  ∀ n, P6637631246197566445.a n = A061054 n

end A061054

/-!
# A061057: Factorial splitting: write n! = x*y with x <= y and x maximal; sequence gives value of y-x.

The programs for A061057, there is no canonical definition to state claims against.
-/

/-! ## A061057.P6021009820229092510

`A060777(n+1)-A060776(n+1)`
-/

namespace A061057.P6021009820229092510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060777 (n + 1) - A060776 (n + 1)

end

end A061057.P6021009820229092510

/-! ## A061057.P15255709835153256659

`A200743(n+1)/A060776(n+1)*A200744(n+1)-A060776(n+1)`
-/

namespace A061057.P15255709835153256659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200743 (n + 1) : ℚ) / (A060776 (n + 1) : ℚ) * (A200744 (n + 1) : ℚ) - (A060776 (n + 1) : ℚ)

end

end A061057.P15255709835153256659

/-! ## A061057.P11515821316877209730

`record[A047920(n)]/A060776(n+1)-A060776(n+1)`
-/

namespace A061057.P11515821316877209730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A060776 (n + 1) : ℚ) - (A060776 (n + 1) : ℚ)

end

end A061057.P11515821316877209730

/-! ## A061057.P763449154326723008

`A060777(n+1)-record[A047920(n)]/A060777(n+1)`
-/

namespace A061057.P763449154326723008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060777 (n + 1) : ℚ) - (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A060777 (n + 1) : ℚ)

end

end A061057.P763449154326723008

/-! ## A061057.P8189976983012399166

`A060777(n+1)-record[A098361(n)]/A060777(n+1)`
-/

namespace A061057.P8189976983012399166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060777 (n + 1) : ℚ) - (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A060777 (n + 1) : ℚ)

end

end A061057.P8189976983012399166

/-! ## A061057.P932373614220365661

`A000142(n+1)/A060776(n+1)-A060776(n+1)`
-/

namespace A061057.P932373614220365661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A060776 (n + 1) : ℚ) - (A060776 (n + 1) : ℚ)

end

end A061057.P932373614220365661

/-! ## A061057.P964783218357417241

`A060777(n+1)-A000142(n+1)/A060777(n+1)`
-/

namespace A061057.P964783218357417241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060777 (n + 1) : ℚ) - (A000142 (n + 1) : ℚ) / (A060777 (n + 1) : ℚ)

end

end A061057.P964783218357417241

/-! ## A061057.P12037011298343835027

`∏[A000027(n+1)]/A060776(n+1)-A060776(n+1)`
-/

namespace A061057.P12037011298343835027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A060776 (n + 1) : ℚ) - (A060776 (n + 1) : ℚ)

end

end A061057.P12037011298343835027

/-!
# A061060: Write product of first n primes as x*y with x<y and x maximal; sequence gives value of y-x.

The programs for A061060, there is no canonical definition to state claims against.
-/

/-! ## A061060.P12714599954653106209

`A060796(n+1)-A060795(n+1)`
-/

namespace A061060.P12714599954653106209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060796 (n + 1) - A060795 (n + 1)

end

end A061060.P12714599954653106209

/-! ## A061060.P7768649283722752316

`2*A060796(n+1)-A182987(n+1)`
-/

namespace A061060.P7768649283722752316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060796 (n + 1) - A182987 (n + 1)

end

end A061060.P7768649283722752316

/-! ## A061060.P12913997293526289395

`A182987(n+1)-(A060795(n+1)+A060795(n+1))`
-/

namespace A061060.P12913997293526289395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182987 (n + 1) - (A060795 (n + 1) + A060795 (n + 1))

end

end A061060.P12913997293526289395

/-! ## A061060.P5411657828515257145

`A060796(n+1)-A182987(A000027(n+1))%A060796(n+1)`
-/

namespace A061060.P5411657828515257145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060796 (n + 1) - Int.tmod (A182987 (A000027 (n + 1)).toNat) (A060796 (n + 1))

end

end A061060.P5411657828515257145

/-! ## A061060.P8858638280854041836

`A002110(n+1)/A060795(n+1)-A060795(n+1)`
-/

namespace A061060.P8858638280854041836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (n + 1) : ℚ) / (A060795 (n + 1) : ℚ) - (A060795 (n + 1) : ℚ)

end

end A061060.P8858638280854041836

/-! ## A061060.P11568773300737800250

`A060796(n+1)-A002110(n+1)/A060796(n+1)`
-/

namespace A061060.P11568773300737800250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060796 (n + 1) : ℚ) - (A002110 (n + 1) : ℚ) / (A060796 (n + 1) : ℚ)

end

end A061060.P11568773300737800250

/-! ## A061060.P3926389096880962960

`∏[A000040(n+1)]/A060795(n+1)-A060795(n+1)`
-/

namespace A061060.P3926389096880962960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A060795 (n + 1) : ℚ) - (A060795 (n + 1) : ℚ)

end

end A061060.P3926389096880962960

/-!
# A061061: Maximal number of 132 patterns in a permutation of 1,2,...,n.

The programs for A061061, there is no canonical definition to state claims against.
-/

/-! ## A061061.P1873803876118654002

`∑[Δ[A216499(n)]-C(n, 2)]`
-/

namespace A061061.P1873803876118654002
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216499 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061061.P1873803876118654002

/-! ## A061061.P15663191723527023334

`A216499(n+1)-∑[∑[n]-n]`
-/

namespace A061061.P15663191723527023334
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216499 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061061.P15663191723527023334

/-! ## A061061.P7702478447219305375

`∑[Δ[A216499(n)]-A161680(n)]`
-/

namespace A061061.P7702478447219305375
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216499 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061061.P7702478447219305375

/-! ## A061061.P8296167591201233057

`(n+1)²+A216499(n+1)-A000292(n+1)`
-/

namespace A061061.P8296167591201233057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + (A216499 (n + 1) - A000292 (n + 1))

end

end A061061.P8296167591201233057

/-! ## A061061.P15903562288385095343

`∑[A046699(A005311(n+1)+1)-1]`
-/

namespace A061061.P15903562288385095343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (A005311 (n + 1) + 1).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061061.P15903562288385095343

/-!
# A061062: Sum of squared factorials: (0!)^2 + (1!)^2 + (2!)^2 + (3!)^2 +...+ (n!)^2.

The programs for A061062, the canonical program `A061062.P5151901858592574833` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061062 has offset 0).

The definition of A061062 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061062.P5151901858592574833

`(n²+1)*a(n-1)-n²*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A061062

/-- `(n²+1)*a(n-1)-n²*a(n-2)` -/
def P5151901858592574833.Spec : Prop :=
  ∀ n, P5151901858592574833.a n = A061062 n

theorem P5151901858592574833.correct : P5151901858592574833.Spec := by
  intro n
  simp only [A061062]

end A061062

/-! ## A061062.P7065782682990991804

`∑[n!²]`
-/

namespace A061062.P7065782682990991804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061062.P7065782682990991804

namespace A061062

/-- `∑[n!²]` -/
def P7065782682990991804.Spec : Prop :=
  ∀ n, (P7065782682990991804.a n : ℤ) = A061062 n

end A061062

/-! ## A061062.P9418683751757917700

`∑[n!^2]`
-/

namespace A061062.P9418683751757917700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061062.P9418683751757917700

namespace A061062

/-- `∑[n!^2]` -/
def P9418683751757917700.Spec : Prop :=
  ∀ n, (P9418683751757917700.a n : ℤ) = A061062 n

end A061062

/-! ## A061062.P9332154472687429378

`∑[n!*n!]`
-/

namespace A061062.P9332154472687429378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061062.P9332154472687429378

namespace A061062

/-- `∑[n!*n!]` -/
def P9332154472687429378.Spec : Prop :=
  ∀ n, (P9332154472687429378.a n : ℤ) = A061062 n

end A061062

/-! ## A061062.P15180578549637721113

`∑[root(n!, 1/2)]`
-/

namespace A061062.P15180578549637721113
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℝ) ^ (1 / ((1 : ℚ) / 2 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061062.P15180578549637721113

namespace A061062

/-- `∑[root(n!, 1/2)]` -/
def P15180578549637721113.Spec : Prop :=
  ∀ n, P15180578549637721113.a n = (A061062 n : ℝ)

end A061062

/-!
# A061063: a(n) = 2^(2^n)*3^(2^n) - 2^(2^n) - 3^(2^n).

The programs for A061063, the canonical program `A061063.P8903819421191707787` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061063 has offset 0).

The definition of A061063 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061063.P8903819421191707787

`6^2^n-2^2^n-3^2^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A061063

/-- `6^2^n-2^2^n-3^2^n` -/
def P8903819421191707787.Spec : Prop :=
  ∀ n, P8903819421191707787.a n = A061063 n

theorem P8903819421191707787.correct : P8903819421191707787.Spec := by
  intro n
  simp only [A061063]

end A061063

/-! ## A061063.P8536318330697342675

`2^2^n*3^2^n-2^2^n-3^2^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A061063.P8536318330697342675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ 2 ^ n * 3 ^ 2 ^ n : ℤ) - (2 ^ 2 ^ n : ℤ) - (3 ^ 2 ^ n : ℤ)

end

end A061063.P8536318330697342675

namespace A061063

/-- `2^2^n*3^2^n-2^2^n-3^2^n` -/
def P8536318330697342675.Spec : Prop :=
  ∀ n, P8536318330697342675.a n = A061063 n

end A061063

/-!
# A061064: Maximal number of zeros in the character table of a group with n elements.

The programs for A061064, there is no canonical definition to state claims against.
-/

/-! ## A061064.P8073412714954301113

`floor(n/4)*A295664(2^n)`
-/

namespace A061064.P8073412714954301113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋ * A295664 (2 ^ n)

end

end A061064.P8073412714954301113

/-! ## A061064.P16979019799477013220

`A007814((n+1)^floor((n-1)/4))`
-/

namespace A061064.P16979019799477013220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (⌊((n : ℤ) - 1 : ℚ) / 4⌋ : ℤ))).toNat

end

end A061064.P16979019799477013220

/-! ## A061064.P2718234117048050194

`A002265(n)*A295663(2^n)`
-/

namespace A061064.P2718234117048050194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 n * A295663 (2 ^ n)

end

end A061064.P2718234117048050194

/-! ## A061064.P15468536459593670961

`A051903((n+1)^A284316(2*n))`
-/

namespace A061064.P15468536459593670961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A284316 (2 * n) : ℤ))).toNat

end

end A061064.P15468536459593670961

/-! ## A061064.P13808583043199378428

`A067029((n+1)^(A340830(n+1)-1))`
-/

namespace A061064.P13808583043199378428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A340830 (n + 1) - 1 : ℤ))).toNat

end

end A061064.P13808583043199378428

/-!
# A061066: a(n) = (prime(n)^2 - 1)/8.

The programs for A061066, the canonical program `A061066.P10749500264969965576` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061066 has offset 2).

The definition of A061066 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061066.P9360665646074186748

`(A000040(n+2)²-1)/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A061066.P9360665646074186748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 2) ^ 2 - 1 : ℚ) / 8

end

end A061066.P9360665646074186748

namespace A061066

/-- `(A000040(n+2)²-1)/8` -/
def P9360665646074186748.Spec : Prop :=
  ∀ n, P9360665646074186748.a n = (A061066 (n + 2) : ℚ)

end A061066

/-! ## A061066.P10749500264969965576

`A000217(A005097(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A061066

/-- `A000217(A005097(n+1))` -/
def P10749500264969965576.Spec : Prop :=
  ∀ n, P10749500264969965576.a n = A061066 (n + 2)

theorem P10749500264969965576.correct : P10749500264969965576.Spec := by
  intro n
  simp only [A061066, Nat.add_sub_cancel]

end A061066

/-! ## A061066.P15250406119578457384

`floor(p?[2*n+1]²/8)`
-/

namespace A061066.P15250406119578457384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2 : ℚ) / 8⌋

end

end A061066.P15250406119578457384

namespace A061066

/-- `floor(p?[2*n+1]²/8)` -/
def P15250406119578457384.Spec : Prop :=
  ∀ n, P15250406119578457384.a n = A061066 (n + 2)

end A061066

/-! ## A061066.P9176147750304225638

`round(p?[2*n+1]²/8)`
-/

namespace A061066.P9176147750304225638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2 : ℚ) / 8)

end

end A061066.P9176147750304225638

namespace A061066

/-- `round(p?[2*n+1]²/8)` -/
def P9176147750304225638.Spec : Prop :=
  ∀ n, P9176147750304225638.a n = A061066 (n + 2)

end A061066

/-! ## A061066.P3103981309068141259

`A024701(n+1)/2`
-/

namespace A061066.P3103981309068141259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024701 (n + 1) : ℚ) / 2

end

end A061066.P3103981309068141259

namespace A061066

/-- `A024701(n+1)/2` -/
def P3103981309068141259.Spec : Prop :=
  ∀ n, P3103981309068141259.a n = (A061066 (n + 2) : ℚ)

end A061066

/-! ## A061066.P8321790325968780402

`A216244(n+2)/4`
-/

namespace A061066.P8321790325968780402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216244 (n + 2) : ℚ) / 4

end

end A061066.P8321790325968780402

namespace A061066

/-- `A216244(n+2)/4` -/
def P8321790325968780402.Spec : Prop :=
  ∀ n, P8321790325968780402.a n = (A061066 (n + 2) : ℚ)

theorem P8321790325968780402.correct : P8321790325968780402.Spec := by
  intro n
  simp only [A061066, Nat.add_sub_cancel, A061066.P8321790325968780402.a, A061066.P10749500264969965576.a, A000217, A000217.P10269402890581615239.a, A005097, A005097.P2146150579650678334.a, A216244, A216244.P11756277930264745226.a, A130290, A130290.P12006832031725450867.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A061066

/-! ## A061066.P9651625736461625817

`C(A006254(n+1), 2)`
-/

namespace A061066.P9651625736461625817
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006254 (n + 1)).toNat 2

end

end A061066.P9651625736461625817

namespace A061066

/-- `C(A006254(n+1), 2)` -/
def P9651625736461625817.Spec : Prop :=
  ∀ n, (P9651625736461625817.a n : ℤ) = A061066 (n + 2)

end A061066

/-! ## A061066.P13519625195759087427

`(A074367(n+1)+1)/2`
-/

namespace A061066.P13519625195759087427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074367 (n + 1) + 1 : ℚ) / 2

end

end A061066.P13519625195759087427

namespace A061066

/-- `(A074367(n+1)+1)/2` -/
def P13519625195759087427.Spec : Prop :=
  ∀ n, P13519625195759087427.a n = (A061066 (n + 2) : ℚ)

end A061066

/-! ## A061066.P4902301746031113904

`A222963(n+2)/2+1`
-/

namespace A061066.P4902301746031113904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222963 (n + 2) : ℚ) / 2 + 1

end

end A061066.P4902301746031113904

namespace A061066

/-- `A222963(n+2)/2+1` -/
def P4902301746031113904.Spec : Prop :=
  ∀ n, P4902301746031113904.a n = (A061066 (n + 2) : ℚ)

end A061066

/-! ## A061066.P8326897867159623207

`(A243887(n+1)+1)/4`
-/

namespace A061066.P8326897867159623207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243887 (n + 1) + 1 : ℚ) / 4

end

end A061066.P8326897867159623207

namespace A061066

/-- `(A243887(n+1)+1)/4` -/
def P8326897867159623207.Spec : Prop :=
  ∀ n, P8326897867159623207.a n = (A061066 (n + 2) : ℚ)

theorem P8326897867159623207.correct : P8326897867159623207.Spec := by
  intro n
  simp only [A061066, Nat.add_sub_cancel, A061066.P8326897867159623207.a, A061066.P10749500264969965576.a, A000217, A000217.P10269402890581615239.a, A005097, A005097.P2146150579650678334.a, A243887, A243887.P5598863365777822828.a, A130290, A130290.P12006832031725450867.a, A216244, A216244.P11756277930264745226.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A061066

/-! ## A061066.P13751322701187260156

`(A066885(n+2)-1)/4`
-/

namespace A061066.P13751322701187260156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066885 (n + 2) - 1 : ℚ) / 4

end

end A061066.P13751322701187260156

namespace A061066

/-- `(A066885(n+2)-1)/4` -/
def P13751322701187260156.Spec : Prop :=
  ∀ n, P13751322701187260156.a n = (A061066 (n + 2) : ℚ)

end A061066

/-! ## A061066.P1347013154473426572

`C(A067076(n+1)+2, 2)`
-/

namespace A061066.P1347013154473426572
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A067076 (n + 1) + 2).toNat 2

end

end A061066.P1347013154473426572

namespace A061066

/-- `C(A067076(n+1)+2, 2)` -/
def P1347013154473426572.Spec : Prop :=
  ∀ n, (P1347013154473426572.a n : ℤ) = A061066 (n + 2)

end A061066

/-! ## A061066.P6714679809503550804

`C(A098090(n+1)-1, 2)`
-/

namespace A061066.P6714679809503550804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A098090 (n + 1) - 1).toNat 2

end

end A061066.P6714679809503550804

namespace A061066

/-- `C(A098090(n+1)-1, 2)` -/
def P6714679809503550804.Spec : Prop :=
  ∀ n, (P6714679809503550804.a n : ℤ) = A061066 (n + 2)

end A061066

/-! ## A061066.P9032447479907740456

`C(A089253(n+1)-2, 2)`
-/

namespace A061066.P9032447479907740456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A089253 (n + 1) - 2).toNat 2

end

end A061066.P9032447479907740456

namespace A061066

/-- `C(A089253(n+1)-2, 2)` -/
def P9032447479907740456.Spec : Prop :=
  ∀ n, (P9032447479907740456.a n : ℤ) = A061066 (n + 2)

end A061066

/-! ## A061066.P13904299621511237252

`C(A055670(n+2)/2, 2)`
-/

namespace A061066.P13904299621511237252
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((A055670 (n + 2) : ℚ) / 2)).toNat 2

end

end A061066.P13904299621511237252

namespace A061066

/-- `C(A055670(n+2)/2, 2)` -/
def P13904299621511237252.Spec : Prop :=
  ∀ n, (P13904299621511237252.a n : ℤ) = A061066 (n + 2)

end A061066

/-! ## A061066.P11590092482355468366

`∑[A062046(n+1)/2]+1`
-/

namespace A061066.P11590092482355468366
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062046 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A061066.P11590092482355468366

namespace A061066

/-- `∑[A062046(n+1)/2]+1` -/
def P11590092482355468366.Spec : Prop :=
  ∀ n, P11590092482355468366.a n = (A061066 (n + 2) : ℚ)

end A061066

/-! ## A061066.P12423793596923258142

`A267896(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A061066.P12423793596923258142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A267896 (n + 1) + a (n - 1)

end

end A061066.P12423793596923258142

namespace A061066

/-- `A267896(n+1)+a(n-1)` -/
def P12423793596923258142.Spec : Prop :=
  ∀ n, P12423793596923258142.a n = A061066 (n + 2)

end A061066

/-! ## A061066.P3817021065718556341

`A030005(n+2)+A005097(n+1)`
-/

namespace A061066.P3817021065718556341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030005 (n + 2) + A005097 (n + 1)

end

end A061066.P3817021065718556341

namespace A061066

/-- `A030005(n+2)+A005097(n+1)` -/
def P3817021065718556341.Spec : Prop :=
  ∀ n, P3817021065718556341.a n = A061066 (n + 2)

end A061066

/-! ## A061066.P17758103993313883483

`lcm(A024698(n+1), A271974(n+2))`
-/

namespace A061066.P17758103993313883483
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A024698 (n + 1)) (A271974 (n + 2))

end

end A061066.P17758103993313883483

namespace A061066

/-- `lcm(A024698(n+1), A271974(n+2))` -/
def P17758103993313883483.Spec : Prop :=
  ∀ n, (P17758103993313883483.a n : ℤ) = A061066 (n + 2)

end A061066

/-! ## A061066.P2032007186491719247

`A005097(n+1)/2*A006254(n+1)`
-/

namespace A061066.P2032007186491719247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005097 (n + 1) : ℚ) / 2 * (A006254 (n + 1) : ℚ)

end

end A061066.P2032007186491719247

namespace A061066

/-- `A005097(n+1)/2*A006254(n+1)` -/
def P2032007186491719247.Spec : Prop :=
  ∀ n, P2032007186491719247.a n = (A061066 (n + 2) : ℚ)

end A061066

/-!
# A061067: m-th prime prime(m) is included iff prime(m) + m is also prime.

The programs for A061067, there is no canonical definition to state claims against.
-/

/-! ## A061067.P18319374560763235045

`A061068(n+1)-A064402(n+1)`
-/

namespace A061067.P18319374560763235045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061068 (n + 1) - A064402 (n + 1)

end

end A061067.P18319374560763235045

/-! ## A061067.P13032715963703030677

`p?[A077510(n+1)]`
-/

namespace A061067.P13032715963703030677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A061067.P13032715963703030677

/-! ## A061067.P6191208075366482842

`A000040(A064402(n+1))`
-/

namespace A061067.P6191208075366482842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A064402 (n + 1)).toNat

end

end A061067.P6191208075366482842

/-! ## A061067.P7982226275958653504

`A008578(A064402(n+1)+1)`
-/

namespace A061067.P7982226275958653504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A064402 (n + 1) + 1).toNat

end

end A061067.P7982226275958653504

/-! ## A061067.P16267194569334456639

`A158611(A064402(n+1)+2)`
-/

namespace A061067.P16267194569334456639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A064402 (n + 1) + 2).toNat

end

end A061067.P16267194569334456639

/-! ## A061067.P10936819292911597370

`A000040(eq[1, A072064(n+1)]+1)`
-/

namespace A061067.P10936819292911597370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A061067.P10936819292911597370

/-! ## A061067.P11187783365653546046

`A000040(lt[A072064(n+1), 2]+1)`
-/

namespace A061067.P11187783365653546046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072064 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A061067.P11187783365653546046

/-! ## A061067.P1063636527691524604

`∩[A000040(n+1), A077510(n+1)]`
-/

namespace A061067.P1063636527691524604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077510 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061067.P1063636527691524604

/-! ## A061067.P5054197692016192797

`∩[A008578(n+1), A077510(n+1)]`
-/

namespace A061067.P5054197692016192797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077510 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061067.P5054197692016192797

/-! ## A061067.P6246815231356454502

`∩[A045319(n+1), A077510(n+1)]`
-/

namespace A061067.P6246815231356454502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077510 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061067.P6246815231356454502

/-! ## A061067.P13667663953960242123

`∩[A046022(n+1), A077510(n+1)]`
-/

namespace A061067.P13667663953960242123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077510 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061067.P13667663953960242123

/-! ## A061067.P12411075865976718217

`∩[A051948(n+1), A077510(n+1)]`
-/

namespace A061067.P12411075865976718217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077510 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061067.P12411075865976718217

/-! ## A061067.P16702003828399059384

`∩[A062972(n+1), A077510(n+1)]`
-/

namespace A061067.P16702003828399059384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077510 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061067.P16702003828399059384

/-! ## A061067.P6401353274734069390

`∩[A077510(n+1), A116974(n+1)]`
-/

namespace A061067.P6401353274734069390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061067.P6401353274734069390

/-! ## A061067.P4335990014335316003

`∩[A077510(n+1), A158611(n+1)]`
-/

namespace A061067.P4335990014335316003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061067.P4335990014335316003

/-! ## A061067.P5682797360302109107

`∩[A077510(n+1), A175787(n+1)]`
-/

namespace A061067.P5682797360302109107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061067.P5682797360302109107

/-! ## A061067.P6016626853597999600

`∩[A077510(n+1), A182986(n+1)]`
-/

namespace A061067.P6016626853597999600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061067.P6016626853597999600

/-! ## A061067.P8693578131693020639

`∩[A077510(n+1), A251595(n+1)]`
-/

namespace A061067.P8693578131693020639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061067.P8693578131693020639

/-! ## A061067.P4296995454240937743

`∩[A077510(n+1), A284696(n+1)]`
-/

namespace A061067.P4296995454240937743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061067.P4296995454240937743

/-! ## A061067.P1941745715609832335

`∩[A326715(n+1), A077510(n+1)]`
-/

namespace A061067.P1941745715609832335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077510 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061067.P1941745715609832335

/-!
# A061068: Primes which are the sum of a prime and its subscript.

The programs for A061068, there is no canonical definition to state claims against.
-/

/-! ## A061068.P1799745209217994766

`A064402(n+1)+A061067(n)`
-/

namespace A061068.P1799745209217994766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064402 (n + 1) + A061067 n

end

end A061068.P1799745209217994766

/-! ## A061068.P10083696643281348421

`p?[A014688(n+1)]`
-/

namespace A061068.P10083696643281348421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A061068.P10083696643281348421

/-! ## A061068.P17661774454661957484

`p?[A167136(n+1)]`
-/

namespace A061068.P17661774454661957484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A061068.P17661774454661957484

/-! ## A061068.P1968467975341377832

`p?[∑[A230847(n+1)]]`
-/

namespace A061068.P1968467975341377832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A061068.P1968467975341377832

/-! ## A061068.P2505504815685510559

`p?[A095116(n+1)+1]`
-/

namespace A061068.P2505504815685510559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A061068.P2505504815685510559

/-! ## A061068.P6335829544629984313

`p?[A090178(n+1)-1]`
-/

namespace A061068.P6335829544629984313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090178 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A061068.P6335829544629984313

/-! ## A061068.P17534462406103428392

`p?[A173137(n+1)-2]`
-/

namespace A061068.P17534462406103428392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173137 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A061068.P17534462406103428392

/-! ## A061068.P10264563303363562717

`p?[A008578(n+1)+n]`
-/

namespace A061068.P10264563303363562717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A061068.P10264563303363562717

/-! ## A061068.P10953566287598420088

`p?[A008864(n+1)+n]`
-/

namespace A061068.P10953566287598420088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A061068.P10953566287598420088

/-! ## A061068.P4116480285615548802

`p?[A028815(n+1)+n]`
-/

namespace A061068.P4116480285615548802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A061068.P4116480285615548802

/-! ## A061068.P5920898167841923813

`p?[A182986(n+1)+n]`
-/

namespace A061068.P5920898167841923813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A061068.P5920898167841923813

/-! ## A061068.P12641542567997584937

`p?[A158611(n+2)+n]`
-/

namespace A061068.P12641542567997584937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A061068.P12641542567997584937

/-! ## A061068.P11902276627576831100

`p?[A299763(n+2)+n]`
-/

namespace A061068.P11902276627576831100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A061068.P11902276627576831100

/-! ## A061068.P2720567238156113533

`p?[∑[A054541(n+1)+1]]`
-/

namespace A061068.P2720567238156113533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A061068.P2720567238156113533

/-! ## A061068.P7665071608890266668

`p?[∑[A230846(n+1)]+1]`
-/

namespace A061068.P7665071608890266668
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230846 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A061068.P7665071608890266668

/-! ## A061068.P4911395676474840443

`p?[A000040(n+1)+1+n]`
-/

namespace A061068.P4911395676474840443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A061068.P4911395676474840443

/-! ## A061068.P7462022850500869309

`p?[A006093(n+1)+2+n]`
-/

namespace A061068.P7462022850500869309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A061068.P7462022850500869309

/-! ## A061068.P12938245398863664752

`A014688(A064402(n+1))`
-/

namespace A061068.P12938245398863664752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (A064402 (n + 1)).toNat

end

end A061068.P12938245398863664752

/-!
# A061069: Number of distinct values in the list of divisor-sums {sigma(j) : j=1...n}.

The programs for A061069, there is no canonical definition to state claims against.
-/

/-! ## A061069.P15734128167544944395

`∑[round(acot(A263025(n+1)))]`
-/

namespace A061069.P15734128167544944395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A263025 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061069.P15734128167544944395

/-! ## A061069.P2880243820042612137

`∑[C(A275987(n+1), n+1)]`
-/

namespace A061069.P2880243820042612137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A275987 (n + 1)).toNat (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061069.P2880243820042612137

/-! ## A061069.P7502716248152642573

`∑[A283361(2*A263025(n+1)²)]`
-/

namespace A061069.P7502716248152642573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283361 (2 * A263025 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061069.P7502716248152642573

/-! ## A061069.P18158767792746789272

`∑[A000007(floor(n/A275987(n+1)))]`
-/

namespace A061069.P18158767792746789272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ⌊(n : ℚ) / (A275987 (n + 1) : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061069.P18158767792746789272

/-! ## A061069.P16925496511715623766

`∑[A000007(n+1-A275987(n+1))]`
-/

namespace A061069.P16925496511715623766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n + 1 : ℤ) - A275987 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061069.P16925496511715623766

/-! ## A061069.P10044534132368416116

`∑[A030101(floor(A275987(n+1)/(n+1)))]`
-/

namespace A061069.P10044534132368416116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 ⌊(A275987 (n + 1) : ℚ) / (n + 1 : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061069.P10044534132368416116

/-! ## A061069.P17765767165237064458

`∑[A263025(n+1)^A263041(2*n+3)]`
-/

namespace A061069.P17765767165237064458
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263025 (n + 1) : ℚ) ^ (A263041 (2 * n + 3) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061069.P17765767165237064458

/-!
# A061070: Number of distinct values in the list of values of the Euler totient function {phi(j) : j=1..n}.

The programs for A061070, there is no canonical definition to state claims against.
-/

/-! ## A061070.P1250268532580529334

`∑[floor(acot(A171934(n+1)))]`
-/

namespace A061070.P1250268532580529334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A171934 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061070.P1250268532580529334

/-! ## A061070.P8832085069741634528

`∑[round(acot(A081373(n+1)))]`
-/

namespace A061070.P8832085069741634528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A081373 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061070.P8832085069741634528

/-! ## A061070.P15411306182235100425

`∑[char[A002181(n+1)-1]]`
-/

namespace A061070.P15411306182235100425
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002181 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061070.P15411306182235100425

/-! ## A061070.P8478890558137339974

`∑[A000007(A171934(n+1))]`
-/

namespace A061070.P8478890558137339974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A171934 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061070.P8478890558137339974

/-! ## A061070.P4798716305919006952

`∑[A036987(A081373(n+1)²)]`
-/

namespace A061070.P4798716305919006952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A081373 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061070.P4798716305919006952

/-! ## A061070.P13581474301747539184

`∑[A000007(A081373(n+1)-1)]`
-/

namespace A061070.P13581474301747539184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A081373 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061070.P13581474301747539184

/-! ## A061070.P9977922666724890820

`∑[char[A049283(n+1)-1]]`
-/

namespace A061070.P9977922666724890820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061070.P9977922666724890820

/-! ## A061070.P6797839251101602991

`∑[char[A015126(n+1)-1]]`
-/

namespace A061070.P6797839251101602991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015126 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061070.P6797839251101602991

/-!
# A061071: Number of distinct values in the list of number of divisors, d(j), j=1...n.

The programs for A061071, there is no canonical definition to state claims against.
-/

/-! ## A061071.P8064154681118035542

`∑[floor(1/A067004(n+1))]`
-/

namespace A061071.P8064154681118035542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A067004 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061071.P8064154681118035542

/-! ## A061071.P3796823899909930401

`∑[char[A005179(n+1)-1]]`
-/

namespace A061071.P3796823899909930401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061071.P3796823899909930401

/-! ## A061071.P2559624309573013562

`∑[char[A007416(n+1)-1]]`
-/

namespace A061071.P2559624309573013562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061071.P2559624309573013562

/-! ## A061071.P7425101191714139463

`∑[C(A140635(n+1), n+1)]`
-/

namespace A061071.P7425101191714139463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A140635 (n + 1)).toNat (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061071.P7425101191714139463

/-! ## A061071.P7452269066445554816

`∑[floor(4/(A347982(n+1)²+2))]`
-/

namespace A061071.P7452269066445554816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 / (A347982 (n + 1) ^ 2 + 2 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061071.P7452269066445554816

/-! ## A061071.P12219940592527624117

`∑[A047983(a(A047983(n+1))+1)]-1` with `a(0)=2`
-/

namespace A061071.P12219940592527624117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A047983 (f1 (A047983 (n + 1)).toNat + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A061071.P12219940592527624117

/-! ## A061071.P16879862997078399242

`∑[A008683(A067004(n+1)²)]`
-/

namespace A061071.P16879862997078399242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A067004 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061071.P16879862997078399242

/-! ## A061071.P9912910288607267840

`∑[and(1, Δ[A339514(n)])]`
-/

namespace A061071.P9912910288607267840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339514 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061071.P9912910288607267840

/-! ## A061071.P15316193049905985041

`∑[(A344853(n)+Δ[A339514(n)])%2]`
-/

namespace A061071.P15316193049905985041
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339514 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344853 n + (f2 (n + 1) - f2 n)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061071.P15316193049905985041

/-!
# A061072: Smallest integer with A002191(n) divisors, i.e., the number of divisors equals the sum of the divisors of a different number.

The programs for A061072, there is no canonical definition to state claims against.
-/

/-! ## A061072.P10863761920986662362

`A005179(A002191(n+1))`
-/

namespace A061072.P10863761920986662362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (A002191 (n + 1)).toNat

end

end A061072.P10863761920986662362

/-! ## A061072.P7610256711210485024

`A005179(∑{d}[A002192(n+1), #])`
-/

namespace A061072.P7610256711210485024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A061072.P7610256711210485024

/-! ## A061072.P17213260712168572136

`A005179(∑{d}[A329821(n+1), #])`
-/

namespace A061072.P17213260712168572136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A061072.P17213260712168572136

/-! ## A061072.P5387947342486331552

`A005179(eq[1, char[A090128(n+1)]])`
-/

namespace A061072.P5387947342486331552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090128 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A061072.P5387947342486331552

/-! ## A061072.P477767312620346206

`A005179(record[∑{d}[A051444(n+1), #]])`
-/

namespace A061072.P477767312620346206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A061072.P477767312620346206

/-! ## A061072.P104509136455330548

`A005179(A000203(A329821(n+1)))`
-/

namespace A061072.P104509136455330548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (A000203 (A329821 (n + 1)).toNat).toNat

end

end A061072.P104509136455330548

/-!
# A061074: Smallest number that begins with 1, has digits in order 123...901... and is divisible by n. If no such number exists then a(n) = 0.

The programs for A061074, there is no canonical definition to state claims against.
-/

/-! ## A061074.P13793627383574827729

`A057137(A061311(n+1))`
-/

namespace A061074.P13793627383574827729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057137 (A061311 (n + 1)).toNat

end

end A061074.P13793627383574827729

/-!
# A061075: Greatest prime number p(n) with decimal fraction period of length n.

The programs for A061075, there is no canonical definition to state claims against.
-/

/-! ## A061075.P2874118555197098423

`A046107(∑[A112505(n+1)])`
-/

namespace A061075.P2874118555197098423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046107 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A061075.P2874118555197098423

/-! ## A061075.P16999237906491637696

`A046107(∑[∑{e}[A064126(n+1), #]])`
-/

namespace A061075.P16999237906491637696
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064126 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046107 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A061075.P16999237906491637696

/-! ## A061075.P10347178080949770954

`A005422(n+1)-A353753(A005425(n))`
-/

namespace A061075.P10347178080949770954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005422 (n + 1) - A353753 (A005425 n).toNat

end

end A061075.P10347178080949770954

/-!
# A061076: a(n) is the sum of the products of the digits of all the numbers from 1 to n.

The programs for A061076, the canonical program `A061076.P17281912123953556556` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061076 has offset 1).

The definition of A061076 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061076.P17281912123953556556

`∑[∏{digits}[n+1, #]]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A061076

/-- `∑[∏{digits}[n+1, #]]` -/
def P17281912123953556556.Spec : Prop :=
  ∀ n, (P17281912123953556556.a n : ℤ) = A061076 (n + 1)

theorem P17281912123953556556.correct : P17281912123953556556.Spec := by
  intro n
  simp only [A061076, Nat.add_sub_cancel]

end A061076

/-! ## A061076.P17166355896739735301

`∏{digits}[n+1, #]+a(n-1)` with `a(0)=1`
-/

namespace A061076.P17166355896739735301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod + a (n - 1)

end

end A061076.P17166355896739735301

namespace A061076

/-- `∏{digits}[n+1, #]+a(n-1)` -/
def P17166355896739735301.Spec : Prop :=
  ∀ n, (P17166355896739735301.a n : ℤ) = A061076 (n + 1)

end A061076

/-! ## A061076.P12726013287692245591

`∑[A007954(n+1)]`
-/

namespace A061076.P12726013287692245591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061076.P12726013287692245591

namespace A061076

/-- `∑[A007954(n+1)]` -/
def P12726013287692245591.Spec : Prop :=
  ∀ n, P12726013287692245591.a n = A061076 (n + 1)

end A061076

/-! ## A061076.P16458732208307048582

`∑[abs(A187844(n+1))]`
-/

namespace A061076.P16458732208307048582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A187844 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061076.P16458732208307048582

namespace A061076

/-- `∑[abs(A187844(n+1))]` -/
def P16458732208307048582.Spec : Prop :=
  ∀ n, P16458732208307048582.a n = A061076 (n + 1)

end A061076

/-! ## A061076.P15181760022680047151

`∑[n+1-A070565(n+1)]`
-/

namespace A061076.P15181760022680047151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A070565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061076.P15181760022680047151

namespace A061076

/-- `∑[n+1-A070565(n+1)]` -/
def P15181760022680047151.Spec : Prop :=
  ∀ n, P15181760022680047151.a n = A061076 (n + 1)

theorem P15181760022680047151.correct : P15181760022680047151.Spec := by
  intro n
  simp only [A061076, Nat.add_sub_cancel, A061076.P15181760022680047151.f1, A061076.P15181760022680047151.a, A061076.P17281912123953556556.f2, A061076.P17281912123953556556.f1, A061076.P17281912123953556556.a, A070565, A070565.P8773353703818407228.f1, A070565.P8773353703818407228.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061076

/-! ## A061076.P7751447070755009307

`∑[A230099(n+1)-(n+1)]`
-/

namespace A061076.P7751447070755009307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230099 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061076.P7751447070755009307

namespace A061076

/-- `∑[A230099(n+1)-(n+1)]` -/
def P7751447070755009307.Spec : Prop :=
  ∀ n, P7751447070755009307.a n = A061076 (n + 1)

theorem P7751447070755009307.correct : P7751447070755009307.Spec := by
  intro n
  simp only [A061076, Nat.add_sub_cancel, A061076.P7751447070755009307.f1, A061076.P7751447070755009307.a, A061076.P17281912123953556556.f2, A061076.P17281912123953556556.f1, A061076.P17281912123953556556.a, A230099, A230099.P7094775947428333460.f1, A230099.P7094775947428333460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061076

/-! ## A061076.P1759393534773029574

`A070280(n+2)-1`
-/

namespace A061076.P1759393534773029574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070280 (n + 2) - 1

end

end A061076.P1759393534773029574

namespace A061076

/-- `A070280(n+2)-1` -/
def P1759393534773029574.Spec : Prop :=
  ∀ n, P1759393534773029574.a n = A061076 (n + 1)

end A061076

/-! ## A061076.P18288715080781439928

`∑[A098736(n+1)/(n+1)]`
-/

namespace A061076.P18288715080781439928
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098736 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061076.P18288715080781439928

namespace A061076

/-- `∑[A098736(n+1)/(n+1)]` -/
def P18288715080781439928.Spec : Prop :=
  ∀ n, P18288715080781439928.a n = (A061076 (n + 1) : ℚ)

end A061076

/-! ## A061076.P15726551018030836910

`∑[A007953(n+1)-A062329(n+1)]`
-/

namespace A061076.P15726551018030836910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) - A062329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061076.P15726551018030836910

namespace A061076

/-- `∑[A007953(n+1)-A062329(n+1)]` -/
def P15726551018030836910.Spec : Prop :=
  ∀ n, P15726551018030836910.a n = A061076 (n + 1)

end A061076

/-! ## A061076.P2521107995841872982

`A023443(A070280(n+2))`
-/

namespace A061076.P2521107995841872982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A070280 (n + 2)).toNat

end

end A061076.P2521107995841872982

namespace A061076

/-- `A023443(A070280(n+2))` -/
def P2521107995841872982.Spec : Prop :=
  ∀ n, P2521107995841872982.a n = A061076 (n + 1)

end A061076

/-!
# A061077: a(n) is the sum of the products of the digits of the first n odd numbers.

The programs for A061077, the canonical program `A061077.P13793356847409801314` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061077 has offset 1).

The definition of A061077 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061077.P13793356847409801314

`∑[∏{digits}[Δ[n²], #]]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A061077

/-- `∑[∏{digits}[Δ[n²], #]]` -/
def P13793356847409801314.Spec : Prop :=
  ∀ n, (P13793356847409801314.a n : ℤ) = A061077 (n + 1)

theorem P13793356847409801314.correct : P13793356847409801314.Spec := by
  intro n
  simp only [A061077, Nat.add_sub_cancel]

end A061077

/-! ## A061077.P8039126881033943718

`∑[abs(∏{digits}[2*n+1, -#])]`
-/

namespace A061077.P8039126881033943718
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => -(x : ℤ)).prod|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061077.P8039126881033943718

namespace A061077

/-- `∑[abs(∏{digits}[2*n+1, -#])]` -/
def P8039126881033943718.Spec : Prop :=
  ∀ n, P8039126881033943718.a n = A061077 (n + 1)

end A061077

/-! ## A061077.P7851208900683606952

`∑[sqrt(∏{digits}[2*n+1, #²])]`
-/

namespace A061077.P7851208900683606952
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x ^ 2).prod : ℕ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061077.P7851208900683606952

namespace A061077

/-- `∑[sqrt(∏{digits}[2*n+1, #²])]` -/
def P7851208900683606952.Spec : Prop :=
  ∀ n, P7851208900683606952.a n = (A061077 (n + 1) : ℝ)

end A061077

/-! ## A061077.P10287871530977092319

`∑[∏{digits}[n+1+n, sqrt(#)]²]`
-/

namespace A061077.P10287871530977092319
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => Real.sqrt (x : ℝ)).prod ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061077.P10287871530977092319

namespace A061077

/-- `∑[∏{digits}[n+1+n, sqrt(#)]²]` -/
def P10287871530977092319.Spec : Prop :=
  ∀ n, P10287871530977092319.a n = (A061077 (n + 1) : ℝ)

end A061077

/-! ## A061077.P816078077567069132

`∏{digits}[Δ[n²], #]+a(n-1)` with `a(0)=1`
-/

namespace A061077.P816078077567069132
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod + a (n - 1)

end

end A061077.P816078077567069132

namespace A061077

/-- `∏{digits}[Δ[n²], #]+a(n-1)` -/
def P816078077567069132.Spec : Prop :=
  ∀ n, (P816078077567069132.a n : ℤ) = A061077 (n + 1)

end A061077

/-! ## A061077.P2767130848750736812

`∑[3*∏{digits}[2*n+1, #]]/3`
-/

namespace A061077.P2767130848750736812
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3

end

end A061077.P2767130848750736812

namespace A061077

/-- `∑[3*∏{digits}[2*n+1, #]]/3` -/
def P2767130848750736812.Spec : Prop :=
  ∀ n, P2767130848750736812.a n = (A061077 (n + 1) : ℚ)

end A061077

/-! ## A061077.P8457238274497385916

`∑[∏{digits}[2*n+1, #]+1]-(n+1)`
-/

namespace A061077.P8457238274497385916
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A061077.P8457238274497385916

namespace A061077

/-- `∑[∏{digits}[2*n+1, #]+1]-(n+1)` -/
def P8457238274497385916.Spec : Prop :=
  ∀ n, P8457238274497385916.a n = A061077 (n + 1)

end A061077

/-! ## A061077.P9489208204769785996

`∑[gcd(n, n+1)*∏{digits}[2*n+1, #]]`
-/

namespace A061077.P9489208204769785996
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (n + 1) * ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061077.P9489208204769785996

namespace A061077

/-- `∑[gcd(n, n+1)*∏{digits}[2*n+1, #]]` -/
def P9489208204769785996.Spec : Prop :=
  ∀ n, (P9489208204769785996.a n : ℤ) = A061077 (n + 1)

end A061077

/-! ## A061077.P2058804619052135197

`∑[abs(A187844(2*n+1))]`
-/

namespace A061077.P2058804619052135197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A187844 (2 * n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061077.P2058804619052135197

namespace A061077

/-- `∑[abs(A187844(2*n+1))]` -/
def P2058804619052135197.Spec : Prop :=
  ∀ n, P2058804619052135197.a n = A061077 (n + 1)

end A061077

/-! ## A061077.P10021370196487325480

`∑[A007954(Δ[n²])]`
-/

namespace A061077.P10021370196487325480
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061077.P10021370196487325480

namespace A061077

/-- `∑[A007954(Δ[n²])]` -/
def P10021370196487325480.Spec : Prop :=
  ∀ n, P10021370196487325480.a n = A061077 (n + 1)

end A061077

/-! ## A061077.P14579835166682474605

`A061076(2*(n+1))-A061078(n+1)`
-/

namespace A061077.P14579835166682474605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061076 (2 * (n + 1)) - A061078 (n + 1)

end

end A061077.P14579835166682474605

namespace A061077

/-- `A061076(2*(n+1))-A061078(n+1)` -/
def P14579835166682474605.Spec : Prop :=
  ∀ n, P14579835166682474605.a n = A061077 (n + 1)

end A061077

/-! ## A061077.P3107930081986645240

`∑[A007953(2*n+1)-A062329(2*n+1)]`
-/

namespace A061077.P3107930081986645240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (2 * n + 1) - A062329 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061077.P3107930081986645240

namespace A061077

/-- `∑[A007953(2*n+1)-A062329(2*n+1)]` -/
def P3107930081986645240.Spec : Prop :=
  ∀ n, P3107930081986645240.a n = A061077 (n + 1)

end A061077

/-! ## A061077.P15062032506218191916

`A028310(∑[A007954(2*n+1)])`
-/

namespace A061077.P15062032506218191916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A061077.P15062032506218191916

namespace A061077

/-- `A028310(∑[A007954(2*n+1)])` -/
def P15062032506218191916.Spec : Prop :=
  ∀ n, P15062032506218191916.a n = A061077 (n + 1)

end A061077

/-!
# A061078: Sum of the products of the digits of the first n positive even numbers.

The programs for A061078, the canonical program `A061078.P16396087921102454822` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061078 has offset 1).

The definition of A061078 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061078.P16396087921102454822

`∑[∏{digits}[2*(n+1), #]]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A061078

/-- `∑[∏{digits}[2*(n+1), #]]` -/
def P16396087921102454822.Spec : Prop :=
  ∀ n, (P16396087921102454822.a n : ℤ) = A061078 (n + 1)

theorem P16396087921102454822.correct : P16396087921102454822.Spec := by
  intro n
  simp only [A061078, Nat.add_sub_cancel]

end A061078

/-! ## A061078.P13832326709279248601

`∏{digits}[2*(n+1), #]+a(n-1)` with `a(0)=2`
-/

namespace A061078.P13832326709279248601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod + a (n - 1)

end

end A061078.P13832326709279248601

namespace A061078

/-- `∏{digits}[2*(n+1), #]+a(n-1)` -/
def P13832326709279248601.Spec : Prop :=
  ∀ n, (P13832326709279248601.a n : ℤ) = A061078 (n + 1)

end A061078

/-! ## A061078.P11139006880821564986

`∑[abs(A187844(2*(n+1)))]`
-/

namespace A061078.P11139006880821564986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A187844 (2 * (n + 1))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061078.P11139006880821564986

namespace A061078

/-- `∑[abs(A187844(2*(n+1)))]` -/
def P11139006880821564986.Spec : Prop :=
  ∀ n, P11139006880821564986.a n = A061078 (n + 1)

end A061078

/-! ## A061078.P9613888363770038706

`∑[A007954(2*(n+1))]`
-/

namespace A061078.P9613888363770038706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061078.P9613888363770038706

namespace A061078

/-- `∑[A007954(2*(n+1))]` -/
def P9613888363770038706.Spec : Prop :=
  ∀ n, P9613888363770038706.a n = A061078 (n + 1)

end A061078

/-! ## A061078.P5127350360030748823

`A007954(2*n+2)+a(n-1)` with `a(0)=2`
-/

namespace A061078.P5127350360030748823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A007954 (2 * n + 2) + a (n - 1)

end

end A061078.P5127350360030748823

namespace A061078

/-- `A007954(2*n+2)+a(n-1)` -/
def P5127350360030748823.Spec : Prop :=
  ∀ n, P5127350360030748823.a n = A061078 (n + 1)

end A061078

/-! ## A061078.P8930683778945517108

`∑[2*(n+1)-A070565(2*(n+1))]`
-/

namespace A061078.P8930683778945517108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A070565 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061078.P8930683778945517108

namespace A061078

/-- `∑[2*(n+1)-A070565(2*(n+1))]` -/
def P8930683778945517108.Spec : Prop :=
  ∀ n, P8930683778945517108.a n = A061078 (n + 1)

theorem P8930683778945517108.correct : P8930683778945517108.Spec := by
  intro n
  simp only [A061078, Nat.add_sub_cancel, A061078.P8930683778945517108.f1, A061078.P8930683778945517108.a, A061078.P16396087921102454822.f2, A061078.P16396087921102454822.f1, A061078.P16396087921102454822.a, A070565, A070565.P8773353703818407228.f1, A070565.P8773353703818407228.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061078

/-! ## A061078.P9519719653137996969

`∑[A230099(2*(n+1))-2*(n+1)]`
-/

namespace A061078.P9519719653137996969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230099 (2 * (n + 1)) - (2 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061078.P9519719653137996969

namespace A061078

/-- `∑[A230099(2*(n+1))-2*(n+1)]` -/
def P9519719653137996969.Spec : Prop :=
  ∀ n, P9519719653137996969.a n = A061078 (n + 1)

theorem P9519719653137996969.correct : P9519719653137996969.Spec := by
  intro n
  simp only [A061078, Nat.add_sub_cancel, A061078.P9519719653137996969.f1, A061078.P9519719653137996969.a, A061078.P16396087921102454822.f2, A061078.P16396087921102454822.f1, A061078.P16396087921102454822.a, A230099, A230099.P7094775947428333460.f1, A230099.P7094775947428333460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061078

/-! ## A061078.P13678930250485391783

`A061076(2*(n+1))-A061077(n+1)`
-/

namespace A061078.P13678930250485391783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061076 (2 * (n + 1)) - A061077 (n + 1)

end

end A061078.P13678930250485391783

namespace A061078

/-- `A061076(2*(n+1))-A061077(n+1)` -/
def P13678930250485391783.Spec : Prop :=
  ∀ n, P13678930250485391783.a n = A061078 (n + 1)

end A061078

/-!
# A061079: Denominators in the series for sin integral Si(x).

The programs for A061079, the canonical program `A061079.P13794755554251370161` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061079 has offset 1).

The definition of A061079 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061079.P13794755554251370161

`(2*(n+1)-1)*(2*(n+1)-1)!`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A061079

/-- `(2*(n+1)-1)*(2*(n+1)-1)!` -/
def P13794755554251370161.Spec : Prop :=
  ∀ n, P13794755554251370161.a n = A061079 (n + 1)

theorem P13794755554251370161.correct : P13794755554251370161.Spec := by
  intro n
  simp only [A061079, Nat.add_sub_cancel]

end A061079

/-! ## A061079.P17670574973571883773

`Δ[n²]!*Δ[n²]`
-/

namespace A061079.P17670574973571883773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A061079.P17670574973571883773

namespace A061079

/-- `Δ[n²]!*Δ[n²]` -/
def P17670574973571883773.Spec : Prop :=
  ∀ n, P17670574973571883773.a n = A061079 (n + 1)

theorem P17670574973571883773.correct : P17670574973571883773.Spec := by
  intro n
  simp only [A061079, Nat.add_sub_cancel, A061079.P17670574973571883773.f1, A061079.P17670574973571883773.f2, A061079.P17670574973571883773.a, A061079.P13794755554251370161.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A061079

/-! ## A061079.P6582369788742028048

`record[(n*n!)^and(1, n)]`
-/

namespace A061079.P6582369788742028048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n * Nat.factorial n) ^ Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061079.P6582369788742028048

namespace A061079

/-- `record[(n*n!)^and(1, n)]` -/
def P6582369788742028048.Spec : Prop :=
  ∀ n, (P6582369788742028048.a n : ℤ) = A061079 (n + 1)

end A061079

/-! ## A061079.P13538756749507565695

`(2*n+1)*record[xor(1, n)!]`
-/

namespace A061079.P13538756749507565695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.xor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061079.P13538756749507565695

namespace A061079

/-- `(2*n+1)*record[xor(1, n)!]` -/
def P13538756749507565695.Spec : Prop :=
  ∀ n, (P13538756749507565695.a n : ℤ) = A061079 (n + 1)

end A061079

/-! ## A061079.P237634319571946522

`record[-((n+1)*∏[-(n+1)])]`
-/

namespace A061079.P237634319571946522
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n + 1 : ℤ) * (∏ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061079.P237634319571946522

namespace A061079

/-- `record[-((n+1)*∏[-(n+1)])]` -/
def P237634319571946522.Spec : Prop :=
  ∀ n, P237634319571946522.a n = A061079 (n + 1)

end A061079

/-!
# A061082: a(n) = A053061(n)/n.

The programs for A061082, the canonical program `A061082.P12036528215142081119` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061082 has offset 1).

The definition of A061082 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053061, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A061082.P12036528215142081119

`A053061(n+1)/(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A061082

/-- `A053061(n+1)/(n+1)` -/
def P12036528215142081119.Spec : Prop :=
  ∀ n, P12036528215142081119.a n = (A061082 (n + 1) : ℚ)

end A061082

/-! ## A061082.P136465671940555927

`∏{digits}[(n+1)², floor(#/10)+10]+1+n`
-/

namespace A061082.P136465671940555927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊(x : ℚ) / 10⌋ + 10).prod + 1 + (n : ℤ)

end

end A061082.P136465671940555927

namespace A061082

/-- `∏{digits}[(n+1)², floor(#/10)+10]+1+n` -/
def P136465671940555927.Spec : Prop :=
  ∀ n, P136465671940555927.a n = A061082 (n + 1)

end A061082

/-! ## A061082.P2496103041077486975

`(n+1)^(A000007(n)-1)*A053061(n+1)`
-/

namespace A061082.P2496103041077486975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A000007 n - 1 : ℤ) * (A053061 (n + 1) : ℚ)

end

end A061082.P2496103041077486975

namespace A061082

/-- `(n+1)^(A000007(n)-1)*A053061(n+1)` -/
def P2496103041077486975.Spec : Prop :=
  ∀ n, P2496103041077486975.a n = (A061082 (n + 1) : ℚ)

end A061082

/-! ## A061082.P1497723848123587057

`ceil(A239464(n+1)/(n+1))+n`
-/

namespace A061082.P1497723848123587057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A239464 (n + 1) : ℚ) / (n + 1 : ℚ)⌉ + (n : ℤ)

end

end A061082.P1497723848123587057

namespace A061082

/-- `ceil(A239464(n+1)/(n+1))+n` -/
def P1497723848123587057.Spec : Prop :=
  ∀ n, P1497723848123587057.a n = A061082 (n + 1)

end A061082

/-! ## A061082.P3414807252849229689

`(A239464(n+1)+A005563(n))/(n+1)`
-/

namespace A061082.P3414807252849229689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239464 (n + 1) + A005563 n : ℚ) / (n + 1 : ℚ)

end

end A061082.P3414807252849229689

namespace A061082

/-- `(A239464(n+1)+A005563(n))/(n+1)` -/
def P3414807252849229689.Spec : Prop :=
  ∀ n, P3414807252849229689.a n = (A061082 (n + 1) : ℚ)

end A061082

/-! ## A061082.P916041702036143197

`(n+1)²+A061601((n+1)²)+2+n`
-/

namespace A061082.P916041702036143197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + (A061601 ((n + 1) ^ 2) + 2 + (n : ℤ))

end

end A061082.P916041702036143197

namespace A061082

/-- `(n+1)²+A061601((n+1)²)+2+n` -/
def P916041702036143197.Spec : Prop :=
  ∀ n, P916041702036143197.a n = A061082 (n + 1)

end A061082

/-! ## A061082.P11502770283816456085

`n+1+10^(1+A004216((n+1)²))`
-/

namespace A061082.P11502770283816456085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) + (10 : ℚ) ^ (1 + A004216 ((n + 1) ^ 2) : ℤ)

end

end A061082.P11502770283816456085

namespace A061082

/-- `n+1+10^(1+A004216((n+1)²))` -/
def P11502770283816456085.Spec : Prop :=
  ∀ n, P11502770283816456085.a n = (A061082 (n + 1) : ℚ)

end A061082

/-!
# A061083: Fibonacci-type sequence based on division: a(0) = 1, a(1) = 2 and a(n) = a(n-2)/a(n-1) but ignore decimal point.

The programs for A061083, there is no canonical definition to state claims against.
-/

/-! ## A061083.P14909732062926773159

`(gcd(2, n)²+1)^round(ϕ^n/sqrt(5))`
-/

namespace A061083.P14909732062926773159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n ^ 2 + 1 : ℚ) ^ (SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) : ℤ)

end

end A061083.P14909732062926773159

/-! ## A061083.P17747209281970577133

`a(n-2)^3/a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=4`
-/

namespace A061083.P17747209281970577133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 5, 4] fun n a =>
  a (n - 2) ^ 3 / a (n - 4)

end

end A061083.P17747209281970577133

/-! ## A061083.P3428508764136642789

`a(n-2)/a(n-4)*a(n-2)²` with `a(0)=1, a(1)=2, a(2)=5, a(3)=4`
-/

namespace A061083.P3428508764136642789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 5, 4] fun n a =>
  a (n - 2) / a (n - 4) * a (n - 2) ^ 2

end

end A061083.P3428508764136642789

/-! ## A061083.P6878241111160437542

`(6-4^and(1, n))^A000045(n)`
-/

namespace A061083.P6878241111160437542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 - (4 ^ Nat.land 1 n : ℤ) : ℚ) ^ (A000045 n : ℤ)

end

end A061083.P6878241111160437542

/-! ## A061083.P6421904862229904146

`A000045((-1)^n+4)^A000045(n)`
-/

namespace A061083.P6421904862229904146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 ((-1) ^ n + 4).toNat : ℚ) ^ (A000045 n : ℤ)

end

end A061083.P6421904862229904146

/-!
# A061084: Fibonacci-type sequence based on subtraction: a(0) = 1, a(1) = 2 and a(n) = a(n-2) - a(n-1).

The programs for A061084, the canonical program `A061084.P3983370791363787033` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061084 has offset 0).

The definition of A061084 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)-a(n-1)` (program `A061084.P3983370791363787033`, by `A061084.P3983370791363787033.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A061084.P7631872193902823663

`ogf((1+3x)/(1+x-x^2))`
-/

namespace A061084.P7631872193902823663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, 1, -1] n

end

end A061084.P7631872193902823663

namespace A061084

/-- `ogf((1+3x)/(1+x-x^2))` -/
def P7631872193902823663.Spec : Prop :=
  ∀ n, P7631872193902823663.a n = A061084 n

end A061084

/-! ## A061084.P3983370791363787033

`a(n-2)-a(n-1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A061084

/-- `a(n-2)-a(n-1)` -/
def P3983370791363787033.Spec : Prop :=
  ∀ n, P3983370791363787033.a n = A061084 n

theorem P3983370791363787033.correct : P3983370791363787033.Spec := by
  intro n
  simp only [A061084]

end A061084

/-! ## A061084.P13158283574260570255

`Δ[A113312(n)-Δ[A113312(n)]]`
-/

namespace A061084.P13158283574260570255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113312 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113312 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061084.P13158283574260570255

namespace A061084

/-- `Δ[A113312(n)-Δ[A113312(n)]]` -/
def P13158283574260570255.Spec : Prop :=
  ∀ n, P13158283574260570255.a n = A061084 n

end A061084

/-! ## A061084.P13540752068941554879

`A051792(2*(n+1))+A051792(2*(n+3))`
-/

namespace A061084.P13540752068941554879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051792 (2 * (n + 1)) + A051792 (2 * (n + 3))

end

end A061084.P13540752068941554879

namespace A061084

/-- `A051792(2*(n+1))+A051792(2*(n+3))` -/
def P13540752068941554879.Spec : Prop :=
  ∀ n, P13540752068941554879.a n = A061084 n

end A061084

/-! ## A061084.P17372490606245988330

`A075193(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A061084.P17372490606245988330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A075193 (n - 1) + a (n - 1)

end

end A061084.P17372490606245988330

namespace A061084

/-- `A075193(n-1)+a(n-1)` -/
def P17372490606245988330.Spec : Prop :=
  ∀ n, P17372490606245988330.a n = A061084 n

end A061084

/-! ## A061084.P17850197694266731537

`Δ[A112469(n)]+2-A112469(n)`
-/

namespace A061084.P17850197694266731537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (2 - A112469 n)

end

end A061084.P17850197694266731537

namespace A061084

/-- `Δ[A112469(n)]+2-A112469(n)` -/
def P17850197694266731537.Spec : Prop :=
  ∀ n, P17850197694266731537.a n = A061084 n

end A061084

/-! ## A061084.P3482853419506106695

`(A066983(n+1)-A007492(n+2))*A033999(n)`
-/

namespace A061084.P3482853419506106695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A066983 (n + 1) - A007492 (n + 2)) * A033999 n

end

end A061084.P3482853419506106695

namespace A061084

/-- `(A066983(n+1)-A007492(n+2))*A033999(n)` -/
def P3482853419506106695.Spec : Prop :=
  ∀ n, P3482853419506106695.a n = A061084 n

end A061084

/-! ## A061084.P14194485672533696755

`(A007492(n+2)-A066983(n+1))/A033999(n+1)`
-/

namespace A061084.P14194485672533696755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007492 (n + 2) - A066983 (n + 1) : ℚ) / (A033999 (n + 1) : ℚ)

end

end A061084.P14194485672533696755

namespace A061084

/-- `(A007492(n+2)-A066983(n+1))/A033999(n+1)` -/
def P14194485672533696755.Spec : Prop :=
  ∀ n, P14194485672533696755.a n = (A061084 n : ℚ)

end A061084

/-! ## A061084.P8169813706512183711

`A244213(n+1)+A244213(n)`
-/

namespace A061084.P8169813706512183711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244213 (n + 1) + A244213 n

end

end A061084.P8169813706512183711

namespace A061084

/-- `A244213(n+1)+A244213(n)` -/
def P8169813706512183711.Spec : Prop :=
  ∀ n, P8169813706512183711.a n = A061084 n

end A061084

/-! ## A061084.P14416634809558649159

`A000032(n+1)-A203976(n)`
-/

namespace A061084.P14416634809558649159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) - A203976 n

end

end A061084.P14416634809558649159

namespace A061084

/-- `A000032(n+1)-A203976(n)` -/
def P14416634809558649159.Spec : Prop :=
  ∀ n, P14416634809558649159.a n = A061084 n

end A061084

/-! ## A061084.P4822676806482361582

`A000204(n+1)-A203976(n)`
-/

namespace A061084.P4822676806482361582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) - A203976 n

end

end A061084.P4822676806482361582

namespace A061084

/-- `A000204(n+1)-A203976(n)` -/
def P4822676806482361582.Spec : Prop :=
  ∀ n, P4822676806482361582.a n = A061084 n

end A061084

/-! ## A061084.P15794102897749666953

`A001610(n)+1-A203976(n)`
-/

namespace A061084.P15794102897749666953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n + (1 - A203976 n)

end

end A061084.P15794102897749666953

namespace A061084

/-- `A001610(n)+1-A203976(n)` -/
def P15794102897749666953.Spec : Prop :=
  ∀ n, P15794102897749666953.a n = A061084 n

end A061084

/-! ## A061084.P10740179096593437497

`∑[A075193(n)]+1-A075193(n)`
-/

namespace A061084.P10740179096593437497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A075193 n)

end

end A061084.P10740179096593437497

namespace A061084

/-- `∑[A075193(n)]+1-A075193(n)` -/
def P10740179096593437497.Spec : Prop :=
  ∀ n, P10740179096593437497.a n = A061084 n

end A061084

/-! ## A061084.P18428793934618725030

`(A098600(n)-A000032(n))*Δ[A000032(n)]`
-/

namespace A061084.P18428793934618725030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A098600 n - A000032 n) * (f1 (n + 1) - f1 n)

end

end A061084.P18428793934618725030

namespace A061084

/-- `(A098600(n)-A000032(n))*Δ[A000032(n)]` -/
def P18428793934618725030.Spec : Prop :=
  ∀ n, P18428793934618725030.a n = A061084 n

end A061084

/-! ## A061084.P10075773905924065084

`(A000032(n)-A000032(n+1))*A033999(n)`
-/

namespace A061084.P10075773905924065084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000032 n - A000032 (n + 1)) * A033999 n

end

end A061084.P10075773905924065084

namespace A061084

/-- `(A000032(n)-A000032(n+1))*A033999(n)` -/
def P10075773905924065084.Spec : Prop :=
  ∀ n, P10075773905924065084.a n = A061084 n

end A061084

/-! ## A061084.P9789944914814137787

`(A000032(n)-A000032(n+1))*A062157(n+1)`
-/

namespace A061084.P9789944914814137787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000032 n - A000032 (n + 1)) * A062157 (n + 1)

end

end A061084.P9789944914814137787

namespace A061084

/-- `(A000032(n)-A000032(n+1))*A062157(n+1)` -/
def P9789944914814137787.Spec : Prop :=
  ∀ n, P9789944914814137787.a n = A061084 n

end A061084

/-!
# A061085: a(n) = A019550(n) / 3.

The programs for A061085, the canonical program `A061085.P5924400067001465222` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061085 has offset 1).

The definition of A061085 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061085.P5924400067001465222

`A019550(n+1)/3`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A061085

/-- `A019550(n+1)/3` -/
def P5924400067001465222.Spec : Prop :=
  ∀ n, P5924400067001465222.a n = (A061085 (n + 1) : ℚ)

end A061085

/-! ## A061085.P12023944366746084550

`floor(A309809(n+1)/3)`
-/

namespace A061085.P12023944366746084550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A309809 (n + 1) : ℚ) / 3⌋

end

end A061085.P12023944366746084550

namespace A061085

/-- `floor(A309809(n+1)/3)` -/
def P12023944366746084550.Spec : Prop :=
  ∀ n, P12023944366746084550.a n = A061085 (n + 1)

end A061085

/-! ## A061085.P14053596628888815482

`(A248422(n+1)+2*(n+1))/6`
-/

namespace A061085.P14053596628888815482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248422 (n + 1) + (2 * (n + 1) : ℤ) : ℚ) / 6

end

end A061085.P14053596628888815482

namespace A061085

/-- `(A248422(n+1)+2*(n+1))/6` -/
def P14053596628888815482.Spec : Prop :=
  ∀ n, P14053596628888815482.a n = (A061085 (n + 1) : ℚ)

end A061085

/-! ## A061085.P7973276939767095934

`record[A019550(A291769(n))/3]`
-/

namespace A061085.P7973276939767095934
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019550 (A291769 n).toNat : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061085.P7973276939767095934

namespace A061085

/-- `record[A019550(A291769(n))/3]` -/
def P7973276939767095934.Spec : Prop :=
  ∀ n, P7973276939767095934.a n = (A061085 (n + 1) : ℚ)

end A061085

/-! ## A061085.P3039940107533930991

`record[A019550(A324346(n))/3]`
-/

namespace A061085.P3039940107533930991
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019550 (A324346 n).toNat : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061085.P3039940107533930991

namespace A061085

/-- `record[A019550(A324346(n))/3]` -/
def P3039940107533930991.Spec : Prop :=
  ∀ n, P3039940107533930991.a n = (A061085 (n + 1) : ℚ)

end A061085

/-! ## A061085.P16681187801442266161

`record[A019550(A342022(n))/3]`
-/

namespace A061085.P16681187801442266161
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019550 (A342022 n).toNat : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061085.P16681187801442266161

namespace A061085

/-- `record[A019550(A342022(n))/3]` -/
def P16681187801442266161.Spec : Prop :=
  ∀ n, P16681187801442266161.a n = (A061085 (n + 1) : ℚ)

end A061085

/-! ## A061085.P7431579245645067737

`A084855(2*(n+1)²)/3`
-/

namespace A061085.P7431579245645067737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084855 (2 * (n + 1) ^ 2) : ℚ) / 3

end

end A061085.P7431579245645067737

namespace A061085

/-- `A084855(2*(n+1)²)/3` -/
def P7431579245645067737.Spec : Prop :=
  ∀ n, P7431579245645067737.a n = (A061085 (n + 1) : ℚ)

end A061085

/-!
# A061086: a(n) is the concatenation of n with n^3.

The programs for A061086, there is no canonical definition to state claims against.
-/

/-! ## A061086.P6756584807887330445

`(n+1)*A061087(n+1)`
-/

namespace A061086.P6756584807887330445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A061087 (n + 1)

end

end A061086.P6756584807887330445

/-! ## A061086.P13352298396655916942

`(A239463(n+1)+∑[2*n])*(n+1)`
-/

namespace A061086.P13352298396655916942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A239463 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) * (n + 1 : ℤ)

end

end A061086.P13352298396655916942

/-! ## A061086.P13262283661131235728

`(n+1)*(A239463(n+1)+A002378(n))`
-/

namespace A061086.P13262283661131235728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A239463 (n + 1) + A002378 n)

end

end A061086.P13262283661131235728

/-! ## A061086.P10972489082813301550

`record[A028242(n)*A061087(A008619(n))]`
-/

namespace A061086.P10972489082813301550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n * A061087 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061086.P10972489082813301550

/-! ## A061086.P6045818554826214608

`A061087(A080513(2*n))*A080513(2*n)`
-/

namespace A061086.P6045818554826214608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061087 (A080513 (2 * n)).toNat * A080513 (2 * n)

end

end A061086.P6045818554826214608

/-! ## A061086.P16691871918788309585

`record[A020986(n)*A061087(A020986(n))]`
-/

namespace A061086.P16691871918788309585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020986 n * A061087 (A020986 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061086.P16691871918788309585

/-! ## A061086.P6292356097015492952

`record[A028920(n)*A061087(A028920(n))]`
-/

namespace A061086.P6292356097015492952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 n * A061087 (A028920 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061086.P6292356097015492952

/-!
# A061087: a(n) = A061086(n) / n.

The programs for A061087, there is no canonical definition to state claims against.
-/

/-! ## A061087.P11015891265639331375

`A061086(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A061087.P11015891265639331375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061086 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A061087.P11015891265639331375

/-! ## A061087.P7964684751675091323

`A239463(n+1)+∑[2*n]`
-/

namespace A061087.P7964684751675091323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239463 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A061087.P7964684751675091323

/-! ## A061087.P17637263298996147298

`A239463(n+1)+A000290(n)+n`
-/

namespace A061087.P17637263298996147298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239463 (n + 1) + A000290 n + (n : ℤ)

end

end A061087.P17637263298996147298

/-! ## A061087.P14264177929228698241

`or(A239463(n+1)+A002378(n), char[2])`
-/

namespace A061087.P14264177929228698241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A239463 (n + 1) + A002378 n) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A061087.P14264177929228698241

/-! ## A061087.P11591907225671090358

`A000217(n)+A239463(n+1)+A000217(n)`
-/

namespace A061087.P11591907225671090358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + (A239463 (n + 1) + A000217 n)

end

end A061087.P11591907225671090358

/-! ## A061087.P14329732865257326337

`A000038(n+1)+A239463(n+1)+A002378(n)`
-/

namespace A061087.P14329732865257326337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + (A239463 (n + 1) + A002378 n)

end

end A061087.P14329732865257326337

/-! ## A061087.P4845306524391154609

`(A239463(n+1)+A002378(n))%A023545(n+1)²`
-/

namespace A061087.P4845306524391154609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239463 (n + 1) + A002378 n) (A023545 (n + 1) ^ 2)

end

end A061087.P4845306524391154609

/-! ## A061087.P4243653438093386237

`A000007(n+1)+A239463(n+1)+A002378(n)`
-/

namespace A061087.P4243653438093386237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (A239463 (n + 1) + A002378 n)

end

end A061087.P4243653438093386237

/-! ## A061087.P3658773828716391912

`(A239463(n+1)+A002378(n))*A141044(A233583(n+1))`
-/

namespace A061087.P3658773828716391912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A239463 (n + 1) + A002378 n) * A141044 (A233583 (n + 1)).toNat

end

end A061087.P3658773828716391912

/-!
# A061088: a(n) = A053062(n) / n.

The programs for A061088, there is no canonical definition to state claims against.
-/

/-! ## A061088.P9755715109935055093

`A053062(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A061088.P9755715109935055093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053062 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A061088.P9755715109935055093

/-! ## A061088.P7465230116237240294

`tan(acot(A000027(n+1)))*A053062(n+1)`
-/

namespace A061088.P7465230116237240294
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (SequenceMachineLib.acot (A000027 (n + 1) : ℝ)) * (A053062 (n + 1) : ℝ)

end

end A061088.P7465230116237240294

/-! ## A061088.P3157404619741585086

`record[A053062(A020986(n))/A020986(n)]`
-/

namespace A061088.P3157404619741585086
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053062 (A020986 n).toNat : ℚ) / (A020986 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061088.P3157404619741585086

/-! ## A061088.P5393858664138255270

`(n+1)^A008683(A006450(n+1))*A053062(n+1)`
-/

namespace A061088.P5393858664138255270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A006450 (n + 1)).toNat : ℤ) * (A053062 (n + 1) : ℚ)

end

end A061088.P5393858664138255270

/-!
# A061090: Squares the sum of the squares of whose digits are squares.

The programs for A061090, there is no canonical definition to state claims against.
-/

/-! ## A061090.P12653831476105133514

`∩[A175396(n+2), n²]`
-/

namespace A061090.P12653831476105133514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175396 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A061090.P12653831476105133514

/-! ## A061090.P18406605348743525570

`∩[(n+1)*(n+1), A175396(n+1)]`
-/

namespace A061090.P18406605348743525570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061090.P18406605348743525570

/-! ## A061090.P11708472464700502212

`A000027(∩[A175396(n+2), A000290(n)])`
-/

namespace A061090.P11708472464700502212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175396 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A061090.P11708472464700502212

/-! ## A061090.P344134942181289851

`filter[A175396(n+2), A010052(#)]`
-/

namespace A061090.P344134942181289851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175396 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010052 (f1 j).toNat = 1) n)

end

end A061090.P344134942181289851

/-!
# A061091: Number of k with 1 <= k <= n relatively prime to phi(k).

The programs for A061091, the canonical program `A061091.P11020865434902996413` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061091 has offset 1).

The definition of A061091 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A297086, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A061091.P11020865434902996413

`a(n-1)+A297086(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A061091

/-- `a(n-1)+A297086(n+1)` -/
def P11020865434902996413.Spec : Prop :=
  ∀ n, P11020865434902996413.a n = A061091 (n + 1)

theorem P11020865434902996413.correct : P11020865434902996413.Spec := by
  intro n
  simp only [A061091, Nat.add_sub_cancel]

end A061091

/-! ## A061091.P13945716948375837471

`∑[A297086(n+1)]`
-/

namespace A061091.P13945716948375837471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061091.P13945716948375837471

namespace A061091

/-- `∑[A297086(n+1)]` -/
def P13945716948375837471.Spec : Prop :=
  ∀ n, P13945716948375837471.a n = A061091 (n + 1)

end A061091

/-! ## A061091.P6102223661783986988

`∑[round(acot(A009195(n+1)))]`
-/

namespace A061091.P6102223661783986988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A009195 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061091.P6102223661783986988

namespace A061091

/-- `∑[round(acot(A009195(n+1)))]` -/
def P6102223661783986988.Spec : Prop :=
  ∀ n, P6102223661783986988.a n = A061091 (n + 1)

end A061091

/-! ## A061091.P10081155620910691016

`∑[C(2, A331176(n+1)²)]`
-/

namespace A061091.P10081155620910691016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A331176 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061091.P10081155620910691016

namespace A061091

/-- `∑[C(2, A331176(n+1)²)]` -/
def P10081155620910691016.Spec : Prop :=
  ∀ n, (P10081155620910691016.a n : ℤ) = A061091 (n + 1)

end A061091

/-! ## A061091.P5483582745940885537

`∑[floor(1/A082061(n+1))]`
-/

namespace A061091.P5483582745940885537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A082061 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061091.P5483582745940885537

namespace A061091

/-- `∑[floor(1/A082061(n+1))]` -/
def P5483582745940885537.Spec : Prop :=
  ∀ n, P5483582745940885537.a n = A061091 (n + 1)

end A061091

/-! ## A061091.P3036956793086154894

`∑[char[lt[A073811(n+1), 2]]]`
-/

namespace A061091.P3036956793086154894
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073811 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061091.P3036956793086154894

namespace A061091

/-- `∑[char[lt[A073811(n+1), 2]]]` -/
def P3036956793086154894.Spec : Prop :=
  ∀ n, (P3036956793086154894.a n : ℤ) = A061091 (n + 1)

end A061091

/-! ## A061091.P12394716799471528219

`∑[C(2, A331175(n+1)+1)]`
-/

namespace A061091.P12394716799471528219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A331175 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061091.P12394716799471528219

namespace A061091

/-- `∑[C(2, A331175(n+1)+1)]` -/
def P12394716799471528219.Spec : Prop :=
  ∀ n, (P12394716799471528219.a n : ℤ) = A061091 (n + 1)

end A061091

/-! ## A061091.P18065120704830080338

`∑[C(A109395(n+1), n+1)]`
-/

namespace A061091.P18065120704830080338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A109395 (n + 1)).toNat (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061091.P18065120704830080338

namespace A061091

/-- `∑[C(A109395(n+1), n+1)]` -/
def P18065120704830080338.Spec : Prop :=
  ∀ n, (P18065120704830080338.a n : ℤ) = A061091 (n + 1)

end A061091

/-! ## A061091.P17243617859396570202

`∑[round(acot(gcd(n+1, A000010(n+1))))]`
-/

namespace A061091.P17243617859396570202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (Int.gcd (n + 1 : ℤ) (A000010 (n + 1)) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061091.P17243617859396570202

namespace A061091

/-- `∑[round(acot(gcd(n+1, A000010(n+1))))]` -/
def P17243617859396570202.Spec : Prop :=
  ∀ n, P17243617859396570202.a n = A061091 (n + 1)

end A061091

/-! ## A061091.P2013363299154610699

`∑[A063524(A009195(n+1))]`
-/

namespace A061091.P2013363299154610699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A009195 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061091.P2013363299154610699

namespace A061091

/-- `∑[A063524(A009195(n+1))]` -/
def P2013363299154610699.Spec : Prop :=
  ∀ n, P2013363299154610699.a n = A061091 (n + 1)

end A061091

/-! ## A061091.P2458945128963044328

`∑[val(A135372(A331175(n+1)), 2)]`
-/

namespace A061091.P2458945128963044328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A135372 (A331175 (n + 1)).toNat).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061091.P2458945128963044328

namespace A061091

/-- `∑[val(A135372(A331175(n+1)), 2)]` -/
def P2458945128963044328.Spec : Prop :=
  ∀ n, (P2458945128963044328.a n : ℤ) = A061091 (n + 1)

end A061091

/-! ## A061091.P7757823817025097677

`∑[C(A331195(n), A331176(n+1))]`
-/

namespace A061091.P7757823817025097677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A331195 n).toNat (A331176 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061091.P7757823817025097677

namespace A061091

/-- `∑[C(A331195(n), A331176(n+1))]` -/
def P7757823817025097677.Spec : Prop :=
  ∀ n, (P7757823817025097677.a n : ℤ) = A061091 (n + 1)

end A061091

/-! ## A061091.P13789565717200256398

`∑[C(A331216(n), A331176(n+1))]`
-/

namespace A061091.P13789565717200256398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A331216 n).toNat (A331176 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061091.P13789565717200256398

namespace A061091

/-- `∑[C(A331216(n), A331176(n+1))]` -/
def P13789565717200256398.Spec : Prop :=
  ∀ n, (P13789565717200256398.a n : ℤ) = A061091 (n + 1)

end A061091

/-! ## A061091.P2742199165248770173

`∑[C(A331218(n), A331176(n+1))]`
-/

namespace A061091.P2742199165248770173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A331218 n).toNat (A331176 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061091.P2742199165248770173

namespace A061091

/-- `∑[C(A331218(n), A331176(n+1))]` -/
def P2742199165248770173.Spec : Prop :=
  ∀ n, (P2742199165248770173.a n : ℤ) = A061091 (n + 1)

end A061091

/-! ## A061091.P6616801260792321416

`∑[C(A009262(n+1), A002618(n+1))]`
-/

namespace A061091.P6616801260792321416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A009262 (n + 1)).toNat (A002618 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061091.P6616801260792321416

namespace A061091

/-- `∑[C(A009262(n+1), A002618(n+1))]` -/
def P6616801260792321416.Spec : Prop :=
  ∀ n, (P6616801260792321416.a n : ℤ) = A061091 (n + 1)

end A061091

/-! ## A061091.P3358317667524104662

`∑[C(A294649(n+1), A307037(n+1))]`
-/

namespace A061091.P3358317667524104662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A294649 (n + 1)).toNat (A307037 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061091.P3358317667524104662

namespace A061091

/-- `∑[C(A294649(n+1), A307037(n+1))]` -/
def P3358317667524104662.Spec : Prop :=
  ∀ n, (P3358317667524104662.a n : ℤ) = A061091 (n + 1)

end A061091

/-! ## A061091.P18023568306986054010

`∑[C(A326201(n+1), A326203(n+1))]`
-/

namespace A061091.P18023568306986054010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A326201 (n + 1)).toNat (A326203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061091.P18023568306986054010

namespace A061091

/-- `∑[C(A326201(n+1), A326203(n+1))]` -/
def P18023568306986054010.Spec : Prop :=
  ∀ n, (P18023568306986054010.a n : ℤ) = A061091 (n + 1)

end A061091

/-! ## A061091.P5957857986745665980

`∑[C(A331177(n+1), A331176(n+1))]`
-/

namespace A061091.P5957857986745665980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A331177 (n + 1)).toNat (A331176 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061091.P5957857986745665980

namespace A061091

/-- `∑[C(A331177(n+1), A331176(n+1))]` -/
def P5957857986745665980.Spec : Prop :=
  ∀ n, (P5957857986745665980.a n : ℤ) = A061091 (n + 1)

end A061091

/-! ## A061091.P9438272160221277132

`∑[C(A331180(n+1), A331176(n+1))]`
-/

namespace A061091.P9438272160221277132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A331180 (n + 1)).toNat (A331176 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061091.P9438272160221277132

namespace A061091

/-- `∑[C(A331180(n+1), A331176(n+1))]` -/
def P9438272160221277132.Spec : Prop :=
  ∀ n, (P9438272160221277132.a n : ℤ) = A061091 (n + 1)

end A061091

/-! ## A061091.P12016630651658673633

`∑[char[A295126(A005117(n+1))-1]]`
-/

namespace A061091.P12016630651658673633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295126 (A005117 (n + 1)).toNat - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061091.P12016630651658673633

namespace A061091

/-- `∑[char[A295126(A005117(n+1))-1]]` -/
def P12016630651658673633.Spec : Prop :=
  ∀ n, (P12016630651658673633.a n : ℤ) = A061091 (n + 1)

end A061091

/-!
# A061092: a(0) = 1; for n>0, a(n) = smallest prime of the form k*a(n-1) + 1.

The programs for A061092, there is no canonical definition to state claims against.
-/

/-! ## A061092.P6773438076961521226

`a(n-1)*A121799(n)+1` with `a(0)=1`
-/

namespace A061092.P6773438076961521226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A121799 n + 1

end

end A061092.P6773438076961521226

/-! ## A061092.P15850351176122330076

`A070846(a(n-1))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A061092.P15850351176122330076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A070846 (a (n - 1)).toNat

end

end A061092.P15850351176122330076

/-! ## A061092.P7662201992727852274

`A035095(A000720(a(n-1)))` with `a(0)=1, a(1)=2`
-/

namespace A061092.P7662201992727852274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A035095 (A000720 (a (n - 1)).toNat).toNat

end

end A061092.P7662201992727852274

/-! ## A061092.P5579765867029234859

`A070846(abs(a(A023443(n))))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A061092.P5579765867029234859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A070846 |a (A023443 n).toNat|.toNat

end

end A061092.P5579765867029234859

/-! ## A061092.P429028042242071787

`A070846(a(A023443(n)))/A014963(6*(n+2))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A061092.P429028042242071787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  (A070846 (SequenceMachineLib.roundAway (a (A023443 n).toNat)).toNat : ℚ) / (A014963 (6 * (n + 2)) : ℚ)

end

end A061092.P429028042242071787

/-!
# A061094: The alternating group A_n contains an element x which is not conjugate to its inverse (equivalently not all the entries in the character table of A_n are real numbers).

The programs for A061094, there is no canonical definition to state claims against.
-/

/-! ## A061094.P15203544867690404071

`A078137(n+4)-9`
-/

namespace A061094.P15203544867690404071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078137 (n + 4) - 9

end

end A061094.P15203544867690404071

/-!
# A061095: Number of ways of dividing n labeled items into labeled boxes with an equal number of items in each box.

The programs for A061095, the canonical program `A061095.P5430955929745354400` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061095 has offset 1).

The definition of A061095 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061095.P5430955929745354400

`∑{d}[n+1, (n+1)!/((n+1)/#)!^#]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A061095

/-- `∑{d}[n+1, (n+1)!/((n+1)/#)!^#]` -/
def P5430955929745354400.Spec : Prop :=
  ∀ n, P5430955929745354400.a n = (A061095 (n + 1) : ℚ)

end A061095

/-! ## A061095.P17248111664149719829

`record[Δ[A327803(n+1)]]`
-/

namespace A061095.P17248111664149719829
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327803 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061095.P17248111664149719829

namespace A061095

/-- `record[Δ[A327803(n+1)]]` -/
def P17248111664149719829.Spec : Prop :=
  ∀ n, P17248111664149719829.a n = A061095 (n + 1)

end A061095

/-! ## A061095.P14233746333694368691

`A327803(A075349(n+2))`
-/

namespace A061095.P14233746333694368691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327803 (A075349 (n + 2)).toNat

end

end A061095.P14233746333694368691

namespace A061095

/-- `A327803(A075349(n+2))` -/
def P14233746333694368691.Spec : Prop :=
  ∀ n, P14233746333694368691.a n = A061095 (n + 1)

end A061095

/-! ## A061095.P5024961018089076500

`A327803(eq[1, A237451(n+1)])`
-/

namespace A061095.P5024961018089076500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327803 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061095.P5024961018089076500

namespace A061095

/-- `A327803(eq[1, A237451(n+1)])` -/
def P5024961018089076500.Spec : Prop :=
  ∀ n, P5024961018089076500.a n = A061095 (n + 1)

end A061095

/-! ## A061095.P16478524837238266100

`A327803(∑[A003056(n)+1]+1)`
-/

namespace A061095.P16478524837238266100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327803 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A061095.P16478524837238266100

namespace A061095

/-- `A327803(∑[A003056(n)+1]+1)` -/
def P16478524837238266100.Spec : Prop :=
  ∀ n, P16478524837238266100.a n = A061095 (n + 1)

end A061095

/-! ## A061095.P1970187005604116535

`record[A327803(n+2)-A327803(n+1)]`
-/

namespace A061095.P1970187005604116535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327803 (n + 2) - A327803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061095.P1970187005604116535

namespace A061095

/-- `record[A327803(n+2)-A327803(n+1)]` -/
def P1970187005604116535.Spec : Prop :=
  ∀ n, P1970187005604116535.a n = A061095 (n + 1)

end A061095

/-!
# A061096: Let k = n-th number that is a possible digit-sum for a cube (A054966); sequence gives smallest cube with digit-sum k.

The programs for A061096, there is no canonical definition to state claims against.
-/

/-! ## A061096.P12092480568765035532

`A067177(n)^3`
-/

namespace A061096.P12092480568765035532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067177 n ^ 3

end

end A061096.P12092480568765035532

/-! ## A061096.P18318818348605631505

`A062686(∑[8-a(n-1)*a(n-2)])` with `a(0)=1, a(1)=7`
-/

namespace A061096.P18318818348605631505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  8 - f1 (n - 1) * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062686 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A061096.P18318818348605631505

/-! ## A061096.P16484502013803106118

`A062686(∑[(8-a(n-1))/a(n-2)])` with `a(0)=1, a(1)=7`
-/

namespace A061096.P16484502013803106118
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  (8 - f1 (n - 1)) / f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062686 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A061096.P16484502013803106118

/-! ## A061096.P13822975168320483873

`A062686(A054966(n+2))`
-/

namespace A061096.P13822975168320483873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062686 (A054966 (n + 2)).toNat

end

end A061096.P13822975168320483873

/-! ## A061096.P17614961583804430600

`A000578(A067177(n))`
-/

namespace A061096.P17614961583804430600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A067177 n).toNat

end

end A061096.P17614961583804430600

/-!
# A061097: a(n) is the concatenation of the phi(n) numbers between 1 and n that are relatively prime to n.

The programs for A061097, there is no canonical definition to state claims against.
-/

/-! ## A061097.P12893372984490318439

`A048794(A054432(n+1))`
-/

namespace A061097.P12893372984490318439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (A054432 (n + 1)).toNat

end

end A061097.P12893372984490318439

/-!
# A061098: Concatenation of all numbers less than or equal to n other than the phi(n) numbers relatively prime to n.

The programs for A061098, there is no canonical definition to state claims against.
-/

/-! ## A061098.P10938181650569741748

`(n+1)*A146772(A003422(n))`
-/

namespace A061098.P10938181650569741748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A146772 (A003422 n).toNat

end

end A061098.P10938181650569741748

/-! ## A061098.P10379046030808491127

`(n+1)*A196844(A062544(n))`
-/

namespace A061098.P10379046030808491127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A196844 (A062544 n).toNat

end

end A061098.P10379046030808491127

/-!
# A061099: Squares with digital root 1.

The programs for A061099, the canonical program `A061099.P5373739397963350643` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061099 has offset 1).

The definition of A061099 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061099.P8807653683906297041

`ogf((1+63x+34x^2+63x^3+x^4)/(1-x-2x^2+2x^3+x^4-x^5))`
-/

namespace A061099.P8807653683906297041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 63, 34, 63, 1] [1, -1, -2, 2, 1, -1] n

end

end A061099.P8807653683906297041

namespace A061099

/-- `ogf((1+63x+34x^2+63x^3+x^4)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P8807653683906297041.Spec : Prop :=
  ∀ n, P8807653683906297041.a n = A061099 (n + 1)

end A061099

/-! ## A061099.P5373739397963350643

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=64, a(2)=100, a(3)=289, a(4)=361`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A061099

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P5373739397963350643.Spec : Prop :=
  ∀ n, P5373739397963350643.a n = A061099 (n + 1)

theorem P5373739397963350643.correct : P5373739397963350643.Spec := by
  intro n
  simp only [A061099, Nat.add_sub_cancel]

end A061099

/-! ## A061099.P12413305403900603230

`filter[n², dr(#)]`
-/

namespace A061099.P12413305403900603230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => SequenceMachineLib.digitalRoot (f1 j : ℤ) = 1) n)

end

end A061099.P12413305403900603230

namespace A061099

/-- `filter[n², dr(#)]` -/
def P12413305403900603230.Spec : Prop :=
  ∀ n, (P12413305403900603230.a n : ℤ) = A061099 (n + 1)

end A061099

/-! ## A061099.P7074046140185914245

`filter[n², #%9]`
-/

namespace A061099.P7074046140185914245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => f1 j % 9 = 1) n)

end

end A061099.P7074046140185914245

namespace A061099

/-- `filter[n², #%9]` -/
def P7074046140185914245.Spec : Prop :=
  ∀ n, (P7074046140185914245.a n : ℤ) = A061099 (n + 1)

end A061099

/-! ## A061099.P15542703287845752127

`record[(dr(xor(1, n))-n)²]`
-/

namespace A061099.P15542703287845752127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digitalRoot (Nat.xor 1 n : ℤ) : ℤ) - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061099.P15542703287845752127

namespace A061099

/-- `record[(dr(xor(1, n))-n)²]` -/
def P15542703287845752127.Spec : Prop :=
  ∀ n, P15542703287845752127.a n = A061099 (n + 1)

end A061099

/-! ## A061099.P1768436959006622130

`eq[n, n^dr(n²)]²`
-/

namespace A061099.P1768436959006622130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ SequenceMachineLib.digitalRoot (n ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A061099.P1768436959006622130

namespace A061099

/-- `eq[n, n^dr(n²)]²` -/
def P1768436959006622130.Spec : Prop :=
  ∀ n, (P1768436959006622130.a n : ℤ) = A061099 (n + 1)

end A061099

/-! ## A061099.P3138148439593636294

`(∑[6^(n%2)]+n)²`
-/

namespace A061099.P3138148439593636294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + n) ^ 2

end

end A061099.P3138148439593636294

namespace A061099

/-- `(∑[6^(n%2)]+n)²` -/
def P3138148439593636294.Spec : Prop :=
  ∀ n, (P3138148439593636294.a n : ℤ) = A061099 (n + 1)

end A061099

/-! ## A061099.P3499408847905209421

`∑[9-a(n-1)]²` with `a(0)=1, a(1)=7`
-/

namespace A061099.P3499408847905209421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  9 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A061099.P3499408847905209421

namespace A061099

/-- `∑[9-a(n-1)]²` -/
def P3499408847905209421.Spec : Prop :=
  ∀ n, P3499408847905209421.a n = A061099 (n + 1)

end A061099

/-! ## A061099.P13234013770517677538

`eq[n+1, dr(n²)+n]²`
-/

namespace A061099.P13234013770517677538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n ^ 2 : ℤ) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A061099.P13234013770517677538

namespace A061099

/-- `eq[n+1, dr(n²)+n]²` -/
def P13234013770517677538.Spec : Prop :=
  ∀ n, (P13234013770517677538.a n : ℤ) = A061099 (n + 1)

end A061099

/-! ## A061099.P2416885932993483649

`eq[n-1, n-dr(n²)]²`
-/

namespace A061099.P2416885932993483649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.digitalRoot (n ^ 2 : ℤ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A061099.P2416885932993483649

namespace A061099

/-- `eq[n-1, n-dr(n²)]²` -/
def P2416885932993483649.Spec : Prop :=
  ∀ n, (P2416885932993483649.a n : ℤ) = A061099 (n + 1)

end A061099

/-! ## A061099.P17282444315991671470

`lt[(n-1)*dr(n²), n]²`
-/

namespace A061099.P17282444315991671470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (SequenceMachineLib.digitalRoot (n ^ 2 : ℤ) : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n ^ 2

end

end A061099.P17282444315991671470

namespace A061099

/-- `lt[(n-1)*dr(n²), n]²` -/
def P17282444315991671470.Spec : Prop :=
  ∀ n, (P17282444315991671470.a n : ℤ) = A061099 (n + 1)

end A061099

/-! ## A061099.P14613021000056858868

`record[n+1-dr(n²)²]²`
-/

namespace A061099.P14613021000056858868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (SequenceMachineLib.digitalRoot (n ^ 2 : ℤ) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A061099.P14613021000056858868

namespace A061099

/-- `record[n+1-dr(n²)²]²` -/
def P14613021000056858868.Spec : Prop :=
  ∀ n, P14613021000056858868.a n = A061099 (n + 1)

end A061099

/-! ## A061099.P7040895235072611135

`lt[n^dr(n²), n+1]²`
-/

namespace A061099.P7040895235072611135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ SequenceMachineLib.digitalRoot (n ^ 2 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2

end

end A061099.P7040895235072611135

namespace A061099

/-- `lt[n^dr(n²), n+1]²` -/
def P7040895235072611135.Spec : Prop :=
  ∀ n, (P7040895235072611135.a n : ℤ) = A061099 (n + 1)

end A061099

/-! ## A061099.P7811240991988159045

`(1-∑[10/gcd(2, n)-3])²`
-/

namespace A061099.P7811240991988159045
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  10 / (Nat.gcd 2 n : ℚ) - 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - ∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A061099.P7811240991988159045

namespace A061099

/-- `(1-∑[10/gcd(2, n)-3])²` -/
def P7811240991988159045.Spec : Prop :=
  ∀ n, P7811240991988159045.a n = (A061099 (n + 1) : ℚ)

end A061099

/-! ## A061099.P18214074320555286788

`(∑[gcd(6, (n+1)%2)]+n)²`
-/

namespace A061099.P18214074320555286788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 6 ((n + 1) % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + n) ^ 2

end

end A061099.P18214074320555286788

namespace A061099

/-- `(∑[gcd(6, (n+1)%2)]+n)²` -/
def P18214074320555286788.Spec : Prop :=
  ∀ n, (P18214074320555286788.a n : ℤ) = A061099 (n + 1)

end A061099

/-! ## A061099.P3451667292972604218

`(∑[(2*and(1, n)+1)!]+n)²`
-/

namespace A061099.P3451667292972604218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * Nat.land 1 n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + n) ^ 2

end

end A061099.P3451667292972604218

namespace A061099

/-- `(∑[(2*and(1, n)+1)!]+n)²` -/
def P3451667292972604218.Spec : Prop :=
  ∀ n, (P3451667292972604218.a n : ℤ) = A061099 (n + 1)

end A061099

/-! ## A061099.P5867191187518391076

`record[(n-1)^(3-dr((1-n)²))]`
-/

namespace A061099.P5867191187518391076
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℚ) ^ (3 - (SequenceMachineLib.digitalRoot ((1 - (n : ℤ)) ^ 2) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061099.P5867191187518391076

namespace A061099

/-- `record[(n-1)^(3-dr((1-n)²))]` -/
def P5867191187518391076.Spec : Prop :=
  ∀ n, P5867191187518391076.a n = (A061099 (n + 1) : ℚ)

end A061099

/-! ## A061099.P10131668350377396781

`record[((n+1)/dr((n+1)²)²)²]`
-/

namespace A061099.P10131668350377396781
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (SequenceMachineLib.digitalRoot ((n + 1) ^ 2 : ℤ) ^ 2 : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061099.P10131668350377396781

namespace A061099

/-- `record[((n+1)/dr((n+1)²)²)²]` -/
def P10131668350377396781.Spec : Prop :=
  ∀ n, P10131668350377396781.a n = (A061099 (n + 1) : ℚ)

end A061099

/-! ## A061099.P2117311887875913145

`record[((n-1)/dr((1-n)²)!)²]`
-/

namespace A061099.P2117311887875913145
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1 : ℚ) / (Nat.factorial (SequenceMachineLib.digitalRoot ((1 - (n : ℤ)) ^ 2)) : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061099.P2117311887875913145

namespace A061099

/-- `record[((n-1)/dr((1-n)²)!)²]` -/
def P2117311887875913145.Spec : Prop :=
  ∀ n, P2117311887875913145.a n = (A061099 (n + 1) : ℚ)

end A061099

/-! ## A061099.P3640927358730925780

`Δ[A195042(n)]²`
-/

namespace A061099.P3640927358730925780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195042 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A061099.P3640927358730925780

namespace A061099

/-- `Δ[A195042(n)]²` -/
def P3640927358730925780.Spec : Prop :=
  ∀ n, P3640927358730925780.a n = A061099 (n + 1)

end A061099

