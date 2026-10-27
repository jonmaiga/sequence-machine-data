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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B009.C000
import Seq.B010.C000
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
# A266809: Binary representation of the n-th iteration of the "Rule 62" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266809, the canonical program `A266809.P9129826628413284547` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266809 has offset 0).

The definition of A266809 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A266810, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A266809.P9129826628413284547

`A007088(A266810(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A266809

/-- `A007088(A266810(n))` -/
def P9129826628413284547.Spec : Prop :=
  ∀ n, P9129826628413284547.a n = A266809 n

theorem P9129826628413284547.correct : P9129826628413284547.Spec := by
  intro n
  simp only [A266809]

end A266809

/-! ## A266809.P10234037156869577789

`A305989(A267276(n))`
-/

namespace A266809.P10234037156869577789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A267276 n).toNat

end

end A266809.P10234037156869577789

namespace A266809

/-- `A305989(A267276(n))` -/
def P10234037156869577789.Spec : Prop :=
  ∀ n, P10234037156869577789.a n = A266809 n

end A266809

/-! ## A266809.P7181700300682782947

`A228071(A266810(n))+A030101(A267276(n))`
-/

namespace A266809.P7181700300682782947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228071 (A266810 n).toNat + A030101 (A267276 n).toNat

end

end A266809.P7181700300682782947

namespace A266809

/-- `A228071(A266810(n))+A030101(A267276(n))` -/
def P7181700300682782947.Spec : Prop :=
  ∀ n, P7181700300682782947.a n = A266809 n

end A266809

/-!
# A266810: Decimal representation of the n-th iteration of the "Rule 62" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266810, the canonical program `A266810.P12324597559610374195` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266810 has offset 0).

The definition of A266810 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266810.P12324597559610374195

`xor(2*a(n-1), or(3*a(n-1)+1, a(n-1)))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A266810

/-- `xor(2*a(n-1), or(3*a(n-1)+1, a(n-1)))` -/
def P12324597559610374195.Spec : Prop :=
  ∀ n, (P12324597559610374195.a n : ℤ) = A266810 n

theorem P12324597559610374195.correct : P12324597559610374195.Spec := by
  intro n
  simp only [A266810]

end A266810

/-! ## A266810.P7499312400659339825

`A030101(A267276(n))`
-/

namespace A266810.P7499312400659339825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A267276 n).toNat

end

end A266810.P7499312400659339825

namespace A266810

/-- `A030101(A267276(n))` -/
def P7499312400659339825.Spec : Prop :=
  ∀ n, P7499312400659339825.a n = A266810 n

end A266810

/-! ## A266810.P310983028626546370

`A281589(2*A267276(n))`
-/

namespace A266810.P310983028626546370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (2 * A267276 n).toNat

end

end A266810.P310983028626546370

namespace A266810

/-- `A281589(2*A267276(n))` -/
def P310983028626546370.Spec : Prop :=
  ∀ n, P310983028626546370.a n = A266810 n

end A266810

/-!
# A266811: Total number of ON (black) cells after n iterations of the "Rule 62" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266811, the canonical program `A266811.P6718980135430328662` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266811 has offset 0).

The definition of A266811 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A266811.P6718980135430328662

`a(n-1)+a(n-3)-a(n-5)-a(n-7)+a(n-8)` with `a(0)=1, a(1)=4, a(2)=7, a(3)=13, a(4)=18, a(5)=26, a(6)=35, a(7)=45`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A266811

/-- `a(n-1)+a(n-3)-a(n-5)-a(n-7)+a(n-8)` -/
def P6718980135430328662.Spec : Prop :=
  ∀ n, P6718980135430328662.a n = A266811 n

theorem P6718980135430328662.correct : P6718980135430328662.Spec := by
  intro n
  simp only [A266811]

end A266811

/-! ## A266811.P3086251322268516745

`∑[A071047(n)]`
-/

namespace A266811.P3086251322268516745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266811.P3086251322268516745

namespace A266811

/-- `∑[A071047(n)]` -/
def P3086251322268516745.Spec : Prop :=
  ∀ n, P3086251322268516745.a n = A266811 n

end A266811

/-! ## A266811.P6822338675577784893

`(n+1)²-A266813(n)`
-/

namespace A266811.P6822338675577784893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A266813 n

end

end A266811.P6822338675577784893

namespace A266811

/-- `(n+1)²-A266813(n)` -/
def P6822338675577784893.Spec : Prop :=
  ∀ n, P6822338675577784893.a n = A266811 n

end A266811

/-! ## A266811.P940118411078791838

`(n+1)²-∑[A071046(n)]`
-/

namespace A266811.P940118411078791838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071046 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266811.P940118411078791838

namespace A266811

/-- `(n+1)²-∑[A071046(n)]` -/
def P940118411078791838.Spec : Prop :=
  ∀ n, P940118411078791838.a n = A266811 n

end A266811

/-! ## A266811.P13196792510431634967

`A036406(n)+A024401(n+1)`
-/

namespace A266811.P13196792510431634967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036406 n + A024401 (n + 1)

end

end A266811.P13196792510431634967

namespace A266811

/-- `A036406(n)+A024401(n+1)` -/
def P13196792510431634967.Spec : Prop :=
  ∀ n, P13196792510431634967.a n = A266811 n

end A266811

/-! ## A266811.P7768615903428904171

`∑[A047203(n+1)+1]-A008615(n)`
-/

namespace A266811.P7768615903428904171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047203 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008615 n

end

end A266811.P7768615903428904171

namespace A266811

/-- `∑[A047203(n+1)+1]-A008615(n)` -/
def P7768615903428904171.Spec : Prop :=
  ∀ n, P7768615903428904171.a n = A266811 n

end A266811

/-! ## A266811.P1482726891435032017

`∑[A267453(n+2)-2]`
-/

namespace A266811.P1482726891435032017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267453 (n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266811.P1482726891435032017

namespace A266811

/-- `∑[A267453(n+2)-2]` -/
def P1482726891435032017.Spec : Prop :=
  ∀ n, P1482726891435032017.a n = A266811 n

end A266811

/-! ## A266811.P9423625328516321522

`∑[∑[2-Δ[A267451(n+1)]]]`
-/

namespace A266811.P9423625328516321522
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f3 (n + 1) - f3 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266811.P9423625328516321522

namespace A266811

/-- `∑[∑[2-Δ[A267451(n+1)]]]` -/
def P9423625328516321522.Spec : Prop :=
  ∀ n, P9423625328516321522.a n = A266811 n

end A266811

/-! ## A266811.P272972818433406023

`A267454(n+2)-2*(n+2)`
-/

namespace A266811.P272972818433406023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267454 (n + 2) - (2 * (n + 2) : ℤ)

end

end A266811.P272972818433406023

namespace A266811

/-- `A267454(n+2)-2*(n+2)` -/
def P272972818433406023.Spec : Prop :=
  ∀ n, P272972818433406023.a n = A266811 n

end A266811

/-! ## A266811.P6550969667370085669

`Δ[A267454(n+1)]+a(n-1)-2` with `a(0)=1`
-/

namespace A266811.P6550969667370085669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + (a (n - 1) - 2)

end

end A266811.P6550969667370085669

namespace A266811

/-- `Δ[A267454(n+1)]+a(n-1)-2` -/
def P6550969667370085669.Spec : Prop :=
  ∀ n, P6550969667370085669.a n = A266811 n

end A266811

/-!
# A266812: G.f. A(x) satisfies: x = Sum_{n>=1} x^n * A(-n*x)^n.

The programs for A266812, there is no canonical definition to state claims against.
-/

/-! ## A266812.P8829652547423152974

`A102086(or(1, n!))`
-/

namespace A266812.P8829652547423152974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102086 (Nat.lor 1 (Nat.factorial n))

end

end A266812.P8829652547423152974

/-!
# A266813: Total number of OFF (white) cells after n iterations of the "Rule 62" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266813, the canonical program `A266813.P61190902182556240` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266813 has offset 0).

The definition of A266813 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A266813.P61190902182556240

`a(n-1)+a(n-3)-a(n-5)-a(n-7)+a(n-8)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=3, a(4)=7, a(5)=10, a(6)=14, a(7)=19`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A266813

/-- `a(n-1)+a(n-3)-a(n-5)-a(n-7)+a(n-8)` -/
def P61190902182556240.Spec : Prop :=
  ∀ n, P61190902182556240.a n = A266813 n

theorem P61190902182556240.correct : P61190902182556240.Spec := by
  intro n
  simp only [A266813]

end A266813

/-! ## A266813.P14915707601725446456

`∑[A071046(n)]`
-/

namespace A266813.P14915707601725446456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071046 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266813.P14915707601725446456

namespace A266813

/-- `∑[A071046(n)]` -/
def P14915707601725446456.Spec : Prop :=
  ∀ n, P14915707601725446456.a n = A266813 n

end A266813

/-! ## A266813.P14368339426807750502

`(n+1)²-A266811(n)`
-/

namespace A266813.P14368339426807750502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A266811 n

end

end A266813.P14368339426807750502

namespace A266813

/-- `(n+1)²-A266811(n)` -/
def P14368339426807750502.Spec : Prop :=
  ∀ n, P14368339426807750502.a n = A266813 n

end A266813

/-! ## A266813.P14399171717630990528

`(n+1)²-∑[A071047(n)]`
-/

namespace A266813.P14399171717630990528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266813.P14399171717630990528

namespace A266813

/-- `(n+1)²-∑[A071047(n)]` -/
def P14399171717630990528.Spec : Prop :=
  ∀ n, P14399171717630990528.a n = A266813 n

end A266813

/-! ## A266813.P12423153071506327854

`A033436(n)+A008615(n)`
-/

namespace A266813.P12423153071506327854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033436 n + A008615 n

end

end A266813.P12423153071506327854

namespace A266813

/-- `A033436(n)+A008615(n)` -/
def P12423153071506327854.Spec : Prop :=
  ∀ n, P12423153071506327854.a n = A266813 n

end A266813

/-! ## A266813.P4516875188146753433

`A389143(n)-A036406(n)`
-/

namespace A266813.P4516875188146753433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389143 n - A036406 n

end

end A266813.P4516875188146753433

namespace A266813

/-- `A389143(n)-A036406(n)` -/
def P4516875188146753433.Spec : Prop :=
  ∀ n, P4516875188146753433.a n = A266813 n

end A266813

/-! ## A266813.P16860568104304294341

`A008615(n)+∑[A057353(n)]`
-/

namespace A266813.P16860568104304294341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266813.P16860568104304294341

namespace A266813

/-- `A008615(n)+∑[A057353(n)]` -/
def P16860568104304294341.Spec : Prop :=
  ∀ n, P16860568104304294341.a n = A266813 n

end A266813

/-! ## A266813.P16886864124453851195

`∑[A004773(n+1)+A004396(n)-A071047(n)]`
-/

namespace A266813.P16886864124453851195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (n + 1) + (A004396 n - A071047 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266813.P16886864124453851195

namespace A266813

/-- `∑[A004773(n+1)+A004396(n)-A071047(n)]` -/
def P16886864124453851195.Spec : Prop :=
  ∀ n, P16886864124453851195.a n = A266813 n

end A266813

/-! ## A266813.P446495091428990039

`∑[A267451(n+2)-2]`
-/

namespace A266813.P446495091428990039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267451 (n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266813.P446495091428990039

namespace A266813

/-- `∑[A267451(n+2)-2]` -/
def P446495091428990039.Spec : Prop :=
  ∀ n, P446495091428990039.a n = A266813 n

end A266813

/-! ## A266813.P4828524816558245525

`A267452(n+2)-2*(n+2)`
-/

namespace A266813.P4828524816558245525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267452 (n + 2) - (2 * (n + 2) : ℤ)

end

end A266813.P4828524816558245525

namespace A266813

/-- `A267452(n+2)-2*(n+2)` -/
def P4828524816558245525.Spec : Prop :=
  ∀ n, P4828524816558245525.a n = A266813 n

end A266813

/-! ## A266813.P273065561306041973

`A002620(n)+A008615(n)+A004526(A002620(n))`
-/

namespace A266813.P273065561306041973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n + (A008615 n + A004526 (A002620 n).toNat)

end

end A266813.P273065561306041973

namespace A266813

/-- `A002620(n)+A008615(n)+A004526(A002620(n))` -/
def P273065561306041973.Spec : Prop :=
  ∀ n, P273065561306041973.a n = A266813 n

end A266813

/-!
# A266820: Expansion of Product_{k>=1} ((1 + 2*x^k) * (1 + 3*x^k)).

The programs for A266820, there is no canonical definition to state claims against.
-/

/-! ## A266820.P17006088561816206808

`or(A224215(n), A328596(A033641(n)))`
-/

namespace A266820.P17006088561816206808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A224215 n) (A328596 (A033641 n).toNat)

end

end A266820.P17006088561816206808

/-! ## A266820.P4003571446615044771

`A300957(A091358(n+4))`
-/

namespace A266820.P4003571446615044771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300957 (A091358 (n + 4)).toNat

end

end A266820.P4003571446615044771

/-!
# A266821: Expansion of Product_{k>=1} (1 + 3*x^k) / (1 - x^k).

The programs for A266821, there is no canonical definition to state claims against.
-/

/-! ## A266821.P2941545716609018274

`A321884(∑[n+5]+5)`
-/

namespace A266821.P2941545716609018274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321884 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A266821.P2941545716609018274

/-! ## A266821.P14367499512833901159

`record[A321884(A052905(n))]`
-/

namespace A266821.P14367499512833901159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321884 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266821.P14367499512833901159

/-! ## A266821.P4903614954981256128

`record[A321884(abs(A046691(n))-1)]`
-/

namespace A266821.P4903614954981256128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321884 (|A046691 n| - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266821.P4903614954981256128

/-! ## A266821.P6991337291333088939

`record[A321884(A046691(n+1)-1)]`
-/

namespace A266821.P6991337291333088939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321884 (A046691 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266821.P6991337291333088939

/-! ## A266821.P17720132264340590919

`record[A321884(A000217(n+1)+2*n)]`
-/

namespace A266821.P17720132264340590919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321884 (A000217 (n + 1) + (2 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266821.P17720132264340590919

/-! ## A266821.P13229741085774500874

`record[A321884(n+1+A000096(n)+n)]`
-/

namespace A266821.P13229741085774500874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321884 ((n + 1 : ℤ) + (A000096 n + (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266821.P13229741085774500874

/-!
# A266822: Expansion of Product_{k>=1} ((1 + x^k) * (1 + 3*x^k)).

The programs for A266822, there is no canonical definition to state claims against.
-/

/-! ## A266822.P12526896372389354385

`A070093(A334456(n+1))+2*n`
-/

namespace A266822.P12526896372389354385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070093 (A334456 (n + 1)).toNat + (2 * n : ℤ)

end

end A266822.P12526896372389354385

/-!
# A266823: Number of nX2 arrays containing 2 copies of 0..n-1 with no element 1 greater than its north, west, northwest or southwest neighbor modulo n and the upper left element equal to 0.

The programs for A266823, there is no canonical definition to state claims against.
-/

/-! ## A266823.P12242826929645322891

`A266825(∑[n+2])`
-/

namespace A266823.P12242826929645322891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266825 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A266823.P12242826929645322891

/-! ## A266823.P14164593703583264148

`A000010(A006126(n)+1)-1-A114919(3*n+1)`
-/

namespace A266823.P14164593703583264148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A006126 n + 1).toNat - 1 - A114919 (3 * n + 1)

end

end A266823.P14164593703583264148

/-!
# A266824: Number of nX3 arrays containing 3 copies of 0..n-1 with no element 1 greater than its north, west, northwest or southwest neighbor modulo n and the upper left element equal to 0.

The programs for A266824, there is no canonical definition to state claims against.
-/

/-! ## A266824.P5507126403729936595

`A266825(∑[n+3]+1)`
-/

namespace A266824.P5507126403729936595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266825 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A266824.P5507126403729936595

/-!
# A266825: T(n,k)=Number of nXk arrays containing k copies of 0..n-1 with no element 1 greater than its north, west, northwest or southwest neighbor modulo n and the upper left element equal to 0.

The programs for A266825, there is no canonical definition to state claims against.
-/

/-! ## A266825.P17125758375409462014

`and(A053735(A057698(n+1)), A266291(n+1))`
-/

namespace A266825.P17125758375409462014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053735 (A057698 (n + 1)).toNat) (A266291 (n + 1))

end

end A266825.P17125758375409462014

/-! ## A266825.P16991981991658954983

`and(A028310(A142853(n+1)), A266291(n+1))`
-/

namespace A266825.P16991981991658954983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028310 (A142853 (n + 1)).toNat) (A266291 (n + 1))

end

end A266825.P16991981991658954983

/-! ## A266825.P16539706985930354775

`and(A165367(A069246(n+1)), A266291(n+1))`
-/

namespace A266825.P16539706985930354775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A165367 (A069246 (n + 1)).toNat) (A266291 (n + 1))

end

end A266825.P16539706985930354775

/-! ## A266825.P10597097890671906505

`and(A118088(A266291(n+1)), A143257(n+1))`
-/

namespace A266825.P10597097890671906505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118088 (A266291 (n + 1)).toNat) (A143257 (n + 1))

end

end A266825.P10597097890671906505

/-! ## A266825.P6776461877343460840

`and(A118088(A266861(n+1)), A142853(n+1))`
-/

namespace A266825.P6776461877343460840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118088 (A266861 (n + 1)).toNat) (A142853 (n + 1))

end

end A266825.P6776461877343460840

/-!
# A266826: Number of 3Xn arrays containing n copies of 0..3-1 with no element 1 greater than its north, west, northwest or southwest neighbor modulo 3 and the upper left element equal to 0.

The programs for A266826, there is no canonical definition to state claims against.
-/

/-! ## A266826.P12533186689582125434

`A266879(n+1)+A057428(n)`
-/

namespace A266826.P12533186689582125434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266879 (n + 1) + A057428 n

end

end A266826.P12533186689582125434

/-! ## A266826.P907698693718489646

`A266879(n+1)-A057427(n)`
-/

namespace A266826.P907698693718489646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266879 (n + 1) - A057427 n

end

end A266826.P907698693718489646

/-! ## A266826.P4825012090081554287

`A266879(n+1)-A178334(n)`
-/

namespace A266826.P4825012090081554287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266879 (n + 1) - A178334 n

end

end A266826.P4825012090081554287

/-! ## A266826.P11516013507142557493

`A266879(n+1)-char[A092486(n)]`
-/

namespace A266826.P11516013507142557493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266879 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A266826.P11516013507142557493

/-! ## A266826.P6028874087166350045

`A266879(n+1)-and(1, A000225(n))`
-/

namespace A266826.P6028874087166350045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266879 (n + 1) - Int.land 1 (A000225 n)

end

end A266826.P6028874087166350045

/-! ## A266826.P14900834439865719317

`A266879(n+1)-char[A003963(n+1)]`
-/

namespace A266826.P14900834439865719317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266879 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A266826.P14900834439865719317

/-! ## A266826.P4191512675210961457

`A266879(n+1)-A000035(A062545(n))`
-/

namespace A266826.P4191512675210961457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266879 (n + 1) - A000035 (A062545 n).toNat

end

end A266826.P4191512675210961457

/-! ## A266826.P16299295841450033723

`A266879(n+1)-A001222(A008578(n+1))`
-/

namespace A266826.P16299295841450033723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266879 (n + 1) - A001222 (A008578 (n + 1)).toNat

end

end A266826.P16299295841450033723

/-!
# A266827: Number of 4Xn arrays containing n copies of 0..4-1 with no element 1 greater than its north, west, northwest or southwest neighbor modulo 4 and the upper left element equal to 0.

The programs for A266827, there is no canonical definition to state claims against.
-/

/-! ## A266827.P2405911316944974740

`A266825(A141214(n)+7)`
-/

namespace A266827.P2405911316944974740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266825 (A141214 n + 7).toNat

end

end A266827.P2405911316944974740

/-! ## A266827.P1257030064598675404

`A266825(A052905(n)+9)`
-/

namespace A266827.P1257030064598675404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266825 (A052905 n + 9).toNat

end

end A266827.P1257030064598675404

/-! ## A266827.P2858022754938634157

`A266825(A055999(n)+10)`
-/

namespace A266827.P2858022754938634157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266825 (A055999 n + 10).toNat

end

end A266827.P2858022754938634157

/-! ## A266827.P12685912374669150487

`A266825(eq[5, A066657(n)])`
-/

namespace A266827.P12685912374669150487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266825 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266827.P12685912374669150487

/-!
# A266828: Number of 5Xn arrays containing n copies of 0..5-1 with no element 1 greater than its north, west, northwest or southwest neighbor modulo 5 and the upper left element equal to 0.

The programs for A266828, there is no canonical definition to state claims against.
-/

/-! ## A266828.P1505905191618372222

`A266825(A155212(n)+13)`
-/

namespace A266828.P1505905191618372222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266825 (A155212 n + 13).toNat

end

end A266828.P1505905191618372222

/-! ## A266828.P8750352751589795341

`A266825(A056000(n)+15)`
-/

namespace A266828.P8750352751589795341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266825 (A056000 n + 15).toNat

end

end A266828.P8750352751589795341

/-! ## A266828.P7506717407408372552

`A266825(eq[7, A066657(n)])`
-/

namespace A266828.P7506717407408372552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266825 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266828.P7506717407408372552

/-!
# A266829: Primes p such that a prime q < p exists with p^(q-1) == 1 (mod q^2) and q^(p-1) == 1 (mod p^2), i.e., primes that are the larger member of a double Wieferich prime pair.

The programs for A266829, there is no canonical definition to state claims against.
-/

/-! ## A266829.P469623759185059153

`record[A282293(n+2)]`
-/

namespace A266829.P469623759185059153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282293 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266829.P469623759185059153

/-!
# A266830: Number of nX2 arrays containing 2 copies of 0..n-1 with no element 1 greater than its north, west or northwest neighbor modulo n and the upper left element equal to 0.

The programs for A266830, there is no canonical definition to state claims against.
-/

/-! ## A266830.P15818338558333418507

`A266832(∑[n+2])`
-/

namespace A266830.P15818338558333418507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266832 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A266830.P15818338558333418507

/-! ## A266830.P9072655963507276998

`A266832(A000096(n+1))+A025442(n)`
-/

namespace A266830.P9072655963507276998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266832 (A000096 (n + 1)).toNat + A025442 n

end

end A266830.P9072655963507276998

/-! ## A266830.P14280957419695492949

`A266832(A000096(n+1))+A025466(n)`
-/

namespace A266830.P14280957419695492949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266832 (A000096 (n + 1)).toNat + A025466 n

end

end A266830.P14280957419695492949

/-! ## A266830.P2927715244047104960

`A266832(A000096(n+1))+A055967(n)`
-/

namespace A266830.P2927715244047104960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266832 (A000096 (n + 1)).toNat + A055967 n

end

end A266830.P2927715244047104960

/-!
# A266831: Number of nX3 arrays containing 3 copies of 0..n-1 with no element 1 greater than its north, west or northwest neighbor modulo n and the upper left element equal to 0.

The programs for A266831, there is no canonical definition to state claims against.
-/

/-! ## A266831.P14867044570914683339

`A266832(∑[n+3]+1)`
-/

namespace A266831.P14867044570914683339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266832 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A266831.P14867044570914683339

/-!
# A266832: T(n,k)=Number of nXk arrays containing k copies of 0..n-1 with no element 1 greater than its north, west or northwest neighbor modulo n and the upper left element equal to 0.

The programs for A266832, there is no canonical definition to state claims against.
-/

/-! ## A266832.P419998891394609631

`A286151(A266878(n+1)%Δ[A075966(n)])`
-/

namespace A266832.P419998891394609631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286151 (Int.tmod (A266878 (n + 1)) (f1 (n + 1) - f1 n)).toNat

end

end A266832.P419998891394609631

/-! ## A266832.P2954091831215232507

`A286151(A266878(n+1))%A132841(3*n+4)`
-/

namespace A266832.P2954091831215232507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286151 (A266878 (n + 1)).toNat) (A132841 (3 * n + 4))

end

end A266832.P2954091831215232507

/-! ## A266832.P16974853198254679877

`A286151(A266878(n+1))^A014963(82*n+17)`
-/

namespace A266832.P16974853198254679877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286151 (A266878 (n + 1)).toNat : ℚ) ^ (A014963 (82 * n + 17) : ℤ)

end

end A266832.P16974853198254679877

/-! ## A266832.P7761544909520124100

`A165577(A266886(n+1)²)+A002265(A265170(n+1))`
-/

namespace A266832.P7761544909520124100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165577 (A266886 (n + 1) ^ 2).toNat + A002265 (A265170 (n + 1)).toNat

end

end A266832.P7761544909520124100

/-! ## A266832.P17407430451175942975

`A339374(A185213(n))+A151824(n)`
-/

namespace A266832.P17407430451175942975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339374 (A185213 n).toNat + A151824 n

end

end A266832.P17407430451175942975

/-!
# A266833: Number of 3Xn arrays containing n copies of 0..3-1 with no element 1 greater than its north, west or northwest neighbor modulo 3 and the upper left element equal to 0.

The programs for A266833, there is no canonical definition to state claims against.
-/

/-! ## A266833.P533746647123641114

`A267401(∑[n+2]+4)`
-/

namespace A266833.P533746647123641114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267401 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A266833.P533746647123641114

/-! ## A266833.P17508315261489573202

`or(char[1], A267401(A152950(n+3)))`
-/

namespace A266833.P17508315261489573202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A267401 (A152950 (n + 3)).toNat)

end

end A266833.P17508315261489573202

/-! ## A266833.P12710870185525662944

`A267401(A167614(n+1))^ceil(acot(n))`
-/

namespace A266833.P12710870185525662944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267401 (A167614 (n + 1)).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A266833.P12710870185525662944

/-! ## A266833.P10819848223675772615

`or(char[1], A267401(A000096(n+1)+4))`
-/

namespace A266833.P10819848223675772615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A267401 (A000096 (n + 1) + 4).toNat)

end

end A266833.P10819848223675772615

/-! ## A266833.P1972179020833520792

`A267401(A167614(n+1))+A025466(n)`
-/

namespace A266833.P1972179020833520792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267401 (A167614 (n + 1)).toNat + A025466 n

end

end A266833.P1972179020833520792

/-!
# A266834: Number of 4Xn arrays containing n copies of 0..4-1 with no element 1 greater than its north, west or northwest neighbor modulo 4 and the upper left element equal to 0.

The programs for A266834, there is no canonical definition to state claims against.
-/

/-! ## A266834.P13070469507980860466

`A266832(A141214(n)+7)`
-/

namespace A266834.P13070469507980860466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266832 (A141214 n + 7).toNat

end

end A266834.P13070469507980860466

/-! ## A266834.P8318723662281749776

`A266832(A052905(n)+9)`
-/

namespace A266834.P8318723662281749776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266832 (A052905 n + 9).toNat

end

end A266834.P8318723662281749776

/-! ## A266834.P9732268276780821437

`A266832(A055999(n)+10)`
-/

namespace A266834.P9732268276780821437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266832 (A055999 n + 10).toNat

end

end A266834.P9732268276780821437

/-!
# A266835: Number of 5Xn arrays containing n copies of 0..5-1 with no element 1 greater than its north, west or northwest neighbor modulo 5 and the upper left element equal to 0.

The programs for A266835, there is no canonical definition to state claims against.
-/

/-! ## A266835.P206102860290119090

`A266832(A167499(n+3))`
-/

namespace A266835.P206102860290119090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266832 (A167499 (n + 3)).toNat

end

end A266835.P206102860290119090

/-! ## A266835.P14883517422797720508

`A266832(A155212(n)+13)`
-/

namespace A266835.P14883517422797720508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266832 (A155212 n + 13).toNat

end

end A266835.P14883517422797720508

/-!
# A266836: Odd Löschian numbers.

The programs for A266836, the canonical program `A266836.P4349394875853698873` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266836 has offset 1).

The definition of A266836 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7280 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266836.P13991879241740238262

`lt[0, A217221(n)]`
-/

namespace A266836.P13991879241740238262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217221 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A266836.P13991879241740238262

namespace A266836

/-- `lt[0, A217221(n)]` -/
def P13991879241740238262.Spec : Prop :=
  ∀ n, (P13991879241740238262.a n : ℤ) = A266836 (n + 1)

end A266836

/-! ## A266836.P6089912282755167478

`∩[2*n+1, A003136(n+1)]`
-/

namespace A266836.P6089912282755167478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266836.P6089912282755167478

namespace A266836

/-- `∩[2*n+1, A003136(n+1)]` -/
def P6089912282755167478.Spec : Prop :=
  ∀ n, (P6089912282755167478.a n : ℤ) = A266836 (n + 1)

end A266836

/-! ## A266836.P4349394875853698873

`A003136(A024609(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A266836

/-- `A003136(A024609(n+1))` -/
def P4349394875853698873.Spec : Prop :=
  ∀ n, P4349394875853698873.a n = A266836 (n + 1)

theorem P4349394875853698873.correct : P4349394875853698873.Spec := by
  intro n
  simp only [A266836, Nat.add_sub_cancel]

end A266836

/-! ## A266836.P18260178829285610379

`record[A000265(A003136(n+2))]`
-/

namespace A266836.P18260178829285610379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A003136 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266836.P18260178829285610379

namespace A266836

/-- `record[A000265(A003136(n+2))]` -/
def P18260178829285610379.Spec : Prop :=
  ∀ n, P18260178829285610379.a n = A266836 (n + 1)

end A266836

/-! ## A266836.P8144027423937408692

`filter[A003136(n+1), A098725(#)]`
-/

namespace A266836.P8144027423937408692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A266836.P8144027423937408692

namespace A266836

/-- `filter[A003136(n+1), A098725(#)]` -/
def P8144027423937408692.Spec : Prop :=
  ∀ n, P8144027423937408692.a n = A266836 (n + 1)

end A266836

/-! ## A266836.P12755301346826996713

`filter[A003136(n+1), A166486(#)]`
-/

namespace A266836.P12755301346826996713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A266836.P12755301346826996713

namespace A266836

/-- `filter[A003136(n+1), A166486(#)]` -/
def P12755301346826996713.Spec : Prop :=
  ∀ n, P12755301346826996713.a n = A266836 (n + 1)

end A266836

/-! ## A266836.P10790533040169517962

`filter[A003136(n+2), A039982(#)]`
-/

namespace A266836.P10790533040169517962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A266836.P10790533040169517962

namespace A266836

/-- `filter[A003136(n+2), A039982(#)]` -/
def P10790533040169517962.Spec : Prop :=
  ∀ n, P10790533040169517962.a n = A266836 (n + 1)

end A266836

/-! ## A266836.P14308042393077235928

`filter[A003136(n+2), A359832(#)]`
-/

namespace A266836.P14308042393077235928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359832 (f1 j).toNat = 1) n)

end

end A266836.P14308042393077235928

namespace A266836

/-- `filter[A003136(n+2), A359832(#)]` -/
def P14308042393077235928.Spec : Prop :=
  ∀ n, P14308042393077235928.a n = A266836 (n + 1)

end A266836

/-! ## A266836.P2920004163550557473

`A003136(record[n^(A003136(n+1)%2)]+1)`
-/

namespace A266836.P2920004163550557473
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (Int.tmod (A003136 (n + 1)) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A266836.P2920004163550557473

namespace A266836

/-- `A003136(record[n^(A003136(n+1)%2)]+1)` -/
def P2920004163550557473.Spec : Prop :=
  ∀ n, P2920004163550557473.a n = A266836 (n + 1)

end A266836

/-! ## A266836.P16809458666805511143

`A003136(record[n^and(1, A003136(n+1))]+1)`
-/

namespace A266836.P16809458666805511143
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (Int.land 1 (A003136 (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A266836.P16809458666805511143

namespace A266836

/-- `A003136(record[n^and(1, A003136(n+1))]+1)` -/
def P16809458666805511143.Spec : Prop :=
  ∀ n, P16809458666805511143.a n = A266836 (n + 1)

end A266836

/-! ## A266836.P13725508342478359983

`A003136(record[(n+1)*A003136(n+2)%2]+1)`
-/

namespace A266836.P13725508342478359983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A003136 (n + 2)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A266836.P13725508342478359983

namespace A266836

/-- `A003136(record[(n+1)*A003136(n+2)%2]+1)` -/
def P13725508342478359983.Spec : Prop :=
  ∀ n, P13725508342478359983.a n = A266836 (n + 1)

end A266836

/-! ## A266836.P10435453170388128190

`A003136(record[(n+1)*and(1, A003136(n+2))]+1)`
-/

namespace A266836.P10435453170388128190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.land 1 (A003136 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A266836.P10435453170388128190

namespace A266836

/-- `A003136(record[(n+1)*and(1, A003136(n+2))]+1)` -/
def P10435453170388128190.Spec : Prop :=
  ∀ n, P10435453170388128190.a n = A266836 (n + 1)

end A266836

/-! ## A266836.P13398140489318293615

`∩[2*n+1, A035246(n+1)]`
-/

namespace A266836.P13398140489318293615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266836.P13398140489318293615

namespace A266836

/-- `∩[2*n+1, A035246(n+1)]` -/
def P13398140489318293615.Spec : Prop :=
  ∀ n, (P13398140489318293615.a n : ℤ) = A266836 (n + 1)

end A266836

/-! ## A266836.P5684103896204363867

`filter[A047241(n+1), A353816(#)]`
-/

namespace A266836.P5684103896204363867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A266836.P5684103896204363867

namespace A266836

/-- `filter[A047241(n+1), A353816(#)]` -/
def P5684103896204363867.Spec : Prop :=
  ∀ n, P5684103896204363867.a n = A266836 (n + 1)

end A266836

/-! ## A266836.P16961531888746895235

`filter[A284884(n+1), A353816(#)]`
-/

namespace A266836.P16961531888746895235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A266836.P16961531888746895235

namespace A266836

/-- `filter[A284884(n+1), A353816(#)]` -/
def P16961531888746895235.Spec : Prop :=
  ∀ n, P16961531888746895235.a n = A266836 (n + 1)

end A266836

/-! ## A266836.P7521785107632012208

`∩[A003136(n+1), A047241(n+1)]`
-/

namespace A266836.P7521785107632012208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266836.P7521785107632012208

namespace A266836

/-- `∩[A003136(n+1), A047241(n+1)]` -/
def P7521785107632012208.Spec : Prop :=
  ∀ n, (P7521785107632012208.a n : ℤ) = A266836 (n + 1)

end A266836

/-! ## A266836.P11531972200706277529

`∩[A035246(n+1), A047241(n+1)]`
-/

namespace A266836.P11531972200706277529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266836.P11531972200706277529

namespace A266836

/-- `∩[A035246(n+1), A047241(n+1)]` -/
def P11531972200706277529.Spec : Prop :=
  ∀ n, (P11531972200706277529.a n : ℤ) = A266836 (n + 1)

end A266836

/-! ## A266836.P6757446342155656336

`∩[A003136(n+1), A284884(n+1)]`
-/

namespace A266836.P6757446342155656336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266836.P6757446342155656336

namespace A266836

/-- `∩[A003136(n+1), A284884(n+1)]` -/
def P6757446342155656336.Spec : Prop :=
  ∀ n, (P6757446342155656336.a n : ℤ) = A266836 (n + 1)

end A266836

/-! ## A266836.P18225289744598894741

`eq[A010121(n), A353816(n)]`
-/

namespace A266836.P18225289744598894741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010121 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A266836.P18225289744598894741

namespace A266836

/-- `eq[A010121(n), A353816(n)]` -/
def P18225289744598894741.Spec : Prop :=
  ∀ n, (P18225289744598894741.a n : ℤ) = A266836 (n + 1)

end A266836

/-! ## A266836.P10723218229518776042

`eq[A010123(n), A353816(n)]`
-/

namespace A266836.P10723218229518776042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010123 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A266836.P10723218229518776042

namespace A266836

/-- `eq[A010123(n), A353816(n)]` -/
def P10723218229518776042.Spec : Prop :=
  ∀ n, (P10723218229518776042.a n : ℤ) = A266836 (n + 1)

end A266836

/-!
# A266837: Triangle read by rows giving successive states of cellular automaton generated by "Rule 67" initiated with a single ON (black) cell.

The programs for A266837, there is no canonical definition to state claims against.
-/

/-! ## A266837.P1177253331391158899

`A266441(A020703(n+1)-1)`
-/

namespace A266837.P1177253331391158899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266441 (A020703 (n + 1) - 1).toNat

end

end A266837.P1177253331391158899

/-! ## A266837.P15662592613867618070

`and(A000045(A300002(n+1)), A267015(n))`
-/

namespace A266837.P15662592613867618070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000045 (A300002 (n + 1)).toNat) (A267015 n)

end

end A266837.P15662592613867618070

/-! ## A266837.P9839943051875982183

`A059620(and(A124517(n+1), A267604(n)))`
-/

namespace A266837.P9839943051875982183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059620 (Int.land (A124517 (n + 1)) (A267604 n)).toNat

end

end A266837.P9839943051875982183

/-! ## A266837.P9116835136095029620

`A059620(A124517(n+1)%A047566(n+1))`
-/

namespace A266837.P9116835136095029620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059620 (Int.tmod (A124517 (n + 1)) (A047566 (n + 1))).toNat

end

end A266837.P9116835136095029620

/-! ## A266837.P6243239969506312035

`A337546(lcm(5, A270177(n)))`
-/

namespace A266837.P6243239969506312035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337546 (Int.lcm 5 (A270177 n))

end

end A266837.P6243239969506312035

/-!
# A266838: Binary representation of the n-th iteration of the "Rule 67" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266838, there is no canonical definition to state claims against.
-/

/-! ## A266838.P9332349743357386011

`A007088(A266839(n))`
-/

namespace A266838.P9332349743357386011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A266839 n).toNat

end

end A266838.P9332349743357386011

/-! ## A266838.P10741129931445471088

`A185544(2*A266839(n))`
-/

namespace A266838.P10741129931445471088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A266839 n).toNat

end

end A266838.P10741129931445471088

/-!
# A266840: Triangle read by rows giving successive states of cellular automaton generated by "Rule 69" initiated with a single ON (black) cell.

The programs for A266840, the canonical program `A266840.P13252579903726433232` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266840 has offset 0).

The definition of A266840 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266840.P13252579903726433232

`A267053(n)*A267704(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A266840

/-- `A267053(n)*A267704(n)` -/
def P13252579903726433232.Spec : Prop :=
  ∀ n, P13252579903726433232.a n = A266840 n

theorem P13252579903726433232.correct : P13252579903726433232.Spec := by
  intro n
  simp only [A266840]

end A266840

/-! ## A266840.P13085188575041006737

`A267053(n)*A267773(n)`
-/

namespace A266840.P13085188575041006737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267053 n * A267773 n

end

end A266840.P13085188575041006737

namespace A266840

/-- `A267053(n)*A267773(n)` -/
def P13085188575041006737.Spec : Prop :=
  ∀ n, P13085188575041006737.a n = A266840 n

end A266840

/-! ## A266840.P18241386056925418779

`A266282(A020703(n+1)-1)`
-/

namespace A266840.P18241386056925418779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266282 (A020703 (n + 1) - 1).toNat

end

end A266840.P18241386056925418779

namespace A266840

/-- `A266282(A020703(n+1)-1)` -/
def P18241386056925418779.Spec : Prop :=
  ∀ n, P18241386056925418779.a n = A266840 n

end A266840

/-! ## A266840.P4567520376814044270

`A267053(n-2*and(n, A267053(n)))`
-/

namespace A266840.P4567520376814044270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267053 ((n : ℤ) - 2 * Int.land (n : ℤ) (A267053 n)).toNat

end

end A266840.P4567520376814044270

namespace A266840

/-- `A267053(n-2*and(n, A267053(n)))` -/
def P4567520376814044270.Spec : Prop :=
  ∀ n, P4567520376814044270.a n = A266840 n

end A266840

/-! ## A266840.P4431159774067369987

`A267053(xor(n, A267053(n))-A267053(n))`
-/

namespace A266840.P4431159774067369987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267053 (Int.xor (n : ℤ) (A267053 n) - A267053 n).toNat

end

end A266840.P4431159774067369987

namespace A266840

/-- `A267053(xor(n, A267053(n))-A267053(n))` -/
def P4431159774067369987.Spec : Prop :=
  ∀ n, P4431159774067369987.a n = A266840 n

end A266840

/-! ## A266840.P3413011927081499292

`and(Δ[A106593(n)], A267053(n))`
-/

namespace A266840.P3413011927081499292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106593 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A267053 n)

end

end A266840.P3413011927081499292

namespace A266840

/-- `and(Δ[A106593(n)], A267053(n))` -/
def P3413011927081499292.Spec : Prop :=
  ∀ n, P3413011927081499292.a n = A266840 n

end A266840

/-! ## A266840.P7447594623451369406

`and(A267053(n), A384869(n+1))`
-/

namespace A266840.P7447594623451369406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267053 n) (A384869 (n + 1))

end

end A266840.P7447594623451369406

namespace A266840

/-- `and(A267053(n), A384869(n+1))` -/
def P7447594623451369406.Spec : Prop :=
  ∀ n, P7447594623451369406.a n = A266840 n

end A266840

/-!
# A266841: Binary representation of the n-th iteration of the "Rule 69" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266841, there is no canonical definition to state claims against.
-/

/-! ## A266841.P16517348142491251398

`A278444(2*n-and(1, n))`
-/

namespace A266841.P16517348142491251398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278444 (2 * n - Nat.land 1 n)

end

end A266841.P16517348142491251398

/-! ## A266841.P17463045077386457869

`A278444(eq[n, n*and(2, n)!])`
-/

namespace A266841.P17463045077386457869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.factorial (Nat.land 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278444 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A266841.P17463045077386457869

/-! ## A266841.P10809502830749493093

`A278444(2*n+1-gcd(2, n+1))`
-/

namespace A266841.P10809502830749493093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278444 (2 * n + 1 - Nat.gcd 2 (n + 1))

end

end A266841.P10809502830749493093

/-! ## A266841.P7506716505373121337

`A278444(A042948(n))`
-/

namespace A266841.P7506716505373121337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278444 (A042948 n).toNat

end

end A266841.P7506716505373121337

/-! ## A266841.P5414197175247591996

`A278444(record[n*A057077(n)])`
-/

namespace A266841.P5414197175247591996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A057077 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278444 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A266841.P5414197175247591996

/-! ## A266841.P15823888337404141382

`A278444(record[n/A057077(n)])`
-/

namespace A266841.P15823888337404141382
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A057077 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278444 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A266841.P15823888337404141382

/-! ## A266841.P581048568668364118

`A278444(Δ[n²]-A000034(n))`
-/

namespace A266841.P581048568668364118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278444 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - A000034 n).toNat

end

end A266841.P581048568668364118

/-!
# A266842: Decimal representation of the n-th iteration of the "Rule 69" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266842, the canonical program `A266842.P1695862273036648468` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266842 has offset 0).

The definition of A266842 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266842.P1695862273036648468

`21*a(n-2)-84*a(n-4)+64*a(n-6)` with `a(0)=1, a(1)=2, a(2)=20, a(3)=43, a(4)=336, a(5)=687`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A266842

/-- `21*a(n-2)-84*a(n-4)+64*a(n-6)` -/
def P1695862273036648468.Spec : Prop :=
  ∀ n, P1695862273036648468.a n = A266842 n

theorem P1695862273036648468.correct : P1695862273036648468.Spec := by
  intro n
  simp only [A266842]

end A266842

/-! ## A266842.P3345996917784833711

`A278446(2*n-n%2)`
-/

namespace A266842.P3345996917784833711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278446 (2 * n - n % 2)

end

end A266842.P3345996917784833711

namespace A266842

/-- `A278446(2*n-n%2)` -/
def P3345996917784833711.Spec : Prop :=
  ∀ n, P3345996917784833711.a n = A266842 n

end A266842

/-! ## A266842.P10758154905020570126

`A278446(or(1, n)-1+n)`
-/

namespace A266842.P10758154905020570126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278446 ((Nat.lor 1 n : ℤ) - 1 + (n : ℤ)).toNat

end

end A266842.P10758154905020570126

namespace A266842

/-- `A278446(or(1, n)-1+n)` -/
def P10758154905020570126.Spec : Prop :=
  ∀ n, P10758154905020570126.a n = A266842 n

end A266842

/-! ## A266842.P12502960969265627282

`A278446(or(1, n)-(1-n))`
-/

namespace A266842.P12502960969265627282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278446 ((Nat.lor 1 n : ℤ) - (1 - (n : ℤ))).toNat

end

end A266842.P12502960969265627282

namespace A266842

/-- `A278446(or(1, n)-(1-n))` -/
def P12502960969265627282.Spec : Prop :=
  ∀ n, P12502960969265627282.a n = A266842 n

end A266842

/-! ## A266842.P4378256617839499690

`A278446(eq[n+2, or(2, n)])`
-/

namespace A266842.P4378256617839499690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278446 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A266842.P4378256617839499690

namespace A266842

/-- `A278446(eq[n+2, or(2, n)])` -/
def P4378256617839499690.Spec : Prop :=
  ∀ n, P4378256617839499690.a n = A266842 n

end A266842

/-! ## A266842.P17626677864554017622

`A278446(n-and(1, n)+n)`
-/

namespace A266842.P17626677864554017622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278446 ((n : ℤ) - (Nat.land 1 n : ℤ) + (n : ℤ)).toNat

end

end A266842.P17626677864554017622

namespace A266842

/-- `A278446(n-and(1, n)+n)` -/
def P17626677864554017622.Spec : Prop :=
  ∀ n, P17626677864554017622.a n = A266842 n

end A266842

/-! ## A266842.P16012518036047171579

`A278446(A042948(n))`
-/

namespace A266842.P16012518036047171579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278446 (A042948 n).toNat

end

end A266842.P16012518036047171579

namespace A266842

/-- `A278446(A042948(n))` -/
def P16012518036047171579.Spec : Prop :=
  ∀ n, P16012518036047171579.a n = A266842 n

end A266842

/-! ## A266842.P6391810535429582986

`and(A267055(n), A267774(n))`
-/

namespace A266842.P6391810535429582986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267055 n) (A267774 n)

end

end A266842.P6391810535429582986

namespace A266842

/-- `and(A267055(n), A267774(n))` -/
def P6391810535429582986.Spec : Prop :=
  ∀ n, P6391810535429582986.a n = A266842 n

end A266842

/-!
# A266843: Triangle read by rows giving successive states of cellular automaton generated by "Rule 70" initiated with a single ON (black) cell.

The programs for A266843, the canonical program `A266843.P15807973679981638370` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266843 has offset 0).

The definition of A266843 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266843.P14489426316277287830

`A266974(n)*A354034(n)`
-/

namespace A266843.P14489426316277287830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266974 n * A354034 n

end

end A266843.P14489426316277287830

namespace A266843

/-- `A266974(n)*A354034(n)` -/
def P14489426316277287830.Spec : Prop :=
  ∀ n, P14489426316277287830.a n = A266843 n

end A266843

/-! ## A266843.P198308759575744703

`A267708(n)*A354034(n)`
-/

namespace A266843.P198308759575744703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267708 n * A354034 n

end

end A266843.P198308759575744703

namespace A266843

/-- `A267708(n)*A354034(n)` -/
def P198308759575744703.Spec : Prop :=
  ∀ n, P198308759575744703.a n = A266843 n

end A266843

/-! ## A266843.P3089119188944520107

`and(A062319(n), A266974(n))`
-/

namespace A266843.P3089119188944520107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A062319 n) (A266974 n)

end

end A266843.P3089119188944520107

namespace A266843

/-- `and(A062319(n), A266974(n))` -/
def P3089119188944520107.Spec : Prop :=
  ∀ n, P3089119188944520107.a n = A266843 n

end A266843

/-! ## A266843.P8751298134880170639

`and(A062319(n), A267708(n))`
-/

namespace A266843.P8751298134880170639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A062319 n) (A267708 n)

end

end A266843.P8751298134880170639

namespace A266843

/-- `and(A062319(n), A267708(n))` -/
def P8751298134880170639.Spec : Prop :=
  ∀ n, P8751298134880170639.a n = A266843 n

end A266843

/-! ## A266843.P15807973679981638370

`A266502(n-2*A196199(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A266843

/-- `A266502(n-2*A196199(n))` -/
def P15807973679981638370.Spec : Prop :=
  ∀ n, P15807973679981638370.a n = A266843 n

theorem P15807973679981638370.correct : P15807973679981638370.Spec := by
  intro n
  simp only [A266843]

end A266843

/-! ## A266843.P13345162510139517727

`and(A067815(n+1), A266974(n))`
-/

namespace A266843.P13345162510139517727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A067815 (n + 1)) (A266974 n)

end

end A266843.P13345162510139517727

namespace A266843

/-- `and(A067815(n+1), A266974(n))` -/
def P13345162510139517727.Spec : Prop :=
  ∀ n, P13345162510139517727.a n = A266843 n

end A266843

/-! ## A266843.P14945334186091507237

`and(A074695(n+1), A266974(n))`
-/

namespace A266843.P14945334186091507237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A074695 (n + 1)) (A266974 n)

end

end A266843.P14945334186091507237

namespace A266843

/-- `and(A074695(n+1), A266974(n))` -/
def P14945334186091507237.Spec : Prop :=
  ∀ n, P14945334186091507237.a n = A266843 n

end A266843

/-! ## A266843.P2196546899427383190

`and(A266974(n), A384628(n+1))`
-/

namespace A266843.P2196546899427383190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266974 n) (A384628 (n + 1))

end

end A266843.P2196546899427383190

namespace A266843

/-- `and(A266974(n), A384628(n+1))` -/
def P2196546899427383190.Spec : Prop :=
  ∀ n, P2196546899427383190.a n = A266843 n

end A266843

/-! ## A266843.P4245928917258796941

`A118102(A266974(n)+n)*A266974(n)`
-/

namespace A266843.P4245928917258796941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118102 (A266974 n + (n : ℤ)).toNat * A266974 n

end

end A266843.P4245928917258796941

namespace A266843

/-- `A118102(A266974(n)+n)*A266974(n)` -/
def P4245928917258796941.Spec : Prop :=
  ∀ n, P4245928917258796941.a n = A266843 n

end A266843

/-! ## A266843.P832803084764598134

`A266502(n-A196199(n)-A196199(n))`
-/

namespace A266843.P832803084764598134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266502 ((n : ℤ) - A196199 n - A196199 n).toNat

end

end A266843.P832803084764598134

namespace A266843

/-- `A266502(n-A196199(n)-A196199(n))` -/
def P832803084764598134.Spec : Prop :=
  ∀ n, P832803084764598134.a n = A266843 n

theorem P832803084764598134.correct : P832803084764598134.Spec := by
  intro n
  simp only [A266843, Nat.add_sub_cancel, A266843.P832803084764598134.a, A266843.P15807973679981638370.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A266843

/-! ## A266843.P4041296084856781062

`A118102(n+1)*A266974(n)`
-/

namespace A266843.P4041296084856781062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118102 (n + 1) * A266974 n

end

end A266843.P4041296084856781062

namespace A266843

/-- `A118102(n+1)*A266974(n)` -/
def P4041296084856781062.Spec : Prop :=
  ∀ n, P4041296084856781062.a n = A266843 n

end A266843

/-! ## A266843.P1988141390334494739

`char[2*n-A279211(n)]`
-/

namespace A266843.P1988141390334494739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A279211 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A266843.P1988141390334494739

namespace A266843

/-- `char[2*n-A279211(n)]` -/
def P1988141390334494739.Spec : Prop :=
  ∀ n, (P1988141390334494739.a n : ℤ) = A266843 n

end A266843

/-! ## A266843.P4651865533623718676

`A266974(A080037(n))`
-/

namespace A266843.P4651865533623718676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266974 (A080037 n).toNat

end

end A266843.P4651865533623718676

namespace A266843

/-- `A266974(A080037(n))` -/
def P4651865533623718676.Spec : Prop :=
  ∀ n, P4651865533623718676.a n = A266843 n

end A266843

/-! ## A266843.P17910244273412329372

`A266974(A265413(n+1))`
-/

namespace A266843.P17910244273412329372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266974 (A265413 (n + 1)).toNat

end

end A266843.P17910244273412329372

namespace A266843

/-- `A266974(A265413(n+1))` -/
def P17910244273412329372.Spec : Prop :=
  ∀ n, P17910244273412329372.a n = A266843 n

end A266843

/-!
# A266844: Binary representation of the n-th iteration of the "Rule 70" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266844, there is no canonical definition to state claims against.
-/

/-! ## A266844.P2732303237807508355

`10^n*A283641(n)`
-/

namespace A266844.P2732303237807508355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) * A283641 n

end

end A266844.P2732303237807508355

/-! ## A266844.P704239376941377102

`lcm(A011557(n), A283641(n))`
-/

namespace A266844.P704239376941377102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011557 n) (A283641 n)

end

end A266844.P704239376941377102

/-! ## A266844.P17259913547735873933

`lcm(A011557(A002998(n)), A284423(n))`
-/

namespace A266844.P17259913547735873933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011557 (A002998 n).toNat) (A284423 n)

end

end A266844.P17259913547735873933

/-! ## A266844.P5999036052877110149

`A007088(2^n*∑[ceil(2^or(1, n-1))])`
-/

namespace A266844.P5999036052877110149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ (Int.lor 1 ((n : ℤ) - 1) : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 ((2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A266844.P5999036052877110149

/-!
# A266845: Primes p such that p+-2 and p+-4 are semiprimes.

The programs for A266845, there is no canonical definition to state claims against.
-/

/-! ## A266845.P5416580491998306382

`∩[A063643(n+1), A117328(n+1)]`
-/

namespace A266845.P5416580491998306382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266845.P5416580491998306382

/-! ## A266845.P11403996230194950866

`∩[A105571(n+1), A117328(n+1)]`
-/

namespace A266845.P11403996230194950866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266845.P11403996230194950866

/-! ## A266845.P15302053861037580757

`∩[A063643(n+1), A256382(n+1)]`
-/

namespace A266845.P15302053861037580757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266845.P15302053861037580757

/-!
# A266846: Decimal representation of the n-th iteration of the "Rule 70" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266846, the canonical program `A266846.P13343982201385342252` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266846 has offset 0).

The definition of A266846 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266846.P1318526383076326837

`2^n*∑[ceil(2^or(1, n-1))]`
-/

namespace A266846.P1318526383076326837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ (Int.lor 1 ((n : ℤ) - 1) : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A266846.P1318526383076326837

namespace A266846

/-- `2^n*∑[ceil(2^or(1, n-1))]` -/
def P1318526383076326837.Spec : Prop :=
  ∀ n, P1318526383076326837.a n = A266846 n

end A266846

/-! ## A266846.P13343982201385342252

`2*a(n-1)+16*a(n-2)-32*a(n-3)` with `a(0)=1, a(1)=6, a(2)=20`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A266846

/-- `2*a(n-1)+16*a(n-2)-32*a(n-3)` -/
def P13343982201385342252.Spec : Prop :=
  ∀ n, P13343982201385342252.a n = A266846 n

theorem P13343982201385342252.correct : P13343982201385342252.Spec := by
  intro n
  simp only [A266846]

end A266846

/-! ## A266846.P777967016043556416

`2^n*∑[A158302(n)]`
-/

namespace A266846.P777967016043556416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A266846.P777967016043556416

namespace A266846

/-- `2^n*∑[A158302(n)]` -/
def P777967016043556416.Spec : Prop :=
  ∀ n, P777967016043556416.a n = A266846 n

end A266846

/-! ## A266846.P12806436702129280716

`2^n*A086893(n+1)`
-/

namespace A266846.P12806436702129280716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A086893 (n + 1)

end

end A266846.P12806436702129280716

namespace A266846

/-- `2^n*A086893(n+1)` -/
def P12806436702129280716.Spec : Prop :=
  ∀ n, P12806436702129280716.a n = A266846 n

end A266846

/-! ## A266846.P3145021842840766272

`2^(n-1)*A061547(n+3)`
-/

namespace A266846.P3145021842840766272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A061547 (n + 3) : ℚ)

end

end A266846.P3145021842840766272

namespace A266846

/-- `2^(n-1)*A061547(n+3)` -/
def P3145021842840766272.Spec : Prop :=
  ∀ n, P3145021842840766272.a n = (A266846 n : ℚ)

end A266846

/-! ## A266846.P1674956629397760206

`xor(A003674(n), A370627(n))`
-/

namespace A266846.P1674956629397760206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003674 n) (A370627 n)

end

end A266846.P1674956629397760206

namespace A266846

/-- `xor(A003674(n), A370627(n))` -/
def P1674956629397760206.Spec : Prop :=
  ∀ n, P1674956629397760206.a n = A266846 n

end A266846

/-! ## A266846.P5833226628741780658

`lcm(A000079(n), A086893(n+1))`
-/

namespace A266846.P5833226628741780658
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A086893 (n + 1))

end

end A266846.P5833226628741780658

namespace A266846

/-- `lcm(A000079(n), A086893(n+1))` -/
def P5833226628741780658.Spec : Prop :=
  ∀ n, (P5833226628741780658.a n : ℤ) = A266846 n

end A266846

/-! ## A266846.P6657931045288365886

`A086893(n+1)*A131577(n+1)`
-/

namespace A266846.P6657931045288365886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086893 (n + 1) * A131577 (n + 1)

end

end A266846.P6657931045288365886

namespace A266846

/-- `A086893(n+1)*A131577(n+1)` -/
def P6657931045288365886.Spec : Prop :=
  ∀ n, P6657931045288365886.a n = A266846 n

end A266846

/-! ## A266846.P2876410910861426098

`(A126646(2*n+1)-A289765(2*n))/2`
-/

namespace A266846.P2876410910861426098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126646 (2 * n + 1) - A289765 (2 * n) : ℚ) / 2

end

end A266846.P2876410910861426098

namespace A266846

/-- `(A126646(2*n+1)-A289765(2*n))/2` -/
def P2876410910861426098.Spec : Prop :=
  ∀ n, P2876410910861426098.a n = (A266846 n : ℚ)

end A266846

/-! ## A266846.P12487489734028388869

`A000079(n)*A096773(A004442(n+2))`
-/

namespace A266846.P12487489734028388869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A096773 (A004442 (n + 2)).toNat

end

end A266846.P12487489734028388869

namespace A266846

/-- `A000079(n)*A096773(A004442(n+2))` -/
def P12487489734028388869.Spec : Prop :=
  ∀ n, P12487489734028388869.a n = A266846 n

end A266846

/-! ## A266846.P10247024663916975081

`A011782(n+1)*A096773(A004442(n+2))`
-/

namespace A266846.P10247024663916975081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) * A096773 (A004442 (n + 2)).toNat

end

end A266846.P10247024663916975081

namespace A266846

/-- `A011782(n+1)*A096773(A004442(n+2))` -/
def P10247024663916975081.Spec : Prop :=
  ∀ n, P10247024663916975081.a n = A266846 n

end A266846

/-! ## A266846.P13987900633437654443

`(A097163(n+1)-A000079(n))*A000079(n)`
-/

namespace A266846.P13987900633437654443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097163 (n + 1) - A000079 n) * A000079 n

end

end A266846.P13987900633437654443

namespace A266846

/-- `(A097163(n+1)-A000079(n))*A000079(n)` -/
def P13987900633437654443.Spec : Prop :=
  ∀ n, P13987900633437654443.a n = A266846 n

end A266846

/-! ## A266846.P15472132384029541855

`∑[A011782(A052928(n+1))]*A011782(n+1)`
-/

namespace A266846.P15472132384029541855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A052928 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A011782 (n + 1)

end

end A266846.P15472132384029541855

namespace A266846

/-- `∑[A011782(A052928(n+1))]*A011782(n+1)` -/
def P15472132384029541855.Spec : Prop :=
  ∀ n, P15472132384029541855.a n = A266846 n

end A266846

/-! ## A266846.P508367711984335471

`(A097163(n+1)-A131577(n+1))*A131577(n+1)`
-/

namespace A266846.P508367711984335471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097163 (n + 1) - A131577 (n + 1)) * A131577 (n + 1)

end

end A266846.P508367711984335471

namespace A266846

/-- `(A097163(n+1)-A131577(n+1))*A131577(n+1)` -/
def P508367711984335471.Spec : Prop :=
  ∀ n, P508367711984335471.a n = A266846 n

end A266846

/-! ## A266846.P4117766142328467229

`(A097163(n+1)-A016116(2*n))*A016116(2*n)`
-/

namespace A266846.P4117766142328467229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097163 (n + 1) - A016116 (2 * n)) * A016116 (2 * n)

end

end A266846.P4117766142328467229

namespace A266846

/-- `(A097163(n+1)-A016116(2*n))*A016116(2*n)` -/
def P4117766142328467229.Spec : Prop :=
  ∀ n, P4117766142328467229.a n = A266846 n

end A266846

/-! ## A266846.P2832761286277564361

`A266976(n+1)/2-2*A000079(n)²`
-/

namespace A266846.P2832761286277564361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266976 (n + 1) : ℚ) / 2 - (2 * A000079 n ^ 2 : ℚ)

end

end A266846.P2832761286277564361

namespace A266846

/-- `A266976(n+1)/2-2*A000079(n)²` -/
def P2832761286277564361.Spec : Prop :=
  ∀ n, P2832761286277564361.a n = (A266846 n : ℚ)

end A266846

/-! ## A266846.P343421866062098283

`A266976(n+1)/2-A000079(2*n+1)`
-/

namespace A266846.P343421866062098283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266976 (n + 1) : ℚ) / 2 - (A000079 (2 * n + 1) : ℚ)

end

end A266846.P343421866062098283

namespace A266846

/-- `A266976(n+1)/2-A000079(2*n+1)` -/
def P343421866062098283.Spec : Prop :=
  ∀ n, P343421866062098283.a n = (A266846 n : ℚ)

end A266846

/-! ## A266846.P13671054343468007084

`A000302(n)+A016131(n)%A000302(n)`
-/

namespace A266846.P13671054343468007084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n + Int.tmod (A016131 n) (A000302 n)

end

end A266846.P13671054343468007084

namespace A266846

/-- `A000302(n)+A016131(n)%A000302(n)` -/
def P13671054343468007084.Spec : Prop :=
  ∀ n, P13671054343468007084.a n = A266846 n

end A266846

/-!
# A266848: Triangle read by rows giving successive states of cellular automaton generated by "Rule 71" initiated with a single ON (black) cell.

The programs for A266848, the canonical program `A266848.P10124636830213584024` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266848 has offset 0).

The definition of A266848 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266848.P15347602286068925507

`ceil(sin(tan(A106593(n))))`
-/

namespace A266848.P15347602286068925507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (Real.tan (A106593 n : ℝ))⌉

end

end A266848.P15347602286068925507

namespace A266848

/-- `ceil(sin(tan(A106593(n))))` -/
def P15347602286068925507.Spec : Prop :=
  ∀ n, P15347602286068925507.a n = A266848 n

end A266848

/-! ## A266848.P10124636830213584024

`A266666(xor(n, A267034(n)))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A266848

/-- `A266666(xor(n, A267034(n)))` -/
def P10124636830213584024.Spec : Prop :=
  ∀ n, P10124636830213584024.a n = A266848 n

theorem P10124636830213584024.correct : P10124636830213584024.Spec := by
  intro n
  simp only [A266848]

end A266848

/-! ## A266848.P14210501854253793832

`A266666(xor(n, A267272(n)))`
-/

namespace A266848.P14210501854253793832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266666 (Int.xor (n : ℤ) (A267272 n)).toNat

end

end A266848.P14210501854253793832

namespace A266848

/-- `A266666(xor(n, A267272(n)))` -/
def P14210501854253793832.Spec : Prop :=
  ∀ n, P14210501854253793832.a n = A266848 n

end A266848

/-! ## A266848.P10265087563480376229

`A266514(A020703(n+1)-1)`
-/

namespace A266848.P10265087563480376229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266514 (A020703 (n + 1) - 1).toNat

end

end A266848.P10265087563480376229

namespace A266848

/-- `A266514(A020703(n+1)-1)` -/
def P10265087563480376229.Spec : Prop :=
  ∀ n, P10265087563480376229.a n = A266848 n

end A266848

/-! ## A266848.P3890817142450040341

`A266666(A265718(n)+n-A266514(n))`
-/

namespace A266848.P3890817142450040341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266666 (A265718 n + ((n : ℤ) - A266514 n)).toNat

end

end A266848.P3890817142450040341

namespace A266848

/-- `A266666(A265718(n)+n-A266514(n))` -/
def P3890817142450040341.Spec : Prop :=
  ∀ n, P3890817142450040341.a n = A266848 n

end A266848

/-! ## A266848.P13327562774856150118

`A266666(A266174(n)+n-A266666(n))`
-/

namespace A266848.P13327562774856150118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266666 (A266174 n + ((n : ℤ) - A266666 n)).toNat

end

end A266848.P13327562774856150118

namespace A266848

/-- `A266666(A266174(n)+n-A266666(n))` -/
def P13327562774856150118.Spec : Prop :=
  ∀ n, P13327562774856150118.a n = A266848 n

end A266848

/-! ## A266848.P9866448520001404901

`A266666(n-(A266514(n)-A265718(n)))`
-/

namespace A266848.P9866448520001404901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266666 ((n : ℤ) - (A266514 n - A265718 n)).toNat

end

end A266848.P9866448520001404901

namespace A266848

/-- `A266666(n-(A266514(n)-A265718(n)))` -/
def P9866448520001404901.Spec : Prop :=
  ∀ n, P9866448520001404901.a n = A266848 n

end A266848

/-! ## A266848.P5923831276432030245

`A266666(n-(A266666(n)-A266174(n)))`
-/

namespace A266848.P5923831276432030245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266666 ((n : ℤ) - (A266666 n - A266174 n)).toNat

end

end A266848.P5923831276432030245

namespace A266848

/-- `A266666(n-(A266666(n)-A266174(n)))` -/
def P5923831276432030245.Spec : Prop :=
  ∀ n, P5923831276432030245.a n = A266848 n

end A266848

/-! ## A266848.P10059941757068610950

`A265718(n)+xor(A266514(n), A266666(n))`
-/

namespace A266848.P10059941757068610950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265718 n + Int.xor (A266514 n) (A266666 n)

end

end A266848.P10059941757068610950

namespace A266848

/-- `A265718(n)+xor(A266514(n), A266666(n))` -/
def P10059941757068610950.Spec : Prop :=
  ∀ n, P10059941757068610950.a n = A266848 n

end A266848

/-! ## A266848.P1013824056600526438

`A267704(n+1)-(A267679(n+1)-A266174(n))`
-/

namespace A266848.P1013824056600526438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267704 (n + 1) - (A267679 (n + 1) - A266174 n)

end

end A266848.P1013824056600526438

namespace A266848

/-- `A267704(n+1)-(A267679(n+1)-A266174(n))` -/
def P1013824056600526438.Spec : Prop :=
  ∀ n, P1013824056600526438.a n = A266848 n

end A266848

/-! ## A266848.P13612732075610232289

`A266174(A265413(n+2)-3)`
-/

namespace A266848.P13612732075610232289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266174 (A265413 (n + 2) - 3).toNat

end

end A266848.P13612732075610232289

namespace A266848

/-- `A266174(A265413(n+2)-3)` -/
def P13612732075610232289.Spec : Prop :=
  ∀ n, P13612732075610232289.a n = A266848 n

end A266848

/-! ## A266848.P2981724533714052630

`A000035(A006218(n)+A000005(A090861(n+1)))`
-/

namespace A266848.P2981724533714052630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A006218 n + A000005 (A090861 (n + 1)).toNat).toNat

end

end A266848.P2981724533714052630

namespace A266848

/-- `A000035(A006218(n)+A000005(A090861(n+1)))` -/
def P2981724533714052630.Spec : Prop :=
  ∀ n, P2981724533714052630.a n = A266848 n

end A266848

/-! ## A266848.P3086705367241224248

`A014577(A082285(n)-A106593(n))`
-/

namespace A266848.P3086705367241224248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 (A082285 n - A106593 n).toNat

end

end A266848.P3086705367241224248

namespace A266848

/-- `A014577(A082285(n)-A106593(n))` -/
def P3086705367241224248.Spec : Prop :=
  ∀ n, P3086705367241224248.a n = A266848 n

end A266848

/-! ## A266848.P17827349973318946662

`and(1, A000217(A106593(n)+A075039(n+1)))`
-/

namespace A266848.P17827349973318946662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000217 (A106593 n + A075039 (n + 1)).toNat)

end

end A266848.P17827349973318946662

namespace A266848

/-- `and(1, A000217(A106593(n)+A075039(n+1)))` -/
def P17827349973318946662.Spec : Prop :=
  ∀ n, P17827349973318946662.a n = A266848 n

end A266848

/-! ## A266848.P10469365430515594513

`A000035(A034856(A106593(n)^A178334(n)))`
-/

namespace A266848.P10469365430515594513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A034856 (SequenceMachineLib.roundAway ((A106593 n : ℚ) ^ (A178334 n : ℤ))).toNat).toNat

end

end A266848.P10469365430515594513

namespace A266848

/-- `A000035(A034856(A106593(n)^A178334(n)))` -/
def P10469365430515594513.Spec : Prop :=
  ∀ n, P10469365430515594513.a n = A266848 n

end A266848

/-!
# A266849: Binary representation of the n-th iteration of the "Rule 71" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266849, there is no canonical definition to state claims against.
-/

/-! ## A266849.P13548644276717449668

`A277798(A124625(n+2))+A266175(n)`
-/

namespace A266849.P13548644276717449668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277798 (A124625 (n + 2)).toNat + A266175 n

end

end A266849.P13548644276717449668

/-! ## A266849.P13230309877143077048

`A007088(A266850(n))`
-/

namespace A266849.P13230309877143077048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A266850 n).toNat

end

end A266849.P13230309877143077048

/-! ## A266849.P796242260972663330

`A007088(xor(A131572(n)², A266436(n)))`
-/

namespace A266849.P796242260972663330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.xor (A131572 n ^ 2) (A266436 n)).toNat

end

end A266849.P796242260972663330

/-! ## A266849.P8138120050892978945

`A007088(A266516(n)+Δ[A213173(n)])`
-/

namespace A266849.P8138120050892978945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213173 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A266516 n + (f1 (n + 1) - f1 n)).toNat

end

end A266849.P8138120050892978945

/-! ## A266849.P12030310767079657561

`A007088(2*A266516(n)-A265721(n))`
-/

namespace A266849.P12030310767079657561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (2 * A266516 n - A265721 n).toNat

end

end A266849.P12030310767079657561

/-!
# A266850: Decimal representation of the n-th iteration of the "Rule 71" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266850, the canonical program `A266850.P1810142981917257223` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266850 has offset 0).

The definition of A266850 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266850.P1810142981917257223

`xor(A131572(n)², A266436(n))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A266850

/-- `xor(A131572(n)², A266436(n))` -/
def P1810142981917257223.Spec : Prop :=
  ∀ n, P1810142981917257223.a n = A266850 n

theorem P1810142981917257223.correct : P1810142981917257223.Spec := by
  intro n
  simp only [A266850]

end A266850

/-! ## A266850.P15004218002171821290

`A266516(n)+Δ[A213173(n)]`
-/

namespace A266850.P15004218002171821290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213173 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266516 n + (f1 (n + 1) - f1 n)

end

end A266850.P15004218002171821290

namespace A266850

/-- `A266516(n)+Δ[A213173(n)]` -/
def P15004218002171821290.Spec : Prop :=
  ∀ n, P15004218002171821290.a n = A266850 n

end A266850

/-! ## A266850.P9209494478417260394

`2*A266516(n)-A265721(n)`
-/

namespace A266850.P9209494478417260394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A266516 n - A265721 n

end

end A266850.P9209494478417260394

namespace A266850

/-- `2*A266516(n)-A265721(n)` -/
def P9209494478417260394.Spec : Prop :=
  ∀ n, P9209494478417260394.a n = A266850 n

end A266850

/-! ## A266850.P6222384745065420894

`or(A213173(n+1), A266176(n))`
-/

namespace A266850.P6222384745065420894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A213173 (n + 1)) (A266176 n)

end

end A266850.P6222384745065420894

namespace A266850

/-- `or(A213173(n+1), A266176(n))` -/
def P6222384745065420894.Spec : Prop :=
  ∀ n, P6222384745065420894.a n = A266850 n

end A266850

/-! ## A266850.P8686815548331143732

`A266668(n)+Δ[A016116(n)]²`
-/

namespace A266850.P8686815548331143732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266668 n + (f1 (n + 1) - f1 n) ^ 2

end

end A266850.P8686815548331143732

namespace A266850

/-- `A266668(n)+Δ[A016116(n)]²` -/
def P8686815548331143732.Spec : Prop :=
  ∀ n, P8686815548331143732.a n = A266850 n

end A266850

/-! ## A266850.P733904052479443747

`A277800(A124625(n))+A266668(n)`
-/

namespace A266850.P733904052479443747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277800 (A124625 n).toNat + A266668 n

end

end A266850.P733904052479443747

namespace A266850

/-- `A277800(A124625(n))+A266668(n)` -/
def P733904052479443747.Spec : Prop :=
  ∀ n, P733904052479443747.a n = A266850 n

end A266850

/-! ## A266850.P14299705724756425132

`xor(A016116(n)², A279872(A266303(n)))`
-/

namespace A266850.P14299705724756425132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A016116 n ^ 2) (A279872 (A266303 n).toNat)

end

end A266850.P14299705724756425132

namespace A266850

/-- `xor(A016116(n)², A279872(A266303(n)))` -/
def P14299705724756425132.Spec : Prop :=
  ∀ n, P14299705724756425132.a n = A266850 n

end A266850

/-! ## A266850.P8647184738226411715

`or(A173862(A047243(n+2)), A266176(n))`
-/

namespace A266850.P8647184738226411715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A173862 (A047243 (n + 2)).toNat) (A266176 n)

end

end A266850.P8647184738226411715

namespace A266850

/-- `or(A173862(A047243(n+2)), A266176(n))` -/
def P8647184738226411715.Spec : Prop :=
  ∀ n, P8647184738226411715.a n = A266850 n

end A266850

/-! ## A266850.P13429232032109657478

`xor(A131572(n)², A282413(A042963(n+1)))`
-/

namespace A266850.P13429232032109657478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A131572 n ^ 2) (A282413 (A042963 (n + 1)).toNat)

end

end A266850.P13429232032109657478

namespace A266850

/-- `xor(A131572(n)², A282413(A042963(n+1)))` -/
def P13429232032109657478.Spec : Prop :=
  ∀ n, P13429232032109657478.a n = A266850 n

end A266850

/-!
# A266852: Number of nX2 arrays containing 2 copies of 0..n-1 with no element 1 greater than its north, west, northeast or southeast neighbor modulo n and the upper left element equal to 0.

The programs for A266852, there is no canonical definition to state claims against.
-/

/-! ## A266852.P10792165624485686302

`A266854(∑[n+2])`
-/

namespace A266852.P10792165624485686302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266854 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A266852.P10792165624485686302

/-! ## A266852.P3987514105487051336

`A266854(A000096(n+1))+A010893(n+3)`
-/

namespace A266852.P3987514105487051336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266854 (A000096 (n + 1)).toNat + A010893 (n + 3 + 13)

end

end A266852.P3987514105487051336

/-! ## A266852.P17907331979551079273

`A266854(n+1)!*A266854(A000096(n+1))`
-/

namespace A266852.P17907331979551079273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A266854 (n + 1)).toNat : ℤ) * A266854 (A000096 (n + 1)).toNat

end

end A266852.P17907331979551079273

/-! ## A266852.P7128882136448319358

`A266854(A000096(n+1))/A058281(3*(n+1))`
-/

namespace A266852.P7128882136448319358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266854 (A000096 (n + 1)).toNat : ℚ) / (A058281 (3 * (n + 1)) : ℚ)

end

end A266852.P7128882136448319358

/-! ## A266852.P7339276281265437439

`A008290(A000096(n))*A266854(A000096(n+1))`
-/

namespace A266852.P7339276281265437439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (A000096 n).toNat * A266854 (A000096 (n + 1)).toNat

end

end A266852.P7339276281265437439

/-!
# A266853: Number of nX3 arrays containing 3 copies of 0..n-1 with no element 1 greater than its north, west, northeast or southeast neighbor modulo n and the upper left element equal to 0.

The programs for A266853, there is no canonical definition to state claims against.
-/

/-! ## A266853.P12903007564845122506

`A266854(∑[n+3]+1)`
-/

namespace A266853.P12903007564845122506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266854 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A266853.P12903007564845122506

/-! ## A266853.P15065648362161650040

`A266854(A034856(n+2))+A025443(n)`
-/

namespace A266853.P15065648362161650040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266854 (A034856 (n + 2)).toNat + A025443 n

end

end A266853.P15065648362161650040

/-! ## A266853.P16259033315553418924

`A326596(n)+A266854(A034856(n+2))`
-/

namespace A266853.P16259033315553418924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326596 n + A266854 (A034856 (n + 2)).toNat

end

end A266853.P16259033315553418924

/-! ## A266853.P5651216515717181363

`A187783(n)*A266854(A034856(n+2))`
-/

namespace A266853.P5651216515717181363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187783 n * A266854 (A034856 (n + 2)).toNat

end

end A266853.P5651216515717181363

/-!
# A266854: T(n,k)=Number of nXk arrays containing k copies of 0..n-1 with no element 1 greater than its north, west, northeast or southeast neighbor modulo n and the upper left element equal to 0.

The programs for A266854, there is no canonical definition to state claims against.
-/

/-! ## A266854.P13628668915580783551

`A126012(A266886(n+1))`
-/

namespace A266854.P13628668915580783551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126012 (A266886 (n + 1)).toNat

end

end A266854.P13628668915580783551

/-! ## A266854.P4212681460860931098

`A165577(A266886(n+1)²)`
-/

namespace A266854.P4212681460860931098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165577 (A266886 (n + 1) ^ 2).toNat

end

end A266854.P4212681460860931098

/-! ## A266854.P8771536679347011929

`A165577(A266886(n+1)^2)`
-/

namespace A266854.P8771536679347011929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165577 (A266886 (n + 1) ^ 2).toNat

end

end A266854.P8771536679347011929

/-! ## A266854.P11099967837515412280

`dr(A374249(A266886(n+1)+1))`
-/

namespace A266854.P11099967837515412280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A374249 (A266886 (n + 1) + 1).toNat)

end

end A266854.P11099967837515412280

/-! ## A266854.P11940314717049933408

`A266886(n+1)%Δ[A107812(3*(n+1))]`
-/

namespace A266854.P11940314717049933408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107812 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266886 (n + 1)) (f1 (n + 1) - f1 n)

end

end A266854.P11940314717049933408

/-!
# A266855: Number of 4Xn arrays containing n copies of 0..4-1 with no element 1 greater than its north, west, northeast or southeast neighbor modulo 4 and the upper left element equal to 0.

The programs for A266855, there is no canonical definition to state claims against.
-/

/-! ## A266855.P10620770024134015203

`A266854(A141214(n)+7)`
-/

namespace A266855.P10620770024134015203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266854 (A141214 n + 7).toNat

end

end A266855.P10620770024134015203

/-! ## A266855.P10848134708916174065

`A266854(A052905(n)+9)`
-/

namespace A266855.P10848134708916174065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266854 (A052905 n + 9).toNat

end

end A266855.P10848134708916174065

/-! ## A266855.P8167760913126341281

`A266854(A055999(n)+10)`
-/

namespace A266855.P8167760913126341281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266854 (A055999 n + 10).toNat

end

end A266855.P8167760913126341281

/-! ## A266855.P11146685791218889302

`A266854(eq[5, A066657(n)])`
-/

namespace A266855.P11146685791218889302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266854 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266855.P11146685791218889302

/-!
# A266856: Number of 5Xn arrays containing n copies of 0..5-1 with no element 1 greater than its north, west, northeast or southeast neighbor modulo 5 and the upper left element equal to 0.

The programs for A266856, there is no canonical definition to state claims against.
-/

/-! ## A266856.P10938218570490731922

`A266854(A155212(n)+13)`
-/

namespace A266856.P10938218570490731922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266854 (A155212 n + 13).toNat

end

end A266856.P10938218570490731922

/-! ## A266856.P16979296993510595001

`A266854(A056000(n)+15)`
-/

namespace A266856.P16979296993510595001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266854 (A056000 n + 15).toNat

end

end A266856.P16979296993510595001

/-! ## A266856.P5604122115627409776

`A266854(eq[7, A066657(n)])`
-/

namespace A266856.P5604122115627409776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266854 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266856.P5604122115627409776

/-!
# A266857: Expansion of Product_{k>=1} (1 + 3*x^k)^k.

The programs for A266857, there is no canonical definition to state claims against.
-/

/-! ## A266857.P1817508820113154657

`A304497(∑[A035528(n)²])`
-/

namespace A266857.P1817508820113154657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035528 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304497 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A266857.P1817508820113154657

/-! ## A266857.P1452697261048617631

`record[A023142(record[A347834(n+1)])]`
-/

namespace A266857.P1452697261048617631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347834 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023142 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266857.P1452697261048617631

/-!
# A266858: Number of acyclic orientations of the Turán graph T(n,3).

The programs for A266858, there is no canonical definition to state claims against.
-/

/-! ## A266858.P4299793844173381551

`A267383(∑[n+3])`
-/

namespace A266858.P4299793844173381551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267383 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A266858.P4299793844173381551

/-! ## A266858.P13106651939933877203

`A267383(A055998(n+1))/gcd(n, n+1)`
-/

namespace A266858.P13106651939933877203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267383 (A055998 (n + 1)).toNat : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A266858.P13106651939933877203

/-! ## A266858.P11378587368823943487

`A267383(A055998(n+1))^A178334(n)`
-/

namespace A266858.P11378587368823943487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267383 (A055998 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A266858.P11378587368823943487

/-! ## A266858.P9886181979129109723

`A020985(n)²*A267383(A055998(n+1))`
-/

namespace A266858.P9886181979129109723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A267383 (A055998 (n + 1)).toNat

end

end A266858.P9886181979129109723

/-! ## A266858.P5901912495396516547

`A242179(n)²*A267383(A055998(n+1))`
-/

namespace A266858.P5901912495396516547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242179 n ^ 2 * A267383 (A055998 (n + 1)).toNat

end

end A266858.P5901912495396516547

/-! ## A266858.P12771324670860685317

`lcm(A057979(2*n), A267383(A055998(n+1)))`
-/

namespace A266858.P12771324670860685317
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057979 (2 * n)) (A267383 (A055998 (n + 1)).toNat)

end

end A266858.P12771324670860685317

/-!
# A266859: Number of nX2 arrays containing 2 copies of 0..n-1 with no element 1 greater than its north or southwest neighbor modulo n and the upper left element equal to 0.

The programs for A266859, there is no canonical definition to state claims against.
-/

/-! ## A266859.P9121103313679681550

`A266861(∑[n+2])`
-/

namespace A266859.P9121103313679681550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266861 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A266859.P9121103313679681550

/-! ## A266859.P3969991444905896320

`A266861(A000096(n+1))^A323529(n)`
-/

namespace A266859.P3969991444905896320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266861 (A000096 (n + 1)).toNat : ℚ) ^ (A323529 n : ℤ)

end

end A266859.P3969991444905896320

/-! ## A266859.P16088034742302426745

`A266861(A000096(n+1))%A262170(3*(n+1))`
-/

namespace A266859.P16088034742302426745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266861 (A000096 (n + 1)).toNat) (A262170 (3 * (n + 1)))

end

end A266859.P16088034742302426745

/-!
# A266860: Number of nX3 arrays containing 3 copies of 0..n-1 with no element 1 greater than its north or southwest neighbor modulo n and the upper left element equal to 0.

The programs for A266860, there is no canonical definition to state claims against.
-/

/-! ## A266860.P9016247573407169029

`A266861(∑[n+3]+1)`
-/

namespace A266860.P9016247573407169029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266861 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A266860.P9016247573407169029

/-! ## A266860.P3036461684452499755

`gcd(A016426(n+1), A266861(A034856(n+2)))`
-/

namespace A266860.P3036461684452499755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016426 (n + 1)) (A266861 (A034856 (n + 2)).toNat)

end

end A266860.P3036461684452499755

/-!
# A266861: T(n,k) = Number of n X k arrays containing k copies of 0..n-1 with no element 1 greater than its north or southwest neighbor modulo n and the upper left element equal to 0.

The programs for A266861, there is no canonical definition to state claims against.
-/

/-! ## A266861.P16350476889638536994

`A363526(A212085(n+1))`
-/

namespace A266861.P16350476889638536994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363526 (A212085 (n + 1)).toNat

end

end A266861.P16350476889638536994

/-! ## A266861.P9692710109678754296

`A076134(A266921(n+1)+1)`
-/

namespace A266861.P9692710109678754296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076134 (A266921 (n + 1) + 1).toNat

end

end A266861.P9692710109678754296

/-! ## A266861.P12222005553381160885

`A266921(A243020(n+1))%21`
-/

namespace A266861.P12222005553381160885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266921 (A243020 (n + 1)).toNat) 21

end

end A266861.P12222005553381160885

/-! ## A266861.P4510257463724066715

`A174231(A294950(n)-A002262(n))`
-/

namespace A266861.P4510257463724066715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174231 (A294950 n - A002262 n).toNat

end

end A266861.P4510257463724066715

/-! ## A266861.P5140689386416069665

`A123108(A256117(n)%A080563(n))`
-/

namespace A266861.P5140689386416069665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (Int.tmod (A256117 n) (A080563 n)).toNat

end

end A266861.P5140689386416069665

/-!
# A266862: Number of 3Xn arrays containing n copies of 0..3-1 with no element 1 greater than its north or southwest neighbor modulo 3 and the upper left element equal to 0.

The programs for A266862, there is no canonical definition to state claims against.
-/

/-! ## A266862.P9447678415510331046

`A267655(∑[n+2]+4)`
-/

namespace A266862.P9447678415510331046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267655 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A266862.P9447678415510331046

/-! ## A266862.P10698950754655640518

`A267655(A167614(n+1))+char[15]`
-/

namespace A266862.P10698950754655640518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267655 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A266862.P10698950754655640518

/-! ## A266862.P2063081161302791323

`record[gcd(A267655(n+5), A306100(n+1))]`
-/

namespace A266862.P2063081161302791323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A267655 (n + 5)) (A306100 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266862.P2063081161302791323

/-! ## A266862.P867633495229170510

`gcd(A000038(n), A267655(A167614(n+1)))`
-/

namespace A266862.P867633495229170510
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A267655 (A167614 (n + 1)).toNat)

end

end A266862.P867633495229170510

/-! ## A266862.P3141303139368588532

`A267655(A167614(n+1))%A000032(2*n)²`
-/

namespace A266862.P3141303139368588532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267655 (A167614 (n + 1)).toNat) (A000032 (2 * n) ^ 2)

end

end A266862.P3141303139368588532

/-!
# A266863: Number of 4Xn arrays containing n copies of 0..4-1 with no element 1 greater than its north or southwest neighbor modulo 4 and the upper left element equal to 0.

The programs for A266863, there is no canonical definition to state claims against.
-/

/-! ## A266863.P1117108835947154408

`A266861(∑[n+3]+7)`
-/

namespace A266863.P1117108835947154408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266861 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A266863.P1117108835947154408

/-! ## A266863.P12511503027524778922

`A215075(n+1)*A266861(A052905(n)+9)`
-/

namespace A266863.P12511503027524778922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215075 (n + 1) * A266861 (A052905 n + 9).toNat

end

end A266863.P12511503027524778922

/-!
# A266864: Number of 5Xn arrays containing n copies of 0..5-1 with no element 1 greater than its north or southwest neighbor modulo 5 and the upper left element equal to 0.

The programs for A266864, there is no canonical definition to state claims against.
-/

/-! ## A266864.P298399734722048673

`A266861(∑[n+4]+11)`
-/

namespace A266864.P298399734722048673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266861 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A266864.P298399734722048673

/-! ## A266864.P13789580966844505795

`A266861(A167499(n+3))+A026815(n)`
-/

namespace A266864.P13789580966844505795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266861 (A167499 (n + 3)).toNat + A026815 n

end

end A266864.P13789580966844505795

/-!
# A266865: Number of nX2 arrays containing 2 copies of 0..n-1 with no element 1 greater than its west or northeast neighbor modulo n and the upper left element equal to 0.

The programs for A266865, there is no canonical definition to state claims against.
-/

/-! ## A266865.P7438686679412497355

`A266867(∑[n+2])`
-/

namespace A266865.P7438686679412497355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266867 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A266865.P7438686679412497355

/-! ## A266865.P3174006433760939795

`A326542(n)+A266867(A000096(n+1))`
-/

namespace A266865.P3174006433760939795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326542 n + A266867 (A000096 (n + 1)).toNat

end

end A266865.P3174006433760939795

/-! ## A266865.P6768433633941876781

`A238015(n)*A266867(A000096(n+1))`
-/

namespace A266865.P6768433633941876781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238015 n * A266867 (A000096 (n + 1)).toNat

end

end A266865.P6768433633941876781

/-! ## A266865.P4738199134598465863

`lcm(A020985(n), A266867(A000096(n+1)))`
-/

namespace A266865.P4738199134598465863
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A266867 (A000096 (n + 1)).toNat)

end

end A266865.P4738199134598465863

/-! ## A266865.P16131990562562589781

`A266867(A000096(n+1))%A068622(n+1)`
-/

namespace A266865.P16131990562562589781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266867 (A000096 (n + 1)).toNat) (A068622 (n + 1))

end

end A266865.P16131990562562589781

/-!
# A266866: Number of nX3 arrays containing 3 copies of 0..n-1 with no element 1 greater than its west or northeast neighbor modulo n and the upper left element equal to 0.

The programs for A266866, there is no canonical definition to state claims against.
-/

/-! ## A266866.P6468190855369534198

`A266867(∑[n+3]+1)`
-/

namespace A266866.P6468190855369534198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266867 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A266866.P6468190855369534198

/-!
# A266868: Number of 3Xn arrays containing n copies of 0..3-1 with no element 1 greater than its west or northeast neighbor modulo 3 and the upper left element equal to 0.

The programs for A266868, there is no canonical definition to state claims against.
-/

/-! ## A266868.P439131608013444449

`A267742(∑[n+2]+4)`
-/

namespace A266868.P439131608013444449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267742 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A266868.P439131608013444449

/-! ## A266868.P15300664871315037061

`or(char[2], A267742(A167614(n+1)))`
-/

namespace A266868.P15300664871315037061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A267742 (A167614 (n + 1)).toNat)

end

end A266868.P15300664871315037061

/-! ## A266868.P2112198776531065679

`A267742(A167614(n+1))+A025437(n)`
-/

namespace A266868.P2112198776531065679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267742 (A167614 (n + 1)).toNat + A025437 n

end

end A266868.P2112198776531065679

/-! ## A266868.P2787271438283445131

`A267742(A167614(n+1))+A061858(n)`
-/

namespace A266868.P2787271438283445131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267742 (A167614 (n + 1)).toNat + A061858 n

end

end A266868.P2787271438283445131

/-! ## A266868.P10203516527337042994

`A267742(A167614(n+1))+A137579(n)`
-/

namespace A266868.P10203516527337042994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267742 (A167614 (n + 1)).toNat + A137579 n

end

end A266868.P10203516527337042994

/-!
# A266869: Number of 4Xn arrays containing n copies of 0..4-1 with no element 1 greater than its west or northeast neighbor modulo 4 and the upper left element equal to 0.

The programs for A266869, there is no canonical definition to state claims against.
-/

/-! ## A266869.P5297436040773831613

`A266867(∑[n+3]+7)`
-/

namespace A266869.P5297436040773831613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266867 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A266869.P5297436040773831613

/-!
# A266870: Number of 5Xn arrays containing n copies of 0..5-1 with no element 1 greater than its west or northeast neighbor modulo 5 and the upper left element equal to 0.

The programs for A266870, there is no canonical definition to state claims against.
-/

/-! ## A266870.P10200512874111064404

`A266867(A167499(n+3))`
-/

namespace A266870.P10200512874111064404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266867 (A167499 (n + 3)).toNat

end

end A266870.P10200512874111064404

/-! ## A266870.P13412471096626772552

`A266867(A155212(n)+13)`
-/

namespace A266870.P13412471096626772552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266867 (A155212 n + 13).toNat

end

end A266870.P13412471096626772552

/-! ## A266870.P13746489604577633177

`A266867(A056000(n)+15)`
-/

namespace A266870.P13746489604577633177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266867 (A056000 n + 15).toNat

end

end A266870.P13746489604577633177

/-!
# A266871: Number of partitions of n that maximize the product of multiplicities of parts.

The programs for A266871, there is no canonical definition to state claims against.
-/

/-! ## A266871.P3970274596632143794

`A266477(∑[A266480(n)]-1)`
-/

namespace A266871.P3970274596632143794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266477 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A266871.P3970274596632143794

/-! ## A266871.P7346385052783641156

`gcd(A023126(n+1), A094106(n+1))`
-/

namespace A266871.P7346385052783641156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A023126 (n + 1)) (A094106 (n + 1))

end

end A266871.P7346385052783641156

/-! ## A266871.P12978001564565345644

`gcd(A147373(n+1), A358425(n+1))`
-/

namespace A266871.P12978001564565345644
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A147373 (n + 1)) (A358425 (n + 1))

end

end A266871.P12978001564565345644

/-! ## A266871.P1945228057043382583

`gcd(A300219(A121599(n+1)), A325680(n))`
-/

namespace A266871.P1945228057043382583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A300219 (A121599 (n + 1)).toNat) (A325680 n)

end

end A266871.P1945228057043382583

/-! ## A266871.P968631383272890326

`A152157(A348687(3*n+1)+A050320(3*n+4))`
-/

namespace A266871.P968631383272890326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 (A348687 (3 * n + 1) + A050320 (3 * n + 4)).toNat

end

end A266871.P968631383272890326

/-!
# A266872: Binary representation of the n-th iteration of the "Rule 77" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266872, there is no canonical definition to state claims against.
-/

/-! ## A266872.P10140001134359981509

`A056830(or(1, n)+n)`
-/

namespace A266872.P10140001134359981509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 (Nat.lor 1 n + n)

end

end A266872.P10140001134359981509

/-! ## A266872.P3468713357389569164

`A287742(A079599(n))`
-/

namespace A266872.P3468713357389569164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287742 (A079599 n).toNat

end

end A266872.P3468713357389569164

/-! ## A266872.P18001368024318823090

`A056830(comp[A014601(n)])`
-/

namespace A266872.P18001368024318823090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A266872.P18001368024318823090

/-! ## A266872.P16479073750513054451

`A056830(A042948(n)+1)`
-/

namespace A266872.P16479073750513054451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 (A042948 n + 1).toNat

end

end A266872.P16479073750513054451

/-! ## A266872.P5353878315246403382

`A287742(A047467(n+1))`
-/

namespace A266872.P5353878315246403382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287742 (A047467 (n + 1)).toNat

end

end A266872.P5353878315246403382

/-! ## A266872.P12260895193148606677

`A287742(A047468(n+1))`
-/

namespace A266872.P12260895193148606677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287742 (A047468 (n + 1)).toNat

end

end A266872.P12260895193148606677

/-! ## A266872.P9331947793310860472

`A287742(A047470(n+1))`
-/

namespace A266872.P9331947793310860472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287742 (A047470 (n + 1)).toNat

end

end A266872.P9331947793310860472

/-! ## A266872.P14410080847512194671

`A287742(A047471(n+1))`
-/

namespace A266872.P14410080847512194671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287742 (A047471 (n + 1)).toNat

end

end A266872.P14410080847512194671

/-! ## A266872.P15585945411833095164

`A287742(2*A042948(n))`
-/

namespace A266872.P15585945411833095164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287742 (2 * A042948 n).toNat

end

end A266872.P15585945411833095164

/-! ## A266872.P8974567682713832972

`A056830(xor(1, A014601(n)))`
-/

namespace A266872.P8974567682713832972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 (Int.xor 1 (A014601 n)).toNat

end

end A266872.P8974567682713832972

/-!
# A266873: Decimal representation of the n-th iteration of the "Rule 77" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266873, the canonical program `A266873.P15183675349655058584` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266873 has offset 0).

The definition of A266873 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266873.P15183675349655058584

`17*a(n-2)-16*a(n-4)` with `a(0)=1, a(1)=2, a(2)=21, a(3)=42`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A266873

/-- `17*a(n-2)-16*a(n-4)` -/
def P15183675349655058584.Spec : Prop :=
  ∀ n, P15183675349655058584.a n = A266873 n

theorem P15183675349655058584.correct : P15183675349655058584.Spec := by
  intro n
  simp only [A266873]

end A266873

/-! ## A266873.P5257620439853349694

`A267457(n+2)/4`
-/

namespace A266873.P5257620439853349694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267457 (n + 2) : ℚ) / 4

end

end A266873.P5257620439853349694

namespace A266873

/-- `A267457(n+2)/4` -/
def P5257620439853349694.Spec : Prop :=
  ∀ n, P5257620439853349694.a n = (A266873 n : ℚ)

end A266873

/-! ## A266873.P5021291621291383335

`A000975(or(1, n)+n)`
-/

namespace A266873.P5021291621291383335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (Nat.lor 1 n + n)

end

end A266873.P5021291621291383335

namespace A266873

/-- `A000975(or(1, n)+n)` -/
def P5021291621291383335.Spec : Prop :=
  ∀ n, P5021291621291383335.a n = A266873 n

end A266873

/-! ## A266873.P18099425330798323713

`A084639(comp[or(2, n)])+1`
-/

namespace A266873.P18099425330798323713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084639 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 1

end

end A266873.P18099425330798323713

namespace A266873

/-- `A084639(comp[or(2, n)])+1` -/
def P18099425330798323713.Spec : Prop :=
  ∀ n, P18099425330798323713.a n = A266873 n

end A266873

/-! ## A266873.P2894225121780168040

`A000975(log2(gcd(2, n))+2*n)`
-/

namespace A266873.P2894225121780168040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (SequenceMachineLib.roundAway (Real.logb 2 (Nat.gcd 2 n : ℝ) + (2 * n : ℝ))).toNat

end

end A266873.P2894225121780168040

namespace A266873

/-- `A000975(log2(gcd(2, n))+2*n)` -/
def P2894225121780168040.Spec : Prop :=
  ∀ n, P2894225121780168040.a n = A266873 n

end A266873

/-! ## A266873.P5887235435264305813

`record[A000975(and(2, n)+n+1)]`
-/

namespace A266873.P5887235435264305813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (Nat.land 2 n + n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266873.P5887235435264305813

namespace A266873

/-- `record[A000975(and(2, n)+n+1)]` -/
def P5887235435264305813.Spec : Prop :=
  ∀ n, P5887235435264305813.a n = A266873 n

end A266873

/-! ## A266873.P5325880286065736158

`A000975(or(2*n, char[2*n]))`
-/

namespace A266873.P5325880286065736158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (Nat.lor (2 * n) (if ∃ j, f1 j = n then 1 else 0))

end

end A266873.P5325880286065736158

namespace A266873

/-- `A000975(or(2*n, char[2*n]))` -/
def P5325880286065736158.Spec : Prop :=
  ∀ n, P5325880286065736158.a n = A266873 n

end A266873

/-! ## A266873.P13568286783256374123

`A000975(2*n-char[2*n+1]+1)`
-/

namespace A266873.P13568286783256374123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 ((2 * n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 1).toNat

end

end A266873.P13568286783256374123

namespace A266873

/-- `A000975(2*n-char[2*n+1]+1)` -/
def P13568286783256374123.Spec : Prop :=
  ∀ n, P13568286783256374123.a n = A266873 n

end A266873

/-! ## A266873.P3220110801032572831

`A048329(A047239(n+1))`
-/

namespace A266873.P3220110801032572831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048329 (A047239 (n + 1)).toNat

end

end A266873.P3220110801032572831

namespace A266873

/-- `A048329(A047239(n+1))` -/
def P3220110801032572831.Spec : Prop :=
  ∀ n, P3220110801032572831.a n = A266873 n

end A266873

/-! ## A266873.P16384223047783968100

`A133684(A047535(n+1))`
-/

namespace A266873.P16384223047783968100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (A047535 (n + 1)).toNat

end

end A266873.P16384223047783968100

namespace A266873

/-- `A133684(A047535(n+1))` -/
def P16384223047783968100.Spec : Prop :=
  ∀ n, P16384223047783968100.a n = A266873 n

end A266873

/-! ## A266873.P15521549600904998408

`A287744(A047467(n+1))`
-/

namespace A266873.P15521549600904998408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287744 (A047467 (n + 1)).toNat

end

end A266873.P15521549600904998408

namespace A266873

/-- `A287744(A047467(n+1))` -/
def P15521549600904998408.Spec : Prop :=
  ∀ n, P15521549600904998408.a n = A266873 n

end A266873

/-! ## A266873.P4344322238465746933

`A287744(A047468(n+1))`
-/

namespace A266873.P4344322238465746933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287744 (A047468 (n + 1)).toNat

end

end A266873.P4344322238465746933

namespace A266873

/-- `A287744(A047468(n+1))` -/
def P4344322238465746933.Spec : Prop :=
  ∀ n, P4344322238465746933.a n = A266873 n

end A266873

/-! ## A266873.P16849073451651493161

`A287744(A047470(n+1))`
-/

namespace A266873.P16849073451651493161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287744 (A047470 (n + 1)).toNat

end

end A266873.P16849073451651493161

namespace A266873

/-- `A287744(A047470(n+1))` -/
def P16849073451651493161.Spec : Prop :=
  ∀ n, P16849073451651493161.a n = A266873 n

end A266873

/-! ## A266873.P10372132085635933285

`A287744(A047471(n+1))`
-/

namespace A266873.P10372132085635933285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287744 (A047471 (n + 1)).toNat

end

end A266873.P10372132085635933285

namespace A266873

/-- `A287744(A047471(n+1))` -/
def P10372132085635933285.Spec : Prop :=
  ∀ n, P10372132085635933285.a n = A266873 n

end A266873

/-! ## A266873.P14202061195234990077

`A267036(n)-A084241(n)`
-/

namespace A266873.P14202061195234990077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267036 n - A084241 n

end

end A266873.P14202061195234990077

namespace A266873

/-- `A267036(n)-A084241(n)` -/
def P14202061195234990077.Spec : Prop :=
  ∀ n, P14202061195234990077.a n = A266873 n

end A266873

/-! ## A266873.P5600378005875812309

`xor(A002450(n), A267036(n))`
-/

namespace A266873.P5600378005875812309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002450 n) (A267036 n)

end

end A266873.P5600378005875812309

namespace A266873

/-- `xor(A002450(n), A267036(n))` -/
def P5600378005875812309.Spec : Prop :=
  ∀ n, P5600378005875812309.a n = A266873 n

end A266873

/-! ## A266873.P16255991349003009660

`xor(A080674(n), A266302(n))`
-/

namespace A266873.P16255991349003009660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A080674 n) (A266302 n)

end

end A266873.P16255991349003009660

namespace A266873

/-- `xor(A080674(n), A266302(n))` -/
def P16255991349003009660.Spec : Prop :=
  ∀ n, P16255991349003009660.a n = A266873 n

end A266873

/-! ## A266873.P5629685954925481603

`A005578(A042948(n)+2)-1`
-/

namespace A266873.P5629685954925481603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 (A042948 n + 2).toNat - 1

end

end A266873.P5629685954925481603

namespace A266873

/-- `A005578(A042948(n)+2)-1` -/
def P5629685954925481603.Spec : Prop :=
  ∀ n, P5629685954925481603.a n = A266873 n

end A266873

/-! ## A266873.P5432305493915632306

`A005578(or(2, A014601(n)))-1`
-/

namespace A266873.P5432305493915632306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 (Int.lor 2 (A014601 n)).toNat - 1

end

end A266873.P5432305493915632306

namespace A266873

/-- `A005578(or(2, A014601(n)))-1` -/
def P5432305493915632306.Spec : Prop :=
  ∀ n, P5432305493915632306.a n = A266873 n

end A266873

/-! ## A266873.P9208732784413366415

`A005578(or(2, A042948(n)))-1`
-/

namespace A266873.P9208732784413366415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 (Int.lor 2 (A042948 n)).toNat - 1

end

end A266873.P9208732784413366415

namespace A266873

/-- `A005578(or(2, A042948(n)))-1` -/
def P9208732784413366415.Spec : Prop :=
  ∀ n, P9208732784413366415.a n = A266873 n

end A266873

/-!
# A266874: Excess of the odd abundant numbers that are congruent to 1 mod 4 over those that are congruent to 3 mod 4.

The programs for A266874, there is no canonical definition to state claims against.
-/

/-! ## A266874.P5489762626830703972

`∑[(A005231(n+1)+1)%4-1]`
-/

namespace A266874.P5489762626830703972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005231 (n + 1) + 1) 4 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266874.P5489762626830703972

/-! ## A266874.P1316894401161517316

`∑[A106400(and(3, -A005231(n+1)))]`
-/

namespace A266874.P1316894401161517316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (Int.land 3 (-A005231 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266874.P1316894401161517316

/-! ## A266874.P7089063777507897478

`∑[(-1)^A014682(A005231(n+1)-1)]`
-/

namespace A266874.P7089063777507897478
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A014682 (A005231 (n + 1) - 1).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266874.P7089063777507897478

/-! ## A266874.P13401587642259591304

`∑[A057077(floor((A005231(n+1)-1)/5))]`
-/

namespace A266874.P13401587642259591304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 ⌊(A005231 (n + 1) - 1 : ℚ) / 5⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266874.P13401587642259591304

/-! ## A266874.P546412931083161489

`∑[A055975(A209639(A005231(n+1)))]`
-/

namespace A266874.P546412931083161489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (A209639 (A005231 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266874.P546412931083161489

/-! ## A266874.P1020308341657605122

`∑[(-1)^A328399(A005231(n+1)-2)]`
-/

namespace A266874.P1020308341657605122
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A328399 (A005231 (n + 1) - 2).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266874.P1020308341657605122

/-!
# A266875: Number of partially ordered sets ("posets") with n labeled elements, modulo n.

The programs for A266875, there is no canonical definition to state claims against.
-/

/-! ## A266875.P2814696883838302403

`(A129063(n)+1)%(n+1)`
-/

namespace A266875.P2814696883838302403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129063 n + 1) (n + 1 : ℤ)

end

end A266875.P2814696883838302403

/-! ## A266875.P9755802138654910804

`(3^n)%A057567(n+1)`
-/

namespace A266875.P9755802138654910804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 ^ n : ℤ) (A057567 (n + 1))

end

end A266875.P9755802138654910804

/-! ## A266875.P7976355650688891229

`A000244(n)%-A057567(n+1)`
-/

namespace A266875.P7976355650688891229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000244 n) (-A057567 (n + 1))

end

end A266875.P7976355650688891229

/-! ## A266875.P10115301648892655751

`A270390(n+1)%A079065(n+1)`
-/

namespace A266875.P10115301648892655751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270390 (n + 1)) (A079065 (n + 1))

end

end A266875.P10115301648892655751

/-! ## A266875.P17814012906037650809

`(A174973(n+1)+9)%A316437(n+1)`
-/

namespace A266875.P17814012906037650809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174973 (n + 1) + 9) (A316437 (n + 1))

end

end A266875.P17814012906037650809

/-!
# A266876: Number of nX2 arrays containing 2 copies of 0..n-1 with no element 1 greater than its north, southwest or northwest neighbor modulo n and the upper left element equal to 0.

The programs for A266876, there is no canonical definition to state claims against.
-/

/-! ## A266876.P5941625050023191276

`A266878(∑[n+2])`
-/

namespace A266876.P5941625050023191276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266878 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A266876.P5941625050023191276

/-! ## A266876.P10720097553532134636

`A266878(A000096(n+1))+A102683(n)`
-/

namespace A266876.P10720097553532134636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266878 (A000096 (n + 1)).toNat + A102683 n

end

end A266876.P10720097553532134636

/-! ## A266876.P5912568585368378958

`A266878(A000096(n+1))*A331562(n)`
-/

namespace A266876.P5912568585368378958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266878 (A000096 (n + 1)).toNat * A331562 n

end

end A266876.P5912568585368378958

/-! ## A266876.P16127049038228287282

`lcm(A020985(n), A266878(A000096(n+1)))`
-/

namespace A266876.P16127049038228287282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A266878 (A000096 (n + 1)).toNat)

end

end A266876.P16127049038228287282

/-!
# A266877: Number of n X 3 arrays containing 3 copies of 0..n-1 with no element 1 greater than its north, southwest or northwest neighbor modulo n and the upper left element equal to 0.

The programs for A266877, there is no canonical definition to state claims against.
-/

/-! ## A266877.P1916132474144281912

`A266878(∑[n+3]+1)`
-/

namespace A266877.P1916132474144281912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266878 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A266877.P1916132474144281912

/-! ## A266877.P15130919675114450166

`A266878(A034856(n+2))+char[7]`
-/

namespace A266877.P15130919675114450166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266878 (A034856 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A266877.P15130919675114450166

/-! ## A266877.P9250358066152561351

`A326630(n)+A266878(A034856(n+2))`
-/

namespace A266877.P9250358066152561351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326630 n + A266878 (A034856 (n + 2)).toNat

end

end A266877.P9250358066152561351

/-!
# A266878: T(n,k)=Number of nXk arrays containing k copies of 0..n-1 with no element 1 greater than its north, southwest or northwest neighbor modulo n and the upper left element equal to 0.

The programs for A266878, there is no canonical definition to state claims against.
-/

/-! ## A266878.P7465605239974650650

`A144774(A266832(n+1)+1)`
-/

namespace A266878.P7465605239974650650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144774 (A266832 (n + 1) + 1).toNat

end

end A266878.P7465605239974650650

/-! ## A266878.P193878838163876767

`A341981(A187783(n))+A266854(n+1)`
-/

namespace A266878.P193878838163876767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341981 ((A187783 n).toNat + 101) + A266854 (n + 1)

end

end A266878.P193878838163876767

/-! ## A266878.P15135240002022255010

`A087051(A266832(n+1))%A040554(n)`
-/

namespace A266878.P15135240002022255010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087051 (A266832 (n + 1)).toNat) (A040554 n)

end

end A266878.P15135240002022255010

/-! ## A266878.P15345047525335383839

`A286151(A266832(n+1)%A132841(3*n+4))`
-/

namespace A266878.P15345047525335383839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286151 (Int.tmod (A266832 (n + 1)) (A132841 (3 * n + 4))).toNat

end

end A266878.P15345047525335383839

/-! ## A266878.P1141247957493897351

`A007376(A266904(n+1)*A360207(n))`
-/

namespace A266878.P1141247957493897351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A266904 (n + 1) * A360207 n).toNat

end

end A266878.P1141247957493897351

/-!
# A266879: Number of 3Xn arrays containing n copies of 0..3-1 with no element 1 greater than its north, southwest or northwest neighbor modulo 3 and the upper left element equal to 0.

The programs for A266879, there is no canonical definition to state claims against.
-/

/-! ## A266879.P2907469003988369200

`A266826(A028310(n)+1)+1`
-/

namespace A266879.P2907469003988369200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266826 (A028310 n + 1).toNat + 1

end

end A266879.P2907469003988369200

/-! ## A266879.P6559817069556056851

`A266826(n+1)+A057427(n)`
-/

namespace A266879.P6559817069556056851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266826 (n + 1) + A057427 n

end

end A266879.P6559817069556056851

/-! ## A266879.P15109429605254347471

`A266826(n+1)+A178334(n)`
-/

namespace A266879.P15109429605254347471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266826 (n + 1) + A178334 n

end

end A266879.P15109429605254347471

/-! ## A266879.P5282308032716278756

`A266826(n+1)-A057428(n)`
-/

namespace A266879.P5282308032716278756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266826 (n + 1) - A057428 n

end

end A266879.P5282308032716278756

/-! ## A266879.P9656525737175023638

`A266826(n+1)+char[A092486(n)]`
-/

namespace A266879.P9656525737175023638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266826 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A266879.P9656525737175023638

/-! ## A266879.P213674186809840249

`A266826(n+1)+A007484(n)%2`
-/

namespace A266879.P213674186809840249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266826 (n + 1) + Int.tmod (A007484 n) 2

end

end A266879.P213674186809840249

/-! ## A266879.P2026208891252959709

`A266826(n+1)+char[A125976(n+1)]`
-/

namespace A266879.P2026208891252959709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125976 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266826 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A266879.P2026208891252959709

/-! ## A266879.P6963146644483004049

`A266826(n+1)+char[A222251(n+1)]`
-/

namespace A266879.P6963146644483004049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266826 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A266879.P6963146644483004049

/-! ## A266879.P12093276491945979591

`A266826(n+1)+A005171(2*(n+1))`
-/

namespace A266879.P12093276491945979591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266826 (n + 1) + A005171 (2 * (n + 1))

end

end A266879.P12093276491945979591

/-! ## A266879.P8581280675244378193

`A266826(n+1)+A007204(n+1)%(n+1)`
-/

namespace A266879.P8581280675244378193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266826 (n + 1) + Int.tmod (A007204 (n + 1)) (n + 1 : ℤ)

end

end A266879.P8581280675244378193

/-!
# A266880: Number of 4Xn arrays containing n copies of 0..4-1 with no element 1 greater than its north, southwest or northwest neighbor modulo 4 and the upper left element equal to 0.

The programs for A266880, there is no canonical definition to state claims against.
-/

/-! ## A266880.P781817093570872344

`A266878(∑[n+3]+7)`
-/

namespace A266880.P781817093570872344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266878 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A266880.P781817093570872344

/-!
# A266881: Number of 5Xn arrays containing n copies of 0..5-1 with no element 1 greater than its north, southwest or northwest neighbor modulo 5 and the upper left element equal to 0.

The programs for A266881, there is no canonical definition to state claims against.
-/

/-! ## A266881.P7830760604329309550

`A266878(A167499(n+3))`
-/

namespace A266881.P7830760604329309550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266878 (A167499 (n + 3)).toNat

end

end A266881.P7830760604329309550

/-! ## A266881.P6010857394557767452

`A266878(A155212(n)+13)`
-/

namespace A266881.P6010857394557767452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266878 (A155212 n + 13).toNat

end

end A266881.P6010857394557767452

/-!
# A266883: Numbers of the form m*(4*m+1)+1, where m = 0,-1,1,-2,2,-3,3,...

The programs for A266883, the canonical program `A266883.P170625457814458120` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266883 has offset 0).

The definition of A266883 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A266883.P170625457814458120

`(2*n+1)*floor((n+1)/2)+1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A266883

/-- `(2*n+1)*floor((n+1)/2)+1` -/
def P170625457814458120.Spec : Prop :=
  ∀ n, P170625457814458120.a n = A266883 n

theorem P170625457814458120.correct : P170625457814458120.Spec := by
  intro n
  simp only [A266883]

end A266883

/-! ## A266883.P6552909910741572262

`∑[n*a(n%2)]` with `a(0)=1, a(1)=3`
-/

namespace A266883.P6552909910741572262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  n * f1 (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266883.P6552909910741572262

namespace A266883

/-- `∑[n*a(n%2)]` -/
def P6552909910741572262.Spec : Prop :=
  ∀ n, (P6552909910741572262.a n : ℤ) = A266883 n

end A266883

/-! ## A266883.P10948339698562001656

`∑[n*a(and(1, n))]` with `a(0)=1, a(1)=3`
-/

namespace A266883.P10948339698562001656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  n * f1 (Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266883.P10948339698562001656

namespace A266883

/-- `∑[n*a(and(1, n))]` -/
def P10948339698562001656.Spec : Prop :=
  ∀ n, (P10948339698562001656.a n : ℤ) = A266883 n

end A266883

/-! ## A266883.P10004296158144322359

`record[C(or(2, n)-2, 2)+2]/2`
-/

namespace A266883.P10004296158144322359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((Nat.lor 2 n : ℤ) - 2).toNat 2 + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2

end

end A266883.P10004296158144322359

namespace A266883

/-- `record[C(or(2, n)-2, 2)+2]/2` -/
def P10004296158144322359.Spec : Prop :=
  ∀ n, P10004296158144322359.a n = (A266883 n : ℚ)

end A266883

/-! ## A266883.P16360799179865166655

`∑[n*a(1-char[2*n])]` with `a(0)=1, a(1)=3`
-/

namespace A266883.P16360799179865166655
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  n * f1 (1 - (if ∃ j, f2 j = n then 1 else 0))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266883.P16360799179865166655

namespace A266883

/-- `∑[n*a(1-char[2*n])]` -/
def P16360799179865166655.Spec : Prop :=
  ∀ n, (P16360799179865166655.a n : ℤ) = A266883 n

end A266883

/-! ## A266883.P17230810612217290728

`∑[2*C(n, a(n-1))+n]` with `a(0)=1`
-/

namespace A266883.P17230810612217290728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * Nat.choose n (f1 (n - 1)) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266883.P17230810612217290728

namespace A266883

/-- `∑[2*C(n, a(n-1))+n]` -/
def P17230810612217290728.Spec : Prop :=
  ∀ n, (P17230810612217290728.a n : ℤ) = A266883 n

end A266883

/-! ## A266883.P431102170968891876

`∑[n*3^floor(n/a(n-1))]` with `a(0)=1`
-/

namespace A266883.P431102170968891876
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) * (3 : ℚ) ^ (⌊(n : ℚ) / f1 (n - 1)⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266883.P431102170968891876

namespace A266883

/-- `∑[n*3^floor(n/a(n-1))]` -/
def P431102170968891876.Spec : Prop :=
  ∀ n, P431102170968891876.a n = (A266883 n : ℚ)

end A266883

/-! ## A266883.P18277798178254349411

`((and(1, n)+n)*(2*n+1)+2)/2`
-/

namespace A266883.P18277798178254349411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.land 1 n + n) * (2 * n + 1) + 2 : ℚ) / 2

end

end A266883.P18277798178254349411

namespace A266883

/-- `((and(1, n)+n)*(2*n+1)+2)/2` -/
def P18277798178254349411.Spec : Prop :=
  ∀ n, P18277798178254349411.a n = (A266883 n : ℚ)

end A266883

/-! ## A266883.P11909274116936988208

`∑[A382154(n)-n]`
-/

namespace A266883.P11909274116936988208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382154 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266883.P11909274116936988208

namespace A266883

/-- `∑[A382154(n)-n]` -/
def P11909274116936988208.Spec : Prop :=
  ∀ n, P11909274116936988208.a n = A266883 n

end A266883

/-! ## A266883.P14805818465349806583

`abs(A245534(n+1)-n)`
-/

namespace A266883.P14805818465349806583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A245534 (n + 1) - (n : ℤ)|

end

end A266883.P14805818465349806583

namespace A266883

/-- `abs(A245534(n+1)-n)` -/
def P14805818465349806583.Spec : Prop :=
  ∀ n, P14805818465349806583.a n = A266883 n

end A266883

/-! ## A266883.P10234608338243661023

`(A193867(n+1)+1)/2`
-/

namespace A266883.P10234608338243661023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193867 (n + 1) + 1 : ℚ) / 2

end

end A266883.P10234608338243661023

namespace A266883

/-- `(A193867(n+1)+1)/2` -/
def P10234608338243661023.Spec : Prop :=
  ∀ n, P10234608338243661023.a n = (A266883 n : ℚ)

end A266883

/-! ## A266883.P10401712568672062822

`∑[A181983(n)+A004277(n)]`
-/

namespace A266883.P10401712568672062822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 n + A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266883.P10401712568672062822

namespace A266883

/-- `∑[A181983(n)+A004277(n)]` -/
def P10401712568672062822.Spec : Prop :=
  ∀ n, P10401712568672062822.a n = A266883 n

end A266883

/-! ## A266883.P18272631241601932769

`∑[A008574(A026741(n))-n]`
-/

namespace A266883.P18272631241601932769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A026741 n).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266883.P18272631241601932769

namespace A266883

/-- `∑[A008574(A026741(n))-n]` -/
def P18272631241601932769.Spec : Prop :=
  ∀ n, P18272631241601932769.a n = A266883 n

end A266883

/-! ## A266883.P18313801704651471538

`∪[A054556(n+1), A054567(n+1)]`
-/

namespace A266883.P18313801704651471538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054567 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A266883.P18313801704651471538

namespace A266883

/-- `∪[A054556(n+1), A054567(n+1)]` -/
def P18313801704651471538.Spec : Prop :=
  ∀ n, (P18313801704651471538.a n : ℤ) = A266883 n

end A266883

/-! ## A266883.P13657104955828122325

`∑[A004277(lcm(2, n))-n]`
-/

namespace A266883.P13657104955828122325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (Nat.lcm 2 n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266883.P13657104955828122325

namespace A266883

/-- `∑[A004277(lcm(2, n))-n]` -/
def P13657104955828122325.Spec : Prop :=
  ∀ n, P13657104955828122325.a n = A266883 n

end A266883

/-! ## A266883.P14451655836797864590

`record[(A213671(n+1)+1)/2]`
-/

namespace A266883.P14451655836797864590
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213671 (n + 1) + 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266883.P14451655836797864590

namespace A266883

/-- `record[(A213671(n+1)+1)/2]` -/
def P14451655836797864590.Spec : Prop :=
  ∀ n, P14451655836797864590.a n = (A266883 n : ℚ)

end A266883

/-! ## A266883.P2054948927007332103

`∑[A147657(2*n+1)+2*n]`
-/

namespace A266883.P2054948927007332103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147657 (2 * n + 1) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266883.P2054948927007332103

namespace A266883

/-- `∑[A147657(2*n+1)+2*n]` -/
def P2054948927007332103.Spec : Prop :=
  ∀ n, P2054948927007332103.a n = A266883 n

end A266883

/-! ## A266883.P12871863340997262564

`A000027((A004277(n)+1)*A002265(2*(n+1))+1)`
-/

namespace A266883.P12871863340997262564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((A004277 n + 1) * A002265 (2 * (n + 1)) + 1).toNat

end

end A266883.P12871863340997262564

namespace A266883

/-- `A000027((A004277(n)+1)*A002265(2*(n+1))+1)` -/
def P12871863340997262564.Spec : Prop :=
  ∀ n, P12871863340997262564.a n = A266883 n

end A266883

/-! ## A266883.P13104029891590601127

`∩[2*n, a(n-1)+n]/2` with `a(0)=2`
-/

namespace A266883.P13104029891590601127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) + n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = x) n : ℚ) / 2

end

end A266883.P13104029891590601127

namespace A266883

/-- `∩[2*n, a(n-1)+n]/2` -/
def P13104029891590601127.Spec : Prop :=
  ∀ n, P13104029891590601127.a n = (A266883 n : ℚ)

end A266883

/-! ## A266883.P14814450994371667110

`A039830(A014601(n))`
-/

namespace A266883.P14814450994371667110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039830 (A014601 n).toNat

end

end A266883.P14814450994371667110

namespace A266883

/-- `A039830(A014601(n))` -/
def P14814450994371667110.Spec : Prop :=
  ∀ n, P14814450994371667110.a n = A266883 n

end A266883

/-!
# A266884: Number of nX2 arrays containing 2 copies of 0..n-1 with no element 1 greater than its north, northeast or northwest neighbor modulo n and the upper left element equal to 0.

The programs for A266884, there is no canonical definition to state claims against.
-/

/-! ## A266884.P5267918419392049212

`A266886(∑[n+2])`
-/

namespace A266884.P5267918419392049212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266886 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A266884.P5267918419392049212

/-! ## A266884.P12750157246092632572

`and(1-n, A266886(record[A213234(n)]))`
-/

namespace A266884.P12750157246092632572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213234 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - (n : ℤ)) (A266886 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A266884.P12750157246092632572

/-! ## A266884.P9919983075277251242

`A266886(record[A213234(n)])+A165091(n)`
-/

namespace A266884.P9919983075277251242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213234 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266886 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A165091 n

end

end A266884.P9919983075277251242

/-! ## A266884.P14585958914891539463

`A266886(record[A213234(n)])+A008683(4*(n+1))`
-/

namespace A266884.P14585958914891539463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213234 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266886 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A008683 (4 * (n + 1))

end

end A266884.P14585958914891539463

/-!
# A266885: Number of nX3 arrays containing 3 copies of 0..n-1 with no element 1 greater than its north, northeast or northwest neighbor modulo n and the upper left element equal to 0.

The programs for A266885, there is no canonical definition to state claims against.
-/

/-! ## A266885.P17583302377472754167

`A266886(∑[n+3]+1)`
-/

namespace A266885.P17583302377472754167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266886 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A266885.P17583302377472754167

/-! ## A266885.P15161250499843182268

`A266886(A034856(n+2))^A178334(n)`
-/

namespace A266885.P15161250499843182268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266886 (A034856 (n + 2)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A266885.P15161250499843182268

/-! ## A266885.P7279078060314150967

`or(A000007(n), A266886(A034856(n+2)))`
-/

namespace A266885.P7279078060314150967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A266886 (A034856 (n + 2)).toNat)

end

end A266885.P7279078060314150967

/-!
# A266886: T(n,k)=Number of nXk arrays containing k copies of 0..n-1 with no element 1 greater than its north, northeast or northwest neighbor modulo n and the upper left element equal to 0.

The programs for A266886, there is no canonical definition to state claims against.
-/

/-! ## A266886.P17784917869223661086

`A262039(A267546(n+1))`
-/

namespace A266886.P17784917869223661086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262039 (A267546 (n + 1)).toNat

end

end A266886.P17784917869223661086

/-! ## A266886.P10173740877976145606

`A123492(A266632(n+1)^((n+1)/∏{p}[n+1, (n+1)/#]))`
-/

namespace A266886.P10173740877976145606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123492 (SequenceMachineLib.roundAway ((A266632 (n + 1) : ℝ) ^ (((n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ)) : ℚ) : ℝ))).toNat

end

end A266886.P10173740877976145606

/-! ## A266886.P3960750670284831339

`A123492(A266632(n+1)^A008327(n))`
-/

namespace A266886.P3960750670284831339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123492 (SequenceMachineLib.roundAway ((A266632 (n + 1) : ℚ) ^ (A008327 n : ℤ))).toNat

end

end A266886.P3960750670284831339

/-! ## A266886.P2395323760772780802

`A123492(A266632(n+1)^A219347(n))`
-/

namespace A266886.P2395323760772780802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123492 (SequenceMachineLib.roundAway ((A266632 (n + 1) : ℚ) ^ (A219347 n : ℤ))).toNat

end

end A266886.P2395323760772780802

/-! ## A266886.P4062847043024917723

`A262038(A266632(n+1)^A111673(n))`
-/

namespace A266886.P4062847043024917723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (SequenceMachineLib.roundAway ((A266632 (n + 1) : ℚ) ^ (A111673 n : ℤ))).toNat

end

end A266886.P4062847043024917723

/-!
# A266887: Number of 3Xn arrays containing n copies of 0..3-1 with no element 1 greater than its north, northeast or northwest neighbor modulo 3 and the upper left element equal to 0.

The programs for A266887, there is no canonical definition to state claims against.
-/

/-! ## A266887.P1670527494364694226

`A267264(∑[n+2]+4)`
-/

namespace A266887.P1670527494364694226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267264 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A266887.P1670527494364694226

/-! ## A266887.P3629075276782042792

`or(1, A267264(A167614(n+1)))`
-/

namespace A266887.P3629075276782042792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A267264 (A167614 (n + 1)).toNat)

end

end A266887.P3629075276782042792

/-! ## A266887.P6039051882749676011

`or(1, A267264(A055998(n)+6))`
-/

namespace A266887.P6039051882749676011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A267264 (A055998 n + 6).toNat)

end

end A266887.P6039051882749676011

/-! ## A266887.P12722901056469003257

`or(1, A267264(A046691(n)+7))`
-/

namespace A266887.P12722901056469003257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A267264 (A046691 n + 7).toNat)

end

end A266887.P12722901056469003257

/-! ## A266887.P1374456297394133872

`A267264(A167614(n+1))+A061858(n)`
-/

namespace A266887.P1374456297394133872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267264 (A167614 (n + 1)).toNat + A061858 n

end

end A266887.P1374456297394133872

/-!
# A266888: Number of 4 X n arrays containing n copies of 0..4-1 with no element 1 greater than its north, northeast or northwest neighbor modulo 4 and the upper left element equal to 0.

The programs for A266888, there is no canonical definition to state claims against.
-/

/-! ## A266888.P16580578673038717728

`A266886(∑[n+3]+7)`
-/

namespace A266888.P16580578673038717728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266886 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A266888.P16580578673038717728

/-!
# A266889: Number of 5Xn arrays containing n copies of 0..5-1 with no element 1 greater than its north, northeast or northwest neighbor modulo 5 and the upper left element equal to 0.

The programs for A266889, there is no canonical definition to state claims against.
-/

/-! ## A266889.P3106950015655374503

`A266886(C(n+5, 2)+5)`
-/

namespace A266889.P3106950015655374503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266886 (Nat.choose (n + 5) 2 + 5)

end

end A266889.P3106950015655374503

/-! ## A266889.P1558195850857206613

`A266886(A167499(n+3))`
-/

namespace A266889.P1558195850857206613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266886 (A167499 (n + 3)).toNat

end

end A266889.P1558195850857206613

/-!
# A266890: Squares whose arithmetic derivative is a square.

The programs for A266890, there is no canonical definition to state claims against.
-/

/-! ## A266890.P2771732989777146317

`∩[A256706(n+1), n²]`
-/

namespace A266890.P2771732989777146317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256706 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A266890.P2771732989777146317

/-! ## A266890.P13280959470315439064

`∩[A000290(n), A256706(n+1)]`
-/

namespace A266890.P13280959470315439064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266890.P13280959470315439064

/-!
# A266891: Expansion of Product_{k>=1} (1 + k*x^k)^k.

The programs for A266891, there is no canonical definition to state claims against.
-/

/-! ## A266891.P17741227226421991701

`A002203(n)-A122200(A255835(n))`
-/

namespace A266891.P17741227226421991701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n - A122200 (A255835 n).toNat

end

end A266891.P17741227226421991701

/-! ## A266891.P2997614502562960190

`A134478(A283667(n)-A019565(n))`
-/

namespace A266891.P2997614502562960190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (A283667 n - A019565 n).toNat

end

end A266891.P2997614502562960190

/-! ## A266891.P16186678293244519401

`A002203(n)-A323719(A000071(n+5))`
-/

namespace A266891.P16186678293244519401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n - A323719 (A000071 (n + 5)).toNat

end

end A266891.P16186678293244519401

/-!
# A266892: Triangle read by rows giving successive states of cellular automaton generated by "Rule 75" initiated with a single ON (black) cell.

The programs for A266892, there is no canonical definition to state claims against.
-/

/-! ## A266892.P12802646471490636700

`A267037(A020703(n+1)-1)`
-/

namespace A266892.P12802646471490636700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267037 (A020703 (n + 1) - 1).toNat

end

end A266892.P12802646471490636700

/-! ## A266892.P17990381840310401961

`A267037(A020703(n+2))`
-/

namespace A266892.P17990381840310401961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267037 (A020703 (n + 2)).toNat

end

end A266892.P17990381840310401961

/-! ## A266892.P16206058101464660988

`A271377(A064789(n+1))%2`
-/

namespace A266892.P16206058101464660988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271377 (A064789 (n + 1)).toNat) 2

end

end A266892.P16206058101464660988

/-! ## A266892.P8497367355986709895

`and(A020737(n), A271377(A064789(n+1)))`
-/

namespace A266892.P8497367355986709895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A271377 (A064789 (n + 1)).toNat)

end

end A266892.P8497367355986709895

/-! ## A266892.P7969828844590972850

`and(A027608(n), A271377(A064789(n+1)))`
-/

namespace A266892.P7969828844590972850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027608 n) (A271377 (A064789 (n + 1)).toNat)

end

end A266892.P7969828844590972850

/-!
# A266893: Binary representation of the n-th iteration of the "Rule 75" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266893, there is no canonical definition to state claims against.
-/

/-! ## A266893.P416219871601783641

`A007088(A266894(n))`
-/

namespace A266893.P416219871601783641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A266894 n).toNat

end

end A266893.P416219871601783641

/-! ## A266893.P10332744620359476214

`A185544(2*A266894(n))`
-/

namespace A266893.P10332744620359476214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A266894 n).toNat

end

end A266893.P10332744620359476214

/-!
# A266895: Middle column of the "Rule 75" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266895, there is no canonical definition to state claims against.
-/

/-! ## A266895.P1934216046366135474

`A266897(n)%2`
-/

namespace A266895.P1934216046366135474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266897 n) 2

end

end A266895.P1934216046366135474

/-! ## A266895.P5011149093987394836

`and(A060576(n), A266897(n))`
-/

namespace A266895.P5011149093987394836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060576 n) (A266897 n)

end

end A266895.P5011149093987394836

/-! ## A266895.P12838169241956617442

`and(A158388(n), A266897(n))`
-/

namespace A266895.P12838169241956617442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158388 n) (A266897 n)

end

end A266895.P12838169241956617442

/-! ## A266895.P17776158133186960876

`and(A179184(n), A266897(n))`
-/

namespace A266895.P17776158133186960876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A179184 n) (A266897 n)

end

end A266895.P17776158133186960876

/-! ## A266895.P15127061088277925487

`and(A185114(n), A266897(n))`
-/

namespace A266895.P15127061088277925487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185114 n) (A266897 n)

end

end A266895.P15127061088277925487

/-! ## A266895.P1747904665723208304

`and(A266897(n), A267537(n))`
-/

namespace A266895.P1747904665723208304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266897 n) (A267537 n)

end

end A266895.P1747904665723208304

/-! ## A266895.P15527559964903383296

`and(A266897(n), A267869(n))`
-/

namespace A266895.P15527559964903383296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266897 n) (A267869 n)

end

end A266895.P15527559964903383296

/-! ## A266895.P4510646922389746841

`and(A266897(n), A267870(n))`
-/

namespace A266895.P4510646922389746841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266897 n) (A267870 n)

end

end A266895.P4510646922389746841

/-! ## A266895.P6479555047829827353

`and(A266897(n), A267871(n))`
-/

namespace A266895.P6479555047829827353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266897 n) (A267871 n)

end

end A266895.P6479555047829827353

/-! ## A266895.P11684602900322212441

`and(A266897(n), A267927(n))`
-/

namespace A266895.P11684602900322212441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266897 n) (A267927 n)

end

end A266895.P11684602900322212441

/-! ## A266895.P6415709060910732647

`and(A266897(n), A329684(n))`
-/

namespace A266895.P6415709060910732647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266897 n) (A329684 n)

end

end A266895.P6415709060910732647

/-! ## A266895.P1079487998012631511

`and(A048578(n), A266897(n))`
-/

namespace A266895.P1079487998012631511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A266897 n)

end

end A266895.P1079487998012631511

/-! ## A266895.P10690778320437575500

`and(A066827(n+1), A266897(n))`
-/

namespace A266895.P10690778320437575500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066827 (n + 1)) (A266897 n)

end

end A266895.P10690778320437575500

/-! ## A266895.P1442679319005031782

`and(A020737(n), A266897(n))`
-/

namespace A266895.P1442679319005031782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A266897 n)

end

end A266895.P1442679319005031782

/-! ## A266895.P4430807159652515050

`and(A195744(n), A266897(n))`
-/

namespace A266895.P4430807159652515050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A195744 n) (A266897 n)

end

end A266895.P4430807159652515050

/-! ## A266895.P6351970297848903187

`and(A122041(n+1), A266897(n))`
-/

namespace A266895.P6351970297848903187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122041 (n + 1)) (A266897 n)

end

end A266895.P6351970297848903187

/-! ## A266895.P15544110830192731887

`and(A196657(n), A266897(n))`
-/

namespace A266895.P15544110830192731887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A196657 n) (A266897 n)

end

end A266895.P15544110830192731887

/-! ## A266895.P28122695905779612

`and(A048479(n), A266897(n))`
-/

namespace A266895.P28122695905779612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048479 n) (A266897 n)

end

end A266895.P28122695905779612

/-!
# A266896: Binary representation of the middle column of the "Rule 75" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266896, there is no canonical definition to state claims against.
-/

/-! ## A266896.P3578427845152476252

`A266895(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A266896.P3578427845152476252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A266895 n + 10 * a (n - 1)

end

end A266896.P3578427845152476252

/-! ## A266896.P14839729275988169777

`A007088(A266897(n))`
-/

namespace A266896.P14839729275988169777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A266897 n).toNat

end

end A266896.P14839729275988169777

/-! ## A266896.P9502416197615778344

`A185544(2*A266897(n))`
-/

namespace A266896.P9502416197615778344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A266897 n).toNat

end

end A266896.P9502416197615778344

/-! ## A266896.P16607709187922747562

`A267155(n)+10*a(n-1)-A267155(A185544(n))` with `a(0)=1`
-/

namespace A266896.P16607709187922747562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A267155 n + 10 * a (n - 1) - A267155 (A185544 n).toNat

end

end A266896.P16607709187922747562

/-!
# A266897: Decimal representation of the middle column of the "Rule 75" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266897, there is no canonical definition to state claims against.
-/

/-! ## A266897.P17732123435388425843

`or(2*a(n-1), A266895(n))` with `a(0)=1`
-/

namespace A266897.P17732123435388425843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (2 * a (n - 1)) (A266895 n)

end

end A266897.P17732123435388425843

/-! ## A266897.P9229438477988630016

`or(A005843(a(n-1)), A266895(n))` with `a(0)=1`
-/

namespace A266897.P9229438477988630016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (A005843 (a (n - 1)).toNat) (A266895 n)

end

end A266897.P9229438477988630016

/-! ## A266897.P17375303588042076261

`A259195(n)+A059543(A000079(n))`
-/

namespace A266897.P17375303588042076261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259195 n + A059543 (A000079 n).toNat

end

end A266897.P17375303588042076261

/-! ## A266897.P12216970766778175676

`A335133(A266446(n))`
-/

namespace A266897.P12216970766778175676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335133 (A266446 n).toNat

end

end A266897.P12216970766778175676

/-! ## A266897.P12679741275937235025

`A005378(∑[A131090(n+3)])`
-/

namespace A266897.P12679741275937235025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131090 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A266897.P12679741275937235025

/-!
# A266898: Number of ON (black) cells in the n-th iteration of the "Rule 75" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266898, there is no canonical definition to state claims against.
-/

/-! ## A266898.P18369431730544491979

`Δ[n²]-A266900(n)`
-/

namespace A266898.P18369431730544491979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A266900 n

end

end A266898.P18369431730544491979

/-! ## A266898.P5501041204904090440

`abs(Δ[A266899(abs(1-n))])`
-/

namespace A266898.P5501041204904090440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266899 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A266898.P5501041204904090440

/-! ## A266898.P12323734636989024337

`n+1-A266900(n%(n+1))+n`
-/

namespace A266898.P12323734636989024337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A266900 (n % (n + 1)) + (n : ℤ)

end

end A266898.P12323734636989024337

/-! ## A266898.P9921518135428569297

`A005843(n)+1-A266900(n)`
-/

namespace A266898.P9921518135428569297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (1 - A266900 n)

end

end A266898.P9921518135428569297

/-! ## A266898.P17180052597007328792

`A004277(n+1)-(A266900(n)+1)`
-/

namespace A266898.P17180052597007328792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1) - (A266900 n + 1)

end

end A266898.P17180052597007328792

/-! ## A266898.P5884762617557189084

`A000027(n+1)+n-A266900(n)`
-/

namespace A266898.P5884762617557189084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + ((n : ℤ) - A266900 n)

end

end A266898.P5884762617557189084

/-! ## A266898.P12768649928556085207

`A016789(n)-(A266900(n)+1+n)`
-/

namespace A266898.P12768649928556085207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - (A266900 n + 1 + (n : ℤ))

end

end A266898.P12768649928556085207

/-! ## A266898.P3785265087740160029

`A011772(∑[n+1])+n-A266900(n)`
-/

namespace A266898.P3785265087740160029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (∑ j ∈ Finset.range (n + 1), f1 j) + ((n : ℤ) - A266900 n)

end

end A266898.P3785265087740160029

/-!
# A266899: Total number of ON (black) cells after n iterations of the "Rule 75" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266899, there is no canonical definition to state claims against.
-/

/-! ## A266899.P7317185452538368947

`∑[A266898(n)]`
-/

namespace A266899.P7317185452538368947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266899.P7317185452538368947

/-! ## A266899.P5974502888071087528

`(n+1)²-A266901(n)`
-/

namespace A266899.P5974502888071087528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A266901 n

end

end A266899.P5974502888071087528

/-! ## A266899.P4630650806743680886

`∑[Δ[n²]-A266900(n)]`
-/

namespace A266899.P4630650806743680886
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A266900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266899.P4630650806743680886

/-! ## A266899.P10386894757587534808

`(n+1)²-∑[A266900(n%(n+1))]`
-/

namespace A266899.P10386894757587534808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266900 (n % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266899.P10386894757587534808

/-! ## A266899.P16620050448297810434

`A002378(n)+1-A266901(n)+n`
-/

namespace A266899.P16620050448297810434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n + (1 - A266901 n + (n : ℤ))

end

end A266899.P16620050448297810434

/-! ## A266899.P955929434768667000

`∑[∑{digits}[A266893(n), #]]`
-/

namespace A266899.P955929434768667000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266893 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266899.P955929434768667000

