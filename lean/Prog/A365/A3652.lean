import SequenceMachineLib.Basic
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
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
import Seq.B007.C001
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
# A365200: Even semiprimes that are the exact average of two consecutive odd semiprimes.

The programs for A365200, there is no canonical definition to state claims against.
-/

/-! ## A365200.P2225103302006737204

`∩[A213025(n+1), A146309(n)]`
-/

namespace A365200.P2225103302006737204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146309 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365200.P2225103302006737204

/-! ## A365200.P17030312279053840743

`∩[A213025(n+1), A386317(n+1)]`
-/

namespace A365200.P17030312279053840743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365200.P17030312279053840743

/-! ## A365200.P1861176577831088033

`∩[A171156(n+1), A213025(n+1)]`
-/

namespace A365200.P1861176577831088033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365200.P1861176577831088033

/-! ## A365200.P4289542681616552131

`∩[A171156(n+1), A213063(n+1)]`
-/

namespace A365200.P4289542681616552131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365200.P4289542681616552131

/-! ## A365200.P9621991278656686867

`∩[A213025(n+1), A242486(n+1)]`
-/

namespace A365200.P9621991278656686867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365200.P9621991278656686867

/-!
# A365204: Centered icositetrachoral numbers.

The programs for A365204, the canonical program `A365204.P14635358423837541919` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365204 has offset 1).

The definition of A365204 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365204.P6770281374177771179

`ogf((1+140x+294x^2+140x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A365204.P6770281374177771179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 140, 294, 140, 1] [1, -5, 10, -10, 5, -1] n

end

end A365204.P6770281374177771179

namespace A365204

/-- `ogf((1+140x+294x^2+140x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P6770281374177771179.Spec : Prop :=
  ∀ n, P6770281374177771179.a n = A365204 (n + 1)

end A365204

/-! ## A365204.P14635358423837541919

`24*(n+1)^4-48*(n+1)^3+48*(n+1)²-24*(n+1)+1`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A365204

/-- `24*(n+1)^4-48*(n+1)^3+48*(n+1)²-24*(n+1)+1` -/
def P14635358423837541919.Spec : Prop :=
  ∀ n, P14635358423837541919.a n = A365204 (n + 1)

theorem P14635358423837541919.correct : P14635358423837541919.Spec := by
  intro n
  simp only [A365204, Nat.add_sub_cancel]

end A365204

/-! ## A365204.P10238149967151148205

`abs(3*A365206(n+1)-2)`
-/

namespace A365204.P10238149967151148205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 * A365206 (n + 1) - 2|

end

end A365204.P10238149967151148205

namespace A365204

/-- `abs(3*A365206(n+1)-2)` -/
def P10238149967151148205.Spec : Prop :=
  ∀ n, P10238149967151148205.a n = A365204 (n + 1)

end A365204

/-! ## A365204.P2729994845857217077

`A195158(∑[4*n]+1)`
-/

namespace A365204.P2729994845857217077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195158 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A365204.P2729994845857217077

namespace A365204

/-- `A195158(∑[4*n]+1)` -/
def P2729994845857217077.Spec : Prop :=
  ∀ n, P2729994845857217077.a n = A365204 (n + 1)

end A365204

/-! ## A365204.P13955233964217271328

`xor(9, A005897(A001844(n)))`
-/

namespace A365204.P13955233964217271328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 9 (A005897 (A001844 n).toNat)

end

end A365204.P13955233964217271328

namespace A365204

/-- `xor(9, A005897(A001844(n)))` -/
def P13955233964217271328.Spec : Prop :=
  ∀ n, P13955233964217271328.a n = A365204 (n + 1)

end A365204

/-! ## A365204.P15696604097190677901

`A195158(A001844(n))%A228302(n+1)`
-/

namespace A365204.P15696604097190677901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195158 (A001844 n).toNat) (A228302 (n + 1))

end

end A365204.P15696604097190677901

namespace A365204

/-- `A195158(A001844(n))%A228302(n+1)` -/
def P15696604097190677901.Spec : Prop :=
  ∀ n, P15696604097190677901.a n = A365204 (n + 1)

end A365204

/-!
# A365205: Centered pentachoral numbers.

The programs for A365205, the canonical program `A365205.P152634823592836922` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365205 has offset 1).

The definition of A365205 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365205.P16372430906953574021

`ogf((1+16x+26x^2+16x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A365205.P16372430906953574021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 16, 26, 16, 1] [1, -5, 10, -10, 5, -1] n

end

end A365205.P16372430906953574021

namespace A365205

/-- `ogf((1+16x+26x^2+16x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P16372430906953574021.Spec : Prop :=
  ∀ n, P16372430906953574021.a n = A365205 (n + 1)

end A365205

/-! ## A365205.P152634823592836922

`5/2*(n+1)^4-5*(n+1)^3+15/2*(n+1)²-5*(n+1)+1`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A365205

/-- `5/2*(n+1)^4-5*(n+1)^3+15/2*(n+1)²-5*(n+1)+1` -/
def P152634823592836922.Spec : Prop :=
  ∀ n, P152634823592836922.a n = (A365205 (n + 1) : ℚ)

end A365205

/-! ## A365205.P964612424235870755

`A069133(∑[n]+1)`
-/

namespace A365205.P964612424235870755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069133 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A365205.P964612424235870755

namespace A365205

/-- `A069133(∑[n]+1)` -/
def P964612424235870755.Spec : Prop :=
  ∀ n, P964612424235870755.a n = A365205 (n + 1)

end A365205

/-! ## A365205.P6517791838936706513

`A195142(∑[2*n]+1)`
-/

namespace A365205.P6517791838936706513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195142 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A365205.P6517791838936706513

namespace A365205

/-- `A195142(∑[2*n]+1)` -/
def P6517791838936706513.Spec : Prop :=
  ∀ n, P6517791838936706513.a n = A365205 (n + 1)

end A365205

/-! ## A365205.P13295927493614896030

`A269132(A005891(n))`
-/

namespace A365205.P13295927493614896030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269132 (A005891 n).toNat

end

end A365205.P13295927493614896030

namespace A365205

/-- `A269132(A005891(n))` -/
def P13295927493614896030.Spec : Prop :=
  ∀ n, P13295927493614896030.a n = A365205 (n + 1)

end A365205

/-!
# A365206: Centered octachoral numbers.

The programs for A365206, the canonical program `A365206.P12264015237008943708` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365206 has offset 1).

The definition of A365206 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365206.P15353681115279342894

`ogf((1+44x+102x^2+44x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A365206.P15353681115279342894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 44, 102, 44, 1] [1, -5, 10, -10, 5, -1] n

end

end A365206.P15353681115279342894

namespace A365206

/-- `ogf((1+44x+102x^2+44x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P15353681115279342894.Spec : Prop :=
  ∀ n, P15353681115279342894.a n = A365206 (n + 1)

end A365206

/-! ## A365206.P12264015237008943708

`8*(n+1)^4-16*(n+1)^3+16*(n+1)²-8*(n+1)+1`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A365206

/-- `8*(n+1)^4-16*(n+1)^3+16*(n+1)²-8*(n+1)+1` -/
def P12264015237008943708.Spec : Prop :=
  ∀ n, P12264015237008943708.a n = A365206 (n + 1)

theorem P12264015237008943708.correct : P12264015237008943708.Spec := by
  intro n
  simp only [A365206, Nat.add_sub_cancel]

end A365206

/-! ## A365206.P255044530694286558

`(1-∑[a(n-1)-4])²+((2*n+1)²+3)*(n²+n)` with `a(0)=0`
-/

namespace A365206.P255044530694286558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + (((2 * n + 1) ^ 2 + 3) * (n ^ 2 + n) : ℤ)

end

end A365206.P255044530694286558

namespace A365206

/-- `(1-∑[a(n-1)-4])²+((2*n+1)²+3)*(n²+n)` -/
def P255044530694286558.Spec : Prop :=
  ∀ n, P255044530694286558.a n = A365206 (n + 1)

end A365206

/-! ## A365206.P6091678919919297707

`ceil(A365204(n+1)/3)`
-/

namespace A365206.P6091678919919297707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A365204 (n + 1) : ℚ) / 3⌉

end

end A365206.P6091678919919297707

namespace A365206

/-- `ceil(A365204(n+1)/3)` -/
def P6091678919919297707.Spec : Prop :=
  ∀ n, P6091678919919297707.a n = A365206 (n + 1)

end A365206

/-! ## A365206.P10202189151874535288

`floor(3*A142993(n)/2)`
-/

namespace A365206.P10202189151874535288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((A142993 n : ℚ) / 2)⌋

end

end A365206.P10202189151874535288

namespace A365206

/-- `floor(3*A142993(n)/2)` -/
def P10202189151874535288.Spec : Prop :=
  ∀ n, P10202189151874535288.a n = A365206 (n + 1)

end A365206

/-! ## A365206.P8041990965063428445

`abs(2*A001844(n)²-1)`
-/

namespace A365206.P8041990965063428445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A001844 n ^ 2 - 1|

end

end A365206.P8041990965063428445

namespace A365206

/-- `abs(2*A001844(n)²-1)` -/
def P8041990965063428445.Spec : Prop :=
  ∀ n, P8041990965063428445.a n = A365206 (n + 1)

end A365206

/-! ## A365206.P4940107492957488050

`(A082044(2*n+1)-2)/2`
-/

namespace A365206.P4940107492957488050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082044 (2 * n + 1) - 2 : ℚ) / 2

end

end A365206.P4940107492957488050

namespace A365206

/-- `(A082044(2*n+1)-2)/2` -/
def P4940107492957488050.Spec : Prop :=
  ∀ n, P4940107492957488050.a n = (A365206 (n + 1) : ℚ)

theorem P4940107492957488050.correct : P4940107492957488050.Spec := by
  intro n
  simp only [A365206, Nat.add_sub_cancel, A365206.P4940107492957488050.a, A365206.P12264015237008943708.a, A082044, A082044.P12148917754316249360.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A365206

/-! ## A365206.P11251328272492701177

`A275543((n+1)²+n²)`
-/

namespace A365206.P11251328272492701177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275543 ((n + 1) ^ 2 + n ^ 2)

end

end A365206.P11251328272492701177

namespace A365206

/-- `A275543((n+1)²+n²)` -/
def P11251328272492701177.Spec : Prop :=
  ∀ n, P11251328272492701177.a n = A365206 (n + 1)

end A365206

/-! ## A365206.P702192871318494888

`A069129(∑[2*n]+1)`
-/

namespace A365206.P702192871318494888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A365206.P702192871318494888

namespace A365206

/-- `A069129(∑[2*n]+1)` -/
def P702192871318494888.Spec : Prop :=
  ∀ n, P702192871318494888.a n = A365206 (n + 1)

end A365206

/-! ## A365206.P3773161877415758383

`xor(1, A035008(∑[2*n]))`
-/

namespace A365206.P3773161877415758383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A035008 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A365206.P3773161877415758383

namespace A365206

/-- `xor(1, A035008(∑[2*n]))` -/
def P3773161877415758383.Spec : Prop :=
  ∀ n, P3773161877415758383.a n = A365206 (n + 1)

end A365206

/-!
# A365207: The number of divisors d of n such that gcd(d, n/d) is a power of 2 (A000079).

The programs for A365207, the canonical program `A365207.P8652609855473738591` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365207 has offset 1).

The definition of A365207 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365207.P10299007590882295504

`A034444(n+1)*(A007814(n+1)+1)/2^(1-(n+1)%2)`
-/

namespace A365207.P10299007590882295504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034444 (n + 1) * (A007814 (n + 1) + 1) : ℚ) / (2 : ℚ) ^ (1 - (((n + 1) % 2 : ℕ) : ℤ) : ℤ)

end

end A365207.P10299007590882295504

namespace A365207

/-- `A034444(n+1)*(A007814(n+1)+1)/2^(1-(n+1)%2)` -/
def P10299007590882295504.Spec : Prop :=
  ∀ n, P10299007590882295504.a n = (A365207 (n + 1) : ℚ)

end A365207

/-! ## A365207.P8652609855473738591

`A000005(A006519(n+1))*A034444(A000265(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A365207

/-- `A000005(A006519(n+1))*A034444(A000265(n+1))` -/
def P8652609855473738591.Spec : Prop :=
  ∀ n, P8652609855473738591.a n = A365207 (n + 1)

theorem P8652609855473738591.correct : P8652609855473738591.Spec := by
  intro n
  simp only [A365207, Nat.add_sub_cancel]

end A365207

/-! ## A365207.P12849350633533380960

`∑{d}[n+1, A353627(#)]`
-/

namespace A365207.P12849350633533380960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A353627 d

end

end A365207.P12849350633533380960

namespace A365207

/-- `∑{d}[n+1, A353627(#)]` -/
def P12849350633533380960.Spec : Prop :=
  ∀ n, P12849350633533380960.a n = A365207 (n + 1)

end A365207

/-! ## A365207.P11452240043565920317

`A000005(lcm(2^val(n+1, 2), ∏{p}[n+1, #]))`
-/

namespace A365207.P11452240043565920317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.lcm (2 ^ SequenceMachineLib.valuation (n + 1) 2) (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A365207.P11452240043565920317

namespace A365207

/-- `A000005(lcm(2^val(n+1, 2), ∏{p}[n+1, #]))` -/
def P11452240043565920317.Spec : Prop :=
  ∀ n, P11452240043565920317.a n = A365207 (n + 1)

end A365207

/-! ## A365207.P15898739009065823250

`A068068(n+1)+a(floor(n/2))*n%2` with `a(0)=1`
-/

namespace A365207.P15898739009065823250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A068068 (n + 1) + a ⌊(n : ℚ) / 2⌋.toNat * ((n % 2 : ℕ) : ℤ)

end

end A365207.P15898739009065823250

namespace A365207

/-- `A068068(n+1)+a(floor(n/2))*n%2` -/
def P15898739009065823250.Spec : Prop :=
  ∀ n, P15898739009065823250.a n = A365207 (n + 1)

end A365207

/-! ## A365207.P6174255678071842832

`(val(n+1, 2)+1)*A000079(∑{p}[n+1, #%2])`
-/

namespace A365207.P6174255678071842832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) * A000079 (∑ p ∈ Nat.primeFactors (f1 n), p % 2)

end

end A365207.P6174255678071842832

namespace A365207

/-- `(val(n+1, 2)+1)*A000079(∑{p}[n+1, #%2])` -/
def P6174255678071842832.Spec : Prop :=
  ∀ n, P6174255678071842832.a n = A365207 (n + 1)

end A365207

/-! ## A365207.P6805500052740233027

`(val(n+1, 2)+1)*A034444((n+1)/2^val(n+1, 2))`
-/

namespace A365207.P6805500052740233027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) * A034444 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A365207.P6805500052740233027

namespace A365207

/-- `(val(n+1, 2)+1)*A034444((n+1)/2^val(n+1, 2))` -/
def P6805500052740233027.Spec : Prop :=
  ∀ n, P6805500052740233027.a n = A365207 (n + 1)

end A365207

/-! ## A365207.P4912471280548796333

`A001511(n+1)*A068068(n+1)`
-/

namespace A365207.P4912471280548796333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A068068 (n + 1)

end

end A365207.P4912471280548796333

namespace A365207

/-- `A001511(n+1)*A068068(n+1)` -/
def P4912471280548796333.Spec : Prop :=
  ∀ n, P4912471280548796333.a n = A365207 (n + 1)

end A365207

/-! ## A365207.P16972298966295164256

`∑{d}[n+1, A035263(#)*A078461((n+1)/#)]`
-/

namespace A365207.P16972298966295164256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035263 d * A078461 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365207.P16972298966295164256

namespace A365207

/-- `∑{d}[n+1, A035263(#)*A078461((n+1)/#)]` -/
def P16972298966295164256.Spec : Prop :=
  ∀ n, P16972298966295164256.a n = A365207 (n + 1)

end A365207

/-! ## A365207.P8968277334780229716

`∑{d}[n+1, A078644(#)*A087003((n+1)/#)]`
-/

namespace A365207.P8968277334780229716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078644 d * A087003 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365207.P8968277334780229716

namespace A365207

/-- `∑{d}[n+1, A078644(#)*A087003((n+1)/#)]` -/
def P8968277334780229716.Spec : Prop :=
  ∀ n, P8968277334780229716.a n = A365207 (n + 1)

end A365207

/-! ## A365207.P12755762119723551593

`∑{d}[n+1, A048691(#)*A355689((n+1)/#)]`
-/

namespace A365207.P12755762119723551593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048691 d * A355689 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365207.P12755762119723551593

namespace A365207

/-- `∑{d}[n+1, A048691(#)*A355689((n+1)/#)]` -/
def P12755762119723551593.Spec : Prop :=
  ∀ n, P12755762119723551593.a n = A365207 (n + 1)

end A365207

/-! ## A365207.P11440755246098492916

`∑{d}[n+1, A091400(#)*A374366((n+1)/#)]`
-/

namespace A365207.P11440755246098492916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091400 d * A374366 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365207.P11440755246098492916

namespace A365207

/-- `∑{d}[n+1, A091400(#)*A374366((n+1)/#)]` -/
def P11440755246098492916.Spec : Prop :=
  ∀ n, P11440755246098492916.a n = A365207 (n + 1)

end A365207

/-! ## A365207.P12989923356790954961

`∑{d}[n+1, A115364(#)*A359155((n+1)/#)]`
-/

namespace A365207.P12989923356790954961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A115364 d * A359155 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365207.P12989923356790954961

namespace A365207

/-- `∑{d}[n+1, A115364(#)*A359155((n+1)/#)]` -/
def P12989923356790954961.Spec : Prop :=
  ∀ n, P12989923356790954961.a n = A365207 (n + 1)

end A365207

/-! ## A365207.P10187024078385667700

`∑{d}[n+1, A209635(#)*A275367((n+1)/#)]`
-/

namespace A365207.P10187024078385667700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A209635 d * A275367 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365207.P10187024078385667700

namespace A365207

/-- `∑{d}[n+1, A209635(#)*A275367((n+1)/#)]` -/
def P10187024078385667700.Spec : Prop :=
  ∀ n, P10187024078385667700.a n = A365207 (n + 1)

end A365207

/-! ## A365207.P7769652992876291029

`∑{d}[n+1, A129628(#)*A359548((n+1)/#)]`
-/

namespace A365207.P7769652992876291029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A129628 d * A359548 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365207.P7769652992876291029

namespace A365207

/-- `∑{d}[n+1, A129628(#)*A359548((n+1)/#)]` -/
def P7769652992876291029.Spec : Prop :=
  ∀ n, P7769652992876291029.a n = A365207 (n + 1)

end A365207

/-! ## A365207.P16874018427925772128

`∑{d}[n+1, A036987(#-1)*A068068((n+1)/#)]`
-/

namespace A365207.P16874018427925772128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A068068 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365207.P16874018427925772128

namespace A365207

/-- `∑{d}[n+1, A036987(#-1)*A068068((n+1)/#)]` -/
def P16874018427925772128.Spec : Prop :=
  ∀ n, P16874018427925772128.a n = A365207 (n + 1)

end A365207

/-! ## A365207.P11757121658174600472

`A000010(n+1)*A001511(n+1)/A089692(n+1)`
-/

namespace A365207.P11757121658174600472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) * A001511 (n + 1) : ℚ) / (A089692 (n + 1) : ℚ)

end

end A365207.P11757121658174600472

namespace A365207

/-- `A000010(n+1)*A001511(n+1)/A089692(n+1)` -/
def P11757121658174600472.Spec : Prop :=
  ∀ n, P11757121658174600472.a n = (A365207 (n + 1) : ℚ)

end A365207

/-! ## A365207.P15787688321657881328

`A365208(A319525(n+1))`
-/

namespace A365207.P15787688321657881328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365208 (A319525 (n + 1)).toNat

end

end A365207.P15787688321657881328

namespace A365207

/-- `A365208(A319525(n+1))` -/
def P15787688321657881328.Spec : Prop :=
  ∀ n, P15787688321657881328.a n = A365207 (n + 1)

end A365207

/-! ## A365207.P4998602756853486471

`A365208(A003961(n+1))`
-/

namespace A365207.P4998602756853486471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365208 (A003961 (n + 1)).toNat

end

end A365207.P4998602756853486471

namespace A365207

/-- `A365208(A003961(n+1))` -/
def P4998602756853486471.Spec : Prop :=
  ∀ n, P4998602756853486471.a n = A365207 (n + 1)

end A365207

/-! ## A365207.P4263616213803572906

`A365208(A064988(n+1))`
-/

namespace A365207.P4263616213803572906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365208 (A064988 (n + 1)).toNat

end

end A365207.P4263616213803572906

namespace A365207

/-- `A365208(A064988(n+1))` -/
def P4263616213803572906.Spec : Prop :=
  ∀ n, P4263616213803572906.a n = A365207 (n + 1)

end A365207

/-!
# A365208: The number of divisors d of n such that gcd(d, n/d) is a 3-smooth number (A003586).

The programs for A365208, the canonical program `A365208.P1092856368353075175` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365208 has offset 1).

The definition of A365208 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365208.P1092856368353075175

`A000005(A065331(n+1))*A034444(A065330(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A365208

/-- `A000005(A065331(n+1))*A034444(A065330(n+1))` -/
def P1092856368353075175.Spec : Prop :=
  ∀ n, P1092856368353075175.a n = A365208 (n + 1)

theorem P1092856368353075175.correct : P1092856368353075175.Spec := by
  intro n
  simp only [A365208, Nat.add_sub_cancel]

end A365208

/-! ## A365208.P13490980664484838809

`A072078(n+1)*A385044(n+1)`
-/

namespace A365208.P13490980664484838809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072078 (n + 1) * A385044 (n + 1)

end

end A365208.P13490980664484838809

namespace A365208

/-- `A072078(n+1)*A385044(n+1)` -/
def P13490980664484838809.Spec : Prop :=
  ∀ n, P13490980664484838809.a n = A365208 (n + 1)

end A365208

/-! ## A365208.P2604506986678797338

`∑{d}[n+1, A072078(#)*A373154((n+1)/#)]`
-/

namespace A365208.P2604506986678797338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A072078 d * A373154 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365208.P2604506986678797338

namespace A365208

/-- `∑{d}[n+1, A072078(#)*A373154((n+1)/#)]` -/
def P2604506986678797338.Spec : Prop :=
  ∀ n, P2604506986678797338.a n = A365208 (n + 1)

end A365208

/-! ## A365208.P14124330907608722652

`∑{d}[n+1, A065333(#)*A385044((n+1)/#)]`
-/

namespace A365208.P14124330907608722652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065333 d * A385044 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365208.P14124330907608722652

namespace A365208

/-- `∑{d}[n+1, A065333(#)*A385044((n+1)/#)]` -/
def P14124330907608722652.Spec : Prop :=
  ∀ n, P14124330907608722652.a n = A365208 (n + 1)

end A365208

/-! ## A365208.P1450023845940571039

`A000005(lcm(gcd(n+1, (n+13)^9), A007947(n+1)))`
-/

namespace A365208.P1450023845940571039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lcm (Nat.gcd (n + 1) ((n + 13) ^ 9) : ℤ) (A007947 (n + 1)))

end

end A365208.P1450023845940571039

namespace A365208

/-- `A000005(lcm(gcd(n+1, (n+13)^9), A007947(n+1)))` -/
def P1450023845940571039.Spec : Prop :=
  ∀ n, P1450023845940571039.a n = A365208 (n + 1)

end A365208

/-! ## A365208.P6408457308492846020

`A034444(n+1)*A072078(n+1)/A382488(n+1)`
-/

namespace A365208.P6408457308492846020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034444 (n + 1) * A072078 (n + 1) : ℚ) / (A382488 (n + 1) : ℚ)

end

end A365208.P6408457308492846020

namespace A365208

/-- `A034444(n+1)*A072078(n+1)/A382488(n+1)` -/
def P6408457308492846020.Spec : Prop :=
  ∀ n, P6408457308492846020.a n = (A365208 (n + 1) : ℚ)

end A365208

/-! ## A365208.P13950896623289234458

`A069733(n+1)*A365207(n+1)/A365210(n+1)`
-/

namespace A365208.P13950896623289234458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069733 (n + 1) * A365207 (n + 1) : ℚ) / (A365210 (n + 1) : ℚ)

end

end A365208.P13950896623289234458

namespace A365208

/-- `A069733(n+1)*A365207(n+1)/A365210(n+1)` -/
def P13950896623289234458.Spec : Prop :=
  ∀ n, P13950896623289234458.a n = (A365208 (n + 1) : ℚ)

end A365208

/-! ## A365208.P14303585932220855511

`A391184((n+1)*A391187(n+1))`
-/

namespace A365208.P14303585932220855511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391184 ((n + 1 : ℤ) * A391187 (n + 1)).toNat

end

end A365208.P14303585932220855511

namespace A365208

/-- `A391184((n+1)*A391187(n+1))` -/
def P14303585932220855511.Spec : Prop :=
  ∀ n, P14303585932220855511.a n = A365208 (n + 1)

end A365208

/-!
# A365209: The sum of divisors d of n such that gcd(d, n/d) is a 3-smooth number (A003586).

The programs for A365209, the canonical program `A365209.P13908009698300430813` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365209 has offset 1).

The definition of A365209 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A365209.P13908009698300430813

`A000203(A065331(n+1))*A034448(A065330(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A365209

/-- `A000203(A065331(n+1))*A034448(A065330(n+1))` -/
def P13908009698300430813.Spec : Prop :=
  ∀ n, P13908009698300430813.a n = A365209 (n + 1)

theorem P13908009698300430813.correct : P13908009698300430813.Spec := by
  intro n
  simp only [A365209, Nat.add_sub_cancel]

end A365209

/-! ## A365209.P15026043384235170856

`A072079(1+n)*A385045(n+1)`
-/

namespace A365209.P15026043384235170856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072079 (1 + n) * A385045 (n + 1)

end

end A365209.P15026043384235170856

namespace A365209

/-- `A072079(1+n)*A385045(n+1)` -/
def P15026043384235170856.Spec : Prop :=
  ∀ n, P15026043384235170856.a n = A365209 (n + 1)

end A365209

/-! ## A365209.P10317781835113357109

`∑{d}[n+1, A065332(#)*A385045((n+1)/#)]`
-/

namespace A365209.P10317781835113357109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065332 d * A385045 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365209.P10317781835113357109

namespace A365209

/-- `∑{d}[n+1, A065332(#)*A385045((n+1)/#)]` -/
def P10317781835113357109.Spec : Prop :=
  ∀ n, P10317781835113357109.a n = A365209 (n + 1)

end A365209

/-! ## A365209.P8438526655840642198

`A069184(n+1)*A107749(n+1)/A365211(n+1)`
-/

namespace A365209.P8438526655840642198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069184 (n + 1) * A107749 (n + 1) : ℚ) / (A365211 (n + 1) : ℚ)

end

end A365209.P8438526655840642198

namespace A365209

/-- `A069184(n+1)*A107749(n+1)/A365211(n+1)` -/
def P8438526655840642198.Spec : Prop :=
  ∀ n, P8438526655840642198.a n = (A365209 (n + 1) : ℚ)

end A365209

/-! ## A365209.P7642937683819465531

`∑{d}[n+1, #*A065333(#)]*A192066(A038502(n+1))`
-/

namespace A365209.P7642937683819465531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A065333 d) * A192066 (A038502 (n + 1)).toNat

end

end A365209.P7642937683819465531

namespace A365209

/-- `∑{d}[n+1, #*A065333(#)]*A192066(A038502(n+1))` -/
def P7642937683819465531.Spec : Prop :=
  ∀ n, P7642937683819465531.a n = A365209 (n + 1)

end A365209

/-!
# A365210: The number of divisors d of n such that gcd(d, n/d) is a 5-rough number (A007310).

The programs for A365210, the canonical program `A365210.P7966765262049614878` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365210 has offset 1).

The definition of A365210 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365210.P7966765262049614878

`A000005(A065330(n+1))*A034444(A065331(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A365210

/-- `A000005(A065330(n+1))*A034444(A065331(n+1))` -/
def P7966765262049614878.Spec : Prop :=
  ∀ n, P7966765262049614878.a n = A365210 (n + 1)

theorem P7966765262049614878.correct : P7966765262049614878.Spec := by
  intro n
  simp only [A365210, Nat.add_sub_cancel]

end A365210

/-! ## A365210.P7450354655753731572

`A069733(lcm((n+1)/3^val(n+1, 3), ∏{p}[n+1, #]))`
-/

namespace A365210.P7450354655753731572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069733 (Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))) ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ))

end

end A365210.P7450354655753731572

namespace A365210

/-- `A069733(lcm((n+1)/3^val(n+1, 3), ∏{p}[n+1, #]))` -/
def P7450354655753731572.Spec : Prop :=
  ∀ n, P7450354655753731572.a n = A365210 (n + 1)

end A365210

/-! ## A365210.P9483373171627170688

`A035218(n+1)*A382488(n+1)`
-/

namespace A365210.P9483373171627170688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035218 (n + 1) * A382488 (n + 1)

end

end A365210.P9483373171627170688

namespace A365210

/-- `A035218(n+1)*A382488(n+1)` -/
def P9483373171627170688.Spec : Prop :=
  ∀ n, P9483373171627170688.a n = A365210 (n + 1)

end A365210

/-! ## A365210.P14482074557427406498

`∑{d}[n+1, A048691(#)*A133639((n+1)/#)]`
-/

namespace A365210.P14482074557427406498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048691 d * A133639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365210.P14482074557427406498

namespace A365210

/-- `∑{d}[n+1, A048691(#)*A133639((n+1)/#)]` -/
def P14482074557427406498.Spec : Prop :=
  ∀ n, P14482074557427406498.a n = A365210 (n + 1)

end A365210

/-! ## A365210.P11771412635058778825

`∑{d}[n+1, A232991(#-1)*A382488((n+1)/#)]`
-/

namespace A365210.P11771412635058778825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A232991 (d - 1) * A382488 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365210.P11771412635058778825

namespace A365210

/-- `∑{d}[n+1, A232991(#-1)*A382488((n+1)/#)]` -/
def P11771412635058778825.Spec : Prop :=
  ∀ n, P11771412635058778825.a n = A365210 (n + 1)

end A365210

/-! ## A365210.P14092544347191220986

`A000005(lcm(A007947(n+1), A065330(n+1)))`
-/

namespace A365210.P14092544347191220986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lcm (A007947 (n + 1)) (A065330 (n + 1)))

end

end A365210.P14092544347191220986

namespace A365210

/-- `A000005(lcm(A007947(n+1), A065330(n+1)))` -/
def P14092544347191220986.Spec : Prop :=
  ∀ n, P14092544347191220986.a n = A365210 (n + 1)

end A365210

/-!
# A365211: The sum of divisors d of n such that gcd(d, n/d) is a 5-rough number (A007310).

The programs for A365211, the canonical program `A365211.P17121976784440689824` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365211 has offset 1).

The definition of A365211 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A365211.P17121976784440689824

`A000203(A065330(n+1))*A034448(A065331(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A365211

/-- `A000203(A065330(n+1))*A034448(A065331(n+1))` -/
def P17121976784440689824.Spec : Prop :=
  ∀ n, P17121976784440689824.a n = A365211 (n + 1)

theorem P17121976784440689824.correct : P17121976784440689824.Spec := by
  intro n
  simp only [A365211, Nat.add_sub_cancel]

end A365211

/-! ## A365211.P487655265137320460

`A186099(n+1)*A385046(n+1)`
-/

namespace A365211.P487655265137320460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186099 (n + 1) * A385046 (n + 1)

end

end A365211.P487655265137320460

namespace A365211

/-- `A186099(n+1)*A385046(n+1)` -/
def P487655265137320460.Spec : Prop :=
  ∀ n, P487655265137320460.a n = A365211 (n + 1)

end A365211

/-! ## A365211.P5641128578924435499

`A034448(A065331(n+1))*A186099(n+1)`
-/

namespace A365211.P5641128578924435499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A065331 (n + 1)).toNat * A186099 (n + 1)

end

end A365211.P5641128578924435499

namespace A365211

/-- `A034448(A065331(n+1))*A186099(n+1)` -/
def P5641128578924435499.Spec : Prop :=
  ∀ n, P5641128578924435499.a n = A365211 (n + 1)

end A365211

/-! ## A365211.P5303522333583584901

`A046779(A031214(2*n+5))+A034448(n+1)`
-/

namespace A365211.P5303522333583584901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046779 (A031214 (2 * n + 5)).toNat + A034448 (n + 1)

end

end A365211.P5303522333583584901

namespace A365211

/-- `A046779(A031214(2*n+5))+A034448(n+1)` -/
def P5303522333583584901.Spec : Prop :=
  ∀ n, P5303522333583584901.a n = A365211 (n + 1)

end A365211

/-! ## A365211.P14969247579042242744

`A034448(n+1)-A088194(A361277(n))`
-/

namespace A365211.P14969247579042242744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) - A088194 (A361277 n).toNat

end

end A365211.P14969247579042242744

namespace A365211

/-- `A034448(n+1)-A088194(A361277(n))` -/
def P14969247579042242744.Spec : Prop :=
  ∀ n, P14969247579042242744.a n = A365211 (n + 1)

end A365211

/-!
# A365212: Triangle T(n, k), n >= 0, k = 0..n, read by rows: let's consider a triangle of initially empty glasses of equal volume, G(n, k), n >= 0, k = 0..n; when water is poured into one of the glasses, say G(n, k), it flows into that glass until it's full, and then the excess overflows equally into G(n+1, k) and G(n+1, k+1); let V(n, k) be the minimum volume of water to be poured into G(0, 0) so as to fill G(n, k) completely; T(n, k) is the numerator of V(n, k) / V(0, 0).

The programs for A365212, there is no canonical definition to state claims against.
-/

/-! ## A365212.P14957971443766049132

`A091821(A360875(n+1))`
-/

namespace A365212.P14957971443766049132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091821 (A360875 (n + 1)).toNat

end

end A365212.P14957971443766049132

/-! ## A365212.P16793815609582151226

`A375126(A287274(n+1))`
-/

namespace A365212.P16793815609582151226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375126 (A287274 (n + 1)).toNat

end

end A365212.P16793815609582151226

/-!
# A365213: Triangle T(n, k), n >= 0, k = 0..n, read by rows: let's consider a triangle of initially empty glasses of equal volume, G(n, k), n >= 0, k = 0..n; when water is poured into one of the glasses, say G(n, k), it flows into that glass until it's full, and then the excess overflows equally into G(n+1, k) and G(n+1, k+1); let V(n, k) be the minimum volume of water to be poured into G(0, 0) so as to fill G(n, k) completely; T(n, k) is the denominator of V(n, k) / V(0, 0).

The programs for A365213, there is no canonical definition to state claims against.
-/

/-! ## A365213.P7007032540737994098

`A136043(A157632(n))`
-/

namespace A365213.P7007032540737994098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136043 (A157632 n).toNat

end

end A365213.P7007032540737994098

/-! ## A365213.P10498774541368405412

`A143732(A393538(n))`
-/

namespace A365213.P10498774541368405412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143732 (A393538 n).toNat

end

end A365213.P10498774541368405412

/-! ## A365213.P8045905306181222567

`A325685(A215292(n+1))`
-/

namespace A365213.P8045905306181222567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325685 (A215292 (n + 1)).toNat

end

end A365213.P8045905306181222567

/-! ## A365213.P1812066280003807955

`or(1, A194884(A117401(n)))`
-/

namespace A365213.P1812066280003807955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A194884 (A117401 n).toNat)

end

end A365213.P1812066280003807955

/-! ## A365213.P4528372772696888455

`or(1, A371384(A196347(n)))`
-/

namespace A365213.P4528372772696888455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A371384 (A196347 n).toNat)

end

end A365213.P4528372772696888455

/-!
# A365216: Maximal k such that there exists a k-arc on the projective plane over GF(q), where q = A246655(n) is the n-th prime power > 1.

The programs for A365216, the canonical program `A365216.P10045536079749454059` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365216 has offset 1).

The definition of A365216 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A365216.P10045536079749454059

`or(1, A246655(n+1))+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A365216

/-- `or(1, A246655(n+1))+1` -/
def P10045536079749454059.Spec : Prop :=
  ∀ n, P10045536079749454059.a n = A365216 (n + 1)

theorem P10045536079749454059.correct : P10045536079749454059.Spec := by
  intro n
  simp only [A365216, Nat.add_sub_cancel]

end A365216

/-! ## A365216.P5808350325239413358

`or(1, A000961(n+2))+1`
-/

namespace A365216.P5808350325239413358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000961 (n + 2)) + 1

end

end A365216.P5808350325239413358

namespace A365216

/-- `or(1, A000961(n+2))+1` -/
def P5808350325239413358.Spec : Prop :=
  ∀ n, P5808350325239413358.a n = A365216 (n + 1)

end A365216

/-! ## A365216.P12748270965083661797

`A109613(A246655(n+1))+1`
-/

namespace A365216.P12748270965083661797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A246655 (n + 1)).toNat + 1

end

end A365216.P12748270965083661797

namespace A365216

/-- `A109613(A246655(n+1))+1` -/
def P12748270965083661797.Spec : Prop :=
  ∀ n, P12748270965083661797.a n = A365216 (n + 1)

end A365216

/-! ## A365216.P3613965611360386622

`A109613(A000961(n+2))+1`
-/

namespace A365216.P3613965611360386622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A000961 (n + 2)).toNat + 1

end

end A365216.P3613965611360386622

namespace A365216

/-- `A109613(A000961(n+2))+1` -/
def P3613965611360386622.Spec : Prop :=
  ∀ n, P3613965611360386622.a n = A365216 (n + 1)

end A365216

/-! ## A365216.P5759186703034713628

`A052928(A246655(n+1)+2)`
-/

namespace A365216.P5759186703034713628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A246655 (n + 1) + 2).toNat

end

end A365216.P5759186703034713628

namespace A365216

/-- `A052928(A246655(n+1)+2)` -/
def P5759186703034713628.Spec : Prop :=
  ∀ n, P5759186703034713628.a n = A365216 (n + 1)

end A365216

/-! ## A365216.P13062163938042888034

`A052928(A000961(n+2)+2)`
-/

namespace A365216.P13062163938042888034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A000961 (n + 2) + 2).toNat

end

end A365216.P13062163938042888034

namespace A365216

/-- `A052928(A000961(n+2)+2)` -/
def P13062163938042888034.Spec : Prop :=
  ∀ n, P13062163938042888034.a n = A365216 (n + 1)

end A365216

/-! ## A365216.P13918741088176004216

`A014681(or(1, A246655(n+1)))`
-/

namespace A365216.P13918741088176004216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (Int.lor 1 (A246655 (n + 1))).toNat

end

end A365216.P13918741088176004216

namespace A365216

/-- `A014681(or(1, A246655(n+1)))` -/
def P13918741088176004216.Spec : Prop :=
  ∀ n, P13918741088176004216.a n = A365216 (n + 1)

end A365216

/-!
# A365218: G.f. A(x) satisfies A(x) = 1 + x*A(x)^6 / (1 + x*A(x)^6).

The programs for A365218, there is no canonical definition to state claims against.
-/

/-! ## A365218.P3837108881489155778

`A004761(A321515(n)+A185316(n))`
-/

namespace A365218.P3837108881489155778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004761 (A321515 n + A185316 n).toNat

end

end A365218.P3837108881489155778

/-! ## A365218.P10280358820189768448

`A065033(A121113(n+1)+A089559(n+1))`
-/

namespace A365218.P10280358820189768448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A121113 (n + 1) + A089559 (n + 1)).toNat

end

end A365218.P10280358820189768448

/-!
# A365221: Each term is a "Go flat integer" (GFI), but a(n) + a(n+1) is always a "Go down integer" (GDI). More details in the Comments section.

The programs for A365221, there is no canonical definition to state claims against.
-/

/-! ## A365221.P9423695362811149392

`A027894(record[∑[∑{d}[n+1, -(-1)^#]]])`
-/

namespace A365221.P9423695362811149392
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), (-((-1) ^ d))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027894 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A365221.P9423695362811149392

/-! ## A365221.P8633168436708528374

`A214919(A081250(n+1))`
-/

namespace A365221.P8633168436708528374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214919 (A081250 (n + 1)).toNat

end

end A365221.P8633168436708528374

/-!
# A365225: G.f. satisfies A(x) = 1 + x*A(x)^5 / (1 + x*A(x)^2).

The programs for A365225, there is no canonical definition to state claims against.
-/

/-! ## A365225.P6053400506738512427

`A005185(A276358(n+1)-n)`
-/

namespace A365225.P6053400506738512427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (A276358 (n + 1) - (n : ℤ)).toNat

end

end A365225.P6053400506738512427

/-! ## A365225.P6642020841264394890

`A152467(A382190(n))+A080014(n)`
-/

namespace A365225.P6642020841264394890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A382190 n).toNat + A080014 n

end

end A365225.P6642020841264394890

/-!
# A365226: G.f. satisfies A(x) = 1 + x*A(x)^5 / (1 + x*A(x)^6).

The programs for A365226, there is no canonical definition to state claims against.
-/

/-! ## A365226.P16848399367312988822

`A008617(A026774(n+2)-1)`
-/

namespace A365226.P16848399367312988822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A026774 (n + 2) - 1).toNat

end

end A365226.P16848399367312988822

/-! ## A365226.P6689235461235069207

`A002265(A005060(n))+A000110(n)`
-/

namespace A365226.P6689235461235069207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A005060 n).toNat + A000110 n

end

end A365226.P6689235461235069207

/-!
# A365229: Sum over all k of 1/k! times the number of permutations of [n] for which the difference between the longest and the shortest cycle length is k.

The programs for A365229, there is no canonical definition to state claims against.
-/

/-! ## A365229.P7021808403959776280

`A276798(A150653(n))`
-/

namespace A365229.P7021808403959776280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276798 (A150653 n).toNat

end

end A365229.P7021808403959776280

/-! ## A365229.P9224462468235765135

`A289497(A006013(n)-A213633(n+1))`
-/

namespace A365229.P9224462468235765135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289497 (A006013 n - A213633 (n + 1)).toNat

end

end A365229.P9224462468235765135

/-! ## A365229.P1794976340709091483

`A289497(A006013(n)-A059841(3*n+1))`
-/

namespace A365229.P1794976340709091483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289497 (A006013 n - A059841 (3 * n + 1)).toNat

end

end A365229.P1794976340709091483

/-!
# A365234: Primes not in A119993.

The programs for A365234, there is no canonical definition to state claims against.
-/

/-! ## A365234.P16250041405424383795

`A065091(comp[A001221(n+1)+n])`
-/

namespace A365234.P16250041405424383795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A365234.P16250041405424383795

/-! ## A365234.P7724957287535176730

`A000040(comp[A001221(n+1)+n]+1)`
-/

namespace A365234.P7724957287535176730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A365234.P7724957287535176730

/-! ## A365234.P7556302417849654629

`A008578(comp[A001221(n+1)+n]+2)`
-/

namespace A365234.P7556302417849654629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2)

end

end A365234.P7556302417849654629

/-! ## A365234.P2572721991327726310

`A006093(comp[A001221(n+1)+n]+1)+1`
-/

namespace A365234.P2572721991327726310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) + 1

end

end A365234.P2572721991327726310

/-! ## A365234.P11692000078009110401

`A065091(A373676(n+1)%A270831(3*n+4))`
-/

namespace A365234.P11692000078009110401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (Int.tmod (A373676 (n + 1)) (A270831 (3 * n + 4))).toNat

end

end A365234.P11692000078009110401

/-!
# A365235: Least increasing sequence of primes such that a(n-1)^2 + a(n)^2 is semiprime, with a(1)=2.

The programs for A365235, there is no canonical definition to state claims against.
-/

/-! ## A365235.P4213923073871634129

`∩[A002152(n+1), A064739(n+1)]`
-/

namespace A365235.P4213923073871634129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365235.P4213923073871634129

/-! ## A365235.P2648296196279500818

`∩[A002152(n+1), A112860(n+1)]`
-/

namespace A365235.P2648296196279500818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365235.P2648296196279500818

/-! ## A365235.P3639077559925168689

`∩[A112860(n+1), A329991(n+1)]`
-/

namespace A365235.P3639077559925168689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365235.P3639077559925168689

/-! ## A365235.P6515410020245606783

`∩[A112860(n+1), A356713(n+1)]`
-/

namespace A365235.P6515410020245606783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365235.P6515410020245606783

/-!
# A365241: a(n) is the n-th prime of the form 2*n + k where k > 0.

The programs for A365241, the canonical program `A365241.P1377558942110978897` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365241 has offset 1).

The definition of A365241 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365241.P1377558942110978897

`A000040(A000720(2*(n+1))+n+1)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A365241

/-- `A000040(A000720(2*(n+1))+n+1)` -/
def P1377558942110978897.Spec : Prop :=
  ∀ n, P1377558942110978897.a n = A365241 (n + 1)

theorem P1377558942110978897.correct : P1377558942110978897.Spec := by
  intro n
  simp only [A365241, Nat.add_sub_cancel]

end A365241

/-! ## A365241.P12075093277035051425

`A065091(∑[C(2*n+1, ∏{d}[2*n+1, #])]+n)`
-/

namespace A365241.P12075093277035051425
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) (∏ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A365241.P12075093277035051425

namespace A365241

/-- `A065091(∑[C(2*n+1, ∏{d}[2*n+1, #])]+n)` -/
def P12075093277035051425.Spec : Prop :=
  ∀ n, P12075093277035051425.a n = A365241 (n + 1)

end A365241

/-! ## A365241.P6470847647692053799

`A065091(∑[A101264(n)+1])`
-/

namespace A365241.P6470847647692053799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A365241.P6470847647692053799

namespace A365241

/-- `A065091(∑[A101264(n)+1])` -/
def P6470847647692053799.Spec : Prop :=
  ∀ n, P6470847647692053799.a n = A365241 (n + 1)

end A365241

/-! ## A365241.P401810844295895547

`A065091(A099802(n+1)+n)`
-/

namespace A365241.P401810844295895547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A099802 (n + 1) + (n : ℤ)).toNat

end

end A365241.P401810844295895547

namespace A365241

/-- `A065091(A099802(n+1)+n)` -/
def P401810844295895547.Spec : Prop :=
  ∀ n, P401810844295895547.a n = A365241 (n + 1)

end A365241

/-! ## A365241.P8240716455492266187

`A065091(comp[A175540(n+1)]+1)`
-/

namespace A365241.P8240716455492266187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175540 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A365241.P8240716455492266187

namespace A365241

/-- `A065091(comp[A175540(n+1)]+1)` -/
def P8240716455492266187.Spec : Prop :=
  ∀ n, P8240716455492266187.a n = A365241 (n + 1)

end A365241

/-! ## A365241.P5067776284883154603

`A065091(2*n+1-A210469(n+1))`
-/

namespace A365241.P5067776284883154603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 ((2 * n + 1 : ℤ) - A210469 (n + 1)).toNat

end

end A365241.P5067776284883154603

namespace A365241

/-- `A065091(2*n+1-A210469(n+1))` -/
def P5067776284883154603.Spec : Prop :=
  ∀ n, P5067776284883154603.a n = A365241 (n + 1)

end A365241

/-! ## A365241.P6830342876325871356

`A000040(∑[C(2*n+1, ∏{d}[2*n+1, #])]+1+n)`
-/

namespace A365241.P6830342876325871356
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) (∏ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j + 1 + n)

end

end A365241.P6830342876325871356

namespace A365241

/-- `A000040(∑[C(2*n+1, ∏{d}[2*n+1, #])]+1+n)` -/
def P6830342876325871356.Spec : Prop :=
  ∀ n, P6830342876325871356.a n = A365241 (n + 1)

end A365241

/-! ## A365241.P1751279663221097942

`A008578(∑[C(2*n+1, ∏{d}[2*n+1, #])]+n+2)`
-/

namespace A365241.P1751279663221097942
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) (∏ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ j ∈ Finset.range (n + 1), f1 j + n + 2)

end

end A365241.P1751279663221097942

namespace A365241

/-- `A008578(∑[C(2*n+1, ∏{d}[2*n+1, #])]+n+2)` -/
def P1751279663221097942.Spec : Prop :=
  ∀ n, P1751279663221097942.a n = A365241 (n + 1)

end A365241

/-! ## A365241.P5065401329265883794

`A000040(∑[A101264(n)+1]+1)`
-/

namespace A365241.P5065401329265883794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A365241.P5065401329265883794

namespace A365241

/-- `A000040(∑[A101264(n)+1]+1)` -/
def P5065401329265883794.Spec : Prop :=
  ∀ n, P5065401329265883794.a n = A365241 (n + 1)

end A365241

/-! ## A365241.P10613327306802316388

`A000040(A099802(n+1)+n+1)`
-/

namespace A365241.P10613327306802316388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A099802 (n + 1) + (n + 1 : ℤ)).toNat

end

end A365241.P10613327306802316388

namespace A365241

/-- `A000040(A099802(n+1)+n+1)` -/
def P10613327306802316388.Spec : Prop :=
  ∀ n, P10613327306802316388.a n = A365241 (n + 1)

end A365241

/-! ## A365241.P16216517671816565409

`A175787(A000720(2*n+1)+n+2)`
-/

namespace A365241.P16216517671816565409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (A000720 (2 * n + 1) + (n + 2 : ℤ)).toNat

end

end A365241.P16216517671816565409

namespace A365241

/-- `A175787(A000720(2*n+1)+n+2)` -/
def P16216517671816565409.Spec : Prop :=
  ∀ n, P16216517671816565409.a n = A365241 (n + 1)

end A365241

/-! ## A365241.P4379184054394089826

`A000040(A036234(2*(n+1))+n)`
-/

namespace A365241.P4379184054394089826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A036234 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A365241.P4379184054394089826

namespace A365241

/-- `A000040(A036234(2*(n+1))+n)` -/
def P4379184054394089826.Spec : Prop :=
  ∀ n, P4379184054394089826.a n = A365241 (n + 1)

theorem P4379184054394089826.correct : P4379184054394089826.Spec := by
  intro n
  simp only [A365241, Nat.add_sub_cancel, A365241.P4379184054394089826.a, A365241.P1377558942110978897.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A036234, A036234.P2906282677021386800.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A365241

/-! ## A365241.P2797342092311204487

`A006005(A036234(2*(n+1))+n)`
-/

namespace A365241.P2797342092311204487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A036234 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A365241.P2797342092311204487

namespace A365241

/-- `A006005(A036234(2*(n+1))+n)` -/
def P2797342092311204487.Spec : Prop :=
  ∀ n, P2797342092311204487.a n = A365241 (n + 1)

end A365241

/-! ## A365241.P10862225729648002992

`A065091(A033270(2*n+1)+n+1)`
-/

namespace A365241.P10862225729648002992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A033270 (2 * n + 1) + (n + 1 : ℤ)).toNat

end

end A365241.P10862225729648002992

namespace A365241

/-- `A065091(A033270(2*n+1)+n+1)` -/
def P10862225729648002992.Spec : Prop :=
  ∀ n, P10862225729648002992.a n = A365241 (n + 1)

end A365241

/-! ## A365241.P12129521273873592070

`A000040(A033270(2*n+1)+n+2)`
-/

namespace A365241.P12129521273873592070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A033270 (2 * n + 1) + (n + 2 : ℤ)).toNat

end

end A365241.P12129521273873592070

namespace A365241

/-- `A000040(A033270(2*n+1)+n+2)` -/
def P12129521273873592070.Spec : Prop :=
  ∀ n, P12129521273873592070.a n = A365241 (n + 1)

end A365241

/-! ## A365241.P10274927946232879114

`A046022(A036234(2*n+1)+n+2)`
-/

namespace A365241.P10274927946232879114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (A036234 (2 * n + 1) + (n + 2 : ℤ)).toNat

end

end A365241.P10274927946232879114

namespace A365241

/-- `A046022(A036234(2*n+1)+n+2)` -/
def P10274927946232879114.Spec : Prop :=
  ∀ n, P10274927946232879114.a n = A365241 (n + 1)

end A365241

/-!
# A365243: G.f. satisfies A(x) = 1 + x*A(x)/(1 - x^3*A(x)^2).

The programs for A365243, there is no canonical definition to state claims against.
-/

/-! ## A365243.P9961571482869959066

`A001951(∏[floor(sqrt(n))!!])`
-/

namespace A365243.P9961571482869959066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.factorial (Nat.sqrt n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A365243.P9961571482869959066

/-! ## A365243.P18084860813246659974

`A118065(A008930(n))`
-/

namespace A365243.P18084860813246659974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118065 (A008930 n).toNat

end

end A365243.P18084860813246659974

/-! ## A365243.P11698282883843462290

`A078704(A084509(n))`
-/

namespace A365243.P11698282883843462290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078704 (A084509 n).toNat

end

end A365243.P11698282883843462290

/-! ## A365243.P18137825132961633613

`A211990(A018150(n))`
-/

namespace A365243.P18137825132961633613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211990 (A018150 n).toNat

end

end A365243.P18137825132961633613

/-! ## A365243.P803498418107204474

`A141472(A098482(n))`
-/

namespace A365243.P803498418107204474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141472 (A098482 n).toNat

end

end A365243.P803498418107204474

/-!
# A365244: G.f. satisfies A(x) = 1 + x*A(x)/(1 - x^2*A(x)^3).

The programs for A365244, there is no canonical definition to state claims against.
-/

/-! ## A365244.P17821032857780132982

`floor(sqrt(∑[A066022(n!)]))`
-/

namespace A365244.P17821032857780132982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066022 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A365244.P17821032857780132982

/-! ## A365244.P10893451980728390001

`A094192(A000142(n))-A275972(2*n)`
-/

namespace A365244.P10893451980728390001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094192 (A000142 n).toNat - A275972 (2 * n)

end

end A365244.P10893451980728390001

/-! ## A365244.P7551446001064310291

`A023193(or(A007721(n+1), A345764(n)))`
-/

namespace A365244.P7551446001064310291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (Int.lor (A007721 (n + 1)) (A345764 n)).toNat

end

end A365244.P7551446001064310291

/-! ## A365244.P2565446790523661762

`A065033(A368094(n+3)-A006065(n+2))`
-/

namespace A365244.P2565446790523661762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A368094 (n + 3) - A006065 (n + 2)).toNat

end

end A365244.P2565446790523661762

/-!
# A365246: G.f. satisfies A(x) = 1 + x*A(x)^2/(1 - x^2*A(x)^4).

The programs for A365246, there is no canonical definition to state claims against.
-/

/-! ## A365246.P2632729099333131222

`A110266(A149303(n))`
-/

namespace A365246.P2632729099333131222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110266 (A149303 n).toNat

end

end A365246.P2632729099333131222

/-! ## A365246.P11624317012893613517

`A214701(A363809(n))`
-/

namespace A365246.P11624317012893613517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (A363809 n).toNat

end

end A365246.P11624317012893613517

/-! ## A365246.P3121167699113302748

`A049137(A037442(n+1))`
-/

namespace A365246.P3121167699113302748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049137 (A037442 (n + 1)).toNat

end

end A365246.P3121167699113302748

/-!
# A365247: G.f. satisfies A(x) = 1 + x*A(x)^2/(1 - x^3*A(x)^4).

The programs for A365247, there is no canonical definition to state claims against.
-/

/-! ## A365247.P3846086450306248731

`A008616(A005993(n)+A001700(n))`
-/

namespace A365247.P3846086450306248731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A005993 n + A001700 n).toNat

end

end A365247.P3846086450306248731

/-! ## A365247.P3336252072066017975

`A157135(n)+A085974(A000142(n))`
-/

namespace A365247.P3336252072066017975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157135 n + A085974 (A000142 n).toNat

end

end A365247.P3336252072066017975

/-! ## A365247.P13557772876452829563

`A157135(n)+A086075(A060223(n))`
-/

namespace A365247.P13557772876452829563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157135 n + A086075 (A060223 n).toNat

end

end A365247.P13557772876452829563

/-! ## A365247.P18161522132552020716

`A367317(n)+A085974(A000142(n))`
-/

namespace A365247.P18161522132552020716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367317 n + A085974 (A000142 n).toNat

end

end A365247.P18161522132552020716

/-!
# A365248: Composite numbers k that are not a prime minus one, for which A214749(k) = k/2.

The programs for A365248, there is no canonical definition to state claims against.
-/

/-! ## A365248.P15977666772573905925

`∩[A112770(n+1), A114872(n+1)]`
-/

namespace A365248.P15977666772573905925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365248.P15977666772573905925

/-! ## A365248.P2239155569597891225

`A259978(n+1)-A000035(A002315(n))`
-/

namespace A365248.P2239155569597891225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259978 (n + 1) - A000035 (A002315 n).toNat

end

end A365248.P2239155569597891225

/-!
# A365249: Composite numbers k for which A214749(k) = (k-1)/2.

The programs for A365249, there is no canonical definition to state claims against.
-/

/-! ## A365249.P3374989167305172708

`∩[A075033(n+1), A176551(n+1)]`
-/

namespace A365249.P3374989167305172708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075033 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365249.P3374989167305172708

/-! ## A365249.P6477452926519328647

`lt[A014110(A318810(n+1)), A107286(n)]`
-/

namespace A365249.P6477452926519328647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014110 (A318810 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A365249.P6477452926519328647

/-!
# A365250: G.f. satisfies A(x) = 1 + x*A(x)^3/(1 - x^2*A(x)^6).

The programs for A365250, there is no canonical definition to state claims against.
-/

/-! ## A365250.P18304520373527684358

`A105149(∑[(n+2)!])`
-/

namespace A365250.P18304520373527684358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105149 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A365250.P18304520373527684358

/-! ## A365250.P11645656080245392349

`A354361(A148569(n))`
-/

namespace A365250.P11645656080245392349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354361 (A148569 n).toNat

end

end A365250.P11645656080245392349

/-!
# A365252: G.f. satisfies A(x) = 1 + x*A(x)*(1 + x^4*A(x)^2).

The programs for A365252, there is no canonical definition to state claims against.
-/

/-! ## A365252.P127034339172669169

`A157271(A393247(n))`
-/

namespace A365252.P127034339172669169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A393247 n).toNat

end

end A365252.P127034339172669169

/-! ## A365252.P4282249025904901571

`A003602(A393247(n)^A119326(n))`
-/

namespace A365252.P4282249025904901571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (SequenceMachineLib.roundAway ((A393247 n : ℚ) ^ (A119326 n : ℤ))).toNat

end

end A365252.P4282249025904901571

/-! ## A365252.P11640449722753635795

`A003602(A393247(n)^A251072(n))`
-/

namespace A365252.P11640449722753635795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (SequenceMachineLib.roundAway ((A393247 n : ℚ) ^ (A251072 n : ℤ))).toNat

end

end A365252.P11640449722753635795

/-! ## A365252.P16534558862538836951

`A254629(A006251(n))`
-/

namespace A365252.P16534558862538836951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254629 (A006251 n).toNat

end

end A365252.P16534558862538836951

/-! ## A365252.P2411573312861678033

`A342721(A137356(n))+A137356(n)`
-/

namespace A365252.P2411573312861678033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342721 (A137356 n).toNat + A137356 n

end

end A365252.P2411573312861678033

/-!
# A365253: Number of (3+)-free binary strings of length n.

The programs for A365253, there is no canonical definition to state claims against.
-/

/-! ## A365253.P12537311840261220471

`A002843(n)*A020639(10^ceil(n/2))`
-/

namespace A365253.P12537311840261220471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002843 n * A020639 (SequenceMachineLib.roundAway ((10 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ))).toNat

end

end A365253.P12537311840261220471

/-! ## A365253.P1193165820847276306

`A000122(A000583(n))*A002843(n)`
-/

namespace A365253.P1193165820847276306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A000583 n).toNat * A002843 n

end

end A365253.P1193165820847276306

/-! ## A365253.P18252078884072583619

`A002843(n)*A063962(A005010(n))`
-/

namespace A365253.P18252078884072583619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002843 n * A063962 (A005010 n).toNat

end

end A365253.P18252078884072583619

/-! ## A365253.P9767590547805442546

`A002843(n)*A107279(A007283(n))`
-/

namespace A365253.P9767590547805442546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002843 n * A107279 (A007283 n).toNat

end

end A365253.P9767590547805442546

/-! ## A365253.P3431023983694466426

`A002843(n)*A320013(A000244(n))`
-/

namespace A365253.P3431023983694466426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002843 n * A320013 (A000244 n).toNat

end

end A365253.P3431023983694466426

/-!
# A365259: Lexicographically earliest sequence of distinct positive numbers such that, for n > 2, a(n) shares a factor with a(n-1) and a(n+a(n)).

The programs for A365259, there is no canonical definition to state claims against.
-/

/-! ## A365259.P7084524589514336048

`A356851(n+1)%A224613(A356865(n))`
-/

namespace A365259.P7084524589514336048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A356851 (n + 1)) (A224613 (A356865 n).toNat)

end

end A365259.P7084524589514336048

/-!
# A365261: Lexicographically latest infinite cubefree word over the alphabet {0,1}.

The programs for A365261, there is no canonical definition to state claims against.
-/

/-! ## A365261.P14566540839960625815

`1-A282317(n)`
-/

namespace A365261.P14566540839960625815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A282317 n

end

end A365261.P14566540839960625815

/-! ## A365261.P17578851728629226898

`1-char[∑[A285930(n+1)]+n]`
-/

namespace A365261.P17578851728629226898
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285930 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A365261.P17578851728629226898

/-! ## A365261.P15353464400007254011

`xor(1, A282317(A028310(n)))`
-/

namespace A365261.P15353464400007254011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A282317 (A028310 n).toNat)

end

end A365261.P15353464400007254011

/-! ## A365261.P6410148480393097091

`A000007(n*A282317(n))`
-/

namespace A365261.P6410148480393097091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) * A282317 n).toNat

end

end A365261.P6410148480393097091

/-! ## A365261.P17089641365245880904

`A088917((n*A282317(n))²)`
-/

namespace A365261.P17089641365245880904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088917 (((n : ℤ) * A282317 n) ^ 2).toNat

end

end A365261.P17089641365245880904

/-! ## A365261.P15217058708147215324

`xor(A158388(n), A282317(n))²`
-/

namespace A365261.P15217058708147215324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A158388 n) (A282317 n) ^ 2

end

end A365261.P15217058708147215324

/-! ## A365261.P4954701029525176302

`xor(A047999(∑[n]), A282317(n))`
-/

namespace A365261.P4954701029525176302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A047999 (∑ j ∈ Finset.range (n + 1), f1 j)) (A282317 n)

end

end A365261.P4954701029525176302

/-! ## A365261.P6409675808256790594

`A159782((2*n+1)*A282317(n))`
-/

namespace A365261.P6409675808256790594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159782 ((2 * n + 1 : ℤ) * A282317 n).toNat

end

end A365261.P6409675808256790594

/-! ## A365261.P3367758349945565272

`xor(A000035(2*n+3), A282317(n))`
-/

namespace A365261.P3367758349945565272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 (2 * n + 3)) (A282317 n)

end

end A365261.P3367758349945565272

/-! ## A365261.P17222537122510390694

`A088917(comp[2*(n+1)]*A282317(n))`
-/

namespace A365261.P17222537122510390694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088917 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) * A282317 n).toNat

end

end A365261.P17222537122510390694

/-! ## A365261.P7972272895038616063

`A034188(A250120(n)*A282317(n))`
-/

namespace A365261.P7972272895038616063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034188 (A250120 n * A282317 n).toNat

end

end A365261.P7972272895038616063

/-! ## A365261.P9537460856638413951

`A010060(A282317(n)+A248057(n+1))`
-/

namespace A365261.P9537460856638413951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A282317 n + A248057 (n + 1)).toNat

end

end A365261.P9537460856638413951

/-! ## A365261.P16233731921607233586

`A010054(A000040(n+1)*A282317(n))`
-/

namespace A365261.P16233731921607233586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A000040 (n + 1) * A282317 n).toNat

end

end A365261.P16233731921607233586

/-! ## A365261.P11125733940935322719

`A010054(A007775(n+1)*A282317(n))`
-/

namespace A365261.P11125733940935322719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A007775 (n + 1) * A282317 n).toNat

end

end A365261.P11125733940935322719

/-! ## A365261.P6317225842016253735

`A266243(A027748(n+1)*A282317(n))`
-/

namespace A365261.P6317225842016253735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266243 (A027748 (n + 1) * A282317 n).toNat

end

end A365261.P6317225842016253735

/-! ## A365261.P3762508108398745055

`xor(A282317(n), A326139(A023201(n+1)))`
-/

namespace A365261.P3762508108398745055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A282317 n) (A326139 (A023201 (n + 1)).toNat)

end

end A365261.P3762508108398745055

/-! ## A365261.P8644046566794239455

`A322583(A093818(n+1)+A282317(n)+1)`
-/

namespace A365261.P8644046566794239455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322583 (A093818 (n + 1) + (A282317 n + 1)).toNat

end

end A365261.P8644046566794239455

/-! ## A365261.P12024725236925097996

`A035457(or(A035457(2*n+3), A282317(n)))`
-/

namespace A365261.P12024725236925097996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (Int.lor (A035457 (2 * n + 3)) (A282317 n)).toNat

end

end A365261.P12024725236925097996

/-!
# A365263: Numbers m for which A139770(m) and A140635(m) differ.

The programs for A365263, there is no canonical definition to state claims against.
-/

/-! ## A365263.P13061510696693540953

`filter[A264164(n+1), A303340(#)]`
-/

namespace A365263.P13061510696693540953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264164 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A303340 (f1 j).toNat = 1) n)

end

end A365263.P13061510696693540953

/-!
# A365264: a(n) is the smallest positive integer k whose number of divisors is larger than that of n.

The programs for A365264, there is no canonical definition to state claims against.
-/

/-! ## A365264.P17820475929934546363

`A061799(A334954(1+n))`
-/

namespace A365264.P17820475929934546363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (A334954 (1 + n)).toNat

end

end A365264.P17820475929934546363

/-! ## A365264.P10710035898522547328

`A061799(Δ[A006218(n)]+1)`
-/

namespace A365264.P10710035898522547328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (f1 (n + 1) - f1 n + 1).toNat

end

end A365264.P10710035898522547328

/-! ## A365264.P2989672495422628615

`A061799(A000005(n+1)+1)`
-/

namespace A365264.P2989672495422628615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (A000005 (n + 1) + 1).toNat

end

end A365264.P2989672495422628615

/-! ## A365264.P14745288823815470435

`A061799(A032741(n+1)+2)`
-/

namespace A365264.P14745288823815470435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (A032741 (n + 1) + 2).toNat

end

end A365264.P14745288823815470435

/-! ## A365264.P3345560482031240716

`A061799(A320111(2*(n+1))+1)`
-/

namespace A365264.P3345560482031240716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (A320111 (2 * (n + 1)) + 1).toNat

end

end A365264.P3345560482031240716

/-! ## A365264.P9398165260020282835

`A061799(∑{#}[n, floor((n+1)/(#+1))-floor(n/(#+1))]+1)`
-/

namespace A365264.P9398165260020282835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (∑ k ∈ Finset.range (f1 n + 1), (⌊(n + 1 : ℚ) / (k + 1 : ℚ)⌋ - ⌊(n : ℚ) / (k + 1 : ℚ)⌋) + 1).toNat

end

end A365264.P9398165260020282835

/-! ## A365264.P11527831587367712953

`A139770(A338506(n+1))`
-/

namespace A365264.P11527831587367712953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139770 (A338506 (n + 1)).toNat

end

end A365264.P11527831587367712953

/-!
# A365265: Numbers k for which sqrt(k/2) divides k and the symmetric representation of sigma(k) consists of a single part and its width at the diagonal equals 1.

The programs for A365265, there is no canonical definition to state claims against.
-/

/-! ## A365265.P6230680290378046426

`∩[A166401(n+1), A361903(n+1)]`
-/

namespace A365265.P6230680290378046426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365265.P6230680290378046426

/-! ## A365265.P16946286300259599187

`∩[A320137(n+1), A361903(n+1)]`
-/

namespace A365265.P16946286300259599187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365265.P16946286300259599187

/-! ## A365265.P5126677025663938934

`filter[A361905(n+1), A322860(#)]`
-/

namespace A365265.P5126677025663938934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322860 (f1 j).toNat = 1) n)

end

end A365265.P5126677025663938934

/-! ## A365265.P1710971491317148576

`filter[A361905(n+1), A365429(#)]`
-/

namespace A365265.P1710971491317148576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A365265.P1710971491317148576

/-! ## A365265.P880002704260392731

`filter[A361905(n+1), A379968(#)]`
-/

namespace A365265.P880002704260392731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379968 (f1 j).toNat = 1) n)

end

end A365265.P880002704260392731

/-!
# A365267: G.f. satisfies A(x) = 1 + x*A(x)^2*(1 + x^3*A(x)).

The programs for A365267, there is no canonical definition to state claims against.
-/

/-! ## A365267.P10268678683552559532

`A350434(n+1)-A269245(A355993(n))`
-/

namespace A365267.P10268678683552559532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350434 (n + 1) - A269245 (A355993 n).toNat

end

end A365267.P10268678683552559532

/-!
# A365268: G.f. satisfies A(x) = 1 + x*A(x)^2*(1 + x^3*A(x)^2).

The programs for A365268, the canonical program `A365268.P521483665522416136` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365268 has offset 0).

The definition of A365268 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A365268.P521483665522416136

`1/(n+1)*∑{#}[floor(n/3), C(n+1, #)*C(2*n-4*#, n)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A365268

/-- `1/(n+1)*∑{#}[floor(n/3), C(n+1, #)*C(2*n-4*#, n)]` -/
def P521483665522416136.Spec : Prop :=
  ∀ n, P521483665522416136.a n = (A365268 n : ℚ)

end A365268

/-! ## A365268.P18199212908754741400

`A366041(n)-A086075(A124303(n))`
-/

namespace A365268.P18199212908754741400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366041 n - A086075 (A124303 n).toNat

end

end A365268.P18199212908754741400

namespace A365268

/-- `A366041(n)-A086075(A124303(n))` -/
def P18199212908754741400.Spec : Prop :=
  ∀ n, P18199212908754741400.a n = A365268 n

end A365268

/-! ## A365268.P4709835369300446298

`A366041(n)-A086075(A246657(n))`
-/

namespace A365268.P4709835369300446298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366041 n - A086075 (A246657 n).toNat

end

end A365268.P4709835369300446298

namespace A365268

/-- `A366041(n)-A086075(A246657(n))` -/
def P4709835369300446298.Spec : Prop :=
  ∀ n, P4709835369300446298.a n = A365268 n

end A365268

/-! ## A365268.P17566795175970931084

`A366041(n)-A371788(A143571(n))`
-/

namespace A365268.P17566795175970931084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366041 n - A371788 (A143571 n).toNat

end

end A365268.P17566795175970931084

namespace A365268

/-- `A366041(n)-A371788(A143571(n))` -/
def P17566795175970931084.Spec : Prop :=
  ∀ n, P17566795175970931084.a n = A365268 n

end A365268

/-! ## A365268.P4069201335285059445

`A372532(n+1)-A086075(A124303(n))`
-/

namespace A365268.P4069201335285059445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372532 (n + 1) - A086075 (A124303 n).toNat

end

end A365268.P4069201335285059445

namespace A365268

/-- `A372532(n+1)-A086075(A124303(n))` -/
def P4069201335285059445.Spec : Prop :=
  ∀ n, P4069201335285059445.a n = A365268 n

end A365268

/-!
# A365269: a(n) = Product_{k=1..n} A002720(k).

The programs for A365269, there is no canonical definition to state claims against.
-/

/-! ## A365269.P5382759485924096102

`∏[∑{#}[n, C(n, #)²*#!]]`
-/

namespace A365269.P5382759485924096102
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f2 n + 1), Nat.choose n k ^ 2 * Nat.factorial k

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A365269.P5382759485924096102

/-! ## A365269.P12563094100552567345

`a(n-1)*∑{#}[n, C(n, #)²*#!]` with `a(0)=1`
-/

namespace A365269.P12563094100552567345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ k ∈ Finset.range (f1 n + 1), Nat.choose n k ^ 2 * Nat.factorial k)

end

end A365269.P12563094100552567345

/-! ## A365269.P17167793063241348386

`∏[2*n*a(n-1)-(n-1)²*a(n-2)]` with `a(0)=1, a(1)=2`
-/

namespace A365269.P17167793063241348386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  (2 * n : ℤ) * f1 (n - 1) - ((n : ℤ) - 1) ^ 2 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A365269.P17167793063241348386

/-! ## A365269.P9920259705426209015

`∏[A002720(n)]`
-/

namespace A365269.P9920259705426209015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002720 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A365269.P9920259705426209015

/-! ## A365269.P4733151883869106381

`∏[A097662(n)+1]`
-/

namespace A365269.P4733151883869106381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097662 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A365269.P4733151883869106381

/-!
# A365270: Practical numbers that have middle divisors.

The programs for A365270, there is no canonical definition to state claims against.
-/

/-! ## A365270.P5455504366202391998

`filter[A005153(1+n), A347950(#)]`
-/

namespace A365270.P5455504366202391998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347950 (f1 j).toNat = 1) n)

end

end A365270.P5455504366202391998

/-! ## A365270.P17697493512793651257

`filter[A377929(n+1), A347950(#)]`
-/

namespace A365270.P17697493512793651257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347950 (f1 j).toNat = 1) n)

end

end A365270.P17697493512793651257

/-! ## A365270.P8881118613028766534

`filter[A071562(n+1), A322860(#)]`
-/

namespace A365270.P8881118613028766534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322860 (f1 j).toNat = 1) n)

end

end A365270.P8881118613028766534

/-! ## A365270.P1917045131419287426

`∩[A005153(n+1), A071562(n+1)]`
-/

namespace A365270.P1917045131419287426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365270.P1917045131419287426

/-! ## A365270.P11408222542828281923

`∩[A071562(n+1), A377929(n+1)]`
-/

namespace A365270.P11408222542828281923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365270.P11408222542828281923

/-!
# A365271: Minimum number of shaded squares needed on an n X n grid divided into rectangular regions so that more than half of the regions have more than half of their squares shaded and the area of the smallest region is more than half that of the largest region.

The programs for A365271, there is no canonical definition to state claims against.
-/

/-! ## A365271.P16231164380393661555

`A004525(A004137(n+1))+A004525(n+3)`
-/

namespace A365271.P16231164380393661555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004137 (n + 1)).toNat + A004525 (n + 3)

end

end A365271.P16231164380393661555

/-! ## A365271.P1207456550127930439

`A111660(∑[A156262(3*n+4)-n])`
-/

namespace A365271.P1207456550127930439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156262 (3 * n + 4) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A365271.P1207456550127930439

/-! ## A365271.P16281573796846339692

`A111660(A366566(n+1))`
-/

namespace A365271.P16281573796846339692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A366566 (n + 1)).toNat

end

end A365271.P16281573796846339692

/-! ## A365271.P13961103051826281441

`∑[A374741(record[A174620(n+1)])]`
-/

namespace A365271.P13961103051826281441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174620 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374741 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365271.P13961103051826281441

/-! ## A365271.P3635577308206294420

`A204562(A340963(2*n)+A208059(n))`
-/

namespace A365271.P3635577308206294420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204562 (A340963 (2 * n + 14) + A208059 n).toNat

end

end A365271.P3635577308206294420

/-!
# A365273: Number of vertices in the Laakso graph of order n.

The programs for A365273, the canonical program `A365273.P5187645854283801386` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365273 has offset 1).

The definition of A365273 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365273.P12677700018211866899

`ogf((6-12x)/(1-7x+6x^2))`
-/

namespace A365273.P12677700018211866899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -12] [1, -7, 6] n

end

end A365273.P12677700018211866899

namespace A365273

/-- `ogf((6-12x)/(1-7x+6x^2))` -/
def P12677700018211866899.Spec : Prop :=
  ∀ n, P12677700018211866899.a n = A365273 (n + 1)

end A365273

/-! ## A365273.P5187645854283801386

`a(n-1)+4*6^n` with `a(0)=6`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A365273

/-- `a(n-1)+4*6^n` -/
def P5187645854283801386.Spec : Prop :=
  ∀ n, (P5187645854283801386.a n : ℤ) = A365273 (n + 1)

theorem P5187645854283801386.correct : P5187645854283801386.Spec := by
  intro n
  simp only [A365273, Nat.add_sub_cancel]

end A365273

/-! ## A365273.P17901855220705683067

`2/5*(2*6^(n+1)+3)`
-/

namespace A365273.P17901855220705683067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 5 * (2 * 6 ^ (n + 1) + 3 : ℚ)

end

end A365273.P17901855220705683067

namespace A365273

/-- `2/5*(2*6^(n+1)+3)` -/
def P17901855220705683067.Spec : Prop :=
  ∀ n, P17901855220705683067.a n = (A365273 (n + 1) : ℚ)

theorem P17901855220705683067.correct : P17901855220705683067.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A365273, Nat.add_sub_cancel, A365273.P17901855220705683067.a, A365273.P5187645854283801386.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A365273, Nat.add_sub_cancel, A365273.P17901855220705683067.a, A365273.P5187645854283801386.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A365273

/-! ## A365273.P7514270094756570526

`7*a(n-1)-6*a(n-2)` with `a(0)=6, a(1)=30`
-/

namespace A365273.P7514270094756570526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 30] fun n a =>
  7 * a (n - 1) - 6 * a (n - 2)

end

end A365273.P7514270094756570526

namespace A365273

/-- `7*a(n-1)-6*a(n-2)` -/
def P7514270094756570526.Spec : Prop :=
  ∀ n, P7514270094756570526.a n = A365273 (n + 1)

end A365273

/-! ## A365273.P9840412418011825863

`6*(a(n-1)-1)` with `a(0)=6`
-/

namespace A365273.P9840412418011825863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  6 * (a (n - 1) - 1)

end

end A365273.P9840412418011825863

namespace A365273

/-- `6*(a(n-1)-1)` -/
def P9840412418011825863.Spec : Prop :=
  ∀ n, P9840412418011825863.a n = A365273 (n + 1)

end A365273

/-! ## A365273.P1585895676368258890

`lcm(6, 1-a(n-1))` with `a(0)=6`
-/

namespace A365273.P1585895676368258890
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  Int.lcm 6 (1 - (a (n - 1) : ℤ))

end

end A365273.P1585895676368258890

namespace A365273

/-- `lcm(6, 1-a(n-1))` -/
def P1585895676368258890.Spec : Prop :=
  ∀ n, (P1585895676368258890.a n : ℤ) = A365273 (n + 1)

end A365273

/-! ## A365273.P4741293853835368297

`A083066(n+1)+1`
-/

namespace A365273.P4741293853835368297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083066 (n + 1) + 1

end

end A365273.P4741293853835368297

namespace A365273

/-- `A083066(n+1)+1` -/
def P4741293853835368297.Spec : Prop :=
  ∀ n, P4741293853835368297.a n = A365273 (n + 1)

end A365273

/-! ## A365273.P16441370436303408680

`A125687(n+1)+2`
-/

namespace A365273.P16441370436303408680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125687 (n + 1) + 2

end

end A365273.P16441370436303408680

namespace A365273

/-- `A125687(n+1)+2` -/
def P16441370436303408680.Spec : Prop :=
  ∀ n, P16441370436303408680.a n = A365273 (n + 1)

end A365273

/-! ## A365273.P6017007900468124034

`record[Δ[A076285(n+1)]]`
-/

namespace A365273.P6017007900468124034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076285 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A365273.P6017007900468124034

namespace A365273

/-- `record[Δ[A076285(n+1)]]` -/
def P6017007900468124034.Spec : Prop :=
  ∀ n, P6017007900468124034.a n = A365273 (n + 1)

end A365273

/-! ## A365273.P10362834247584128868

`A026534(2*(n+1))+2`
-/

namespace A365273.P10362834247584128868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026534 (2 * (n + 1)) + 2

end

end A365273.P10362834247584128868

namespace A365273

/-- `A026534(2*(n+1))+2` -/
def P10362834247584128868.Spec : Prop :=
  ∀ n, P10362834247584128868.a n = A365273 (n + 1)

end A365273

/-! ## A365273.P8655616194922998929

`A152596(n+1)+A152596(n+1)`
-/

namespace A365273.P8655616194922998929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152596 (n + 1) + A152596 (n + 1)

end

end A365273.P8655616194922998929

namespace A365273

/-- `A152596(n+1)+A152596(n+1)` -/
def P8655616194922998929.Spec : Prop :=
  ∀ n, P8655616194922998929.a n = A365273 (n + 1)

end A365273

/-! ## A365273.P3617018579341470524

`A105281(n+1)-A105281(n)-A105281(n)`
-/

namespace A365273.P3617018579341470524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105281 (n + 1) - A105281 n - A105281 n

end

end A365273.P3617018579341470524

namespace A365273

/-- `A105281(n+1)-A105281(n)-A105281(n)` -/
def P3617018579341470524.Spec : Prop :=
  ∀ n, P3617018579341470524.a n = A365273 (n + 1)

end A365273

/-! ## A365273.P3397410514253311764

`A261399(n+1)+A261399(n+1)+A261399(n+2)`
-/

namespace A365273.P3397410514253311764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261399 (n + 1) + (A261399 (n + 1) + A261399 (n + 2))

end

end A365273.P3397410514253311764

namespace A365273

/-- `A261399(n+1)+A261399(n+1)+A261399(n+2)` -/
def P3397410514253311764.Spec : Prop :=
  ∀ n, P3397410514253311764.a n = A365273 (n + 1)

end A365273

/-!
# A365274: a(n) = a(n-2) + 4*a(n-4) - 2*a(n-8) - a(n-10), with a[0..9] = [1, 1, 1, 2, 3, 5, 7, 13, 18, 31].

The programs for A365274, the canonical program `A365274.P13207553493180967841` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365274 has offset 0).

The definition of A365274 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+4*a(n-4)-2*a(n-8)-a(n-10)` (program `A365274.P13207553493180967841`, by `A365274.P13207553493180967841.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A365274.P13207553493180967841

`a(n-2)+4*a(n-4)-2*a(n-8)-a(n-10)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=3, a(5)=5, a(6)=7, a(7)=13, a(8)=18, a(9)=31`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A365274

/-- `a(n-2)+4*a(n-4)-2*a(n-8)-a(n-10)` -/
def P13207553493180967841.Spec : Prop :=
  ∀ n, P13207553493180967841.a n = A365274 n

theorem P13207553493180967841.correct : P13207553493180967841.Spec := by
  intro n
  simp only [A365274]

end A365274

/-! ## A365274.P6991928040363562884

`ogf((1+x+x^3-2x^4-x^5+x^8)/(1-x^2-4x^4+2x^8+x^10))`
-/

namespace A365274.P6991928040363562884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 0, 1, -2, -1, 0, 0, 1] [1, 0, -1, 0, -4, 0, 0, 0, 2, 0, 1] n

end

end A365274.P6991928040363562884

namespace A365274

/-- `ogf((1+x+x^3-2x^4-x^5+x^8)/(1-x^2-4x^4+2x^8+x^10))` -/
def P6991928040363562884.Spec : Prop :=
  ∀ n, P6991928040363562884.a n = A365274 n

end A365274

/-! ## A365274.P14919586357600098325

`A056556(∑[A143547(n)])`
-/

namespace A365274.P14919586357600098325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143547 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A365274.P14919586357600098325

namespace A365274

/-- `A056556(∑[A143547(n)])` -/
def P14919586357600098325.Spec : Prop :=
  ∀ n, P14919586357600098325.a n = A365274 n

end A365274

/-! ## A365274.P11901843880172082437

`A177151(A001224(n+1))`
-/

namespace A365274.P11901843880172082437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177151 (A001224 (n + 1)).toNat

end

end A365274.P11901843880172082437

namespace A365274

/-- `A177151(A001224(n+1))` -/
def P11901843880172082437.Spec : Prop :=
  ∀ n, P11901843880172082437.a n = A365274 n

end A365274

/-! ## A365274.P12947604333498436384

`A177151(A060312(n+1))`
-/

namespace A365274.P12947604333498436384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177151 (A060312 (n + 1)).toNat

end

end A365274.P12947604333498436384

namespace A365274

/-- `A177151(A060312(n+1))` -/
def P12947604333498436384.Spec : Prop :=
  ∀ n, P12947604333498436384.a n = A365274 n

end A365274

/-!
# A365275: Number of integers k <= n that can be written as k = m^2+p^2 where p is a prime and m is a positive integer.

The programs for A365275, there is no canonical definition to state claims against.
-/

/-! ## A365275.P10065895803645040433

`∑[char[A361300(n+1)-1]]`
-/

namespace A365275.P10065895803645040433
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361300 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365275.P10065895803645040433

/-!
# A365276: Sum of all prime substrings of n in base 10, including n itself and duplicate or overlapping substrings but not substrings with a leading 0.

The programs for A365276, there is no canonical definition to state claims against.
-/

/-! ## A365276.P1696704037157066214

`A331097(A014375(n))+A331097(n)`
-/

namespace A365276.P1696704037157066214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331097 (A014375 n).toNat + A331097 n

end

end A365276.P1696704037157066214

/-! ## A365276.P16686028657404497628

`A105513(A342376(2*n+1))+A047814(n)`
-/

namespace A365276.P16686028657404497628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105513 (A342376 (2 * n + 1)).toNat + A047814 n

end

end A365276.P16686028657404497628

/-! ## A365276.P131082151445164011

`A324326(A101307(n+1))+A047814(n)`
-/

namespace A365276.P131082151445164011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324326 (A101307 (n + 1)).toNat + A047814 n

end

end A365276.P131082151445164011

/-!
# A365277: Numbers of the form prime(i)*prime(j)*prime(i+j).

The programs for A365277, there is no canonical definition to state claims against.
-/

/-! ## A365277.P16289725083245839696

`∩[A289691(n+1), A357631(n+1)]`
-/

namespace A365277.P16289725083245839696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357631 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365277.P16289725083245839696

/-! ## A365277.P12291702311480529687

`∩[A242413(n+1), A289691(n+1)]`
-/

namespace A365277.P12291702311480529687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289691 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365277.P12291702311480529687

/-! ## A365277.P15686717505213475222

`∩[A242413(n+1), A325802(n+1)]`
-/

namespace A365277.P15686717505213475222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325802 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365277.P15686717505213475222

/-! ## A365277.P9428278528534701557

`∩[A289691(n+1), A364462(n+1)]`
-/

namespace A365277.P9428278528534701557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365277.P9428278528534701557

/-! ## A365277.P1555283067522842601

`∩[A325802(n+1), A364462(n+1)]`
-/

namespace A365277.P1555283067522842601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325802 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365277.P1555283067522842601

/-! ## A365277.P9752004275446206636

`filter[A325802(n+1), A340369(#)]`
-/

namespace A365277.P9752004275446206636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A365277.P9752004275446206636

/-! ## A365277.P17995582156067827131

`filter[A364462(n+1), A340369(#)]`
-/

namespace A365277.P17995582156067827131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A365277.P17995582156067827131

/-! ## A365277.P16749891636634651685

`filter[A357631(n+2), A340369(#)]`
-/

namespace A365277.P16749891636634651685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357631 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A365277.P16749891636634651685

/-! ## A365277.P7087455658183382041

`∩[A014612(n+1), A325802(n+1)]`
-/

namespace A365277.P7087455658183382041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325802 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365277.P7087455658183382041

/-! ## A365277.P11585888228093052152

`∩[A014612(n+1), A357631(n+1)]`
-/

namespace A365277.P11585888228093052152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357631 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365277.P11585888228093052152

/-! ## A365277.P7565709486468572150

`∩[A014612(n+1), A357976(n+1)]`
-/

namespace A365277.P7565709486468572150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365277.P7565709486468572150

/-! ## A365277.P18418118583719699730

`∩[A014612(n+1), A364462(n+1)]`
-/

namespace A365277.P18418118583719699730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365277.P18418118583719699730

/-! ## A365277.P3550471162121247292

`∩[A217856(n+1), A325802(n+1)]`
-/

namespace A365277.P3550471162121247292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325802 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365277.P3550471162121247292

/-! ## A365277.P15084718856556189352

`∩[A217856(n+1), A357631(n+1)]`
-/

namespace A365277.P15084718856556189352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357631 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365277.P15084718856556189352

/-! ## A365277.P3337900173833059287

`∩[A217856(n+1), A357976(n+1)]`
-/

namespace A365277.P3337900173833059287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365277.P3337900173833059287

/-! ## A365277.P208263862603331946

`∩[A217856(n+1), A364462(n+1)]`
-/

namespace A365277.P208263862603331946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365277.P208263862603331946

/-! ## A365277.P11972187939995552624

`∩[A282668(n+1), A357631(n+1)]`
-/

namespace A365277.P11972187939995552624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357631 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365277.P11972187939995552624

/-! ## A365277.P15104733438618104147

`∩[A298207(n+1), A325802(n+1)]`
-/

namespace A365277.P15104733438618104147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325802 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365277.P15104733438618104147

/-! ## A365277.P7934407168774977586

`∩[A298207(n+1), A364462(n+1)]`
-/

namespace A365277.P7934407168774977586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365277.P7934407168774977586

/-!
# A365278: In the binary expansion of n replace each run of k consecutive 1's by the decimal digits of A007931(k) to get the ternary expansion of a(n).

The programs for A365278, there is no canonical definition to state claims against.
-/

/-! ## A365278.P12915170981135473661

`A366348(A005940(n+1))`
-/

namespace A365278.P12915170981135473661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366348 (A005940 (n + 1)).toNat

end

end A365278.P12915170981135473661

/-! ## A365278.P15689872289869905597

`A366348(A357268(n+1))`
-/

namespace A365278.P15689872289869905597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366348 (A357268 (n + 1)).toNat

end

end A365278.P15689872289869905597

/-! ## A365278.P11351747261568515399

`A366348(A364499(n+1)+1+n)`
-/

namespace A365278.P11351747261568515399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366348 (A364499 (n + 1) + 1 + (n : ℤ)).toNat

end

end A365278.P11351747261568515399

/-!
# A365279: Inverse permutation to A365278.

The programs for A365279, there is no canonical definition to state claims against.
-/

/-! ## A365279.P4089962676176504097

`A156552(A366347(n))`
-/

namespace A365279.P4089962676176504097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A366347 n).toNat

end

end A365279.P4089962676176504097

/-! ## A365279.P13249191966148673940

`A351436(A368325(n+1))`
-/

namespace A365279.P13249191966148673940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351436 (A368325 (n + 1)).toNat

end

end A365279.P13249191966148673940

/-! ## A365279.P10556879344122714725

`A293447(A084400(n+1))%A072875(n+2)`
-/

namespace A365279.P10556879344122714725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293447 (A084400 (n + 1)).toNat) (A072875 (n + 2))

end

end A365279.P10556879344122714725

/-!
# A365282: E.g.f. satisfies A(x) = 1 + x*A(x)*exp(x^2*A(x)).

The programs for A365282, there is no canonical definition to state claims against.
-/

/-! ## A365282.P6225176976624101359

`A000142(n)²/A285356(A129960(n))`
-/

namespace A365282.P6225176976624101359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n ^ 2 : ℚ) / (A285356 (A129960 n).toNat : ℚ)

end

end A365282.P6225176976624101359

/-! ## A365282.P14696970977722410713

`A001710(n)*A038548(A000142(n+1))`
-/

namespace A365282.P14696970977722410713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001710 n * A038548 (A000142 (n + 1)).toNat

end

end A365282.P14696970977722410713

/-! ## A365282.P4765512663496427287

`A047994(A385687(n))*A341947(n+4)`
-/

namespace A365282.P4765512663496427287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A385687 n).toNat * A341947 (n + 4)

end

end A365282.P4765512663496427287

/-!
# A365283: E.g.f. satisfies A(x) = 1 + x*A(x)*exp(x^2*A(x)^2).

The programs for A365283, the canonical program `A365283.P15305446419316743712` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365283 has offset 0).

The definition of A365283 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365283.P15305446419316743712

`n!/(n+1)*∑{#}[floor(n/2), (n-2*#)^#*C(n+1, n-2*#)/#!]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A365283

/-- `n!/(n+1)*∑{#}[floor(n/2), (n-2*#)^#*C(n+1, n-2*#)/#!]` -/
def P15305446419316743712.Spec : Prop :=
  ∀ n, P15305446419316743712.a n = (A365283 n : ℚ)

end A365283

/-! ## A365283.P3943618634391942778

`A093006(A352853(n+1))`
-/

namespace A365283.P3943618634391942778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093006 (A352853 (n + 1)).toNat

end

end A365283.P3943618634391942778

namespace A365283

/-- `A093006(A352853(n+1))` -/
def P3943618634391942778.Spec : Prop :=
  ∀ n, P3943618634391942778.a n = A365283 n

end A365283

/-!
# A365284: E.g.f. satisfies A(x) = 1 + x*A(x)*exp(x^2*A(x)^3).

The programs for A365284, there is no canonical definition to state claims against.
-/

/-! ## A365284.P13976233806955926781

`A140067(A168653(n))`
-/

namespace A365284.P13976233806955926781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140067 (A168653 n).toNat

end

end A365284.P13976233806955926781

/-! ## A365284.P459947730188466875

`A140067(A279567(n))`
-/

namespace A365284.P459947730188466875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140067 (A279567 n).toNat

end

end A365284.P459947730188466875

/-!
# A365285: E.g.f. satisfies A(x) = 1 + x*A(x)*exp(x^3*A(x)).

The programs for A365285, there is no canonical definition to state claims against.
-/

/-! ## A365285.P7009419998726658220

`n!*A324381(n!*∑[1/n!])`
-/

namespace A365285.P7009419998726658220
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A324381 (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j))).toNat

end

end A365285.P7009419998726658220

/-! ## A365285.P1499645900088010489

`A028310(A052743(n))`
-/

namespace A365285.P1499645900088010489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A052743 n).toNat

end

end A365285.P1499645900088010489

/-! ## A365285.P6501200862145451768

`A092824(A326511(n))`
-/

namespace A365285.P6501200862145451768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092824 (A326511 (n + 10)).toNat

end

end A365285.P6501200862145451768

/-!
# A365286: E.g.f. satisfies A(x) = 1 + x*A(x)*exp(x^3*A(x)^2).

The programs for A365286, there is no canonical definition to state claims against.
-/

/-! ## A365286.P18279140270779268695

`A052721(n)+A028310(A052743(n))`
-/

namespace A365286.P18279140270779268695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052721 n + A028310 (A052743 n).toNat

end

end A365286.P18279140270779268695

/-! ## A365286.P12733307050377924523

`A000142(n)*A000164(A004211(n))`
-/

namespace A365286.P12733307050377924523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A000164 (A004211 n).toNat

end

end A365286.P12733307050377924523

/-! ## A365286.P13250877587737390482

`A000142(n)*A033809(A000984(n))`
-/

namespace A365286.P13250877587737390482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A033809 (A000984 n).toNat

end

end A365286.P13250877587737390482

/-!
# A365287: E.g.f. satisfies A(x) = 1 + x*A(x)*exp(x^3*A(x)^3).

The programs for A365287, the canonical program `A365287.P10064026197634601642` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365287 has offset 0).

The definition of A365287 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365287.P10064026197634601642

`n!/(n+1)*∑{#}[floor(n/3), (n-3*#)^#*C(n+1, n-3*#)/#!]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A365287

/-- `n!/(n+1)*∑{#}[floor(n/3), (n-3*#)^#*C(n+1, n-3*#)/#!]` -/
def P10064026197634601642.Spec : Prop :=
  ∀ n, P10064026197634601642.a n = (A365287 n : ℚ)

end A365287

/-! ## A365287.P636126119469479115

`A356194(A358065(n))`
-/

namespace A365287.P636126119469479115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356194 (A358065 n).toNat

end

end A365287.P636126119469479115

namespace A365287

/-- `A356194(A358065(n))` -/
def P636126119469479115.Spec : Prop :=
  ∀ n, P636126119469479115.a n = A365287 n

end A365287

/-! ## A365287.P18132602389664004815

`A245092(∏[A380909(n)])`
-/

namespace A365287.P18132602389664004815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A365287.P18132602389664004815

namespace A365287

/-- `A245092(∏[A380909(n)])` -/
def P18132602389664004815.Spec : Prop :=
  ∀ n, P18132602389664004815.a n = A365287 n

end A365287

/-!
# A365288: a(n) is the least positive integer that can be expressed as the sum of a prime number and a square of a nonnegative integer in exactly n ways.

The programs for A365288, there is no canonical definition to state claims against.
-/

/-! ## A365288.P17100729218998707606

`A298536(A364645(n))`
-/

namespace A365288.P17100729218998707606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298536 (A364645 n).toNat

end

end A365288.P17100729218998707606

/-! ## A365288.P14296708439499287407

`A360007(A270810(n)+1)`
-/

namespace A365288.P14296708439499287407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360007 (A270810 n + 1).toNat

end

end A365288.P14296708439499287407

/-!
# A365289: a(n) is the least positive integer that can be expressed as the sum of a prime number and a nonnegative cube in exactly n ways.

The programs for A365289, there is no canonical definition to state claims against.
-/

/-! ## A365289.P8867249110669472143

`A031218(∏{p}[A369778(n), #])`
-/

namespace A365289.P8867249110669472143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031218 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A365289.P8867249110669472143

/-!
# A365290: a(n) is the least positive integer that can be expressed as the sum of a prime number and a positive cube in exactly n ways.

The programs for A365290, there is no canonical definition to state claims against.
-/

/-! ## A365290.P16616262939573659807

`A332042(n+3)+A058249(A381831(n))`
-/

namespace A365290.P16616262939573659807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332042 (n + 3) + A058249 (A381831 n).toNat

end

end A365290.P16616262939573659807

/-!
# A365291: a(n) is the least positive integer that can be expressed as the sum of a prime number and a fourth power of a nonnegative integer in exactly n ways.

The programs for A365291, there is no canonical definition to state claims against.
-/

/-! ## A365291.P6705111022126498258

`A050325((n+1)^n+2)`
-/

namespace A365291.P6705111022126498258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050325 ((n + 1) ^ n + 2)

end

end A365291.P6705111022126498258

/-!
# A365293: a(n) = n!*tetranacci(n+3).

The programs for A365293, the canonical program `A365293.P4783323181200865108` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365293 has offset 0).

The definition of A365293 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365293.P4783323181200865108

`A000142(n)*A000078(n+3)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A365293

/-- `A000142(n)*A000078(n+3)` -/
def P4783323181200865108.Spec : Prop :=
  ∀ n, P4783323181200865108.a n = A365293 n

theorem P4783323181200865108.correct : P4783323181200865108.Spec := by
  intro n
  simp only [A365293]

end A365293

/-! ## A365293.P3475533734478835857

`n!*A000078(n+3)`
-/

namespace A365293.P3475533734478835857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000078 (n + 3)

end

end A365293.P3475533734478835857

namespace A365293

/-- `n!*A000078(n+3)` -/
def P3475533734478835857.Spec : Prop :=
  ∀ n, P3475533734478835857.a n = A365293 n

end A365293

/-! ## A365293.P14693640960400973732

`A000078(n+3)*A000142(n)`
-/

namespace A365293.P14693640960400973732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 (n + 3) * A000142 n

end

end A365293.P14693640960400973732

namespace A365293

/-- `A000078(n+3)*A000142(n)` -/
def P14693640960400973732.Spec : Prop :=
  ∀ n, P14693640960400973732.a n = A365293 n

theorem P14693640960400973732.correct : P14693640960400973732.Spec := by
  intro n
  simp only [A365293, Nat.add_sub_cancel, A365293.P14693640960400973732.a, A365293.P4783323181200865108.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A365293

/-! ## A365293.P9585335355048207202

`∑[A001631(n+2)]*A000142(n)`
-/

namespace A365293.P9585335355048207202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001631 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000142 n

end

end A365293.P9585335355048207202

namespace A365293

/-- `∑[A001631(n+2)]*A000142(n)` -/
def P9585335355048207202.Spec : Prop :=
  ∀ n, P9585335355048207202.a n = A365293 n

end A365293

/-! ## A365293.P638020855255950329

`Δ[A003422(n)]*A000078(n+3)`
-/

namespace A365293.P638020855255950329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000078 (n + 3)

end

end A365293.P638020855255950329

namespace A365293

/-- `Δ[A003422(n)]*A000078(n+3)` -/
def P638020855255950329.Spec : Prop :=
  ∀ n, P638020855255950329.a n = A365293 n

end A365293

/-! ## A365293.P18236912550325359787

`A000142(n)*A274759(3*n+1)`
-/

namespace A365293.P18236912550325359787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A274759 (3 * n + 1)

end

end A365293.P18236912550325359787

namespace A365293

/-- `A000142(n)*A274759(3*n+1)` -/
def P18236912550325359787.Spec : Prop :=
  ∀ n, P18236912550325359787.a n = A365293 n

end A365293

/-! ## A365293.P16509811901835090991

`A000078(n+3)*A008279(A000096(n))`
-/

namespace A365293.P16509811901835090991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 (n + 3) * A008279 (A000096 n).toNat

end

end A365293.P16509811901835090991

namespace A365293

/-- `A000078(n+3)*A008279(A000096(n))` -/
def P16509811901835090991.Spec : Prop :=
  ∀ n, P16509811901835090991.a n = A365293 n

end A365293

/-! ## A365293.P6493382102190057705

`A000078(n+3)*A021009(A000217(n))`
-/

namespace A365293.P6493382102190057705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 (n + 3) * A021009 (A000217 n).toNat

end

end A365293.P6493382102190057705

namespace A365293

/-- `A000078(n+3)*A021009(A000217(n))` -/
def P6493382102190057705.Spec : Prop :=
  ∀ n, P6493382102190057705.a n = A365293 n

end A365293

/-!
# A365294: a(n) is the least positive integer that can be expressed as the sum of a prime number and a perfect power in exactly n ways.

The programs for A365294, there is no canonical definition to state claims against.
-/

/-! ## A365294.P8235148402551987873

`A078705(A150255(n+1))`
-/

namespace A365294.P8235148402551987873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078705 (A150255 (n + 1)).toNat

end

end A365294.P8235148402551987873

/-!
# A365295: a(n) is the least positive integer that can be expressed as the sum of two distinct perfect powers (A001597) in exactly n ways.

The programs for A365295, there is no canonical definition to state claims against.
-/

/-! ## A365295.P7192033316662112741

`A391978(n+1)+A283483(A391963(n))`
-/

namespace A365295.P7192033316662112741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391978 (n + 1) + A283483 (A391963 n).toNat

end

end A365295.P7192033316662112741

/-!
# A365296: The smallest coreful infinitary divisor of n.

The programs for A365296, there is no canonical definition to state claims against.
-/

/-! ## A365296.P14926462306508456148

`gcd(A124260(n+1), A363331(n+1))`
-/

namespace A365296.P14926462306508456148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124260 (n + 1)) (A363331 (n + 1))

end

end A365296.P14926462306508456148

/-! ## A365296.P2734491306176555365

`gcd(A176900(n), A363331(n+1))`
-/

namespace A365296.P2734491306176555365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A176900 n) (A363331 (n + 1))

end

end A365296.P2734491306176555365

/-! ## A365296.P17032832439166221217

`gcd(A154920(n), A361810(n+1))`
-/

namespace A365296.P17032832439166221217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A154920 n) (A361810 (n + 1))

end

end A365296.P17032832439166221217

/-! ## A365296.P6874795354237879440

`A366905(n+1)%A112414(A132758(n))/A365297(n+1)`
-/

namespace A365296.P6874795354237879440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A366905 (n + 1)) (A112414 (A132758 n).toNat) : ℚ) / (A365297 (n + 1) : ℚ)

end

end A365296.P6874795354237879440

/-! ## A365296.P12187671041621868310

`(n+1)/A367513(n+1)*A076942(A076942(n+1)*A353897(n+1))`
-/

namespace A365296.P12187671041621868310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A367513 (n + 1) : ℚ) * (A076942 (A076942 (n + 1) * A353897 (n + 1)).toNat : ℚ)

end

end A365296.P12187671041621868310

/-! ## A365296.P13153156055338540425

`A353897(A401425(A350390((n+1)²)))`
-/

namespace A365296.P13153156055338540425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353897 (A401425 (A350390 ((n + 1) ^ 2)).toNat).toNat

end

end A365296.P13153156055338540425

/-! ## A365296.P1840585620693468611

`A374012(A270436(n+1))`
-/

namespace A365296.P1840585620693468611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374012 (A270436 (n + 1)).toNat

end

end A365296.P1840585620693468611

/-! ## A365296.P8789517876768529668

`A019554(A372329(n+1))/A365297(A270436(n+1))`
-/

namespace A365296.P8789517876768529668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019554 (A372329 (n + 1)).toNat : ℚ) / (A365297 (A270436 (n + 1)).toNat : ℚ)

end

end A365296.P8789517876768529668

/-!
# A365297: a(n) is the smallest number k such that k*n is a number whose prime factorization exponents are all powers of 2 (A138302).

The programs for A365297, there is no canonical definition to state claims against.
-/

/-! ## A365297.P14984087093890366412

`A356194(n+1)/(n+1)`
-/

namespace A365297.P14984087093890366412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356194 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A365297.P14984087093890366412

/-! ## A365297.P9492577173783728177

`A372328((n+1)/∏{p}[n+1, #])`
-/

namespace A365297.P9492577173783728177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372328 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A365297.P9492577173783728177

/-! ## A365297.P13659126773716510585

`A372328(A003557(n+1))`
-/

namespace A365297.P13659126773716510585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372328 (A003557 (n + 1)).toNat

end

end A365297.P13659126773716510585

/-! ## A365297.P1998837397720322682

`A028310(A356194(n+1)%A028310(n))`
-/

namespace A365297.P1998837397720322682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A356194 (n + 1)) (A028310 n)).toNat

end

end A365297.P1998837397720322682

/-! ## A365297.P1313885797707088176

`A353897((n+1)*A073753(n+1))/(n+1)`
-/

namespace A365297.P1313885797707088176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353897 ((n + 1 : ℤ) * A073753 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A365297.P1313885797707088176

/-! ## A365297.P12012789559468580698

`A353897(A102631(n+1))/(n+1)`
-/

namespace A365297.P12012789559468580698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353897 (A102631 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A365297.P12012789559468580698

/-!
# A365298: a(n) is the smallest number k such that k*n is a cubefull exponentially odd number (A335988).

The programs for A365298, the canonical program `A365298.P12368512743649777483` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365298 has offset 1).

The definition of A365298 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356192, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A365298.P12368512743649777483

`A356192(n+1)/(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A365298

/-- `A356192(n+1)/(n+1)` -/
def P12368512743649777483.Spec : Prop :=
  ∀ n, P12368512743649777483.a n = (A365298 (n + 1) : ℚ)

end A365298

/-! ## A365298.P15370309141890947117

`lcm(A336643(n+1), A360541(n+1))`
-/

namespace A365298.P15370309141890947117
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A336643 (n + 1)) (A360541 (n + 1))

end

end A365298.P15370309141890947117

namespace A365298

/-- `lcm(A336643(n+1), A360541(n+1))` -/
def P15370309141890947117.Spec : Prop :=
  ∀ n, (P15370309141890947117.a n : ℤ) = A365298 (n + 1)

end A365298

/-! ## A365298.P8961158636947319227

`A055491(∏{p}[n+1, gcd(n+1, #²)])*A336643(n+1)`
-/

namespace A365298.P8961158636947319227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055491 (∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd (n + 1) (p ^ 2)) * A336643 (n + 1)

end

end A365298.P8961158636947319227

namespace A365298

/-- `A055491(∏{p}[n+1, gcd(n+1, #²)])*A336643(n+1)` -/
def P8961158636947319227.Spec : Prop :=
  ∀ n, P8961158636947319227.a n = A365298 (n + 1)

end A365298

/-! ## A365298.P3848956683567557331

`A078615(n+1)/A066990(A003557(n+1))`
-/

namespace A365298.P3848956683567557331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078615 (n + 1) : ℚ) / (A066990 (A003557 (n + 1)).toNat : ℚ)

end

end A365298.P3848956683567557331

namespace A365298

/-- `A078615(n+1)/A066990(A003557(n+1))` -/
def P3848956683567557331.Spec : Prop :=
  ∀ n, P3848956683567557331.a n = (A365298 (n + 1) : ℚ)

end A365298

/-! ## A365298.P14349454998667696028

`A356193(A356191(n+1))/(n+1)`
-/

namespace A365298.P14349454998667696028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356193 (A356191 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A365298.P14349454998667696028

namespace A365298

/-- `A356193(A356191(n+1))/(n+1)` -/
def P14349454998667696028.Spec : Prop :=
  ∀ n, P14349454998667696028.a n = (A365298 (n + 1) : ℚ)

end A365298

/-! ## A365298.P86002368982206277

`A368171((n+1)*A353897(n+1))`
-/

namespace A365298.P86002368982206277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368171 ((n + 1 : ℤ) * A353897 (n + 1)).toNat

end

end A365298.P86002368982206277

namespace A365298

/-- `A368171((n+1)*A353897(n+1))` -/
def P86002368982206277.Spec : Prop :=
  ∀ n, P86002368982206277.a n = A365298 (n + 1)

end A365298

/-! ## A365298.P12579465423496010169

`A368171((n+1)*A366905(n+1))`
-/

namespace A365298.P12579465423496010169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368171 ((n + 1 : ℤ) * A366905 (n + 1)).toNat

end

end A365298.P12579465423496010169

namespace A365298

/-- `A368171((n+1)*A366905(n+1))` -/
def P12579465423496010169.Spec : Prop :=
  ∀ n, P12579465423496010169.a n = A365298 (n + 1)

end A365298

/-! ## A365298.P12653392521825139492

`A356191(A197863(n+1))/(n+1)`
-/

namespace A365298.P12653392521825139492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356191 (A197863 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A365298.P12653392521825139492

namespace A365298

/-- `A356191(A197863(n+1))/(n+1)` -/
def P12653392521825139492.Spec : Prop :=
  ∀ n, P12653392521825139492.a n = (A365298 (n + 1) : ℚ)

end A365298

/-! ## A365298.P2310754034154344054

`A056192(A011262(n+1)/A062378(n+1))`
-/

namespace A365298.P2310754034154344054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056192 (SequenceMachineLib.roundAway ((A011262 (n + 1) : ℚ) / (A062378 (n + 1) : ℚ))).toNat

end

end A365298.P2310754034154344054

namespace A365298

/-- `A056192(A011262(n+1)/A062378(n+1))` -/
def P2310754034154344054.Spec : Prop :=
  ∀ n, P2310754034154344054.a n = A365298 (n + 1)

end A365298

/-! ## A365298.P6933646303741538200

`A336643(n+1)*A360539(A360539(n+1)²)`
-/

namespace A365298.P6933646303741538200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (n + 1) * A360539 (A360539 (n + 1) ^ 2).toNat

end

end A365298.P6933646303741538200

namespace A365298

/-- `A336643(n+1)*A360539(A360539(n+1)²)` -/
def P6933646303741538200.Spec : Prop :=
  ∀ n, P6933646303741538200.a n = A365298 (n + 1)

end A365298

/-!
# A365299: Expansion of e.g.f. exp(x+exp(x)-1)/(2-exp(x)).

The programs for A365299, there is no canonical definition to state claims against.
-/

/-! ## A365299.P1401317506554678456

`A331797(n)+A059099(n)`
-/

namespace A365299.P1401317506554678456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331797 n + A059099 n

end

end A365299.P1401317506554678456

/-! ## A365299.P3824405492606440104

`A000110(n)+2*A331797(n)`
-/

namespace A365299.P3824405492606440104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n + 2 * A331797 n

end

end A365299.P3824405492606440104

/-! ## A365299.P18215472607899042348

`2*A059099(n)-A000110(n)`
-/

namespace A365299.P18215472607899042348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059099 n - A000110 n

end

end A365299.P18215472607899042348

/-! ## A365299.P4557461311873216137

`A331797(n)+A331797(n)+abs(A292935(n))`
-/

namespace A365299.P4557461311873216137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331797 n + (A331797 n + |A292935 n|)

end

end A365299.P4557461311873216137

