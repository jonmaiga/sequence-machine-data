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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A183300: Positive integers not of the form 2n^2.

The programs for A183300, the canonical program `A183300.P1877934119881250041` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183300 has offset 1).

The definition of A183300 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A183300.P1877934119881250041

`n+1+floor(sqrt((n+1)/2)+1/4)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A183300

/-- `n+1+floor(sqrt((n+1)/2)+1/4)` -/
def P1877934119881250041.Spec : Prop :=
  ∀ n, P1877934119881250041.a n = A183300 (n + 1)

theorem P1877934119881250041.correct : P1877934119881250041.Spec := by
  intro n
  simp only [A183300, Nat.add_sub_cancel]

end A183300

/-! ## A183300.P8024204735487530579

`comp[n^gcd(2, n)]/2`
-/

namespace A183300.P8024204735487530579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.gcd 2 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) / 2

end

end A183300.P8024204735487530579

namespace A183300

/-- `comp[n^gcd(2, n)]/2` -/
def P8024204735487530579.Spec : Prop :=
  ∀ n, P8024204735487530579.a n = (A183300 (n + 1) : ℚ)

end A183300

/-! ## A183300.P18017707804432856732

`comp[n*2*n]%comp[∑[n]]`
-/

namespace A183300.P18017707804432856732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

end

end A183300.P18017707804432856732

namespace A183300

/-- `comp[n*2*n]%comp[∑[n]]` -/
def P18017707804432856732.Spec : Prop :=
  ∀ n, (P18017707804432856732.a n : ℤ) = A183300 (n + 1)

end A183300

/-! ## A183300.P8080043740222397442

`or(a(n-1)+1, char[∑[n]])` with `a(0)=1`
-/

namespace A183300.P8080043740222397442
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (a (n - 1) + 1) (if ∃ j, f1 j = n then 1 else 0)

end

end A183300.P8080043740222397442

namespace A183300

/-- `or(a(n-1)+1, char[∑[n]])` -/
def P8080043740222397442.Spec : Prop :=
  ∀ n, (P8080043740222397442.a n : ℤ) = A183300 (n + 1)

end A183300

/-! ## A183300.P5724400030327219060

`∪[2*n+1, comp[n*2*n]]`
-/

namespace A183300.P5724400030327219060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A183300.P5724400030327219060

namespace A183300

/-- `∪[2*n+1, comp[n*2*n]]` -/
def P5724400030327219060.Spec : Prop :=
  ∀ n, (P5724400030327219060.a n : ℤ) = A183300 (n + 1)

end A183300

/-! ## A183300.P720981367909853701

`comp[A001105(n)]`
-/

namespace A183300.P720981367909853701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183300.P720981367909853701

namespace A183300

/-- `comp[A001105(n)]` -/
def P720981367909853701.Spec : Prop :=
  ∀ n, (P720981367909853701.a n : ℤ) = A183300 (n + 1)

end A183300

/-! ## A183300.P9219402869549965724

`eq[0, A379480(n)]`
-/

namespace A183300.P9219402869549965724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379480 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A183300.P9219402869549965724

namespace A183300

/-- `eq[0, A379480(n)]` -/
def P9219402869549965724.Spec : Prop :=
  ∀ n, (P9219402869549965724.a n : ℤ) = A183300 (n + 1)

end A183300

/-! ## A183300.P4080272331856156695

`comp[A116471(n+1)]`
-/

namespace A183300.P4080272331856156695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183300.P4080272331856156695

namespace A183300

/-- `comp[A116471(n+1)]` -/
def P4080272331856156695.Spec : Prop :=
  ∀ n, (P4080272331856156695.a n : ℤ) = A183300 (n + 1)

end A183300

/-! ## A183300.P11126114595859312738

`A157502(n+1)/2`
-/

namespace A183300.P11126114595859312738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157502 (n + 1) : ℚ) / 2

end

end A183300.P11126114595859312738

namespace A183300

/-- `A157502(n+1)/2` -/
def P11126114595859312738.Spec : Prop :=
  ∀ n, P11126114595859312738.a n = (A183300 (n + 1) : ℚ)

end A183300

/-! ## A183300.P11781436297986183220

`eq[0, A204843(2*n)]`
-/

namespace A183300.P11781436297986183220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204843 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A183300.P11781436297986183220

namespace A183300

/-- `eq[0, A204843(2*n)]` -/
def P11781436297986183220.Spec : Prop :=
  ∀ n, (P11781436297986183220.a n : ℤ) = A183300 (n + 1)

end A183300

/-! ## A183300.P3410156725050720738

`eq[0, A379952(2*n)]`
-/

namespace A183300.P3410156725050720738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379952 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A183300.P3410156725050720738

namespace A183300

/-- `eq[0, A379952(2*n)]` -/
def P3410156725050720738.Spec : Prop :=
  ∀ n, (P3410156725050720738.a n : ℤ) = A183300 (n + 1)

end A183300

/-! ## A183300.P992530241131993779

`eq[1, A056926(2*n)]`
-/

namespace A183300.P992530241131993779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A183300.P992530241131993779

namespace A183300

/-- `eq[1, A056926(2*n)]` -/
def P992530241131993779.Spec : Prop :=
  ∀ n, (P992530241131993779.a n : ℤ) = A183300 (n + 1)

end A183300

/-! ## A183300.P14059148290316872622

`lt[1, A169695(2*n)]`
-/

namespace A183300.P14059148290316872622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A183300.P14059148290316872622

namespace A183300

/-- `lt[1, A169695(2*n)]` -/
def P14059148290316872622.Spec : Prop :=
  ∀ n, (P14059148290316872622.a n : ℤ) = A183300 (n + 1)

end A183300

/-! ## A183300.P16247895217902062137

`lt[1, A191521(2*n)]`
-/

namespace A183300.P16247895217902062137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191521 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A183300.P16247895217902062137

namespace A183300

/-- `lt[1, A191521(2*n)]` -/
def P16247895217902062137.Spec : Prop :=
  ∀ n, (P16247895217902062137.a n : ℤ) = A183300 (n + 1)

end A183300

/-! ## A183300.P18106382307335835736

`∑[char[A103217(n)]+1]`
-/

namespace A183300.P18106382307335835736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103217 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183300.P18106382307335835736

namespace A183300

/-- `∑[char[A103217(n)]+1]` -/
def P18106382307335835736.Spec : Prop :=
  ∀ n, (P18106382307335835736.a n : ℤ) = A183300 (n + 1)

end A183300

/-! ## A183300.P17320016268558432494

`eq[A000161(n), A025435(n)]`
-/

namespace A183300.P17320016268558432494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A183300.P17320016268558432494

namespace A183300

/-- `eq[A000161(n), A025435(n)]` -/
def P17320016268558432494.Spec : Prop :=
  ∀ n, (P17320016268558432494.a n : ℤ) = A183300 (n + 1)

end A183300

/-! ## A183300.P1100966190806232158

`eq[0, char[2*n²]]`
-/

namespace A183300.P1100966190806232158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A183300.P1100966190806232158

namespace A183300

/-- `eq[0, char[2*n²]]` -/
def P1100966190806232158.Spec : Prop :=
  ∀ n, (P1100966190806232158.a n : ℤ) = A183300 (n + 1)

end A183300

/-! ## A183300.P5528544876157317843

`lt[char[2*n²], 1]`
-/

namespace A183300.P5528544876157317843
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A183300.P5528544876157317843

namespace A183300

/-- `lt[char[2*n²], 1]` -/
def P5528544876157317843.Spec : Prop :=
  ∀ n, (P5528544876157317843.a n : ℤ) = A183300 (n + 1)

end A183300

/-!
# A183301: Complement of A014105.

The programs for A183301, the canonical program `A183301.P14945938495758224027` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183301 has offset 1).

The definition of A183301 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A183301.P14945938495758224027

`n+1+floor(sqrt(n/2))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A183301

/-- `n+1+floor(sqrt(n/2))` -/
def P14945938495758224027.Spec : Prop :=
  ∀ n, P14945938495758224027.a n = A183301 (n + 1)

theorem P14945938495758224027.correct : P14945938495758224027.Spec := by
  intro n
  simp only [A183301, Nat.add_sub_cancel]

end A183301

/-! ## A183301.P7729815446418341703

`comp[C(or(1, n), 2)]`
-/

namespace A183301.P7729815446418341703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 1 n) 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A183301.P7729815446418341703

namespace A183301

/-- `comp[C(or(1, n), 2)]` -/
def P7729815446418341703.Spec : Prop :=
  ∀ n, (P7729815446418341703.a n : ℤ) = A183301 (n + 1)

end A183301

/-! ## A183301.P8260622343548947252

`comp[C(Δ[n²], 2)]`
-/

namespace A183301.P8260622343548947252
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A183301.P8260622343548947252

namespace A183301

/-- `comp[C(Δ[n²], 2)]` -/
def P8260622343548947252.Spec : Prop :=
  ∀ n, (P8260622343548947252.a n : ℤ) = A183301 (n + 1)

end A183301

/-! ## A183301.P528851117524542299

`round(sqrt(comp[C(2*n+1, 2)]²+1))`
-/

namespace A183301.P528851117524542299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2 + 1 : ℝ))

end

end A183301.P528851117524542299

namespace A183301

/-- `round(sqrt(comp[C(2*n+1, 2)]²+1))` -/
def P528851117524542299.Spec : Prop :=
  ∀ n, P528851117524542299.a n = A183301 (n + 1)

end A183301

/-! ## A183301.P5288814972881326439

`comp[A014105(n)]`
-/

namespace A183301.P5288814972881326439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183301.P5288814972881326439

namespace A183301

/-- `comp[A014105(n)]` -/
def P5288814972881326439.Spec : Prop :=
  ∀ n, (P5288814972881326439.a n : ℤ) = A183301 (n + 1)

end A183301

/-! ## A183301.P3733243431180499022

`comp[A327889(n+1)]`
-/

namespace A183301.P3733243431180499022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183301.P3733243431180499022

namespace A183301

/-- `comp[A327889(n+1)]` -/
def P3733243431180499022.Spec : Prop :=
  ∀ n, (P3733243431180499022.a n : ℤ) = A183301 (n + 1)

end A183301

/-! ## A183301.P8505451909711734121

`∑[char[A004277((n+1)²)]+1]`
-/

namespace A183301.P8505451909711734121
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 ((n + 1) ^ 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183301.P8505451909711734121

namespace A183301

/-- `∑[char[A004277((n+1)²)]+1]` -/
def P8505451909711734121.Spec : Prop :=
  ∀ n, (P8505451909711734121.a n : ℤ) = A183301 (n + 1)

end A183301

/-! ## A183301.P8378787708890444906

`∑[char[∑[A004277(2*n+1)]]+1]`
-/

namespace A183301.P8378787708890444906
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183301.P8378787708890444906

namespace A183301

/-- `∑[char[∑[A004277(2*n+1)]]+1]` -/
def P8378787708890444906.Spec : Prop :=
  ∀ n, (P8378787708890444906.a n : ℤ) = A183301 (n + 1)

end A183301

/-! ## A183301.P5822971421445630773

`∪[A014132(n+1), A084265(n)]`
-/

namespace A183301.P5822971421445630773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084265 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A183301.P5822971421445630773

namespace A183301

/-- `∪[A014132(n+1), A084265(n)]` -/
def P5822971421445630773.Spec : Prop :=
  ∀ n, (P5822971421445630773.a n : ℤ) = A183301 (n + 1)

end A183301

/-! ## A183301.P18062705588534310878

`∪[A014132(n+1), A165776(n)]`
-/

namespace A183301.P18062705588534310878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165776 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A183301.P18062705588534310878

namespace A183301

/-- `∪[A014132(n+1), A165776(n)]` -/
def P18062705588534310878.Spec : Prop :=
  ∀ n, (P18062705588534310878.a n : ℤ) = A183301 (n + 1)

end A183301

/-! ## A183301.P7742744690801663240

`∪[A014132(n+1), A265225(n)]`
-/

namespace A183301.P7742744690801663240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265225 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A183301.P7742744690801663240

namespace A183301

/-- `∪[A014132(n+1), A265225(n)]` -/
def P7742744690801663240.Spec : Prop :=
  ∀ n, (P7742744690801663240.a n : ℤ) = A183301 (n + 1)

end A183301

/-! ## A183301.P8432338579291771086

`∪[A007606(n+1), A014132(n+1)]`
-/

namespace A183301.P8432338579291771086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A183301.P8432338579291771086

namespace A183301

/-- `∪[A007606(n+1), A014132(n+1)]` -/
def P8432338579291771086.Spec : Prop :=
  ∀ n, (P8432338579291771086.a n : ℤ) = A183301 (n + 1)

end A183301

/-! ## A183301.P17912016397291299420

`∪[A014132(n+1), A093005(n+1)]`
-/

namespace A183301.P17912016397291299420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A183301.P17912016397291299420

namespace A183301

/-- `∪[A014132(n+1), A093005(n+1)]` -/
def P17912016397291299420.Spec : Prop :=
  ∀ n, (P17912016397291299420.a n : ℤ) = A183301 (n + 1)

end A183301

/-! ## A183301.P11289214213680752300

`∪[A007606(n+1), A162917(n+1)]`
-/

namespace A183301.P11289214213680752300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A183301.P11289214213680752300

namespace A183301

/-- `∪[A007606(n+1), A162917(n+1)]` -/
def P11289214213680752300.Spec : Prop :=
  ∀ n, (P11289214213680752300.a n : ℤ) = A183301 (n + 1)

end A183301

/-! ## A183301.P11863087664426745977

`∪[A014132(n+1), A162917(n+1)]`
-/

namespace A183301.P11863087664426745977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A183301.P11863087664426745977

namespace A183301

/-- `∪[A014132(n+1), A162917(n+1)]` -/
def P11863087664426745977.Spec : Prop :=
  ∀ n, (P11863087664426745977.a n : ℤ) = A183301 (n + 1)

end A183301

/-! ## A183301.P6049910517116965637

`∪[A014132(n+1), A185868(n+1)]`
-/

namespace A183301.P6049910517116965637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A183301.P6049910517116965637

namespace A183301

/-- `∪[A014132(n+1), A185868(n+1)]` -/
def P6049910517116965637.Spec : Prop :=
  ∀ n, (P6049910517116965637.a n : ℤ) = A183301 (n + 1)

end A183301

/-! ## A183301.P1321525738024530587

`eq[0, char[C(2*n+1, 2)]]`
-/

namespace A183301.P1321525738024530587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A183301.P1321525738024530587

namespace A183301

/-- `eq[0, char[C(2*n+1, 2)]]` -/
def P1321525738024530587.Spec : Prop :=
  ∀ n, (P1321525738024530587.a n : ℤ) = A183301 (n + 1)

end A183301

/-! ## A183301.P3510897879032157527

`lt[char[C(2*n+1, 2)], 1]`
-/

namespace A183301.P3510897879032157527
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A183301.P3510897879032157527

namespace A183301

/-- `lt[char[C(2*n+1, 2)], 1]` -/
def P3510897879032157527.Spec : Prop :=
  ∀ n, (P3510897879032157527.a n : ℤ) = A183301 (n + 1)

end A183301

/-!
# A183302: Complement of A014106.

The programs for A183302, the canonical program `A183302.P991472531218603923` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183302 has offset 1).

The definition of A183302 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183302.P7754644575410429212

`comp[∑[4*n]+n]`
-/

namespace A183302.P7754644575410429212
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A183302.P7754644575410429212

namespace A183302

/-- `comp[∑[4*n]+n]` -/
def P7754644575410429212.Spec : Prop :=
  ∀ n, (P7754644575410429212.a n : ℤ) = A183302 (n + 1)

end A183302

/-! ## A183302.P429167185570092257

`comp[C(2*n, 2)]-1`
-/

namespace A183302.P429167185570092257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - 1

end

end A183302.P429167185570092257

namespace A183302

/-- `comp[C(2*n, 2)]-1` -/
def P429167185570092257.Spec : Prop :=
  ∀ n, P429167185570092257.a n = A183302 (n + 1)

end A183302

/-! ## A183302.P805069164155051277

`round(sqrt(or(1, n)/2)+n)`
-/

namespace A183302.P805069164155051277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((Nat.lor 1 n : ℚ) / 2 : ℝ) + (n : ℝ))

end

end A183302.P805069164155051277

namespace A183302

/-- `round(sqrt(or(1, n)/2)+n)` -/
def P805069164155051277.Spec : Prop :=
  ∀ n, P805069164155051277.a n = A183302 (n + 1)

end A183302

/-! ## A183302.P8503298822279103907

`∑[char[4*C(n, 2)]]+n`
-/

namespace A183302.P8503298822279103907
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose n 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A183302.P8503298822279103907

namespace A183302

/-- `∑[char[4*C(n, 2)]]+n` -/
def P8503298822279103907.Spec : Prop :=
  ∀ n, (P8503298822279103907.a n : ℤ) = A183302 (n + 1)

end A183302

/-! ## A183302.P8417094219625637884

`round(sqrt(cosh(log(n+1)))+n)`
-/

namespace A183302.P8417094219625637884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Real.cosh (Real.log (n + 1 : ℝ))) + (n : ℝ))

end

end A183302.P8417094219625637884

namespace A183302

/-- `round(sqrt(cosh(log(n+1)))+n)` -/
def P8417094219625637884.Spec : Prop :=
  ∀ n, P8417094219625637884.a n = A183302 (n + 1)

end A183302

/-! ## A183302.P14401211928070324888

`comp[n*xor(1, 2*(n-1))]-1`
-/

namespace A183302.P14401211928070324888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.xor 1 (2 * ((n : ℤ) - 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 1

end

end A183302.P14401211928070324888

namespace A183302

/-- `comp[n*xor(1, 2*(n-1))]-1` -/
def P14401211928070324888.Spec : Prop :=
  ∀ n, P14401211928070324888.a n = A183302 (n + 1)

end A183302

/-! ## A183302.P1503068593668493661

`comp[A000384(n)]-1`
-/

namespace A183302.P1503068593668493661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 1

end

end A183302.P1503068593668493661

namespace A183302

/-- `comp[A000384(n)]-1` -/
def P1503068593668493661.Spec : Prop :=
  ∀ n, P1503068593668493661.a n = A183302 (n + 1)

end A183302

/-! ## A183302.P991472531218603923

`∑[A003982(n)]+n`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A183302

/-- `∑[A003982(n)]+n` -/
def P991472531218603923.Spec : Prop :=
  ∀ n, P991472531218603923.a n = A183302 (n + 1)

theorem P991472531218603923.correct : P991472531218603923.Spec := by
  intro n
  simp only [A183302, Nat.add_sub_cancel]

end A183302

/-! ## A183302.P14091346408888580624

`A183218(n+1)-1`
-/

namespace A183302.P14091346408888580624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183218 (n + 1) - 1

end

end A183302.P14091346408888580624

namespace A183302

/-- `A183218(n+1)-1` -/
def P14091346408888580624.Spec : Prop :=
  ∀ n, P14091346408888580624.a n = A183302 (n + 1)

end A183302

/-! ## A183302.P7298196777540300776

`eq[0, A132918(n+1)]`
-/

namespace A183302.P7298196777540300776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132918 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A183302.P7298196777540300776

namespace A183302

/-- `eq[0, A132918(n+1)]` -/
def P7298196777540300776.Spec : Prop :=
  ∀ n, (P7298196777540300776.a n : ℤ) = A183302 (n + 1)

end A183302

/-! ## A183302.P3272827609343700125

`round(sqrt(A008619(n))+n)`
-/

namespace A183302.P3272827609343700125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A008619 n : ℝ) + (n : ℝ))

end

end A183302.P3272827609343700125

namespace A183302

/-- `round(sqrt(A008619(n))+n)` -/
def P3272827609343700125.Spec : Prop :=
  ∀ n, P3272827609343700125.a n = A183302 (n + 1)

end A183302

/-! ## A183302.P11326286462567159145

`∑[char[A046092(n)]]+n`
-/

namespace A183302.P11326286462567159145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A183302.P11326286462567159145

namespace A183302

/-- `∑[char[A046092(n)]]+n` -/
def P11326286462567159145.Spec : Prop :=
  ∀ n, (P11326286462567159145.a n : ℤ) = A183302 (n + 1)

end A183302

/-! ## A183302.P2754047278487899998

`A095861(n+1)+1+n`
-/

namespace A183302.P2754047278487899998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095861 (n + 1) + 1 + (n : ℤ)

end

end A183302.P2754047278487899998

namespace A183302

/-- `A095861(n+1)+1+n` -/
def P2754047278487899998.Spec : Prop :=
  ∀ n, P2754047278487899998.a n = A183302 (n + 1)

end A183302

/-! ## A183302.P17956619749739894581

`∑[A004530(2*n+1)]+n`
-/

namespace A183302.P17956619749739894581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004530 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A183302.P17956619749739894581

namespace A183302

/-- `∑[A004530(2*n+1)]+n` -/
def P17956619749739894581.Spec : Prop :=
  ∀ n, P17956619749739894581.a n = A183302 (n + 1)

end A183302

/-! ## A183302.P10091782581252170487

`∑[A053866(2*n+1)]+n`
-/

namespace A183302.P10091782581252170487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053866 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A183302.P10091782581252170487

namespace A183302

/-- `∑[A053866(2*n+1)]+n` -/
def P10091782581252170487.Spec : Prop :=
  ∀ n, P10091782581252170487.a n = A183302 (n + 1)

end A183302

/-! ## A183302.P4965360682740291539

`∑[A098108(2*n+1)]+n`
-/

namespace A183302.P4965360682740291539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098108 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A183302.P4965360682740291539

namespace A183302

/-- `∑[A098108(2*n+1)]+n` -/
def P4965360682740291539.Spec : Prop :=
  ∀ n, P4965360682740291539.a n = A183302 (n + 1)

end A183302

/-! ## A183302.P1802039796839473796

`∑[A143259(2*n+1)]+n`
-/

namespace A183302.P1802039796839473796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143259 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A183302.P1802039796839473796

namespace A183302

/-- `∑[A143259(2*n+1)]+n` -/
def P1802039796839473796.Spec : Prop :=
  ∀ n, P1802039796839473796.a n = A183302 (n + 1)

end A183302

/-! ## A183302.P13569733801276906906

`∑[A181563(2*n+1)]+n`
-/

namespace A183302.P13569733801276906906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181563 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A183302.P13569733801276906906

namespace A183302

/-- `∑[A181563(2*n+1)]+n` -/
def P13569733801276906906.Spec : Prop :=
  ∀ n, P13569733801276906906.a n = A183302 (n + 1)

end A183302

/-! ## A183302.P11519893281055673673

`∑[A000005(Δ[n²])%2]+n`
-/

namespace A183302.P11519893281055673673
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A183302.P11519893281055673673

namespace A183302

/-- `∑[A000005(Δ[n²])%2]+n` -/
def P11519893281055673673.Spec : Prop :=
  ∀ n, P11519893281055673673.a n = A183302 (n + 1)

end A183302

/-! ## A183302.P14114454438436611640

`∑[A000203(2*n+1)%2]+n`
-/

namespace A183302.P14114454438436611640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (2 * n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A183302.P14114454438436611640

namespace A183302

/-- `∑[A000203(2*n+1)%2]+n` -/
def P14114454438436611640.Spec : Prop :=
  ∀ n, P14114454438436611640.a n = A183302 (n + 1)

end A183302

/-!
# A183303: Half the number of n X n binary arrays with no element equal to a strict majority of its horizontal and vertical neighbors.

The programs for A183303, there is no canonical definition to state claims against.
-/

/-! ## A183303.P4144842794958630069

`A183312(∑[4*n]+1)`
-/

namespace A183303.P4144842794958630069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183312 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183303.P4144842794958630069

/-! ## A183303.P8379665575416622295

`record[A003982(n)*A183312(n+1)]`
-/

namespace A183303.P8379665575416622295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A183312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183303.P8379665575416622295

/-! ## A183303.P10178499823100841272

`record[gcd(A049581(n), A183312(n+1))]`
-/

namespace A183303.P10178499823100841272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A183312 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183303.P10178499823100841272

/-! ## A183303.P5314168738441205156

`lcm(A183312(A001844(n)), A329314(n))`
-/

namespace A183303.P5314168738441205156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A183312 (A001844 n).toNat) (A329314 n)

end

end A183303.P5314168738441205156

/-! ## A183303.P83542127963073723

`or(A000007(n), A183312(A001844(n)))`
-/

namespace A183303.P83542127963073723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A183312 (A001844 n).toNat)

end

end A183303.P83542127963073723

/-!
# A183304: Half the number of n X 3 binary arrays with no element equal to a strict majority of its horizontal and vertical neighbors.

The programs for A183304, the canonical program `A183304.P15615270095175276069` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183304 has offset 1).

The definition of A183304 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 291 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183304.P2619131290890121250

`ogf((1+2x+x^2)/(1-2x-x^3))`
-/

namespace A183304.P2619131290890121250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1] [1, -2, 0, -1] n

end

end A183304.P2619131290890121250

namespace A183304

/-- `ogf((1+2x+x^2)/(1-2x-x^3))` -/
def P2619131290890121250.Spec : Prop :=
  ∀ n, P2619131290890121250.a n = A183304 (n + 1)

end A183304

/-! ## A183304.P15615270095175276069

`2*a(n-1)+a(n-3)` with `a(0)=1, a(1)=4, a(2)=9`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A183304

/-- `2*a(n-1)+a(n-3)` -/
def P15615270095175276069.Spec : Prop :=
  ∀ n, (P15615270095175276069.a n : ℤ) = A183304 (n + 1)

theorem P15615270095175276069.correct : P15615270095175276069.Spec := by
  intro n
  simp only [A183304, Nat.add_sub_cancel]

end A183304

/-! ## A183304.P4125833854298061231

`a(n-1)+a(n-1)+a(n-3)` with `a(0)=1, a(1)=4, a(2)=9`
-/

namespace A183304.P4125833854298061231
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 9] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 3))

end

end A183304.P4125833854298061231

namespace A183304

/-- `a(n-1)+a(n-1)+a(n-3)` -/
def P4125833854298061231.Spec : Prop :=
  ∀ n, (P4125833854298061231.a n : ℤ) = A183304 (n + 1)

theorem P4125833854298061231.correct : P4125833854298061231.Spec := by
  intro n
  simp only [A183304, Nat.add_sub_cancel, A183304.P4125833854298061231.a, A183304.P15615270095175276069.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A183304

/-! ## A183304.P349740309466050461

`A335274(n)+A285184(n)`
-/

namespace A183304.P349740309466050461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335274 n + A285184 n

end

end A183304.P349740309466050461

namespace A183304

/-- `A335274(n)+A285184(n)` -/
def P349740309466050461.Spec : Prop :=
  ∀ n, P349740309466050461.a n = A183304 (n + 1)

end A183304

/-! ## A183304.P5664431902437232301

`A214260(n+1)+A214260(n)`
-/

namespace A183304.P5664431902437232301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214260 (n + 1) + A214260 n

end

end A183304.P5664431902437232301

namespace A183304

/-- `A214260(n+1)+A214260(n)` -/
def P5664431902437232301.Spec : Prop :=
  ∀ n, P5664431902437232301.a n = A183304 (n + 1)

end A183304

/-! ## A183304.P4420657668084094416

`A190512(n+1)-A052980(n)`
-/

namespace A183304.P4420657668084094416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190512 (n + 1) - A052980 n

end

end A183304.P4420657668084094416

namespace A183304

/-- `A190512(n+1)-A052980(n)` -/
def P4420657668084094416.Spec : Prop :=
  ∀ n, P4420657668084094416.a n = A183304 (n + 1)

end A183304

/-! ## A183304.P391400270018522270

`A052980(n+2)-A052980(n)`
-/

namespace A183304.P391400270018522270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052980 (n + 2) - A052980 n

end

end A183304.P391400270018522270

namespace A183304

/-- `A052980(n+2)-A052980(n)` -/
def P391400270018522270.Spec : Prop :=
  ∀ n, P391400270018522270.a n = A183304 (n + 1)

end A183304

/-! ## A183304.P4905331945774810203

`A190512(n+1)-abs(A110513(n))`
-/

namespace A183304.P4905331945774810203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190512 (n + 1) - |A110513 n|

end

end A183304.P4905331945774810203

namespace A183304

/-- `A190512(n+1)-abs(A110513(n))` -/
def P4905331945774810203.Spec : Prop :=
  ∀ n, P4905331945774810203.a n = A183304 (n + 1)

end A183304

/-! ## A183304.P5073145912132362347

`A190512(n+1)-A190512(A289207(n+1))`
-/

namespace A183304.P5073145912132362347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190512 (n + 1) - A190512 (A289207 (n + 1)).toNat

end

end A183304.P5073145912132362347

namespace A183304

/-- `A190512(n+1)-A190512(A289207(n+1))` -/
def P5073145912132362347.Spec : Prop :=
  ∀ n, P5073145912132362347.a n = A183304 (n + 1)

end A183304

/-! ## A183304.P17466132035122441832

`A335242(n+1)+A335274(n)+A052980(n)`
-/

namespace A183304.P17466132035122441832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335242 (n + 1) + (A335274 n + A052980 n)

end

end A183304.P17466132035122441832

namespace A183304

/-- `A335242(n+1)+A335274(n)+A052980(n)` -/
def P17466132035122441832.Spec : Prop :=
  ∀ n, P17466132035122441832.a n = A183304 (n + 1)

end A183304

/-! ## A183304.P16409048570880848483

`A335274(n+1)+A190512(n)-A008998(n)`
-/

namespace A183304.P16409048570880848483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335274 (n + 1) + (A190512 n - A008998 n)

end

end A183304.P16409048570880848483

namespace A183304

/-- `A335274(n+1)+A190512(n)-A008998(n)` -/
def P16409048570880848483.Spec : Prop :=
  ∀ n, P16409048570880848483.a n = A183304 (n + 1)

end A183304

/-! ## A183304.P13865468758163454498

`A193641(n+1)+A332647(n)-A332491(n)`
-/

namespace A183304.P13865468758163454498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193641 (n + 1) + (A332647 n - A332491 n)

end

end A183304.P13865468758163454498

namespace A183304

/-- `A193641(n+1)+A332647(n)-A332491(n)` -/
def P13865468758163454498.Spec : Prop :=
  ∀ n, P13865468758163454498.a n = A183304 (n + 1)

end A183304

/-! ## A183304.P11799924771054046297

`Δ[abs(Δ[A110513(n)])]`
-/

namespace A183304.P11799924771054046297
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110513 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183304.P11799924771054046297

namespace A183304

/-- `Δ[abs(Δ[A110513(n)])]` -/
def P11799924771054046297.Spec : Prop :=
  ∀ n, P11799924771054046297.a n = A183304 (n + 1)

end A183304

/-! ## A183304.P12166812939911974671

`A020708(n)-A285184(n+1)`
-/

namespace A183304.P12166812939911974671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020708 n - A285184 (n + 1)

end

end A183304.P12166812939911974671

namespace A183304

/-- `A020708(n)-A285184(n+1)` -/
def P12166812939911974671.Spec : Prop :=
  ∀ n, P12166812939911974671.a n = A183304 (n + 1)

end A183304

/-! ## A183304.P10986266889782398350

`A232059(n+1)-A190512(n)`
-/

namespace A183304.P10986266889782398350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232059 (n + 1) - A190512 n

end

end A183304.P10986266889782398350

namespace A183304

/-- `A232059(n+1)-A190512(n)` -/
def P10986266889782398350.Spec : Prop :=
  ∀ n, P10986266889782398350.a n = A183304 (n + 1)

end A183304

/-! ## A183304.P10286697121891877823

`Δ[A052980(n)+Δ[A008998(n)]]`
-/

namespace A183304.P10286697121891877823
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008998 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052980 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183304.P10286697121891877823

namespace A183304

/-- `Δ[A052980(n)+Δ[A008998(n)]]` -/
def P10286697121891877823.Spec : Prop :=
  ∀ n, P10286697121891877823.a n = A183304 (n + 1)

end A183304

/-! ## A183304.P6472118192622476950

`Δ[A052980(n+1)+A052980(n)]`
-/

namespace A183304.P6472118192622476950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052980 (n + 1) + A052980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183304.P6472118192622476950

namespace A183304

/-- `Δ[A052980(n+1)+A052980(n)]` -/
def P6472118192622476950.Spec : Prop :=
  ∀ n, P6472118192622476950.a n = A183304 (n + 1)

end A183304

/-! ## A183304.P3015109867521826475

`A008998(n+2)-A285184(n+1)`
-/

namespace A183304.P3015109867521826475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008998 (n + 2) - A285184 (n + 1)

end

end A183304.P3015109867521826475

namespace A183304

/-- `A008998(n+2)-A285184(n+1)` -/
def P3015109867521826475.Spec : Prop :=
  ∀ n, P3015109867521826475.a n = A183304 (n + 1)

end A183304

/-! ## A183304.P15756989537069828724

`A332647(n+2)-A193641(n+2)`
-/

namespace A183304.P15756989537069828724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332647 (n + 2) - A193641 (n + 2)

end

end A183304.P15756989537069828724

namespace A183304

/-- `A332647(n+2)-A193641(n+2)` -/
def P15756989537069828724.Spec : Prop :=
  ∀ n, P15756989537069828724.a n = A183304 (n + 1)

end A183304

/-! ## A183304.P18004896540702016324

`A193641(n+2)-A335242(n+2)`
-/

namespace A183304.P18004896540702016324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193641 (n + 2) - A335242 (n + 2)

end

end A183304.P18004896540702016324

namespace A183304

/-- `A193641(n+2)-A335242(n+2)` -/
def P18004896540702016324.Spec : Prop :=
  ∀ n, P18004896540702016324.a n = A183304 (n + 1)

end A183304

/-!
# A183305: Half the number of nX4 binary arrays with no element equal to a strict majority of its horizontal and vertical neighbors.

The programs for A183305, there is no canonical definition to state claims against.
-/

/-! ## A183305.P15106129669541619070

`A183312(A145018(n+4))`
-/

namespace A183305.P15106129669541619070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183312 (A145018 (n + 4)).toNat

end

end A183305.P15106129669541619070

/-! ## A183305.P15160769216741174849

`A183312(A141214(n)+7)`
-/

namespace A183305.P15160769216741174849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183312 (A141214 n + 7).toNat

end

end A183305.P15160769216741174849

/-! ## A183305.P14723788826037444023

`A183312(A052905(n)+9)`
-/

namespace A183305.P14723788826037444023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183312 (A052905 n + 9).toNat

end

end A183305.P14723788826037444023

/-! ## A183305.P2223504887097432454

`A183312(A055999(n)+10)`
-/

namespace A183305.P2223504887097432454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183312 (A055999 n + 10).toNat

end

end A183305.P2223504887097432454

/-! ## A183305.P8743751643451586507

`A183312(Δ[A005586(n)]+5)`
-/

namespace A183305.P8743751643451586507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183312 (f1 (n + 1) - f1 n + 5).toNat

end

end A183305.P8743751643451586507

/-!
# A183306: Half the number of nX5 binary arrays with no element equal to a strict majority of its horizontal and vertical neighbors.

The programs for A183306, there is no canonical definition to state claims against.
-/

/-! ## A183306.P14577788793508332925

`A183312(A000217(n+4)+5)`
-/

namespace A183306.P14577788793508332925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183312 (A000217 (n + 4) + 5).toNat

end

end A183306.P14577788793508332925

/-! ## A183306.P17112991478650036106

`A183312(A027379(n+2)+8)`
-/

namespace A183306.P17112991478650036106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183312 (A027379 (n + 2) + 8).toNat

end

end A183306.P17112991478650036106

/-! ## A183306.P12427452907827969384

`A183312(A000124(n+5)-(n+1))`
-/

namespace A183306.P12427452907827969384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183312 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A183306.P12427452907827969384

/-! ## A183306.P2719692674319686374

`A183312(A374005(n+1))`
-/

namespace A183306.P2719692674319686374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183312 (A374005 (n + 1)).toNat

end

end A183306.P2719692674319686374

/-! ## A183306.P6907461558487161362

`A183312(Δ[A023545(n+1)])`
-/

namespace A183306.P6907461558487161362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183312 (f1 (n + 1) - f1 n).toNat

end

end A183306.P6907461558487161362

/-!
# A183307: Half the number of nX6 binary arrays with no element equal to a strict majority of its horizontal and vertical neighbors.

The programs for A183307, there is no canonical definition to state claims against.
-/

/-! ## A183307.P2488564434681645472

`A183312(A167487(n+4)-1)`
-/

namespace A183307.P2488564434681645472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183312 (A167487 (n + 4) - 1).toNat

end

end A183307.P2488564434681645472

/-! ## A183307.P6490627523971185349

`A183312(A000217(n+5)+6)`
-/

namespace A183307.P6490627523971185349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183312 (A000217 (n + 5) + 6).toNat

end

end A183307.P6490627523971185349

/-! ## A183307.P16284982017398302896

`A183312(A374007(n+1))`
-/

namespace A183307.P16284982017398302896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183312 (A374007 (n + 1)).toNat

end

end A183307.P16284982017398302896

/-! ## A183307.P8164022512554592171

`A183312(A052905(n+3))`
-/

namespace A183307.P8164022512554592171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183312 (A052905 (n + 3)).toNat

end

end A183307.P8164022512554592171

/-! ## A183307.P12205460065641403128

`A183312(eq[3, A219347(n)])`
-/

namespace A183307.P12205460065641403128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183312 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183307.P12205460065641403128

/-!
# A183308: Half the number of nX7 binary arrays with no element equal to a strict majority of its horizontal and vertical neighbors.

The programs for A183308, there is no canonical definition to state claims against.
-/

/-! ## A183308.P453576354803682366

`A183312(A167487(n+5))`
-/

namespace A183308.P453576354803682366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183312 (A167487 (n + 5)).toNat

end

end A183308.P453576354803682366

/-! ## A183308.P12532318259372991197

`A183312(A167499(n+5)+2)`
-/

namespace A183308.P12532318259372991197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183312 (A167499 (n + 5) + 2).toNat

end

end A183308.P12532318259372991197

/-! ## A183308.P14552685536319564334

`A183312(A000217(n+6)+7)`
-/

namespace A183308.P14552685536319564334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183312 (A000217 (n + 6) + 7).toNat

end

end A183308.P14552685536319564334

/-! ## A183308.P2948374765924482224

`A183312(A161680(n+7)+7)`
-/

namespace A183308.P2948374765924482224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183312 (A161680 (n + 7) + 7).toNat

end

end A183308.P2948374765924482224

/-! ## A183308.P11771201737769586143

`A183312(A052905(n+3)+12)`
-/

namespace A183308.P11771201737769586143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183312 (A052905 (n + 3) + 12).toNat

end

end A183308.P11771201737769586143

/-!
# A183309: Half the number of nX8 binary arrays with no element equal to a strict majority of its horizontal and vertical neighbors.

The programs for A183309, there is no canonical definition to state claims against.
-/

/-! ## A183309.P4758701203012954851

`A183312(eq[13, A066657(n)])`
-/

namespace A183309.P4758701203012954851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183312 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183309.P4758701203012954851

/-! ## A183309.P17675520909617061358

`A183312(eq[9, A131818(n+1)])`
-/

namespace A183309.P17675520909617061358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183312 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183309.P17675520909617061358

/-! ## A183309.P17968702171071361229

`A183312(A374009(n+1))`
-/

namespace A183309.P17968702171071361229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183312 (A374009 (n + 1)).toNat

end

end A183309.P17968702171071361229

/-! ## A183309.P16803778249383581263

`A183312(eq[5, A219347(n)])`
-/

namespace A183309.P16803778249383581263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183312 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183309.P16803778249383581263

/-! ## A183309.P15554863868775766337

`A183312(eq[7, A193592(n)])`
-/

namespace A183309.P15554863868775766337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183312 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183309.P15554863868775766337

/-!
# A183310: Half the number of nX9 binary arrays with no element equal to a strict majority of its horizontal and vertical neighbors.

The programs for A183310, there is no canonical definition to state claims against.
-/

/-! ## A183310.P13553442372130697911

`A183312(eq[17, A066657(n)])`
-/

namespace A183310.P13553442372130697911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183312 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183310.P13553442372130697911

/-! ## A183310.P7335671863834565080

`A183312(eq[10, A131818(n+1)])`
-/

namespace A183310.P7335671863834565080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183312 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183310.P7335671863834565080

/-! ## A183310.P1336313000150993003

`A183312(A374010(n+1))`
-/

namespace A183310.P1336313000150993003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183312 (A374010 (n + 1)).toNat

end

end A183310.P1336313000150993003

/-! ## A183310.P7190335153884550993

`A183312(eq[6, A219347(n)])`
-/

namespace A183310.P7190335153884550993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183312 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183310.P7190335153884550993

/-! ## A183310.P15569530381674495064

`A183312(eq[8, A193592(n)])`
-/

namespace A183310.P15569530381674495064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183312 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183310.P15569530381674495064

/-!
# A183311: Half the number of n X 10 binary arrays with no element equal to a strict majority of its horizontal and vertical neighbors.

The programs for A183311, there is no canonical definition to state claims against.
-/

/-! ## A183311.P9937103021185929505

`A183312(A000217(n+9)+10)`
-/

namespace A183311.P9937103021185929505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183312 (A000217 (n + 9) + 10).toNat

end

end A183311.P9937103021185929505

/-! ## A183311.P11372242909714298648

`A183312(eq[11, A131818(n+1)])`
-/

namespace A183311.P11372242909714298648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183312 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183311.P11372242909714298648

/-! ## A183311.P14037156170253813639

`A183312(A374011(n+1))`
-/

namespace A183311.P14037156170253813639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183312 (A374011 (n + 1)).toNat

end

end A183311.P14037156170253813639

/-! ## A183311.P4200194742199836625

`A183312(eq[8, A219347(n)])`
-/

namespace A183311.P4200194742199836625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183312 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183311.P4200194742199836625

/-! ## A183311.P17862061773520175475

`A183312(eq[9, A193592(n)])`
-/

namespace A183311.P17862061773520175475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183312 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183311.P17862061773520175475

/-!
# A183312: T(n,k) = Half the number of n X k binary arrays with no element equal to a strict majority of its horizontal and vertical neighbors.

The programs for A183312, there is no canonical definition to state claims against.
-/

/-! ## A183312.P9668765278593000828

`A329534(A206692(n+1)+1)`
-/

namespace A183312.P9668765278593000828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329534 (A206692 (n + 1) + 1).toNat

end

end A183312.P9668765278593000828

/-! ## A183312.P10478283948700770020

`A156580(n+1)+A046810(A187940(n+1))`
-/

namespace A183312.P10478283948700770020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156580 (n + 1) + A046810 (A187940 (n + 1)).toNat

end

end A183312.P10478283948700770020

/-! ## A183312.P10635415327842042789

`A050446(n)+∑{p}[A050970(n+1), ceil(n/#)]`
-/

namespace A183312.P10635415327842042789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050446 n + ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ⌈(n : ℚ) / (p : ℚ)⌉

end

end A183312.P10635415327842042789

/-! ## A183312.P13089065690397623995

`A001221(A276058(n)!)+A007318(n)`
-/

namespace A183312.P13089065690397623995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A276058 n).toNat) + A007318 n

end

end A183312.P13089065690397623995

/-!
# A183313: Number of n X n binary arrays with an element zero only if there are an even number of ones to its left and an even number of ones above it.

The programs for A183313, there is no canonical definition to state claims against.
-/

/-! ## A183313.P6017206593662710912

`A183322((n+1)²+n²)`
-/

namespace A183313.P6017206593662710912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183322 ((n + 1) ^ 2 + n ^ 2)

end

end A183313.P6017206593662710912

/-! ## A183313.P7288086767898771115

`record[A003982(n)*A183322(n+1)]`
-/

namespace A183313.P7288086767898771115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A183322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183313.P7288086767898771115

/-! ## A183313.P17390134107345967718

`record[gcd(A114327(n), A183322(n+1))]`
-/

namespace A183313.P17390134107345967718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A183322 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183313.P17390134107345967718

/-! ## A183313.P12604190644916253114

`record[root(A183322(n+1), A089913(n+1))]`
-/

namespace A183313.P12604190644916253114
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A183322 (n + 1) : ℝ) ^ (1 / (A089913 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183313.P12604190644916253114

/-! ## A183313.P4306173140534318253

`A183322(A001844(n))+A181838(n)`
-/

namespace A183313.P4306173140534318253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183322 (A001844 n).toNat + A181838 n

end

end A183313.P4306173140534318253

/-!
# A183314: Number of n X 2 binary arrays with an element zero only if there are an even number of ones to its left and an even number of ones above it.

The programs for A183314, the canonical program `A183314.P12405961073867495211` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183314 has offset 1).

The definition of A183314 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 310 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183314.P15857631380413680772

`ogf((3+3x-2x^2-x^3)/(1-x-3x^2+x^3+x^4))`
-/

namespace A183314.P15857631380413680772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 3, -2, -1] [1, -1, -3, 1, 1] n

end

end A183314.P15857631380413680772

namespace A183314

/-- `ogf((3+3x-2x^2-x^3)/(1-x-3x^2+x^3+x^4))` -/
def P15857631380413680772.Spec : Prop :=
  ∀ n, P15857631380413680772.a n = A183314 (n + 1)

end A183314

/-! ## A183314.P12405961073867495211

`a(n-1)+3*a(n-2)-a(n-3)-a(n-4)` with `a(0)=3, a(1)=6, a(2)=13, a(3)=27`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A183314

/-- `a(n-1)+3*a(n-2)-a(n-3)-a(n-4)` -/
def P12405961073867495211.Spec : Prop :=
  ∀ n, P12405961073867495211.a n = A183314 (n + 1)

theorem P12405961073867495211.correct : P12405961073867495211.Spec := by
  intro n
  simp only [A183314, Nat.add_sub_cancel]

end A183314

/-! ## A183314.P16127987760430913373

`A131246(n+1)`
-/

namespace A183314.P16127987760430913373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131246 (n + 1)

end

end A183314.P16127987760430913373

namespace A183314

/-- `A131246(n+1)` -/
def P16127987760430913373.Spec : Prop :=
  ∀ n, P16127987760430913373.a n = A183314 (n + 1)

end A183314

/-! ## A183314.P1861406804850443768

`record[A131246(abs(1-n))]`
-/

namespace A183314.P1861406804850443768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131246 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183314.P1861406804850443768

namespace A183314

/-- `record[A131246(abs(1-n))]` -/
def P1861406804850443768.Spec : Prop :=
  ∀ n, P1861406804850443768.a n = A183314 (n + 1)

end A183314

/-! ## A183314.P11177180528886576916

`A289846(n+1)+A289846(n)`
-/

namespace A183314.P11177180528886576916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289846 (n + 1) + A289846 n

end

end A183314.P11177180528886576916

namespace A183314

/-- `A289846(n+1)+A289846(n)` -/
def P11177180528886576916.Spec : Prop :=
  ∀ n, P11177180528886576916.a n = A183314 (n + 1)

end A183314

/-! ## A183314.P17471707058421507648

`A131322(n+2)+A112576(n)`
-/

namespace A183314.P17471707058421507648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131322 (n + 2) + A112576 n

end

end A183314.P17471707058421507648

namespace A183314

/-- `A131322(n+2)+A112576(n)` -/
def P17471707058421507648.Spec : Prop :=
  ∀ n, P17471707058421507648.a n = A183314 (n + 1)

end A183314

/-! ## A183314.P16555798319445334978

`abs(Δ[A033999(n)*A289846(n)])`
-/

namespace A183314.P16555798319445334978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A289846 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A183314.P16555798319445334978

namespace A183314

/-- `abs(Δ[A033999(n)*A289846(n)])` -/
def P16555798319445334978.Spec : Prop :=
  ∀ n, P16555798319445334978.a n = A183314 (n + 1)

end A183314

/-! ## A183314.P10423337881003298712

`A112576(n+3)-Δ[A112576(n)]`
-/

namespace A183314.P10423337881003298712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112576 (n + 3) - (f1 (n + 1) - f1 n)

end

end A183314.P10423337881003298712

namespace A183314

/-- `A112576(n+3)-Δ[A112576(n)]` -/
def P10423337881003298712.Spec : Prop :=
  ∀ n, P10423337881003298712.a n = A183314 (n + 1)

end A183314

/-! ## A183314.P10035573576871987172

`A192422(n+2)+A192232(n+3)`
-/

namespace A183314.P10035573576871987172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192422 (n + 2) + A192232 (n + 3)

end

end A183314.P10035573576871987172

namespace A183314

/-- `A192422(n+2)+A192232(n+3)` -/
def P10035573576871987172.Spec : Prop :=
  ∀ n, P10035573576871987172.a n = A183314 (n + 1)

end A183314

/-! ## A183314.P14138444954082178310

`A112576(n+3)+A112576(n)-A112576(n+1)`
-/

namespace A183314.P14138444954082178310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112576 (n + 3) + (A112576 n - A112576 (n + 1))

end

end A183314.P14138444954082178310

namespace A183314

/-- `A112576(n+3)+A112576(n)-A112576(n+1)` -/
def P14138444954082178310.Spec : Prop :=
  ∀ n, P14138444954082178310.a n = A183314 (n + 1)

end A183314

/-! ## A183314.P11632047441690833644

`record[A131935(n+2)%A131935(n+1)]`
-/

namespace A183314.P11632047441690833644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131935 (n + 2)) (A131935 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183314.P11632047441690833644

namespace A183314

/-- `record[A131935(n+2)%A131935(n+1)]` -/
def P11632047441690833644.Spec : Prop :=
  ∀ n, P11632047441690833644.a n = A183314 (n + 1)

end A183314

/-!
# A183315: Number of n X 3 binary arrays with an element zero only if there are an even number of ones to its left and an even number of ones above it.

The programs for A183315, there is no canonical definition to state claims against.
-/

/-! ## A183315.P10186648416489063001

`A183322(∑[n+2]+4)`
-/

namespace A183315.P10186648416489063001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183322 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183315.P10186648416489063001

/-! ## A183315.P11665463027967183867

`or(char[14], A183322(A167614(n+1)))`
-/

namespace A183315.P11665463027967183867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A183322 (A167614 (n + 1)).toNat)

end

end A183315.P11665463027967183867

/-! ## A183315.P8485720035350403176

`A014963(60*(n+1))*A183322(A167614(n+1))`
-/

namespace A183315.P8485720035350403176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (60 * (n + 1)) * A183322 (A167614 (n + 1)).toNat

end

end A183315.P8485720035350403176

/-! ## A183315.P11935731369262049671

`A000045(gcd(n, n+1))*A183322(A167614(n+1))`
-/

namespace A183315.P11935731369262049671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.gcd n (n + 1)) * A183322 (A167614 (n + 1)).toNat

end

end A183315.P11935731369262049671

/-! ## A183315.P9868476779882499285

`A000045(A020639(2*(n+1)))*A183322(A167614(n+1))`
-/

namespace A183315.P9868476779882499285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A020639 (2 * (n + 1))).toNat * A183322 (A167614 (n + 1)).toNat

end

end A183315.P9868476779882499285

/-!
# A183316: Number of nX4 binary arrays with an element zero only if there are an even number of ones to its left and an even number of ones above it.

The programs for A183316, there is no canonical definition to state claims against.
-/

/-! ## A183316.P6552753055378491956

`A183322(A374004(n+1))`
-/

namespace A183316.P6552753055378491956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183322 (A374004 (n + 1)).toNat

end

end A183316.P6552753055378491956

/-! ## A183316.P90934073381788997

`A183322(A145018(n+4))`
-/

namespace A183316.P90934073381788997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183322 (A145018 (n + 4)).toNat

end

end A183316.P90934073381788997

/-! ## A183316.P5318110237636427937

`A183322(A141214(n)+7)`
-/

namespace A183316.P5318110237636427937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183322 (A141214 n + 7).toNat

end

end A183316.P5318110237636427937

/-! ## A183316.P5948782156839189666

`A183322(A052905(n)+9)`
-/

namespace A183316.P5948782156839189666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183322 (A052905 n + 9).toNat

end

end A183316.P5948782156839189666

/-! ## A183316.P10146251397947258787

`A183322(A055999(n)+10)`
-/

namespace A183316.P10146251397947258787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183322 (A055999 n + 10).toNat

end

end A183316.P10146251397947258787

/-!
# A183317: Number of nX5 binary arrays with an element zero only if there are an even number of ones to its left and an even number of ones above it.

The programs for A183317, there is no canonical definition to state claims against.
-/

/-! ## A183317.P8826583316171233182

`A183322(A374005(n+1))`
-/

namespace A183317.P8826583316171233182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183322 (A374005 (n + 1)).toNat

end

end A183317.P8826583316171233182

/-! ## A183317.P12103535108530676202

`A183322(A167499(n+3))`
-/

namespace A183317.P12103535108530676202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183322 (A167499 (n + 3)).toNat

end

end A183317.P12103535108530676202

/-! ## A183317.P17501208180326716002

`A183322(A155212(n)+13)`
-/

namespace A183317.P17501208180326716002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183322 (A155212 n + 13).toNat

end

end A183317.P17501208180326716002

/-! ## A183317.P2380381225485128292

`A183322(A167614(n+3)+2)`
-/

namespace A183317.P2380381225485128292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183322 (A167614 (n + 3) + 2).toNat

end

end A183317.P2380381225485128292

/-! ## A183317.P842031726834935541

`A183322(A055998(n+2)+8)`
-/

namespace A183317.P842031726834935541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183322 (A055998 (n + 2) + 8).toNat

end

end A183317.P842031726834935541

/-!
# A183318: Number of nX6 binary arrays with an element zero only if there are an even number of ones to its left and an even number of ones above it.

The programs for A183318, there is no canonical definition to state claims against.
-/

/-! ## A183318.P9011445773385481455

`A183322(A374007(n+1))`
-/

namespace A183318.P9011445773385481455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183322 (A374007 (n + 1)).toNat

end

end A183318.P9011445773385481455

/-! ## A183318.P16955802357695509538

`A183322(A167487(n+4)-1)`
-/

namespace A183318.P16955802357695509538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183322 (A167487 (n + 4) - 1).toNat

end

end A183318.P16955802357695509538

/-! ## A183318.P13084856244996311848

`A183322(A167614(n+4)+3)`
-/

namespace A183318.P13084856244996311848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183322 (A167614 (n + 4) + 3).toNat

end

end A183318.P13084856244996311848

/-! ## A183318.P17019751898703110662

`A183322(A000124(n+5)+5)`
-/

namespace A183318.P17019751898703110662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183322 (A000124 (n + 5) + 5).toNat

end

end A183318.P17019751898703110662

/-! ## A183318.P4435303097968183036

`A183322(A000217(n+5)+6)`
-/

namespace A183318.P4435303097968183036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183322 (A000217 (n + 5) + 6).toNat

end

end A183318.P4435303097968183036

/-!
# A183319: Number of n X 7 binary arrays with an element zero only if there are an even number of ones to its left and an even number of ones above it.

The programs for A183319, there is no canonical definition to state claims against.
-/

/-! ## A183319.P2697318627830540724

`A183322(A374008(n+1))`
-/

namespace A183319.P2697318627830540724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183322 (A374008 (n + 1)).toNat

end

end A183319.P2697318627830540724

/-! ## A183319.P7278229011971955472

`A183322(A167487(n+5))`
-/

namespace A183319.P7278229011971955472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183322 (A167487 (n + 5)).toNat

end

end A183319.P7278229011971955472

/-! ## A183319.P7078054443045509808

`A183322(A166136(n+5)+1)`
-/

namespace A183319.P7078054443045509808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183322 (A166136 (n + 5) + 1).toNat

end

end A183319.P7078054443045509808

/-! ## A183319.P3274404292363703814

`A183322(A000217(n+8)-8-n-n)`
-/

namespace A183319.P3274404292363703814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183322 (A000217 (n + 8) - 8 - (n : ℤ) - (n : ℤ)).toNat

end

end A183319.P3274404292363703814

/-! ## A183319.P1078291598486400353

`A183322(A055999(n+4))`
-/

namespace A183319.P1078291598486400353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183322 (A055999 (n + 4)).toNat

end

end A183319.P1078291598486400353

/-!
# A183320: Number of nX8 binary arrays with an element zero only if there are an even number of ones to its left and an even number of ones above it.

The programs for A183320, there is no canonical definition to state claims against.
-/

/-! ## A183320.P17215121040603668936

`A183322(A374009(n+1))`
-/

namespace A183320.P17215121040603668936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183322 (A374009 (n + 1)).toNat

end

end A183320.P17215121040603668936

/-! ## A183320.P13878255013928493543

`A183322(eq[9, A131818(n+1)])`
-/

namespace A183320.P13878255013928493543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183322 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183320.P13878255013928493543

/-! ## A183320.P17316814587937240145

`A183322(eq[5, A219347(n)])`
-/

namespace A183320.P17316814587937240145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183322 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183320.P17316814587937240145

/-! ## A183320.P9498944981857326289

`A183322(eq[7, A193592(n)])`
-/

namespace A183320.P9498944981857326289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183322 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183320.P9498944981857326289

/-! ## A183320.P7589908330491207016

`A183322(eq[12, A185782(n+1)])`
-/

namespace A183320.P7589908330491207016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183322 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183320.P7589908330491207016

/-!
# A183321: Number of nX9 binary arrays with an element zero only if there are an even number of ones to its left and an even number of ones above it.

The programs for A183321, there is no canonical definition to state claims against.
-/

/-! ## A183321.P8931778524162564095

`A183322(A374010(n+1))`
-/

namespace A183321.P8931778524162564095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183322 (A374010 (n + 1)).toNat

end

end A183321.P8931778524162564095

/-! ## A183321.P7251368682882080413

`A183322(eq[10, A131818(n+1)])`
-/

namespace A183321.P7251368682882080413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183322 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183321.P7251368682882080413

/-! ## A183321.P18302166094499192006

`A183322(A155212(n+5))`
-/

namespace A183321.P18302166094499192006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183322 (A155212 (n + 5)).toNat

end

end A183321.P18302166094499192006

/-! ## A183321.P9476559344454592663

`A183322(eq[5, A264391(n)])`
-/

namespace A183321.P9476559344454592663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183322 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183321.P9476559344454592663

/-! ## A183321.P4773070480780967992

`A183322(eq[6, A219347(n)])`
-/

namespace A183321.P4773070480780967992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183322 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183321.P4773070480780967992

/-!
# A183322: T(n,k) is the number of n X k binary arrays with an element zero only if there are an even number of ones to its left and an even number of ones above it.

The programs for A183322, there is no canonical definition to state claims against.
-/

/-! ## A183322.P3751744442658512982

`A111660(2*A295918(n+1))`
-/

namespace A183322.P3751744442658512982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (2 * A295918 (n + 1)).toNat

end

end A183322.P3751744442658512982

/-! ## A183322.P11221548548000273338

`A219741(n+1)-A016341(A168551(n))`
-/

namespace A183322.P11221548548000273338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219741 (n + 1) - A016341 (A168551 n).toNat

end

end A183322.P11221548548000273338

/-!
# A183323: Number of n X n binary arrays with each 1 adjacent to exactly two other 1s.

The programs for A183323, there is no canonical definition to state claims against.
-/

/-! ## A183323.P7745556532934215526

`A183328(∑[4*n]+1)`
-/

namespace A183323.P7745556532934215526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183328 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183323.P7745556532934215526

/-! ## A183323.P9644970041670581582

`record[gcd(A114327(n), A183328(n+1))]`
-/

namespace A183323.P9644970041670581582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A183328 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183323.P9644970041670581582

/-! ## A183323.P17315515018829007476

`gcd(A000038(n), A183328(A001844(n)))`
-/

namespace A183323.P17315515018829007476
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A183328 (A001844 n).toNat)

end

end A183323.P17315515018829007476

/-! ## A183323.P10809539120344845159

`A007318(A000096(n))*A183328(A001844(n))`
-/

namespace A183323.P10809539120344845159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat * A183328 (A001844 n).toNat

end

end A183323.P10809539120344845159

/-! ## A183323.P11673949379834085639

`A007318(A092921(n))*A183328(A001844(n))`
-/

namespace A183323.P11673949379834085639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A092921 n).toNat * A183328 (A001844 n).toNat

end

end A183323.P11673949379834085639

/-!
# A183324: Number of nX3 binary arrays with each 1 adjacent to exactly two other 1s.

The programs for A183324, the canonical program `A183324.P6500009440408032523` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183324 has offset 1).

The definition of A183324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 364 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183324.P18063270973526949688

`ogf((1+x+x^2-x^3)/(1-2x+x^2-2x^3+x^4))`
-/

namespace A183324.P18063270973526949688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, -1] [1, -2, 1, -2, 1] n

end

end A183324.P18063270973526949688

namespace A183324

/-- `ogf((1+x+x^2-x^3)/(1-2x+x^2-2x^3+x^4))` -/
def P18063270973526949688.Spec : Prop :=
  ∀ n, P18063270973526949688.a n = A183324 (n + 1)

end A183324

/-! ## A183324.P6500009440408032523

`A288380(n)-1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A183324

/-- `A288380(n)-1` -/
def P6500009440408032523.Spec : Prop :=
  ∀ n, P6500009440408032523.a n = A183324 (n + 1)

theorem P6500009440408032523.correct : P6500009440408032523.Spec := by
  intro n
  simp only [A183324, Nat.add_sub_cancel]

end A183324

/-! ## A183324.P9848559047772368005

`A118870(n)+A100048(n)`
-/

namespace A183324.P9848559047772368005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118870 n + A100048 n

end

end A183324.P9848559047772368005

namespace A183324

/-- `A118870(n)+A100048(n)` -/
def P9848559047772368005.Spec : Prop :=
  ∀ n, P9848559047772368005.a n = A183324 (n + 1)

end A183324

/-! ## A183324.P3592585973099858128

`A367400(n)+A112575(n)`
-/

namespace A183324.P3592585973099858128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367400 n + A112575 n

end

end A183324.P3592585973099858128

namespace A183324

/-- `A367400(n)+A112575(n)` -/
def P3592585973099858128.Spec : Prop :=
  ∀ n, P3592585973099858128.a n = A183324 (n + 1)

end A183324

/-! ## A183324.P4392688891028232328

`A033305(n+1)+record[A033305(n)]`
-/

namespace A183324.P4392688891028232328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033305 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183324.P4392688891028232328

namespace A183324

/-- `A033305(n+1)+record[A033305(n)]` -/
def P4392688891028232328.Spec : Prop :=
  ∀ n, P4392688891028232328.a n = A183324 (n + 1)

end A183324

/-! ## A183324.P15183288771405051334

`A033305(n+1)+A033305(n+2)`
-/

namespace A183324.P15183288771405051334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033305 (n + 1) + A033305 (n + 2)

end

end A183324.P15183288771405051334

namespace A183324

/-- `A033305(n+1)+A033305(n+2)` -/
def P15183288771405051334.Spec : Prop :=
  ∀ n, P15183288771405051334.a n = A183324 (n + 1)

end A183324

/-! ## A183324.P7014912000924778806

`2*a(n-1)-a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=10`
-/

namespace A183324.P7014912000924778806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 6, 10] fun n a =>
  2 * a (n - 1) - a (n - 2) + 2 * a (n - 3) - a (n - 4)

end

end A183324.P7014912000924778806

namespace A183324

/-- `2*a(n-1)-a(n-2)+2*a(n-3)-a(n-4)` -/
def P7014912000924778806.Spec : Prop :=
  ∀ n, P7014912000924778806.a n = A183324 (n + 1)

end A183324

/-! ## A183324.P18446292359366108524

`A100048(n+3)-a(n-1)` with `a(0)=1`
-/

namespace A183324.P18446292359366108524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A100048 (n + 3) - a (n - 1)

end

end A183324.P18446292359366108524

namespace A183324

/-- `A100048(n+3)-a(n-1)` -/
def P18446292359366108524.Spec : Prop :=
  ∀ n, P18446292359366108524.a n = A183324 (n + 1)

end A183324

/-! ## A183324.P12682532093557838416

`A112575(n)+Δ[A118870(n)]`
-/

namespace A183324.P12682532093557838416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112575 n + (f1 (n + 1) - f1 n)

end

end A183324.P12682532093557838416

namespace A183324

/-- `A112575(n)+Δ[A118870(n)]` -/
def P12682532093557838416.Spec : Prop :=
  ∀ n, P12682532093557838416.a n = A183324 (n + 1)

end A183324

/-! ## A183324.P14401628401988393316

`A118870(n+1)+A112575(n)-A118870(n)`
-/

namespace A183324.P14401628401988393316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118870 (n + 1) + (A112575 n - A118870 n)

end

end A183324.P14401628401988393316

namespace A183324

/-- `A118870(n+1)+A112575(n)-A118870(n)` -/
def P14401628401988393316.Spec : Prop :=
  ∀ n, P14401628401988393316.a n = A183324 (n + 1)

end A183324

/-! ## A183324.P8980172375311560218

`Δ[A112575(n+2)]`
-/

namespace A183324.P8980172375311560218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112575 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183324.P8980172375311560218

namespace A183324

/-- `Δ[A112575(n+2)]` -/
def P8980172375311560218.Spec : Prop :=
  ∀ n, P8980172375311560218.a n = A183324 (n + 1)

end A183324

/-! ## A183324.P3324891807791030673

`A112575(n+3)-A112575(n+2)`
-/

namespace A183324.P3324891807791030673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112575 (n + 3) - A112575 (n + 2)

end

end A183324.P3324891807791030673

namespace A183324

/-- `A112575(n+3)-A112575(n+2)` -/
def P3324891807791030673.Spec : Prop :=
  ∀ n, P3324891807791030673.a n = A183324 (n + 1)

end A183324

/-! ## A183324.P14377398866935214874

`Δ[Δ[A367400(n+1)]]`
-/

namespace A183324.P14377398866935214874
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367400 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183324.P14377398866935214874

namespace A183324

/-- `Δ[Δ[A367400(n+1)]]` -/
def P14377398866935214874.Spec : Prop :=
  ∀ n, P14377398866935214874.a n = A183324 (n + 1)

end A183324

/-!
# A183325: Number of n X 4 binary arrays with each 1 adjacent to exactly two other 1s.

The programs for A183325, there is no canonical definition to state claims against.
-/

/-! ## A183325.P11006120834104000569

`A183328(∑[n+3]+7)`
-/

namespace A183325.P11006120834104000569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183328 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A183325.P11006120834104000569

/-! ## A183325.P10817016083796720224

`gcd(A000038(n), A183328(A000124(n+3)+3))`
-/

namespace A183325.P10817016083796720224
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A183328 (A000124 (n + 3) + 3).toNat)

end

end A183325.P10817016083796720224

/-! ## A183325.P3244788304894028551

`or(A000007(n), A183328(A000124(n+3)+3))`
-/

namespace A183325.P3244788304894028551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A183328 (A000124 (n + 3) + 3).toNat)

end

end A183325.P3244788304894028551

/-! ## A183325.P2018031250669121434

`A183328(A000124(n+3)+3)+A000007(n+1)`
-/

namespace A183325.P2018031250669121434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183328 (A000124 (n + 3) + 3).toNat + A000007 (n + 1)

end

end A183325.P2018031250669121434

/-! ## A183325.P17906903004931456768

`A183328(A000124(n+3)+3)%A000108(n+2)`
-/

namespace A183325.P17906903004931456768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183328 (A000124 (n + 3) + 3).toNat) (A000108 (n + 2))

end

end A183325.P17906903004931456768

/-!
# A183326: Number of n X 5 binary arrays with each 1 adjacent to exactly two other 1s.

The programs for A183326, there is no canonical definition to state claims against.
-/

/-! ## A183326.P5724087518629342649

`A183328(A167499(n+3))`
-/

namespace A183326.P5724087518629342649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183328 (A167499 (n + 3)).toNat

end

end A183326.P5724087518629342649

/-! ## A183326.P7338285683721111897

`A183328(A000124(n+4)+4)`
-/

namespace A183326.P7338285683721111897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183328 (A000124 (n + 4) + 4).toNat

end

end A183326.P7338285683721111897

/-! ## A183326.P13899037058611934954

`A183328(A141214(n+1)+8)`
-/

namespace A183326.P13899037058611934954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183328 (A141214 (n + 1) + 8).toNat

end

end A183326.P13899037058611934954

/-! ## A183326.P2890682900638210790

`A183328(A038722(Δ[A264443(n)]))`
-/

namespace A183326.P2890682900638210790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183328 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A183326.P2890682900638210790

/-! ## A183326.P11116325610241282759

`A183328(∑[n+5]+6)`
-/

namespace A183326.P11116325610241282759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183328 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A183326.P11116325610241282759

/-!
# A183327: Number of n X 6 binary arrays with each 1 adjacent to exactly two other 1's.

The programs for A183327, there is no canonical definition to state claims against.
-/

/-! ## A183327.P445902267420598165

`A183328(A167614(n+4)+3)`
-/

namespace A183327.P445902267420598165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183328 (A167614 (n + 4) + 3).toNat

end

end A183327.P445902267420598165

/-! ## A183327.P16113993007425690136

`A183328(A000124(n+6)-(n+1))`
-/

namespace A183327.P16113993007425690136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183328 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A183327.P16113993007425690136

/-! ## A183327.P1737822399079814277

`A183328(A055999(n+4)-(2*n+1))`
-/

namespace A183327.P1737822399079814277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183328 (A055999 (n + 4) - (2 * n + 1 : ℤ)).toNat

end

end A183327.P1737822399079814277

/-! ## A183327.P10834017426783987385

`A183328(A374007(n+1))`
-/

namespace A183327.P10834017426783987385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183328 (A374007 (n + 1)).toNat

end

end A183327.P10834017426783987385

/-! ## A183327.P9481687925498241483

`A183328(A052905(n+3))`
-/

namespace A183327.P9481687925498241483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183328 (A052905 (n + 3)).toNat

end

end A183327.P9481687925498241483

/-!
# A183328: T(n,k)=Number of nXk binary arrays with each 1 adjacent to exactly two other 1s.

The programs for A183328, there is no canonical definition to state claims against.
-/

/-! ## A183328.P16135336711001843330

`A048766(or(A066094(n), A181543(n)))`
-/

namespace A183328.P16135336711001843330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (Int.lor (A066094 n) (A181543 n)).toNat

end

end A183328.P16135336711001843330

/-! ## A183328.P5359937873725845077

`A020753(floor(A099759(n)/A156184(n)))`
-/

namespace A183328.P5359937873725845077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020753 ⌊(A099759 n : ℚ) / (A156184 n : ℚ)⌋.toNat

end

end A183328.P5359937873725845077

/-! ## A183328.P8762567384755544995

`A048766(A028326(n)*A196636(n+1))`
-/

namespace A183328.P8762567384755544995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A028326 n * A196636 (n + 1)).toNat

end

end A183328.P8762567384755544995

/-! ## A183328.P14070535529428028095

`A108582(A157154(n))`
-/

namespace A183328.P14070535529428028095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108582 (A157154 n).toNat

end

end A183328.P14070535529428028095

/-! ## A183328.P7095353135773350479

`A082429(A395243(n))`
-/

namespace A183328.P7095353135773350479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082429 (A395243 n).toNat

end

end A183328.P7095353135773350479

/-!
# A183329: Number of n X n binary arrays with each 1 adjacent to exactly two 0's.

The programs for A183329, there is no canonical definition to state claims against.
-/

/-! ## A183329.P15293737682521481314

`A183335(∑[4*n]+1)`
-/

namespace A183329.P15293737682521481314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183335 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183329.P15293737682521481314

/-! ## A183329.P18362171440279845348

`record[A183335(Δ[A079824(n+1)])]`
-/

namespace A183329.P18362171440279845348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183335 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183329.P18362171440279845348

/-! ## A183329.P3812658050659589466

`record[A003982(n)*A183335(n+1)]`
-/

namespace A183329.P3812658050659589466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A183335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183329.P3812658050659589466

/-! ## A183329.P4742887271371598468

`gcd(A000038(n), A183335(A001844(n)))`
-/

namespace A183329.P4742887271371598468
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A183335 (A001844 n).toNat)

end

end A183329.P4742887271371598468

/-! ## A183329.P4510828562217477570

`A007318(∑[n])*A183335(A001844(n))`
-/

namespace A183329.P4510828562217477570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A183335 (A001844 n).toNat

end

end A183329.P4510828562217477570

/-!
# A183330: Number of n X 2 binary arrays with each 1 adjacent to exactly two 0's.

The programs for A183330, the canonical program `A183330.P3265567082962498922` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183330 has offset 1).

The definition of A183330 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 313 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183330.P3265567082962498922

`a(n-1)+2*a(n-2)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=7, a(2)=10, a(3)=23`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A183330

/-- `a(n-1)+2*a(n-2)+a(n-3)-a(n-4)` -/
def P3265567082962498922.Spec : Prop :=
  ∀ n, P3265567082962498922.a n = A183330 (n + 1)

theorem P3265567082962498922.correct : P3265567082962498922.Spec := by
  intro n
  simp only [A183330, Nat.add_sub_cancel]

end A183330

/-! ## A183330.P10545832347576504112

`A119749(n+2)+Δ[A119749(n+1)]`
-/

namespace A183330.P10545832347576504112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119749 (n + 2) + (f1 (n + 1) - f1 n)

end

end A183330.P10545832347576504112

namespace A183330

/-- `A119749(n+2)+Δ[A119749(n+1)]` -/
def P10545832347576504112.Spec : Prop :=
  ∀ n, P10545832347576504112.a n = A183330 (n + 1)

end A183330

/-! ## A183330.P7513201046445187788

`Δ[Δ[A105309(n+2)]]`
-/

namespace A183330.P7513201046445187788
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105309 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183330.P7513201046445187788

namespace A183330

/-- `Δ[Δ[A105309(n+2)]]` -/
def P7513201046445187788.Spec : Prop :=
  ∀ n, P7513201046445187788.a n = A183330 (n + 1)

end A183330

/-! ## A183330.P15715511089546824309

`Δ[Δ[A240513(n+2)]]`
-/

namespace A183330.P15715511089546824309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240513 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183330.P15715511089546824309

namespace A183330

/-- `Δ[Δ[A240513(n+2)]]` -/
def P15715511089546824309.Spec : Prop :=
  ∀ n, P15715511089546824309.a n = A183330 (n + 1)

end A183330

/-! ## A183330.P18252710951824883228

`Δ[Δ[A301658(n+2)]]`
-/

namespace A183330.P18252710951824883228
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301658 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183330.P18252710951824883228

namespace A183330

/-- `Δ[Δ[A301658(n+2)]]` -/
def P18252710951824883228.Spec : Prop :=
  ∀ n, P18252710951824883228.a n = A183330 (n + 1)

end A183330

/-! ## A183330.P13511659703917201578

`(A240513(n+2)+A240513(n+4))%A240513(n+3)`
-/

namespace A183330.P13511659703917201578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240513 (n + 2) + A240513 (n + 4)) (A240513 (n + 3))

end

end A183330.P13511659703917201578

namespace A183330

/-- `(A240513(n+2)+A240513(n+4))%A240513(n+3)` -/
def P13511659703917201578.Spec : Prop :=
  ∀ n, P13511659703917201578.a n = A183330 (n + 1)

end A183330

/-!
# A183331: Number of n X 3 binary arrays with each 1 adjacent to exactly two 0's.

The programs for A183331, there is no canonical definition to state claims against.
-/

/-! ## A183331.P6991993156562560902

`A183335(∑[n+2]+4)`
-/

namespace A183331.P6991993156562560902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183335 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183331.P6991993156562560902

/-! ## A183331.P2630229928083176821

`lcm(2, A183335(A167614(n+1)))`
-/

namespace A183331.P2630229928083176821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A183335 (A167614 (n + 1)).toNat)

end

end A183331.P2630229928083176821

/-! ## A183331.P12517147858502553404

`A183335(A167614(n+1))+A025469(n)`
-/

namespace A183331.P12517147858502553404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183335 (A167614 (n + 1)).toNat + A025469 n

end

end A183331.P12517147858502553404

/-! ## A183331.P1858691006445613103

`A185284(n)+A183335(A167614(n+1))`
-/

namespace A183331.P1858691006445613103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A183335 (A167614 (n + 1)).toNat

end

end A183331.P1858691006445613103

/-! ## A183331.P17857175670564792639

`A016192(n)*A183335(A167614(n+1))`
-/

namespace A183331.P17857175670564792639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016192 n * A183335 (A167614 (n + 1)).toNat

end

end A183331.P17857175670564792639

/-!
# A183332: Number of n X 4 binary arrays with each 1 adjacent to exactly two 0's.

The programs for A183332, there is no canonical definition to state claims against.
-/

/-! ## A183332.P14692152193256282005

`A183335(A145018(n+4))`
-/

namespace A183332.P14692152193256282005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183335 (A145018 (n + 4)).toNat

end

end A183332.P14692152193256282005

/-! ## A183332.P4197687668484082726

`A183335(A141214(n)+7)`
-/

namespace A183332.P4197687668484082726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183335 (A141214 n + 7).toNat

end

end A183332.P4197687668484082726

/-! ## A183332.P1583735782257825776

`A183335(A052905(n)+9)`
-/

namespace A183332.P1583735782257825776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183335 (A052905 n + 9).toNat

end

end A183332.P1583735782257825776

/-! ## A183332.P5126747883977605354

`A183335(A055999(n)+10)`
-/

namespace A183332.P5126747883977605354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183335 (A055999 n + 10).toNat

end

end A183332.P5126747883977605354

/-! ## A183332.P4403065219238751298

`A183335(A167614(n+2)+1)`
-/

namespace A183332.P4403065219238751298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183335 (A167614 (n + 2) + 1).toNat

end

end A183332.P4403065219238751298

/-!
# A183333: Number of n X 5 binary arrays with each 1 adjacent to exactly two 0's.

The programs for A183333, there is no canonical definition to state claims against.
-/

/-! ## A183333.P14892820401870016609

`A183335(A000217(n+4)+5)`
-/

namespace A183333.P14892820401870016609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183335 (A000217 (n + 4) + 5).toNat

end

end A183333.P14892820401870016609

/-! ## A183333.P18420660414061147857

`A183335(A046691(n+2)+9)`
-/

namespace A183333.P18420660414061147857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183335 (A046691 (n + 2) + 9).toNat

end

end A183333.P18420660414061147857

/-! ## A183333.P8831094092119701485

`A183335(A052905(n+1)+10)`
-/

namespace A183333.P8831094092119701485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183335 (A052905 (n + 1) + 10).toNat

end

end A183333.P8831094092119701485

/-! ## A183333.P6778448771943271496

`A183335(A055999(n+1)+11)`
-/

namespace A183333.P6778448771943271496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183335 (A055999 (n + 1) + 11).toNat

end

end A183333.P6778448771943271496

/-! ## A183333.P2450576847905841956

`A183335(eq[5, A025581(n)]-2*n)`
-/

namespace A183333.P2450576847905841956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183335 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 2 * n)

end

end A183333.P2450576847905841956

/-!
# A183334: Number of n X 6 binary arrays with each 1 adjacent to exactly two 0's.

The programs for A183334, there is no canonical definition to state claims against.
-/

/-! ## A183334.P2879112337191838099

`A183335(A167499(n+4)+1)`
-/

namespace A183334.P2879112337191838099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183335 (A167499 (n + 4) + 1).toNat

end

end A183334.P2879112337191838099

/-! ## A183334.P3740395574907346861

`A183335(A000124(n+5)+5)`
-/

namespace A183334.P3740395574907346861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183335 (A000124 (n + 5) + 5).toNat

end

end A183334.P3740395574907346861

/-! ## A183334.P15323209390106138416

`A183335(A000096(n+4)+7)`
-/

namespace A183334.P15323209390106138416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183335 (A000096 (n + 4) + 7).toNat

end

end A183334.P15323209390106138416

/-! ## A183334.P12584379750728772386

`A183335(A000217(n+5)+6)`
-/

namespace A183334.P12584379750728772386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183335 (A000217 (n + 5) + 6).toNat

end

end A183334.P12584379750728772386

/-! ## A183334.P3868827510505009122

`A183335(A052905(n+2)+11)`
-/

namespace A183334.P3868827510505009122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183335 (A052905 (n + 2) + 11).toNat

end

end A183334.P3868827510505009122

/-!
# A183335: T(n,k) = Number of n X k binary arrays with each 1 adjacent to exactly two 0's.

The programs for A183335, there is no canonical definition to state claims against.
-/

/-! ## A183335.P10381532737007300079

`A196329(n+1)-A186034(A022167(n))`
-/

namespace A183335.P10381532737007300079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196329 (n + 1) - A186034 (A022167 n).toNat

end

end A183335.P10381532737007300079

/-! ## A183335.P13122183121108707413

`A196329(n+1)-A037800(A176791(n))`
-/

namespace A183335.P13122183121108707413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196329 (n + 1) - A037800 (A176791 n).toNat

end

end A183335.P13122183121108707413

/-! ## A183335.P2939322696647732329

`A196329(n+1)-A107846(A154336(n))`
-/

namespace A183335.P2939322696647732329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196329 (n + 1) - A107846 (A154336 n).toNat

end

end A183335.P2939322696647732329

/-! ## A183335.P15315018675307123241

`A196329(n+1)-A007814(A157149(n))`
-/

namespace A183335.P15315018675307123241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196329 (n + 1) - A007814 (A157149 n).toNat

end

end A183335.P15315018675307123241

/-! ## A183335.P15640435571195280136

`A240467(A196329(3*(n+1)))+A196329(n+1)`
-/

namespace A183335.P15640435571195280136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240467 (A196329 (3 * (n + 1))).toNat + A196329 (n + 1)

end

end A183335.P15640435571195280136

/-!
# A183336: Number of n X 4 binary arrays with each 1 adjacent to exactly one 1 vertically and one 1 horizontally.

The programs for A183336, the canonical program `A183336.P14946889241446976935` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183336 has offset 1).

The definition of A183336 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183336.P14946889241446976935

`a(n-1)+a(n-2)+2*a(n-3)-a(n-5)` with `a(0)=1, a(1)=4, a(2)=7, a(3)=12, a(4)=26`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A183336

/-- `a(n-1)+a(n-2)+2*a(n-3)-a(n-5)` -/
def P14946889241446976935.Spec : Prop :=
  ∀ n, P14946889241446976935.a n = A183336 (n + 1)

theorem P14946889241446976935.correct : P14946889241446976935.Spec := by
  intro n
  simp only [A183336, Nat.add_sub_cancel]

end A183336

/-! ## A183336.P5478677776077892504

`A183342(A374004(n+1))`
-/

namespace A183336.P5478677776077892504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183342 (A374004 (n + 1)).toNat

end

end A183336.P5478677776077892504

namespace A183336

/-- `A183342(A374004(n+1))` -/
def P5478677776077892504.Spec : Prop :=
  ∀ n, P5478677776077892504.a n = A183336 (n + 1)

end A183336

/-! ## A183336.P9964396499333893217

`A183342(A167614(n+2)+1)`
-/

namespace A183336.P9964396499333893217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183342 (A167614 (n + 2) + 1).toNat

end

end A183336.P9964396499333893217

namespace A183336

/-- `A183342(A167614(n+2)+1)` -/
def P9964396499333893217.Spec : Prop :=
  ∀ n, P9964396499333893217.a n = A183336 (n + 1)

end A183336

/-! ## A183336.P3339933378311408527

`A183342(A166136(n+2)-2)`
-/

namespace A183336.P3339933378311408527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183342 (A166136 (n + 2) - 2).toNat

end

end A183336.P3339933378311408527

namespace A183336

/-- `A183342(A166136(n+2)-2)` -/
def P3339933378311408527.Spec : Prop :=
  ∀ n, P3339933378311408527.a n = A183336 (n + 1)

end A183336

/-! ## A183336.P13718268015472651834

`A183342(A166136(n+1)+1+n)`
-/

namespace A183336.P13718268015472651834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183342 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A183336.P13718268015472651834

namespace A183336

/-- `A183342(A166136(n+1)+1+n)` -/
def P13718268015472651834.Spec : Prop :=
  ∀ n, P13718268015472651834.a n = A183336 (n + 1)

end A183336

/-!
# A183337: Number of n X 5 binary arrays with each 1 adjacent to exactly one 1 vertically and one 1 horizontally.

The programs for A183337, there is no canonical definition to state claims against.
-/

/-! ## A183337.P812761285410399589

`A183342(A374005(n+1))`
-/

namespace A183337.P812761285410399589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183342 (A374005 (n + 1)).toNat

end

end A183337.P812761285410399589

/-! ## A183337.P16366588020522895154

`A183342(A167499(n+3))`
-/

namespace A183337.P16366588020522895154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183342 (A167499 (n + 3)).toNat

end

end A183337.P16366588020522895154

/-! ## A183337.P1618210163768897807

`A183342(A133263(n+4)+3)`
-/

namespace A183337.P1618210163768897807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183342 (A133263 (n + 4) + 3).toNat

end

end A183337.P1618210163768897807

/-! ## A183337.P9673492732503390792

`A183342(A000217(n+4)+5)`
-/

namespace A183337.P9673492732503390792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183342 (A000217 (n + 4) + 5).toNat

end

end A183337.P9673492732503390792

/-! ## A183337.P11121560205303556092

`A183342(A000124(n+5)-(n+1))`
-/

namespace A183337.P11121560205303556092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183342 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A183337.P11121560205303556092

/-!
# A183338: Number of n X 6 binary arrays with each 1 adjacent to exactly one 1 vertically and one 1 horizontally.

The programs for A183338, there is no canonical definition to state claims against.
-/

/-! ## A183338.P4524016701097238558

`A183342(A374007(n+1))`
-/

namespace A183338.P4524016701097238558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183342 (A374007 (n + 1)).toNat

end

end A183338.P4524016701097238558

/-! ## A183338.P12090898297715577990

`A183342(A166136(n+4))`
-/

namespace A183338.P12090898297715577990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183342 (A166136 (n + 4)).toNat

end

end A183338.P12090898297715577990

/-! ## A183338.P15229916876673159095

`A183342(A000217(n+5)+6)`
-/

namespace A183338.P15229916876673159095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183342 (A000217 (n + 5) + 6).toNat

end

end A183338.P15229916876673159095

/-! ## A183338.P14411631350223047111

`A183342(A052905(n+3))`
-/

namespace A183338.P14411631350223047111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183342 (A052905 (n + 3)).toNat

end

end A183338.P14411631350223047111

/-! ## A183338.P2550655921347390481

`A183342(A055998(n+4)-2)`
-/

namespace A183338.P2550655921347390481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183342 (A055998 (n + 4) - 2).toNat

end

end A183338.P2550655921347390481

/-!
# A183339: Number of nX7 binary arrays with each 1 adjacent to exactly one 1 vertically and one 1 horizontally.

The programs for A183339, there is no canonical definition to state claims against.
-/

/-! ## A183339.P7918911753067569727

`A183342(A374008(n+1))`
-/

namespace A183339.P7918911753067569727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183342 (A374008 (n + 1)).toNat

end

end A183339.P7918911753067569727

/-! ## A183339.P12068304977365584416

`A183342(A167499(n+5)+2)`
-/

namespace A183339.P12068304977365584416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183342 (A167499 (n + 5) + 2).toNat

end

end A183339.P12068304977365584416

/-! ## A183339.P10435683585653323998

`A183342(A000217(n+6)+7)`
-/

namespace A183339.P10435683585653323998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183342 (A000217 (n + 6) + 7).toNat

end

end A183339.P10435683585653323998

/-! ## A183339.P13287776106764058640

`A183342(A000124(n+7)-(n+1))`
-/

namespace A183339.P13287776106764058640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183342 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A183339.P13287776106764058640

/-! ## A183339.P2435502704739267207

`A183342(A008486(n+7)+A000124(n+3))`
-/

namespace A183339.P2435502704739267207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183342 (A008486 (n + 7) + A000124 (n + 3)).toNat

end

end A183339.P2435502704739267207

/-!
# A183340: Number of nX8 binary arrays with each 1 adjacent to exactly one 1 vertically and one 1 horizontally.

The programs for A183340, there is no canonical definition to state claims against.
-/

/-! ## A183340.P11764516466359704006

`A183342(A374009(n+1))`
-/

namespace A183340.P11764516466359704006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183342 (A374009 (n + 1)).toNat

end

end A183340.P11764516466359704006

/-! ## A183340.P5674312882390113487

`A183342(A000217(n+7)+8)`
-/

namespace A183340.P5674312882390113487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183342 (A000217 (n + 7) + 8).toNat

end

end A183340.P5674312882390113487

/-! ## A183340.P1799567018086614218

`A183342(A167614(n+1)+A008706(n+6))`
-/

namespace A183340.P1799567018086614218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183342 (A167614 (n + 1) + A008706 (n + 6)).toNat

end

end A183340.P1799567018086614218

/-! ## A183340.P12170207919560116163

`A183342(A167499(n+7)+A001489(n+5))`
-/

namespace A183340.P12170207919560116163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183342 (A167499 (n + 7) + A001489 (n + 5)).toNat

end

end A183340.P12170207919560116163

/-! ## A183340.P10798972926208155499

`A183342(A046691(n+8)-A008486(n+5))`
-/

namespace A183340.P10798972926208155499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183342 (A046691 (n + 8) - A008486 (n + 5)).toNat

end

end A183340.P10798972926208155499

/-!
# A183341: Number of nX9 binary arrays with each 1 adjacent to exactly one 1 vertically and one 1 horizontally.

The programs for A183341, there is no canonical definition to state claims against.
-/

/-! ## A183341.P2595261970638750084

`A183342(A374010(n+1))`
-/

namespace A183341.P2595261970638750084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183342 (A374010 (n + 1)).toNat

end

end A183341.P2595261970638750084

/-! ## A183341.P259053813103214113

`A183342(A000217(n+8)+9)`
-/

namespace A183341.P259053813103214113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183342 (A000217 (n + 8) + 9).toNat

end

end A183341.P259053813103214113

/-! ## A183341.P4873619116496153868

`A183342(A167499(n+8)+A001489(n+5))`
-/

namespace A183341.P4873619116496153868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183342 (A167499 (n + 8) + A001489 (n + 5)).toNat

end

end A183341.P4873619116496153868

/-! ## A183341.P14949054279168329134

`A183342(A155212(n+5))`
-/

namespace A183341.P14949054279168329134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183342 (A155212 (n + 5)).toNat

end

end A183341.P14949054279168329134

/-! ## A183341.P12362471207156007670

`A183342(eq[8, A193592(n)])`
-/

namespace A183341.P12362471207156007670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183342 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183341.P12362471207156007670

/-!
# A183342: T(n,k)=Number of nXk binary arrays with each 1 adjacent to exactly one 1 vertically and one 1 horizontally.

The programs for A183342, there is no canonical definition to state claims against.
-/

/-! ## A183342.P13951265985254964086

`A204166(A296974(n+1))+A185037(A319861(n))`
-/

namespace A183342.P13951265985254964086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204166 (A296974 (n + 1)).toNat + A185037 (A319861 n).toNat

end

end A183342.P13951265985254964086

/-! ## A183342.P9414482020981049219

`A296313(n+1)+A286471(A319861(A219291(n+1)))`
-/

namespace A183342.P9414482020981049219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296313 (n + 1) + A286471 (A319861 (A219291 (n + 1)).toNat).toNat

end

end A183342.P9414482020981049219

/-! ## A183342.P7848272911977867244

`A204166(A296974(n+1))%A000124(A054336(3*n+1))`
-/

namespace A183342.P7848272911977867244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204166 (A296974 (n + 1)).toNat) (A000124 (A054336 (3 * n + 1)).toNat)

end

end A183342.P7848272911977867244

/-! ## A183342.P2515012425617846191

`A183456(n+1)+A070204(A297720(n+1))`
-/

namespace A183342.P2515012425617846191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183456 (n + 1) + A070204 (A297720 (n + 1)).toNat

end

end A183342.P2515012425617846191

/-! ## A183342.P16648234451046766475

`A351700(A146769(n))`
-/

namespace A183342.P16648234451046766475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351700 (A146769 n).toNat

end

end A183342.P16648234451046766475

/-!
# A183343: Number of n X n binary arrays with each 1 adjacent to exactly one 0 vertically and one 0 horizontally.

The programs for A183343, there is no canonical definition to state claims against.
-/

/-! ## A183343.P11027025238273404181

`A183352(∑[4*n]+1)`
-/

namespace A183343.P11027025238273404181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183352 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183343.P11027025238273404181

/-! ## A183343.P9591175079453210001

`record[gcd(A080232(n), A183352(n+1))]`
-/

namespace A183343.P9591175079453210001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080232 n) (A183352 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183343.P9591175079453210001

/-! ## A183343.P6757476657603780659

`A183352(A001844(n))%A332163(n)`
-/

namespace A183343.P6757476657603780659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183352 (A001844 n).toNat) (A332163 n)

end

end A183343.P6757476657603780659

/-! ## A183343.P11498842656345467789

`or(A000007(n), A183352(A001844(n)))`
-/

namespace A183343.P11498842656345467789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A183352 (A001844 n).toNat)

end

end A183343.P11498842656345467789

/-! ## A183343.P6878021672455073402

`or(A000122(n), A183352(A001844(n)))`
-/

namespace A183343.P6878021672455073402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000122 n) (A183352 (A001844 n).toNat)

end

end A183343.P6878021672455073402

/-!
# A183344: Number of n X 2 binary arrays with each 1 adjacent to exactly one 0 vertically and one 0 horizontally.

The programs for A183344, the canonical program `A183344.P311142330518585721` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183344 has offset 1).

The definition of A183344 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 377 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183344.P15828116539403362887

`ogf((1+6x+x^2)/(1-x-x^2-x^3))`
-/

namespace A183344.P15828116539403362887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, 1] [1, -1, -1, -1] n

end

end A183344.P15828116539403362887

namespace A183344

/-- `ogf((1+6x+x^2)/(1-x-x^2-x^3))` -/
def P15828116539403362887.Spec : Prop :=
  ∀ n, P15828116539403362887.a n = A183344 (n + 1)

end A183344

/-! ## A183344.P311142330518585721

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=7, a(2)=9`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A183344

/-- `a(n-1)+a(n-2)+a(n-3)` -/
def P311142330518585721.Spec : Prop :=
  ∀ n, (P311142330518585721.a n : ℤ) = A183344 (n + 1)

theorem P311142330518585721.correct : P311142330518585721.Spec := by
  intro n
  simp only [A183344, Nat.add_sub_cancel]

end A183344

/-! ## A183344.P12663328478203303708

`A354784(n)+A214829(n)`
-/

namespace A183344.P12663328478203303708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354784 n + A214829 n

end

end A183344.P12663328478203303708

namespace A183344

/-- `A354784(n)+A214829(n)` -/
def P12663328478203303708.Spec : Prop :=
  ∀ n, P12663328478203303708.a n = A183344 (n + 1)

end A183344

/-! ## A183344.P16569292651769928752

`A214829(n)+Δ[A000213(n)]`
-/

namespace A183344.P16569292651769928752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214829 n + (f1 (n + 1) - f1 n)

end

end A183344.P16569292651769928752

namespace A183344

/-- `A214829(n)+Δ[A000213(n)]` -/
def P16569292651769928752.Spec : Prop :=
  ∀ n, P16569292651769928752.a n = A183344 (n + 1)

end A183344

/-! ## A183344.P5871211166791414476

`A276658(n+2)+A214826(n)`
-/

namespace A183344.P5871211166791414476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276658 (n + 2) + A214826 n

end

end A183344.P5871211166791414476

namespace A183344

/-- `A276658(n+2)+A214826(n)` -/
def P5871211166791414476.Spec : Prop :=
  ∀ n, P5871211166791414476.a n = A183344 (n + 1)

end A183344

/-! ## A183344.P13631029617836711006

`A214829(n)+2*A000073(n)`
-/

namespace A183344.P13631029617836711006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214829 n + 2 * A000073 n

end

end A183344.P13631029617836711006

namespace A183344

/-- `A214829(n)+2*A000073(n)` -/
def P13631029617836711006.Spec : Prop :=
  ∀ n, P13631029617836711006.a n = A183344 (n + 1)

end A183344

/-! ## A183344.P1260431104836010314

`A354080(n)+A354080(n)-A000213(n)`
-/

namespace A183344.P1260431104836010314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354080 n + (A354080 n - A000213 n)

end

end A183344.P1260431104836010314

namespace A183344

/-- `A354080(n)+A354080(n)-A000213(n)` -/
def P1260431104836010314.Spec : Prop :=
  ∀ n, P1260431104836010314.a n = A183344 (n + 1)

end A183344

/-! ## A183344.P18391913936800376286

`A000213(n+1)+A214829(n)-A000213(n)`
-/

namespace A183344.P18391913936800376286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (n + 1) + (A214829 n - A000213 n)

end

end A183344.P18391913936800376286

namespace A183344

/-- `A000213(n+1)+A214829(n)-A000213(n)` -/
def P18391913936800376286.Spec : Prop :=
  ∀ n, P18391913936800376286.a n = A183344 (n + 1)

end A183344

/-! ## A183344.P3344851253404852777

`A075092(n+1)+A349700(n+1)-A001644(n)`
-/

namespace A183344.P3344851253404852777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075092 (n + 1) + (A349700 (n + 1) - A001644 n)

end

end A183344.P3344851253404852777

namespace A183344

/-- `A075092(n+1)+A349700(n+1)-A001644(n)` -/
def P3344851253404852777.Spec : Prop :=
  ∀ n, P3344851253404852777.a n = A183344 (n + 1)

end A183344

/-! ## A183344.P10673254679303141613

`A000073(n)+6*A000073(n+1)+A000073(n+2)`
-/

namespace A183344.P10673254679303141613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n + 6 * A000073 (n + 1) + A000073 (n + 2)

end

end A183344.P10673254679303141613

namespace A183344

/-- `A000073(n)+6*A000073(n+1)+A000073(n+2)` -/
def P10673254679303141613.Spec : Prop :=
  ∀ n, P10673254679303141613.a n = A183344 (n + 1)

end A183344

/-! ## A183344.P16584828198899013452

`A214831(n)-2*A001590(n)`
-/

namespace A183344.P16584828198899013452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214831 n - 2 * A001590 n

end

end A183344.P16584828198899013452

namespace A183344

/-- `A214831(n)-2*A001590(n)` -/
def P16584828198899013452.Spec : Prop :=
  ∀ n, P16584828198899013452.a n = A183344 (n + 1)

end A183344

/-! ## A183344.P16466156577892252457

`2*A354080(n)-A000213(n)`
-/

namespace A183344.P16466156577892252457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A354080 n - A000213 n

end

end A183344.P16466156577892252457

namespace A183344

/-- `2*A354080(n)-A000213(n)` -/
def P16466156577892252457.Spec : Prop :=
  ∀ n, P16466156577892252457.a n = A183344 (n + 1)

end A183344

/-! ## A183344.P11068080094134090946

`A214831(n)-Δ[Δ[A000213(n)]]`
-/

namespace A183344.P11068080094134090946
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214831 n - (f1 (n + 1) - f1 n)

end

end A183344.P11068080094134090946

namespace A183344

/-- `A214831(n)-Δ[Δ[A000213(n)]]` -/
def P11068080094134090946.Spec : Prop :=
  ∀ n, P11068080094134090946.a n = A183344 (n + 1)

end A183344

/-! ## A183344.P2422831708936553493

`A214825(n)+Δ[A214825(n+1)]`
-/

namespace A183344.P2422831708936553493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214825 n + (f1 (n + 1) - f1 n)

end

end A183344.P2422831708936553493

namespace A183344

/-- `A214825(n)+Δ[A214825(n+1)]` -/
def P2422831708936553493.Spec : Prop :=
  ∀ n, P2422831708936553493.a n = A183344 (n + 1)

end A183344

/-! ## A183344.P14041474632192887029

`A214831(n)-Δ[2*A000073(n)]`
-/

namespace A183344.P14041474632192887029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214831 n - (f1 (n + 1) - f1 n)

end

end A183344.P14041474632192887029

namespace A183344

/-- `A214831(n)-Δ[2*A000073(n)]` -/
def P14041474632192887029.Spec : Prop :=
  ∀ n, P14041474632192887029.a n = A183344 (n + 1)

end A183344

/-! ## A183344.P2748231767175440791

`∑[4*A000213(n)]-A001644(n)`
-/

namespace A183344.P2748231767175440791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001644 n

end

end A183344.P2748231767175440791

namespace A183344

/-- `∑[4*A000213(n)]-A001644(n)` -/
def P2748231767175440791.Spec : Prop :=
  ∀ n, P2748231767175440791.a n = A183344 (n + 1)

end A183344

/-! ## A183344.P13150214599381309249

`A081172(n+1)+A214831(n)-A214727(n)`
-/

namespace A183344.P13150214599381309249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081172 (n + 1) + (A214831 n - A214727 n)

end

end A183344.P13150214599381309249

namespace A183344

/-- `A081172(n+1)+A214831(n)-A214727(n)` -/
def P13150214599381309249.Spec : Prop :=
  ∀ n, P13150214599381309249.a n = A183344 (n + 1)

end A183344

/-! ## A183344.P655280508530929926

`Δ[A280308(n+1)]`
-/

namespace A183344.P655280508530929926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280308 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183344.P655280508530929926

namespace A183344

/-- `Δ[A280308(n+1)]` -/
def P655280508530929926.Spec : Prop :=
  ∀ n, P655280508530929926.a n = A183344 (n + 1)

end A183344

/-! ## A183344.P4288163404094948134

`Δ[A274761(n)+A001644(n+1)]`
-/

namespace A183344.P4288163404094948134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274761 n + A001644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183344.P4288163404094948134

namespace A183344

/-- `Δ[A274761(n)+A001644(n+1)]` -/
def P4288163404094948134.Spec : Prop :=
  ∀ n, P4288163404094948134.a n = A183344 (n + 1)

end A183344

/-! ## A183344.P7448464238785991299

`Δ[A232508(n+2)]-A001644(n)`
-/

namespace A183344.P7448464238785991299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232508 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001644 n

end

end A183344.P7448464238785991299

namespace A183344

/-- `Δ[A232508(n+2)]-A001644(n)` -/
def P7448464238785991299.Spec : Prop :=
  ∀ n, P7448464238785991299.a n = A183344 (n + 1)

end A183344

/-!
# A183345: Number of n X 3 binary arrays with each 1 adjacent to exactly one 0 vertically and one 0 horizontally.

The programs for A183345, the canonical program `A183345.P18416492273016040971` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183345 has offset 1).

The definition of A183345 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183345.P18416492273016040971

`∑[a(n-1)+a(n-3)]²` with `a(0)=1, a(1)=2, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A183345

/-- `∑[a(n-1)+a(n-3)]²` -/
def P18416492273016040971.Spec : Prop :=
  ∀ n, (P18416492273016040971.a n : ℤ) = A183345 (n + 1)

theorem P18416492273016040971.correct : P18416492273016040971.Spec := by
  intro n
  simp only [A183345, Nat.add_sub_cancel]

end A183345

/-! ## A183345.P4257357406504659011

`a(n-1)+a(n-2)+3*a(n-3)+a(n-4)-a(n-5)-a(n-6)` with `a(0)=1, a(1)=9, a(2)=16, a(3)=25, a(4)=64, a(5)=144`
-/

namespace A183345.P4257357406504659011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9, 16, 25, 64, 144] fun n a =>
  a (n - 1) + a (n - 2) + 3 * a (n - 3) + a (n - 4) - a (n - 5) - a (n - 6)

end

end A183345.P4257357406504659011

namespace A183345

/-- `a(n-1)+a(n-2)+3*a(n-3)+a(n-4)-a(n-5)-a(n-6)` -/
def P4257357406504659011.Spec : Prop :=
  ∀ n, P4257357406504659011.a n = A183345 (n + 1)

end A183345

/-! ## A183345.P2539238894643982427

`(1-A288429(n))²`
-/

namespace A183345.P2539238894643982427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A288429 n) ^ 2

end

end A183345.P2539238894643982427

namespace A183345

/-- `(1-A288429(n))²` -/
def P2539238894643982427.Spec : Prop :=
  ∀ n, P2539238894643982427.a n = A183345 (n + 1)

end A183345

/-! ## A183345.P7613885985201154853

`A179070(n+3)²`
-/

namespace A183345.P7613885985201154853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179070 (n + 3) ^ 2

end

end A183345.P7613885985201154853

namespace A183345

/-- `A179070(n+3)²` -/
def P7613885985201154853.Spec : Prop :=
  ∀ n, P7613885985201154853.a n = A183345 (n + 1)

end A183345

/-! ## A183345.P14005802085084095249

`Δ[A170933(n+1)]²`
-/

namespace A183345.P14005802085084095249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A183345.P14005802085084095249

namespace A183345

/-- `Δ[A170933(n+1)]²` -/
def P14005802085084095249.Spec : Prop :=
  ∀ n, P14005802085084095249.a n = A183345 (n + 1)

end A183345

/-! ## A183345.P11427291034550166462

`Δ[A288429(n+2)]²`
-/

namespace A183345.P11427291034550166462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288429 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A183345.P11427291034550166462

namespace A183345

/-- `Δ[A288429(n+2)]²` -/
def P11427291034550166462.Spec : Prop :=
  ∀ n, P11427291034550166462.a n = A183345 (n + 1)

end A183345

/-! ## A183345.P9125948178877403934

`Δ[A196382(n+4)]²`
-/

namespace A183345.P9125948178877403934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196382 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A183345.P9125948178877403934

namespace A183345

/-- `Δ[A196382(n+4)]²` -/
def P9125948178877403934.Spec : Prop :=
  ∀ n, P9125948178877403934.a n = A183345 (n + 1)

end A183345

/-! ## A183345.P15359776743401666086

`(A196382(n+2)+1)²`
-/

namespace A183345.P15359776743401666086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A196382 (n + 2) + 1) ^ 2

end

end A183345.P15359776743401666086

namespace A183345

/-- `(A196382(n+2)+1)²` -/
def P15359776743401666086.Spec : Prop :=
  ∀ n, P15359776743401666086.a n = A183345 (n + 1)

end A183345

/-! ## A183345.P9492666076654110245

`(Δ[A069241(n+1)]+1)²`
-/

namespace A183345.P9492666076654110245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) ^ 2

end

end A183345.P9492666076654110245

namespace A183345

/-- `(Δ[A069241(n+1)]+1)²` -/
def P9492666076654110245.Spec : Prop :=
  ∀ n, P9492666076654110245.a n = A183345 (n + 1)

end A183345

/-! ## A183345.P4261785190085664326

`record[A179070(A052938(n))²]`
-/

namespace A183345.P4261785190085664326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179070 (A052938 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183345.P4261785190085664326

namespace A183345

/-- `record[A179070(A052938(n))²]` -/
def P4261785190085664326.Spec : Prop :=
  ∀ n, P4261785190085664326.a n = A183345 (n + 1)

end A183345

/-! ## A183345.P17791688759362781845

`(A077868(n)+1-A078012(n))²`
-/

namespace A183345.P17791688759362781845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077868 n + (1 - A078012 n)) ^ 2

end

end A183345.P17791688759362781845

namespace A183345

/-- `(A077868(n)+1-A078012(n))²` -/
def P17791688759362781845.Spec : Prop :=
  ∀ n, P17791688759362781845.a n = A183345 (n + 1)

end A183345

/-! ## A183345.P13301601806279888915

`(A164316(n+1)-A000930(n))²`
-/

namespace A183345.P13301601806279888915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A164316 (n + 1) - A000930 n) ^ 2

end

end A183345.P13301601806279888915

namespace A183345

/-- `(A164316(n+1)-A000930(n))²` -/
def P13301601806279888915.Spec : Prop :=
  ∀ n, P13301601806279888915.a n = A183345 (n + 1)

end A183345

/-! ## A183345.P16299408529618183325

`(A170934(n+2)-A170934(n))²`
-/

namespace A183345.P16299408529618183325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A170934 (n + 2) - A170934 n) ^ 2

end

end A183345.P16299408529618183325

namespace A183345

/-- `(A170934(n+2)-A170934(n))²` -/
def P16299408529618183325.Spec : Prop :=
  ∀ n, P16299408529618183325.a n = A183345 (n + 1)

end A183345

/-! ## A183345.P15422381984126359707

`(2*A097333(n)-A058278(n))²`
-/

namespace A183345.P15422381984126359707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A097333 n - A058278 n) ^ 2

end

end A183345.P15422381984126359707

namespace A183345

/-- `(2*A097333(n)-A058278(n))²` -/
def P15422381984126359707.Spec : Prop :=
  ∀ n, P15422381984126359707.a n = A183345 (n + 1)

end A183345

/-! ## A183345.P245419574263380608

`Δ[A068921(n)+∑[A068921(n)]]²`
-/

namespace A183345.P245419574263380608
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A183345.P245419574263380608

namespace A183345

/-- `Δ[A068921(n)+∑[A068921(n)]]²` -/
def P245419574263380608.Spec : Prop :=
  ∀ n, P245419574263380608.a n = A183345 (n + 1)

end A183345

/-! ## A183345.P3534059489409318515

`(A003410(n+1)-A058278(n+1))²`
-/

namespace A183345.P3534059489409318515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003410 (n + 1) - A058278 (n + 1)) ^ 2

end

end A183345.P3534059489409318515

namespace A183345

/-- `(A003410(n+1)-A058278(n+1))²` -/
def P3534059489409318515.Spec : Prop :=
  ∀ n, P3534059489409318515.a n = A183345 (n + 1)

end A183345

/-! ## A183345.P11892777639575384930

`(A196204(n+1)-(A001595(n)+1))²`
-/

namespace A183345.P11892777639575384930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A196204 (n + 1) - (A001595 n + 1)) ^ 2

end

end A183345.P11892777639575384930

namespace A183345

/-- `(A196204(n+1)-(A001595(n)+1))²` -/
def P11892777639575384930.Spec : Prop :=
  ∀ n, P11892777639575384930.a n = A183345 (n + 1)

end A183345

/-! ## A183345.P2169992561751101904

`(A170933(n+1)-A170933(n+2))²`
-/

namespace A183345.P2169992561751101904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A170933 (n + 1) - A170933 (n + 2)) ^ 2

end

end A183345.P2169992561751101904

namespace A183345

/-- `(A170933(n+1)-A170933(n+2))²` -/
def P2169992561751101904.Spec : Prop :=
  ∀ n, P2169992561751101904.a n = A183345 (n + 1)

end A183345

/-!
# A183346: Number of n X 4 binary arrays with each 1 adjacent to exactly one 0 vertically and one 0 horizontally.

The programs for A183346, there is no canonical definition to state claims against.
-/

/-! ## A183346.P531443853811716293

`A183352(A055999(n)+10)`
-/

namespace A183346.P531443853811716293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183352 (A055999 n + 10).toNat

end

end A183346.P531443853811716293

/-! ## A183346.P12880016148887326969

`A183352(A167614(n+2)+1)`
-/

namespace A183346.P12880016148887326969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183352 (A167614 (n + 2) + 1).toNat

end

end A183346.P12880016148887326969

/-! ## A183346.P2238235434228118021

`A183352(A374004(n+1))`
-/

namespace A183346.P2238235434228118021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183352 (A374004 (n + 1)).toNat

end

end A183346.P2238235434228118021

/-! ## A183346.P1596595356381151489

`A183352(A027379(n+2))`
-/

namespace A183346.P1596595356381151489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183352 (A027379 (n + 2)).toNat

end

end A183346.P1596595356381151489

/-! ## A183346.P17603571473787872662

`A183352(A055998(n+2))`
-/

namespace A183346.P17603571473787872662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183352 (A055998 (n + 2)).toNat

end

end A183346.P17603571473787872662

/-!
# A183347: Number of nX5 binary arrays with each 1 adjacent to exactly one 0 vertically and one 0 horizontally.

The programs for A183347, there is no canonical definition to state claims against.
-/

/-! ## A183347.P13710800807558199636

`A183352(A167499(n+3))`
-/

namespace A183347.P13710800807558199636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183352 (A167499 (n + 3)).toNat

end

end A183347.P13710800807558199636

/-! ## A183347.P1376028968702707436

`A183352(A155212(n)+13)`
-/

namespace A183347.P1376028968702707436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183352 (A155212 n + 13).toNat

end

end A183347.P1376028968702707436

/-! ## A183347.P3508459851257246073

`A183352(A056000(n)+15)`
-/

namespace A183347.P3508459851257246073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183352 (A056000 n + 15).toNat

end

end A183347.P3508459851257246073

/-! ## A183347.P2373435807071073335

`A183352(A027379(n+2)+8)`
-/

namespace A183347.P2373435807071073335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183352 (A027379 (n + 2) + 8).toNat

end

end A183347.P2373435807071073335

/-! ## A183347.P8355096747837560499

`A183352(A055998(n+2)+8)`
-/

namespace A183347.P8355096747837560499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183352 (A055998 (n + 2) + 8).toNat

end

end A183347.P8355096747837560499

/-!
# A183348: Number of nX6 binary arrays with each 1 adjacent to exactly one 0 vertically and one 0 horizontally.

The programs for A183348, there is no canonical definition to state claims against.
-/

/-! ## A183348.P14955385584629606705

`A183352(A000217(n+5)+6)`
-/

namespace A183348.P14955385584629606705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183352 (A000217 (n + 5) + 6).toNat

end

end A183348.P14955385584629606705

/-! ## A183348.P18129586195426964612

`A183352(A133263(n+6)-(n+2))`
-/

namespace A183348.P18129586195426964612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183352 (A133263 (n + 6) - (n + 2 : ℤ)).toNat

end

end A183348.P18129586195426964612

/-! ## A183348.P1541050217150726089

`A183352(A374007(n+1))`
-/

namespace A183348.P1541050217150726089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183352 (A374007 (n + 1)).toNat

end

end A183348.P1541050217150726089

/-! ## A183348.P11280086412569780385

`A183352(A052905(n+3))`
-/

namespace A183348.P11280086412569780385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183352 (A052905 (n + 3)).toNat

end

end A183348.P11280086412569780385

/-! ## A183348.P15016555915258211814

`A183352(A056119(n)+16)`
-/

namespace A183348.P15016555915258211814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183352 (A056119 n + 16).toNat

end

end A183348.P15016555915258211814

/-!
# A183349: Number of nX7 binary arrays with each 1 adjacent to exactly one 0 vertically and one 0 horizontally.

The programs for A183349, there is no canonical definition to state claims against.
-/

/-! ## A183349.P13857351911272585711

`A183352(A167614(n+5)+4)`
-/

namespace A183349.P13857351911272585711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183352 (A167614 (n + 5) + 4).toNat

end

end A183349.P13857351911272585711

/-! ## A183349.P15872308921457829924

`A183352(A133263(n+6)+5)`
-/

namespace A183349.P15872308921457829924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183352 (A133263 (n + 6) + 5).toNat

end

end A183349.P15872308921457829924

/-! ## A183349.P12257568515403420321

`A183352(A000217(n+6)+7)`
-/

namespace A183349.P12257568515403420321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183352 (A000217 (n + 6) + 7).toNat

end

end A183349.P12257568515403420321

/-! ## A183349.P15306608683834220475

`A183352(A027379(n+4)+10)`
-/

namespace A183349.P15306608683834220475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183352 (A027379 (n + 4) + 10).toNat

end

end A183349.P15306608683834220475

/-! ## A183349.P335687029222041662

`A183352(A000124(n+7)-(n+1))`
-/

namespace A183349.P335687029222041662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183352 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A183349.P335687029222041662

/-!
# A183350: Number of nX8 binary arrays with each 1 adjacent to exactly one 0 vertically and one 0 horizontally.

The programs for A183350, there is no canonical definition to state claims against.
-/

/-! ## A183350.P13812730721112021171

`A183352(A000217(n+7)+8)`
-/

namespace A183350.P13812730721112021171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183352 (A000217 (n + 7) + 8).toNat

end

end A183350.P13812730721112021171

/-! ## A183350.P8912069152213111556

`A183352(A134227(n+7)-3-2*n)`
-/

namespace A183350.P8912069152213111556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183352 (A134227 (n + 7) - 3 - (2 * n : ℤ)).toNat

end

end A183350.P8912069152213111556

/-! ## A183350.P10702634771346984403

`A183352(A374009(n+1))`
-/

namespace A183350.P10702634771346984403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183352 (A374009 (n + 1)).toNat

end

end A183350.P10702634771346984403

/-! ## A183350.P14566275907607104487

`A183352(A055998(n+6)-4)`
-/

namespace A183350.P14566275907607104487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183352 (A055998 (n + 6) - 4).toNat

end

end A183350.P14566275907607104487

/-! ## A183350.P14590635421789055372

`A183352(A000124(n+8)-8)`
-/

namespace A183350.P14590635421789055372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183352 (A000124 (n + 8) - 8).toNat

end

end A183350.P14590635421789055372

/-!
# A183351: Number of nX9 binary arrays with each 1 adjacent to exactly one 0 vertically and one 0 horizontally.

The programs for A183351, there is no canonical definition to state claims against.
-/

/-! ## A183351.P1656742718255199310

`A183352(A000217(n+8)+9)`
-/

namespace A183351.P1656742718255199310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183352 (A000217 (n + 8) + 9).toNat

end

end A183351.P1656742718255199310

/-! ## A183351.P3340758179241708733

`A183352(A161680(n+9)+9)`
-/

namespace A183351.P3340758179241708733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183352 (A161680 (n + 9) + 9).toNat

end

end A183351.P3340758179241708733

/-! ## A183351.P10160690420957772003

`A183352(A016789(n+9)+A000124(n+5))`
-/

namespace A183351.P10160690420957772003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183352 (A016789 (n + 9) + A000124 (n + 5)).toNat

end

end A183351.P10160690420957772003

/-! ## A183351.P17254047856528181537

`A183352(A180486(n+9)+A000124(n+5))`
-/

namespace A183351.P17254047856528181537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183352 (A180486 (n + 9) + A000124 (n + 5)).toNat

end

end A183351.P17254047856528181537

/-! ## A183351.P7423990996630126537

`A183352(A374010(n+1))`
-/

namespace A183351.P7423990996630126537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183352 (A374010 (n + 1)).toNat

end

end A183351.P7423990996630126537

/-!
# A183353: One quarter the number of n X n 1..4 arrays with no two neighbors of any element equal to each other.

The programs for A183353, the canonical program `A183353.P8172612219232151983` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183353 has offset 1).

The definition of A183353 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183353.P8172612219232151983

`A002001(n)*A184534(3*n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A183353

/-- `A002001(n)*A184534(3*n+1)` -/
def P8172612219232151983.Spec : Prop :=
  ∀ n, P8172612219232151983.a n = A183353 (n + 1)

theorem P8172612219232151983.correct : P8172612219232151983.Spec := by
  intro n
  simp only [A183353, Nat.add_sub_cancel]

end A183353

/-! ## A183353.P10439205789763157323

`A183362(∑[4*n]+1)`
-/

namespace A183353.P10439205789763157323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183362 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183353.P10439205789763157323

namespace A183353

/-- `A183362(∑[4*n]+1)` -/
def P10439205789763157323.Spec : Prop :=
  ∀ n, P10439205789763157323.a n = A183353 (n + 1)

end A183353

/-! ## A183353.P17008694026648415608

`record[A003982(n)*A183362(n+1)]`
-/

namespace A183353.P17008694026648415608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A183362 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183353.P17008694026648415608

namespace A183353

/-- `record[A003982(n)*A183362(n+1)]` -/
def P17008694026648415608.Spec : Prop :=
  ∀ n, P17008694026648415608.a n = A183353 (n + 1)

end A183353

/-! ## A183353.P511311047594179363

`record[A183362(n+1)*A214505(n)]`
-/

namespace A183353.P511311047594179363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183362 (n + 1) * A214505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183353.P511311047594179363

namespace A183353

/-- `record[A183362(n+1)*A214505(n)]` -/
def P511311047594179363.Spec : Prop :=
  ∀ n, P511311047594179363.a n = A183353 (n + 1)

end A183353

/-! ## A183353.P2498732132487284470

`record[gcd(A008482(n), A183362(n+1))]`
-/

namespace A183353.P2498732132487284470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A183362 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183353.P2498732132487284470

namespace A183353

/-- `record[gcd(A008482(n), A183362(n+1))]` -/
def P2498732132487284470.Spec : Prop :=
  ∀ n, (P2498732132487284470.a n : ℤ) = A183353 (n + 1)

end A183353

/-!
# A183354: One quarter the number of nX2 1..4 arrays with no two neighbors of any element equal to each other.

The programs for A183354, the canonical program `A183354.P6000581340715906536` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183354 has offset 1).

The definition of A183354 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183354.P9098523091063412229

`ogf((4+20x)/(1-4x))`
-/

namespace A183354.P9098523091063412229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 20] [1, -4] n

end

end A183354.P9098523091063412229

namespace A183354

/-- `ogf((4+20x)/(1-4x))` -/
def P9098523091063412229.Spec : Prop :=
  ∀ n, P9098523091063412229.a n = A183354 (n + 1)

end A183354

/-! ## A183354.P6000581340715906536

`4*a(n-1)` with `a(0)=4, a(1)=36`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A183354

/-- `4*a(n-1)` -/
def P6000581340715906536.Spec : Prop :=
  ∀ n, (P6000581340715906536.a n : ℤ) = A183354 (n + 1)

theorem P6000581340715906536.correct : P6000581340715906536.Spec := by
  intro n
  simp only [A183354, Nat.add_sub_cancel]

end A183354

/-! ## A183354.P4788111895434937200

`Δ[or(1, (-2)^n)]²`
-/

namespace A183354.P4788111895434937200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((-2) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A183354.P4788111895434937200

namespace A183354

/-- `Δ[or(1, (-2)^n)]²` -/
def P4788111895434937200.Spec : Prop :=
  ∀ n, P4788111895434937200.a n = A183354 (n + 1)

end A183354

/-! ## A183354.P12667833233434682142

`(1-or(1, 3*2^n))²`
-/

namespace A183354.P12667833233434682142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.lor 1 (3 * 2 ^ n) : ℤ)) ^ 2

end

end A183354.P12667833233434682142

namespace A183354

/-- `(1-or(1, 3*2^n))²` -/
def P12667833233434682142.Spec : Prop :=
  ∀ n, P12667833233434682142.a n = A183354 (n + 1)

end A183354

/-! ## A183354.P1497451704006663669

`∏[-a(n-1)]²` with `a(0)=2, a(1)=3, a(2)=2`
-/

namespace A183354.P1497451704006663669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 2] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A183354.P1497451704006663669

namespace A183354

/-- `∏[-a(n-1)]²` -/
def P1497451704006663669.Spec : Prop :=
  ∀ n, P1497451704006663669.a n = A183354 (n + 1)

end A183354

/-! ## A183354.P16856978112006569158

`abs(∏[-a(n-1)])` with `a(0)=4, a(1)=9, a(2)=4`
-/

namespace A183354.P16856978112006569158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 9, 4] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A183354.P16856978112006569158

namespace A183354

/-- `abs(∏[-a(n-1)])` -/
def P16856978112006569158.Spec : Prop :=
  ∀ n, P16856978112006569158.a n = A183354 (n + 1)

end A183354

/-! ## A183354.P18329539614422269377

`a(n-1)/(1/2)²` with `a(0)=4, a(1)=36`
-/

namespace A183354.P18329539614422269377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4, 36] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2

end

end A183354.P18329539614422269377

namespace A183354

/-- `a(n-1)/(1/2)²` -/
def P18329539614422269377.Spec : Prop :=
  ∀ n, P18329539614422269377.a n = (A183354 (n + 1) : ℚ)

end A183354

/-! ## A183354.P2710637608476431162

`∑[a(n-1)+a(n-1)]²` with `a(0)=2, a(1)=4, a(2)=6`
-/

namespace A183354.P2710637608476431162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 6] fun n f1 =>
  f1 (n - 1) + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A183354.P2710637608476431162

namespace A183354

/-- `∑[a(n-1)+a(n-1)]²` -/
def P2710637608476431162.Spec : Prop :=
  ∀ n, (P2710637608476431162.a n : ℤ) = A183354 (n + 1)

end A183354

/-! ## A183354.P5520110910163948091

`Δ[A271017(n)]`
-/

namespace A183354.P5520110910163948091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183354.P5520110910163948091

namespace A183354

/-- `Δ[A271017(n)]` -/
def P5520110910163948091.Spec : Prop :=
  ∀ n, P5520110910163948091.a n = A183354 (n + 1)

end A183354

/-! ## A183354.P10861546407707027280

`∑[A058764(n)]²`
-/

namespace A183354.P10861546407707027280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A183354.P10861546407707027280

namespace A183354

/-- `∑[A058764(n)]²` -/
def P10861546407707027280.Spec : Prop :=
  ∀ n, P10861546407707027280.a n = A183354 (n + 1)

end A183354

/-! ## A183354.P6721923830760435673

`Δ[A068156(n)]²`
-/

namespace A183354.P6721923830760435673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068156 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A183354.P6721923830760435673

namespace A183354

/-- `Δ[A068156(n)]²` -/
def P6721923830760435673.Spec : Prop :=
  ∀ n, P6721923830760435673.a n = A183354 (n + 1)

end A183354

/-! ## A183354.P5356762010238323078

`(A052940(n)+1)²`
-/

namespace A183354.P5356762010238323078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052940 n + 1) ^ 2

end

end A183354.P5356762010238323078

namespace A183354

/-- `(A052940(n)+1)²` -/
def P5356762010238323078.Spec : Prop :=
  ∀ n, P5356762010238323078.a n = A183354 (n + 1)

end A183354

/-! ## A183354.P18251784345293721828

`A111286(n+2)²`
-/

namespace A183354.P18251784345293721828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111286 (n + 2) ^ 2

end

end A183354.P18251784345293721828

namespace A183354

/-- `A111286(n+2)²` -/
def P18251784345293721828.Spec : Prop :=
  ∀ n, P18251784345293721828.a n = A183354 (n + 1)

end A183354

/-! ## A183354.P6947764432937457950

`(2*A003945(n))²`
-/

namespace A183354.P6947764432937457950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A003945 n) ^ 2

end

end A183354.P6947764432937457950

namespace A183354

/-- `(2*A003945(n))²` -/
def P6947764432937457950.Spec : Prop :=
  ∀ n, P6947764432937457950.a n = A183354 (n + 1)

end A183354

/-! ## A183354.P8376405233728768919

`4*A084431(2*n)`
-/

namespace A183354.P8376405233728768919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A084431 (2 * n)

end

end A183354.P8376405233728768919

namespace A183354

/-- `4*A084431(2*n)` -/
def P8376405233728768919.Spec : Prop :=
  ∀ n, P8376405233728768919.a n = A183354 (n + 1)

end A183354

/-! ## A183354.P525566813260781553

`4*A397439(2*n)`
-/

namespace A183354.P525566813260781553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A397439 (2 * n)

end

end A183354.P525566813260781553

namespace A183354

/-- `4*A397439(2*n)` -/
def P525566813260781553.Spec : Prop :=
  ∀ n, P525566813260781553.a n = A183354 (n + 1)

end A183354

/-! ## A183354.P14489536736265341369

`∑[A290114(n)+1]²`
-/

namespace A183354.P14489536736265341369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290114 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A183354.P14489536736265341369

namespace A183354

/-- `∑[A290114(n)+1]²` -/
def P14489536736265341369.Spec : Prop :=
  ∀ n, P14489536736265341369.a n = A183354 (n + 1)

end A183354

/-! ## A183354.P12357348088703859093

`Δ[A058764(n+1)]²`
-/

namespace A183354.P12357348088703859093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A183354.P12357348088703859093

namespace A183354

/-- `Δ[A058764(n+1)]²` -/
def P12357348088703859093.Spec : Prop :=
  ∀ n, P12357348088703859093.a n = A183354 (n + 1)

end A183354

/-! ## A183354.P14293037754450588033

`(Δ[A077802(n)]+1)²`
-/

namespace A183354.P14293037754450588033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) ^ 2

end

end A183354.P14293037754450588033

namespace A183354

/-- `(Δ[A077802(n)]+1)²` -/
def P14293037754450588033.Spec : Prop :=
  ∀ n, P14293037754450588033.a n = A183354 (n + 1)

end A183354

/-! ## A183354.P16938622296532805117

`Δ[A084633(n+1)]²`
-/

namespace A183354.P16938622296532805117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084633 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A183354.P16938622296532805117

namespace A183354

/-- `Δ[A084633(n+1)]²` -/
def P16938622296532805117.Spec : Prop :=
  ∀ n, P16938622296532805117.a n = A183354 (n + 1)

end A183354

/-!
# A183355: One quarter the number of nX3 1..4 arrays with no two neighbors of any element equal to each other.

The programs for A183355, the canonical program `A183355.P12177295947007754359` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183355 has offset 1).

The definition of A183355 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183355.P12177295947007754359

`3*a(n-1)` with `a(0)=12, a(1)=144`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A183355

/-- `3*a(n-1)` -/
def P12177295947007754359.Spec : Prop :=
  ∀ n, (P12177295947007754359.a n : ℤ) = A183355 (n + 1)

theorem P12177295947007754359.correct : P12177295947007754359.Spec := by
  intro n
  simp only [A183355, Nat.add_sub_cancel]

end A183355

/-! ## A183355.P7351200974842294565

`abs(∏[-a(n-1)])` with `a(0)=12, a(1)=12, a(2)=3`
-/

namespace A183355.P7351200974842294565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [12, 12, 3] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A183355.P7351200974842294565

namespace A183355

/-- `abs(∏[-a(n-1)])` -/
def P7351200974842294565.Spec : Prop :=
  ∀ n, P7351200974842294565.a n = A183355 (n + 1)

end A183355

/-! ## A183355.P605885297421813603

`record[∏[3/a(n-1)]]` with `a(0)=12, a(1)=12`
-/

namespace A183355.P605885297421813603
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [12, 12] fun n f2 =>
  3 / f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183355.P605885297421813603

namespace A183355

/-- `record[∏[3/a(n-1)]]` -/
def P605885297421813603.Spec : Prop :=
  ∀ n, P605885297421813603.a n = (A183355 (n + 1) : ℚ)

end A183355

/-! ## A183355.P7574890777674386548

`gcd(4, 2^(n+1))²*3^(n+1)`
-/

namespace A183355.P7574890777674386548
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 (2 ^ (n + 1)) ^ 2 * 3 ^ (n + 1)

end

end A183355.P7574890777674386548

namespace A183355

/-- `gcd(4, 2^(n+1))²*3^(n+1)` -/
def P7574890777674386548.Spec : Prop :=
  ∀ n, (P7574890777674386548.a n : ℤ) = A183355 (n + 1)

end A183355

/-! ## A183355.P2849588762278245559

`3^(n+1)*A170836(n+2)`
-/

namespace A183355.P2849588762278245559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℤ) * A170836 (n + 2)

end

end A183355.P2849588762278245559

namespace A183355

/-- `3^(n+1)*A170836(n+2)` -/
def P2849588762278245559.Spec : Prop :=
  ∀ n, P2849588762278245559.a n = A183355 (n + 1)

end A183355

/-! ## A183355.P8184030183106746391

`A040132(n)*A099856(n)`
-/

namespace A183355.P8184030183106746391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040132 n * A099856 n

end

end A183355.P8184030183106746391

namespace A183355

/-- `A040132(n)*A099856(n)` -/
def P8184030183106746391.Spec : Prop :=
  ∀ n, P8184030183106746391.a n = A183355 (n + 1)

end A183355

/-! ## A183355.P8921525702532285631

`A062723(2*(n+1))*A062723(n+3)`
-/

namespace A183355.P8921525702532285631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062723 (2 * (n + 1)) * A062723 (n + 3)

end

end A183355.P8921525702532285631

namespace A183355

/-- `A062723(2*(n+1))*A062723(n+3)` -/
def P8921525702532285631.Spec : Prop :=
  ∀ n, P8921525702532285631.a n = A183355 (n + 1)

end A183355

/-!
# A183356: One quarter the number of n X 4 1..4 arrays with no two neighbors of any element equal to each other.

The programs for A183356, the canonical program `A183356.P13320275883136781663` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183356 has offset 1).

The definition of A183356 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183356.P13320275883136781663

`(A022346(n+2)/ceil(2/(n+1)))²`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A183356

/-- `(A022346(n+2)/ceil(2/(n+1)))²` -/
def P13320275883136781663.Spec : Prop :=
  ∀ n, P13320275883136781663.a n = (A183356 (n + 1) : ℚ)

end A183356

/-! ## A183356.P17762426096919626685

`(Δ[A154691(n)]*A040006(n))²`
-/

namespace A183356.P17762426096919626685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) * A040006 n) ^ 2

end

end A183356.P17762426096919626685

namespace A183356

/-- `(Δ[A154691(n)]*A040006(n))²` -/
def P17762426096919626685.Spec : Prop :=
  ∀ n, P17762426096919626685.a n = A183356 (n + 1)

end A183356

/-! ## A183356.P12568392107924084863

`(record[A212804(n)]*A040030(n))²`
-/

namespace A183356.P12568392107924084863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A040030 n) ^ 2

end

end A183356.P12568392107924084863

namespace A183356

/-- `(record[A212804(n)]*A040030(n))²` -/
def P12568392107924084863.Spec : Prop :=
  ∀ n, P12568392107924084863.a n = A183356 (n + 1)

end A183356

/-! ## A183356.P1378477659682458518

`A000045(n+2)²*A040030(n)²`
-/

namespace A183356.P1378477659682458518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) ^ 2 * A040030 n ^ 2

end

end A183356.P1378477659682458518

namespace A183356

/-- `A000045(n+2)²*A040030(n)²` -/
def P1378477659682458518.Spec : Prop :=
  ∀ n, P1378477659682458518.a n = A183356 (n + 1)

end A183356

/-! ## A183356.P3046488716970092613

`(3*A000045(n+2)*A040002(n))²`
-/

namespace A183356.P3046488716970092613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * A000045 (n + 2) * A040002 n) ^ 2

end

end A183356.P3046488716970092613

namespace A183356

/-- `(3*A000045(n+2)*A040002(n))²` -/
def P3046488716970092613.Spec : Prop :=
  ∀ n, P3046488716970092613.a n = A183356 (n + 1)

end A183356

/-! ## A183356.P12702298882218934505

`(6*A204922(∑[n+2]-1))²`
-/

namespace A183356.P12702298882218934505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * A204922 (∑ j ∈ Finset.range (n + 1), f1 j - 1)) ^ 2

end

end A183356.P12702298882218934505

namespace A183356

/-- `(6*A204922(∑[n+2]-1))²` -/
def P12702298882218934505.Spec : Prop :=
  ∀ n, P12702298882218934505.a n = A183356 (n + 1)

end A183356

/-! ## A183356.P8524741822091416740

`(6*A220062(A052905(n+2)))²`
-/

namespace A183356.P8524741822091416740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * A220062 (A052905 (n + 2)).toNat) ^ 2

end

end A183356.P8524741822091416740

namespace A183356

/-- `(6*A220062(A052905(n+2)))²` -/
def P8524741822091416740.Spec : Prop :=
  ∀ n, P8524741822091416740.a n = A183356 (n + 1)

end A183356

/-!
# A183357: One quarter the number of n X 5 1..4 arrays with no two neighbors of any element equal to each other.

The programs for A183357, there is no canonical definition to state claims against.
-/

/-! ## A183357.P10447960216568826979

`6*(A222835(n+1)-A000007(n))`
-/

namespace A183357.P10447960216568826979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A222835 (n + 1) - A000007 n)

end

end A183357.P10447960216568826979

/-! ## A183357.P7257025305210055865

`6*(A222835(n+1)-A135528(A001748(n+1)))`
-/

namespace A183357.P7257025305210055865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A222835 (n + 1) - A135528 (A001748 (n + 1)).toNat)

end

end A183357.P7257025305210055865

/-! ## A183357.P3965738063304525538

`A183362(∑[n+4]+11)`
-/

namespace A183357.P3965738063304525538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183362 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A183357.P3965738063304525538

/-! ## A183357.P17712007328739118954

`or(1, A183362(A000217(n+4)+5))-1`
-/

namespace A183357.P17712007328739118954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A183362 (A000217 (n + 4) + 5).toNat) - 1

end

end A183357.P17712007328739118954

/-! ## A183357.P10968710171007490800

`lcm(2, A183362(A000124(n+5)-5))`
-/

namespace A183357.P10968710171007490800
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A183362 (A000124 (n + 5) - 5).toNat)

end

end A183357.P10968710171007490800

/-!
# A183358: One quarter the number of nX6 1..4 arrays with no two neighbors of any element equal to each other.

The programs for A183358, there is no canonical definition to state claims against.
-/

/-! ## A183358.P5134268460655778219

`6*(A222836(n+1)-A000007(n))`
-/

namespace A183358.P5134268460655778219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A222836 (n + 1) - A000007 n)

end

end A183358.P5134268460655778219

/-! ## A183358.P1069150918335248157

`A183362(∑[n+5]+16)`
-/

namespace A183358.P1069150918335248157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183362 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A183358.P1069150918335248157

/-! ## A183358.P5439515088411973990

`lcm(2, A183362(A052905(n+3)))`
-/

namespace A183358.P5439515088411973990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A183362 (A052905 (n + 3)).toNat)

end

end A183358.P5439515088411973990

/-! ## A183358.P12990155614924168946

`A007318(C(2, n))*A183362(A052905(n+3))`
-/

namespace A183358.P12990155614924168946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A183362 (A052905 (n + 3)).toNat

end

end A183358.P12990155614924168946

/-! ## A183358.P650806291805221098

`and(-A000203(n+1), A183362(A052905(n+3)))`
-/

namespace A183358.P650806291805221098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A000203 (n + 1)) (A183362 (A052905 (n + 3)).toNat)

end

end A183358.P650806291805221098

/-!
# A183359: One quarter the number of nX7 1..4 arrays with no two neighbors of any element equal to each other.

The programs for A183359, there is no canonical definition to state claims against.
-/

/-! ## A183359.P16235274103890722392

`A183362(A056119(n)+28)`
-/

namespace A183359.P16235274103890722392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183362 (A056119 n + 28).toNat

end

end A183359.P16235274103890722392

/-! ## A183359.P8323940384458666785

`A183362(∑[A020715(n)]+22)`
-/

namespace A183359.P8323940384458666785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183362 (∑ j ∈ Finset.range (n + 1), f1 j + 22).toNat

end

end A183359.P8323940384458666785

/-! ## A183359.P4733312695438930114

`A183362(A000124(n+6)+6)`
-/

namespace A183359.P4733312695438930114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183362 (A000124 (n + 6) + 6).toNat

end

end A183359.P4733312695438930114

/-! ## A183359.P17991794521294741470

`A183362(A000217(n+6)+7)`
-/

namespace A183359.P17991794521294741470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183362 (A000217 (n + 6) + 7).toNat

end

end A183359.P17991794521294741470

/-! ## A183359.P18151255035380773358

`A183362(A027379(n+4)+10)`
-/

namespace A183359.P18151255035380773358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183362 (A027379 (n + 4) + 10).toNat

end

end A183359.P18151255035380773358

/-!
# A183360: One quarter the number of nX8 1..4 arrays with no two neighbors of any element equal to each other.

The programs for A183360, there is no canonical definition to state claims against.
-/

/-! ## A183360.P10162697317596535188

`A183362(A167487(n+6)+1)`
-/

namespace A183360.P10162697317596535188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183362 (A167487 (n + 6) + 1).toNat

end

end A183360.P10162697317596535188

/-! ## A183360.P17257213648991912521

`A183362(A000217(n+7)+8)`
-/

namespace A183360.P17257213648991912521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183362 (A000217 (n + 7) + 8).toNat

end

end A183360.P17257213648991912521

/-! ## A183360.P7212831326998403172

`A183362(A055999(n+4)+14)`
-/

namespace A183360.P7212831326998403172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183362 (A055999 (n + 4) + 14).toNat

end

end A183360.P7212831326998403172

/-! ## A183360.P448969572490334360

`A183362(eq[7, A002262(n)]+1)`
-/

namespace A183360.P448969572490334360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A183360.P448969572490334360

/-! ## A183360.P12051230383613619762

`A183362(eq[9, A131818(n+1)])`
-/

namespace A183360.P12051230383613619762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183360.P12051230383613619762

/-!
# A183361: One quarter the number of nX9 1..4 arrays with no two neighbors of any element equal to each other.

The programs for A183361, there is no canonical definition to state claims against.
-/

/-! ## A183361.P12681233109428354316

`A183362(A000217(n+8)+9)`
-/

namespace A183361.P12681233109428354316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183362 (A000217 (n + 8) + 9).toNat

end

end A183361.P12681233109428354316

/-! ## A183361.P4080944491750442982

`A183362(eq[10, A131818(n+1)])`
-/

namespace A183361.P4080944491750442982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183361.P4080944491750442982

/-! ## A183361.P15831564056068179937

`A183362(A133263(n+9)-A220661(n+11))`
-/

namespace A183361.P15831564056068179937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183362 (A133263 (n + 9) - A220661 (n + 11)).toNat

end

end A183361.P15831564056068179937

/-! ## A183361.P3009288155993449719

`A183362(A167614(n+8)-A220661(n+12))`
-/

namespace A183361.P3009288155993449719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183362 (A167614 (n + 8) - A220661 (n + 12)).toNat

end

end A183361.P3009288155993449719

/-! ## A183361.P10835076789998413909

`A183362(A374010(n+1))`
-/

namespace A183361.P10835076789998413909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183362 (A374010 (n + 1)).toNat

end

end A183361.P10835076789998413909

/-!
# A183362: T(n,k)=One quarter the number of nXk 1..4 arrays with no two neighbors of any element equal to each other.

The programs for A183362, there is no canonical definition to state claims against.
-/

/-! ## A183362.P8796388832601656825

`A348273(∏{d}[A305482(n+1), #])`
-/

namespace A183362.P8796388832601656825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348273 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A183362.P8796388832601656825

/-! ## A183362.P5825077870493730567

`A348273(A063062(n)*A305482(n+1))`
-/

namespace A183362.P5825077870493730567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348273 (A063062 n * A305482 (n + 1)).toNat

end

end A183362.P5825077870493730567

/-! ## A183362.P10968267034371130754

`A029935(A202047(n+1)^A063062(n))`
-/

namespace A183362.P10968267034371130754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029935 (SequenceMachineLib.roundAway ((A202047 (n + 1) : ℚ) ^ (A063062 n : ℤ))).toNat

end

end A183362.P10968267034371130754

/-! ## A183362.P3903421508770401600

`A166632(A202047(n+1)^A063062(n))`
-/

namespace A183362.P3903421508770401600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166632 (SequenceMachineLib.roundAway ((A202047 (n + 1) : ℚ) ^ (A063062 n : ℤ))).toNat

end

end A183362.P3903421508770401600

/-! ## A183362.P11226124411650808476

`A348273(A305482(n+1)^A063062(n))`
-/

namespace A183362.P11226124411650808476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348273 (SequenceMachineLib.roundAway ((A305482 (n + 1) : ℚ) ^ (A063062 n : ℤ))).toNat

end

end A183362.P11226124411650808476

/-!
# A183363: Number of n X n binary arrays with no element equal to the sum mod 3 of its horizontal and vertical neighbors.

The programs for A183363, there is no canonical definition to state claims against.
-/

/-! ## A183363.P9128809808044508946

`A183368(∑[4*n]+1)`
-/

namespace A183363.P9128809808044508946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183368 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183363.P9128809808044508946

/-! ## A183363.P12333221693174449353

`record[A183368(Δ[A235355(n)])]`
-/

namespace A183363.P12333221693174449353
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183368 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183363.P12333221693174449353

/-! ## A183363.P12612864324325488282

`record[A183368(A330613(n+1))]`
-/

namespace A183363.P12612864324325488282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183368 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183363.P12612864324325488282

/-! ## A183363.P3709685490624774979

`A183368(A001844(n))+char[10]`
-/

namespace A183363.P3709685490624774979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183368 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A183363.P3709685490624774979

/-! ## A183363.P3398175904698811722

`record[gcd(A183368(n+1), A347682(n+1))]`
-/

namespace A183363.P3398175904698811722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A183368 (n + 1)) (A347682 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183363.P3398175904698811722

/-!
# A183364: Number of n X 2 binary arrays with no element equal to the sum mod 3 of its horizontal and vertical neighbors.

The programs for A183364, the canonical program `A183364.P10332759466481000777` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183364 has offset 1).

The definition of A183364 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 312 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183364.P10332759466481000777

`2*a(n-1)+a(n-3)-4*a(n-6)-3*a(n-7)+a(n-10)` with `a(0)=2, a(1)=3, a(2)=5, a(3)=12, a(4)=21, a(5)=41, a(6)=84, a(7)=171, a(8)=355, a(9)=732`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A183364

/-- `2*a(n-1)+a(n-3)-4*a(n-6)-3*a(n-7)+a(n-10)` -/
def P10332759466481000777.Spec : Prop :=
  ∀ n, P10332759466481000777.a n = A183364 (n + 1)

theorem P10332759466481000777.correct : P10332759466481000777.Spec := by
  intro n
  simp only [A183364, Nat.add_sub_cancel]

end A183364

/-! ## A183364.P3609685976160680508

`A183368(∑[n+1]+2)`
-/

namespace A183364.P3609685976160680508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183368 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A183364.P3609685976160680508

namespace A183364

/-- `A183368(∑[n+1]+2)` -/
def P3609685976160680508.Spec : Prop :=
  ∀ n, P3609685976160680508.a n = A183364 (n + 1)

end A183364

/-! ## A183364.P4591956428453149618

`record[A183368(A101881(n)+3)]`
-/

namespace A183364.P4591956428453149618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183368 (A101881 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183364.P4591956428453149618

namespace A183364

/-- `record[A183368(A101881(n)+3)]` -/
def P4591956428453149618.Spec : Prop :=
  ∀ n, P4591956428453149618.a n = A183364 (n + 1)

end A183364

/-! ## A183364.P2879292068373188330

`record[A183368(n+3)/A038255(n)]`
-/

namespace A183364.P2879292068373188330
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183368 (n + 3) : ℚ) / (A038255 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183364.P2879292068373188330

namespace A183364

/-- `record[A183368(n+3)/A038255(n)]` -/
def P2879292068373188330.Spec : Prop :=
  ∀ n, P2879292068373188330.a n = (A183364 (n + 1) : ℚ)

end A183364

/-! ## A183364.P4461453405769887913

`record[A183368(n+3)/A094587(n)]`
-/

namespace A183364.P4461453405769887913
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183368 (n + 3) : ℚ) / (A094587 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183364.P4461453405769887913

namespace A183364

/-- `record[A183368(n+3)/A094587(n)]` -/
def P4461453405769887913.Spec : Prop :=
  ∀ n, P4461453405769887913.a n = (A183364 (n + 1) : ℚ)

end A183364

/-!
# A183365: Number of nX3 binary arrays with no element equal to the sum mod 3 of its horizontal and vertical neighbors.

The programs for A183365, there is no canonical definition to state claims against.
-/

/-! ## A183365.P12346549009468476984

`A183368(∑[n+2]+4)`
-/

namespace A183365.P12346549009468476984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183368 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183365.P12346549009468476984

/-! ## A183365.P14468502426640616876

`A183368(A167614(n+1))+char[21]`
-/

namespace A183365.P14468502426640616876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183368 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A183365.P14468502426640616876

/-! ## A183365.P10556715356168766916

`record[A183368(n+4)/A038255(n)]`
-/

namespace A183365.P10556715356168766916
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183368 (n + 4) : ℚ) / (A038255 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183365.P10556715356168766916

/-! ## A183365.P6650899393778401567

`and(1, n)!*A183368(A046691(n)+7)`
-/

namespace A183365.P6650899393778401567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.land 1 n) : ℤ) * A183368 (A046691 n + 7).toNat

end

end A183365.P6650899393778401567

/-! ## A183365.P6056260927054331906

`A007318(C(2, n))*A183368(A167614(n+1))`
-/

namespace A183365.P6056260927054331906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A183368 (A167614 (n + 1)).toNat

end

end A183365.P6056260927054331906

/-!
# A183366: Number of n X 4 binary arrays with no element equal to the sum modulo 3 of its horizontal and vertical neighbors.

The programs for A183366, there is no canonical definition to state claims against.
-/

/-! ## A183366.P17492946606406219475

`A183368(∑[n+3]+7)`
-/

namespace A183366.P17492946606406219475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183368 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A183366.P17492946606406219475

/-! ## A183366.P18014245627906545488

`record[A183368(n+5)/A038255(n)]`
-/

namespace A183366.P18014245627906545488
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183368 (n + 5) : ℚ) / (A038255 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183366.P18014245627906545488

/-! ## A183366.P10926171529594788572

`A183368(A000096(n+2)+5)+char[17]`
-/

namespace A183366.P10926171529594788572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183368 (A000096 (n + 2) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A183366.P10926171529594788572

/-! ## A183366.P12514253791390435418

`A007318(C(2, n))*A183368(A000096(n+2)+5)`
-/

namespace A183366.P12514253791390435418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A183368 (A000096 (n + 2) + 5).toNat

end

end A183366.P12514253791390435418

/-! ## A183366.P13725083305581178677

`A183368(A000096(n+2)+5)%A000032(n+32)`
-/

namespace A183366.P13725083305581178677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183368 (A000096 (n + 2) + 5).toNat) (A000032 (n + 32))

end

end A183366.P13725083305581178677

/-!
# A183367: Number of nX5 binary arrays with no element equal to the sum mod 3 of its horizontal and vertical neighbors.

The programs for A183367, there is no canonical definition to state claims against.
-/

/-! ## A183367.P8015081703909570480

`A183368(A167499(n+3))`
-/

namespace A183367.P8015081703909570480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183368 (A167499 (n + 3)).toNat

end

end A183367.P8015081703909570480

/-! ## A183367.P11887845655602723414

`A183368(A155212(n)+13)`
-/

namespace A183367.P11887845655602723414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183368 (A155212 n + 13).toNat

end

end A183367.P11887845655602723414

/-! ## A183367.P5179062357174847615

`A183368(A056000(n)+15)`
-/

namespace A183367.P5179062357174847615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183368 (A056000 n + 15).toNat

end

end A183367.P5179062357174847615

/-! ## A183367.P3990007192225825490

`A183368(eq[7, A066657(n)])`
-/

namespace A183367.P3990007192225825490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183368 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183367.P3990007192225825490

/-! ## A183367.P11130275830942650779

`A183368(A000124(n+4)+4)`
-/

namespace A183367.P11130275830942650779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183368 (A000124 (n + 4) + 4).toNat

end

end A183367.P11130275830942650779

/-!
# A183368: T(n,k)=Number of nXk binary arrays with no element equal to the sum mod 3 of its horizontal and vertical neighbors.

The programs for A183368, there is no canonical definition to state claims against.
-/

/-! ## A183368.P5445402929310329295

`A134914(A208960(n+1))`
-/

namespace A183368.P5445402929310329295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134914 (A208960 (n + 1)).toNat

end

end A183368.P5445402929310329295

/-! ## A183368.P18320445151153264415

`A134914(A209054(n+1))`
-/

namespace A183368.P18320445151153264415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134914 (A209054 (n + 1)).toNat

end

end A183368.P18320445151153264415

/-! ## A183368.P14295783433910779838

`A134914(A209218(n+1))`
-/

namespace A183368.P14295783433910779838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134914 (A209218 (n + 1)).toNat

end

end A183368.P14295783433910779838

/-! ## A183368.P15858539848534583239

`A134914(A209720(n+1))`
-/

namespace A183368.P15858539848534583239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134914 (A209720 (n + 1)).toNat

end

end A183368.P15858539848534583239

/-! ## A183368.P13344447957588248345

`A048766(A208960(n+1)-1)+1`
-/

namespace A183368.P13344447957588248345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A208960 (n + 1) - 1).toNat + 1

end

end A183368.P13344447957588248345

/-!
# A183369: Number of n X n binary arrays with no element equal to the mod 3 sum of its diagonal and antidiagonal neighbors.

The programs for A183369, there is no canonical definition to state claims against.
-/

/-! ## A183369.P1028617099345945890

`A183374(∑[4*n]+1)`
-/

namespace A183369.P1028617099345945890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183374 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183369.P1028617099345945890

/-! ## A183369.P5918919223030814641

`record[A003982(n)*A183374(n+1)]`
-/

namespace A183369.P5918919223030814641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A183374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183369.P5918919223030814641

/-! ## A183369.P8810176361799877134

`record[gcd(A003987(n), A183374(n+1))]`
-/

namespace A183369.P8810176361799877134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A183374 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183369.P8810176361799877134

/-! ## A183369.P2367162789757384676

`lcm(A106400(n), A183374(A001844(n)))`
-/

namespace A183369.P2367162789757384676
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A106400 n) (A183374 (A001844 n).toNat)

end

end A183369.P2367162789757384676

/-! ## A183369.P6057746332820517795

`or(A000007(n), A183374(A001844(n)))`
-/

namespace A183369.P6057746332820517795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A183374 (A001844 n).toNat)

end

end A183369.P6057746332820517795

/-!
# A183370: Number of nX3 binary arrays with no element equal to the mod 3 sum of its diagonal and antidiagonal neighbors.

The programs for A183370, there is no canonical definition to state claims against.
-/

/-! ## A183370.P319067373024492530

`A183374(∑[n+2]+4)`
-/

namespace A183370.P319067373024492530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183374 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183370.P319067373024492530

/-! ## A183370.P246360190220998632

`record[A183374(n+4)/A038255(n)]`
-/

namespace A183370.P246360190220998632
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183374 (n + 4) : ℚ) / (A038255 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183370.P246360190220998632

/-! ## A183370.P3838355204963271117

`record[gcd(A183374(n+1), A303913(n))]`
-/

namespace A183370.P3838355204963271117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A183374 (n + 1)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183370.P3838355204963271117

/-! ## A183370.P7780438902720732068

`A183374(A167614(n+1))+A025469(n)`
-/

namespace A183370.P7780438902720732068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183374 (A167614 (n + 1)).toNat + A025469 n

end

end A183370.P7780438902720732068

/-! ## A183370.P13610235684756714191

`A185255(n)+A183374(A167614(n+1))`
-/

namespace A183370.P13610235684756714191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 n + A183374 (A167614 (n + 1)).toNat

end

end A183370.P13610235684756714191

/-!
# A183371: Number of nX4 binary arrays with no element equal to the mod 3 sum of its diagonal and antidiagonal neighbors.

The programs for A183371, there is no canonical definition to state claims against.
-/

/-! ## A183371.P15743105224583103085

`A183374(A145018(n+4))`
-/

namespace A183371.P15743105224583103085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183374 (A145018 (n + 4)).toNat

end

end A183371.P15743105224583103085

/-! ## A183371.P17378968297164518840

`A183374(A141214(n)+7)`
-/

namespace A183371.P17378968297164518840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183374 (A141214 n + 7).toNat

end

end A183371.P17378968297164518840

/-! ## A183371.P1363747607779712972

`A183374(A055999(n)+10)`
-/

namespace A183371.P1363747607779712972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183374 (A055999 n + 10).toNat

end

end A183371.P1363747607779712972

/-! ## A183371.P6174784446345408778

`A183374(A167614(n+2)+1)`
-/

namespace A183371.P6174784446345408778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183374 (A167614 (n + 2) + 1).toNat

end

end A183371.P6174784446345408778

/-! ## A183371.P13312103309417980026

`A183374(A167487(n+2)-3)`
-/

namespace A183371.P13312103309417980026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183374 (A167487 (n + 2) - 3).toNat

end

end A183371.P13312103309417980026

/-!
# A183372: Number of nX5 binary arrays with no element equal to the mod 3 sum of its diagonal and antidiagonal neighbors.

The programs for A183372, there is no canonical definition to state claims against.
-/

/-! ## A183372.P16742789544788068228

`A183374(A167499(n+3))`
-/

namespace A183372.P16742789544788068228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183374 (A167499 (n + 3)).toNat

end

end A183372.P16742789544788068228

/-! ## A183372.P2186008724721386730

`A183374(A000096(n+3)+6)`
-/

namespace A183372.P2186008724721386730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183374 (A000096 (n + 3) + 6).toNat

end

end A183372.P2186008724721386730

/-! ## A183372.P17397983927248789325

`A183374(A052905(n+1)+10)`
-/

namespace A183372.P17397983927248789325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183374 (A052905 (n + 1) + 10).toNat

end

end A183372.P17397983927248789325

/-! ## A183372.P13973824888039475581

`A183374(A000124(n+5)-(n+1))`
-/

namespace A183372.P13973824888039475581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183374 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A183372.P13973824888039475581

/-! ## A183372.P17119148251651663103

`A183374(A001478(n+1)+A000124(n+5))`
-/

namespace A183372.P17119148251651663103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183374 (A001478 (n + 1) + A000124 (n + 5)).toNat

end

end A183372.P17119148251651663103

/-!
# A183373: Number of nX6 binary arrays with no element equal to the mod 3 sum of its diagonal and antidiagonal neighbors.

The programs for A183373, there is no canonical definition to state claims against.
-/

/-! ## A183373.P10949926858703361435

`A183374(A167487(n+4)-1)`
-/

namespace A183373.P10949926858703361435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183374 (A167487 (n + 4) - 1).toNat

end

end A183373.P10949926858703361435

/-! ## A183373.P5528029997286694833

`A183374(A000217(n+5)+6)`
-/

namespace A183373.P5528029997286694833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183374 (A000217 (n + 5) + 6).toNat

end

end A183373.P5528029997286694833

/-! ## A183373.P907303597938098096

`A183374(A016789(n+5)+A000124(n+2))`
-/

namespace A183373.P907303597938098096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183374 (A016789 (n + 5) + A000124 (n + 2)).toNat

end

end A183373.P907303597938098096

/-! ## A183373.P14742495257358128779

`A183374(A374007(n+1))`
-/

namespace A183373.P14742495257358128779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183374 (A374007 (n + 1)).toNat

end

end A183373.P14742495257358128779

/-! ## A183373.P10291482228213590416

`A183374(A052905(n+3))`
-/

namespace A183373.P10291482228213590416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183374 (A052905 (n + 3)).toNat

end

end A183373.P10291482228213590416

/-!
# A183374: T(n,k)=Number of nXk binary arrays with no element equal to the mod 3 sum of its diagonal and antidiagonal neighbors.

The programs for A183374, there is no canonical definition to state claims against.
-/

/-! ## A183374.P16482692763782907725

`∑{digits}[A095399(A022166(n)), #]`
-/

namespace A183374.P16482692763782907725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095399 (A022166 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A183374.P16482692763782907725

/-! ## A183374.P11958474095416955867

`A025581(A166063(A008518(n)²))`
-/

namespace A183374.P11958474095416955867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A166063 (A008518 n ^ 2).toNat).toNat

end

end A183374.P11958474095416955867

/-! ## A183374.P10937760349787313091

`A062821(or(A176561(n), A296548(n)))`
-/

namespace A183374.P10937760349787313091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (Int.lor (A176561 n) (A296548 n)).toNat

end

end A183374.P10937760349787313091

/-!
# A183375: Number of n X n binary arrays with no element equal to the mod 3 sum of its king-move neighbors.

The programs for A183375, there is no canonical definition to state claims against.
-/

/-! ## A183375.P18159155782019592744

`A183380(∑[4*n]+1)`
-/

namespace A183375.P18159155782019592744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183380 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183375.P18159155782019592744

/-! ## A183375.P17522657966662648753

`A183380(A001844(n))+char[9]`
-/

namespace A183375.P17522657966662648753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183380 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A183375.P17522657966662648753

/-! ## A183375.P901926984819525539

`A047996(n)*A183380(A001844(n))`
-/

namespace A183375.P901926984819525539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 n * A183380 (A001844 n).toNat

end

end A183375.P901926984819525539

/-! ## A183375.P10200823779708293220

`A136522(n)*A183380(A001844(n))`
-/

namespace A183375.P10200823779708293220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 n * A183380 (A001844 n).toNat

end

end A183375.P10200823779708293220

/-! ## A183375.P17523713784312186100

`A183380(A001844(n))*A232439(n)`
-/

namespace A183375.P17523713784312186100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183380 (A001844 n).toNat * A232439 n

end

end A183375.P17523713784312186100

/-!
# A183376: Number of nX3 binary arrays with no element equal to the mod 3 sum of its king-move neighbors.

The programs for A183376, there is no canonical definition to state claims against.
-/

/-! ## A183376.P8999855495351326344

`A183380(∑[n+2]+4)`
-/

namespace A183376.P8999855495351326344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183380 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183376.P8999855495351326344

/-! ## A183376.P17093240744930621621

`or(char[1], A183380(A167614(n+1)))`
-/

namespace A183376.P17093240744930621621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A183380 (A167614 (n + 1)).toNat)

end

end A183376.P17093240744930621621

/-! ## A183376.P12405934161921735136

`A183380(A034856(n+1)+5)+char[18]`
-/

namespace A183376.P12405934161921735136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183380 (A034856 (n + 1) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A183376.P12405934161921735136

/-! ## A183376.P18028944193602751476

`A007318(C(n, n²))*A183380(A167614(n+1))`
-/

namespace A183376.P18028944193602751476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n (n ^ 2)) * A183380 (A167614 (n + 1)).toNat

end

end A183376.P18028944193602751476

/-! ## A183376.P8921363746594735982

`A183380(A167614(n+1))+A008683(4*(n+1))`
-/

namespace A183376.P8921363746594735982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183380 (A167614 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A183376.P8921363746594735982

/-!
# A183377: Number of nX4 binary arrays with no element equal to the mod 3 sum of its king-move neighbors.

The programs for A183377, there is no canonical definition to state claims against.
-/

/-! ## A183377.P8871949218313007582

`A183380(∑[n+3]+7)`
-/

namespace A183377.P8871949218313007582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183380 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A183377.P8871949218313007582

/-! ## A183377.P7480044445820701735

`A183380(A000096(n+2)+5)+char[16]`
-/

namespace A183377.P7480044445820701735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183380 (A000096 (n + 2) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A183377.P7480044445820701735

/-! ## A183377.P3017267699554796219

`A183380(A167614(n+2)+1)%A136412(n+1)`
-/

namespace A183377.P3017267699554796219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183380 (A167614 (n + 2) + 1).toNat) (A136412 (n + 1))

end

end A183377.P3017267699554796219

/-! ## A183377.P782696382342614795

`A007318(C(2, n))*A183380(A000096(n+2)+5)`
-/

namespace A183377.P782696382342614795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A183380 (A000096 (n + 2) + 5).toNat

end

end A183377.P782696382342614795

/-! ## A183377.P7115145715147516109

`A000041(C(n, n²))*A183380(A000096(n+2)+5)`
-/

namespace A183377.P7115145715147516109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n (n ^ 2)) * A183380 (A000096 (n + 2) + 5).toNat

end

end A183377.P7115145715147516109

/-!
# A183378: Number of nX5 binary arrays with no element equal to the mod 3 sum of its king-move neighbors.

The programs for A183378, there is no canonical definition to state claims against.
-/

/-! ## A183378.P9855607970443830792

`A183380(A374005(n+1))`
-/

namespace A183378.P9855607970443830792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183380 (A374005 (n + 1)).toNat

end

end A183378.P9855607970443830792

/-! ## A183378.P1961689316731904758

`A183380(A167499(n+3))`
-/

namespace A183378.P1961689316731904758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183380 (A167499 (n + 3)).toNat

end

end A183378.P1961689316731904758

/-! ## A183378.P11010803725885452815

`A183380(A155212(n)+13)`
-/

namespace A183378.P11010803725885452815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183380 (A155212 n + 13).toNat

end

end A183378.P11010803725885452815

/-! ## A183378.P233463199242461223

`A183380(A056000(n)+15)`
-/

namespace A183378.P233463199242461223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183380 (A056000 n + 15).toNat

end

end A183378.P233463199242461223

/-! ## A183378.P2919420566293202448

`A183380(eq[7, A066657(n)])`
-/

namespace A183378.P2919420566293202448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183380 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183378.P2919420566293202448

/-!
# A183379: Number of nX6 binary arrays with no element equal to the mod 3 sum of its king-move neighbors.

The programs for A183379, there is no canonical definition to state claims against.
-/

/-! ## A183379.P10097096759129856643

`A183380(A374007(n+1))`
-/

namespace A183379.P10097096759129856643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183380 (A374007 (n + 1)).toNat

end

end A183379.P10097096759129856643

/-! ## A183379.P2763176945208629718

`A183380(A056115(n)+21)`
-/

namespace A183379.P2763176945208629718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183380 (A056115 n + 21).toNat

end

end A183379.P2763176945208629718

/-! ## A183379.P11297468210438579148

`A183380(Δ[A255994(n+2)])`
-/

namespace A183379.P11297468210438579148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255994 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183380 (f1 (n + 1) - f1 n).toNat

end

end A183379.P11297468210438579148

/-! ## A183379.P9206090209933323611

`A183380(A167614(n+4)+3)`
-/

namespace A183379.P9206090209933323611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183380 (A167614 (n + 4) + 3).toNat

end

end A183379.P9206090209933323611

/-! ## A183379.P854951674331325735

`A183380(A000217(n+5)+6)`
-/

namespace A183379.P854951674331325735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183380 (A000217 (n + 5) + 6).toNat

end

end A183379.P854951674331325735

/-!
# A183381: Half the number of n X n binary arrays with no element equal to a strict majority of its king-move neighbors.

The programs for A183381, there is no canonical definition to state claims against.
-/

/-! ## A183381.P915105589989569784

`A183386(∑[4*n]+1)`
-/

namespace A183381.P915105589989569784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183386 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183381.P915105589989569784

/-! ## A183381.P17052706228436994961

`record[A183386(A330613(n+1))]`
-/

namespace A183381.P17052706228436994961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183386 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183381.P17052706228436994961

/-! ## A183381.P9248935653421003148

`A183386(A001844(n))+char[24]`
-/

namespace A183381.P9248935653421003148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183386 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A183381.P9248935653421003148

/-! ## A183381.P9247713936213356215

`record[A003982(n)*A183386(n+1)]`
-/

namespace A183381.P9247713936213356215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A183386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183381.P9247713936213356215

/-! ## A183381.P9236417578582622570

`record[gcd(A049581(n), A183386(n+1))]`
-/

namespace A183381.P9236417578582622570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A183386 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183381.P9236417578582622570

/-!
# A183382: Half the number of n X 3 binary arrays with no element equal to a strict majority of its king-move neighbors.

The programs for A183382, there is no canonical definition to state claims against.
-/

/-! ## A183382.P10230178426289566198

`A183386(∑[n+2]+4)`
-/

namespace A183382.P10230178426289566198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183386 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183382.P10230178426289566198

/-! ## A183382.P14549024038938667067

`or(1, A183386(A167614(n+1)))`
-/

namespace A183382.P14549024038938667067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A183386 (A167614 (n + 1)).toNat)

end

end A183382.P14549024038938667067

/-! ## A183382.P12985091419808037698

`or(1, A183386(A055998(n)+6))`
-/

namespace A183382.P12985091419808037698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A183386 (A055998 n + 6).toNat)

end

end A183382.P12985091419808037698

/-! ## A183382.P12785012026765529397

`record[A010054(n)*A183386(n+3)]`
-/

namespace A183382.P12785012026765529397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A183386 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183382.P12785012026765529397

/-! ## A183382.P11940489660501135151

`A183386(A167614(n+1))%A034491(n)`
-/

namespace A183382.P11940489660501135151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183386 (A167614 (n + 1)).toNat) (A034491 n)

end

end A183382.P11940489660501135151

/-!
# A183383: Half the number of nX4 binary arrays with no element equal to a strict majority of its king-move neighbors.

The programs for A183383, there is no canonical definition to state claims against.
-/

/-! ## A183383.P9726053799581418430

`A183386(∑[n+3]+7)`
-/

namespace A183383.P9726053799581418430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183386 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A183383.P9726053799581418430

/-! ## A183383.P11035883359124409843

`A183386(A000096(n+2)+5)+char[16]`
-/

namespace A183383.P11035883359124409843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183386 (A000096 (n + 2) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A183383.P11035883359124409843

/-! ## A183383.P13094756112284544115

`A007318(C(n, 64))*A183386(A000096(n+2)+5)`
-/

namespace A183383.P13094756112284544115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 64) * A183386 (A000096 (n + 2) + 5).toNat

end

end A183383.P13094756112284544115

/-! ## A183383.P15730430817389927994

`A014963(6*(n+1))*A183386(A000096(n+2)+5)`
-/

namespace A183383.P15730430817389927994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A183386 (A000096 (n + 2) + 5).toNat

end

end A183383.P15730430817389927994

/-!
# A183384: Half the number of nX5 binary arrays with no element equal to a strict majority of its king-move neighbors.

The programs for A183384, there is no canonical definition to state claims against.
-/

/-! ## A183384.P5749651252107084116

`A183386(A374005(n+1))`
-/

namespace A183384.P5749651252107084116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183386 (A374005 (n + 1)).toNat

end

end A183384.P5749651252107084116

/-! ## A183384.P13701101303476428184

`A183386(A167499(n+3))`
-/

namespace A183384.P13701101303476428184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183386 (A167499 (n + 3)).toNat

end

end A183384.P13701101303476428184

/-! ## A183384.P7719176852944493477

`A183386(A155212(n)+13)`
-/

namespace A183384.P7719176852944493477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183386 (A155212 n + 13).toNat

end

end A183384.P7719176852944493477

/-! ## A183384.P15539096414485666700

`A183386(A056000(n)+15)`
-/

namespace A183384.P15539096414485666700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183386 (A056000 n + 15).toNat

end

end A183384.P15539096414485666700

/-! ## A183384.P16986852938230473230

`A183386(eq[7, A066657(n)])`
-/

namespace A183384.P16986852938230473230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183386 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183384.P16986852938230473230

/-!
# A183385: Half the number of nX6 binary arrays with no element equal to a strict majority of its king-move neighbors.

The programs for A183385, there is no canonical definition to state claims against.
-/

/-! ## A183385.P8712653847493823808

`A183386(A374007(n+1))`
-/

namespace A183385.P8712653847493823808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183386 (A374007 (n + 1)).toNat

end

end A183385.P8712653847493823808

/-! ## A183385.P2932332538914890532

`A183386(A056115(n)+21)`
-/

namespace A183385.P2932332538914890532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183386 (A056115 n + 21).toNat

end

end A183385.P2932332538914890532

/-! ## A183385.P10126819688594074607

`A183386(A167499(n+4)+1)`
-/

namespace A183385.P10126819688594074607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183386 (A167499 (n + 4) + 1).toNat

end

end A183385.P10126819688594074607

/-! ## A183385.P6544036025450217283

`A183386(A167614(n+4)+3)`
-/

namespace A183385.P6544036025450217283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183386 (A167614 (n + 4) + 3).toNat

end

end A183385.P6544036025450217283

/-! ## A183385.P960087496722722917

`A183386(A000217(n+5)+6)`
-/

namespace A183385.P960087496722722917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183386 (A000217 (n + 5) + 6).toNat

end

end A183385.P960087496722722917

/-!
# A183386: T(n,k)=Half the number of nXk binary arrays with no element equal to a strict majority of its king-move neighbors.

The programs for A183386, there is no canonical definition to state claims against.
-/

/-! ## A183386.P4652159518713383458

`A000523(or(2, A203022(n+1)))`
-/

namespace A183386.P4652159518713383458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (Int.lor 2 (A203022 (n + 1))).toNat

end

end A183386.P4652159518713383458

/-! ## A183386.P2905138312526992035

`A087845(A082355(A267644(n+1)))`
-/

namespace A183386.P2905138312526992035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087845 (A082355 (A267644 (n + 1)).toNat).toNat

end

end A183386.P2905138312526992035

/-! ## A183386.P3747255488976536007

`or(A196383(A055372(n)), A288318(n+1))`
-/

namespace A183386.P3747255488976536007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A196383 (A055372 n).toNat) (A288318 (n + 1))

end

end A183386.P3747255488976536007

/-!
# A183387: Half the number of n X n binary arrays with no element unequal to a strict majority of its king-move neighbors.

The programs for A183387, there is no canonical definition to state claims against.
-/

/-! ## A183387.P17066071096682566438

`A183391(∑[4*n]+1)`
-/

namespace A183387.P17066071096682566438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183391 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183387.P17066071096682566438

/-! ## A183387.P2119746336474997741

`A183391(A001844(n))+char[12]`
-/

namespace A183387.P2119746336474997741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183391 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A183387.P2119746336474997741

/-! ## A183387.P15069707270325505733

`or(A183391(A001844(n)), A209229(n))`
-/

namespace A183387.P15069707270325505733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A183391 (A001844 n).toNat) (A209229 n)

end

end A183387.P15069707270325505733

/-! ## A183387.P454477450797664348

`A007318(∑[n])*A183391(A001844(n))`
-/

namespace A183387.P454477450797664348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A183391 (A001844 n).toNat

end

end A183387.P454477450797664348

/-! ## A183387.P14459945522390481349

`(A000041(n)%2)!*A183391(A001844(n))`
-/

namespace A183387.P14459945522390481349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) * A183391 (A001844 n).toNat

end

end A183387.P14459945522390481349

/-!
# A183388: Half the number of n X 4 binary arrays with no element unequal to a strict majority of its king-move neighbors.

The programs for A183388, there is no canonical definition to state claims against.
-/

/-! ## A183388.P13928435874239043040

`A183391(∑[n+3]+7)`
-/

namespace A183388.P13928435874239043040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183391 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A183388.P13928435874239043040

/-! ## A183388.P7310398373041589617

`lcm(2, A183391(A000096(n+2)+5))`
-/

namespace A183388.P7310398373041589617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A183391 (A000096 (n + 2) + 5).toNat)

end

end A183388.P7310398373041589617

/-! ## A183388.P1070064308710545779

`A183391(A000096(n+2)+5)%A000108(n+3)`
-/

namespace A183388.P1070064308710545779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183391 (A000096 (n + 2) + 5).toNat) (A000108 (n + 3))

end

end A183388.P1070064308710545779

/-! ## A183388.P14887952531189515083

`A007318(C(2, n))*A183391(A000096(n+2)+5)`
-/

namespace A183388.P14887952531189515083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A183391 (A000096 (n + 2) + 5).toNat

end

end A183388.P14887952531189515083

/-! ## A183388.P2047054666700985391

`A000041(C(2, n+2))*A183391(A000096(n+2)+5)`
-/

namespace A183388.P2047054666700985391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A183391 (A000096 (n + 2) + 5).toNat

end

end A183388.P2047054666700985391

/-!
# A183389: Half the number of n X 5 binary arrays with no element unequal to a strict majority of its king-move neighbors.

The programs for A183389, there is no canonical definition to state claims against.
-/

/-! ## A183389.P5800375281036353540

`A183391(A374005(n+1))`
-/

namespace A183389.P5800375281036353540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183391 (A374005 (n + 1)).toNat

end

end A183389.P5800375281036353540

/-! ## A183389.P14529969322468297554

`A183391(A155212(n)+13)`
-/

namespace A183389.P14529969322468297554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183391 (A155212 n + 13).toNat

end

end A183389.P14529969322468297554

/-! ## A183389.P1290142097103044608

`A183391(A056000(n)+15)`
-/

namespace A183389.P1290142097103044608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183391 (A056000 n + 15).toNat

end

end A183389.P1290142097103044608

/-! ## A183389.P15210752388803913390

`A183391(eq[7, A066657(n)])`
-/

namespace A183389.P15210752388803913390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183391 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183389.P15210752388803913390

/-! ## A183389.P4612825323816586707

`A183391(A133263(n+4)+3)`
-/

namespace A183389.P4612825323816586707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183391 (A133263 (n + 4) + 3).toNat

end

end A183389.P4612825323816586707

/-!
# A183390: Half the number of nX6 binary arrays with no element unequal to a strict majority of its king-move neighbors.

The programs for A183390, there is no canonical definition to state claims against.
-/

/-! ## A183390.P1112572023418566701

`A183391(∑[n+5]+16)`
-/

namespace A183390.P1112572023418566701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183391 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A183390.P1112572023418566701

/-!
# A183391: T(n,k)=Half the number of nXk binary arrays with no element unequal to a strict majority of its king-move neighbors.

The programs for A183391, there is no canonical definition to state claims against.
-/

/-! ## A183391.P8477590683249877481

`∏{e}[A003961(A232646(n+1)), A000045(#)]`
-/

namespace A183391.P8477590683249877481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A232646 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000045 (Nat.factorization (f1 n).natAbs p)

end

end A183391.P8477590683249877481

/-! ## A183391.P17773961268981080158

`∏{e}[A003961(A232646(n+1)), A005627(#)]`
-/

namespace A183391.P17773961268981080158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A232646 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A005627 (Nat.factorization (f1 n).natAbs p)

end

end A183391.P17773961268981080158

/-! ## A183391.P6464702710936749326

`∏{e}[A332818(A036565(n)), A000045(#)]`
-/

namespace A183391.P6464702710936749326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332818 (A036565 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000045 (Nat.factorization (f1 n).natAbs p)

end

end A183391.P6464702710936749326

/-! ## A183391.P1830975873258860600

`∏{e}[A332818(A036565(n)), A005627(#)]`
-/

namespace A183391.P1830975873258860600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332818 (A036565 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A005627 (Nat.factorization (f1 n).natAbs p)

end

end A183391.P1830975873258860600

/-! ## A183391.P192059438552899928

`A121649(A087061(n)%A121655(n+1))`
-/

namespace A183391.P192059438552899928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121649 (Int.tmod (A087061 n) (A121655 (n + 1))).toNat

end

end A183391.P192059438552899928

/-!
# A183392: Half the number of n X n binary arrays with no element equal to a strict majority of its knight-move neighbors.

The programs for A183392, there is no canonical definition to state claims against.
-/

/-! ## A183392.P2982283007063148876

`A183397(∑[4*n]+1)`
-/

namespace A183392.P2982283007063148876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183397 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183392.P2982283007063148876

/-! ## A183392.P12548042772170364237

`record[A003982(n)*A183397(n+1)]`
-/

namespace A183392.P12548042772170364237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A183397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183392.P12548042772170364237

/-! ## A183392.P11209178148465661616

`record[gcd(A183397(n+1), A335452(2*n+1))]`
-/

namespace A183392.P11209178148465661616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A183397 (n + 1)) (A335452 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183392.P11209178148465661616

/-!
# A183393: Half the number of n X 2 binary arrays with no element equal to a strict majority of its knight-move neighbors.

The programs for A183393, there is no canonical definition to state claims against.
-/

/-! ## A183393.P719055807042998

`A183397(∑[n+1]+2)`
-/

namespace A183393.P719055807042998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183397 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A183393.P719055807042998

/-! ## A183393.P17562169912980504132

`A000027(A183397(∑[n+2]))`
-/

namespace A183393.P17562169912980504132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A183397 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A183393.P17562169912980504132

/-! ## A183393.P4322148557383511548

`A146466(n+1)*A183397(A000096(n+1))`
-/

namespace A183393.P4322148557383511548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146466 (n + 1) * A183397 (A000096 (n + 1)).toNat

end

end A183393.P4322148557383511548

/-! ## A183393.P11715216532797133941

`2*A160419(n+1)²`
-/

namespace A183393.P11715216532797133941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160419 (n + 1) ^ 2

end

end A183393.P11715216532797133941

/-!
# A183394: Half the number of nX3 binary arrays with no element equal to a strict majority of its knight-move neighbors.

The programs for A183394, there is no canonical definition to state claims against.
-/

/-! ## A183394.P17889901390902317662

`A183397(∑[n+2]+4)`
-/

namespace A183394.P17889901390902317662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183397 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183394.P17889901390902317662

/-! ## A183394.P14038879154677909315

`record[A183397(n+4)/A001497(n)]`
-/

namespace A183394.P14038879154677909315
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183397 (n + 4) : ℚ) / (A001497 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183394.P14038879154677909315

/-! ## A183394.P15007757808985379009

`lcm(1-and(2, n), A183397(A167614(n+1)))`
-/

namespace A183394.P15007757808985379009
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A183397 (A167614 (n + 1)).toNat)

end

end A183394.P15007757808985379009

/-! ## A183394.P9697356125285578053

`A183397(A167614(n+1))+A006927(n)`
-/

namespace A183394.P9697356125285578053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183397 (A167614 (n + 1)).toNat + A006927 n

end

end A183394.P9697356125285578053

/-! ## A183394.P7420701888871783035

`A183397(A167614(n+1))+A011740(n)`
-/

namespace A183394.P7420701888871783035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183397 (A167614 (n + 1)).toNat + A011740 n

end

end A183394.P7420701888871783035

/-!
# A183395: Half the number of nX4 binary arrays with no element equal to a strict majority of its knight-move neighbors.

The programs for A183395, there is no canonical definition to state claims against.
-/

/-! ## A183395.P4782431560112084889

`A183397(A141214(n)+7)`
-/

namespace A183395.P4782431560112084889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183397 (A141214 n + 7).toNat

end

end A183395.P4782431560112084889

/-! ## A183395.P12412496831794526272

`A183397(A052905(n)+9)`
-/

namespace A183395.P12412496831794526272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183397 (A052905 n + 9).toNat

end

end A183395.P12412496831794526272

/-! ## A183395.P7104804714409249114

`A183397(A055999(n)+10)`
-/

namespace A183395.P7104804714409249114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183397 (A055999 n + 10).toNat

end

end A183395.P7104804714409249114

/-! ## A183395.P14889202362033930024

`A183397(eq[5, A066657(n)])`
-/

namespace A183395.P14889202362033930024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183397 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183395.P14889202362033930024

/-! ## A183395.P2132109617764204931

`A183397(A167614(n+2)+1)`
-/

namespace A183395.P2132109617764204931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183397 (A167614 (n + 2) + 1).toNat

end

end A183395.P2132109617764204931

/-!
# A183396: Half the number of nX5 binary arrays with no element equal to a strict majority of its knight-move neighbors.

The programs for A183396, there is no canonical definition to state claims against.
-/

/-! ## A183396.P13411049507129054766

`A183397(A155212(n)+13)`
-/

namespace A183396.P13411049507129054766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183397 (A155212 n + 13).toNat

end

end A183396.P13411049507129054766

/-! ## A183396.P11240989375223509013

`A183397(A056000(n)+15)`
-/

namespace A183396.P11240989375223509013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183397 (A056000 n + 15).toNat

end

end A183396.P11240989375223509013

/-! ## A183396.P14615457992103132908

`A183397(eq[7, A066657(n)])`
-/

namespace A183396.P14615457992103132908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183397 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183396.P14615457992103132908

/-! ## A183396.P4553587909869136858

`A183397(A000217(n+4)+5)`
-/

namespace A183396.P4553587909869136858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183397 (A000217 (n + 4) + 5).toNat

end

end A183396.P4553587909869136858

/-! ## A183396.P14216442714745576017

`A183397(eq[6, A131818(n+1)])`
-/

namespace A183396.P14216442714745576017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183397 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183396.P14216442714745576017

/-!
# A183398: Half the number of n X n binary arrays with no element equal to a strict majority of its diagonal and antidiagonal neighbors.

The programs for A183398, there is no canonical definition to state claims against.
-/

/-! ## A183398.P16539505585120463

`A183402((n+1)²+n²)`
-/

namespace A183398.P16539505585120463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183402 ((n + 1) ^ 2 + n ^ 2)

end

end A183398.P16539505585120463

/-! ## A183398.P5506776057392947623

`record[gcd(A183402(n+1), A204016(n+1))]`
-/

namespace A183398.P5506776057392947623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A183402 (n + 1)) (A204016 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183398.P5506776057392947623

/-! ## A183398.P4072284760183652830

`A184955(n)+A183402(A001844(n))`
-/

namespace A183398.P4072284760183652830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 n + A183402 (A001844 n).toNat

end

end A183398.P4072284760183652830

/-! ## A183398.P12458217568277760068

`gcd(A000038(n), A183402(A001844(n)))`
-/

namespace A183398.P12458217568277760068
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A183402 (A001844 n).toNat)

end

end A183398.P12458217568277760068

/-! ## A183398.P16260262287603362617

`A007318(C(n, 2))*A183402(A001844(n))`
-/

namespace A183398.P16260262287603362617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A183402 (A001844 n).toNat

end

end A183398.P16260262287603362617

/-!
# A183399: Half the number of n X 3 binary arrays with no element equal to a strict majority of its diagonal and antidiagonal neighbors.

The programs for A183399, there is no canonical definition to state claims against.
-/

/-! ## A183399.P16028147494873600921

`A183402(∑[n+2]+4)`
-/

namespace A183399.P16028147494873600921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183402 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183399.P16028147494873600921

/-! ## A183399.P218432060116621362

`lcm(2, A183402(A167614(n+1)))`
-/

namespace A183399.P218432060116621362
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A183402 (A167614 (n + 1)).toNat)

end

end A183399.P218432060116621362

/-! ## A183399.P10758082527406052551

`A185238(n)+A183402(A167614(n+1))`
-/

namespace A183399.P10758082527406052551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 n + A183402 (A167614 (n + 1)).toNat

end

end A183399.P10758082527406052551

/-! ## A183399.P11724286994047060203

`A183402(A167614(n+1))+A034560(n+1)`
-/

namespace A183399.P11724286994047060203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183402 (A167614 (n + 1)).toNat + A034560 (n + 1)

end

end A183399.P11724286994047060203

/-! ## A183399.P15413063922069064089

`A183402(A167614(n+1))%A278654(n+1)`
-/

namespace A183399.P15413063922069064089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183402 (A167614 (n + 1)).toNat) (A278654 (n + 1))

end

end A183399.P15413063922069064089

