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
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C045
import Seq.B000.C048
import Seq.B000.C049
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
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A050400: Number of independent sets of vertices in P_3 X C_n (n > 2).

The programs for A050400, the canonical program `A050400.P9203262090911909696` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050400 has offset 0).

The definition of A050400 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050400.P1438553974374253621

`ogf((5-4x-24x^2-12x^3+x^4)/(1-x-8x^2-6x^3+x^4+x^5))`
-/

namespace A050400.P1438553974374253621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -4, -24, -12, 1] [1, -1, -8, -6, 1, 1] n

end

end A050400.P1438553974374253621

namespace A050400

/-- `ogf((5-4x-24x^2-12x^3+x^4)/(1-x-8x^2-6x^3+x^4+x^5))` -/
def P1438553974374253621.Spec : Prop :=
  ∀ n, P1438553974374253621.a n = A050400 n

end A050400

/-! ## A050400.P9203262090911909696

`a(n-1)+8*a(n-2)+6*a(n-3)-a(n-4)-a(n-5)` with `a(0)=5, a(1)=1, a(2)=17, a(3)=43, a(4)=181`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A050400

/-- `a(n-1)+8*a(n-2)+6*a(n-3)-a(n-4)-a(n-5)` -/
def P9203262090911909696.Spec : Prop :=
  ∀ n, P9203262090911909696.a n = A050400 n

theorem P9203262090911909696.correct : P9203262090911909696.Spec := by
  intro n
  simp only [A050400]

end A050400

/-!
# A050402: Number of independent sets of nodes in C_4 X C_n (n > 2).

The programs for A050402, the canonical program `A050402.P15947398674294636990` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050402 has offset 0).

The definition of A050402 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050402.P15947398674294636990

`ogf((7-13x-72x^2-20x^3+17x^4+x^5)/(1-2x-15x^2-8x^3+7x^4+2x^5-x^6))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A050402

/-- `ogf((7-13x-72x^2-20x^3+17x^4+x^5)/(1-2x-15x^2-8x^3+7x^4+2x^5-x^6))` -/
def P15947398674294636990.Spec : Prop :=
  ∀ n, P15947398674294636990.a n = A050402 n

theorem P15947398674294636990.correct : P15947398674294636990.Spec := by
  intro n
  simp only [A050402]

end A050402

/-!
# A050403: Partial sums of A051877.

The programs for A050403, the canonical program `A050403.P2369110409110856155` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050403 has offset 0).

The definition of A050403 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050403.P5571727868912931957

`ogf((1+6x)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A050403.P5571727868912931957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A050403.P5571727868912931957

namespace A050403

/-- `ogf((1+6x)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P5571727868912931957.Spec : Prop :=
  ∀ n, P5571727868912931957.a n = A050403 n

end A050403

/-! ## A050403.P2369110409110856155

`(7*n+6)*C(n+5, 5)/6`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A050403

/-- `(7*n+6)*C(n+5, 5)/6` -/
def P2369110409110856155.Spec : Prop :=
  ∀ n, P2369110409110856155.a n = (A050403 n : ℚ)

end A050403

/-! ## A050403.P7882674557460654616

`∑[∑[∑[∑[∑[7*n+1]]]]]`
-/

namespace A050403.P7882674557460654616
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050403.P7882674557460654616

namespace A050403

/-- `∑[∑[∑[∑[∑[7*n+1]]]]]` -/
def P7882674557460654616.Spec : Prop :=
  ∀ n, (P7882674557460654616.a n : ℤ) = A050403 n

end A050403

/-! ## A050403.P48696905030348074

`abs(∑[∑[∑[∑[∑[a(n-1)+7]]]]])` with `a(0)=1`
-/

namespace A050403.P48696905030348074
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f5 =>
  f5 (n - 1) + 7

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050403.P48696905030348074

namespace A050403

/-- `abs(∑[∑[∑[∑[∑[a(n-1)+7]]]]])` -/
def P48696905030348074.Spec : Prop :=
  ∀ n, (P48696905030348074.a n : ℤ) = A050403 n

end A050403

/-! ## A050403.P15636146675501205394

`floor(∑[∑[∑[∑[∑[a(n-1)+7]]]]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A050403.P15636146675501205394
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f5 =>
  f5 (n - 1) + 7

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050403.P15636146675501205394

namespace A050403

/-- `floor(∑[∑[∑[∑[∑[a(n-1)+7]]]]])` -/
def P15636146675501205394.Spec : Prop :=
  ∀ n, (P15636146675501205394.a n : ℤ) = A050403 n

end A050403

/-! ## A050403.P1311932355879555912

`ceil(∑[∑[∑[∑[∑[a(n-1)+7]]]]])` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A050403.P1311932355879555912
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f5 =>
  f5 (n - 1) + 7

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050403.P1311932355879555912

namespace A050403

/-- `ceil(∑[∑[∑[∑[∑[a(n-1)+7]]]]])` -/
def P1311932355879555912.Spec : Prop :=
  ∀ n, (P1311932355879555912.a n : ℤ) = A050403 n

end A050403

/-! ## A050403.P13782580274284833230

`round(∑[∑[∑[∑[∑[a(n-1)+7]]]]])` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A050403.P13782580274284833230
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f5 =>
  f5 (n - 1) + 7

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050403.P13782580274284833230

namespace A050403

/-- `round(∑[∑[∑[∑[∑[a(n-1)+7]]]]])` -/
def P13782580274284833230.Spec : Prop :=
  ∀ n, (P13782580274284833230.a n : ℤ) = A050403 n

end A050403

/-! ## A050403.P6015278196957166438

`2*∑[A051877(n)/2]`
-/

namespace A050403.P6015278196957166438
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051877 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A050403.P6015278196957166438

namespace A050403

/-- `2*∑[A051877(n)/2]` -/
def P6015278196957166438.Spec : Prop :=
  ∀ n, P6015278196957166438.a n = (A050403 n : ℚ)

end A050403

/-! ## A050403.P1572868583460055239

`A108683(n)-a(n-1)` with `a(0)=1`
-/

namespace A050403.P1572868583460055239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A108683 n - a (n - 1)

end

end A050403.P1572868583460055239

namespace A050403

/-- `A108683(n)-a(n-1)` -/
def P1572868583460055239.Spec : Prop :=
  ∀ n, P1572868583460055239.a n = A050403 n

end A050403

/-! ## A050403.P8484213432445723675

`2*A027818(n)-A108681(n)`
-/

namespace A050403.P8484213432445723675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027818 n - A108681 n

end

end A050403.P8484213432445723675

namespace A050403

/-- `2*A027818(n)-A108681(n)` -/
def P8484213432445723675.Spec : Prop :=
  ∀ n, P8484213432445723675.a n = A050403 n

end A050403

/-! ## A050403.P15687721871541948344

`A050404(n)-∑[A277935(n+1)/2]`
-/

namespace A050403.P15687721871541948344
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277935 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050404 n : ℚ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050403.P15687721871541948344

namespace A050403

/-- `A050404(n)-∑[A277935(n+1)/2]` -/
def P15687721871541948344.Spec : Prop :=
  ∀ n, P15687721871541948344.a n = (A050403 n : ℚ)

end A050403

/-! ## A050403.P3589796142220366356

`A027818(n+1)-(A051877(n+1)+A027818(n))`
-/

namespace A050403.P3589796142220366356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027818 (n + 1) - (A051877 (n + 1) + A027818 n)

end

end A050403.P3589796142220366356

namespace A050403

/-- `A027818(n+1)-(A051877(n+1)+A027818(n))` -/
def P3589796142220366356.Spec : Prop :=
  ∀ n, P3589796142220366356.a n = A050403 n

end A050403

/-! ## A050403.P5853026238245460157

`2*A299336(2*n)-A299338(2*n)`
-/

namespace A050403.P5853026238245460157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A299336 (2 * n) - A299338 (2 * n)

end

end A050403.P5853026238245460157

namespace A050403

/-- `2*A299336(2*n)-A299338(2*n)` -/
def P5853026238245460157.Spec : Prop :=
  ∀ n, P5853026238245460157.a n = A050403 n

end A050403

/-!
# A050404: Partial sums of A051878.

The programs for A050404, the canonical program `A050404.P6377719462512249942` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050404 has offset 0).

The definition of A050404 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050404.P3679015342290672030

`ogf((1+7x)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A050404.P3679015342290672030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A050404.P3679015342290672030

namespace A050404

/-- `ogf((1+7x)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P3679015342290672030.Spec : Prop :=
  ∀ n, P3679015342290672030.a n = A050404 n

end A050404

/-! ## A050404.P6377719462512249942

`(4*n+3)*C(n+5, 5)/3`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A050404

/-- `(4*n+3)*C(n+5, 5)/3` -/
def P6377719462512249942.Spec : Prop :=
  ∀ n, P6377719462512249942.a n = (A050404 n : ℚ)

end A050404

/-! ## A050404.P17342318931179016649

`∑[∑[∑[∑[∑[8*n+1]]]]]`
-/

namespace A050404.P17342318931179016649
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050404.P17342318931179016649

namespace A050404

/-- `∑[∑[∑[∑[∑[8*n+1]]]]]` -/
def P17342318931179016649.Spec : Prop :=
  ∀ n, (P17342318931179016649.a n : ℤ) = A050404 n

end A050404

/-! ## A050404.P8269792288252018135

`abs(∑[∑[∑[∑[∑[a(n-1)+8]]]]])` with `a(0)=1`
-/

namespace A050404.P8269792288252018135
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f5 =>
  f5 (n - 1) + 8

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050404.P8269792288252018135

namespace A050404

/-- `abs(∑[∑[∑[∑[∑[a(n-1)+8]]]]])` -/
def P8269792288252018135.Spec : Prop :=
  ∀ n, (P8269792288252018135.a n : ℤ) = A050404 n

end A050404

/-! ## A050404.P7180132894850087390

`floor(∑[∑[∑[∑[∑[a(n-1)+8]]]]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A050404.P7180132894850087390
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f5 =>
  f5 (n - 1) + 8

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050404.P7180132894850087390

namespace A050404

/-- `floor(∑[∑[∑[∑[∑[a(n-1)+8]]]]])` -/
def P7180132894850087390.Spec : Prop :=
  ∀ n, (P7180132894850087390.a n : ℤ) = A050404 n

end A050404

/-! ## A050404.P3025259737971189152

`ceil(∑[∑[∑[∑[∑[a(n-1)+8]]]]])` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A050404.P3025259737971189152
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f5 =>
  f5 (n - 1) + 8

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050404.P3025259737971189152

namespace A050404

/-- `ceil(∑[∑[∑[∑[∑[a(n-1)+8]]]]])` -/
def P3025259737971189152.Spec : Prop :=
  ∀ n, (P3025259737971189152.a n : ℤ) = A050404 n

end A050404

/-! ## A050404.P9060660268274238617

`round(∑[∑[∑[∑[∑[a(n-1)+8]]]]])` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A050404.P9060660268274238617
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f5 =>
  f5 (n - 1) + 8

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050404.P9060660268274238617

namespace A050404

/-- `round(∑[∑[∑[∑[∑[a(n-1)+8]]]]])` -/
def P9060660268274238617.Spec : Prop :=
  ∀ n, (P9060660268274238617.a n : ℤ) = A050404 n

end A050404

/-! ## A050404.P14545104017126121711

`A051878(n)+a(n-1)` with `a(0)=1`
-/

namespace A050404.P14545104017126121711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A051878 n + a (n - 1)

end

end A050404.P14545104017126121711

namespace A050404

/-- `A051878(n)+a(n-1)` -/
def P14545104017126121711.Spec : Prop :=
  ∀ n, P14545104017126121711.a n = A050404 n

end A050404

/-! ## A050404.P2053060705963270755

`∑[A051878(n)]+(A161709(n)%2)^n-1`
-/

namespace A050404.P2053060705963270755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Int.tmod (A161709 n) 2 ^ n - 1)

end

end A050404.P2053060705963270755

namespace A050404

/-- `∑[A051878(n)]+(A161709(n)%2)^n-1` -/
def P2053060705963270755.Spec : Prop :=
  ∀ n, P2053060705963270755.a n = A050404 n

end A050404

/-! ## A050404.P6150953672120990429

`∑[A051878(n)]+(A166639(n)%2)^n-1`
-/

namespace A050404.P6150953672120990429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Int.tmod (A166639 n) 2 ^ n - 1)

end

end A050404.P6150953672120990429

namespace A050404

/-- `∑[A051878(n)]+(A166639(n)%2)^n-1` -/
def P6150953672120990429.Spec : Prop :=
  ∀ n, P6150953672120990429.a n = A050404 n

end A050404

/-! ## A050404.P9918557883769325865

`A052226(n+1)-(A052226(n)+A051878(n+1))`
-/

namespace A050404.P9918557883769325865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052226 (n + 1) - (A052226 n + A051878 (n + 1))

end

end A050404.P9918557883769325865

namespace A050404

/-- `A052226(n+1)-(A052226(n)+A051878(n+1))` -/
def P9918557883769325865.Spec : Prop :=
  ∀ n, P9918557883769325865.a n = A050404 n

end A050404

/-! ## A050404.P553748908107728872

`A299336(2*n)*A299336(4*n)/A299337(4*n)`
-/

namespace A050404.P553748908107728872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299336 (2 * n) * A299336 (4 * n) : ℚ) / (A299337 (4 * n) : ℚ)

end

end A050404.P553748908107728872

namespace A050404

/-- `A299336(2*n)*A299336(4*n)/A299337(4*n)` -/
def P553748908107728872.Spec : Prop :=
  ∀ n, P553748908107728872.a n = (A050404 n : ℚ)

end A050404

/-! ## A050404.P6402468816376832912

`∑[A051878(n)]*A000034(A016969(n)+1)`
-/

namespace A050404.P6402468816376832912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000034 (A016969 n + 1).toNat

end

end A050404.P6402468816376832912

namespace A050404

/-- `∑[A051878(n)]*A000034(A016969(n)+1)` -/
def P6402468816376832912.Spec : Prop :=
  ∀ n, P6402468816376832912.a n = A050404 n

end A050404

/-!
# A050405: Partial sums of A051879.

The programs for A050405, the canonical program `A050405.P5719089350574504295` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050405 has offset 0).

The definition of A050405 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050405.P7692936989976228986

`ogf((1+8x)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A050405.P7692936989976228986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A050405.P7692936989976228986

namespace A050405

/-- `ogf((1+8x)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P7692936989976228986.Spec : Prop :=
  ∀ n, P7692936989976228986.a n = A050405 n

end A050405

/-! ## A050405.P5719089350574504295

`C(n+5, 5)*(3*n+2)/2`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A050405

/-- `C(n+5, 5)*(3*n+2)/2` -/
def P5719089350574504295.Spec : Prop :=
  ∀ n, P5719089350574504295.a n = (A050405 n : ℚ)

end A050405

/-! ## A050405.P4522873633668735968

`∑[∑[∑[∑[∑[9*n+1]]]]]`
-/

namespace A050405.P4522873633668735968
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050405.P4522873633668735968

namespace A050405

/-- `∑[∑[∑[∑[∑[9*n+1]]]]]` -/
def P4522873633668735968.Spec : Prop :=
  ∀ n, (P4522873633668735968.a n : ℤ) = A050405 n

end A050405

/-! ## A050405.P15717004677668015531

`abs(∑[∑[∑[∑[∑[a(n-1)+9]]]]])` with `a(0)=1`
-/

namespace A050405.P15717004677668015531
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f5 =>
  f5 (n - 1) + 9

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050405.P15717004677668015531

namespace A050405

/-- `abs(∑[∑[∑[∑[∑[a(n-1)+9]]]]])` -/
def P15717004677668015531.Spec : Prop :=
  ∀ n, (P15717004677668015531.a n : ℤ) = A050405 n

end A050405

/-! ## A050405.P17540223286737997241

`floor(∑[∑[∑[∑[∑[a(n-1)+9]]]]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A050405.P17540223286737997241
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f5 =>
  f5 (n - 1) + 9

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050405.P17540223286737997241

namespace A050405

/-- `floor(∑[∑[∑[∑[∑[a(n-1)+9]]]]])` -/
def P17540223286737997241.Spec : Prop :=
  ∀ n, (P17540223286737997241.a n : ℤ) = A050405 n

end A050405

/-! ## A050405.P8870254120389197778

`ceil(∑[∑[∑[∑[∑[a(n-1)+9]]]]])` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A050405.P8870254120389197778
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f5 =>
  f5 (n - 1) + 9

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050405.P8870254120389197778

namespace A050405

/-- `ceil(∑[∑[∑[∑[∑[a(n-1)+9]]]]])` -/
def P8870254120389197778.Spec : Prop :=
  ∀ n, (P8870254120389197778.a n : ℤ) = A050405 n

end A050405

/-! ## A050405.P9174827056405011819

`round(∑[∑[∑[∑[∑[a(n-1)+9]]]]])` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A050405.P9174827056405011819
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f5 =>
  f5 (n - 1) + 9

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050405.P9174827056405011819

namespace A050405

/-- `round(∑[∑[∑[∑[∑[a(n-1)+9]]]]])` -/
def P9174827056405011819.Spec : Prop :=
  ∀ n, (P9174827056405011819.a n : ℤ) = A050405 n

end A050405

/-! ## A050405.P2539855258468837294

`A051879(n)+a(n-1)` with `a(0)=1`
-/

namespace A050405.P2539855258468837294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A051879 n + a (n - 1)

end

end A050405.P2539855258468837294

namespace A050405

/-- `A051879(n)+a(n-1)` -/
def P2539855258468837294.Spec : Prop :=
  ∀ n, P2539855258468837294.a n = A050405 n

end A050405

/-! ## A050405.P1152293268400607204

`∑[A051798(n)]+a(n-1)` with `a(0)=1`
-/

namespace A050405.P1152293268400607204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051798 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A050405.P1152293268400607204

namespace A050405

/-- `∑[A051798(n)]+a(n-1)` -/
def P1152293268400607204.Spec : Prop :=
  ∀ n, P1152293268400607204.a n = A050405 n

end A050405

/-! ## A050405.P14006915719826499769

`A108684(n)-A181888(n+1)`
-/

namespace A050405.P14006915719826499769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108684 n - A181888 (n + 1)

end

end A050405.P14006915719826499769

namespace A050405

/-- `A108684(n)-A181888(n+1)` -/
def P14006915719826499769.Spec : Prop :=
  ∀ n, P14006915719826499769.a n = A050405 n

end A050405

/-! ## A050405.P14139493615716273490

`A050404(n)+∑[A277935(n+1)/2]`
-/

namespace A050405.P14139493615716273490
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277935 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050404 n : ℚ) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050405.P14139493615716273490

namespace A050405

/-- `A050404(n)+∑[A277935(n+1)/2]` -/
def P14139493615716273490.Spec : Prop :=
  ∀ n, P14139493615716273490.a n = (A050405 n : ℚ)

end A050405

/-! ## A050405.P18107367620133228726

`A000326(n+1)/A000217(n+1)*A051923(n)`
-/

namespace A050405.P18107367620133228726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000326 (n + 1) : ℚ) / (A000217 (n + 1) : ℚ) * (A051923 n : ℚ)

end

end A050405.P18107367620133228726

namespace A050405

/-- `A000326(n+1)/A000217(n+1)*A051923(n)` -/
def P18107367620133228726.Spec : Prop :=
  ∀ n, P18107367620133228726.a n = (A050405 n : ℚ)

end A050405

/-! ## A050405.P4629606288981739899

`A052206(n+1)-(A052206(n)+A051879(n+1))`
-/

namespace A050405.P4629606288981739899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052206 (n + 1) - (A052206 n + A051879 (n + 1))

end

end A050405.P4629606288981739899

namespace A050405

/-- `A052206(n+1)-(A052206(n)+A051879(n+1))` -/
def P4629606288981739899.Spec : Prop :=
  ∀ n, P4629606288981739899.a n = A050405 n

end A050405

/-! ## A050405.P14407544575471353283

`A243492(A243490(n))+∑[A051879(n)]`
-/

namespace A050405.P14407544575471353283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243492 (A243490 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050405.P14407544575471353283

namespace A050405

/-- `A243492(A243490(n))+∑[A051879(n)]` -/
def P14407544575471353283.Spec : Prop :=
  ∀ n, P14407544575471353283.a n = A050405 n

end A050405

/-! ## A050405.P13144824422596496677

`∑[A051879(n)]*A283495(A283531(n))`
-/

namespace A050405.P13144824422596496677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A283495 (A283531 n).toNat

end

end A050405.P13144824422596496677

namespace A050405

/-- `∑[A051879(n)]*A283495(A283531(n))` -/
def P13144824422596496677.Spec : Prop :=
  ∀ n, P13144824422596496677.a n = A050405 n

end A050405

/-!
# A050406: Partial sums of A051880.

The programs for A050406, the canonical program `A050406.P1552940735498058043` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050406 has offset 0).

The definition of A050406 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050406.P5729889608308452296

`ogf((1+9x)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A050406.P5729889608308452296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 9] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A050406.P5729889608308452296

namespace A050406

/-- `ogf((1+9x)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P5729889608308452296.Spec : Prop :=
  ∀ n, P5729889608308452296.a n = A050406 n

end A050406

/-! ## A050406.P1552940735498058043

`C(n+5, 5)*(5*n+3)/3`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A050406

/-- `C(n+5, 5)*(5*n+3)/3` -/
def P1552940735498058043.Spec : Prop :=
  ∀ n, P1552940735498058043.a n = (A050406 n : ℚ)

end A050406

/-! ## A050406.P12849450832822130455

`∑[∑[∑[∑[∑[10*n+1]]]]]`
-/

namespace A050406.P12849450832822130455
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050406.P12849450832822130455

namespace A050406

/-- `∑[∑[∑[∑[∑[10*n+1]]]]]` -/
def P12849450832822130455.Spec : Prop :=
  ∀ n, (P12849450832822130455.a n : ℤ) = A050406 n

end A050406

/-! ## A050406.P11573575670952936339

`A051880(n)+a(n-1)` with `a(0)=1`
-/

namespace A050406.P11573575670952936339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A051880 n + a (n - 1)

end

end A050406.P11573575670952936339

namespace A050406

/-- `A051880(n)+a(n-1)` -/
def P11573575670952936339.Spec : Prop :=
  ∀ n, P11573575670952936339.a n = A050406 n

end A050406

/-! ## A050406.P17576363294759005565

`A054563(n+1)+∑[∑[n+1]²]`
-/

namespace A050406.P17576363294759005565
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054563 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A050406.P17576363294759005565

namespace A050406

/-- `A054563(n+1)+∑[∑[n+1]²]` -/
def P17576363294759005565.Spec : Prop :=
  ∀ n, P17576363294759005565.a n = A050406 n

end A050406

/-! ## A050406.P15871233484020591805

`A373733(n)+A213552(n+1)`
-/

namespace A050406.P15871233484020591805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373733 n + A213552 (n + 1)

end

end A050406.P15871233484020591805

namespace A050406

/-- `A373733(n)+A213552(n+1)` -/
def P15871233484020591805.Spec : Prop :=
  ∀ n, P15871233484020591805.a n = A050406 n

end A050406

/-! ## A050406.P8400811550698722058

`A001249(n)-A181888(n+1)`
-/

namespace A050406.P8400811550698722058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001249 n - A181888 (n + 1)

end

end A050406.P8400811550698722058

namespace A050406

/-- `A001249(n)-A181888(n+1)` -/
def P8400811550698722058.Spec : Prop :=
  ∀ n, P8400811550698722058.a n = A050406 n

end A050406

/-! ## A050406.P7974032402263245383

`A050404(n)+∑[A277935(n+1)]`
-/

namespace A050406.P7974032402263245383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050404 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050406.P7974032402263245383

namespace A050406

/-- `A050404(n)+∑[A277935(n+1)]` -/
def P7974032402263245383.Spec : Prop :=
  ∀ n, P7974032402263245383.a n = A050406 n

end A050406

/-! ## A050406.P16959029843468266962

`∑[A051880(n)]+A008592(n)%2`
-/

namespace A050406.P16959029843468266962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Int.tmod (A008592 n) 2

end

end A050406.P16959029843468266962

namespace A050406

/-- `∑[A051880(n)]+A008592(n)%2` -/
def P16959029843468266962.Spec : Prop :=
  ∀ n, P16959029843468266962.a n = A050406 n

end A050406

/-! ## A050406.P53635731173651143

`A027801(n+1)-∑[A027764(n+3)]`
-/

namespace A050406.P53635731173651143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027764 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027801 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050406.P53635731173651143

namespace A050406

/-- `A027801(n+1)-∑[A027764(n+3)]` -/
def P53635731173651143.Spec : Prop :=
  ∀ n, P53635731173651143.a n = A050406 n

end A050406

/-! ## A050406.P18187114190338168160

`A000292(n+1)*A000292(n+1)-A181888(n+1)`
-/

namespace A050406.P18187114190338168160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) * A000292 (n + 1) - A181888 (n + 1)

end

end A050406.P18187114190338168160

namespace A050406

/-- `A000292(n+1)*A000292(n+1)-A181888(n+1)` -/
def P18187114190338168160.Spec : Prop :=
  ∀ n, P18187114190338168160.a n = A050406 n

end A050406

/-! ## A050406.P17018034740238796365

`(10*n+6)/A016861(n+1)*A034264(n+1)`
-/

namespace A050406.P17018034740238796365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 * n + 6 : ℚ) / (A016861 (n + 1) : ℚ) * (A034264 (n + 1) : ℚ)

end

end A050406.P17018034740238796365

namespace A050406

/-- `(10*n+6)/A016861(n+1)*A034264(n+1)` -/
def P17018034740238796365.Spec : Prop :=
  ∀ n, P17018034740238796365.a n = (A050406 n : ℚ)

end A050406

/-! ## A050406.P1945786971886813475

`A052254(n+1)-(A052254(n)+A051880(n+1))`
-/

namespace A050406.P1945786971886813475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052254 (n + 1) - (A052254 n + A051880 (n + 1))

end

end A050406.P1945786971886813475

namespace A050406

/-- `A052254(n+1)-(A052254(n)+A051880(n+1))` -/
def P1945786971886813475.Spec : Prop :=
  ∀ n, P1945786971886813475.a n = A050406 n

end A050406

/-! ## A050406.P17760203694832006318

`A005585(n+1)+A108684(n+1)-A050405(n+1)`
-/

namespace A050406.P17760203694832006318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005585 (n + 1) + (A108684 (n + 1) - A050405 (n + 1))

end

end A050406.P17760203694832006318

namespace A050406

/-- `A005585(n+1)+A108684(n+1)-A050405(n+1)` -/
def P17760203694832006318.Spec : Prop :=
  ∀ n, P17760203694832006318.a n = A050406 n

end A050406

/-! ## A050406.P7349656156229742593

`Δ[A274502(n+6)/9]`
-/

namespace A050406.P7349656156229742593
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274502 (n + 6) : ℚ) / 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A050406.P7349656156229742593

namespace A050406

/-- `Δ[A274502(n+6)/9]` -/
def P7349656156229742593.Spec : Prop :=
  ∀ n, P7349656156229742593.a n = (A050406 n : ℚ)

end A050406

/-! ## A050406.P18299430821149430886

`∑[A051880(n)]/A014963(A188539(n+5))`
-/

namespace A050406.P18299430821149430886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051880 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A014963 (A188539 (n + 5)).toNat : ℚ)

end

end A050406.P18299430821149430886

namespace A050406

/-- `∑[A051880(n)]/A014963(A188539(n+5))` -/
def P18299430821149430886.Spec : Prop :=
  ∀ n, P18299430821149430886.a n = (A050406 n : ℚ)

end A050406

/-! ## A050406.P6491414199212329202

`A107963(n)+∑[A000217(A000096(n))]`
-/

namespace A050406.P6491414199212329202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000096 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107963 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050406.P6491414199212329202

namespace A050406

/-- `A107963(n)+∑[A000217(A000096(n))]` -/
def P6491414199212329202.Spec : Prop :=
  ∀ n, P6491414199212329202.a n = A050406 n

end A050406

/-!
# A050407: a(n) = n*(n^2 - 6*n + 11)/6.

The programs for A050407, the canonical program `A050407.P1701616867197434212` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050407 has offset 0).

The definition of A050407 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n²-6*n+11)/6` (program `A050407.P7304462508566349329`, by `A050407.P7304462508566349329.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A050407.P16783737838828663686

`ogf((x-3x^2+3x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A050407.P16783737838828663686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -3, 3] [1, -4, 6, -4, 1] n

end

end A050407.P16783737838828663686

namespace A050407

/-- `ogf((x-3x^2+3x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P16783737838828663686.Spec : Prop :=
  ∀ n, P16783737838828663686.a n = A050407 n

end A050407

/-! ## A050407.P7304462508566349329

`n*(n²-6*n+11)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A050407.P7304462508566349329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n ^ 2 : ℤ) - (6 * n : ℤ) + 11) : ℚ) / 6

end

end A050407.P7304462508566349329

namespace A050407

/-- `n*(n²-6*n+11)/6` -/
def P7304462508566349329.Spec : Prop :=
  ∀ n, P7304462508566349329.a n = (A050407 n : ℚ)

theorem P7304462508566349329.correct : P7304462508566349329.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A050407, Nat.add_sub_cancel, A050407.P7304462508566349329.a, A050407.P1701616867197434212.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A050407, Nat.add_sub_cancel, A050407.P7304462508566349329.a, A050407.P1701616867197434212.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A050407

/-! ## A050407.P1701616867197434212

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A050407

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P1701616867197434212.Spec : Prop :=
  ∀ n, P1701616867197434212.a n = A050407 n

theorem P1701616867197434212.correct : P1701616867197434212.Spec := by
  intro n
  simp only [A050407]

end A050407

/-! ## A050407.P11473356503179678438

`2*n+C(n, 3)-∑[n]`
-/

namespace A050407.P11473356503179678438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + ((Nat.choose n 3 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A050407.P11473356503179678438

namespace A050407

/-- `2*n+C(n, 3)-∑[n]` -/
def P11473356503179678438.Spec : Prop :=
  ∀ n, P11473356503179678438.a n = A050407 n

end A050407

/-! ## A050407.P2553990026341126561

`2*n-(∑[n]-C(n, 3))`
-/

namespace A050407.P2553990026341126561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.choose n 3 : ℤ))

end

end A050407.P2553990026341126561

namespace A050407

/-- `2*n-(∑[n]-C(n, 3))` -/
def P2553990026341126561.Spec : Prop :=
  ∀ n, P2553990026341126561.a n = A050407 n

end A050407

/-! ## A050407.P8503110797319447

`∑[∑[n-3%∑[n+1]]]`
-/

namespace A050407.P8503110797319447
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((3 % (∑ j ∈ Finset.range (n + 1), f3 j) : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050407.P8503110797319447

namespace A050407

/-- `∑[∑[n-3%∑[n+1]]]` -/
def P8503110797319447.Spec : Prop :=
  ∀ n, P8503110797319447.a n = A050407 n

end A050407

/-! ## A050407.P18016370129727411120

`∑[(n*∑[n])%(∑[n]+3)]`
-/

namespace A050407.P18016370129727411120
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j) % (∑ j ∈ Finset.range (n + 1), f3 j + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050407.P18016370129727411120

namespace A050407

/-- `∑[(n*∑[n])%(∑[n]+3)]` -/
def P18016370129727411120.Spec : Prop :=
  ∀ n, (P18016370129727411120.a n : ℤ) = A050407 n

end A050407

/-! ## A050407.P3992498545278063205

`a(n-2)+(3-n)²` with `a(0)=0, a(1)=1`
-/

namespace A050407.P3992498545278063205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + (3 - (n : ℤ)) ^ 2

end

end A050407.P3992498545278063205

namespace A050407

/-- `a(n-2)+(3-n)²` -/
def P3992498545278063205.Spec : Prop :=
  ∀ n, P3992498545278063205.a n = A050407 n

end A050407

/-! ## A050407.P9238740423427091268

`∑[a(n-1)-3+n]` with `a(0)=0, a(1)=1`
-/

namespace A050407.P9238740423427091268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) - 3 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050407.P9238740423427091268

namespace A050407

/-- `∑[a(n-1)-3+n]` -/
def P9238740423427091268.Spec : Prop :=
  ∀ n, P9238740423427091268.a n = A050407 n

end A050407

/-! ## A050407.P18132001178847618247

`∑[a(n-1)-(3-n)]` with `a(0)=0, a(1)=1`
-/

namespace A050407.P18132001178847618247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) - (3 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050407.P18132001178847618247

namespace A050407

/-- `∑[a(n-1)-(3-n)]` -/
def P18132001178847618247.Spec : Prop :=
  ∀ n, P18132001178847618247.a n = A050407 n

end A050407

/-! ## A050407.P3436713444440367717

`∑[C(n, 2)]+1-(1-n)²`
-/

namespace A050407.P3436713444440367717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (1 - (1 - (n : ℤ)) ^ 2)

end

end A050407.P3436713444440367717

namespace A050407

/-- `∑[C(n, 2)]+1-(1-n)²` -/
def P3436713444440367717.Spec : Prop :=
  ∀ n, P3436713444440367717.a n = A050407 n

end A050407

/-! ## A050407.P2951890918722958126

`1-((1-n)²-∑[C(n, 2)])`
-/

namespace A050407.P2951890918722958126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((1 - (n : ℤ)) ^ 2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A050407.P2951890918722958126

namespace A050407

/-- `1-((1-n)²-∑[C(n, 2)])` -/
def P2951890918722958126.Spec : Prop :=
  ∀ n, P2951890918722958126.a n = A050407 n

end A050407

/-! ## A050407.P3624172603443891300

`C(n+1, 3)+1-(1-n)²`
-/

namespace A050407.P3624172603443891300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 3 + 1 : ℤ) - (1 - (n : ℤ)) ^ 2

end

end A050407.P3624172603443891300

namespace A050407

/-- `C(n+1, 3)+1-(1-n)²` -/
def P3624172603443891300.Spec : Prop :=
  ∀ n, P3624172603443891300.a n = A050407 n

end A050407

/-! ## A050407.P10002225399774738166

`abs(n*(n-2)-C(n+1, 3))`
-/

namespace A050407.P10002225399774738166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * ((n : ℤ) - 2) - (Nat.choose (n + 1) 3 : ℤ)|

end

end A050407.P10002225399774738166

namespace A050407

/-- `abs(n*(n-2)-C(n+1, 3))` -/
def P10002225399774738166.Spec : Prop :=
  ∀ n, P10002225399774738166.a n = A050407 n

end A050407

/-! ## A050407.P2596847501133479461

`C(n+3, n)-(n*2*n+1)`
-/

namespace A050407.P2596847501133479461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) n : ℤ) - (n * (2 * n) + 1 : ℤ)

end

end A050407.P2596847501133479461

namespace A050407

/-- `C(n+3, n)-(n*2*n+1)` -/
def P2596847501133479461.Spec : Prop :=
  ∀ n, P2596847501133479461.a n = A050407 n

end A050407

/-! ## A050407.P731661003493483535

`A180415(n+1)-(n²+1)`
-/

namespace A050407.P731661003493483535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180415 (n + 1) - (n ^ 2 + 1 : ℤ)

end

end A050407.P731661003493483535

namespace A050407

/-- `A180415(n+1)-(n²+1)` -/
def P731661003493483535.Spec : Prop :=
  ∀ n, P731661003493483535.a n = A050407 n

end A050407

/-! ## A050407.P17820395903740662808

`A000125(n)-A002061(n)`
-/

namespace A050407.P17820395903740662808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 n - A002061 n

end

end A050407.P17820395903740662808

namespace A050407

/-- `A000125(n)-A002061(n)` -/
def P17820395903740662808.Spec : Prop :=
  ∀ n, P17820395903740662808.a n = A050407 n

end A050407

/-! ## A050407.P12266143130065885391

`A006503(n)-A005476(n)`
-/

namespace A050407.P12266143130065885391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n - A005476 n

end

end A050407.P12266143130065885391

namespace A050407

/-- `A006503(n)-A005476(n)` -/
def P12266143130065885391.Spec : Prop :=
  ∀ n, P12266143130065885391.a n = A050407 n

end A050407

/-! ## A050407.P6170213785264033377

`A046127(n)-A004006(n)`
-/

namespace A050407.P6170213785264033377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046127 n - A004006 n

end

end A050407.P6170213785264033377

namespace A050407

/-- `A046127(n)-A004006(n)` -/
def P6170213785264033377.Spec : Prop :=
  ∀ n, P6170213785264033377.a n = A050407 n

end A050407

/-!
# A050408: a(n) = (117*n^2 - 99*n + 2)/2.

The programs for A050408, the canonical program `A050408.P107919804831607873` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050408 has offset 0).

The definition of A050408 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(117*n²-99*n+2)/2` (program `A050408.P9847007229613266895`, by `A050408.P9847007229613266895.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A050408.P13459243467739523671

`ogf((1+7x+109x^2)/(1-3x+3x^2-x^3))`
-/

namespace A050408.P13459243467739523671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7, 109] [1, -3, 3, -1] n

end

end A050408.P13459243467739523671

namespace A050408

/-- `ogf((1+7x+109x^2)/(1-3x+3x^2-x^3))` -/
def P13459243467739523671.Spec : Prop :=
  ∀ n, P13459243467739523671.a n = A050408 n

end A050408

/-! ## A050408.P9847007229613266895

`(117*n²-99*n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A050408.P9847007229613266895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((117 * n ^ 2 : ℤ) - (99 * n : ℤ) + 2 : ℚ) / 2

end

end A050408.P9847007229613266895

namespace A050408

/-- `(117*n²-99*n+2)/2` -/
def P9847007229613266895.Spec : Prop :=
  ∀ n, P9847007229613266895.a n = (A050408 n : ℚ)

theorem P9847007229613266895.correct : P9847007229613266895.Spec := by
  intro n
  simp only [A050408, Nat.add_sub_cancel, A050408.P9847007229613266895.a, A050408.P107919804831607873.a, A028387, A028387.P5954590561330899546.a, A255184, A255184.P18276031424336409620.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A050408

/-! ## A050408.P169217261984936132

`9*A051867(n)+1`
-/

namespace A050408.P169217261984936132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A051867 n + 1

end

end A050408.P169217261984936132

namespace A050408

/-- `9*A051867(n)+1` -/
def P169217261984936132.Spec : Prop :=
  ∀ n, P169217261984936132.a n = A050408 n

end A050408

/-! ## A050408.P11142377710736627122

`9*abs(n²+n-A152773(n))+1`
-/

namespace A050408.P11142377710736627122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * |(n ^ 2 + n : ℤ) - A152773 n| + 1

end

end A050408.P11142377710736627122

namespace A050408

/-- `9*abs(n²+n-A152773(n))+1` -/
def P11142377710736627122.Spec : Prop :=
  ∀ n, P11142377710736627122.a n = A050408 n

end A050408

/-! ## A050408.P107919804831607873

`A028387(n)+5*A255184(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A050408

/-- `A028387(n)+5*A255184(n)` -/
def P107919804831607873.Spec : Prop :=
  ∀ n, P107919804831607873.a n = A050408 n

theorem P107919804831607873.correct : P107919804831607873.Spec := by
  intro n
  simp only [A050408]

end A050408

/-! ## A050408.P4122804337234413918

`A192136(n)+8*A051868(n)`
-/

namespace A050408.P4122804337234413918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192136 n + 8 * A051868 n

end

end A050408.P4122804337234413918

namespace A050408

/-- `A192136(n)+8*A051868(n)` -/
def P4122804337234413918.Spec : Prop :=
  ∀ n, P4122804337234413918.a n = A050408 n

end A050408

/-! ## A050408.P9651396377994178576

`A022270(A008585(n))-A183010(2*n)`
-/

namespace A050408.P9651396377994178576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022270 (A008585 n).toNat - A183010 (2 * n)

end

end A050408.P9651396377994178576

namespace A050408

/-- `A022270(A008585(n))-A183010(2*n)` -/
def P9651396377994178576.Spec : Prop :=
  ∀ n, P9651396377994178576.a n = A050408 n

end A050408

/-! ## A050408.P15759162284280346796

`A186030(A016777(n))-A016777(A161714(n))`
-/

namespace A050408.P15759162284280346796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186030 (A016777 n).toNat - A016777 (A161714 n).toNat

end

end A050408.P15759162284280346796

namespace A050408

/-- `A186030(A016777(n))-A016777(A161714(n))` -/
def P15759162284280346796.Spec : Prop :=
  ∀ n, P15759162284280346796.a n = A050408 n

end A050408

/-!
# A050409: Truncated square pyramid numbers: a(n) = Sum_{k = n..2*n} k^2.

The programs for A050409, the canonical program `A050409.P34588016376266764` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050409 has offset 0).

The definition of A050409 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[2*n-n, (#+n)²]` (program `A050409.P34588016376266764`, by `A050409.P34588016376266764.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A050409.P2048947518499758517

`ogf((5x+9x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A050409.P2048947518499758517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, 9] [1, -4, 6, -4, 1] n

end

end A050409.P2048947518499758517

namespace A050409

/-- `ogf((5x+9x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P2048947518499758517.Spec : Prop :=
  ∀ n, P2048947518499758517.a n = A050409 n

end A050409

/-! ## A050409.P12337606554322450687

`n*(n+1)*(14*n+1)/6`
-/

namespace A050409.P12337606554322450687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (14 * n + 1) : ℚ) / 6

end

end A050409.P12337606554322450687

namespace A050409

/-- `n*(n+1)*(14*n+1)/6` -/
def P12337606554322450687.Spec : Prop :=
  ∀ n, P12337606554322450687.a n = (A050409 n : ℚ)

end A050409

/-! ## A050409.P478583691290627250

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=5, a(2)=29, a(3)=86`
-/

namespace A050409.P478583691290627250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5, 29, 86] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A050409.P478583691290627250

namespace A050409

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P478583691290627250.Spec : Prop :=
  ∀ n, P478583691290627250.a n = A050409 n

end A050409

/-! ## A050409.P7341888044976126814

`A129371(2*n)`
-/

namespace A050409.P7341888044976126814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129371 (2 * n)

end

end A050409.P7341888044976126814

namespace A050409

/-- `A129371(2*n)` -/
def P7341888044976126814.Spec : Prop :=
  ∀ n, P7341888044976126814.a n = A050409 n

end A050409

/-! ## A050409.P34588016376266764

`∑{#}[2*n-n, (#+n)²]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A050409

/-- `∑{#}[2*n-n, (#+n)²]` -/
def P34588016376266764.Spec : Prop :=
  ∀ n, (P34588016376266764.a n : ℤ) = A050409 n

theorem P34588016376266764.correct : P34588016376266764.Spec := by
  intro n
  simp only [A050409]

end A050409

/-! ## A050409.P14372746685946614828

`∑[∑[a(n-1)+14]]` with `a(0)=0, a(1)=5`
-/

namespace A050409.P14372746685946614828
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n f2 =>
  f2 (n - 1) + 14

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050409.P14372746685946614828

namespace A050409

/-- `∑[∑[a(n-1)+14]]` -/
def P14372746685946614828.Spec : Prop :=
  ∀ n, (P14372746685946614828.a n : ℤ) = A050409 n

end A050409

/-! ## A050409.P13453197471798805408

`∑[n²]+2*n*lcm(n, n+1)`
-/

namespace A050409.P13453197471798805408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * n * Nat.lcm n (n + 1)

end

end A050409.P13453197471798805408

namespace A050409

/-- `∑[n²]+2*n*lcm(n, n+1)` -/
def P13453197471798805408.Spec : Prop :=
  ∀ n, (P13453197471798805408.a n : ℤ) = A050409 n

end A050409

/-! ## A050409.P11011413559722839582

`∑[2*C(2*n, 2)]+∑[3*n²]`
-/

namespace A050409.P11011413559722839582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (2 * n) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A050409.P11011413559722839582

namespace A050409

/-- `∑[2*C(2*n, 2)]+∑[3*n²]` -/
def P11011413559722839582.Spec : Prop :=
  ∀ n, (P11011413559722839582.a n : ℤ) = A050409 n

end A050409

/-! ## A050409.P14339581021204171734

`∑[A135703(n)]`
-/

namespace A050409.P14339581021204171734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135703 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050409.P14339581021204171734

namespace A050409

/-- `∑[A135703(n)]` -/
def P14339581021204171734.Spec : Prop :=
  ∀ n, P14339581021204171734.a n = A050409 n

end A050409

/-! ## A050409.P12981593324725763988

`∑[A195023(n)/2]`
-/

namespace A050409.P12981593324725763988
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195023 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050409.P12981593324725763988

namespace A050409

/-- `∑[A195023(n)/2]` -/
def P12981593324725763988.Spec : Prop :=
  ∀ n, P12981593324725763988.a n = (A050409 n : ℚ)

end A050409

/-! ## A050409.P5408858581498473373

`∑[A033579(n)+n²]`
-/

namespace A050409.P5408858581498473373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033579 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050409.P5408858581498473373

namespace A050409

/-- `∑[A033579(n)+n²]` -/
def P5408858581498473373.Spec : Prop :=
  ∀ n, P5408858581498473373.a n = A050409 n

end A050409

/-! ## A050409.P13866838019388393821

`∑[A014635(n)-n²]`
-/

namespace A050409.P13866838019388393821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014635 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050409.P13866838019388393821

namespace A050409

/-- `∑[A014635(n)-n²]` -/
def P13866838019388393821.Spec : Prop :=
  ∀ n, P13866838019388393821.a n = A050409 n

end A050409

/-! ## A050409.P2611964752219381229

`Δ[A390922(n)]+n²`
-/

namespace A050409.P2611964752219381229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390922 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n ^ 2 : ℤ)

end

end A050409.P2611964752219381229

namespace A050409

/-- `Δ[A390922(n)]+n²` -/
def P2611964752219381229.Spec : Prop :=
  ∀ n, P2611964752219381229.a n = A050409 n

end A050409

/-! ## A050409.P7073062865172709925

`A050410(n)+(2*n)²`
-/

namespace A050409.P7073062865172709925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050410 n + ((2 * n) ^ 2 : ℤ)

end

end A050409.P7073062865172709925

namespace A050409

/-- `A050410(n)+(2*n)²` -/
def P7073062865172709925.Spec : Prop :=
  ∀ n, P7073062865172709925.a n = A050409 n

end A050409

/-! ## A050409.P9624836382482806697

`A169607(n)-∑[2*n]`
-/

namespace A050409.P9624836382482806697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169607 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A050409.P9624836382482806697

namespace A050409

/-- `A169607(n)-∑[2*n]` -/
def P9624836382482806697.Spec : Prop :=
  ∀ n, P9624836382482806697.a n = A050409 n

end A050409

/-! ## A050409.P17698125489747773752

`2*A255211(n)-∑[n]`
-/

namespace A050409.P17698125489747773752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255211 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A050409.P17698125489747773752

namespace A050409

/-- `2*A255211(n)-∑[n]` -/
def P17698125489747773752.Spec : Prop :=
  ∀ n, P17698125489747773752.a n = A050409 n

end A050409

/-! ## A050409.P14488642712891480610

`A132112(n)+n*∑[n]`
-/

namespace A050409.P14488642712891480610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132112 n + ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A050409.P14488642712891480610

namespace A050409

/-- `A132112(n)+n*∑[n]` -/
def P14488642712891480610.Spec : Prop :=
  ∀ n, P14488642712891480610.a n = A050409 n

end A050409

/-! ## A050409.P14505661460476968506

`A299646(n)-Δ[n²]²`
-/

namespace A050409.P14505661460476968506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299646 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A050409.P14505661460476968506

namespace A050409

/-- `A299646(n)-Δ[n²]²` -/
def P14505661460476968506.Spec : Prop :=
  ∀ n, P14505661460476968506.a n = A050409 n

end A050409

/-! ## A050409.P17826263882020498326

`A181617(n+1)+∑[n²]`
-/

namespace A050409.P17826263882020498326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181617 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A050409.P17826263882020498326

namespace A050409

/-- `A181617(n+1)+∑[n²]` -/
def P17826263882020498326.Spec : Prop :=
  ∀ n, P17826263882020498326.a n = A050409 n

end A050409

/-! ## A050409.P4061997367974379289

`∑[A081585(n)-(n+1)²]`
-/

namespace A050409.P4061997367974379289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081585 n - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050409.P4061997367974379289

namespace A050409

/-- `∑[A081585(n)-(n+1)²]` -/
def P4061997367974379289.Spec : Prop :=
  ∀ n, P4061997367974379289.a n = A050409 n

end A050409

/-!
# A050410: Truncated square pyramid numbers: a(n) = Sum_{k = n..2*n-1} k^2.

The programs for A050410, the canonical program `A050410.P3004122202879972860` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050410 has offset 0).

The definition of A050410 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[2*n-1-n, (#+n)²]` (program `A050410.P3004122202879972860`, by `A050410.P3004122202879972860.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A050410.P17796614261363773555

`ogf((x+9x^2+4x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A050410.P17796614261363773555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 9, 4] [1, -4, 6, -4, 1] n

end

end A050410.P17796614261363773555

namespace A050410

/-- `ogf((x+9x^2+4x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P17796614261363773555.Spec : Prop :=
  ∀ n, P17796614261363773555.a n = A050410 n

end A050410

/-! ## A050410.P13262724733568272757

`n*(7*n-1)*(2*n-1)/6`
-/

namespace A050410.P13262724733568272757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((7 * n : ℤ) - 1) * ((2 * n : ℤ) - 1) : ℚ) / 6

end

end A050410.P13262724733568272757

namespace A050410

/-- `n*(7*n-1)*(2*n-1)/6` -/
def P13262724733568272757.Spec : Prop :=
  ∀ n, P13262724733568272757.a n = (A050410 n : ℚ)

end A050410

/-! ## A050410.P1072665369966865673

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=13, a(3)=50`
-/

namespace A050410.P1072665369966865673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 13, 50] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A050410.P1072665369966865673

namespace A050410

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P1072665369966865673.Spec : Prop :=
  ∀ n, P1072665369966865673.a n = A050410 n

end A050410

/-! ## A050410.P3004122202879972860

`∑{#}[2*n-1-n, (#+n)²]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A050410

/-- `∑{#}[2*n-1-n, (#+n)²]` -/
def P3004122202879972860.Spec : Prop :=
  ∀ n, (P3004122202879972860.a n : ℤ) = A050410 n

theorem P3004122202879972860.correct : P3004122202879972860.Spec := by
  intro n
  simp only [A050410]

end A050410

/-! ## A050410.P1019913341095132561

`∑[∑[ogf((x+9x^2+4x^3)/(1-2x+x^2))]]`
-/

namespace A050410.P1019913341095132561
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 9, 4] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050410.P1019913341095132561

namespace A050410

/-- `∑[∑[ogf((x+9x^2+4x^3)/(1-2x+x^2))]]` -/
def P1019913341095132561.Spec : Prop :=
  ∀ n, P1019913341095132561.a n = A050410 n

end A050410

/-! ## A050410.P12244291655528788894

`A385730(n)-∑[(n+1)²]`
-/

namespace A050410.P12244291655528788894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385730 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A050410.P12244291655528788894

namespace A050410

/-- `A385730(n)-∑[(n+1)²]` -/
def P12244291655528788894.Spec : Prop :=
  ∀ n, P12244291655528788894.a n = A050410 n

end A050410

/-! ## A050410.P9753925909596671995

`A059722(n)+A051925(n)`
-/

namespace A050410.P9753925909596671995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059722 n + A051925 n

end

end A050410.P9753925909596671995

namespace A050410

/-- `A059722(n)+A051925(n)` -/
def P9753925909596671995.Spec : Prop :=
  ∀ n, P9753925909596671995.a n = A050410 n

end A050410

/-! ## A050410.P10519049539051610108

`A101986(n)+A015238(n)`
-/

namespace A050410.P10519049539051610108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101986 n + A015238 n

end

end A050410.P10519049539051610108

namespace A050410

/-- `A101986(n)+A015238(n)` -/
def P10519049539051610108.Spec : Prop :=
  ∀ n, P10519049539051610108.a n = A050410 n

end A050410

/-! ## A050410.P14932640168717513774

`A161680(n)+A051673(n)`
-/

namespace A050410.P14932640168717513774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n + A051673 n

end

end A050410.P14932640168717513774

namespace A050410

/-- `A161680(n)+A051673(n)` -/
def P14932640168717513774.Spec : Prop :=
  ∀ n, P14932640168717513774.a n = A050410 n

end A050410

/-! ## A050410.P7065445376072445917

`A050409(n)-A016742(n)`
-/

namespace A050410.P7065445376072445917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050409 n - A016742 n

end

end A050410.P7065445376072445917

namespace A050410

/-- `A050409(n)-A016742(n)` -/
def P7065445376072445917.Spec : Prop :=
  ∀ n, P7065445376072445917.a n = A050410 n

end A050410

/-! ## A050410.P6613361776511840071

`A171272(n)-A047732(n)`
-/

namespace A050410.P6613361776511840071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171272 n - A047732 n

end

end A050410.P6613361776511840071

namespace A050410

/-- `A171272(n)-A047732(n)` -/
def P6613361776511840071.Spec : Prop :=
  ∀ n, P6613361776511840071.a n = A050410 n

end A050410

/-! ## A050410.P1691213901943991458

`A143166(n)-A101986(n)`
-/

namespace A050410.P1691213901943991458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143166 n - A101986 n

end

end A050410.P1691213901943991458

namespace A050410

/-- `A143166(n)-A101986(n)` -/
def P1691213901943991458.Spec : Prop :=
  ∀ n, P1691213901943991458.a n = A050410 n

end A050410

/-! ## A050410.P5332611378848658179

`A169607(n)-A202803(n)`
-/

namespace A050410.P5332611378848658179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169607 n - A202803 n

end

end A050410.P5332611378848658179

namespace A050410

/-- `A169607(n)-A202803(n)` -/
def P5332611378848658179.Spec : Prop :=
  ∀ n, P5332611378848658179.a n = A050410 n

end A050410

/-! ## A050410.P2395985164954521742

`A214659(n)-A161680(n)`
-/

namespace A050410.P2395985164954521742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214659 n - A161680 n

end

end A050410.P2395985164954521742

namespace A050410

/-- `A214659(n)-A161680(n)` -/
def P2395985164954521742.Spec : Prop :=
  ∀ n, P2395985164954521742.a n = A050410 n

end A050410

/-! ## A050410.P1038645606631991562

`A299646(n)-A102083(n)`
-/

namespace A050410.P1038645606631991562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299646 n - A102083 n

end

end A050410.P1038645606631991562

namespace A050410

/-- `A299646(n)-A102083(n)` -/
def P1038645606631991562.Spec : Prop :=
  ∀ n, P1038645606631991562.a n = A050410 n

end A050410

/-! ## A050410.P16325029350850761496

`A168547(n)-A081490(n+1)`
-/

namespace A050410.P16325029350850761496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168547 n - A081490 (n + 1)

end

end A050410.P16325029350850761496

namespace A050410

/-- `A168547(n)-A081490(n+1)` -/
def P16325029350850761496.Spec : Prop :=
  ∀ n, P16325029350850761496.a n = A050410 n

end A050410

/-! ## A050410.P8994366571161882074

`A045991(n)+A045991(n)+A000330(n)`
-/

namespace A050410.P8994366571161882074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045991 n + (A045991 n + A000330 n)

end

end A050410.P8994366571161882074

namespace A050410

/-- `A045991(n)+A045991(n)+A000330(n)` -/
def P8994366571161882074.Spec : Prop :=
  ∀ n, P8994366571161882074.a n = A050410 n

end A050410

/-! ## A050410.P9954107657837645365

`A004126(n)+A004126(n)-A000326(n)`
-/

namespace A050410.P9954107657837645365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004126 n + (A004126 n - A000326 n)

end

end A050410.P9954107657837645365

namespace A050410

/-- `A004126(n)+A004126(n)-A000326(n)` -/
def P9954107657837645365.Spec : Prop :=
  ∀ n, P9954107657837645365.a n = A050410 n

end A050410

/-!
# A050411: Analog of 3x+1 function.

The programs for A050411, the canonical program `A050411.P10996565108960123335` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050411 has offset 1).

The definition of A050411 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050411.P10996565108960123335

`((n+4)*A072062(n+1))%(2*n+7)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A050411

/-- `((n+4)*A072062(n+1))%(2*n+7)` -/
def P10996565108960123335.Spec : Prop :=
  ∀ n, P10996565108960123335.a n = A050411 (n + 1)

theorem P10996565108960123335.correct : P10996565108960123335.Spec := by
  intro n
  simp only [A050411, Nat.add_sub_cancel]

end A050411

/-! ## A050411.P3774698097987427943

`Δ[A283968(n)+A019446(n+1)²]`
-/

namespace A050411.P3774698097987427943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283968 n + A019446 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A050411.P3774698097987427943

namespace A050411

/-- `Δ[A283968(n)+A019446(n+1)²]` -/
def P3774698097987427943.Spec : Prop :=
  ∀ n, P3774698097987427943.a n = A050411 (n + 1)

end A050411

/-! ## A050411.P17352132887585228788

`A371381(n+2)-(A371381(n+1)+A026351(n+1))`
-/

namespace A050411.P17352132887585228788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371381 (n + 2) - (A371381 (n + 1) + A026351 (n + 1))

end

end A050411.P17352132887585228788

namespace A050411

/-- `A371381(n+2)-(A371381(n+1)+A026351(n+1))` -/
def P17352132887585228788.Spec : Prop :=
  ∀ n, P17352132887585228788.a n = A050411 (n + 1)

end A050411

/-! ## A050411.P16540539067407839977

`A001468(n+1)+A026351(n+1)%A019444(n+2)`
-/

namespace A050411.P16540539067407839977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (n + 1) + Int.tmod (A026351 (n + 1)) (A019444 (n + 2))

end

end A050411.P16540539067407839977

namespace A050411

/-- `A001468(n+1)+A026351(n+1)%A019444(n+2)` -/
def P16540539067407839977.Spec : Prop :=
  ∀ n, P16540539067407839977.a n = A050411 (n + 1)

end A050411

/-! ## A050411.P2573509482261336628

`A026351(n+2)-A288708(n+2)*A289034(n+3)`
-/

namespace A050411.P2573509482261336628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (n + 2) - A288708 (n + 2) * A289034 (n + 3)

end

end A050411.P2573509482261336628

namespace A050411

/-- `A026351(n+2)-A288708(n+2)*A289034(n+3)` -/
def P2573509482261336628.Spec : Prop :=
  ∀ n, P2573509482261336628.a n = A050411 (n + 1)

end A050411

/-! ## A050411.P1443405790161456138

`A004956(n+2)%A005843(A019444(n+2))`
-/

namespace A050411.P1443405790161456138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004956 (n + 2)) (A005843 (A019444 (n + 2)).toNat)

end

end A050411.P1443405790161456138

namespace A050411

/-- `A004956(n+2)%A005843(A019444(n+2))` -/
def P1443405790161456138.Spec : Prop :=
  ∀ n, P1443405790161456138.a n = A050411 (n + 1)

end A050411

/-! ## A050411.P3063524122390893762

`A026351(n+2)%A005843(A019444(n+2))`
-/

namespace A050411.P3063524122390893762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026351 (n + 2)) (A005843 (A019444 (n + 2)).toNat)

end

end A050411.P3063524122390893762

namespace A050411

/-- `A026351(n+2)%A005843(A019444(n+2))` -/
def P3063524122390893762.Spec : Prop :=
  ∀ n, P3063524122390893762.a n = A050411 (n + 1)

end A050411

/-! ## A050411.P1054727504626882719

`A189663(n+2)+Δ[A189663(A000201(n+2))²]`
-/

namespace A050411.P1054727504626882719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A000201 (n + 2)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (n + 2) + (f1 (n + 1) - f1 n)

end

end A050411.P1054727504626882719

namespace A050411

/-- `A189663(n+2)+Δ[A189663(A000201(n+2))²]` -/
def P1054727504626882719.Spec : Prop :=
  ∀ n, P1054727504626882719.a n = A050411 (n + 1)

end A050411

/-! ## A050411.P12322499432488605789

`Δ[A283968(n)+A093995(A283968(n))]`
-/

namespace A050411.P12322499432488605789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283968 n + A093995 (A283968 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A050411.P12322499432488605789

namespace A050411

/-- `Δ[A283968(n)+A093995(A283968(n))]` -/
def P12322499432488605789.Spec : Prop :=
  ∀ n, P12322499432488605789.a n = A050411 (n + 1)

end A050411

/-!
# A050412: Riesel problem: start with n; repeatedly double and add 1 until reaching a prime. Sequence gives number of steps to reach a prime or 0 if no prime is ever reached.

The programs for A050412, there is no canonical definition to state claims against.
-/

/-! ## A050412.P10284353722126575725

`A040081(2*(n+2))+1`
-/

namespace A050412.P10284353722126575725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 (2 * (n + 2)) + 1

end

end A050412.P10284353722126575725

/-! ## A050412.P5979266946319762557

`floor(log2(A052333(n+1)/(n+1)))`
-/

namespace A050412.P5979266946319762557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 ((A052333 (n + 1) : ℚ) / (n + 1 : ℚ) : ℝ)⌋

end

end A050412.P5979266946319762557

/-! ## A050412.P2369220117994364289

`floor(log2(A052333(n+1))-A000523(n+1))`
-/

namespace A050412.P2369220117994364289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (A052333 (n + 1) : ℝ) - (A000523 (n + 1) : ℝ)⌋

end

end A050412.P2369220117994364289

/-! ## A050412.P10462275820391283664

`floor(log2(A038699(2*(n+2)))-A000523(n+1))`
-/

namespace A050412.P10462275820391283664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (A038699 (2 * (n + 2)) : ℝ) - (A000523 (n + 1) : ℝ)⌋

end

end A050412.P10462275820391283664

/-! ## A050412.P1405624341718938670

`ceil(log2(A052333(n+1)/A131319(n+2)))`
-/

namespace A050412.P1405624341718938670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 ((A052333 (n + 1) : ℚ) / (A131319 (n + 2) : ℚ) : ℝ)⌉

end

end A050412.P1405624341718938670

/-!
# A050413: Numbers k such that 74*2^k-1 is prime.

The programs for A050413, there is no canonical definition to state claims against.
-/

/-! ## A050413.P1655892302529439261

`A050544(n+1)-1`
-/

namespace A050413.P1655892302529439261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050544 (n + 1) - 1

end

end A050413.P1655892302529439261

/-! ## A050413.P4367862845287367186

`xor(1, A050544(∏{p}[n+1, #*val(n+1, #)]))`
-/

namespace A050413.P4367862845287367186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A050544 (∏ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p))

end

end A050413.P4367862845287367186

/-! ## A050413.P11170954901983698112

`record[Δ[A050544(A152271(n))]]`
-/

namespace A050413.P11170954901983698112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050544 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050413.P11170954901983698112

/-!
# A050414: Numbers k such that 2^k - 3 is prime.

The programs for A050414, there is no canonical definition to state claims against.
-/

/-! ## A050414.P4855574641087447946

`eq[A057673(n), A113923(n)]`
-/

namespace A050414.P4855574641087447946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057673 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113923 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050414.P4855574641087447946

/-! ## A050414.P15735283332242653418

`eq[A057673(n), A122553(n)]`
-/

namespace A050414.P15735283332242653418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057673 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050414.P15735283332242653418

/-! ## A050414.P16103715472692631163

`eq[A057673(n), A158799(n)]`
-/

namespace A050414.P16103715472692631163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057673 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158799 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050414.P16103715472692631163

/-! ## A050414.P240618267857498890

`eq[A057673(n), A135203(n+1)]`
-/

namespace A050414.P240618267857498890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057673 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050414.P240618267857498890

/-! ## A050414.P17402134917958194670

`eq[A057673(n), A157532(n+1)]`
-/

namespace A050414.P17402134917958194670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057673 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157532 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050414.P17402134917958194670

/-!
# A050415: Primes of the form 2^k - 3.

The programs for A050415, there is no canonical definition to state claims against.
-/

/-! ## A050415.P10959858168300247854

`2^A050414(n+1)-3`
-/

namespace A050415.P10959858168300247854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A050414 (n + 1) : ℤ) - 3

end

end A050415.P10959858168300247854

/-! ## A050415.P4171363929914649540

`A067932(n+2)`
-/

namespace A050415.P4171363929914649540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067932 (n + 2)

end

end A050415.P4171363929914649540

/-! ## A050415.P9631430651931402296

`record[A093810(n+3)]`
-/

namespace A050415.P9631430651931402296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093810 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050415.P9631430651931402296

/-! ## A050415.P13128152980057794066

`A036563(A050414(n+1))`
-/

namespace A050415.P13128152980057794066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036563 (A050414 (n + 1)).toNat

end

end A050415.P13128152980057794066

/-! ## A050415.P18060133371420016858

`∩[A036563(n), A057674(n)]`
-/

namespace A050415.P18060133371420016858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036563 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057674 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050415.P18060133371420016858

/-!
# A050416: a(1)=a(2)=1, then a(n+1) = floor(a(n)/3) if this is not among 0, a(1), ..., a(n); otherwise a(n+1) = a(n) + a(n-1).

The programs for A050416, there is no canonical definition to state claims against.
-/

/-! ## A050416.P384147455813165216

`A041101(A004906(n+1))%31`
-/

namespace A050416.P384147455813165216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A041101 (A004906 (n + 1)).toNat) 31

end

end A050416.P384147455813165216

/-! ## A050416.P13793461936095114840

`A041101(A004917(n+1))%31`
-/

namespace A050416.P13793461936095114840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A041101 (A004917 (n + 1)).toNat) 31

end

end A050416.P13793461936095114840

/-!
# A050418: Numbers k such that A050416(k) < A050416(k+1).

The programs for A050418, there is no canonical definition to state claims against.
-/

/-! ## A050418.P7781838553745806941

`eq[char[A050419(n+1)], A130706(n)]`
-/

namespace A050418.P7781838553745806941
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050419 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050418.P7781838553745806941

/-! ## A050418.P17827876260507979951

`eq[char[A050419(n+1)], A019590(n+1)]`
-/

namespace A050418.P17827876260507979951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050419 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050418.P17827876260507979951

/-! ## A050418.P13136729961204128612

`eq[char[A050419(n+1)], A154955(n+1)]`
-/

namespace A050418.P13136729961204128612
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050419 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050418.P13136729961204128612

/-! ## A050418.P6197735642123035293

`eq[Δ[A050416(n+2)], A050416(n+1)]+2`
-/

namespace A050418.P6197735642123035293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050416 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050416 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n + 2

end

end A050418.P6197735642123035293

/-! ## A050418.P7261477032129956254

`lt[A050416(A028310(n)), A050416(n+1)]`
-/

namespace A050418.P7261477032129956254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050416 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050416 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050418.P7261477032129956254

/-!
# A050419: Numbers k such that A050416(k) > A050416(k+1).

The programs for A050419, there is no canonical definition to state claims against.
-/

/-! ## A050419.P13086261661662152954

`eq[char[A050418(n+1)], A130706(n)]`
-/

namespace A050419.P13086261661662152954
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050418 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050419.P13086261661662152954

/-! ## A050419.P14792349446618487943

`eq[char[A050418(n+1)], A019590(n+1)]`
-/

namespace A050419.P14792349446618487943
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050418 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050419.P14792349446618487943

/-! ## A050419.P2553399742068126785

`eq[char[A050418(n+1)], A154955(n+1)]`
-/

namespace A050419.P2553399742068126785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050418 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050419.P2553399742068126785

/-! ## A050419.P9329015979553379445

`lt[A050416(n+1), A050416(A028310(n))]`
-/

namespace A050419.P9329015979553379445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050416 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050419.P9329015979553379445

/-! ## A050419.P12424593984265062865

`lt[Δ[A050416(n+1)], A046800(n)]+1`
-/

namespace A050419.P12424593984265062865
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050416 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 1

end

end A050419.P12424593984265062865

/-!
# A050422: Numbers for which in base 2 the least number of digits that can be removed to leave a palindrome (possibly beginning with 0) is 3.

The programs for A050422, there is no canonical definition to state claims against.
-/

/-! ## A050422.P17202999799631225103

`A361867(A299205(n+1)+3)`
-/

namespace A050422.P17202999799631225103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361867 (A299205 (n + 1) + 3).toNat

end

end A050422.P17202999799631225103

/-!
# A050425: Numbers for which in base 2 the least number of digits that can be removed to leave a base 2 palindromic number (beginning with 1) is 1.

The programs for A050425, there is no canonical definition to state claims against.
-/

/-! ## A050425.P116178552331663948

`record[A025480(A050426(n+1))]`
-/

namespace A050425.P116178552331663948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A050426 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050425.P116178552331663948

/-! ## A050425.P7561907769094261137

`record[A097140(A050426(A008619(n)))]`
-/

namespace A050425.P7561907769094261137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097140 (A050426 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050425.P7561907769094261137

/-! ## A050425.P16525328381080434359

`record[A097140(A050426(A028310(n)))]`
-/

namespace A050425.P16525328381080434359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097140 (A050426 (A028310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050425.P16525328381080434359

/-! ## A050425.P17025569597910601754

`A000720(record[A073846(A050426(n+1))])`
-/

namespace A050425.P17025569597910601754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A050426 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050425.P17025569597910601754

/-! ## A050425.P17195875084967207639

`A000720(p?[A073846(A050426(n+1))])`
-/

namespace A050425.P17195875084967207639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A050426 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A050425.P17195875084967207639

/-!
# A050426: Numbers for which in base 2 the least number of digits that can be removed to leave a base 2 palindromic number (beginning with 1) is 2.

The programs for A050426, there is no canonical definition to state claims against.
-/

/-! ## A050426.P16747209453196135218

`record[A325641(A050427(A008619(n)))]`
-/

namespace A050426.P16747209453196135218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325641 (A050427 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050426.P16747209453196135218

/-! ## A050426.P14863279926288026385

`record[A325563(A050427(A028310(n)))]`
-/

namespace A050426.P14863279926288026385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325563 (A050427 (A028310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050426.P14863279926288026385

/-! ## A050426.P6391075327199136797

`record[A025480(A050427(n+1))]`
-/

namespace A050426.P6391075327199136797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A050427 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050426.P6391075327199136797

/-! ## A050426.P17191234498109302321

`record[A032742(A050427(ceil(n/2)+1))]`
-/

namespace A050426.P17191234498109302321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A050427 (⌈(n : ℚ) / 2⌉ + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050426.P17191234498109302321

/-! ## A050426.P1002208161596936014

`record[A054576(A050428(n+1))]`
-/

namespace A050426.P1002208161596936014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A050428 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050426.P1002208161596936014

/-!
# A050427: Numbers for which in base 2 the least number of digits that can be removed to leave a base 2 palindromic number (beginning with 1) is 3.

The programs for A050427, there is no canonical definition to state claims against.
-/

/-! ## A050427.P6718361876537307770

`record[A025480(A050428(n+1))]`
-/

namespace A050427.P6718361876537307770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A050428 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050427.P6718361876537307770

/-! ## A050427.P4098212370807022942

`record[A032742(A050428(A028310(n)))]`
-/

namespace A050427.P4098212370807022942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A050428 (A028310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050427.P4098212370807022942

/-! ## A050427.P18385253949131877764

`record[A078898(A050428(A006949(n)))]`
-/

namespace A050427.P18385253949131877764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A050428 (A006949 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050427.P18385253949131877764

/-! ## A050427.P12344588542018492224

`record[A097140(A050428(A008620(n)))]`
-/

namespace A050427.P12344588542018492224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097140 (A050428 (A008620 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050427.P12344588542018492224

/-! ## A050427.P8855776317355916214

`record[A078898(A050428(A065033(n)))]`
-/

namespace A050427.P8855776317355916214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A050428 (A065033 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050427.P8855776317355916214

/-! ## A050427.P5807064237921101754

`record[A054576(2*A050428(n+1))]`
-/

namespace A050427.P5807064237921101754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (2 * A050428 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050427.P5807064237921101754

/-!
# A050428: Numbers for which in base 2 the least number of digits that can be removed to leave a base 2 palindromic number (beginning with 1) is 4.

The programs for A050428, there is no canonical definition to state claims against.
-/

/-! ## A050428.P4713371473666249007

`record[A273943(A050429(n+1))]`
-/

namespace A050428.P4713371473666249007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A050429 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050428.P4713371473666249007

/-! ## A050428.P18132757415971316363

`record[A103391(A050429(n+1)-2)]`
-/

namespace A050428.P18132757415971316363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A050429 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050428.P18132757415971316363

/-! ## A050428.P4803368187695051425

`record[A025480(A050429(ceil(n/2)+1))]`
-/

namespace A050428.P4803368187695051425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A050429 (⌈(n : ℚ) / 2⌉ + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050428.P4803368187695051425

/-! ## A050428.P6504894918792594420

`record[A025480(A050429(n+1))%A050423(n+1)]`
-/

namespace A050428.P6504894918792594420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025480 (A050429 (n + 1)).toNat) (A050423 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050428.P6504894918792594420

/-! ## A050428.P11071981899926469842

`record[A025480(A050429(n+1)%A160917(n+1))]`
-/

namespace A050428.P11071981899926469842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (Int.tmod (A050429 (n + 1)) (A160917 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050428.P11071981899926469842

/-! ## A050428.P18115971604442114338

`A050429(n+1)/A043529(A257559(n+1))`
-/

namespace A050428.P18115971604442114338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050429 (n + 1) : ℚ) / (A043529 (A257559 (n + 1)).toNat : ℚ)

end

end A050428.P18115971604442114338

/-!
# A050429: Numbers for which in base 2 the least number of digits that can be removed to leave a base 2 palindromic number (beginning with 1) is 5.

The programs for A050429, there is no canonical definition to state claims against.
-/

/-! ## A050429.P1049016295950110209

`A000034(A028387(n))*A050428(n+1)`
-/

namespace A050429.P1049016295950110209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A028387 n).toNat * A050428 (n + 1)

end

end A050429.P1049016295950110209

/-! ## A050429.P8131372708643320571

`A043529(A257559(n+1))*A050428(n+1)`
-/

namespace A050429.P8131372708643320571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 (A257559 (n + 1)).toNat * A050428 (n + 1)

end

end A050429.P8131372708643320571

/-! ## A050429.P4049173149024067865

`A000034(A034111(n+1))*A050428(n+1)`
-/

namespace A050429.P4049173149024067865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A034111 (n + 1)).toNat * A050428 (n + 1)

end

end A050429.P4049173149024067865

/-!
# A050430: Length of longest palindromic subword of (n base 2).

The programs for A050430, there is no canonical definition to state claims against.
-/

/-! ## A050430.P11447340047086724732

`∑{digits}[A215256(n+1), A215244(#)]`
-/

namespace A050430.P11447340047086724732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215256 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A215244 x).sum

end

end A050430.P11447340047086724732

/-! ## A050430.P9073988836606438338

`∑{digits}[A215256(n+1), A215256(#)]`
-/

namespace A050430.P9073988836606438338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215256 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A215256 x).sum

end

end A050430.P9073988836606438338

/-! ## A050430.P7738968174237744729

`A050431(A005836(n+2))`
-/

namespace A050430.P7738968174237744729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050431 (A005836 (n + 2)).toNat

end

end A050430.P7738968174237744729

/-! ## A050430.P12231599093764585662

`A050431(A005823(n+2)/2)`
-/

namespace A050430.P12231599093764585662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050431 (SequenceMachineLib.roundAway ((A005823 (n + 2) : ℚ) / 2)).toNat

end

end A050430.P12231599093764585662

/-! ## A050430.P6770824777428000378

`A050431(A005823(n+2))`
-/

namespace A050430.P6770824777428000378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050431 (A005823 (n + 2)).toNat

end

end A050430.P6770824777428000378

/-! ## A050430.P12068691735993055985

`A050431(A356426(n+2))`
-/

namespace A050430.P12068691735993055985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050431 (A356426 (n + 2)).toNat

end

end A050430.P12068691735993055985

/-! ## A050430.P8721822746903303709

`A050431(A191107(n+2)+1)`
-/

namespace A050430.P8721822746903303709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050431 (A191107 (n + 2) + 1).toNat

end

end A050430.P8721822746903303709

/-! ## A050430.P8162842087119545799

`A050432(A000695(n+1))`
-/

namespace A050430.P8162842087119545799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050432 (A000695 (n + 1)).toNat

end

end A050430.P8162842087119545799

/-! ## A050430.P7699716322121656456

`A050432(A374625(n+1))`
-/

namespace A050430.P7699716322121656456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050432 (A374625 (n + 1)).toNat

end

end A050430.P7699716322121656456

/-! ## A050430.P5874764031523204970

`A050431(A055246(n+2))`
-/

namespace A050430.P5874764031523204970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050431 (A055246 (n + 2)).toNat

end

end A050430.P5874764031523204970

/-! ## A050430.P13950074676140388200

`A050432(A062880(n+1)/2)`
-/

namespace A050430.P13950074676140388200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050432 (SequenceMachineLib.roundAway ((A062880 (n + 1) : ℚ) / 2)).toNat

end

end A050430.P13950074676140388200

/-!
# A050431: Length of longest palindromic subword of (n base 3).

The programs for A050431, there is no canonical definition to state claims against.
-/

/-! ## A050431.P5978560759204809183

`A050432(A023717(n+1))`
-/

namespace A050431.P5978560759204809183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050432 (A023717 (n + 1)).toNat

end

end A050431.P5978560759204809183

/-! ## A050431.P6257569713993767673

`A050432(eq[A000007(n), A292373(n)])`
-/

namespace A050431.P6257569713993767673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050432 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A050431.P6257569713993767673

/-! ## A050431.P17433415742997013816

`A050432(A023713(n+2))`
-/

namespace A050431.P17433415742997013816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050432 (A023713 (n + 2)).toNat

end

end A050431.P17433415742997013816

/-! ## A050431.P9525480335309857744

`A050432(A023709(n+2))`
-/

namespace A050431.P9525480335309857744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050432 (A023709 (n + 2)).toNat

end

end A050431.P9525480335309857744

/-! ## A050431.P12060605264238842595

`A050432(record[A057300(n+1)])`
-/

namespace A050431.P12060605264238842595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050432 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050431.P12060605264238842595

/-! ## A050431.P9103776343784804830

`A050433(A037453(n+1))`
-/

namespace A050431.P9103776343784804830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050433 (A037453 (n + 1)).toNat

end

end A050431.P9103776343784804830

/-! ## A050431.P16148684148694598886

`A399787(A007089(n+1))`
-/

namespace A050431.P16148684148694598886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399787 (A007089 (n + 1)).toNat

end

end A050431.P16148684148694598886

/-! ## A050431.P13006676697681218302

`A399787(A046031(n+1))`
-/

namespace A050431.P13006676697681218302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399787 (A046031 (n + 1)).toNat

end

end A050431.P13006676697681218302

/-! ## A050431.P12451712839177118652

`A399787(A343810(n+2))`
-/

namespace A050431.P12451712839177118652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399787 (A343810 (n + 2)).toNat

end

end A050431.P12451712839177118652

/-!
# A050432: Length of longest palindromic subword of (n base 4).

The programs for A050432, there is no canonical definition to state claims against.
-/

/-! ## A050432.P6942658221346236220

`A050433(A037459(n+1))`
-/

namespace A050432.P6942658221346236220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050433 (A037459 (n + 1)).toNat

end

end A050432.P6942658221346236220

/-! ## A050432.P1629660285575209875

`A050433(A020654(n+2))`
-/

namespace A050432.P1629660285575209875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050433 (A020654 (n + 2)).toNat

end

end A050432.P1629660285575209875

/-! ## A050432.P3725829984973758962

`A050433(A023733(n+2))`
-/

namespace A050432.P3725829984973758962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050433 (A023733 (n + 2)).toNat

end

end A050432.P3725829984973758962

/-! ## A050432.P3179437919157154367

`A050433(A023729(n+2))`
-/

namespace A050432.P3179437919157154367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050433 (A023729 (n + 2)).toNat

end

end A050432.P3179437919157154367

/-! ## A050432.P15331610999341587564

`A050433(A023725(n+2))`
-/

namespace A050432.P15331610999341587564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050433 (A023725 (n + 2)).toNat

end

end A050432.P15331610999341587564

/-! ## A050432.P14211582866033666523

`A399787(A007090(n+1))`
-/

namespace A050432.P14211582866033666523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399787 (A007090 (n + 1)).toNat

end

end A050432.P14211582866033666523

/-! ## A050432.P283255607869873375

`A399787(A007284(n+1))`
-/

namespace A050432.P283255607869873375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399787 (A007284 (n + 1)).toNat

end

end A050432.P283255607869873375

/-! ## A050432.P18239690288194956398

`A399787(A046030(n+2))`
-/

namespace A050432.P18239690288194956398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399787 (A046030 (n + 2)).toNat

end

end A050432.P18239690288194956398

/-! ## A050432.P8726539067295486678

`A399787(A001743(n+2))`
-/

namespace A050432.P8726539067295486678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399787 (A001743 (n + 2)).toNat

end

end A050432.P8726539067295486678

/-!
# A050433: Length of longest palindromic subword of (n base 5).

The programs for A050433, there is no canonical definition to state claims against.
-/

/-! ## A050433.P14682806207402057435

`A399787(A007091(n+1))`
-/

namespace A050433.P14682806207402057435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399787 (A007091 (n + 1)).toNat

end

end A050433.P14682806207402057435

/-! ## A050433.P3117080711859577895

`A399787(A054047(n+1))`
-/

namespace A050433.P3117080711859577895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399787 (A054047 (n + 1)).toNat

end

end A050433.P3117080711859577895

/-! ## A050433.P14232581762575693114

`A399787(A080228(n+2))`
-/

namespace A050433.P14232581762575693114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399787 (A080228 (n + 2)).toNat

end

end A050433.P14232581762575693114

/-! ## A050433.P17326746070723154832

`A399787(A001744(n+2))`
-/

namespace A050433.P17326746070723154832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399787 (A001744 (n + 2)).toNat

end

end A050433.P17326746070723154832

/-! ## A050433.P18167079575278533935

`A399787(A014263(n+2))`
-/

namespace A050433.P18167079575278533935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399787 (A014263 (n + 2)).toNat

end

end A050433.P18167079575278533935

/-! ## A050433.P15141077238708634364

`A399787(A072960(n+2))`
-/

namespace A050433.P15141077238708634364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399787 (A072960 (n + 2)).toNat

end

end A050433.P15141077238708634364

/-!
# A050434: Primes whose next higher prime is 100 greater.

The programs for A050434, there is no canonical definition to state claims against.
-/

/-! ## A050434.P8094604498860846429

`6*A194430(n+1)+1`
-/

namespace A050434.P8094604498860846429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A194430 (n + 1) + 1

end

end A050434.P8094604498860846429

/-!
# A050435: a(n) = composite(composite(n)), where composite = A002808, composite numbers.

The programs for A050435, the canonical program `A050435.P14006746801944486327` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050435 has offset 1).

The definition of A050435 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A002808(A002808(n+1))` (program `A050435.P14006746801944486327`, by `A050435.P14006746801944486327.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A050435.P14006746801944486327

`A002808(A002808(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A050435

/-- `A002808(A002808(n+1))` -/
def P14006746801944486327.Spec : Prop :=
  ∀ n, P14006746801944486327.a n = A050435 (n + 1)

theorem P14006746801944486327.correct : P14006746801944486327.Spec := by
  intro n
  simp only [A050435, Nat.add_sub_cancel]

end A050435

/-! ## A050435.P293902442568321820

`A002808(Δ[A053767(n)])`
-/

namespace A050435.P293902442568321820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (f1 (n + 1) - f1 n).toNat

end

end A050435.P293902442568321820

namespace A050435

/-- `A002808(Δ[A053767(n)])` -/
def P293902442568321820.Spec : Prop :=
  ∀ n, P293902442568321820.a n = A050435 (n + 1)

end A050435

/-! ## A050435.P3359996979136780415

`A002808(comp[A351078(n)])`
-/

namespace A050435.P3359996979136780415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A050435.P3359996979136780415

namespace A050435

/-- `A002808(comp[A351078(n)])` -/
def P3359996979136780415.Spec : Prop :=
  ∀ n, P3359996979136780415.a n = A050435 (n + 1)

end A050435

/-! ## A050435.P210430263294149684

`A018252(A079696(n+1))`
-/

namespace A050435.P210430263294149684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A079696 (n + 1)).toNat

end

end A050435.P210430263294149684

namespace A050435

/-- `A018252(A079696(n+1))` -/
def P210430263294149684.Spec : Prop :=
  ∀ n, P210430263294149684.a n = A050435 (n + 1)

end A050435

/-! ## A050435.P8100741951542838621

`A002808(lt[0, A082023(n)])`
-/

namespace A050435.P8100741951542838621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A050435.P8100741951542838621

namespace A050435

/-- `A002808(lt[0, A082023(n)])` -/
def P8100741951542838621.Spec : Prop :=
  ∀ n, P8100741951542838621.a n = A050435 (n + 1)

end A050435

/-! ## A050435.P1023180566159675597

`A002808(lt[1, A074206(n)])`
-/

namespace A050435.P1023180566159675597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A050435.P1023180566159675597

namespace A050435

/-- `A002808(lt[1, A074206(n)])` -/
def P1023180566159675597.Spec : Prop :=
  ∀ n, P1023180566159675597.a n = A050435 (n + 1)

end A050435

/-! ## A050435.P11895944269857443065

`A002808(lt[1, A107286(n)])`
-/

namespace A050435.P11895944269857443065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A050435.P11895944269857443065

namespace A050435

/-- `A002808(lt[1, A107286(n)])` -/
def P11895944269857443065.Spec : Prop :=
  ∀ n, P11895944269857443065.a n = A050435 (n + 1)

end A050435

/-! ## A050435.P3500067470714164994

`A002808(lt[1, A107463(n)])`
-/

namespace A050435.P3500067470714164994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A050435.P3500067470714164994

namespace A050435

/-- `A002808(lt[1, A107463(n)])` -/
def P3500067470714164994.Spec : Prop :=
  ∀ n, P3500067470714164994.a n = A050435 (n + 1)

end A050435

/-! ## A050435.P14922781525937609289

`A002808(lt[1, A175126(n)])`
-/

namespace A050435.P14922781525937609289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A050435.P14922781525937609289

namespace A050435

/-- `A002808(lt[1, A175126(n)])` -/
def P14922781525937609289.Spec : Prop :=
  ∀ n, P14922781525937609289.a n = A050435 (n + 1)

end A050435

/-! ## A050435.P12277215430223388578

`A002808(lt[1, A328772(n)])`
-/

namespace A050435.P12277215430223388578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328772 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A050435.P12277215430223388578

namespace A050435

/-- `A002808(lt[1, A328772(n)])` -/
def P12277215430223388578.Spec : Prop :=
  ∀ n, P12277215430223388578.a n = A050435 (n + 1)

end A050435

/-! ## A050435.P1533056301782574769

`A002808(lt[1, A328847(n)])`
-/

namespace A050435.P1533056301782574769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A050435.P1533056301782574769

namespace A050435

/-- `A002808(lt[1, A328847(n)])` -/
def P1533056301782574769.Spec : Prop :=
  ∀ n, P1533056301782574769.a n = A050435 (n + 1)

end A050435

/-! ## A050435.P12303044914704226759

`A018252(Δ[A053767(n)]+1)`
-/

namespace A050435.P12303044914704226759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (f1 (n + 1) - f1 n + 1).toNat

end

end A050435.P12303044914704226759

namespace A050435

/-- `A018252(Δ[A053767(n)]+1)` -/
def P12303044914704226759.Spec : Prop :=
  ∀ n, P12303044914704226759.a n = A050435 (n + 1)

end A050435

/-! ## A050435.P5562578179212315320

`A141468(Δ[A053767(n)]+2)`
-/

namespace A050435.P5562578179212315320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (f1 (n + 1) - f1 n + 2).toNat

end

end A050435.P5562578179212315320

namespace A050435

/-- `A141468(Δ[A053767(n)]+2)` -/
def P5562578179212315320.Spec : Prop :=
  ∀ n, P5562578179212315320.a n = A050435 (n + 1)

end A050435

/-! ## A050435.P16824691649250688317

`A018252(comp[A351078(n)]+1)`
-/

namespace A050435.P16824691649250688317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A050435.P16824691649250688317

namespace A050435

/-- `A018252(comp[A351078(n)]+1)` -/
def P16824691649250688317.Spec : Prop :=
  ∀ n, P16824691649250688317.a n = A050435 (n + 1)

end A050435

/-! ## A050435.P15318809125182474526

`A141468(comp[A351078(n)]+2)`
-/

namespace A050435.P15318809125182474526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2)

end

end A050435.P15318809125182474526

namespace A050435

/-- `A141468(comp[A351078(n)]+2)` -/
def P15318809125182474526.Spec : Prop :=
  ∀ n, P15318809125182474526.a n = A050435 (n + 1)

end A050435

/-! ## A050435.P17183178213590361633

`A141468(A079696(n+1)+1)`
-/

namespace A050435.P17183178213590361633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A079696 (n + 1) + 1).toNat

end

end A050435.P17183178213590361633

namespace A050435

/-- `A141468(A079696(n+1)+1)` -/
def P17183178213590361633.Spec : Prop :=
  ∀ n, P17183178213590361633.a n = A050435 (n + 1)

end A050435

/-! ## A050435.P10819714249682554762

`A018252(A018252(n+2)+1)`
-/

namespace A050435.P10819714249682554762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A018252 (n + 2) + 1).toNat

end

end A050435.P10819714249682554762

namespace A050435

/-- `A018252(A018252(n+2)+1)` -/
def P10819714249682554762.Spec : Prop :=
  ∀ n, P10819714249682554762.a n = A050435 (n + 1)

end A050435

/-! ## A050435.P366105756078467569

`A141468(A141468(n+3)+2)`
-/

namespace A050435.P366105756078467569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A141468 (n + 3) + 2).toNat

end

end A050435.P366105756078467569

namespace A050435

/-- `A141468(A141468(n+3)+2)` -/
def P366105756078467569.Spec : Prop :=
  ∀ n, P366105756078467569.a n = A050435 (n + 1)

end A050435

/-! ## A050435.P17289569880639091676

`A002808(lt[1, A072491(n)])`
-/

namespace A050435.P17289569880639091676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A050435.P17289569880639091676

namespace A050435

/-- `A002808(lt[1, A072491(n)])` -/
def P17289569880639091676.Spec : Prop :=
  ∀ n, P17289569880639091676.a n = A050435 (n + 1)

end A050435

/-! ## A050435.P8323729731838705020

`A176423(A072668(n+1))`
-/

namespace A050435.P8323729731838705020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (A072668 (n + 1)).toNat

end

end A050435.P8323729731838705020

namespace A050435

/-- `A176423(A072668(n+1))` -/
def P8323729731838705020.Spec : Prop :=
  ∀ n, P8323729731838705020.a n = A050435 (n + 1)

end A050435

/-!
# A050436: Third-order composites.

The programs for A050436, the canonical program `A050436.P13941268239678709413` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050436 has offset 1).

The definition of A050436 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050436.P13941268239678709413

`A002808(A050435(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A050436

/-- `A002808(A050435(n+1))` -/
def P13941268239678709413.Spec : Prop :=
  ∀ n, P13941268239678709413.a n = A050436 (n + 1)

theorem P13941268239678709413.correct : P13941268239678709413.Spec := by
  intro n
  simp only [A050436, Nat.add_sub_cancel]

end A050436

/-! ## A050436.P1633095082163550708

`A018252(A050435(n+1)+1)`
-/

namespace A050436.P1633095082163550708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A050435 (n + 1) + 1).toNat

end

end A050436.P1633095082163550708

namespace A050436

/-- `A018252(A050435(n+1)+1)` -/
def P1633095082163550708.Spec : Prop :=
  ∀ n, P1633095082163550708.a n = A050436 (n + 1)

end A050436

/-! ## A050436.P14283500729525362608

`A141468(A050435(n+1)+2)`
-/

namespace A050436.P14283500729525362608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A050435 (n + 1) + 2).toNat

end

end A050436.P14283500729525362608

namespace A050436

/-- `A141468(A050435(n+1)+2)` -/
def P14283500729525362608.Spec : Prop :=
  ∀ n, P14283500729525362608.a n = A050436 (n + 1)

end A050436

/-! ## A050436.P1159286135330667096

`A002808(A002808(A002808(n+1)))`
-/

namespace A050436.P1159286135330667096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A002808 (A002808 (n + 1)).toNat).toNat

end

end A050436.P1159286135330667096

namespace A050436

/-- `A002808(A002808(A002808(n+1)))` -/
def P1159286135330667096.Spec : Prop :=
  ∀ n, P1159286135330667096.a n = A050436 (n + 1)

end A050436

/-! ## A050436.P11779750263393723253

`A018252(A018252(A018252(n+2)+1)+1)`
-/

namespace A050436.P11779750263393723253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A018252 (A018252 (n + 2) + 1).toNat + 1).toNat

end

end A050436.P11779750263393723253

namespace A050436

/-- `A018252(A018252(A018252(n+2)+1)+1)` -/
def P11779750263393723253.Spec : Prop :=
  ∀ n, P11779750263393723253.a n = A050436 (n + 1)

end A050436

/-! ## A050436.P9120168846062974104

`A050435(Δ[A053767(n)])`
-/

namespace A050436.P9120168846062974104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050435 (f1 (n + 1) - f1 n).toNat

end

end A050436.P9120168846062974104

namespace A050436

/-- `A050435(Δ[A053767(n)])` -/
def P9120168846062974104.Spec : Prop :=
  ∀ n, P9120168846062974104.a n = A050436 (n + 1)

end A050436

/-! ## A050436.P3595231681268015000

`A050435(A002808(n+1))`
-/

namespace A050436.P3595231681268015000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050435 (A002808 (n + 1)).toNat

end

end A050436.P3595231681268015000

namespace A050436

/-- `A050435(A002808(n+1))` -/
def P3595231681268015000.Spec : Prop :=
  ∀ n, P3595231681268015000.a n = A050436 (n + 1)

end A050436

/-! ## A050436.P1113452257940481314

`A050435(A018252(n+2))`
-/

namespace A050436.P1113452257940481314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050435 (A018252 (n + 2)).toNat

end

end A050436.P1113452257940481314

namespace A050436

/-- `A050435(A018252(n+2))` -/
def P1113452257940481314.Spec : Prop :=
  ∀ n, P1113452257940481314.a n = A050436 (n + 1)

end A050436

/-! ## A050436.P13857935498798140944

`A050435(lt[0, A082023(n)])`
-/

namespace A050436.P13857935498798140944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050435 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A050436.P13857935498798140944

namespace A050436

/-- `A050435(lt[0, A082023(n)])` -/
def P13857935498798140944.Spec : Prop :=
  ∀ n, P13857935498798140944.a n = A050436 (n + 1)

end A050436

/-! ## A050436.P4058154659149323526

`A050435(lt[1, A032741(n)])`
-/

namespace A050436.P4058154659149323526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050435 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A050436.P4058154659149323526

namespace A050436

/-- `A050435(lt[1, A032741(n)])` -/
def P4058154659149323526.Spec : Prop :=
  ∀ n, P4058154659149323526.a n = A050436 (n + 1)

end A050436

/-! ## A050436.P700984317763933794

`A050435(lt[1, A072491(n)])`
-/

namespace A050436.P700984317763933794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050435 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A050436.P700984317763933794

namespace A050436

/-- `A050435(lt[1, A072491(n)])` -/
def P700984317763933794.Spec : Prop :=
  ∀ n, P700984317763933794.a n = A050436 (n + 1)

end A050436

/-! ## A050436.P6541474383054702636

`A050435(lt[1, A078898(n)])`
-/

namespace A050436.P6541474383054702636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050435 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A050436.P6541474383054702636

namespace A050436

/-- `A050435(lt[1, A078898(n)])` -/
def P6541474383054702636.Spec : Prop :=
  ∀ n, P6541474383054702636.a n = A050436 (n + 1)

end A050436

/-! ## A050436.P5251072799434268372

`A050435(lt[1, A223135(n)])`
-/

namespace A050436.P5251072799434268372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223135 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050435 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A050436.P5251072799434268372

namespace A050436

/-- `A050435(lt[1, A223135(n)])` -/
def P5251072799434268372.Spec : Prop :=
  ∀ n, P5251072799434268372.a n = A050436 (n + 1)

end A050436

/-! ## A050436.P15871316924230729153

`A050435(lt[1, A001222(n+1)]+1)`
-/

namespace A050436.P15871316924230729153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050435 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A050436.P15871316924230729153

namespace A050436

/-- `A050435(lt[1, A001222(n+1)]+1)` -/
def P15871316924230729153.Spec : Prop :=
  ∀ n, P15871316924230729153.a n = A050436 (n + 1)

end A050436

/-! ## A050436.P8013247161000808699

`A050435(lt[2, A000005(n+1)]+1)`
-/

namespace A050436.P8013247161000808699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050435 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A050436.P8013247161000808699

namespace A050436

/-- `A050435(lt[2, A000005(n+1)]+1)` -/
def P8013247161000808699.Spec : Prop :=
  ∀ n, P8013247161000808699.a n = A050436 (n + 1)

end A050436

/-! ## A050436.P15237368713958482718

`A050435(A073169(n+1)+n+1)`
-/

namespace A050436.P15237368713958482718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050435 (A073169 (n + 1) + (n + 1 : ℤ)).toNat

end

end A050436.P15237368713958482718

namespace A050436

/-- `A050435(A073169(n+1)+n+1)` -/
def P15237368713958482718.Spec : Prop :=
  ∀ n, P15237368713958482718.a n = A050436 (n + 1)

theorem P15237368713958482718.correct : P15237368713958482718.Spec := by
  intro n
  simp only [A050436, Nat.add_sub_cancel, A050436.P15237368713958482718.a, A050436.P13941268239678709413.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A050435, A050435.P14006746801944486327.a, A073169, A073169.P14738260624206914448.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A050436

/-! ## A050436.P18136289160113505096

`A050435(A073425(n+1)+n+2)`
-/

namespace A050436.P18136289160113505096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050435 (A073425 (n + 1) + (n + 2 : ℤ)).toNat

end

end A050436.P18136289160113505096

namespace A050436

/-- `A050435(A073425(n+1)+n+2)` -/
def P18136289160113505096.Spec : Prop :=
  ∀ n, P18136289160113505096.a n = A050436 (n + 1)

end A050436

/-! ## A050436.P3374652212153124578

`A050435(lt[A000010(n+1), n]+1)`
-/

namespace A050436.P3374652212153124578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050435 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A050436.P3374652212153124578

namespace A050436

/-- `A050435(lt[A000010(n+1), n]+1)` -/
def P3374652212153124578.Spec : Prop :=
  ∀ n, P3374652212153124578.a n = A050436 (n + 1)

end A050436

/-! ## A050436.P4167621993862513750

`A050435(A240024(A239965(n+2)))`
-/

namespace A050436.P4167621993862513750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050435 (A240024 (A239965 (n + 2)).toNat).toNat

end

end A050436.P4167621993862513750

namespace A050436

/-- `A050435(A240024(A239965(n+2)))` -/
def P4167621993862513750.Spec : Prop :=
  ∀ n, P4167621993862513750.a n = A050436 (n + 1)

end A050436

/-! ## A050436.P11689508636174370828

`A076236(lt[A014963(n+1), n]+1)+A050435(n+1)`
-/

namespace A050436.P11689508636174370828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076236 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) + A050435 (n + 1)

end

end A050436.P11689508636174370828

namespace A050436

/-- `A076236(lt[A014963(n+1), n]+1)+A050435(n+1)` -/
def P11689508636174370828.Spec : Prop :=
  ∀ n, P11689508636174370828.a n = A050436 (n + 1)

end A050436

/-!
# A050437: Dimension of space spanned by symmetric powers of n-dimensional standard representation of symmetric group S_n.

The programs for A050437, there is no canonical definition to state claims against.
-/

/-! ## A050437.P4283685455244856086

`∑[A000010(A058348(3*n)+n)]`
-/

namespace A050437.P4283685455244856086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A058348 (3 * n) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050437.P4283685455244856086

/-! ## A050437.P13097925486839307481

`∑[A000010(or(n, A058348(3*n)))]`
-/

namespace A050437.P13097925486839307481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.lor (n : ℤ) (A058348 (3 * n))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050437.P13097925486839307481

/-! ## A050437.P16089825966269590624

`A002088(n)+A001531(A033886(n))`
-/

namespace A050437.P16089825966269590624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n + A001531 (A033886 n).toNat

end

end A050437.P16089825966269590624

/-! ## A050437.P12353941140701794748

`A038500(A073090(n))+A002088(n)`
-/

namespace A050437.P12353941140701794748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A073090 n).toNat + A002088 n

end

end A050437.P12353941140701794748

/-! ## A050437.P14890826137889777852

`A272336(A309864(n))+A002088(n)`
-/

namespace A050437.P14890826137889777852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272336 (A309864 n).toNat + A002088 n

end

end A050437.P14890826137889777852

/-!
# A050438: Fourth-order composites.

The programs for A050438, the canonical program `A050438.P7936861514397192088` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050438 has offset 1).

The definition of A050438 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050438.P7936861514397192088

`A002808(A050436(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A050438

/-- `A002808(A050436(n+1))` -/
def P7936861514397192088.Spec : Prop :=
  ∀ n, P7936861514397192088.a n = A050438 (n + 1)

theorem P7936861514397192088.correct : P7936861514397192088.Spec := by
  intro n
  simp only [A050438, Nat.add_sub_cancel]

end A050438

/-! ## A050438.P3315263399521778113

`A018252(A050436(n+1)+1)`
-/

namespace A050438.P3315263399521778113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A050436 (n + 1) + 1).toNat

end

end A050438.P3315263399521778113

namespace A050438

/-- `A018252(A050436(n+1)+1)` -/
def P3315263399521778113.Spec : Prop :=
  ∀ n, P3315263399521778113.a n = A050438 (n + 1)

end A050438

/-! ## A050438.P11848730988555976717

`A002808(A002808(A002808(A002808(n+1))))`
-/

namespace A050438.P11848730988555976717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A002808 (A002808 (A002808 (n + 1)).toNat).toNat).toNat

end

end A050438.P11848730988555976717

namespace A050438

/-- `A002808(A002808(A002808(A002808(n+1))))` -/
def P11848730988555976717.Spec : Prop :=
  ∀ n, P11848730988555976717.a n = A050438 (n + 1)

end A050438

/-! ## A050438.P9384592485417698740

`A050436(Δ[A053767(n)])`
-/

namespace A050438.P9384592485417698740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050436 (f1 (n + 1) - f1 n).toNat

end

end A050438.P9384592485417698740

namespace A050438

/-- `A050436(Δ[A053767(n)])` -/
def P9384592485417698740.Spec : Prop :=
  ∀ n, P9384592485417698740.a n = A050438 (n + 1)

end A050438

/-! ## A050438.P11204723915478444268

`A050436(A002808(n+1))`
-/

namespace A050438.P11204723915478444268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050436 (A002808 (n + 1)).toNat

end

end A050438.P11204723915478444268

namespace A050438

/-- `A050436(A002808(n+1))` -/
def P11204723915478444268.Spec : Prop :=
  ∀ n, P11204723915478444268.a n = A050438 (n + 1)

end A050438

/-! ## A050438.P11358821766525003997

`A050436(A018252(n+2))`
-/

namespace A050438.P11358821766525003997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050436 (A018252 (n + 2)).toNat

end

end A050438.P11358821766525003997

namespace A050438

/-- `A050436(A018252(n+2))` -/
def P11358821766525003997.Spec : Prop :=
  ∀ n, P11358821766525003997.a n = A050438 (n + 1)

end A050438

/-! ## A050438.P17476627242109085178

`A050436(lt[0, A082023(n)])`
-/

namespace A050438.P17476627242109085178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050436 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A050438.P17476627242109085178

namespace A050438

/-- `A050436(lt[0, A082023(n)])` -/
def P17476627242109085178.Spec : Prop :=
  ∀ n, P17476627242109085178.a n = A050438 (n + 1)

end A050438

/-! ## A050438.P3312642997086221494

`A050436(lt[1, A032741(n)])`
-/

namespace A050438.P3312642997086221494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050436 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A050438.P3312642997086221494

namespace A050438

/-- `A050436(lt[1, A032741(n)])` -/
def P3312642997086221494.Spec : Prop :=
  ∀ n, P3312642997086221494.a n = A050438 (n + 1)

end A050438

/-! ## A050438.P5246309567959320095

`A050436(lt[1, A072491(n)])`
-/

namespace A050438.P5246309567959320095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050436 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A050438.P5246309567959320095

namespace A050438

/-- `A050436(lt[1, A072491(n)])` -/
def P5246309567959320095.Spec : Prop :=
  ∀ n, P5246309567959320095.a n = A050438 (n + 1)

end A050438

/-! ## A050438.P9945461783229746017

`A050436(lt[1, A078898(n)])`
-/

namespace A050438.P9945461783229746017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050436 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A050438.P9945461783229746017

namespace A050438

/-- `A050436(lt[1, A078898(n)])` -/
def P9945461783229746017.Spec : Prop :=
  ∀ n, P9945461783229746017.a n = A050438 (n + 1)

end A050438

/-! ## A050438.P389645602959696775

`A050436(lt[1, A223135(n)])`
-/

namespace A050438.P389645602959696775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223135 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050436 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A050438.P389645602959696775

namespace A050438

/-- `A050436(lt[1, A223135(n)])` -/
def P389645602959696775.Spec : Prop :=
  ∀ n, P389645602959696775.a n = A050438 (n + 1)

end A050438

/-! ## A050438.P5224637005750816440

`A050436(comp[C(A020639(n+1), n)])`
-/

namespace A050438.P5224637005750816440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050436 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A050438.P5224637005750816440

namespace A050438

/-- `A050436(comp[C(A020639(n+1), n)])` -/
def P5224637005750816440.Spec : Prop :=
  ∀ n, P5224637005750816440.a n = A050438 (n + 1)

end A050438

/-! ## A050438.P275174138705606960

`A050436(lt[1, A001222(n+1)]+1)`
-/

namespace A050438.P275174138705606960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050436 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A050438.P275174138705606960

namespace A050438

/-- `A050436(lt[1, A001222(n+1)]+1)` -/
def P275174138705606960.Spec : Prop :=
  ∀ n, P275174138705606960.a n = A050438 (n + 1)

end A050438

/-! ## A050438.P14627667420072807358

`A050436(lt[2, A000005(n+1)]+1)`
-/

namespace A050438.P14627667420072807358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050436 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A050438.P14627667420072807358

namespace A050438

/-- `A050436(lt[2, A000005(n+1)]+1)` -/
def P14627667420072807358.Spec : Prop :=
  ∀ n, P14627667420072807358.a n = A050438 (n + 1)

end A050438

/-! ## A050438.P17138780688000454176

`A050436(lt[A000010(n+1), n]+1)`
-/

namespace A050438.P17138780688000454176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050436 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A050438.P17138780688000454176

namespace A050438

/-- `A050436(lt[A000010(n+1), n]+1)` -/
def P17138780688000454176.Spec : Prop :=
  ∀ n, P17138780688000454176.a n = A050438 (n + 1)

end A050438

/-! ## A050438.P1503944076313369049

`A050436(lt[A014963(n+1), n]+1)`
-/

namespace A050438.P1503944076313369049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050436 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A050438.P1503944076313369049

namespace A050438

/-- `A050436(lt[A014963(n+1), n]+1)` -/
def P1503944076313369049.Spec : Prop :=
  ∀ n, P1503944076313369049.a n = A050438 (n + 1)

end A050438

/-! ## A050438.P14253426151655497919

`A050435(A050435(n+1))`
-/

namespace A050438.P14253426151655497919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050435 (A050435 (n + 1)).toNat

end

end A050438.P14253426151655497919

namespace A050438

/-- `A050435(A050435(n+1))` -/
def P14253426151655497919.Spec : Prop :=
  ∀ n, P14253426151655497919.a n = A050438 (n + 1)

end A050438

/-! ## A050438.P4305860047114739853

`A176423(A050436(n+1)-1)`
-/

namespace A050438.P4305860047114739853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (A050436 (n + 1) - 1).toNat

end

end A050438.P4305860047114739853

namespace A050438

/-- `A176423(A050436(n+1)-1)` -/
def P4305860047114739853.Spec : Prop :=
  ∀ n, P4305860047114739853.a n = A050438 (n + 1)

end A050438

/-! ## A050438.P1902297594744444060

`A050439(n+1)-A076236(A050436(n+1))`
-/

namespace A050438.P1902297594744444060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050439 (n + 1) - A076236 (A050436 (n + 1)).toNat

end

end A050438.P1902297594744444060

namespace A050438

/-- `A050439(n+1)-A076236(A050436(n+1))` -/
def P1902297594744444060.Spec : Prop :=
  ∀ n, P1902297594744444060.a n = A050438 (n + 1)

end A050438

/-! ## A050438.P12172372004505388576

`A056653(A056653(A056653(A065090(n+3))))`
-/

namespace A050438.P12172372004505388576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (A056653 (A056653 (A065090 (n + 3)).toNat).toNat).toNat

end

end A050438.P12172372004505388576

namespace A050438

/-- `A056653(A056653(A056653(A065090(n+3))))` -/
def P12172372004505388576.Spec : Prop :=
  ∀ n, P12172372004505388576.a n = A050438 (n + 1)

end A050438

/-!
# A050439: Fifth-order composites.

The programs for A050439, the canonical program `A050439.P1472562452654814499` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050439 has offset 1).

The definition of A050439 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050439.P1472562452654814499

`A002808(A050438(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A050439

/-- `A002808(A050438(n+1))` -/
def P1472562452654814499.Spec : Prop :=
  ∀ n, P1472562452654814499.a n = A050439 (n + 1)

theorem P1472562452654814499.correct : P1472562452654814499.Spec := by
  intro n
  simp only [A050439, Nat.add_sub_cancel]

end A050439

/-! ## A050439.P15442247881469326215

`A018252(A050438(n+1)+1)`
-/

namespace A050439.P15442247881469326215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A050438 (n + 1) + 1).toNat

end

end A050439.P15442247881469326215

namespace A050439

/-- `A018252(A050438(n+1)+1)` -/
def P15442247881469326215.Spec : Prop :=
  ∀ n, P15442247881469326215.a n = A050439 (n + 1)

end A050439

/-! ## A050439.P12527883656377696829

`A002808(A002808(A050436(n+1)))`
-/

namespace A050439.P12527883656377696829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A002808 (A050436 (n + 1)).toNat).toNat

end

end A050439.P12527883656377696829

namespace A050439

/-- `A002808(A002808(A050436(n+1)))` -/
def P12527883656377696829.Spec : Prop :=
  ∀ n, P12527883656377696829.a n = A050439 (n + 1)

end A050439

/-! ## A050439.P5387862502157452704

`A002808(A002808(A002808(A002808(A002808(n+1)))))`
-/

namespace A050439.P5387862502157452704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A002808 (A002808 (A002808 (A002808 (n + 1)).toNat).toNat).toNat).toNat

end

end A050439.P5387862502157452704

namespace A050439

/-- `A002808(A002808(A002808(A002808(A002808(n+1)))))` -/
def P5387862502157452704.Spec : Prop :=
  ∀ n, P5387862502157452704.a n = A050439 (n + 1)

end A050439

/-! ## A050439.P17944251761882740258

`A050438(A002808(n+1))`
-/

namespace A050439.P17944251761882740258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050438 (A002808 (n + 1)).toNat

end

end A050439.P17944251761882740258

namespace A050439

/-- `A050438(A002808(n+1))` -/
def P17944251761882740258.Spec : Prop :=
  ∀ n, P17944251761882740258.a n = A050439 (n + 1)

end A050439

/-! ## A050439.P12597547929052391754

`A050438(A018252(n+2))`
-/

namespace A050439.P12597547929052391754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050438 (A018252 (n + 2)).toNat

end

end A050439.P12597547929052391754

namespace A050439

/-- `A050438(A018252(n+2))` -/
def P12597547929052391754.Spec : Prop :=
  ∀ n, P12597547929052391754.a n = A050439 (n + 1)

end A050439

/-! ## A050439.P8677796432950144072

`A050438(lt[0, A082023(n)])`
-/

namespace A050439.P8677796432950144072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050438 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A050439.P8677796432950144072

namespace A050439

/-- `A050438(lt[0, A082023(n)])` -/
def P8677796432950144072.Spec : Prop :=
  ∀ n, P8677796432950144072.a n = A050439 (n + 1)

end A050439

/-! ## A050439.P6238174590954531666

`A050438(lt[1, A032741(n)])`
-/

namespace A050439.P6238174590954531666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050438 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A050439.P6238174590954531666

namespace A050439

/-- `A050438(lt[1, A032741(n)])` -/
def P6238174590954531666.Spec : Prop :=
  ∀ n, P6238174590954531666.a n = A050439 (n + 1)

end A050439

/-! ## A050439.P5609869653466670001

`A050438(lt[1, A072491(n)])`
-/

namespace A050439.P5609869653466670001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050438 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A050439.P5609869653466670001

namespace A050439

/-- `A050438(lt[1, A072491(n)])` -/
def P5609869653466670001.Spec : Prop :=
  ∀ n, P5609869653466670001.a n = A050439 (n + 1)

end A050439

/-! ## A050439.P4858241813327876895

`A050438(lt[1, A078898(n)])`
-/

namespace A050439.P4858241813327876895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050438 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A050439.P4858241813327876895

namespace A050439

/-- `A050438(lt[1, A078898(n)])` -/
def P4858241813327876895.Spec : Prop :=
  ∀ n, P4858241813327876895.a n = A050439 (n + 1)

end A050439

/-! ## A050439.P11105295314982050412

`A050438(lt[1, A223135(n)])`
-/

namespace A050439.P11105295314982050412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223135 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050438 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A050439.P11105295314982050412

namespace A050439

/-- `A050438(lt[1, A223135(n)])` -/
def P11105295314982050412.Spec : Prop :=
  ∀ n, P11105295314982050412.a n = A050439 (n + 1)

end A050439

/-! ## A050439.P7621767961736336772

`A050438(lt[1, A001222(n+1)]+1)`
-/

namespace A050439.P7621767961736336772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050438 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A050439.P7621767961736336772

namespace A050439

/-- `A050438(lt[1, A001222(n+1)]+1)` -/
def P7621767961736336772.Spec : Prop :=
  ∀ n, P7621767961736336772.a n = A050439 (n + 1)

end A050439

/-! ## A050439.P18370106358331131982

`A050438(lt[2, A000005(n+1)]+1)`
-/

namespace A050439.P18370106358331131982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050438 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A050439.P18370106358331131982

namespace A050439

/-- `A050438(lt[2, A000005(n+1)]+1)` -/
def P18370106358331131982.Spec : Prop :=
  ∀ n, P18370106358331131982.a n = A050439 (n + 1)

end A050439

/-! ## A050439.P16834211903131961925

`A050438(lt[A000010(n+1), n]+1)`
-/

namespace A050439.P16834211903131961925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050438 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A050439.P16834211903131961925

namespace A050439

/-- `A050438(lt[A000010(n+1), n]+1)` -/
def P16834211903131961925.Spec : Prop :=
  ∀ n, P16834211903131961925.a n = A050439 (n + 1)

end A050439

/-! ## A050439.P7217245134867658130

`A050438(lt[A014963(n+1), n]+1)`
-/

namespace A050439.P7217245134867658130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050438 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A050439.P7217245134867658130

namespace A050439

/-- `A050438(lt[A014963(n+1), n]+1)` -/
def P7217245134867658130.Spec : Prop :=
  ∀ n, P7217245134867658130.a n = A050439 (n + 1)

end A050439

/-! ## A050439.P10452016615596782992

`A050436(A050435(n+1))`
-/

namespace A050439.P10452016615596782992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050436 (A050435 (n + 1)).toNat

end

end A050439.P10452016615596782992

namespace A050439

/-- `A050436(A050435(n+1))` -/
def P10452016615596782992.Spec : Prop :=
  ∀ n, P10452016615596782992.a n = A050439 (n + 1)

end A050439

/-! ## A050439.P13973891237570491800

`A050435(A050436(-xor(n, -1)))`
-/

namespace A050439.P13973891237570491800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050435 (A050436 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A050439.P13973891237570491800

namespace A050439

/-- `A050435(A050436(-xor(n, -1)))` -/
def P13973891237570491800.Spec : Prop :=
  ∀ n, P13973891237570491800.a n = A050439 (n + 1)

end A050439

/-! ## A050439.P7984458437059476467

`A050435(A050435(Δ[A053767(n)]))`
-/

namespace A050439.P7984458437059476467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050435 (A050435 (f1 (n + 1) - f1 n).toNat).toNat

end

end A050439.P7984458437059476467

namespace A050439

/-- `A050435(A050435(Δ[A053767(n)]))` -/
def P7984458437059476467.Spec : Prop :=
  ∀ n, P7984458437059476467.a n = A050439 (n + 1)

end A050439

/-! ## A050439.P5744984567174259805

`A050435(A050435(A073169(n+1)+n+1))`
-/

namespace A050439.P5744984567174259805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050435 (A050435 (A073169 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A050439.P5744984567174259805

namespace A050439

/-- `A050435(A050435(A073169(n+1)+n+1))` -/
def P5744984567174259805.Spec : Prop :=
  ∀ n, P5744984567174259805.a n = A050439 (n + 1)

theorem P5744984567174259805.correct : P5744984567174259805.Spec := by
  intro n
  simp only [A050439, Nat.add_sub_cancel, A050439.P5744984567174259805.a, A050439.P1472562452654814499.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A050435, A050435.P14006746801944486327.a, A050438, A050438.P7936861514397192088.a, A073169, A073169.P14738260624206914448.a, A000005, A000005.P16091521709108585461.a, A050436, A050436.P13941268239678709413.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A050439

/-! ## A050439.P1344415211214181946

`A076236(A050436(n+1))+A050438(n+1)`
-/

namespace A050439.P1344415211214181946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076236 (A050436 (n + 1)).toNat + A050438 (n + 1)

end

end A050439.P1344415211214181946

namespace A050439

/-- `A076236(A050436(n+1))+A050438(n+1)` -/
def P1344415211214181946.Spec : Prop :=
  ∀ n, P1344415211214181946.a n = A050439 (n + 1)

end A050439

/-!
# A050440: Sixth-order composites.

The programs for A050440, the canonical program `A050440.P1601807221353553865` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050440 has offset 1).

The definition of A050440 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9456 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050440.P1601807221353553865

`A002808(A050439(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A050440

/-- `A002808(A050439(n+1))` -/
def P1601807221353553865.Spec : Prop :=
  ∀ n, P1601807221353553865.a n = A050440 (n + 1)

theorem P1601807221353553865.correct : P1601807221353553865.Spec := by
  intro n
  simp only [A050440, Nat.add_sub_cancel]

end A050440

/-! ## A050440.P14902235619886845798

`A018252(A050439(n+1)+1)`
-/

namespace A050440.P14902235619886845798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A050439 (n + 1) + 1).toNat

end

end A050440.P14902235619886845798

namespace A050440

/-- `A018252(A050439(n+1)+1)` -/
def P14902235619886845798.Spec : Prop :=
  ∀ n, P14902235619886845798.a n = A050440 (n + 1)

end A050440

/-! ## A050440.P12769734570224875226

`A141468(A050439(n+1)+2)`
-/

namespace A050440.P12769734570224875226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A050439 (n + 1) + 2).toNat

end

end A050440.P12769734570224875226

namespace A050440

/-- `A141468(A050439(n+1)+2)` -/
def P12769734570224875226.Spec : Prop :=
  ∀ n, P12769734570224875226.a n = A050440 (n + 1)

end A050440

/-! ## A050440.P17212217482672798627

`A002808(A002808(A050438(n+1)))`
-/

namespace A050440.P17212217482672798627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A002808 (A050438 (n + 1)).toNat).toNat

end

end A050440.P17212217482672798627

namespace A050440

/-- `A002808(A002808(A050438(n+1)))` -/
def P17212217482672798627.Spec : Prop :=
  ∀ n, P17212217482672798627.a n = A050440 (n + 1)

end A050440

/-! ## A050440.P461132182557617072

`A050439(A002808(n+1))`
-/

namespace A050440.P461132182557617072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050439 (A002808 (n + 1)).toNat

end

end A050440.P461132182557617072

namespace A050440

/-- `A050439(A002808(n+1))` -/
def P461132182557617072.Spec : Prop :=
  ∀ n, P461132182557617072.a n = A050440 (n + 1)

end A050440

/-! ## A050440.P12279777650908946497

`A050439(A018252(n+2))`
-/

namespace A050440.P12279777650908946497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050439 (A018252 (n + 2)).toNat

end

end A050440.P12279777650908946497

namespace A050440

/-- `A050439(A018252(n+2))` -/
def P12279777650908946497.Spec : Prop :=
  ∀ n, P12279777650908946497.a n = A050440 (n + 1)

end A050440

/-! ## A050440.P129635510174160543

`A050439(lt[0, A082023(n)])`
-/

namespace A050440.P129635510174160543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050439 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A050440.P129635510174160543

namespace A050440

/-- `A050439(lt[0, A082023(n)])` -/
def P129635510174160543.Spec : Prop :=
  ∀ n, P129635510174160543.a n = A050440 (n + 1)

end A050440

/-! ## A050440.P13254225117435858097

`A050439(lt[1, A032741(n)])`
-/

namespace A050440.P13254225117435858097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050439 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A050440.P13254225117435858097

namespace A050440

/-- `A050439(lt[1, A032741(n)])` -/
def P13254225117435858097.Spec : Prop :=
  ∀ n, P13254225117435858097.a n = A050440 (n + 1)

end A050440

/-! ## A050440.P15991810621741951386

`A050439(lt[1, A072491(n)])`
-/

namespace A050440.P15991810621741951386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050439 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A050440.P15991810621741951386

namespace A050440

/-- `A050439(lt[1, A072491(n)])` -/
def P15991810621741951386.Spec : Prop :=
  ∀ n, P15991810621741951386.a n = A050440 (n + 1)

end A050440

/-! ## A050440.P272029663235799697

`A050439(lt[1, A078898(n)])`
-/

namespace A050440.P272029663235799697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050439 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A050440.P272029663235799697

namespace A050440

/-- `A050439(lt[1, A078898(n)])` -/
def P272029663235799697.Spec : Prop :=
  ∀ n, P272029663235799697.a n = A050440 (n + 1)

end A050440

/-! ## A050440.P4827080086536925401

`A050439(lt[1, A223135(n)])`
-/

namespace A050440.P4827080086536925401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223135 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050439 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A050440.P4827080086536925401

namespace A050440

/-- `A050439(lt[1, A223135(n)])` -/
def P4827080086536925401.Spec : Prop :=
  ∀ n, P4827080086536925401.a n = A050440 (n + 1)

end A050440

/-! ## A050440.P12575403720136316835

`A050439(lt[1, A001222(n+1)]+1)`
-/

namespace A050440.P12575403720136316835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050439 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A050440.P12575403720136316835

namespace A050440

/-- `A050439(lt[1, A001222(n+1)]+1)` -/
def P12575403720136316835.Spec : Prop :=
  ∀ n, P12575403720136316835.a n = A050440 (n + 1)

end A050440

/-! ## A050440.P9643116546233472621

`A050439(lt[2, A000005(n+1)]+1)`
-/

namespace A050440.P9643116546233472621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050439 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A050440.P9643116546233472621

namespace A050440

/-- `A050439(lt[2, A000005(n+1)]+1)` -/
def P9643116546233472621.Spec : Prop :=
  ∀ n, P9643116546233472621.a n = A050440 (n + 1)

end A050440

/-! ## A050440.P10804724378040605891

`A050439(lt[A000010(n+1), n]+1)`
-/

namespace A050440.P10804724378040605891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050439 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A050440.P10804724378040605891

namespace A050440

/-- `A050439(lt[A000010(n+1), n]+1)` -/
def P10804724378040605891.Spec : Prop :=
  ∀ n, P10804724378040605891.a n = A050440 (n + 1)

end A050440

/-! ## A050440.P13713239707262880589

`A050439(lt[A014963(n+1), n]+1)`
-/

namespace A050440.P13713239707262880589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050439 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A050440.P13713239707262880589

namespace A050440

/-- `A050439(lt[A014963(n+1), n]+1)` -/
def P13713239707262880589.Spec : Prop :=
  ∀ n, P13713239707262880589.a n = A050440 (n + 1)

end A050440

/-! ## A050440.P10882786578098618322

`A050438(A050435(n+1))`
-/

namespace A050440.P10882786578098618322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050438 (A050435 (n + 1)).toNat

end

end A050440.P10882786578098618322

namespace A050440

/-- `A050438(A050435(n+1))` -/
def P10882786578098618322.Spec : Prop :=
  ∀ n, P10882786578098618322.a n = A050440 (n + 1)

end A050440

/-! ## A050440.P4022330393077513672

`A050436(A050436(n+1))`
-/

namespace A050440.P4022330393077513672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050436 (A050436 (n + 1)).toNat

end

end A050440.P4022330393077513672

namespace A050440

/-- `A050436(A050436(n+1))` -/
def P4022330393077513672.Spec : Prop :=
  ∀ n, P4022330393077513672.a n = A050440 (n + 1)

end A050440

/-! ## A050440.P8433290917420793428

`A050435(A050438(-xor(n, -1)))`
-/

namespace A050440.P8433290917420793428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050435 (A050438 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A050440.P8433290917420793428

namespace A050440

/-- `A050435(A050438(-xor(n, -1)))` -/
def P8433290917420793428.Spec : Prop :=
  ∀ n, P8433290917420793428.a n = A050440 (n + 1)

end A050440

/-! ## A050440.P14920226250126120067

`A050435(A050438(1-(n-2*n)))`
-/

namespace A050440.P14920226250126120067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050435 (A050438 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat).toNat

end

end A050440.P14920226250126120067

namespace A050440

/-- `A050435(A050438(1-(n-2*n)))` -/
def P14920226250126120067.Spec : Prop :=
  ∀ n, P14920226250126120067.a n = A050440 (n + 1)

end A050440

/-! ## A050440.P7707375440083705419

`A076236(A050438(n+1))+A050439(n+1)`
-/

namespace A050440.P7707375440083705419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076236 (A050438 (n + 1)).toNat + A050439 (n + 1)

end

end A050440.P7707375440083705419

namespace A050440

/-- `A076236(A050438(n+1))+A050439(n+1)` -/
def P7707375440083705419.Spec : Prop :=
  ∀ n, P7707375440083705419.a n = A050440 (n + 1)

end A050440

/-!
# A050441: Partial sums of A051865.

The programs for A050441, the canonical program `A050441.P18240807059032482677` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050441 has offset 0).

The definition of A050441 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050441.P5396748042816501008

`ogf((x+10x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A050441.P5396748042816501008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 10] [1, -4, 6, -4, 1] n

end

end A050441.P5396748042816501008

namespace A050441

/-- `ogf((x+10x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P5396748042816501008.Spec : Prop :=
  ∀ n, P5396748042816501008.a n = A050441 n

end A050441

/-! ## A050441.P6418321277218745233

`n*(n+1)*(11*n-8)/6`
-/

namespace A050441.P6418321277218745233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 1) : ℤ) * ((11 * n : ℤ) - 8) : ℚ) / 6

end

end A050441.P6418321277218745233

namespace A050441

/-- `n*(n+1)*(11*n-8)/6` -/
def P6418321277218745233.Spec : Prop :=
  ∀ n, P6418321277218745233.a n = (A050441 n : ℚ)

theorem P6418321277218745233.correct : P6418321277218745233.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A050441, Nat.add_sub_cancel, A050441.P6418321277218745233.a, A050441.P18240807059032482677.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A050441, Nat.add_sub_cancel, A050441.P6418321277218745233.a, A050441.P18240807059032482677.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A050441

/-! ## A050441.P18240807059032482677

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=14, a(3)=50`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A050441

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P18240807059032482677.Spec : Prop :=
  ∀ n, P18240807059032482677.a n = A050441 n

theorem P18240807059032482677.correct : P18240807059032482677.Spec := by
  intro n
  simp only [A050441]

end A050441

/-! ## A050441.P17193921169534536275

`∑{#}[n-1, (n-#)*(11*#+1)]`
-/

namespace A050441.P17193921169534536275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, ((n : ℤ) - (k : ℤ)) * (11 * k + 1 : ℤ)

end

end A050441.P17193921169534536275

namespace A050441

/-- `∑{#}[n-1, (n-#)*(11*#+1)]` -/
def P17193921169534536275.Spec : Prop :=
  ∀ n, P17193921169534536275.a n = A050441 n

end A050441

/-! ## A050441.P5649999081739487081

`∑[11*C(n, 2)+n]`
-/

namespace A050441.P5649999081739487081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * Nat.choose n 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050441.P5649999081739487081

namespace A050441

/-- `∑[11*C(n, 2)+n]` -/
def P5649999081739487081.Spec : Prop :=
  ∀ n, (P5649999081739487081.a n : ℤ) = A050441 n

end A050441

/-! ## A050441.P14769163782108560382

`∑[∑[a(n-1)+11]]` with `a(0)=0, a(1)=1`
-/

namespace A050441.P14769163782108560382
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 1) + 11

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050441.P14769163782108560382

namespace A050441

/-- `∑[∑[a(n-1)+11]]` -/
def P14769163782108560382.Spec : Prop :=
  ∀ n, (P14769163782108560382.a n : ℤ) = A050441 n

end A050441

/-! ## A050441.P13507107851278134375

`∑[A051865(n)]`
-/

namespace A050441.P13507107851278134375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050441.P13507107851278134375

namespace A050441

/-- `∑[A051865(n)]` -/
def P13507107851278134375.Spec : Prop :=
  ∀ n, P13507107851278134375.a n = A050441 n

end A050441

/-! ## A050441.P13289103163414354145

`∑[A152997(n)/2]`
-/

namespace A050441.P13289103163414354145
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152997 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050441.P13289103163414354145

namespace A050441

/-- `∑[A152997(n)/2]` -/
def P13289103163414354145.Spec : Prop :=
  ∀ n, P13289103163414354145.a n = (A050441 n : ℚ)

end A050441

/-! ## A050441.P10351158846213427302

`∑[A153875(n)/3]`
-/

namespace A050441.P10351158846213427302
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153875 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050441.P10351158846213427302

namespace A050441

/-- `∑[A153875(n)/3]` -/
def P10351158846213427302.Spec : Prop :=
  ∀ n, P10351158846213427302.a n = (A050441 n : ℚ)

end A050441

/-! ## A050441.P9333119965740771720

`∑[A180223(n)-n]`
-/

namespace A050441.P9333119965740771720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180223 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050441.P9333119965740771720

namespace A050441

/-- `∑[A180223(n)-n]` -/
def P9333119965740771720.Spec : Prop :=
  ∀ n, P9333119965740771720.a n = A050441 n

end A050441

/-! ## A050441.P4554664779348291301

`∑[A226488(n)-n²]`
-/

namespace A050441.P4554664779348291301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226488 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050441.P4554664779348291301

namespace A050441

/-- `∑[A226488(n)-n²]` -/
def P4554664779348291301.Spec : Prop :=
  ∀ n, P4554664779348291301.a n = A050441 n

end A050441

/-! ## A050441.P2176819253996796632

`∑[n]+A004467(n)-n`
-/

namespace A050441.P2176819253996796632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A004467 n - (n : ℤ))

end

end A050441.P2176819253996796632

namespace A050441

/-- `∑[n]+A004467(n)-n` -/
def P2176819253996796632.Spec : Prop :=
  ∀ n, P2176819253996796632.a n = A050441 n

end A050441

/-! ## A050441.P10329261031902918129

`A215646(n)-(∑[n]+n)`
-/

namespace A050441.P10329261031902918129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215646 n - ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ)

end

end A050441.P10329261031902918129

namespace A050441

/-- `A215646(n)-(∑[n]+n)` -/
def P10329261031902918129.Spec : Prop :=
  ∀ n, P10329261031902918129.a n = A050441 n

end A050441

/-! ## A050441.P5117413349662641599

`A005581(n)+A004466(n)`
-/

namespace A050441.P5117413349662641599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 n + A004466 n

end

end A050441.P5117413349662641599

namespace A050441

/-- `A005581(n)+A004466(n)` -/
def P5117413349662641599.Spec : Prop :=
  ∀ n, P5117413349662641599.a n = A050441 n

end A050441

/-! ## A050441.P8998480405306292807

`A051925(n)+A004188(n)`
-/

namespace A050441.P8998480405306292807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051925 n + A004188 n

end

end A050441.P8998480405306292807

namespace A050441

/-- `A051925(n)+A004188(n)` -/
def P8998480405306292807.Spec : Prop :=
  ∀ n, P8998480405306292807.a n = A050441 n

end A050441

/-! ## A050441.P7539643842776835246

`A135503(n)+A007585(n)`
-/

namespace A050441.P7539643842776835246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 n + A007585 n

end

end A050441.P7539643842776835246

namespace A050441

/-- `A135503(n)+A007585(n)` -/
def P7539643842776835246.Spec : Prop :=
  ∀ n, P7539643842776835246.a n = A050441 n

end A050441

/-! ## A050441.P17038952865024082450

`A161680(n)+A004467(n)`
-/

namespace A050441.P17038952865024082450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n + A004467 n

end

end A050441.P17038952865024082450

namespace A050441

/-- `A161680(n)+A004467(n)` -/
def P17038952865024082450.Spec : Prop :=
  ∀ n, P17038952865024082450.a n = A050441 n

end A050441

/-! ## A050441.P16876094035456441982

`A242135(n)+A203551(n)`
-/

namespace A050441.P16876094035456441982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242135 n + A203551 n

end

end A050441.P16876094035456441982

namespace A050441

/-- `A242135(n)+A203551(n)` -/
def P16876094035456441982.Spec : Prop :=
  ∀ n, P16876094035456441982.a n = A050441 n

end A050441

/-! ## A050441.P830858899321700017

`A132112(n)-A045943(n)`
-/

namespace A050441.P830858899321700017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132112 n - A045943 n

end

end A050441.P830858899321700017

namespace A050441

/-- `A132112(n)-A045943(n)` -/
def P830858899321700017.Spec : Prop :=
  ∀ n, P830858899321700017.a n = A050441 n

end A050441

/-! ## A050441.P1402699484426458510

`A254407(n)-A028896(n)`
-/

namespace A050441.P1402699484426458510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254407 n - A028896 n

end

end A050441.P1402699484426458510

namespace A050441

/-- `A254407(n)-A028896(n)` -/
def P1402699484426458510.Spec : Prop :=
  ∀ n, P1402699484426458510.a n = A050441 n

end A050441

/-!
# A050442: Octahedral torus number: a(n) = n^2 + 2*(Sum_{k=1..n-1} k^2) - 2*(floor((n+1)/2)^2 + 2*(Sum_{k=1..floor((n+1)/2)-1} k^2)) + (1 - (-1)^n)/2.

The programs for A050442, the canonical program `A050442.P10955718170331267964` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050442 has offset 1).

The definition of A050442 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050442.P10955718170331267964

`ogf((4x+4x^2+12x^3+4x^4)/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A050442

/-- `ogf((4x+4x^2+12x^3+4x^4)/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))` -/
def P10955718170331267964.Spec : Prop :=
  ∀ n, P10955718170331267964.a n = A050442 (n + 1)

theorem P10955718170331267964.correct : P10955718170331267964.Spec := by
  intro n
  simp only [A050442, Nat.add_sub_cancel]

end A050442

/-! ## A050442.P1324178525131967845

`∑[n*(lcm(2, n+2)-2)]`
-/

namespace A050442.P1324178525131967845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((Nat.lcm 2 (n + 2) : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050442.P1324178525131967845

namespace A050442

/-- `∑[n*(lcm(2, n+2)-2)]` -/
def P1324178525131967845.Spec : Prop :=
  ∀ n, P1324178525131967845.a n = A050442 (n + 1)

end A050442

/-! ## A050442.P2480291061674908244

`∑[2*n*floor((n+1)/gcd(2, n))]`
-/

namespace A050442.P2480291061674908244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * ⌊(n + 1 : ℚ) / (Nat.gcd 2 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050442.P2480291061674908244

namespace A050442

/-- `∑[2*n*floor((n+1)/gcd(2, n))]` -/
def P2480291061674908244.Spec : Prop :=
  ∀ n, P2480291061674908244.a n = A050442 (n + 1)

end A050442

/-! ## A050442.P11202372312831781011

`∑[(gcd(n+2, ∑[n+1])-1)*2*n]`
-/

namespace A050442.P11202372312831781011
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd (n + 2) (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ) - 1) * (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050442.P11202372312831781011

namespace A050442

/-- `∑[(gcd(n+2, ∑[n+1])-1)*2*n]` -/
def P11202372312831781011.Spec : Prop :=
  ∀ n, P11202372312831781011.a n = A050442 (n + 1)

end A050442

/-! ## A050442.P4303192045062069592

`∑[a(n-2)+2]*∑[floor(a(n-2))]` with `a(0)=0, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A050442.P4303192045062069592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 2) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  f2 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A050442.P4303192045062069592

namespace A050442

/-- `∑[a(n-2)+2]*∑[floor(a(n-2))]` -/
def P4303192045062069592.Spec : Prop :=
  ∀ n, (P4303192045062069592.a n : ℤ) = A050442 (n + 1)

end A050442

/-! ## A050442.P7183033024712592645

`∑[4-a(n-1)]*∑[n-a(n-1)]` with `a(0)=0`
-/

namespace A050442.P7183033024712592645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  4 - f1 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  (n : ℤ) - f2 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A050442.P7183033024712592645

namespace A050442

/-- `∑[4-a(n-1)]*∑[n-a(n-1)]` -/
def P7183033024712592645.Spec : Prop :=
  ∀ n, P7183033024712592645.a n = A050442 (n + 1)

end A050442

/-! ## A050442.P14745459288743769863

`∑[n*A066104(n)]`
-/

namespace A050442.P14745459288743769863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A066104 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050442.P14745459288743769863

namespace A050442

/-- `∑[n*A066104(n)]` -/
def P14745459288743769863.Spec : Prop :=
  ∀ n, P14745459288743769863.a n = A050442 (n + 1)

end A050442

/-! ## A050442.P8108280571020012377

`∑[2*(A066830(n+1)-n)]`
-/

namespace A050442.P8108280571020012377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A066830 (n + 1) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050442.P8108280571020012377

namespace A050442

/-- `∑[2*(A066830(n+1)-n)]` -/
def P8108280571020012377.Spec : Prop :=
  ∀ n, P8108280571020012377.a n = A050442 (n + 1)

end A050442

/-! ## A050442.P1640510016383675314

`∑[lcm(2, A005563(n))-2*n]`
-/

namespace A050442.P1640510016383675314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A005563 n) : ℤ) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050442.P1640510016383675314

namespace A050442

/-- `∑[lcm(2, A005563(n))-2*n]` -/
def P1640510016383675314.Spec : Prop :=
  ∀ n, P1640510016383675314.a n = A050442 (n + 1)

end A050442

/-! ## A050442.P17457463906719943670

`(char[2*n+1]+n)*(A000982(n)+n)`
-/

namespace A050442.P17457463906719943670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0) + n : ℕ) : ℤ) * (A000982 n + (n : ℤ))

end

end A050442.P17457463906719943670

namespace A050442

/-- `(char[2*n+1]+n)*(A000982(n)+n)` -/
def P17457463906719943670.Spec : Prop :=
  ∀ n, P17457463906719943670.a n = A050442 (n + 1)

end A050442

/-! ## A050442.P2247240242972279720

`(2*A001057(n))²*A008619(n)`
-/

namespace A050442.P2247240242972279720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A001057 n) ^ 2 * A008619 n

end

end A050442.P2247240242972279720

namespace A050442

/-- `(2*A001057(n))²*A008619(n)` -/
def P2247240242972279720.Spec : Prop :=
  ∀ n, P2247240242972279720.a n = A050442 (n + 1)

end A050442

/-! ## A050442.P13130566660728387852

`(2*A110654(n))²*A008619(n)`
-/

namespace A050442.P13130566660728387852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A110654 n) ^ 2 * A008619 n

end

end A050442.P13130566660728387852

namespace A050442

/-- `(2*A110654(n))²*A008619(n)` -/
def P13130566660728387852.Spec : Prop :=
  ∀ n, P13130566660728387852.a n = A050442 (n + 1)

end A050442

/-! ## A050442.P15411236969707255420

`(2*A130472(n))²*A008619(n)`
-/

namespace A050442.P15411236969707255420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A130472 n) ^ 2 * A008619 n

end

end A050442.P15411236969707255420

namespace A050442

/-- `(2*A130472(n))²*A008619(n)` -/
def P15411236969707255420.Spec : Prop :=
  ∀ n, P15411236969707255420.a n = A050442 (n + 1)

end A050442

/-! ## A050442.P11553476367308469802

`∑[A026741(n)*A168273(n+1)]`
-/

namespace A050442.P11553476367308469802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n * A168273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050442.P11553476367308469802

namespace A050442

/-- `∑[A026741(n)*A168273(n+1)]` -/
def P11553476367308469802.Spec : Prop :=
  ∀ n, P11553476367308469802.a n = A050442 (n + 1)

end A050442

/-! ## A050442.P6454082043246190427

`(A000035(n)+n)²*A008619(n)`
-/

namespace A050442.P6454082043246190427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n + (n : ℤ)) ^ 2 * A008619 n

end

end A050442.P6454082043246190427

namespace A050442

/-- `(A000035(n)+n)²*A008619(n)` -/
def P6454082043246190427.Spec : Prop :=
  ∀ n, P6454082043246190427.a n = A050442 (n + 1)

end A050442

/-! ## A050442.P8904326281663024999

`(A014601(n)+n²)*A065033(n)`
-/

namespace A050442.P8904326281663024999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014601 n + (n ^ 2 : ℤ)) * A065033 n

end

end A050442.P8904326281663024999

namespace A050442

/-- `(A014601(n)+n²)*A065033(n)` -/
def P8904326281663024999.Spec : Prop :=
  ∀ n, P8904326281663024999.a n = A050442 (n + 1)

end A050442

/-! ## A050442.P367964352815219726

`(A014601(n)+n²)*A110654(n)`
-/

namespace A050442.P367964352815219726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014601 n + (n ^ 2 : ℤ)) * A110654 n

end

end A050442.P367964352815219726

namespace A050442

/-- `(A014601(n)+n²)*A110654(n)` -/
def P367964352815219726.Spec : Prop :=
  ∀ n, P367964352815219726.a n = A050442 (n + 1)

end A050442

/-! ## A050442.P9360396954242930901

`(A000982(n)+n)²/A008619(n)`
-/

namespace A050442.P9360396954242930901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000982 n + (n : ℤ)) ^ 2 : ℚ) / (A008619 n : ℚ)

end

end A050442.P9360396954242930901

namespace A050442

/-- `(A000982(n)+n)²/A008619(n)` -/
def P9360396954242930901.Spec : Prop :=
  ∀ n, P9360396954242930901.a n = (A050442 (n + 1) : ℚ)

end A050442

/-! ## A050442.P4141845713212061236

`(n-A014601(n))²*A008619(n)`
-/

namespace A050442.P4141845713212061236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A014601 n) ^ 2 * A008619 n

end

end A050442.P4141845713212061236

namespace A050442

/-- `(n-A014601(n))²*A008619(n)` -/
def P4141845713212061236.Spec : Prop :=
  ∀ n, P4141845713212061236.a n = A050442 (n + 1)

end A050442

/-! ## A050442.P16577771542500629563

`∑[A010673(n)]²*∑[A059841(n)]`
-/

namespace A050442.P16577771542500629563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A050442.P16577771542500629563

namespace A050442

/-- `∑[A010673(n)]²*∑[A059841(n)]` -/
def P16577771542500629563.Spec : Prop :=
  ∀ n, P16577771542500629563.a n = A050442 (n + 1)

end A050442

/-!
# A050443: a(0)=4, a(1)=0, a(2)=0, a(3)=3; thereafter a(n) = a(n-3) + a(n-4).

The programs for A050443, the canonical program `A050443.P12072244968284701102` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050443 has offset 0).

The definition of A050443 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-3)+a(n-4)` (program `A050443.P12072244968284701102`, by `A050443.P12072244968284701102.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A050443.P12072244968284701102

`a(n-3)+a(n-4)` with `a(0)=4, a(1)=0, a(2)=0, a(3)=3`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A050443

/-- `a(n-3)+a(n-4)` -/
def P12072244968284701102.Spec : Prop :=
  ∀ n, (P12072244968284701102.a n : ℤ) = A050443 n

theorem P12072244968284701102.correct : P12072244968284701102.Spec := by
  intro n
  simp only [A050443]

end A050443

/-! ## A050443.P12427769773518844197

`ogf((4-x^3)/(1-x^3-x^4))`
-/

namespace A050443.P12427769773518844197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 0, 0, -1] [1, 0, 0, -1, -1] n

end

end A050443.P12427769773518844197

namespace A050443

/-- `ogf((4-x^3)/(1-x^3-x^4))` -/
def P12427769773518844197.Spec : Prop :=
  ∀ n, P12427769773518844197.a n = A050443 n

end A050443

/-! ## A050443.P12929891632680800898

`a(n-1)-(a(n-5)-a(n-3))` with `a(0)=4, a(1)=0, a(2)=0, a(3)=3, a(4)=4`
-/

namespace A050443.P12929891632680800898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 0, 0, 3, 4] fun n a =>
  a (n - 1) - (a (n - 5) - a (n - 3))

end

end A050443.P12929891632680800898

namespace A050443

/-- `a(n-1)-(a(n-5)-a(n-3))` -/
def P12929891632680800898.Spec : Prop :=
  ∀ n, P12929891632680800898.a n = A050443 n

end A050443

/-! ## A050443.P14861118476746095638

`Δ[A079398(n)]+3*A017817(n)`
-/

namespace A050443.P14861118476746095638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079398 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 3 * A017817 n

end

end A050443.P14861118476746095638

namespace A050443

/-- `Δ[A079398(n)]+3*A017817(n)` -/
def P14861118476746095638.Spec : Prop :=
  ∀ n, P14861118476746095638.a n = A050443 n

end A050443

/-! ## A050443.P16224427090846871835

`A127838(n+1)+3*A017817(n)`
-/

namespace A050443.P16224427090846871835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127838 (n + 1) + 3 * A017817 n

end

end A050443.P16224427090846871835

namespace A050443

/-- `A127838(n+1)+3*A017817(n)` -/
def P16224427090846871835.Spec : Prop :=
  ∀ n, P16224427090846871835.a n = A050443 n

end A050443

/-! ## A050443.P8171686083750825837

`4*A127838(n+5)-A127838(n+2)`
-/

namespace A050443.P8171686083750825837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A127838 (n + 5) - A127838 (n + 2)

end

end A050443.P8171686083750825837

namespace A050443

/-- `4*A127838(n+5)-A127838(n+2)` -/
def P8171686083750825837.Spec : Prop :=
  ∀ n, P8171686083750825837.a n = A050443 n

end A050443

/-! ## A050443.P6684490658681320444

`A306646(∑[n+3])`
-/

namespace A050443.P6684490658681320444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306646 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A050443.P6684490658681320444

namespace A050443

/-- `A306646(∑[n+3])` -/
def P6684490658681320444.Spec : Prop :=
  ∀ n, P6684490658681320444.a n = A050443 n

end A050443

/-!
# A050446: Table read by ascending antidiagonals: T(n, m) giving total degree of n-th-order elementary symmetric polynomials in m variables.

The programs for A050446, there is no canonical definition to state claims against.
-/

/-! ## A050446.P4713324861691792957

`A050447(A061579(n))`
-/

namespace A050446.P4713324861691792957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A061579 n).toNat

end

end A050446.P4713324861691792957

/-! ## A050446.P15069361003171678809

`A050447(A114327(n)+n)`
-/

namespace A050446.P15069361003171678809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A114327 n + (n : ℤ)).toNat

end

end A050446.P15069361003171678809

/-! ## A050446.P60950177749450778

`A050447(A038722(n+1)-1)`
-/

namespace A050446.P60950177749450778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A038722 (n + 1) - 1).toNat

end

end A050446.P60950177749450778

/-! ## A050446.P17625899525397265992

`A050447(A093995(n+1)-(n+1))`
-/

namespace A050446.P17625899525397265992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A050446.P17625899525397265992

/-! ## A050446.P12471386980955580322

`A050447(A002024(n+1)²-(n+1))`
-/

namespace A050446.P12471386980955580322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A050446.P12471386980955580322

/-! ## A050446.P12668234265322711815

`A050447(A002378(n)%A014132(n+1))`
-/

namespace A050446.P12668234265322711815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (Int.tmod (A002378 n) (A014132 (n + 1))).toNat

end

end A050446.P12668234265322711815

/-! ## A050446.P13156629031557681966

`A050447(A038722(n+2))`
-/

namespace A050446.P13156629031557681966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A038722 (n + 2)).toNat

end

end A050446.P13156629031557681966

/-! ## A050446.P14639155510823606041

`A373424(A380649(n+1))`
-/

namespace A050446.P14639155510823606041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373424 (A380649 (n + 1)).toNat

end

end A050446.P14639155510823606041

/-!
# A050447: Array read by upward antidiagonals. A(n, k) = A(n, k-1) + Sum_{j=0..floor((n-1)/2)} A(2*j, k-1) * A(n-1-2*j, k) for n, k > 0, otherwise 1 for n = 0 or k = 0.

The programs for A050447, there is no canonical definition to state claims against.
-/

/-! ## A050447.P17072777682339741796

`A050446(A002378(n)%A080036(n))`
-/

namespace A050447.P17072777682339741796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050446 (Int.tmod (A002378 n) (A080036 n)).toNat

end

end A050447.P17072777682339741796

/-! ## A050447.P14437409167037756769

`A050446(gcd(A010816(n), A061579(n)))`
-/

namespace A050447.P14437409167037756769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050446 (Int.gcd (A010816 n) (A061579 n))

end

end A050447.P14437409167037756769

/-! ## A050447.P12525458497597526385

`A050446(A061579(n))`
-/

namespace A050447.P12525458497597526385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050446 (A061579 n).toNat

end

end A050447.P12525458497597526385

/-! ## A050447.P15382585934445125483

`A050446(A114327(n)+n)`
-/

namespace A050447.P15382585934445125483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050446 (A114327 n + (n : ℤ)).toNat

end

end A050447.P15382585934445125483

/-! ## A050447.P4895209980467004953

`A050446(A038722(n+1)-1)`
-/

namespace A050447.P4895209980467004953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050446 (A038722 (n + 1) - 1).toNat

end

end A050447.P4895209980467004953

/-! ## A050447.P5224340469464929137

`A050446(A002024(n+1)²-(n+1))`
-/

namespace A050447.P5224340469464929137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050446 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A050447.P5224340469464929137

/-! ## A050447.P9624532600594882067

`A050446(A057428(n)+A038722(n+1))`
-/

namespace A050447.P9624532600594882067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050446 (A057428 n + A038722 (n + 1)).toNat

end

end A050447.P9624532600594882067

/-! ## A050447.P6201360924993722759

`A050446(A038722(n+2))`
-/

namespace A050447.P6201360924993722759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050446 (A038722 (n + 2)).toNat

end

end A050447.P6201360924993722759

/-! ## A050447.P3320422066271817201

`A373424(A007401(n+1))`
-/

namespace A050447.P3320422066271817201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373424 (A007401 (n + 1)).toNat

end

end A050447.P3320422066271817201

/-!
# A050448: a(n) = Sum_{d|n, d==1 (mod 4)} d^4.

The programs for A050448, the canonical program `A050448.P12990945603469115476` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050448 has offset 1).

The definition of A050448 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050448.P16890428792425698581

`A050456(n+1)+A050455(n+1)`
-/

namespace A050448.P16890428792425698581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050456 (n + 1) + A050455 (n + 1)

end

end A050448.P16890428792425698581

namespace A050448

/-- `A050456(n+1)+A050455(n+1)` -/
def P16890428792425698581.Spec : Prop :=
  ∀ n, P16890428792425698581.a n = A050448 (n + 1)

theorem P16890428792425698581.correct : P16890428792425698581.Spec := by
  intro n
  simp only [A050448, Nat.add_sub_cancel, A050448.P16890428792425698581.a, A050448.P12990945603469115476.a, A050455, A050455.P12046715105957438179.f1, A050455.P12046715105957438179.a, A050456, A050456.P2703078225834932298.a, A051001, A051001.P2883852462470465960.a, A000265, A000265.P16482698636471710744.a, A001159, A001159.P9898895530264138649.f1, A001159.P9898895530264138649.a, A062828, A062828.P6719252676437091402.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A050448

/-! ## A050448.P12990945603469115476

`A051001(n+1)-A050455(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A050448

/-- `A051001(n+1)-A050455(n+1)` -/
def P12990945603469115476.Spec : Prop :=
  ∀ n, P12990945603469115476.a n = A050448 (n + 1)

theorem P12990945603469115476.correct : P12990945603469115476.Spec := by
  intro n
  simp only [A050448, Nat.add_sub_cancel]

end A050448

/-! ## A050448.P5603853534331295449

`(A051001(n+1)+A050456(n+1))/2`
-/

namespace A050448.P5603853534331295449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051001 (n + 1) + A050456 (n + 1) : ℚ) / 2

end

end A050448.P5603853534331295449

namespace A050448

/-- `(A051001(n+1)+A050456(n+1))/2` -/
def P5603853534331295449.Spec : Prop :=
  ∀ n, P5603853534331295449.a n = (A050448 (n + 1) : ℚ)

theorem P5603853534331295449.correct : P5603853534331295449.Spec := by
  intro n
  simp only [A050448, Nat.add_sub_cancel, A050448.P5603853534331295449.a, A050448.P12990945603469115476.a, A050455, A050455.P12046715105957438179.f1, A050455.P12046715105957438179.a, A050456, A050456.P2703078225834932298.a, A051001, A051001.P2883852462470465960.a, A000265, A000265.P16482698636471710744.a, A001159, A001159.P9898895530264138649.f1, A001159.P9898895530264138649.a, A062828, A062828.P6719252676437091402.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A050448

/-! ## A050448.P11470347139650047042

`A001159(A000265(n+1))-A050455(n+1)`
-/

namespace A050448.P11470347139650047042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001159 (A000265 (n + 1)).toNat - A050455 (n + 1)

end

end A050448.P11470347139650047042

namespace A050448

/-- `A001159(A000265(n+1))-A050455(n+1)` -/
def P11470347139650047042.Spec : Prop :=
  ∀ n, P11470347139650047042.a n = A050448 (n + 1)

end A050448

/-! ## A050448.P18107193007028822793

`∑{d}[n+1, (#%(#*A176563(#)))²²]`
-/

namespace A050448.P18107193007028822793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Int.tmod (d : ℤ) ((d : ℤ) * A176563 d) ^ 2) ^ 2

end

end A050448.P18107193007028822793

namespace A050448

/-- `∑{d}[n+1, (#%(#*A176563(#)))²²]` -/
def P18107193007028822793.Spec : Prop :=
  ∀ n, P18107193007028822793.a n = A050448 (n + 1)

end A050448

/-! ## A050448.P6856054144951794139

`∑{d}[n+1, (#*A318657(A079524(#)))²²]`
-/

namespace A050448.P6856054144951794139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (((d : ℤ) * A318657 (A079524 d).toNat) ^ 2) ^ 2

end

end A050448.P6856054144951794139

namespace A050448

/-- `∑{d}[n+1, (#*A318657(A079524(#)))²²]` -/
def P6856054144951794139.Spec : Prop :=
  ∀ n, P6856054144951794139.a n = A050448 (n + 1)

end A050448

/-!
# A050449: a(n) = Sum_{d|n, d == 1 (mod 4)} d.

The programs for A050449, the canonical program `A050449.P3812122387069373176` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050449 has offset 1).

The definition of A050449 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050449.P10969304698936903848

`A000593(n+1)-A050452(n+1)`
-/

namespace A050449.P10969304698936903848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) - A050452 (n + 1)

end

end A050449.P10969304698936903848

namespace A050449

/-- `A000593(n+1)-A050452(n+1)` -/
def P10969304698936903848.Spec : Prop :=
  ∀ n, P10969304698936903848.a n = A050449 (n + 1)

theorem P10969304698936903848.correct : P10969304698936903848.Spec := by
  intro n
  simp only [A050449, Nat.add_sub_cancel, A050449.P10969304698936903848.a, A050449.P3812122387069373176.f1, A050449.P3812122387069373176.a, A000593, A000593.P10331878810394225172.f1, A000593.P10331878810394225172.a, A050452, A050452.P8848155708238405563.a, A082052, A082052.P17956952017327585217.f1, A082052.P17956952017327585217.a, A166486, A166486.P13501783531280266850.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A050449

/-! ## A050449.P9311396534842712945

`1-A326049(n+1)+n`
-/

namespace A050449.P9311396534842712945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A326049 (n + 1) + (n : ℤ)

end

end A050449.P9311396534842712945

namespace A050449

/-- `1-A326049(n+1)+n` -/
def P9311396534842712945.Spec : Prop :=
  ∀ n, P9311396534842712945.a n = A050449 (n + 1)

theorem P9311396534842712945.correct : P9311396534842712945.Spec := by
  intro n
  simp only [A050449, Nat.add_sub_cancel, A050449.P9311396534842712945.a, A050449.P3812122387069373176.f1, A050449.P3812122387069373176.a, A082052, A082052.P17956952017327585217.f1, A082052.P17956952017327585217.a, A326049, A326049.P12761554379503345949.a, A033879, A033879.P5965131822542929609.a, A166486, A166486.P13501783531280266850.a, A326050, A326050.P4515014402688933711.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A050449

/-! ## A050449.P3812122387069373176

`∑{d}[n+1, #]-A082052(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A050449

/-- `∑{d}[n+1, #]-A082052(n+1)` -/
def P3812122387069373176.Spec : Prop :=
  ∀ n, P3812122387069373176.a n = A050449 (n + 1)

theorem P3812122387069373176.correct : P3812122387069373176.Spec := by
  intro n
  simp only [A050449, Nat.add_sub_cancel]

end A050449

/-! ## A050449.P3072773039947563371

`∑{d}[n+1, #*A121262(#-1)]`
-/

namespace A050449.P3072773039947563371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A121262 (d - 1)

end

end A050449.P3072773039947563371

namespace A050449

/-- `∑{d}[n+1, #*A121262(#-1)]` -/
def P3072773039947563371.Spec : Prop :=
  ∀ n, P3072773039947563371.a n = A050449 (n + 1)

end A050449

/-! ## A050449.P12649684010550688828

`A082053(A000265(n+1))`
-/

namespace A050449.P12649684010550688828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082053 (A000265 (n + 1)).toNat

end

end A050449.P12649684010550688828

namespace A050449

/-- `A082053(A000265(n+1))` -/
def P12649684010550688828.Spec : Prop :=
  ∀ n, P12649684010550688828.a n = A050449 (n + 1)

end A050449

/-! ## A050449.P13693949532654574999

`A363316(A003602(n+1))`
-/

namespace A050449.P13693949532654574999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363316 (A003602 (n + 1)).toNat

end

end A050449.P13693949532654574999

namespace A050449

/-- `A363316(A003602(n+1))` -/
def P13693949532654574999.Spec : Prop :=
  ∀ n, P13693949532654574999.a n = A050449 (n + 1)

end A050449

/-! ## A050449.P12819652501936435036

`A050457(n+1)+A050452(n+1)`
-/

namespace A050449.P12819652501936435036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050457 (n + 1) + A050452 (n + 1)

end

end A050449.P12819652501936435036

namespace A050449

/-- `A050457(n+1)+A050452(n+1)` -/
def P12819652501936435036.Spec : Prop :=
  ∀ n, P12819652501936435036.a n = A050449 (n + 1)

end A050449

/-! ## A050449.P4953075968818987399

`A000203(n+1)-A082052(n+1)`
-/

namespace A050449.P4953075968818987399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A082052 (n + 1)

end

end A050449.P4953075968818987399

namespace A050449

/-- `A000203(n+1)-A082052(n+1)` -/
def P4953075968818987399.Spec : Prop :=
  ∀ n, P4953075968818987399.a n = A050449 (n + 1)

end A050449

/-! ## A050449.P1796586026159906694

`A082053(n+1)-A146076(n+1)`
-/

namespace A050449.P1796586026159906694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082053 (n + 1) - A146076 (n + 1)

end

end A050449.P1796586026159906694

namespace A050449

/-- `A082053(n+1)-A146076(n+1)` -/
def P1796586026159906694.Spec : Prop :=
  ∀ n, P1796586026159906694.a n = A050449 (n + 1)

end A050449

/-! ## A050449.P11057644919322897140

`A001065(n+1)-A326050(n+1)`
-/

namespace A050449.P11057644919322897140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A326050 (n + 1)

end

end A050449.P11057644919322897140

namespace A050449

/-- `A001065(n+1)-A326050(n+1)` -/
def P11057644919322897140.Spec : Prop :=
  ∀ n, P11057644919322897140.a n = A050449 (n + 1)

theorem P11057644919322897140.correct : P11057644919322897140.Spec := by
  intro n
  simp only [A050449, Nat.add_sub_cancel, A050449.P11057644919322897140.a, A050449.P3812122387069373176.f1, A050449.P3812122387069373176.a, A001065, A001065.P4097147489331274860.a, A082052, A082052.P17956952017327585217.f1, A082052.P17956952017327585217.a, A326050, A326050.P4515014402688933711.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A166486, A166486.P13501783531280266850.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A050449

/-! ## A050449.P2769382147264423214

`A001065(n+1)+1+n-A082052(n+1)`
-/

namespace A050449.P2769382147264423214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + 1 + (n : ℤ) - A082052 (n + 1)

end

end A050449.P2769382147264423214

namespace A050449

/-- `A001065(n+1)+1+n-A082052(n+1)` -/
def P2769382147264423214.Spec : Prop :=
  ∀ n, P2769382147264423214.a n = A050449 (n + 1)

theorem P2769382147264423214.correct : P2769382147264423214.Spec := by
  intro n
  simp only [A050449, Nat.add_sub_cancel, A050449.P2769382147264423214.a, A050449.P3812122387069373176.f1, A050449.P3812122387069373176.a, A001065, A001065.P4097147489331274860.a, A082052, A082052.P17956952017327585217.f1, A082052.P17956952017327585217.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A166486, A166486.P13501783531280266850.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A050449

/-! ## A050449.P9812887475508224935

`A155085(n+1)-(n+1)-A082052(n+1)`
-/

namespace A050449.P9812887475508224935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - (n + 1 : ℤ) - A082052 (n + 1)

end

end A050449.P9812887475508224935

namespace A050449

/-- `A155085(n+1)-(n+1)-A082052(n+1)` -/
def P9812887475508224935.Spec : Prop :=
  ∀ n, P9812887475508224935.a n = A050449 (n + 1)

theorem P9812887475508224935.correct : P9812887475508224935.Spec := by
  intro n
  simp only [A050449, Nat.add_sub_cancel, A050449.P9812887475508224935.a, A050449.P3812122387069373176.f1, A050449.P3812122387069373176.a, A082052, A082052.P17956952017327585217.f1, A082052.P17956952017327585217.a, A155085, A155085.P2440965829929837208.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A166486, A166486.P13501783531280266850.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A050449

/-! ## A050449.P15684980920327026957

`A064987(n+1)/(n+1)-A082052(n+1)`
-/

namespace A050449.P15684980920327026957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) : ℚ) / (n + 1 : ℚ) - (A082052 (n + 1) : ℚ)

end

end A050449.P15684980920327026957

namespace A050449

/-- `A064987(n+1)/(n+1)-A082052(n+1)` -/
def P15684980920327026957.Spec : Prop :=
  ∀ n, P15684980920327026957.a n = (A050449 (n + 1) : ℚ)

end A050449

/-! ## A050449.P7505983298145773897

`2*(n+1)-A033879(n+1)-A082052(n+1)`
-/

namespace A050449.P7505983298145773897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A033879 (n + 1) - A082052 (n + 1)

end

end A050449.P7505983298145773897

namespace A050449

/-- `2*(n+1)-A033879(n+1)-A082052(n+1)` -/
def P7505983298145773897.Spec : Prop :=
  ∀ n, P7505983298145773897.a n = A050449 (n + 1)

theorem P7505983298145773897.correct : P7505983298145773897.Spec := by
  intro n
  simp only [A050449, Nat.add_sub_cancel, A050449.P7505983298145773897.a, A050449.P3812122387069373176.f1, A050449.P3812122387069373176.a, A033879, A033879.P5965131822542929609.a, A082052, A082052.P17956952017327585217.f1, A082052.P17956952017327585217.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A166486, A166486.P13501783531280266850.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A050449

/-! ## A050449.P1220710951138372681

`A000593(n+1)+A082053(n+1)-A000203(n+1)`
-/

namespace A050449.P1220710951138372681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) + (A082053 (n + 1) - A000203 (n + 1))

end

end A050449.P1220710951138372681

namespace A050449

/-- `A000593(n+1)+A082053(n+1)-A000203(n+1)` -/
def P1220710951138372681.Spec : Prop :=
  ∀ n, P1220710951138372681.a n = A050449 (n + 1)

end A050449

/-! ## A050449.P3739019629950395398

`A050452(n+1)+A082053(n+1)-A082052(n+1)`
-/

namespace A050449.P3739019629950395398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050452 (n + 1) + (A082053 (n + 1) - A082052 (n + 1))

end

end A050449.P3739019629950395398

namespace A050449

/-- `A050452(n+1)+A082053(n+1)-A082052(n+1)` -/
def P3739019629950395398.Spec : Prop :=
  ∀ n, P3739019629950395398.a n = A050449 (n + 1)

end A050449

/-! ## A050449.P18252365375042472315

`A000593(n+1)+A146076(n+1)-A082052(n+1)`
-/

namespace A050449.P18252365375042472315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) + (A146076 (n + 1) - A082052 (n + 1))

end

end A050449.P18252365375042472315

namespace A050449

/-- `A000593(n+1)+A146076(n+1)-A082052(n+1)` -/
def P18252365375042472315.Spec : Prop :=
  ∀ n, P18252365375042472315.a n = A050449 (n + 1)

theorem P18252365375042472315.correct : P18252365375042472315.Spec := by
  intro n
  simp only [A050449, Nat.add_sub_cancel, A050449.P18252365375042472315.a, A050449.P3812122387069373176.f1, A050449.P3812122387069373176.a, A000593, A000593.P10331878810394225172.f1, A000593.P10331878810394225172.a, A082052, A082052.P17956952017327585217.f1, A082052.P17956952017327585217.a, A146076, A146076.P5513778411624192836.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A166486, A166486.P13501783531280266850.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A050449

/-! ## A050449.P5139140452118359407

`A078181(n+1)+A082050(n+1)-A082052(n+1)`
-/

namespace A050449.P5139140452118359407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078181 (n + 1) + (A082050 (n + 1) - A082052 (n + 1))

end

end A050449.P5139140452118359407

namespace A050449

/-- `A078181(n+1)+A082050(n+1)-A082052(n+1)` -/
def P5139140452118359407.Spec : Prop :=
  ∀ n, P5139140452118359407.a n = A050449 (n + 1)

end A050449

/-! ## A050449.P15193382002313022928

`A078182(n+1)+A082051(n+1)-A082052(n+1)`
-/

namespace A050449.P15193382002313022928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078182 (n + 1) + (A082051 (n + 1) - A082052 (n + 1))

end

end A050449.P15193382002313022928

namespace A050449

/-- `A078182(n+1)+A082051(n+1)-A082052(n+1)` -/
def P15193382002313022928.Spec : Prop :=
  ∀ n, P15193382002313022928.a n = A050449 (n + 1)

end A050449

/-! ## A050449.P8006445194378651374

`A048250(n+1)+A162296(n+1)-A082052(n+1)`
-/

namespace A050449.P8006445194378651374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) + (A162296 (n + 1) - A082052 (n + 1))

end

end A050449.P8006445194378651374

namespace A050449

/-- `A048250(n+1)+A162296(n+1)-A082052(n+1)` -/
def P8006445194378651374.Spec : Prop :=
  ∀ n, P8006445194378651374.a n = A050449 (n + 1)

theorem P8006445194378651374.correct : P8006445194378651374.Spec := by
  intro n
  simp only [A050449, Nat.add_sub_cancel, A050449.P8006445194378651374.a, A050449.P3812122387069373176.f1, A050449.P3812122387069373176.a, A048250, A048250.P17960441032552816313.f1, A048250.P17960441032552816313.a, A082052, A082052.P17956952017327585217.f1, A082052.P17956952017327585217.a, A162296, A162296.P7435316520163346199.f1, A162296.P7435316520163346199.f2, A162296.P7435316520163346199.a, A166486, A166486.P13501783531280266850.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A050449

/-!
# A050450: a(n) = Sum_{d|n, d=1 mod 4} d^2.

The programs for A050450, the canonical program `A050450.P4021675749699126775` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050450 has offset 1).

The definition of A050450 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050450.P5747110049673145440

`A050453(n+1)+A002173(n+1)`
-/

namespace A050450.P5747110049673145440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050453 (n + 1) + A002173 (n + 1)

end

end A050450.P5747110049673145440

namespace A050450

/-- `A050453(n+1)+A002173(n+1)` -/
def P5747110049673145440.Spec : Prop :=
  ∀ n, P5747110049673145440.a n = A050450 (n + 1)

theorem P5747110049673145440.correct : P5747110049673145440.Spec := by
  intro n
  simp only [A050450, Nat.add_sub_cancel, A050450.P5747110049673145440.a, A050450.P4021675749699126775.a, A002173, A002173.P7206352416500240550.a, A050453, A050453.P6605765519543064582.f1, A050453.P6605765519543064582.a, A050999, A050999.P18306880422002560695.a, A001157, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, A062828, A062828.P6719252676437091402.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A050450

/-! ## A050450.P4021675749699126775

`A050999(n+1)-A050453(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A050450

/-- `A050999(n+1)-A050453(n+1)` -/
def P4021675749699126775.Spec : Prop :=
  ∀ n, P4021675749699126775.a n = A050450 (n + 1)

theorem P4021675749699126775.correct : P4021675749699126775.Spec := by
  intro n
  simp only [A050450, Nat.add_sub_cancel]

end A050450

/-! ## A050450.P30432037067807055

`A001157(A000265(n+1))-A050453(n+1)`
-/

namespace A050450.P30432037067807055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (A000265 (n + 1)).toNat - A050453 (n + 1)

end

end A050450.P30432037067807055

namespace A050450

/-- `A001157(A000265(n+1))-A050453(n+1)` -/
def P30432037067807055.Spec : Prop :=
  ∀ n, P30432037067807055.a n = A050450 (n + 1)

end A050450

/-! ## A050450.P68214591880473496

`A099978(A003602(n+1))-A050453(n+1)`
-/

namespace A050450.P68214591880473496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099978 (A003602 (n + 1)).toNat - A050453 (n + 1)

end

end A050450.P68214591880473496

namespace A050450

/-- `A099978(A003602(n+1))-A050453(n+1)` -/
def P68214591880473496.Spec : Prop :=
  ∀ n, P68214591880473496.a n = A050450 (n + 1)

end A050450

/-! ## A050450.P14811678230703520650

`∑{d}[n+1, (#%(#*A176563(#)))²]`
-/

namespace A050450.P14811678230703520650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (d : ℤ) ((d : ℤ) * A176563 d) ^ 2

end

end A050450.P14811678230703520650

namespace A050450

/-- `∑{d}[n+1, (#%(#*A176563(#)))²]` -/
def P14811678230703520650.Spec : Prop :=
  ∀ n, P14811678230703520650.a n = A050450 (n + 1)

end A050450

/-! ## A050450.P9065836649846744567

`A050453(n+1)-A138505(2*(n+1))`
-/

namespace A050450.P9065836649846744567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050453 (n + 1) - A138505 (2 * (n + 1))

end

end A050450.P9065836649846744567

namespace A050450

/-- `A050453(n+1)-A138505(2*(n+1))` -/
def P9065836649846744567.Spec : Prop :=
  ∀ n, P9065836649846744567.a n = A050450 (n + 1)

end A050450

/-! ## A050450.P18363186749491191710

`∑{d}[n+1, (#*A318657(A079524(#)))²]`
-/

namespace A050450.P18363186749491191710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) * A318657 (A079524 d).toNat) ^ 2

end

end A050450.P18363186749491191710

namespace A050450

/-- `∑{d}[n+1, (#*A318657(A079524(#)))²]` -/
def P18363186749491191710.Spec : Prop :=
  ∀ n, P18363186749491191710.a n = A050450 (n + 1)

end A050450

/-!
# A050451: a(n) = Sum_{d|n, d=1 mod 4} d^3.

The programs for A050451, the canonical program `A050451.P9220370011251437069` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050451 has offset 1).

The definition of A050451 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050451.P17369970005358311890

`A050459(n+1)+A050454(n+1)`
-/

namespace A050451.P17369970005358311890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050459 (n + 1) + A050454 (n + 1)

end

end A050451.P17369970005358311890

namespace A050451

/-- `A050459(n+1)+A050454(n+1)` -/
def P17369970005358311890.Spec : Prop :=
  ∀ n, P17369970005358311890.a n = A050451 (n + 1)

theorem P17369970005358311890.correct : P17369970005358311890.Spec := by
  intro n
  simp only [A050451, Nat.add_sub_cancel, A050451.P17369970005358311890.a, A050451.P9220370011251437069.a, A050454, A050454.P6949249148858722665.f1, A050454.P6949249148858722665.a, A050459, A050459.P9123758851676713191.a, A051000, A051000.P10741678327637826520.f1, A051000.P10741678327637826520.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000578, A000578.P12162961755414704816.a, A006519, A006519.P10435570611646570274.a, A062828, A062828.P6719252676437091402.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A050451

/-! ## A050451.P9220370011251437069

`A051000(n+1)-A050454(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A050451

/-- `A051000(n+1)-A050454(n+1)` -/
def P9220370011251437069.Spec : Prop :=
  ∀ n, P9220370011251437069.a n = A050451 (n + 1)

theorem P9220370011251437069.correct : P9220370011251437069.Spec := by
  intro n
  simp only [A050451, Nat.add_sub_cancel]

end A050451

/-! ## A050451.P12264811499873315847

`A045823(A025480(n))-A050454(n+1)`
-/

namespace A050451.P12264811499873315847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045823 (A025480 n).toNat - A050454 (n + 1)

end

end A050451.P12264811499873315847

namespace A050451

/-- `A045823(A025480(n))-A050454(n+1)` -/
def P12264811499873315847.Spec : Prop :=
  ∀ n, P12264811499873315847.a n = A050451 (n + 1)

end A050451

/-! ## A050451.P1828003882874147476

`A001158(A000265(n+1))-A050454(n+1)`
-/

namespace A050451.P1828003882874147476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (A000265 (n + 1)).toNat - A050454 (n + 1)

end

end A050451.P1828003882874147476

namespace A050451

/-- `A001158(A000265(n+1))-A050454(n+1)` -/
def P1828003882874147476.Spec : Prop :=
  ∀ n, P1828003882874147476.a n = A050451 (n + 1)

end A050451

/-! ## A050451.P13934973255266178138

`gcd(A001158(n+1), A078307(n+1))-A050454(n+1)`
-/

namespace A050451.P13934973255266178138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A001158 (n + 1)) (A078307 (n + 1)) : ℤ) - A050454 (n + 1)

end

end A050451.P13934973255266178138

namespace A050451

/-- `gcd(A001158(n+1), A078307(n+1))-A050454(n+1)` -/
def P13934973255266178138.Spec : Prop :=
  ∀ n, P13934973255266178138.a n = A050451 (n + 1)

end A050451

/-!
# A050452: a(n) = Sum_{d|n, d == 3 (mod 4)} d.

The programs for A050452, the canonical program `A050452.P8848155708238405563` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050452 has offset 1).

The definition of A050452 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050449, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A050452.P8848155708238405563

`A000593(n+1)-A050449(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A050452

/-- `A000593(n+1)-A050449(n+1)` -/
def P8848155708238405563.Spec : Prop :=
  ∀ n, P8848155708238405563.a n = A050452 (n + 1)

theorem P8848155708238405563.correct : P8848155708238405563.Spec := by
  intro n
  simp only [A050452, Nat.add_sub_cancel]

end A050452

/-! ## A050452.P431350729310515593

`1-A326052(n+1)+n`
-/

namespace A050452.P431350729310515593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A326052 (n + 1) + (n : ℤ)

end

end A050452.P431350729310515593

namespace A050452

/-- `1-A326052(n+1)+n` -/
def P431350729310515593.Spec : Prop :=
  ∀ n, P431350729310515593.a n = A050452 (n + 1)

theorem P431350729310515593.correct : P431350729310515593.Spec := by
  intro n
  simp only [A050452, Nat.add_sub_cancel, A050452.P431350729310515593.a, A050452.P8848155708238405563.a, A000593, A000593.P10331878810394225172.f1, A000593.P10331878810394225172.a, A050449, A050449.P3812122387069373176.f1, A050449.P3812122387069373176.a, A326052, A326052.P4438226606935639787.a, A082052, A082052.P17956952017327585217.f1, A082052.P17956952017327585217.a, A166486, A166486.P13501783531280266850.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A050452

/-! ## A050452.P354467540948744888

`A082052(A000265(n+1))`
-/

namespace A050452.P354467540948744888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082052 (A000265 (n + 1)).toNat

end

end A050452.P354467540948744888

namespace A050452

/-- `A082052(A000265(n+1))` -/
def P354467540948744888.Spec : Prop :=
  ∀ n, P354467540948744888.a n = A050452 (n + 1)

end A050452

/-! ## A050452.P5835149952560057934

`A082052(A153733(n)+1)`
-/

namespace A050452.P5835149952560057934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082052 (A153733 n + 1).toNat

end

end A050452.P5835149952560057934

namespace A050452

/-- `A082052(A153733(n)+1)` -/
def P5835149952560057934.Spec : Prop :=
  ∀ n, P5835149952560057934.a n = A050452 (n + 1)

end A050452

/-! ## A050452.P4352288066360763642

`A363392(A003602(n+1))`
-/

namespace A050452.P4352288066360763642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363392 (A003602 (n + 1)).toNat

end

end A050452.P4352288066360763642

namespace A050452

/-- `A363392(A003602(n+1))` -/
def P4352288066360763642.Spec : Prop :=
  ∀ n, P4352288066360763642.a n = A050452 (n + 1)

end A050452

/-! ## A050452.P16824150116323142071

`A000203(n+1)-A082053(n+1)`
-/

namespace A050452.P16824150116323142071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A082053 (n + 1)

end

end A050452.P16824150116323142071

namespace A050452

/-- `A000203(n+1)-A082053(n+1)` -/
def P16824150116323142071.Spec : Prop :=
  ∀ n, P16824150116323142071.a n = A050452 (n + 1)

end A050452

/-! ## A050452.P1476272174035108533

`A050449(n+1)-A050457(n+1)`
-/

namespace A050452.P1476272174035108533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050449 (n + 1) - A050457 (n + 1)

end

end A050452.P1476272174035108533

namespace A050452

/-- `A050449(n+1)-A050457(n+1)` -/
def P1476272174035108533.Spec : Prop :=
  ∀ n, P1476272174035108533.a n = A050452 (n + 1)

end A050452

/-! ## A050452.P14752310275434316038

`A082052(n+1)-A146076(n+1)`
-/

namespace A050452.P14752310275434316038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082052 (n + 1) - A146076 (n + 1)

end

end A050452.P14752310275434316038

namespace A050452

/-- `A082052(n+1)-A146076(n+1)` -/
def P14752310275434316038.Spec : Prop :=
  ∀ n, P14752310275434316038.a n = A050452 (n + 1)

theorem P14752310275434316038.correct : P14752310275434316038.Spec := by
  intro n
  simp only [A050452, Nat.add_sub_cancel, A050452.P14752310275434316038.a, A050452.P8848155708238405563.a, A000593, A000593.P10331878810394225172.f1, A000593.P10331878810394225172.a, A050449, A050449.P3812122387069373176.f1, A050449.P3812122387069373176.a, A082052, A082052.P17956952017327585217.f1, A082052.P17956952017327585217.a, A146076, A146076.P5513778411624192836.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A166486, A166486.P13501783531280266850.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A050452

/-! ## A050452.P1956011851336809933

`A082052(n+1)%A000593(n+1)`
-/

namespace A050452.P1956011851336809933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082052 (n + 1)) (A000593 (n + 1))

end

end A050452.P1956011851336809933

namespace A050452

/-- `A082052(n+1)%A000593(n+1)` -/
def P1956011851336809933.Spec : Prop :=
  ∀ n, P1956011851336809933.a n = A050452 (n + 1)

end A050452

/-! ## A050452.P15037223986729835009

`A082052(gcd(n+1, A166466(n+1)))`
-/

namespace A050452.P15037223986729835009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082052 (Int.gcd (n + 1 : ℤ) (A166466 (n + 1)))

end

end A050452.P15037223986729835009

namespace A050452

/-- `A082052(gcd(n+1, A166466(n+1)))` -/
def P15037223986729835009.Spec : Prop :=
  ∀ n, P15037223986729835009.a n = A050452 (n + 1)

end A050452

/-! ## A050452.P4668898796343785623

`A082052(gcd(A166466(n+1), A270710(n)))`
-/

namespace A050452.P4668898796343785623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082052 (Int.gcd (A166466 (n + 1)) (A270710 n))

end

end A050452.P4668898796343785623

namespace A050452

/-- `A082052(gcd(A166466(n+1), A270710(n)))` -/
def P4668898796343785623.Spec : Prop :=
  ∀ n, P4668898796343785623.a n = A050452 (n + 1)

end A050452

/-! ## A050452.P2912828223846043154

`A050449(n+1)+A082052(n+1)-A082053(n+1)`
-/

namespace A050452.P2912828223846043154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050449 (n + 1) + (A082052 (n + 1) - A082053 (n + 1))

end

end A050452.P2912828223846043154

namespace A050452

/-- `A050449(n+1)+A082052(n+1)-A082053(n+1)` -/
def P2912828223846043154.Spec : Prop :=
  ∀ n, P2912828223846043154.a n = A050452 (n + 1)

end A050452

/-! ## A050452.P15679040094565997922

`A103517(n)-(A326049(A103517(n))+A050457(n+1))`
-/

namespace A050452.P15679040094565997922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n - (A326049 (A103517 n).toNat + A050457 (n + 1))

end

end A050452.P15679040094565997922

namespace A050452

/-- `A103517(n)-(A326049(A103517(n))+A050457(n+1))` -/
def P15679040094565997922.Spec : Prop :=
  ∀ n, P15679040094565997922.a n = A050452 (n + 1)

end A050452

/-! ## A050452.P8150671095228054223

`A293903(2*(n+1))`
-/

namespace A050452.P8150671095228054223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293903 (2 * (n + 1))

end

end A050452.P8150671095228054223

namespace A050452

/-- `A293903(2*(n+1))` -/
def P8150671095228054223.Spec : Prop :=
  ∀ n, P8150671095228054223.a n = A050452 (n + 1)

end A050452

/-! ## A050452.P10126514301882802862

`A000593(n+1)-A293901(2*(n+1))`
-/

namespace A050452.P10126514301882802862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) - A293901 (2 * (n + 1))

end

end A050452.P10126514301882802862

namespace A050452

/-- `A000593(n+1)-A293901(2*(n+1))` -/
def P10126514301882802862.Spec : Prop :=
  ∀ n, P10126514301882802862.a n = A050452 (n + 1)

end A050452

/-! ## A050452.P956246678704966479

`A091570(2*(n+1))-A050449(n+1)`
-/

namespace A050452.P956246678704966479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091570 (2 * (n + 1)) - A050449 (n + 1)

end

end A050452.P956246678704966479

namespace A050452

/-- `A091570(2*(n+1))-A050449(n+1)` -/
def P956246678704966479.Spec : Prop :=
  ∀ n, P956246678704966479.a n = A050452 (n + 1)

end A050452

/-! ## A050452.P15980028638771093770

`A091570(2*(n+1))-A293901(2*(n+1))`
-/

namespace A050452.P15980028638771093770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091570 (2 * (n + 1)) - A293901 (2 * (n + 1))

end

end A050452.P15980028638771093770

namespace A050452

/-- `A091570(2*(n+1))-A293901(2*(n+1))` -/
def P15980028638771093770.Spec : Prop :=
  ∀ n, P15980028638771093770.a n = A050452 (n + 1)

end A050452

/-! ## A050452.P3323584185693518119

`A082052(2*(n+1))-2*A245092(2*n+1)`
-/

namespace A050452.P3323584185693518119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082052 (2 * (n + 1)) - 2 * A245092 (2 * n + 1)

end

end A050452.P3323584185693518119

namespace A050452

/-- `A082052(2*(n+1))-2*A245092(2*n+1)` -/
def P3323584185693518119.Spec : Prop :=
  ∀ n, P3323584185693518119.a n = A050452 (n + 1)

end A050452

/-!
# A050453: Sum_{d|n, d=3 mod 4} d^2.

The programs for A050453, the canonical program `A050453.P6605765519543064582` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050453 has offset 1).

The definition of A050453 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050453.P6605765519543064582

`∑{d}[n+1, #*#%A062828(#)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A050453

/-- `∑{d}[n+1, #*#%A062828(#)]` -/
def P6605765519543064582.Spec : Prop :=
  ∀ n, P6605765519543064582.a n = A050453 (n + 1)

theorem P6605765519543064582.correct : P6605765519543064582.Spec := by
  intro n
  simp only [A050453, Nat.add_sub_cancel]

end A050453

/-! ## A050453.P15382073694644236360

`A050450(n+1)-A002173(n+1)`
-/

namespace A050453.P15382073694644236360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050450 (n + 1) - A002173 (n + 1)

end

end A050453.P15382073694644236360

namespace A050453

/-- `A050450(n+1)-A002173(n+1)` -/
def P15382073694644236360.Spec : Prop :=
  ∀ n, P15382073694644236360.a n = A050453 (n + 1)

theorem P15382073694644236360.correct : P15382073694644236360.Spec := by
  intro n
  simp only [A050453, Nat.add_sub_cancel, A050453.P15382073694644236360.a, A050453.P6605765519543064582.f1, A050453.P6605765519543064582.a, A002173, A002173.P7206352416500240550.a, A050450, A050450.P4021675749699126775.a, A062828, A062828.P6719252676437091402.a, A050999, A050999.P18306880422002560695.a, A001157, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A050453

/-! ## A050453.P3440425475761869531

`A050999(n+1)-A050450(n+1)`
-/

namespace A050453.P3440425475761869531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050999 (n + 1) - A050450 (n + 1)

end

end A050453.P3440425475761869531

namespace A050453

/-- `A050999(n+1)-A050450(n+1)` -/
def P3440425475761869531.Spec : Prop :=
  ∀ n, P3440425475761869531.a n = A050453 (n + 1)

theorem P3440425475761869531.correct : P3440425475761869531.Spec := by
  intro n
  simp only [A050453, Nat.add_sub_cancel, A050453.P3440425475761869531.a, A050453.P6605765519543064582.f1, A050453.P6605765519543064582.a, A050450, A050450.P4021675749699126775.a, A050999, A050999.P18306880422002560695.a, A062828, A062828.P6719252676437091402.a, A001157, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A050453

/-! ## A050453.P5991135826924830789

`A001157(A000265(n+1))-A050450(n+1)`
-/

namespace A050453.P5991135826924830789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (A000265 (n + 1)).toNat - A050450 (n + 1)

end

end A050453.P5991135826924830789

namespace A050453

/-- `A001157(A000265(n+1))-A050450(n+1)` -/
def P5991135826924830789.Spec : Prop :=
  ∀ n, P5991135826924830789.a n = A050453 (n + 1)

end A050453

/-! ## A050453.P691586981989234858

`∑{d}[n+1, (#*(#-A140201(#)))²]`
-/

namespace A050453.P691586981989234858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) * ((d : ℤ) - A140201 d)) ^ 2

end

end A050453.P691586981989234858

namespace A050453

/-- `∑{d}[n+1, (#*(#-A140201(#)))²]` -/
def P691586981989234858.Spec : Prop :=
  ∀ n, P691586981989234858.a n = A050453 (n + 1)

end A050453

/-! ## A050453.P6282309282351058326

`∑{d}[n+1, (#*and(1, A254703(#+1)))²]`
-/

namespace A050453.P6282309282351058326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) * Int.land 1 (A254703 (d + 1))) ^ 2

end

end A050453.P6282309282351058326

namespace A050453

/-- `∑{d}[n+1, (#*and(1, A254703(#+1)))²]` -/
def P6282309282351058326.Spec : Prop :=
  ∀ n, P6282309282351058326.a n = A050453 (n + 1)

end A050453

/-! ## A050453.P1485053623970406285

`∑{d}[n+1, (#*val(A205220(#), 3))²]`
-/

namespace A050453.P1485053623970406285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d * SequenceMachineLib.valuation (A205220 d).toNat 3) ^ 2

end

end A050453.P1485053623970406285

namespace A050453

/-- `∑{d}[n+1, (#*val(A205220(#), 3))²]` -/
def P1485053623970406285.Spec : Prop :=
  ∀ n, (P1485053623970406285.a n : ℤ) = A050453 (n + 1)

end A050453

/-!
# A050454: a(n) = Sum_{d|n, d=3 mod 4} d^3.

The programs for A050454, the canonical program `A050454.P6949249148858722665` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050454 has offset 1).

The definition of A050454 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050454.P9382348285416528926

`A050451(n+1)-A050459(n+1)`
-/

namespace A050454.P9382348285416528926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050451 (n + 1) - A050459 (n + 1)

end

end A050454.P9382348285416528926

namespace A050454

/-- `A050451(n+1)-A050459(n+1)` -/
def P9382348285416528926.Spec : Prop :=
  ∀ n, P9382348285416528926.a n = A050454 (n + 1)

theorem P9382348285416528926.correct : P9382348285416528926.Spec := by
  intro n
  simp only [A050454, Nat.add_sub_cancel, A050454.P9382348285416528926.a, A050454.P6949249148858722665.f1, A050454.P6949249148858722665.a, A000578, A000578.P12162961755414704816.a, A050451, A050451.P9220370011251437069.a, A050459, A050459.P9123758851676713191.a, A062828, A062828.P6719252676437091402.a, A051000, A051000.P10741678327637826520.f1, A051000.P10741678327637826520.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A006519, A006519.P10435570611646570274.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A050454

/-! ## A050454.P10215500154448847124

`A051000(n+1)-A050451(n+1)`
-/

namespace A050454.P10215500154448847124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051000 (n + 1) - A050451 (n + 1)

end

end A050454.P10215500154448847124

namespace A050454

/-- `A051000(n+1)-A050451(n+1)` -/
def P10215500154448847124.Spec : Prop :=
  ∀ n, P10215500154448847124.a n = A050454 (n + 1)

theorem P10215500154448847124.correct : P10215500154448847124.Spec := by
  intro n
  simp only [A050454, Nat.add_sub_cancel, A050454.P10215500154448847124.a, A050454.P6949249148858722665.f1, A050454.P6949249148858722665.a, A000578, A000578.P12162961755414704816.a, A050451, A050451.P9220370011251437069.a, A051000, A051000.P10741678327637826520.f1, A051000.P10741678327637826520.a, A062828, A062828.P6719252676437091402.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A006519, A006519.P10435570611646570274.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A050454

/-! ## A050454.P6949249148858722665

`∑{d}[n+1, A000578(#%A062828(#))]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A050454

/-- `∑{d}[n+1, A000578(#%A062828(#))]` -/
def P6949249148858722665.Spec : Prop :=
  ∀ n, P6949249148858722665.a n = A050454 (n + 1)

theorem P6949249148858722665.correct : P6949249148858722665.Spec := by
  intro n
  simp only [A050454, Nat.add_sub_cancel]

end A050454

/-! ## A050454.P16499096557224862635

`A045823(A025480(n))-A050451(n+1)`
-/

namespace A050454.P16499096557224862635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045823 (A025480 n).toNat - A050451 (n + 1)

end

end A050454.P16499096557224862635

namespace A050454

/-- `A045823(A025480(n))-A050451(n+1)` -/
def P16499096557224862635.Spec : Prop :=
  ∀ n, P16499096557224862635.a n = A050454 (n + 1)

end A050454

/-! ## A050454.P6304110831107186507

`A001158(A000265(n+1))-A050451(n+1)`
-/

namespace A050454.P6304110831107186507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (A000265 (n + 1)).toNat - A050451 (n + 1)

end

end A050454.P6304110831107186507

namespace A050454

/-- `A001158(A000265(n+1))-A050451(n+1)` -/
def P6304110831107186507.Spec : Prop :=
  ∀ n, P6304110831107186507.a n = A050454 (n + 1)

end A050454

/-!
# A050455: a(n) = Sum_{d|n, d=3 mod 4} d^4.

The programs for A050455, the canonical program `A050455.P12046715105957438179` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050455 has offset 1).

The definition of A050455 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050455.P12046715105957438179

`∑{d}[n+1, (#*#%A062828(#))²]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A050455

/-- `∑{d}[n+1, (#*#%A062828(#))²]` -/
def P12046715105957438179.Spec : Prop :=
  ∀ n, P12046715105957438179.a n = A050455 (n + 1)

theorem P12046715105957438179.correct : P12046715105957438179.Spec := by
  intro n
  simp only [A050455, Nat.add_sub_cancel]

end A050455

/-! ## A050455.P8816396241870231881

`A050448(n+1)-A050456(n+1)`
-/

namespace A050455.P8816396241870231881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050448 (n + 1) - A050456 (n + 1)

end

end A050455.P8816396241870231881

namespace A050455

/-- `A050448(n+1)-A050456(n+1)` -/
def P8816396241870231881.Spec : Prop :=
  ∀ n, P8816396241870231881.a n = A050455 (n + 1)

theorem P8816396241870231881.correct : P8816396241870231881.Spec := by
  intro n
  simp only [A050455, Nat.add_sub_cancel, A050455.P8816396241870231881.a, A050455.P12046715105957438179.f1, A050455.P12046715105957438179.a, A050448, A050448.P12990945603469115476.a, A050456, A050456.P2703078225834932298.a, A062828, A062828.P6719252676437091402.a, A051001, A051001.P2883852462470465960.a, A000265, A000265.P16482698636471710744.a, A001159, A001159.P9898895530264138649.f1, A001159.P9898895530264138649.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A050455

/-! ## A050455.P13678453393043841136

`A051001(n+1)-A050448(n+1)`
-/

namespace A050455.P13678453393043841136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051001 (n + 1) - A050448 (n + 1)

end

end A050455.P13678453393043841136

namespace A050455

/-- `A051001(n+1)-A050448(n+1)` -/
def P13678453393043841136.Spec : Prop :=
  ∀ n, P13678453393043841136.a n = A050455 (n + 1)

theorem P13678453393043841136.correct : P13678453393043841136.Spec := by
  intro n
  simp only [A050455, Nat.add_sub_cancel, A050455.P13678453393043841136.a, A050455.P12046715105957438179.f1, A050455.P12046715105957438179.a, A050448, A050448.P12990945603469115476.a, A051001, A051001.P2883852462470465960.a, A062828, A062828.P6719252676437091402.a, A000265, A000265.P16482698636471710744.a, A001159, A001159.P9898895530264138649.f1, A001159.P9898895530264138649.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A050455

/-! ## A050455.P8984995949867185067

`(A051001(n+1)-A050456(n+1))/2`
-/

namespace A050455.P8984995949867185067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051001 (n + 1) - A050456 (n + 1) : ℚ) / 2

end

end A050455.P8984995949867185067

namespace A050455

/-- `(A051001(n+1)-A050456(n+1))/2` -/
def P8984995949867185067.Spec : Prop :=
  ∀ n, P8984995949867185067.a n = (A050455 (n + 1) : ℚ)

theorem P8984995949867185067.correct : P8984995949867185067.Spec := by
  intro n
  simp only [A050455, Nat.add_sub_cancel, A050455.P8984995949867185067.a, A050455.P12046715105957438179.f1, A050455.P12046715105957438179.a, A050456, A050456.P2703078225834932298.a, A051001, A051001.P2883852462470465960.a, A062828, A062828.P6719252676437091402.a, A000265, A000265.P16482698636471710744.a, A001159, A001159.P9898895530264138649.f1, A001159.P9898895530264138649.a, A050448, A050448.P12990945603469115476.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A050455

/-! ## A050455.P10194912811478215526

`∑{d}[n+1, (#*(#-A140201(#)))²²]`
-/

namespace A050455.P10194912811478215526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (((d : ℤ) * ((d : ℤ) - A140201 d)) ^ 2) ^ 2

end

end A050455.P10194912811478215526

namespace A050455

/-- `∑{d}[n+1, (#*(#-A140201(#)))²²]` -/
def P10194912811478215526.Spec : Prop :=
  ∀ n, P10194912811478215526.a n = A050455 (n + 1)

end A050455

/-!
# A050456: a(n) = Sum_{d|n, d==1 mod 4} d^4 - Sum_{d|n, d==3 mod 4} d^4.

The programs for A050456, the canonical program `A050456.P2703078225834932298` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050456 has offset 1).

The definition of A050456 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050456.P18161846441785566335

`A204372(n+1)/4`
-/

namespace A050456.P18161846441785566335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204372 (n + 1) : ℚ) / 4

end

end A050456.P18161846441785566335

namespace A050456

/-- `A204372(n+1)/4` -/
def P18161846441785566335.Spec : Prop :=
  ∀ n, P18161846441785566335.a n = (A050456 (n + 1) : ℚ)

end A050456

/-! ## A050456.P2703078225834932298

`A050448(n+1)-A050455(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A050456

/-- `A050448(n+1)-A050455(n+1)` -/
def P2703078225834932298.Spec : Prop :=
  ∀ n, P2703078225834932298.a n = A050456 (n + 1)

theorem P2703078225834932298.correct : P2703078225834932298.Spec := by
  intro n
  simp only [A050456, Nat.add_sub_cancel]

end A050456

/-! ## A050456.P10993747300704536733

`2*A050448(n+1)-A051001(n+1)`
-/

namespace A050456.P10993747300704536733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050448 (n + 1) - A051001 (n + 1)

end

end A050456.P10993747300704536733

namespace A050456

/-- `2*A050448(n+1)-A051001(n+1)` -/
def P10993747300704536733.Spec : Prop :=
  ∀ n, P10993747300704536733.a n = A050456 (n + 1)

theorem P10993747300704536733.correct : P10993747300704536733.Spec := by
  intro n
  simp only [A050456, Nat.add_sub_cancel, A050456.P10993747300704536733.a, A050456.P2703078225834932298.a, A050448, A050448.P12990945603469115476.a, A050455, A050455.P12046715105957438179.f1, A050455.P12046715105957438179.a, A051001, A051001.P2883852462470465960.a, A000265, A000265.P16482698636471710744.a, A001159, A001159.P9898895530264138649.f1, A001159.P9898895530264138649.a, A062828, A062828.P6719252676437091402.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A050456

/-! ## A050456.P17489546389608569158

`A051001(n+1)-2*A050455(n+1)`
-/

namespace A050456.P17489546389608569158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051001 (n + 1) - 2 * A050455 (n + 1)

end

end A050456.P17489546389608569158

namespace A050456

/-- `A051001(n+1)-2*A050455(n+1)` -/
def P17489546389608569158.Spec : Prop :=
  ∀ n, P17489546389608569158.a n = A050456 (n + 1)

theorem P17489546389608569158.correct : P17489546389608569158.Spec := by
  intro n
  simp only [A050456, Nat.add_sub_cancel, A050456.P17489546389608569158.a, A050456.P2703078225834932298.a, A050448, A050448.P12990945603469115476.a, A050455, A050455.P12046715105957438179.f1, A050455.P12046715105957438179.a, A051001, A051001.P2883852462470465960.a, A000265, A000265.P16482698636471710744.a, A001159, A001159.P9898895530264138649.f1, A001159.P9898895530264138649.a, A062828, A062828.P6719252676437091402.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A050456

/-! ## A050456.P17550790951618913481

`A001159(A000265(n+1))-2*A050455(n+1)`
-/

namespace A050456.P17550790951618913481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001159 (A000265 (n + 1)).toNat - 2 * A050455 (n + 1)

end

end A050456.P17550790951618913481

namespace A050456

/-- `A001159(A000265(n+1))-2*A050455(n+1)` -/
def P17550790951618913481.Spec : Prop :=
  ∀ n, P17550790951618913481.a n = A050456 (n + 1)

theorem P17550790951618913481.correct : P17550790951618913481.Spec := by
  intro n
  simp only [A050456, Nat.add_sub_cancel, A050456.P17550790951618913481.a, A050456.P2703078225834932298.a, A000265, A000265.P16482698636471710744.a, A001159, A001159.P9898895530264138649.f1, A001159.P9898895530264138649.a, A050448, A050448.P12990945603469115476.a, A050455, A050455.P12046715105957438179.f1, A050455.P12046715105957438179.a, A051001, A051001.P2883852462470465960.a, A062828, A062828.P6719252676437091402.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A050456

/-! ## A050456.P13618158888515262313

`A033999(A025480(n))*A050468(A000265(n+1))`
-/

namespace A050456.P13618158888515262313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025480 n).toNat * A050468 (A000265 (n + 1)).toNat

end

end A050456.P13618158888515262313

namespace A050456

/-- `A033999(A025480(n))*A050468(A000265(n+1))` -/
def P13618158888515262313.Spec : Prop :=
  ∀ n, P13618158888515262313.a n = A050456 (n + 1)

end A050456

/-!
# A050457: a(n) = Sum_{ d divides n, d==1 mod 4} d - Sum_{ d divides n, d==3 mod 4} d.

The programs for A050457, the canonical program `A050457.P6572451933585207795` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050457 has offset 1).

The definition of A050457 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050457.P6572451933585207795

`∑{d}[n+1, #*A056594(#-1)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A050457

/-- `∑{d}[n+1, #*A056594(#-1)]` -/
def P6572451933585207795.Spec : Prop :=
  ∀ n, P6572451933585207795.a n = A050457 (n + 1)

theorem P6572451933585207795.correct : P6572451933585207795.Spec := by
  intro n
  simp only [A050457, Nat.add_sub_cancel]

end A050457

/-! ## A050457.P8845330360887284717

`A050449(n+1)-A050452(n+1)`
-/

namespace A050457.P8845330360887284717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050449 (n + 1) - A050452 (n + 1)

end

end A050457.P8845330360887284717

namespace A050457

/-- `A050449(n+1)-A050452(n+1)` -/
def P8845330360887284717.Spec : Prop :=
  ∀ n, P8845330360887284717.a n = A050457 (n + 1)

end A050457

/-! ## A050457.P5722419325923629501

`A082053(n+1)-A082052(n+1)`
-/

namespace A050457.P5722419325923629501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082053 (n + 1) - A082052 (n + 1)

end

end A050457.P5722419325923629501

namespace A050457

/-- `A082053(n+1)-A082052(n+1)` -/
def P5722419325923629501.Spec : Prop :=
  ∀ n, P5722419325923629501.a n = A050457 (n + 1)

end A050457

/-! ## A050457.P10510452102921316498

`A326052(n+1)-A326049(n+1)`
-/

namespace A050457.P10510452102921316498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326052 (n + 1) - A326049 (n + 1)

end

end A050457.P10510452102921316498

namespace A050457

/-- `A326052(n+1)-A326049(n+1)` -/
def P10510452102921316498.Spec : Prop :=
  ∀ n, P10510452102921316498.a n = A050457 (n + 1)

end A050457

/-! ## A050457.P8796512816613025869

`A050469(n+1)/A055975(n+1)`
-/

namespace A050457.P8796512816613025869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050469 (n + 1) : ℚ) / (A055975 (n + 1) : ℚ)

end

end A050457.P8796512816613025869

namespace A050457

/-- `A050469(n+1)/A055975(n+1)` -/
def P8796512816613025869.Spec : Prop :=
  ∀ n, P8796512816613025869.a n = (A050457 (n + 1) : ℚ)

end A050457

/-! ## A050457.P1897914838584996578

`2*A050449(n+1)-A000593(n+1)`
-/

namespace A050457.P1897914838584996578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050449 (n + 1) - A000593 (n + 1)

end

end A050457.P1897914838584996578

namespace A050457

/-- `2*A050449(n+1)-A000593(n+1)` -/
def P1897914838584996578.Spec : Prop :=
  ∀ n, P1897914838584996578.a n = A050457 (n + 1)

end A050457

/-! ## A050457.P12385303480287943523

`A000593(n+1)-2*A050452(n+1)`
-/

namespace A050457.P12385303480287943523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) - 2 * A050452 (n + 1)

end

end A050457.P12385303480287943523

namespace A050457

/-- `A000593(n+1)-2*A050452(n+1)` -/
def P12385303480287943523.Spec : Prop :=
  ∀ n, P12385303480287943523.a n = A050457 (n + 1)

end A050457

/-! ## A050457.P15991096447714133883

`A215947(n+1)-2*A082052(n+1)`
-/

namespace A050457.P15991096447714133883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215947 (n + 1) - 2 * A082052 (n + 1)

end

end A050457.P15991096447714133883

namespace A050457

/-- `A215947(n+1)-2*A082052(n+1)` -/
def P15991096447714133883.Spec : Prop :=
  ∀ n, P15991096447714133883.a n = A050457 (n + 1)

end A050457

/-! ## A050457.P15301046742134840261

`2*A082053(n+1)-A215947(n+1)`
-/

namespace A050457.P15301046742134840261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082053 (n + 1) - A215947 (n + 1)

end

end A050457.P15301046742134840261

namespace A050457

/-- `2*A082053(n+1)-A215947(n+1)` -/
def P15301046742134840261.Spec : Prop :=
  ∀ n, P15301046742134840261.a n = A050457 (n + 1)

end A050457

/-! ## A050457.P6488496682693419598

`∑{d}[n+1, A023900(#)*A111938((n+1)/#)]`
-/

namespace A050457.P6488496682693419598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A111938 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050457.P6488496682693419598

namespace A050457

/-- `∑{d}[n+1, A023900(#)*A111938((n+1)/#)]` -/
def P6488496682693419598.Spec : Prop :=
  ∀ n, P6488496682693419598.a n = A050457 (n + 1)

end A050457

/-! ## A050457.P15946857826357880357

`∑{d}[n+1, A033999(#-1)*A119972((n+1)/#)]`
-/

namespace A050457.P15946857826357880357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033999 (d - 1) * A119972 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050457.P15946857826357880357

namespace A050457

/-- `∑{d}[n+1, A033999(#-1)*A119972((n+1)/#)]` -/
def P15946857826357880357.Spec : Prop :=
  ∀ n, P15946857826357880357.a n = A050457 (n + 1)

end A050457

/-! ## A050457.P12984612001523224530

`A050449(n+1)-A082052(A000265(n+1))`
-/

namespace A050457.P12984612001523224530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050449 (n + 1) - A082052 (A000265 (n + 1)).toNat

end

end A050457.P12984612001523224530

namespace A050457

/-- `A050449(n+1)-A082052(A000265(n+1))` -/
def P12984612001523224530.Spec : Prop :=
  ∀ n, P12984612001523224530.a n = A050457 (n + 1)

end A050457

/-! ## A050457.P8765476463832934933

`A050449(n+1)+A082053(n+1)-A000203(n+1)`
-/

namespace A050457.P8765476463832934933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050449 (n + 1) + (A082053 (n + 1) - A000203 (n + 1))

end

end A050457.P8765476463832934933

namespace A050457

/-- `A050449(n+1)+A082053(n+1)-A000203(n+1)` -/
def P8765476463832934933.Spec : Prop :=
  ∀ n, P8765476463832934933.a n = A050457 (n + 1)

end A050457

/-! ## A050457.P16509779251228395368

`A000203(n+1)-(A082052(n+1)+A050452(n+1))`
-/

namespace A050457.P16509779251228395368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A082052 (n + 1) + A050452 (n + 1))

end

end A050457.P16509779251228395368

namespace A050457

/-- `A000203(n+1)-(A082052(n+1)+A050452(n+1))` -/
def P16509779251228395368.Spec : Prop :=
  ∀ n, P16509779251228395368.a n = A050457 (n + 1)

end A050457

/-! ## A050457.P16895767813198858373

`A326052(n+1)-(A326050(n+1)+A033879(n+1))`
-/

namespace A050457.P16895767813198858373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326052 (n + 1) - (A326050 (n + 1) + A033879 (n + 1))

end

end A050457.P16895767813198858373

namespace A050457

/-- `A326052(n+1)-(A326050(n+1)+A033879(n+1))` -/
def P16895767813198858373.Spec : Prop :=
  ∀ n, P16895767813198858373.a n = A050457 (n + 1)

end A050457

/-! ## A050457.P18252163174943709605

`A245092(2*n+1)-A082052(n+1)-A082052(A000265(n+1))`
-/

namespace A050457.P18252163174943709605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 1) - A082052 (n + 1) - A082052 (A000265 (n + 1)).toNat

end

end A050457.P18252163174943709605

namespace A050457

/-- `A245092(2*n+1)-A082052(n+1)-A082052(A000265(n+1))` -/
def P18252163174943709605.Spec : Prop :=
  ∀ n, P18252163174943709605.a n = A050457 (n + 1)

end A050457

/-! ## A050457.P11966791054128668972

`A001065(n+1)+1+n-A082052(n+1)-A082052(A000265(n+1))`
-/

namespace A050457.P11966791054128668972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + 1 + (n : ℤ) - A082052 (n + 1) - A082052 (A000265 (n + 1)).toNat

end

end A050457.P11966791054128668972

namespace A050457

/-- `A001065(n+1)+1+n-A082052(n+1)-A082052(A000265(n+1))` -/
def P11966791054128668972.Spec : Prop :=
  ∀ n, P11966791054128668972.a n = A050457 (n + 1)

end A050457

/-! ## A050457.P423673821091086865

`A155085(n+1)-(n+1)-A082052(n+1)-A082052(A000265(n+1))`
-/

namespace A050457.P423673821091086865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - (n + 1 : ℤ) - A082052 (n + 1) - A082052 (A000265 (n + 1)).toNat

end

end A050457.P423673821091086865

namespace A050457

/-- `A155085(n+1)-(n+1)-A082052(n+1)-A082052(A000265(n+1))` -/
def P423673821091086865.Spec : Prop :=
  ∀ n, P423673821091086865.a n = A050457 (n + 1)

end A050457

/-! ## A050457.P13169235974155275373

`A064987(n+1)/(n+1)-A082052(n+1)-A082052(A000265(n+1))`
-/

namespace A050457.P13169235974155275373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) : ℚ) / (n + 1 : ℚ) - (A082052 (n + 1) : ℚ) - (A082052 (A000265 (n + 1)).toNat : ℚ)

end

end A050457.P13169235974155275373

namespace A050457

/-- `A064987(n+1)/(n+1)-A082052(n+1)-A082052(A000265(n+1))` -/
def P13169235974155275373.Spec : Prop :=
  ∀ n, P13169235974155275373.a n = (A050457 (n + 1) : ℚ)

end A050457

/-! ## A050457.P1300113265418596643

`∑{d}[n+1, #*A101455(#)]`
-/

namespace A050457.P1300113265418596643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A101455 d

end

end A050457.P1300113265418596643

namespace A050457

/-- `∑{d}[n+1, #*A101455(#)]` -/
def P1300113265418596643.Spec : Prop :=
  ∀ n, P1300113265418596643.a n = A050457 (n + 1)

end A050457

/-!
# A050458: Difference between Sum_{d|n, d == 1 (mod 4)} d^2 and Sum_{d|n, d == 3 (mod 4)} d^2.

The programs for A050458, the canonical program `A050458.P15679077146658638176` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050458 has offset 1).

The definition of A050458 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050458.P5578442940348128144

`abs(A002173(n+1))`
-/

namespace A050458.P5578442940348128144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002173 (n + 1)|

end

end A050458.P5578442940348128144

namespace A050458

/-- `abs(A002173(n+1))` -/
def P5578442940348128144.Spec : Prop :=
  ∀ n, P5578442940348128144.a n = A050458 (n + 1)

end A050458

/-! ## A050458.P11873921082421841960

`abs(A138505(n+1))`
-/

namespace A050458.P11873921082421841960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A138505 (n + 1)|

end

end A050458.P11873921082421841960

namespace A050458

/-- `abs(A138505(n+1))` -/
def P11873921082421841960.Spec : Prop :=
  ∀ n, P11873921082421841960.a n = A050458 (n + 1)

end A050458

/-! ## A050458.P1109285593146850420

`abs(A138504(n+1)/4)`
-/

namespace A050458.P1109285593146850420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A138504 (n + 1) : ℚ) / 4|

end

end A050458.P1109285593146850420

namespace A050458

/-- `abs(A138504(n+1)/4)` -/
def P1109285593146850420.Spec : Prop :=
  ∀ n, P1109285593146850420.a n = (A050458 (n + 1) : ℚ)

end A050458

/-! ## A050458.P5081566553651682109

`A050470((n+1)/2^val(n+1, 2))`
-/

namespace A050458.P5081566553651682109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050470 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A050458.P5081566553651682109

namespace A050458

/-- `A050470((n+1)/2^val(n+1, 2))` -/
def P5081566553651682109.Spec : Prop :=
  ∀ n, P5081566553651682109.a n = A050458 (n + 1)

end A050458

/-! ## A050458.P10780619025412718379

`A138501((n+1)/and(n+1, -(n+1)))%(∑[n+1]+1)²`
-/

namespace A050458.P10780619025412718379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138501 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat) (((∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2 : ℕ) : ℤ)

end

end A050458.P10780619025412718379

namespace A050458

/-- `A138501((n+1)/and(n+1, -(n+1)))%(∑[n+1]+1)²` -/
def P10780619025412718379.Spec : Prop :=
  ∀ n, P10780619025412718379.a n = A050458 (n + 1)

end A050458

/-! ## A050458.P15661994091839383363

`A122854(A025480(n))`
-/

namespace A050458.P15661994091839383363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122854 (A025480 n).toNat

end

end A050458.P15661994091839383363

namespace A050458

/-- `A122854(A025480(n))` -/
def P15661994091839383363.Spec : Prop :=
  ∀ n, P15661994091839383363.a n = A050458 (n + 1)

end A050458

/-! ## A050458.P13768071381448999231

`A050470(A000265(n+1))`
-/

namespace A050458.P13768071381448999231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050470 (A000265 (n + 1)).toNat

end

end A050458.P13768071381448999231

namespace A050458

/-- `A050470(A000265(n+1))` -/
def P13768071381448999231.Spec : Prop :=
  ∀ n, P13768071381448999231.a n = A050458 (n + 1)

end A050458

/-! ## A050458.P1037661800277256740

`A050470(2*A025480(n)+1)`
-/

namespace A050458.P1037661800277256740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050470 (2 * A025480 n + 1).toNat

end

end A050458.P1037661800277256740

namespace A050458

/-- `A050470(2*A025480(n)+1)` -/
def P1037661800277256740.Spec : Prop :=
  ∀ n, P1037661800277256740.a n = A050458 (n + 1)

end A050458

/-! ## A050458.P1852350354975023417

`gcd(A000038(n), A002173(n+1))`
-/

namespace A050458.P1852350354975023417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A002173 (n + 1))

end

end A050458.P1852350354975023417

namespace A050458

/-- `gcd(A000038(n), A002173(n+1))` -/
def P1852350354975023417.Spec : Prop :=
  ∀ n, (P1852350354975023417.a n : ℤ) = A050458 (n + 1)

end A050458

/-! ## A050458.P1611570293218429415

`gcd(A099894(n), A138505(n+1))`
-/

namespace A050458.P1611570293218429415
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A099894 n) (A138505 (n + 1))

end

end A050458.P1611570293218429415

namespace A050458

/-- `gcd(A099894(n), A138505(n+1))` -/
def P1611570293218429415.Spec : Prop :=
  ∀ n, (P1611570293218429415.a n : ℤ) = A050458 (n + 1)

end A050458

/-! ## A050458.P2586619610719289866

`lcm(A002173(n+1), A014709(n))`
-/

namespace A050458.P2586619610719289866
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002173 (n + 1)) (A014709 n)

end

end A050458.P2586619610719289866

namespace A050458

/-- `lcm(A002173(n+1), A014709(n))` -/
def P2586619610719289866.Spec : Prop :=
  ∀ n, (P2586619610719289866.a n : ℤ) = A050458 (n + 1)

end A050458

/-! ## A050458.P3348011479866531594

`lcm(A020985(n), A138505(n+1))`
-/

namespace A050458.P3348011479866531594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A138505 (n + 1))

end

end A050458.P3348011479866531594

namespace A050458

/-- `lcm(A020985(n), A138505(n+1))` -/
def P3348011479866531594.Spec : Prop :=
  ∀ n, (P3348011479866531594.a n : ℤ) = A050458 (n + 1)

end A050458

/-! ## A050458.P10255055511187903245

`A002173(n+1)*A034947(n+1)`
-/

namespace A050458.P10255055511187903245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002173 (n + 1) * A034947 (n + 1)

end

end A050458.P10255055511187903245

namespace A050458

/-- `A002173(n+1)*A034947(n+1)` -/
def P10255055511187903245.Spec : Prop :=
  ∀ n, P10255055511187903245.a n = A050458 (n + 1)

end A050458

/-! ## A050458.P15679077146658638176

`abs(A050450(n+1)-A050453(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A050458

/-- `abs(A050450(n+1)-A050453(n+1))` -/
def P15679077146658638176.Spec : Prop :=
  ∀ n, P15679077146658638176.a n = A050458 (n + 1)

theorem P15679077146658638176.correct : P15679077146658638176.Spec := by
  intro n
  simp only [A050458, Nat.add_sub_cancel]

end A050458

/-! ## A050458.P12654138019148409777

`A050470(A025480(n)+A025480(n)+1)`
-/

namespace A050458.P12654138019148409777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050470 (A025480 n + (A025480 n + 1)).toNat

end

end A050458.P12654138019148409777

namespace A050458

/-- `A050470(A025480(n)+A025480(n)+1)` -/
def P12654138019148409777.Spec : Prop :=
  ∀ n, P12654138019148409777.a n = A050458 (n + 1)

end A050458

/-! ## A050458.P10218855137671620811

`lcm(A033999(n)*A138505(n+1), A033999(n))`
-/

namespace A050458.P10218855137671620811
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n * A138505 (n + 1)) (A033999 n)

end

end A050458.P10218855137671620811

namespace A050458

/-- `lcm(A033999(n)*A138505(n+1), A033999(n))` -/
def P10218855137671620811.Spec : Prop :=
  ∀ n, (P10218855137671620811.a n : ℤ) = A050458 (n + 1)

end A050458

/-! ## A050458.P16073992429372702687

`gcd(A138505(n+1)+A033322(n+1), A033322(n+1))`
-/

namespace A050458.P16073992429372702687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138505 (n + 1) + A033322 (n + 1)) (A033322 (n + 1))

end

end A050458.P16073992429372702687

namespace A050458

/-- `gcd(A138505(n+1)+A033322(n+1), A033322(n+1))` -/
def P16073992429372702687.Spec : Prop :=
  ∀ n, (P16073992429372702687.a n : ℤ) = A050458 (n + 1)

end A050458

/-! ## A050458.P9960201022441791920

`gcd(A033322(n+2), A138505(2*(n+1)))`
-/

namespace A050458.P9960201022441791920
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033322 (n + 2)) (A138505 (2 * (n + 1)))

end

end A050458.P9960201022441791920

namespace A050458

/-- `gcd(A033322(n+2), A138505(2*(n+1)))` -/
def P9960201022441791920.Spec : Prop :=
  ∀ n, (P9960201022441791920.a n : ℤ) = A050458 (n + 1)

end A050458

/-! ## A050458.P1825416131365057840

`∑{d}[A002173(n+1), A000010(#)]`
-/

namespace A050458.P1825416131365057840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A050458.P1825416131365057840

namespace A050458

/-- `∑{d}[A002173(n+1), A000010(#)]` -/
def P1825416131365057840.Spec : Prop :=
  ∀ n, P1825416131365057840.a n = A050458 (n + 1)

end A050458

/-!
# A050459: a(n) = Sum_{d|n, d==1 mod 4} d^3 - Sum_{d|n, d==3 mod 4} d^3.

The programs for A050459, the canonical program `A050459.P9123758851676713191` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050459 has offset 1).

The definition of A050459 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050451, A050454, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A050459.P9123758851676713191

`A050451(n+1)-A050454(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A050459

/-- `A050451(n+1)-A050454(n+1)` -/
def P9123758851676713191.Spec : Prop :=
  ∀ n, P9123758851676713191.a n = A050459 (n + 1)

theorem P9123758851676713191.correct : P9123758851676713191.Spec := by
  intro n
  simp only [A050459, Nat.add_sub_cancel]

end A050459

/-! ## A050459.P13054671413071063435

`2*A050451(n+1)-A051000(n+1)`
-/

namespace A050459.P13054671413071063435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050451 (n + 1) - A051000 (n + 1)

end

end A050459.P13054671413071063435

namespace A050459

/-- `2*A050451(n+1)-A051000(n+1)` -/
def P13054671413071063435.Spec : Prop :=
  ∀ n, P13054671413071063435.a n = A050459 (n + 1)

theorem P13054671413071063435.correct : P13054671413071063435.Spec := by
  intro n
  simp only [A050459, Nat.add_sub_cancel, A050459.P13054671413071063435.a, A050459.P9123758851676713191.a, A050451, A050451.P9220370011251437069.a, A050454, A050454.P6949249148858722665.f1, A050454.P6949249148858722665.a, A051000, A051000.P10741678327637826520.f1, A051000.P10741678327637826520.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000578, A000578.P12162961755414704816.a, A006519, A006519.P10435570611646570274.a, A062828, A062828.P6719252676437091402.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A050459

/-! ## A050459.P11102900798016837733

`A051000(n+1)-2*A050454(n+1)`
-/

namespace A050459.P11102900798016837733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051000 (n + 1) - 2 * A050454 (n + 1)

end

end A050459.P11102900798016837733

namespace A050459

/-- `A051000(n+1)-2*A050454(n+1)` -/
def P11102900798016837733.Spec : Prop :=
  ∀ n, P11102900798016837733.a n = A050459 (n + 1)

theorem P11102900798016837733.correct : P11102900798016837733.Spec := by
  intro n
  simp only [A050459, Nat.add_sub_cancel, A050459.P11102900798016837733.a, A050459.P9123758851676713191.a, A050451, A050451.P9220370011251437069.a, A050454, A050454.P6949249148858722665.f1, A050454.P6949249148858722665.a, A051000, A051000.P10741678327637826520.f1, A051000.P10741678327637826520.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000578, A000578.P12162961755414704816.a, A006519, A006519.P10435570611646570274.a, A062828, A062828.P6719252676437091402.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A050459

/-! ## A050459.P6234040289468076362

`A034947(n+1)*A050471((n+1)/2^val(n+1, 2))`
-/

namespace A050459.P6234040289468076362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) * A050471 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A050459.P6234040289468076362

namespace A050459

/-- `A034947(n+1)*A050471((n+1)/2^val(n+1, 2))` -/
def P6234040289468076362.Spec : Prop :=
  ∀ n, P6234040289468076362.a n = A050459 (n + 1)

end A050459

/-! ## A050459.P8091710905251509659

`A034947(n+1)*A050471(A000265(n+1))`
-/

namespace A050459.P8091710905251509659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) * A050471 (A000265 (n + 1)).toNat

end

end A050459.P8091710905251509659

namespace A050459

/-- `A034947(n+1)*A050471(A000265(n+1))` -/
def P8091710905251509659.Spec : Prop :=
  ∀ n, P8091710905251509659.a n = A050459 (n + 1)

end A050459

/-! ## A050459.P762854204948523432

`2*A050451(n+1)-A045823(A025480(n))`
-/

namespace A050459.P762854204948523432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050451 (n + 1) - A045823 (A025480 n).toNat

end

end A050459.P762854204948523432

namespace A050459

/-- `2*A050451(n+1)-A045823(A025480(n))` -/
def P762854204948523432.Spec : Prop :=
  ∀ n, P762854204948523432.a n = A050459 (n + 1)

end A050459

/-! ## A050459.P7118328605995710581

`A045823(A025480(n))-2*A050454(n+1)`
-/

namespace A050459.P7118328605995710581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045823 (A025480 n).toNat - 2 * A050454 (n + 1)

end

end A050459.P7118328605995710581

namespace A050459

/-- `A045823(A025480(n))-2*A050454(n+1)` -/
def P7118328605995710581.Spec : Prop :=
  ∀ n, P7118328605995710581.a n = A050459 (n + 1)

end A050459

/-! ## A050459.P6666305555028014798

`2*A050451(n+1)-A001158(A000265(n+1))`
-/

namespace A050459.P6666305555028014798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050451 (n + 1) - A001158 (A000265 (n + 1)).toNat

end

end A050459.P6666305555028014798

namespace A050459

/-- `2*A050451(n+1)-A001158(A000265(n+1))` -/
def P6666305555028014798.Spec : Prop :=
  ∀ n, P6666305555028014798.a n = A050459 (n + 1)

end A050459

/-! ## A050459.P7980813790728056202

`A001158(A000265(n+1))-2*A050454(n+1)`
-/

namespace A050459.P7980813790728056202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (A000265 (n + 1)).toNat - 2 * A050454 (n + 1)

end

end A050459.P7980813790728056202

namespace A050459

/-- `A001158(A000265(n+1))-2*A050454(n+1)` -/
def P7980813790728056202.Spec : Prop :=
  ∀ n, P7980813790728056202.a n = A050459 (n + 1)

end A050459

/-!
# A050460: a(n) = Sum_{d|n, n/d=1 mod 4} d.

The programs for A050460, the canonical program `A050460.P174083124151891616` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050460 has offset 1).

The definition of A050460 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050460.P5319997695119256934

`A050469(n+1)+A050464(n+1)`
-/

namespace A050460.P5319997695119256934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050469 (n + 1) + A050464 (n + 1)

end

end A050460.P5319997695119256934

namespace A050460

/-- `A050469(n+1)+A050464(n+1)` -/
def P5319997695119256934.Spec : Prop :=
  ∀ n, P5319997695119256934.a n = A050460 (n + 1)

end A050460

/-! ## A050460.P10989252618023648374

`A002131(n+1)-A050464(n+1)`
-/

namespace A050460.P10989252618023648374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (n + 1) - A050464 (n + 1)

end

end A050460.P10989252618023648374

namespace A050460

/-- `A002131(n+1)-A050464(n+1)` -/
def P10989252618023648374.Spec : Prop :=
  ∀ n, P10989252618023648374.a n = A050460 (n + 1)

end A050460

/-! ## A050460.P174083124151891616

`(A002131(n+1)+A050469(n+1))/2`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A050460

/-- `(A002131(n+1)+A050469(n+1))/2` -/
def P174083124151891616.Spec : Prop :=
  ∀ n, P174083124151891616.a n = (A050460 (n + 1) : ℚ)

end A050460

/-! ## A050460.P6033246684003801496

`∑{d}[n+1, #*A121262((n+1)/#-1)]`
-/

namespace A050460.P6033246684003801496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A121262 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A050460.P6033246684003801496

namespace A050460

/-- `∑{d}[n+1, #*A121262((n+1)/#-1)]` -/
def P6033246684003801496.Spec : Prop :=
  ∀ n, P6033246684003801496.a n = A050460 (n + 1)

end A050460

/-! ## A050460.P13727826087600519752

`∑{d}[n+1, A000010(#)*A001826((n+1)/#)]`
-/

namespace A050460.P13727826087600519752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A001826 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050460.P13727826087600519752

namespace A050460

/-- `∑{d}[n+1, A000010(#)*A001826((n+1)/#)]` -/
def P13727826087600519752.Spec : Prop :=
  ∀ n, P13727826087600519752.a n = A050460 (n + 1)

end A050460

/-! ## A050460.P12572462811098017293

`A000593(n+1)*A006519(n+1)-A050464(n+1)`
-/

namespace A050460.P12572462811098017293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) * A006519 (n + 1) - A050464 (n + 1)

end

end A050460.P12572462811098017293

namespace A050460

/-- `A000593(n+1)*A006519(n+1)-A050464(n+1)` -/
def P12572462811098017293.Spec : Prop :=
  ∀ n, P12572462811098017293.a n = A050460 (n + 1)

end A050460

/-! ## A050460.P15746143479148222426

`A050469(n+1)+A001281(A002131(n+1)-A050469(n+1))`
-/

namespace A050460.P15746143479148222426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050469 (n + 1) + A001281 (A002131 (n + 1) - A050469 (n + 1)).toNat

end

end A050460.P15746143479148222426

namespace A050460

/-- `A050469(n+1)+A001281(A002131(n+1)-A050469(n+1))` -/
def P15746143479148222426.Spec : Prop :=
  ∀ n, P15746143479148222426.a n = A050460 (n + 1)

end A050460

/-! ## A050460.P18251264719707149891

`A050469(n+1)+A004525(A002131(n+1)-A050469(n+1))`
-/

namespace A050460.P18251264719707149891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050469 (n + 1) + A004525 (A002131 (n + 1) - A050469 (n + 1)).toNat

end

end A050460.P18251264719707149891

namespace A050460

/-- `A050469(n+1)+A004525(A002131(n+1)-A050469(n+1))` -/
def P18251264719707149891.Spec : Prop :=
  ∀ n, P18251264719707149891.a n = A050460 (n + 1)

end A050460

/-! ## A050460.P13881130765301151764

`A064680(A002131(n+1)-A050469(n+1))+A050469(n+1)`
-/

namespace A050460.P13881130765301151764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A002131 (n + 1) - A050469 (n + 1)).toNat + A050469 (n + 1)

end

end A050460.P13881130765301151764

namespace A050460

/-- `A064680(A002131(n+1)-A050469(n+1))+A050469(n+1)` -/
def P13881130765301151764.Spec : Prop :=
  ∀ n, P13881130765301151764.a n = A050460 (n + 1)

end A050460

/-! ## A050460.P8084661842115101491

`A327095(2*(n+1))-A050464(n+1)`
-/

namespace A050460.P8084661842115101491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327095 (2 * (n + 1)) - A050464 (n + 1)

end

end A050460.P8084661842115101491

namespace A050460

/-- `A327095(2*(n+1))-A050464(n+1)` -/
def P8084661842115101491.Spec : Prop :=
  ∀ n, P8084661842115101491.a n = A050460 (n + 1)

end A050460

/-! ## A050460.P1597567206807078039

`A001281(A050469(n+1)+A002131(n+1))`
-/

namespace A050460.P1597567206807078039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A050469 (n + 1) + A002131 (n + 1)).toNat

end

end A050460.P1597567206807078039

namespace A050460

/-- `A001281(A050469(n+1)+A002131(n+1))` -/
def P1597567206807078039.Spec : Prop :=
  ∀ n, P1597567206807078039.a n = A050460 (n + 1)

end A050460

/-! ## A050460.P18247032013268670519

`A004525(A050469(n+1)+A002131(n+1))`
-/

namespace A050460.P18247032013268670519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A050469 (n + 1) + A002131 (n + 1)).toNat

end

end A050460.P18247032013268670519

namespace A050460

/-- `A004525(A050469(n+1)+A002131(n+1))` -/
def P18247032013268670519.Spec : Prop :=
  ∀ n, P18247032013268670519.a n = A050460 (n + 1)

end A050460

/-! ## A050460.P26664543746374904

`A064680(A050469(n+1)+A002131(n+1))`
-/

namespace A050460.P26664543746374904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A050469 (n + 1) + A002131 (n + 1)).toNat

end

end A050460.P26664543746374904

namespace A050460

/-- `A064680(A050469(n+1)+A002131(n+1))` -/
def P26664543746374904.Spec : Prop :=
  ∀ n, P26664543746374904.a n = A050460 (n + 1)

end A050460

/-!
# A050461: a(n) = Sum_{d|n, n/d=1 mod 4} d^2.

The programs for A050461, the canonical program `A050461.P11889493554546360671` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050461 has offset 1).

The definition of A050461 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076577, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A050461.P8492635839699756591

`A050470(n+1)+A050465(n+1)`
-/

namespace A050461.P8492635839699756591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050470 (n + 1) + A050465 (n + 1)

end

end A050461.P8492635839699756591

namespace A050461

/-- `A050470(n+1)+A050465(n+1)` -/
def P8492635839699756591.Spec : Prop :=
  ∀ n, P8492635839699756591.a n = A050461 (n + 1)

end A050461

/-! ## A050461.P13443956841299392547

`A076577(n+1)-A050465(n+1)`
-/

namespace A050461.P13443956841299392547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076577 (n + 1) - A050465 (n + 1)

end

end A050461.P13443956841299392547

namespace A050461

/-- `A076577(n+1)-A050465(n+1)` -/
def P13443956841299392547.Spec : Prop :=
  ∀ n, P13443956841299392547.a n = A050461 (n + 1)

end A050461

/-! ## A050461.P11889493554546360671

`(A050470(n+1)+A076577(n+1))/2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A050461

/-- `(A050470(n+1)+A076577(n+1))/2` -/
def P11889493554546360671.Spec : Prop :=
  ∀ n, P11889493554546360671.a n = (A050461 (n + 1) : ℚ)

end A050461

/-! ## A050461.P17266507424475393345

`A050465(n+1)+abs(A138501(n+1))`
-/

namespace A050461.P17266507424475393345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050465 (n + 1) + |A138501 (n + 1)|

end

end A050461.P17266507424475393345

namespace A050461

/-- `A050465(n+1)+abs(A138501(n+1))` -/
def P17266507424475393345.Spec : Prop :=
  ∀ n, P17266507424475393345.a n = A050461 (n + 1)

end A050461

/-! ## A050461.P10584529556640657063

`∑{d}[n+1, A001826(#)*A007434((n+1)/#)]`
-/

namespace A050461.P10584529556640657063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001826 d * A007434 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050461.P10584529556640657063

namespace A050461

/-- `∑{d}[n+1, A001826(#)*A007434((n+1)/#)]` -/
def P10584529556640657063.Spec : Prop :=
  ∀ n, P10584529556640657063.a n = A050461 (n + 1)

end A050461

/-! ## A050461.P18299333690249181583

`∑{d}[n+1, A002618(#)*A050460((n+1)/#)]`
-/

namespace A050461.P18299333690249181583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A050460 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050461.P18299333690249181583

namespace A050461

/-- `∑{d}[n+1, A002618(#)*A050460((n+1)/#)]` -/
def P18299333690249181583.Spec : Prop :=
  ∀ n, P18299333690249181583.a n = A050461 (n + 1)

end A050461

/-! ## A050461.P2299932633445471478

`A050465(n+1)+lcm(A000034(n), A138501(n+1))`
-/

namespace A050461.P2299932633445471478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050465 (n + 1) + (Int.lcm (A000034 n) (A138501 (n + 1)) : ℤ)

end

end A050461.P2299932633445471478

namespace A050461

/-- `A050465(n+1)+lcm(A000034(n), A138501(n+1))` -/
def P2299932633445471478.Spec : Prop :=
  ∀ n, P2299932633445471478.a n = A050461 (n + 1)

end A050461

/-! ## A050461.P10760161305876512293

`A050470(n+1)+A014682(A076577(n+1)-A050470(n+1))`
-/

namespace A050461.P10760161305876512293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050470 (n + 1) + A014682 (A076577 (n + 1) - A050470 (n + 1)).toNat

end

end A050461.P10760161305876512293

namespace A050461

/-- `A050470(n+1)+A014682(A076577(n+1)-A050470(n+1))` -/
def P10760161305876512293.Spec : Prop :=
  ∀ n, P10760161305876512293.a n = A050461 (n + 1)

end A050461

/-! ## A050461.P1733867479751762084

`A014682(A076577(n+1)+A050470(n+1))`
-/

namespace A050461.P1733867479751762084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A076577 (n + 1) + A050470 (n + 1)).toNat

end

end A050461.P1733867479751762084

namespace A050461

/-- `A014682(A076577(n+1)+A050470(n+1))` -/
def P1733867479751762084.Spec : Prop :=
  ∀ n, P1733867479751762084.a n = A050461 (n + 1)

end A050461

/-! ## A050461.P9028778917651634316

`A050470(n+1)+A025480(A076577(n+1)-A050470(n+1))`
-/

namespace A050461.P9028778917651634316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050470 (n + 1) + A025480 (A076577 (n + 1) - A050470 (n + 1)).toNat

end

end A050461.P9028778917651634316

namespace A050461

/-- `A050470(n+1)+A025480(A076577(n+1)-A050470(n+1))` -/
def P9028778917651634316.Spec : Prop :=
  ∀ n, P9028778917651634316.a n = A050461 (n + 1)

end A050461

/-!
# A050462: a(n) = Sum_{d|n, n/d=1 mod 4} d^3.

The programs for A050462, the canonical program `A050462.P11134913657141062416` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050462 has offset 1).

The definition of A050462 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050466, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A050462.P11134913657141062416

`A050471(n+1)+A050466(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A050462

/-- `A050471(n+1)+A050466(n+1)` -/
def P11134913657141062416.Spec : Prop :=
  ∀ n, P11134913657141062416.a n = A050462 (n + 1)

theorem P11134913657141062416.correct : P11134913657141062416.Spec := by
  intro n
  simp only [A050462, Nat.add_sub_cancel]

end A050462

/-! ## A050462.P11707082191987388797

`A007331(n+1)-A050466(n+1)`
-/

namespace A050462.P11707082191987388797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007331 (n + 1) - A050466 (n + 1)

end

end A050462.P11707082191987388797

namespace A050462

/-- `A007331(n+1)-A050466(n+1)` -/
def P11707082191987388797.Spec : Prop :=
  ∀ n, P11707082191987388797.a n = A050462 (n + 1)

end A050462

/-! ## A050462.P14825076918346362726

`(A007331(n+1)+A050471(n+1))/2`
-/

namespace A050462.P14825076918346362726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007331 (n + 1) + A050471 (n + 1) : ℚ) / 2

end

end A050462.P14825076918346362726

namespace A050462

/-- `(A007331(n+1)+A050471(n+1))/2` -/
def P14825076918346362726.Spec : Prop :=
  ∀ n, P14825076918346362726.a n = (A050462 (n + 1) : ℚ)

end A050462

/-! ## A050462.P8137358990977068629

`∑{d}[n+1, A000056(#)*A050460((n+1)/#)]`
-/

namespace A050462.P8137358990977068629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000056 d * A050460 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050462.P8137358990977068629

namespace A050462

/-- `∑{d}[n+1, A000056(#)*A050460((n+1)/#)]` -/
def P8137358990977068629.Spec : Prop :=
  ∀ n, P8137358990977068629.a n = A050462 (n + 1)

end A050462

/-! ## A050462.P6952423217921623846

`∑{d}[n+1, A001826(#)*A059376((n+1)/#)]`
-/

namespace A050462.P6952423217921623846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001826 d * A059376 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050462.P6952423217921623846

namespace A050462

/-- `∑{d}[n+1, A001826(#)*A059376((n+1)/#)]` -/
def P6952423217921623846.Spec : Prop :=
  ∀ n, P6952423217921623846.a n = A050462 (n + 1)

end A050462

/-! ## A050462.P17091743937616300989

`∑{d}[n+1, A050461(#)*A053191((n+1)/#)]`
-/

namespace A050462.P17091743937616300989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A050461 d * A053191 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050462.P17091743937616300989

namespace A050462

/-- `∑{d}[n+1, A050461(#)*A053191((n+1)/#)]` -/
def P17091743937616300989.Spec : Prop :=
  ∀ n, P17091743937616300989.a n = A050462 (n + 1)

end A050462

/-!
# A050463: a(n) = Sum_{d|n, n/d=1 mod 4} d^4.

The programs for A050463, the canonical program `A050463.P239937787475028521` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050463 has offset 1).

The definition of A050463 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A285989, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A050463.P8490343933617840382

`A050468(n+1)+A050467(n+1)`
-/

namespace A050463.P8490343933617840382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050468 (n + 1) + A050467 (n + 1)

end

end A050463.P8490343933617840382

namespace A050463

/-- `A050468(n+1)+A050467(n+1)` -/
def P8490343933617840382.Spec : Prop :=
  ∀ n, P8490343933617840382.a n = A050463 (n + 1)

end A050463

/-! ## A050463.P6190527863419941457

`A285989(n+1)-A050467(n+1)`
-/

namespace A050463.P6190527863419941457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285989 (n + 1) - A050467 (n + 1)

end

end A050463.P6190527863419941457

namespace A050463

/-- `A285989(n+1)-A050467(n+1)` -/
def P6190527863419941457.Spec : Prop :=
  ∀ n, P6190527863419941457.a n = A050463 (n + 1)

end A050463

/-! ## A050463.P239937787475028521

`(A050468(n+1)+A285989(n+1))/2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A050463

/-- `(A050468(n+1)+A285989(n+1))/2` -/
def P239937787475028521.Spec : Prop :=
  ∀ n, P239937787475028521.a n = (A050463 (n + 1) : ℚ)

end A050463

/-! ## A050463.P13407162435960398958

`∑{d}[n+1, A001826(#)*A059377((n+1)/#)]`
-/

namespace A050463.P13407162435960398958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001826 d * A059377 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050463.P13407162435960398958

namespace A050463

/-- `∑{d}[n+1, A001826(#)*A059377((n+1)/#)]` -/
def P13407162435960398958.Spec : Prop :=
  ∀ n, P13407162435960398958.a n = A050463 (n + 1)

end A050463

/-! ## A050463.P5098760393720501449

`∑{d}[n+1, A050462(#)*A189393((n+1)/#)]`
-/

namespace A050463.P5098760393720501449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A050462 d * A189393 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050463.P5098760393720501449

namespace A050463

/-- `∑{d}[n+1, A050462(#)*A189393((n+1)/#)]` -/
def P5098760393720501449.Spec : Prop :=
  ∀ n, P5098760393720501449.a n = A050463 (n + 1)

end A050463

/-! ## A050463.P14752428162006310834

`∑{d}[n+1, A050461(#)*A379833((n+1)/#)]`
-/

namespace A050463.P14752428162006310834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A050461 d * A379833 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050463.P14752428162006310834

namespace A050463

/-- `∑{d}[n+1, A050461(#)*A379833((n+1)/#)]` -/
def P14752428162006310834.Spec : Prop :=
  ∀ n, P14752428162006310834.a n = A050463 (n + 1)

end A050463

/-! ## A050463.P17260906858426705714

`A050468(n+1)+∑{d}[n+1, A001842(#)*A059377((n+1)/#)]`
-/

namespace A050463.P17260906858426705714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050468 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A001842 d * A059377 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050463.P17260906858426705714

namespace A050463

/-- `A050468(n+1)+∑{d}[n+1, A001842(#)*A059377((n+1)/#)]` -/
def P17260906858426705714.Spec : Prop :=
  ∀ n, P17260906858426705714.a n = A050463 (n + 1)

end A050463

/-! ## A050463.P11675893467036983754

`A050468(n+1)+∑{d}[n+1, A050466(#)*A189393((n+1)/#)]`
-/

namespace A050463.P11675893467036983754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050468 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A050466 d * A189393 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050463.P11675893467036983754

namespace A050463

/-- `A050468(n+1)+∑{d}[n+1, A050466(#)*A189393((n+1)/#)]` -/
def P11675893467036983754.Spec : Prop :=
  ∀ n, P11675893467036983754.a n = A050463 (n + 1)

end A050463

/-! ## A050463.P17505067415060299689

`A050468(n+1)+∑{d}[n+1, A038189(#)*A309336((n+1)/#)]`
-/

namespace A050463.P17505067415060299689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050468 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A038189 d * A309336 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050463.P17505067415060299689

namespace A050463

/-- `A050468(n+1)+∑{d}[n+1, A038189(#)*A309336((n+1)/#)]` -/
def P17505067415060299689.Spec : Prop :=
  ∀ n, P17505067415060299689.a n = A050463 (n + 1)

end A050463

/-!
# A050464: a(n) = Sum_{d|n, n/d=3 mod 4} d.

The programs for A050464, the canonical program `A050464.P7511366373007771745` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050464 has offset 1).

The definition of A050464 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050464.P7511366373007771745

`A002131(n+1)-A050460(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A050464

/-- `A002131(n+1)-A050460(n+1)` -/
def P7511366373007771745.Spec : Prop :=
  ∀ n, P7511366373007771745.a n = A050464 (n + 1)

theorem P7511366373007771745.correct : P7511366373007771745.Spec := by
  intro n
  simp only [A050464, Nat.add_sub_cancel]

end A050464

/-! ## A050464.P11516405445497089229

`A050460(n+1)-A050469(n+1)`
-/

namespace A050464.P11516405445497089229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050460 (n + 1) - A050469 (n + 1)

end

end A050464.P11516405445497089229

namespace A050464

/-- `A050460(n+1)-A050469(n+1)` -/
def P11516405445497089229.Spec : Prop :=
  ∀ n, P11516405445497089229.a n = A050464 (n + 1)

end A050464

/-! ## A050464.P4891468127465123337

`(A002131(n+1)-A050469(n+1))/2`
-/

namespace A050464.P4891468127465123337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002131 (n + 1) - A050469 (n + 1) : ℚ) / 2

end

end A050464.P4891468127465123337

namespace A050464

/-- `(A002131(n+1)-A050469(n+1))/2` -/
def P4891468127465123337.Spec : Prop :=
  ∀ n, P4891468127465123337.a n = (A050464 (n + 1) : ℚ)

end A050464

/-! ## A050464.P13750580480295724143

`abs(A186690(n+1))-A050460(n+1)`
-/

namespace A050464.P13750580480295724143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A186690 (n + 1)| - A050460 (n + 1)

end

end A050464.P13750580480295724143

namespace A050464

/-- `abs(A186690(n+1))-A050460(n+1)` -/
def P13750580480295724143.Spec : Prop :=
  ∀ n, P13750580480295724143.a n = A050464 (n + 1)

end A050464

/-! ## A050464.P15397078489159935569

`A002131(A000027(n+1))%A050460(n+1)`
-/

namespace A050464.P15397078489159935569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002131 (A000027 (n + 1)).toNat) (A050460 (n + 1))

end

end A050464.P15397078489159935569

namespace A050464

/-- `A002131(A000027(n+1))%A050460(n+1)` -/
def P15397078489159935569.Spec : Prop :=
  ∀ n, P15397078489159935569.a n = A050464 (n + 1)

end A050464

/-! ## A050464.P16506359733680752761

`A001281(A002131(n+1)-A050469(n+1))`
-/

namespace A050464.P16506359733680752761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A002131 (n + 1) - A050469 (n + 1)).toNat

end

end A050464.P16506359733680752761

namespace A050464

/-- `A001281(A002131(n+1)-A050469(n+1))` -/
def P16506359733680752761.Spec : Prop :=
  ∀ n, P16506359733680752761.a n = A050464 (n + 1)

end A050464

/-! ## A050464.P12155986332486338941

`A004525(A002131(n+1)-A050469(n+1))`
-/

namespace A050464.P12155986332486338941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A002131 (n + 1) - A050469 (n + 1)).toNat

end

end A050464.P12155986332486338941

namespace A050464

/-- `A004525(A002131(n+1)-A050469(n+1))` -/
def P12155986332486338941.Spec : Prop :=
  ∀ n, P12155986332486338941.a n = A050464 (n + 1)

end A050464

/-! ## A050464.P5218702713612480862

`A064680(A002131(n+1)-A050469(n+1))`
-/

namespace A050464.P5218702713612480862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A002131 (n + 1) - A050469 (n + 1)).toNat

end

end A050464.P5218702713612480862

namespace A050464

/-- `A064680(A002131(n+1)-A050469(n+1))` -/
def P5218702713612480862.Spec : Prop :=
  ∀ n, P5218702713612480862.a n = A050464 (n + 1)

end A050464

/-! ## A050464.P11815422036376250739

`A327095(2*(n+1))-A050460(2*(n+1))/2`
-/

namespace A050464.P11815422036376250739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327095 (2 * (n + 1)) : ℚ) - (A050460 (2 * (n + 1)) : ℚ) / 2

end

end A050464.P11815422036376250739

namespace A050464

/-- `A327095(2*(n+1))-A050460(2*(n+1))/2` -/
def P11815422036376250739.Spec : Prop :=
  ∀ n, P11815422036376250739.a n = (A050464 (n + 1) : ℚ)

end A050464

/-! ## A050464.P14166321014881737390

`A327095(A103517(n))-A050460(n+1)`
-/

namespace A050464.P14166321014881737390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327095 (A103517 n).toNat - A050460 (n + 1)

end

end A050464.P14166321014881737390

namespace A050464

/-- `A327095(A103517(n))-A050460(n+1)` -/
def P14166321014881737390.Spec : Prop :=
  ∀ n, P14166321014881737390.a n = A050464 (n + 1)

end A050464

/-!
# A050465: a(n) = Sum_{d|n, n/d=3 mod 4} d^2.

The programs for A050465, the canonical program `A050465.P4499682438677849917` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050465 has offset 1).

The definition of A050465 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050461, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A050465.P4499682438677849917

`A050461(n+1)-A050470(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A050465

/-- `A050461(n+1)-A050470(n+1)` -/
def P4499682438677849917.Spec : Prop :=
  ∀ n, P4499682438677849917.a n = A050465 (n + 1)

theorem P4499682438677849917.correct : P4499682438677849917.Spec := by
  intro n
  simp only [A050465, Nat.add_sub_cancel]

end A050465

/-! ## A050465.P12624938254800808686

`A076577(n+1)-A050461(n+1)`
-/

namespace A050465.P12624938254800808686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076577 (n + 1) - A050461 (n + 1)

end

end A050465.P12624938254800808686

namespace A050465

/-- `A076577(n+1)-A050461(n+1)` -/
def P12624938254800808686.Spec : Prop :=
  ∀ n, P12624938254800808686.a n = A050465 (n + 1)

end A050465

/-! ## A050465.P3628227852211221345

`(A076577(n+1)-A050470(n+1))/2`
-/

namespace A050465.P3628227852211221345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076577 (n + 1) - A050470 (n + 1) : ℚ) / 2

end

end A050465.P3628227852211221345

namespace A050465

/-- `(A076577(n+1)-A050470(n+1))/2` -/
def P3628227852211221345.Spec : Prop :=
  ∀ n, P3628227852211221345.a n = (A050465 (n + 1) : ℚ)

end A050465

/-! ## A050465.P3475985116234407270

`∑{d}[n+1, A001842(#)*A007434((n+1)/#)]`
-/

namespace A050465.P3475985116234407270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001842 d * A007434 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050465.P3475985116234407270

namespace A050465

/-- `∑{d}[n+1, A001842(#)*A007434((n+1)/#)]` -/
def P3475985116234407270.Spec : Prop :=
  ∀ n, P3475985116234407270.a n = A050465 (n + 1)

end A050465

/-! ## A050465.P16983747569209127232

`∑{d}[n+1, A002618(#)*A050464((n+1)/#)]`
-/

namespace A050465.P16983747569209127232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A050464 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050465.P16983747569209127232

namespace A050465

/-- `∑{d}[n+1, A002618(#)*A050464((n+1)/#)]` -/
def P16983747569209127232.Spec : Prop :=
  ∀ n, P16983747569209127232.a n = A050465 (n + 1)

end A050465

/-! ## A050465.P7394313666540459640

`∑{d}[n+1, A038189(#)*A308422((n+1)/#)]`
-/

namespace A050465.P7394313666540459640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038189 d * A308422 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050465.P7394313666540459640

namespace A050465

/-- `∑{d}[n+1, A038189(#)*A308422((n+1)/#)]` -/
def P7394313666540459640.Spec : Prop :=
  ∀ n, P7394313666540459640.a n = A050465 (n + 1)

end A050465

/-! ## A050465.P15058148602690066452

`A050461(A000027(n+1))%A050470(n+1)`
-/

namespace A050465.P15058148602690066452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050461 (A000027 (n + 1)).toNat) (A050470 (n + 1))

end

end A050465.P15058148602690066452

namespace A050465

/-- `A050461(A000027(n+1))%A050470(n+1)` -/
def P15058148602690066452.Spec : Prop :=
  ∀ n, P15058148602690066452.a n = A050465 (n + 1)

end A050465

/-! ## A050465.P5467612221801807287

`A014682(A076577(n+1)-A050470(n+1))`
-/

namespace A050465.P5467612221801807287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A076577 (n + 1) - A050470 (n + 1)).toNat

end

end A050465.P5467612221801807287

namespace A050465

/-- `A014682(A076577(n+1)-A050470(n+1))` -/
def P5467612221801807287.Spec : Prop :=
  ∀ n, P5467612221801807287.a n = A050465 (n + 1)

end A050465

/-! ## A050465.P3530757821879257545

`A025480(A076577(n+1)-A050470(n+1))`
-/

namespace A050465.P3530757821879257545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A076577 (n + 1) - A050470 (n + 1)).toNat

end

end A050465.P3530757821879257545

namespace A050465

/-- `A025480(A076577(n+1)-A050470(n+1))` -/
def P3530757821879257545.Spec : Prop :=
  ∀ n, P3530757821879257545.a n = A050465 (n + 1)

end A050465

/-!
# A050466: a(n) = Sum_{d|n, n/d=3 mod 4} d^3.

The programs for A050466, the canonical program `A050466.P15533784543900477254` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050466 has offset 1).

The definition of A050466 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007331, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A050466.P12929077033267465407

`A007331(n+1)-A050462(n+1)`
-/

namespace A050466.P12929077033267465407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007331 (n + 1) - A050462 (n + 1)

end

end A050466.P12929077033267465407

namespace A050466

/-- `A007331(n+1)-A050462(n+1)` -/
def P12929077033267465407.Spec : Prop :=
  ∀ n, P12929077033267465407.a n = A050466 (n + 1)

end A050466

/-! ## A050466.P17816136072138325283

`A050462(n+1)-A050471(n+1)`
-/

namespace A050466.P17816136072138325283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050462 (n + 1) - A050471 (n + 1)

end

end A050466.P17816136072138325283

namespace A050466

/-- `A050462(n+1)-A050471(n+1)` -/
def P17816136072138325283.Spec : Prop :=
  ∀ n, P17816136072138325283.a n = A050466 (n + 1)

end A050466

/-! ## A050466.P15533784543900477254

`(A007331(n+1)-A050471(n+1))/2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A050466

/-- `(A007331(n+1)-A050471(n+1))/2` -/
def P15533784543900477254.Spec : Prop :=
  ∀ n, P15533784543900477254.a n = (A050466 (n + 1) : ℚ)

end A050466

/-! ## A050466.P17326156456146578860

`∑{d}[n+1, A000056(#)*A050464((n+1)/#)]`
-/

namespace A050466.P17326156456146578860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000056 d * A050464 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050466.P17326156456146578860

namespace A050466

/-- `∑{d}[n+1, A000056(#)*A050464((n+1)/#)]` -/
def P17326156456146578860.Spec : Prop :=
  ∀ n, P17326156456146578860.a n = A050466 (n + 1)

end A050466

/-! ## A050466.P10592661081371544473

`∑{d}[n+1, A001842(#)*A059376((n+1)/#)]`
-/

namespace A050466.P10592661081371544473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001842 d * A059376 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050466.P10592661081371544473

namespace A050466

/-- `∑{d}[n+1, A001842(#)*A059376((n+1)/#)]` -/
def P10592661081371544473.Spec : Prop :=
  ∀ n, P10592661081371544473.a n = A050466 (n + 1)

end A050466

/-! ## A050466.P8182851928751659064

`∑{d}[n+1, A050465(#)*A053191((n+1)/#)]`
-/

namespace A050466.P8182851928751659064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A050465 d * A053191 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050466.P8182851928751659064

namespace A050466

/-- `∑{d}[n+1, A050465(#)*A053191((n+1)/#)]` -/
def P8182851928751659064.Spec : Prop :=
  ∀ n, P8182851928751659064.a n = A050466 (n + 1)

end A050466

/-! ## A050466.P13366017957038375805

`∑{d}[n+1, A038189(#)*A309335((n+1)/#)]`
-/

namespace A050466.P13366017957038375805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038189 d * A309335 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050466.P13366017957038375805

namespace A050466

/-- `∑{d}[n+1, A038189(#)*A309335((n+1)/#)]` -/
def P13366017957038375805.Spec : Prop :=
  ∀ n, P13366017957038375805.a n = A050466 (n + 1)

end A050466

/-! ## A050466.P16163640875940333809

`A050462(A000027(n+1))%A050471(n+1)`
-/

namespace A050466.P16163640875940333809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050462 (A000027 (n + 1)).toNat) (A050471 (n + 1))

end

end A050466.P16163640875940333809

namespace A050466

/-- `A050462(A000027(n+1))%A050471(n+1)` -/
def P16163640875940333809.Spec : Prop :=
  ∀ n, P16163640875940333809.a n = A050466 (n + 1)

end A050466

/-!
# A050467: a(n) = Sum_{d|n, n/d=3 mod 4} d^4.

The programs for A050467, the canonical program `A050467.P9462411974454207442` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050467 has offset 1).

The definition of A050467 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050463, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A050467.P9462411974454207442

`A050463(n+1)-A050468(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A050467

/-- `A050463(n+1)-A050468(n+1)` -/
def P9462411974454207442.Spec : Prop :=
  ∀ n, P9462411974454207442.a n = A050467 (n + 1)

theorem P9462411974454207442.correct : P9462411974454207442.Spec := by
  intro n
  simp only [A050467, Nat.add_sub_cancel]

end A050467

/-! ## A050467.P3197983788111504250

`A285989(n+1)-A050463(n+1)`
-/

namespace A050467.P3197983788111504250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285989 (n + 1) - A050463 (n + 1)

end

end A050467.P3197983788111504250

namespace A050467

/-- `A285989(n+1)-A050463(n+1)` -/
def P3197983788111504250.Spec : Prop :=
  ∀ n, P3197983788111504250.a n = A050467 (n + 1)

end A050467

/-! ## A050467.P3199680938132380893

`(A285989(n+1)-A050468(n+1))/2`
-/

namespace A050467.P3199680938132380893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285989 (n + 1) - A050468 (n + 1) : ℚ) / 2

end

end A050467.P3199680938132380893

namespace A050467

/-- `(A285989(n+1)-A050468(n+1))/2` -/
def P3199680938132380893.Spec : Prop :=
  ∀ n, P3199680938132380893.a n = (A050467 (n + 1) : ℚ)

end A050467

/-! ## A050467.P5650740706338116116

`∑{d}[n+1, A001842(#)*A059377((n+1)/#)]`
-/

namespace A050467.P5650740706338116116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001842 d * A059377 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050467.P5650740706338116116

namespace A050467

/-- `∑{d}[n+1, A001842(#)*A059377((n+1)/#)]` -/
def P5650740706338116116.Spec : Prop :=
  ∀ n, P5650740706338116116.a n = A050467 (n + 1)

end A050467

/-! ## A050467.P10526542622172596654

`∑{d}[n+1, A050466(#)*A189393((n+1)/#)]`
-/

namespace A050467.P10526542622172596654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A050466 d * A189393 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050467.P10526542622172596654

namespace A050467

/-- `∑{d}[n+1, A050466(#)*A189393((n+1)/#)]` -/
def P10526542622172596654.Spec : Prop :=
  ∀ n, P10526542622172596654.a n = A050467 (n + 1)

end A050467

/-! ## A050467.P420581105573074192

`∑{d}[n+1, A038189(#)*A309336((n+1)/#)]`
-/

namespace A050467.P420581105573074192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038189 d * A309336 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050467.P420581105573074192

namespace A050467

/-- `∑{d}[n+1, A038189(#)*A309336((n+1)/#)]` -/
def P420581105573074192.Spec : Prop :=
  ∀ n, P420581105573074192.a n = A050467 (n + 1)

end A050467

/-! ## A050467.P582529167928593636

`∑{d}[n+1, A050465(#)*A379833((n+1)/#)]`
-/

namespace A050467.P582529167928593636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A050465 d * A379833 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050467.P582529167928593636

namespace A050467

/-- `∑{d}[n+1, A050465(#)*A379833((n+1)/#)]` -/
def P582529167928593636.Spec : Prop :=
  ∀ n, P582529167928593636.a n = A050467 (n + 1)

end A050467

/-! ## A050467.P7491432064066760456

`A050463(n+1)-∑{d}[n+1, A002654(#)*A059377((n+1)/#)]`
-/

namespace A050467.P7491432064066760456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050463 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A002654 d * A059377 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050467.P7491432064066760456

namespace A050467

/-- `A050463(n+1)-∑{d}[n+1, A002654(#)*A059377((n+1)/#)]` -/
def P7491432064066760456.Spec : Prop :=
  ∀ n, P7491432064066760456.a n = A050467 (n + 1)

end A050467

/-!
# A050468: a(n) = Sum_{d|n, n/d=1 mod 4} d^4 - Sum_{d|n, n/d=3 mod 4} d^4.

The programs for A050468, the canonical program `A050468.P13445857420288401920` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050468 has offset 1).

The definition of A050468 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050468.P13445857420288401920

`∑{d}[n+1, ((n+1)/#)^4*sin(#*π/2)]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A050468

/-- `∑{d}[n+1, ((n+1)/#)^4*sin(#*π/2)]` -/
def P13445857420288401920.Spec : Prop :=
  ∀ n, P13445857420288401920.a n = (A050468 (n + 1) : ℝ)

end A050468

/-! ## A050468.P14351730281752908144

`A050463(n+1)-A050467(n+1)`
-/

namespace A050468.P14351730281752908144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050463 (n + 1) - A050467 (n + 1)

end

end A050468.P14351730281752908144

namespace A050468

/-- `A050463(n+1)-A050467(n+1)` -/
def P14351730281752908144.Spec : Prop :=
  ∀ n, P14351730281752908144.a n = A050468 (n + 1)

end A050468

/-! ## A050468.P11011477730524257504

`∑{d}[n+1, A002654(#)*A059377((n+1)/#)]`
-/

namespace A050468.P11011477730524257504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002654 d * A059377 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050468.P11011477730524257504

namespace A050468

/-- `∑{d}[n+1, A002654(#)*A059377((n+1)/#)]` -/
def P11011477730524257504.Spec : Prop :=
  ∀ n, P11011477730524257504.a n = A050468 (n + 1)

end A050468

/-! ## A050468.P2359137629173077335

`∑{d}[n+1, A050471(#)*A189393((n+1)/#)]`
-/

namespace A050468.P2359137629173077335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A050471 d * A189393 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050468.P2359137629173077335

namespace A050468

/-- `∑{d}[n+1, A050471(#)*A189393((n+1)/#)]` -/
def P2359137629173077335.Spec : Prop :=
  ∀ n, P2359137629173077335.a n = A050468 (n + 1)

end A050468

/-! ## A050468.P7922781491061145597

`∑{d}[n+1, A001159(#)*A275966((n+1)/#)]`
-/

namespace A050468.P7922781491061145597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001159 d * A275966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050468.P7922781491061145597

namespace A050468

/-- `∑{d}[n+1, A001159(#)*A275966((n+1)/#)]` -/
def P7922781491061145597.Spec : Prop :=
  ∀ n, P7922781491061145597.a n = A050468 (n + 1)

end A050468

/-! ## A050468.P11488494445754599676

`∑{d}[n+1, A034947(#)*A309336((n+1)/#)]`
-/

namespace A050468.P11488494445754599676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034947 d * A309336 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050468.P11488494445754599676

namespace A050468

/-- `∑{d}[n+1, A034947(#)*A309336((n+1)/#)]` -/
def P11488494445754599676.Spec : Prop :=
  ∀ n, P11488494445754599676.a n = A050468 (n + 1)

end A050468

/-! ## A050468.P4216177298618482333

`∑{d}[n+1, A055975(#)*A309338((n+1)/#)]`
-/

namespace A050468.P4216177298618482333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055975 d * A309338 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050468.P4216177298618482333

namespace A050468

/-- `∑{d}[n+1, A055975(#)*A309338((n+1)/#)]` -/
def P4216177298618482333.Spec : Prop :=
  ∀ n, P4216177298618482333.a n = A050468 (n + 1)

end A050468

/-! ## A050468.P15455444093818191606

`∑{d}[n+1, A050470(#)*A379833((n+1)/#)]`
-/

namespace A050468.P15455444093818191606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A050470 d * A379833 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050468.P15455444093818191606

namespace A050468

/-- `∑{d}[n+1, A050470(#)*A379833((n+1)/#)]` -/
def P15455444093818191606.Spec : Prop :=
  ∀ n, P15455444093818191606.a n = A050468 (n + 1)

end A050468

/-! ## A050468.P2193834866132407828

`∑{d}[n+1, A327123(#)*A372952((n+1)/#)]`
-/

namespace A050468.P2193834866132407828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327123 d * A372952 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050468.P2193834866132407828

namespace A050468

/-- `∑{d}[n+1, A327123(#)*A372952((n+1)/#)]` -/
def P2193834866132407828.Spec : Prop :=
  ∀ n, P2193834866132407828.a n = A050468 (n + 1)

end A050468

/-! ## A050468.P11397671913472366867

`A050463(n+1)+A050463(n+1)-A285989(n+1)`
-/

namespace A050468.P11397671913472366867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050463 (n + 1) + (A050463 (n + 1) - A285989 (n + 1))

end

end A050468.P11397671913472366867

namespace A050468

/-- `A050463(n+1)+A050463(n+1)-A285989(n+1)` -/
def P11397671913472366867.Spec : Prop :=
  ∀ n, P11397671913472366867.a n = A050468 (n + 1)

end A050468

/-! ## A050468.P14792909424461127339

`A285989(n+1)-(A050467(n+1)+A050467(n+1))`
-/

namespace A050468.P14792909424461127339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285989 (n + 1) - (A050467 (n + 1) + A050467 (n + 1))

end

end A050468.P14792909424461127339

namespace A050468

/-- `A285989(n+1)-(A050467(n+1)+A050467(n+1))` -/
def P14792909424461127339.Spec : Prop :=
  ∀ n, P14792909424461127339.a n = A050468 (n + 1)

end A050468

/-!
# A050469: a(n) = Sum_{ d divides n, n/d=1 mod 4} d - Sum_{ d divides n, n/d=3 mod 4} d.

The programs for A050469, the canonical program `A050469.P12545113045599189990` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050469 has offset 1).

The definition of A050469 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050469.P12545113045599189990

`∑{d}[n+1, (n+1)/#*sin(#*π/2)]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A050469

/-- `∑{d}[n+1, (n+1)/#*sin(#*π/2)]` -/
def P12545113045599189990.Spec : Prop :=
  ∀ n, P12545113045599189990.a n = (A050469 (n + 1) : ℝ)

end A050469

/-! ## A050469.P7946067101208535510

`∑{d}[n+1, A327123(#)]`
-/

namespace A050469.P7946067101208535510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327123 d

end

end A050469.P7946067101208535510

namespace A050469

/-- `∑{d}[n+1, A327123(#)]` -/
def P7946067101208535510.Spec : Prop :=
  ∀ n, P7946067101208535510.a n = A050469 (n + 1)

end A050469

/-! ## A050469.P17801092767341696516

`Δ[xor(n, floor(n/2))]*A050457(n+1)`
-/

namespace A050469.P17801092767341696516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A050457 (n + 1)

end

end A050469.P17801092767341696516

namespace A050469

/-- `Δ[xor(n, floor(n/2))]*A050457(n+1)` -/
def P17801092767341696516.Spec : Prop :=
  ∀ n, P17801092767341696516.a n = A050469 (n + 1)

end A050469

/-! ## A050469.P385509557583847013

`∑{d}[n+1, #*A056594((n+1)/#-1)]`
-/

namespace A050469.P385509557583847013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A056594 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A050469.P385509557583847013

namespace A050469

/-- `∑{d}[n+1, #*A056594((n+1)/#-1)]` -/
def P385509557583847013.Spec : Prop :=
  ∀ n, P385509557583847013.a n = A050469 (n + 1)

end A050469

/-! ## A050469.P8960693597933324522

`A050460(n+1)-A050464(n+1)`
-/

namespace A050469.P8960693597933324522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050460 (n + 1) - A050464 (n + 1)

end

end A050469.P8960693597933324522

namespace A050469

/-- `A050460(n+1)-A050464(n+1)` -/
def P8960693597933324522.Spec : Prop :=
  ∀ n, P8960693597933324522.a n = A050469 (n + 1)

end A050469

/-! ## A050469.P12221254596776287270

`A050457(n+1)*A055975(n+1)`
-/

namespace A050469.P12221254596776287270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050457 (n + 1) * A055975 (n + 1)

end

end A050469.P12221254596776287270

namespace A050469

/-- `A050457(n+1)*A055975(n+1)` -/
def P12221254596776287270.Spec : Prop :=
  ∀ n, P12221254596776287270.a n = A050469 (n + 1)

end A050469

/-! ## A050469.P12530423028177034877

`2*A050460(n+1)-A002131(n+1)`
-/

namespace A050469.P12530423028177034877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050460 (n + 1) - A002131 (n + 1)

end

end A050469.P12530423028177034877

namespace A050469

/-- `2*A050460(n+1)-A002131(n+1)` -/
def P12530423028177034877.Spec : Prop :=
  ∀ n, P12530423028177034877.a n = A050469 (n + 1)

end A050469

/-! ## A050469.P6200075061825427073

`A002131(n+1)-2*A050464(n+1)`
-/

namespace A050469.P6200075061825427073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (n + 1) - 2 * A050464 (n + 1)

end

end A050469.P6200075061825427073

namespace A050469

/-- `A002131(n+1)-2*A050464(n+1)` -/
def P6200075061825427073.Spec : Prop :=
  ∀ n, P6200075061825427073.a n = A050469 (n + 1)

end A050469

/-! ## A050469.P9620891436239758633

`2*A050460(n+1)-abs(A186690(n+1))`
-/

namespace A050469.P9620891436239758633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050460 (n + 1) - |A186690 (n + 1)|

end

end A050469.P9620891436239758633

namespace A050469

/-- `2*A050460(n+1)-abs(A186690(n+1))` -/
def P9620891436239758633.Spec : Prop :=
  ∀ n, P9620891436239758633.a n = A050469 (n + 1)

end A050469

/-! ## A050469.P12700695660189611119

`∑{d}[n+1, A000010(#)*A002654((n+1)/#)]`
-/

namespace A050469.P12700695660189611119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A002654 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050469.P12700695660189611119

namespace A050469

/-- `∑{d}[n+1, A000010(#)*A002654((n+1)/#)]` -/
def P12700695660189611119.Spec : Prop :=
  ∀ n, P12700695660189611119.a n = A050469 (n + 1)

end A050469

/-! ## A050469.P850732008834562651

`∑{d}[n+1, A026741(#)*A034947((n+1)/#)]`
-/

namespace A050469.P850732008834562651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A026741 d * A034947 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050469.P850732008834562651

namespace A050469

/-- `∑{d}[n+1, A026741(#)*A034947((n+1)/#)]` -/
def P850732008834562651.Spec : Prop :=
  ∀ n, P850732008834562651.a n = A050469 (n + 1)

end A050469

/-! ## A050469.P11531091335467524263

`∑{d}[n+1, A008442(#)*A062570((n+1)/#)]`
-/

namespace A050469.P11531091335467524263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008442 d * A062570 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050469.P11531091335467524263

namespace A050469

/-- `∑{d}[n+1, A008442(#)*A062570((n+1)/#)]` -/
def P11531091335467524263.Spec : Prop :=
  ∀ n, P11531091335467524263.a n = A050469 (n + 1)

end A050469

/-! ## A050469.P11417457928522492146

`∑{d}[n+1, A000089(#)*A206369((n+1)/#)]`
-/

namespace A050469.P11417457928522492146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000089 d * A206369 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050469.P11417457928522492146

namespace A050469

/-- `∑{d}[n+1, A000089(#)*A206369((n+1)/#)]` -/
def P11417457928522492146.Spec : Prop :=
  ∀ n, P11417457928522492146.a n = A050469 (n + 1)

end A050469

/-! ## A050469.P4097390437641690078

`∑{d}[n+1, A055975(#)*A193356((n+1)/#)]`
-/

namespace A050469.P4097390437641690078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055975 d * A193356 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050469.P4097390437641690078

namespace A050469

/-- `∑{d}[n+1, A055975(#)*A193356((n+1)/#)]` -/
def P4097390437641690078.Spec : Prop :=
  ∀ n, P4097390437641690078.a n = A050469 (n + 1)

end A050469

/-! ## A050469.P7084221731924783081

`∑{d}[n+1, A000203(#)*A275966((n+1)/#)]`
-/

namespace A050469.P7084221731924783081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A275966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050469.P7084221731924783081

namespace A050469

/-- `∑{d}[n+1, A000203(#)*A275966((n+1)/#)]` -/
def P7084221731924783081.Spec : Prop :=
  ∀ n, P7084221731924783081.a n = A050469 (n + 1)

end A050469

/-! ## A050469.P8807836229769303578

`∑{d}[n+1, A113652(#)*A162728((n+1)/#)]`
-/

namespace A050469.P8807836229769303578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A113652 d * A162728 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050469.P8807836229769303578

namespace A050469

/-- `∑{d}[n+1, A113652(#)*A162728((n+1)/#)]` -/
def P8807836229769303578.Spec : Prop :=
  ∀ n, P8807836229769303578.a n = A050469 (n + 1)

end A050469

/-! ## A050469.P5545519606997326608

`∑{d}[n+1, A080512(#)*A209615((n+1)/#)]`
-/

namespace A050469.P5545519606997326608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A080512 d * A209615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050469.P5545519606997326608

namespace A050469

/-- `∑{d}[n+1, A080512(#)*A209615((n+1)/#)]` -/
def P5545519606997326608.Spec : Prop :=
  ∀ n, P5545519606997326608.a n = A050469 (n + 1)

end A050469

/-! ## A050469.P16369624500947919808

`∑{d}[n+1, A113446(#)*A195459((n+1)/#)]`
-/

namespace A050469.P16369624500947919808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A113446 d * A195459 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050469.P16369624500947919808

namespace A050469

/-- `∑{d}[n+1, A113446(#)*A195459((n+1)/#)]` -/
def P16369624500947919808.Spec : Prop :=
  ∀ n, P16369624500947919808.a n = A050469 (n + 1)

end A050469

/-! ## A050469.P10405475204889543287

`∑{d}[n+1, A008683(#)*A327122((n+1)/#)]`
-/

namespace A050469.P10405475204889543287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A327122 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050469.P10405475204889543287

namespace A050469

/-- `∑{d}[n+1, A008683(#)*A327122((n+1)/#)]` -/
def P10405475204889543287.Spec : Prop :=
  ∀ n, P10405475204889543287.a n = A050469 (n + 1)

end A050469

/-! ## A050469.P16381138870608928598

`∑{d}[n+1, A035184(#)*A326305((n+1)/#)]`
-/

namespace A050469.P16381138870608928598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035184 d * A326305 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050469.P16381138870608928598

namespace A050469

/-- `∑{d}[n+1, A035184(#)*A326305((n+1)/#)]` -/
def P16381138870608928598.Spec : Prop :=
  ∀ n, P16381138870608928598.a n = A050469 (n + 1)

end A050469

/-!
# A050470: a(n) = Sum_{d|n, n/d == 1 (mod 4)} d^2 - Sum_{d|n, n/d == 3 (mod 4)} d^2.

The programs for A050470, the canonical program `A050470.P13950343091726782740` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050470 has offset 1).

The definition of A050470 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050470.P13950343091726782740

`∑{d}[n+1, ((n+1)/#)²*sin(#*π/2)]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A050470

/-- `∑{d}[n+1, ((n+1)/#)²*sin(#*π/2)]` -/
def P13950343091726782740.Spec : Prop :=
  ∀ n, P13950343091726782740.a n = (A050470 (n + 1) : ℝ)

end A050470

/-! ## A050470.P16542838192571943188

`A050461(n+1)-A050465(n+1)`
-/

namespace A050470.P16542838192571943188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050461 (n + 1) - A050465 (n + 1)

end

end A050470.P16542838192571943188

namespace A050470

/-- `A050461(n+1)-A050465(n+1)` -/
def P16542838192571943188.Spec : Prop :=
  ∀ n, P16542838192571943188.a n = A050470 (n + 1)

end A050470

/-! ## A050470.P3636839270077220677

`abs(A138501(n+1))`
-/

namespace A050470.P3636839270077220677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A138501 (n + 1)|

end

end A050470.P3636839270077220677

namespace A050470

/-- `abs(A138501(n+1))` -/
def P3636839270077220677.Spec : Prop :=
  ∀ n, P3636839270077220677.a n = A050470 (n + 1)

end A050470

/-! ## A050470.P17966048605144027105

`A033999(n)*A138501(n+1)`
-/

namespace A050470.P17966048605144027105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A138501 (n + 1)

end

end A050470.P17966048605144027105

namespace A050470

/-- `A033999(n)*A138501(n+1)` -/
def P17966048605144027105.Spec : Prop :=
  ∀ n, P17966048605144027105.a n = A050470 (n + 1)

end A050470

/-! ## A050470.P4836652626579170692

`gcd(A000038(n), A138501(n+1))`
-/

namespace A050470.P4836652626579170692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A138501 (n + 1))

end

end A050470.P4836652626579170692

namespace A050470

/-- `gcd(A000038(n), A138501(n+1))` -/
def P4836652626579170692.Spec : Prop :=
  ∀ n, (P4836652626579170692.a n : ℤ) = A050470 (n + 1)

end A050470

/-! ## A050470.P8968451924172410991

`lcm(A000034(n), A138501(n+1))`
-/

namespace A050470.P8968451924172410991
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A138501 (n + 1))

end

end A050470.P8968451924172410991

namespace A050470

/-- `lcm(A000034(n), A138501(n+1))` -/
def P8968451924172410991.Spec : Prop :=
  ∀ n, (P8968451924172410991.a n : ℤ) = A050470 (n + 1)

end A050470

/-! ## A050470.P822241498817226599

`2*A050461(n+1)-A076577(n+1)`
-/

namespace A050470.P822241498817226599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050461 (n + 1) - A076577 (n + 1)

end

end A050470.P822241498817226599

namespace A050470

/-- `2*A050461(n+1)-A076577(n+1)` -/
def P822241498817226599.Spec : Prop :=
  ∀ n, P822241498817226599.a n = A050470 (n + 1)

end A050470

/-! ## A050470.P13784025442860772715

`A076577(n+1)-2*A050465(n+1)`
-/

namespace A050470.P13784025442860772715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076577 (n + 1) - 2 * A050465 (n + 1)

end

end A050470.P13784025442860772715

namespace A050470

/-- `A076577(n+1)-2*A050465(n+1)` -/
def P13784025442860772715.Spec : Prop :=
  ∀ n, P13784025442860772715.a n = A050470 (n + 1)

end A050470

/-! ## A050470.P14899401665214710623

`∑{d}[n+1, A002654(#)*A007434((n+1)/#)]`
-/

namespace A050470.P14899401665214710623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002654 d * A007434 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050470.P14899401665214710623

namespace A050470

/-- `∑{d}[n+1, A002654(#)*A007434((n+1)/#)]` -/
def P14899401665214710623.Spec : Prop :=
  ∀ n, P14899401665214710623.a n = A050470 (n + 1)

end A050470

/-! ## A050470.P6859238264599737255

`∑{d}[n+1, A002618(#)*A050469((n+1)/#)]`
-/

namespace A050470.P6859238264599737255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A050469 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050470.P6859238264599737255

namespace A050470

/-- `∑{d}[n+1, A002618(#)*A050469((n+1)/#)]` -/
def P6859238264599737255.Spec : Prop :=
  ∀ n, P6859238264599737255.a n = A050470 (n + 1)

end A050470

/-! ## A050470.P16489990319851925925

`∑{d}[n+1, A001157(#)*A275966((n+1)/#)]`
-/

namespace A050470.P16489990319851925925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001157 d * A275966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050470.P16489990319851925925

namespace A050470

/-- `∑{d}[n+1, A001157(#)*A275966((n+1)/#)]` -/
def P16489990319851925925.Spec : Prop :=
  ∀ n, P16489990319851925925.a n = A050470 (n + 1)

end A050470

/-! ## A050470.P12174070732306608100

`∑{d}[n+1, A034947(#)*A308422((n+1)/#)]`
-/

namespace A050470.P12174070732306608100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034947 d * A308422 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050470.P12174070732306608100

namespace A050470

/-- `∑{d}[n+1, A034947(#)*A308422((n+1)/#)]` -/
def P12174070732306608100.Spec : Prop :=
  ∀ n, P12174070732306608100.a n = A050470 (n + 1)

end A050470

/-! ## A050470.P14606434950227223503

`∑{d}[n+1, A057660(#)*A327123((n+1)/#)]`
-/

namespace A050470.P14606434950227223503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057660 d * A327123 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050470.P14606434950227223503

namespace A050470

/-- `∑{d}[n+1, A057660(#)*A327123((n+1)/#)]` -/
def P14606434950227223503.Spec : Prop :=
  ∀ n, P14606434950227223503.a n = A050470 (n + 1)

end A050470

/-! ## A050470.P3557024679491499257

`∑{d}[n+1, A063445(#)*A327122((n+1)/#)]`
-/

namespace A050470.P3557024679491499257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063445 d * A327122 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050470.P3557024679491499257

namespace A050470

/-- `∑{d}[n+1, A063445(#)*A327122((n+1)/#)]` -/
def P3557024679491499257.Spec : Prop :=
  ∀ n, P3557024679491499257.a n = A050470 (n + 1)

end A050470

/-! ## A050470.P528380506646892037

`∑{d}[n+1, A112299(#)*A328407((n+1)/#)]`
-/

namespace A050470.P528380506646892037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A112299 d * A328407 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050470.P528380506646892037

namespace A050470

/-- `∑{d}[n+1, A112299(#)*A328407((n+1)/#)]` -/
def P528380506646892037.Spec : Prop :=
  ∀ n, P528380506646892037.a n = A050470 (n + 1)

end A050470

/-! ## A050470.P18311079503715448022

`∑{d}[n+1, A262209(#)*A321322((n+1)/#)]`
-/

namespace A050470.P18311079503715448022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A262209 d * A321322 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050470.P18311079503715448022

namespace A050470

/-- `∑{d}[n+1, A262209(#)*A321322((n+1)/#)]` -/
def P18311079503715448022.Spec : Prop :=
  ∀ n, P18311079503715448022.a n = A050470 (n + 1)

end A050470

/-! ## A050470.P9401144303008204019

`A138501(n+1)/A122854(n)*A138502(n)`
-/

namespace A050470.P9401144303008204019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138501 (n + 1) : ℚ) / (A122854 n : ℚ) * (A138502 n : ℚ)

end

end A050470.P9401144303008204019

namespace A050470

/-- `A138501(n+1)/A122854(n)*A138502(n)` -/
def P9401144303008204019.Spec : Prop :=
  ∀ n, P9401144303008204019.a n = (A050470 (n + 1) : ℚ)

end A050470

/-! ## A050470.P17903232488875643917

`A138501(2*(n+1))/(A004767(2*n)-(8*n+7))`
-/

namespace A050470.P17903232488875643917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138501 (2 * (n + 1)) : ℚ) / (A004767 (2 * n) - (8 * n + 7 : ℤ) : ℚ)

end

end A050470.P17903232488875643917

namespace A050470

/-- `A138501(2*(n+1))/(A004767(2*n)-(8*n+7))` -/
def P17903232488875643917.Spec : Prop :=
  ∀ n, P17903232488875643917.a n = (A050470 (n + 1) : ℚ)

end A050470

/-!
# A050471: a(n) = Sum_{d|n, n/d=1 mod 4} d^3 - Sum_{d|n, n/d=3 mod 4} d^3.

The programs for A050471, the canonical program `A050471.P15426726655980637675` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050471 has offset 1).

The definition of A050471 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050471.P15426726655980637675

`∑{d}[n+1, ((n+1)/#)^3*sin(#*π/2)]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A050471

/-- `∑{d}[n+1, ((n+1)/#)^3*sin(#*π/2)]` -/
def P15426726655980637675.Spec : Prop :=
  ∀ n, P15426726655980637675.a n = (A050471 (n + 1) : ℝ)

end A050471

/-! ## A050471.P5862702213461689401

`A050462(n+1)-A050466(n+1)`
-/

namespace A050471.P5862702213461689401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050462 (n + 1) - A050466 (n + 1)

end

end A050471.P5862702213461689401

namespace A050471

/-- `A050462(n+1)-A050466(n+1)` -/
def P5862702213461689401.Spec : Prop :=
  ∀ n, P5862702213461689401.a n = A050471 (n + 1)

end A050471

/-! ## A050471.P12691814982235810502

`∑{d}[n+1, A000056(#)*A050469((n+1)/#)]`
-/

namespace A050471.P12691814982235810502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000056 d * A050469 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050471.P12691814982235810502

namespace A050471

/-- `∑{d}[n+1, A000056(#)*A050469((n+1)/#)]` -/
def P12691814982235810502.Spec : Prop :=
  ∀ n, P12691814982235810502.a n = A050471 (n + 1)

end A050471

/-! ## A050471.P7962865076264879561

`∑{d}[n+1, A002654(#)*A059376((n+1)/#)]`
-/

namespace A050471.P7962865076264879561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002654 d * A059376 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050471.P7962865076264879561

namespace A050471

/-- `∑{d}[n+1, A002654(#)*A059376((n+1)/#)]` -/
def P7962865076264879561.Spec : Prop :=
  ∀ n, P7962865076264879561.a n = A050471 (n + 1)

end A050471

/-! ## A050471.P13743728907366810850

`∑{d}[n+1, A050470(#)*A053191((n+1)/#)]`
-/

namespace A050471.P13743728907366810850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A050470 d * A053191 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050471.P13743728907366810850

namespace A050471

/-- `∑{d}[n+1, A050470(#)*A053191((n+1)/#)]` -/
def P13743728907366810850.Spec : Prop :=
  ∀ n, P13743728907366810850.a n = A050471 (n + 1)

end A050471

/-! ## A050471.P14090870247392133578

`∑{d}[n+1, A001158(#)*A275966((n+1)/#)]`
-/

namespace A050471.P14090870247392133578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001158 d * A275966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050471.P14090870247392133578

namespace A050471

/-- `∑{d}[n+1, A001158(#)*A275966((n+1)/#)]` -/
def P14090870247392133578.Spec : Prop :=
  ∀ n, P14090870247392133578.a n = A050471 (n + 1)

end A050471

/-! ## A050471.P2426448110087259813

`∑{d}[n+1, A034947(#)*A309335((n+1)/#)]`
-/

namespace A050471.P2426448110087259813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034947 d * A309335 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050471.P2426448110087259813

namespace A050471

/-- `∑{d}[n+1, A034947(#)*A309335((n+1)/#)]` -/
def P2426448110087259813.Spec : Prop :=
  ∀ n, P2426448110087259813.a n = A050471 (n + 1)

end A050471

/-! ## A050471.P9077032049652476020

`∑{d}[n+1, A055975(#)*A309337((n+1)/#)]`
-/

namespace A050471.P9077032049652476020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055975 d * A309337 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050471.P9077032049652476020

namespace A050471

/-- `∑{d}[n+1, A055975(#)*A309337((n+1)/#)]` -/
def P9077032049652476020.Spec : Prop :=
  ∀ n, P9077032049652476020.a n = A050471 (n + 1)

end A050471

/-! ## A050471.P13417738254028704971

`∑{d}[n+1, A112299(#)*A328408((n+1)/#)]`
-/

namespace A050471.P13417738254028704971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A112299 d * A328408 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050471.P13417738254028704971

namespace A050471

/-- `∑{d}[n+1, A112299(#)*A328408((n+1)/#)]` -/
def P13417738254028704971.Spec : Prop :=
  ∀ n, P13417738254028704971.a n = A050471 (n + 1)

end A050471

/-! ## A050471.P15876251495818537672

`∑{d}[n+1, A327123(#)*A350156((n+1)/#)]`
-/

namespace A050471.P15876251495818537672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327123 d * A350156 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050471.P15876251495818537672

namespace A050471

/-- `∑{d}[n+1, A327123(#)*A350156((n+1)/#)]` -/
def P15876251495818537672.Spec : Prop :=
  ∀ n, P15876251495818537672.a n = A050471 (n + 1)

end A050471

/-! ## A050471.P13956148387364565225

`A050462(n+1)+A050462(n+1)-A007331(n+1)`
-/

namespace A050471.P13956148387364565225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050462 (n + 1) + (A050462 (n + 1) - A007331 (n + 1))

end

end A050471.P13956148387364565225

namespace A050471

/-- `A050462(n+1)+A050462(n+1)-A007331(n+1)` -/
def P13956148387364565225.Spec : Prop :=
  ∀ n, P13956148387364565225.a n = A050471 (n + 1)

end A050471

/-! ## A050471.P7256938377552734505

`A007331(n+1)-(A050466(n+1)+A050466(n+1))`
-/

namespace A050471.P7256938377552734505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007331 (n + 1) - (A050466 (n + 1) + A050466 (n + 1))

end

end A050471.P7256938377552734505

namespace A050471

/-- `A007331(n+1)-(A050466(n+1)+A050466(n+1))` -/
def P7256938377552734505.Spec : Prop :=
  ∀ n, P7256938377552734505.a n = A050471 (n + 1)

end A050471

/-!
# A050472: Numbers m such that 2*phi(m) = phi(m+1).

The programs for A050472, there is no canonical definition to state claims against.
-/

/-! ## A050472.P13405858885907160176

`A171271(n+1)-1`
-/

namespace A050472.P13405858885907160176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171271 (n + 1) - 1

end

end A050472.P13405858885907160176

/-! ## A050472.P15098559790009382823

`xor(1, A171271(A000027(n+1)))`
-/

namespace A050472.P15098559790009382823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A171271 (A000027 (n + 1)).toNat)

end

end A050472.P15098559790009382823

/-! ## A050472.P15030232033651446159

`xor(A165471(n+1)², A171271(n+1))`
-/

namespace A050472.P15030232033651446159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A165471 (n + 1) ^ 2) (A171271 (n + 1))

end

end A050472.P15030232033651446159

/-! ## A050472.P456687675122036368

`xor(A046206(A001223(n+1)), A171271(n+1))`
-/

namespace A050472.P456687675122036368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A046206 (A001223 (n + 1)).toNat) (A171271 (n + 1))

end

end A050472.P456687675122036368

/-! ## A050472.P14667972334314245248

`xor(A001065(A020639(n+3)), A171271(n+1))`
-/

namespace A050472.P14667972334314245248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001065 (A020639 (n + 3)).toNat) (A171271 (n + 1))

end

end A050472.P14667972334314245248

/-! ## A050472.P4430914171578182399

`A323377(A005843(n+1)/(n+1))+A171271(n+1)`
-/

namespace A050472.P4430914171578182399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323377 (SequenceMachineLib.roundAway ((A005843 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat + A171271 (n + 1)

end

end A050472.P4430914171578182399

/-! ## A050472.P4551075294050358687

`A305803(A000040(n+1))+A171271(n+1)`
-/

namespace A050472.P4551075294050358687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305803 (A000040 (n + 1)).toNat + A171271 (n + 1)

end

end A050472.P4551075294050358687

/-! ## A050472.P13561547453596335313

`A305803(A045358(n+1))+A171271(n+1)`
-/

namespace A050472.P13561547453596335313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305803 (A045358 (n + 1)).toNat + A171271 (n + 1)

end

end A050472.P13561547453596335313

/-! ## A050472.P162289812940762295

`xor(A001222(A005383(n+1)), A171271(n+1))`
-/

namespace A050472.P162289812940762295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A005383 (n + 1)).toNat) (A171271 (n + 1))

end

end A050472.P162289812940762295

/-! ## A050472.P4082734422625104024

`xor(A014963(A000096(n+7)), A171271(n+1))`
-/

namespace A050472.P4082734422625104024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014963 (A000096 (n + 7)).toNat) (A171271 (n + 1))

end

end A050472.P4082734422625104024

/-! ## A050472.P7141227035585263791

`xor(A033676(A005383(n+2)), A171271(n+1))`
-/

namespace A050472.P7141227035585263791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033676 (A005383 (n + 2)).toNat) (A171271 (n + 1))

end

end A050472.P7141227035585263791

/-!
# A050474: Solutions to 2*phi(x) = x+1.

The programs for A050474, there is no canonical definition to state claims against.
-/

/-! ## A050474.P6011634287964445399

`A232720(n+1)-2`
-/

namespace A050474.P6011634287964445399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232720 (n + 1) - 2

end

end A050474.P6011634287964445399

/-! ## A050474.P4491978548674632125

`A203966(ceil(cosh(sin(n))+n))`
-/

namespace A050474.P4491978548674632125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203966 ⌈Real.cosh (Real.sin (n : ℝ)) + (n : ℝ)⌉.toNat

end

end A050474.P4491978548674632125

/-! ## A050474.P9128072906235456104

`or(1, A203966(n+2)-1)`
-/

namespace A050474.P9128072906235456104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A203966 (n + 2) - 1)

end

end A050474.P9128072906235456104

/-! ## A050474.P3601134047853753899

`A203966(3-ceil(acot(n))+n)`
-/

namespace A050474.P3601134047853753899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203966 (3 - ⌈SequenceMachineLib.acot (n : ℝ)⌉ + (n : ℤ)).toNat

end

end A050474.P3601134047853753899

/-!
# A050475: Numbers k such that x = 2^k-2 satisfies phi(x)+2 = phi(x+2).

The programs for A050475, there is no canonical definition to state claims against.
-/

/-! ## A050475.P9097327559664381461

`A000043(n+1)+1`
-/

namespace A050475.P9097327559664381461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 1) + 1

end

end A050475.P9097327559664381461

/-! ## A050475.P14673805227659412128

`1+A000043(n+1)`
-/

namespace A050475.P14673805227659412128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000043 (n + 1)

end

end A050475.P14673805227659412128

/-! ## A050475.P6771805347460452823

`A090748(n+1)+2`
-/

namespace A050475.P6771805347460452823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090748 (n + 1) + 2

end

end A050475.P6771805347460452823

/-! ## A050475.P1711202984956586334

`A153798(n+1)+3`
-/

namespace A050475.P1711202984956586334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153798 (n + 1) + 3

end

end A050475.P1711202984956586334

/-! ## A050475.P9487914107075684523

`sqrt(A395178(n+1))+1`
-/

namespace A050475.P9487914107075684523
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A395178 (n + 1) : ℝ) + 1

end

end A050475.P9487914107075684523

/-!
# A050476: a(n) = C(n)*(6*n + 1) where C(n) = Catalan numbers (A000108).

The programs for A050476, the canonical program `A050476.P4852240921440524385` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050476 has offset 0).

The definition of A050476 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050476.P2251881003042921133

`A000108(n)*(6*n+1)`
-/

namespace A050476.P2251881003042921133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (6 * n + 1 : ℤ)

end

end A050476.P2251881003042921133

namespace A050476

/-- `A000108(n)*(6*n+1)` -/
def P2251881003042921133.Spec : Prop :=
  ∀ n, P2251881003042921133.a n = A050476 n

end A050476

/-! ## A050476.P4852240921440524385

`A000984(n)+5*A001791(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A050476

/-- `A000984(n)+5*A001791(n)` -/
def P4852240921440524385.Spec : Prop :=
  ∀ n, P4852240921440524385.a n = A050476 n

theorem P4852240921440524385.correct : P4852240921440524385.Spec := by
  intro n
  simp only [A050476]

end A050476

/-! ## A050476.P7818692540863795000

`(6*n+1)*A120588(n+1)`
-/

namespace A050476.P7818692540863795000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 1 : ℤ) * A120588 (n + 1)

end

end A050476.P7818692540863795000

namespace A050476

/-- `(6*n+1)*A120588(n+1)` -/
def P7818692540863795000.Spec : Prop :=
  ∀ n, P7818692540863795000.a n = A050476 n

end A050476

/-! ## A050476.P7538953825343660783

`(6*n+1)*A208355(2*n)`
-/

namespace A050476.P7538953825343660783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 1 : ℤ) * A208355 (2 * n)

end

end A050476.P7538953825343660783

namespace A050476

/-- `(6*n+1)*A208355(2*n)` -/
def P7538953825343660783.Spec : Prop :=
  ∀ n, P7538953825343660783.a n = A050476 n

end A050476

/-! ## A050476.P15591605009761498349

`(6*n+1)*abs(A115140(n+1))`
-/

namespace A050476.P15591605009761498349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 1 : ℤ) * |A115140 (n + 1)|

end

end A050476.P15591605009761498349

namespace A050476

/-- `(6*n+1)*abs(A115140(n+1))` -/
def P15591605009761498349.Spec : Prop :=
  ∀ n, P15591605009761498349.a n = A050476 n

end A050476

/-! ## A050476.P12961153789105424722

`(6*n+1)*A097331(2*n+1)`
-/

namespace A050476.P12961153789105424722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 1 : ℤ) * A097331 (2 * n + 1)

end

end A050476.P12961153789105424722

namespace A050476

/-- `(6*n+1)*A097331(2*n+1)` -/
def P12961153789105424722.Spec : Prop :=
  ∀ n, P12961153789105424722.a n = A050476 n

end A050476

/-! ## A050476.P6564473683109152629

`(6*n+1)*abs(A105523(2*n+1))`
-/

namespace A050476.P6564473683109152629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 1 : ℤ) * |A105523 (2 * n + 1)|

end

end A050476.P6564473683109152629

namespace A050476

/-- `(6*n+1)*abs(A105523(2*n+1))` -/
def P6564473683109152629.Spec : Prop :=
  ∀ n, P6564473683109152629.a n = A050476 n

end A050476

/-! ## A050476.P11743978004044804777

`A051945(n)+A001791(n)`
-/

namespace A050476.P11743978004044804777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051945 n + A001791 n

end

end A050476.P11743978004044804777

namespace A050476

/-- `A051945(n)+A001791(n)` -/
def P11743978004044804777.Spec : Prop :=
  ∀ n, P11743978004044804777.a n = A050476 n

theorem P11743978004044804777.correct : P11743978004044804777.Spec := by
  intro n
  simp only [A050476, Nat.add_sub_cancel, A050476.P11743978004044804777.a, A050476.P4852240921440524385.a, A000984, A000984.P7946844122574426130.a, A001791, A001791.P9713013280951293137.a, A051945, A051945.P12563148972350424108.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A050476

/-! ## A050476.P12893379778152236522

`A162551(n)+A051944(n)`
-/

namespace A050476.P12893379778152236522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162551 n + A051944 n

end

end A050476.P12893379778152236522

namespace A050476

/-- `A162551(n)+A051944(n)` -/
def P12893379778152236522.Spec : Prop :=
  ∀ n, P12893379778152236522.a n = A050476 n

theorem P12893379778152236522.correct : P12893379778152236522.Spec := by
  intro n
  simp only [A050476, Nat.add_sub_cancel, A050476.P12893379778152236522.a, A050476.P4852240921440524385.a, A000984, A000984.P7946844122574426130.a, A001791, A001791.P9713013280951293137.a, A051944, A051944.P8157116428899209073.a, A162551, A162551.P10524967716150044895.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A050476

/-! ## A050476.P5777606781786702320

`A276666(n)+A053368(n)`
-/

namespace A050476.P5777606781786702320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276666 n + A053368 n

end

end A050476.P5777606781786702320

namespace A050476

/-- `A276666(n)+A053368(n)` -/
def P5777606781786702320.Spec : Prop :=
  ∀ n, P5777606781786702320.a n = A050476 n

end A050476

/-! ## A050476.P17965757465259598893

`A062561(n)+A051924(n+1)`
-/

namespace A050476.P17965757465259598893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062561 n + A051924 (n + 1)

end

end A050476.P17965757465259598893

namespace A050476

/-- `A062561(n)+A051924(n+1)` -/
def P17965757465259598893.Spec : Prop :=
  ∀ n, P17965757465259598893.a n = A050476 n

end A050476

/-! ## A050476.P7642641253200433993

`A128650(n+2)+A001700(n)`
-/

namespace A050476.P7642641253200433993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128650 (n + 2) + A001700 n

end

end A050476.P7642641253200433993

namespace A050476

/-- `A128650(n+2)+A001700(n)` -/
def P7642641253200433993.Spec : Prop :=
  ∀ n, P7642641253200433993.a n = A050476 n

end A050476

/-! ## A050476.P11430025404311673636

`A051944(n)+2*A001791(n)`
-/

namespace A050476.P11430025404311673636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051944 n + 2 * A001791 n

end

end A050476.P11430025404311673636

namespace A050476

/-- `A051944(n)+2*A001791(n)` -/
def P11430025404311673636.Spec : Prop :=
  ∀ n, P11430025404311673636.a n = A050476 n

theorem P11430025404311673636.correct : P11430025404311673636.Spec := by
  intro n
  simp only [A050476, Nat.add_sub_cancel, A050476.P11430025404311673636.a, A050476.P4852240921440524385.a, A000984, A000984.P7946844122574426130.a, A001791, A001791.P9713013280951293137.a, A051944, A051944.P8157116428899209073.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A050476

/-! ## A050476.P9435627345691522248

`A000108(n)+2*A062561(n)`
-/

namespace A050476.P9435627345691522248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + 2 * A062561 n

end

end A050476.P9435627345691522248

namespace A050476

/-- `A000108(n)+2*A062561(n)` -/
def P9435627345691522248.Spec : Prop :=
  ∀ n, P9435627345691522248.a n = A050476 n

end A050476

/-! ## A050476.P12676294310431709043

`A001700(n)+2*A162551(n)`
-/

namespace A050476.P12676294310431709043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n + 2 * A162551 n

end

end A050476.P12676294310431709043

namespace A050476

/-- `A001700(n)+2*A162551(n)` -/
def P12676294310431709043.Spec : Prop :=
  ∀ n, P12676294310431709043.a n = A050476 n

end A050476

/-! ## A050476.P804503637395829650

`A337499(2*n)+A062561(n)`
-/

namespace A050476.P804503637395829650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337499 (2 * n) + A062561 n

end

end A050476.P804503637395829650

namespace A050476

/-- `A337499(2*n)+A062561(n)` -/
def P804503637395829650.Spec : Prop :=
  ∀ n, P804503637395829650.a n = A050476 n

end A050476

/-! ## A050476.P13595573044727082196

`A051945(n)+A162551(n)/2`
-/

namespace A050476.P13595573044727082196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051945 n : ℚ) + (A162551 n : ℚ) / 2

end

end A050476.P13595573044727082196

namespace A050476

/-- `A051945(n)+A162551(n)/2` -/
def P13595573044727082196.Spec : Prop :=
  ∀ n, P13595573044727082196.a n = (A050476 n : ℚ)

theorem P13595573044727082196.correct : P13595573044727082196.Spec := by
  intro n
  simp only [A050476, Nat.add_sub_cancel, A050476.P13595573044727082196.a, A050476.P4852240921440524385.a, A000984, A000984.P7946844122574426130.a, A001791, A001791.P9713013280951293137.a, A051945, A051945.P12563148972350424108.a, A162551, A162551.P10524967716150044895.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A050476

/-! ## A050476.P14064015351288365568

`A001700(n)+4*A001791(n)`
-/

namespace A050476.P14064015351288365568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n + 4 * A001791 n

end

end A050476.P14064015351288365568

namespace A050476

/-- `A001700(n)+4*A001791(n)` -/
def P14064015351288365568.Spec : Prop :=
  ∀ n, P14064015351288365568.a n = A050476 n

end A050476

/-! ## A050476.P7986312013770842134

`A051945(n)+A000984(n)-A000108(n)`
-/

namespace A050476.P7986312013770842134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051945 n + A000984 n - A000108 n

end

end A050476.P7986312013770842134

namespace A050476

/-- `A051945(n)+A000984(n)-A000108(n)` -/
def P7986312013770842134.Spec : Prop :=
  ∀ n, P7986312013770842134.a n = A050476 n

end A050476

/-! ## A050476.P11457624730143473392

`A050477(n)-A001791(n)`
-/

namespace A050476.P11457624730143473392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050477 n - A001791 n

end

end A050476.P11457624730143473392

namespace A050476

/-- `A050477(n)-A001791(n)` -/
def P11457624730143473392.Spec : Prop :=
  ∀ n, P11457624730143473392.a n = A050476 n

theorem P11457624730143473392.correct : P11457624730143473392.Spec := by
  intro n
  simp only [A050476, Nat.add_sub_cancel, A050476.P11457624730143473392.a, A050476.P4852240921440524385.a, A000984, A000984.P7946844122574426130.a, A001791, A001791.P9713013280951293137.a, A050477, A050477.P1271674813469624088.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A050476

/-!
# A050477: a(n) = C(n)*(7*n + 1) where C(n) = Catalan numbers (A000108).

The programs for A050477, the canonical program `A050477.P1271674813469624088` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050477 has offset 0).

The definition of A050477 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050477.P4175626768022576029

`A000108(n)*(7*n+1)`
-/

namespace A050477.P4175626768022576029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (7 * n + 1 : ℤ)

end

end A050477.P4175626768022576029

namespace A050477

/-- `A000108(n)*(7*n+1)` -/
def P4175626768022576029.Spec : Prop :=
  ∀ n, P4175626768022576029.a n = A050477 n

end A050477

/-! ## A050477.P1271674813469624088

`A000984(n)+6*A001791(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A050477

/-- `A000984(n)+6*A001791(n)` -/
def P1271674813469624088.Spec : Prop :=
  ∀ n, P1271674813469624088.a n = A050477 n

theorem P1271674813469624088.correct : P1271674813469624088.Spec := by
  intro n
  simp only [A050477]

end A050477

/-! ## A050477.P12274917838948572511

`(7*n+1)*C(2*n, n)/(n+1)`
-/

namespace A050477.P12274917838948572511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 * n + 1) * Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ)

end

end A050477.P12274917838948572511

namespace A050477

/-- `(7*n+1)*C(2*n, n)/(n+1)` -/
def P12274917838948572511.Spec : Prop :=
  ∀ n, P12274917838948572511.a n = (A050477 n : ℚ)

end A050477

/-! ## A050477.P13294865878700212336

`(7*n+1)*(A120304(n)+2)`
-/

namespace A050477.P13294865878700212336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n + 1 : ℤ) * (A120304 n + 2)

end

end A050477.P13294865878700212336

namespace A050477

/-- `(7*n+1)*(A120304(n)+2)` -/
def P13294865878700212336.Spec : Prop :=
  ∀ n, P13294865878700212336.a n = A050477 n

end A050477

/-! ## A050477.P17114518734874248084

`(7*n+1)*A028304(2*n)`
-/

namespace A050477.P17114518734874248084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n + 1 : ℤ) * A028304 (2 * n)

end

end A050477.P17114518734874248084

namespace A050477

/-- `(7*n+1)*A028304(2*n)` -/
def P17114518734874248084.Spec : Prop :=
  ∀ n, P17114518734874248084.a n = A050477 n

end A050477

/-! ## A050477.P11490106954177008308

`(7*n+1)*abs(A090192(2*n+1))`
-/

namespace A050477.P11490106954177008308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n + 1 : ℤ) * |A090192 (2 * n + 1)|

end

end A050477.P11490106954177008308

namespace A050477

/-- `(7*n+1)*abs(A090192(2*n+1))` -/
def P11490106954177008308.Spec : Prop :=
  ∀ n, P11490106954177008308.a n = A050477 n

end A050477

/-! ## A050477.P4315973949601438808

`(6*n+1+n)*A097331(2*n+1)`
-/

namespace A050477.P4315973949601438808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 1 + n : ℤ) * A097331 (2 * n + 1)

end

end A050477.P4315973949601438808

namespace A050477

/-- `(6*n+1+n)*A097331(2*n+1)` -/
def P4315973949601438808.Spec : Prop :=
  ∀ n, P4315973949601438808.a n = A050477 n

end A050477

/-! ## A050477.P1640309638206808749

`A050476(n)+A001791(n)`
-/

namespace A050477.P1640309638206808749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050476 n + A001791 n

end

end A050477.P1640309638206808749

namespace A050477

/-- `A050476(n)+A001791(n)` -/
def P1640309638206808749.Spec : Prop :=
  ∀ n, P1640309638206808749.a n = A050477 n

theorem P1640309638206808749.correct : P1640309638206808749.Spec := by
  intro n
  simp only [A050477, Nat.add_sub_cancel, A050477.P1640309638206808749.a, A050477.P1271674813469624088.a, A000984, A000984.P7946844122574426130.a, A001791, A001791.P9713013280951293137.a, A050476, A050476.P4852240921440524385.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A050477

/-! ## A050477.P12452061852269475933

`A062561(n)+A051944(n)`
-/

namespace A050477.P12452061852269475933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062561 n + A051944 n

end

end A050477.P12452061852269475933

namespace A050477

/-- `A062561(n)+A051944(n)` -/
def P12452061852269475933.Spec : Prop :=
  ∀ n, P12452061852269475933.a n = A050477 n

theorem P12452061852269475933.correct : P12452061852269475933.Spec := by
  intro n
  simp only [A050477, Nat.add_sub_cancel, A050477.P12452061852269475933.a, A050477.P1271674813469624088.a, A000984, A000984.P7946844122574426130.a, A001791, A001791.P9713013280951293137.a, A051944, A051944.P8157116428899209073.a, A062561, A062561.P8999694222887573335.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A050477

/-! ## A050477.P13816402557102772399

`A162551(n)+A051945(n)`
-/

namespace A050477.P13816402557102772399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162551 n + A051945 n

end

end A050477.P13816402557102772399

namespace A050477

/-- `A162551(n)+A051945(n)` -/
def P13816402557102772399.Spec : Prop :=
  ∀ n, P13816402557102772399.a n = A050477 n

theorem P13816402557102772399.correct : P13816402557102772399.Spec := by
  intro n
  simp only [A050477, Nat.add_sub_cancel, A050477.P13816402557102772399.a, A050477.P1271674813469624088.a, A000984, A000984.P7946844122574426130.a, A001791, A001791.P9713013280951293137.a, A051945, A051945.P12563148972350424108.a, A162551, A162551.P10524967716150044895.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A050477

/-! ## A050477.P14935156108334280573

`A050478(n)-A001791(n)`
-/

namespace A050477.P14935156108334280573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050478 n - A001791 n

end

end A050477.P14935156108334280573

namespace A050477

/-- `A050478(n)-A001791(n)` -/
def P14935156108334280573.Spec : Prop :=
  ∀ n, P14935156108334280573.a n = A050477 n

theorem P14935156108334280573.correct : P14935156108334280573.Spec := by
  intro n
  simp only [A050477, Nat.add_sub_cancel, A050477.P14935156108334280573.a, A050477.P1271674813469624088.a, A000984, A000984.P7946844122574426130.a, A001791, A001791.P9713013280951293137.a, A050478, A050478.P11948312383121739126.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A050477

/-! ## A050477.P5602869461528438201

`A053369(n)-A000108(n)`
-/

namespace A050477.P5602869461528438201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053369 n - A000108 n

end

end A050477.P5602869461528438201

namespace A050477

/-- `A053369(n)-A000108(n)` -/
def P5602869461528438201.Spec : Prop :=
  ∀ n, P5602869461528438201.a n = A050477 n

end A050477

/-! ## A050477.P8671509881124061175

`A050489(n)-A062561(n)`
-/

namespace A050477.P8671509881124061175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050489 n - A062561 n

end

end A050477.P8671509881124061175

namespace A050477

/-- `A050489(n)-A062561(n)` -/
def P8671509881124061175.Spec : Prop :=
  ∀ n, P8671509881124061175.a n = A050477 n

theorem P8671509881124061175.correct : P8671509881124061175.Spec := by
  intro n
  simp only [A050477, Nat.add_sub_cancel, A050477.P8671509881124061175.a, A050477.P1271674813469624088.a, A000984, A000984.P7946844122574426130.a, A001791, A001791.P9713013280951293137.a, A050489, A050489.P16526552866551306306.a, A062561, A062561.P8999694222887573335.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A050477

/-! ## A050477.P18183107674078145281

`A050479(n)-A162551(n)`
-/

namespace A050477.P18183107674078145281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050479 n - A162551 n

end

end A050477.P18183107674078145281

namespace A050477

/-- `A050479(n)-A162551(n)` -/
def P18183107674078145281.Spec : Prop :=
  ∀ n, P18183107674078145281.a n = A050477 n

theorem P18183107674078145281.correct : P18183107674078145281.Spec := by
  intro n
  simp only [A050477, Nat.add_sub_cancel, A050477.P18183107674078145281.a, A050477.P1271674813469624088.a, A000984, A000984.P7946844122574426130.a, A001791, A001791.P9713013280951293137.a, A050479, A050479.P17354006399765808413.a, A162551, A162551.P10524967716150044895.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A050477

/-! ## A050477.P2260373594250224540

`A050490(n)-A128650(n+2)`
-/

namespace A050477.P2260373594250224540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050490 n - A128650 (n + 2)

end

end A050477.P2260373594250224540

namespace A050477

/-- `A050490(n)-A128650(n+2)` -/
def P2260373594250224540.Spec : Prop :=
  ∀ n, P2260373594250224540.a n = A050477 n

end A050477

/-! ## A050477.P11231179705737047994

`A111284(n+1)*A352681(n)`
-/

namespace A050477.P11231179705737047994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111284 (n + 1) * A352681 n

end

end A050477.P11231179705737047994

namespace A050477

/-- `A111284(n+1)*A352681(n)` -/
def P11231179705737047994.Spec : Prop :=
  ∀ n, P11231179705737047994.a n = A050477 n

end A050477

/-! ## A050477.P6090613084122005824

`A051945(n)+2*A001791(n)`
-/

namespace A050477.P6090613084122005824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051945 n + 2 * A001791 n

end

end A050477.P6090613084122005824

namespace A050477

/-- `A051945(n)+2*A001791(n)` -/
def P6090613084122005824.Spec : Prop :=
  ∀ n, P6090613084122005824.a n = A050477 n

theorem P6090613084122005824.correct : P6090613084122005824.Spec := by
  intro n
  simp only [A050477, Nat.add_sub_cancel, A050477.P6090613084122005824.a, A050477.P1271674813469624088.a, A000984, A000984.P7946844122574426130.a, A001791, A001791.P9713013280951293137.a, A051945, A051945.P12563148972350424108.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A050477

/-! ## A050477.P16279107240755779930

`A000984(n)+2*A062561(n)`
-/

namespace A050477.P16279107240755779930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + 2 * A062561 n

end

end A050477.P16279107240755779930

namespace A050477

/-- `A000984(n)+2*A062561(n)` -/
def P16279107240755779930.Spec : Prop :=
  ∀ n, P16279107240755779930.a n = A050477 n

theorem P16279107240755779930.correct : P16279107240755779930.Spec := by
  intro n
  simp only [A050477, Nat.add_sub_cancel, A050477.P16279107240755779930.a, A050477.P1271674813469624088.a, A000984, A000984.P7946844122574426130.a, A001791, A001791.P9713013280951293137.a, A062561, A062561.P8999694222887573335.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A050477

/-! ## A050477.P7403503246840890593

`A050479(n)-2*A001791(n)`
-/

namespace A050477.P7403503246840890593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050479 n - 2 * A001791 n

end

end A050477.P7403503246840890593

namespace A050477

/-- `A050479(n)-2*A001791(n)` -/
def P7403503246840890593.Spec : Prop :=
  ∀ n, P7403503246840890593.a n = A050477 n

theorem P7403503246840890593.correct : P7403503246840890593.Spec := by
  intro n
  simp only [A050477, Nat.add_sub_cancel, A050477.P7403503246840890593.a, A050477.P1271674813469624088.a, A000984, A000984.P7946844122574426130.a, A001791, A001791.P9713013280951293137.a, A050479, A050479.P17354006399765808413.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A050477

/-! ## A050477.P10487392778539807900

`A128650(n+2)+A051924(n+1)`
-/

namespace A050477.P10487392778539807900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128650 (n + 2) + A051924 (n + 1)

end

end A050477.P10487392778539807900

namespace A050477

/-- `A128650(n+2)+A051924(n+1)` -/
def P10487392778539807900.Spec : Prop :=
  ∀ n, P10487392778539807900.a n = A050477 n

end A050477

/-!
# A050478: a(n) = C(n)*(8*n+1) where C(n) = Catalan numbers (A000108).

The programs for A050478, the canonical program `A050478.P11948312383121739126` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050478 has offset 0).

The definition of A050478 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050478.P17029149106550754941

`A000108(n)*(8*n+1)`
-/

namespace A050478.P17029149106550754941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (8 * n + 1 : ℤ)

end

end A050478.P17029149106550754941

namespace A050478

/-- `A000108(n)*(8*n+1)` -/
def P17029149106550754941.Spec : Prop :=
  ∀ n, P17029149106550754941.a n = A050478 n

end A050478

/-! ## A050478.P11948312383121739126

`A000984(n)+7*A001791(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A050478

/-- `A000984(n)+7*A001791(n)` -/
def P11948312383121739126.Spec : Prop :=
  ∀ n, P11948312383121739126.a n = A050478 n

theorem P11948312383121739126.correct : P11948312383121739126.Spec := by
  intro n
  simp only [A050478]

end A050478

/-! ## A050478.P13545616704502900378

`Δ[(4-6/(n+1))*a(n-1)]+(2*n+1)*∏[2*(2*n+1)/(n+2)]` with `a(0)=3`
-/

namespace A050478.P13545616704502900378
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3] fun n f1 =>
  (4 - 6 / (n + 1 : ℚ)) * f1 (n - 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((2 * n + 1 : ℚ) / (n + 2 : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (2 * n + 1 : ℚ) * (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A050478.P13545616704502900378

namespace A050478

/-- `Δ[(4-6/(n+1))*a(n-1)]+(2*n+1)*∏[2*(2*n+1)/(n+2)]` -/
def P13545616704502900378.Spec : Prop :=
  ∀ n, P13545616704502900378.a n = (A050478 n : ℚ)

end A050478

/-! ## A050478.P12584041349078267467

`(8*n+1)*abs(A168491(n))`
-/

namespace A050478.P12584041349078267467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 1 : ℤ) * |A168491 n|

end

end A050478.P12584041349078267467

namespace A050478

/-- `(8*n+1)*abs(A168491(n))` -/
def P12584041349078267467.Spec : Prop :=
  ∀ n, P12584041349078267467.a n = A050478 n

end A050478

/-! ## A050478.P17148692220482474540

`record[(4*n+1)*A126120(n)]`
-/

namespace A050478.P17148692220482474540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℤ) * A126120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050478.P17148692220482474540

namespace A050478

/-- `record[(4*n+1)*A126120(n)]` -/
def P17148692220482474540.Spec : Prop :=
  ∀ n, P17148692220482474540.a n = A050478 n

end A050478

/-! ## A050478.P2634372081961551735

`(8*n+1)*A028304(2*n)`
-/

namespace A050478.P2634372081961551735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 1 : ℤ) * A028304 (2 * n)

end

end A050478.P2634372081961551735

namespace A050478

/-- `(8*n+1)*A028304(2*n)` -/
def P2634372081961551735.Spec : Prop :=
  ∀ n, P2634372081961551735.a n = A050478 n

end A050478

/-! ## A050478.P5474380436274370864

`(8*n+1)*A001405(2*n)/(n+1)`
-/

namespace A050478.P5474380436274370864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 * n + 1 : ℚ) * ((A001405 (2 * n) : ℚ) / (n + 1 : ℚ))

end

end A050478.P5474380436274370864

namespace A050478

/-- `(8*n+1)*A001405(2*n)/(n+1)` -/
def P5474380436274370864.Spec : Prop :=
  ∀ n, P5474380436274370864.a n = (A050478 n : ℚ)

end A050478

/-! ## A050478.P11487180029941760926

`A050477(n)+A001791(n)`
-/

namespace A050478.P11487180029941760926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050477 n + A001791 n

end

end A050478.P11487180029941760926

namespace A050478

/-- `A050477(n)+A001791(n)` -/
def P11487180029941760926.Spec : Prop :=
  ∀ n, P11487180029941760926.a n = A050478 n

theorem P11487180029941760926.correct : P11487180029941760926.Spec := by
  intro n
  simp only [A050478, Nat.add_sub_cancel, A050478.P11487180029941760926.a, A050478.P11948312383121739126.a, A000984, A000984.P7946844122574426130.a, A001791, A001791.P9713013280951293137.a, A050477, A050477.P1271674813469624088.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A050478

/-! ## A050478.P2760367348696738728

`A062561(n)+A051945(n)`
-/

namespace A050478.P2760367348696738728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062561 n + A051945 n

end

end A050478.P2760367348696738728

namespace A050478

/-- `A062561(n)+A051945(n)` -/
def P2760367348696738728.Spec : Prop :=
  ∀ n, P2760367348696738728.a n = A050478 n

theorem P2760367348696738728.correct : P2760367348696738728.Spec := by
  intro n
  simp only [A050478, Nat.add_sub_cancel, A050478.P2760367348696738728.a, A050478.P11948312383121739126.a, A000984, A000984.P7946844122574426130.a, A001791, A001791.P9713013280951293137.a, A051945, A051945.P12563148972350424108.a, A062561, A062561.P8999694222887573335.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A050478

/-! ## A050478.P15828312301712544367

`A162551(n)+A050476(n)`
-/

namespace A050478.P15828312301712544367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162551 n + A050476 n

end

end A050478.P15828312301712544367

namespace A050478

/-- `A162551(n)+A050476(n)` -/
def P15828312301712544367.Spec : Prop :=
  ∀ n, P15828312301712544367.a n = A050478 n

theorem P15828312301712544367.correct : P15828312301712544367.Spec := by
  intro n
  simp only [A050478, Nat.add_sub_cancel, A050478.P15828312301712544367.a, A050478.P11948312383121739126.a, A000984, A000984.P7946844122574426130.a, A001791, A001791.P9713013280951293137.a, A050476, A050476.P4852240921440524385.a, A162551, A162551.P10524967716150044895.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A050478

/-! ## A050478.P15466791597097009947

`A276666(n)+A053369(n)`
-/

namespace A050478.P15466791597097009947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276666 n + A053369 n

end

end A050478.P15466791597097009947

namespace A050478

/-- `A276666(n)+A053369(n)` -/
def P15466791597097009947.Spec : Prop :=
  ∀ n, P15466791597097009947.a n = A050478 n

end A050478

/-! ## A050478.P7716849866682860244

`A050479(n)-A001791(n)`
-/

namespace A050478.P7716849866682860244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050479 n - A001791 n

end

end A050478.P7716849866682860244

namespace A050478

/-- `A050479(n)-A001791(n)` -/
def P7716849866682860244.Spec : Prop :=
  ∀ n, P7716849866682860244.a n = A050478 n

theorem P7716849866682860244.correct : P7716849866682860244.Spec := by
  intro n
  simp only [A050478, Nat.add_sub_cancel, A050478.P7716849866682860244.a, A050478.P11948312383121739126.a, A000984, A000984.P7946844122574426130.a, A001791, A001791.P9713013280951293137.a, A050479, A050479.P17354006399765808413.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A050478

/-! ## A050478.P7683746164967092053

`A050490(n)-A062561(n)`
-/

namespace A050478.P7683746164967092053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050490 n - A062561 n

end

end A050478.P7683746164967092053

namespace A050478

/-- `A050490(n)-A062561(n)` -/
def P7683746164967092053.Spec : Prop :=
  ∀ n, P7683746164967092053.a n = A050478 n

end A050478

/-! ## A050478.P2254549608294961883

`A050489(n)-A162551(n)`
-/

namespace A050478.P2254549608294961883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050489 n - A162551 n

end

end A050478.P2254549608294961883

namespace A050478

/-- `A050489(n)-A162551(n)` -/
def P2254549608294961883.Spec : Prop :=
  ∀ n, P2254549608294961883.a n = A050478 n

theorem P2254549608294961883.correct : P2254549608294961883.Spec := by
  intro n
  simp only [A050478, Nat.add_sub_cancel, A050478.P2254549608294961883.a, A050478.P11948312383121739126.a, A000984, A000984.P7946844122574426130.a, A001791, A001791.P9713013280951293137.a, A050489, A050489.P16526552866551306306.a, A162551, A162551.P10524967716150044895.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A050478

/-! ## A050478.P5996718985311673387

`A128650(n+2)+A051944(n)`
-/

namespace A050478.P5996718985311673387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128650 (n + 2) + A051944 n

end

end A050478.P5996718985311673387

namespace A050478

/-- `A128650(n+2)+A051944(n)` -/
def P5996718985311673387.Spec : Prop :=
  ∀ n, P5996718985311673387.a n = A050478 n

theorem P5996718985311673387.correct : P5996718985311673387.Spec := by
  intro n
  simp only [A050478, Nat.add_sub_cancel, A050478.P5996718985311673387.a, A050478.P11948312383121739126.a, A000984, A000984.P7946844122574426130.a, A001791, A001791.P9713013280951293137.a, A051944, A051944.P8157116428899209073.a, A128650, A128650.P16731929856799845103.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A050478

/-! ## A050478.P12511338242111086973

`A050491(n)-A128650(n+2)`
-/

namespace A050478.P12511338242111086973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050491 n - A128650 (n + 2)

end

end A050478.P12511338242111086973

namespace A050478

/-- `A050491(n)-A128650(n+2)` -/
def P12511338242111086973.Spec : Prop :=
  ∀ n, P12511338242111086973.a n = A050478 n

end A050478

/-! ## A050478.P2682873146321724941

`A050476(n)+2*A001791(n)`
-/

namespace A050478.P2682873146321724941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050476 n + 2 * A001791 n

end

end A050478.P2682873146321724941

namespace A050478

/-- `A050476(n)+2*A001791(n)` -/
def P2682873146321724941.Spec : Prop :=
  ∀ n, P2682873146321724941.a n = A050478 n

theorem P2682873146321724941.correct : P2682873146321724941.Spec := by
  intro n
  simp only [A050478, Nat.add_sub_cancel, A050478.P2682873146321724941.a, A050478.P11948312383121739126.a, A000984, A000984.P7946844122574426130.a, A001791, A001791.P9713013280951293137.a, A050476, A050476.P4852240921440524385.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A050478

/-! ## A050478.P3253489652576664927

`A001700(n)+2*A062561(n)`
-/

namespace A050478.P3253489652576664927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n + 2 * A062561 n

end

end A050478.P3253489652576664927

namespace A050478

/-- `A001700(n)+2*A062561(n)` -/
def P3253489652576664927.Spec : Prop :=
  ∀ n, P3253489652576664927.a n = A050478 n

end A050478

/-! ## A050478.P16283642381594224589

`A051944(n)+2*A162551(n)`
-/

namespace A050478.P16283642381594224589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051944 n + 2 * A162551 n

end

end A050478.P16283642381594224589

namespace A050478

/-- `A051944(n)+2*A162551(n)` -/
def P16283642381594224589.Spec : Prop :=
  ∀ n, P16283642381594224589.a n = A050478 n

theorem P16283642381594224589.correct : P16283642381594224589.Spec := by
  intro n
  simp only [A050478, Nat.add_sub_cancel, A050478.P16283642381594224589.a, A050478.P11948312383121739126.a, A000984, A000984.P7946844122574426130.a, A001791, A001791.P9713013280951293137.a, A051944, A051944.P8157116428899209073.a, A162551, A162551.P10524967716150044895.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A050478

/-! ## A050478.P8450584862154875683

`A050477(n)+A000984(n)-A000108(n)`
-/

namespace A050478.P8450584862154875683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050477 n + A000984 n - A000108 n

end

end A050478.P8450584862154875683

namespace A050478

/-- `A050477(n)+A000984(n)-A000108(n)` -/
def P8450584862154875683.Spec : Prop :=
  ∀ n, P8450584862154875683.a n = A050478 n

end A050478

/-!
# A050479: a(n) = C(n)*(9*n + 1) where C(n) = Catalan numbers (A000108).

The programs for A050479, the canonical program `A050479.P17354006399765808413` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050479 has offset 0).

The definition of A050479 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050479.P14869419124824248039

`A000108(n)*(9*n+1)`
-/

namespace A050479.P14869419124824248039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (9 * n + 1 : ℤ)

end

end A050479.P14869419124824248039

namespace A050479

/-- `A000108(n)*(9*n+1)` -/
def P14869419124824248039.Spec : Prop :=
  ∀ n, P14869419124824248039.a n = A050479 n

end A050479

/-! ## A050479.P17354006399765808413

`A000984(n)+8*A001791(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A050479

/-- `A000984(n)+8*A001791(n)` -/
def P17354006399765808413.Spec : Prop :=
  ∀ n, P17354006399765808413.a n = A050479 n

theorem P17354006399765808413.correct : P17354006399765808413.Spec := by
  intro n
  simp only [A050479]

end A050479

/-! ## A050479.P4211531655332208363

`(9*n+1)*A028304(2*n)`
-/

namespace A050479.P4211531655332208363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n + 1 : ℤ) * A028304 (2 * n)

end

end A050479.P4211531655332208363

namespace A050479

/-- `(9*n+1)*A028304(2*n)` -/
def P4211531655332208363.Spec : Prop :=
  ∀ n, P4211531655332208363.a n = A050479 n

end A050479

/-! ## A050479.P13853828362598128776

`A050478(n)+A001791(n)`
-/

namespace A050479.P13853828362598128776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050478 n + A001791 n

end

end A050479.P13853828362598128776

namespace A050479

/-- `A050478(n)+A001791(n)` -/
def P13853828362598128776.Spec : Prop :=
  ∀ n, P13853828362598128776.a n = A050479 n

theorem P13853828362598128776.correct : P13853828362598128776.Spec := by
  intro n
  simp only [A050479, Nat.add_sub_cancel, A050479.P13853828362598128776.a, A050479.P17354006399765808413.a, A000984, A000984.P7946844122574426130.a, A001791, A001791.P9713013280951293137.a, A050478, A050478.P11948312383121739126.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A050479

/-! ## A050479.P13707122721255339555

`A062561(n)+A050476(n)`
-/

namespace A050479.P13707122721255339555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062561 n + A050476 n

end

end A050479.P13707122721255339555

namespace A050479

/-- `A062561(n)+A050476(n)` -/
def P13707122721255339555.Spec : Prop :=
  ∀ n, P13707122721255339555.a n = A050479 n

theorem P13707122721255339555.correct : P13707122721255339555.Spec := by
  intro n
  simp only [A050479, Nat.add_sub_cancel, A050479.P13707122721255339555.a, A050479.P17354006399765808413.a, A000984, A000984.P7946844122574426130.a, A001791, A001791.P9713013280951293137.a, A050476, A050476.P4852240921440524385.a, A062561, A062561.P8999694222887573335.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A050479

/-! ## A050479.P14906191500793288625

`A162551(n)+A050477(n)`
-/

namespace A050479.P14906191500793288625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162551 n + A050477 n

end

end A050479.P14906191500793288625

namespace A050479

/-- `A162551(n)+A050477(n)` -/
def P14906191500793288625.Spec : Prop :=
  ∀ n, P14906191500793288625.a n = A050479 n

theorem P14906191500793288625.correct : P14906191500793288625.Spec := by
  intro n
  simp only [A050479, Nat.add_sub_cancel, A050479.P14906191500793288625.a, A050479.P17354006399765808413.a, A000984, A000984.P7946844122574426130.a, A001791, A001791.P9713013280951293137.a, A050477, A050477.P1271674813469624088.a, A162551, A162551.P10524967716150044895.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A050479

/-! ## A050479.P17867133444229421333

`A050489(n)-A001791(n)`
-/

namespace A050479.P17867133444229421333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050489 n - A001791 n

end

end A050479.P17867133444229421333

namespace A050479

/-- `A050489(n)-A001791(n)` -/
def P17867133444229421333.Spec : Prop :=
  ∀ n, P17867133444229421333.a n = A050479 n

theorem P17867133444229421333.correct : P17867133444229421333.Spec := by
  intro n
  simp only [A050479, Nat.add_sub_cancel, A050479.P17867133444229421333.a, A050479.P17354006399765808413.a, A000984, A000984.P7946844122574426130.a, A001791, A001791.P9713013280951293137.a, A050489, A050489.P16526552866551306306.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A050479

/-! ## A050479.P5130249181577037965

`A050491(n)-A062561(n)`
-/

namespace A050479.P5130249181577037965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050491 n - A062561 n

end

end A050479.P5130249181577037965

namespace A050479

/-- `A050491(n)-A062561(n)` -/
def P5130249181577037965.Spec : Prop :=
  ∀ n, P5130249181577037965.a n = A050479 n

end A050479

/-! ## A050479.P1519511929499114231

`A050490(n)-A162551(n)`
-/

namespace A050479.P1519511929499114231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050490 n - A162551 n

end

end A050479.P1519511929499114231

namespace A050479

/-- `A050490(n)-A162551(n)` -/
def P1519511929499114231.Spec : Prop :=
  ∀ n, P1519511929499114231.a n = A050479 n

end A050479

/-! ## A050479.P13723138273179936489

`A128650(n+2)+A051945(n)`
-/

namespace A050479.P13723138273179936489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128650 (n + 2) + A051945 n

end

end A050479.P13723138273179936489

namespace A050479

/-- `A128650(n+2)+A051945(n)` -/
def P13723138273179936489.Spec : Prop :=
  ∀ n, P13723138273179936489.a n = A050479 n

theorem P13723138273179936489.correct : P13723138273179936489.Spec := by
  intro n
  simp only [A050479, Nat.add_sub_cancel, A050479.P13723138273179936489.a, A050479.P17354006399765808413.a, A000984, A000984.P7946844122574426130.a, A001791, A001791.P9713013280951293137.a, A051945, A051945.P12563148972350424108.a, A128650, A128650.P16731929856799845103.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A050479

/-! ## A050479.P4793777258708500839

`A050477(n)+2*A001791(n)`
-/

namespace A050479.P4793777258708500839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050477 n + 2 * A001791 n

end

end A050479.P4793777258708500839

namespace A050479

/-- `A050477(n)+2*A001791(n)` -/
def P4793777258708500839.Spec : Prop :=
  ∀ n, P4793777258708500839.a n = A050479 n

theorem P4793777258708500839.correct : P4793777258708500839.Spec := by
  intro n
  simp only [A050479, Nat.add_sub_cancel, A050479.P4793777258708500839.a, A050479.P17354006399765808413.a, A000984, A000984.P7946844122574426130.a, A001791, A001791.P9713013280951293137.a, A050477, A050477.P1271674813469624088.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A050479

/-! ## A050479.P7922424782314864182

`A051945(n)+2*A162551(n)`
-/

namespace A050479.P7922424782314864182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051945 n + 2 * A162551 n

end

end A050479.P7922424782314864182

namespace A050479

/-- `A051945(n)+2*A162551(n)` -/
def P7922424782314864182.Spec : Prop :=
  ∀ n, P7922424782314864182.a n = A050479 n

theorem P7922424782314864182.correct : P7922424782314864182.Spec := by
  intro n
  simp only [A050479, Nat.add_sub_cancel, A050479.P7922424782314864182.a, A050479.P17354006399765808413.a, A000984, A000984.P7946844122574426130.a, A001791, A001791.P9713013280951293137.a, A051945, A051945.P12563148972350424108.a, A162551, A162551.P10524967716150044895.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A050479

/-! ## A050479.P14590364001935919766

`A276666(n)+2*A051944(n)`
-/

namespace A050479.P14590364001935919766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276666 n + 2 * A051944 n

end

end A050479.P14590364001935919766

namespace A050479

/-- `A276666(n)+2*A051944(n)` -/
def P14590364001935919766.Spec : Prop :=
  ∀ n, P14590364001935919766.a n = A050479 n

end A050479

/-! ## A050479.P5479245866013172196

`A050490(n)-2*A001791(n)`
-/

namespace A050479.P5479245866013172196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050490 n - 2 * A001791 n

end

end A050479.P5479245866013172196

namespace A050479

/-- `A050490(n)-2*A001791(n)` -/
def P5479245866013172196.Spec : Prop :=
  ∀ n, P5479245866013172196.a n = A050479 n

end A050479

/-! ## A050479.P2002035470759904226

`2*A051945(n)-A000984(n)`
-/

namespace A050479.P2002035470759904226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051945 n - A000984 n

end

end A050479.P2002035470759904226

namespace A050479

/-- `2*A051945(n)-A000984(n)` -/
def P2002035470759904226.Spec : Prop :=
  ∀ n, P2002035470759904226.a n = A050479 n

theorem P2002035470759904226.correct : P2002035470759904226.Spec := by
  intro n
  simp only [A050479, Nat.add_sub_cancel, A050479.P2002035470759904226.a, A050479.P17354006399765808413.a, A000984, A000984.P7946844122574426130.a, A001791, A001791.P9713013280951293137.a, A051945, A051945.P12563148972350424108.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A050479

/-! ## A050479.P8584958599703934013

`2*A050478(n)-A050477(n)`
-/

namespace A050479.P8584958599703934013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050478 n - A050477 n

end

end A050479.P8584958599703934013

namespace A050479

/-- `2*A050478(n)-A050477(n)` -/
def P8584958599703934013.Spec : Prop :=
  ∀ n, P8584958599703934013.a n = A050479 n

theorem P8584958599703934013.correct : P8584958599703934013.Spec := by
  intro n
  simp only [A050479, Nat.add_sub_cancel, A050479.P8584958599703934013.a, A050479.P17354006399765808413.a, A000984, A000984.P7946844122574426130.a, A001791, A001791.P9713013280951293137.a, A050477, A050477.P1271674813469624088.a, A050478, A050478.P11948312383121739126.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A050479

/-! ## A050479.P5620934534989081994

`(A050489(n)+A050478(n))/2`
-/

namespace A050479.P5620934534989081994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050489 n + A050478 n : ℚ) / 2

end

end A050479.P5620934534989081994

namespace A050479

/-- `(A050489(n)+A050478(n))/2` -/
def P5620934534989081994.Spec : Prop :=
  ∀ n, P5620934534989081994.a n = (A050479 n : ℚ)

theorem P5620934534989081994.correct : P5620934534989081994.Spec := by
  intro n
  simp only [A050479, Nat.add_sub_cancel, A050479.P5620934534989081994.a, A050479.P17354006399765808413.a, A000984, A000984.P7946844122574426130.a, A001791, A001791.P9713013280951293137.a, A050478, A050478.P11948312383121739126.a, A050489, A050489.P16526552866551306306.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A050479

/-! ## A050479.P7229323477413003449

`2*A050477(n)-A051945(n)`
-/

namespace A050479.P7229323477413003449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050477 n - A051945 n

end

end A050479.P7229323477413003449

namespace A050479

/-- `2*A050477(n)-A051945(n)` -/
def P7229323477413003449.Spec : Prop :=
  ∀ n, P7229323477413003449.a n = A050479 n

theorem P7229323477413003449.correct : P7229323477413003449.Spec := by
  intro n
  simp only [A050479, Nat.add_sub_cancel, A050479.P7229323477413003449.a, A050479.P17354006399765808413.a, A000984, A000984.P7946844122574426130.a, A001791, A001791.P9713013280951293137.a, A050477, A050477.P1271674813469624088.a, A051945, A051945.P12563148972350424108.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A050479

/-! ## A050479.P13422185787663264174

`A050478(n)+A000984(n)-A000108(n)`
-/

namespace A050479.P13422185787663264174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050478 n + A000984 n - A000108 n

end

end A050479.P13422185787663264174

namespace A050479

/-- `A050478(n)+A000984(n)-A000108(n)` -/
def P13422185787663264174.Spec : Prop :=
  ∀ n, P13422185787663264174.a n = A050479 n

end A050479

/-! ## A050479.P9319282037316145091

`A050489(n)+A000108(n)-A000984(n)`
-/

namespace A050479.P9319282037316145091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050489 n + A000108 n - A000984 n

end

end A050479.P9319282037316145091

namespace A050479

/-- `A050489(n)+A000108(n)-A000984(n)` -/
def P9319282037316145091.Spec : Prop :=
  ∀ n, P9319282037316145091.a n = A050479 n

end A050479

/-!
# A050480: Numbers that can be written as a concatenation of distinct proper divisors.

The programs for A050480, there is no canonical definition to state claims against.
-/

/-! ## A050480.P1452183118588538001

`A309913(A309962(n+1))*A309944(2*n+1)`
-/

namespace A050480.P1452183118588538001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309913 (A309962 (n + 1)).toNat * A309944 (2 * n + 1)

end

end A050480.P1452183118588538001

/-!
# A050482: Sum of remainders when n-th prime is divided by all preceding integers.

The programs for A050482, the canonical program `A050482.P1462171223400709831` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050482 has offset 1).

The definition of A050482 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A050482.P1462171223400709831

`A004125(A000040(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A050482

/-- `A004125(A000040(n+1))` -/
def P1462171223400709831.Spec : Prop :=
  ∀ n, P1462171223400709831.a n = A050482 (n + 1)

theorem P1462171223400709831.correct : P1462171223400709831.Spec := by
  intro n
  simp only [A050482, Nat.add_sub_cancel]

end A050482

/-! ## A050482.P13795902750071827540

`A001248(n+1)-A244583(n+1)`
-/

namespace A050482.P13795902750071827540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - A244583 (n + 1)

end

end A050482.P13795902750071827540

namespace A050482

/-- `A001248(n+1)-A244583(n+1)` -/
def P13795902750071827540.Spec : Prop :=
  ∀ n, P13795902750071827540.a n = A050482 (n + 1)

end A050482

/-! ## A050482.P14763282435241334429

`A000040(n+1)²-A244583(n+1)`
-/

namespace A050482.P14763282435241334429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - A244583 (n + 1)

end

end A050482.P14763282435241334429

namespace A050482

/-- `A000040(n+1)²-A244583(n+1)` -/
def P14763282435241334429.Spec : Prop :=
  ∀ n, P14763282435241334429.a n = A050482 (n + 1)

end A050482

/-! ## A050482.P14317453736221513170

`A036690(n+1)-(A244583(n+1)+A000040(n+1))`
-/

namespace A050482.P14317453736221513170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036690 (n + 1) - (A244583 (n + 1) + A000040 (n + 1))

end

end A050482.P14317453736221513170

namespace A050482

/-- `A036690(n+1)-(A244583(n+1)+A000040(n+1))` -/
def P14317453736221513170.Spec : Prop :=
  ∀ n, P14317453736221513170.a n = A050482 (n + 1)

end A050482

/-! ## A050482.P16630101680997821998

`A182986(n+2)*A182986(n+2)-A244583(n+1)`
-/

namespace A050482.P16630101680997821998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2) * A182986 (n + 2) - A244583 (n + 1)

end

end A050482.P16630101680997821998

namespace A050482

/-- `A182986(n+2)*A182986(n+2)-A244583(n+1)` -/
def P16630101680997821998.Spec : Prop :=
  ∀ n, P16630101680997821998.a n = A050482 (n + 1)

end A050482

/-! ## A050482.P4611648474949753560

`A008837(n+1)-A244578(n+1)`
-/

namespace A050482.P4611648474949753560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008837 (n + 1) - A244578 (n + 1)

end

end A050482.P4611648474949753560

namespace A050482

/-- `A008837(n+1)-A244578(n+1)` -/
def P4611648474949753560.Spec : Prop :=
  ∀ n, P4611648474949753560.a n = A050482 (n + 1)

end A050482

/-! ## A050482.P13534416459989458208

`A112456(n+1)%A244578(n+1)`
-/

namespace A050482.P13534416459989458208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112456 (n + 1)) (A244578 (n + 1))

end

end A050482.P13534416459989458208

namespace A050482

/-- `A112456(n+1)%A244578(n+1)` -/
def P13534416459989458208.Spec : Prop :=
  ∀ n, P13534416459989458208.a n = A050482 (n + 1)

end A050482

/-! ## A050482.P3441409536876538346

`A004125(p?[comp[n²]])`
-/

namespace A050482.P3441409536876538346
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A050482.P3441409536876538346

namespace A050482

/-- `A004125(p?[comp[n²]])` -/
def P3441409536876538346.Spec : Prop :=
  ∀ n, P3441409536876538346.a n = A050482 (n + 1)

end A050482

/-! ## A050482.P16443366678578011284

`A004125(Δ[A007504(n)])`
-/

namespace A050482.P16443366678578011284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (f1 (n + 1) - f1 n).toNat

end

end A050482.P16443366678578011284

namespace A050482

/-- `A004125(Δ[A007504(n)])` -/
def P16443366678578011284.Spec : Prop :=
  ∀ n, P16443366678578011284.a n = A050482 (n + 1)

end A050482

/-! ## A050482.P17470461889133616342

`A004125(A006005(n+1))`
-/

namespace A050482.P17470461889133616342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (A006005 (n + 1)).toNat

end

end A050482.P17470461889133616342

namespace A050482

/-- `A004125(A006005(n+1))` -/
def P17470461889133616342.Spec : Prop :=
  ∀ n, P17470461889133616342.a n = A050482 (n + 1)

end A050482

/-! ## A050482.P6994921971990169697

`A004125(A008578(n+2))`
-/

namespace A050482.P6994921971990169697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (A008578 (n + 2)).toNat

end

end A050482.P6994921971990169697

namespace A050482

/-- `A004125(A008578(n+2))` -/
def P6994921971990169697.Spec : Prop :=
  ∀ n, P6994921971990169697.a n = A050482 (n + 1)

end A050482

/-! ## A050482.P14525477604751380171

`A004125(A075643(n+2))`
-/

namespace A050482.P14525477604751380171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (A075643 (n + 2)).toNat

end

end A050482.P14525477604751380171

namespace A050482

/-- `A004125(A075643(n+2))` -/
def P14525477604751380171.Spec : Prop :=
  ∀ n, P14525477604751380171.a n = A050482 (n + 1)

end A050482

/-! ## A050482.P11472623322418520093

`A004125(A182986(n+2))`
-/

namespace A050482.P11472623322418520093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (A182986 (n + 2)).toNat

end

end A050482.P11472623322418520093

namespace A050482

/-- `A004125(A182986(n+2))` -/
def P11472623322418520093.Spec : Prop :=
  ∀ n, P11472623322418520093.a n = A050482 (n + 1)

end A050482

/-! ## A050482.P1457209986410872661

`A004125(eq[0, A325142(n)])`
-/

namespace A050482.P1457209986410872661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050482.P1457209986410872661

namespace A050482

/-- `A004125(eq[0, A325142(n)])` -/
def P1457209986410872661.Spec : Prop :=
  ∀ n, P1457209986410872661.a n = A050482 (n + 1)

end A050482

/-! ## A050482.P14900650366271852052

`A004125(eq[2, A304442(n)])`
-/

namespace A050482.P14900650366271852052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050482.P14900650366271852052

namespace A050482

/-- `A004125(eq[2, A304442(n)])` -/
def P14900650366271852052.Spec : Prop :=
  ∀ n, P14900650366271852052.a n = A050482 (n + 1)

end A050482

/-! ## A050482.P17692609607684350792

`A004125(record[A006530(n+2)])`
-/

namespace A050482.P17692609607684350792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050482.P17692609607684350792

namespace A050482

/-- `A004125(record[A006530(n+2)])` -/
def P17692609607684350792.Spec : Prop :=
  ∀ n, P17692609607684350792.a n = A050482 (n + 1)

end A050482

/-! ## A050482.P10023182601654499385

`A004125(record[A014963(n+2)])`
-/

namespace A050482.P10023182601654499385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050482.P10023182601654499385

namespace A050482

/-- `A004125(record[A014963(n+2)])` -/
def P10023182601654499385.Spec : Prop :=
  ∀ n, P10023182601654499385.a n = A050482 (n + 1)

end A050482

/-! ## A050482.P3299195070334703720

`A004125(record[A020639(n+2)])`
-/

namespace A050482.P3299195070334703720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050482.P3299195070334703720

namespace A050482

/-- `A004125(record[A020639(n+2)])` -/
def P3299195070334703720.Spec : Prop :=
  ∀ n, P3299195070334703720.a n = A050482 (n + 1)

end A050482

/-! ## A050482.P6663136502136255136

`A067439(record[A006530(n+2)])`
-/

namespace A050482.P6663136502136255136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067439 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050482.P6663136502136255136

namespace A050482

/-- `A067439(record[A006530(n+2)])` -/
def P6663136502136255136.Spec : Prop :=
  ∀ n, P6663136502136255136.a n = A050482 (n + 1)

end A050482

/-!
# A050483: Partial sums of A051947.

The programs for A050483, the canonical program `A050483.P2671027732818245952` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050483 has offset 0).

The definition of A050483 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050483.P2671027732818245952

`(4*n+7)*C(n+6, 6)/7`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A050483

/-- `(4*n+7)*C(n+6, 6)/7` -/
def P2671027732818245952.Spec : Prop :=
  ∀ n, P2671027732818245952.a n = (A050483 n : ℚ)

end A050483

/-! ## A050483.P8419857695883001376

`ogf((1+3x)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))`
-/

namespace A050483.P8419857695883001376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -8, 28, -56, 70, -56, 28, -8, 1] n

end

end A050483.P8419857695883001376

namespace A050483

/-- `ogf((1+3x)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))` -/
def P8419857695883001376.Spec : Prop :=
  ∀ n, P8419857695883001376.a n = A050483 n

end A050483

/-! ## A050483.P13443559598016187382

`∑[∑[∑[∑[∑[∑[4*n+1]]]]]]`
-/

namespace A050483.P13443559598016187382
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050483.P13443559598016187382

namespace A050483

/-- `∑[∑[∑[∑[∑[∑[4*n+1]]]]]]` -/
def P13443559598016187382.Spec : Prop :=
  ∀ n, (P13443559598016187382.a n : ℤ) = A050483 n

end A050483

/-! ## A050483.P18366719856460032472

`A051947(n)+a(n-1)` with `a(0)=1`
-/

namespace A050483.P18366719856460032472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A051947 n + a (n - 1)

end

end A050483.P18366719856460032472

namespace A050483

/-- `A051947(n)+a(n-1)` -/
def P18366719856460032472.Spec : Prop :=
  ∀ n, P18366719856460032472.a n = A050483 n

end A050483

/-! ## A050483.P14121177270503140764

`Δ[C(n+6, 6)/7*A000217(n)]`
-/

namespace A050483.P14121177270503140764
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 6) 6 : ℚ) / 7 * (A000217 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A050483.P14121177270503140764

namespace A050483

/-- `Δ[C(n+6, 6)/7*A000217(n)]` -/
def P14121177270503140764.Spec : Prop :=
  ∀ n, P14121177270503140764.a n = (A050483 n : ℚ)

end A050483

/-! ## A050483.P1699411090703709013

`2*A050494(n)-A050486(n)`
-/

namespace A050483.P1699411090703709013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050494 n - A050486 n

end

end A050483.P1699411090703709013

namespace A050483

/-- `2*A050494(n)-A050486(n)` -/
def P1699411090703709013.Spec : Prop :=
  ∀ n, P1699411090703709013.a n = A050483 n

end A050483

/-! ## A050483.P103300222534116920

`A253947(n+6)-(A095670(n)+A000580(n+7))`
-/

namespace A050483.P103300222534116920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253947 (n + 6) - (A095670 n + A000580 (n + 7))

end

end A050483.P103300222534116920

namespace A050483

/-- `A253947(n+6)-(A095670(n)+A000580(n+7))` -/
def P103300222534116920.Spec : Prop :=
  ∀ n, P103300222534116920.a n = A050483 n

end A050483

/-! ## A050483.P7038615308631552955

`A052181(n+1)-(A052181(n)+A051947(n+1))`
-/

namespace A050483.P7038615308631552955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052181 (n + 1) - (A052181 n + A051947 (n + 1))

end

end A050483.P7038615308631552955

namespace A050483

/-- `A052181(n+1)-(A052181(n)+A051947(n+1))` -/
def P7038615308631552955.Spec : Prop :=
  ∀ n, P7038615308631552955.a n = A050483 n

end A050483

/-! ## A050483.P16757035156914309050

`∑[2*A299336(2*n)]/2`
-/

namespace A050483.P16757035156914309050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A299336 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A050483.P16757035156914309050

namespace A050483

/-- `∑[2*A299336(2*n)]/2` -/
def P16757035156914309050.Spec : Prop :=
  ∀ n, P16757035156914309050.a n = (A050483 n : ℚ)

end A050483

/-! ## A050483.P15682222700261604886

`A299336(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A050483.P15682222700261604886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299336 (n + n) + a (n - 1)

end

end A050483.P15682222700261604886

namespace A050483

/-- `A299336(n+n)+a(n-1)` -/
def P15682222700261604886.Spec : Prop :=
  ∀ n, P15682222700261604886.a n = A050483 n

end A050483

/-! ## A050483.P9934537768808424860

`A095666(A155212(n+4))`
-/

namespace A050483.P9934537768808424860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095666 (A155212 (n + 4)).toNat

end

end A050483.P9934537768808424860

namespace A050483

/-- `A095666(A155212(n+4))` -/
def P9934537768808424860.Spec : Prop :=
  ∀ n, P9934537768808424860.a n = A050483 n

end A050483

/-! ## A050483.P2713443030271435264

`A095666(A052905(n+5)-3)`
-/

namespace A050483.P2713443030271435264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095666 (A052905 (n + 5) - 3).toNat

end

end A050483.P2713443030271435264

namespace A050483

/-- `A095666(A052905(n+5)-3)` -/
def P2713443030271435264.Spec : Prop :=
  ∀ n, P2713443030271435264.a n = A050483 n

end A050483

/-! ## A050483.P13460376517707845605

`A095666(2*n+A133263(n+6)+5)`
-/

namespace A050483.P13460376517707845605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095666 ((2 * n : ℤ) + (A133263 (n + 6) + 5)).toNat

end

end A050483.P13460376517707845605

namespace A050483

/-- `A095666(2*n+A133263(n+6)+5)` -/
def P13460376517707845605.Spec : Prop :=
  ∀ n, P13460376517707845605.a n = A050483 n

end A050483

/-!
# A050484: Partial sums of A051946.

The programs for A050484, the canonical program `A050484.P5372559461901723740` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050484 has offset 0).

The definition of A050484 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050484.P5372559461901723740

`(5*n+7)*C(n+6, 6)/7`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A050484

/-- `(5*n+7)*C(n+6, 6)/7` -/
def P5372559461901723740.Spec : Prop :=
  ∀ n, P5372559461901723740.a n = (A050484 n : ℚ)

end A050484

/-! ## A050484.P307268712681235124

`ogf((1+4x)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))`
-/

namespace A050484.P307268712681235124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4] [1, -8, 28, -56, 70, -56, 28, -8, 1] n

end

end A050484.P307268712681235124

namespace A050484

/-- `ogf((1+4x)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))` -/
def P307268712681235124.Spec : Prop :=
  ∀ n, P307268712681235124.a n = A050484 n

end A050484

/-! ## A050484.P7260589205281655552

`∑[∑[(n+1)*C(n+4, 4)]]`
-/

namespace A050484.P7260589205281655552
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.choose (n + 4) 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050484.P7260589205281655552

namespace A050484

/-- `∑[∑[(n+1)*C(n+4, 4)]]` -/
def P7260589205281655552.Spec : Prop :=
  ∀ n, (P7260589205281655552.a n : ℤ) = A050484 n

end A050484

/-! ## A050484.P12998339798112466197

`∑[∑[∑[∑[∑[∑[5*n+1]]]]]]`
-/

namespace A050484.P12998339798112466197
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050484.P12998339798112466197

namespace A050484

/-- `∑[∑[∑[∑[∑[∑[5*n+1]]]]]]` -/
def P12998339798112466197.Spec : Prop :=
  ∀ n, (P12998339798112466197.a n : ℤ) = A050484 n

end A050484

/-! ## A050484.P15578686232123309161

`A051946(n)+a(n-1)` with `a(0)=1`
-/

namespace A050484.P15578686232123309161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A051946 n + a (n - 1)

end

end A050484.P15578686232123309161

namespace A050484

/-- `A051946(n)+a(n-1)` -/
def P15578686232123309161.Spec : Prop :=
  ∀ n, P15578686232123309161.a n = A050484 n

end A050484

/-! ## A050484.P13476220356263755835

`∑[A051946(n)]%A095671(n)`
-/

namespace A050484.P13476220356263755835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A095671 n)

end

end A050484.P13476220356263755835

namespace A050484

/-- `∑[A051946(n)]%A095671(n)` -/
def P13476220356263755835.Spec : Prop :=
  ∀ n, P13476220356263755835.a n = A050484 n

end A050484

/-! ## A050484.P16541445600824128876

`gcd(∑[A051946(n)], A000038(n))`
-/

namespace A050484.P16541445600824128876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051946 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A050484.P16541445600824128876

namespace A050484

/-- `gcd(∑[A051946(n)], A000038(n))` -/
def P16541445600824128876.Spec : Prop :=
  ∀ n, (P16541445600824128876.a n : ℤ) = A050484 n

end A050484

/-! ## A050484.P4381270747001661121

`lcm(∑[A051946(n)], A177704(n))`
-/

namespace A050484.P4381270747001661121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051946 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A177704 n)

end

end A050484.P4381270747001661121

namespace A050484

/-- `lcm(∑[A051946(n)], A177704(n))` -/
def P4381270747001661121.Spec : Prop :=
  ∀ n, (P4381270747001661121.a n : ℤ) = A050484 n

end A050484

/-! ## A050484.P15576316437470692760

`or(∑[A051946(n)], A000007(n))`
-/

namespace A050484.P15576316437470692760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A050484.P15576316437470692760

namespace A050484

/-- `or(∑[A051946(n)], A000007(n))` -/
def P15576316437470692760.Spec : Prop :=
  ∀ n, P15576316437470692760.a n = A050484 n

end A050484

/-! ## A050484.P9939673472454321276

`2*A034265(n)-A027818(n)`
-/

namespace A050484.P9939673472454321276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034265 n - A027818 n

end

end A050484.P9939673472454321276

namespace A050484

/-- `2*A034265(n)-A027818(n)` -/
def P9939673472454321276.Spec : Prop :=
  ∀ n, P9939673472454321276.a n = A050484 n

end A050484

/-! ## A050484.P3245498275081579408

`(A050494(n)+A027818(n))/2`
-/

namespace A050484.P3245498275081579408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050494 n + A027818 n : ℚ) / 2

end

end A050484.P3245498275081579408

namespace A050484

/-- `(A050494(n)+A027818(n))/2` -/
def P3245498275081579408.Spec : Prop :=
  ∀ n, P3245498275081579408.a n = (A050484 n : ℚ)

end A050484

/-! ## A050484.P9805653988254963031

`A253947(n+6)-A096945(n)`
-/

namespace A050484.P9805653988254963031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253947 (n + 6) - A096945 n

end

end A050484.P9805653988254963031

namespace A050484

/-- `A253947(n+6)-A096945(n)` -/
def P9805653988254963031.Spec : Prop :=
  ∀ n, P9805653988254963031.a n = A050484 n

end A050484

/-! ## A050484.P11395881736949843635

`2*A050494(n)-A000580(n+7)`
-/

namespace A050484.P11395881736949843635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050494 n - A000580 (n + 7)

end

end A050484.P11395881736949843635

namespace A050484

/-- `2*A050494(n)-A000580(n+7)` -/
def P11395881736949843635.Spec : Prop :=
  ∀ n, P11395881736949843635.a n = A050484 n

end A050484

/-! ## A050484.P3207373004950172958

`∑[A051946(n)]^A001221(A028233(n+1))`
-/

namespace A050484.P3207373004950172958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051946 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A001221 (A028233 (n + 1)).toNat : ℤ)

end

end A050484.P3207373004950172958

namespace A050484

/-- `∑[A051946(n)]^A001221(A028233(n+1))` -/
def P3207373004950172958.Spec : Prop :=
  ∀ n, P3207373004950172958.a n = (A050484 n : ℚ)

end A050484

/-! ## A050484.P10785518209489279212

`A034264(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A050484.P10785518209489279212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A034264 (n + 1) + a (n - 1)

end

end A050484.P10785518209489279212

namespace A050484

/-- `A034264(n+1)+a(n-1)` -/
def P10785518209489279212.Spec : Prop :=
  ∀ n, P10785518209489279212.a n = A050484 n

end A050484

/-! ## A050484.P1637198623932692482

`A034264(n+1)+∑[A034264(n)]`
-/

namespace A050484.P1637198623932692482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034264 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050484.P1637198623932692482

namespace A050484

/-- `A034264(n+1)+∑[A034264(n)]` -/
def P1637198623932692482.Spec : Prop :=
  ∀ n, P1637198623932692482.a n = A050484 n

end A050484

/-! ## A050484.P3694250168480446694

`∑[A051946(n)]*A032742(A014963(n+2))`
-/

namespace A050484.P3694250168480446694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A032742 (A014963 (n + 2)).toNat

end

end A050484.P3694250168480446694

namespace A050484

/-- `∑[A051946(n)]*A032742(A014963(n+2))` -/
def P3694250168480446694.Spec : Prop :=
  ∀ n, P3694250168480446694.a n = A050484 n

end A050484

/-! ## A050484.P6461591690928065504

`A052255(n+1)-(A052255(n)+A051946(n+1))`
-/

namespace A050484.P6461591690928065504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052255 (n + 1) - (A052255 n + A051946 (n + 1))

end

end A050484.P6461591690928065504

namespace A050484

/-- `A052255(n+1)-(A052255(n)+A051946(n+1))` -/
def P6461591690928065504.Spec : Prop :=
  ∀ n, P6461591690928065504.a n = A050484 n

end A050484

/-! ## A050484.P15074085665680001088

`∑[A051946(n)]*A059841(2*n)`
-/

namespace A050484.P15074085665680001088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A059841 (2 * n)

end

end A050484.P15074085665680001088

namespace A050484

/-- `∑[A051946(n)]*A059841(2*n)` -/
def P15074085665680001088.Spec : Prop :=
  ∀ n, P15074085665680001088.a n = A050484 n

end A050484

/-! ## A050484.P8999586074572264393

`∑[A051946(n)]*A000034(A005843(n))`
-/

namespace A050484.P8999586074572264393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000034 (A005843 n).toNat

end

end A050484.P8999586074572264393

namespace A050484

/-- `∑[A051946(n)]*A000034(A005843(n))` -/
def P8999586074572264393.Spec : Prop :=
  ∀ n, P8999586074572264393.a n = A050484 n

end A050484

/-!
# A050486: a(n) = binomial(n+6,6)*(2n+7)/7.

The programs for A050486, the canonical program `A050486.P713696247884620416` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050486 has offset 0).

The definition of A050486 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+6, 6)*(2*n+7)/7` (program `A050486.P5357901546745715856`, by `A050486.P5357901546745715856.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A050486.P5357901546745715856

`C(n+6, 6)*(2*n+7)/7`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A050486.P5357901546745715856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 6) 6 * (2 * n + 7) : ℚ) / 7

end

end A050486.P5357901546745715856

namespace A050486

/-- `C(n+6, 6)*(2*n+7)/7` -/
def P5357901546745715856.Spec : Prop :=
  ∀ n, P5357901546745715856.a n = (A050486 n : ℚ)

theorem P5357901546745715856.correct : P5357901546745715856.Spec := by
  intro n
  simp only [A050486, Nat.add_sub_cancel, A050486.P5357901546745715856.a, A050486.P713696247884620416.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A050486

/-! ## A050486.P713696247884620416

`C(n+6, 6)+2*C(n+6, 7)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A050486

/-- `C(n+6, 6)+2*C(n+6, 7)` -/
def P713696247884620416.Spec : Prop :=
  ∀ n, (P713696247884620416.a n : ℤ) = A050486 n

theorem P713696247884620416.correct : P713696247884620416.Spec := by
  intro n
  simp only [A050486]

end A050486

/-! ## A050486.P5143275279837213776

`ogf((1+x)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))`
-/

namespace A050486.P5143275279837213776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -8, 28, -56, 70, -56, 28, -8, 1] n

end

end A050486.P5143275279837213776

namespace A050486

/-- `ogf((1+x)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))` -/
def P5143275279837213776.Spec : Prop :=
  ∀ n, P5143275279837213776.a n = A050486 n

end A050486

/-! ## A050486.P2737010954541769803

`∑[∑[∑[∑[∑[(n+1)²]]]]]`
-/

namespace A050486.P2737010954541769803
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050486.P2737010954541769803

namespace A050486

/-- `∑[∑[∑[∑[∑[(n+1)²]]]]]` -/
def P2737010954541769803.Spec : Prop :=
  ∀ n, (P2737010954541769803.a n : ℤ) = A050486 n

end A050486

/-! ## A050486.P10439738618413292781

`A040977(n)+a(n-1)` with `a(0)=1`
-/

namespace A050486.P10439738618413292781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A040977 n + a (n - 1)

end

end A050486.P10439738618413292781

namespace A050486

/-- `A040977(n)+a(n-1)` -/
def P10439738618413292781.Spec : Prop :=
  ∀ n, P10439738618413292781.a n = A050486 n

end A050486

/-! ## A050486.P3947491764875568158

`A216938(n)-a(n-1)` with `a(0)=1`
-/

namespace A050486.P3947491764875568158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A216938 n - a (n - 1)

end

end A050486.P3947491764875568158

namespace A050486

/-- `A216938(n)-a(n-1)` -/
def P3947491764875568158.Spec : Prop :=
  ∀ n, P3947491764875568158.a n = A050486 n

end A050486

/-! ## A050486.P10529527648649691850

`(A050494(n)+A000580(n+7))/2`
-/

namespace A050486.P10529527648649691850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050494 n + A000580 (n + 7) : ℚ) / 2

end

end A050486.P10529527648649691850

namespace A050486

/-- `(A050494(n)+A000580(n+7))/2` -/
def P10529527648649691850.Spec : Prop :=
  ∀ n, P10529527648649691850.a n = (A050486 n : ℚ)

end A050486

/-! ## A050486.P1310473214638502252

`A000580(n+7)+A097298(n)-A253946(n+5)`
-/

namespace A050486.P1310473214638502252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) + (A097298 n - A253946 (n + 5))

end

end A050486.P1310473214638502252

namespace A050486

/-- `A000580(n+7)+A097298(n)-A253946(n+5)` -/
def P1310473214638502252.Spec : Prop :=
  ∀ n, P1310473214638502252.a n = A050486 n

end A050486

/-! ## A050486.P15418492295439119057

`∑[∑[∑[A083374(n+2)]]]/6`
-/

namespace A050486.P15418492295439119057
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083374 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 6

end

end A050486.P15418492295439119057

namespace A050486

/-- `∑[∑[∑[A083374(n+2)]]]/6` -/
def P15418492295439119057.Spec : Prop :=
  ∀ n, P15418492295439119057.a n = (A050486 n : ℚ)

end A050486

/-! ## A050486.P17796559832277047191

`Δ[A053347(n)-∑[A040977(n)]]`
-/

namespace A050486.P17796559832277047191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040977 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053347 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A050486.P17796559832277047191

namespace A050486

/-- `Δ[A053347(n)-∑[A040977(n)]]` -/
def P17796559832277047191.Spec : Prop :=
  ∀ n, P17796559832277047191.a n = A050486 n

end A050486

/-! ## A050486.P8525909698431799006

`Δ[A053347(n)]-A040977(n+1)`
-/

namespace A050486.P8525909698431799006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A040977 (n + 1)

end

end A050486.P8525909698431799006

namespace A050486

/-- `Δ[A053347(n)]-A040977(n+1)` -/
def P8525909698431799006.Spec : Prop :=
  ∀ n, P8525909698431799006.a n = A050486 n

theorem P8525909698431799006.correct : P8525909698431799006.Spec := by
  intro n
  simp only [A050486, Nat.add_sub_cancel, A050486.P8525909698431799006.f1, A050486.P8525909698431799006.a, A050486.P713696247884620416.a, A040977, A040977.P17094286001024075111.a, A053347, A053347.P9328606196330463444.a, A000579, A000579.P13663713855180125612.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A050486

/-! ## A050486.P5748856159876839246

`A053347(n+1)-(A053347(n)+A040977(n+1))`
-/

namespace A050486.P5748856159876839246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053347 (n + 1) - (A053347 n + A040977 (n + 1))

end

end A050486.P5748856159876839246

namespace A050486

/-- `A053347(n+1)-(A053347(n)+A040977(n+1))` -/
def P5748856159876839246.Spec : Prop :=
  ∀ n, P5748856159876839246.a n = A050486 n

theorem P5748856159876839246.correct : P5748856159876839246.Spec := by
  intro n
  simp only [A050486, Nat.add_sub_cancel, A050486.P5748856159876839246.a, A050486.P713696247884620416.a, A040977, A040977.P17094286001024075111.a, A053347, A053347.P9328606196330463444.a, A000579, A000579.P13663713855180125612.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A050486

/-! ## A050486.P5913853196464873718

`A178440(2*n)`
-/

namespace A050486.P5913853196464873718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178440 (2 * n)

end

end A050486.P5913853196464873718

namespace A050486

/-- `A178440(2*n)` -/
def P5913853196464873718.Spec : Prop :=
  ∀ n, P5913853196464873718.a n = A050486 n

end A050486

/-! ## A050486.P14192315481801684597

`A299337(2*n)+a(n-1)` with `a(0)=1`
-/

namespace A050486.P14192315481801684597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299337 (2 * n) + a (n - 1)

end

end A050486.P14192315481801684597

namespace A050486

/-- `A299337(2*n)+a(n-1)` -/
def P14192315481801684597.Spec : Prop :=
  ∀ n, P14192315481801684597.a n = A050486 n

end A050486

/-! ## A050486.P9933715614783361869

`A038164(2*n+1)/4`
-/

namespace A050486.P9933715614783361869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038164 (2 * n + 1) : ℚ) / 4

end

end A050486.P9933715614783361869

namespace A050486

/-- `A038164(2*n+1)/4` -/
def P9933715614783361869.Spec : Prop :=
  ∀ n, P9933715614783361869.a n = (A050486 n : ℚ)

end A050486

/-! ## A050486.P9290412505507178701

`record[A178440(n)/A000034(n)]`
-/

namespace A050486.P9290412505507178701
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178440 n : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050486.P9290412505507178701

namespace A050486

/-- `record[A178440(n)/A000034(n)]` -/
def P9290412505507178701.Spec : Prop :=
  ∀ n, P9290412505507178701.a n = (A050486 n : ℚ)

end A050486

/-! ## A050486.P11648177982133545889

`A111125(A167614(n+2))`
-/

namespace A050486.P11648177982133545889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111125 (A167614 (n + 2)).toNat

end

end A050486.P11648177982133545889

namespace A050486

/-- `A111125(A167614(n+2))` -/
def P11648177982133545889.Spec : Prop :=
  ∀ n, P11648177982133545889.a n = A050486 n

end A050486

/-!
# A050487: Geometric Connell sequence: start with 1; then next two numbers == 2 mod 3; next four == 3 mod 3; next eight == 1 mod 3; etc.

The programs for A050487, the canonical program `A050487.P17583332619689150206` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050487 has offset 1).

The definition of A050487 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050487.P17583332619689150206

`3*(n+1)-2*(1+floor(log2(n+1)))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A050487

/-- `3*(n+1)-2*(1+floor(log2(n+1)))` -/
def P17583332619689150206.Spec : Prop :=
  ∀ n, P17583332619689150206.a n = A050487 (n + 1)

theorem P17583332619689150206.correct : P17583332619689150206.Spec := by
  intro n
  simp only [A050487, Nat.add_sub_cancel]

end A050487

/-! ## A050487.P8803616543785166222

`∑[3%(and(n, n+1)+2)]`
-/

namespace A050487.P8803616543785166222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 % (Nat.land n (n + 1) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050487.P8803616543785166222

namespace A050487

/-- `∑[3%(and(n, n+1)+2)]` -/
def P8803616543785166222.Spec : Prop :=
  ∀ n, (P8803616543785166222.a n : ℤ) = A050487 (n + 1)

end A050487

/-! ## A050487.P7804833570202200863

`∑[2%∏{p}[n+1, #]+1]`
-/

namespace A050487.P7804833570202200863
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 % (∏ p ∈ Nat.primeFactors (f2 n), p) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050487.P7804833570202200863

namespace A050487

/-- `∑[2%∏{p}[n+1, #]+1]` -/
def P7804833570202200863.Spec : Prop :=
  ∀ n, (P7804833570202200863.a n : ℤ) = A050487 (n + 1)

end A050487

/-! ## A050487.P2084153031377142876

`∑[or(1, 2-char[2^n-1])]`
-/

namespace A050487.P2084153031377142876
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050487.P2084153031377142876

namespace A050487

/-- `∑[or(1, 2-char[2^n-1])]` -/
def P2084153031377142876.Spec : Prop :=
  ∀ n, P2084153031377142876.a n = A050487 (n + 1)

end A050487

/-! ## A050487.P11386777999672592585

`∑[gcd(12, 3^(n-∑[val(n+1, 2)]))]`
-/

namespace A050487.P11386777999672592585
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 12 (SequenceMachineLib.roundAway ((3 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) : ℤ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050487.P11386777999672592585

namespace A050487

/-- `∑[gcd(12, 3^(n-∑[val(n+1, 2)]))]` -/
def P11386777999672592585.Spec : Prop :=
  ∀ n, (P11386777999672592585.a n : ℤ) = A050487 (n + 1)

end A050487

/-! ## A050487.P1325375310797732115

`∑[3%A323504(n)]`
-/

namespace A050487.P1325375310797732115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (A323504 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050487.P1325375310797732115

namespace A050487

/-- `∑[3%A323504(n)]` -/
def P1325375310797732115.Spec : Prop :=
  ∀ n, P1325375310797732115.a n = A050487 (n + 1)

end A050487

/-! ## A050487.P17496993070933853941

`∑[gcd(3, A099894(n))]`
-/

namespace A050487.P17496993070933853941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A099894 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050487.P17496993070933853941

namespace A050487

/-- `∑[gcd(3, A099894(n))]` -/
def P17496993070933853941.Spec : Prop :=
  ∀ n, (P17496993070933853941.a n : ℤ) = A050487 (n + 1)

end A050487

/-! ## A050487.P574183863066951182

`∑[2*A043545(n)+1]`
-/

namespace A050487.P574183863066951182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043545 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050487.P574183863066951182

namespace A050487

/-- `∑[2*A043545(n)+1]` -/
def P574183863066951182.Spec : Prop :=
  ∀ n, P574183863066951182.a n = A050487 (n + 1)

end A050487

/-! ## A050487.P17743456654894474959

`∑[3-2*A036987(n)]`
-/

namespace A050487.P17743456654894474959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - 2 * A036987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050487.P17743456654894474959

namespace A050487

/-- `∑[3-2*A036987(n)]` -/
def P17743456654894474959.Spec : Prop :=
  ∀ n, P17743456654894474959.a n = A050487 (n + 1)

end A050487

/-! ## A050487.P5365838266685431332

`∑[2%A006530(n+1)+1]`
-/

namespace A050487.P5365838266685431332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A006530 (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050487.P5365838266685431332

namespace A050487

/-- `∑[2%A006530(n+1)+1]` -/
def P5365838266685431332.Spec : Prop :=
  ∀ n, P5365838266685431332.a n = A050487 (n + 1)

end A050487

/-! ## A050487.P11490777370443361815

`∑[A106524(A001316(n+1))]`
-/

namespace A050487.P11490777370443361815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106524 (A001316 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050487.P11490777370443361815

namespace A050487

/-- `∑[A106524(A001316(n+1))]` -/
def P11490777370443361815.Spec : Prop :=
  ∀ n, P11490777370443361815.a n = A050487 (n + 1)

end A050487

/-! ## A050487.P15981924978275392799

`∑[A048250(A068068(n+1))]`
-/

namespace A050487.P15981924978275392799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (A068068 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050487.P15981924978275392799

namespace A050487

/-- `∑[A048250(A068068(n+1))]` -/
def P15981924978275392799.Spec : Prop :=
  ∀ n, P15981924978275392799.a n = A050487 (n + 1)

end A050487

/-! ## A050487.P4120996588184857131

`∑[A151930(A048896(n))+1]`
-/

namespace A050487.P4120996588184857131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151930 (A048896 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050487.P4120996588184857131

namespace A050487

/-- `∑[A151930(A048896(n))+1]` -/
def P4120996588184857131.Spec : Prop :=
  ∀ n, P4120996588184857131.a n = A050487 (n + 1)

end A050487

/-! ## A050487.P17261635878443603730

`∑[A033999(A047994(n+1))+2]`
-/

namespace A050487.P17261635878443603730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A047994 (n + 1)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050487.P17261635878443603730

namespace A050487

/-- `∑[A033999(A047994(n+1))+2]` -/
def P17261635878443603730.Spec : Prop :=
  ∀ n, P17261635878443603730.a n = A050487 (n + 1)

end A050487

/-! ## A050487.P18356948618904091706

`∑[A132468(2*A132468(2*(n+1)))]`
-/

namespace A050487.P18356948618904091706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132468 (2 * A132468 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050487.P18356948618904091706

namespace A050487

/-- `∑[A132468(2*A132468(2*(n+1)))]` -/
def P18356948618904091706.Spec : Prop :=
  ∀ n, P18356948618904091706.a n = A050487 (n + 1)

end A050487

/-!
# A050488: a(n) = 3*(2^n-1) - 2*n.

The programs for A050488, the canonical program `A050488.P4828719649079771572` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050488 has offset 0).

The definition of A050488 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(2^n-1)-2*n` (program `A050488.P4828719649079771572`, by `A050488.P4828719649079771572.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A050488.P4828719649079771572

`3*(2^n-1)-2*n`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A050488

/-- `3*(2^n-1)-2*n` -/
def P4828719649079771572.Spec : Prop :=
  ∀ n, P4828719649079771572.a n = A050488 n

theorem P4828719649079771572.correct : P4828719649079771572.Spec := by
  intro n
  simp only [A050488]

end A050488

/-! ## A050488.P1838036397943153535

`∑[ogf((x+x^2)/(1-3x+2x^2))]`
-/

namespace A050488.P1838036397943153535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050488.P1838036397943153535

namespace A050488

/-- `∑[ogf((x+x^2)/(1-3x+2x^2))]` -/
def P1838036397943153535.Spec : Prop :=
  ∀ n, P1838036397943153535.a n = A050488 n

end A050488

/-! ## A050488.P10062473462737963410

`ogf((x+x^2)/(1-4x+5x^2-2x^3))`
-/

namespace A050488.P10062473462737963410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, -4, 5, -2] n

end

end A050488.P10062473462737963410

namespace A050488

/-- `ogf((x+x^2)/(1-4x+5x^2-2x^3))` -/
def P10062473462737963410.Spec : Prop :=
  ∀ n, P10062473462737963410.a n = A050488 n

end A050488

/-! ## A050488.P7083670663274480664

`∑[2*(a(n-1)+1)]` with `a(0)=0, a(1)=1`
-/

namespace A050488.P7083670663274480664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  2 * (f1 (n - 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050488.P7083670663274480664

namespace A050488

/-- `∑[2*(a(n-1)+1)]` -/
def P7083670663274480664.Spec : Prop :=
  ∀ n, (P7083670663274480664.a n : ℤ) = A050488 n

end A050488

/-! ## A050488.P15227920656762830129

`∑[∑[2*a(n-1)]]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A050488.P15227920656762830129
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050488.P15227920656762830129

namespace A050488

/-- `∑[∑[2*a(n-1)]]` -/
def P15227920656762830129.Spec : Prop :=
  ∀ n, (P15227920656762830129.a n : ℤ) = A050488 n

end A050488

/-! ## A050488.P11830203940420779063

`abs(1-2*(a(n-1)+n))` with `a(0)=0`
-/

namespace A050488.P11830203940420779063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  |1 - 2 * (a (n - 1) + (n : ℤ))|

end

end A050488.P11830203940420779063

namespace A050488

/-- `abs(1-2*(a(n-1)+n))` -/
def P11830203940420779063.Spec : Prop :=
  ∀ n, P11830203940420779063.a n = A050488 n

end A050488

/-! ## A050488.P5817908927847337100

`2*(a(n-1)-1/2+n)` with `a(0)=0`
-/

namespace A050488.P5817908927847337100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  2 * (a (n - 1) - (1 : ℚ) / 2 + (n : ℚ))

end

end A050488.P5817908927847337100

namespace A050488

/-- `2*(a(n-1)-1/2+n)` -/
def P5817908927847337100.Spec : Prop :=
  ∀ n, P5817908927847337100.a n = (A050488 n : ℚ)

theorem P5817908927847337100.correct : P5817908927847337100.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A050488, Nat.add_sub_cancel, A050488.P5817908927847337100.a, A050488.P4828719649079771572.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A050488, Nat.add_sub_cancel, A050488.P5817908927847337100.a, A050488.P4828719649079771572.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A050488

/-! ## A050488.P3484653982122190553

`2*(n-(1/2-a(n-1)))` with `a(0)=0`
-/

namespace A050488.P3484653982122190553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  2 * ((n : ℚ) - ((1 : ℚ) / 2 - a (n - 1)))

end

end A050488.P3484653982122190553

namespace A050488

/-- `2*(n-(1/2-a(n-1)))` -/
def P3484653982122190553.Spec : Prop :=
  ∀ n, P3484653982122190553.a n = (A050488 n : ℚ)

theorem P3484653982122190553.correct : P3484653982122190553.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A050488, Nat.add_sub_cancel, A050488.P3484653982122190553.a, A050488.P4828719649079771572.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A050488, Nat.add_sub_cancel, A050488.P3484653982122190553.a, A050488.P4828719649079771572.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A050488

/-! ## A050488.P6825541582625085632

`floor(2*a(n-1)+2*n-1)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A050488.P6825541582625085632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (n - 1) + ((2 * n : ℤ) - 1)

end

end A050488.P6825541582625085632

namespace A050488

/-- `floor(2*a(n-1)+2*n-1)` -/
def P6825541582625085632.Spec : Prop :=
  ∀ n, P6825541582625085632.a n = A050488 n

theorem P6825541582625085632.correct : P6825541582625085632.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A050488, Nat.add_sub_cancel, A050488.P6825541582625085632.a, A050488.P4828719649079771572.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A050488, Nat.add_sub_cancel, A050488.P6825541582625085632.a, A050488.P4828719649079771572.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A050488

/-! ## A050488.P5848751647924929113

`floor(2*n-(1-2*a(n-1)))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A050488.P5848751647924929113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (2 * n : ℤ) - (1 - 2 * a (n - 1))

end

end A050488.P5848751647924929113

namespace A050488

/-- `floor(2*n-(1-2*a(n-1)))` -/
def P5848751647924929113.Spec : Prop :=
  ∀ n, P5848751647924929113.a n = A050488 n

theorem P5848751647924929113.correct : P5848751647924929113.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A050488, Nat.add_sub_cancel, A050488.P5848751647924929113.a, A050488.P4828719649079771572.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A050488, Nat.add_sub_cancel, A050488.P5848751647924929113.a, A050488.P4828719649079771572.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A050488

/-! ## A050488.P12540662799860810802

`∑[a(n-1)+a(n-1)+2]` with `a(0)=0, a(1)=1`
-/

namespace A050488.P12540662799860810802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050488.P12540662799860810802

namespace A050488

/-- `∑[a(n-1)+a(n-1)+2]` -/
def P12540662799860810802.Spec : Prop :=
  ∀ n, (P12540662799860810802.a n : ℤ) = A050488 n

end A050488

/-! ## A050488.P2326817950663620736

`floor(n-1+a(n-1)+a(n-1)+n)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A050488.P2326817950663620736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - 1 + (a (n - 1) + (a (n - 1) + (n : ℤ)))

end

end A050488.P2326817950663620736

namespace A050488

/-- `floor(n-1+a(n-1)+a(n-1)+n)` -/
def P2326817950663620736.Spec : Prop :=
  ∀ n, P2326817950663620736.a n = A050488 n

theorem P2326817950663620736.correct : P2326817950663620736.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A050488, Nat.add_sub_cancel, A050488.P2326817950663620736.a, A050488.P4828719649079771572.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A050488, Nat.add_sub_cancel, A050488.P2326817950663620736.a, A050488.P4828719649079771572.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A050488

/-! ## A050488.P12069426243624265440

`floor(n-(1-a(n-1)-a(n-1)-n))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A050488.P12069426243624265440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - (1 - a (n - 1) - a (n - 1) - (n : ℤ))

end

end A050488.P12069426243624265440

namespace A050488

/-- `floor(n-(1-a(n-1)-a(n-1)-n))` -/
def P12069426243624265440.Spec : Prop :=
  ∀ n, P12069426243624265440.a n = A050488 n

theorem P12069426243624265440.correct : P12069426243624265440.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A050488, Nat.add_sub_cancel, A050488.P12069426243624265440.a, A050488.P4828719649079771572.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A050488, Nat.add_sub_cancel, A050488.P12069426243624265440.a, A050488.P4828719649079771572.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A050488

/-! ## A050488.P14154838102667878943

`∑[A296953(n)]`
-/

namespace A050488.P14154838102667878943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050488.P14154838102667878943

namespace A050488

/-- `∑[A296953(n)]` -/
def P14154838102667878943.Spec : Prop :=
  ∀ n, P14154838102667878943.a n = A050488 n

end A050488

/-! ## A050488.P7235628533125104210

`∑[A083329(n)-1]`
-/

namespace A050488.P7235628533125104210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083329 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050488.P7235628533125104210

namespace A050488

/-- `∑[A083329(n)-1]` -/
def P7235628533125104210.Spec : Prop :=
  ∀ n, P7235628533125104210.a n = A050488 n

end A050488

/-! ## A050488.P14121772784537519874

`∑[A042950(n)-2]`
-/

namespace A050488.P14121772784537519874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050488.P14121772784537519874

namespace A050488

/-- `∑[A042950(n)-2]` -/
def P14121772784537519874.Spec : Prop :=
  ∀ n, P14121772784537519874.a n = A050488 n

end A050488

/-! ## A050488.P15236788632311313862

`∑[Δ[A003945(n)]-2]`
-/

namespace A050488.P15236788632311313862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050488.P15236788632311313862

namespace A050488

/-- `∑[Δ[A003945(n)]-2]` -/
def P15236788632311313862.Spec : Prop :=
  ∀ n, P15236788632311313862.a n = A050488 n

end A050488

/-! ## A050488.P15814538007271760227

`∑[A266550(n+2)-1]`
-/

namespace A050488.P15814538007271760227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266550 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050488.P15814538007271760227

namespace A050488

/-- `∑[A266550(n+2)-1]` -/
def P15814538007271760227.Spec : Prop :=
  ∀ n, P15814538007271760227.a n = A050488 n

end A050488

/-! ## A050488.P5981348439243036638

`∑[A098011(n+3)-2]`
-/

namespace A050488.P5981348439243036638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098011 (n + 3) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050488.P5981348439243036638

namespace A050488

/-- `∑[A098011(n+3)-2]` -/
def P5981348439243036638.Spec : Prop :=
  ∀ n, P5981348439243036638.a n = A050488 n

end A050488

/-! ## A050488.P9062484275828732282

`∑[(A068156(n)-1)/2]`
-/

namespace A050488.P9062484275828732282
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068156 n - 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050488.P9062484275828732282

namespace A050488

/-- `∑[(A068156(n)-1)/2]` -/
def P9062484275828732282.Spec : Prop :=
  ∀ n, P9062484275828732282.a n = (A050488 n : ℚ)

end A050488

/-!
# A050489: a(n) = C(n)*(10*n + 1) where C(n) = Catalan numbers (A000108).

The programs for A050489, the canonical program `A050489.P16526552866551306306` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050489 has offset 0).

The definition of A050489 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050489.P12335340849210604753

`A000108(n)*(10*n+1)`
-/

namespace A050489.P12335340849210604753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (10 * n + 1 : ℤ)

end

end A050489.P12335340849210604753

namespace A050489

/-- `A000108(n)*(10*n+1)` -/
def P12335340849210604753.Spec : Prop :=
  ∀ n, P12335340849210604753.a n = A050489 n

end A050489

/-! ## A050489.P16526552866551306306

`A000984(n)+9*A001791(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A050489

/-- `A000984(n)+9*A001791(n)` -/
def P16526552866551306306.Spec : Prop :=
  ∀ n, P16526552866551306306.a n = A050489 n

theorem P16526552866551306306.correct : P16526552866551306306.Spec := by
  intro n
  simp only [A050489]

end A050489

/-! ## A050489.P5792257026721302393

`C(2*n, n)/(n+1)*(10*n+1)`
-/

namespace A050489.P5792257026721302393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ) * (10 * n + 1 : ℚ)

end

end A050489.P5792257026721302393

namespace A050489

/-- `C(2*n, n)/(n+1)*(10*n+1)` -/
def P5792257026721302393.Spec : Prop :=
  ∀ n, P5792257026721302393.a n = (A050489 n : ℚ)

end A050489

/-! ## A050489.P17893761715672802177

`(10*n+1)*A028304(2*n)`
-/

namespace A050489.P17893761715672802177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n + 1 : ℤ) * A028304 (2 * n)

end

end A050489.P17893761715672802177

namespace A050489

/-- `(10*n+1)*A028304(2*n)` -/
def P17893761715672802177.Spec : Prop :=
  ∀ n, P17893761715672802177.a n = A050489 n

end A050489

/-! ## A050489.P13718120589465757779

`A050479(n)+A001791(n)`
-/

namespace A050489.P13718120589465757779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050479 n + A001791 n

end

end A050489.P13718120589465757779

namespace A050489

/-- `A050479(n)+A001791(n)` -/
def P13718120589465757779.Spec : Prop :=
  ∀ n, P13718120589465757779.a n = A050489 n

theorem P13718120589465757779.correct : P13718120589465757779.Spec := by
  intro n
  simp only [A050489, Nat.add_sub_cancel, A050489.P13718120589465757779.a, A050489.P16526552866551306306.a, A000984, A000984.P7946844122574426130.a, A001791, A001791.P9713013280951293137.a, A050479, A050479.P17354006399765808413.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A050489

/-! ## A050489.P15498019397971391860

`A062561(n)+A050477(n)`
-/

namespace A050489.P15498019397971391860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062561 n + A050477 n

end

end A050489.P15498019397971391860

namespace A050489

/-- `A062561(n)+A050477(n)` -/
def P15498019397971391860.Spec : Prop :=
  ∀ n, P15498019397971391860.a n = A050489 n

theorem P15498019397971391860.correct : P15498019397971391860.Spec := by
  intro n
  simp only [A050489, Nat.add_sub_cancel, A050489.P15498019397971391860.a, A050489.P16526552866551306306.a, A000984, A000984.P7946844122574426130.a, A001791, A001791.P9713013280951293137.a, A050477, A050477.P1271674813469624088.a, A062561, A062561.P8999694222887573335.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A050489

/-! ## A050489.P1258763790265168884

`A162551(n)+A050478(n)`
-/

namespace A050489.P1258763790265168884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162551 n + A050478 n

end

end A050489.P1258763790265168884

namespace A050489

/-- `A162551(n)+A050478(n)` -/
def P1258763790265168884.Spec : Prop :=
  ∀ n, P1258763790265168884.a n = A050489 n

theorem P1258763790265168884.correct : P1258763790265168884.Spec := by
  intro n
  simp only [A050489, Nat.add_sub_cancel, A050489.P1258763790265168884.a, A050489.P16526552866551306306.a, A000984, A000984.P7946844122574426130.a, A001791, A001791.P9713013280951293137.a, A050478, A050478.P11948312383121739126.a, A162551, A162551.P10524967716150044895.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A050489

/-! ## A050489.P14326945588368597414

`A050490(n)-A001791(n)`
-/

namespace A050489.P14326945588368597414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050490 n - A001791 n

end

end A050489.P14326945588368597414

namespace A050489

/-- `A050490(n)-A001791(n)` -/
def P14326945588368597414.Spec : Prop :=
  ∀ n, P14326945588368597414.a n = A050489 n

end A050489

/-! ## A050489.P7439246798976810973

`A050491(n)-A162551(n)`
-/

namespace A050489.P7439246798976810973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050491 n - A162551 n

end

end A050489.P7439246798976810973

namespace A050489

/-- `A050491(n)-A162551(n)` -/
def P7439246798976810973.Spec : Prop :=
  ∀ n, P7439246798976810973.a n = A050489 n

end A050489

/-! ## A050489.P4777002063494919523

`A128650(n+2)+A050476(n)`
-/

namespace A050489.P4777002063494919523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128650 (n + 2) + A050476 n

end

end A050489.P4777002063494919523

namespace A050489

/-- `A128650(n+2)+A050476(n)` -/
def P4777002063494919523.Spec : Prop :=
  ∀ n, P4777002063494919523.a n = A050489 n

theorem P4777002063494919523.correct : P4777002063494919523.Spec := by
  intro n
  simp only [A050489, Nat.add_sub_cancel, A050489.P4777002063494919523.a, A050489.P16526552866551306306.a, A000984, A000984.P7946844122574426130.a, A001791, A001791.P9713013280951293137.a, A050476, A050476.P4852240921440524385.a, A128650, A128650.P16731929856799845103.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A050489

/-! ## A050489.P9162772604784884828

`A050478(n)+2*A001791(n)`
-/

namespace A050489.P9162772604784884828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050478 n + 2 * A001791 n

end

end A050489.P9162772604784884828

namespace A050489

/-- `A050478(n)+2*A001791(n)` -/
def P9162772604784884828.Spec : Prop :=
  ∀ n, P9162772604784884828.a n = A050489 n

theorem P9162772604784884828.correct : P9162772604784884828.Spec := by
  intro n
  simp only [A050489, Nat.add_sub_cancel, A050489.P9162772604784884828.a, A050489.P16526552866551306306.a, A000984, A000984.P7946844122574426130.a, A001791, A001791.P9713013280951293137.a, A050478, A050478.P11948312383121739126.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A050489

/-! ## A050489.P9848959150803203620

`A051944(n)+2*A062561(n)`
-/

namespace A050489.P9848959150803203620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051944 n + 2 * A062561 n

end

end A050489.P9848959150803203620

namespace A050489

/-- `A051944(n)+2*A062561(n)` -/
def P9848959150803203620.Spec : Prop :=
  ∀ n, P9848959150803203620.a n = A050489 n

theorem P9848959150803203620.correct : P9848959150803203620.Spec := by
  intro n
  simp only [A050489, Nat.add_sub_cancel, A050489.P9848959150803203620.a, A050489.P16526552866551306306.a, A000984, A000984.P7946844122574426130.a, A001791, A001791.P9713013280951293137.a, A051944, A051944.P8157116428899209073.a, A062561, A062561.P8999694222887573335.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A050489

/-! ## A050489.P7704222421342479622

`A050476(n)+2*A162551(n)`
-/

namespace A050489.P7704222421342479622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050476 n + 2 * A162551 n

end

end A050489.P7704222421342479622

namespace A050489

/-- `A050476(n)+2*A162551(n)` -/
def P7704222421342479622.Spec : Prop :=
  ∀ n, P7704222421342479622.a n = A050489 n

theorem P7704222421342479622.correct : P7704222421342479622.Spec := by
  intro n
  simp only [A050489, Nat.add_sub_cancel, A050489.P7704222421342479622.a, A050489.P16526552866551306306.a, A000984, A000984.P7946844122574426130.a, A001791, A001791.P9713013280951293137.a, A050476, A050476.P4852240921440524385.a, A162551, A162551.P10524967716150044895.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A050489

/-! ## A050489.P17564133136751112296

`2*A051945(n)-A000108(n)`
-/

namespace A050489.P17564133136751112296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051945 n - A000108 n

end

end A050489.P17564133136751112296

namespace A050489

/-- `2*A051945(n)-A000108(n)` -/
def P17564133136751112296.Spec : Prop :=
  ∀ n, P17564133136751112296.a n = A050489 n

end A050489

/-! ## A050489.P4079260294810147560

`2*A050476(n)-A001700(n)`
-/

namespace A050489.P4079260294810147560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050476 n - A001700 n

end

end A050489.P4079260294810147560

namespace A050489

/-- `2*A050476(n)-A001700(n)` -/
def P4079260294810147560.Spec : Prop :=
  ∀ n, P4079260294810147560.a n = A050489 n

end A050489

/-! ## A050489.P1175527695097306920

`A050491(n)-2*A001791(n)`
-/

namespace A050489.P1175527695097306920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050491 n - 2 * A001791 n

end

end A050489.P1175527695097306920

namespace A050489

/-- `A050491(n)-2*A001791(n)` -/
def P1175527695097306920.Spec : Prop :=
  ∀ n, P1175527695097306920.a n = A050489 n

end A050489

/-! ## A050489.P8648063722608884663

`2*A050478(n)-A050476(n)`
-/

namespace A050489.P8648063722608884663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050478 n - A050476 n

end

end A050489.P8648063722608884663

namespace A050489

/-- `2*A050478(n)-A050476(n)` -/
def P8648063722608884663.Spec : Prop :=
  ∀ n, P8648063722608884663.a n = A050489 n

theorem P8648063722608884663.correct : P8648063722608884663.Spec := by
  intro n
  simp only [A050489, Nat.add_sub_cancel, A050489.P8648063722608884663.a, A050489.P16526552866551306306.a, A000984, A000984.P7946844122574426130.a, A001791, A001791.P9713013280951293137.a, A050476, A050476.P4852240921440524385.a, A050478, A050478.P11948312383121739126.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A050489

/-! ## A050489.P11153855937689189352

`2*A050479(n)-A050478(n)`
-/

namespace A050489.P11153855937689189352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050479 n - A050478 n

end

end A050489.P11153855937689189352

namespace A050489

/-- `2*A050479(n)-A050478(n)` -/
def P11153855937689189352.Spec : Prop :=
  ∀ n, P11153855937689189352.a n = A050489 n

theorem P11153855937689189352.correct : P11153855937689189352.Spec := by
  intro n
  simp only [A050489, Nat.add_sub_cancel, A050489.P11153855937689189352.a, A050489.P16526552866551306306.a, A000984, A000984.P7946844122574426130.a, A001791, A001791.P9713013280951293137.a, A050478, A050478.P11948312383121739126.a, A050479, A050479.P17354006399765808413.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A050489

/-! ## A050489.P18176012394892214468

`(A050490(n)+A050479(n))/2`
-/

namespace A050489.P18176012394892214468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050490 n + A050479 n : ℚ) / 2

end

end A050489.P18176012394892214468

namespace A050489

/-- `(A050490(n)+A050479(n))/2` -/
def P18176012394892214468.Spec : Prop :=
  ∀ n, P18176012394892214468.a n = (A050489 n : ℚ)

end A050489

/-! ## A050489.P17502747087403605468

`A050479(n)+A000984(n)-A000108(n)`
-/

namespace A050489.P17502747087403605468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050479 n + A000984 n - A000108 n

end

end A050489.P17502747087403605468

namespace A050489

/-- `A050479(n)+A000984(n)-A000108(n)` -/
def P17502747087403605468.Spec : Prop :=
  ∀ n, P17502747087403605468.a n = A050489 n

end A050489

/-!
# A050490: a(n) = C(n)*(11n+1) where C(n) = Catalan numbers (A000108).

The programs for A050490, the canonical program `A050490.P5738266617380486810` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050490 has offset 0).

The definition of A050490 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050490.P5738266617380486810

`A000108(n)*(11*n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A050490

/-- `A000108(n)*(11*n+1)` -/
def P5738266617380486810.Spec : Prop :=
  ∀ n, P5738266617380486810.a n = A050490 n

theorem P5738266617380486810.correct : P5738266617380486810.Spec := by
  intro n
  simp only [A050490]

end A050490

/-! ## A050490.P9026123459016726629

`(11*n+1)*A028304(2*n)`
-/

namespace A050490.P9026123459016726629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 * n + 1 : ℤ) * A028304 (2 * n)

end

end A050490.P9026123459016726629

namespace A050490

/-- `(11*n+1)*A028304(2*n)` -/
def P9026123459016726629.Spec : Prop :=
  ∀ n, P9026123459016726629.a n = A050490 n

end A050490

/-! ## A050490.P11209005815118897216

`(11*n+1)*abs(A182492(4*n+3))`
-/

namespace A050490.P11209005815118897216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 * n + 1 : ℤ) * |A182492 (4 * n + 3)|

end

end A050490.P11209005815118897216

namespace A050490

/-- `(11*n+1)*abs(A182492(4*n+3))` -/
def P11209005815118897216.Spec : Prop :=
  ∀ n, P11209005815118897216.a n = A050490 n

end A050490

/-! ## A050490.P5169117070144856602

`A050489(n)+A001791(n)`
-/

namespace A050490.P5169117070144856602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050489 n + A001791 n

end

end A050490.P5169117070144856602

namespace A050490

/-- `A050489(n)+A001791(n)` -/
def P5169117070144856602.Spec : Prop :=
  ∀ n, P5169117070144856602.a n = A050490 n

end A050490

/-! ## A050490.P1932138724560597484

`A062561(n)+A050478(n)`
-/

namespace A050490.P1932138724560597484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062561 n + A050478 n

end

end A050490.P1932138724560597484

namespace A050490

/-- `A062561(n)+A050478(n)` -/
def P1932138724560597484.Spec : Prop :=
  ∀ n, P1932138724560597484.a n = A050490 n

end A050490

/-! ## A050490.P16552418562246318175

`A162551(n)+A050479(n)`
-/

namespace A050490.P16552418562246318175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162551 n + A050479 n

end

end A050490.P16552418562246318175

namespace A050490

/-- `A162551(n)+A050479(n)` -/
def P16552418562246318175.Spec : Prop :=
  ∀ n, P16552418562246318175.a n = A050490 n

end A050490

/-! ## A050490.P18255746935305910476

`A050491(n)-A001791(n)`
-/

namespace A050490.P18255746935305910476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050491 n - A001791 n

end

end A050490.P18255746935305910476

namespace A050490

/-- `A050491(n)-A001791(n)` -/
def P18255746935305910476.Spec : Prop :=
  ∀ n, P18255746935305910476.a n = A050490 n

theorem P18255746935305910476.correct : P18255746935305910476.Spec := by
  intro n
  simp only [A050490, Nat.add_sub_cancel, A050490.P18255746935305910476.a, A050490.P5738266617380486810.a, A000108, A000108.P17551949696095299361.a, A001791, A001791.P9713013280951293137.a, A050491, A050491.P18176495124032218276.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A050490

/-! ## A050490.P17588139773933187511

`A128650(n+2)+A050477(n)`
-/

namespace A050490.P17588139773933187511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128650 (n + 2) + A050477 n

end

end A050490.P17588139773933187511

namespace A050490

/-- `A128650(n+2)+A050477(n)` -/
def P17588139773933187511.Spec : Prop :=
  ∀ n, P17588139773933187511.a n = A050490 n

end A050490

/-! ## A050490.P17109979447717221830

`A050479(n)+2*A001791(n)`
-/

namespace A050490.P17109979447717221830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050479 n + 2 * A001791 n

end

end A050490.P17109979447717221830

namespace A050490

/-- `A050479(n)+2*A001791(n)` -/
def P17109979447717221830.Spec : Prop :=
  ∀ n, P17109979447717221830.a n = A050490 n

end A050490

/-! ## A050490.P12315407799770483042

`A051945(n)+2*A062561(n)`
-/

namespace A050490.P12315407799770483042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051945 n + 2 * A062561 n

end

end A050490.P12315407799770483042

namespace A050490

/-- `A051945(n)+2*A062561(n)` -/
def P12315407799770483042.Spec : Prop :=
  ∀ n, P12315407799770483042.a n = A050490 n

end A050490

/-! ## A050490.P11074665588335046972

`A050477(n)+2*A162551(n)`
-/

namespace A050490.P11074665588335046972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050477 n + 2 * A162551 n

end

end A050490.P11074665588335046972

namespace A050490

/-- `A050477(n)+2*A162551(n)` -/
def P11074665588335046972.Spec : Prop :=
  ∀ n, P11074665588335046972.a n = A050490 n

end A050490

/-! ## A050490.P13348158719760174204

`2*A050476(n)-A000984(n)`
-/

namespace A050490.P13348158719760174204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050476 n - A000984 n

end

end A050490.P13348158719760174204

namespace A050490

/-- `2*A050476(n)-A000984(n)` -/
def P13348158719760174204.Spec : Prop :=
  ∀ n, P13348158719760174204.a n = A050490 n

end A050490

/-! ## A050490.P15907368090786645741

`2*A050479(n)-A050477(n)`
-/

namespace A050490.P15907368090786645741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050479 n - A050477 n

end

end A050490.P15907368090786645741

namespace A050490

/-- `2*A050479(n)-A050477(n)` -/
def P15907368090786645741.Spec : Prop :=
  ∀ n, P15907368090786645741.a n = A050490 n

end A050490

/-! ## A050490.P17890706820771363319

`2*A050478(n)-A051945(n)`
-/

namespace A050490.P17890706820771363319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050478 n - A051945 n

end

end A050490.P17890706820771363319

namespace A050490

/-- `2*A050478(n)-A051945(n)` -/
def P17890706820771363319.Spec : Prop :=
  ∀ n, P17890706820771363319.a n = A050490 n

end A050490

/-! ## A050490.P16546378004048531509

`A050489(n)+A162551(n)/2`
-/

namespace A050490.P16546378004048531509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050489 n : ℚ) + (A162551 n : ℚ) / 2

end

end A050490.P16546378004048531509

namespace A050490

/-- `A050489(n)+A162551(n)/2` -/
def P16546378004048531509.Spec : Prop :=
  ∀ n, P16546378004048531509.a n = (A050490 n : ℚ)

end A050490

/-! ## A050490.P7317824323004368867

`A050491(n)-A162551(n)/2`
-/

namespace A050490.P7317824323004368867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050491 n : ℚ) - (A162551 n : ℚ) / 2

end

end A050490.P7317824323004368867

namespace A050490

/-- `A050491(n)-A162551(n)/2` -/
def P7317824323004368867.Spec : Prop :=
  ∀ n, P7317824323004368867.a n = (A050490 n : ℚ)

theorem P7317824323004368867.correct : P7317824323004368867.Spec := by
  intro n
  simp only [A050490, Nat.add_sub_cancel, A050490.P7317824323004368867.a, A050490.P5738266617380486810.a, A000108, A000108.P17551949696095299361.a, A050491, A050491.P18176495124032218276.a, A162551, A162551.P10524967716150044895.a, A001791, A001791.P9713013280951293137.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A050490

/-! ## A050490.P4622621773489579686

`2*A050477(n)-A051924(n+1)`
-/

namespace A050490.P4622621773489579686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050477 n - A051924 (n + 1)

end

end A050490.P4622621773489579686

namespace A050490

/-- `2*A050477(n)-A051924(n+1)` -/
def P4622621773489579686.Spec : Prop :=
  ∀ n, P4622621773489579686.a n = A050490 n

end A050490

/-! ## A050490.P8114611785411500451

`A050479(n)+A128650(n+2)/2`
-/

namespace A050490.P8114611785411500451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050479 n : ℚ) + (A128650 (n + 2) : ℚ) / 2

end

end A050490.P8114611785411500451

namespace A050490

/-- `A050479(n)+A128650(n+2)/2` -/
def P8114611785411500451.Spec : Prop :=
  ∀ n, P8114611785411500451.a n = (A050490 n : ℚ)

end A050490

/-! ## A050490.P15753976258160215566

`A051924(n+1)+2*A128650(n+2)`
-/

namespace A050490.P15753976258160215566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051924 (n + 1) + 2 * A128650 (n + 2)

end

end A050490.P15753976258160215566

namespace A050490

/-- `A051924(n+1)+2*A128650(n+2)` -/
def P15753976258160215566.Spec : Prop :=
  ∀ n, P15753976258160215566.a n = A050490 n

end A050490

/-! ## A050490.P16093137049216999406

`A050489(n)+A000984(n)-A000108(n)`
-/

namespace A050490.P16093137049216999406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050489 n + A000984 n - A000108 n

end

end A050490.P16093137049216999406

namespace A050490

/-- `A050489(n)+A000984(n)-A000108(n)` -/
def P16093137049216999406.Spec : Prop :=
  ∀ n, P16093137049216999406.a n = A050490 n

end A050490

/-!
# A050491: a(n) = C(n)*(12n+1) where C(n) = Catalan numbers (A000108).

The programs for A050491, the canonical program `A050491.P18176495124032218276` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050491 has offset 0).

The definition of A050491 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050491.P18176495124032218276

`A000108(n)*(12*n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A050491

/-- `A000108(n)*(12*n+1)` -/
def P18176495124032218276.Spec : Prop :=
  ∀ n, P18176495124032218276.a n = A050491 n

theorem P18176495124032218276.correct : P18176495124032218276.Spec := by
  intro n
  simp only [A050491]

end A050491

/-! ## A050491.P17144648562805757913

`record[(3*n+1)*abs(A182492(n+3))]`
-/

namespace A050491.P17144648562805757913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) * |A182492 (n + 3)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050491.P17144648562805757913

namespace A050491

/-- `record[(3*n+1)*abs(A182492(n+3))]` -/
def P17144648562805757913.Spec : Prop :=
  ∀ n, P17144648562805757913.a n = A050491 n

end A050491

/-! ## A050491.P16751658530737364388

`A050490(n)+A001791(n)`
-/

namespace A050491.P16751658530737364388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050490 n + A001791 n

end

end A050491.P16751658530737364388

namespace A050491

/-- `A050490(n)+A001791(n)` -/
def P16751658530737364388.Spec : Prop :=
  ∀ n, P16751658530737364388.a n = A050491 n

theorem P16751658530737364388.correct : P16751658530737364388.Spec := by
  intro n
  simp only [A050491, Nat.add_sub_cancel, A050491.P16751658530737364388.a, A050491.P18176495124032218276.a, A000108, A000108.P17551949696095299361.a, A001791, A001791.P9713013280951293137.a, A050490, A050490.P5738266617380486810.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A050491

/-! ## A050491.P1571740208124510634

`A062561(n)+A050479(n)`
-/

namespace A050491.P1571740208124510634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062561 n + A050479 n

end

end A050491.P1571740208124510634

namespace A050491

/-- `A062561(n)+A050479(n)` -/
def P1571740208124510634.Spec : Prop :=
  ∀ n, P1571740208124510634.a n = A050491 n

end A050491

/-! ## A050491.P2141544315963078434

`A162551(n)+A050489(n)`
-/

namespace A050491.P2141544315963078434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162551 n + A050489 n

end

end A050491.P2141544315963078434

namespace A050491

/-- `A162551(n)+A050489(n)` -/
def P2141544315963078434.Spec : Prop :=
  ∀ n, P2141544315963078434.a n = A050491 n

end A050491

/-! ## A050491.P5225545221162267952

`A128650(n+2)+A050478(n)`
-/

namespace A050491.P5225545221162267952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128650 (n + 2) + A050478 n

end

end A050491.P5225545221162267952

namespace A050491

/-- `A128650(n+2)+A050478(n)` -/
def P5225545221162267952.Spec : Prop :=
  ∀ n, P5225545221162267952.a n = A050491 n

end A050491

/-! ## A050491.P13602585413607956680

`A050489(n)+2*A001791(n)`
-/

namespace A050491.P13602585413607956680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050489 n + 2 * A001791 n

end

end A050491.P13602585413607956680

namespace A050491

/-- `A050489(n)+2*A001791(n)` -/
def P13602585413607956680.Spec : Prop :=
  ∀ n, P13602585413607956680.a n = A050491 n

end A050491

/-! ## A050491.P10965781878504501993

`A050476(n)+2*A062561(n)`
-/

namespace A050491.P10965781878504501993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050476 n + 2 * A062561 n

end

end A050491.P10965781878504501993

namespace A050491

/-- `A050476(n)+2*A062561(n)` -/
def P10965781878504501993.Spec : Prop :=
  ∀ n, P10965781878504501993.a n = A050491 n

end A050491

/-! ## A050491.P14807822083089795668

`A050478(n)+2*A162551(n)`
-/

namespace A050491.P14807822083089795668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050478 n + 2 * A162551 n

end

end A050491.P14807822083089795668

namespace A050491

/-- `A050478(n)+2*A162551(n)` -/
def P14807822083089795668.Spec : Prop :=
  ∀ n, P14807822083089795668.a n = A050491 n

end A050491

/-! ## A050491.P5686517656565074231

`2*A050476(n)-A000108(n)`
-/

namespace A050491.P5686517656565074231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050476 n - A000108 n

end

end A050491.P5686517656565074231

namespace A050491

/-- `2*A050476(n)-A000108(n)` -/
def P5686517656565074231.Spec : Prop :=
  ∀ n, P5686517656565074231.a n = A050491 n

end A050491

/-! ## A050491.P8317385106274811877

`2*A050477(n)-A001700(n)`
-/

namespace A050491.P8317385106274811877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050477 n - A001700 n

end

end A050491.P8317385106274811877

namespace A050491

/-- `2*A050477(n)-A001700(n)` -/
def P8317385106274811877.Spec : Prop :=
  ∀ n, P8317385106274811877.a n = A050491 n

end A050491

/-! ## A050491.P547197601084117716

`2*A050479(n)-A050476(n)`
-/

namespace A050491.P547197601084117716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050479 n - A050476 n

end

end A050491.P547197601084117716

namespace A050491

/-- `2*A050479(n)-A050476(n)` -/
def P547197601084117716.Spec : Prop :=
  ∀ n, P547197601084117716.a n = A050491 n

end A050491

/-! ## A050491.P8142469364121711547

`2*A050489(n)-A050478(n)`
-/

namespace A050491.P8142469364121711547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050489 n - A050478 n

end

end A050491.P8142469364121711547

namespace A050491

/-- `2*A050489(n)-A050478(n)` -/
def P8142469364121711547.Spec : Prop :=
  ∀ n, P8142469364121711547.a n = A050491 n

end A050491

/-! ## A050491.P4840709627198219410

`2*A050490(n)-A050489(n)`
-/

namespace A050491.P4840709627198219410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050490 n - A050489 n

end

end A050491.P4840709627198219410

namespace A050491

/-- `2*A050490(n)-A050489(n)` -/
def P4840709627198219410.Spec : Prop :=
  ∀ n, P4840709627198219410.a n = A050491 n

end A050491

/-! ## A050491.P1655030258329048277

`2*A050478(n)-A051944(n)`
-/

namespace A050491.P1655030258329048277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050478 n - A051944 n

end

end A050491.P1655030258329048277

namespace A050491

/-- `2*A050478(n)-A051944(n)` -/
def P1655030258329048277.Spec : Prop :=
  ∀ n, P1655030258329048277.a n = A050491 n

end A050491

/-! ## A050491.P2819660139859470214

`A050490(n)+A162551(n)/2`
-/

namespace A050491.P2819660139859470214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050490 n : ℚ) + (A162551 n : ℚ) / 2

end

end A050491.P2819660139859470214

namespace A050491

/-- `A050490(n)+A162551(n)/2` -/
def P2819660139859470214.Spec : Prop :=
  ∀ n, P2819660139859470214.a n = (A050491 n : ℚ)

theorem P2819660139859470214.correct : P2819660139859470214.Spec := by
  intro n
  simp only [A050491, Nat.add_sub_cancel, A050491.P2819660139859470214.a, A050491.P18176495124032218276.a, A000108, A000108.P17551949696095299361.a, A050490, A050490.P5738266617380486810.a, A162551, A162551.P10524967716150044895.a, A001791, A001791.P9713013280951293137.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A050491

/-! ## A050491.P8033759667676049066

`A051945(n)+A050477(n)-A000108(n)`
-/

namespace A050491.P8033759667676049066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051945 n + A050477 n - A000108 n

end

end A050491.P8033759667676049066

namespace A050491

/-- `A051945(n)+A050477(n)-A000108(n)` -/
def P8033759667676049066.Spec : Prop :=
  ∀ n, P8033759667676049066.a n = A050491 n

end A050491

/-! ## A050491.P7484664755435798298

`A050478(n)+A050476(n)-A001700(n)`
-/

namespace A050491.P7484664755435798298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050478 n + A050476 n - A001700 n

end

end A050491.P7484664755435798298

namespace A050491

/-- `A050478(n)+A050476(n)-A001700(n)` -/
def P7484664755435798298.Spec : Prop :=
  ∀ n, P7484664755435798298.a n = A050491 n

end A050491

/-! ## A050491.P14941130120133714238

`A051945(n)+A050478(n)-A000984(n)`
-/

namespace A050491.P14941130120133714238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051945 n + A050478 n - A000984 n

end

end A050491.P14941130120133714238

namespace A050491

/-- `A051945(n)+A050478(n)-A000984(n)` -/
def P14941130120133714238.Spec : Prop :=
  ∀ n, P14941130120133714238.a n = A050491 n

end A050491

/-! ## A050491.P5110840264715631723

`A051945(n)+A050479(n)-A001700(n)`
-/

namespace A050491.P5110840264715631723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051945 n + A050479 n - A001700 n

end

end A050491.P5110840264715631723

namespace A050491

/-- `A051945(n)+A050479(n)-A001700(n)` -/
def P5110840264715631723.Spec : Prop :=
  ∀ n, P5110840264715631723.a n = A050491 n

end A050491

/-!
# A050492: Thickened cube numbers: a(n) = n*(n^2 + (n-1)^2) + (n-1)*2*n*(n-1).

The programs for A050492, the canonical program `A050492.P6544951122689102902` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050492 has offset 1).

The definition of A050492 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*((n+1)²+n²)+n*2*(n+1)*n` (program `A050492.P6544951122689102902`, by `A050492.P6544951122689102902.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A050492.P6759439772677033542

`ogf((1+10x+13x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A050492.P6759439772677033542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 10, 13] [1, -4, 6, -4, 1] n

end

end A050492.P6759439772677033542

namespace A050492

/-- `ogf((1+10x+13x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P6759439772677033542.Spec : Prop :=
  ∀ n, P6759439772677033542.a n = A050492 (n + 1)

end A050492

/-! ## A050492.P15475188565240303194

`((2*(n+1)-1)^3+1)/2`
-/

namespace A050492.P15475188565240303194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 * (n + 1) : ℤ) - 1) ^ 3 + 1 : ℚ) / 2

end

end A050492.P15475188565240303194

namespace A050492

/-- `((2*(n+1)-1)^3+1)/2` -/
def P15475188565240303194.Spec : Prop :=
  ∀ n, P15475188565240303194.a n = (A050492 (n + 1) : ℚ)

theorem P15475188565240303194.correct : P15475188565240303194.Spec := by
  intro n
  simp only [A050492, Nat.add_sub_cancel, A050492.P15475188565240303194.a, A050492.P6544951122689102902.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A050492

/-! ## A050492.P6544951122689102902

`(n+1)*((n+1)²+n²)+n*2*(n+1)*n`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A050492

/-- `(n+1)*((n+1)²+n²)+n*2*(n+1)*n` -/
def P6544951122689102902.Spec : Prop :=
  ∀ n, (P6544951122689102902.a n : ℤ) = A050492 (n + 1)

theorem P6544951122689102902.correct : P6544951122689102902.Spec := by
  intro n
  simp only [A050492, Nat.add_sub_cancel]

end A050492

/-! ## A050492.P15003431749371347838

`∑[xor(1, 12*n²)]`
-/

namespace A050492.P15003431749371347838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (12 * n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050492.P15003431749371347838

namespace A050492

/-- `∑[xor(1, 12*n²)]` -/
def P15003431749371347838.Spec : Prop :=
  ∀ n, (P15003431749371347838.a n : ℤ) = A050492 (n + 1)

end A050492

/-! ## A050492.P1639499698878505313

`Δ[n²²-C(n, 2)]`
-/

namespace A050492.P1639499698878505313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - (Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A050492.P1639499698878505313

namespace A050492

/-- `Δ[n²²-C(n, 2)]` -/
def P1639499698878505313.Spec : Prop :=
  ∀ n, P1639499698878505313.a n = A050492 (n + 1)

theorem P1639499698878505313.correct : P1639499698878505313.Spec := by
  intro n
  simp only [A050492, Nat.add_sub_cancel, A050492.P1639499698878505313.f1, A050492.P1639499698878505313.a, A050492.P6544951122689102902.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A050492

/-! ## A050492.P10320286563871518963

`∑[or(1, 3*(2*n)²)]`
-/

namespace A050492.P10320286563871518963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * (2 * n) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050492.P10320286563871518963

namespace A050492

/-- `∑[or(1, 3*(2*n)²)]` -/
def P10320286563871518963.Spec : Prop :=
  ∀ n, (P10320286563871518963.a n : ℤ) = A050492 (n + 1)

end A050492

/-! ## A050492.P9921481141808995440

`ceil(or(1, 2*n)^3/2)`
-/

namespace A050492.P9921481141808995440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 (2 * n) ^ 3 : ℚ) / 2⌉

end

end A050492.P9921481141808995440

namespace A050492

/-- `ceil(or(1, 2*n)^3/2)` -/
def P9921481141808995440.Spec : Prop :=
  ∀ n, P9921481141808995440.a n = A050492 (n + 1)

end A050492

/-! ## A050492.P18186588600367417304

`round(or(1, 2*n)^3/2)`
-/

namespace A050492.P18186588600367417304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 (2 * n) ^ 3 : ℚ) / 2)

end

end A050492.P18186588600367417304

namespace A050492

/-- `round(or(1, 2*n)^3/2)` -/
def P18186588600367417304.Spec : Prop :=
  ∀ n, P18186588600367417304.a n = A050492 (n + 1)

end A050492

/-! ## A050492.P5008487702843584494

`ceil(xor(1, 2*n)^3/2)`
-/

namespace A050492.P5008487702843584494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (2 * n) ^ 3 : ℚ) / 2⌉

end

end A050492.P5008487702843584494

namespace A050492

/-- `ceil(xor(1, 2*n)^3/2)` -/
def P5008487702843584494.Spec : Prop :=
  ∀ n, P5008487702843584494.a n = A050492 (n + 1)

end A050492

/-! ## A050492.P508632809416688669

`round(xor(1, 2*n)^3/2)`
-/

namespace A050492.P508632809416688669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 (2 * n) ^ 3 : ℚ) / 2)

end

end A050492.P508632809416688669

namespace A050492

/-- `round(xor(1, 2*n)^3/2)` -/
def P508632809416688669.Spec : Prop :=
  ∀ n, P508632809416688669.a n = A050492 (n + 1)

end A050492

/-! ## A050492.P12663961124474548152

`ceil(cosh(3*log(2*n+1)))`
-/

namespace A050492.P12663961124474548152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (3 * Real.log (2 * n + 1 : ℝ))⌉

end

end A050492.P12663961124474548152

namespace A050492

/-- `ceil(cosh(3*log(2*n+1)))` -/
def P12663961124474548152.Spec : Prop :=
  ∀ n, P12663961124474548152.a n = A050492 (n + 1)

end A050492

/-! ## A050492.P4114628338915084964

`round(cosh(3*log(2*n+1)))`
-/

namespace A050492.P4114628338915084964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (3 * Real.log (2 * n + 1 : ℝ)))

end

end A050492.P4114628338915084964

namespace A050492

/-- `round(cosh(3*log(2*n+1)))` -/
def P4114628338915084964.Spec : Prop :=
  ∀ n, P4114628338915084964.a n = A050492 (n + 1)

end A050492

/-! ## A050492.P10579974231079597494

`lcm(n+1, n-Δ[n²²])`
-/

namespace A050492.P10579974231079597494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) ((n : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A050492.P10579974231079597494

namespace A050492

/-- `lcm(n+1, n-Δ[n²²])` -/
def P10579974231079597494.Spec : Prop :=
  ∀ n, (P10579974231079597494.a n : ℤ) = A050492 (n + 1)

end A050492

/-! ## A050492.P12110210907675902749

`ceil(lcm(2, (2*n+1)^3)/4)`
-/

namespace A050492.P12110210907675902749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lcm 2 ((2 * n + 1) ^ 3) : ℚ) / 4⌉

end

end A050492.P12110210907675902749

namespace A050492

/-- `ceil(lcm(2, (2*n+1)^3)/4)` -/
def P12110210907675902749.Spec : Prop :=
  ∀ n, P12110210907675902749.a n = A050492 (n + 1)

end A050492

/-! ## A050492.P2417709678169535370

`ceil((2*n+1)/Δ[atan(2*n)])`
-/

namespace A050492.P2417709678169535370
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (2 * n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℝ) / (f1 (n + 1) - f1 n)⌉

end

end A050492.P2417709678169535370

namespace A050492

/-- `ceil((2*n+1)/Δ[atan(2*n)])` -/
def P2417709678169535370.Spec : Prop :=
  ∀ n, P2417709678169535370.a n = A050492 (n + 1)

end A050492

/-! ## A050492.P15025636256745957107

`round((2*n+1)/Δ[atan(2*n)])`
-/

namespace A050492.P15025636256745957107
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (2 * n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n + 1 : ℝ) / (f1 (n + 1) - f1 n))

end

end A050492.P15025636256745957107

namespace A050492

/-- `round((2*n+1)/Δ[atan(2*n)])` -/
def P15025636256745957107.Spec : Prop :=
  ∀ n, P15025636256745957107.a n = A050492 (n + 1)

end A050492

/-! ## A050492.P4764412225180596086

`(n+1)*∑[a(n-1)+8]` with `a(0)=1, a(1)=6`
-/

namespace A050492.P4764412225180596086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A050492.P4764412225180596086

namespace A050492

/-- `(n+1)*∑[a(n-1)+8]` -/
def P4764412225180596086.Spec : Prop :=
  ∀ n, (P4764412225180596086.a n : ℤ) = A050492 (n + 1)

end A050492

/-! ## A050492.P7500651386865879222

`(lcm(2*n, Δ[n²])+1)*(n+1)`
-/

namespace A050492.P7500651386865879222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.lcm (2 * n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + 1) * (n + 1)

end

end A050492.P7500651386865879222

namespace A050492

/-- `(lcm(2*n, Δ[n²])+1)*(n+1)` -/
def P7500651386865879222.Spec : Prop :=
  ∀ n, (P7500651386865879222.a n : ℤ) = A050492 (n + 1)

end A050492

/-! ## A050492.P4214829016701934935

`ceil((2*n+1)^3/gcd(2, 2*n))`
-/

namespace A050492.P4214829016701934935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n + 1) ^ 3 : ℚ) / (Nat.gcd 2 (2 * n) : ℚ)⌉

end

end A050492.P4214829016701934935

namespace A050492

/-- `ceil((2*n+1)^3/gcd(2, 2*n))` -/
def P4214829016701934935.Spec : Prop :=
  ∀ n, P4214829016701934935.a n = A050492 (n + 1)

end A050492

/-! ## A050492.P7999588141287997119

`ceil(C(2*n+1, 2*n)^3/2)`
-/

namespace A050492.P7999588141287997119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (2 * n + 1) (2 * n) ^ 3 : ℚ) / 2⌉

end

end A050492.P7999588141287997119

namespace A050492

/-- `ceil(C(2*n+1, 2*n)^3/2)` -/
def P7999588141287997119.Spec : Prop :=
  ∀ n, P7999588141287997119.a n = A050492 (n + 1)

end A050492

/-!
# A050493: a(n) = sum of binary digits of n-th triangular number.

The programs for A050493, the canonical program `A050493.P3448081831434903334` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050493 has offset 0).

The definition of A050493 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050493.P3448081831434903334

`A000120(A000217(n))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A050493

/-- `A000120(A000217(n))` -/
def P3448081831434903334.Spec : Prop :=
  ∀ n, P3448081831434903334.a n = A050493 n

theorem P3448081831434903334.correct : P3448081831434903334.Spec := by
  intro n
  simp only [A050493]

end A050493

/-! ## A050493.P16218529162306466907

`A000120(n*(n+1))`
-/

namespace A050493.P16218529162306466907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n * (n + 1))

end

end A050493.P16218529162306466907

namespace A050493

/-- `A000120(n*(n+1))` -/
def P16218529162306466907.Spec : Prop :=
  ∀ n, P16218529162306466907.a n = A050493 n

end A050493

/-! ## A050493.P5844332902362986

`A159918(Δ[n²])-1`
-/

namespace A050493.P5844332902362986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A050493.P5844332902362986

namespace A050493

/-- `A159918(Δ[n²])-1` -/
def P5844332902362986.Spec : Prop :=
  ∀ n, P5844332902362986.a n = A050493 n

end A050493

/-! ## A050493.P4260922851362581072

`A285717(Δ[n²])-1`
-/

namespace A050493.P4260922851362581072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285717 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A050493.P4260922851362581072

namespace A050493

/-- `A285717(Δ[n²])-1` -/
def P4260922851362581072.Spec : Prop :=
  ∀ n, P4260922851362581072.a n = A050493 n

end A050493

/-! ## A050493.P4595999171510895754

`abs(1-A159918(2*n+1))`
-/

namespace A050493.P4595999171510895754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A159918 (2 * n + 1)|

end

end A050493.P4595999171510895754

namespace A050493

/-- `abs(1-A159918(2*n+1))` -/
def P4595999171510895754.Spec : Prop :=
  ∀ n, P4595999171510895754.a n = A050493 n

end A050493

/-! ## A050493.P7830950897089848314

`A023443(A159918(2*n+1))`
-/

namespace A050493.P7830950897089848314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A159918 (2 * n + 1)).toNat

end

end A050493.P7830950897089848314

namespace A050493

/-- `A023443(A159918(2*n+1))` -/
def P7830950897089848314.Spec : Prop :=
  ∀ n, P7830950897089848314.a n = A050493 n

end A050493

/-! ## A050493.P8398277128105442086

`log2(A001316(∑[n]))`
-/

namespace A050493.P8398277128105442086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A050493.P8398277128105442086

namespace A050493

/-- `log2(A001316(∑[n]))` -/
def P8398277128105442086.Spec : Prop :=
  ∀ n, P8398277128105442086.a n = (A050493 n : ℝ)

end A050493

/-! ## A050493.P7465794214376887660

`val(A001316(C(n+1, 2)), 2)`
-/

namespace A050493.P7465794214376887660
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001316 (Nat.choose (n + 1) 2)).toNat 2

end

end A050493.P7465794214376887660

namespace A050493

/-- `val(A001316(C(n+1, 2)), 2)` -/
def P7465794214376887660.Spec : Prop :=
  ∀ n, (P7465794214376887660.a n : ℤ) = A050493 n

end A050493

/-! ## A050493.P10884203450871081678

`A000523(A209639(∑[n]))`
-/

namespace A050493.P10884203450871081678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A209639 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A050493.P10884203450871081678

namespace A050493

/-- `A000523(A209639(∑[n]))` -/
def P10884203450871081678.Spec : Prop :=
  ∀ n, P10884203450871081678.a n = A050493 n

end A050493

/-! ## A050493.P7593868931934323310

`log2(A060632(∑[2*n]))`
-/

namespace A050493.P7593868931934323310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A060632 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A050493.P7593868931934323310

namespace A050493

/-- `log2(A060632(∑[2*n]))` -/
def P7593868931934323310.Spec : Prop :=
  ∀ n, P7593868931934323310.a n = (A050493 n : ℝ)

end A050493

/-! ## A050493.P13100442957983201603

`val(A001316(n²+n), 2)`
-/

namespace A050493.P13100442957983201603
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001316 (n ^ 2 + n)).toNat 2

end

end A050493.P13100442957983201603

namespace A050493

/-- `val(A001316(n²+n), 2)` -/
def P13100442957983201603.Spec : Prop :=
  ∀ n, (P13100442957983201603.a n : ℤ) = A050493 n

end A050493

/-! ## A050493.P1064387684214285784

`A001222(A001316(∑[2*n]))`
-/

namespace A050493.P1064387684214285784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001316 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A050493.P1064387684214285784

namespace A050493

/-- `A001222(A001316(∑[2*n]))` -/
def P1064387684214285784.Spec : Prop :=
  ∀ n, P1064387684214285784.a n = A050493 n

end A050493

/-! ## A050493.P14259080659572072915

`A000523(A001316(n²+n))`
-/

namespace A050493.P14259080659572072915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A001316 (n ^ 2 + n)).toNat

end

end A050493.P14259080659572072915

namespace A050493

/-- `A000523(A001316(n²+n))` -/
def P14259080659572072915.Spec : Prop :=
  ∀ n, P14259080659572072915.a n = A050493 n

end A050493

/-! ## A050493.P9710503967342368600

`n²-A005187(∑[n])+n`
-/

namespace A050493.P9710503967342368600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A005187 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A050493.P9710503967342368600

namespace A050493

/-- `n²-A005187(∑[n])+n` -/
def P9710503967342368600.Spec : Prop :=
  ∀ n, P9710503967342368600.a n = A050493 n

end A050493

/-! ## A050493.P7809603171313095390

`∑{d}[∑[n], A297115(#)]`
-/

namespace A050493.P7809603171313095390
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A297115 d

end

end A050493.P7809603171313095390

namespace A050493

/-- `∑{d}[∑[n], A297115(#)]` -/
def P7809603171313095390.Spec : Prop :=
  ∀ n, P7809603171313095390.a n = A050493 n

end A050493

/-! ## A050493.P16705072791849377142

`A001222(A268444(∑[n]))`
-/

namespace A050493.P16705072791849377142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A268444 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A050493.P16705072791849377142

namespace A050493

/-- `A001222(A268444(∑[n]))` -/
def P16705072791849377142.Spec : Prop :=
  ∀ n, P16705072791849377142.a n = A050493 n

end A050493

/-! ## A050493.P18253691791446285487

`∑{digits}[A007088(A002378(n)), #]`
-/

namespace A050493.P18253691791446285487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A002378 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A050493.P18253691791446285487

namespace A050493

/-- `∑{digits}[A007088(A002378(n)), #]` -/
def P18253691791446285487.Spec : Prop :=
  ∀ n, (P18253691791446285487.a n : ℤ) = A050493 n

end A050493

/-! ## A050493.P9845472598797451094

`A005811(A292601(∑[n]))`
-/

namespace A050493.P9845472598797451094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A292601 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A050493.P9845472598797451094

namespace A050493

/-- `A005811(A292601(∑[n]))` -/
def P9845472598797451094.Spec : Prop :=
  ∀ n, P9845472598797451094.a n = A050493 n

end A050493

/-! ## A050493.P6939282094022659079

`A007814(A001316((n+1)*2*n))`
-/

namespace A050493.P6939282094022659079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A001316 ((n + 1) * (2 * n))).toNat

end

end A050493.P6939282094022659079

namespace A050493

/-- `A007814(A001316((n+1)*2*n))` -/
def P6939282094022659079.Spec : Prop :=
  ∀ n, P6939282094022659079.a n = A050493 n

end A050493

/-! ## A050493.P13484751254098940217

`A324467(∑[n])/3`
-/

namespace A050493.P13484751254098940217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324467 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 3

end

end A050493.P13484751254098940217

namespace A050493

/-- `A324467(∑[n])/3` -/
def P13484751254098940217.Spec : Prop :=
  ∀ n, P13484751254098940217.a n = (A050493 n : ℚ)

end A050493

/-!
# A050494: Partial sums of A051923.

The programs for A050494, the canonical program `A050494.P13329292330952089968` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050494 has offset 0).

The definition of A050494 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050494.P13329292330952089968

`C(n+6, 6)*(3*n+7)/7`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A050494

/-- `C(n+6, 6)*(3*n+7)/7` -/
def P13329292330952089968.Spec : Prop :=
  ∀ n, P13329292330952089968.a n = (A050494 n : ℚ)

end A050494

/-! ## A050494.P5525697296590564832

`ogf((1+2x)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))`
-/

namespace A050494.P5525697296590564832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -8, 28, -56, 70, -56, 28, -8, 1] n

end

end A050494.P5525697296590564832

namespace A050494

/-- `ogf((1+2x)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))` -/
def P5525697296590564832.Spec : Prop :=
  ∀ n, P5525697296590564832.a n = A050494 n

end A050494

/-! ## A050494.P16829671432429543353

`∑[∑[∑[∑[∑[∑[3*n+1]]]]]]`
-/

namespace A050494.P16829671432429543353
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050494.P16829671432429543353

namespace A050494

/-- `∑[∑[∑[∑[∑[∑[3*n+1]]]]]]` -/
def P16829671432429543353.Spec : Prop :=
  ∀ n, (P16829671432429543353.a n : ℤ) = A050494 n

end A050494

/-! ## A050494.P16968404306553485095

`floor(∑[∑[∑[∑[∑[∑[a(n-1)+3]]]]]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A050494.P16968404306553485095
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f6 =>
  f6 (n - 1) + 3

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050494.P16968404306553485095

namespace A050494

/-- `floor(∑[∑[∑[∑[∑[∑[a(n-1)+3]]]]]])` -/
def P16968404306553485095.Spec : Prop :=
  ∀ n, (P16968404306553485095.a n : ℤ) = A050494 n

end A050494

/-! ## A050494.P310285165526278329

`∑[∑[∑[∑[∑[a(n-1)+3]]]]]+a(n-1)` with `a(0)=1`
-/

namespace A050494.P310285165526278329
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f5 =>
  f5 (n - 1) + 3

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A050494.P310285165526278329

namespace A050494

/-- `∑[∑[∑[∑[∑[a(n-1)+3]]]]]+a(n-1)` -/
def P310285165526278329.Spec : Prop :=
  ∀ n, (P310285165526278329.a n : ℤ) = A050494 n

end A050494

/-! ## A050494.P18149463905295954258

`∑[A027801(n+1)]/5`
-/

namespace A050494.P18149463905295954258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027801 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 5

end

end A050494.P18149463905295954258

namespace A050494

/-- `∑[A027801(n+1)]/5` -/
def P18149463905295954258.Spec : Prop :=
  ∀ n, P18149463905295954258.a n = (A050494 n : ℚ)

end A050494

/-! ## A050494.P17105685479586353405

`A051923(n)+a(n-1)` with `a(0)=1`
-/

namespace A050494.P17105685479586353405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A051923 n + a (n - 1)

end

end A050494.P17105685479586353405

namespace A050494

/-- `A051923(n)+a(n-1)` -/
def P17105685479586353405.Spec : Prop :=
  ∀ n, P17105685479586353405.a n = A050494 n

end A050494

/-! ## A050494.P18249455949470240300

`A253944(n+6)+A000580(n+7)-A095663(n)`
-/

namespace A050494.P18249455949470240300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253944 (n + 6) + (A000580 (n + 7) - A095663 n)

end

end A050494.P18249455949470240300

namespace A050494

/-- `A253944(n+6)+A000580(n+7)-A095663(n)` -/
def P18249455949470240300.Spec : Prop :=
  ∀ n, P18249455949470240300.a n = A050494 n

end A050494

/-! ## A050494.P16008533776028190632

`A053367(n+1)-(A053367(n)+A051923(n+1))`
-/

namespace A050494.P16008533776028190632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053367 (n + 1) - (A053367 n + A051923 (n + 1))

end

end A050494.P16008533776028190632

namespace A050494

/-- `A053367(n+1)-(A053367(n)+A051923(n+1))` -/
def P16008533776028190632.Spec : Prop :=
  ∀ n, P16008533776028190632.a n = A050494 n

end A050494

/-!
# A050495: Numbers that are the first term of at least one arithmetic progression with 4 or more terms all having the same value of Euler's totient function phi(x).

The programs for A050495, there is no canonical definition to state claims against.
-/

/-! ## A050495.P8574586475080921429

`A050497(n+1)*A144437(A007837(n))`
-/

namespace A050495.P8574586475080921429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050497 (n + 1) * A144437 (A007837 n).toNat

end

end A050495.P8574586475080921429

/-! ## A050495.P17535479055667371202

`A050497(n+1)*A181788(A000079(n))`
-/

namespace A050495.P17535479055667371202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050497 (n + 1) * A181788 (A000079 n).toNat

end

end A050495.P17535479055667371202

/-! ## A050495.P17435175706532607522

`A050497(n+1)*A300402(A071262(n))`
-/

namespace A050495.P17435175706532607522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050497 (n + 1) * A300402 (A071262 n).toNat

end

end A050495.P17435175706532607522

/-! ## A050495.P13995258845337962497

`A008486(A050497(n+1)^A055642(n))`
-/

namespace A050495.P13995258845337962497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (SequenceMachineLib.roundAway ((A050497 (n + 1) : ℚ) ^ (A055642 n : ℤ))).toNat

end

end A050495.P13995258845337962497

/-! ## A050495.P16093790467050137886

`A175029(A050497(n+1)^A055642(n))`
-/

namespace A050495.P16093790467050137886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175029 (SequenceMachineLib.roundAway ((A050497 (n + 1) : ℚ) ^ (A055642 n : ℤ))).toNat

end

end A050495.P16093790467050137886

/-!
# A050497: Values of phi(x) in arithmetic progressions of at least 4 terms having the same value of phi(x) in A050495.

The programs for A050497, there is no canonical definition to state claims against.
-/

/-! ## A050497.P3600141506472956688

`A000010(A050495(n+1))`
-/

namespace A050497.P3600141506472956688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A050495 (n + 1)).toNat

end

end A050497.P3600141506472956688

/-! ## A050497.P6610387051293218884

`∑{d}[A050495(n+1), A007431(#)]`
-/

namespace A050497.P6610387051293218884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050495 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007431 d

end

end A050497.P6610387051293218884

/-! ## A050497.P7400847876346197357

`A319998(2*A050495(n+1))/2`
-/

namespace A050497.P7400847876346197357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319998 (2 * A050495 (n + 1)).toNat : ℚ) / 2

end

end A050497.P7400847876346197357

/-! ## A050497.P8324429546361657026

`A039649(A050495(n+1))-A057427(2*n+1)`
-/

namespace A050497.P8324429546361657026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A050495 (n + 1)).toNat - A057427 (2 * n + 1)

end

end A050497.P8324429546361657026

/-! ## A050497.P4296174511495752635

`A109606(A050495(n+1))+A057427(3*n+4)`
-/

namespace A050497.P4296174511495752635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (A050495 (n + 1)).toNat + A057427 (3 * n + 4)

end

end A050497.P4296174511495752635

/-!
# A050498: Arithmetic progressions of at least 4 terms with common difference 6 having the same value of phi(x) start at these numbers.

The programs for A050498, there is no canonical definition to state claims against.
-/

/-! ## A050498.P9908092104328976360

`A039670(4*n+1)`
-/

namespace A050498.P9908092104328976360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039670 (4 * n + 1)

end

end A050498.P9908092104328976360

/-! ## A050498.P15599580579164733732

`record[A039670(Δ[A247375(n)])]`
-/

namespace A050498.P15599580579164733732
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247375 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039670 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050498.P15599580579164733732

/-! ## A050498.P10692493086543614501

`A039670(A016825(n))-6`
-/

namespace A050498.P10692493086543614501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039670 (A016825 n).toNat - 6

end

end A050498.P10692493086543614501

/-! ## A050498.P10292208532280944287

`record[gcd(A039670(n+1), A265514(n))]`
-/

namespace A050498.P10292208532280944287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A039670 (n + 1)) (A265514 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050498.P10292208532280944287

/-!
# A050499: Nearest integer to n/log(n).

The programs for A050499, the canonical program `A050499.P8905183548474590780` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050499 has offset 2).

The definition of A050499 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050499.P8905183548474590780

`round((n+2)/log(n+2))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A050499

/-- `round((n+2)/log(n+2))` -/
def P8905183548474590780.Spec : Prop :=
  ∀ n, P8905183548474590780.a n = A050499 (n + 2)

theorem P8905183548474590780.correct : P8905183548474590780.Spec := by
  intro n
  simp only [A050499, Nat.add_sub_cancel]

end A050499

/-! ## A050499.P3247816134245967336

`A053622(n+2)+A000720(n+2)`
-/

namespace A050499.P3247816134245967336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053622 (n + 2) + A000720 (n + 2)

end

end A050499.P3247816134245967336

namespace A050499

/-- `A053622(n+2)+A000720(n+2)` -/
def P3247816134245967336.Spec : Prop :=
  ∀ n, P3247816134245967336.a n = A050499 (n + 2)

theorem P3247816134245967336.correct : P3247816134245967336.Spec := by
  intro n
  simp only [A050499, Nat.add_sub_cancel, A050499.P3247816134245967336.a, A050499.P8905183548474590780.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A053622, A053622.P4231210635218977256.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A050499

/-! ## A050499.P16934792119767734050

`A053622(n+2)+∑[A010051(n+2)]`
-/

namespace A050499.P16934792119767734050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053622 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050499.P16934792119767734050

namespace A050499

/-- `A053622(n+2)+∑[A010051(n+2)]` -/
def P16934792119767734050.Spec : Prop :=
  ∀ n, P16934792119767734050.a n = A050499 (n + 2)

end A050499

/-! ## A050499.P12920834173516128846

`A047784(n+2)+A053622(n+2)-A052435(n+2)`
-/

namespace A050499.P12920834173516128846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047784 (n + 2) + (A053622 (n + 2) - A052435 (n + 2))

end

end A050499.P12920834173516128846

namespace A050499

/-- `A047784(n+2)+A053622(n+2)-A052435(n+2)` -/
def P12920834173516128846.Spec : Prop :=
  ∀ n, P12920834173516128846.a n = A050499 (n + 2)

end A050499

/-! ## A050499.P2802704441576472380

`A047783(n+2)+A053622(n+2)-A282870(n+2)`
-/

namespace A050499.P2802704441576472380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047783 (n + 2) + (A053622 (n + 2) - A282870 (n + 2))

end

end A050499.P2802704441576472380

namespace A050499

/-- `A047783(n+2)+A053622(n+2)-A282870(n+2)` -/
def P2802704441576472380.Spec : Prop :=
  ∀ n, P2802704441576472380.a n = A050499 (n + 2)

end A050499

/-! ## A050499.P12237738331914000705

`A230980(n+2)+A053622(n+2)`
-/

namespace A050499.P12237738331914000705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (n + 2) + A053622 (n + 2)

end

end A050499.P12237738331914000705

namespace A050499

/-- `A230980(n+2)+A053622(n+2)` -/
def P12237738331914000705.Spec : Prop :=
  ∀ n, P12237738331914000705.a n = A050499 (n + 2)

end A050499

/-! ## A050499.P2356781702070798111

`A090663(n+2)+1`
-/

namespace A050499.P2356781702070798111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090663 (n + 2) + 1

end

end A050499.P2356781702070798111

namespace A050499

/-- `A090663(n+2)+1` -/
def P2356781702070798111.Spec : Prop :=
  ∀ n, P2356781702070798111.a n = A050499 (n + 2)

end A050499

/-! ## A050499.P11309169390020455862

`A020725(A090663(n+2))`
-/

namespace A050499.P11309169390020455862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A090663 (n + 2)).toNat

end

end A050499.P11309169390020455862

namespace A050499

/-- `A020725(A090663(n+2))` -/
def P11309169390020455862.Spec : Prop :=
  ∀ n, P11309169390020455862.a n = A050499 (n + 2)

end A050499

