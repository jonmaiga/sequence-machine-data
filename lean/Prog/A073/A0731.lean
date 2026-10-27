import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
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
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B001.C012
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A073101: Number of integer solutions (x,y,z) to 4/n = 1/x + 1/y + 1/z satisfying 0 < x < y < z.

The programs for A073101, there is no canonical definition to state claims against.
-/

/-! ## A073101.P16204513910503332824

`A227612(∑[n+4]+3)`
-/

namespace A073101.P16204513910503332824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227612 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A073101.P16204513910503332824

/-! ## A073101.P13706622036075838719

`char[A025917(n)]*A227612(A055998(n+2))`
-/

namespace A073101.P13706622036075838719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025917 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A227612 (A055998 (n + 2)).toNat

end

end A073101.P13706622036075838719

/-!
# A073102: Primes of the form 210n + 1.

The programs for A073102, the canonical program `A073102.P7643878403766509078` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073102 has offset 1).

The definition of A073102 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2503 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073102.P10915364125609487695

`∩[A140535(n+1), A142076(n+1)]`
-/

namespace A073102.P10915364125609487695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073102.P10915364125609487695

namespace A073102

/-- `∩[A140535(n+1), A142076(n+1)]` -/
def P10915364125609487695.Spec : Prop :=
  ∀ n, (P10915364125609487695.a n : ℤ) = A073102 (n + 1)

end A073102

/-! ## A073102.P13462256179658260668

`∩[A140535(n+1), A293605(n+1)]`
-/

namespace A073102.P13462256179658260668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073102.P13462256179658260668

namespace A073102

/-- `∩[A140535(n+1), A293605(n+1)]` -/
def P13462256179658260668.Spec : Prop :=
  ∀ n, (P13462256179658260668.a n : ℤ) = A073102 (n + 1)

end A073102

/-! ## A073102.P5768688094298395846

`∩[A142076(n+1), A293605(n+1)]`
-/

namespace A073102.P5768688094298395846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073102.P5768688094298395846

namespace A073102

/-- `∩[A142076(n+1), A293605(n+1)]` -/
def P5768688094298395846.Spec : Prop :=
  ∀ n, (P5768688094298395846.a n : ℤ) = A073102 (n + 1)

end A073102

/-! ## A073102.P17582436781113058429

`∩[A030430(n+1), A140535(n+1)]`
-/

namespace A073102.P17582436781113058429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073102.P17582436781113058429

namespace A073102

/-- `∩[A030430(n+1), A140535(n+1)]` -/
def P17582436781113058429.Spec : Prop :=
  ∀ n, (P17582436781113058429.a n : ℤ) = A073102 (n + 1)

end A073102

/-! ## A073102.P7217094648125369052

`∩[A030430(n+1), A124826(n+1)]`
-/

namespace A073102.P7217094648125369052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073102.P7217094648125369052

namespace A073102

/-- `∩[A030430(n+1), A124826(n+1)]` -/
def P7217094648125369052.Spec : Prop :=
  ∀ n, (P7217094648125369052.a n : ℤ) = A073102 (n + 1)

end A073102

/-! ## A073102.P7643878403766509078

`∩[A124826(n+1), A140535(n+1)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A073102

/-- `∩[A124826(n+1), A140535(n+1)]` -/
def P7643878403766509078.Spec : Prop :=
  ∀ n, (P7643878403766509078.a n : ℤ) = A073102 (n + 1)

theorem P7643878403766509078.correct : P7643878403766509078.Spec := by
  intro n
  simp only [A073102, Nat.add_sub_cancel]

end A073102

/-! ## A073102.P2572493596355791933

`∩[A124826(n+1), A142076(n+1)]`
-/

namespace A073102.P2572493596355791933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073102.P2572493596355791933

namespace A073102

/-- `∩[A124826(n+1), A142076(n+1)]` -/
def P2572493596355791933.Spec : Prop :=
  ∀ n, (P2572493596355791933.a n : ℤ) = A073102 (n + 1)

end A073102

/-! ## A073102.P5986860151254694997

`∩[A111092(n+1), A124826(n+1)]`
-/

namespace A073102.P5986860151254694997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073102.P5986860151254694997

namespace A073102

/-- `∩[A111092(n+1), A124826(n+1)]` -/
def P5986860151254694997.Spec : Prop :=
  ∀ n, (P5986860151254694997.a n : ℤ) = A073102 (n + 1)

end A073102

/-! ## A073102.P13538333240941126689

`∩[A111092(n+1), A293605(n+1)]`
-/

namespace A073102.P13538333240941126689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073102.P13538333240941126689

namespace A073102

/-- `∩[A111092(n+1), A293605(n+1)]` -/
def P13538333240941126689.Spec : Prop :=
  ∀ n, (P13538333240941126689.a n : ℤ) = A073102 (n + 1)

end A073102

/-! ## A073102.P1806923670010126718

`∩[A089720(n+1), A124826(n+1)]`
-/

namespace A073102.P1806923670010126718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073102.P1806923670010126718

namespace A073102

/-- `∩[A089720(n+1), A124826(n+1)]` -/
def P1806923670010126718.Spec : Prop :=
  ∀ n, (P1806923670010126718.a n : ℤ) = A073102 (n + 1)

end A073102

/-! ## A073102.P11107027820185709151

`∩[A089720(n+1), A140535(n+1)]`
-/

namespace A073102.P11107027820185709151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073102.P11107027820185709151

namespace A073102

/-- `∩[A089720(n+1), A140535(n+1)]` -/
def P11107027820185709151.Spec : Prop :=
  ∀ n, (P11107027820185709151.a n : ℤ) = A073102 (n + 1)

end A073102

/-! ## A073102.P12515305803430336056

`∩[A111092(n+1), A139503(n+1)]`
-/

namespace A073102.P12515305803430336056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073102.P12515305803430336056

namespace A073102

/-- `∩[A111092(n+1), A139503(n+1)]` -/
def P12515305803430336056.Spec : Prop :=
  ∀ n, (P12515305803430336056.a n : ℤ) = A073102 (n + 1)

end A073102

/-! ## A073102.P13982872500924720925

`∩[A139503(n+1), A140535(n+1)]`
-/

namespace A073102.P13982872500924720925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073102.P13982872500924720925

namespace A073102

/-- `∩[A139503(n+1), A140535(n+1)]` -/
def P13982872500924720925.Spec : Prop :=
  ∀ n, (P13982872500924720925.a n : ℤ) = A073102 (n + 1)

end A073102

/-! ## A073102.P714088571788653364

`∩[A139503(n+1), A142076(n+1)]`
-/

namespace A073102.P714088571788653364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073102.P714088571788653364

namespace A073102

/-- `∩[A139503(n+1), A142076(n+1)]` -/
def P714088571788653364.Spec : Prop :=
  ∀ n, (P714088571788653364.a n : ℤ) = A073102 (n + 1)

end A073102

/-! ## A073102.P8844791443885748385

`∩[A111092(n+1), A132230(n+1)]`
-/

namespace A073102.P8844791443885748385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073102.P8844791443885748385

namespace A073102

/-- `∩[A111092(n+1), A132230(n+1)]` -/
def P8844791443885748385.Spec : Prop :=
  ∀ n, (P8844791443885748385.a n : ℤ) = A073102 (n + 1)

end A073102

/-! ## A073102.P5260887545618812997

`∩[A124826(n+1), A132230(n+1)]`
-/

namespace A073102.P5260887545618812997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073102.P5260887545618812997

namespace A073102

/-- `∩[A124826(n+1), A132230(n+1)]` -/
def P5260887545618812997.Spec : Prop :=
  ∀ n, (P5260887545618812997.a n : ℤ) = A073102 (n + 1)

end A073102

/-! ## A073102.P3983382206788182069

`∩[A132230(n+1), A140535(n+1)]`
-/

namespace A073102.P3983382206788182069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073102.P3983382206788182069

namespace A073102

/-- `∩[A132230(n+1), A140535(n+1)]` -/
def P3983382206788182069.Spec : Prop :=
  ∀ n, (P3983382206788182069.a n : ℤ) = A073102 (n + 1)

end A073102

/-! ## A073102.P3766141616513591632

`∩[A132230(n+1), A142076(n+1)]`
-/

namespace A073102.P3766141616513591632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073102.P3766141616513591632

namespace A073102

/-- `∩[A132230(n+1), A142076(n+1)]` -/
def P3766141616513591632.Spec : Prop :=
  ∀ n, (P3766141616513591632.a n : ℤ) = A073102 (n + 1)

end A073102

/-! ## A073102.P15219217532692132886

`p?[7*15*n+1]`
-/

namespace A073102.P15219217532692132886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (15 * n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A073102.P15219217532692132886

namespace A073102

/-- `p?[7*15*n+1]` -/
def P15219217532692132886.Spec : Prop :=
  ∀ n, (P15219217532692132886.a n : ℤ) = A073102 (n + 1)

end A073102

/-! ## A073102.P220519052672308440

`∩[A124826(n+1), A216309(n+1)]`
-/

namespace A073102.P220519052672308440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073102.P220519052672308440

namespace A073102

/-- `∩[A124826(n+1), A216309(n+1)]` -/
def P220519052672308440.Spec : Prop :=
  ∀ n, (P220519052672308440.a n : ℤ) = A073102 (n + 1)

end A073102

/-!
# A073103: Number of solutions to x^4 == 1 (mod n).

The programs for A073103, there is no canonical definition to state claims against.
-/

/-! ## A073103.P10684852344610630073

`2^A357906(n+1)`
-/

namespace A073103.P10684852344610630073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A357906 (n + 1) : ℤ)

end

end A073103.P10684852344610630073

/-! ## A073103.P10101383806082422742

`∑{d}[n+1, A160499(#)]`
-/

namespace A073103.P10101383806082422742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A160499 d

end

end A073103.P10101383806082422742

/-! ## A073103.P6269620592215865655

`A227091(gcd(n+1, ∑[n]))`
-/

namespace A073103.P6269620592215865655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227091 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A073103.P6269620592215865655

/-! ## A073103.P9127103968129724325

`A227091(A026741(n+1))`
-/

namespace A073103.P9127103968129724325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227091 (A026741 (n + 1)).toNat

end

end A073103.P9127103968129724325

/-! ## A073103.P3662807224395418301

`A000010(n+1)/A250207(n+1)`
-/

namespace A073103.P3662807224395418301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A250207 (n + 1) : ℚ)

end

end A073103.P3662807224395418301

/-! ## A073103.P14858520411658475456

`A060839(n+1)*A087692(n+1)/A250207(n+1)`
-/

namespace A073103.P14858520411658475456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060839 (n + 1) * A087692 (n + 1) : ℚ) / (A250207 (n + 1) : ℚ)

end

end A073103.P14858520411658475456

/-! ## A073103.P2431794901153976843

`A247257(n+1)/A250207(n+1)*A293485(n+1)`
-/

namespace A073103.P2431794901153976843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247257 (n + 1) : ℚ) / (A250207 (n + 1) : ℚ) * (A293485 (n + 1) : ℚ)

end

end A073103.P2431794901153976843

/-! ## A073103.P8035307588897857989

`A293482(n+1)/A250207(n+1)*A319099(n+1)`
-/

namespace A073103.P8035307588897857989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293482 (n + 1) : ℚ) / (A250207 (n + 1) : ℚ) * (A319099 (n + 1) : ℚ)

end

end A073103.P8035307588897857989

/-! ## A073103.P6180781341542373536

`A293483(n+1)/A250207(n+1)*A319100(n+1)`
-/

namespace A073103.P6180781341542373536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293483 (n + 1) : ℚ) / (A250207 (n + 1) : ℚ) * (A319100 (n + 1) : ℚ)

end

end A073103.P6180781341542373536

/-! ## A073103.P10031991459372241563

`A293484(n+1)/A250207(n+1)*A319101(n+1)`
-/

namespace A073103.P10031991459372241563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293484 (n + 1) : ℚ) / (A250207 (n + 1) : ℚ) * (A319101 (n + 1) : ℚ)

end

end A073103.P10031991459372241563

/-! ## A073103.P12394669529171550794

`A067541(2*n+1)/A250207(n+1)`
-/

namespace A073103.P12394669529171550794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067541 (2 * n + 1) : ℚ) / (A250207 (n + 1) : ℚ)

end

end A073103.P12394669529171550794

/-!
# A073106: Least k such that there are n primes among the numbers 2*n*x + 1 for 1 <= x <= k.

The programs for A073106, there is no canonical definition to state claims against.
-/

/-! ## A073106.P16310012740453278033

`A087377(2*(n+1)²)`
-/

namespace A073106.P16310012740453278033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087377 (2 * (n + 1) ^ 2)

end

end A073106.P16310012740453278033

/-! ## A073106.P8188503886747536100

`or(char[1], A087377(∑[4*n+2]))`
-/

namespace A073106.P8188503886747536100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A087377 (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A073106.P8188503886747536100

/-! ## A073106.P4335981845452930078

`A000027(A087377(∑[4*n+2]))`
-/

namespace A073106.P4335981845452930078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A087377 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A073106.P4335981845452930078

/-! ## A073106.P930160910588104106

`gcd(A000038(n), A087377(∑[4*n+2]))`
-/

namespace A073106.P930160910588104106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A087377 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A073106.P930160910588104106

/-! ## A073106.P2268487128884348004

`A007318(∑[n])*A087377(∑[4*n+2])`
-/

namespace A073106.P2268487128884348004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A087377 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A073106.P2268487128884348004

/-! ## A073106.P18366158167174986191

`A087377(∑[4*n+2])%p?[A000124(n)]`
-/

namespace A073106.P18366158167174986191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087377 (∑ j ∈ Finset.range (n + 1), f1 j)) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

end

end A073106.P18366158167174986191

/-! ## A073106.P12450719266916270757

`A000034(2*n)*A087377(∑[4*n+2])`
-/

namespace A073106.P12450719266916270757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A087377 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A073106.P12450719266916270757

/-! ## A073106.P3455152713840013000

`gcd(5, A000032(n))^n*A087377(∑[4*n+2])`
-/

namespace A073106.P3455152713840013000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 5 (A000032 n) ^ n : ℤ) * A087377 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A073106.P3455152713840013000

/-!
# A073107: Triangle T(n,k) read by rows, where e.g.f. for T(n,k) is exp((1+y)*x)/(1-x).

The programs for A073107, the canonical program `A073107.P13977499091388568965` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073107 has offset 0).

The definition of A073107 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073107.P13977499091388568965

`row(n)*T(n-1,k)+C(row(n), col(n))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A073107

/-- `row(n)*T(n-1,k)+C(row(n), col(n))` -/
def P13977499091388568965.Spec : Prop :=
  ∀ n, (P13977499091388568965.a n : ℤ) = A073107 n

theorem P13977499091388568965.correct : P13977499091388568965.Spec := by
  intro n
  simp only [A073107]

end A073107

/-! ## A073107.P8056270559252940271

`A000522(row(n)-col(n))*C(row(n), col(n))`
-/

namespace A073107.P8056270559252940271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n) * (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ)

end

end A073107.P8056270559252940271

namespace A073107

/-- `A000522(row(n)-col(n))*C(row(n), col(n))` -/
def P8056270559252940271.Spec : Prop :=
  ∀ n, P8056270559252940271.a n = A073107 n

end A073107

/-! ## A073107.P9676471153378924824

`A007318(n)*A000522(A025581(n))`
-/

namespace A073107.P9676471153378924824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000522 (A025581 n).toNat

end

end A073107.P9676471153378924824

namespace A073107

/-- `A007318(n)*A000522(A025581(n))` -/
def P9676471153378924824.Spec : Prop :=
  ∀ n, P9676471153378924824.a n = A073107 n

end A073107

/-! ## A073107.P14892628808984754665

`sqrt(A008459(n))*A000522(A025581(n))`
-/

namespace A073107.P14892628808984754665
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A000522 (A025581 n).toNat : ℝ)

end

end A073107.P14892628808984754665

namespace A073107

/-- `sqrt(A008459(n))*A000522(A025581(n))` -/
def P14892628808984754665.Spec : Prop :=
  ∀ n, P14892628808984754665.a n = (A073107 n : ℝ)

end A073107

/-! ## A073107.P10643090610428944991

`Δ[A102363(n)]*A000522(A025581(n))`
-/

namespace A073107.P10643090610428944991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000522 (A025581 n).toNat

end

end A073107.P10643090610428944991

namespace A073107

/-- `Δ[A102363(n)]*A000522(A025581(n))` -/
def P10643090610428944991.Spec : Prop :=
  ∀ n, P10643090610428944991.a n = A073107 n

end A073107

/-! ## A073107.P3312807356495452822

`(A014473(n)+1)*A000522(A025581(n))`
-/

namespace A073107.P3312807356495452822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A000522 (A025581 n).toNat

end

end A073107.P3312807356495452822

namespace A073107

/-- `(A014473(n)+1)*A000522(A025581(n))` -/
def P3312807356495452822.Spec : Prop :=
  ∀ n, P3312807356495452822.a n = A073107 n

end A073107

/-! ## A073107.P1416340713372011901

`A000522(A025581(n))/2*A028326(n)`
-/

namespace A073107.P1416340713372011901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000522 (A025581 n).toNat : ℚ) / 2 * (A028326 n : ℚ)

end

end A073107.P1416340713372011901

namespace A073107

/-- `A000522(A025581(n))/2*A028326(n)` -/
def P1416340713372011901.Spec : Prop :=
  ∀ n, P1416340713372011901.a n = (A073107 n : ℚ)

end A073107

/-! ## A073107.P11899916207758367972

`ceil(A134059(n)/3)*A000522(A025581(n))`
-/

namespace A073107.P11899916207758367972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134059 n : ℚ) / 3⌉ * A000522 (A025581 n).toNat

end

end A073107.P11899916207758367972

namespace A073107

/-- `ceil(A134059(n)/3)*A000522(A025581(n))` -/
def P11899916207758367972.Spec : Prop :=
  ∀ n, P11899916207758367972.a n = A073107 n

end A073107

/-! ## A073107.P10058985760516882826

`ceil(A135087(n)/4)*A000522(A025581(n))`
-/

namespace A073107.P10058985760516882826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A135087 n : ℚ) / 4⌉ * A000522 (A025581 n).toNat

end

end A073107.P10058985760516882826

namespace A073107

/-- `ceil(A135087(n)/4)*A000522(A025581(n))` -/
def P10058985760516882826.Spec : Prop :=
  ∀ n, P10058985760516882826.a n = A073107 n

end A073107

/-! ## A073107.P9499349774946459794

`ceil(A135089(n)/5)*A000522(A025581(n))`
-/

namespace A073107.P9499349774946459794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A135089 n : ℚ) / 5⌉ * A000522 (A025581 n).toNat

end

end A073107.P9499349774946459794

namespace A073107

/-- `ceil(A135089(n)/5)*A000522(A025581(n))` -/
def P9499349774946459794.Spec : Prop :=
  ∀ n, P9499349774946459794.a n = A073107 n

end A073107

/-! ## A073107.P12934229060055736610

`(A285118(n)+A285116(n))*A000522(A025581(n))`
-/

namespace A073107.P12934229060055736610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A285118 n + A285116 n) * A000522 (A025581 n).toNat

end

end A073107.P12934229060055736610

namespace A073107

/-- `(A285118(n)+A285116(n))*A000522(A025581(n))` -/
def P12934229060055736610.Spec : Prop :=
  ∀ n, P12934229060055736610.a n = A073107 n

end A073107

/-! ## A073107.P799046105100556249

`(A028276(n)-A028263(n))*A000522(A025581(n))`
-/

namespace A073107.P799046105100556249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028276 n - A028263 n) * A000522 (A025581 n).toNat

end

end A073107.P799046105100556249

namespace A073107

/-- `(A028276(n)-A028263(n))*A000522(A025581(n))` -/
def P799046105100556249.Spec : Prop :=
  ∀ n, P799046105100556249.a n = A073107 n

end A073107

/-! ## A073107.P18218773981080431980

`ceil(A134060(n)/3)*A000522(A025581(n))`
-/

namespace A073107.P18218773981080431980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134060 n : ℚ) / 3⌉ * A000522 (A025581 n).toNat

end

end A073107.P18218773981080431980

namespace A073107

/-- `ceil(A134060(n)/3)*A000522(A025581(n))` -/
def P18218773981080431980.Spec : Prop :=
  ∀ n, P18218773981080431980.a n = A073107 n

end A073107

/-! ## A073107.P8321277051524590954

`A000522(A025581(n))*A001281(A028326(n))`
-/

namespace A073107.P8321277051524590954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 (A025581 n).toNat * A001281 (A028326 n).toNat

end

end A073107.P8321277051524590954

namespace A073107

/-- `A000522(A025581(n))*A001281(A028326(n))` -/
def P8321277051524590954.Spec : Prop :=
  ∀ n, P8321277051524590954.a n = A073107 n

end A073107

/-!
# A073109: a(n) = (Product_{p<=n, p odd prime} p) * Sum_{k=1..n} B(k)*C(2k,k) where B(k) is the k-th Bernoulli number.

The programs for A073109, there is no canonical definition to state claims against.
-/

/-! ## A073109.P10476205486806844483

`A056239(A075135(n+1))-A061316(n)`
-/

namespace A073109.P10476205486806844483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A075135 (n + 1)).toNat - A061316 n

end

end A073109.P10476205486806844483

/-!
# A073110: Number of permutations p of (1,2,3,...,n) such that sigma(1+p(1))+sigma(2+p(2))+...+sigma(n+p(n))=2*n^2.

The programs for A073110, there is no canonical definition to state claims against.
-/

/-! ## A073110.P1645581676839050691

`A350630(a(n-1)+1)+1` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A073110.P1645581676839050691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n a =>
  A350630 (a (n - 1) + 1).toNat + 1

end

end A073110.P1645581676839050691

/-! ## A073110.P14358141265674308903

`xor(1, A003056(A335345(n)))`
-/

namespace A073110.P14358141265674308903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A003056 (A335345 n).toNat)

end

end A073110.P14358141265674308903

/-! ## A073110.P2183737181931295504

`A030308(n)+A276096(2*(n+2))²`
-/

namespace A073110.P2183737181931295504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 n + A276096 (2 * (n + 2)) ^ 2

end

end A073110.P2183737181931295504

/-!
# A073111: Number of permutations p of [n] such that 1^p(1) + 2^p(2) + 3^p(3) + ... + n^p(n) is prime.

The programs for A073111, there is no canonical definition to state claims against.
-/

/-! ## A073111.P5848031964619352393

`A097796(A225196(2*(n+1))+A008885(n))`
-/

namespace A073111.P5848031964619352393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097796 (A225196 (2 * (n + 1)) + A008885 n).toNat

end

end A073111.P5848031964619352393

/-!
# A073113: a(n) = 2^(2^n + n).

The programs for A073113, the canonical program `A073113.P11612113336901894946` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073113 has offset 0).

The definition of A073113 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(2^n+n)` (program `A073113.P11612113336901894946`, by `A073113.P11612113336901894946.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A073113.P11612113336901894946

`2^(2^n+n)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A073113

/-- `2^(2^n+n)` -/
def P11612113336901894946.Spec : Prop :=
  ∀ n, (P11612113336901894946.a n : ℤ) = A073113 n

theorem P11612113336901894946.correct : P11612113336901894946.Spec := by
  intro n
  simp only [A073113]

end A073113

/-! ## A073113.P3719192026006340208

`∩[2^n, n*2^n]`
-/

namespace A073113.P3719192026006340208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 2 ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = x) n

end

end A073113.P3719192026006340208

namespace A073113

/-- `∩[2^n, n*2^n]` -/
def P3719192026006340208.Spec : Prop :=
  ∀ n, (P3719192026006340208.a n : ℤ) = A073113 n

end A073113

/-! ## A073113.P252154093062416560

`∏[a(n-1)²/2]` with `a(0)=2, a(1)=4`
-/

namespace A073113.P252154093062416560
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 4] fun n f1 =>
  f1 (n - 1) ^ 2 / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A073113.P252154093062416560

namespace A073113

/-- `∏[a(n-1)²/2]` -/
def P252154093062416560.Spec : Prop :=
  ∀ n, P252154093062416560.a n = (A073113 n : ℚ)

end A073113

/-! ## A073113.P16350491605461306080

`∏[∏[a(n-1)²]]` with `a(0)=2, a(1)=2, a(2)=2`
-/

namespace A073113.P16350491605461306080
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 2] fun n f2 =>
  f2 (n - 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A073113.P16350491605461306080

namespace A073113

/-- `∏[∏[a(n-1)²]]` -/
def P16350491605461306080.Spec : Prop :=
  ∀ n, (P16350491605461306080.a n : ℤ) = A073113 n

end A073113

/-! ## A073113.P13421641850677379535

`floor(2^∑[2*a(n-1)-1])` with `a(0)=1, a(1)=2`
-/

namespace A073113.P13421641850677379535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  2 * f1 (n - 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)⌋

end

end A073113.P13421641850677379535

namespace A073113

/-- `floor(2^∑[2*a(n-1)-1])` -/
def P13421641850677379535.Spec : Prop :=
  ∀ n, P13421641850677379535.a n = A073113 n

end A073113

/-!
# A073114: Number of permutations p of [n] such that 1*p(1) + 2*p(2) + 3*p(3) + ... + n*p(n) is prime.

The programs for A073114, there is no canonical definition to state claims against.
-/

/-! ## A073114.P12209920164629791784

`A002266(A280041(n+1)+and(n, floor(n/2)))`
-/

namespace A073114.P12209920164629791784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A280041 (n + 1) + Int.land (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A073114.P12209920164629791784

/-! ## A073114.P11171528360990901613

`A138471(A222467(n)+A000328(n))`
-/

namespace A073114.P11171528360990901613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138471 (A222467 n + A000328 n).toNat

end

end A073114.P11171528360990901613

/-! ## A073114.P162551050470648053

`A000926(A003173(n+1))-A067330(n+1)`
-/

namespace A073114.P162551050470648053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000926 (A003173 (n + 1)).toNat - A067330 (n + 1)

end

end A073114.P162551050470648053

/-!
# A073115: Decimal expansion of sum(k>=0, 1/2^floor(k*phi) ) where phi = (1+sqrt(5))/2.

The programs for A073115, there is no canonical definition to state claims against.
-/

/-! ## A073115.P16182094133150460882

`A081544(n)-A000007(n)`
-/

namespace A073115.P16182094133150460882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081544 (n + 1) - A000007 n

end

end A073115.P16182094133150460882

/-! ## A073115.P13334209039175220272

`A081544(n)-A209229(A006285(n+1))`
-/

namespace A073115.P13334209039175220272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081544 (n + 1) - A209229 (A006285 (n + 1)).toNat

end

end A073115.P13334209039175220272

/-! ## A073115.P13304528642555693700

`A081544(n)-A347233(A066678(n+1))`
-/

namespace A073115.P13304528642555693700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081544 (n + 1) - A347233 (A066678 (n + 1)).toNat

end

end A073115.P13304528642555693700

/-! ## A073115.P4867099379696570949

`A081544(n)-A209229(A237438(n+1))`
-/

namespace A073115.P4867099379696570949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081544 (n + 1) - A209229 (A237438 (n + 1)).toNat

end

end A073115.P4867099379696570949

/-! ## A073115.P13730887664264228240

`A121373(A000040(3*n+4))+A081544(n)`
-/

namespace A073115.P13730887664264228240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A000040 (3 * n + 4)).toNat + A081544 (n + 1)

end

end A073115.P13730887664264228240

/-! ## A073115.P9716637523308402776

`A081544(n)-A209229(n²+2)`
-/

namespace A073115.P9716637523308402776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081544 (n + 1) - A209229 (n ^ 2 + 2)

end

end A073115.P9716637523308402776

/-!
# A073117: a(n+1) = a(n) + a(n) mod n; a(1) = 1.

The programs for A073117, the canonical program `A073117.P1964006626300922501` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073117 has offset 1).

The definition of A073117 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073117.P1964006626300922501

`a(n-1)+a(n-1)%n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A073117

/-- `a(n-1)+a(n-1)%n` -/
def P1964006626300922501.Spec : Prop :=
  ∀ n, (P1964006626300922501.a n : ℤ) = A073117 (n + 1)

theorem P1964006626300922501.correct : P1964006626300922501.Spec := by
  intro n
  simp only [A073117, Nat.add_sub_cancel]

end A073117

/-!
# A073118: Total sum of prime parts in all partitions of n.

The programs for A073118, there is no canonical definition to state claims against.
-/

/-! ## A073118.P17063939431419134082

`A103628(n+1)+A194544(n+1)-A194545(n+1)`
-/

namespace A073118.P17063939431419134082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103628 (n + 1) + (A194544 (n + 1) - A194545 (n + 1))

end

end A073118.P17063939431419134082

/-! ## A073118.P15515881360071943086

`A066186(n+1)-A194545(n+1)`
-/

namespace A073118.P15515881360071943086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) - A194545 (n + 1)

end

end A073118.P15515881360071943086

/-! ## A073118.P12030185164045654117

`(n+1)*A000041(n+1)-A194545(n+1)`
-/

namespace A073118.P12030185164045654117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000041 (n + 1) - A194545 (n + 1)

end

end A073118.P12030185164045654117

/-! ## A073118.P11460793717329265195

`A194552(n+1)-A326982(n+1)`
-/

namespace A073118.P11460793717329265195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194552 (n + 1) - A326982 (n + 1)

end

end A073118.P11460793717329265195

/-! ## A073118.P1266262773547075141

`A066186(n+1)-(A326982(n+1)+A000070(n))`
-/

namespace A073118.P1266262773547075141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) - (A326982 (n + 1) + A000070 n)

end

end A073118.P1266262773547075141

/-!
# A073119: Total number of parts which are positive powers of 2 in all partitions of n.

The programs for A073119, there is no canonical definition to state claims against.
-/

/-! ## A073119.P16112207866952989167

`A342230(n+1)-A000070(n)`
-/

namespace A073119.P16112207866952989167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342230 (n + 1) - A000070 n

end

end A073119.P16112207866952989167

/-! ## A073119.P11603669133046739147

`∑[Δ[A342230(n)]-A000041(n)]`
-/

namespace A073119.P11603669133046739147
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342230 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073119.P11603669133046739147

/-! ## A073119.P14590997180039168518

`A342230(n+1)-∑[A000041(n)]`
-/

namespace A073119.P14590997180039168518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342230 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073119.P14590997180039168518

/-! ## A073119.P17124685638768425255

`A342230(n+1)-(A024786(n+1)+A024786(n+2))`
-/

namespace A073119.P17124685638768425255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342230 (n + 1) - (A024786 (n + 1) + A024786 (n + 2))

end

end A073119.P17124685638768425255

/-! ## A073119.P5020813064520495203

`A342230(n+1)-∑[sqrt(A001255(n))]`
-/

namespace A073119.P5020813064520495203
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A342230 (n + 1) : ℝ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073119.P5020813064520495203

/-!
# A073120: Areas of Pythagorean (or right) triangles with integer sides of the form (2mn, m^2 - n^2, m^2 + n^2).

The programs for A073120, there is no canonical definition to state claims against.
-/

/-! ## A073120.P6806274462108506441

`A057102(n+1)/4`
-/

namespace A073120.P6806274462108506441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057102 (n + 1) : ℚ) / 4

end

end A073120.P6806274462108506441

/-! ## A073120.P6537212755495028028

`(2^A008683(A133410(n)))²*A057102(n+1)`
-/

namespace A073120.P6537212755495028028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A008683 (A133410 n).toNat : ℤ)) ^ 2 * (A057102 (n + 1) : ℚ)

end

end A073120.P6537212755495028028

/-! ## A073120.P11799407786362538590

`A110962(A057102(n+1))`
-/

namespace A073120.P11799407786362538590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (A057102 (n + 1)).toNat

end

end A073120.P11799407786362538590

/-! ## A073120.P3849459808467042084

`A117358(2*A057102(n+1))`
-/

namespace A073120.P3849459808467042084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (2 * A057102 (n + 1)).toNat

end

end A073120.P3849459808467042084

/-! ## A073120.P4949375603747225363

`A117358(A057102(n+1)+A057102(n+1))`
-/

namespace A073120.P4949375603747225363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (A057102 (n + 1) + A057102 (n + 1)).toNat

end

end A073120.P4949375603747225363

/-!
# A073121: a(n) = r*a(ceiling(n/2)) + s*a(floor(n/2)) with a(1)=1 and (r,s)=(2,2).

The programs for A073121, the canonical program `A073121.P16248878836465933419` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073121 has offset 1).

The definition of A073121 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073121.P16248878836465933419

`2*(a(floor((n+1)/2)-1)+a(ceil((n+1)/2)-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A073121

/-- `2*(a(floor((n+1)/2)-1)+a(ceil((n+1)/2)-1))` -/
def P16248878836465933419.Spec : Prop :=
  ∀ n, (P16248878836465933419.a n : ℤ) = A073121 (n + 1)

theorem P16248878836465933419.correct : P16248878836465933419.Spec := by
  intro n
  simp only [A073121, Nat.add_sub_cancel]

end A073121

/-! ## A073121.P6276294112750110888

`∑[2*a(floor(n/2))]` with `a(0)=1, a(1)=3`
-/

namespace A073121.P6276294112750110888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  2 * f1 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073121.P6276294112750110888

namespace A073121

/-- `∑[2*a(floor(n/2))]` -/
def P6276294112750110888.Spec : Prop :=
  ∀ n, (P6276294112750110888.a n : ℤ) = A073121 (n + 1)

end A073121

/-! ## A073121.P18085197171887938069

`∑[3*and(n, a(n-1))]` with `a(0)=1`
-/

namespace A073121.P18085197171887938069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  3 * Nat.land n (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073121.P18085197171887938069

namespace A073121

/-- `∑[3*and(n, a(n-1))]` -/
def P18085197171887938069.Spec : Prop :=
  ∀ n, (P18085197171887938069.a n : ℤ) = A073121 (n + 1)

end A073121

/-! ## A073121.P13960086603633266627

`∑[a(floor(n/2))/(1-1/2)]` with `a(0)=1, a(1)=3`
-/

namespace A073121.P13960086603633266627
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat / (1 - (1 : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073121.P13960086603633266627

namespace A073121

/-- `∑[a(floor(n/2))/(1-1/2)]` -/
def P13960086603633266627.Spec : Prop :=
  ∀ n, P13960086603633266627.a n = (A073121 (n + 1) : ℚ)

end A073121

/-! ## A073121.P2798295816520048425

`∑[A280510(n+1)]-2`
-/

namespace A073121.P2798295816520048425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A073121.P2798295816520048425

namespace A073121

/-- `∑[A280510(n+1)]-2` -/
def P2798295816520048425.Spec : Prop :=
  ∀ n, P2798295816520048425.a n = A073121 (n + 1)

end A073121

/-! ## A073121.P13850406284736758680

`∑[3*A053644(n)]+1`
-/

namespace A073121.P13850406284736758680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A053644 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A073121.P13850406284736758680

namespace A073121

/-- `∑[3*A053644(n)]+1` -/
def P13850406284736758680.Spec : Prop :=
  ∀ n, P13850406284736758680.a n = A073121 (n + 1)

end A073121

/-! ## A073121.P14070314587610942520

`∑[A337909(n+1)+n]`
-/

namespace A073121.P14070314587610942520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337909 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073121.P14070314587610942520

namespace A073121

/-- `∑[A337909(n+1)+n]` -/
def P14070314587610942520.Spec : Prop :=
  ∀ n, P14070314587610942520.a n = A073121 (n + 1)

end A073121

/-! ## A073121.P10170964713786550127

`∑[A003945(ceil(log2(n+1)))]`
-/

namespace A073121.P10170964713786550127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 ⌈Real.logb 2 (n + 1 : ℝ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073121.P10170964713786550127

namespace A073121

/-- `∑[A003945(ceil(log2(n+1)))]` -/
def P10170964713786550127.Spec : Prop :=
  ∀ n, P10170964713786550127.a n = A073121 (n + 1)

end A073121

/-! ## A073121.P14809601719714206380

`∑[A003188(2^ceil(log2(n+1)))]`
-/

namespace A073121.P14809601719714206380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073121.P14809601719714206380

namespace A073121

/-- `∑[A003188(2^ceil(log2(n+1)))]` -/
def P14809601719714206380.Spec : Prop :=
  ∀ n, P14809601719714206380.a n = A073121 (n + 1)

end A073121

/-! ## A073121.P8088926688645016683

`∑[A004760(A053644(n)+2)]`
-/

namespace A073121.P8088926688645016683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004760 (A053644 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073121.P8088926688645016683

namespace A073121

/-- `∑[A004760(A053644(n)+2)]` -/
def P8088926688645016683.Spec : Prop :=
  ∀ n, P8088926688645016683.a n = A073121 (n + 1)

end A073121

/-! ## A073121.P11431132606527171100

`∑[A003945(A070939(n))]-2`
-/

namespace A073121.P11431132606527171100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 (A070939 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A073121.P11431132606527171100

namespace A073121

/-- `∑[A003945(A070939(n))]-2` -/
def P11431132606527171100.Spec : Prop :=
  ∀ n, P11431132606527171100.a n = A073121 (n + 1)

end A073121

/-! ## A073121.P55266189166457824

`∑[A265026(A109613(n))]-2`
-/

namespace A073121.P55266189166457824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265026 (A109613 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A073121.P55266189166457824

namespace A073121

/-- `∑[A265026(A109613(n))]-2` -/
def P55266189166457824.Spec : Prop :=
  ∀ n, P55266189166457824.a n = A073121 (n + 1)

end A073121

/-! ## A073121.P1057673651474856331

`(A006257(n+1)+n)*A053644(n+1)`
-/

namespace A073121.P1057673651474856331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006257 (n + 1) + (n : ℤ)) * A053644 (n + 1)

end

end A073121.P1057673651474856331

namespace A073121

/-- `(A006257(n+1)+n)*A053644(n+1)` -/
def P1057673651474856331.Spec : Prop :=
  ∀ n, P1057673651474856331.a n = A073121 (n + 1)

end A073121

/-! ## A073121.P5709907632567126038

`∑[A054429(n+1)+n+1]-A054429(n+1)`
-/

namespace A073121.P5709907632567126038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A054429 (n + 1)

end

end A073121.P5709907632567126038

namespace A073121

/-- `∑[A054429(n+1)+n+1]-A054429(n+1)` -/
def P5709907632567126038.Spec : Prop :=
  ∀ n, P5709907632567126038.a n = A073121 (n + 1)

end A073121

/-! ## A073121.P8088613812353742094

`∑[A071044(A003817(n))]`
-/

namespace A073121.P8088613812353742094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 (A003817 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073121.P8088613812353742094

namespace A073121

/-- `∑[A071044(A003817(n))]` -/
def P8088613812353742094.Spec : Prop :=
  ∀ n, P8088613812353742094.a n = A073121 (n + 1)

end A073121

/-! ## A073121.P11273978249853217348

`∑[A071044(A062383(n)-1)]`
-/

namespace A073121.P11273978249853217348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 (A062383 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073121.P11273978249853217348

namespace A073121

/-- `∑[A071044(A062383(n)-1)]` -/
def P11273978249853217348.Spec : Prop :=
  ∀ n, P11273978249853217348.a n = A073121 (n + 1)

end A073121

/-! ## A073121.P12245292711657257145

`∑[A059893(A004442(A053644(2*n)))]`
-/

namespace A073121.P12245292711657257145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A004442 (A053644 (2 * n)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073121.P12245292711657257145

namespace A073121

/-- `∑[A059893(A004442(A053644(2*n)))]` -/
def P12245292711657257145.Spec : Prop :=
  ∀ n, P12245292711657257145.a n = A073121 (n + 1)

end A073121

/-! ## A073121.P7158810692128730417

`∑[A323234(A003817(2*n+1))]`
-/

namespace A073121.P7158810692128730417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323234 (A003817 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073121.P7158810692128730417

namespace A073121

/-- `∑[A323234(A003817(2*n+1))]` -/
def P7158810692128730417.Spec : Prop :=
  ∀ n, P7158810692128730417.a n = A073121 (n + 1)

end A073121

/-! ## A073121.P11469316423037210874

`∑[A053644(n+1+n)+A053644(n)]`
-/

namespace A073121.P11469316423037210874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (n + 1 + n) + A053644 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073121.P11469316423037210874

namespace A073121

/-- `∑[A053644(n+1+n)+A053644(n)]` -/
def P11469316423037210874.Spec : Prop :=
  ∀ n, P11469316423037210874.a n = A073121 (n + 1)

end A073121

/-! ## A073121.P17897564488234470296

`(A062050(2*(n+1))+n)*A053644(n+1)`
-/

namespace A073121.P17897564488234470296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A062050 (2 * (n + 1)) + (n : ℤ)) * A053644 (n + 1)

end

end A073121.P17897564488234470296

namespace A073121

/-- `(A062050(2*(n+1))+n)*A053644(n+1)` -/
def P17897564488234470296.Spec : Prop :=
  ∀ n, P17897564488234470296.a n = A073121 (n + 1)

end A073121

/-!
# A073122: Minimal reversing binary representation of n. Converting sum of powers of 2 in binary representation of a(n) to alternating sum gives n. See A072339.

The programs for A073122, the canonical program `A073122.P3306057294327154330` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073122 has offset 1).

The definition of A073122 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038189, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A073122.P3306057294327154330

`A003188(2*(n+1)-1+A038189(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A073122

/-- `A003188(2*(n+1)-1+A038189(n+1))` -/
def P3306057294327154330.Spec : Prop :=
  ∀ n, P3306057294327154330.a n = A073122 (n + 1)

theorem P3306057294327154330.correct : P3306057294327154330.Spec := by
  intro n
  simp only [A073122, Nat.add_sub_cancel]

end A073122

/-! ## A073122.P1582686684602990013

`A003188(A014707(n)+2*n+1)`
-/

namespace A073122.P1582686684602990013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A014707 n + (2 * n + 1 : ℤ)).toNat

end

end A073122.P1582686684602990013

namespace A073122

/-- `A003188(A014707(n)+2*n+1)` -/
def P1582686684602990013.Spec : Prop :=
  ∀ n, P1582686684602990013.a n = A073122 (n + 1)

end A073122

/-! ## A073122.P4862422952478427014

`A003188(A038189(n+1)+2*n+1)`
-/

namespace A073122.P4862422952478427014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A038189 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A073122.P4862422952478427014

namespace A073122

/-- `A003188(A038189(n+1)+2*n+1)` -/
def P4862422952478427014.Spec : Prop :=
  ∀ n, P4862422952478427014.a n = A073122 (n + 1)

theorem P4862422952478427014.correct : P4862422952478427014.Spec := by
  intro n
  simp only [A073122, Nat.add_sub_cancel, A073122.P4862422952478427014.a, A073122.P3306057294327154330.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A073122

/-! ## A073122.P14480589509103017627

`A003188(2*n+1)-and(A003188(2*n), A213370(n+1))`
-/

namespace A073122.P14480589509103017627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (2 * n + 1) - Int.land (A003188 (2 * n)) (A213370 (n + 1))

end

end A073122.P14480589509103017627

namespace A073122

/-- `A003188(2*n+1)-and(A003188(2*n), A213370(n+1))` -/
def P14480589509103017627.Spec : Prop :=
  ∀ n, P14480589509103017627.a n = A073122 (n + 1)

end A073122

/-! ## A073122.P17301015056994115187

`or(A213064(n), A229763(n+1))`
-/

namespace A073122.P17301015056994115187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A213064 n) (A229763 (n + 1))

end

end A073122.P17301015056994115187

namespace A073122

/-- `or(A213064(n), A229763(n+1))` -/
def P17301015056994115187.Spec : Prop :=
  ∀ n, P17301015056994115187.a n = A073122 (n + 1)

end A073122

/-! ## A073122.P6524297897484758903

`and(A048724(n+1), A065621(n+1))`
-/

namespace A073122.P6524297897484758903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048724 (n + 1)) (A065621 (n + 1))

end

end A073122.P6524297897484758903

namespace A073122

/-- `and(A048724(n+1), A065621(n+1))` -/
def P6524297897484758903.Spec : Prop :=
  ∀ n, P6524297897484758903.a n = A073122 (n + 1)

end A073122

/-! ## A073122.P9388410042865585392

`and(A003188(2*n+1), A048724(n+1))`
-/

namespace A073122.P9388410042865585392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003188 (2 * n + 1)) (A048724 (n + 1))

end

end A073122.P9388410042865585392

namespace A073122

/-- `and(A003188(2*n+1), A048724(n+1))` -/
def P9388410042865585392.Spec : Prop :=
  ∀ n, P9388410042865585392.a n = A073122 (n + 1)

end A073122

/-! ## A073122.P5000264225021333669

`and(A229763(2*n+1)+n, A048724(n+1))`
-/

namespace A073122.P5000264225021333669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A229763 (2 * n + 1) + (n : ℤ)) (A048724 (n + 1))

end

end A073122.P5000264225021333669

namespace A073122

/-- `and(A229763(2*n+1)+n, A048724(n+1))` -/
def P5000264225021333669.Spec : Prop :=
  ∀ n, P5000264225021333669.a n = A073122 (n + 1)

end A073122

/-! ## A073122.P198663352733516848

`A048724(n+1)-and(A213064(2*n+1), A213064(n+1))`
-/

namespace A073122.P198663352733516848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048724 (n + 1) - Int.land (A213064 (2 * n + 1)) (A213064 (n + 1))

end

end A073122.P198663352733516848

namespace A073122

/-- `A048724(n+1)-and(A213064(2*n+1), A213064(n+1))` -/
def P198663352733516848.Spec : Prop :=
  ∀ n, P198663352733516848.a n = A073122 (n + 1)

end A073122

/-! ## A073122.P17793999652694713756

`A122198(A065621(A122199(n+1)))`
-/

namespace A073122.P17793999652694713756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122198 (A065621 (A122199 (n + 1)).toNat).toNat

end

end A073122.P17793999652694713756

namespace A073122

/-- `A122198(A065621(A122199(n+1)))` -/
def P17793999652694713756.Spec : Prop :=
  ∀ n, P17793999652694713756.a n = A073122 (n + 1)

end A073122

/-! ## A073122.P4003613239827970312

`and(A004526(A048724(2*n+1)), A048724(n+1))`
-/

namespace A073122.P4003613239827970312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004526 (A048724 (2 * n + 1)).toNat) (A048724 (n + 1))

end

end A073122.P4003613239827970312

namespace A073122

/-- `and(A004526(A048724(2*n+1)), A048724(n+1))` -/
def P4003613239827970312.Spec : Prop :=
  ∀ n, P4003613239827970312.a n = A073122 (n + 1)

end A073122

/-! ## A073122.P815208231817605839

`2*A256701(n+1)-(n+1)`
-/

namespace A073122.P815208231817605839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256701 (n + 1) - (n + 1 : ℤ)

end

end A073122.P815208231817605839

namespace A073122

/-- `2*A256701(n+1)-(n+1)` -/
def P815208231817605839.Spec : Prop :=
  ∀ n, P815208231817605839.a n = A073122 (n + 1)

end A073122

/-! ## A073122.P1561949645503978427

`A256702(n+1)+A256701(n+1)`
-/

namespace A073122.P1561949645503978427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256702 (n + 1) + A256701 (n + 1)

end

end A073122.P1561949645503978427

namespace A073122

/-- `A256702(n+1)+A256701(n+1)` -/
def P1561949645503978427.Spec : Prop :=
  ∀ n, P1561949645503978427.a n = A073122 (n + 1)

end A073122

/-! ## A073122.P16727212458038236124

`A001478(n+1)+2*A256701(n+1)`
-/

namespace A073122.P16727212458038236124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + 2 * A256701 (n + 1)

end

end A073122.P16727212458038236124

namespace A073122

/-- `A001478(n+1)+2*A256701(n+1)` -/
def P16727212458038236124.Spec : Prop :=
  ∀ n, P16727212458038236124.a n = A073122 (n + 1)

end A073122

/-! ## A073122.P14751550433543633214

`A004277(A256701(n+1))-A000027(n+1)`
-/

namespace A073122.P14751550433543633214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A256701 (n + 1)).toNat - A000027 (n + 1)

end

end A073122.P14751550433543633214

namespace A073122

/-- `A004277(A256701(n+1))-A000027(n+1)` -/
def P14751550433543633214.Spec : Prop :=
  ∀ n, P14751550433543633214.a n = A073122 (n + 1)

end A073122

/-! ## A073122.P5947015087024378399

`A000027(A256701(n+1)+A256701(n+1)-(n+1))`
-/

namespace A073122.P5947015087024378399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A256701 (n + 1) + (A256701 (n + 1) - (n + 1 : ℤ))).toNat

end

end A073122.P5947015087024378399

namespace A073122

/-- `A000027(A256701(n+1)+A256701(n+1)-(n+1))` -/
def P5947015087024378399.Spec : Prop :=
  ∀ n, P5947015087024378399.a n = A073122 (n + 1)

end A073122

/-! ## A073122.P6398259483166921861

`A256702(2*(n+1))+1+n`
-/

namespace A073122.P6398259483166921861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256702 (2 * (n + 1)) + 1 + (n : ℤ)

end

end A073122.P6398259483166921861

namespace A073122

/-- `A256702(2*(n+1))+1+n` -/
def P6398259483166921861.Spec : Prop :=
  ∀ n, P6398259483166921861.a n = A073122 (n + 1)

end A073122

/-! ## A073122.P17802435679618263263

`A256702(n+2+n)+n+1`
-/

namespace A073122.P17802435679618263263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256702 (n + 2 + n) + (n + 1 : ℤ)

end

end A073122.P17802435679618263263

namespace A073122

/-- `A256702(n+2+n)+n+1` -/
def P17802435679618263263.Spec : Prop :=
  ∀ n, P17802435679618263263.a n = A073122 (n + 1)

end A073122

/-! ## A073122.P2075249655511630265

`A256701(A004277(n+1))-(n+1)`
-/

namespace A073122.P2075249655511630265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256701 (A004277 (n + 1)).toNat - (n + 1 : ℤ)

end

end A073122.P2075249655511630265

namespace A073122

/-- `A256701(A004277(n+1))-(n+1)` -/
def P2075249655511630265.Spec : Prop :=
  ∀ n, P2075249655511630265.a n = A073122 (n + 1)

end A073122

/-!
# A073123: a(n) is the largest number such that pi(a(n)) = prime(n).

The programs for A073123, the canonical program `A073123.P10114706800614711162` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073123 has offset 1).

The definition of A073123 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073123.P10114706800614711162

`A000040(A000040(n+1)+1)-1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A073123

/-- `A000040(A000040(n+1)+1)-1` -/
def P10114706800614711162.Spec : Prop :=
  ∀ n, P10114706800614711162.a n = A073123 (n + 1)

theorem P10114706800614711162.correct : P10114706800614711162.Spec := by
  intro n
  simp only [A073123, Nat.add_sub_cancel]

end A073123

/-! ## A073123.P1647007499742414830

`A072677(n+1)-1`
-/

namespace A073123.P1647007499742414830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072677 (n + 1) - 1

end

end A073123.P1647007499742414830

namespace A073123

/-- `A072677(n+1)-1` -/
def P1647007499742414830.Spec : Prop :=
  ∀ n, P1647007499742414830.a n = A073123 (n + 1)

end A073123

/-! ## A073123.P6122001949437851547

`A275989(n+1)+A006093(n+1)`
-/

namespace A073123.P6122001949437851547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275989 (n + 1) + A006093 (n + 1)

end

end A073123.P6122001949437851547

namespace A073123

/-- `A275989(n+1)+A006093(n+1)` -/
def P6122001949437851547.Spec : Prop :=
  ∀ n, P6122001949437851547.a n = A073123 (n + 1)

theorem P6122001949437851547.correct : P6122001949437851547.Spec := by
  intro n
  simp only [A073123, Nat.add_sub_cancel, A073123.P6122001949437851547.a, A073123.P10114706800614711162.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A275989, A275989.P1844067255973840007.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073123

/-! ## A073123.P12298814944937823950

`A359823(A001358(2*(n+1)))+A072677(n+1)`
-/

namespace A073123.P12298814944937823950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359823 (A001358 (2 * (n + 1))).toNat + A072677 (n + 1)

end

end A073123.P12298814944937823950

namespace A073123

/-- `A359823(A001358(2*(n+1)))+A072677(n+1)` -/
def P12298814944937823950.Spec : Prop :=
  ∀ n, P12298814944937823950.a n = A073123 (n + 1)

end A073123

/-! ## A073123.P18104491010133519737

`A033999(2*n+1)+A072677(n+1)`
-/

namespace A073123.P18104491010133519737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A072677 (n + 1)

end

end A073123.P18104491010133519737

namespace A073123

/-- `A033999(2*n+1)+A072677(n+1)` -/
def P18104491010133519737.Spec : Prop :=
  ∀ n, P18104491010133519737.a n = A073123 (n + 1)

end A073123

/-! ## A073123.P8765546431809544608

`xor(A049076(A014683(2*n+1)), A072677(n+1))`
-/

namespace A073123.P8765546431809544608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A049076 (A014683 (2 * n + 1)).toNat) (A072677 (n + 1))

end

end A073123.P8765546431809544608

namespace A073123

/-- `xor(A049076(A014683(2*n+1)), A072677(n+1))` -/
def P8765546431809544608.Spec : Prop :=
  ∀ n, P8765546431809544608.a n = A073123 (n + 1)

end A073123

/-! ## A073123.P6967493755109370917

`A055670(A008864(n+1))-2`
-/

namespace A073123.P6967493755109370917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (A008864 (n + 1)).toNat - 2

end

end A073123.P6967493755109370917

namespace A073123

/-- `A055670(A008864(n+1))-2` -/
def P6967493755109370917.Spec : Prop :=
  ∀ n, P6967493755109370917.a n = A073123 (n + 1)

end A073123

/-! ## A073123.P14037547443202603091

`A156037(A008864(n+1))`
-/

namespace A073123.P14037547443202603091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (A008864 (n + 1)).toNat

end

end A073123.P14037547443202603091

namespace A073123

/-- `A156037(A008864(n+1))` -/
def P14037547443202603091.Spec : Prop :=
  ∀ n, P14037547443202603091.a n = A073123 (n + 1)

end A073123

/-! ## A073123.P9675312192411463222

`A156037(Δ[A007504(n)]+1)`
-/

namespace A073123.P9675312192411463222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (f1 (n + 1) - f1 n + 1).toNat

end

end A073123.P9675312192411463222

namespace A073123

/-- `A156037(Δ[A007504(n)]+1)` -/
def P9675312192411463222.Spec : Prop :=
  ∀ n, P9675312192411463222.a n = A073123 (n + 1)

end A073123

/-! ## A073123.P3369380023641641882

`A156037(A000040(n+1)+1)`
-/

namespace A073123.P3369380023641641882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (A000040 (n + 1) + 1).toNat

end

end A073123.P3369380023641641882

namespace A073123

/-- `A156037(A000040(n+1)+1)` -/
def P3369380023641641882.Spec : Prop :=
  ∀ n, P3369380023641641882.a n = A073123 (n + 1)

end A073123

/-! ## A073123.P4670272383076727482

`A156037(A006093(n+1)+2)`
-/

namespace A073123.P4670272383076727482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (A006093 (n + 1) + 2).toNat

end

end A073123.P4670272383076727482

namespace A073123

/-- `A156037(A006093(n+1)+2)` -/
def P4670272383076727482.Spec : Prop :=
  ∀ n, P4670272383076727482.a n = A073123 (n + 1)

end A073123

/-! ## A073123.P3702774704996513124

`A156037(A008578(n+2)+1)`
-/

namespace A073123.P3702774704996513124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (A008578 (n + 2) + 1).toNat

end

end A073123.P3702774704996513124

namespace A073123

/-- `A156037(A008578(n+2)+1)` -/
def P3702774704996513124.Spec : Prop :=
  ∀ n, P3702774704996513124.a n = A073123 (n + 1)

end A073123

/-! ## A073123.P4442909990111108669

`A156037(record[A000010(n+1)+2])`
-/

namespace A073123.P4442909990111108669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A073123.P4442909990111108669

namespace A073123

/-- `A156037(record[A000010(n+1)+2])` -/
def P4442909990111108669.Spec : Prop :=
  ∀ n, P4442909990111108669.a n = A073123 (n + 1)

end A073123

/-! ## A073123.P3173084965614452730

`A006093(A028815(n+1))`
-/

namespace A073123.P3173084965614452730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A028815 (n + 1)).toNat

end

end A073123.P3173084965614452730

namespace A073123

/-- `A006093(A028815(n+1))` -/
def P3173084965614452730.Spec : Prop :=
  ∀ n, P3173084965614452730.a n = A073123 (n + 1)

end A073123

/-! ## A073123.P11438010404687110728

`A068499(A052147(n+1))`
-/

namespace A073123.P11438010404687110728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068499 (A052147 (n + 1)).toNat

end

end A073123.P11438010404687110728

namespace A073123

/-- `A068499(A052147(n+1))` -/
def P11438010404687110728.Spec : Prop :=
  ∀ n, P11438010404687110728.a n = A073123 (n + 1)

end A073123

/-! ## A073123.P3507070952715895119

`A165972(A000040(n+1))`
-/

namespace A073123.P3507070952715895119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165972 (A000040 (n + 1)).toNat

end

end A073123.P3507070952715895119

namespace A073123

/-- `A165972(A000040(n+1))` -/
def P3507070952715895119.Spec : Prop :=
  ∀ n, P3507070952715895119.a n = A073123 (n + 1)

end A073123

/-! ## A073123.P2875536380623417172

`A165972(A008578(n+2))`
-/

namespace A073123.P2875536380623417172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165972 (A008578 (n + 2)).toNat

end

end A073123.P2875536380623417172

namespace A073123

/-- `A165972(A008578(n+2))` -/
def P2875536380623417172.Spec : Prop :=
  ∀ n, P2875536380623417172.a n = A073123 (n + 1)

end A073123

/-! ## A073123.P5507423653307877733

`A006093(A299763(n+2))`
-/

namespace A073123.P5507423653307877733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A299763 (n + 2)).toNat

end

end A073123.P5507423653307877733

namespace A073123

/-- `A006093(A299763(n+2))` -/
def P5507423653307877733.Spec : Prop :=
  ∀ n, P5507423653307877733.a n = A073123 (n + 1)

end A073123

/-! ## A073123.P5000520779597948418

`A006093(Δ[A007504(n)]+1)`
-/

namespace A073123.P5000520779597948418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (f1 (n + 1) - f1 n + 1).toNat

end

end A073123.P5000520779597948418

namespace A073123

/-- `A006093(Δ[A007504(n)]+1)` -/
def P5000520779597948418.Spec : Prop :=
  ∀ n, P5000520779597948418.a n = A073123 (n + 1)

end A073123

/-! ## A073123.P13672855100771207517

`A045344(Δ[A007504(n)])-1`
-/

namespace A073123.P13672855100771207517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (f1 (n + 1) - f1 n).toNat - 1

end

end A073123.P13672855100771207517

namespace A073123

/-- `A045344(Δ[A007504(n)])-1` -/
def P13672855100771207517.Spec : Prop :=
  ∀ n, P13672855100771207517.a n = A073123 (n + 1)

end A073123

/-!
# A073124: a(n) = prime(1+prime(n)) - prime(prime(n)).

The programs for A073124, the canonical program `A073124.P13506712241066416936` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073124 has offset 1).

The definition of A073124 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(1+A000040(n+1))-A000040(A000040(n+1))` (program `A073124.P13506712241066416936`, by `A073124.P13506712241066416936.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A073124.P4841457181950181251

`A072677(n+1)-A006450(n+1)`
-/

namespace A073124.P4841457181950181251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072677 (n + 1) - A006450 (n + 1)

end

end A073124.P4841457181950181251

namespace A073124

/-- `A072677(n+1)-A006450(n+1)` -/
def P4841457181950181251.Spec : Prop :=
  ∀ n, P4841457181950181251.a n = A073124 (n + 1)

theorem P4841457181950181251.correct : P4841457181950181251.Spec := by
  intro n
  simp only [A073124, Nat.add_sub_cancel, A073124.P4841457181950181251.a, A073124.P13506712241066416936.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006450, A006450.P16445646407241112379.a, A072677, A072677.P15673832818154318701.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073124

/-! ## A073124.P13506712241066416936

`A000040(1+A000040(n+1))-A000040(A000040(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A073124

/-- `A000040(1+A000040(n+1))-A000040(A000040(n+1))` -/
def P13506712241066416936.Spec : Prop :=
  ∀ n, P13506712241066416936.a n = A073124 (n + 1)

theorem P13506712241066416936.correct : P13506712241066416936.Spec := by
  intro n
  simp only [A073124, Nat.add_sub_cancel]

end A073124

/-! ## A073124.P7343890473151008028

`A275989(n+1)-A168152(n+1)`
-/

namespace A073124.P7343890473151008028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275989 (n + 1) - A168152 (n + 1)

end

end A073124.P7343890473151008028

namespace A073124

/-- `A275989(n+1)-A168152(n+1)` -/
def P7343890473151008028.Spec : Prop :=
  ∀ n, P7343890473151008028.a n = A073124 (n + 1)

theorem P7343890473151008028.correct : P7343890473151008028.Spec := by
  intro n
  simp only [A073124, Nat.add_sub_cancel, A073124.P7343890473151008028.a, A073124.P13506712241066416936.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A168152, A168152.P4567682893620914765.a, A275989, A275989.P1844067255973840007.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073124

/-! ## A073124.P555598781021347648

`A001223(p?[xor(1, n)])`
-/

namespace A073124.P555598781021347648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A073124.P555598781021347648

namespace A073124

/-- `A001223(p?[xor(1, n)])` -/
def P555598781021347648.Spec : Prop :=
  ∀ n, P555598781021347648.a n = A073124 (n + 1)

end A073124

/-! ## A073124.P8959982337953325553

`A001223(Δ[A007504(n)])`
-/

namespace A073124.P8959982337953325553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (f1 (n + 1) - f1 n).toNat

end

end A073124.P8959982337953325553

namespace A073124

/-- `A001223(Δ[A007504(n)])` -/
def P8959982337953325553.Spec : Prop :=
  ∀ n, P8959982337953325553.a n = A073124 (n + 1)

end A073124

/-! ## A073124.P4835204559168062175

`A001223(A000040(n+1))`
-/

namespace A073124.P4835204559168062175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A000040 (n + 1)).toNat

end

end A073124.P4835204559168062175

namespace A073124

/-- `A001223(A000040(n+1))` -/
def P4835204559168062175.Spec : Prop :=
  ∀ n, P4835204559168062175.a n = A073124 (n + 1)

end A073124

/-! ## A073124.P9086738936390468473

`A001223(A008578(n+2))`
-/

namespace A073124.P9086738936390468473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A008578 (n + 2)).toNat

end

end A073124.P9086738936390468473

namespace A073124

/-- `A001223(A008578(n+2))` -/
def P9086738936390468473.Spec : Prop :=
  ∀ n, P9086738936390468473.a n = A073124 (n + 1)

end A073124

/-! ## A073124.P4986940370128668821

`A001223(A182986(n+2))`
-/

namespace A073124.P4986940370128668821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A182986 (n + 2)).toNat

end

end A073124.P4986940370128668821

namespace A073124

/-- `A001223(A182986(n+2))` -/
def P4986940370128668821.Spec : Prop :=
  ∀ n, P4986940370128668821.a n = A073124 (n + 1)

end A073124

/-! ## A073124.P13193997768911840990

`A001223(sqrt(A001248(n+1)))`
-/

namespace A073124.P13193997768911840990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A073124.P13193997768911840990

namespace A073124

/-- `A001223(sqrt(A001248(n+1)))` -/
def P13193997768911840990.Spec : Prop :=
  ∀ n, P13193997768911840990.a n = A073124 (n + 1)

end A073124

/-! ## A073124.P5806753257102615149

`A001223(∑[A054541(n+1)])`
-/

namespace A073124.P5806753257102615149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A073124.P5806753257102615149

namespace A073124

/-- `A001223(∑[A054541(n+1)])` -/
def P5806753257102615149.Spec : Prop :=
  ∀ n, P5806753257102615149.a n = A073124 (n + 1)

end A073124

/-! ## A073124.P11116393382616523870

`A001223(A006093(n+1)+1)`
-/

namespace A073124.P11116393382616523870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A006093 (n + 1) + 1).toNat

end

end A073124.P11116393382616523870

namespace A073124

/-- `A001223(A006093(n+1)+1)` -/
def P11116393382616523870.Spec : Prop :=
  ∀ n, P11116393382616523870.a n = A073124 (n + 1)

end A073124

/-! ## A073124.P16152304142175116776

`A001223(A008864(n+1)-1)`
-/

namespace A073124.P16152304142175116776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A008864 (n + 1) - 1).toNat

end

end A073124.P16152304142175116776

namespace A073124

/-- `A001223(A008864(n+1)-1)` -/
def P16152304142175116776.Spec : Prop :=
  ∀ n, P16152304142175116776.a n = A073124 (n + 1)

end A073124

/-! ## A073124.P4717681861696751620

`A001223(A040976(n+1)+2)`
-/

namespace A073124.P4717681861696751620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A040976 (n + 1) + 2).toNat

end

end A073124.P4717681861696751620

namespace A073124

/-- `A001223(A040976(n+1)+2)` -/
def P4717681861696751620.Spec : Prop :=
  ∀ n, P4717681861696751620.a n = A073124 (n + 1)

end A073124

/-! ## A073124.P7484078944733180680

`A001223(A175216(n+1)-1)`
-/

namespace A073124.P7484078944733180680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A175216 (n + 1) - 1).toNat

end

end A073124.P7484078944733180680

namespace A073124

/-- `A001223(A175216(n+1)-1)` -/
def P7484078944733180680.Spec : Prop :=
  ∀ n, P7484078944733180680.a n = A073124 (n + 1)

end A073124

/-! ## A073124.P7426514077600389699

`A001223(A299763(n+2)-1)`
-/

namespace A073124.P7426514077600389699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A299763 (n + 2) - 1).toNat

end

end A073124.P7426514077600389699

namespace A073124

/-- `A001223(A299763(n+2)-1)` -/
def P7426514077600389699.Spec : Prop :=
  ∀ n, P7426514077600389699.a n = A073124 (n + 1)

end A073124

/-! ## A073124.P11876092155199515055

`A001223(A014692(n+1)+n)`
-/

namespace A073124.P11876092155199515055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A014692 (n + 1) + (n : ℤ)).toNat

end

end A073124.P11876092155199515055

namespace A073124

/-- `A001223(A014692(n+1)+n)` -/
def P11876092155199515055.Spec : Prop :=
  ∀ n, P11876092155199515055.a n = A073124 (n + 1)

end A073124

/-! ## A073124.P6418525187682814559

`A001223(A014688(n+1)-(n+1))`
-/

namespace A073124.P6418525187682814559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A014688 (n + 1) - (n + 1 : ℤ)).toNat

end

end A073124.P6418525187682814559

namespace A073124

/-- `A001223(A014688(n+1)-(n+1))` -/
def P6418525187682814559.Spec : Prop :=
  ∀ n, P6418525187682814559.a n = A073124 (n + 1)

end A073124

/-! ## A073124.P13825354090887735965

`A001223(record[A162753(n)])`
-/

namespace A073124.P13825354090887735965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A073124.P13825354090887735965

namespace A073124

/-- `A001223(record[A162753(n)])` -/
def P13825354090887735965.Spec : Prop :=
  ∀ n, P13825354090887735965.a n = A073124 (n + 1)

end A073124

/-! ## A073124.P14330395765028107152

`A078584(A130291(n+1))`
-/

namespace A073124.P14330395765028107152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078584 (A130291 (n + 1)).toNat

end

end A073124.P14330395765028107152

namespace A073124

/-- `A078584(A130291(n+1))` -/
def P14330395765028107152.Spec : Prop :=
  ∀ n, P14330395765028107152.a n = A073124 (n + 1)

end A073124

/-! ## A073124.P12414439891127329975

`A001223(p?[A007989(n)])`
-/

namespace A073124.P12414439891127329975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A073124.P12414439891127329975

namespace A073124

/-- `A001223(p?[A007989(n)])` -/
def P12414439891127329975.Spec : Prop :=
  ∀ n, P12414439891127329975.a n = A073124 (n + 1)

end A073124

/-!
# A073125: a(n) is the least prime p(s) such that prime(s+n) - prime(s) is divisible by n.

The programs for A073125, there is no canonical definition to state claims against.
-/

/-! ## A073125.P8248279556879325554

`A073126(n+1)-(n+1)*A073127(n+1)`
-/

namespace A073125.P8248279556879325554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073126 (n + 1) - (n + 1 : ℤ) * A073127 (n + 1)

end

end A073125.P8248279556879325554

/-!
# A073126: a(n) is the least prime p(s) such that p(s) - p(s-n) is divisible by n, i.e., a(n) = p(s) = kn + p(s-n).

The programs for A073126, there is no canonical definition to state claims against.
-/

/-! ## A073126.P8687836479527421961

`A073125(n+1)+(n+1)*A073127(n+1)`
-/

namespace A073126.P8687836479527421961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073125 (n + 1) + (n + 1 : ℤ) * A073127 (n + 1)

end

end A073126.P8687836479527421961

/-! ## A073126.P9348722305281080817

`A000040(A158973(A073125(n+1))+n)`
-/

namespace A073126.P9348722305281080817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A158973 (A073125 (n + 1)).toNat + (n : ℤ)).toNat

end

end A073126.P9348722305281080817

/-!
# A073127: a(n) is the quotient arising in A073125 [or in A073126]: a(n)=[A073126(n)-A073125(n)]/n=[p(s+n)-p(s)]/n.

The programs for A073127, there is no canonical definition to state claims against.
-/

/-! ## A073127.P4490982389611910403

`(A073126(n+1)-A073125(n+1))/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A073127.P4490982389611910403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073126 (n + 1) - A073125 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A073127.P4490982389611910403

/-!
# A073128: Integer quotients arising in A063986.

The programs for A073128, there is no canonical definition to state claims against.
-/

/-! ## A073128.P9083720506391039769

`A073129(n+1)/A063986(n+1)`
-/

namespace A073128.P9083720506391039769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073129 (n + 1) : ℚ) / (A063986 (n + 1) : ℚ)

end

end A073128.P9083720506391039769

/-! ## A073128.P10945017616461449484

`floor(A063989(A063986(n+1))/8)`
-/

namespace A073128.P10945017616461449484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A063989 (A063986 (n + 1)).toNat : ℚ) / 8⌋

end

end A073128.P10945017616461449484

/-! ## A073128.P16659168635614223424

`A063985(A063986(n+1))/A063986(A000027(n+1))`
-/

namespace A073128.P16659168635614223424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063985 (A063986 (n + 1)).toNat : ℚ) / (A063986 (A000027 (n + 1)).toNat : ℚ)

end

end A073128.P16659168635614223424

/-!
# A073129: Partial sums of cototients arising in A063986.

The programs for A073129, there is no canonical definition to state claims against.
-/

/-! ## A073129.P6494188889313869019

`A063986(n+1)*A073128(n+1)`
-/

namespace A073129.P6494188889313869019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063986 (n + 1) * A073128 (n + 1)

end

end A073129.P6494188889313869019

/-! ## A073129.P10582484851624581747

`A063985(A063986(n+1))`
-/

namespace A073129.P10582484851624581747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063985 (A063986 (n + 1)).toNat

end

end A073129.P10582484851624581747

/-! ## A073129.P3873843079484432015

`A063985(lt[A063985(n+1)%(n+1), 1]+1)`
-/

namespace A073129.P3873843079484432015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063985 (n + 1)) (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063985 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A073129.P3873843079484432015

/-!
# A073130: a(n) = gcd(p(n+1) - p(n), p(p(n+1)) - p(p(n))), where p(n) is the n-th prime.

The programs for A073130, the canonical program `A073130.P10360447296162560584` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073130 has offset 1).

The definition of A073130 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A000040(n+2)-A000040(n+1), A000040(A000040(n+2))-A000040(A000040(n+1)))` (program `A073130.P10360447296162560584`, by `A073130.P10360447296162560584.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A073130.P10360447296162560584

`gcd(A000040(n+2)-A000040(n+1), A000040(A000040(n+2))-A000040(A000040(n+1)))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A073130

/-- `gcd(A000040(n+2)-A000040(n+1), A000040(A000040(n+2))-A000040(A000040(n+1)))` -/
def P10360447296162560584.Spec : Prop :=
  ∀ n, (P10360447296162560584.a n : ℤ) = A073130 (n + 1)

theorem P10360447296162560584.correct : P10360447296162560584.Spec := by
  intro n
  simp only [A073130, Nat.add_sub_cancel]

end A073130

/-! ## A073130.P3164112805542675831

`gcd(A001223(n+1), A073131(n+1))`
-/

namespace A073130.P3164112805542675831
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001223 (n + 1)) (A073131 (n + 1))

end

end A073130.P3164112805542675831

namespace A073130

/-- `gcd(A001223(n+1), A073131(n+1))` -/
def P3164112805542675831.Spec : Prop :=
  ∀ n, (P3164112805542675831.a n : ℤ) = A073130 (n + 1)

end A073130

/-! ## A073130.P270506743588403326

`gcd(Δ[A006450(n+1)], A054541(n+2))`
-/

namespace A073130.P270506743588403326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A054541 (n + 2))

end

end A073130.P270506743588403326

namespace A073130

/-- `gcd(Δ[A006450(n+1)], A054541(n+2))` -/
def P270506743588403326.Spec : Prop :=
  ∀ n, (P270506743588403326.a n : ℤ) = A073130 (n + 1)

end A073130

/-! ## A073130.P4532556560276059113

`gcd(Δ[A262021(n+1)+1+n], A125266(n+2))`
-/

namespace A073130.P4532556560276059113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262021 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A125266 (n + 2))

end

end A073130.P4532556560276059113

namespace A073130

/-- `gcd(Δ[A262021(n+1)+1+n], A125266(n+2))` -/
def P4532556560276059113.Spec : Prop :=
  ∀ n, (P4532556560276059113.a n : ℤ) = A073130 (n + 1)

end A073130

/-! ## A073130.P5119725087223237464

`gcd(A073131(n+1), A219606(A005408(n)))`
-/

namespace A073130.P5119725087223237464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073131 (n + 1)) (A219606 (A005408 n).toNat)

end

end A073130.P5119725087223237464

namespace A073130

/-- `gcd(A073131(n+1), A219606(A005408(n)))` -/
def P5119725087223237464.Spec : Prop :=
  ∀ n, (P5119725087223237464.a n : ℤ) = A073130 (n + 1)

end A073130

/-!
# A073131: a(n) = prime(prime(n+1)) - prime(prime(n)).

The programs for A073131, the canonical program `A073131.P11239621649849725694` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073131 has offset 1).

The definition of A073131 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(A000040(n+2))-A000040(A000040(n+1))` (program `A073131.P11239621649849725694`, by `A073131.P11239621649849725694.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A073131.P6750966020783042022

`A006450(n+2)-A006450(n+1)`
-/

namespace A073131.P6750966020783042022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 2) - A006450 (n + 1)

end

end A073131.P6750966020783042022

namespace A073131

/-- `A006450(n+2)-A006450(n+1)` -/
def P6750966020783042022.Spec : Prop :=
  ∀ n, P6750966020783042022.a n = A073131 (n + 1)

end A073131

/-! ## A073131.P11239621649849725694

`A000040(A000040(n+2))-A000040(A000040(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A073131

/-- `A000040(A000040(n+2))-A000040(A000040(n+1))` -/
def P11239621649849725694.Spec : Prop :=
  ∀ n, P11239621649849725694.a n = A073131 (n + 1)

theorem P11239621649849725694.correct : P11239621649849725694.Spec := by
  intro n
  simp only [A073131, Nat.add_sub_cancel]

end A073131

/-! ## A073131.P14353633792276840109

`Δ[A006450(n+1)]`
-/

namespace A073131.P14353633792276840109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073131.P14353633792276840109

namespace A073131

/-- `Δ[A006450(n+1)]` -/
def P14353633792276840109.Spec : Prop :=
  ∀ n, P14353633792276840109.a n = A073131 (n + 1)

theorem P14353633792276840109.correct : P14353633792276840109.Spec := by
  intro n
  simp only [A073131, Nat.add_sub_cancel, A073131.P14353633792276840109.f1, A073131.P14353633792276840109.a, A073131.P11239621649849725694.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006450, A006450.P16445646407241112379.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073131

/-! ## A073131.P4841299952287968192

`A245174(n)+a(n-1)` with `a(0)=2`
-/

namespace A073131.P4841299952287968192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A245174 n + a (n - 1)

end

end A073131.P4841299952287968192

namespace A073131

/-- `A245174(n)+a(n-1)` -/
def P4841299952287968192.Spec : Prop :=
  ∀ n, P4841299952287968192.a n = A073131 (n + 1)

end A073131

/-! ## A073131.P9274265024048213111

`Δ[∪[A049090(n+1), A333353(n+1)]]`
-/

namespace A073131.P9274265024048213111
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049090 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333353 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A073131.P9274265024048213111

namespace A073131

/-- `Δ[∪[A049090(n+1), A333353(n+1)]]` -/
def P9274265024048213111.Spec : Prop :=
  ∀ n, P9274265024048213111.a n = A073131 (n + 1)

end A073131

/-! ## A073131.P15397451843294034477

`Δ[A141138(n+1)]`
-/

namespace A073131.P15397451843294034477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141138 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073131.P15397451843294034477

namespace A073131

/-- `Δ[A141138(n+1)]` -/
def P15397451843294034477.Spec : Prop :=
  ∀ n, P15397451843294034477.a n = A073131 (n + 1)

end A073131

/-! ## A073131.P13824026134774073796

`Δ[sqrt(A092769(n+1))]`
-/

namespace A073131.P13824026134774073796
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A092769 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073131.P13824026134774073796

namespace A073131

/-- `Δ[sqrt(A092769(n+1))]` -/
def P13824026134774073796.Spec : Prop :=
  ∀ n, P13824026134774073796.a n = (A073131 (n + 1) : ℝ)

end A073131

/-! ## A073131.P4908397599993483120

`Δ[A262021(n+1)]+1`
-/

namespace A073131.P4908397599993483120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A073131.P4908397599993483120

namespace A073131

/-- `Δ[A262021(n+1)]+1` -/
def P4908397599993483120.Spec : Prop :=
  ∀ n, P4908397599993483120.a n = A073131 (n + 1)

theorem P4908397599993483120.correct : P4908397599993483120.Spec := by
  intro n
  simp only [A073131, Nat.add_sub_cancel, A073131.P4908397599993483120.f1, A073131.P4908397599993483120.a, A073131.P11239621649849725694.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A262021, A262021.P13700072325175955136.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073131

/-! ## A073131.P6568027661483587654

`Δ[A080697(n+1)/(n+1)]`
-/

namespace A073131.P6568027661483587654
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080697 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073131.P6568027661483587654

namespace A073131

/-- `Δ[A080697(n+1)/(n+1)]` -/
def P6568027661483587654.Spec : Prop :=
  ∀ n, P6568027661483587654.a n = (A073131 (n + 1) : ℚ)

theorem P6568027661483587654.correct : P6568027661483587654.Spec := by
  intro n
  simp only [A073131, Nat.add_sub_cancel, A073131.P6568027661483587654.f1, A073131.P6568027661483587654.a, A073131.P11239621649849725694.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A080697, A080697.P10795620430971902152.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073131

/-! ## A073131.P5441018535198975467

`A141138(n+2)-A141138(n+1)`
-/

namespace A073131.P5441018535198975467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141138 (n + 2) - A141138 (n + 1)

end

end A073131.P5441018535198975467

namespace A073131

/-- `A141138(n+2)-A141138(n+1)` -/
def P5441018535198975467.Spec : Prop :=
  ∀ n, P5441018535198975467.a n = A073131 (n + 1)

end A073131

/-! ## A073131.P3418718152251496964

`Δ[A175247(n+2)]`
-/

namespace A073131.P3418718152251496964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073131.P3418718152251496964

namespace A073131

/-- `Δ[A175247(n+2)]` -/
def P3418718152251496964.Spec : Prop :=
  ∀ n, P3418718152251496964.a n = A073131 (n + 1)

end A073131

/-! ## A073131.P10757542117727987946

`A175247(n+3)-A175247(n+2)`
-/

namespace A073131.P10757542117727987946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (n + 3) - A175247 (n + 2)

end

end A073131.P10757542117727987946

namespace A073131

/-- `A175247(n+3)-A175247(n+2)` -/
def P10757542117727987946.Spec : Prop :=
  ∀ n, P10757542117727987946.a n = A073131 (n + 1)

end A073131

/-! ## A073131.P1214612945214575248

`Δ[p?[A302596(n+1)]]`
-/

namespace A073131.P1214612945214575248
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302596 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073131.P1214612945214575248

namespace A073131

/-- `Δ[p?[A302596(n+1)]]` -/
def P1214612945214575248.Spec : Prop :=
  ∀ n, P1214612945214575248.a n = A073131 (n + 1)

end A073131

/-! ## A073131.P5277317019253084376

`Δ[p?[A302592(n+3)]]`
-/

namespace A073131.P5277317019253084376
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302592 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073131.P5277317019253084376

namespace A073131

/-- `Δ[p?[A302592(n+3)]]` -/
def P5277317019253084376.Spec : Prop :=
  ∀ n, P5277317019253084376.a n = A073131 (n + 1)

end A073131

/-! ## A073131.P4851594497368457607

`Δ[p?[A302590(n+1)]]`
-/

namespace A073131.P4851594497368457607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302590 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073131.P4851594497368457607

namespace A073131

/-- `Δ[p?[A302590(n+1)]]` -/
def P4851594497368457607.Spec : Prop :=
  ∀ n, P4851594497368457607.a n = A073131 (n + 1)

end A073131

/-! ## A073131.P1424946200920881178

`Δ[p?[A076610(n+1)]]`
-/

namespace A073131.P1424946200920881178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073131.P1424946200920881178

namespace A073131

/-- `Δ[p?[A076610(n+1)]]` -/
def P1424946200920881178.Spec : Prop :=
  ∀ n, P1424946200920881178.a n = A073131 (n + 1)

end A073131

/-! ## A073131.P946854146478042346

`Δ[p?[A302539(n+3)]]`
-/

namespace A073131.P946854146478042346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302539 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073131.P946854146478042346

namespace A073131

/-- `Δ[p?[A302539(n+3)]]` -/
def P946854146478042346.Spec : Prop :=
  ∀ n, P946854146478042346.a n = A073131 (n + 1)

end A073131

/-! ## A073131.P3628568887727771462

`Δ[record[A105574(n+2)]]`
-/

namespace A073131.P3628568887727771462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105574 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073131.P3628568887727771462

namespace A073131

/-- `Δ[record[A105574(n+2)]]` -/
def P3628568887727771462.Spec : Prop :=
  ∀ n, P3628568887727771462.a n = A073131 (n + 1)

end A073131

/-! ## A073131.P16632833918227190467

`Δ[p?[A141436(n+1)]]`
-/

namespace A073131.P16632833918227190467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141436 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073131.P16632833918227190467

namespace A073131

/-- `Δ[p?[A141436(n+1)]]` -/
def P16632833918227190467.Spec : Prop :=
  ∀ n, P16632833918227190467.a n = A073131 (n + 1)

end A073131

/-! ## A073131.P15238996612616786199

`Δ[record[A105562(n+2)]]`
-/

namespace A073131.P15238996612616786199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105562 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073131.P15238996612616786199

namespace A073131

/-- `Δ[record[A105562(n+2)]]` -/
def P15238996612616786199.Spec : Prop :=
  ∀ n, P15238996612616786199.a n = A073131 (n + 1)

end A073131

/-!
# A073133: Table by antidiagonals of T(n,k) = n*T(n,k-1) + T(n,k-2) starting with T(n,1) = 1.

The programs for A073133, there is no canonical definition to state claims against.
-/

/-! ## A073133.P2338042149498143956

`A172236(comp[∑[n]]+1)`
-/

namespace A073133.P2338042149498143956
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172236 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A073133.P2338042149498143956

/-! ## A073133.P5332469262458208861

`A157103(A099375(n)+1+n)`
-/

namespace A073133.P5332469262458208861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157103 (A099375 n + 1 + (n : ℤ)).toNat

end

end A073133.P5332469262458208861

/-! ## A073133.P10049043923810262084

`A157103(A114327(n)+A014132(n+1))`
-/

namespace A073133.P10049043923810262084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157103 (A114327 n + A014132 (n + 1)).toNat

end

end A073133.P10049043923810262084

/-! ## A073133.P11609488653459330557

`A157103(A061579(n)+A003057(n+2))`
-/

namespace A073133.P11609488653459330557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157103 (A061579 n + A003057 (n + 2)).toNat

end

end A073133.P11609488653459330557

/-! ## A073133.P8854178267367414085

`A157103(A007401(n+1)+A114327(n)+1)`
-/

namespace A073133.P8854178267367414085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157103 (A007401 (n + 1) + (A114327 n + 1)).toNat

end

end A073133.P8854178267367414085

/-! ## A073133.P12877344508094567442

`A135597(n+1)+A025581(n)*A172236(n+1)`
-/

namespace A073133.P12877344508094567442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135597 (n + 1) + A025581 n * A172236 (n + 1)

end

end A073133.P12877344508094567442

/-! ## A073133.P14771209632814470741

`A352361(eq[0, A103451(n)])`
-/

namespace A073133.P14771209632814470741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352361 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073133.P14771209632814470741

/-! ## A073133.P5005501445801868730

`A352361(eq[0, A103516(n)])`
-/

namespace A073133.P5005501445801868730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352361 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073133.P5005501445801868730

/-! ## A073133.P719819854318465260

`A352361(eq[0, A097806(n)]+1)`
-/

namespace A073133.P719819854318465260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352361 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A073133.P719819854318465260

/-! ## A073133.P8255476401888111855

`A352361(lt[1, A027465(n)*A352361(n)])`
-/

namespace A073133.P8255476401888111855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 n * A352361 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352361 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A073133.P8255476401888111855

/-!
# A073134: Table by antidiagonals of T(n,k)=n*T(n,k-1)-T(n,k-2) starting with T(n,1)=1.

The programs for A073134, there is no canonical definition to state claims against.
-/

/-! ## A073134.P17820773019606234102

`A034367(A187829(n+1))-A177424(A025581(n))`
-/

namespace A073134.P17820773019606234102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034367 (A187829 (n + 1)).toNat - A177424 (A025581 n).toNat

end

end A073134.P17820773019606234102

/-!
# A073135: Table by antidiagonals of T(n,k) = 2*n*T(n,k-1) - n^2*T(n,k-2) + T(n,k-4) starting with T(n,1) = 1.

The programs for A073135, there is no canonical definition to state claims against.
-/

/-! ## A073135.P16021500309750350315

`A104002(n+2)+A055641(A027466(n))`
-/

namespace A073135.P16021500309750350315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104002 (n + 2) + A055641 (A027466 n).toNat

end

end A073135.P16021500309750350315

/-! ## A073135.P6802356880724653690

`A104002(n+2)+A055641(A218017(n))`
-/

namespace A073135.P6802356880724653690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104002 (n + 2) + A055641 (A218017 n).toNat

end

end A073135.P6802356880724653690

/-! ## A073135.P14737891582586748564

`A290531(A027465(n))+A104002(n+2)`
-/

namespace A073135.P14737891582586748564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290531 (A027465 n).toNat + A104002 (n + 2)

end

end A073135.P14737891582586748564

/-! ## A073135.P858091172733408057

`A249832(A169912(n))+A104002(n+2)`
-/

namespace A073135.P858091172733408057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 (A169912 n).toNat + A104002 (n + 2)

end

end A073135.P858091172733408057

/-! ## A073135.P4948881911978176908

`xor(A104002(n+2), A326292(A193958(n)))`
-/

namespace A073135.P4948881911978176908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A104002 (n + 2)) (A326292 (A193958 n).toNat)

end

end A073135.P4948881911978176908

/-!
# A073136: a(n) = prime(n) + prime(prime(n)).

The programs for A073136, the canonical program `A073136.P7132945222893016034` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073136 has offset 1).

The definition of A073136 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)+A000040(A000040(n+1))` (program `A073136.P7132945222893016034`, by `A073136.P7132945222893016034.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A073136.P7132945222893016034

`A000040(n+1)+A000040(A000040(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A073136

/-- `A000040(n+1)+A000040(A000040(n+1))` -/
def P7132945222893016034.Spec : Prop :=
  ∀ n, P7132945222893016034.a n = A073136 (n + 1)

theorem P7132945222893016034.correct : P7132945222893016034.Spec := by
  intro n
  simp only [A073136, Nat.add_sub_cancel]

end A073136

/-! ## A073136.P10460070805719689660

`A006450(n+1)+Δ[A007504(n)]`
-/

namespace A073136.P10460070805719689660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) + (f1 (n + 1) - f1 n)

end

end A073136.P10460070805719689660

namespace A073136

/-- `A006450(n+1)+Δ[A007504(n)]` -/
def P10460070805719689660.Spec : Prop :=
  ∀ n, P10460070805719689660.a n = A073136 (n + 1)

end A073136

/-! ## A073136.P15744880999233858026

`A006450(n+1)+A000040(n+1)`
-/

namespace A073136.P15744880999233858026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) + A000040 (n + 1)

end

end A073136.P15744880999233858026

namespace A073136

/-- `A006450(n+1)+A000040(n+1)` -/
def P15744880999233858026.Spec : Prop :=
  ∀ n, P15744880999233858026.a n = A073136 (n + 1)

theorem P15744880999233858026.correct : P15744880999233858026.Spec := by
  intro n
  simp only [A073136, Nat.add_sub_cancel, A073136.P15744880999233858026.a, A073136.P7132945222893016034.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006450, A006450.P16445646407241112379.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073136

/-! ## A073136.P4893876196748425184

`A141138(n+1)+A008864(n+1)`
-/

namespace A073136.P4893876196748425184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141138 (n + 1) + A008864 (n + 1)

end

end A073136.P4893876196748425184

namespace A073136

/-- `A141138(n+1)+A008864(n+1)` -/
def P4893876196748425184.Spec : Prop :=
  ∀ n, P4893876196748425184.a n = A073136 (n + 1)

end A073136

/-! ## A073136.P1294513843552602295

`A141138(n+1)+A028815(n+1)`
-/

namespace A073136.P1294513843552602295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141138 (n + 1) + A028815 (n + 1)

end

end A073136.P1294513843552602295

namespace A073136

/-- `A141138(n+1)+A028815(n+1)` -/
def P1294513843552602295.Spec : Prop :=
  ∀ n, P1294513843552602295.a n = A073136 (n + 1)

end A073136

/-! ## A073136.P17753918590278955242

`A168152(n+1)+A100484(n+1)`
-/

namespace A073136.P17753918590278955242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168152 (n + 1) + A100484 (n + 1)

end

end A073136.P17753918590278955242

namespace A073136

/-- `A168152(n+1)+A100484(n+1)` -/
def P17753918590278955242.Spec : Prop :=
  ∀ n, P17753918590278955242.a n = A073136 (n + 1)

theorem P17753918590278955242.correct : P17753918590278955242.Spec := by
  intro n
  simp only [A073136, Nat.add_sub_cancel, A073136.P17753918590278955242.a, A073136.P7132945222893016034.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A100484, A100484.P9678625670825099636.a, A168152, A168152.P4567682893620914765.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073136

/-! ## A073136.P3203663962160159036

`A262021(n+1)+A014688(n+1)`
-/

namespace A073136.P3203663962160159036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262021 (n + 1) + A014688 (n + 1)

end

end A073136.P3203663962160159036

namespace A073136

/-- `A262021(n+1)+A014688(n+1)` -/
def P3203663962160159036.Spec : Prop :=
  ∀ n, P3203663962160159036.a n = A073136 (n + 1)

end A073136

/-! ## A073136.P18067211178680062938

`A006450(n+1)+∑[A054541(n+1)]`
-/

namespace A073136.P18067211178680062938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073136.P18067211178680062938

namespace A073136

/-- `A006450(n+1)+∑[A054541(n+1)]` -/
def P18067211178680062938.Spec : Prop :=
  ∀ n, P18067211178680062938.a n = A073136 (n + 1)

end A073136

/-! ## A073136.P14260837087510240725

`A006093(n+1)+A006450(n+1)+1`
-/

namespace A073136.P14260837087510240725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (A006450 (n + 1) + 1)

end

end A073136.P14260837087510240725

namespace A073136

/-- `A006093(n+1)+A006450(n+1)+1` -/
def P14260837087510240725.Spec : Prop :=
  ∀ n, P14260837087510240725.a n = A073136 (n + 1)

theorem P14260837087510240725.correct : P14260837087510240725.Spec := by
  intro n
  simp only [A073136, Nat.add_sub_cancel, A073136.P14260837087510240725.a, A073136.P7132945222893016034.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A006450, A006450.P16445646407241112379.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073136

/-! ## A073136.P10431051920568212150

`A006450(n+1)+A040976(n+1)+2`
-/

namespace A073136.P10431051920568212150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) + (A040976 (n + 1) + 2)

end

end A073136.P10431051920568212150

namespace A073136

/-- `A006450(n+1)+A040976(n+1)+2` -/
def P10431051920568212150.Spec : Prop :=
  ∀ n, P10431051920568212150.a n = A073136 (n + 1)

theorem P10431051920568212150.correct : P10431051920568212150.Spec := by
  intro n
  simp only [A073136, Nat.add_sub_cancel, A073136.P10431051920568212150.a, A073136.P7132945222893016034.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006450, A006450.P16445646407241112379.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073136

/-! ## A073136.P7522814606199642427

`A006450(n+1)+A007504(n+1)-A007504(n)`
-/

namespace A073136.P7522814606199642427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) + (A007504 (n + 1) - A007504 n)

end

end A073136.P7522814606199642427

namespace A073136

/-- `A006450(n+1)+A007504(n+1)-A007504(n)` -/
def P7522814606199642427.Spec : Prop :=
  ∀ n, P7522814606199642427.a n = A073136 (n + 1)

end A073136

/-! ## A073136.P17011069925918227736

`A000959(n+1)+A006450(n+1)-A032600(n+1)`
-/

namespace A073136.P17011069925918227736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1) + (A006450 (n + 1) - A032600 (n + 1))

end

end A073136.P17011069925918227736

namespace A073136

/-- `A000959(n+1)+A006450(n+1)-A032600(n+1)` -/
def P17011069925918227736.Spec : Prop :=
  ∀ n, P17011069925918227736.a n = A073136 (n + 1)

end A073136

/-! ## A073136.P17435654559608982031

`A006450(n+1)+A006450(n+1)-A168152(n+1)`
-/

namespace A073136.P17435654559608982031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) + (A006450 (n + 1) - A168152 (n + 1))

end

end A073136.P17435654559608982031

namespace A073136

/-- `A006450(n+1)+A006450(n+1)-A168152(n+1)` -/
def P17435654559608982031.Spec : Prop :=
  ∀ n, P17435654559608982031.a n = A073136 (n + 1)

theorem P17435654559608982031.correct : P17435654559608982031.Spec := by
  intro n
  simp only [A073136, Nat.add_sub_cancel, A073136.P17435654559608982031.a, A073136.P7132945222893016034.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006450, A006450.P16445646407241112379.a, A168152, A168152.P4567682893620914765.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073136

/-! ## A073136.P9768206237263106226

`A006450(n+1)+A080697(n+1)-A230285(n+1)`
-/

namespace A073136.P9768206237263106226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) + (A080697 (n + 1) - A230285 (n + 1))

end

end A073136.P9768206237263106226

namespace A073136

/-- `A006450(n+1)+A080697(n+1)-A230285(n+1)` -/
def P9768206237263106226.Spec : Prop :=
  ∀ n, P9768206237263106226.a n = A073136 (n + 1)

theorem P9768206237263106226.correct : P9768206237263106226.Spec := by
  intro n
  simp only [A073136, Nat.add_sub_cancel, A073136.P9768206237263106226.a, A073136.P7132945222893016034.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006450, A006450.P16445646407241112379.a, A080697, A080697.P10795620430971902152.a, A230285, A230285.P9716043076160623184.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073136

/-! ## A073136.P4960510773353875982

`A008578(n+2)+A006450(n+1)`
-/

namespace A073136.P4960510773353875982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) + A006450 (n + 1)

end

end A073136.P4960510773353875982

namespace A073136

/-- `A008578(n+2)+A006450(n+1)` -/
def P4960510773353875982.Spec : Prop :=
  ∀ n, P4960510773353875982.a n = A073136 (n + 1)

end A073136

/-! ## A073136.P11545937033613713624

`A175247(n+2)+A000040(n+1)`
-/

namespace A073136.P11545937033613713624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (n + 2) + A000040 (n + 1)

end

end A073136.P11545937033613713624

namespace A073136

/-- `A175247(n+2)+A000040(n+1)` -/
def P11545937033613713624.Spec : Prop :=
  ∀ n, P11545937033613713624.a n = A073136 (n + 1)

end A073136

/-! ## A073136.P7874922216554400933

`A175247(n+2)+A008578(n+2)`
-/

namespace A073136.P7874922216554400933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (n + 2) + A008578 (n + 2)

end

end A073136.P7874922216554400933

namespace A073136

/-- `A175247(n+2)+A008578(n+2)` -/
def P7874922216554400933.Spec : Prop :=
  ∀ n, P7874922216554400933.a n = A073136 (n + 1)

end A073136

/-! ## A073136.P1398367742921063552

`A168152(n+1)+A008578(n+2)+A008578(n+2)`
-/

namespace A073136.P1398367742921063552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168152 (n + 1) + (A008578 (n + 2) + A008578 (n + 2))

end

end A073136.P1398367742921063552

namespace A073136

/-- `A168152(n+1)+A008578(n+2)+A008578(n+2)` -/
def P1398367742921063552.Spec : Prop :=
  ∀ n, P1398367742921063552.a n = A073136 (n + 1)

end A073136

/-! ## A073136.P10196829693218557919

`A158611(n+3)+A006450(n+1)`
-/

namespace A073136.P10196829693218557919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 3) + A006450 (n + 1)

end

end A073136.P10196829693218557919

namespace A073136

/-- `A158611(n+3)+A006450(n+1)` -/
def P10196829693218557919.Spec : Prop :=
  ∀ n, P10196829693218557919.a n = A073136 (n + 1)

end A073136

/-!
# A073137: a(n) is the least number whose binary representation has the same number of 0's and 1's as n.

The programs for A073137, the canonical program `A073137.P15165915416940425348` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073137 has offset 0).

The definition of A073137 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073137.P12825012567852561952

`A088512(n)+A053644(n)`
-/

namespace A073137.P12825012567852561952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088512 n + A053644 n

end

end A073137.P12825012567852561952

namespace A073137

/-- `A088512(n)+A053644(n)` -/
def P12825012567852561952.Spec : Prop :=
  ∀ n, P12825012567852561952.a n = A073137 n

end A073137

/-! ## A073137.P6328622976395267608

`A073138(n)-A073139(n)`
-/

namespace A073137.P6328622976395267608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073138 n - A073139 n

end

end A073137.P6328622976395267608

namespace A073137

/-- `A073138(n)-A073139(n)` -/
def P6328622976395267608.Spec : Prop :=
  ∀ n, P6328622976395267608.a n = A073137 n

end A073137

/-! ## A073137.P7730161769358675205

`A073140(n)-A073138(n)`
-/

namespace A073137.P7730161769358675205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073140 n - A073138 n

end

end A073137.P7730161769358675205

namespace A073137

/-- `A073140(n)-A073138(n)` -/
def P7730161769358675205.Spec : Prop :=
  ∀ n, P7730161769358675205.a n = A073137 n

theorem P7730161769358675205.correct : P7730161769358675205.Spec := by
  intro n
  simp only [A073137, Nat.add_sub_cancel, A073137.P7730161769358675205.a, A073137.P15165915416940425348.a, A038573, A038573.P5952807231814584452.a, A053644, A053644.P1707366427427647095.a, A073138, A073138.P4418127481005985757.a, A073140, A073140.P4323079817452288887.a, A001316, A001316.P6850078358198232129.a, A080100, A080100.P10210311042903193849.a, A000120, A000120.P2816527436160941581.a, A080791, A080791.P6131873509789506769.a, A005187, A005187.P3874015513960485494.a, A007814, A007814.P13537437864234730737.a, A036987, A036987.P1789601236562705309.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A073137

/-! ## A073137.P11617803585395010635

`(A073140(n)-A073139(n))/2`
-/

namespace A073137.P11617803585395010635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073140 n - A073139 n : ℚ) / 2

end

end A073137.P11617803585395010635

namespace A073137

/-- `(A073140(n)-A073139(n))/2` -/
def P11617803585395010635.Spec : Prop :=
  ∀ n, P11617803585395010635.a n = (A073137 n : ℚ)

end A073137

/-! ## A073137.P12133059995166398772

`A073140(n)-(A319650(n)+n)`
-/

namespace A073137.P12133059995166398772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073140 n - (A319650 n + (n : ℤ))

end

end A073137.P12133059995166398772

namespace A073137

/-- `A073140(n)-(A319650(n)+n)` -/
def P12133059995166398772.Spec : Prop :=
  ∀ n, P12133059995166398772.a n = A073137 n

theorem P12133059995166398772.correct : P12133059995166398772.Spec := by
  intro n
  simp only [A073137, Nat.add_sub_cancel, A073137.P12133059995166398772.a, A073137.P15165915416940425348.a, A038573, A038573.P5952807231814584452.a, A053644, A053644.P1707366427427647095.a, A073140, A073140.P4323079817452288887.a, A319650, A319650.P14664312154430006966.a, A001316, A001316.P6850078358198232129.a, A073138, A073138.P4418127481005985757.a, A000120, A000120.P2816527436160941581.a, A080100, A080100.P10210311042903193849.a, A005187, A005187.P3874015513960485494.a, A080791, A080791.P6131873509789506769.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A073137

/-! ## A073137.P12471718963382123019

`A209862(A209861(2*n)-A209861(n))`
-/

namespace A073137.P12471718963382123019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209862 (A209861 (2 * n) - A209861 n).toNat

end

end A073137.P12471718963382123019

namespace A073137

/-- `A209862(A209861(2*n)-A209861(n))` -/
def P12471718963382123019.Spec : Prop :=
  ∀ n, P12471718963382123019.a n = A073137 n

end A073137

/-! ## A073137.P15165915416940425348

`A053644(n)+A038573(n-A053644(n))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A073137

/-- `A053644(n)+A038573(n-A053644(n))` -/
def P15165915416940425348.Spec : Prop :=
  ∀ n, P15165915416940425348.a n = A073137 n

theorem P15165915416940425348.correct : P15165915416940425348.Spec := by
  intro n
  simp only [A073137]

end A073137

/-! ## A073137.P9698163394360543254

`A053644(n)+A030101(A073138(n-A053644(n)))`
-/

namespace A073137.P9698163394360543254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 n + A030101 (A073138 ((n : ℤ) - A053644 n).toNat).toNat

end

end A073137.P9698163394360543254

namespace A073137

/-- `A053644(n)+A030101(A073138(n-A053644(n)))` -/
def P9698163394360543254.Spec : Prop :=
  ∀ n, P9698163394360543254.a n = A073137 n

end A073137

/-! ## A073137.P5838670931258526133

`A038573(n)-(A053644(A038573(n))-A053644(n))`
-/

namespace A073137.P5838670931258526133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n - (A053644 (A038573 n).toNat - A053644 n)

end

end A073137.P5838670931258526133

namespace A073137

/-- `A038573(n)-(A053644(A038573(n))-A053644(n))` -/
def P5838670931258526133.Spec : Prop :=
  ∀ n, P5838670931258526133.a n = A073137 n

end A073137

/-! ## A073137.P12748910896081505509

`A073138(n)-A055945(A073138(n)-A053644(n))`
-/

namespace A073137.P12748910896081505509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073138 n - A055945 (A073138 n - A053644 n).toNat

end

end A073137.P12748910896081505509

namespace A073137

/-- `A073138(n)-A055945(A073138(n)-A053644(n))` -/
def P12748910896081505509.Spec : Prop :=
  ∀ n, P12748910896081505509.a n = A073137 n

end A073137

/-! ## A073137.P7115949330746421940

`A333777(A073138(n))`
-/

namespace A073137.P7115949330746421940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333777 (A073138 n).toNat

end

end A073137.P7115949330746421940

namespace A073137

/-- `A333777(A073138(n))` -/
def P7115949330746421940.Spec : Prop :=
  ∀ n, P7115949330746421940.a n = A073137 n

end A073137

/-! ## A073137.P5609717657082202215

`A233775(A319650(n)+n)-1`
-/

namespace A073137.P5609717657082202215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233775 (A319650 n + (n : ℤ)).toNat - 1

end

end A073137.P5609717657082202215

namespace A073137

/-- `A233775(A319650(n)+n)-1` -/
def P5609717657082202215.Spec : Prop :=
  ∀ n, P5609717657082202215.a n = A073137 n

end A073137

/-! ## A073137.P8322431018074590513

`A030109(A073138(2*n)+1)`
-/

namespace A073137.P8322431018074590513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (A073138 (2 * n) + 1).toNat

end

end A073137.P8322431018074590513

namespace A073137

/-- `A030109(A073138(2*n)+1)` -/
def P8322431018074590513.Spec : Prop :=
  ∀ n, P8322431018074590513.a n = A073137 n

end A073137

/-! ## A073137.P237650857694536743

`A030109(A319650(2*n)+2*n+1)`
-/

namespace A073137.P237650857694536743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (A319650 (2 * n) + (2 * n + 1 : ℤ)).toNat

end

end A073137.P237650857694536743

namespace A073137

/-- `A030109(A319650(2*n)+2*n+1)` -/
def P237650857694536743.Spec : Prop :=
  ∀ n, P237650857694536743.a n = A073137 n

end A073137

/-! ## A073137.P6160316767813240533

`(A038573(n)+A038573(A088697(n)))/2`
-/

namespace A073137.P6160316767813240533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038573 n + A038573 (A088697 n).toNat : ℚ) / 2

end

end A073137.P6160316767813240533

namespace A073137

/-- `(A038573(n)+A038573(A088697(n)))/2` -/
def P6160316767813240533.Spec : Prop :=
  ∀ n, P6160316767813240533.a n = (A073137 n : ℚ)

end A073137

/-! ## A073137.P7731262558210169001

`(A003817(n)+A003817(A209859(n)))/2`
-/

namespace A073137.P7731262558210169001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003817 n + A003817 (A209859 n).toNat : ℚ) / 2

end

end A073137.P7731262558210169001

namespace A073137

/-- `(A003817(n)+A003817(A209859(n)))/2` -/
def P7731262558210169001.Spec : Prop :=
  ∀ n, P7731262558210169001.a n = (A073137 n : ℚ)

end A073137

/-!
# A073138: Largest number having in its binary representation the same number of 0's and 1's as n.

The programs for A073138, the canonical program `A073138.P4418127481005985757` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073138 has offset 0).

The definition of A073138 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073138.P2897242252730059920

`a(floor(n/2))*2+n%2*(2^floor(log2(n))-a(floor(n/2)))` with `a(0)=0`
-/

namespace A073138.P2897242252730059920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat * 2 + ((n % 2 : ℕ) : ℤ) * ((2 ^ Nat.log 2 n : ℤ) - a ⌊(n : ℚ) / 2⌋.toNat)

end

end A073138.P2897242252730059920

namespace A073138

/-- `a(floor(n/2))*2+n%2*(2^floor(log2(n))-a(floor(n/2)))` -/
def P2897242252730059920.Spec : Prop :=
  ∀ n, P2897242252730059920.a n = A073138 n

end A073138

/-! ## A073138.P4418127481005985757

`A038573(n)*A080100(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A073138

/-- `A038573(n)*A080100(n)` -/
def P4418127481005985757.Spec : Prop :=
  ∀ n, P4418127481005985757.a n = A073138 n

theorem P4418127481005985757.correct : P4418127481005985757.Spec := by
  intro n
  simp only [A073138]

end A073138

/-! ## A073138.P16461280571940170920

`A319650(n)+n`
-/

namespace A073138.P16461280571940170920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319650 n + (n : ℤ)

end

end A073138.P16461280571940170920

namespace A073138

/-- `A319650(n)+n` -/
def P16461280571940170920.Spec : Prop :=
  ∀ n, P16461280571940170920.a n = A073138 n

theorem P16461280571940170920.correct : P16461280571940170920.Spec := by
  intro n
  simp only [A073138, Nat.add_sub_cancel, A073138.P16461280571940170920.a, A073138.P4418127481005985757.a, A038573, A038573.P5952807231814584452.a, A080100, A080100.P10210311042903193849.a, A319650, A319650.P14664312154430006966.a, A001316, A001316.P6850078358198232129.a, A080791, A080791.P6131873509789506769.a, A000120, A000120.P2816527436160941581.a, A007814, A007814.P13537437864234730737.a, A036987, A036987.P1789601236562705309.a, A001511, A001511.P17146462531039486101.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A073138

/-! ## A073138.P15790587433661553494

`A331857(A073137(n))`
-/

namespace A073138.P15790587433661553494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331857 (A073137 n).toNat

end

end A073138.P15790587433661553494

namespace A073138

/-- `A331857(A073137(n))` -/
def P15790587433661553494.Spec : Prop :=
  ∀ n, P15790587433661553494.a n = A073138 n

end A073138

/-! ## A073138.P12012478050366302883

`A048967(A035327(n))+n`
-/

namespace A073138.P12012478050366302883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048967 (A035327 n).toNat + (n : ℤ)

end

end A073138.P12012478050366302883

namespace A073138

/-- `A048967(A035327(n))+n` -/
def P12012478050366302883.Spec : Prop :=
  ∀ n, P12012478050366302883.a n = A073138 n

end A073138

/-! ## A073138.P13034121724190535178

`A073139(n)+A073137(n)`
-/

namespace A073138.P13034121724190535178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073139 n + A073137 n

end

end A073138.P13034121724190535178

namespace A073138

/-- `A073139(n)+A073137(n)` -/
def P13034121724190535178.Spec : Prop :=
  ∀ n, P13034121724190535178.a n = A073138 n

end A073138

/-! ## A073138.P2559417823031074598

`A164884(n)+A038573(n)`
-/

namespace A073138.P2559417823031074598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164884 n + A038573 n

end

end A073138.P2559417823031074598

namespace A073138

/-- `A164884(n)+A038573(n)` -/
def P2559417823031074598.Spec : Prop :=
  ∀ n, P2559417823031074598.a n = A073138 n

end A073138

/-! ## A073138.P2227059926077819960

`A062383(n)-A080100(n)`
-/

namespace A073138.P2227059926077819960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n - A080100 n

end

end A073138.P2227059926077819960

namespace A073138

/-- `A062383(n)-A080100(n)` -/
def P2227059926077819960.Spec : Prop :=
  ∀ n, P2227059926077819960.a n = A073138 n

end A073138

/-! ## A073138.P3257185897688892586

`A073140(n)-A073137(n)`
-/

namespace A073138.P3257185897688892586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073140 n - A073137 n

end

end A073138.P3257185897688892586

namespace A073138

/-- `A073140(n)-A073137(n)` -/
def P3257185897688892586.Spec : Prop :=
  ∀ n, P3257185897688892586.a n = A073138 n

theorem P3257185897688892586.correct : P3257185897688892586.Spec := by
  intro n
  simp only [A073138, Nat.add_sub_cancel, A073138.P3257185897688892586.a, A073138.P4418127481005985757.a, A038573, A038573.P5952807231814584452.a, A073137, A073137.P15165915416940425348.a, A073140, A073140.P4323079817452288887.a, A080100, A080100.P10210311042903193849.a, A001316, A001316.P6850078358198232129.a, A053644, A053644.P1707366427427647095.a, A080791, A080791.P6131873509789506769.a, A000120, A000120.P2816527436160941581.a, A007814, A007814.P13537437864234730737.a, A036987, A036987.P1789601236562705309.a, A001511, A001511.P17146462531039486101.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A073138

/-! ## A073138.P1831612617497325803

`A319785(n)-A038573(n)`
-/

namespace A073138.P1831612617497325803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319785 n - A038573 n

end

end A073138.P1831612617497325803

namespace A073138

/-- `A319785(n)-A038573(n)` -/
def P1831612617497325803.Spec : Prop :=
  ∀ n, P1831612617497325803.a n = A073138 n

theorem P1831612617497325803.correct : P1831612617497325803.Spec := by
  intro n
  simp only [A073138, Nat.add_sub_cancel, A073138.P1831612617497325803.a, A073138.P4418127481005985757.a, A038573, A038573.P5952807231814584452.a, A080100, A080100.P10210311042903193849.a, A319785, A319785.P17238291360876731257.a, A001316, A001316.P6850078358198232129.a, A080791, A080791.P6131873509789506769.a, A000120, A000120.P2816527436160941581.a, A007814, A007814.P13537437864234730737.a, A036987, A036987.P1789601236562705309.a, A001511, A001511.P17146462531039486101.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A073138

/-! ## A073138.P1340766306052741164

`A319785(n)+1-A001316(n)`
-/

namespace A073138.P1340766306052741164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319785 n + (1 - A001316 n)

end

end A073138.P1340766306052741164

namespace A073138

/-- `A319785(n)+1-A001316(n)` -/
def P1340766306052741164.Spec : Prop :=
  ∀ n, P1340766306052741164.a n = A073138 n

theorem P1340766306052741164.correct : P1340766306052741164.Spec := by
  intro n
  simp only [A073138, Nat.add_sub_cancel, A073138.P1340766306052741164.a, A073138.P4418127481005985757.a, A001316, A001316.P6850078358198232129.a, A038573, A038573.P5952807231814584452.a, A080100, A080100.P10210311042903193849.a, A319785, A319785.P17238291360876731257.a, A000120, A000120.P2816527436160941581.a, A080791, A080791.P6131873509789506769.a, A005187, A005187.P3874015513960485494.a, A007814, A007814.P13537437864234730737.a, A036987, A036987.P1789601236562705309.a, A001511, A001511.P17146462531039486101.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A073138

/-! ## A073138.P3375269130463593812

`(A001316(n)-1)*A080100(n)`
-/

namespace A073138.P3375269130463593812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001316 n - 1) * A080100 n

end

end A073138.P3375269130463593812

namespace A073138

/-- `(A001316(n)-1)*A080100(n)` -/
def P3375269130463593812.Spec : Prop :=
  ∀ n, P3375269130463593812.a n = A073138 n

end A073138

/-! ## A073138.P5895677985125589363

`(A073140(n)+A073139(n))/2`
-/

namespace A073138.P5895677985125589363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073140 n + A073139 n : ℚ) / 2

end

end A073138.P5895677985125589363

namespace A073138

/-- `(A073140(n)+A073139(n))/2` -/
def P5895677985125589363.Spec : Prop :=
  ∀ n, P5895677985125589363.a n = (A073138 n : ℚ)

end A073138

/-! ## A073138.P9598061278854474179

`A164884(n)+n-A048967(n)`
-/

namespace A073138.P9598061278854474179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164884 n + ((n : ℤ) - A048967 n)

end

end A073138.P9598061278854474179

namespace A073138

/-- `A164884(n)+n-A048967(n)` -/
def P9598061278854474179.Spec : Prop :=
  ∀ n, P9598061278854474179.a n = A073138 n

theorem P9598061278854474179.correct : P9598061278854474179.Spec := by
  intro n
  simp only [A073138, Nat.add_sub_cancel, A073138.P9598061278854474179.a, A073138.P4418127481005985757.a, A038573, A038573.P5952807231814584452.a, A048967, A048967.P3595347913858362397.a, A080100, A080100.P10210311042903193849.a, A164884, A164884.P8281495825813713226.a, A000120, A000120.P2816527436160941581.a, A001316, A001316.P6850078358198232129.a, A080791, A080791.P6131873509789506769.a, A219843, A219843.P18379057056590791838.a, A319650, A319650.P14664312154430006966.a, A000225, A000225.P6535533121115206393.a, A001317, A001317.P8261653114070389448.a, A005187, A005187.P3874015513960485494.a, A007814, A007814.P13537437864234730737.a, A036987, A036987.P1789601236562705309.a, A001511, A001511.P17146462531039486101.a, A048724, A048724.P638821554898421701.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A073138

/-! ## A073138.P4581337127288175548

`A353292(n)+n-A006257(n)`
-/

namespace A073138.P4581337127288175548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353292 n + ((n : ℤ) - A006257 n)

end

end A073138.P4581337127288175548

namespace A073138

/-- `A353292(n)+n-A006257(n)` -/
def P4581337127288175548.Spec : Prop :=
  ∀ n, P4581337127288175548.a n = A073138 n

end A073138

/-! ## A073138.P10541128302249096049

`A048967(n)+A319785(n)-n`
-/

namespace A073138.P10541128302249096049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048967 n + (A319785 n - (n : ℤ))

end

end A073138.P10541128302249096049

namespace A073138

/-- `A048967(n)+A319785(n)-n` -/
def P10541128302249096049.Spec : Prop :=
  ∀ n, P10541128302249096049.a n = A073138 n

end A073138

/-! ## A073138.P17016835183643714541

`A000225(A000120(n))*A080100(n)`
-/

namespace A073138.P17016835183643714541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A000120 n).toNat * A080100 n

end

end A073138.P17016835183643714541

namespace A073138

/-- `A000225(A000120(n))*A080100(n)` -/
def P17016835183643714541.Spec : Prop :=
  ∀ n, P17016835183643714541.a n = A073138 n

end A073138

/-! ## A073138.P11738866655053191389

`A080100(n)*A115378(A001316(n))`
-/

namespace A073138.P11738866655053191389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 n * A115378 (A001316 n).toNat

end

end A073138.P11738866655053191389

namespace A073138

/-- `A080100(n)*A115378(A001316(n))` -/
def P11738866655053191389.Spec : Prop :=
  ∀ n, P11738866655053191389.a n = A073138 n

end A073138

/-! ## A073138.P15902260114982780151

`(A000225(A023416(n))+1)*A038573(n)`
-/

namespace A073138.P15902260114982780151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000225 (A023416 n).toNat + 1) * A038573 n

end

end A073138.P15902260114982780151

namespace A073138

/-- `(A000225(A023416(n))+1)*A038573(n)` -/
def P15902260114982780151.Spec : Prop :=
  ∀ n, P15902260114982780151.a n = A073138 n

end A073138

/-! ## A073138.P17667534613177254596

`(A038573(A035327(n))+1)*A038573(n)`
-/

namespace A073138.P17667534613177254596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038573 (A035327 n).toNat + 1) * A038573 n

end

end A073138.P17667534613177254596

namespace A073138

/-- `(A038573(A035327(n))+1)*A038573(n)` -/
def P17667534613177254596.Spec : Prop :=
  ∀ n, P17667534613177254596.a n = A073138 n

end A073138

/-!
# A073139: Difference between the largest and smallest number having in binary representation the same number of 0's and 1's as n.

The programs for A073139, the canonical program `A073139.P11839161840558189667` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073139 has offset 0).

The definition of A073139 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073139.P11839161840558189667

`A319650(A073137(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A073139

/-- `A319650(A073137(n))` -/
def P11839161840558189667.Spec : Prop :=
  ∀ n, P11839161840558189667.a n = A073139 n

theorem P11839161840558189667.correct : P11839161840558189667.Spec := by
  intro n
  simp only [A073139]

end A073139

/-! ## A073139.P16110471660393402143

`A073138(n)-A073137(n)`
-/

namespace A073139.P16110471660393402143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073138 n - A073137 n

end

end A073139.P16110471660393402143

namespace A073139

/-- `A073138(n)-A073137(n)` -/
def P16110471660393402143.Spec : Prop :=
  ∀ n, P16110471660393402143.a n = A073139 n

end A073139

/-! ## A073139.P2278835150151706467

`(A080100(n)-1)*A088512(n)`
-/

namespace A073139.P2278835150151706467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A080100 n - 1) * A088512 n

end

end A073139.P2278835150151706467

namespace A073139

/-- `(A080100(n)-1)*A088512(n)` -/
def P2278835150151706467.Spec : Prop :=
  ∀ n, P2278835150151706467.a n = A073139 n

end A073139

/-! ## A073139.P4721653625887828468

`2*A073138(n)-A073140(n)`
-/

namespace A073139.P4721653625887828468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A073138 n - A073140 n

end

end A073139.P4721653625887828468

namespace A073139

/-- `2*A073138(n)-A073140(n)` -/
def P4721653625887828468.Spec : Prop :=
  ∀ n, P4721653625887828468.a n = A073139 n

end A073139

/-! ## A073139.P9642969066583641701

`A073140(n)-2*A073137(n)`
-/

namespace A073139.P9642969066583641701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073140 n - 2 * A073137 n

end

end A073139.P9642969066583641701

namespace A073139

/-- `A073140(n)-2*A073137(n)` -/
def P9642969066583641701.Spec : Prop :=
  ∀ n, P9642969066583641701.a n = A073139 n

end A073139

/-! ## A073139.P16468006489147933443

`A055945(A073138(n)-A053644(n))`
-/

namespace A073139.P16468006489147933443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 (A073138 n - A053644 n).toNat

end

end A073139.P16468006489147933443

namespace A073139

/-- `A055945(A073138(n)-A053644(n))` -/
def P16468006489147933443.Spec : Prop :=
  ∀ n, P16468006489147933443.a n = A073139 n

end A073139

/-! ## A073139.P15312253406978103759

`A164884(A073137(n)-A038573(n))`
-/

namespace A073139.P15312253406978103759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164884 (A073137 n - A038573 n).toNat

end

end A073139.P15312253406978103759

namespace A073139

/-- `A164884(A073137(n)-A038573(n))` -/
def P15312253406978103759.Spec : Prop :=
  ∀ n, P15312253406978103759.a n = A073139 n

end A073139

/-! ## A073139.P8528487461250221011

`A319650(A073140(n)-A073138(n))`
-/

namespace A073139.P8528487461250221011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319650 (A073140 n - A073138 n).toNat

end

end A073139.P8528487461250221011

namespace A073139

/-- `A319650(A073140(n)-A073138(n))` -/
def P8528487461250221011.Spec : Prop :=
  ∀ n, P8528487461250221011.a n = A073139 n

theorem P8528487461250221011.correct : P8528487461250221011.Spec := by
  intro n
  simp only [A073139, Nat.add_sub_cancel, A073139.P8528487461250221011.a, A073139.P11839161840558189667.a, A073137, A073137.P15165915416940425348.a, A073138, A073138.P4418127481005985757.a, A073140, A073140.P4323079817452288887.a, A319650, A319650.P14664312154430006966.a, A038573, A038573.P5952807231814584452.a, A053644, A053644.P1707366427427647095.a, A080100, A080100.P10210311042903193849.a, A001316, A001316.P6850078358198232129.a, A080791, A080791.P6131873509789506769.a, A000120, A000120.P2816527436160941581.a, A007814, A007814.P13537437864234730737.a, A036987, A036987.P1789601236562705309.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A073139

/-! ## A073139.P17902287737621646190

`A048967(A048967(n)+A073137(n)-n)`
-/

namespace A073139.P17902287737621646190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048967 (A048967 n + (A073137 n - (n : ℤ))).toNat

end

end A073139.P17902287737621646190

namespace A073139

/-- `A048967(A048967(n)+A073137(n)-n)` -/
def P17902287737621646190.Spec : Prop :=
  ∀ n, P17902287737621646190.a n = A073139 n

end A073139

/-! ## A073139.P10722089157773000407

`A073138(n)-(A088512(n)+A053644(n))`
-/

namespace A073139.P10722089157773000407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073138 n - (A088512 n + A053644 n)

end

end A073139.P10722089157773000407

namespace A073139

/-- `A073138(n)-(A088512(n)+A053644(n))` -/
def P10722089157773000407.Spec : Prop :=
  ∀ n, P10722089157773000407.a n = A073139 n

end A073139

/-! ## A073139.P623466795695031469

`A048967(A048967(n)-(n-A073137(n)))`
-/

namespace A073139.P623466795695031469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048967 (A048967 n - ((n : ℤ) - A073137 n)).toNat

end

end A073139.P623466795695031469

namespace A073139

/-- `A048967(A048967(n)-(n-A073137(n)))` -/
def P623466795695031469.Spec : Prop :=
  ∀ n, P623466795695031469.a n = A073139 n

end A073139

/-! ## A073139.P6140595164417656309

`A038573(n)*A080100(n)-A073137(n)`
-/

namespace A073139.P6140595164417656309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n * A080100 n - A073137 n

end

end A073139.P6140595164417656309

namespace A073139

/-- `A038573(n)*A080100(n)-A073137(n)` -/
def P6140595164417656309.Spec : Prop :=
  ∀ n, P6140595164417656309.a n = A073139 n

end A073139

/-! ## A073139.P3806598205779589059

`A088512(A053644(n)-A088512(n))*A088512(n)`
-/

namespace A073139.P3806598205779589059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088512 (A053644 n - A088512 n).toNat * A088512 n

end

end A073139.P3806598205779589059

namespace A073139

/-- `A088512(A053644(n)-A088512(n))*A088512(n)` -/
def P3806598205779589059.Spec : Prop :=
  ∀ n, P3806598205779589059.a n = A073139 n

end A073139

/-! ## A073139.P3931971355869640880

`A164884(A257697(n))`
-/

namespace A073139.P3931971355869640880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164884 (A257697 n).toNat

end

end A073139.P3931971355869640880

namespace A073139

/-- `A164884(A257697(n))` -/
def P3931971355869640880.Spec : Prop :=
  ∀ n, P3931971355869640880.a n = A073139 n

end A073139

/-! ## A073139.P8353078201708755012

`A256999(A073137(n))-A073137(A331857(n))`
-/

namespace A073139.P8353078201708755012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256999 (A073137 n).toNat - A073137 (A331857 n).toNat

end

end A073139.P8353078201708755012

namespace A073139

/-- `A256999(A073137(n))-A073137(A331857(n))` -/
def P8353078201708755012.Spec : Prop :=
  ∀ n, P8353078201708755012.a n = A073139 n

end A073139

/-! ## A073139.P2362205507113696502

`A088512(A054429(n+1)+1)*A088512(n)`
-/

namespace A073139.P2362205507113696502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088512 (A054429 (n + 1) + 1).toNat * A088512 n

end

end A073139.P2362205507113696502

namespace A073139

/-- `A088512(A054429(n+1)+1)*A088512(n)` -/
def P2362205507113696502.Spec : Prop :=
  ∀ n, P2362205507113696502.a n = A073139 n

end A073139

/-! ## A073139.P14518927827100505200

`A088512(n)*A115378(2*n+1)`
-/

namespace A073139.P14518927827100505200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088512 n * A115378 (2 * n + 1)

end

end A073139.P14518927827100505200

namespace A073139

/-- `A088512(n)*A115378(2*n+1)` -/
def P14518927827100505200.Spec : Prop :=
  ∀ n, P14518927827100505200.a n = A073139 n

end A073139

/-! ## A073139.P9727381538227559673

`A030109(A073137(2*n+1))-A073137(n)`
-/

namespace A073139.P9727381538227559673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (A073137 (2 * n + 1)).toNat - A073137 n

end

end A073139.P9727381538227559673

namespace A073139

/-- `A030109(A073137(2*n+1))-A073137(n)` -/
def P9727381538227559673.Spec : Prop :=
  ∀ n, P9727381538227559673.a n = A073139 n

end A073139

/-! ## A073139.P13441969414790510172

`A164884(A030109(A164884(2*n)+1))`
-/

namespace A073139.P13441969414790510172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164884 (A030109 (A164884 (2 * n) + 1).toNat).toNat

end

end A073139.P13441969414790510172

namespace A073139

/-- `A164884(A030109(A164884(2*n)+1))` -/
def P13441969414790510172.Spec : Prop :=
  ∀ n, P13441969414790510172.a n = A073139 n

end A073139

/-! ## A073139.P2734873552160825148

`A233569(A073137(n))-A073137(A233569(n))`
-/

namespace A073139.P2734873552160825148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233569 (A073137 n).toNat - A073137 (A233569 n).toNat

end

end A073139.P2734873552160825148

namespace A073139

/-- `A233569(A073137(n))-A073137(A233569(n))` -/
def P2734873552160825148.Spec : Prop :=
  ∀ n, P2734873552160825148.a n = A073139 n

end A073139

/-!
# A073140: Sum of the largest and smallest number having in binary representation the same number of 0's and 1's as n.

The programs for A073140, the canonical program `A073140.P4323079817452288887` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073140 has offset 0).

The definition of A073140 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073140.P4323079817452288887

`A073138(n)+A073137(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A073140

/-- `A073138(n)+A073137(n)` -/
def P4323079817452288887.Spec : Prop :=
  ∀ n, P4323079817452288887.a n = A073140 n

theorem P4323079817452288887.correct : P4323079817452288887.Spec := by
  intro n
  simp only [A073140]

end A073140

/-! ## A073140.P3651344921870153327

`A073139(n)+2*A073137(n)`
-/

namespace A073140.P3651344921870153327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073139 n + 2 * A073137 n

end

end A073140.P3651344921870153327

namespace A073140

/-- `A073139(n)+2*A073137(n)` -/
def P3651344921870153327.Spec : Prop :=
  ∀ n, P3651344921870153327.a n = A073140 n

end A073140

/-! ## A073140.P12096180050101004046

`2*A073138(n)-A073139(n)`
-/

namespace A073140.P12096180050101004046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A073138 n - A073139 n

end

end A073140.P12096180050101004046

namespace A073140

/-- `2*A073138(n)-A073139(n)` -/
def P12096180050101004046.Spec : Prop :=
  ∀ n, P12096180050101004046.a n = A073140 n

end A073140

/-! ## A073140.P16585036321429170991

`A073137(n)+A319650(n)+n`
-/

namespace A073140.P16585036321429170991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073137 n + (A319650 n + (n : ℤ))

end

end A073140.P16585036321429170991

namespace A073140

/-- `A073137(n)+A319650(n)+n` -/
def P16585036321429170991.Spec : Prop :=
  ∀ n, P16585036321429170991.a n = A073140 n

theorem P16585036321429170991.correct : P16585036321429170991.Spec := by
  intro n
  simp only [A073140, Nat.add_sub_cancel, A073140.P16585036321429170991.a, A073140.P4323079817452288887.a, A073137, A073137.P15165915416940425348.a, A073138, A073138.P4418127481005985757.a, A319650, A319650.P14664312154430006966.a, A038573, A038573.P5952807231814584452.a, A053644, A053644.P1707366427427647095.a, A080100, A080100.P10210311042903193849.a, A001316, A001316.P6850078358198232129.a, A080791, A080791.P6131873509789506769.a, A000120, A000120.P2816527436160941581.a, A007814, A007814.P13537437864234730737.a, A036987, A036987.P1789601236562705309.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A073140

/-! ## A073140.P17627647359849845292

`A073139(n)+A005843(A073137(n))`
-/

namespace A073140.P17627647359849845292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073139 n + A005843 (A073137 n).toNat

end

end A073140.P17627647359849845292

namespace A073140

/-- `A073139(n)+A005843(A073137(n))` -/
def P17627647359849845292.Spec : Prop :=
  ∀ n, P17627647359849845292.a n = A073140 n

end A073140

/-! ## A073140.P18366439937946350230

`A264596(A073137(n))+A003817(n)`
-/

namespace A073140.P18366439937946350230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264596 (A073137 n).toNat + A003817 n

end

end A073140.P18366439937946350230

namespace A073140

/-- `A264596(A073137(n))+A003817(n)` -/
def P18366439937946350230.Spec : Prop :=
  ∀ n, P18366439937946350230.a n = A073140 n

end A073140

/-! ## A073140.P2803504304619330862

`A319785(n)+A048967(A073137(n))`
-/

namespace A073140.P2803504304619330862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319785 n + A048967 (A073137 n).toNat

end

end A073140.P2803504304619330862

namespace A073140

/-- `A319785(n)+A048967(A073137(n))` -/
def P2803504304619330862.Spec : Prop :=
  ∀ n, P2803504304619330862.a n = A073140 n

end A073140

/-! ## A073140.P1123671324486708343

`A053644(n)+A088512(n)+A073138(n)`
-/

namespace A073140.P1123671324486708343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 n + (A088512 n + A073138 n)

end

end A073140.P1123671324486708343

namespace A073140

/-- `A053644(n)+A088512(n)+A073138(n)` -/
def P1123671324486708343.Spec : Prop :=
  ∀ n, P1123671324486708343.a n = A073140 n

end A073140

/-! ## A073140.P4364385289166728191

`A038573(n)+A164884(n)+A073137(n)`
-/

namespace A073140.P4364385289166728191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n + (A164884 n + A073137 n)

end

end A073140.P4364385289166728191

namespace A073140

/-- `A038573(n)+A164884(n)+A073137(n)` -/
def P4364385289166728191.Spec : Prop :=
  ∀ n, P4364385289166728191.a n = A073140 n

end A073140

/-! ## A073140.P10131835000663754961

`A073137(n)+A038573(n)*A080100(n)`
-/

namespace A073140.P10131835000663754961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073137 n + A038573 n * A080100 n

end

end A073140.P10131835000663754961

namespace A073140

/-- `A073137(n)+A038573(n)*A080100(n)` -/
def P10131835000663754961.Spec : Prop :=
  ∀ n, P10131835000663754961.a n = A073140 n

theorem P10131835000663754961.correct : P10131835000663754961.Spec := by
  intro n
  simp only [A073140, Nat.add_sub_cancel, A073140.P10131835000663754961.a, A073140.P4323079817452288887.a, A038573, A038573.P5952807231814584452.a, A073137, A073137.P15165915416940425348.a, A073138, A073138.P4418127481005985757.a, A080100, A080100.P10210311042903193849.a, A001316, A001316.P6850078358198232129.a, A053644, A053644.P1707366427427647095.a, A080791, A080791.P6131873509789506769.a, A000120, A000120.P2816527436160941581.a, A007814, A007814.P13537437864234730737.a, A036987, A036987.P1789601236562705309.a, A001511, A001511.P17146462531039486101.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A073140

/-! ## A073140.P1400051860399116640

`A256999(A073137(n))+A073137(A246594(n))`
-/

namespace A073140.P1400051860399116640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256999 (A073137 n).toNat + A073137 (A246594 n).toNat

end

end A073140.P1400051860399116640

namespace A073140

/-- `A256999(A073137(n))+A073137(A246594(n))` -/
def P1400051860399116640.Spec : Prop :=
  ∀ n, P1400051860399116640.a n = A073140 n

end A073140

/-! ## A073140.P17375984019655981923

`A233569(A073137(n))+A073137(A233569(n))`
-/

namespace A073140.P17375984019655981923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233569 (A073137 n).toNat + A073137 (A233569 n).toNat

end

end A073140.P17375984019655981923

namespace A073140

/-- `A233569(A073137(n))+A073137(A233569(n))` -/
def P17375984019655981923.Spec : Prop :=
  ∀ n, P17375984019655981923.a n = A073140 n

end A073140

/-!
# A073141: Product of the largest and smallest number having in binary representation the same number of 0's and 1's as n.

The programs for A073141, the canonical program `A073141.P2860800475902141148` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073141 has offset 0).

The definition of A073141 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073141.P2860800475902141148

`A073137(n)*A073138(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A073141

/-- `A073137(n)*A073138(n)` -/
def P2860800475902141148.Spec : Prop :=
  ∀ n, P2860800475902141148.a n = A073141 n

theorem P2860800475902141148.correct : P2860800475902141148.Spec := by
  intro n
  simp only [A073141]

end A073141

/-! ## A073141.P14334018809679806770

`(A319650(n)+n)*A073137(n)`
-/

namespace A073141.P14334018809679806770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A319650 n + (n : ℤ)) * A073137 n

end

end A073141.P14334018809679806770

namespace A073141

/-- `(A319650(n)+n)*A073137(n)` -/
def P14334018809679806770.Spec : Prop :=
  ∀ n, P14334018809679806770.a n = A073141 n

theorem P14334018809679806770.correct : P14334018809679806770.Spec := by
  intro n
  simp only [A073141, Nat.add_sub_cancel, A073141.P14334018809679806770.a, A073141.P2860800475902141148.a, A073137, A073137.P15165915416940425348.a, A073138, A073138.P4418127481005985757.a, A319650, A319650.P14664312154430006966.a, A038573, A038573.P5952807231814584452.a, A053644, A053644.P1707366427427647095.a, A080100, A080100.P10210311042903193849.a, A001316, A001316.P6850078358198232129.a, A080791, A080791.P6131873509789506769.a, A000120, A000120.P2816527436160941581.a, A007814, A007814.P13537437864234730737.a, A036987, A036987.P1789601236562705309.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A073141

/-! ## A073141.P5388307087480906702

`(A088512(n)+A053644(n))*A073138(n)`
-/

namespace A073141.P5388307087480906702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A088512 n + A053644 n) * A073138 n

end

end A073141.P5388307087480906702

namespace A073141

/-- `(A088512(n)+A053644(n))*A073138(n)` -/
def P5388307087480906702.Spec : Prop :=
  ∀ n, P5388307087480906702.a n = A073141 n

end A073141

/-! ## A073141.P2136244516197504624

`(A073139(n)+A073137(n))*A073137(n)`
-/

namespace A073141.P2136244516197504624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A073139 n + A073137 n) * A073137 n

end

end A073141.P2136244516197504624

namespace A073141

/-- `(A073139(n)+A073137(n))*A073137(n)` -/
def P2136244516197504624.Spec : Prop :=
  ∀ n, P2136244516197504624.a n = A073141 n

end A073141

/-! ## A073141.P13545376437227201405

`(A164884(n)+A038573(n))*A073137(n)`
-/

namespace A073141.P13545376437227201405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A164884 n + A038573 n) * A073137 n

end

end A073141.P13545376437227201405

namespace A073141

/-- `(A164884(n)+A038573(n))*A073137(n)` -/
def P13545376437227201405.Spec : Prop :=
  ∀ n, P13545376437227201405.a n = A073141 n

end A073141

/-! ## A073141.P11836923533281115363

`(A073138(n)-A073139(n))*A073138(n)`
-/

namespace A073141.P11836923533281115363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A073138 n - A073139 n) * A073138 n

end

end A073141.P11836923533281115363

namespace A073141

/-- `(A073138(n)-A073139(n))*A073138(n)` -/
def P11836923533281115363.Spec : Prop :=
  ∀ n, P11836923533281115363.a n = A073141 n

end A073141

/-! ## A073141.P17495994930955925997

`(A073140(n)-A073137(n))*A073137(n)`
-/

namespace A073141.P17495994930955925997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A073140 n - A073137 n) * A073137 n

end

end A073141.P17495994930955925997

namespace A073141

/-- `(A073140(n)-A073137(n))*A073137(n)` -/
def P17495994930955925997.Spec : Prop :=
  ∀ n, P17495994930955925997.a n = A073141 n

theorem P17495994930955925997.correct : P17495994930955925997.Spec := by
  intro n
  simp only [A073141, Nat.add_sub_cancel, A073141.P17495994930955925997.a, A073141.P2860800475902141148.a, A073137, A073137.P15165915416940425348.a, A073138, A073138.P4418127481005985757.a, A073140, A073140.P4323079817452288887.a, A038573, A038573.P5952807231814584452.a, A053644, A053644.P1707366427427647095.a, A080100, A080100.P10210311042903193849.a, A001316, A001316.P6850078358198232129.a, A080791, A080791.P6131873509789506769.a, A000120, A000120.P2816527436160941581.a, A007814, A007814.P13537437864234730737.a, A036987, A036987.P1789601236562705309.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A073141

/-! ## A073141.P11635226843575021057

`(A073140(n)-A073138(n))*A073138(n)`
-/

namespace A073141.P11635226843575021057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A073140 n - A073138 n) * A073138 n

end

end A073141.P11635226843575021057

namespace A073141

/-- `(A073140(n)-A073138(n))*A073138(n)` -/
def P11635226843575021057.Spec : Prop :=
  ∀ n, P11635226843575021057.a n = A073141 n

theorem P11635226843575021057.correct : P11635226843575021057.Spec := by
  intro n
  simp only [A073141, Nat.add_sub_cancel, A073141.P11635226843575021057.a, A073141.P2860800475902141148.a, A073137, A073137.P15165915416940425348.a, A073138, A073138.P4418127481005985757.a, A073140, A073140.P4323079817452288887.a, A038573, A038573.P5952807231814584452.a, A053644, A053644.P1707366427427647095.a, A080100, A080100.P10210311042903193849.a, A001316, A001316.P6850078358198232129.a, A080791, A080791.P6131873509789506769.a, A000120, A000120.P2816527436160941581.a, A007814, A007814.P13537437864234730737.a, A036987, A036987.P1789601236562705309.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A073141

/-! ## A073141.P4069006801309724296

`A038573(n)*A073137(n)*A080100(n)`
-/

namespace A073141.P4069006801309724296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n * A073137 n * A080100 n

end

end A073141.P4069006801309724296

namespace A073141

/-- `A038573(n)*A073137(n)*A080100(n)` -/
def P4069006801309724296.Spec : Prop :=
  ∀ n, P4069006801309724296.a n = A073141 n

theorem P4069006801309724296.correct : P4069006801309724296.Spec := by
  intro n
  simp only [A073141, Nat.add_sub_cancel, A073141.P4069006801309724296.a, A073141.P2860800475902141148.a, A038573, A038573.P5952807231814584452.a, A073137, A073137.P15165915416940425348.a, A073138, A073138.P4418127481005985757.a, A080100, A080100.P10210311042903193849.a, A001316, A001316.P6850078358198232129.a, A053644, A053644.P1707366427427647095.a, A080791, A080791.P6131873509789506769.a, A000120, A000120.P2816527436160941581.a, A007814, A007814.P13537437864234730737.a, A036987, A036987.P1789601236562705309.a, A001511, A001511.P17146462531039486101.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A073141

/-! ## A073141.P556470686929786126

`A073137(A246594(n))*A256999(A073137(n))`
-/

namespace A073141.P556470686929786126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073137 (A246594 n).toNat * A256999 (A073137 n).toNat

end

end A073141.P556470686929786126

namespace A073141

/-- `A073137(A246594(n))*A256999(A073137(n))` -/
def P556470686929786126.Spec : Prop :=
  ∀ n, P556470686929786126.a n = A073141 n

end A073141

/-! ## A073141.P5419483847214783989

`A073137(A233569(n))*A233569(A073137(n))`
-/

namespace A073141.P5419483847214783989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073137 (A233569 n).toNat * A233569 (A073137 n).toNat

end

end A073141.P5419483847214783989

namespace A073141

/-- `A073137(A233569(n))*A233569(A073137(n))` -/
def P5419483847214783989.Spec : Prop :=
  ∀ n, P5419483847214783989.a n = A073141 n

end A073141

/-!
# A073145: a(n) = -a(n-1) - a(n-2) + a(n-3), a(0)=3, a(1)=-1, a(2)=-1.

The programs for A073145, the canonical program `A073145.P7278044824331297720` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073145 has offset 0).

The definition of A073145 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-a(n-1)-a(n-2)+a(n-3)` (program `A073145.P7278044824331297720`, by `A073145.P7278044824331297720.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A073145.P7278044824331297720

`-a(n-1)-a(n-2)+a(n-3)` with `a(0)=3, a(1)=-1, a(2)=-1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A073145

/-- `-a(n-1)-a(n-2)+a(n-3)` -/
def P7278044824331297720.Spec : Prop :=
  ∀ n, P7278044824331297720.a n = A073145 n

theorem P7278044824331297720.correct : P7278044824331297720.Spec := by
  intro n
  simp only [A073145]

end A073145

/-! ## A073145.P2471362848149951357

`3*A057597(n+2)+2*A057597(n+1)+A057597(n)`
-/

namespace A073145.P2471362848149951357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A057597 (n + 2) + 2 * A057597 (n + 1) + A057597 n

end

end A073145.P2471362848149951357

namespace A073145

/-- `3*A057597(n+2)+2*A057597(n+1)+A057597(n)` -/
def P2471362848149951357.Spec : Prop :=
  ∀ n, P2471362848149951357.a n = A073145 n

end A073145

/-! ## A073145.P4477639962383502205

`ogf((3+2x+x^2)/(1+x+x^2-x^3))`
-/

namespace A073145.P4477639962383502205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 2, 1] [1, 1, 1, -1] n

end

end A073145.P4477639962383502205

namespace A073145

/-- `ogf((3+2x+x^2)/(1+x+x^2-x^3))` -/
def P4477639962383502205.Spec : Prop :=
  ∀ n, P4477639962383502205.a n = A073145 n

end A073145

/-! ## A073145.P13371212532977699074

`a(n-3)-(a(n-1)+a(n-2))` with `a(0)=3, a(1)=-1, a(2)=-1`
-/

namespace A073145.P13371212532977699074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, -1, -1] fun n a =>
  a (n - 3) - (a (n - 1) + a (n - 2))

end

end A073145.P13371212532977699074

namespace A073145

/-- `a(n-3)-(a(n-1)+a(n-2))` -/
def P13371212532977699074.Spec : Prop :=
  ∀ n, P13371212532977699074.a n = A073145 n

end A073145

/-! ## A073145.P6079872236427987206

`a(n-3)-a(n-1)-a(n-2)` with `a(0)=3, a(1)=-1, a(2)=-1`
-/

namespace A073145.P6079872236427987206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, -1, -1] fun n a =>
  a (n - 3) - a (n - 1) - a (n - 2)

end

end A073145.P6079872236427987206

namespace A073145

/-- `a(n-3)-a(n-1)-a(n-2)` -/
def P6079872236427987206.Spec : Prop :=
  ∀ n, P6079872236427987206.a n = A073145 n

end A073145

/-! ## A073145.P8899245460525031970

`∑[A075298(n+1)+A075298(n)]+1`
-/

namespace A073145.P8899245460525031970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075298 (n + 1) + A075298 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A073145.P8899245460525031970

namespace A073145

/-- `∑[A075298(n+1)+A075298(n)]+1` -/
def P8899245460525031970.Spec : Prop :=
  ∀ n, P8899245460525031970.a n = A073145 n

end A073145

/-! ## A073145.P13572503028200322922

`A190913(n)-A000032(n)`
-/

namespace A073145.P13572503028200322922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190913 n - A000032 n

end

end A073145.P13572503028200322922

namespace A073145

/-- `A190913(n)-A000032(n)` -/
def P13572503028200322922.Spec : Prop :=
  ∀ n, P13572503028200322922.a n = A073145 n

theorem P13572503028200322922.correct : P13572503028200322922.Spec := by
  intro n
  simp only [A073145, Nat.add_sub_cancel, A073145.P13572503028200322922.a, A073145.P7278044824331297720.a, A000032, A000032.P8352177345629330861.a, A190913, A190913.P16496416454050350867.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073145

/-! ## A073145.P6466099862997051804

`A190913(n)+1-A001612(n)`
-/

namespace A073145.P6466099862997051804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190913 n + (1 - A001612 n)

end

end A073145.P6466099862997051804

namespace A073145

/-- `A190913(n)+1-A001612(n)` -/
def P6466099862997051804.Spec : Prop :=
  ∀ n, P6466099862997051804.a n = A073145 n

end A073145

/-! ## A073145.P653985802984962378

`A190913(n)+2-A000211(n)`
-/

namespace A073145.P653985802984962378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190913 n + (2 - A000211 n)

end

end A073145.P653985802984962378

namespace A073145

/-- `A190913(n)+2-A000211(n)` -/
def P653985802984962378.Spec : Prop :=
  ∀ n, P653985802984962378.a n = A073145 n

end A073145

/-! ## A073145.P6685491501620124429

`A190913(n)-(A212804(n)+∑[A212804(n)])`
-/

namespace A073145.P6685491501620124429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190913 n - (A212804 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A073145.P6685491501620124429

namespace A073145

/-- `A190913(n)-(A212804(n)+∑[A212804(n)])` -/
def P6685491501620124429.Spec : Prop :=
  ∀ n, P6685491501620124429.a n = A073145 n

end A073145

/-! ## A073145.P5554680762853349550

`A190913(n)-(A212804(n)+A000045(n+1))`
-/

namespace A073145.P5554680762853349550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190913 n - (A212804 n + A000045 (n + 1))

end

end A073145.P5554680762853349550

namespace A073145

/-- `A190913(n)-(A212804(n)+A000045(n+1))` -/
def P5554680762853349550.Spec : Prop :=
  ∀ n, P5554680762853349550.a n = A073145 n

end A073145

/-! ## A073145.P4408789288669601129

`A190913(n)-(Δ[A000045(n)]+A000045(n+1))`
-/

namespace A073145.P4408789288669601129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190913 n - (f1 (n + 1) - f1 n + A000045 (n + 1))

end

end A073145.P4408789288669601129

namespace A073145

/-- `A190913(n)-(Δ[A000045(n)]+A000045(n+1))` -/
def P4408789288669601129.Spec : Prop :=
  ∀ n, P4408789288669601129.a n = A073145 n

end A073145

/-! ## A073145.P2315191716210411393

`A190913(n)-Δ[A001610(n)]`
-/

namespace A073145.P2315191716210411393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190913 n - (f1 (n + 1) - f1 n)

end

end A073145.P2315191716210411393

namespace A073145

/-- `A190913(n)-Δ[A001610(n)]` -/
def P2315191716210411393.Spec : Prop :=
  ∀ n, P2315191716210411393.a n = A073145 n

end A073145

/-! ## A073145.P14188948065274542810

`A190913(n)-Δ[A000204(n+1)]`
-/

namespace A073145.P14188948065274542810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190913 n - (f1 (n + 1) - f1 n)

end

end A073145.P14188948065274542810

namespace A073145

/-- `A190913(n)-Δ[A000204(n+1)]` -/
def P14188948065274542810.Spec : Prop :=
  ∀ n, P14188948065274542810.a n = A073145 n

end A073145

/-! ## A073145.P18151497949676612347

`A190913(n)-(A001610(n+1)-A001610(n))`
-/

namespace A073145.P18151497949676612347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190913 n - (A001610 (n + 1) - A001610 n)

end

end A073145.P18151497949676612347

namespace A073145

/-- `A190913(n)-(A001610(n+1)-A001610(n))` -/
def P18151497949676612347.Spec : Prop :=
  ∀ n, P18151497949676612347.a n = A073145 n

end A073145

/-! ## A073145.P12286565645116089284

`A190913(n)-(3*A000045(n+1)-A000045(n+2))`
-/

namespace A073145.P12286565645116089284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190913 n - (3 * A000045 (n + 1) - A000045 (n + 2))

end

end A073145.P12286565645116089284

namespace A073145

/-- `A190913(n)-(3*A000045(n+1)-A000045(n+2))` -/
def P12286565645116089284.Spec : Prop :=
  ∀ n, P12286565645116089284.a n = A073145 n

end A073145

/-! ## A073145.P8135023257309092624

`A075092(n)-A001644(n)`
-/

namespace A073145.P8135023257309092624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075092 n - A001644 n

end

end A073145.P8135023257309092624

namespace A073145

/-- `A075092(n)-A001644(n)` -/
def P8135023257309092624.Spec : Prop :=
  ∀ n, P8135023257309092624.a n = A073145 n

end A073145

/-!
# A073147: Triangle of numbers {a(n,k), n >= 0, 0<=k<=n} defined by a(0,0)=1, a(n,0)=A001764(n), a(n,n)=A006013(n), a(n,n-1)=A006629(n-1).

The programs for A073147, there is no canonical definition to state claims against.
-/

/-! ## A073147.P6522750608826225215

`A347205(A048678(record[A048678(n)]))`
-/

namespace A073147.P6522750608826225215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048678 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347205 (A048678 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A073147.P6522750608826225215

/-!
# A073148: Triangle of numbers {a(n,k), n >= 0, 0<=k<=n} defined by a(0,0)=1, a(n,0)=A006013(n), a(n+1,n)=A001764(n+1), a(n,m) = Sum A001764(n-k)*a(n,k), k=0..m.

The programs for A073148, there is no canonical definition to state claims against.
-/

/-! ## A073148.P17148898195671510146

`eq[A096067(n+1), A114516(n)]`
-/

namespace A073148.P17148898195671510146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114516 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A073148.P17148898195671510146

/-! ## A073148.P5089488594163759377

`eq[A007920(A134506(n)), A329602(n+1)]`
-/

namespace A073148.P5089488594163759377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A134506 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329602 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A073148.P5089488594163759377

/-!
# A073149: Triangle of numbers arising in recursive computation of A002212.

The programs for A073149, there is no canonical definition to state claims against.
-/

/-! ## A073149.P11249770564318085091

`A319696(∏[∑[char[n²]]])`
-/

namespace A073149.P11249770564318085091
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319696 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A073149.P11249770564318085091

/-! ## A073149.P8257676835271063562

`A065461(n)-A287372(A000701(3*n+4))`
-/

namespace A073149.P8257676835271063562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065461 n - A287372 (A000701 (3 * n + 4)).toNat

end

end A073149.P8257676835271063562

/-!
# A073150: Triangle of numbers {a(n,k), n >= 0, 0<=k<=n} defined by a(0,0)=1, a(1,0)=2, a(n,0)=A006318(n), a(n,n)=A006319(n), a(n+1,0)=a(n,0)+a(n,n), a(n,m+1)= Sum A006318(k)*a(n-k,0), k=0..m.

The programs for A073150, there is no canonical definition to state claims against.
-/

/-! ## A073150.P10895465513756934711

`A144338(record[A365383(n)])-1`
-/

namespace A073150.P10895465513756934711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A073150.P10895465513756934711

/-! ## A073150.P3782209382322600772

`A188171(A006882(n))+A000009(2*(n+1))`
-/

namespace A073150.P3782209382322600772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188171 (A006882 n).toNat + A000009 (2 * (n + 1))

end

end A073150.P3782209382322600772

/-! ## A073150.P10731075133073248099

`Δ[A057142(∑[A190050(n)-n])]`
-/

namespace A073150.P10731075133073248099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190050 n - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057142 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073150.P10731075133073248099

/-! ## A073150.P15842077632316488149

`A335467(Δ[A034891(2*n+1)])`
-/

namespace A073150.P15842077632316488149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034891 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335467 (f1 (n + 1) - f1 n).toNat

end

end A073150.P15842077632316488149

/-! ## A073150.P18221101458736037150

`A274687(A136252(n))`
-/

namespace A073150.P18221101458736037150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274687 (A136252 n).toNat

end

end A073150.P18221101458736037150

/-!
# A073151: Triangle of numbers {a(n,k), n >= 0, 0<=k<=n} defined by a(0,0)=1, a(n+1,0)=A006319(n)=a(n,0) + Sum a(k,k), k=0..n-1. a(n,m+1)= a(n,0) + Sum A006319(k)*a(n-k-1,0), k=0..m-1.

The programs for A073151, there is no canonical definition to state claims against.
-/

/-! ## A073151.P1033161235112904167

`A329978(A073147(n))`
-/

namespace A073151.P1033161235112904167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329978 (A073147 n).toNat

end

end A073151.P1033161235112904167

/-!
# A073152: Triangle of numbers relating two simple context-free grammars (A052709 and A052705).

The programs for A073152, there is no canonical definition to state claims against.
-/

/-! ## A073152.P13198962435951611784

`or(A034893(n), A341941(A341903(n+1)))`
-/

namespace A073152.P13198962435951611784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A034893 n) (A341941 (A341903 (n + 1)).toNat)

end

end A073152.P13198962435951611784

/-! ## A073152.P3232676544025750862

`or(A034893(n), A167749(A185648(n)))`
-/

namespace A073152.P3232676544025750862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A034893 n) (A167749 (A185648 n).toNat)

end

end A073152.P3232676544025750862

/-!
# A073153: Triangle of numbers relating two sequences A073155 and A073156.

The programs for A073153, there is no canonical definition to state claims against.
-/

/-! ## A073153.P7631156654398698842

`A094280(A073151(n))`
-/

namespace A073153.P7631156654398698842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094280 (A073151 n).toNat

end

end A073153.P7631156654398698842

/-! ## A073153.P5759138493405208972

`A337769(A279786(n))`
-/

namespace A073153.P5759138493405208972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337769 (A279786 n).toNat

end

end A073153.P5759138493405208972

/-!
# A073154: Triangle of numbers relating two sequences (A073157 and A073155).

The programs for A073154, there is no canonical definition to state claims against.
-/

/-! ## A073154.P1215874239842439476

`A144117(n+1)+A010059(A398314(n+1))`
-/

namespace A073154.P1215874239842439476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144117 (n + 1) + A010059 (A398314 (n + 1)).toNat

end

end A073154.P1215874239842439476

/-! ## A073154.P16470896934145812529

`A353853(A026636(n))+n`
-/

namespace A073154.P16470896934145812529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353853 (A026636 n).toNat + (n : ℤ)

end

end A073154.P16470896934145812529

/-! ## A073154.P2725174855832594381

`record[A014836(n+3)-A261765(n)]`
-/

namespace A073154.P2725174855832594381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014836 (n + 3) - A261765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073154.P2725174855832594381

/-! ## A073154.P1540148434823793297

`record[or(A025875(n), A319002(n+1))]`
-/

namespace A073154.P1540148434823793297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025875 n) (A319002 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073154.P1540148434823793297

/-! ## A073154.P13950917072064460636

`A347192(n+1)-A136691(A320921(n))`
-/

namespace A073154.P13950917072064460636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347192 (n + 1) - A136691 (A320921 n).toNat

end

end A073154.P13950917072064460636

/-!
# A073155: Leftmost column sequence of triangle A073153.

The programs for A073155, there is no canonical definition to state claims against.
-/

/-! ## A073155.P16862561757900554864

`A073153(∑[n])`
-/

namespace A073155.P16862561757900554864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073153 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A073155.P16862561757900554864

/-! ## A073155.P15336770074371656073

`A073157(n)-a(n-1)` with `a(0)=1`
-/

namespace A073155.P15336770074371656073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A073157 n - a (n - 1)

end

end A073155.P15336770074371656073

/-! ## A073155.P4399302012041589868

`abs(∑[A033999(n)*A073157(n)])`
-/

namespace A073155.P4399302012041589868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A073157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A073155.P4399302012041589868

/-! ## A073155.P96755883903564433

`∑[A033999(n+2)*A073157(n)]/A033999(n)`
-/

namespace A073155.P96755883903564433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 2) * A073157 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A033999 n : ℚ)

end

end A073155.P96755883903564433

/-! ## A073155.P11357613095678349257

`A073157(n+1)+A137637(n)-A137635(n+1)`
-/

namespace A073155.P11357613095678349257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073157 (n + 1) + (A137637 n - A137635 (n + 1))

end

end A073155.P11357613095678349257

/-!
# A073156: Main diagonal sequence of triangle A073153.

The programs for A073156, there is no canonical definition to state claims against.
-/

/-! ## A073156.P6137025010714480550

`A073153(∑[n]+n)`
-/

namespace A073156.P6137025010714480550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073153 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A073156.P6137025010714480550

/-! ## A073156.P10947566739188592398

`record[A073153(n)/A111125(n)]`
-/

namespace A073156.P10947566739188592398
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073153 n : ℚ) / (A111125 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073156.P10947566739188592398

/-! ## A073156.P947468720750422217

`record[A073153(n)/A124821(n)]`
-/

namespace A073156.P947468720750422217
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073153 n : ℚ) / (A124821 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073156.P947468720750422217

/-! ## A073156.P7396811657358101302

`record[A073153(n)/A073135(n)]`
-/

namespace A073156.P7396811657358101302
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073153 n : ℚ) / (A073135 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073156.P7396811657358101302

/-! ## A073156.P6567097211731221345

`record[A073153(n)/A199530(n+2)]`
-/

namespace A073156.P6567097211731221345
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073153 n : ℚ) / (A199530 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073156.P6567097211731221345

/-!
# A073157: Number of Schroeder n-paths containing no FFs.

The programs for A073157, there is no canonical definition to state claims against.
-/

/-! ## A073157.P2022479541458860271

`A073154(∑[n])`
-/

namespace A073157.P2022479541458860271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073154 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A073157.P2022479541458860271

/-! ## A073157.P12724998436023667494

`A073153(∑[n]+1)`
-/

namespace A073157.P12724998436023667494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073153 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A073157.P12724998436023667494

/-! ## A073157.P8246024348629129031

`abs(1-A366356(n+1))`
-/

namespace A073157.P8246024348629129031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A366356 (n + 1)|

end

end A073157.P8246024348629129031

/-! ## A073157.P14467789186324724927

`A366694(n)-a(n-1)` with `a(0)=1`
-/

namespace A073157.P14467789186324724927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A366694 n - a (n - 1)

end

end A073157.P14467789186324724927

/-! ## A073157.P2911857838201531442

`A073154(A000217(n))+A010054(3*n+2)`
-/

namespace A073157.P2911857838201531442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073154 (A000217 n).toNat + A010054 (3 * n + 2)

end

end A073157.P2911857838201531442

/-! ## A073157.P8682566622966725139

`A073154(A000217(n))%A001008(2*n+3)`
-/

namespace A073157.P8682566622966725139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073154 (A000217 n).toNat) (A001008 (2 * n + 3))

end

end A073157.P8682566622966725139

/-! ## A073157.P16606319194779136206

`A073154(A000217(n))%A000254(n+2)`
-/

namespace A073157.P16606319194779136206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073154 (A000217 n).toNat) (A000254 (n + 2))

end

end A073157.P16606319194779136206

/-!
# A073158: a() = 1,2,4,7,... [ A073158 ], adjacent sums = 3,6,11... [ A073159 ] and 2nd adjacent sums = 9,17,... [ A073160 ] are disjoint but not monotonic; adjoin next free number to A073158 to construct three sequences that together include all positive integers.

The programs for A073158, there is no canonical definition to state claims against.
-/

/-! ## A073158.P12045481247596981888

`A073159(n)-a(n-1)` with `a(0)=1`
-/

namespace A073158.P12045481247596981888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A073159 n - a (n - 1)

end

end A073158.P12045481247596981888

/-! ## A073158.P2074374597236768573

`A035311(n)-A257531(A339837(n))`
-/

namespace A073158.P2074374597236768573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035311 n - A257531 (A339837 n).toNat

end

end A073158.P2074374597236768573

/-! ## A073158.P8414779476930138057

`A035312(∑[n])-A257531(A339837(n))`
-/

namespace A073158.P8414779476930138057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035312 (∑ j ∈ Finset.range (n + 1), f1 j) - A257531 (A339837 n).toNat

end

end A073158.P8414779476930138057

/-! ## A073158.P9793439372059092252

`A035311(n)+A016389(A095041(n+1))`
-/

namespace A073158.P9793439372059092252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035311 n + A016389 (A095041 (n + 1)).toNat

end

end A073158.P9793439372059092252

/-! ## A073158.P3291497494234488418

`A035311(n)-A016389(A001013(n+1))`
-/

namespace A073158.P3291497494234488418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035311 n - A016389 (A001013 (n + 1)).toNat

end

end A073158.P3291497494234488418

/-!
# A073159: Sums of adjacent terms of A073158. Together, A073158, A073159 and A073160 include all the positive integers uniquely.

The programs for A073159, there is no canonical definition to state claims against.
-/

/-! ## A073159.P12905562596512166805

`A073160(n)-a(n-1)` with `a(0)=3`
-/

namespace A073159.P12905562596512166805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A073160 n - a (n - 1)

end

end A073159.P12905562596512166805

/-! ## A073159.P6094116041370295565

`A073158(n+1)+A073158(n+2)`
-/

namespace A073159.P6094116041370295565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073158 (n + 1) + A073158 (n + 2)

end

end A073159.P6094116041370295565

/-! ## A073159.P4847799494159944714

`A035312(eq[2, A131879(n+1)])`
-/

namespace A073159.P4847799494159944714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035312 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073159.P4847799494159944714

/-! ## A073159.P2410160886466377220

`A035312(eq[2, A382833(n)])`
-/

namespace A073159.P2410160886466377220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382833 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035312 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073159.P2410160886466377220

/-! ## A073159.P16495465837857069766

`A035312(A035358(A035313(n))+1)`
-/

namespace A073159.P16495465837857069766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035312 (A035358 (A035313 n).toNat + 1).toNat

end

end A073159.P16495465837857069766

/-!
# A073160: Sums of adjacent terms of A073159. Together, A073158, A073159 and A073160 include all the positive integers uniquely.

The programs for A073160, there is no canonical definition to state claims against.
-/

/-! ## A073160.P12661772640141863153

`A073159(n+1)+A073159(n+2)`
-/

namespace A073160.P12661772640141863153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073159 (n + 1) + A073159 (n + 2)

end

end A073160.P12661772640141863153

/-! ## A073160.P964161237059847025

`A035312(A077168(n+3)+A025747(n))`
-/

namespace A073160.P964161237059847025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035312 (A077168 (n + 3) + A025747 n).toNat

end

end A073160.P964161237059847025

/-! ## A073160.P13851505790574806324

`A035312(eq[2, A125311(n)])`
-/

namespace A073160.P13851505790574806324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125311 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035312 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073160.P13851505790574806324

/-!
# A073163: Partial sums of Pi(k) arising in A073162.

The programs for A073163, there is no canonical definition to state claims against.
-/

/-! ## A073163.P8240872193067159622

`A073162(n+1)*A073164(n+1)`
-/

namespace A073163.P8240872193067159622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073162 (n + 1) * A073164 (n + 1)

end

end A073163.P8240872193067159622

/-! ## A073163.P10327238029567546747

`lcm(A073162(n+1), A073164(A005555(n)))`
-/

namespace A073163.P10327238029567546747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A073162 (n + 1)) (A073164 (A005555 n).toNat)

end

end A073163.P10327238029567546747

/-! ## A073163.P3570747946111862625

`lcm(A073162(A002473(n+1)), A073164(n+1))`
-/

namespace A073163.P3570747946111862625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A073162 (A002473 (n + 1)).toNat) (A073164 (n + 1))

end

end A073163.P3570747946111862625

/-!
# A073164: Quotients arising in A073162: A046992(n)/n if n is in A073162.

The programs for A073164, there is no canonical definition to state claims against.
-/

/-! ## A073164.P8833072213847937845

`A073163(n+1)/A073162(n+1)`
-/

namespace A073164.P8833072213847937845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073163 (n + 1) : ℚ) / (A073162 (n + 1) : ℚ)

end

end A073164.P8833072213847937845

/-!
# A073165: Triangle T(n,k) read by rows: related to David G. Cantor's sigma function.

The programs for A073165, there is no canonical definition to state claims against.
-/

/-! ## A073165.P1418412628588067589

`A055068(n)/A073306(n-C(∑[char[∑[n]]], 2))`
-/

namespace A073165.P1418412628588067589
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055068 n : ℚ) / (A073306 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2) : ℚ)

end

end A073165.P1418412628588067589

/-! ## A073165.P9062011859126124478

`A055068(n)/A073306(A002262(n))`
-/

namespace A073165.P9062011859126124478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055068 n : ℚ) / (A073306 (A002262 n).toNat : ℚ)

end

end A073165.P9062011859126124478

/-! ## A073165.P15179191648149178977

`A133112(A083920(round(acot(n)+n)))`
-/

namespace A073165.P15179191648149178977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133112 (A083920 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat).toNat

end

end A073165.P15179191648149178977

/-! ## A073165.P14985397019511848934

`A133112(A028310(A271439(n)))`
-/

namespace A073165.P14985397019511848934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133112 (A028310 (A271439 n).toNat).toNat

end

end A073165.P14985397019511848934

/-! ## A073165.P7556622895132337216

`A133112(A271439(n)+A010054(n))`
-/

namespace A073165.P7556622895132337216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133112 (A271439 n + A010054 n).toNat

end

end A073165.P7556622895132337216

/-! ## A073165.P1275067525509813271

`A133112(A028310(n-A003056(n)))`
-/

namespace A073165.P1275067525509813271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133112 (A028310 ((n : ℤ) - A003056 n).toNat).toNat

end

end A073165.P1275067525509813271

/-! ## A073165.P1914815807404443642

`A133112(or(A010054(n), A271439(n)))`
-/

namespace A073165.P1914815807404443642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133112 (Int.lor (A010054 n) (A271439 n)).toNat

end

end A073165.P1914815807404443642

/-! ## A073165.P10438059691694192729

`A133112(xor(A010054(n), A271439(n)))`
-/

namespace A073165.P10438059691694192729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133112 (Int.xor (A010054 n) (A271439 n)).toNat

end

end A073165.P10438059691694192729

/-!
# A073167: The (n!)-th composite number.

The programs for A073167, the canonical program `A073167.P4925457120864864700` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073167 has offset 1).

The definition of A073167 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A073167.P4925457120864864700

`A002808(A000142(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A073167

/-- `A002808(A000142(n+1))` -/
def P4925457120864864700.Spec : Prop :=
  ∀ n, P4925457120864864700.a n = A073167 (n + 1)

theorem P4925457120864864700.correct : P4925457120864864700.Spec := by
  intro n
  simp only [A073167, Nat.add_sub_cancel]

end A073167

/-! ## A073167.P13525193176793120666

`A002808((n+1)!)`
-/

namespace A073167.P13525193176793120666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (Nat.factorial (n + 1))

end

end A073167.P13525193176793120666

namespace A073167

/-- `A002808((n+1)!)` -/
def P13525193176793120666.Spec : Prop :=
  ∀ n, P13525193176793120666.a n = A073167 (n + 1)

end A073167

/-! ## A073167.P10082098463032787231

`A002808(∏[1+n])`
-/

namespace A073167.P10082098463032787231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A073167.P10082098463032787231

namespace A073167

/-- `A002808(∏[1+n])` -/
def P10082098463032787231.Spec : Prop :=
  ∀ n, P10082098463032787231.a n = A073167 (n + 1)

end A073167

/-!
# A073168: a(n) = A007821(n) - A022449(n).

The programs for A073168, the canonical program `A073168.P7500810570419237010` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073168 has offset 1).

The definition of A073168 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073168.P4690748909972312377

`A088982(n+1)-A065858(n+1)`
-/

namespace A073168.P4690748909972312377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088982 (n + 1) - A065858 (n + 1)

end

end A073168.P4690748909972312377

namespace A073168

/-- `A088982(n+1)-A065858(n+1)` -/
def P4690748909972312377.Spec : Prop :=
  ∀ n, P4690748909972312377.a n = A073168 (n + 1)

end A073168

/-! ## A073168.P661765041450611551

`A088982(n+1)-A022449(n+2)`
-/

namespace A073168.P661765041450611551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088982 (n + 1) - A022449 (n + 2)

end

end A073168.P661765041450611551

namespace A073168

/-- `A088982(n+1)-A022449(n+2)` -/
def P661765041450611551.Spec : Prop :=
  ∀ n, P661765041450611551.a n = A073168 (n + 1)

end A073168

/-! ## A073168.P7500810570419237010

`A007821(n+2)-A022449(n+2)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A073168

/-- `A007821(n+2)-A022449(n+2)` -/
def P7500810570419237010.Spec : Prop :=
  ∀ n, P7500810570419237010.a n = A073168 (n + 1)

theorem P7500810570419237010.correct : P7500810570419237010.Spec := by
  intro n
  simp only [A073168, Nat.add_sub_cancel]

end A073168

/-! ## A073168.P10937366857539958839

`A000040(A002808(n+1))-A065858(n+1)`
-/

namespace A073168.P10937366857539958839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A002808 (n + 1)).toNat - A065858 (n + 1)

end

end A073168.P10937366857539958839

namespace A073168

/-- `A000040(A002808(n+1))-A065858(n+1)` -/
def P10937366857539958839.Spec : Prop :=
  ∀ n, P10937366857539958839.a n = A073168 (n + 1)

end A073168

/-! ## A073168.P1962773733966658305

`A000040(A018252(n+2))-A022449(n+2)`
-/

namespace A073168.P1962773733966658305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A018252 (n + 2)).toNat - A022449 (n + 2)

end

end A073168.P1962773733966658305

namespace A073168

/-- `A000040(A018252(n+2))-A022449(n+2)` -/
def P1962773733966658305.Spec : Prop :=
  ∀ n, P1962773733966658305.a n = A073168 (n + 1)

end A073168

/-! ## A073168.P5731656239430745396

`A088982(n+1)-A002808(A000040(n+1))`
-/

namespace A073168.P5731656239430745396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088982 (n + 1) - A002808 (A000040 (n + 1)).toNat

end

end A073168.P5731656239430745396

namespace A073168

/-- `A088982(n+1)-A002808(A000040(n+1))` -/
def P5731656239430745396.Spec : Prop :=
  ∀ n, P5731656239430745396.a n = A073168 (n + 1)

end A073168

/-! ## A073168.P17805575834471186314

`A088982(n+1)-A018252(A008864(n+1))`
-/

namespace A073168.P17805575834471186314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088982 (n + 1) - A018252 (A008864 (n + 1)).toNat

end

end A073168.P17805575834471186314

namespace A073168

/-- `A088982(n+1)-A018252(A008864(n+1))` -/
def P17805575834471186314.Spec : Prop :=
  ∀ n, P17805575834471186314.a n = A073168 (n + 1)

end A073168

/-! ## A073168.P17226371885292216742

`A088982(n+1)-A018252(A000040(n+1)+1)`
-/

namespace A073168.P17226371885292216742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088982 (n + 1) - A018252 (A000040 (n + 1) + 1).toNat

end

end A073168.P17226371885292216742

namespace A073168

/-- `A088982(n+1)-A018252(A000040(n+1)+1)` -/
def P17226371885292216742.Spec : Prop :=
  ∀ n, P17226371885292216742.a n = A073168 (n + 1)

end A073168

/-! ## A073168.P2653777495267174008

`A088982(n+1)-record[A018252(A000010(n+1)+2)]`
-/

namespace A073168.P2653777495267174008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A000010 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088982 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073168.P2653777495267174008

namespace A073168

/-- `A088982(n+1)-record[A018252(A000010(n+1)+2)]` -/
def P2653777495267174008.Spec : Prop :=
  ∀ n, P2653777495267174008.a n = A073168 (n + 1)

end A073168

/-! ## A073168.P16320105345916189983

`A000040(A002808(n+1))-A002808(A000040(n+1))`
-/

namespace A073168.P16320105345916189983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A002808 (n + 1)).toNat - A002808 (A000040 (n + 1)).toNat

end

end A073168.P16320105345916189983

namespace A073168

/-- `A000040(A002808(n+1))-A002808(A000040(n+1))` -/
def P16320105345916189983.Spec : Prop :=
  ∀ n, P16320105345916189983.a n = A073168 (n + 1)

end A073168

/-! ## A073168.P15116105663511318810

`A000040(A018252(n+2))-A018252(A008864(n+1))`
-/

namespace A073168.P15116105663511318810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A018252 (n + 2)).toNat - A018252 (A008864 (n + 1)).toNat

end

end A073168.P15116105663511318810

namespace A073168

/-- `A000040(A018252(n+2))-A018252(A008864(n+1))` -/
def P15116105663511318810.Spec : Prop :=
  ∀ n, P15116105663511318810.a n = A073168 (n + 1)

end A073168

/-! ## A073168.P12934850967414533473

`A000040(A018252(n+2))-A018252(A028815(n+1))`
-/

namespace A073168.P12934850967414533473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A018252 (n + 2)).toNat - A018252 (A028815 (n + 1)).toNat

end

end A073168.P12934850967414533473

namespace A073168

/-- `A000040(A018252(n+2))-A018252(A028815(n+1))` -/
def P12934850967414533473.Spec : Prop :=
  ∀ n, P12934850967414533473.a n = A073168 (n + 1)

end A073168

/-! ## A073168.P13106388099873748231

`A000040(A018252(n+2))-A018252(A000040(n+1)+1)`
-/

namespace A073168.P13106388099873748231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A018252 (n + 2)).toNat - A018252 (A000040 (n + 1) + 1).toNat

end

end A073168.P13106388099873748231

namespace A073168

/-- `A000040(A018252(n+2))-A018252(A000040(n+1)+1)` -/
def P13106388099873748231.Spec : Prop :=
  ∀ n, P13106388099873748231.a n = A073168 (n + 1)

end A073168

/-!
# A073169: a(n)=A002808(n)-n, difference between n-th composite and n.

The programs for A073169, the canonical program `A073169.P14738260624206914448` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073169 has offset 1).

The definition of A073169 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A073169.P14738260624206914448

`A002808(n+1)-(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A073169

/-- `A002808(n+1)-(n+1)` -/
def P14738260624206914448.Spec : Prop :=
  ∀ n, P14738260624206914448.a n = A073169 (n + 1)

theorem P14738260624206914448.correct : P14738260624206914448.Spec := by
  intro n
  simp only [A073169, Nat.add_sub_cancel]

end A073169

/-! ## A073169.P3204707387462876064

`1+A073425(n+1)`
-/

namespace A073169.P3204707387462876064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A073425 (n + 1)

end

end A073169.P3204707387462876064

namespace A073169

/-- `1+A073425(n+1)` -/
def P3204707387462876064.Spec : Prop :=
  ∀ n, P3204707387462876064.a n = A073169 (n + 1)

end A073169

/-! ## A073169.P13611605249523239766

`A072668(n+1)-n`
-/

namespace A073169.P13611605249523239766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1) - (n : ℤ)

end

end A073169.P13611605249523239766

namespace A073169

/-- `A072668(n+1)-n` -/
def P13611605249523239766.Spec : Prop :=
  ∀ n, P13611605249523239766.a n = A073169 (n + 1)

end A073169

/-! ## A073169.P1098438864233423019

`lt[1, A330773(n)]-n`
-/

namespace A073169.P1098438864233423019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - (n : ℤ)

end

end A073169.P1098438864233423019

namespace A073169

/-- `lt[1, A330773(n)]-n` -/
def P1098438864233423019.Spec : Prop :=
  ∀ n, P1098438864233423019.a n = A073169 (n + 1)

end A073169

/-! ## A073169.P2459944323961754857

`lt[A166333(n), n]-n`
-/

namespace A073169.P2459944323961754857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - (n : ℤ)

end

end A073169.P2459944323961754857

namespace A073169

/-- `lt[A166333(n), n]-n` -/
def P2459944323961754857.Spec : Prop :=
  ∀ n, P2459944323961754857.a n = A073169 (n + 1)

end A073169

/-! ## A073169.P3477085081125639175

`∑[C(A065310(n+1), 2)]`
-/

namespace A073169.P3477085081125639175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A065310 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073169.P3477085081125639175

namespace A073169

/-- `∑[C(A065310(n+1), 2)]` -/
def P3477085081125639175.Spec : Prop :=
  ∀ n, (P3477085081125639175.a n : ℤ) = A073169 (n + 1)

end A073169

/-! ## A073169.P7571282727064639726

`Δ[A053767(n)]-(n+1)`
-/

namespace A073169.P7571282727064639726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 1 : ℤ)

end

end A073169.P7571282727064639726

namespace A073169

/-- `Δ[A053767(n)]-(n+1)` -/
def P7571282727064639726.Spec : Prop :=
  ∀ n, P7571282727064639726.a n = A073169 (n + 1)

end A073169

/-! ## A073169.P11619719812989533440

`A018252(n+2)-(n+1)`
-/

namespace A073169.P11619719812989533440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) - (n + 1 : ℤ)

end

end A073169.P11619719812989533440

namespace A073169

/-- `A018252(n+2)-(n+1)` -/
def P11619719812989533440.Spec : Prop :=
  ∀ n, P11619719812989533440.a n = A073169 (n + 1)

end A073169

/-! ## A073169.P13891415835697480066

`A079696(n+1)-(n+2)`
-/

namespace A073169.P13891415835697480066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (n + 1) - (n + 2 : ℤ)

end

end A073169.P13891415835697480066

namespace A073169

/-- `A079696(n+1)-(n+2)` -/
def P13891415835697480066.Spec : Prop :=
  ∀ n, P13891415835697480066.a n = A073169 (n + 1)

end A073169

/-! ## A073169.P10206985691664792308

`A164028(n+1)+2-n`
-/

namespace A073169.P10206985691664792308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164028 (n + 1) + (2 - (n : ℤ))

end

end A073169.P10206985691664792308

namespace A073169

/-- `A164028(n+1)+2-n` -/
def P10206985691664792308.Spec : Prop :=
  ∀ n, P10206985691664792308.a n = A073169 (n + 1)

end A073169

/-! ## A073169.P18190787328538443435

`A141468(n+3)-(n+1)`
-/

namespace A073169.P18190787328538443435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 3) - (n + 1 : ℤ)

end

end A073169.P18190787328538443435

namespace A073169

/-- `A141468(n+3)-(n+1)` -/
def P18190787328538443435.Spec : Prop :=
  ∀ n, P18190787328538443435.a n = A073169 (n + 1)

end A073169

/-! ## A073169.P2103343811714735954

`A073784(n)+a(n-1)` with `a(0)=3`
-/

namespace A073169.P2103343811714735954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A073784 n + a (n - 1)

end

end A073169.P2103343811714735954

namespace A073169

/-- `A073784(n)+a(n-1)` -/
def P2103343811714735954.Spec : Prop :=
  ∀ n, P2103343811714735954.a n = A073169 (n + 1)

end A073169

/-! ## A073169.P14887101725308823032

`eq[1, A066247(n+1)]-n`
-/

namespace A073169.P14887101725308823032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A073169.P14887101725308823032

namespace A073169

/-- `eq[1, A066247(n+1)]-n` -/
def P14887101725308823032.Spec : Prop :=
  ∀ n, P14887101725308823032.a n = A073169 (n + 1)

end A073169

/-! ## A073169.P2177286699444086506

`lt[1, A001222(n+1)]-n`
-/

namespace A073169.P2177286699444086506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - (n : ℤ)

end

end A073169.P2177286699444086506

namespace A073169

/-- `lt[1, A001222(n+1)]-n` -/
def P2177286699444086506.Spec : Prop :=
  ∀ n, P2177286699444086506.a n = A073169 (n + 1)

end A073169

/-! ## A073169.P5378260637199411503

`lt[1, A008481(n+1)]-n`
-/

namespace A073169.P5378260637199411503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - (n : ℤ)

end

end A073169.P5378260637199411503

namespace A073169

/-- `lt[1, A008481(n+1)]-n` -/
def P5378260637199411503.Spec : Prop :=
  ∀ n, P5378260637199411503.a n = A073169 (n + 1)

end A073169

/-! ## A073169.P3993562963672043237

`lt[2, A000005(n+1)]-n`
-/

namespace A073169.P3993562963672043237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - (n : ℤ)

end

end A073169.P3993562963672043237

namespace A073169

/-- `lt[2, A000005(n+1)]-n` -/
def P3993562963672043237.Spec : Prop :=
  ∀ n, P3993562963672043237.a n = A073169 (n + 1)

end A073169

/-! ## A073169.P11509847254582177233

`∑[C(Δ[A018252(n+1)], 2)]`
-/

namespace A073169.P11509847254582177233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f2 (n + 1) - f2 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073169.P11509847254582177233

namespace A073169

/-- `∑[C(Δ[A018252(n+1)], 2)]` -/
def P11509847254582177233.Spec : Prop :=
  ∀ n, (P11509847254582177233.a n : ℤ) = A073169 (n + 1)

end A073169

/-! ## A073169.P4660689766361327300

`lt[A000010(n+1), n]-n`
-/

namespace A073169.P4660689766361327300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - (n : ℤ)

end

end A073169.P4660689766361327300

namespace A073169

/-- `lt[A000010(n+1), n]-n` -/
def P4660689766361327300.Spec : Prop :=
  ∀ n, P4660689766361327300.a n = A073169 (n + 1)

end A073169

/-! ## A073169.P14123374217528231546

`lt[A006530(n+1), n]-n`
-/

namespace A073169.P14123374217528231546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - (n : ℤ)

end

end A073169.P14123374217528231546

namespace A073169

/-- `lt[A006530(n+1), n]-n` -/
def P14123374217528231546.Spec : Prop :=
  ∀ n, P14123374217528231546.a n = A073169 (n + 1)

end A073169

/-! ## A073169.P3602468100345542205

`lt[A020639(n+1), n]-n`
-/

namespace A073169.P3602468100345542205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - (n : ℤ)

end

end A073169.P3602468100345542205

namespace A073169

/-- `lt[A020639(n+1), n]-n` -/
def P3602468100345542205.Spec : Prop :=
  ∀ n, P3602468100345542205.a n = A073169 (n + 1)

end A073169

/-!
# A073170: a(1) = a(2) = 0; for n>2, a(n) = prime(n-1)-n+1.

The programs for A073170, the canonical program `A073170.P2641425171227108068` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073170 has offset 1).

The definition of A073170 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073170.P929023025780989931

`A162177(n+1)+A157928(n)`
-/

namespace A073170.P929023025780989931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162177 (n + 1) + A157928 n

end

end A073170.P929023025780989931

namespace A073170

/-- `A162177(n+1)+A157928(n)` -/
def P929023025780989931.Spec : Prop :=
  ∀ n, P929023025780989931.a n = A073170 (n + 1)

end A073170

/-! ## A073170.P700204218527189413

`A028815(n)-A348776(n+1)`
-/

namespace A073170.P700204218527189413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n - A348776 (n + 1)

end

end A073170.P700204218527189413

namespace A073170

/-- `A028815(n)-A348776(n+1)` -/
def P700204218527189413.Spec : Prop :=
  ∀ n, P700204218527189413.a n = A073170 (n + 1)

end A073170

/-! ## A073170.P13826628414170952968

`A182986(n+1)-A254667(n)`
-/

namespace A073170.P13826628414170952968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1) - A254667 n

end

end A073170.P13826628414170952968

namespace A073170

/-- `A182986(n+1)-A254667(n)` -/
def P13826628414170952968.Spec : Prop :=
  ∀ n, P13826628414170952968.a n = A073170 (n + 1)

end A073170

/-! ## A073170.P14529429390614301045

`A008578(n+1)-(A019590(n+1)+n)`
-/

namespace A073170.P14529429390614301045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - (A019590 (n + 1) + (n : ℤ))

end

end A073170.P14529429390614301045

namespace A073170

/-- `A008578(n+1)-(A019590(n+1)+n)` -/
def P14529429390614301045.Spec : Prop :=
  ∀ n, P14529429390614301045.a n = A073170 (n + 1)

end A073170

/-! ## A073170.P2641425171227108068

`A006005(A028310(n))-A028310(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A073170

/-- `A006005(A028310(n))-A028310(n)` -/
def P2641425171227108068.Spec : Prop :=
  ∀ n, P2641425171227108068.a n = A073170 (n + 1)

theorem P2641425171227108068.correct : P2641425171227108068.Spec := by
  intro n
  simp only [A073170, Nat.add_sub_cancel]

end A073170

/-! ## A073170.P2336035549622039118

`p?[floor(n/(n%2+1))]-round(acot(n)+n)`
-/

namespace A073170.P2336035549622039118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))

end

end A073170.P2336035549622039118

namespace A073170

/-- `p?[floor(n/(n%2+1))]-round(acot(n)+n)` -/
def P2336035549622039118.Spec : Prop :=
  ∀ n, P2336035549622039118.a n = A073170 (n + 1)

end A073170

/-! ## A073170.P11717877501255131965

`lt[A001222(xor(1, n)+1), 2]-n`
-/

namespace A073170.P11717877501255131965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.xor 1 n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - (n : ℤ)

end

end A073170.P11717877501255131965

namespace A073170

/-- `lt[A001222(xor(1, n)+1), 2]-n` -/
def P11717877501255131965.Spec : Prop :=
  ∀ n, P11717877501255131965.a n = A073170 (n + 1)

end A073170

/-! ## A073170.P11677876849973360990

`lt[A000005(xor(1, n)+1), 3]-n`
-/

namespace A073170.P11677876849973360990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.xor 1 n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - (n : ℤ)

end

end A073170.P11677876849973360990

namespace A073170

/-- `lt[A000005(xor(1, n)+1), 3]-n` -/
def P11677876849973360990.Spec : Prop :=
  ∀ n, P11677876849973360990.a n = A073170 (n + 1)

end A073170

/-! ## A073170.P12335291896679222672

`lt[n, A263111(n)²]-n`
-/

namespace A073170.P12335291896679222672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263111 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - (n : ℤ)

end

end A073170.P12335291896679222672

namespace A073170

/-- `lt[n, A263111(n)²]-n` -/
def P12335291896679222672.Spec : Prop :=
  ∀ n, P12335291896679222672.a n = A073170 (n + 1)

end A073170

/-! ## A073170.P12937114608793936531

`eq[1, A341945(n+2)]-n`
-/

namespace A073170.P12937114608793936531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341945 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A073170.P12937114608793936531

namespace A073170

/-- `eq[1, A341945(n+2)]-n` -/
def P12937114608793936531.Spec : Prop :=
  ∀ n, P12937114608793936531.a n = A073170 (n + 1)

end A073170

/-! ## A073170.P5079585471674736058

`A065855(A028815(n))`
-/

namespace A073170.P5079585471674736058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (A028815 n).toNat

end

end A073170.P5079585471674736058

namespace A073170

/-- `A065855(A028815(n))` -/
def P5079585471674736058.Spec : Prop :=
  ∀ n, P5079585471674736058.a n = A073170 (n + 1)

end A073170

/-! ## A073170.P11809010760452460862

`A065855(A299763(n+1))`
-/

namespace A073170.P11809010760452460862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (A299763 (n + 1)).toNat

end

end A073170.P11809010760452460862

namespace A073170

/-- `A065855(A299763(n+1))` -/
def P11809010760452460862.Spec : Prop :=
  ∀ n, P11809010760452460862.a n = A073170 (n + 1)

end A073170

/-! ## A073170.P13049241691466054428

`A065855(A008578(n+1)+1)`
-/

namespace A073170.P13049241691466054428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (A008578 (n + 1) + 1).toNat

end

end A073170.P13049241691466054428

namespace A073170

/-- `A065855(A008578(n+1)+1)` -/
def P13049241691466054428.Spec : Prop :=
  ∀ n, P13049241691466054428.a n = A073170 (n + 1)

end A073170

/-! ## A073170.P10900693560331995368

`A065855(record[A064216(n+1)+1])`
-/

namespace A073170.P10900693560331995368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A073170.P10900693560331995368

namespace A073170

/-- `A065855(record[A064216(n+1)+1])` -/
def P10900693560331995368.Spec : Prop :=
  ∀ n, P10900693560331995368.a n = A073170 (n + 1)

end A073170

/-! ## A073170.P4302858527869101371

`record[∑{p}[2*n, #-1]]-n`
-/

namespace A073170.P4302858527869101371
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A073170.P4302858527869101371

namespace A073170

/-- `record[∑{p}[2*n, #-1]]-n` -/
def P4302858527869101371.Spec : Prop :=
  ∀ n, P4302858527869101371.a n = A073170 (n + 1)

end A073170

/-! ## A073170.P8274752589567247383

`lt[∑{e}[2*n, #²], 3]-n`
-/

namespace A073170.P8274752589567247383
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f3 j) n : ℤ) - (n : ℤ)

end

end A073170.P8274752589567247383

namespace A073170

/-- `lt[∑{e}[2*n, #²], 3]-n` -/
def P8274752589567247383.Spec : Prop :=
  ∀ n, P8274752589567247383.a n = A073170 (n + 1)

end A073170

/-! ## A073170.P5873062311131787957

`eq[1, A217668(n)]-n`
-/

namespace A073170.P5873062311131787957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A073170.P5873062311131787957

namespace A073170

/-- `eq[1, A217668(n)]-n` -/
def P5873062311131787957.Spec : Prop :=
  ∀ n, P5873062311131787957.a n = A073170 (n + 1)

end A073170

/-! ## A073170.P9364062785318372833

`eq[A000035(n), A074206(n)]-n`
-/

namespace A073170.P9364062785318372833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - (n : ℤ)

end

end A073170.P9364062785318372833

namespace A073170

/-- `eq[A000035(n), A074206(n)]-n` -/
def P9364062785318372833.Spec : Prop :=
  ∀ n, P9364062785318372833.a n = A073170 (n + 1)

end A073170

/-! ## A073170.P14673544704399766319

`eq[A000035(n), A107286(n)]-n`
-/

namespace A073170.P14673544704399766319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - (n : ℤ)

end

end A073170.P14673544704399766319

namespace A073170

/-- `eq[A000035(n), A107286(n)]-n` -/
def P14673544704399766319.Spec : Prop :=
  ∀ n, P14673544704399766319.a n = A073170 (n + 1)

end A073170

/-! ## A073170.P5693856937018927584

`lt[A003415(n), A013632(n)]-n`
-/

namespace A073170.P5693856937018927584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - (n : ℤ)

end

end A073170.P5693856937018927584

namespace A073170

/-- `lt[A003415(n), A013632(n)]-n` -/
def P5693856937018927584.Spec : Prop :=
  ∀ n, P5693856937018927584.a n = A073170 (n + 1)

end A073170

/-!
# A073171: The (n^2)-th composite number.

The programs for A073171, the canonical program `A073171.P16806449841852337076` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073171 has offset 1).

The definition of A073171 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A073171.P16806449841852337076

`A002808((n+1)²)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A073171

/-- `A002808((n+1)²)` -/
def P16806449841852337076.Spec : Prop :=
  ∀ n, P16806449841852337076.a n = A073171 (n + 1)

theorem P16806449841852337076.correct : P16806449841852337076.Spec := by
  intro n
  simp only [A073171, Nat.add_sub_cancel]

end A073171

/-! ## A073171.P14297946136439695729

`A018252(1+(n+1)²)`
-/

namespace A073171.P14297946136439695729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (1 + (n + 1) ^ 2)

end

end A073171.P14297946136439695729

namespace A073171

/-- `A018252(1+(n+1)²)` -/
def P14297946136439695729.Spec : Prop :=
  ∀ n, P14297946136439695729.a n = A073171 (n + 1)

end A073171

/-! ## A073171.P5923654640241318657

`A141468((n+1)²+2)`
-/

namespace A073171.P5923654640241318657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 ((n + 1) ^ 2 + 2)

end

end A073171.P5923654640241318657

namespace A073171

/-- `A141468((n+1)²+2)` -/
def P5923654640241318657.Spec : Prop :=
  ∀ n, P5923654640241318657.a n = A073171 (n + 1)

end A073171

/-! ## A073171.P15839774641847234221

`record[A002808(abs(A051494(n)))]`
-/

namespace A073171.P15839774641847234221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 |A051494 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073171.P15839774641847234221

namespace A073171

/-- `record[A002808(abs(A051494(n)))]` -/
def P15839774641847234221.Spec : Prop :=
  ∀ n, P15839774641847234221.a n = A073171 (n + 1)

end A073171

/-! ## A073171.P5252145697629716734

`record[A002808(A065648(n)²)]`
-/

namespace A073171.P5252145697629716734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A065648 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073171.P5252145697629716734

namespace A073171

/-- `record[A002808(A065648(n)²)]` -/
def P5252145697629716734.Spec : Prop :=
  ∀ n, P5252145697629716734.a n = A073171 (n + 1)

end A073171

/-! ## A073171.P4838650005888672292

`record[A002808(A106466(n)²)]`
-/

namespace A073171.P4838650005888672292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A106466 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073171.P4838650005888672292

namespace A073171

/-- `record[A002808(A106466(n)²)]` -/
def P4838650005888672292.Spec : Prop :=
  ∀ n, P4838650005888672292.a n = A073171 (n + 1)

end A073171

/-! ## A073171.P10222320950323136992

`record[A002808(A117910(n)²)]`
-/

namespace A073171.P10222320950323136992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A117910 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073171.P10222320950323136992

namespace A073171

/-- `record[A002808(A117910(n)²)]` -/
def P10222320950323136992.Spec : Prop :=
  ∀ n, P10222320950323136992.a n = A073171 (n + 1)

end A073171

/-! ## A073171.P9054444117837872324

`record[A002808(A126759(n)²)]`
-/

namespace A073171.P9054444117837872324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A126759 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073171.P9054444117837872324

namespace A073171

/-- `record[A002808(A126759(n)²)]` -/
def P9054444117837872324.Spec : Prop :=
  ∀ n, P9054444117837872324.a n = A073171 (n + 1)

end A073171

/-! ## A073171.P18419265829374750955

`record[A002808(A152271(n)²)]`
-/

namespace A073171.P18419265829374750955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A152271 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073171.P18419265829374750955

namespace A073171

/-- `record[A002808(A152271(n)²)]` -/
def P18419265829374750955.Spec : Prop :=
  ∀ n, P18419265829374750955.a n = A073171 (n + 1)

end A073171

/-! ## A073171.P15240570530822967459

`record[A002808(A267806(n)²)]`
-/

namespace A073171.P15240570530822967459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A267806 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073171.P15240570530822967459

namespace A073171

/-- `record[A002808(A267806(n)²)]` -/
def P15240570530822967459.Spec : Prop :=
  ∀ n, P15240570530822967459.a n = A073171 (n + 1)

end A073171

/-! ## A073171.P5043820976686733257

`record[A002808(A328399(n)²)]`
-/

namespace A073171.P5043820976686733257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A328399 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073171.P5043820976686733257

namespace A073171

/-- `record[A002808(A328399(n)²)]` -/
def P5043820976686733257.Spec : Prop :=
  ∀ n, P5043820976686733257.a n = A073171 (n + 1)

end A073171

/-! ## A073171.P18386109705607359920

`record[A002808(A344180(n)²)]`
-/

namespace A073171.P18386109705607359920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A344180 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073171.P18386109705607359920

namespace A073171

/-- `record[A002808(A344180(n)²)]` -/
def P18386109705607359920.Spec : Prop :=
  ∀ n, P18386109705607359920.a n = A073171 (n + 1)

end A073171

/-! ## A073171.P9422433229591099053

`record[A002808(A236104(n+1))]`
-/

namespace A073171.P9422433229591099053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A236104 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073171.P9422433229591099053

namespace A073171

/-- `record[A002808(A236104(n+1))]` -/
def P9422433229591099053.Spec : Prop :=
  ∀ n, P9422433229591099053.a n = A073171 (n + 1)

end A073171

/-! ## A073171.P10509054053549872129

`A002808(A000290(n+1))%A154728(n+1)`
-/

namespace A073171.P10509054053549872129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002808 (A000290 (n + 1)).toNat) (A154728 (n + 1))

end

end A073171.P10509054053549872129

namespace A073171

/-- `A002808(A000290(n+1))%A154728(n+1)` -/
def P10509054053549872129.Spec : Prop :=
  ∀ n, P10509054053549872129.a n = A073171 (n + 1)

end A073171

/-! ## A073171.P11662590239827641149

`A018252(A033638(2*(n+1)))%A061247(n+1)`
-/

namespace A073171.P11662590239827641149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018252 (A033638 (2 * (n + 1))).toNat) (A061247 (n + 1))

end

end A073171.P11662590239827641149

namespace A073171

/-- `A018252(A033638(2*(n+1)))%A061247(n+1)` -/
def P11662590239827641149.Spec : Prop :=
  ∀ n, P11662590239827641149.a n = A073171 (n + 1)

end A073171

/-! ## A073171.P13372935567261512125

`A072668((n+1)²)+1`
-/

namespace A073171.P13372935567261512125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 ((n + 1) ^ 2) + 1

end

end A073171.P13372935567261512125

namespace A073171

/-- `A072668((n+1)²)+1` -/
def P13372935567261512125.Spec : Prop :=
  ∀ n, P13372935567261512125.a n = A073171 (n + 1)

end A073171

/-! ## A073171.P13195382865552773578

`A079696((n+1)²)-1`
-/

namespace A073171.P13195382865552773578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 ((n + 1) ^ 2) - 1

end

end A073171.P13195382865552773578

namespace A073171

/-- `A079696((n+1)²)-1` -/
def P13195382865552773578.Spec : Prop :=
  ∀ n, P13195382865552773578.a n = A073171 (n + 1)

end A073171

/-! ## A073171.P2093483505481263759

`A164028((n+1)²)+3`
-/

namespace A073171.P2093483505481263759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164028 ((n + 1) ^ 2) + 3

end

end A073171.P2093483505481263759

namespace A073171

/-- `A164028((n+1)²)+3` -/
def P2093483505481263759.Spec : Prop :=
  ∀ n, P2093483505481263759.a n = A073171 (n + 1)

end A073171

/-! ## A073171.P12366167464808636746

`A282671((n+1)²)/2`
-/

namespace A073171.P12366167464808636746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282671 ((n + 1) ^ 2) : ℚ) / 2

end

end A073171.P12366167464808636746

namespace A073171

/-- `A282671((n+1)²)/2` -/
def P12366167464808636746.Spec : Prop :=
  ∀ n, P12366167464808636746.a n = (A073171 (n + 1) : ℚ)

end A073171

/-! ## A073171.P9731598132720774329

`A073169((n+1)²)+(n+1)²`
-/

namespace A073171.P9731598132720774329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073169 ((n + 1) ^ 2) + ((n + 1) ^ 2 : ℤ)

end

end A073171.P9731598132720774329

namespace A073171

/-- `A073169((n+1)²)+(n+1)²` -/
def P9731598132720774329.Spec : Prop :=
  ∀ n, P9731598132720774329.a n = A073171 (n + 1)

end A073171

/-!
# A073172: The value of index for composite numbers with square subscripts which are also square numbers.

The programs for A073172, there is no canonical definition to state claims against.
-/

/-! ## A073172.P151801836440172050

`(A327375(n)/2-(n+1))²`
-/

namespace A073172.P151801836440172050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A327375 n : ℚ) / 2 - (n + 1 : ℚ)) ^ 2

end

end A073172.P151801836440172050

/-!
# A073173: Square composite numbers with square subscripts.

The programs for A073173, there is no canonical definition to state claims against.
-/

/-! ## A073173.P2264956490785633574

`A073171(root(A073172(n+1), 2))`
-/

namespace A073173.P2264956490785633574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073171 (SequenceMachineLib.roundAway ((A073172 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A073173.P2264956490785633574

/-!
# A073174: a(n) = a(phi(n-1)) + a(phi(n-2)), a(0)=0, a(1)=1.

The programs for A073174, the canonical program `A073174.P13718448671311095032` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073174 has offset 0).

The definition of A073174 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A073174.P13718448671311095032

`a(A000010(n-1))+a(A000010(n-2))` with `a(0)=0, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A073174

/-- `a(A000010(n-1))+a(A000010(n-2))` -/
def P13718448671311095032.Spec : Prop :=
  ∀ n, (P13718448671311095032.a n : ℤ) = A073174 n

theorem P13718448671311095032.correct : P13718448671311095032.Spec := by
  intro n
  simp only [A073174]

end A073174

/-!
# A073176: First n-digit prime in the concatenation of odd integers allowing leading zeros.

The programs for A073176, there is no canonical definition to state claims against.
-/

/-! ## A073176.P4389804717176238156

`A001414(A073428(n+1))`
-/

namespace A073176.P4389804717176238156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A073428 (n + 1)).toNat

end

end A073176.P4389804717176238156

/-!
# A073177: (n-th digit of Pi) times (n-th digit of e).

The programs for A073177, there is no canonical definition to state claims against.
-/

/-! ## A073177.P1195547128686182879

`A000796(n)*A001113(n)`
-/

namespace A073177.P1195547128686182879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) * A001113 (n + 1)

end

end A073177.P1195547128686182879

/-! ## A073177.P16206254242805003049

`(9-A030644(n))*A001113(n)`
-/

namespace A073177.P16206254242805003049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 - A030644 (n + 1)) * A001113 (n + 1)

end

end A073177.P16206254242805003049

/-! ## A073177.P2502656263998431667

`(9-A121239(n))*A000796(n)`
-/

namespace A073177.P2502656263998431667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 - A121239 (n + 1)) * A000796 (n + 1)

end

end A073177.P2502656263998431667

/-! ## A073177.P10298226659832768528

`A228239(n+1)*A231325(n+1)`
-/

namespace A073177.P10298226659832768528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228239 (n + 1) * A231325 (n + 1)

end

end A073177.P10298226659832768528

/-! ## A073177.P11086796267430998507

`(A123152(n+1)-1)*A001113(n)`
-/

namespace A073177.P11086796267430998507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A123152 (n + 1) - 1) * A001113 (n + 1)

end

end A073177.P11086796267430998507

/-! ## A073177.P7190070576227157458

`(A187747(n)+A001113(n))*A001113(n)`
-/

namespace A073177.P7190070576227157458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A187747 n + A001113 (n + 1)) * A001113 (n + 1)

end

end A073177.P7190070576227157458

/-! ## A073177.P10694249102619987712

`(A073212(n)-A000796(n))*A000796(n)`
-/

namespace A073177.P10694249102619987712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A073212 n - A000796 (n + 1)) * A000796 (n + 1)

end

end A073177.P10694249102619987712

/-! ## A073177.P5175434067665665972

`(A073212(n)-A001113(n))*A001113(n)`
-/

namespace A073177.P5175434067665665972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A073212 n - A001113 (n + 1)) * A001113 (n + 1)

end

end A073177.P5175434067665665972

/-! ## A073177.P6338969887440085847

`(A000796(n)-A187747(n))*A000796(n)`
-/

namespace A073177.P6338969887440085847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000796 (n + 1) - A187747 n) * A000796 (n + 1)

end

end A073177.P6338969887440085847

/-! ## A073177.P13800018510568107836

`(A054249(n+1)+A033999(n))*A001113(n)`
-/

namespace A073177.P13800018510568107836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054249 (n + 1) + A033999 n) * A001113 (n + 1)

end

end A073177.P13800018510568107836

/-! ## A073177.P12563669243951412010

`(A228239(n+1)+A073223(n))*A228239(n+1)`
-/

namespace A073177.P12563669243951412010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A228239 (n + 1) + A073223 n) * A228239 (n + 1)

end

end A073177.P12563669243951412010

/-! ## A073177.P14157347092234233044

`(A073212(n)-A228239(n+1))*A228239(n+1)`
-/

namespace A073177.P14157347092234233044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A073212 n - A228239 (n + 1)) * A228239 (n + 1)

end

end A073177.P14157347092234233044

/-! ## A073177.P2679881216347481813

`(A073212(n)-A231325(n+1))*A231325(n+1)`
-/

namespace A073177.P2679881216347481813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A073212 n - A231325 (n + 1)) * A231325 (n + 1)

end

end A073177.P2679881216347481813

/-! ## A073177.P14503915370138512437

`(A231325(n+1)-A073223(n))*A231325(n+1)`
-/

namespace A073177.P14503915370138512437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A231325 (n + 1) - A073223 n) * A231325 (n + 1)

end

end A073177.P14503915370138512437

/-! ## A073177.P938918694168456396

`(A228239(n+1)+abs(A187747(n)))*A228239(n+1)`
-/

namespace A073177.P938918694168456396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A228239 (n + 1) + |A187747 n|) * A228239 (n + 1)

end

end A073177.P938918694168456396

/-! ## A073177.P2731006242496388298

`(A231325(n+1)-dr(A187747(n)))*A231325(n+1)`
-/

namespace A073177.P2731006242496388298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A231325 (n + 1) - (SequenceMachineLib.digitalRoot (A187747 n) : ℤ)) * A231325 (n + 1)

end

end A073177.P2731006242496388298

/-! ## A073177.P10907157598195143544

`A001113(n)*A001355(Δ[n²])`
-/

namespace A073177.P10907157598195143544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1) * A001355 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A073177.P10907157598195143544

/-! ## A073177.P2448058517183555068

`A000796(n)*A001355(2*(n+1))`
-/

namespace A073177.P2448058517183555068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) * A001355 (2 * (n + 1))

end

end A073177.P2448058517183555068

/-! ## A073177.P287132884225940589

`A001113(n)*A076790(2*n+1)`
-/

namespace A073177.P287132884225940589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1) * A076790 (2 * n + 1)

end

end A073177.P287132884225940589

/-! ## A073177.P15908255018358088634

`A000796(n)*A110779(2*n+1)`
-/

namespace A073177.P15908255018358088634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) * A110779 (2 * n + 1)

end

end A073177.P15908255018358088634

/-!
# A073178: a(n) = n!^2 times coefficient of x^n in e^(x*(3-x)/2/(1-x))/(1-x)^(1/2).

The programs for A073178, there is no canonical definition to state claims against.
-/

/-! ## A073178.P9920930193165237239

`A082317(n)+A064216(A194726(n))`
-/

namespace A073178.P9920930193165237239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082317 n + A064216 (A194726 n).toNat

end

end A073178.P9920930193165237239

/-!
# A073179: a(n) = n!^2 times coefficient of x^n in Sum_{k>=0} x^k/k!^2/4^k*((2-x)/(1-x))^(2*k).

The programs for A073179, there is no canonical definition to state claims against.
-/

/-! ## A073179.P14873859957719367850

`A347647(A076024(n))`
-/

namespace A073179.P14873859957719367850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347647 (A076024 n).toNat

end

end A073179.P14873859957719367850

/-!
# A073180: Number of divisors of n which are not greater than the squarefree kernel of n.

The programs for A073180, there is no canonical definition to state claims against.
-/

/-! ## A073180.P6695346402846458822

`A095960(n+1)+1`
-/

namespace A073180.P6695346402846458822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095960 (n + 1) + 1

end

end A073180.P6695346402846458822

/-! ## A073180.P2963133785341779214

`A243987(∏{p}[n+1, #]+∑[n])`
-/

namespace A073180.P2963133785341779214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243987 (∏ p ∈ Nat.primeFactors (f1 n), p + ∑ j ∈ Finset.range (n + 1), f2 j)

end

end A073180.P2963133785341779214

/-! ## A073180.P13304718362062001814

`A135539((n+1)/∏{p}[n+1, #]+n*(n+1)/2)`
-/

namespace A073180.P13304718362062001814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135539 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) + (n : ℚ) * ((n + 1 : ℚ) / 2))).toNat

end

end A073180.P13304718362062001814

/-! ## A073180.P268990711841638837

`A135539(A003557(n+1)+∑[n])`
-/

namespace A073180.P268990711841638837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135539 (A003557 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A073180.P268990711841638837

/-! ## A073180.P4950106944301421784

`A243987(A007947(n+1)+∑[n])`
-/

namespace A073180.P4950106944301421784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243987 (A007947 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A073180.P4950106944301421784

/-! ## A073180.P7982982634211135868

`A243987(A000217(n)+∏{p}[n+1, #])`
-/

namespace A073180.P7982982634211135868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243987 (A000217 n + ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ)).toNat

end

end A073180.P7982982634211135868

/-! ## A073180.P10175521334400707684

`A135539(A000217(n)+(n+1)/∏{p}[n+1, #])`
-/

namespace A073180.P10175521334400707684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135539 (SequenceMachineLib.roundAway ((A000217 n : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A073180.P10175521334400707684

/-!
# A073181: Sum of divisors of n which are not greater than the squarefree kernel of n.

The programs for A073181, there is no canonical definition to state claims against.
-/

/-! ## A073181.P9493155844712375518

`A240698(A073180(n+1)+A006218(n))`
-/

namespace A073181.P9493155844712375518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240698 (A073180 (n + 1) + A006218 n).toNat

end

end A073181.P9493155844712375518

/-! ## A073181.P10718649207261232176

`A127057(∑[n]+(n+1)/∏{p}[n+1, #])`
-/

namespace A073181.P10718649207261232176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127057 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

end

end A073181.P10718649207261232176

/-! ## A073181.P6762929006444832368

`A127057(A003557(n+1)+∑[n])`
-/

namespace A073181.P6762929006444832368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127057 (A003557 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A073181.P6762929006444832368

/-! ## A073181.P14443917393664796529

`A127057(A336551(n+1)+A000124(n))`
-/

namespace A073181.P14443917393664796529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127057 (A336551 (n + 1) + A000124 n).toNat

end

end A073181.P14443917393664796529

/-! ## A073181.P4263323057527083868

`A048250(n+1)+A036875(A323507(n))²`
-/

namespace A073181.P4263323057527083868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) + A036875 (A323507 n).toNat ^ 2

end

end A073181.P4263323057527083868

/-!
# A073182: Number of divisors of n which are not greater than the cubefree kernel of n.

The programs for A073182, the canonical program `A073182.P3909354792223158963` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073182 has offset 1).

The definition of A073182 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073182.P3909354792223158963

`A243987(A007948(n+1)+A000217(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A073182

/-- `A243987(A007948(n+1)+A000217(n))` -/
def P3909354792223158963.Spec : Prop :=
  ∀ n, P3909354792223158963.a n = A073182 (n + 1)

theorem P3909354792223158963.correct : P3909354792223158963.Spec := by
  intro n
  simp only [A073182, Nat.add_sub_cancel]

end A073182

/-! ## A073182.P11367511123567164989

`A169611(2*A293524(n+1))`
-/

namespace A073182.P11367511123567164989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (2 * A293524 (n + 1)).toNat

end

end A073182.P11367511123567164989

namespace A073182

/-- `A169611(2*A293524(n+1))` -/
def P11367511123567164989.Spec : Prop :=
  ∀ n, P11367511123567164989.a n = A073182 (n + 1)

end A073182

/-! ## A073182.P7927131100695313609

`A284257(2*A293524(n+1))`
-/

namespace A073182.P7927131100695313609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284257 (2 * A293524 (n + 1)).toNat

end

end A073182.P7927131100695313609

namespace A073182

/-- `A284257(2*A293524(n+1))` -/
def P7927131100695313609.Spec : Prop :=
  ∀ n, P7927131100695313609.a n = A073182 (n + 1)

end A073182

/-! ## A073182.P14822476165859022992

`A169611(A005843(A293524(n+1)))`
-/

namespace A073182.P14822476165859022992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (A005843 (A293524 (n + 1)).toNat).toNat

end

end A073182.P14822476165859022992

namespace A073182

/-- `A169611(A005843(A293524(n+1)))` -/
def P14822476165859022992.Spec : Prop :=
  ∀ n, P14822476165859022992.a n = A073182 (n + 1)

end A073182

/-! ## A073182.P10199412516259988094

`A000005(n+1)-A014082(A156552(n+1))`
-/

namespace A073182.P10199412516259988094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A014082 (A156552 (n + 1)).toNat

end

end A073182.P10199412516259988094

namespace A073182

/-- `A000005(n+1)-A014082(A156552(n+1))` -/
def P10199412516259988094.Spec : Prop :=
  ∀ n, P10199412516259988094.a n = A073182 (n + 1)

end A073182

/-!
# A073183: Sum of divisors of n that are not greater than the cubefree kernel of n.

The programs for A073183, there is no canonical definition to state claims against.
-/

/-! ## A073183.P11836128849769465847

`A240698(A073182(n+1)+A006218(n))`
-/

namespace A073183.P11836128849769465847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240698 (A073182 (n + 1) + A006218 n).toNat

end

end A073183.P11836128849769465847

/-! ## A073183.P7815326870914768946

`A127057(A062378(n+1)+∑[n])`
-/

namespace A073183.P7815326870914768946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127057 (A062378 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A073183.P7815326870914768946

/-!
# A073184: Number of cubefree divisors of n.

The programs for A073184, the canonical program `A073184.P11739707744113015101` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073184 has offset 1).

The definition of A073184 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073184.P15633845295091024142

`∏{e}[n+1, round(exp(tanh(#)))]`
-/

namespace A073184.P15633845295091024142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.roundAway (Real.exp (Real.tanh (Nat.factorization (f1 n) p : ℝ)))

end

end A073184.P15633845295091024142

namespace A073184

/-- `∏{e}[n+1, round(exp(tanh(#)))]` -/
def P15633845295091024142.Spec : Prop :=
  ∀ n, P15633845295091024142.a n = A073184 (n + 1)

end A073184

/-! ## A073184.P11739707744113015101

`∏{e}[n+1, 3-floor(1/#)]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A073184

/-- `∏{e}[n+1, 3-floor(1/#)]` -/
def P11739707744113015101.Spec : Prop :=
  ∀ n, P11739707744113015101.a n = A073184 (n + 1)

theorem P11739707744113015101.correct : P11739707744113015101.Spec := by
  intro n
  simp only [A073184, Nat.add_sub_cancel]

end A073184

/-! ## A073184.P12172823774306301536

`∑{d}[n+1, A212793(#)]`
-/

namespace A073184.P12172823774306301536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A212793 d

end

end A073184.P12172823774306301536

namespace A073184

/-- `∑{d}[n+1, A212793(#)]` -/
def P12172823774306301536.Spec : Prop :=
  ∀ n, P12172823774306301536.a n = A073184 (n + 1)

end A073184

/-! ## A073184.P6335697821030231414

`A000005(∏{p}[n+1, gcd(n+1, #²)])`
-/

namespace A073184.P6335697821030231414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd (n + 1) (p ^ 2))

end

end A073184.P6335697821030231414

namespace A073184

/-- `A000005(∏{p}[n+1, gcd(n+1, #²)])` -/
def P6335697821030231414.Spec : Prop :=
  ∀ n, P6335697821030231414.a n = A073184 (n + 1)

end A073184

/-! ## A073184.P175772385238982870

`A000005(∏{p}[(n+1)/∏{p}[n+1, #], #]*∏{p}[n+1, #])`
-/

namespace A073184.P175772385238982870
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p) * (∏ p ∈ Nat.primeFactors (f3 n), p))

end

end A073184.P175772385238982870

namespace A073184

/-- `A000005(∏{p}[(n+1)/∏{p}[n+1, #], #]*∏{p}[n+1, #])` -/
def P175772385238982870.Spec : Prop :=
  ∀ n, P175772385238982870.a n = A073184 (n + 1)

end A073184

/-! ## A073184.P17154200989976782523

`A000005(A007948(n+1))`
-/

namespace A073184.P17154200989976782523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007948 (n + 1)).toNat

end

end A073184.P17154200989976782523

namespace A073184

/-- `A000005(A007948(n+1))` -/
def P17154200989976782523.Spec : Prop :=
  ∀ n, P17154200989976782523.a n = A073184 (n + 1)

end A073184

/-! ## A073184.P6311639291574142738

`A049599(A058035(n+1))`
-/

namespace A073184.P6311639291574142738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049599 (A058035 (n + 1)).toNat

end

end A073184.P6311639291574142738

namespace A073184

/-- `A049599(A058035(n+1))` -/
def P6311639291574142738.Spec : Prop :=
  ∀ n, P6311639291574142738.a n = A073184 (n + 1)

end A073184

/-! ## A073184.P11116717463846798559

`A079065(A181819(n+1))`
-/

namespace A073184.P11116717463846798559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079065 (A181819 (n + 1)).toNat

end

end A073184.P11116717463846798559

namespace A073184

/-- `A079065(A181819(n+1))` -/
def P11116717463846798559.Spec : Prop :=
  ∀ n, P11116717463846798559.a n = A073184 (n + 1)

end A073184

/-! ## A073184.P17503632451021624961

`A036561(A350331(n+1))`
-/

namespace A073184.P17503632451021624961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 (A350331 (n + 1)).toNat

end

end A073184.P17503632451021624961

namespace A073184

/-- `A036561(A350331(n+1))` -/
def P17503632451021624961.Spec : Prop :=
  ∀ n, P17503632451021624961.a n = A073184 (n + 1)

end A073184

/-! ## A073184.P9381107684927998346

`A000005(A097377(n+1)-1)`
-/

namespace A073184.P9381107684927998346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A097377 (n + 1) - 1).toNat

end

end A073184.P9381107684927998346

namespace A073184

/-- `A000005(A097377(n+1)-1)` -/
def P9381107684927998346.Spec : Prop :=
  ∀ n, P9381107684927998346.a n = A073184 (n + 1)

end A073184

/-! ## A073184.P18418006131019700073

`A049599(A097377(n+1)-1)`
-/

namespace A073184.P18418006131019700073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049599 (A097377 (n + 1) - 1).toNat

end

end A073184.P18418006131019700073

namespace A073184

/-- `A049599(A097377(n+1)-1)` -/
def P18418006131019700073.Spec : Prop :=
  ∀ n, P18418006131019700073.a n = A073184 (n + 1)

end A073184

/-! ## A073184.P3313531495103148658

`A366147(n+1)*A368247(n+1)`
-/

namespace A073184.P3313531495103148658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366147 (n + 1) * A368247 (n + 1)

end

end A073184.P3313531495103148658

namespace A073184

/-- `A366147(n+1)*A368247(n+1)` -/
def P3313531495103148658.Spec : Prop :=
  ∀ n, P3313531495103148658.a n = A073184 (n + 1)

end A073184

/-! ## A073184.P1541465044937065345

`A000005((n+1)/A062378(n+1))`
-/

namespace A073184.P1541465044937065345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A062378 (n + 1) : ℚ))).toNat

end

end A073184.P1541465044937065345

namespace A073184

/-- `A000005((n+1)/A062378(n+1))` -/
def P1541465044937065345.Spec : Prop :=
  ∀ n, P1541465044937065345.a n = A073184 (n + 1)

end A073184

/-! ## A073184.P8913428754979667448

`A073182((n+1)/A062378(n+1))`
-/

namespace A073184.P8913428754979667448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073182 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A062378 (n + 1) : ℚ))).toNat

end

end A073184.P8913428754979667448

namespace A073184

/-- `A073182((n+1)/A062378(n+1))` -/
def P8913428754979667448.Spec : Prop :=
  ∀ n, P8913428754979667448.a n = A073184 (n + 1)

end A073184

/-! ## A073184.P11698045470627186120

`A073182(A007948(2*n+1-n))`
-/

namespace A073184.P11698045470627186120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073182 (A007948 (2 * n + 1 - n)).toNat

end

end A073184.P11698045470627186120

namespace A073184

/-- `A073182(A007948(2*n+1-n))` -/
def P11698045470627186120.Spec : Prop :=
  ∀ n, P11698045470627186120.a n = A073184 (n + 1)

end A073184

/-! ## A073184.P13623224209302066556

`∑{d}[A007948(n+1), #/A007948(#)]`
-/

namespace A073184.P13623224209302066556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) / (A007948 d : ℚ)

end

end A073184.P13623224209302066556

namespace A073184

/-- `∑{d}[A007948(n+1), #/A007948(#)]` -/
def P13623224209302066556.Spec : Prop :=
  ∀ n, P13623224209302066556.a n = (A073184 (n + 1) : ℚ)

end A073184

/-! ## A073184.P17294117972801417345

`∑{d}[n+1, A008966(#)*A056624((n+1)/#)]`
-/

namespace A073184.P17294117972801417345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A056624 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A073184.P17294117972801417345

namespace A073184

/-- `∑{d}[n+1, A008966(#)*A056624((n+1)/#)]` -/
def P17294117972801417345.Spec : Prop :=
  ∀ n, P17294117972801417345.a n = A073184 (n + 1)

end A073184

/-! ## A073184.P11248745606690166155

`∑{d}[n+1, A023900(#)*A254981((n+1)/#)]`
-/

namespace A073184.P11248745606690166155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A254981 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A073184.P11248745606690166155

namespace A073184

/-- `∑{d}[n+1, A023900(#)*A254981((n+1)/#)]` -/
def P11248745606690166155.Spec : Prop :=
  ∀ n, P11248745606690166155.a n = A073184 (n + 1)

end A073184

/-! ## A073184.P9617302866477224788

`∑{d}[n+1, A034444(#)*A307423((n+1)/#)]`
-/

namespace A073184.P9617302866477224788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A307423 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A073184.P9617302866477224788

namespace A073184

/-- `∑{d}[n+1, A034444(#)*A307423((n+1)/#)]` -/
def P9617302866477224788.Spec : Prop :=
  ∀ n, P9617302866477224788.a n = A073184 (n + 1)

end A073184

/-! ## A073184.P18196433257560805245

`∑{d}[n+1, A046951(#)*A307425((n+1)/#)]`
-/

namespace A073184.P18196433257560805245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046951 d * A307425 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A073184.P18196433257560805245

namespace A073184

/-- `∑{d}[n+1, A046951(#)*A307425((n+1)/#)]` -/
def P18196433257560805245.Spec : Prop :=
  ∀ n, P18196433257560805245.a n = A073184 (n + 1)

end A073184

/-!
# A073185: Sum of cubefree divisors of n.

The programs for A073185, the canonical program `A073185.P13146702220439815820` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073185 has offset 1).

The definition of A073185 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073185.P13146702220439815820

`A000203(A007948(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A073185

/-- `A000203(A007948(n+1))` -/
def P13146702220439815820.Spec : Prop :=
  ∀ n, P13146702220439815820.a n = A073185 (n + 1)

theorem P13146702220439815820.correct : P13146702220439815820.Spec := by
  intro n
  simp only [A073185, Nat.add_sub_cancel]

end A073185

/-! ## A073185.P11271743956525709449

`∑{d}[∏{p}[n+1, gcd(n+1, #²)], #]`
-/

namespace A073185.P11271743956525709449
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.gcd (n + 1) (p ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A073185.P11271743956525709449

namespace A073185

/-- `∑{d}[∏{p}[n+1, gcd(n+1, #²)], #]` -/
def P11271743956525709449.Spec : Prop :=
  ∀ n, (P11271743956525709449.a n : ℤ) = A073185 (n + 1)

end A073185

/-! ## A073185.P1997385211436130063

`A133477(n+1)+1`
-/

namespace A073185.P1997385211436130063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133477 (n + 1) + 1

end

end A073185.P1997385211436130063

namespace A073185

/-- `A133477(n+1)+1` -/
def P1997385211436130063.Spec : Prop :=
  ∀ n, P1997385211436130063.a n = A073185 (n + 1)

theorem P1997385211436130063.correct : P1997385211436130063.Spec := by
  intro n
  simp only [A073185, Nat.add_sub_cancel, A073185.P1997385211436130063.a, A073185.P13146702220439815820.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007948, A007948.P9205423498154585874.a, A133477, A133477.P12030713238640017958.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A071773, A071773.P10551485978970375506.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073185

/-! ## A073185.P2734600734347023789

`∑{d}[n+1, #*A212793(#)]`
-/

namespace A073185.P2734600734347023789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A212793 d

end

end A073185.P2734600734347023789

namespace A073185

/-- `∑{d}[n+1, #*A212793(#)]` -/
def P2734600734347023789.Spec : Prop :=
  ∀ n, P2734600734347023789.a n = A073185 (n + 1)

end A073185

/-! ## A073185.P9306370880999056384

`A000203(∏{p}[(n+1)/∏{p}[n+1, #], #]*∏{p}[n+1, #])`
-/

namespace A073185.P9306370880999056384
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p) * (∏ p ∈ Nat.primeFactors (f3 n), p))

end

end A073185.P9306370880999056384

namespace A073185

/-- `A000203(∏{p}[(n+1)/∏{p}[n+1, #], #]*∏{p}[n+1, #])` -/
def P9306370880999056384.Spec : Prop :=
  ∀ n, P9306370880999056384.a n = A073185 (n + 1)

end A073185

/-! ## A073185.P1490665149244279596

`A353900(A058035(n+1))`
-/

namespace A073185.P1490665149244279596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353900 (A058035 (n + 1)).toNat

end

end A073185.P1490665149244279596

namespace A073185

/-- `A353900(A058035(n+1))` -/
def P1490665149244279596.Spec : Prop :=
  ∀ n, P1490665149244279596.a n = A073185 (n + 1)

end A073185

/-! ## A073185.P6765261734078398866

`A000203(A097377(n+1)-1)`
-/

namespace A073185.P6765261734078398866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A097377 (n + 1) - 1).toNat

end

end A073185.P6765261734078398866

namespace A073185

/-- `A000203(A097377(n+1)-1)` -/
def P6765261734078398866.Spec : Prop :=
  ∀ n, P6765261734078398866.a n = A073185 (n + 1)

theorem P6765261734078398866.correct : P6765261734078398866.Spec := by
  intro n
  simp only [A073185, Nat.add_sub_cancel, A073185.P6765261734078398866.a, A073185.P13146702220439815820.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007948, A007948.P9205423498154585874.a, A097377, A097377.P4336530497269463132.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A071773, A071773.P10551485978970375506.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073185

/-! ## A073185.P15894994289216818938

`A000203((n+1)/A062378(n+1))`
-/

namespace A073185.P15894994289216818938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A062378 (n + 1) : ℚ))).toNat

end

end A073185.P15894994289216818938

namespace A073185

/-- `A000203((n+1)/A062378(n+1))` -/
def P15894994289216818938.Spec : Prop :=
  ∀ n, P15894994289216818938.a n = A073185 (n + 1)

end A073185

/-! ## A073185.P6020896124462679619

`A073183((n+1)/A062378(n+1))`
-/

namespace A073185.P6020896124462679619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073183 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A062378 (n + 1) : ℚ))).toNat

end

end A073185.P6020896124462679619

namespace A073185

/-- `A073183((n+1)/A062378(n+1))` -/
def P6020896124462679619.Spec : Prop :=
  ∀ n, P6020896124462679619.a n = A073185 (n + 1)

end A073185

/-! ## A073185.P13016038043134499723

`A254981((n+1)/A062378(n+1))`
-/

namespace A073185.P13016038043134499723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254981 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A062378 (n + 1) : ℚ))).toNat

end

end A073185.P13016038043134499723

namespace A073185

/-- `A254981((n+1)/A062378(n+1))` -/
def P13016038043134499723.Spec : Prop :=
  ∀ n, P13016038043134499723.a n = A073185 (n + 1)

end A073185

/-! ## A073185.P1093902706618476114

`A073183(A007948(2*n+1-n))`
-/

namespace A073185.P1093902706618476114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073183 (A007948 (2 * n + 1 - n)).toNat

end

end A073185.P1093902706618476114

namespace A073185

/-- `A073183(A007948(2*n+1-n))` -/
def P1093902706618476114.Spec : Prop :=
  ∀ n, P1093902706618476114.a n = A073185 (n + 1)

end A073185

/-! ## A073185.P9261185057771090236

`∑{d}[A007947(n+1)*A071773(n+1), #]`
-/

namespace A073185.P9261185057771090236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A071773 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A073185.P9261185057771090236

namespace A073185

/-- `∑{d}[A007947(n+1)*A071773(n+1), #]` -/
def P9261185057771090236.Spec : Prop :=
  ∀ n, (P9261185057771090236.a n : ℤ) = A073185 (n + 1)

end A073185

/-! ## A073185.P3234550164027280756

`∑{d}[n+1, A328641(#)*A359949((n+1)/#)]`
-/

namespace A073185.P3234550164027280756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328641 d * A359949 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A073185.P3234550164027280756

namespace A073185

/-- `∑{d}[n+1, A328641(#)*A359949((n+1)/#)]` -/
def P3234550164027280756.Spec : Prop :=
  ∀ n, P3234550164027280756.a n = A073185 (n + 1)

end A073185

/-! ## A073185.P7972121736217829578

`A000203(∏{p}[(n+1)/∏{p}[n+1, #], #]*A007947(n+1))`
-/

namespace A073185.P7972121736217829578
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (((∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p : ℕ) : ℤ) * A007947 (n + 1)).toNat

end

end A073185.P7972121736217829578

namespace A073185

/-- `A000203(∏{p}[(n+1)/∏{p}[n+1, #], #]*A007947(n+1))` -/
def P7972121736217829578.Spec : Prop :=
  ∀ n, P7972121736217829578.a n = A073185 (n + 1)

end A073185

/-! ## A073185.P16742061860634403201

`A073183(A076998(n+1)+A007947(n+1))`
-/

namespace A073185.P16742061860634403201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073183 (A076998 (n + 1) + A007947 (n + 1)).toNat

end

end A073185.P16742061860634403201

namespace A073185

/-- `A073183(A076998(n+1)+A007947(n+1))` -/
def P16742061860634403201.Spec : Prop :=
  ∀ n, P16742061860634403201.a n = A073185 (n + 1)

end A073185

/-! ## A073185.P9254295415600257304

`A326142(A007948(n+1))+A007947(n+1)`
-/

namespace A073185.P9254295415600257304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326142 (A007948 (n + 1)).toNat + A007947 (n + 1)

end

end A073185.P9254295415600257304

namespace A073185

/-- `A326142(A007948(n+1))+A007947(n+1)` -/
def P9254295415600257304.Spec : Prop :=
  ∀ n, P9254295415600257304.a n = A073185 (n + 1)

end A073185

/-! ## A073185.P8370991652803034832

`A078615(n+1)-A338790(A007948(n+1))`
-/

namespace A073185.P8370991652803034832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078615 (n + 1) - A338790 (A007948 (n + 1)).toNat

end

end A073185.P8370991652803034832

namespace A073185

/-- `A078615(n+1)-A338790(A007948(n+1))` -/
def P8370991652803034832.Spec : Prop :=
  ∀ n, P8370991652803034832.a n = A073185 (n + 1)

end A073185

/-! ## A073185.P18320230429349446839

`A000203(A007947(n+1)*A071773(n+1))`
-/

namespace A073185.P18320230429349446839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A007947 (n + 1) * A071773 (n + 1)).toNat

end

end A073185.P18320230429349446839

namespace A073185

/-- `A000203(A007947(n+1)*A071773(n+1))` -/
def P18320230429349446839.Spec : Prop :=
  ∀ n, P18320230429349446839.a n = A073185 (n + 1)

theorem P18320230429349446839.correct : P18320230429349446839.Spec := by
  intro n
  simp only [A073185, Nat.add_sub_cancel, A073185.P18320230429349446839.a, A073185.P13146702220439815820.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A007948, A007948.P9205423498154585874.a, A071773, A071773.P10551485978970375506.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073185

/-! ## A073185.P14749363502585060827

`A000203((n+1)/A003557(A003557(n+1)))`
-/

namespace A073185.P14749363502585060827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (A003557 (n + 1)).toNat : ℚ))).toNat

end

end A073185.P14749363502585060827

namespace A073185

/-- `A000203((n+1)/A003557(A003557(n+1)))` -/
def P14749363502585060827.Spec : Prop :=
  ∀ n, P14749363502585060827.a n = A073185 (n + 1)

end A073185

/-! ## A073185.P5636585487348955351

`A000203(A078615(n+1)/A055231(n+1))`
-/

namespace A073185.P5636585487348955351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A078615 (n + 1) : ℚ) / (A055231 (n + 1) : ℚ))).toNat

end

end A073185.P5636585487348955351

namespace A073185

/-- `A000203(A078615(n+1)/A055231(n+1))` -/
def P5636585487348955351.Spec : Prop :=
  ∀ n, P5636585487348955351.a n = A073185 (n + 1)

end A073185

/-!
# A073187: Triangle of C(n+1,k)*C(2*n-3*k,n-3*k)/(n+1) by rows.

The programs for A073187, there is no canonical definition to state claims against.
-/

/-! ## A073187.P10902537222347043011

`A263771(lt[A038107(n), A127202(2*n+3)])`
-/

namespace A073187.P10902537222347043011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127202 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263771 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A073187.P10902537222347043011

/-!
# A073188: n appears 1+[n/3] times.

The programs for A073188, the canonical program `A073188.P3110551356772534139` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073188 has offset 0).

The definition of A073188 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073188.P3110551356772534139

`floor(sqrt(6*n+6)-3/2)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A073188

/-- `floor(sqrt(6*n+6)-3/2)` -/
def P3110551356772534139.Spec : Prop :=
  ∀ n, P3110551356772534139.a n = A073188 n

theorem P3110551356772534139.correct : P3110551356772534139.Spec := by
  intro n
  simp only [A073188]

end A073188

/-! ## A073188.P6645356694694810573

`1+a(n-1-floor(a(n-1)/3))` with `a(0)=0`
-/

namespace A073188.P6645356694694810573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a ((n : ℤ) - 1 - ⌊(a (n - 1) : ℚ) / 3⌋).toNat

end

end A073188.P6645356694694810573

namespace A073188

/-- `1+a(n-1-floor(a(n-1)/3))` -/
def P6645356694694810573.Spec : Prop :=
  ∀ n, (P6645356694694810573.a n : ℤ) = A073188 n

end A073188

/-! ## A073188.P14762003247089001939

`a(n-(a(n-1)+1))+3` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A073188.P14762003247089001939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - (a (n - 1) + 1)) + 3

end

end A073188.P14762003247089001939

namespace A073188

/-- `a(n-(a(n-1)+1))+3` -/
def P14762003247089001939.Spec : Prop :=
  ∀ n, (P14762003247089001939.a n : ℤ) = A073188 n

end A073188

/-! ## A073188.P7811828544881787545

`∑[char[A008649(n)]]`
-/

namespace A073188.P7811828544881787545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008649 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073188.P7811828544881787545

namespace A073188

/-- `∑[char[A008649(n)]]` -/
def P7811828544881787545.Spec : Prop :=
  ∀ n, (P7811828544881787545.a n : ℤ) = A073188 n

end A073188

/-! ## A073188.P15739909370360795980

`round(sqrt(A016945(n)))-2`
-/

namespace A073188.P15739909370360795980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A016945 n : ℝ)) - 2

end

end A073188.P15739909370360795980

namespace A073188

/-- `round(sqrt(A016945(n)))-2` -/
def P15739909370360795980.Spec : Prop :=
  ∀ n, P15739909370360795980.a n = A073188 n

end A073188

/-! ## A073188.P10686136186283054418

`round(sqrt(A016957(n)))-2`
-/

namespace A073188.P10686136186283054418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A016957 n : ℝ)) - 2

end

end A073188.P10686136186283054418

namespace A073188

/-- `round(sqrt(A016957(n)))-2` -/
def P10686136186283054418.Spec : Prop :=
  ∀ n, P10686136186283054418.a n = A073188 n

end A073188

/-! ## A073188.P16783739696680028017

`round(sqrt(A016969(n)))-2`
-/

namespace A073188.P16783739696680028017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A016969 n : ℝ)) - 2

end

end A073188.P16783739696680028017

namespace A073188

/-- `round(sqrt(A016969(n)))-2` -/
def P16783739696680028017.Spec : Prop :=
  ∀ n, P16783739696680028017.a n = A073188 n

end A073188

/-! ## A073188.P8841609134706651109

`∑[char[A001840(n+1)]]`
-/

namespace A073188.P8841609134706651109
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073188.P8841609134706651109

namespace A073188

/-- `∑[char[A001840(n+1)]]` -/
def P8841609134706651109.Spec : Prop :=
  ∀ n, (P8841609134706651109.a n : ℤ) = A073188 n

end A073188

/-! ## A073188.P2318276755561760669

`∑[char[A001840(n)]]-1`
-/

namespace A073188.P2318276755561760669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A073188.P2318276755561760669

namespace A073188

/-- `∑[char[A001840(n)]]-1` -/
def P2318276755561760669.Spec : Prop :=
  ∀ n, P2318276755561760669.a n = A073188 n

end A073188

/-! ## A073188.P2607773622674811271

`∑[char[A008731(n)]]-1`
-/

namespace A073188.P2607773622674811271
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008731 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A073188.P2607773622674811271

namespace A073188

/-- `∑[char[A008731(n)]]-1` -/
def P2607773622674811271.Spec : Prop :=
  ∀ n, P2607773622674811271.a n = A073188 n

end A073188

/-! ## A073188.P15426314769549792658

`∑[char[A008799(n)]]-1`
-/

namespace A073188.P15426314769549792658
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008799 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A073188.P15426314769549792658

namespace A073188

/-- `∑[char[A008799(n)]]-1` -/
def P15426314769549792658.Spec : Prop :=
  ∀ n, P15426314769549792658.a n = A073188 n

end A073188

/-! ## A073188.P7012752593290419673

`∑[char[A025814(n)]]-1`
-/

namespace A073188.P7012752593290419673
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025814 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A073188.P7012752593290419673

namespace A073188

/-- `∑[char[A025814(n)]]-1` -/
def P7012752593290419673.Spec : Prop :=
  ∀ n, P7012752593290419673.a n = A073188 n

end A073188

/-! ## A073188.P3686854401163818321

`∑[char[A008799(2*n)]]`
-/

namespace A073188.P3686854401163818321
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008799 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073188.P3686854401163818321

namespace A073188

/-- `∑[char[A008799(2*n)]]` -/
def P3686854401163818321.Spec : Prop :=
  ∀ n, (P3686854401163818321.a n : ℤ) = A073188 n

end A073188

/-! ## A073188.P15646774208217777057

`A186354(n+1)-(n+2)`
-/

namespace A073188.P15646774208217777057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186354 (n + 1) - (n + 2 : ℤ)

end

end A073188.P15646774208217777057

namespace A073188

/-- `A186354(n+1)-(n+2)` -/
def P15646774208217777057.Spec : Prop :=
  ∀ n, P15646774208217777057.a n = A073188 n

theorem P15646774208217777057.correct : P15646774208217777057.Spec := by
  intro n
  simp only [A073188, Nat.add_sub_cancel, A073188.P15646774208217777057.a, A073188.P3110551356772534139.a, A186354, A186354.P1694336808375307866.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A073188

/-! ## A073188.P10899745971872053181

`round(sqrt(A265035(2*n+1)))-2`
-/

namespace A073188.P10899745971872053181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A265035 (2 * n + 1) : ℝ)) - 2

end

end A073188.P10899745971872053181

namespace A073188

/-- `round(sqrt(A265035(2*n+1)))-2` -/
def P10899745971872053181.Spec : Prop :=
  ∀ n, P10899745971872053181.a n = A073188 n

end A073188

/-! ## A073188.P8707494857113080269

`A080353(n+1)-A020710(n)`
-/

namespace A073188.P8707494857113080269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080353 (n + 1) - A020710 n

end

end A073188.P8707494857113080269

namespace A073188

/-- `A080353(n+1)-A020710(n)` -/
def P8707494857113080269.Spec : Prop :=
  ∀ n, P8707494857113080269.a n = A073188 n

end A073188

/-! ## A073188.P8460495020964678991

`A186354(n+1)%A020725(n+1)`
-/

namespace A073188.P8460495020964678991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186354 (n + 1)) (A020725 (n + 1))

end

end A073188.P8460495020964678991

namespace A073188

/-- `A186354(n+1)%A020725(n+1)` -/
def P8460495020964678991.Spec : Prop :=
  ∀ n, P8460495020964678991.a n = A073188 n

end A073188

/-! ## A073188.P15627517551293880794

`A235963(A180446(n))+A180447(n)`
-/

namespace A073188.P15627517551293880794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235963 (A180446 n).toNat + A180447 n

end

end A073188.P15627517551293880794

namespace A073188

/-- `A235963(A180446(n))+A180447(n)` -/
def P15627517551293880794.Spec : Prop :=
  ∀ n, P15627517551293880794.a n = A073188 n

end A073188

/-! ## A073188.P14556579703717788060

`round(sqrt(A008458(n+1)))-2`
-/

namespace A073188.P14556579703717788060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A008458 (n + 1) : ℝ)) - 2

end

end A073188.P14556579703717788060

namespace A073188

/-- `round(sqrt(A008458(n+1)))-2` -/
def P14556579703717788060.Spec : Prop :=
  ∀ n, P14556579703717788060.a n = A073188 n

end A073188

/-!
# A073189: Integers 0..k three times, then 0..k+1 three times, etc.

The programs for A073189, the canonical program `A073189.P2936447101762913504` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073189 has offset 0).

The definition of A073189 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073189.P2936447101762913504

`n-A001840(A073188(n))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A073189

/-- `n-A001840(A073188(n))` -/
def P2936447101762913504.Spec : Prop :=
  ∀ n, P2936447101762913504.a n = A073189 n

theorem P2936447101762913504.correct : P2936447101762913504.Spec := by
  intro n
  simp only [A073189]

end A073189

/-! ## A073189.P6249634210804239722

`n-A001840(∑[char[A001840(n+1)]])`
-/

namespace A073189.P6249634210804239722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001840 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A073189.P6249634210804239722

namespace A073189

/-- `n-A001840(∑[char[A001840(n+1)]])` -/
def P6249634210804239722.Spec : Prop :=
  ∀ n, P6249634210804239722.a n = A073189 n

end A073189

/-! ## A073189.P11712336670600350197

`floor(A002260(3*n+2)/3)`
-/

namespace A073189.P11712336670600350197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002260 (3 * n + 2) : ℚ) / 3⌋

end

end A073189.P11712336670600350197

namespace A073189

/-- `floor(A002260(3*n+2)/3)` -/
def P11712336670600350197.Spec : Prop :=
  ∀ n, P11712336670600350197.a n = A073189 n

end A073189

/-! ## A073189.P3278582832456626673

`A002264(A002260(3*n+2))`
-/

namespace A073189.P3278582832456626673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A002260 (3 * n + 2)).toNat

end

end A073189.P3278582832456626673

namespace A073189

/-- `A002264(A002260(3*n+2))` -/
def P3278582832456626673.Spec : Prop :=
  ∀ n, P3278582832456626673.a n = A073189 n

end A073189

/-! ## A073189.P1054200556840431435

`val(A020714(2*A002260(3*n+2)+1), 64)`
-/

namespace A073189.P1054200556840431435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A020714 (2 * A002260 (3 * n + 2) + 1).toNat).toNat 64

end

end A073189.P1054200556840431435

namespace A073189

/-- `val(A020714(2*A002260(3*n+2)+1), 64)` -/
def P1054200556840431435.Spec : Prop :=
  ∀ n, (P1054200556840431435.a n : ℤ) = A073189 n

end A073189

/-! ## A073189.P4361474311625286470

`A002262(lt[0, A238343(n)])`
-/

namespace A073189.P4361474311625286470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A073189.P4361474311625286470

namespace A073189

/-- `A002262(lt[0, A238343(n)])` -/
def P4361474311625286470.Spec : Prop :=
  ∀ n, P4361474311625286470.a n = A073189 n

end A073189

/-! ## A073189.P12783050232013851844

`A002262(eq[0, A071675(n)])`
-/

namespace A073189.P12783050232013851844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071675 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073189.P12783050232013851844

namespace A073189

/-- `A002262(eq[0, A071675(n)])` -/
def P12783050232013851844.Spec : Prop :=
  ∀ n, P12783050232013851844.a n = A073189 n

end A073189

/-! ## A073189.P15980498572238791210

`A002262(eq[0, A116088(n)])`
-/

namespace A073189.P15980498572238791210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073189.P15980498572238791210

namespace A073189

/-- `A002262(eq[0, A116088(n)])` -/
def P15980498572238791210.Spec : Prop :=
  ∀ n, P15980498572238791210.a n = A073189 n

end A073189

/-! ## A073189.P2886824560341103297

`A002262(lt[A002262(n), A114327(n)])`
-/

namespace A073189.P2886824560341103297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A073189.P2886824560341103297

namespace A073189

/-- `A002262(lt[A002262(n), A114327(n)])` -/
def P2886824560341103297.Spec : Prop :=
  ∀ n, P2886824560341103297.a n = A073189 n

end A073189

/-! ## A073189.P7702252570287445841

`A053616(lt[A053616(n), A114327(n)])`
-/

namespace A073189.P7702252570287445841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A073189.P7702252570287445841

namespace A073189

/-- `A053616(lt[A053616(n), A114327(n)])` -/
def P7702252570287445841.Spec : Prop :=
  ∀ n, P7702252570287445841.a n = A073189 n

end A073189

/-! ## A073189.P13010737767075505344

`A002262(lt[2*A002262(n), A025581(n)])`
-/

namespace A073189.P13010737767075505344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A073189.P13010737767075505344

namespace A073189

/-- `A002262(lt[2*A002262(n), A025581(n)])` -/
def P13010737767075505344.Spec : Prop :=
  ∀ n, P13010737767075505344.a n = A073189 n

end A073189

/-! ## A073189.P9094197486152611980

`A053616(lt[A157454(n+1), A004736(n+1)])`
-/

namespace A073189.P9094197486152611980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A073189.P9094197486152611980

namespace A073189

/-- `A053616(lt[A157454(n+1), A004736(n+1)])` -/
def P9094197486152611980.Spec : Prop :=
  ∀ n, P9094197486152611980.a n = A073189 n

end A073189

/-! ## A073189.P1804668545314052469

`floor(A002262(3*n+1)/3)`
-/

namespace A073189.P1804668545314052469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002262 (3 * n + 1) : ℚ) / 3⌋

end

end A073189.P1804668545314052469

namespace A073189

/-- `floor(A002262(3*n+1)/3)` -/
def P1804668545314052469.Spec : Prop :=
  ∀ n, P1804668545314052469.a n = A073189 n

end A073189

/-! ## A073189.P16262822558429237536

`floor(A134868(3*n+2)/3)`
-/

namespace A073189.P16262822558429237536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A134868 (3 * n + 2) : ℚ) / 3⌋

end

end A073189.P16262822558429237536

namespace A073189

/-- `floor(A134868(3*n+2)/3)` -/
def P16262822558429237536.Spec : Prop :=
  ∀ n, P16262822558429237536.a n = A073189 n

end A073189

/-! ## A073189.P8365081894041039431

`val(A173786(3*n+1)², 64)`
-/

namespace A073189.P8365081894041039431
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A173786 (3 * n + 1) ^ 2).toNat 64

end

end A073189.P8365081894041039431

namespace A073189

/-- `val(A173786(3*n+1)², 64)` -/
def P8365081894041039431.Spec : Prop :=
  ∀ n, (P8365081894041039431.a n : ℤ) = A073189 n

end A073189

/-! ## A073189.P12359987144926364224

`ceil((A002262(3*n+2)+1)/3)-1`
-/

namespace A073189.P12359987144926364224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002262 (3 * n + 2) + 1 : ℚ) / 3⌉ - 1

end

end A073189.P12359987144926364224

namespace A073189

/-- `ceil((A002262(3*n+2)+1)/3)-1` -/
def P12359987144926364224.Spec : Prop :=
  ∀ n, P12359987144926364224.a n = A073189 n

end A073189

/-! ## A073189.P15665484868299075382

`A053186(lt[A196199(n)+A094765(n), n])`
-/

namespace A073189.P15665484868299075382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 n + A094765 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A073189.P15665484868299075382

namespace A073189

/-- `A053186(lt[A196199(n)+A094765(n), n])` -/
def P15665484868299075382.Spec : Prop :=
  ∀ n, P15665484868299075382.a n = A073189 n

end A073189

/-! ## A073189.P9848068493556569099

`A053186(lt[A094765(n), n-A196199(n)])`
-/

namespace A073189.P9848068493556569099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094765 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A196199 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A073189.P9848068493556569099

namespace A073189

/-- `A053186(lt[A094765(n), n-A196199(n)])` -/
def P9848068493556569099.Spec : Prop :=
  ∀ n, P9848068493556569099.a n = A073189 n

end A073189

/-! ## A073189.P9221992760438139562

`A057554(lt[A074294(n+1), A057554(n+1)+1])`
-/

namespace A073189.P9221992760438139562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A073189.P9221992760438139562

namespace A073189

/-- `A057554(lt[A074294(n+1), A057554(n+1)+1])` -/
def P9221992760438139562.Spec : Prop :=
  ∀ n, P9221992760438139562.a n = A073189 n

end A073189

/-! ## A073189.P735441530106554449

`A057555(lt[A074294(n+1), A057555(n+1)])-1`
-/

namespace A073189.P735441530106554449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n) - 1

end

end A073189.P735441530106554449

namespace A073189

/-- `A057555(lt[A074294(n+1), A057555(n+1)])-1` -/
def P735441530106554449.Spec : Prop :=
  ∀ n, P735441530106554449.a n = A073189 n

end A073189

/-!
# A073190: Number of general plane trees which are either empty (the case a(0)), or whose root degree is either 1 (i.e., the planted trees) or the two leftmost subtrees (of the root node) are identical.

The programs for A073190, there is no canonical definition to state claims against.
-/

/-! ## A073190.P1173878611395353406

`A073191(n)+A073191(n)-A000108(n)`
-/

namespace A073190.P1173878611395353406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073191 n + (A073191 n - A000108 n)

end

end A073190.P1173878611395353406

/-! ## A073190.P7870875103102446140

`2*A073191(n)-A000108(n)`
-/

namespace A073190.P7870875103102446140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A073191 n - A000108 n

end

end A073190.P7870875103102446140

/-! ## A073190.P4803720293054284196

`A073202(∑[n+1]+1)`
-/

namespace A073190.P4803720293054284196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073202 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A073190.P4803720293054284196

/-! ## A073190.P5054282302450921883

`record[A073202(n+3)]+floor(acot(n))`
-/

namespace A073190.P5054282302450921883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073202 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A073190.P5054282302450921883

/-! ## A073190.P15361400414966844079

`A000007(n)+record[A073202(n+3)]`
-/

namespace A073190.P15361400414966844079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073202 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073190.P15361400414966844079

/-!
# A073191: Number of separate orbits/cycles to which the Catalan bijections A072796/A072797 partition each A000108(n) structures encoded in the range [A014137(n-1)..A014138(n-1)] of the sequence A014486/A063171.

The programs for A073191, there is no canonical definition to state claims against.
-/

/-! ## A073191.P1969435566813133687

`(A000108(n)+A073190(n))/2`
-/

namespace A073191.P1969435566813133687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n + A073190 n : ℚ) / 2

end

end A073191.P1969435566813133687

/-! ## A073191.P10996948614043721697

`A073201(∑[n+1]+1)`
-/

namespace A073191.P10996948614043721697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073201 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A073191.P10996948614043721697

/-! ## A073191.P12376727381052489513

`gcd(floor(acot(n)), A073201(A000124(n+1)))`
-/

namespace A073191.P12376727381052489513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A073201 (A000124 (n + 1)).toNat)

end

end A073191.P12376727381052489513

/-! ## A073191.P12917373265281632447

`A073201(A134869(n+1))%A173735(n)`
-/

namespace A073191.P12917373265281632447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073201 (A134869 (n + 1)).toNat) (A173735 n)

end

end A073191.P12917373265281632447

/-!
# A073192: Number of general plane trees whose n-th subtree from the left is equal to the n-th subtree from the right, for all its subtrees (i.e., are palindromic in the shallow sense).

The programs for A073192, there is no canonical definition to state claims against.
-/

/-! ## A073192.P9006691023204643705

`A073193(n)+A073193(n)-A000108(n)`
-/

namespace A073192.P9006691023204643705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073193 n + (A073193 n - A000108 n)

end

end A073192.P9006691023204643705

/-! ## A073192.P9233960561626514660

`2*A073193(n)-A000108(n)`
-/

namespace A073192.P9233960561626514660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A073193 n - A000108 n

end

end A073192.P9233960561626514660

/-! ## A073192.P7568338719668966964

`2*A073193(n)-abs(A168491(n))`
-/

namespace A073192.P7568338719668966964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A073193 n - |A168491 n|

end

end A073192.P7568338719668966964

/-! ## A073192.P15691674519036418276

`A005843(A073193(n))-A000108(n)`
-/

namespace A073192.P15691674519036418276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A073193 n).toNat - A000108 n

end

end A073192.P15691674519036418276

/-! ## A073192.P17745015384728569875

`A004277(A073193(n))-abs(A168491(n))`
-/

namespace A073192.P17745015384728569875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A073193 n).toNat - |A168491 n|

end

end A073192.P17745015384728569875

/-!
# A073193: Number of separate orbits/cycles to which the Catalan bijection A057508 partitions each A000108(n) structures encoded in the range [A014137(n-1)..A014138(n-1)] of the sequence A014486/A063171.

The programs for A073193, there is no canonical definition to state claims against.
-/

/-! ## A073193.P6511418113538158959

`(A000108(n)+A073192(n))/2`
-/

namespace A073193.P6511418113538158959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n + A073192 n : ℚ) / 2

end

end A073193.P6511418113538158959

/-! ## A073193.P14396526611970298801

`(A073192(n)+abs(A168491(n)))/2`
-/

namespace A073193.P14396526611970298801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073192 n + |A168491 n| : ℚ) / 2

end

end A073193.P14396526611970298801

/-! ## A073193.P13393970648853732180

`A073191(n+1)-A000150(n+1)`
-/

namespace A073193.P13393970648853732180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073191 (n + 1) - A000150 (n + 1)

end

end A073193.P13393970648853732180

/-! ## A073193.P17183116572117069104

`A014682(A073192(n)+A000108(n))`
-/

namespace A073193.P17183116572117069104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A073192 n + A000108 n).toNat

end

end A073193.P17183116572117069104

/-! ## A073193.P3602594424067068652

`A004526(A073192(n)+A000108(n))`
-/

namespace A073193.P3602594424067068652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A073192 n + A000108 n).toNat

end

end A073193.P3602594424067068652

/-!
# A073194: Permutation of natural numbers induced by the Catalan bijection gmA073194 acting on the parenthesizations as ordered by A014486.

The programs for A073194, there is no canonical definition to state claims against.
-/

/-! ## A073194.P7453823424454863953

`A057163(A073205(A057163(n)))`
-/

namespace A073194.P7453823424454863953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A073205 (A057163 n).toNat).toNat

end

end A073194.P7453823424454863953

/-! ## A073194.P17616599576496042793

`A001222(A092925(n+3))*A085173(A125985(n))`
-/

namespace A073194.P17616599576496042793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A092925 (n + 3)).toNat * A085173 (A125985 n).toNat

end

end A073194.P17616599576496042793

/-! ## A073194.P11001583967708415

`A085173(A125985(n)%A074698(n+1))`
-/

namespace A073194.P11001583967708415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085173 (Int.tmod (A125985 n) (A074698 (n + 1))).toNat

end

end A073194.P11001583967708415

/-! ## A073194.P8869178725860189019

`A254379(A080185(n+1))+A085173(A125985(n))`
-/

namespace A073194.P8869178725860189019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 (A080185 (n + 1)).toNat + A085173 (A125985 n).toNat

end

end A073194.P8869178725860189019

/-!
# A073195: Permutation of natural numbers induced by the Catalan bijection gmA073195 acting on the parenthesizations as ordered by A014486.

The programs for A073195, there is no canonical definition to state claims against.
-/

/-! ## A073195.P2264728295127345010

`A057163(A073206(A057163(n)))`
-/

namespace A073195.P2264728295127345010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A073206 (A057163 n).toNat).toNat

end

end A073195.P2264728295127345010

/-! ## A073195.P15943571257755038501

`xor(A086429(n), A340998(A000124(n)))`
-/

namespace A073195.P15943571257755038501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A086429 n) (A340998 ((A000124 n).toNat + 140))

end

end A073195.P15943571257755038501

/-!
# A073196: Permutation of natural numbers induced by the Catalan bijection gmA073196 acting on the parenthesizations as ordered by A014486.

The programs for A073196, there is no canonical definition to state claims against.
-/

/-! ## A073196.P13387498807756375928

`A057163(A073207(A057163(n)))`
-/

namespace A073196.P13387498807756375928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A073207 (A057163 n).toNat).toNat

end

end A073196.P13387498807756375928

/-! ## A073196.P499899194849095775

`A358754(A337499(n))+A073210(n)`
-/

namespace A073196.P499899194849095775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358754 (A337499 n).toNat + A073210 n

end

end A073196.P499899194849095775

/-! ## A073196.P3227461766034088469

`A107846(A340816(n+1))+A073210(n)`
-/

namespace A073196.P3227461766034088469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A340816 (n + 1)).toNat + A073210 n

end

end A073196.P3227461766034088469

/-! ## A073196.P18094635480024756609

`or(A073210(n), A284683(A018700(n+1)))`
-/

namespace A073196.P18094635480024756609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A073210 n) (A284683 (A018700 (n + 1)).toNat)

end

end A073196.P18094635480024756609

/-! ## A073196.P621626270371434136

`or(A054054(A007088(n)), A073210(n))`
-/

namespace A073196.P621626270371434136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A054054 (A007088 n).toNat) (A073210 n)

end

end A073196.P621626270371434136

/-!
# A073197: Permutation of natural numbers induced by the Catalan bijection gmA073197 acting on the parenthesizations as ordered by A014486.

The programs for A073197, there is no canonical definition to state claims against.
-/

/-! ## A073197.P1013781589576571175

`A057163(A073208(A057163(n)))`
-/

namespace A073197.P1013781589576571175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A073208 (A057163 n).toNat).toNat

end

end A073197.P1013781589576571175

/-! ## A073197.P2158235866554714888

`A072797(A122300(n))%A103915(n)`
-/

namespace A073197.P2158235866554714888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072797 (A122300 n).toNat) (A103915 n)

end

end A073197.P2158235866554714888

/-! ## A073197.P8060972217009582937

`A089860(A130357(n)%A103915(n))`
-/

namespace A073197.P8060972217009582937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089860 (Int.tmod (A130357 n) (A103915 n)).toNat

end

end A073197.P8060972217009582937

/-! ## A073197.P5095540633764040761

`A072797(A122300(n)%A335317(2*(n+1)))`
-/

namespace A073197.P5095540633764040761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072797 (Int.tmod (A122300 n) (A335317 (2 * (n + 1)))).toNat

end

end A073197.P5095540633764040761

/-! ## A073197.P6804179789296894224

`A072797(A122300(n)%A247572(n+2))`
-/

namespace A073197.P6804179789296894224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072797 (Int.tmod (A122300 n) (A247572 (n + 2))).toNat

end

end A073197.P6804179789296894224

/-!
# A073198: Permutation of natural numbers induced by the Catalan bijection gmA073198 acting on the parenthesizations as ordered by A014486.

The programs for A073198, there is no canonical definition to state claims against.
-/

/-! ## A073198.P8569671157719125834

`A057163(A073209(A057163(n)))`
-/

namespace A073198.P8569671157719125834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A073209 (A057163 n).toNat).toNat

end

end A073198.P8569671157719125834

/-! ## A073198.P4412626646206098946

`A127287(A085166(n)%A103915(n))`
-/

namespace A073198.P4412626646206098946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127287 (Int.tmod (A085166 n) (A103915 n)).toNat

end

end A073198.P4412626646206098946

/-! ## A073198.P10688624342784095144

`A125977(n)-A361521(A184955(n))`
-/

namespace A073198.P10688624342784095144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125977 n - A361521 (A184955 n).toNat

end

end A073198.P10688624342784095144

/-! ## A073198.P10082456660756665778

`A085166(n)+A010051(A375006(2*n+5))`
-/

namespace A073198.P10082456660756665778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085166 n + A010051 (A375006 (2 * n + 5)).toNat

end

end A073198.P10082456660756665778

/-!
# A073199: Permutation of natural numbers induced by the Catalan bijection gmA073199 acting on the parenthesizations as ordered by A014486.

The programs for A073199, there is no canonical definition to state claims against.
-/

/-! ## A073199.P6037754028382802622

`A057163(A073210(A057163(n)))`
-/

namespace A073199.P6037754028382802622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A073210 (A057163 n).toNat).toNat

end

end A073199.P6037754028382802622

/-! ## A073199.P16849618705926040471

`A125988(n)-A025469(A008862(n))`
-/

namespace A073199.P16849618705926040471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125988 n - A025469 (A008862 n).toNat

end

end A073199.P16849618705926040471

/-! ## A073199.P17779981173628184437

`A125988(n)-A254379(A005043(n))`
-/

namespace A073199.P17779981173628184437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125988 n - A254379 (A005043 n).toNat

end

end A073199.P17779981173628184437

/-! ## A073199.P10109772257862633949

`A125988(n)-A253513(A276085(n+2))`
-/

namespace A073199.P10109772257862633949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125988 n - A253513 (A276085 (n + 2)).toNat

end

end A073199.P10109772257862633949

/-! ## A073199.P295936289796826763

`A125988(n)+A010815(A006145(n+5))`
-/

namespace A073199.P295936289796826763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125988 n + A010815 (A006145 (n + 5)).toNat

end

end A073199.P295936289796826763

