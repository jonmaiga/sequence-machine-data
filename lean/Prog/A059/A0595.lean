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
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
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
import Seq.B008.C001
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
# A059500: Primes p such that both q=(p-1)/2 and 2p + 1 = 4q + 3 are composite numbers. Intersection of A059456 and A053176.

The programs for A059500, the canonical program `A059500.P3268541981243603628` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059500 has offset 1).

The definition of A059500 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8844 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059500.P3268541981243603628

`∩[A053176(n+1), A099184(n+2)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A059500

/-- `∩[A053176(n+1), A099184(n+2)]` -/
def P3268541981243603628.Spec : Prop :=
  ∀ n, (P3268541981243603628.a n : ℤ) = A059500 (n + 1)

theorem P3268541981243603628.correct : P3268541981243603628.Spec := by
  intro n
  simp only [A059500, Nat.add_sub_cancel]

end A059500

/-! ## A059500.P6983288407650094862

`∩[A053176(n+1), A059456(n+1)]`
-/

namespace A059500.P6983288407650094862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059500.P6983288407650094862

namespace A059500

/-- `∩[A053176(n+1), A059456(n+1)]` -/
def P6983288407650094862.Spec : Prop :=
  ∀ n, (P6983288407650094862.a n : ℤ) = A059500 (n + 1)

end A059500

/-! ## A059500.P430541826313246979

`p?[A059456(n+1)*A338945(n+1)]`
-/

namespace A059500.P430541826313246979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1) * A338945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059500.P430541826313246979

namespace A059500

/-- `p?[A059456(n+1)*A338945(n+1)]` -/
def P430541826313246979.Spec : Prop :=
  ∀ n, P430541826313246979.a n = A059500 (n + 1)

end A059500

/-! ## A059500.P15159129801130092897

`record[A059456(n+3)/A338945(n+3)]`
-/

namespace A059500.P15159129801130092897
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059456 (n + 3) : ℚ) / (A338945 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059500.P15159129801130092897

namespace A059500

/-- `record[A059456(n+3)/A338945(n+3)]` -/
def P15159129801130092897.Spec : Prop :=
  ∀ n, P15159129801130092897.a n = (A059500 (n + 1) : ℚ)

end A059500

/-! ## A059500.P17564959999877104643

`∩[A053176(n+1), A339912(n+1)]`
-/

namespace A059500.P17564959999877104643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059500.P17564959999877104643

namespace A059500

/-- `∩[A053176(n+1), A339912(n+1)]` -/
def P17564959999877104643.Spec : Prop :=
  ∀ n, (P17564959999877104643.a n : ℤ) = A059500 (n + 1)

end A059500

/-! ## A059500.P13402236766576002738

`∩[A059456(n+1), A156543(n+1)]`
-/

namespace A059500.P13402236766576002738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059500.P13402236766576002738

namespace A059500

/-- `∩[A059456(n+1), A156543(n+1)]` -/
def P13402236766576002738.Spec : Prop :=
  ∀ n, (P13402236766576002738.a n : ℤ) = A059500 (n + 1)

end A059500

/-! ## A059500.P10153420844757027458

`∩[A156543(n+1), A099184(n+2)]`
-/

namespace A059500.P10153420844757027458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099184 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059500.P10153420844757027458

namespace A059500

/-- `∩[A156543(n+1), A099184(n+2)]` -/
def P10153420844757027458.Spec : Prop :=
  ∀ n, (P10153420844757027458.a n : ℤ) = A059500 (n + 1)

end A059500

/-! ## A059500.P5119136513786859537

`∩[A059456(n+1), A079698(n)]`
-/

namespace A059500.P5119136513786859537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079698 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059500.P5119136513786859537

namespace A059500

/-- `∩[A059456(n+1), A079698(n)]` -/
def P5119136513786859537.Spec : Prop :=
  ∀ n, (P5119136513786859537.a n : ℤ) = A059500 (n + 1)

end A059500

/-! ## A059500.P6701223848809149288

`∩[A099184(n+2), A079698(n)]`
-/

namespace A059500.P6701223848809149288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099184 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079698 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059500.P6701223848809149288

namespace A059500

/-- `∩[A099184(n+2), A079698(n)]` -/
def P6701223848809149288.Spec : Prop :=
  ∀ n, (P6701223848809149288.a n : ℤ) = A059500 (n + 1)

end A059500

/-! ## A059500.P2646391235228577081

`∩[A053176(n+1), A176393(n+1)]`
-/

namespace A059500.P2646391235228577081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059500.P2646391235228577081

namespace A059500

/-- `∩[A053176(n+1), A176393(n+1)]` -/
def P2646391235228577081.Spec : Prop :=
  ∀ n, (P2646391235228577081.a n : ℤ) = A059500 (n + 1)

end A059500

/-! ## A059500.P1104285816997253439

`∩[A059456(n+1), A396685(n+1)]`
-/

namespace A059500.P1104285816997253439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059500.P1104285816997253439

namespace A059500

/-- `∩[A059456(n+1), A396685(n+1)]` -/
def P1104285816997253439.Spec : Prop :=
  ∀ n, (P1104285816997253439.a n : ℤ) = A059500 (n + 1)

end A059500

/-! ## A059500.P12585547426767360515

`∩[A059456(n+1), A166602(n+1)]`
-/

namespace A059500.P12585547426767360515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166602 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059500.P12585547426767360515

namespace A059500

/-- `∩[A059456(n+1), A166602(n+1)]` -/
def P12585547426767360515.Spec : Prop :=
  ∀ n, (P12585547426767360515.a n : ℤ) = A059500 (n + 1)

end A059500

/-! ## A059500.P7537490021963265437

`∩[A166602(n+1), A099184(n+2)]`
-/

namespace A059500.P7537490021963265437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099184 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059500.P7537490021963265437

namespace A059500

/-- `∩[A166602(n+1), A099184(n+2)]` -/
def P7537490021963265437.Spec : Prop :=
  ∀ n, (P7537490021963265437.a n : ℤ) = A059500 (n + 1)

end A059500

/-! ## A059500.P4298729207505814327

`∩[A059456(n+1), A393401(n+1)]`
-/

namespace A059500.P4298729207505814327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059500.P4298729207505814327

namespace A059500

/-- `∩[A059456(n+1), A393401(n+1)]` -/
def P4298729207505814327.Spec : Prop :=
  ∀ n, (P4298729207505814327.a n : ℤ) = A059500 (n + 1)

end A059500

/-! ## A059500.P12163469056569947829

`∩[A059456(n+1), A079695(n+1)]`
-/

namespace A059500.P12163469056569947829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059500.P12163469056569947829

namespace A059500

/-- `∩[A059456(n+1), A079695(n+1)]` -/
def P12163469056569947829.Spec : Prop :=
  ∀ n, (P12163469056569947829.a n : ℤ) = A059500 (n + 1)

end A059500

/-! ## A059500.P166312269080189146

`∩[A079695(n+1), A099184(n+2)]`
-/

namespace A059500.P166312269080189146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099184 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059500.P166312269080189146

namespace A059500

/-- `∩[A079695(n+1), A099184(n+2)]` -/
def P166312269080189146.Spec : Prop :=
  ∀ n, (P166312269080189146.a n : ℤ) = A059500 (n + 1)

end A059500

/-! ## A059500.P8263782657160606907

`∩[A059456(n+1), A328414(n+1)]`
-/

namespace A059500.P8263782657160606907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059500.P8263782657160606907

namespace A059500

/-- `∩[A059456(n+1), A328414(n+1)]` -/
def P8263782657160606907.Spec : Prop :=
  ∀ n, (P8263782657160606907.a n : ℤ) = A059500 (n + 1)

end A059500

/-! ## A059500.P7820837969235592152

`∩[A328414(n+1), A099184(n+2)]`
-/

namespace A059500.P7820837969235592152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099184 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059500.P7820837969235592152

namespace A059500

/-- `∩[A328414(n+1), A099184(n+2)]` -/
def P7820837969235592152.Spec : Prop :=
  ∀ n, (P7820837969235592152.a n : ℤ) = A059500 (n + 1)

end A059500

/-! ## A059500.P4842557215915396846

`∩[A059456(n+1), A226567(n+1)]`
-/

namespace A059500.P4842557215915396846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226567 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059500.P4842557215915396846

namespace A059500

/-- `∩[A059456(n+1), A226567(n+1)]` -/
def P4842557215915396846.Spec : Prop :=
  ∀ n, (P4842557215915396846.a n : ℤ) = A059500 (n + 1)

end A059500

/-! ## A059500.P14548556902286123512

`∩[A099184(n+2), A226567(n+1)]`
-/

namespace A059500.P14548556902286123512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099184 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226567 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059500.P14548556902286123512

namespace A059500

/-- `∩[A099184(n+2), A226567(n+1)]` -/
def P14548556902286123512.Spec : Prop :=
  ∀ n, (P14548556902286123512.a n : ℤ) = A059500 (n + 1)

end A059500

/-!
# A059502: a(n) = (3*n*F(2n-1) + (3-n)*F(2n))/5 where F() = Fibonacci numbers A000045.

The programs for A059502, the canonical program `A059502.P7300969934803314136` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059502 has offset 0).

The definition of A059502 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059502.P7300969934803314136

`Δ[A116845(C(2, n+2)+n)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A059502

/-- `Δ[A116845(C(2, n+2)+n)]` -/
def P7300969934803314136.Spec : Prop :=
  ∀ n, P7300969934803314136.a n = A059502 n

theorem P7300969934803314136.correct : P7300969934803314136.Spec := by
  intro n
  simp only [A059502]

end A059502

/-! ## A059502.P7480878685165864158

`∑[A094864(n)]-A094864(n)`
-/

namespace A059502.P7480878685165864158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A094864 n

end

end A059502.P7480878685165864158

namespace A059502

/-- `∑[A094864(n)]-A094864(n)` -/
def P7480878685165864158.Spec : Prop :=
  ∀ n, P7480878685165864158.a n = A059502 n

end A059502

/-! ## A059502.P4052591293232445322

`(A240847(2*n)+A010049(2*n))/2`
-/

namespace A059502.P4052591293232445322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240847 (2 * n) + A010049 (2 * n) : ℚ) / 2

end

end A059502.P4052591293232445322

namespace A059502

/-- `(A240847(2*n)+A010049(2*n))/2` -/
def P4052591293232445322.Spec : Prop :=
  ∀ n, P4052591293232445322.a n = (A059502 n : ℚ)

end A059502

/-! ## A059502.P13085939538408600385

`A010049(2*n)+n*A152163(2*n)`
-/

namespace A059502.P13085939538408600385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (2 * n) + (n : ℤ) * A152163 (2 * n)

end

end A059502.P13085939538408600385

namespace A059502

/-- `A010049(2*n)+n*A152163(2*n)` -/
def P13085939538408600385.Spec : Prop :=
  ∀ n, P13085939538408600385.a n = A059502 n

end A059502

/-! ## A059502.P16070568208122937258

`A240847(2*n)-n*A152163(2*n)`
-/

namespace A059502.P16070568208122937258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240847 (2 * n) - (n : ℤ) * A152163 (2 * n)

end

end A059502.P16070568208122937258

namespace A059502

/-- `A240847(2*n)-n*A152163(2*n)` -/
def P16070568208122937258.Spec : Prop :=
  ∀ n, P16070568208122937258.a n = A059502 n

end A059502

/-! ## A059502.P11758443865663124351

`A000045(2*n)-A240847(2*n+1)/2`
-/

namespace A059502.P11758443865663124351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (2 * n) : ℚ) - (A240847 (2 * n + 1) : ℚ) / 2

end

end A059502.P11758443865663124351

namespace A059502

/-- `A000045(2*n)-A240847(2*n+1)/2` -/
def P11758443865663124351.Spec : Prop :=
  ∀ n, P11758443865663124351.a n = (A059502 n : ℚ)

end A059502

/-! ## A059502.P6191276189478977361

`(A006355(2*n+1)-A240847(2*n+1))/2`
-/

namespace A059502.P6191276189478977361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006355 (2 * n + 1) - A240847 (2 * n + 1) : ℚ) / 2

end

end A059502.P6191276189478977361

namespace A059502

/-- `(A006355(2*n+1)-A240847(2*n+1))/2` -/
def P6191276189478977361.Spec : Prop :=
  ∀ n, P6191276189478977361.a n = (A059502 n : ℚ)

end A059502

/-! ## A059502.P7042672207995543385

`A238846(n)-Δ[A006367(2*n)]`
-/

namespace A059502.P7042672207995543385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006367 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238846 n - (f1 (n + 1) - f1 n)

end

end A059502.P7042672207995543385

namespace A059502

/-- `A238846(n)-Δ[A006367(2*n)]` -/
def P7042672207995543385.Spec : Prop :=
  ∀ n, P7042672207995543385.a n = A059502 n

end A059502

/-! ## A059502.P13477945582337666490

`A134512(2*n)-A208354(2*n)`
-/

namespace A059502.P13477945582337666490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134512 (2 * n) - A208354 (2 * n)

end

end A059502.P13477945582337666490

namespace A059502

/-- `A134512(2*n)-A208354(2*n)` -/
def P13477945582337666490.Spec : Prop :=
  ∀ n, P13477945582337666490.a n = A059502 n

end A059502

/-! ## A059502.P6155209025565499924

`A291241(2*n)-A208354(2*n)`
-/

namespace A059502.P6155209025565499924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291241 (2 * n) - A208354 (2 * n)

end

end A059502.P6155209025565499924

namespace A059502

/-- `A291241(2*n)-A208354(2*n)` -/
def P6155209025565499924.Spec : Prop :=
  ∀ n, P6155209025565499924.a n = A059502 n

end A059502

/-! ## A059502.P8702736302669876588

`(A094588(2*n)-A001629(2*n))/2`
-/

namespace A059502.P8702736302669876588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094588 (2 * n) - A001629 (2 * n) : ℚ) / 2

end

end A059502.P8702736302669876588

namespace A059502

/-- `(A094588(2*n)-A001629(2*n))/2` -/
def P8702736302669876588.Spec : Prop :=
  ∀ n, P8702736302669876588.a n = (A059502 n : ℚ)

end A059502

/-! ## A059502.P17503552431475824892

`A029907(2*n)-A001629(2*n+1)/2`
-/

namespace A059502.P17503552431475824892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029907 (2 * n) : ℚ) - (A001629 (2 * n + 1) : ℚ) / 2

end

end A059502.P17503552431475824892

namespace A059502

/-- `A029907(2*n)-A001629(2*n+1)/2` -/
def P17503552431475824892.Spec : Prop :=
  ∀ n, P17503552431475824892.a n = (A059502 n : ℚ)

end A059502

/-! ## A059502.P5705003076889792392

`(A208354(2*n+1)-A208354(2*n))/2`
-/

namespace A059502.P5705003076889792392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208354 (2 * n + 1) - A208354 (2 * n) : ℚ) / 2

end

end A059502.P5705003076889792392

namespace A059502

/-- `(A208354(2*n+1)-A208354(2*n))/2` -/
def P5705003076889792392.Spec : Prop :=
  ∀ n, P5705003076889792392.a n = (A059502 n : ℚ)

end A059502

/-! ## A059502.P17097293062149946571

`A117202(n)-A129722(A004273(n))`
-/

namespace A059502.P17097293062149946571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117202 n - A129722 (A004273 n).toNat

end

end A059502.P17097293062149946571

namespace A059502

/-- `A117202(n)-A129722(A004273(n))` -/
def P17097293062149946571.Spec : Prop :=
  ∀ n, P17097293062149946571.a n = A059502 n

end A059502

/-! ## A059502.P13635626386464077024

`Δ[A094864(n)-A001519(n)]-A094864(n)`
-/

namespace A059502.P13635626386464077024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094864 n - A001519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A094864 n

end

end A059502.P13635626386464077024

namespace A059502

/-- `Δ[A094864(n)-A001519(n)]-A094864(n)` -/
def P13635626386464077024.Spec : Prop :=
  ∀ n, P13635626386464077024.a n = A059502 n

end A059502

/-! ## A059502.P13406051923176838638

`A029907(2*n)+A134512(2*n)-A029907(2*n+1)`
-/

namespace A059502.P13406051923176838638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 (2 * n) + (A134512 (2 * n) - A029907 (2 * n + 1))

end

end A059502.P13406051923176838638

namespace A059502

/-- `A029907(2*n)+A134512(2*n)-A029907(2*n+1)` -/
def P13406051923176838638.Spec : Prop :=
  ∀ n, P13406051923176838638.a n = A059502 n

end A059502

/-! ## A059502.P14865075160593691687

`A029907(2*n)+A291241(2*n)-A029907(2*n+1)`
-/

namespace A059502.P14865075160593691687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 (2 * n) + (A291241 (2 * n) - A029907 (2 * n + 1))

end

end A059502.P14865075160593691687

namespace A059502

/-- `A029907(2*n)+A291241(2*n)-A029907(2*n+1)` -/
def P14865075160593691687.Spec : Prop :=
  ∀ n, P14865075160593691687.a n = A059502 n

end A059502

/-! ## A059502.P9852566333060904748

`A088209(2*n)-A001871(n)`
-/

namespace A059502.P9852566333060904748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088209 (2 * n) - A001871 n

end

end A059502.P9852566333060904748

namespace A059502

/-- `A088209(2*n)-A001871(n)` -/
def P9852566333060904748.Spec : Prop :=
  ∀ n, P9852566333060904748.a n = A059502 n

end A059502

/-! ## A059502.P9131210589003394019

`A099920(2*n+1)/2-A055244(2*n)`
-/

namespace A059502.P9131210589003394019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099920 (2 * n + 1) : ℚ) / 2 - (A055244 (2 * n) : ℚ)

end

end A059502.P9131210589003394019

namespace A059502

/-- `A099920(2*n+1)/2-A055244(2*n)` -/
def P9131210589003394019.Spec : Prop :=
  ∀ n, P9131210589003394019.a n = (A059502 n : ℚ)

end A059502

/-! ## A059502.P8281590959477397713

`(A055244(2*n+1)-A007502(2*n+1))/2`
-/

namespace A059502.P8281590959477397713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055244 (2 * n + 1) - A007502 (2 * n + 1) : ℚ) / 2

end

end A059502.P8281590959477397713

namespace A059502

/-- `(A055244(2*n+1)-A007502(2*n+1))/2` -/
def P8281590959477397713.Spec : Prop :=
  ∀ n, P8281590959477397713.a n = (A059502 n : ℚ)

end A059502

/-!
# A059504: Numbers k with the property that reading k gives correct, although not necessarily complete, information about itself.

The programs for A059504, there is no canonical definition to state claims against.
-/

/-! ## A059504.P17024235635494455131

`A326180(A259153(n))+A047842(n)`
-/

namespace A059504.P17024235635494455131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326180 (A259153 n).toNat + A047842 n

end

end A059504.P17024235635494455131

/-!
# A059505: Transform of A059502 applied to sequence 2,3,4,...

The programs for A059505, the canonical program `A059505.P6125141901206031610` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059505 has offset 1).

The definition of A059505 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059505.P6125141901206031610

`6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` with `a(0)=2, a(1)=5, a(2)=14, a(3)=40`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059505

/-- `6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` -/
def P6125141901206031610.Spec : Prop :=
  ∀ n, P6125141901206031610.a n = A059505 (n + 1)

theorem P6125141901206031610.correct : P6125141901206031610.Spec := by
  intro n
  simp only [A059505, Nat.add_sub_cancel]

end A059505

/-! ## A059505.P14505816302669966254

`A059506(n+1)-A122367(n)`
-/

namespace A059505.P14505816302669966254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059506 (n + 1) - A122367 n

end

end A059505.P14505816302669966254

namespace A059505

/-- `A059506(n+1)-A122367(n)` -/
def P14505816302669966254.Spec : Prop :=
  ∀ n, P14505816302669966254.a n = A059505 (n + 1)

end A059505

/-! ## A059505.P4131917772250991242

`A059506(n+1)-Δ[A001906(n)]`
-/

namespace A059505.P4131917772250991242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059506 (n + 1) - (f1 (n + 1) - f1 n)

end

end A059505.P4131917772250991242

namespace A059505

/-- `A059506(n+1)-Δ[A001906(n)]` -/
def P4131917772250991242.Spec : Prop :=
  ∀ n, P4131917772250991242.a n = A059505 (n + 1)

end A059505

/-! ## A059505.P13175113099575985614

`A059502(n+1)+A001519(n+1)`
-/

namespace A059505.P13175113099575985614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059502 (n + 1) + A001519 (n + 1)

end

end A059505.P13175113099575985614

namespace A059505

/-- `A059502(n+1)+A001519(n+1)` -/
def P13175113099575985614.Spec : Prop :=
  ∀ n, P13175113099575985614.a n = A059505 (n + 1)

end A059505

/-! ## A059505.P16731728497888893150

`A059507(n+1)-2*A122367(n)`
-/

namespace A059505.P16731728497888893150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059507 (n + 1) - 2 * A122367 n

end

end A059505.P16731728497888893150

namespace A059505

/-- `A059507(n+1)-2*A122367(n)` -/
def P16731728497888893150.Spec : Prop :=
  ∀ n, P16731728497888893150.a n = A059505 (n + 1)

end A059505

/-! ## A059505.P18031611440717805013

`A000045(2*n+1)+∑[A094864(n)]`
-/

namespace A059505.P18031611440717805013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059505.P18031611440717805013

namespace A059505

/-- `A000045(2*n+1)+∑[A094864(n)]` -/
def P18031611440717805013.Spec : Prop :=
  ∀ n, P18031611440717805013.a n = A059505 (n + 1)

end A059505

/-! ## A059505.P2868341261889860866

`A059507(n+1)-Δ[2*A001906(n)]`
-/

namespace A059505.P2868341261889860866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059507 (n + 1) - (f1 (n + 1) - f1 n)

end

end A059505.P2868341261889860866

namespace A059505

/-- `A059507(n+1)-Δ[2*A001906(n)]` -/
def P2868341261889860866.Spec : Prop :=
  ∀ n, P2868341261889860866.a n = A059505 (n + 1)

end A059505

/-! ## A059505.P14160790522652707524

`A059507(n+1)-Δ[2*A055588(n)]`
-/

namespace A059505.P14160790522652707524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059507 (n + 1) - (f1 (n + 1) - f1 n)

end

end A059505.P14160790522652707524

namespace A059505

/-- `A059507(n+1)-Δ[2*A055588(n)]` -/
def P14160790522652707524.Spec : Prop :=
  ∀ n, P14160790522652707524.a n = A059505 (n + 1)

end A059505

/-! ## A059505.P10633797316492912313

`A059502(n+1)+A000045(2*n+1)`
-/

namespace A059505.P10633797316492912313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059502 (n + 1) + A000045 (2 * n + 1)

end

end A059505.P10633797316492912313

namespace A059505

/-- `A059502(n+1)+A000045(2*n+1)` -/
def P10633797316492912313.Spec : Prop :=
  ∀ n, P10633797316492912313.a n = A059505 (n + 1)

end A059505

/-! ## A059505.P1681509914793433198

`A059506(n+1)-A000045(2*n+1)`
-/

namespace A059505.P1681509914793433198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059506 (n + 1) - A000045 (2 * n + 1)

end

end A059505.P1681509914793433198

namespace A059505

/-- `A059506(n+1)-A000045(2*n+1)` -/
def P1681509914793433198.Spec : Prop :=
  ∀ n, P1681509914793433198.a n = A059505 (n + 1)

end A059505

/-! ## A059505.P12679283885627635330

`A059502(n+1)+A052995(n+1)/2`
-/

namespace A059505.P12679283885627635330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059502 (n + 1) : ℚ) + (A052995 (n + 1) : ℚ) / 2

end

end A059505.P12679283885627635330

namespace A059505

/-- `A059502(n+1)+A052995(n+1)/2` -/
def P12679283885627635330.Spec : Prop :=
  ∀ n, P12679283885627635330.a n = (A059505 (n + 1) : ℚ)

end A059505

/-! ## A059505.P18289352317855087664

`A152163(A005408(n+1))+A059506(n+1)`
-/

namespace A059505.P18289352317855087664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 (A005408 (n + 1)).toNat + A059506 (n + 1)

end

end A059505.P18289352317855087664

namespace A059505

/-- `A152163(A005408(n+1))+A059506(n+1)` -/
def P18289352317855087664.Spec : Prop :=
  ∀ n, P18289352317855087664.a n = A059505 (n + 1)

end A059505

/-! ## A059505.P11361331665390891546

`A005207(n+1)+A059502(n+1)+A056014(n+1)`
-/

namespace A059505.P11361331665390891546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005207 (n + 1) + (A059502 (n + 1) + A056014 (n + 1))

end

end A059505.P11361331665390891546

namespace A059505

/-- `A005207(n+1)+A059502(n+1)+A056014(n+1)` -/
def P11361331665390891546.Spec : Prop :=
  ∀ n, P11361331665390891546.a n = A059505 (n + 1)

end A059505

/-! ## A059505.P16922691997315689006

`A059502(n+1)+A059507(n+1)-A059506(n+1)`
-/

namespace A059505.P16922691997315689006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059502 (n + 1) + (A059507 (n + 1) - A059506 (n + 1))

end

end A059505.P16922691997315689006

namespace A059505

/-- `A059502(n+1)+A059507(n+1)-A059506(n+1)` -/
def P16922691997315689006.Spec : Prop :=
  ∀ n, P16922691997315689006.a n = A059505 (n + 1)

end A059505

/-! ## A059505.P5792777382317667104

`A059502(n+1)+A059508(n+1)-A059507(n+1)`
-/

namespace A059505.P5792777382317667104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059502 (n + 1) + (A059508 (n + 1) - A059507 (n + 1))

end

end A059505.P5792777382317667104

namespace A059505

/-- `A059502(n+1)+A059508(n+1)-A059507(n+1)` -/
def P5792777382317667104.Spec : Prop :=
  ∀ n, P5792777382317667104.a n = A059505 (n + 1)

end A059505

/-! ## A059505.P9350306474348486419

`A059506(n+1)+A059507(n+1)-A059508(n+1)`
-/

namespace A059505.P9350306474348486419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059506 (n + 1) + (A059507 (n + 1) - A059508 (n + 1))

end

end A059505.P9350306474348486419

namespace A059505

/-- `A059506(n+1)+A059507(n+1)-A059508(n+1)` -/
def P9350306474348486419.Spec : Prop :=
  ∀ n, P9350306474348486419.a n = A059505 (n + 1)

end A059505

/-! ## A059505.P3819166061244096102

`A191830(2*(n+2))/2`
-/

namespace A059505.P3819166061244096102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191830 (2 * (n + 2)) : ℚ) / 2

end

end A059505.P3819166061244096102

namespace A059505

/-- `A191830(2*(n+2))/2` -/
def P3819166061244096102.Spec : Prop :=
  ∀ n, P3819166061244096102.a n = (A059505 (n + 1) : ℚ)

end A059505

/-! ## A059505.P11159312124015304786

`A001519(n)+Δ[A094864(n)]`
-/

namespace A059505.P11159312124015304786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n + (f1 (n + 1) - f1 n)

end

end A059505.P11159312124015304786

namespace A059505

/-- `A001519(n)+Δ[A094864(n)]` -/
def P11159312124015304786.Spec : Prop :=
  ∀ n, P11159312124015304786.a n = A059505 (n + 1)

end A059505

/-!
# A059506: Transform of A059502 applied to sequence 3,4,5,...

The programs for A059506, the canonical program `A059506.P13011842678180611076` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059506 has offset 1).

The definition of A059506 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059506.P13011842678180611076

`6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` with `a(0)=3, a(1)=7, a(2)=19, a(3)=53`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059506

/-- `6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` -/
def P13011842678180611076.Spec : Prop :=
  ∀ n, P13011842678180611076.a n = A059506 (n + 1)

theorem P13011842678180611076.correct : P13011842678180611076.Spec := by
  intro n
  simp only [A059506, Nat.add_sub_cancel]

end A059506

/-! ## A059506.P6033222505401889985

`A122367(n)+A059505(n+1)`
-/

namespace A059506.P6033222505401889985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n + A059505 (n + 1)

end

end A059506.P6033222505401889985

namespace A059506

/-- `A122367(n)+A059505(n+1)` -/
def P6033222505401889985.Spec : Prop :=
  ∀ n, P6033222505401889985.a n = A059506 (n + 1)

end A059506

/-! ## A059506.P3583296141496749433

`A059507(n+1)-A122367(n)`
-/

namespace A059506.P3583296141496749433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059507 (n + 1) - A122367 n

end

end A059506.P3583296141496749433

namespace A059506

/-- `A059507(n+1)-A122367(n)` -/
def P3583296141496749433.Spec : Prop :=
  ∀ n, P3583296141496749433.a n = A059506 (n + 1)

end A059506

/-! ## A059506.P10992056993033400458

`A059505(n+1)+∑[A088305(n)]`
-/

namespace A059506.P10992056993033400458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059505 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059506.P10992056993033400458

namespace A059506

/-- `A059505(n+1)+∑[A088305(n)]` -/
def P10992056993033400458.Spec : Prop :=
  ∀ n, P10992056993033400458.a n = A059506 (n + 1)

end A059506

/-! ## A059506.P6921480305757139474

`A059505(n+1)+Δ[A001906(n)]`
-/

namespace A059506.P6921480305757139474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059505 (n + 1) + (f1 (n + 1) - f1 n)

end

end A059506.P6921480305757139474

namespace A059506

/-- `A059505(n+1)+Δ[A001906(n)]` -/
def P6921480305757139474.Spec : Prop :=
  ∀ n, P6921480305757139474.a n = A059506 (n + 1)

end A059506

/-! ## A059506.P8116283463493000002

`A059507(n+1)-Δ[A001906(n)]`
-/

namespace A059506.P8116283463493000002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059507 (n + 1) - (f1 (n + 1) - f1 n)

end

end A059506.P8116283463493000002

namespace A059506

/-- `A059507(n+1)-Δ[A001906(n)]` -/
def P8116283463493000002.Spec : Prop :=
  ∀ n, P8116283463493000002.a n = A059506 (n + 1)

end A059506

/-! ## A059506.P5947440754412648363

`A059507(n+1)-Δ[A055588(n)]`
-/

namespace A059506.P5947440754412648363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059507 (n + 1) - (f1 (n + 1) - f1 n)

end

end A059506.P5947440754412648363

namespace A059506

/-- `A059507(n+1)-Δ[A055588(n)]` -/
def P5947440754412648363.Spec : Prop :=
  ∀ n, P5947440754412648363.a n = A059506 (n + 1)

end A059506

/-! ## A059506.P15355434358490500727

`A059505(n+1)+A001519(n+1)`
-/

namespace A059506.P15355434358490500727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059505 (n + 1) + A001519 (n + 1)

end

end A059506.P15355434358490500727

namespace A059506

/-- `A059505(n+1)+A001519(n+1)` -/
def P15355434358490500727.Spec : Prop :=
  ∀ n, P15355434358490500727.a n = A059506 (n + 1)

end A059506

/-! ## A059506.P4201906186920624200

`A059502(n+1)+A052995(n+1)`
-/

namespace A059506.P4201906186920624200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059502 (n + 1) + A052995 (n + 1)

end

end A059506.P4201906186920624200

namespace A059506

/-- `A059502(n+1)+A052995(n+1)` -/
def P4201906186920624200.Spec : Prop :=
  ∀ n, P4201906186920624200.a n = A059506 (n + 1)

end A059506

/-! ## A059506.P1013397853517918252

`A059502(n+1)+A055819(n+1)`
-/

namespace A059506.P1013397853517918252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059502 (n + 1) + A055819 (n + 1)

end

end A059506.P1013397853517918252

namespace A059506

/-- `A059502(n+1)+A055819(n+1)` -/
def P1013397853517918252.Spec : Prop :=
  ∀ n, P1013397853517918252.a n = A059506 (n + 1)

end A059506

/-! ## A059506.P5024151070423406471

`A059508(n+1)-2*A122367(n)`
-/

namespace A059506.P5024151070423406471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059508 (n + 1) - 2 * A122367 n

end

end A059506.P5024151070423406471

namespace A059506

/-- `A059508(n+1)-2*A122367(n)` -/
def P5024151070423406471.Spec : Prop :=
  ∀ n, P5024151070423406471.a n = A059506 (n + 1)

end A059506

/-! ## A059506.P936340898132804116

`A059507(n+1)-A000045(Δ[n²])`
-/

namespace A059506.P936340898132804116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059507 (n + 1) - A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A059506.P936340898132804116

namespace A059506

/-- `A059507(n+1)-A000045(Δ[n²])` -/
def P936340898132804116.Spec : Prop :=
  ∀ n, P936340898132804116.a n = A059506 (n + 1)

end A059506

/-! ## A059506.P627105875716034275

`A059508(n+1)-Δ[2*A001906(n)]`
-/

namespace A059506.P627105875716034275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059508 (n + 1) - (f1 (n + 1) - f1 n)

end

end A059506.P627105875716034275

namespace A059506

/-- `A059508(n+1)-Δ[2*A001906(n)]` -/
def P627105875716034275.Spec : Prop :=
  ∀ n, P627105875716034275.a n = A059506 (n + 1)

end A059506

/-! ## A059506.P17858773508953003074

`A059505(n+1)+A000045(2*n+1)`
-/

namespace A059506.P17858773508953003074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059505 (n + 1) + A000045 (2 * n + 1)

end

end A059506.P17858773508953003074

namespace A059506

/-- `A059505(n+1)+A000045(2*n+1)` -/
def P17858773508953003074.Spec : Prop :=
  ∀ n, P17858773508953003074.a n = A059506 (n + 1)

end A059506

/-! ## A059506.P11594032596624418334

`A059502(n+1)+2*A001519(n+1)`
-/

namespace A059506.P11594032596624418334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059502 (n + 1) + 2 * A001519 (n + 1)

end

end A059506.P11594032596624418334

namespace A059506

/-- `A059502(n+1)+2*A001519(n+1)` -/
def P11594032596624418334.Spec : Prop :=
  ∀ n, P11594032596624418334.a n = A059506 (n + 1)

end A059506

/-! ## A059506.P11767092410706630727

`Δ[2*A000045(2*n)]+∑[A094864(n)]`
-/

namespace A059506.P11767092410706630727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A059506.P11767092410706630727

namespace A059506

/-- `Δ[2*A000045(2*n)]+∑[A094864(n)]` -/
def P11767092410706630727.Spec : Prop :=
  ∀ n, P11767092410706630727.a n = A059506 (n + 1)

end A059506

/-! ## A059506.P7387587687735188081

`A059502(n+1)+2*A000045(2*n+1)`
-/

namespace A059506.P7387587687735188081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059502 (n + 1) + 2 * A000045 (2 * n + 1)

end

end A059506.P7387587687735188081

namespace A059506

/-- `A059502(n+1)+2*A000045(2*n+1)` -/
def P7387587687735188081.Spec : Prop :=
  ∀ n, P7387587687735188081.a n = A059506 (n + 1)

end A059506

/-! ## A059506.P1337854801100577010

`A059505(n+1)+Δ[A103609(A008574(n))]`
-/

namespace A059506.P1337854801100577010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A008574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059505 (n + 1) + (f1 (n + 1) - f1 n)

end

end A059506.P1337854801100577010

namespace A059506

/-- `A059505(n+1)+Δ[A103609(A008574(n))]` -/
def P1337854801100577010.Spec : Prop :=
  ∀ n, P1337854801100577010.a n = A059506 (n + 1)

end A059506

/-! ## A059506.P8460082256750979757

`A103609(A008574(n)+2)+A059505(n+1)`
-/

namespace A059506.P8460082256750979757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A008574 n + 2).toNat + A059505 (n + 1)

end

end A059506.P8460082256750979757

namespace A059506

/-- `A103609(A008574(n)+2)+A059505(n+1)` -/
def P8460082256750979757.Spec : Prop :=
  ∀ n, P8460082256750979757.a n = A059506 (n + 1)

end A059506

/-! ## A059506.P14616150075860194079

`A059505(n+1)+A059505(n+1)-A059502(n+1)`
-/

namespace A059506.P14616150075860194079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059505 (n + 1) + (A059505 (n + 1) - A059502 (n + 1))

end

end A059506.P14616150075860194079

namespace A059506

/-- `A059505(n+1)+A059505(n+1)-A059502(n+1)` -/
def P14616150075860194079.Spec : Prop :=
  ∀ n, P14616150075860194079.a n = A059506 (n + 1)

end A059506

/-!
# A059507: Transform of A059502 applied to sequence 4,5,6,...

The programs for A059507, the canonical program `A059507.P13669767727015000993` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059507 has offset 1).

The definition of A059507 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059507.P13669767727015000993

`6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` with `a(0)=4, a(1)=9, a(2)=24, a(3)=66`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059507

/-- `6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` -/
def P13669767727015000993.Spec : Prop :=
  ∀ n, P13669767727015000993.a n = A059507 (n + 1)

theorem P13669767727015000993.correct : P13669767727015000993.Spec := by
  intro n
  simp only [A059507, Nat.add_sub_cancel]

end A059507

/-! ## A059507.P15297469768185531957

`A122367(n)+A059506(n+1)`
-/

namespace A059507.P15297469768185531957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n + A059506 (n + 1)

end

end A059507.P15297469768185531957

namespace A059507

/-- `A122367(n)+A059506(n+1)` -/
def P15297469768185531957.Spec : Prop :=
  ∀ n, P15297469768185531957.a n = A059507 (n + 1)

end A059507

/-! ## A059507.P12272626189757142897

`A059508(n+1)-A122367(n)`
-/

namespace A059507.P12272626189757142897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059508 (n + 1) - A122367 n

end

end A059507.P12272626189757142897

namespace A059507

/-- `A059508(n+1)-A122367(n)` -/
def P12272626189757142897.Spec : Prop :=
  ∀ n, P12272626189757142897.a n = A059507 (n + 1)

end A059507

/-! ## A059507.P14150916489721389724

`A059506(n+1)+Δ[A001906(n)]`
-/

namespace A059507.P14150916489721389724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059506 (n + 1) + (f1 (n + 1) - f1 n)

end

end A059507.P14150916489721389724

namespace A059507

/-- `A059506(n+1)+Δ[A001906(n)]` -/
def P14150916489721389724.Spec : Prop :=
  ∀ n, P14150916489721389724.a n = A059507 (n + 1)

end A059507

/-! ## A059507.P4139678885354533614

`A059508(n+1)-Δ[A001906(n)]`
-/

namespace A059507.P4139678885354533614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059508 (n + 1) - (f1 (n + 1) - f1 n)

end

end A059507.P4139678885354533614

namespace A059507

/-- `A059508(n+1)-Δ[A001906(n)]` -/
def P4139678885354533614.Spec : Prop :=
  ∀ n, P4139678885354533614.a n = A059507 (n + 1)

end A059507

/-! ## A059507.P11283297743485584047

`A059508(n+1)-A001519(n+1)`
-/

namespace A059507.P11283297743485584047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059508 (n + 1) - A001519 (n + 1)

end

end A059507.P11283297743485584047

namespace A059507

/-- `A059508(n+1)-A001519(n+1)` -/
def P11283297743485584047.Spec : Prop :=
  ∀ n, P11283297743485584047.a n = A059507 (n + 1)

end A059507

/-! ## A059507.P347385087316620656

`A059505(n+1)+2*A122367(n)`
-/

namespace A059507.P347385087316620656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059505 (n + 1) + 2 * A122367 n

end

end A059507.P347385087316620656

namespace A059507

/-- `A059505(n+1)+2*A122367(n)` -/
def P347385087316620656.Spec : Prop :=
  ∀ n, P347385087316620656.a n = A059507 (n + 1)

end A059507

/-! ## A059507.P3129224944995249506

`A059505(n+1)+∑[2*A088305(n)]`
-/

namespace A059507.P3129224944995249506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059505 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059507.P3129224944995249506

namespace A059507

/-- `A059505(n+1)+∑[2*A088305(n)]` -/
def P3129224944995249506.Spec : Prop :=
  ∀ n, P3129224944995249506.a n = A059507 (n + 1)

end A059507

/-! ## A059507.P16087352960498260698

`A059505(n+1)+Δ[2*A001906(n)]`
-/

namespace A059507.P16087352960498260698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059505 (n + 1) + (f1 (n + 1) - f1 n)

end

end A059507.P16087352960498260698

namespace A059507

/-- `A059505(n+1)+Δ[2*A001906(n)]` -/
def P16087352960498260698.Spec : Prop :=
  ∀ n, P16087352960498260698.a n = A059507 (n + 1)

end A059507

/-! ## A059507.P2418246744834079519

`A059506(n+1)+A000045(2*n+1)`
-/

namespace A059507.P2418246744834079519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059506 (n + 1) + A000045 (2 * n + 1)

end

end A059507.P2418246744834079519

namespace A059507

/-- `A059506(n+1)+A000045(2*n+1)` -/
def P2418246744834079519.Spec : Prop :=
  ∀ n, P2418246744834079519.a n = A059507 (n + 1)

end A059507

/-! ## A059507.P17320405924275711478

`A059508(n+1)-A000045(2*n+1)`
-/

namespace A059507.P17320405924275711478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059508 (n + 1) - A000045 (2 * n + 1)

end

end A059507.P17320405924275711478

namespace A059507

/-- `A059508(n+1)-A000045(2*n+1)` -/
def P17320405924275711478.Spec : Prop :=
  ∀ n, P17320405924275711478.a n = A059507 (n + 1)

end A059507

/-! ## A059507.P3917457451420677828

`A059502(n+1)+3*A001519(n+1)`
-/

namespace A059507.P3917457451420677828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059502 (n + 1) + 3 * A001519 (n + 1)

end

end A059507.P3917457451420677828

namespace A059507

/-- `A059502(n+1)+3*A001519(n+1)` -/
def P3917457451420677828.Spec : Prop :=
  ∀ n, P3917457451420677828.a n = A059507 (n + 1)

end A059507

/-! ## A059507.P9993792656847891209

`A059506(n+1)-A152163(A005408(n+1))`
-/

namespace A059507.P9993792656847891209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059506 (n + 1) - A152163 (A005408 (n + 1)).toNat

end

end A059507.P9993792656847891209

namespace A059507

/-- `A059506(n+1)-A152163(A005408(n+1))` -/
def P9993792656847891209.Spec : Prop :=
  ∀ n, P9993792656847891209.a n = A059507 (n + 1)

end A059507

/-! ## A059507.P3670862990154785349

`A059502(n+1)+A059508(n+1)-A059505(n+1)`
-/

namespace A059507.P3670862990154785349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059502 (n + 1) + (A059508 (n + 1) - A059505 (n + 1))

end

end A059507.P3670862990154785349

namespace A059507

/-- `A059502(n+1)+A059508(n+1)-A059505(n+1)` -/
def P3670862990154785349.Spec : Prop :=
  ∀ n, P3670862990154785349.a n = A059507 (n + 1)

end A059507

/-! ## A059507.P4047480140715674647

`A059505(n+1)+A059506(n+1)-A059502(n+1)`
-/

namespace A059507.P4047480140715674647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059505 (n + 1) + (A059506 (n + 1) - A059502 (n + 1))

end

end A059507.P4047480140715674647

namespace A059507

/-- `A059505(n+1)+A059506(n+1)-A059502(n+1)` -/
def P4047480140715674647.Spec : Prop :=
  ∀ n, P4047480140715674647.a n = A059507 (n + 1)

end A059507

/-! ## A059507.P860493610565570642

`A059505(n+1)+A059508(n+1)-A059506(n+1)`
-/

namespace A059507.P860493610565570642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059505 (n + 1) + (A059508 (n + 1) - A059506 (n + 1))

end

end A059507.P860493610565570642

namespace A059507

/-- `A059505(n+1)+A059508(n+1)-A059506(n+1)` -/
def P860493610565570642.Spec : Prop :=
  ∀ n, P860493610565570642.a n = A059507 (n + 1)

end A059507

/-! ## A059507.P15965517513151942676

`2*A059506(n+1)-A059505(n+1)`
-/

namespace A059507.P15965517513151942676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059506 (n + 1) - A059505 (n + 1)

end

end A059507.P15965517513151942676

namespace A059507

/-- `2*A059506(n+1)-A059505(n+1)` -/
def P15965517513151942676.Spec : Prop :=
  ∀ n, P15965517513151942676.a n = A059507 (n + 1)

end A059507

/-! ## A059507.P11680274456134457493

`(A059508(n+1)+A059506(n+1))/2`
-/

namespace A059507.P11680274456134457493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059508 (n + 1) + A059506 (n + 1) : ℚ) / 2

end

end A059507.P11680274456134457493

namespace A059507

/-- `(A059508(n+1)+A059506(n+1))/2` -/
def P11680274456134457493.Spec : Prop :=
  ∀ n, P11680274456134457493.a n = (A059507 (n + 1) : ℚ)

end A059507

/-!
# A059508: Transform of A059502 applied to sequence 5,6,7,...

The programs for A059508, the canonical program `A059508.P10343849907350198924` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059508 has offset 1).

The definition of A059508 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059508.P10343849907350198924

`6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` with `a(0)=5, a(1)=11, a(2)=29, a(3)=79`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059508

/-- `6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` -/
def P10343849907350198924.Spec : Prop :=
  ∀ n, P10343849907350198924.a n = A059508 (n + 1)

theorem P10343849907350198924.correct : P10343849907350198924.Spec := by
  intro n
  simp only [A059508, Nat.add_sub_cancel]

end A059508

/-! ## A059508.P14986167654689752689

`A122367(n)+A059507(n+1)`
-/

namespace A059508.P14986167654689752689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n + A059507 (n + 1)

end

end A059508.P14986167654689752689

namespace A059508

/-- `A122367(n)+A059507(n+1)` -/
def P14986167654689752689.Spec : Prop :=
  ∀ n, P14986167654689752689.a n = A059508 (n + 1)

end A059508

/-! ## A059508.P13281980915756075529

`A059507(n+1)+Δ[A001906(n)]`
-/

namespace A059508.P13281980915756075529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059507 (n + 1) + (f1 (n + 1) - f1 n)

end

end A059508.P13281980915756075529

namespace A059508

/-- `A059507(n+1)+Δ[A001906(n)]` -/
def P13281980915756075529.Spec : Prop :=
  ∀ n, P13281980915756075529.a n = A059508 (n + 1)

end A059508

/-! ## A059508.P3448235559755520395

`A059507(n+1)+Δ[A055588(n)]`
-/

namespace A059508.P3448235559755520395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059507 (n + 1) + (f1 (n + 1) - f1 n)

end

end A059508.P3448235559755520395

namespace A059508

/-- `A059507(n+1)+Δ[A055588(n)]` -/
def P3448235559755520395.Spec : Prop :=
  ∀ n, P3448235559755520395.a n = A059508 (n + 1)

end A059508

/-! ## A059508.P12747224189689881564

`A059506(n+1)+2*A122367(n)`
-/

namespace A059508.P12747224189689881564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059506 (n + 1) + 2 * A122367 n

end

end A059508.P12747224189689881564

namespace A059508

/-- `A059506(n+1)+2*A122367(n)` -/
def P12747224189689881564.Spec : Prop :=
  ∀ n, P12747224189689881564.a n = A059508 (n + 1)

end A059508

/-! ## A059508.P631161037232627365

`A059507(n+1)+A000045(Δ[n²])`
-/

namespace A059508.P631161037232627365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059507 (n + 1) + A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A059508.P631161037232627365

namespace A059508

/-- `A059507(n+1)+A000045(Δ[n²])` -/
def P631161037232627365.Spec : Prop :=
  ∀ n, P631161037232627365.a n = A059508 (n + 1)

end A059508

/-! ## A059508.P1318457487610669879

`A059507(n+1)+Δ[A000045(2*n)]`
-/

namespace A059508.P1318457487610669879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059507 (n + 1) + (f1 (n + 1) - f1 n)

end

end A059508.P1318457487610669879

namespace A059508

/-- `A059507(n+1)+Δ[A000045(2*n)]` -/
def P1318457487610669879.Spec : Prop :=
  ∀ n, P1318457487610669879.a n = A059508 (n + 1)

end A059508

/-! ## A059508.P16397159036817456904

`A059506(n+1)+Δ[2*A001906(n)]`
-/

namespace A059508.P16397159036817456904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059506 (n + 1) + (f1 (n + 1) - f1 n)

end

end A059508.P16397159036817456904

namespace A059508

/-- `A059506(n+1)+Δ[2*A001906(n)]` -/
def P16397159036817456904.Spec : Prop :=
  ∀ n, P16397159036817456904.a n = A059508 (n + 1)

end A059508

/-! ## A059508.P2075892559618009287

`A059502(n+1)+2*A052995(n+1)`
-/

namespace A059508.P2075892559618009287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059502 (n + 1) + 2 * A052995 (n + 1)

end

end A059508.P2075892559618009287

namespace A059508

/-- `A059502(n+1)+2*A052995(n+1)` -/
def P2075892559618009287.Spec : Prop :=
  ∀ n, P2075892559618009287.a n = A059508 (n + 1)

end A059508

/-! ## A059508.P14127133920598379566

`A059505(n+1)+A059507(n+1)-A059502(n+1)`
-/

namespace A059508.P14127133920598379566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059505 (n + 1) + (A059507 (n + 1) - A059502 (n + 1))

end

end A059508.P14127133920598379566

namespace A059508

/-- `A059505(n+1)+A059507(n+1)-A059502(n+1)` -/
def P14127133920598379566.Spec : Prop :=
  ∀ n, P14127133920598379566.a n = A059508 (n + 1)

end A059508

/-! ## A059508.P13907172748659799657

`A059506(n+1)+A059506(n+1)-A059502(n+1)`
-/

namespace A059508.P13907172748659799657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059506 (n + 1) + (A059506 (n + 1) - A059502 (n + 1))

end

end A059508.P13907172748659799657

namespace A059508

/-- `A059506(n+1)+A059506(n+1)-A059502(n+1)` -/
def P13907172748659799657.Spec : Prop :=
  ∀ n, P13907172748659799657.a n = A059508 (n + 1)

end A059508

/-! ## A059508.P10822413789574980877

`A059506(n+1)+A059507(n+1)-A059505(n+1)`
-/

namespace A059508.P10822413789574980877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059506 (n + 1) + (A059507 (n + 1) - A059505 (n + 1))

end

end A059508.P10822413789574980877

namespace A059508

/-- `A059506(n+1)+A059507(n+1)-A059505(n+1)` -/
def P10822413789574980877.Spec : Prop :=
  ∀ n, P10822413789574980877.a n = A059508 (n + 1)

end A059508

/-! ## A059508.P13166743440540263993

`2*A059507(n+1)-A059506(n+1)`
-/

namespace A059508.P13166743440540263993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059507 (n + 1) - A059506 (n + 1)

end

end A059508.P13166743440540263993

namespace A059508

/-- `2*A059507(n+1)-A059506(n+1)` -/
def P13166743440540263993.Spec : Prop :=
  ∀ n, P13166743440540263993.a n = A059508 (n + 1)

end A059508

/-!
# A059509: Main diagonal of the array A059503.

The programs for A059509, the canonical program `A059509.P2193854242965822801` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059509 has offset 1).

The definition of A059509 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059509.P2193854242965822801

`6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` with `a(0)=1, a(1)=5, a(2)=19, a(3)=66`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059509

/-- `6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` -/
def P2193854242965822801.Spec : Prop :=
  ∀ n, P2193854242965822801.a n = A059509 (n + 1)

theorem P2193854242965822801.correct : P2193854242965822801.Spec := by
  intro n
  simp only [A059509, Nat.add_sub_cancel]

end A059509

/-! ## A059509.P7633707380017192257

`A001871(n)-A317408(n)`
-/

namespace A059509.P7633707380017192257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001871 n - A317408 n

end

end A059509.P7633707380017192257

namespace A059509

/-- `A001871(n)-A317408(n)` -/
def P7633707380017192257.Spec : Prop :=
  ∀ n, P7633707380017192257.a n = A059509 (n + 1)

end A059509

/-! ## A059509.P12739049941470705941

`∑[A001870(n)]-A317408(n)`
-/

namespace A059509.P12739049941470705941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A317408 n

end

end A059509.P12739049941470705941

namespace A059509

/-- `∑[A001870(n)]-A317408(n)` -/
def P12739049941470705941.Spec : Prop :=
  ∀ n, P12739049941470705941.a n = A059509 (n + 1)

end A059509

/-! ## A059509.P15561658174710754527

`A001871(n)-n*A001906(n)`
-/

namespace A059509.P15561658174710754527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001871 n - (n : ℤ) * A001906 n

end

end A059509.P15561658174710754527

namespace A059509

/-- `A001871(n)-n*A001906(n)` -/
def P15561658174710754527.Spec : Prop :=
  ∀ n, P15561658174710754527.a n = A059509 (n + 1)

end A059509

/-! ## A059509.P8927727205909849331

`A030267(n+1)+A001629(2*n)`
-/

namespace A059509.P8927727205909849331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030267 (n + 1) + A001629 (2 * n)

end

end A059509.P8927727205909849331

namespace A059509

/-- `A030267(n+1)+A001629(2*n)` -/
def P8927727205909849331.Spec : Prop :=
  ∀ n, P8927727205909849331.a n = A059509 (n + 1)

end A059509

/-! ## A059509.P18226101975836248339

`A117202(n)+A029907(2*n+1)`
-/

namespace A059509.P18226101975836248339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117202 n + A029907 (2 * n + 1)

end

end A059509.P18226101975836248339

namespace A059509

/-- `A117202(n)+A029907(2*n+1)` -/
def P18226101975836248339.Spec : Prop :=
  ∀ n, P18226101975836248339.a n = A059509 (n + 1)

end A059509

/-! ## A059509.P8732974418027005151

`A317408(n+1)-A010049(2*n)`
-/

namespace A059509.P8732974418027005151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317408 (n + 1) - A010049 (2 * n)

end

end A059509.P8732974418027005151

namespace A059509

/-- `A317408(n+1)-A010049(2*n)` -/
def P8732974418027005151.Spec : Prop :=
  ∀ n, P8732974418027005151.a n = A059509 (n + 1)

end A059509

/-! ## A059509.P6595085847423967954

`A129720(2*n+1)+A001629(2*n)`
-/

namespace A059509.P6595085847423967954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129720 (2 * n + 1) + A001629 (2 * n)

end

end A059509.P6595085847423967954

namespace A059509

/-- `A129720(2*n+1)+A001629(2*n)` -/
def P6595085847423967954.Spec : Prop :=
  ∀ n, P6595085847423967954.a n = A059509 (n + 1)

end A059509

/-! ## A059509.P3938193093415768460

`A134512(2*n+1)+A001629(2*n)`
-/

namespace A059509.P3938193093415768460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134512 (2 * n + 1) + A001629 (2 * n)

end

end A059509.P3938193093415768460

namespace A059509

/-- `A134512(2*n+1)+A001629(2*n)` -/
def P3938193093415768460.Spec : Prop :=
  ∀ n, P3938193093415768460.a n = A059509 (n + 1)

end A059509

/-! ## A059509.P10776937599012648974

`A059502(n+1)+n*A001519(n+1)`
-/

namespace A059509.P10776937599012648974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059502 (n + 1) + (n : ℤ) * A001519 (n + 1)

end

end A059509.P10776937599012648974

namespace A059509

/-- `A059502(n+1)+n*A001519(n+1)` -/
def P10776937599012648974.Spec : Prop :=
  ∀ n, P10776937599012648974.a n = A059509 (n + 1)

end A059509

/-! ## A059509.P14816307180358106434

`A059502(n+1)+n*A000045(2*n+1)`
-/

namespace A059509.P14816307180358106434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059502 (n + 1) + (n : ℤ) * A000045 (2 * n + 1)

end

end A059509.P14816307180358106434

namespace A059509

/-- `A059502(n+1)+n*A000045(2*n+1)` -/
def P14816307180358106434.Spec : Prop :=
  ∀ n, P14816307180358106434.a n = A059509 (n + 1)

end A059509

/-! ## A059509.P12658614808286173097

`A029907(2*n+1)+n*A212804(2*n)`
-/

namespace A059509.P12658614808286173097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 (2 * n + 1) + (n : ℤ) * A212804 (2 * n)

end

end A059509.P12658614808286173097

namespace A059509

/-- `A029907(2*n+1)+n*A212804(2*n)` -/
def P12658614808286173097.Spec : Prop :=
  ∀ n, P12658614808286173097.a n = A059509 (n + 1)

end A059509

/-! ## A059509.P14862664860468905353

`A029907(2*n+1)-n*A152163(2*n+1)`
-/

namespace A059509.P14862664860468905353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 (2 * n + 1) - (n : ℤ) * A152163 (2 * n + 1)

end

end A059509.P14862664860468905353

namespace A059509

/-- `A029907(2*n+1)-n*A152163(2*n+1)` -/
def P14862664860468905353.Spec : Prop :=
  ∀ n, P14862664860468905353.a n = A059509 (n + 1)

end A059509

/-! ## A059509.P9656777168321756340

`A129722(A004273(n))+Δ[A317408(n)]`
-/

namespace A059509.P9656777168321756340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129722 (A004273 n).toNat + (f1 (n + 1) - f1 n)

end

end A059509.P9656777168321756340

namespace A059509

/-- `A129722(A004273(n))+Δ[A317408(n)]` -/
def P9656777168321756340.Spec : Prop :=
  ∀ n, P9656777168321756340.a n = A059509 (n + 1)

end A059509

/-! ## A059509.P8841952096574874202

`A129722(A144396(n+1))-A317408(n)`
-/

namespace A059509.P8841952096574874202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129722 (A144396 (n + 1)).toNat - A317408 n

end

end A059509.P8841952096574874202

namespace A059509

/-- `A129722(A144396(n+1))-A317408(n)` -/
def P8841952096574874202.Spec : Prop :=
  ∀ n, P8841952096574874202.a n = A059509 (n + 1)

end A059509

/-! ## A059509.P1098800835480289782

`A030267(n+1)+A377679(n+1)+A377670(n+1)`
-/

namespace A059509.P1098800835480289782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030267 (n + 1) + (A377679 (n + 1) + A377670 (n + 1))

end

end A059509.P1098800835480289782

namespace A059509

/-- `A030267(n+1)+A377679(n+1)+A377670(n+1)` -/
def P1098800835480289782.Spec : Prop :=
  ∀ n, P1098800835480289782.a n = A059509 (n + 1)

end A059509

/-! ## A059509.P10294967919640893174

`A134512(2*n+1)+A128620(2*n)-A134512(2*n)`
-/

namespace A059509.P10294967919640893174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134512 (2 * n + 1) + (A128620 (2 * n) - A134512 (2 * n))

end

end A059509.P10294967919640893174

namespace A059509

/-- `A134512(2*n+1)+A128620(2*n)-A134512(2*n)` -/
def P10294967919640893174.Spec : Prop :=
  ∀ n, P10294967919640893174.a n = A059509 (n + 1)

end A059509

/-! ## A059509.P9961446011241658665

`A128620(2*n+1)+A001629(2*n)-A001629(2*n+1)`
-/

namespace A059509.P9961446011241658665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128620 (2 * n + 1) + (A001629 (2 * n) - A001629 (2 * n + 1))

end

end A059509.P9961446011241658665

namespace A059509

/-- `A128620(2*n+1)+A001629(2*n)-A001629(2*n+1)` -/
def P9961446011241658665.Spec : Prop :=
  ∀ n, P9961446011241658665.a n = A059509 (n + 1)

end A059509

/-! ## A059509.P194030423933780334

`(A007502(2*(n+1))+A001629(2*n))/2`
-/

namespace A059509.P194030423933780334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007502 (2 * (n + 1)) + A001629 (2 * n) : ℚ) / 2

end

end A059509.P194030423933780334

namespace A059509

/-- `(A007502(2*(n+1))+A001629(2*n))/2` -/
def P194030423933780334.Spec : Prop :=
  ∀ n, P194030423933780334.a n = (A059509 (n + 1) : ℚ)

end A059509

/-!
# A059510: Main diagonal of the array A059220.

The programs for A059510, there is no canonical definition to state claims against.
-/

/-! ## A059510.P9990324311733295945

`A059220(∑[4*n]+1)`
-/

namespace A059510.P9990324311733295945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059220 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A059510.P9990324311733295945

/-! ## A059510.P1865436352699327376

`A059235((n+1)²+n²)`
-/

namespace A059510.P1865436352699327376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059235 ((n + 1) ^ 2 + n ^ 2)

end

end A059510.P1865436352699327376

/-! ## A059510.P7202900176935654159

`gcd(A000038(n), A059220(A001844(n)))`
-/

namespace A059510.P7202900176935654159
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A059220 (A001844 n).toNat)

end

end A059510.P7202900176935654159

/-! ## A059510.P1557134714500898993

`lcm(A033999(n), A059235(A001844(n)))`
-/

namespace A059510.P1557134714500898993
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A059235 (A001844 n).toNat)

end

end A059510.P1557134714500898993

/-! ## A059510.P4601275181002921506

`A033999(2*n)*A059235(A001844(n))`
-/

namespace A059510.P4601275181002921506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A059235 (A001844 n).toNat

end

end A059510.P4601275181002921506

/-!
# A059511: Main diagonal of the array A059217.

The programs for A059511, there is no canonical definition to state claims against.
-/

/-! ## A059511.P18383824803572361053

`A059217(∑[4*n]+1)`
-/

namespace A059511.P18383824803572361053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059217 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A059511.P18383824803572361053

/-! ## A059511.P13418748173855834196

`A059234((n+1)²+n²)`
-/

namespace A059511.P13418748173855834196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059234 ((n + 1) ^ 2 + n ^ 2)

end

end A059511.P13418748173855834196

/-! ## A059511.P4178865812647663650

`record[A003982(n)*A059217(n+1)]`
-/

namespace A059511.P4178865812647663650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A059217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059511.P4178865812647663650

/-! ## A059511.P18371214714138079946

`record[gcd(A059217(n+1), A114327(n))]`
-/

namespace A059511.P18371214714138079946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059217 (n + 1)) (A114327 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059511.P18371214714138079946

/-! ## A059511.P11620987766577131596

`gcd(A000038(n), A059217(A001844(n)))`
-/

namespace A059511.P11620987766577131596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A059217 (A001844 n).toNat)

end

end A059511.P11620987766577131596

/-!
# A059512: For n>=2, the number of (s(0), s(1), ..., s(n-1)) such that 0 < s(i) < 5 and |s(i) - s(i-1)| <= 1 for i = 1,2,....,n-1, s(0) = 2, s(n-1) = 2.

The programs for A059512, the canonical program `A059512.P308334945108769757` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059512 has offset 0).

The definition of A059512 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 242 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059512.P17354123295200104277

`ogf((x-3x^2+2x^3)/(1-4x+3x^2+2x^3-x^4))`
-/

namespace A059512.P17354123295200104277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -3, 2] [1, -4, 3, 2, -1] n

end

end A059512.P17354123295200104277

namespace A059512

/-- `ogf((x-3x^2+2x^3)/(1-4x+3x^2+2x^3-x^4))` -/
def P17354123295200104277.Spec : Prop :=
  ∀ n, P17354123295200104277.a n = A059512 n

end A059512

/-! ## A059512.P308334945108769757

`A001906(n-2)+1-floor(1-a(n-1)-a(n-2))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A059512

/-- `A001906(n-2)+1-floor(1-a(n-1)-a(n-2))` -/
def P308334945108769757.Spec : Prop :=
  ∀ n, P308334945108769757.a n = A059512 n

theorem P308334945108769757.correct : P308334945108769757.Spec := by
  intro n
  simp only [A059512]

end A059512

/-! ## A059512.P12773675526076053500

`A056014(n)+A000045(n)`
-/

namespace A059512.P12773675526076053500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056014 n + A000045 n

end

end A059512.P12773675526076053500

namespace A059512

/-- `A056014(n)+A000045(n)` -/
def P12773675526076053500.Spec : Prop :=
  ∀ n, P12773675526076053500.a n = A059512 n

end A059512

/-! ## A059512.P4483691187124978213

`A005207(n)-A212804(n)`
-/

namespace A059512.P4483691187124978213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005207 n - A212804 n

end

end A059512.P4483691187124978213

namespace A059512

/-- `A005207(n)-A212804(n)` -/
def P4483691187124978213.Spec : Prop :=
  ∀ n, P4483691187124978213.a n = A059512 n

end A059512

/-! ## A059512.P17910116802568252696

`A056014(n)+Δ[A000071(n+1)]`
-/

namespace A059512.P17910116802568252696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056014 n + (f1 (n + 1) - f1 n)

end

end A059512.P17910116802568252696

namespace A059512

/-- `A056014(n)+Δ[A000071(n+1)]` -/
def P17910116802568252696.Spec : Prop :=
  ∀ n, P17910116802568252696.a n = A059512 n

end A059512

/-! ## A059512.P12348800895742435811

`A000045(n)+A005207(n)-A000045(n+1)`
-/

namespace A059512.P12348800895742435811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A005207 n - A000045 (n + 1))

end

end A059512.P12348800895742435811

namespace A059512

/-- `A000045(n)+A005207(n)-A000045(n+1)` -/
def P12348800895742435811.Spec : Prop :=
  ∀ n, P12348800895742435811.a n = A059512 n

end A059512

/-! ## A059512.P8431969707339076947

`A000071(n+2)+A056014(n)-A000071(n+1)`
-/

namespace A059512.P8431969707339076947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2) + (A056014 n - A000071 (n + 1))

end

end A059512.P8431969707339076947

namespace A059512

/-- `A000071(n+2)+A056014(n)-A000071(n+1)` -/
def P8431969707339076947.Spec : Prop :=
  ∀ n, P8431969707339076947.a n = A059512 n

end A059512

/-! ## A059512.P13644660745232355321

`A056014(n)+sqrt(A007598(n))`
-/

namespace A059512.P13644660745232355321
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A056014 n : ℝ) + Real.sqrt (A007598 n : ℝ)

end

end A059512.P13644660745232355321

namespace A059512

/-- `A056014(n)+sqrt(A007598(n))` -/
def P13644660745232355321.Spec : Prop :=
  ∀ n, P13644660745232355321.a n = (A059512 n : ℝ)

end A059512

/-! ## A059512.P7921630782952297509

`A229912(n)-A162460(n+1)`
-/

namespace A059512.P7921630782952297509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229912 n - A162460 (n + 1)

end

end A059512.P7921630782952297509

namespace A059512

/-- `A229912(n)-A162460(n+1)` -/
def P7921630782952297509.Spec : Prop :=
  ∀ n, P7921630782952297509.a n = A059512 n

end A059512

/-! ## A059512.P17502225744030068834

`A000045(n)+abs(Δ[A108140(n)])`
-/

namespace A059512.P17502225744030068834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108140 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + |f1 (n + 1) - f1 n|

end

end A059512.P17502225744030068834

namespace A059512

/-- `A000045(n)+abs(Δ[A108140(n)])` -/
def P17502225744030068834.Spec : Prop :=
  ∀ n, P17502225744030068834.a n = A059512 n

end A059512

/-! ## A059512.P6641731783305823037

`(A001519(n)+Δ[A212804(n)])/2`
-/

namespace A059512.P6641731783305823037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001519 n + (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A059512.P6641731783305823037

namespace A059512

/-- `(A001519(n)+Δ[A212804(n)])/2` -/
def P6641731783305823037.Spec : Prop :=
  ∀ n, P6641731783305823037.a n = (A059512 n : ℚ)

end A059512

/-! ## A059512.P1190877000247784902

`A049681(n)-∑[A094292(n)]`
-/

namespace A059512.P1190877000247784902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049681 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059512.P1190877000247784902

namespace A059512

/-- `A049681(n)-∑[A094292(n)]` -/
def P1190877000247784902.Spec : Prop :=
  ∀ n, P1190877000247784902.a n = A059512 n

end A059512

/-! ## A059512.P12835815228636449937

`A087124(n)-A051450(n+1)`
-/

namespace A059512.P12835815228636449937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087124 n - A051450 (n + 1)

end

end A059512.P12835815228636449937

namespace A059512

/-- `A087124(n)-A051450(n+1)` -/
def P12835815228636449937.Spec : Prop :=
  ∀ n, P12835815228636449937.a n = A059512 n

end A059512

/-! ## A059512.P7579342312681538736

`A094292(n+1)-2*A094292(n)`
-/

namespace A059512.P7579342312681538736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094292 (n + 1) - 2 * A094292 n

end

end A059512.P7579342312681538736

namespace A059512

/-- `A094292(n+1)-2*A094292(n)` -/
def P7579342312681538736.Spec : Prop :=
  ∀ n, P7579342312681538736.a n = A059512 n

end A059512

/-! ## A059512.P14770297464366649536

`A056014(n)+A039913(∑[n])`
-/

namespace A059512.P14770297464366649536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056014 n + A039913 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059512.P14770297464366649536

namespace A059512

/-- `A056014(n)+A039913(∑[n])` -/
def P14770297464366649536.Spec : Prop :=
  ∀ n, P14770297464366649536.a n = A059512 n

end A059512

/-! ## A059512.P15598809862201700256

`A056014(n)+Δ[A067330(∑[n])]`
-/

namespace A059512.P15598809862201700256
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067330 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056014 n + (f1 (n + 1) - f1 n)

end

end A059512.P15598809862201700256

namespace A059512

/-- `A056014(n)+Δ[A067330(∑[n])]` -/
def P15598809862201700256.Spec : Prop :=
  ∀ n, P15598809862201700256.a n = A059512 n

end A059512

/-!
# A059513: Variation of Boustrophedon transform applied to 1,1,1,1,... Fill an array by diagonals, in alternating directions. The first entry is 1 each time. For the next element of a diagonal, add to the previous element the elements of the row and the column the new element is in. The final element of each diagonal gives a(n).

The programs for A059513, there is no canonical definition to state claims against.
-/

/-! ## A059513.P17707847513180097734

`A059575(∑[n+1])`
-/

namespace A059513.P17707847513180097734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059575 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059513.P17707847513180097734

/-! ## A059513.P7983661533179444180

`record[1-Δ[A059575(n+1)]]`
-/

namespace A059513.P7983661533179444180
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059575 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059513.P7983661533179444180

/-! ## A059513.P8719186478506968722

`A059574(A131179(n+1))`
-/

namespace A059513.P8719186478506968722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059574 (A131179 (n + 1)).toNat

end

end A059513.P8719186478506968722

/-! ## A059513.P936010189639294663

`record[A059574(∑[A145677(n)])]`
-/

namespace A059513.P936010189639294663
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145677 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059574 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059513.P936010189639294663

/-! ## A059513.P5714053821817664521

`record[A059575(∑[A145677(n)])]`
-/

namespace A059513.P5714053821817664521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145677 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059575 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059513.P5714053821817664521

/-! ## A059513.P2521962327706522833

`record[A059575(A038722(n+1))]`
-/

namespace A059513.P2521962327706522833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059575 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059513.P2521962327706522833

/-! ## A059513.P7565153306953401563

`record[A059575(A049777(n+1))]`
-/

namespace A059513.P7565153306953401563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059575 (A049777 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059513.P7565153306953401563

/-!
# A059515: Square array T(k,n) by antidiagonals, where T(k,n) is number of ways of placing n identifiable nonnegative intervals with a total of exactly k starting and/or finishing points.

The programs for A059515, there is no canonical definition to state claims against.
-/

/-! ## A059515.P1673357480823134054

`A059117(comp[∑[n-1]])+A059117(n)`
-/

namespace A059515.P1673357480823134054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059117 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + A059117 n

end

end A059515.P1673357480823134054

/-! ## A059515.P13150649924162770556

`A059117(comp[∑[n+1]])+A059117(n)%(2^n)`
-/

namespace A059515.P13150649924162770556
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059117 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + Int.tmod (A059117 n) (2 ^ n : ℤ)

end

end A059515.P13150649924162770556

/-!
# A059516: Number of different relations between n intervals (possibly of zero length) on a line.

The programs for A059516, there is no canonical definition to state claims against.
-/

/-! ## A059516.P1950201116662167264

`(A057427(n)+1)*A055203(n)`
-/

namespace A059516.P1950201116662167264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A055203 n

end

end A059516.P1950201116662167264

/-! ## A059516.P1547598702846818075

`(2-A000007(n))*A055203(n)`
-/

namespace A059516.P1547598702846818075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A055203 n

end

end A059516.P1547598702846818075

/-! ## A059516.P9695782445244163154

`A020639(A000132(n))*A055203(n)`
-/

namespace A059516.P9695782445244163154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000132 n).toNat * A055203 n

end

end A059516.P9695782445244163154

/-! ## A059516.P11448862515027443141

`A020639(A004277(n))*A055203(n)`
-/

namespace A059516.P11448862515027443141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat * A055203 n

end

end A059516.P11448862515027443141

/-!
# A059517: a(n) = A059515(3,n). Number of ways of placing n identifiable nonnegative intervals with a total of exactly three starting and/or finishing points.

The programs for A059517, the canonical program `A059517.P11280513366649055395` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059517 has offset 0).

The definition of A059517 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059517.P11280513366649055395

`10*a(n-1)-27*a(n-2)+18*a(n-3)` with `a(0)=0, a(1)=0, a(2)=12, a(3)=138`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059517

/-- `10*a(n-1)-27*a(n-2)+18*a(n-3)` -/
def P11280513366649055395.Spec : Prop :=
  ∀ n, P11280513366649055395.a n = A059517 n

theorem P11280513366649055395.correct : P11280513366649055395.Spec := by
  intro n
  simp only [A059517]

end A059517

/-! ## A059517.P597088606492335782

`A058809(n)+A059116(n)`
-/

namespace A059517.P597088606492335782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058809 n + A059116 n

end

end A059517.P597088606492335782

namespace A059517

/-- `A058809(n)+A059116(n)` -/
def P597088606492335782.Spec : Prop :=
  ∀ n, P597088606492335782.a n = A059517 n

end A059517

/-! ## A059517.P7832580596629825965

`(2*A155611(n))%A155604(n)`
-/

namespace A059517.P7832580596629825965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A155611 n) (A155604 n)

end

end A059517.P7832580596629825965

namespace A059517

/-- `(2*A155611(n))%A155604(n)` -/
def P7832580596629825965.Spec : Prop :=
  ∀ n, P7832580596629825965.a n = A059517 n

end A059517

/-! ## A059517.P14614704251812945016

`(A155612(n)+A155611(n))%A155605(n)`
-/

namespace A059517.P14614704251812945016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155612 n + A155611 n) (A155605 n)

end

end A059517.P14614704251812945016

namespace A059517

/-- `(A155612(n)+A155611(n))%A155605(n)` -/
def P14614704251812945016.Spec : Prop :=
  ∀ n, P14614704251812945016.a n = A059517 n

end A059517

/-! ## A059517.P1510854380621753457

`(A155613(n)+A155611(n))%A155606(n)`
-/

namespace A059517.P1510854380621753457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155613 n + A155611 n) (A155606 n)

end

end A059517.P1510854380621753457

namespace A059517

/-- `(A155613(n)+A155611(n))%A155606(n)` -/
def P1510854380621753457.Spec : Prop :=
  ∀ n, P1510854380621753457.a n = A059517 n

end A059517

/-! ## A059517.P13475242550073226763

`(A155614(n)+A155611(n))%A155607(n)`
-/

namespace A059517.P13475242550073226763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155614 n + A155611 n) (A155607 n)

end

end A059517.P13475242550073226763

namespace A059517

/-- `(A155614(n)+A155611(n))%A155607(n)` -/
def P13475242550073226763.Spec : Prop :=
  ∀ n, P13475242550073226763.a n = A059517 n

end A059517

/-! ## A059517.P1720290542835145875

`(A155615(n)+A155611(n))%A155608(n)`
-/

namespace A059517.P1720290542835145875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155615 n + A155611 n) (A155608 n)

end

end A059517.P1720290542835145875

namespace A059517

/-- `(A155615(n)+A155611(n))%A155608(n)` -/
def P1720290542835145875.Spec : Prop :=
  ∀ n, P1720290542835145875.a n = A059517 n

end A059517

/-! ## A059517.P10018741847739057353

`A155611(A004277(n))%A155611(n)`
-/

namespace A059517.P10018741847739057353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155611 (A004277 n).toNat) (A155611 n)

end

end A059517.P10018741847739057353

namespace A059517

/-- `A155611(A004277(n))%A155611(n)` -/
def P10018741847739057353.Spec : Prop :=
  ∀ n, P10018741847739057353.a n = A059517 n

end A059517

/-!
# A059519: Number of partitions of n all of whose subpartitions sum to distinct values. Partition(n) = [a, b, c...] where 2n = 2^a + 2^b + 2^c + ...

The programs for A059519, there is no canonical definition to state claims against.
-/

/-! ## A059519.P503135738722691372

`eq[A001316(C(n, n²)+n), A293664(n)]`
-/

namespace A059519.P503135738722691372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (Nat.choose n (n ^ 2) + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293664 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059519.P503135738722691372

/-! ## A059519.P4178299306428287261

`eq[A001316(n+1), A293664(n+1)]+1`
-/

namespace A059519.P4178299306428287261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293664 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A059519.P4178299306428287261

/-! ## A059519.P2541640413110802733

`eq[A001316(A004277(n)), A293664(n)]`
-/

namespace A059519.P2541640413110802733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A004277 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293664 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059519.P2541640413110802733

/-! ## A059519.P12989773622832347884

`eq[A001316(A008574(n)), A293664(n)]`
-/

namespace A059519.P12989773622832347884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A008574 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293664 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059519.P12989773622832347884

/-! ## A059519.P13028452595104539704

`eq[A001316(n), A293664(A028310(n))]`
-/

namespace A059519.P13028452595104539704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293664 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059519.P13028452595104539704

/-! ## A059519.P15673360891388946747

`eq[A014681(A038573(n)), A293664(n)]`
-/

namespace A059519.P15673360891388946747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A038573 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293664 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059519.P15673360891388946747

/-! ## A059519.P10260156535559995003

`eq[A001316(n), A118830(A293664(n))]`
-/

namespace A059519.P10260156535559995003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (A293664 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059519.P10260156535559995003

/-! ## A059519.P4847698142231951260

`eq[A001316(A000038(n)+n), A293664(n)]`
-/

namespace A059519.P4847698142231951260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A000038 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293664 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059519.P4847698142231951260

/-! ## A059519.P16595611717055784019

`eq[A001316(n)-A000038(n), A293664(n)]`
-/

namespace A059519.P16595611717055784019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n - A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293664 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059519.P16595611717055784019

/-! ## A059519.P1316097357899076383

`eq[A001316(n)*A057427(n), A293664(n)]`
-/

namespace A059519.P1316097357899076383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n * A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293664 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059519.P1316097357899076383

/-! ## A059519.P3176674169801845439

`eq[A001316(A022144(n)), A293664(n)]`
-/

namespace A059519.P3176674169801845439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A022144 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293664 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059519.P3176674169801845439

/-!
# A059520: Number of partitions into distinct parts, with some sub-partitions having equal sums. Partition(n) = [a, b, c...] where 2n = 2^a + 2^b + 2^c + ...

The programs for A059520, there is no canonical definition to state claims against.
-/

/-! ## A059520.P7795628485548920324

`comp[A059519(n+1)-1]+1`
-/

namespace A059520.P7795628485548920324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059519 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A059520.P7795628485548920324

/-! ## A059520.P3568264961376358427

`lt[A293664(n), 2*a(and(n, n-1))]` with `a(0)=1`
-/

namespace A059520.P3568264961376358427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293664 n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  2 * f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A059520.P3568264961376358427

/-! ## A059520.P15716818061615197428

`lt[A293664(n), A001316(n)]`
-/

namespace A059520.P15716818061615197428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293664 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A059520.P15716818061615197428

/-! ## A059520.P6171427030507483750

`lt[log2(A293664(n)), A000120(n)]`
-/

namespace A059520.P6171427030507483750
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A293664 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A059520.P6171427030507483750

/-! ## A059520.P321205284013489287

`eq[1, A057427(A001316(n)-A293664(n))]`
-/

namespace A059520.P321205284013489287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A001316 n - A293664 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059520.P321205284013489287

/-! ## A059520.P6108651665159414009

`lt[A000120(A293664(n)-1), A000120(n)]`
-/

namespace A059520.P6108651665159414009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A293664 n - 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A059520.P6108651665159414009

/-! ## A059520.P12037223003258019730

`eq[1, A057427(A293664(n)%A001316(n))]`
-/

namespace A059520.P12037223003258019730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (Int.tmod (A293664 n) (A001316 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059520.P12037223003258019730

/-! ## A059520.P12212305597817774903

`lt[A001222(A293664(n)), A000120(2*n)]`
-/

namespace A059520.P12212305597817774903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A293664 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A059520.P12212305597817774903

/-!
# A059522: a(1) = 1, then a(n) = n*(n^(n-1)-1)*(n-2)!/(n-1).

The programs for A059522, there is no canonical definition to state claims against.
-/

/-! ## A059522.P1315473951799333654

`n!*A058128(n+1)`
-/

namespace A059522.P1315473951799333654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A058128 (n + 1)

end

end A059522.P1315473951799333654

/-! ## A059522.P17478826351199380451

`A000142(n)*A058128(n+1)`
-/

namespace A059522.P17478826351199380451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A058128 (n + 1)

end

end A059522.P17478826351199380451

/-! ## A059522.P7901507647517002589

`Δ[A003422(n)]*A058128(n+1)`
-/

namespace A059522.P7901507647517002589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A058128 (n + 1)

end

end A059522.P7901507647517002589

/-! ## A059522.P2310140863115102798

`(A023811(n+1)+1)*A000142(n)`
-/

namespace A059522.P2310140863115102798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A023811 (n + 1) + 1) * A000142 n

end

end A059522.P2310140863115102798

/-! ## A059522.P6953595393280108736

`A028421(A000217(n))*A058128(n+1)`
-/

namespace A059522.P6953595393280108736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028421 (A000217 n).toNat * A058128 (n + 1)

end

end A059522.P6953595393280108736

/-!
# A059523: Number of n-element unlabeled ordered T_0-antichains without isolated vertices; number of T_1-hypergraphs (without empty edge and without multiple edges) on n labeled vertices.

The programs for A059523, there is no canonical definition to state claims against.
-/

/-! ## A059523.P14786497311566451567

`A059052(n)/2`
-/

namespace A059523.P14786497311566451567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059052 n : ℚ) / 2

end

end A059523.P14786497311566451567

/-! ## A059523.P6040090151938305413

`A326961(n)+char[1]`
-/

namespace A059523.P6040090151938305413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326961 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A059523.P6040090151938305413

/-! ## A059523.P2194002596429470808

`char[1]+A326960(n)/2`
-/

namespace A059523.P2194002596429470808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) + (A326960 n : ℚ) / 2

end

end A059523.P2194002596429470808

/-! ## A059523.P12861860993610171903

`A326961(A063524(n)+n)`
-/

namespace A059523.P12861860993610171903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326961 (A063524 n + (n : ℤ)).toNat

end

end A059523.P12861860993610171903

/-! ## A059523.P15289061600191199377

`lcm(A000032(A008616(n)), A326961(n))`
-/

namespace A059523.P15289061600191199377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000032 (A008616 n).toNat) (A326961 n)

end

end A059523.P15289061600191199377

/-!
# A059524: Number of nonzero 4 X n binary arrays with all 1's connected.

The programs for A059524, there is no canonical definition to state claims against.
-/

/-! ## A059524.P3872165963920043805

`∑[∑[A163030(n+1)]-A163030(n+1)]`
-/

namespace A059524.P3872165963920043805
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163030 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A163030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059524.P3872165963920043805

/-! ## A059524.P12678972988069336076

`and(A057428(n), A287151(A141214(n)))`
-/

namespace A059524.P12678972988069336076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A287151 (A141214 n).toNat)

end

end A059524.P12678972988069336076

/-! ## A059524.P12377073562883473105

`and(1, A000040(n+1))*A287151(A141214(n))`
-/

namespace A059524.P12377073562883473105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 1)) * A287151 (A141214 n).toNat

end

end A059524.P12377073562883473105

/-! ## A059524.P16185170342917466199

`A287151(A141214(n))%A000041(∑[3*(n+1)])`
-/

namespace A059524.P16185170342917466199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287151 (A141214 n).toNat) (A000041 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A059524.P16185170342917466199

/-!
# A059525: Number of nonzero n X n binary arrays with all 1's connected.

The programs for A059525, there is no canonical definition to state claims against.
-/

/-! ## A059525.P14425479666032016320

`record[A086266(n+1)%A049368(n+3)]`
-/

namespace A059525.P14425479666032016320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086266 (n + 1)) (A049368 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059525.P14425479666032016320

/-!
# A059529: For 1 < x, each c(i) is "multiply" (*) or "divide" (/); a(n) is number of choices for c(0),...,c(n-1) so that 1 c(0) x^1 c(1) x^2,.., c(n-1) x^n is an integer.

The programs for A059529, there is no canonical definition to state claims against.
-/

/-! ## A059529.P14036629619004829816

`A058377(round(acot(n)+n))+ceil(2^(n-1))`
-/

namespace A059529.P14036629619004829816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058377 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat + ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A059529.P14036629619004829816

/-! ## A059529.P16851485611788326047

`A058377(round(sqrt(n²+1)))+A011782(n)`
-/

namespace A059529.P16851485611788326047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058377 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + A011782 n

end

end A059529.P16851485611788326047

/-! ## A059529.P14110246793896057621

`xor(A011782(n), A058377(A233583(n+1)))`
-/

namespace A059529.P14110246793896057621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A011782 n) (A058377 (A233583 (n + 1)).toNat)

end

end A059529.P14110246793896057621

/-! ## A059529.P13483359778358189593

`(A063865(n)+2^n)/2`
-/

namespace A059529.P13483359778358189593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063865 n + (2 ^ n : ℤ) : ℚ) / 2

end

end A059529.P13483359778358189593

/-! ## A059529.P8872424077786637478

`(lcm(A025591(n), A102560(n))+2^n)/2`
-/

namespace A059529.P8872424077786637478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A025591 n) (A102560 n) + 2 ^ n : ℚ) / 2

end

end A059529.P8872424077786637478

/-!
# A059530: Triangle T(n,k) of k-block T_0-tricoverings of an n-set, n >= 3, k = 0..2*n.

The programs for A059530, there is no canonical definition to state claims against.
-/

/-! ## A059530.P784732150062925304

`A076186(gcd(A056353(n), A324166(n)))`
-/

namespace A059530.P784732150062925304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076186 (Int.gcd (A056353 n) (A324166 n))

end

end A059530.P784732150062925304

/-!
# A059531: Beatty sequence for 1 + 1/Pi.

The programs for A059531, the canonical program `A059531.P12176217316645692244` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059531 has offset 1).

The definition of A059531 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059531.P12176217316645692244

`comp[floor(n*(π+1))]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059531

/-- `comp[floor(n*(π+1))]` -/
def P12176217316645692244.Spec : Prop :=
  ∀ n, (P12176217316645692244.a n : ℤ) = A059531 (n + 1)

theorem P12176217316645692244.correct : P12176217316645692244.Spec := by
  intro n
  simp only [A059531, Nat.add_sub_cancel]

end A059531

/-! ## A059531.P7900084228498142343

`∑[2-floor(∑[cos(n)])²]`
-/

namespace A059531.P7900084228498142343
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059531.P7900084228498142343

namespace A059531

/-- `∑[2-floor(∑[cos(n)])²]` -/
def P7900084228498142343.Spec : Prop :=
  ∀ n, P7900084228498142343.a n = A059531 (n + 1)

end A059531

/-! ## A059531.P5685048669002363557

`∑[ceil(∑[cos(n)])%2]+n`
-/

namespace A059531.P5685048669002363557
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A059531.P5685048669002363557

namespace A059531

/-- `∑[ceil(∑[cos(n)])%2]+n` -/
def P5685048669002363557.Spec : Prop :=
  ∀ n, P5685048669002363557.a n = A059531 (n + 1)

end A059531

/-! ## A059531.P804780211030070795

`A296357(n+1)+n`
-/

namespace A059531.P804780211030070795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296357 (n + 1) + (n : ℤ)

end

end A059531.P804780211030070795

namespace A059531

/-- `A296357(n+1)+n` -/
def P804780211030070795.Spec : Prop :=
  ∀ n, P804780211030070795.a n = A059531 (n + 1)

end A059531

/-! ## A059531.P16487672560584271410

`A292649(n+1)-(n+1)`
-/

namespace A059531.P16487672560584271410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292649 (n + 1) - (n + 1 : ℤ)

end

end A059531.P16487672560584271410

namespace A059531

/-- `A292649(n+1)-(n+1)` -/
def P16487672560584271410.Spec : Prop :=
  ∀ n, P16487672560584271410.a n = A059531 (n + 1)

theorem P16487672560584271410.correct : P16487672560584271410.Spec := by
  intro n
  simp only [A059531, Nat.add_sub_cancel, A059531.P16487672560584271410.a, A059531.P12176217316645692244.f1, A059531.P12176217316645692244.a, A292649, A292649.P4374179252160698434.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059531

/-! ## A059531.P13148021231447155957

`∑[char[A022844(n+1)]+1]`
-/

namespace A059531.P13148021231447155957
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059531.P13148021231447155957

namespace A059531

/-- `∑[char[A022844(n+1)]+1]` -/
def P13148021231447155957.Spec : Prop :=
  ∀ n, (P13148021231447155957.a n : ℤ) = A059531 (n + 1)

end A059531

/-! ## A059531.P4126005407780633833

`comp[A059532(n+1)-1]+1`
-/

namespace A059531.P4126005407780633833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059532 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A059531.P4126005407780633833

namespace A059531

/-- `comp[A059532(n+1)-1]+1` -/
def P4126005407780633833.Spec : Prop :=
  ∀ n, (P4126005407780633833.a n : ℤ) = A059531 (n + 1)

end A059531

/-! ## A059531.P4377263385754845692

`∑[A026124(Δ[floor(n/π)]+2)]`
-/

namespace A059531.P4377263385754845692
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.pi⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026124 (f2 (n + 1) - f2 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059531.P4377263385754845692

namespace A059531

/-- `∑[A026124(Δ[floor(n/π)]+2)]` -/
def P4377263385754845692.Spec : Prop :=
  ∀ n, P4377263385754845692.a n = A059531 (n + 1)

end A059531

/-! ## A059531.P7954607208712161696

`∑[Δ[A032615(n)]+1]`
-/

namespace A059531.P7954607208712161696
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032615 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059531.P7954607208712161696

namespace A059531

/-- `∑[Δ[A032615(n)]+1]` -/
def P7954607208712161696.Spec : Prop :=
  ∀ n, P7954607208712161696.a n = A059531 (n + 1)

end A059531

/-! ## A059531.P11433295721680553133

`A032615(n+1)+1+n`
-/

namespace A059531.P11433295721680553133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032615 (n + 1) + 1 + (n : ℤ)

end

end A059531.P11433295721680553133

namespace A059531

/-- `A032615(n+1)+1+n` -/
def P11433295721680553133.Spec : Prop :=
  ∀ n, P11433295721680553133.a n = A059531 (n + 1)

end A059531

/-! ## A059531.P10230638964152247714

`Δ[A022796(n+1)]+n`
-/

namespace A059531.P10230638964152247714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A059531.P10230638964152247714

namespace A059531

/-- `Δ[A022796(n+1)]+n` -/
def P10230638964152247714.Spec : Prop :=
  ∀ n, P10230638964152247714.a n = A059531 (n + 1)

end A059531

/-! ## A059531.P8974551049397020107

`filter[A085199(2*n+1), A144609(#)]`
-/

namespace A059531.P8974551049397020107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085199 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144609 (f1 j).toNat = 1) n)

end

end A059531.P8974551049397020107

namespace A059531

/-- `filter[A085199(2*n+1), A144609(#)]` -/
def P8974551049397020107.Spec : Prop :=
  ∀ n, P8974551049397020107.a n = A059531 (n + 1)

end A059531

/-! ## A059531.P14678953184883902012

`round(log(2*A210003(2*n)))`
-/

namespace A059531.P14678953184883902012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (2 * A210003 (2 * n) : ℝ))

end

end A059531.P14678953184883902012

namespace A059531

/-- `round(log(2*A210003(2*n)))` -/
def P14678953184883902012.Spec : Prop :=
  ∀ n, P14678953184883902012.a n = A059531 (n + 1)

end A059531

/-!
# A059532: Beatty sequence for 1 + Pi.

The programs for A059532, the canonical program `A059532.P6901203589356187192` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059532 has offset 1).

The definition of A059532 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059532.P6901203589356187192

`n+1+A022844(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A059532

/-- `n+1+A022844(n+1)` -/
def P6901203589356187192.Spec : Prop :=
  ∀ n, P6901203589356187192.a n = A059532 (n + 1)

theorem P6901203589356187192.correct : P6901203589356187192.Spec := by
  intro n
  simp only [A059532, Nat.add_sub_cancel]

end A059532

/-! ## A059532.P13843065621846430455

`comp[floor(n/π+n)]`
-/

namespace A059532.P13843065621846430455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.pi + (n : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A059532.P13843065621846430455

namespace A059532

/-- `comp[floor(n/π+n)]` -/
def P13843065621846430455.Spec : Prop :=
  ∀ n, (P13843065621846430455.a n : ℤ) = A059532 (n + 1)

end A059532

/-! ## A059532.P8554169567528731049

`lt[cot(1), cot(n+1)]+n+1`
-/

namespace A059532.P8554169567528731049
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (1 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (n + 1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + (n + 1)

end

end A059532.P8554169567528731049

namespace A059532

/-- `lt[cot(1), cot(n+1)]+n+1` -/
def P8554169567528731049.Spec : Prop :=
  ∀ n, (P8554169567528731049.a n : ℤ) = A059532 (n + 1)

end A059532

/-! ## A059532.P3578955714482619299

`∑[A115790(n)+4]`
-/

namespace A059532.P3578955714482619299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115790 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059532.P3578955714482619299

namespace A059532

/-- `∑[A115790(n)+4]` -/
def P3578955714482619299.Spec : Prop :=
  ∀ n, P3578955714482619299.a n = A059532 (n + 1)

end A059532

/-! ## A059532.P3226151167618107838

`∑[5-A115789(n)]`
-/

namespace A059532.P3226151167618107838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A115789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059532.P3226151167618107838

namespace A059532

/-- `∑[5-A115789(n)]` -/
def P3226151167618107838.Spec : Prop :=
  ∀ n, P3226151167618107838.a n = A059532 (n + 1)

end A059532

/-! ## A059532.P904287867977283908

`∑[Δ[A022844(n)]+1]`
-/

namespace A059532.P904287867977283908
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059532.P904287867977283908

namespace A059532

/-- `∑[Δ[A022844(n)]+1]` -/
def P904287867977283908.Spec : Prop :=
  ∀ n, P904287867977283908.a n = A059532 (n + 1)

end A059532

/-! ## A059532.P5149094172379709009

`∑[A003159(Δ[floor(π*n)])]`
-/

namespace A059532.P5149094172379709009
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059532.P5149094172379709009

namespace A059532

/-- `∑[A003159(Δ[floor(π*n)])]` -/
def P5149094172379709009.Spec : Prop :=
  ∀ n, P5149094172379709009.a n = A059532 (n + 1)

end A059532

/-! ## A059532.P14352330880738011115

`∑[A134206(Δ[floor(π*n)])]`
-/

namespace A059532.P14352330880738011115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134206 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059532.P14352330880738011115

namespace A059532

/-- `∑[A134206(Δ[floor(π*n)])]` -/
def P14352330880738011115.Spec : Prop :=
  ∀ n, P14352330880738011115.a n = A059532 (n + 1)

end A059532

/-! ## A059532.P10114774338165885882

`∑[A171946(Δ[floor(π*n)])]`
-/

namespace A059532.P10114774338165885882
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171946 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059532.P10114774338165885882

namespace A059532

/-- `∑[A171946(Δ[floor(π*n)])]` -/
def P10114774338165885882.Spec : Prop :=
  ∀ n, P10114774338165885882.a n = A059532 (n + 1)

end A059532

/-! ## A059532.P5162785304073802019

`A184591(n+1)+2*n+3`
-/

namespace A059532.P5162785304073802019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184591 (n + 1) + (2 * n + 3 : ℤ)

end

end A059532.P5162785304073802019

namespace A059532

/-- `A184591(n+1)+2*n+3` -/
def P5162785304073802019.Spec : Prop :=
  ∀ n, P5162785304073802019.a n = A059532 (n + 1)

end A059532

/-! ## A059532.P7769784684746450222

`A121381(n+1)+n`
-/

namespace A059532.P7769784684746450222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121381 (n + 1) + (n : ℤ)

end

end A059532.P7769784684746450222

namespace A059532

/-- `A121381(n+1)+n` -/
def P7769784684746450222.Spec : Prop :=
  ∀ n, P7769784684746450222.a n = A059532 (n + 1)

end A059532

/-! ## A059532.P18262482559350899846

`A004084(n+2)+n`
-/

namespace A059532.P18262482559350899846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004084 (n + 2) + (n : ℤ)

end

end A059532.P18262482559350899846

namespace A059532

/-- `A004084(n+2)+n` -/
def P18262482559350899846.Spec : Prop :=
  ∀ n, P18262482559350899846.a n = A059532 (n + 1)

end A059532

/-! ## A059532.P11077634401252382772

`∑[Δ[A063459(n)]+2]`
-/

namespace A059532.P11077634401252382772
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063459 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059532.P11077634401252382772

namespace A059532

/-- `∑[Δ[A063459(n)]+2]` -/
def P11077634401252382772.Spec : Prop :=
  ∀ n, P11077634401252382772.a n = A059532 (n + 1)

end A059532

/-! ## A059532.P8826077137262408794

`A063459(n+1)+2*(n+1)`
-/

namespace A059532.P8826077137262408794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063459 (n + 1) + (2 * (n + 1) : ℤ)

end

end A059532.P8826077137262408794

namespace A059532

/-- `A063459(n+1)+2*(n+1)` -/
def P8826077137262408794.Spec : Prop :=
  ∀ n, P8826077137262408794.a n = A059532 (n + 1)

theorem P8826077137262408794.correct : P8826077137262408794.Spec := by
  intro n
  simp only [A059532, Nat.add_sub_cancel, A059532.P8826077137262408794.a, A059532.P6901203589356187192.a, A022844, A022844.P11976428228251050705.a, A063459, A063459.P17423234819915296512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059532

/-! ## A059532.P9160308561351955162

`A187320(n+1)+3*(n+1)`
-/

namespace A059532.P9160308561351955162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187320 (n + 1) + (3 * (n + 1) : ℤ)

end

end A059532.P9160308561351955162

namespace A059532

/-- `A187320(n+1)+3*(n+1)` -/
def P9160308561351955162.Spec : Prop :=
  ∀ n, P9160308561351955162.a n = A059532 (n + 1)

end A059532

/-! ## A059532.P12418724813417796079

`A016777(n+1)+A187320(n+1)-1`
-/

namespace A059532.P12418724813417796079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (n + 1) + (A187320 (n + 1) - 1)

end

end A059532.P12418724813417796079

namespace A059532

/-- `A016777(n+1)+A187320(n+1)-1` -/
def P12418724813417796079.Spec : Prop :=
  ∀ n, P12418724813417796079.a n = A059532 (n + 1)

end A059532

/-! ## A059532.P6198903479070061904

`A004082(n+2)-A022853(n+1)+n`
-/

namespace A059532.P6198903479070061904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004082 (n + 2) - A022853 (n + 1) + (n : ℤ)

end

end A059532.P6198903479070061904

namespace A059532

/-- `A004082(n+2)-A022853(n+1)+n` -/
def P6198903479070061904.Spec : Prop :=
  ∀ n, P6198903479070061904.a n = A059532 (n + 1)

end A059532

/-! ## A059532.P9520219961778468534

`A063459(n+1)-A001478(n+2)+n`
-/

namespace A059532.P9520219961778468534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063459 (n + 1) - A001478 (n + 2) + (n : ℤ)

end

end A059532.P9520219961778468534

namespace A059532

/-- `A063459(n+1)-A001478(n+2)+n` -/
def P9520219961778468534.Spec : Prop :=
  ∀ n, P9520219961778468534.a n = A059532 (n + 1)

theorem P9520219961778468534.correct : P9520219961778468534.Spec := by
  intro n
  simp only [A059532, Nat.add_sub_cancel, A059532.P9520219961778468534.a, A059532.P6901203589356187192.a, A001478, A001478.P11279598861711037921.a, A022844, A022844.P11976428228251050705.a, A063459, A063459.P17423234819915296512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059532

/-! ## A059532.P14396314653596587239

`record[A108591(n+1)+1]+n`
-/

namespace A059532.P14396314653596587239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108591 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A059532.P14396314653596587239

namespace A059532

/-- `record[A108591(n+1)+1]+n` -/
def P14396314653596587239.Spec : Prop :=
  ∀ n, P14396314653596587239.a n = A059532 (n + 1)

end A059532

/-! ## A059532.P8740266828592225148

`A108591(A054386(n+1))+1+n`
-/

namespace A059532.P8740266828592225148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108591 (A054386 (n + 1)).toNat + 1 + (n : ℤ)

end

end A059532.P8740266828592225148

namespace A059532

/-- `A108591(A054386(n+1))+1+n` -/
def P8740266828592225148.Spec : Prop :=
  ∀ n, P8740266828592225148.a n = A059532 (n + 1)

end A059532

/-!
# A059533: Beatty sequence for 1 + Catalan's constant.

The programs for A059533, there is no canonical definition to state claims against.
-/

/-! ## A059533.P12130288944308774591

`comp[A059534(n+1)-1]+1`
-/

namespace A059533.P12130288944308774591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059534 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A059533.P12130288944308774591

/-! ## A059533.P10648482791399944900

`Δ[n²]-A198277(n)%Δ[A008730(n)]`
-/

namespace A059533.P10648482791399944900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008730 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - Int.tmod (A198277 n) (f2 (n + 1) - f2 n)

end

end A059533.P10648482791399944900

/-! ## A059533.P18144174119463715171

`A000194(A014248(∑[n+1]))+n`
-/

namespace A059533.P18144174119463715171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A014248 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + (n : ℤ)

end

end A059533.P18144174119463715171

/-! ## A059533.P16726296690991842530

`∑[A092944(val(A000045(n+1), 9)^n+1)]`
-/

namespace A059533.P16726296690991842530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092944 (SequenceMachineLib.valuation (A000045 (n + 1)).toNat 9 ^ n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059533.P16726296690991842530

/-! ## A059533.P16909268228564990680

`A005408(n)-A002265(A002265(A184421(n+1)))`
-/

namespace A059533.P16909268228564990680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - A002265 (A002265 (A184421 (n + 1)).toNat).toNat

end

end A059533.P16909268228564990680

/-! ## A059533.P16031157065753037804

`A000196(A007310(A277644((n+1)²)))`
-/

namespace A059533.P16031157065753037804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A007310 (A277644 ((n + 1) ^ 2)).toNat).toNat

end

end A059533.P16031157065753037804

/-!
# A059534: Beatty sequence for 1 + 1/Catalan's constant.

The programs for A059534, there is no canonical definition to state claims against.
-/

/-! ## A059534.P2210175542498330147

`round(log2(A356942(n+2)))`
-/

namespace A059534.P2210175542498330147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A356942 (n + 2) : ℝ))

end

end A059534.P2210175542498330147

/-! ## A059534.P11948076414274540293

`∑[A001511(A044338(n+1))]`
-/

namespace A059534.P11948076414274540293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A044338 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059534.P11948076414274540293

/-! ## A059534.P17456904918057281199

`∑[A176059(A044339(n+1))]`
-/

namespace A059534.P17456904918057281199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176059 (A044339 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059534.P17456904918057281199

/-! ## A059534.P3125373681637967665

`∑[A001511(A044337(n+1))+1]`
-/

namespace A059534.P3125373681637967665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A044337 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059534.P3125373681637967665

/-! ## A059534.P9668281507773896905

`∑[A007814(A044334(n+1))+1]`
-/

namespace A059534.P9668281507773896905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A044334 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059534.P9668281507773896905

/-! ## A059534.P3018192424275425273

`∑[A000120(10-Δ[A095827(n+1)])]`
-/

namespace A059534.P3018192424275425273
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095827 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (10 - (f2 (n + 1) - f2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059534.P3018192424275425273

/-! ## A059534.P14466961888019926905

`∑[3-A011582((n+1)²)]`
-/

namespace A059534.P14466961888019926905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A011582 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059534.P14466961888019926905

/-! ## A059534.P8114126833862660408

`∑[3-A070596((n+1)²)]`
-/

namespace A059534.P8114126833862660408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A070596 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059534.P8114126833862660408

/-!
# A059535: Beatty sequence for Pi^2/6, or zeta(2).

The programs for A059535, the canonical program `A059535.P3585623272810390147` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059535 has offset 1).

The definition of A059535 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059535.P3585623272810390147

`floor((n+1)/6*π²)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059535

/-- `floor((n+1)/6*π²)` -/
def P3585623272810390147.Spec : Prop :=
  ∀ n, P3585623272810390147.a n = A059535 (n + 1)

theorem P3585623272810390147.correct : P3585623272810390147.Spec := by
  intro n
  simp only [A059535, Nat.add_sub_cancel]

end A059535

/-! ## A059535.P5078818369945081316

`A008620(A248359(n+1)-4)`
-/

namespace A059535.P5078818369945081316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A248359 (n + 1) - 4).toNat

end

end A059535.P5078818369945081316

namespace A059535

/-- `A008620(A248359(n+1)-4)` -/
def P5078818369945081316.Spec : Prop :=
  ∀ n, P5078818369945081316.a n = A059535 (n + 1)

end A059535

/-! ## A059535.P15757650353489296311

`A002264(A248359(n+1)-1)`
-/

namespace A059535.P15757650353489296311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A248359 (n + 1) - 1).toNat

end

end A059535.P15757650353489296311

namespace A059535

/-- `A002264(A248359(n+1)-1)` -/
def P15757650353489296311.Spec : Prop :=
  ∀ n, P15757650353489296311.a n = A059535 (n + 1)

end A059535

/-! ## A059535.P13990746893213670927

`A002264(-A024000(A248359(n+1)))`
-/

namespace A059535.P13990746893213670927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (-A024000 (A248359 (n + 1)).toNat).toNat

end

end A059535.P13990746893213670927

namespace A059535

/-- `A002264(-A024000(A248359(n+1)))` -/
def P13990746893213670927.Spec : Prop :=
  ∀ n, P13990746893213670927.a n = A059535 (n + 1)

end A059535

/-! ## A059535.P13506550641421865471

`A152467(A037085(n+1))`
-/

namespace A059535.P13506550641421865471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A037085 (n + 1)).toNat

end

end A059535.P13506550641421865471

namespace A059535

/-- `A152467(A037085(n+1))` -/
def P13506550641421865471.Spec : Prop :=
  ∀ n, P13506550641421865471.a n = A059535 (n + 1)

end A059535

/-! ## A059535.P13220599097324407834

`A342696(A079044(n+1))`
-/

namespace A059535.P13220599097324407834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342696 (A079044 (n + 1)).toNat

end

end A059535.P13220599097324407834

namespace A059535

/-- `A342696(A079044(n+1))` -/
def P13220599097324407834.Spec : Prop :=
  ∀ n, P13220599097324407834.a n = A059535 (n + 1)

end A059535

/-! ## A059535.P5916898758481158480

`ceil(A185003(n+1)/2^n)`
-/

namespace A059535.P5916898758481158480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A185003 (n + 1) : ℚ) / (2 ^ n : ℚ)⌉

end

end A059535.P5916898758481158480

namespace A059535

/-- `ceil(A185003(n+1)/2^n)` -/
def P5916898758481158480.Spec : Prop :=
  ∀ n, P5916898758481158480.a n = A059535 (n + 1)

end A059535

/-! ## A059535.P370536806002266946

`A002264(A233583(A248359(n+1)))`
-/

namespace A059535.P370536806002266946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A233583 (A248359 (n + 1)).toNat).toNat

end

end A059535.P370536806002266946

namespace A059535

/-- `A002264(A233583(A248359(n+1)))` -/
def P370536806002266946.Spec : Prop :=
  ∀ n, P370536806002266946.a n = A059535 (n + 1)

end A059535

/-! ## A059535.P16950251632138507167

`A000196(A001951(A137803((n+1)²)))`
-/

namespace A059535.P16950251632138507167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A001951 (A137803 ((n + 1) ^ 2)).toNat).toNat

end

end A059535.P16950251632138507167

namespace A059535

/-- `A000196(A001951(A137803((n+1)²)))` -/
def P16950251632138507167.Spec : Prop :=
  ∀ n, P16950251632138507167.a n = A059535 (n + 1)

end A059535

/-!
# A059536: Beatty sequence for zeta(2)/(zeta(2)-1).

The programs for A059536, there is no canonical definition to state claims against.
-/

/-! ## A059536.P1418055802170961341

`val(∏[2*A276856(n+1)], 2)+n`
-/

namespace A059536.P1418055802170961341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A276856 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ j ∈ Finset.range (n + 1), f1 j).toNat 2 + n

end

end A059536.P1418055802170961341

/-! ## A059536.P3366611525965196833

`floor((5-sqrt(6))*A003056(∑[n+1]))`
-/

namespace A059536.P3366611525965196833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 - Real.sqrt (6 : ℝ)) * (A003056 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)⌋

end

end A059536.P3366611525965196833

/-! ## A059536.P5327059260661628772

`floor((5-sqrt(6))*A220645(∑[n]))`
-/

namespace A059536.P5327059260661628772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 - Real.sqrt (6 : ℝ)) * (A220645 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)⌋

end

end A059536.P5327059260661628772

/-! ## A059536.P17913921031270295705

`floor((5-sqrt(6))*A092842(A073666(n+1)))`
-/

namespace A059536.P17913921031270295705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 - Real.sqrt (6 : ℝ)) * (A092842 (A073666 (n + 1)).toNat : ℝ)⌋

end

end A059536.P17913921031270295705

/-!
# A059537: Beatty sequence for zeta(3).

The programs for A059537, there is no canonical definition to state claims against.
-/

/-! ## A059537.P7828587028023839927

`A003056(∑[A028242(A078608(n+1))])`
-/

namespace A059537.P7828587028023839927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A078608 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A059537.P7828587028023839927

/-! ## A059537.P8507033819260877436

`A003056(∑[A121496(A078608(n+1))])`
-/

namespace A059537.P8507033819260877436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121496 (A078608 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A059537.P8507033819260877436

/-! ## A059537.P16920957958811050977

`A003056(A034887(2*n)*A047253(n+2))`
-/

namespace A059537.P16920957958811050977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A034887 (2 * n) * A047253 (n + 2)).toNat

end

end A059537.P16920957958811050977

/-! ## A059537.P15337060193653367822

`A057355(2*(n+1))%Δ[A132956(n+2)]`
-/

namespace A059537.P15337060193653367822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132956 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057355 (2 * (n + 1))) (f1 (n + 1) - f1 n)

end

end A059537.P15337060193653367822

/-! ## A059537.P18195703540808344534

`A057354(3*(n+1))%A023023(A002522(n+3))`
-/

namespace A059537.P18195703540808344534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057354 (3 * (n + 1))) (A023023 (A002522 (n + 3)).toNat)

end

end A059537.P18195703540808344534

/-! ## A059537.P13367048017521905249

`A003415(A033217(2*n+1))*A047226(n+2)`
-/

namespace A059537.P13367048017521905249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A033217 (2 * n + 1)).toNat * A047226 (n + 2)

end

end A059537.P13367048017521905249

/-! ## A059537.P17677458474983676692

`A259361(A228186(n))`
-/

namespace A059537.P17677458474983676692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A228186 n).toNat

end

end A059537.P17677458474983676692

/-! ## A059537.P15450361969113604204

`∑[A177706(n)]%A034840(n)`
-/

namespace A059537.P15450361969113604204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A034840 n)

end

end A059537.P15450361969113604204

/-! ## A059537.P2517772368440846244

`A057354(A008486(n+1))%A034840(n)`
-/

namespace A059537.P2517772368440846244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057354 (A008486 (n + 1)).toNat) (A034840 n)

end

end A059537.P2517772368440846244

/-!
# A059538: Beatty sequence for zeta(3)/(zeta(3)-1).

The programs for A059538, there is no canonical definition to state claims against.
-/

/-! ## A059538.P14750330079439215195

`A172471(A078126(7*(n+1)))+n+1`
-/

namespace A059538.P14750330079439215195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A078126 (7 * (n + 1))).toNat + (n + 1 : ℤ)

end

end A059538.P14750330079439215195

/-! ## A059538.P12695030704424626053

`∑[A324086(A023931(n)+3)]`
-/

namespace A059538.P12695030704424626053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324086 (A023931 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059538.P12695030704424626053

/-! ## A059538.P14105976237292710660

`∑[6-A249832(A139271(n))]`
-/

namespace A059538.P14105976237292710660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - A249832 (A139271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059538.P14105976237292710660

/-! ## A059538.P14167056631917759079

`A004277(3*(n+1))-A279223(A090702(n+1))`
-/

namespace A059538.P14167056631917759079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (3 * (n + 1)) - A279223 (A090702 (n + 1)).toNat

end

end A059538.P14167056631917759079

/-! ## A059538.P8662613151296949540

`A055086(A002378(3*(n+1))-A034838(n+1))`
-/

namespace A059538.P8662613151296949540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A002378 (3 * (n + 1)) - A034838 (n + 1)).toNat

end

end A059538.P8662613151296949540

/-!
# A059539: Beatty sequence for 3^(1/3).

The programs for A059539, the canonical program `A059539.P5693483721270638567` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059539 has offset 1).

The definition of A059539 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059539.P5682802490758174403

`floor((n+1)*root(3, 3))`
-/

namespace A059539.P5682802490758174403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * (3 : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A059539.P5682802490758174403

namespace A059539

/-- `floor((n+1)*root(3, 3))` -/
def P5682802490758174403.Spec : Prop :=
  ∀ n, P5682802490758174403.a n = A059539 (n + 1)

end A059539

/-! ## A059539.P1890658841372904495

`∑[Δ[floor(n*root(3, 3))]%3]`
-/

namespace A059539.P1890658841372904495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (3 : ℝ) ^ (1 / (3 : ℝ))⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059539.P1890658841372904495

namespace A059539

/-- `∑[Δ[floor(n*root(3, 3))]%3]` -/
def P1890658841372904495.Spec : Prop :=
  ∀ n, P1890658841372904495.a n = A059539 (n + 1)

end A059539

/-! ## A059539.P5693483721270638567

`∑[A081129(n)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A059539

/-- `∑[A081129(n)]` -/
def P5693483721270638567.Spec : Prop :=
  ∀ n, P5693483721270638567.a n = A059539 (n + 1)

theorem P5693483721270638567.correct : P5693483721270638567.Spec := by
  intro n
  simp only [A059539, Nat.add_sub_cancel]

end A059539

/-! ## A059539.P9607199506073135677

`comp[A059540(n+1)-1]+1`
-/

namespace A059539.P9607199506073135677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059540 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A059539.P9607199506073135677

namespace A059539

/-- `comp[A059540(n+1)-1]+1` -/
def P9607199506073135677.Spec : Prop :=
  ∀ n, (P9607199506073135677.a n : ℤ) = A059539 (n + 1)

end A059539

/-! ## A059539.P9654910591729966083

`A002264(A248188(2*n+1+n))`
-/

namespace A059539.P9654910591729966083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A248188 (2 * n + 1 + n)).toNat

end

end A059539.P9654910591729966083

namespace A059539

/-- `A002264(A248188(2*n+1+n))` -/
def P9654910591729966083.Spec : Prop :=
  ∀ n, P9654910591729966083.a n = A059539 (n + 1)

end A059539

/-! ## A059539.P5894656609229194102

`A002265(A248188(2*(2*n+1)))`
-/

namespace A059539.P5894656609229194102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A248188 (2 * (2 * n + 1))).toNat

end

end A059539.P5894656609229194102

namespace A059539

/-- `A002265(A248188(2*(2*n+1)))` -/
def P5894656609229194102.Spec : Prop :=
  ∀ n, P5894656609229194102.a n = A059539 (n + 1)

end A059539

/-! ## A059539.P8928739957860214505

`A003056(∑[A186222(n+1)-A002264(n)])`
-/

namespace A059539.P8928739957860214505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186222 (n + 1) - A002264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A059539.P8928739957860214505

namespace A059539

/-- `A003056(∑[A186222(n+1)-A002264(n)])` -/
def P8928739957860214505.Spec : Prop :=
  ∀ n, P8928739957860214505.a n = A059539 (n + 1)

end A059539

/-! ## A059539.P11590961874776497572

`A329831(n+1)+A329834(n+1)-A329961(n+1)`
-/

namespace A059539.P11590961874776497572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329831 (n + 1) + (A329834 (n + 1) - A329961 (n + 1))

end

end A059539.P11590961874776497572

namespace A059539

/-- `A329831(n+1)+A329834(n+1)-A329961(n+1)` -/
def P11590961874776497572.Spec : Prop :=
  ∀ n, P11590961874776497572.a n = A059539 (n + 1)

end A059539

/-!
# A059540: Beatty sequence for 3^(1/3)/(3^(1/3)-1).

The programs for A059540, the canonical program `A059540.P18319136350329398443` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059540 has offset 1).

The definition of A059540 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059540.P18319136350329398443

`comp[floor(n*root(3, 3))]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059540

/-- `comp[floor(n*root(3, 3))]` -/
def P18319136350329398443.Spec : Prop :=
  ∀ n, (P18319136350329398443.a n : ℤ) = A059540 (n + 1)

theorem P18319136350329398443.correct : P18319136350329398443.Spec := by
  intro n
  simp only [A059540, Nat.add_sub_cancel]

end A059540

/-! ## A059540.P13502048808864011315

`floor(A248187(Δ[A028387(n)])/2)`
-/

namespace A059540.P13502048808864011315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A248187 (f1 (n + 1) - f1 n).toNat : ℚ) / 2⌋

end

end A059540.P13502048808864011315

namespace A059540

/-- `floor(A248187(Δ[A028387(n)])/2)` -/
def P13502048808864011315.Spec : Prop :=
  ∀ n, P13502048808864011315.a n = A059540 (n + 1)

end A059540

/-! ## A059540.P3373583146424316451

`A004526(A248187(Δ[A028387(n)]))`
-/

namespace A059540.P3373583146424316451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A248187 (f1 (n + 1) - f1 n).toNat).toNat

end

end A059540.P3373583146424316451

namespace A059540

/-- `A004526(A248187(Δ[A028387(n)]))` -/
def P3373583146424316451.Spec : Prop :=
  ∀ n, P3373583146424316451.a n = A059540 (n + 1)

end A059540

/-!
# A059541: Beatty sequence for 1 + log(2).

The programs for A059541, the canonical program `A059541.P8004268595186817024` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059541 has offset 1).

The definition of A059541 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059541.P8004268595186817024

`floor((n+1)*(1+log(2)))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059541

/-- `floor((n+1)*(1+log(2)))` -/
def P8004268595186817024.Spec : Prop :=
  ∀ n, P8004268595186817024.a n = A059541 (n + 1)

theorem P8004268595186817024.correct : P8004268595186817024.Spec := by
  intro n
  simp only [A059541, Nat.add_sub_cancel]

end A059541

/-! ## A059541.P6631593962520287921

`∑[A022933(n)+1]`
-/

namespace A059541.P6631593962520287921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022933 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059541.P6631593962520287921

namespace A059541

/-- `∑[A022933(n)+1]` -/
def P6631593962520287921.Spec : Prop :=
  ∀ n, P6631593962520287921.a n = A059541 (n + 1)

end A059541

/-! ## A059541.P16380896108654183948

`A265133(n+1)+1+n`
-/

namespace A059541.P16380896108654183948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265133 (n + 1) + 1 + (n : ℤ)

end

end A059541.P16380896108654183948

namespace A059541

/-- `A265133(n+1)+1+n` -/
def P16380896108654183948.Spec : Prop :=
  ∀ n, P16380896108654183948.a n = A059541 (n + 1)

theorem P16380896108654183948.correct : P16380896108654183948.Spec := by
  intro n
  simp only [A059541, Nat.add_sub_cancel, A059541.P16380896108654183948.a, A059541.P8004268595186817024.a, A265133, A265133.P11312818710983088858.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059541

/-! ## A059541.P3192583057015195112

`∑[char[A307513(n+1)]+1]`
-/

namespace A059541.P3192583057015195112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307513 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059541.P3192583057015195112

namespace A059541

/-- `∑[char[A307513(n+1)]+1]` -/
def P3192583057015195112.Spec : Prop :=
  ∀ n, (P3192583057015195112.a n : ℤ) = A059541 (n + 1)

end A059541

/-! ## A059541.P17813501674244572039

`A330214(n+1)-A059543(n+1)`
-/

namespace A059541.P17813501674244572039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330214 (n + 1) - A059543 (n + 1)

end

end A059541.P17813501674244572039

namespace A059541

/-- `A330214(n+1)-A059543(n+1)` -/
def P17813501674244572039.Spec : Prop :=
  ∀ n, P17813501674244572039.a n = A059541 (n + 1)

end A059541

/-! ## A059541.P17215807808269625710

`ceil(log(A000079(n+1))+n)`
-/

namespace A059541.P17215807808269625710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A000079 (n + 1) : ℝ) + (n : ℝ)⌉

end

end A059541.P17215807808269625710

namespace A059541

/-- `ceil(log(A000079(n+1))+n)` -/
def P17215807808269625710.Spec : Prop :=
  ∀ n, P17215807808269625710.a n = A059541 (n + 1)

end A059541

/-! ## A059541.P1775836166247466581

`ceil(log(∑[A000740(n+1)+1]))+n`
-/

namespace A059541.P1775836166247466581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000740 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)⌉ + (n : ℤ)

end

end A059541.P1775836166247466581

namespace A059541

/-- `ceil(log(∑[A000740(n+1)+1]))+n` -/
def P1775836166247466581.Spec : Prop :=
  ∀ n, P1775836166247466581.a n = A059541 (n + 1)

end A059541

/-! ## A059541.P8553869781085641784

`A329833(and(1, A058000(n+1))+n)`
-/

namespace A059541.P8553869781085641784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329833 (Int.land 1 (A058000 (n + 1)) + (n : ℤ)).toNat

end

end A059541.P8553869781085641784

namespace A059541

/-- `A329833(and(1, A058000(n+1))+n)` -/
def P8553869781085641784.Spec : Prop :=
  ∀ n, P8553869781085641784.a n = A059541 (n + 1)

end A059541

/-! ## A059541.P14193634992017843506

`A329833(n+1)%A002900(n+1)`
-/

namespace A059541.P14193634992017843506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329833 (n + 1)) (A002900 (n + 1))

end

end A059541.P14193634992017843506

namespace A059541

/-- `A329833(n+1)%A002900(n+1)` -/
def P14193634992017843506.Spec : Prop :=
  ∀ n, P14193634992017843506.a n = A059541 (n + 1)

end A059541

/-! ## A059541.P11046136935662419125

`A329833(n+1)%A002189(n)`
-/

namespace A059541.P11046136935662419125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329833 (n + 1)) (A002189 n)

end

end A059541.P11046136935662419125

namespace A059541

/-- `A329833(n+1)%A002189(n)` -/
def P11046136935662419125.Spec : Prop :=
  ∀ n, P11046136935662419125.a n = A059541 (n + 1)

end A059541

/-!
# A059542: Beatty sequence for 1 + 1/log(2).

The programs for A059542, the canonical program `A059542.P16898340013764369545` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059542 has offset 1).

The definition of A059542 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059542.P16898340013764369545

`floor((n+1)*(1+1/log(2)))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059542

/-- `floor((n+1)*(1+1/log(2)))` -/
def P16898340013764369545.Spec : Prop :=
  ∀ n, P16898340013764369545.a n = A059542 (n + 1)

theorem P16898340013764369545.correct : P16898340013764369545.Spec := by
  intro n
  simp only [A059542, Nat.add_sub_cancel]

end A059542

/-! ## A059542.P8043053252886836165

`n+1+A307513(n+1)`
-/

namespace A059542.P8043053252886836165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A307513 (n + 1)

end

end A059542.P8043053252886836165

namespace A059542

/-- `n+1+A307513(n+1)` -/
def P8043053252886836165.Spec : Prop :=
  ∀ n, P8043053252886836165.a n = A059542 (n + 1)

end A059542

/-! ## A059542.P4160057478918893595

`∑[A022934(n)+1]`
-/

namespace A059542.P4160057478918893595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022934 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059542.P4160057478918893595

namespace A059542

/-- `∑[A022934(n)+1]` -/
def P4160057478918893595.Spec : Prop :=
  ∀ n, P4160057478918893595.a n = A059542 (n + 1)

end A059542

/-! ## A059542.P17003750606513288125

`∑[A000040(Δ[floor(n/log(2))])]`
-/

namespace A059542.P17003750606513288125
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.log (2 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059542.P17003750606513288125

namespace A059542

/-- `∑[A000040(Δ[floor(n/log(2))])]` -/
def P17003750606513288125.Spec : Prop :=
  ∀ n, P17003750606513288125.a n = A059542 (n + 1)

end A059542

/-! ## A059542.P5055572124021694656

`floor(A078608(n+1)/2)+n+1`
-/

namespace A059542.P5055572124021694656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A078608 (n + 1) : ℚ) / 2⌋ + (n + 1 : ℤ)

end

end A059542.P5055572124021694656

namespace A059542

/-- `floor(A078608(n+1)/2)+n+1` -/
def P5055572124021694656.Spec : Prop :=
  ∀ n, P5055572124021694656.a n = A059542 (n + 1)

end A059542

/-! ## A059542.P7861249953971265039

`A000027(n+1)+floor((n+1)/log(2))`
-/

namespace A059542.P7861249953971265039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + ⌊(n + 1 : ℝ) / Real.log (2 : ℝ)⌋

end

end A059542.P7861249953971265039

namespace A059542

/-- `A000027(n+1)+floor((n+1)/log(2))` -/
def P7861249953971265039.Spec : Prop :=
  ∀ n, P7861249953971265039.a n = A059542 (n + 1)

end A059542

/-! ## A059542.P6380216324403620866

`A059541(A307513(n+1))+1`
-/

namespace A059542.P6380216324403620866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059541 (A307513 (n + 1)).toNat + 1

end

end A059542.P6380216324403620866

namespace A059542

/-- `A059541(A307513(n+1))+1` -/
def P6380216324403620866.Spec : Prop :=
  ∀ n, P6380216324403620866.a n = A059542 (n + 1)

end A059542

/-! ## A059542.P1621409913961693587

`A373112(n+1)+n`
-/

namespace A059542.P1621409913961693587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373112 (n + 1) + (n : ℤ)

end

end A059542.P1621409913961693587

namespace A059542

/-- `A373112(n+1)+n` -/
def P1621409913961693587.Spec : Prop :=
  ∀ n, P1621409913961693587.a n = A059542 (n + 1)

end A059542

/-! ## A059542.P6460602627321279357

`A020703(A020703(floor((n+1)/log(2)+n+1)))`
-/

namespace A059542.P6460602627321279357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (A020703 ⌊(n + 1 : ℝ) / Real.log (2 : ℝ) + (n + 1 : ℝ)⌋.toNat).toNat

end

end A059542.P6460602627321279357

namespace A059542

/-- `A020703(A020703(floor((n+1)/log(2)+n+1)))` -/
def P6460602627321279357.Spec : Prop :=
  ∀ n, P6460602627321279357.a n = A059542 (n + 1)

end A059542

/-! ## A059542.P7401394279910798094

`A020725(A307513(n+1)+n)`
-/

namespace A059542.P7401394279910798094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A307513 (n + 1) + (n : ℤ)).toNat

end

end A059542.P7401394279910798094

namespace A059542

/-- `A020725(A307513(n+1)+n)` -/
def P7401394279910798094.Spec : Prop :=
  ∀ n, P7401394279910798094.a n = A059542 (n + 1)

end A059542

/-! ## A059542.P4058736806941569823

`A008619(A078608(n+1))+n`
-/

namespace A059542.P4058736806941569823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A078608 (n + 1)).toNat + (n : ℤ)

end

end A059542.P4058736806941569823

namespace A059542

/-- `A008619(A078608(n+1))+n` -/
def P4058736806941569823.Spec : Prop :=
  ∀ n, P4058736806941569823.a n = A059542 (n + 1)

end A059542

/-! ## A059542.P11896500484101174530

`A065033(A342831(n+1))+n`
-/

namespace A059542.P11896500484101174530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A342831 (n + 1)).toNat + (n : ℤ)

end

end A059542.P11896500484101174530

namespace A059542

/-- `A065033(A342831(n+1))+n` -/
def P11896500484101174530.Spec : Prop :=
  ∀ n, P11896500484101174530.a n = A059542 (n + 1)

end A059542

/-! ## A059542.P6600034878760756379

`A065033(A078608(n+1)+1)+n`
-/

namespace A059542.P6600034878760756379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A078608 (n + 1) + 1).toNat + (n : ℤ)

end

end A059542.P6600034878760756379

namespace A059542

/-- `A065033(A078608(n+1)+1)+n` -/
def P6600034878760756379.Spec : Prop :=
  ∀ n, P6600034878760756379.a n = A059542 (n + 1)

end A059542

/-! ## A059542.P7920736526237528084

`A004526(A342831(n+1)+1)+n`
-/

namespace A059542.P7920736526237528084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A342831 (n + 1) + 1).toNat + (n : ℤ)

end

end A059542.P7920736526237528084

namespace A059542

/-- `A004526(A342831(n+1)+1)+n` -/
def P7920736526237528084.Spec : Prop :=
  ∀ n, P7920736526237528084.a n = A059542 (n + 1)

end A059542

/-! ## A059542.P8237109395791765226

`A123108(A342831(n+1)+1)+n`
-/

namespace A059542.P8237109395791765226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A342831 (n + 1) + 1).toNat + (n : ℤ)

end

end A059542.P8237109395791765226

namespace A059542

/-- `A123108(A342831(n+1)+1)+n` -/
def P8237109395791765226.Spec : Prop :=
  ∀ n, P8237109395791765226.a n = A059542 (n + 1)

end A059542

/-! ## A059542.P11454669615352757873

`A123108(A078608(n+1)+2)+n`
-/

namespace A059542.P11454669615352757873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A078608 (n + 1) + 2).toNat + (n : ℤ)

end

end A059542.P11454669615352757873

namespace A059542

/-- `A123108(A078608(n+1)+2)+n` -/
def P11454669615352757873.Spec : Prop :=
  ∀ n, P11454669615352757873.a n = A059542 (n + 1)

end A059542

/-! ## A059542.P5908354483002812767

`ceil(log2(cosh(n+1))+1+n)`
-/

namespace A059542.P5908354483002812767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Real.cosh (n + 1 : ℝ)) + 1 + (n : ℝ)⌉

end

end A059542.P5908354483002812767

namespace A059542

/-- `ceil(log2(cosh(n+1))+1+n)` -/
def P5908354483002812767.Spec : Prop :=
  ∀ n, P5908354483002812767.a n = A059542 (n + 1)

end A059542

/-! ## A059542.P7444577744464459386

`ceil(log2(sinh(n+1))+n+1)`
-/

namespace A059542.P7444577744464459386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Real.sinh (n + 1 : ℝ)) + (n + 1 : ℝ)⌉

end

end A059542.P7444577744464459386

namespace A059542

/-- `ceil(log2(sinh(n+1))+n+1)` -/
def P7444577744464459386.Spec : Prop :=
  ∀ n, P7444577744464459386.a n = A059542 (n + 1)

end A059542

/-!
# A059543: Beatty sequence for log(3).

The programs for A059543, the canonical program `A059543.P4837780587904840858` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059543 has offset 1).

The definition of A059543 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059543.P4837780587904840858

`floor((n+1)*log(3))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059543

/-- `floor((n+1)*log(3))` -/
def P4837780587904840858.Spec : Prop :=
  ∀ n, P4837780587904840858.a n = A059543 (n + 1)

theorem P4837780587904840858.correct : P4837780587904840858.Spec := by
  intro n
  simp only [A059543, Nat.add_sub_cancel]

end A059543

/-! ## A059543.P11912205707245807784

`A059548(n+1)-(n+1)`
-/

namespace A059543.P11912205707245807784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059548 (n + 1) - (n + 1 : ℤ)

end

end A059543.P11912205707245807784

namespace A059543

/-- `A059548(n+1)-(n+1)` -/
def P11912205707245807784.Spec : Prop :=
  ∀ n, P11912205707245807784.a n = A059543 (n + 1)

theorem P11912205707245807784.correct : P11912205707245807784.Spec := by
  intro n
  simp only [A059543, Nat.add_sub_cancel, A059543.P11912205707245807784.a, A059543.P4837780587904840858.a, A059548, A059548.P14659020592617218728.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059543

/-! ## A059543.P5096488254479240970

`comp[floor(sqrt(A059544(n+1)²+1))-1]+1`
-/

namespace A059543.P5096488254479240970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A059544 (n + 1) ^ 2 + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A059543.P5096488254479240970

namespace A059543

/-- `comp[floor(sqrt(A059544(n+1)²+1))-1]+1` -/
def P5096488254479240970.Spec : Prop :=
  ∀ n, (P5096488254479240970.a n : ℤ) = A059543 (n + 1)

end A059543

/-! ## A059543.P5277997770628858096

`A330214(n+1)-∑[char[A307513(n+1)]+1]`
-/

namespace A059543.P5277997770628858096
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307513 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330214 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A059543.P5277997770628858096

namespace A059543

/-- `A330214(n+1)-∑[char[A307513(n+1)]+1]` -/
def P5277997770628858096.Spec : Prop :=
  ∀ n, P5277997770628858096.a n = A059543 (n + 1)

end A059543

/-! ## A059543.P4533573029704362255

`A000196(A187226((n+1)²))`
-/

namespace A059543.P4533573029704362255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A187226 ((n + 1) ^ 2)).toNat

end

end A059543.P4533573029704362255

namespace A059543

/-- `A000196(A187226((n+1)²))` -/
def P4533573029704362255.Spec : Prop :=
  ∀ n, P4533573029704362255.a n = A059543 (n + 1)

end A059543

/-! ## A059543.P10438286285466499330

`lt[10, A073731(n+1)+2]`
-/

namespace A059543.P10438286285466499330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073731 (n + 1 + 10) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A059543.P10438286285466499330

namespace A059543

/-- `lt[10, A073731(n+1)+2]` -/
def P10438286285466499330.Spec : Prop :=
  ∀ n, (P10438286285466499330.a n : ℤ) = A059543 (n + 1)

end A059543

/-! ## A059543.P8648900422775286952

`lt[A336865(n+1), A070335(n)²]`
-/

namespace A059543.P8648900422775286952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070335 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A059543.P8648900422775286952

namespace A059543

/-- `lt[A336865(n+1), A070335(n)²]` -/
def P8648900422775286952.Spec : Prop :=
  ∀ n, (P8648900422775286952.a n : ℤ) = A059543 (n + 1)

end A059543

/-!
# A059544: Beatty sequence for log(3)/(log(3)-1).

The programs for A059544, the canonical program `A059544.P463537627868471596` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059544 has offset 1).

The definition of A059544 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059544.P463537627868471596

`floor((n+1)*log(3)/(log(3)-1))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059544

/-- `floor((n+1)*log(3)/(log(3)-1))` -/
def P463537627868471596.Spec : Prop :=
  ∀ n, P463537627868471596.a n = A059544 (n + 1)

theorem P463537627868471596.correct : P463537627868471596.Spec := by
  intro n
  simp only [A059544, Nat.add_sub_cancel]

end A059544

/-! ## A059544.P11525418011337243447

`A141310(A129801(n+1))+A017629(n)-A145569(n)`
-/

namespace A059544.P11525418011337243447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A129801 (n + 1)).toNat + (A017629 n - A145569 n)

end

end A059544.P11525418011337243447

namespace A059544

/-- `A141310(A129801(n+1))+A017629(n)-A145569(n)` -/
def P11525418011337243447.Spec : Prop :=
  ∀ n, P11525418011337243447.a n = A059544 (n + 1)

end A059544

/-! ## A059544.P929763369215103688

`A141310((2*n+1)²)+A017629(n)-A145569(n)`
-/

namespace A059544.P929763369215103688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 ((2 * n + 1) ^ 2) + (A017629 n - A145569 n)

end

end A059544.P929763369215103688

namespace A059544

/-- `A141310((2*n+1)²)+A017629(n)-A145569(n)` -/
def P929763369215103688.Spec : Prop :=
  ∀ n, P929763369215103688.a n = A059544 (n + 1)

end A059544

/-! ## A059544.P15411912511587602757

`A257645(n)-A329977(n+1)`
-/

namespace A059544.P15411912511587602757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257645 n - A329977 (n + 1)

end

end A059544.P15411912511587602757

namespace A059544

/-- `A257645(n)-A329977(n+1)` -/
def P15411912511587602757.Spec : Prop :=
  ∀ n, P15411912511587602757.a n = A059544 (n + 1)

end A059544

/-! ## A059544.P11642183553531311094

`A121854(A135971(n+1))`
-/

namespace A059544.P11642183553531311094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121854 (A135971 (n + 1)).toNat

end

end A059544.P11642183553531311094

namespace A059544

/-- `A121854(A135971(n+1))` -/
def P11642183553531311094.Spec : Prop :=
  ∀ n, P11642183553531311094.a n = A059544 (n + 1)

end A059544

/-!
# A059545: Beatty sequence for log(10).

The programs for A059545, the canonical program `A059545.P14160515510043624435` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059545 has offset 1).

The definition of A059545 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059545.P14160515510043624435

`floor(log(10)*(n+1))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059545

/-- `floor(log(10)*(n+1))` -/
def P14160515510043624435.Spec : Prop :=
  ∀ n, P14160515510043624435.a n = A059545 (n + 1)

theorem P14160515510043624435.correct : P14160515510043624435.Spec := by
  intro n
  simp only [A059545, Nat.add_sub_cancel]

end A059545

/-! ## A059545.P9586985345384919448

`A059550(n+1)-(n+1)`
-/

namespace A059545.P9586985345384919448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059550 (n + 1) - (n + 1 : ℤ)

end

end A059545.P9586985345384919448

namespace A059545

/-- `A059550(n+1)-(n+1)` -/
def P9586985345384919448.Spec : Prop :=
  ∀ n, P9586985345384919448.a n = A059545 (n + 1)

theorem P9586985345384919448.correct : P9586985345384919448.Spec := by
  intro n
  simp only [A059545, Nat.add_sub_cancel, A059545.P9586985345384919448.a, A059545.P14160515510043624435.a, A059550, A059550.P7944428284410734695.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059545

/-! ## A059545.P7749667523878218273

`lt[1, Δ[A254528(n)²]]`
-/

namespace A059545.P7749667523878218273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254528 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A059545.P7749667523878218273

namespace A059545

/-- `lt[1, Δ[A254528(n)²]]` -/
def P7749667523878218273.Spec : Prop :=
  ∀ n, (P7749667523878218273.a n : ℤ) = A059545 (n + 1)

end A059545

/-! ## A059545.P17694336170764654077

`A023443(A059550(n+1)-n)`
-/

namespace A059545.P17694336170764654077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A059550 (n + 1) - (n : ℤ)).toNat

end

end A059545.P17694336170764654077

namespace A059545

/-- `A023443(A059550(n+1)-n)` -/
def P17694336170764654077.Spec : Prop :=
  ∀ n, P17694336170764654077.a n = A059545 (n + 1)

end A059545

/-! ## A059545.P10960176836356060923

`A008619(A111499(2*(n+1)))`
-/

namespace A059545.P10960176836356060923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A111499 (2 * (n + 1))).toNat

end

end A059545.P10960176836356060923

namespace A059545

/-- `A008619(A111499(2*(n+1)))` -/
def P10960176836356060923.Spec : Prop :=
  ∀ n, P10960176836356060923.a n = A059545 (n + 1)

end A059545

/-! ## A059545.P6735071199961278243

`A080513(A111499(2*(n+1))-1)`
-/

namespace A059545.P6735071199961278243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A111499 (2 * (n + 1)) - 1).toNat

end

end A059545.P6735071199961278243

namespace A059545

/-- `A080513(A111499(2*(n+1))-1)` -/
def P6735071199961278243.Spec : Prop :=
  ∀ n, P6735071199961278243.a n = A059545 (n + 1)

end A059545

/-! ## A059545.P3106435269840285382

`A065033(A111499(2*(n+1))+1)`
-/

namespace A059545.P3106435269840285382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A111499 (2 * (n + 1)) + 1).toNat

end

end A059545.P3106435269840285382

namespace A059545

/-- `A065033(A111499(2*(n+1))+1)` -/
def P3106435269840285382.Spec : Prop :=
  ∀ n, P3106435269840285382.a n = A059545 (n + 1)

end A059545

/-! ## A059545.P8054246435804392537

`A004526(A111499(2*(n+1))+2)`
-/

namespace A059545.P8054246435804392537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A111499 (2 * (n + 1)) + 2).toNat

end

end A059545.P8054246435804392537

namespace A059545

/-- `A004526(A111499(2*(n+1))+2)` -/
def P8054246435804392537.Spec : Prop :=
  ∀ n, P8054246435804392537.a n = A059545 (n + 1)

end A059545

/-! ## A059545.P9611604721321213509

`A000463(or(1, A111499(2*(n+1))))`
-/

namespace A059545.P9611604721321213509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (Int.lor 1 (A111499 (2 * (n + 1)))).toNat

end

end A059545.P9611604721321213509

namespace A059545

/-- `A000463(or(1, A111499(2*(n+1))))` -/
def P9611604721321213509.Spec : Prop :=
  ∀ n, P9611604721321213509.a n = A059545 (n + 1)

end A059545

/-! ## A059545.P12459909604624274790

`A008621(2*A111499(2*(n+1)))`
-/

namespace A059545.P12459909604624274790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (2 * A111499 (2 * (n + 1))).toNat

end

end A059545.P12459909604624274790

namespace A059545

/-- `A008621(2*A111499(2*(n+1)))` -/
def P12459909604624274790.Spec : Prop :=
  ∀ n, P12459909604624274790.a n = A059545 (n + 1)

end A059545

/-! ## A059545.P2103788855979279972

`A008624(2*A111499(2*(n+1)))`
-/

namespace A059545.P2103788855979279972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (2 * A111499 (2 * (n + 1))).toNat

end

end A059545.P2103788855979279972

namespace A059545

/-- `A008624(2*A111499(2*(n+1)))` -/
def P2103788855979279972.Spec : Prop :=
  ∀ n, P2103788855979279972.a n = A059545 (n + 1)

end A059545

/-! ## A059545.P197838075961211463

`A008612(3*A111499(2*(n+1)))`
-/

namespace A059545.P197838075961211463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (3 * A111499 (2 * (n + 1))).toNat

end

end A059545.P197838075961211463

namespace A059545

/-- `A008612(3*A111499(2*(n+1)))` -/
def P197838075961211463.Spec : Prop :=
  ∀ n, P197838075961211463.a n = A059545 (n + 1)

end A059545

/-! ## A059545.P9193782585861721886

`ceil(2*log(A083379(n+2)))`
-/

namespace A059545.P9193782585861721886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * Real.log (A083379 (n + 2) : ℝ)⌉

end

end A059545.P9193782585861721886

namespace A059545

/-- `ceil(2*log(A083379(n+2)))` -/
def P9193782585861721886.Spec : Prop :=
  ∀ n, P9193782585861721886.a n = A059545 (n + 1)

end A059545

/-! ## A059545.P2704703390968612591

`ceil(log(A199690(n)))`
-/

namespace A059545.P2704703390968612591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A199690 n : ℝ)⌉

end

end A059545.P2704703390968612591

namespace A059545

/-- `ceil(log(A199690(n)))` -/
def P2704703390968612591.Spec : Prop :=
  ∀ n, P2704703390968612591.a n = A059545 (n + 1)

end A059545

/-! ## A059545.P10966681158205173759

`round(log(A199686(n)))`
-/

namespace A059545.P10966681158205173759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A199686 n : ℝ))

end

end A059545.P10966681158205173759

namespace A059545

/-- `round(log(A199686(n)))` -/
def P10966681158205173759.Spec : Prop :=
  ∀ n, P10966681158205173759.a n = A059545 (n + 1)

end A059545

/-! ## A059545.P15167849400410190522

`round(log(A090019(n+1)))`
-/

namespace A059545.P15167849400410190522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A090019 (n + 1) : ℝ))

end

end A059545.P15167849400410190522

namespace A059545

/-- `round(log(A090019(n+1)))` -/
def P15167849400410190522.Spec : Prop :=
  ∀ n, P15167849400410190522.a n = A059545 (n + 1)

end A059545

/-! ## A059545.P10782541456951684177

`round(log(A099151(n+1)))`
-/

namespace A059545.P10782541456951684177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A099151 (n + 1) : ℝ))

end

end A059545.P10782541456951684177

namespace A059545

/-- `round(log(A099151(n+1)))` -/
def P10782541456951684177.Spec : Prop :=
  ∀ n, P10782541456951684177.a n = A059545 (n + 1)

end A059545

/-! ## A059545.P7312909784393995986

`ceil(log(A083379(n+2)²))`
-/

namespace A059545.P7312909784393995986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A083379 (n + 2) ^ 2 : ℝ)⌉

end

end A059545.P7312909784393995986

namespace A059545

/-- `ceil(log(A083379(n+2)²))` -/
def P7312909784393995986.Spec : Prop :=
  ∀ n, P7312909784393995986.a n = A059545 (n + 1)

end A059545

/-!
# A059546: Beatty sequence for log(10)/(log(10)-1).

The programs for A059546, the canonical program `A059546.P14664053568024344509` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059546 has offset 1).

The definition of A059546 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059546.P14664053568024344509

`floor((n+1)*log(10)/(log(10)-1))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059546

/-- `floor((n+1)*log(10)/(log(10)-1))` -/
def P14664053568024344509.Spec : Prop :=
  ∀ n, P14664053568024344509.a n = A059546 (n + 1)

theorem P14664053568024344509.correct : P14664053568024344509.Spec := by
  intro n
  simp only [A059546, Nat.add_sub_cancel]

end A059546

/-! ## A059546.P14612437750948077219

`comp[A059545(n+1)-1]+1`
-/

namespace A059546.P14612437750948077219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059545 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A059546.P14612437750948077219

namespace A059546

/-- `comp[A059545(n+1)-1]+1` -/
def P14612437750948077219.Spec : Prop :=
  ∀ n, (P14612437750948077219.a n : ℤ) = A059546 (n + 1)

end A059546

/-! ## A059546.P1296625161664953339

`lt[n*Δ[A254528(n)], n]`
-/

namespace A059546.P1296625161664953339
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254528 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A059546.P1296625161664953339

namespace A059546

/-- `lt[n*Δ[A254528(n)], n]` -/
def P1296625161664953339.Spec : Prop :=
  ∀ n, (P1296625161664953339.a n : ℤ) = A059546 (n + 1)

end A059546

/-! ## A059546.P12175374315410564889

`A254528(a(n-1)+2)+n` with `a(0)=1`
-/

namespace A059546.P12175374315410564889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A254528 (a (n - 1) + 2).toNat + (n : ℤ)

end

end A059546.P12175374315410564889

namespace A059546

/-- `A254528(a(n-1)+2)+n` -/
def P12175374315410564889.Spec : Prop :=
  ∀ n, P12175374315410564889.a n = A059546 (n + 1)

end A059546

/-! ## A059546.P14058440996000653740

`lt[Δ[A254528(n)], n/A000032(n)]`
-/

namespace A059546.P14058440996000653740
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254528 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A000032 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A059546.P14058440996000653740

namespace A059546

/-- `lt[Δ[A254528(n)], n/A000032(n)]` -/
def P14058440996000653740.Spec : Prop :=
  ∀ n, (P14058440996000653740.a n : ℤ) = A059546 (n + 1)

end A059546

/-! ## A059546.P11556035480902693326

`A053989(A061067(n)+1)*A172474(5*(n+1))`
-/

namespace A059546.P11556035480902693326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (A061067 n + 1).toNat * A172474 (5 * (n + 1))

end

end A059546.P11556035480902693326

namespace A059546

/-- `A053989(A061067(n)+1)*A172474(5*(n+1))` -/
def P11556035480902693326.Spec : Prop :=
  ∀ n, P11556035480902693326.a n = A059546 (n + 1)

end A059546

/-! ## A059546.P12774486868550365924

`A103689(A061067(n)+1)*A172474(5*(n+1))`
-/

namespace A059546.P12774486868550365924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103689 (A061067 n + 1).toNat * A172474 (5 * (n + 1))

end

end A059546.P12774486868550365924

namespace A059546

/-- `A103689(A061067(n)+1)*A172474(5*(n+1))` -/
def P12774486868550365924.Spec : Prop :=
  ∀ n, P12774486868550365924.a n = A059546 (n + 1)

end A059546

/-! ## A059546.P1901433500396294435

`A172474(record[5*A235791(n+1)])`
-/

namespace A059546.P1901433500396294435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A235791 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172474 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A059546.P1901433500396294435

namespace A059546

/-- `A172474(record[5*A235791(n+1)])` -/
def P1901433500396294435.Spec : Prop :=
  ∀ n, P1901433500396294435.a n = A059546 (n + 1)

end A059546

/-! ## A059546.P8920007800128031336

`A172474(5*(n+1))/A003557(p?[A180124(3*(n+2))])`
-/

namespace A059546.P8920007800128031336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180124 (3 * (n + 2))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172474 (5 * (n + 1)) : ℚ) / (A003557 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ)

end

end A059546.P8920007800128031336

namespace A059546

/-- `A172474(5*(n+1))/A003557(p?[A180124(3*(n+2))])` -/
def P8920007800128031336.Spec : Prop :=
  ∀ n, P8920007800128031336.a n = (A059546 (n + 1) : ℚ)

end A059546

/-! ## A059546.P18277065337178594576

`A172474(5*A004736(∑[n]+1))`
-/

namespace A059546.P18277065337178594576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172474 (5 * A004736 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A059546.P18277065337178594576

namespace A059546

/-- `A172474(5*A004736(∑[n]+1))` -/
def P18277065337178594576.Spec : Prop :=
  ∀ n, P18277065337178594576.a n = A059546 (n + 1)

end A059546

/-! ## A059546.P6504721804459539661

`A172474(5*(n+1))%A000005(A140513(n))²`
-/

namespace A059546.P6504721804459539661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172474 (5 * (n + 1))) (A000005 (A140513 n).toNat ^ 2)

end

end A059546.P6504721804459539661

namespace A059546

/-- `A172474(5*(n+1))%A000005(A140513(n))²` -/
def P6504721804459539661.Spec : Prop :=
  ∀ n, P6504721804459539661.a n = A059546 (n + 1)

end A059546

/-! ## A059546.P2001359952647358633

`round(log(A196797(n+1)))`
-/

namespace A059546.P2001359952647358633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A196797 (n + 1) : ℝ))

end

end A059546.P2001359952647358633

namespace A059546

/-- `round(log(A196797(n+1)))` -/
def P2001359952647358633.Spec : Prop :=
  ∀ n, P2001359952647358633.a n = A059546 (n + 1)

end A059546

/-!
# A059547: Beatty sequence for 1 + 1/log(3).

The programs for A059547, the canonical program `A059547.P4129407123688766189` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059547 has offset 1).

The definition of A059547 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059547.P4129407123688766189

`comp[floor(n*(log(3)+1))]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059547

/-- `comp[floor(n*(log(3)+1))]` -/
def P4129407123688766189.Spec : Prop :=
  ∀ n, (P4129407123688766189.a n : ℤ) = A059547 (n + 1)

theorem P4129407123688766189.correct : P4129407123688766189.Spec := by
  intro n
  simp only [A059547, Nat.add_sub_cancel]

end A059547

/-! ## A059547.P6706236857526694133

`floor((n+1)/log(3))+C(n+1, n)`
-/

namespace A059547.P6706236857526694133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.log (3 : ℝ)⌋ + (Nat.choose (n + 1) n : ℤ)

end

end A059547.P6706236857526694133

namespace A059547

/-- `floor((n+1)/log(3))+C(n+1, n)` -/
def P6706236857526694133.Spec : Prop :=
  ∀ n, P6706236857526694133.a n = A059547 (n + 1)

end A059547

/-! ## A059547.P6412775883753357983

`floor((n+1)/log(3))%(n+1)+n+1`
-/

namespace A059547.P6412775883753357983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n + 1 : ℝ) / Real.log (3 : ℝ)⌋ (n + 1 : ℤ) + (n + 1 : ℤ)

end

end A059547.P6412775883753357983

namespace A059547

/-- `floor((n+1)/log(3))%(n+1)+n+1` -/
def P6412775883753357983.Spec : Prop :=
  ∀ n, P6412775883753357983.a n = A059547 (n + 1)

end A059547

/-! ## A059547.P16021832906514548977

`∑[char[A059543(n+1)]+1]`
-/

namespace A059547.P16021832906514548977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059543 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059547.P16021832906514548977

namespace A059547

/-- `∑[char[A059543(n+1)]+1]` -/
def P16021832906514548977.Spec : Prop :=
  ∀ n, (P16021832906514548977.a n : ℤ) = A059547 (n + 1)

end A059547

/-! ## A059547.P4483518883077795599

`A005408(n)-∑[char[A059544(n+1)]]`
-/

namespace A059547.P4483518883077795599
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059544 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A059547.P4483518883077795599

namespace A059547

/-- `A005408(n)-∑[char[A059544(n+1)]]` -/
def P4483518883077795599.Spec : Prop :=
  ∀ n, P4483518883077795599.a n = A059547 (n + 1)

end A059547

/-! ## A059547.P8740657994468123400

`A178787(n)+A107846(A309007(n+2))+n`
-/

namespace A059547.P8740657994468123400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178787 n + (A107846 (A309007 (n + 2)).toNat + (n : ℤ))

end

end A059547.P8740657994468123400

namespace A059547

/-- `A178787(n)+A107846(A309007(n+2))+n` -/
def P8740657994468123400.Spec : Prop :=
  ∀ n, P8740657994468123400.a n = A059547 (n + 1)

end A059547

/-! ## A059547.P15136266850965079069

`A064719(n+1)%A002900(n+1)`
-/

namespace A059547.P15136266850965079069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064719 (n + 1)) (A002900 (n + 1))

end

end A059547.P15136266850965079069

namespace A059547

/-- `A064719(n+1)%A002900(n+1)` -/
def P15136266850965079069.Spec : Prop :=
  ∀ n, P15136266850965079069.a n = A059547 (n + 1)

end A059547

/-! ## A059547.P8569191131245642789

`A064719(n+1)%A002189(n)`
-/

namespace A059547.P8569191131245642789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064719 (n + 1)) (A002189 n)

end

end A059547.P8569191131245642789

namespace A059547

/-- `A064719(n+1)%A002189(n)` -/
def P8569191131245642789.Spec : Prop :=
  ∀ n, P8569191131245642789.a n = A059547 (n + 1)

end A059547

/-!
# A059548: Beatty sequence for 1 + log(3).

The programs for A059548, the canonical program `A059548.P14659020592617218728` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059548 has offset 1).

The definition of A059548 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059548.P11822772052921443293

`floor((log(3)+1)*(n+1))`
-/

namespace A059548.P11822772052921443293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.log (3 : ℝ) + 1) * (n + 1 : ℝ)⌋

end

end A059548.P11822772052921443293

namespace A059548

/-- `floor((log(3)+1)*(n+1))` -/
def P11822772052921443293.Spec : Prop :=
  ∀ n, P11822772052921443293.a n = A059548 (n + 1)

end A059548

/-! ## A059548.P14659020592617218728

`A059543(n+1)+1+n`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A059548

/-- `A059543(n+1)+1+n` -/
def P14659020592617218728.Spec : Prop :=
  ∀ n, P14659020592617218728.a n = A059548 (n + 1)

theorem P14659020592617218728.correct : P14659020592617218728.Spec := by
  intro n
  simp only [A059548, Nat.add_sub_cancel]

end A059548

/-! ## A059548.P16121079889758768303

`∑[char[A059544(n+1)-(n+1)]+2]`
-/

namespace A059548.P16121079889758768303
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059544 (n + 1) - (n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059548.P16121079889758768303

namespace A059548

/-- `∑[char[A059544(n+1)-(n+1)]+2]` -/
def P16121079889758768303.Spec : Prop :=
  ∀ n, (P16121079889758768303.a n : ℤ) = A059548 (n + 1)

end A059548

/-! ## A059548.P17496612815777752493

`A059547(A059543(n+1))+1`
-/

namespace A059548.P17496612815777752493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059547 (A059543 (n + 1)).toNat + 1

end

end A059548.P17496612815777752493

namespace A059548

/-- `A059547(A059543(n+1))+1` -/
def P17496612815777752493.Spec : Prop :=
  ∀ n, P17496612815777752493.a n = A059548 (n + 1)

end A059548

/-! ## A059548.P5621444748049226364

`record[A059543(A008620(n))+A008611(n)]`
-/

namespace A059548.P5621444748049226364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059543 (A008620 n).toNat + A008611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059548.P5621444748049226364

namespace A059548

/-- `record[A059543(A008620(n))+A008611(n)]` -/
def P5621444748049226364.Spec : Prop :=
  ∀ n, P5621444748049226364.a n = A059548 (n + 1)

end A059548

/-! ## A059548.P13319920219896134838

`record[A065648(n)+A059543(A065648(n))]`
-/

namespace A059548.P13319920219896134838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065648 n + A059543 (A065648 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059548.P13319920219896134838

namespace A059548

/-- `record[A065648(n)+A059543(A065648(n))]` -/
def P13319920219896134838.Spec : Prop :=
  ∀ n, P13319920219896134838.a n = A059548 (n + 1)

end A059548

/-! ## A059548.P17633196759992116719

`ceil(log(A000244(n+1))+n)`
-/

namespace A059548.P17633196759992116719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A000244 (n + 1) : ℝ) + (n : ℝ)⌉

end

end A059548.P17633196759992116719

namespace A059548

/-- `ceil(log(A000244(n+1))+n)` -/
def P17633196759992116719.Spec : Prop :=
  ∀ n, P17633196759992116719.a n = A059548 (n + 1)

end A059548

/-! ## A059548.P16255380164786750683

`ceil(log(A014211(n+1))+n)`
-/

namespace A059548.P16255380164786750683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A014211 (n + 1) : ℝ) + (n : ℝ)⌉

end

end A059548.P16255380164786750683

namespace A059548

/-- `ceil(log(A014211(n+1))+n)` -/
def P16255380164786750683.Spec : Prop :=
  ∀ n, P16255380164786750683.a n = A059548 (n + 1)

end A059548

/-! ## A059548.P3274770148988857071

`ceil(log(A104743(n+1))+n)`
-/

namespace A059548.P3274770148988857071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A104743 (n + 1) : ℝ) + (n : ℝ)⌉

end

end A059548.P3274770148988857071

namespace A059548

/-- `ceil(log(A104743(n+1))+n)` -/
def P3274770148988857071.Spec : Prop :=
  ∀ n, P3274770148988857071.a n = A059548 (n + 1)

end A059548

/-! ## A059548.P8583138450523600115

`∑[A151800(Δ[A331162(n)])]`
-/

namespace A059548.P8583138450523600115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331162 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059548.P8583138450523600115

namespace A059548

/-- `∑[A151800(Δ[A331162(n)])]` -/
def P8583138450523600115.Spec : Prop :=
  ∀ n, P8583138450523600115.a n = A059548 (n + 1)

end A059548

/-!
# A059549: Beatty sequence for 1 + 1/log(10).

The programs for A059549, the canonical program `A059549.P2048707006367111027` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059549 has offset 1).

The definition of A059549 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059549.P2048707006367111027

`floor((n+1)*(1+1/log(10)))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059549

/-- `floor((n+1)*(1+1/log(10)))` -/
def P2048707006367111027.Spec : Prop :=
  ∀ n, P2048707006367111027.a n = A059549 (n + 1)

theorem P2048707006367111027.correct : P2048707006367111027.Spec := by
  intro n
  simp only [A059549, Nat.add_sub_cancel]

end A059549

/-! ## A059549.P5403301984242646074

`A254528(n+1)+n`
-/

namespace A059549.P5403301984242646074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254528 (n + 1) + (n : ℤ)

end

end A059549.P5403301984242646074

namespace A059549

/-- `A254528(n+1)+n` -/
def P5403301984242646074.Spec : Prop :=
  ∀ n, P5403301984242646074.a n = A059549 (n + 1)

end A059549

/-! ## A059549.P12227842847771781935

`∑[2^Δ[A254528(n)]]`
-/

namespace A059549.P12227842847771781935
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254528 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059549.P12227842847771781935

namespace A059549

/-- `∑[2^Δ[A254528(n)]]` -/
def P12227842847771781935.Spec : Prop :=
  ∀ n, P12227842847771781935.a n = (A059549 (n + 1) : ℚ)

end A059549

/-! ## A059549.P17642182538593885587

`∑[char[A059545(n+1)]+1]`
-/

namespace A059549.P17642182538593885587
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059545 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059549.P17642182538593885587

namespace A059549

/-- `∑[char[A059545(n+1)]+1]` -/
def P17642182538593885587.Spec : Prop :=
  ∀ n, (P17642182538593885587.a n : ℤ) = A059549 (n + 1)

end A059549

/-! ## A059549.P9593621221446599243

`comp[A059550(n+1)-1]+1`
-/

namespace A059549.P9593621221446599243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059550 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A059549.P9593621221446599243

namespace A059549

/-- `comp[A059550(n+1)-1]+1` -/
def P9593621221446599243.Spec : Prop :=
  ∀ n, (P9593621221446599243.a n : ℤ) = A059549 (n + 1)

end A059549

/-! ## A059549.P16168770010480934516

`∑[A254574(Δ[A254528(n)])]`
-/

namespace A059549.P16168770010480934516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254528 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254574 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059549.P16168770010480934516

namespace A059549

/-- `∑[A254574(Δ[A254528(n)])]` -/
def P16168770010480934516.Spec : Prop :=
  ∀ n, P16168770010480934516.a n = A059549 (n + 1)

end A059549

/-! ## A059549.P10083435570618385124

`∑[A254528(Δ[3*A254528(n)])]`
-/

namespace A059549.P10083435570618385124
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A254528 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254528 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059549.P10083435570618385124

namespace A059549

/-- `∑[A254528(Δ[3*A254528(n)])]` -/
def P10083435570618385124.Spec : Prop :=
  ∀ n, P10083435570618385124.a n = A059549 (n + 1)

end A059549

/-! ## A059549.P5438799530797124163

`A155902(n+1)`
-/

namespace A059549.P5438799530797124163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155902 (n + 1)

end

end A059549.P5438799530797124163

namespace A059549

/-- `A155902(n+1)` -/
def P5438799530797124163.Spec : Prop :=
  ∀ n, P5438799530797124163.a n = A059549 (n + 1)

end A059549

/-! ## A059549.P9000009745767239266

`record[A155902(abs(1-n))]`
-/

namespace A059549.P9000009745767239266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155902 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059549.P9000009745767239266

namespace A059549

/-- `record[A155902(abs(1-n))]` -/
def P9000009745767239266.Spec : Prop :=
  ∀ n, P9000009745767239266.a n = A059549 (n + 1)

end A059549

/-!
# A059550: Beatty sequence for 1 + log(10).

The programs for A059550, the canonical program `A059550.P7944428284410734695` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059550 has offset 1).

The definition of A059550 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059550.P2153535091572435144

`comp[floor(n/log(10)+n)]`
-/

namespace A059550.P2153535091572435144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.log (10 : ℝ) + (n : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A059550.P2153535091572435144

namespace A059550

/-- `comp[floor(n/log(10)+n)]` -/
def P2153535091572435144.Spec : Prop :=
  ∀ n, (P2153535091572435144.a n : ℤ) = A059550 (n + 1)

end A059550

/-! ## A059550.P7944428284410734695

`A059545(n+1)+1+n`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A059550

/-- `A059545(n+1)+1+n` -/
def P7944428284410734695.Spec : Prop :=
  ∀ n, P7944428284410734695.a n = A059550 (n + 1)

theorem P7944428284410734695.correct : P7944428284410734695.Spec := by
  intro n
  simp only [A059550, Nat.add_sub_cancel]

end A059550

/-! ## A059550.P17162957044357107852

`record[A059545(A008619(n))+A028242(n)]`
-/

namespace A059550.P17162957044357107852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059545 (A008619 n).toNat + A028242 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059550.P17162957044357107852

namespace A059550

/-- `record[A059545(A008619(n))+A028242(n)]` -/
def P17162957044357107852.Spec : Prop :=
  ∀ n, P17162957044357107852.a n = A059550 (n + 1)

end A059550

/-! ## A059550.P9809916280367346833

`A059549(A059545(n+1))+1`
-/

namespace A059550.P9809916280367346833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059549 (A059545 (n + 1)).toNat + 1

end

end A059550.P9809916280367346833

namespace A059550

/-- `A059549(A059545(n+1))+1` -/
def P9809916280367346833.Spec : Prop :=
  ∀ n, P9809916280367346833.a n = A059550 (n + 1)

end A059550

/-! ## A059550.P6584713927178759034

`A008619(A111499(2*(n+1)))+n+1`
-/

namespace A059550.P6584713927178759034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A111499 (2 * (n + 1))).toNat + (n + 1 : ℤ)

end

end A059550.P6584713927178759034

namespace A059550

/-- `A008619(A111499(2*(n+1)))+n+1` -/
def P6584713927178759034.Spec : Prop :=
  ∀ n, P6584713927178759034.a n = A059550 (n + 1)

end A059550

/-! ## A059550.P685898709383511690

`A080513(A111499(2*(n+1))+A080513(4*n))`
-/

namespace A059550.P685898709383511690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A111499 (2 * (n + 1)) + A080513 (4 * n)).toNat

end

end A059550.P685898709383511690

namespace A059550

/-- `A080513(A111499(2*(n+1))+A080513(4*n))` -/
def P685898709383511690.Spec : Prop :=
  ∀ n, P685898709383511690.a n = A059550 (n + 1)

end A059550

/-! ## A059550.P9430279717439342164

`ceil(log(A002283(n+1)))+n`
-/

namespace A059550.P9430279717439342164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A002283 (n + 1) : ℝ)⌉ + (n : ℤ)

end

end A059550.P9430279717439342164

namespace A059550

/-- `ceil(log(A002283(n+1)))+n` -/
def P9430279717439342164.Spec : Prop :=
  ∀ n, P9430279717439342164.a n = A059550 (n + 1)

end A059550

/-!
# A059551: Beatty sequence for Gamma(1/3).

The programs for A059551, there is no canonical definition to state claims against.
-/

/-! ## A059551.P6978822702845020719

`A054404(A017281(n))-n+2`
-/

namespace A059551.P6978822702845020719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A017281 n).toNat - (n : ℤ) + 2

end

end A059551.P6978822702845020719

/-! ## A059551.P16953045950142368686

`A158919(A000267((n+1)²))-(n+1)`
-/

namespace A059551.P16953045950142368686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158919 (A000267 ((n + 1) ^ 2)).toNat - (n + 1 : ℤ)

end

end A059551.P16953045950142368686

/-! ## A059551.P15193532133026853522

`A158919(Δ[A004442(n²+n)])-(n+1)`
-/

namespace A059551.P15193532133026853522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (n ^ 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158919 (f1 (n + 1) - f1 n).toNat - (n + 1 : ℤ)

end

end A059551.P15193532133026853522

/-! ## A059551.P7906777369843430607

`∑[A016345(n+2)²+2]`
-/

namespace A059551.P7906777369843430607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016345 (n + 2) ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059551.P7906777369843430607

/-!
# A059552: Beatty sequence for Gamma(1/3)/(Gamma(1/3)-1).

The programs for A059552, there is no canonical definition to state claims against.
-/

/-! ## A059552.P15918005393314539422

`comp[A059551(n+1)-1]+1`
-/

namespace A059552.P15918005393314539422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059551 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A059552.P15918005393314539422

/-! ## A059552.P3071254429549444859

`A003056(A101402(∑[n+3]))+n`
-/

namespace A059552.P3071254429549444859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A101402 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + (n : ℤ)

end

end A059552.P3071254429549444859

/-! ## A059552.P13171916950214842706

`A003056(A000096(n)+∑[A140100(n+1)])`
-/

namespace A059552.P13171916950214842706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A000096 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A059552.P13171916950214842706

/-! ## A059552.P8072466659132185885

`A195126(n+1)-A057427(A158294(n+1))`
-/

namespace A059552.P8072466659132185885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195126 (n + 1) - A057427 (A158294 (n + 1)).toNat

end

end A059552.P8072466659132185885

/-! ## A059552.P9998860380258221815

`A195126(n+1)-A335434(A014963(n+1))`
-/

namespace A059552.P9998860380258221815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195126 (n + 1) - A335434 (A014963 (n + 1)).toNat

end

end A059552.P9998860380258221815

/-! ## A059552.P17557065476942893963

`A195126(n+1)-A143007(A086079(n)^n)`
-/

namespace A059552.P17557065476942893963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195126 (n + 1) - A143007 (A086079 n ^ n).toNat

end

end A059552.P17557065476942893963

/-! ## A059552.P7037777399802061763

`A195126(n+1)-A054522(A086079(n)^n+1)`
-/

namespace A059552.P7037777399802061763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195126 (n + 1) - A054522 (A086079 n ^ n + 1).toNat

end

end A059552.P7037777399802061763

/-! ## A059552.P16578480242549186660

`A121900(A133263(2*n+1))+n`
-/

namespace A059552.P16578480242549186660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 (A133263 (2 * n + 1)).toNat + (n : ℤ)

end

end A059552.P16578480242549186660

/-!
# A059553: Beatty sequence for Gamma(2/3).

The programs for A059553, there is no canonical definition to state claims against.
-/

/-! ## A059553.P1553424404974360501

`comp[A059554(n+1)-1]+1`
-/

namespace A059553.P1553424404974360501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059554 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A059553.P1553424404974360501

/-! ## A059553.P4591614553025663473

`A172471((n+1)²-A005044(2*(n+1)))`
-/

namespace A059553.P4591614553025663473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (((n + 1) ^ 2 : ℤ) - A005044 (2 * (n + 1))).toNat

end

end A059553.P4591614553025663473

/-! ## A059553.P9754807087196469411

`A003056(∑[∑[A004442(a(n-3))]])` with `a(0)=2, a(1)=1, a(2)=2`
-/

namespace A059553.P9754807087196469411
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 2] fun n f2 =>
  A004442 (f2 (n - 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A059553.P9754807087196469411

/-! ## A059553.P2785674546993020727

`A003056((n+1)*(n+2)-A001399(n))`
-/

namespace A059553.P2785674546993020727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (((n + 1) * (n + 2) : ℤ) - A001399 n).toNat

end

end A059553.P2785674546993020727

/-! ## A059553.P9521506662543096576

`A003056((n+1)²+1-A001399(n)+n)`
-/

namespace A059553.P9521506662543096576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (((n + 1) ^ 2 : ℤ) + (1 - A001399 n + (n : ℤ))).toNat

end

end A059553.P9521506662543096576

/-! ## A059553.P8695327848282409767

`A204551(A245207(n))+n`
-/

namespace A059553.P8695327848282409767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204551 (A245207 n).toNat + (n : ℤ)

end

end A059553.P8695327848282409767

/-! ## A059553.P1570667283278065287

`A000196(A211784(n+1))`
-/

namespace A059553.P1570667283278065287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A211784 (n + 1)).toNat

end

end A059553.P1570667283278065287

/-!
# A059554: Beatty sequence for Gamma(2/3)/(Gamma(2/3)-1).

The programs for A059554, there is no canonical definition to state claims against.
-/

/-! ## A059554.P14694556592192937467

`A001221(A235265(n+1))*A214657(2*n+2)`
-/

namespace A059554.P14694556592192937467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A235265 (n + 1)).toNat * A214657 (2 * n + 2)

end

end A059554.P14694556592192937467

/-! ## A059554.P7606283731870648940

`A214657(2*(n+1))+A000007(A229173(n+1))`
-/

namespace A059554.P7606283731870648940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214657 (2 * (n + 1)) + A000007 (A229173 (n + 1)).toNat

end

end A059554.P7606283731870648940

/-! ## A059554.P2972613197803588123

`A214657(2*(n+1))+A000007(A060369(n+1))`
-/

namespace A059554.P2972613197803588123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214657 (2 * (n + 1)) + A000007 (A060369 (n + 1)).toNat

end

end A059554.P2972613197803588123

/-! ## A059554.P15250841584470374091

`A214657(2*(n+1))+A000035(A014574(3*n+5))`
-/

namespace A059554.P15250841584470374091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214657 (2 * (n + 1)) + A000035 (A014574 (3 * n + 5)).toNat

end

end A059554.P15250841584470374091

/-! ## A059554.P15742337696444359794

`A214657(2*(n+1))%A000578(A377431(n+1))`
-/

namespace A059554.P15742337696444359794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214657 (2 * (n + 1))) (A000578 (A377431 (n + 1)).toNat)

end

end A059554.P15742337696444359794

/-! ## A059554.P6412211003306353111

`A214657(2*(n+1))%A056709(A347588(n))`
-/

namespace A059554.P6412211003306353111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214657 (2 * (n + 1))) (A056709 (A347588 n).toNat)

end

end A059554.P6412211003306353111

/-! ## A059554.P10493641420971995631

`A214657(lt[A005232(n+2), A269813(n)])`
-/

namespace A059554.P10493641420971995631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005232 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214657 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A059554.P10493641420971995631

/-!
# A059555: Beatty sequence for 1 + gamma A001620.

The programs for A059555, the canonical program `A059555.P16390647683451287344` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059555 has offset 1).

The definition of A059555 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059555.P16390647683451287344

`n+1+A038128(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A059555

/-- `n+1+A038128(n+1)` -/
def P16390647683451287344.Spec : Prop :=
  ∀ n, P16390647683451287344.a n = A059555 (n + 1)

theorem P16390647683451287344.correct : P16390647683451287344.Spec := by
  intro n
  simp only [A059555, Nat.add_sub_cancel]

end A059555

/-! ## A059555.P1930062639523575075

`floor((γ+1)*(n+1))`
-/

namespace A059555.P1930062639523575075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.eulerMascheroniConstant + 1) * (n + 1 : ℝ)⌋

end

end A059555.P1930062639523575075

namespace A059555

/-- `floor((γ+1)*(n+1))` -/
def P1930062639523575075.Spec : Prop :=
  ∀ n, P1930062639523575075.a n = A059555 (n + 1)

end A059555

/-! ## A059555.P4870694783816324233

`ceil(γ*(n+1))+n%(n+1)`
-/

namespace A059555.P4870694783816324233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.eulerMascheroniConstant * (n + 1 : ℝ)⌉ + ((n % (n + 1) : ℕ) : ℤ)

end

end A059555.P4870694783816324233

namespace A059555

/-- `ceil(γ*(n+1))+n%(n+1)` -/
def P4870694783816324233.Spec : Prop :=
  ∀ n, P4870694783816324233.a n = A059555 (n + 1)

end A059555

/-! ## A059555.P11200941277565937909

`∑[Δ[A038128(n)]+1]`
-/

namespace A059555.P11200941277565937909
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038128 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059555.P11200941277565937909

namespace A059555

/-- `∑[Δ[A038128(n)]+1]` -/
def P11200941277565937909.Spec : Prop :=
  ∀ n, P11200941277565937909.a n = A059555 (n + 1)

end A059555

/-! ## A059555.P1432351930966841540

`comp[A059556(n+1)-1]+1`
-/

namespace A059555.P1432351930966841540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059556 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A059555.P1432351930966841540

namespace A059555

/-- `comp[A059556(n+1)-1]+1` -/
def P1432351930966841540.Spec : Prop :=
  ∀ n, (P1432351930966841540.a n : ℤ) = A059555 (n + 1)

end A059555

/-! ## A059555.P15381691771363644032

`∑[A038078(Δ[A038128(n)])]`
-/

namespace A059555.P15381691771363644032
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038128 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038078 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059555.P15381691771363644032

namespace A059555

/-- `∑[A038078(Δ[A038128(n)])]` -/
def P15381691771363644032.Spec : Prop :=
  ∀ n, P15381691771363644032.a n = A059555 (n + 1)

end A059555

/-! ## A059555.P13400420727979081966

`∑[A038093(Δ[A038128(n)])]`
-/

namespace A059555.P13400420727979081966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038128 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038093 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059555.P13400420727979081966

namespace A059555

/-- `∑[A038093(Δ[A038128(n)])]` -/
def P13400420727979081966.Spec : Prop :=
  ∀ n, P13400420727979081966.a n = A059555 (n + 1)

end A059555

/-! ## A059555.P3973767690226682240

`∑[A019594(Δ[2*A038128(n)])]`
-/

namespace A059555.P3973767690226682240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038128 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019594 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059555.P3973767690226682240

namespace A059555

/-- `∑[A019594(Δ[2*A038128(n)])]` -/
def P3973767690226682240.Spec : Prop :=
  ∀ n, P3973767690226682240.a n = A059555 (n + 1)

end A059555

/-! ## A059555.P5889214628725392996

`A186539(and(1, A058000(n+1))+n)`
-/

namespace A059555.P5889214628725392996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186539 (Int.land 1 (A058000 (n + 1)) + (n : ℤ)).toNat

end

end A059555.P5889214628725392996

namespace A059555

/-- `A186539(and(1, A058000(n+1))+n)` -/
def P5889214628725392996.Spec : Prop :=
  ∀ n, P5889214628725392996.a n = A059555 (n + 1)

end A059555

/-!
# A059556: Beatty sequence for 1 + 1/gamma.

The programs for A059556, the canonical program `A059556.P10830699761153476002` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059556 has offset 1).

The definition of A059556 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059556.P10830699761153476002

`comp[floor(n*(γ+1))]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059556

/-- `comp[floor(n*(γ+1))]` -/
def P10830699761153476002.Spec : Prop :=
  ∀ n, (P10830699761153476002.a n : ℤ) = A059556 (n + 1)

theorem P10830699761153476002.correct : P10830699761153476002.Spec := by
  intro n
  simp only [A059556, Nat.add_sub_cancel]

end A059556

/-! ## A059556.P1187184140572127731

`∑[Δ[ceil(n/γ)]!]+n`
-/

namespace A059556.P1187184140572127731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.eulerMascheroniConstant⌉

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A059556.P1187184140572127731

namespace A059556

/-- `∑[Δ[ceil(n/γ)]!]+n` -/
def P1187184140572127731.Spec : Prop :=
  ∀ n, (P1187184140572127731.a n : ℤ) = A059556 (n + 1)

end A059556

/-! ## A059556.P16627019492753674274

`∑[dr(Δ[ceil(n/γ)])]+n`
-/

namespace A059556.P16627019492753674274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.eulerMascheroniConstant⌉

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A059556.P16627019492753674274

namespace A059556

/-- `∑[dr(Δ[ceil(n/γ)])]+n` -/
def P16627019492753674274.Spec : Prop :=
  ∀ n, (P16627019492753674274.a n : ℤ) = A059556 (n + 1)

end A059556

/-! ## A059556.P1387925318707858116

`record[ceil(abs((n-1)/γ))]+n`
-/

namespace A059556.P1387925318707858116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|((n : ℤ) - 1 : ℝ) / Real.eulerMascheroniConstant|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A059556.P1387925318707858116

namespace A059556

/-- `record[ceil(abs((n-1)/γ))]+n` -/
def P1387925318707858116.Spec : Prop :=
  ∀ n, P1387925318707858116.a n = A059556 (n + 1)

end A059556

/-! ## A059556.P7720364906538624565

`∑[gcd(2, Δ[ceil(n/γ)])]+n`
-/

namespace A059556.P7720364906538624565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.eulerMascheroniConstant⌉

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A059556.P7720364906538624565

namespace A059556

/-- `∑[gcd(2, Δ[ceil(n/γ)])]+n` -/
def P7720364906538624565.Spec : Prop :=
  ∀ n, (P7720364906538624565.a n : ℤ) = A059556 (n + 1)

end A059556

/-! ## A059556.P5562215771877001984

`A081223(n+1)+n`
-/

namespace A059556.P5562215771877001984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081223 (n + 1) + (n : ℤ)

end

end A059556.P5562215771877001984

namespace A059556

/-- `A081223(n+1)+n` -/
def P5562215771877001984.Spec : Prop :=
  ∀ n, P5562215771877001984.a n = A059556 (n + 1)

theorem P5562215771877001984.correct : P5562215771877001984.Spec := by
  intro n
  simp only [A059556, Nat.add_sub_cancel, A059556.P5562215771877001984.a, A059556.P10830699761153476002.f1, A059556.P10830699761153476002.a, A081223, A081223.P12973320959175258762.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059556

/-! ## A059556.P8787750368959898580

`∑[A000040(Δ[floor(n/γ)])]`
-/

namespace A059556.P8787750368959898580
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.eulerMascheroniConstant⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059556.P8787750368959898580

namespace A059556

/-- `∑[A000040(Δ[floor(n/γ)])]` -/
def P8787750368959898580.Spec : Prop :=
  ∀ n, P8787750368959898580.a n = A059556 (n + 1)

end A059556

/-! ## A059556.P12958724985216823886

`∑[A007494(Δ[floor(n/γ)])]`
-/

namespace A059556.P12958724985216823886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.eulerMascheroniConstant⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059556.P12958724985216823886

namespace A059556

/-- `∑[A007494(Δ[floor(n/γ)])]` -/
def P12958724985216823886.Spec : Prop :=
  ∀ n, P12958724985216823886.a n = A059556 (n + 1)

end A059556

/-! ## A059556.P3160518367792133030

`∑[A065383(Δ[floor(n/γ)])]`
-/

namespace A059556.P3160518367792133030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.eulerMascheroniConstant⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065383 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059556.P3160518367792133030

namespace A059556

/-- `∑[A065383(Δ[floor(n/γ)])]` -/
def P3160518367792133030.Spec : Prop :=
  ∀ n, P3160518367792133030.a n = A059556 (n + 1)

end A059556

/-! ## A059556.P2958097205131547861

`∑[A295638(Δ[floor(n/γ)])]`
-/

namespace A059556.P2958097205131547861
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.eulerMascheroniConstant⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295638 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059556.P2958097205131547861

namespace A059556

/-- `∑[A295638(Δ[floor(n/γ)])]` -/
def P2958097205131547861.Spec : Prop :=
  ∀ n, P2958097205131547861.a n = A059556 (n + 1)

end A059556

/-! ## A059556.P17316753587546086203

`comp[A038128(n)-1+n]+1`
-/

namespace A059556.P17316753587546086203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038128 n - 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A059556.P17316753587546086203

namespace A059556

/-- `comp[A038128(n)-1+n]+1` -/
def P17316753587546086203.Spec : Prop :=
  ∀ n, (P17316753587546086203.a n : ℤ) = A059556 (n + 1)

end A059556

/-! ## A059556.P5327985604692698313

`A028310(floor((n+1)/γ)+n+1)`
-/

namespace A059556.P5327985604692698313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (⌊(n + 1 : ℝ) / Real.eulerMascheroniConstant⌋ + (n + 1 : ℤ)).toNat

end

end A059556.P5327985604692698313

namespace A059556

/-- `A028310(floor((n+1)/γ)+n+1)` -/
def P5327985604692698313.Spec : Prop :=
  ∀ n, P5327985604692698313.a n = A059556 (n + 1)

end A059556

/-! ## A059556.P8639828544530856652

`ceil(log2(A146964(n+1)))`
-/

namespace A059556.P8639828544530856652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A146964 (n + 1) : ℝ)⌉

end

end A059556.P8639828544530856652

namespace A059556

/-- `ceil(log2(A146964(n+1)))` -/
def P8639828544530856652.Spec : Prop :=
  ∀ n, P8639828544530856652.a n = A059556 (n + 1)

end A059556

/-!
# A059558: Beatty sequence for 1 + 1/gamma^2.

The programs for A059558, the canonical program `A059558.P6729229487912804406` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059558 has offset 1).

The definition of A059558 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 714 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059558.P8439097886140382715

`A351169(14*(n+1))`
-/

namespace A059558.P8439097886140382715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351169 (14 * (n + 1))

end

end A059558.P8439097886140382715

namespace A059558

/-- `A351169(14*(n+1))` -/
def P8439097886140382715.Spec : Prop :=
  ∀ n, P8439097886140382715.a n = A059558 (n + 1)

end A059558

/-! ## A059558.P8007608092066054940

`record[4*A355402(n+7)]`
-/

namespace A059558.P8007608092066054940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A355402 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059558.P8007608092066054940

namespace A059558

/-- `record[4*A355402(n+7)]` -/
def P8007608092066054940.Spec : Prop :=
  ∀ n, P8007608092066054940.a n = A059558 (n + 1)

end A059558

/-! ## A059558.P6729229487912804406

`2*A138999(A016993(2*n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A059558

/-- `2*A138999(A016993(2*n+1))` -/
def P6729229487912804406.Spec : Prop :=
  ∀ n, P6729229487912804406.a n = A059558 (n + 1)

theorem P6729229487912804406.correct : P6729229487912804406.Spec := by
  intro n
  simp only [A059558, Nat.add_sub_cancel]

end A059558

/-! ## A059558.P7614605607309132570

`A014601(A298024(3*(n+1)))/7`
-/

namespace A059558.P7614605607309132570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014601 (A298024 (3 * (n + 1))).toNat : ℚ) / 7

end

end A059558.P7614605607309132570

namespace A059558

/-- `A014601(A298024(3*(n+1)))/7` -/
def P7614605607309132570.Spec : Prop :=
  ∀ n, P7614605607309132570.a n = (A059558 (n + 1) : ℚ)

end A059558

/-! ## A059558.P4909913360941281906

`(n+1)*A040002(A131856(2*(n+2)))`
-/

namespace A059558.P4909913360941281906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A040002 (A131856 (2 * (n + 2))).toNat

end

end A059558.P4909913360941281906

namespace A059558

/-- `(n+1)*A040002(A131856(2*(n+2)))` -/
def P4909913360941281906.Spec : Prop :=
  ∀ n, P4909913360941281906.a n = A059558 (n + 1)

end A059558

/-! ## A059558.P797952068390543183

`eq[A035877(n*(7/2)^((n+1)%2)), A317321(2*n)]`
-/

namespace A059558.P797952068390543183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035877 (SequenceMachineLib.roundAway ((n : ℚ) * ((7 : ℚ) / 2) ^ ((n + 1) % 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317321 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059558.P797952068390543183

namespace A059558

/-- `eq[A035877(n*(7/2)^((n+1)%2)), A317321(2*n)]` -/
def P797952068390543183.Spec : Prop :=
  ∀ n, (P797952068390543183.a n : ℤ) = A059558 (n + 1)

end A059558

/-! ## A059558.P11643209869970536730

`A004767(n)+A001221(A136026(n+5))`
-/

namespace A059558.P11643209869970536730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n + A001221 (A136026 (n + 5)).toNat

end

end A059558.P11643209869970536730

namespace A059558

/-- `A004767(n)+A001221(A136026(n+5))` -/
def P11643209869970536730.Spec : Prop :=
  ∀ n, P11643209869970536730.a n = A059558 (n + 1)

end A059558

/-! ## A059558.P10464929825476610261

`eq[A010873(n), A156660(A047276(n+1))]`
-/

namespace A059558.P10464929825476610261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156660 (A047276 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059558.P10464929825476610261

namespace A059558

/-- `eq[A010873(n), A156660(A047276(n+1))]` -/
def P10464929825476610261.Spec : Prop :=
  ∀ n, (P10464929825476610261.a n : ℤ) = A059558 (n + 1)

end A059558

/-! ## A059558.P9493826475505968953

`eq[A007814(2*n+4), A165063(A103408(n+1))]`
-/

namespace A059558.P9493826475505968953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165063 (A103408 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059558.P9493826475505968953

namespace A059558

/-- `eq[A007814(2*n+4), A165063(A103408(n+1))]` -/
def P9493826475505968953.Spec : Prop :=
  ∀ n, (P9493826475505968953.a n : ℤ) = A059558 (n + 1)

end A059558

/-! ## A059558.P3808618811331657401

`A096268(A049422(n+1))+4*(n+1)`
-/

namespace A059558.P3808618811331657401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 (A049422 (n + 1)).toNat + (4 * (n + 1) : ℤ)

end

end A059558.P3808618811331657401

namespace A059558

/-- `A096268(A049422(n+1))+4*(n+1)` -/
def P3808618811331657401.Spec : Prop :=
  ∀ n, P3808618811331657401.a n = A059558 (n + 1)

end A059558

/-! ## A059558.P7176234864340473649

`(n+1)*A113311(A190518(3*n+5))`
-/

namespace A059558.P7176234864340473649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A113311 (A190518 (3 * n + 5)).toNat

end

end A059558.P7176234864340473649

namespace A059558

/-- `(n+1)*A113311(A190518(3*n+5))` -/
def P7176234864340473649.Spec : Prop :=
  ∀ n, P7176234864340473649.a n = A059558 (n + 1)

end A059558

/-! ## A059558.P2946034625570655196

`12*(n+1)/A323241(A190806(3*n+2))`
-/

namespace A059558.P2946034625570655196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (12 * (n + 1) : ℚ) / (A323241 (A190806 (3 * n + 2)).toNat : ℚ)

end

end A059558.P2946034625570655196

namespace A059558

/-- `12*(n+1)/A323241(A190806(3*n+2))` -/
def P2946034625570655196.Spec : Prop :=
  ∀ n, P2946034625570655196.a n = (A059558 (n + 1) : ℚ)

end A059558

/-! ## A059558.P1047469199887545571

`A000027(n+1)*A112983(A225082(n+1))`
-/

namespace A059558.P1047469199887545571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A112983 (A225082 (n + 1)).toNat

end

end A059558.P1047469199887545571

namespace A059558

/-- `A000027(n+1)*A112983(A225082(n+1))` -/
def P1047469199887545571.Spec : Prop :=
  ∀ n, P1047469199887545571.a n = A059558 (n + 1)

end A059558

/-! ## A059558.P3464291641766188226

`A047513(3*n+4)/A342001(A001122(n+1))`
-/

namespace A059558.P3464291641766188226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047513 (3 * n + 4) : ℚ) / (A342001 (A001122 (n + 1)).toNat : ℚ)

end

end A059558.P3464291641766188226

namespace A059558

/-- `A047513(3*n+4)/A342001(A001122(n+1))` -/
def P3464291641766188226.Spec : Prop :=
  ∀ n, P3464291641766188226.a n = (A059558 (n + 1) : ℚ)

end A059558

/-! ## A059558.P261526375265371475

`record[4*A320109(n+1)]`
-/

namespace A059558.P261526375265371475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A320109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059558.P261526375265371475

namespace A059558

/-- `record[4*A320109(n+1)]` -/
def P261526375265371475.Spec : Prop :=
  ∀ n, P261526375265371475.a n = A059558 (n + 1)

end A059558

/-! ## A059558.P17491985133541518221

`A005843(2*n+1)+A000005(A235394(n+1))`
-/

namespace A059558.P17491985133541518221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (2 * n + 1) + A000005 (A235394 (n + 1)).toNat

end

end A059558.P17491985133541518221

namespace A059558

/-- `A005843(2*n+1)+A000005(A235394(n+1))` -/
def P17491985133541518221.Spec : Prop :=
  ∀ n, P17491985133541518221.a n = A059558 (n + 1)

end A059558

/-! ## A059558.P14803652628229249292

`(n+1)*2^n*2^(2-n)`
-/

namespace A059558.P14803652628229249292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * 2 ^ n : ℚ) * (2 : ℚ) ^ (2 - (n : ℤ) : ℤ)

end

end A059558.P14803652628229249292

namespace A059558

/-- `(n+1)*2^n*2^(2-n)` -/
def P14803652628229249292.Spec : Prop :=
  ∀ n, P14803652628229249292.a n = (A059558 (n + 1) : ℚ)

end A059558

/-!
# A059559: Beatty sequence for 1 + log(1/gamma), (gamma is the Euler-Mascheroni constant A001620).

The programs for A059559, the canonical program `A059559.P8854853141262480161` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059559 has offset 1).

The definition of A059559 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059559.P8854853141262480161

`floor((n+1)*(1+log(1/γ)))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059559

/-- `floor((n+1)*(1+log(1/γ)))` -/
def P8854853141262480161.Spec : Prop :=
  ∀ n, P8854853141262480161.a n = A059559 (n + 1)

theorem P8854853141262480161.correct : P8854853141262480161.Spec := by
  intro n
  simp only [A059559, Nat.add_sub_cancel]

end A059559

/-! ## A059559.P14180971942879222037

`comp[A059560(n+1)-1]+1`
-/

namespace A059559.P14180971942879222037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059560 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A059559.P14180971942879222037

namespace A059559

/-- `comp[A059560(n+1)-1]+1` -/
def P14180971942879222037.Spec : Prop :=
  ∀ n, (P14180971942879222037.a n : ℤ) = A059559 (n + 1)

end A059559

/-! ## A059559.P17429563033048311818

`A278814(∑[A047603(n+1)]-1)`
-/

namespace A059559.P17429563033048311818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047603 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278814 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A059559.P17429563033048311818

namespace A059559

/-- `A278814(∑[A047603(n+1)]-1)` -/
def P17429563033048311818.Spec : Prop :=
  ∀ n, P17429563033048311818.a n = A059559 (n + 1)

end A059559

/-! ## A059559.P9372122662554890209

`A278814(∑[A047603(n+1)%A005408(n)])`
-/

namespace A059559.P9372122662554890209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047603 (n + 1)) (A005408 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278814 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A059559.P9372122662554890209

namespace A059559

/-- `A278814(∑[A047603(n+1)%A005408(n)])` -/
def P9372122662554890209.Spec : Prop :=
  ∀ n, P9372122662554890209.a n = A059559 (n + 1)

end A059559

/-! ## A059559.P12196643712868361252

`A008619(∑[A014029(n²)]+3*n)`
-/

namespace A059559.P12196643712868361252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014029 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (∑ j ∈ Finset.range (n + 1), f1 j + (3 * n : ℤ)).toNat

end

end A059559.P12196643712868361252

namespace A059559

/-- `A008619(∑[A014029(n²)]+3*n)` -/
def P12196643712868361252.Spec : Prop :=
  ∀ n, P12196643712868361252.a n = A059559 (n + 1)

end A059559

/-! ## A059559.P2395560866224338781

`A000196(A072154((n+1)²))`
-/

namespace A059559.P2395560866224338781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A072154 ((n + 1) ^ 2)).toNat

end

end A059559.P2395560866224338781

namespace A059559

/-- `A000196(A072154((n+1)²))` -/
def P2395560866224338781.Spec : Prop :=
  ∀ n, P2395560866224338781.a n = A059559 (n + 1)

end A059559

/-! ## A059559.P12680680020532586826

`A000196(∑[A072154(2*n+1)])`
-/

namespace A059559.P12680680020532586826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A059559.P12680680020532586826

namespace A059559

/-- `A000196(∑[A072154(2*n+1)])` -/
def P12680680020532586826.Spec : Prop :=
  ∀ n, P12680680020532586826.a n = A059559 (n + 1)

end A059559

/-! ## A059559.P3398946549899800874

`A000196(∑[A047253(2*n+1)+A047253(2*(n+1))])`
-/

namespace A059559.P3398946549899800874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047253 (2 * n + 1) + A047253 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A059559.P3398946549899800874

namespace A059559

/-- `A000196(∑[A047253(2*n+1)+A047253(2*(n+1))])` -/
def P3398946549899800874.Spec : Prop :=
  ∀ n, P3398946549899800874.a n = A059559 (n + 1)

end A059559

/-!
# A059560: Beatty sequence for 1 - 1/log(gamma).

The programs for A059560, the canonical program `A059560.P3209679035830817320` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059560 has offset 1).

The definition of A059560 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059560.P3209679035830817320

`n-floor((n+1)/log(γ))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059560

/-- `n-floor((n+1)/log(γ))` -/
def P3209679035830817320.Spec : Prop :=
  ∀ n, P3209679035830817320.a n = A059560 (n + 1)

theorem P3209679035830817320.correct : P3209679035830817320.Spec := by
  intro n
  simp only [A059560, Nat.add_sub_cancel]

end A059560

/-! ## A059560.P18207100386218538511

`-(A001489(n)+floor((n+1)/log(γ)))`
-/

namespace A059560.P18207100386218538511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A001489 n + ⌊(n + 1 : ℝ) / Real.log Real.eulerMascheroniConstant⌋)

end

end A059560.P18207100386218538511

namespace A059560

/-- `-(A001489(n)+floor((n+1)/log(γ)))` -/
def P18207100386218538511.Spec : Prop :=
  ∀ n, P18207100386218538511.a n = A059560 (n + 1)

theorem P18207100386218538511.correct : P18207100386218538511.Spec := by
  intro n
  simp only [A059560, Nat.add_sub_cancel, A059560.P18207100386218538511.a, A059560.P3209679035830817320.a, A001489, A001489.P15233530513763566776.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059560

/-! ## A059560.P11504308109892844822

`A000027(floor(abs((n+1)/log(γ))+n+1))`
-/

namespace A059560.P11504308109892844822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ⌊|(n + 1 : ℝ) / Real.log Real.eulerMascheroniConstant| + (n + 1 : ℝ)⌋.toNat

end

end A059560.P11504308109892844822

namespace A059560

/-- `A000027(floor(abs((n+1)/log(γ))+n+1))` -/
def P11504308109892844822.Spec : Prop :=
  ∀ n, P11504308109892844822.a n = A059560 (n + 1)

end A059560

/-! ## A059560.P2055510947060383483

`floor(A008619(2*n)+abs((n+1)/log(γ)))`
-/

namespace A059560.P2055510947060383483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008619 (2 * n) : ℝ) + |(n + 1 : ℝ) / Real.log Real.eulerMascheroniConstant|⌋

end

end A059560.P2055510947060383483

namespace A059560

/-- `floor(A008619(2*n)+abs((n+1)/log(γ)))` -/
def P2055510947060383483.Spec : Prop :=
  ∀ n, P2055510947060383483.a n = A059560 (n + 1)

end A059560

/-! ## A059560.P9148018456486921604

`∑[A015999(Δ[A367084(n)])]`
-/

namespace A059560.P9148018456486921604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367084 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015999 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059560.P9148018456486921604

namespace A059560

/-- `∑[A015999(Δ[A367084(n)])]` -/
def P9148018456486921604.Spec : Prop :=
  ∀ n, P9148018456486921604.a n = A059560 (n + 1)

end A059560

/-! ## A059560.P6483221104555301030

`∑[A053266(Δ[A367084(n)])]`
-/

namespace A059560.P6483221104555301030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367084 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053266 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059560.P6483221104555301030

namespace A059560

/-- `∑[A053266(Δ[A367084(n)])]` -/
def P6483221104555301030.Spec : Prop :=
  ∀ n, P6483221104555301030.a n = A059560 (n + 1)

end A059560

/-! ## A059560.P12746034718533939714

`∑[A143901(Δ[A367084(n)])]`
-/

namespace A059560.P12746034718533939714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367084 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143901 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059560.P12746034718533939714

namespace A059560

/-- `∑[A143901(Δ[A367084(n)])]` -/
def P12746034718533939714.Spec : Prop :=
  ∀ n, P12746034718533939714.a n = A059560 (n + 1)

end A059560

/-!
# A059561: Beatty sequence for log(Pi).

The programs for A059561, the canonical program `A059561.P1979222872294667062` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059561 has offset 1).

The definition of A059561 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059561.P1979222872294667062

`floor((n+1)*log(π))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059561

/-- `floor((n+1)*log(π))` -/
def P1979222872294667062.Spec : Prop :=
  ∀ n, P1979222872294667062.a n = A059561 (n + 1)

theorem P1979222872294667062.correct : P1979222872294667062.Spec := by
  intro n
  simp only [A059561, Nat.add_sub_cancel]

end A059561

/-! ## A059561.P15308738920989728191

`∑[A022931(n)]`
-/

namespace A059561.P15308738920989728191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022931 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059561.P15308738920989728191

namespace A059561

/-- `∑[A022931(n)]` -/
def P15308738920989728191.Spec : Prop :=
  ∀ n, P15308738920989728191.a n = A059561 (n + 1)

end A059561

/-! ## A059561.P18016240508596143532

`filter[n+1, A022932(#)]`
-/

namespace A059561.P18016240508596143532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022932 (f1 j) = 1) n)

end

end A059561.P18016240508596143532

namespace A059561

/-- `filter[n+1, A022932(#)]` -/
def P18016240508596143532.Spec : Prop :=
  ∀ n, (P18016240508596143532.a n : ℤ) = A059561 (n + 1)

end A059561

/-! ## A059561.P4442332106383869736

`eq[A004442(n)*A022932(n), A004442(n)]`
-/

namespace A059561.P4442332106383869736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n * A022932 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059561.P4442332106383869736

namespace A059561

/-- `eq[A004442(n)*A022932(n), A004442(n)]` -/
def P4442332106383869736.Spec : Prop :=
  ∀ n, (P4442332106383869736.a n : ℤ) = A059561 (n + 1)

end A059561

/-! ## A059561.P10204200089910459485

`eq[A014675(n)*A022932(n), A014675(n)]`
-/

namespace A059561.P10204200089910459485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 n * A022932 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059561.P10204200089910459485

namespace A059561

/-- `eq[A014675(n)*A022932(n), A014675(n)]` -/
def P10204200089910459485.Spec : Prop :=
  ∀ n, (P10204200089910459485.a n : ℤ) = A059561 (n + 1)

end A059561

/-! ## A059561.P8485892856046282291

`eq[A022932(n)*A103221(n), A103221(n)]`
-/

namespace A059561.P8485892856046282291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022932 n * A103221 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059561.P8485892856046282291

namespace A059561

/-- `eq[A022932(n)*A103221(n), A103221(n)]` -/
def P8485892856046282291.Spec : Prop :=
  ∀ n, (P8485892856046282291.a n : ℤ) = A059561 (n + 1)

end A059561

/-! ## A059561.P12116291181542261834

`eq[A022932(n)*A167499(n), A167499(n)]`
-/

namespace A059561.P12116291181542261834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022932 n * A167499 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167499 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059561.P12116291181542261834

namespace A059561

/-- `eq[A022932(n)*A167499(n), A167499(n)]` -/
def P12116291181542261834.Spec : Prop :=
  ∀ n, (P12116291181542261834.a n : ℤ) = A059561 (n + 1)

end A059561

/-! ## A059561.P13848839743283336363

`eq[A004736(n+1)*A022932(n), A004736(n+1)]`
-/

namespace A059561.P13848839743283336363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A022932 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059561.P13848839743283336363

namespace A059561

/-- `eq[A004736(n+1)*A022932(n), A004736(n+1)]` -/
def P13848839743283336363.Spec : Prop :=
  ∀ n, (P13848839743283336363.a n : ℤ) = A059561 (n + 1)

end A059561

/-! ## A059561.P7515814608296919834

`eq[A022932(n)*A241964(n+1), A241964(n+1)]`
-/

namespace A059561.P7515814608296919834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022932 n * A241964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241964 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059561.P7515814608296919834

namespace A059561

/-- `eq[A022932(n)*A241964(n+1), A241964(n+1)]` -/
def P7515814608296919834.Spec : Prop :=
  ∀ n, (P7515814608296919834.a n : ℤ) = A059561 (n + 1)

end A059561

/-! ## A059561.P18289535431615962476

`eq[A022932(n)*A226190(n+1), A226190(n+1)]`
-/

namespace A059561.P18289535431615962476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022932 n * A226190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059561.P18289535431615962476

namespace A059561

/-- `eq[A022932(n)*A226190(n+1), A226190(n+1)]` -/
def P18289535431615962476.Spec : Prop :=
  ∀ n, (P18289535431615962476.a n : ℤ) = A059561 (n + 1)

end A059561

/-! ## A059561.P3242840720723606920

`ceil(log(A001672(n+1)))-1`
-/

namespace A059561.P3242840720723606920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A001672 (n + 1) : ℝ)⌉ - 1

end

end A059561.P3242840720723606920

namespace A059561

/-- `ceil(log(A001672(n+1)))-1` -/
def P3242840720723606920.Spec : Prop :=
  ∀ n, P3242840720723606920.a n = A059561 (n + 1)

end A059561

/-! ## A059561.P13071740261228185021

`ceil(log(A001673(n+1)))-1`
-/

namespace A059561.P13071740261228185021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A001673 (n + 1) : ℝ)⌉ - 1

end

end A059561.P13071740261228185021

namespace A059561

/-- `ceil(log(A001673(n+1)))-1` -/
def P13071740261228185021.Spec : Prop :=
  ∀ n, P13071740261228185021.a n = A059561 (n + 1)

end A059561

/-!
# A059562: Beatty sequence for log(Pi)/(log(Pi)-1).

The programs for A059562, the canonical program `A059562.P124344613896043799` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059562 has offset 1).

The definition of A059562 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059562.P124344613896043799

`comp[floor(n*log(π))]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059562

/-- `comp[floor(n*log(π))]` -/
def P124344613896043799.Spec : Prop :=
  ∀ n, (P124344613896043799.a n : ℤ) = A059562 (n + 1)

theorem P124344613896043799.correct : P124344613896043799.Spec := by
  intro n
  simp only [A059562, Nat.add_sub_cancel]

end A059562

/-! ## A059562.P15725429984111072025

`lt[n*A022932(n), n]`
-/

namespace A059562.P15725429984111072025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A022932 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A059562.P15725429984111072025

namespace A059562

/-- `lt[n*A022932(n), n]` -/
def P15725429984111072025.Spec : Prop :=
  ∀ n, (P15725429984111072025.a n : ℤ) = A059562 (n + 1)

end A059562

/-! ## A059562.P16604644694006770422

`eq[A005925(A005925(n)+2), A022932(n)]`
-/

namespace A059562.P16604644694006770422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005925 (A005925 n + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022932 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059562.P16604644694006770422

namespace A059562

/-- `eq[A005925(A005925(n)+2), A022932(n)]` -/
def P16604644694006770422.Spec : Prop :=
  ∀ n, (P16604644694006770422.a n : ℤ) = A059562 (n + 1)

end A059562

/-! ## A059562.P5610968208856141002

`eq[A022932(n), A285476(n)]`
-/

namespace A059562.P5610968208856141002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022932 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059562.P5610968208856141002

namespace A059562

/-- `eq[A022932(n), A285476(n)]` -/
def P5610968208856141002.Spec : Prop :=
  ∀ n, (P5610968208856141002.a n : ℤ) = A059562 (n + 1)

end A059562

/-! ## A059562.P4053733936173436744

`lt[A022932(n), A022932(A004273(n))]`
-/

namespace A059562.P4053733936173436744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022932 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022932 (A004273 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A059562.P4053733936173436744

namespace A059562

/-- `lt[A022932(n), A022932(A004273(n))]` -/
def P4053733936173436744.Spec : Prop :=
  ∀ n, (P4053733936173436744.a n : ℤ) = A059562 (n + 1)

end A059562

/-! ## A059562.P14340285648963549015

`A290081(∑[A059029(n)])+A054385(5*(n+1))`
-/

namespace A059562.P14340285648963549015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290081 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A054385 (5 * (n + 1))

end

end A059562.P14340285648963549015

namespace A059562

/-- `A290081(∑[A059029(n)])+A054385(5*(n+1))` -/
def P14340285648963549015.Spec : Prop :=
  ∀ n, P14340285648963549015.a n = A059562 (n + 1)

end A059562

/-! ## A059562.P1836010442885202236

`A051953(A002144(5*(n+1)))*A054385(5*(n+1))`
-/

namespace A059562.P1836010442885202236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A002144 (5 * (n + 1))).toNat * A054385 (5 * (n + 1))

end

end A059562.P1836010442885202236

namespace A059562

/-- `A051953(A002144(5*(n+1)))*A054385(5*(n+1))` -/
def P1836010442885202236.Spec : Prop :=
  ∀ n, P1836010442885202236.a n = A059562 (n + 1)

end A059562

/-! ## A059562.P9170040617783117585

`A054385(5*(n+1))+A008683((4*(n+1))²)`
-/

namespace A059562.P9170040617783117585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (5 * (n + 1)) + A008683 ((4 * (n + 1)) ^ 2)

end

end A059562.P9170040617783117585

namespace A059562

/-- `A054385(5*(n+1))+A008683((4*(n+1))²)` -/
def P9170040617783117585.Spec : Prop :=
  ∀ n, P9170040617783117585.a n = A059562 (n + 1)

end A059562

/-!
# A059563: Beatty sequence for e + 1/e.

The programs for A059563, the canonical program `A059563.P4467332134516133379` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059563 has offset 1).

The definition of A059563 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059563.P4467332134516133379

`floor((n+1)*(e+1/e))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059563

/-- `floor((n+1)*(e+1/e))` -/
def P4467332134516133379.Spec : Prop :=
  ∀ n, P4467332134516133379.a n = A059563 (n + 1)

theorem P4467332134516133379.correct : P4467332134516133379.Spec := by
  intro n
  simp only [A059563, Nat.add_sub_cancel]

end A059563

/-! ## A059563.P18314939291923971985

`A109231(2*(n+1))`
-/

namespace A059563.P18314939291923971985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109231 (2 * (n + 1))

end

end A059563.P18314939291923971985

namespace A059563

/-- `A109231(2*(n+1))` -/
def P18314939291923971985.Spec : Prop :=
  ∀ n, P18314939291923971985.a n = A059563 (n + 1)

end A059563

/-! ## A059563.P4629574404700123618

`record[A109231(xor(1, n)+1)]`
-/

namespace A059563.P4629574404700123618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109231 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059563.P4629574404700123618

namespace A059563

/-- `record[A109231(xor(1, n)+1)]` -/
def P4629574404700123618.Spec : Prop :=
  ∀ n, P4629574404700123618.a n = A059563 (n + 1)

end A059563

/-! ## A059563.P4374967929851590492

`record[A109231(A265667(n+2))]`
-/

namespace A059563.P4374967929851590492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109231 (A265667 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059563.P4374967929851590492

namespace A059563

/-- `record[A109231(A265667(n+2))]` -/
def P4374967929851590492.Spec : Prop :=
  ∀ n, P4374967929851590492.a n = A059563 (n + 1)

end A059563

/-! ## A059563.P10719445228813531552

`A109233(A109232(2*(n+1)))`
-/

namespace A059563.P10719445228813531552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109233 (A109232 (2 * (n + 1))).toNat

end

end A059563.P10719445228813531552

namespace A059563

/-- `A109233(A109232(2*(n+1)))` -/
def P10719445228813531552.Spec : Prop :=
  ∀ n, P10719445228813531552.a n = A059563 (n + 1)

end A059563

/-! ## A059563.P2640713307677039484

`A109233(A109233(A109231(n+2+n)))`
-/

namespace A059563.P2640713307677039484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109233 (A109233 (A109231 (n + 2 + n)).toNat).toNat

end

end A059563.P2640713307677039484

namespace A059563

/-- `A109233(A109233(A109231(n+2+n)))` -/
def P2640713307677039484.Spec : Prop :=
  ∀ n, P2640713307677039484.a n = A059563 (n + 1)

end A059563

/-!
# A059564: Beatty sequence for (e^2 + 1)/(e^2 - e + 1).

The programs for A059564, the canonical program `A059564.P15480642975993724940` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059564 has offset 1).

The definition of A059564 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059564.P15480642975993724940

`floor((n+1)*(e²+1)/(e²-e+1))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059564

/-- `floor((n+1)*(e²+1)/(e²-e+1))` -/
def P15480642975993724940.Spec : Prop :=
  ∀ n, P15480642975993724940.a n = A059564 (n + 1)

theorem P15480642975993724940.correct : P15480642975993724940.Spec := by
  intro n
  simp only [A059564, Nat.add_sub_cancel]

end A059564

/-! ## A059564.P8388961499174613496

`comp[floor(2*n*cosh(1))]`
-/

namespace A059564.P8388961499174613496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((n : ℝ) * Real.cosh (1 : ℝ))⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A059564.P8388961499174613496

namespace A059564

/-- `comp[floor(2*n*cosh(1))]` -/
def P8388961499174613496.Spec : Prop :=
  ∀ n, (P8388961499174613496.a n : ℤ) = A059564 (n + 1)

end A059564

/-! ## A059564.P15193289911221605737

`comp[A059563(n+1)-1]+1`
-/

namespace A059564.P15193289911221605737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059563 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A059564.P15193289911221605737

namespace A059564

/-- `comp[A059563(n+1)-1]+1` -/
def P15193289911221605737.Spec : Prop :=
  ∀ n, (P15193289911221605737.a n : ℤ) = A059564 (n + 1)

end A059564

/-! ## A059564.P1974722996877407086

`comp[A000035(n)*A109231(n+1)]`
-/

namespace A059564.P1974722996877407086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A109231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A059564.P1974722996877407086

namespace A059564

/-- `comp[A000035(n)*A109231(n+1)]` -/
def P1974722996877407086.Spec : Prop :=
  ∀ n, (P1974722996877407086.a n : ℤ) = A059564 (n + 1)

end A059564

/-! ## A059564.P16913186926636842861

`A003056(∑[A235933(A114119(n))])`
-/

namespace A059564.P16913186926636842861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235933 (A114119 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A059564.P16913186926636842861

namespace A059564

/-- `A003056(∑[A235933(A114119(n))])` -/
def P16913186926636842861.Spec : Prop :=
  ∀ n, P16913186926636842861.a n = A059564 (n + 1)

end A059564

/-! ## A059564.P12474225737719646966

`A379604(A047954(n))`
-/

namespace A059564.P12474225737719646966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379604 (A047954 n).toNat

end

end A059564.P12474225737719646966

namespace A059564

/-- `A379604(A047954(n))` -/
def P12474225737719646966.Spec : Prop :=
  ∀ n, P12474225737719646966.a n = A059564 (n + 1)

end A059564

/-! ## A059564.P6732886032253745088

`A000196(∑[A072154(A286905(n+1))])`
-/

namespace A059564.P6732886032253745088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (A286905 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A059564.P6732886032253745088

namespace A059564

/-- `A000196(∑[A072154(A286905(n+1))])` -/
def P6732886032253745088.Spec : Prop :=
  ∀ n, P6732886032253745088.a n = A059564 (n + 1)

end A059564

/-! ## A059564.P791877303280744291

`A000196(∑[A187415(n+1)+A047536(n+1)])`
-/

namespace A059564.P791877303280744291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187415 (n + 1) + A047536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A059564.P791877303280744291

namespace A059564

/-- `A000196(∑[A187415(n+1)+A047536(n+1)])` -/
def P791877303280744291.Spec : Prop :=
  ∀ n, P791877303280744291.a n = A059564 (n + 1)

end A059564

/-!
# A059565: Beatty sequence for e^gamma (gamma is the Euler-Mascheroni constant A001620).

The programs for A059565, the canonical program `A059565.P12176243696390970144` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059565 has offset 1).

The definition of A059565 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059565.P12176243696390970144

`floor((n+1)*e^γ)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059565

/-- `floor((n+1)*e^γ)` -/
def P12176243696390970144.Spec : Prop :=
  ∀ n, P12176243696390970144.a n = A059565 (n + 1)

theorem P12176243696390970144.correct : P12176243696390970144.Spec := by
  intro n
  simp only [A059565, Nat.add_sub_cancel]

end A059565

/-! ## A059565.P11649865917927531961

`A093609(n+1)-(n+1)`
-/

namespace A059565.P11649865917927531961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093609 (n + 1) - (n + 1 : ℤ)

end

end A059565.P11649865917927531961

namespace A059565

/-- `A093609(n+1)-(n+1)` -/
def P11649865917927531961.Spec : Prop :=
  ∀ n, P11649865917927531961.a n = A059565 (n + 1)

end A059565

/-!
# A059566: Beatty sequence for e^gamma/(e^gamma-1).

The programs for A059566, the canonical program `A059566.P3566167821467926775` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059566 has offset 1).

The definition of A059566 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059566.P3566167821467926775

`floor((n+1)*e^γ/(e^γ-1))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059566

/-- `floor((n+1)*e^γ/(e^γ-1))` -/
def P3566167821467926775.Spec : Prop :=
  ∀ n, P3566167821467926775.a n = A059566 (n + 1)

theorem P3566167821467926775.correct : P3566167821467926775.Spec := by
  intro n
  simp only [A059566, Nat.add_sub_cancel]

end A059566

/-! ## A059566.P962785917099959757

`record[Δ[(A059565(n+1)/2)²]]`
-/

namespace A059566.P962785917099959757
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A059565 (n + 1) : ℚ) / 2) ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059566.P962785917099959757

namespace A059566

/-- `record[Δ[(A059565(n+1)/2)²]]` -/
def P962785917099959757.Spec : Prop :=
  ∀ n, P962785917099959757.a n = (A059566 (n + 1) : ℚ)

end A059566

/-!
# A059567: Beatty sequence for 1 - log(log(2)).

The programs for A059567, the canonical program `A059567.P13566297735398763424` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059567 has offset 1).

The definition of A059567 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059567.P13566297735398763424

`floor((n+1)*(1-log(log(2))))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059567

/-- `floor((n+1)*(1-log(log(2))))` -/
def P13566297735398763424.Spec : Prop :=
  ∀ n, P13566297735398763424.a n = A059567 (n + 1)

theorem P13566297735398763424.correct : P13566297735398763424.Spec := by
  intro n
  simp only [A059567, Nat.add_sub_cancel]

end A059567

/-! ## A059567.P7417397440538270556

`comp[A059568(n+1)-1]+1`
-/

namespace A059567.P7417397440538270556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059568 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A059567.P7417397440538270556

namespace A059567

/-- `comp[A059568(n+1)-1]+1` -/
def P7417397440538270556.Spec : Prop :=
  ∀ n, (P7417397440538270556.a n : ℤ) = A059567 (n + 1)

end A059567

/-! ## A059567.P7600150101088014497

`A172471(∑[A110655(n)+A026351(n)])`
-/

namespace A059567.P7600150101088014497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 n + A026351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A059567.P7600150101088014497

namespace A059567

/-- `A172471(∑[A110655(n)+A026351(n)])` -/
def P7600150101088014497.Spec : Prop :=
  ∀ n, P7600150101088014497.a n = A059567 (n + 1)

end A059567

/-! ## A059567.P7938990829078822718

`A121902(A001399(3*n))+1+n`
-/

namespace A059567.P7938990829078822718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (A001399 (3 * n)).toNat + 1 + (n : ℤ)

end

end A059567.P7938990829078822718

namespace A059567

/-- `A121902(A001399(3*n))+1+n` -/
def P7938990829078822718.Spec : Prop :=
  ∀ n, P7938990829078822718.a n = A059567 (n + 1)

end A059567

/-! ## A059567.P254323315769216290

`A118759(A118759(n))+A008620(A059543(n+1))`
-/

namespace A059567.P254323315769216290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A118759 n).toNat + A008620 (A059543 (n + 1)).toNat

end

end A059567.P254323315769216290

namespace A059567

/-- `A118759(A118759(n))+A008620(A059543(n+1))` -/
def P254323315769216290.Spec : Prop :=
  ∀ n, P254323315769216290.a n = A059567 (n + 1)

end A059567

/-!
# A059568: Beatty sequence for 1 - 1/log(log(2)).

The programs for A059568, the canonical program `A059568.P2563637161764771166` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059568 has offset 1).

The definition of A059568 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059568.P2563637161764771166

`floor((n+1)*(1-1/log(log(2))))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059568

/-- `floor((n+1)*(1-1/log(log(2))))` -/
def P2563637161764771166.Spec : Prop :=
  ∀ n, P2563637161764771166.a n = A059568 (n + 1)

theorem P2563637161764771166.correct : P2563637161764771166.Spec := by
  intro n
  simp only [A059568, Nat.add_sub_cancel]

end A059568

/-! ## A059568.P7721355497236381675

`A097508(9*(n+1))%A342192(n+1)`
-/

namespace A059568.P7721355497236381675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097508 (9 * (n + 1))) (A342192 (n + 1))

end

end A059568.P7721355497236381675

namespace A059568

/-- `A097508(9*(n+1))%A342192(n+1)` -/
def P7721355497236381675.Spec : Prop :=
  ∀ n, P7721355497236381675.a n = A059568 (n + 1)

end A059568

/-! ## A059568.P3822858190790611726

`A182009(A153784(n+1))`
-/

namespace A059568.P3822858190790611726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182009 (A153784 (n + 1)).toNat

end

end A059568.P3822858190790611726

namespace A059568

/-- `A182009(A153784(n+1))` -/
def P3822858190790611726.Spec : Prop :=
  ∀ n, P3822858190790611726.a n = A059568 (n + 1)

end A059568

/-! ## A059568.P2874737852257029573

`A033810(A005563(3*n+1)+A005563(n))`
-/

namespace A059568.P2874737852257029573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033810 (A005563 (3 * n + 1) + A005563 n).toNat

end

end A059568.P2874737852257029573

namespace A059568

/-- `A033810(A005563(3*n+1)+A005563(n))` -/
def P2874737852257029573.Spec : Prop :=
  ∀ n, P2874737852257029573.a n = A059568 (n + 1)

end A059568

/-!
# A059570: Number of fixed points in all 231-avoiding involutions in S_n.

The programs for A059570, the canonical program `A059570.P4870632878782414881` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059570 has offset 1).

The definition of A059570 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059570.P4870632878782414881

`3*a(n-1)-4*a(n-3)` with `a(0)=1, a(1)=2, a(2)=6`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059570

/-- `3*a(n-1)-4*a(n-3)` -/
def P4870632878782414881.Spec : Prop :=
  ∀ n, P4870632878782414881.a n = A059570 (n + 1)

theorem P4870632878782414881.correct : P4870632878782414881.Spec := by
  intro n
  simp only [A059570, Nat.add_sub_cancel]

end A059570

/-! ## A059570.P8653965205897930390

`(3*(n+1)+4)*2^(n+1)/18-2*(-1)^(n+1)/9`
-/

namespace A059570.P8653965205897930390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * (n + 1) + 4) * 2 ^ (n + 1) : ℚ) / 18 - (2 * (-1) ^ (n + 1) : ℚ) / 9

end

end A059570.P8653965205897930390

namespace A059570

/-- `(3*(n+1)+4)*2^(n+1)/18-2*(-1)^(n+1)/9` -/
def P8653965205897930390.Spec : Prop :=
  ∀ n, P8653965205897930390.a n = (A059570 (n + 1) : ℚ)

theorem P8653965205897930390.correct : P8653965205897930390.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A059570, Nat.add_sub_cancel, A059570.P8653965205897930390.a, A059570.P4870632878782414881.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h3 := ih m (by omega)
      simp only [A059570, Nat.add_sub_cancel, A059570.P8653965205897930390.a, A059570.P4870632878782414881.a, SequenceMachineLib.memo_apply] at h1 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h3 ⊢
      rw [← h1, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A059570

/-! ## A059570.P17483000457621448406

`ogf((1-x)/(1-3x+4x^3))`
-/

namespace A059570.P17483000457621448406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -3, 0, 4] n

end

end A059570.P17483000457621448406

namespace A059570

/-- `ogf((1-x)/(1-3x+4x^3))` -/
def P17483000457621448406.Spec : Prop :=
  ∀ n, P17483000457621448406.a n = A059570 (n + 1)

end A059570

/-! ## A059570.P4392057476162980639

`∑[abs(A084219(n))]`
-/

namespace A059570.P4392057476162980639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A084219 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059570.P4392057476162980639

namespace A059570

/-- `∑[abs(A084219(n))]` -/
def P4392057476162980639.Spec : Prop :=
  ∀ n, P4392057476162980639.a n = A059570 (n + 1)

end A059570

/-! ## A059570.P15841101375853269718

`∑[A172481(n)-A001045(n)]`
-/

namespace A059570.P15841101375853269718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172481 n - A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059570.P15841101375853269718

namespace A059570

/-- `∑[A172481(n)-A001045(n)]` -/
def P15841101375853269718.Spec : Prop :=
  ∀ n, P15841101375853269718.a n = A059570 (n + 1)

end A059570

/-! ## A059570.P14895548223078957025

`Δ[A045883(n)]`
-/

namespace A059570.P14895548223078957025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045883 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A059570.P14895548223078957025

namespace A059570

/-- `Δ[A045883(n)]` -/
def P14895548223078957025.Spec : Prop :=
  ∀ n, P14895548223078957025.a n = A059570 (n + 1)

end A059570

/-! ## A059570.P2966516126712502494

`A275434(n+3)/2`
-/

namespace A059570.P2966516126712502494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275434 (n + 3) : ℚ) / 2

end

end A059570.P2966516126712502494

namespace A059570

/-- `A275434(n+3)/2` -/
def P2966516126712502494.Spec : Prop :=
  ∀ n, P2966516126712502494.a n = (A059570 (n + 1) : ℚ)

end A059570

/-! ## A059570.P10866132290490450218

`abs(∑[A168150(n+2)])`
-/

namespace A059570.P10866132290490450218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168150 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A059570.P10866132290490450218

namespace A059570

/-- `abs(∑[A168150(n+2)])` -/
def P10866132290490450218.Spec : Prop :=
  ∀ n, P10866132290490450218.a n = A059570 (n + 1)

end A059570

/-! ## A059570.P13429858023727228841

`Δ[A140960(n+1)/2]`
-/

namespace A059570.P13429858023727228841
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140960 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A059570.P13429858023727228841

namespace A059570

/-- `Δ[A140960(n+1)/2]` -/
def P13429858023727228841.Spec : Prop :=
  ∀ n, P13429858023727228841.a n = (A059570 (n + 1) : ℚ)

end A059570

/-! ## A059570.P4380366431639868473

`A208755(∑[n+2])`
-/

namespace A059570.P4380366431639868473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208755 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059570.P4380366431639868473

namespace A059570

/-- `A208755(∑[n+2])` -/
def P4380366431639868473.Spec : Prop :=
  ∀ n, P4380366431639868473.a n = A059570 (n + 1)

end A059570

/-! ## A059570.P5147756036689506653

`Δ[A208756(∑[n+2])]`
-/

namespace A059570.P5147756036689506653
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208756 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A059570.P5147756036689506653

namespace A059570

/-- `Δ[A208756(∑[n+2])]` -/
def P5147756036689506653.Spec : Prop :=
  ∀ n, P5147756036689506653.a n = A059570 (n + 1)

end A059570

/-!
# A059571: From Mertens's conjecture (1): floor(sqrt(n)) - |M(n)|, where M is Mertens's function A002321.

The programs for A059571, the canonical program `A059571.P5135965479004864575` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059571 has offset 1).

The definition of A059571 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059571.P12114579128000254639

`floor(sqrt(n+1)-abs(A002321(n+1)))`
-/

namespace A059571.P12114579128000254639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (n + 1 : ℝ) - (|A002321 (n + 1)| : ℝ)⌋

end

end A059571.P12114579128000254639

namespace A059571

/-- `floor(sqrt(n+1)-abs(A002321(n+1)))` -/
def P12114579128000254639.Spec : Prop :=
  ∀ n, P12114579128000254639.a n = A059571 (n + 1)

end A059571

/-! ## A059571.P14108432623679517384

`A059581(n+1)+abs(A002321(n+1))`
-/

namespace A059571.P14108432623679517384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059581 (n + 1) + |A002321 (n + 1)|

end

end A059571.P14108432623679517384

namespace A059571

/-- `A059581(n+1)+abs(A002321(n+1))` -/
def P14108432623679517384.Spec : Prop :=
  ∀ n, P14108432623679517384.a n = A059571 (n + 1)

theorem P14108432623679517384.correct : P14108432623679517384.Spec := by
  intro n
  simp only [A059571, Nat.add_sub_cancel, A059571.P14108432623679517384.a, A059571.P5135965479004864575.a, A000196, A000196.P15434771586934192083.a, A002321, A002321.P574617781515155943.f2, A002321.P574617781515155943.f3, A002321.P574617781515155943.f1, A002321.P574617781515155943.a, A059581, A059581.P17730618558655217201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059571

/-! ## A059571.P5135965479004864575

`A000196(n+1)-abs(A002321(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A059571

/-- `A000196(n+1)-abs(A002321(n+1))` -/
def P5135965479004864575.Spec : Prop :=
  ∀ n, P5135965479004864575.a n = A059571 (n + 1)

theorem P5135965479004864575.correct : P5135965479004864575.Spec := by
  intro n
  simp only [A059571, Nat.add_sub_cancel]

end A059571

/-! ## A059571.P6949875392006114873

`A059581(n+1)+abs(∑[A008683(n+1)])`
-/

namespace A059571.P6949875392006114873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059581 (n + 1) + |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A059571.P6949875392006114873

namespace A059571

/-- `A059581(n+1)+abs(∑[A008683(n+1)])` -/
def P6949875392006114873.Spec : Prop :=
  ∀ n, P6949875392006114873.a n = A059571 (n + 1)

end A059571

/-! ## A059571.P2277516171304361103

`A000196(n+1)-abs(∑[A008683(n+1)])`
-/

namespace A059571.P2277516171304361103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (n + 1) - |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A059571.P2277516171304361103

namespace A059571

/-- `A000196(n+1)-abs(∑[A008683(n+1)])` -/
def P2277516171304361103.Spec : Prop :=
  ∀ n, P2277516171304361103.a n = A059571 (n + 1)

end A059571

/-! ## A059571.P2343987706157415806

`∑[A000005(n+1)%2]-abs(A002321(n+1))`
-/

namespace A059571.P2343987706157415806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - |A002321 (n + 1)|

end

end A059571.P2343987706157415806

namespace A059571

/-- `∑[A000005(n+1)%2]-abs(A002321(n+1))` -/
def P2343987706157415806.Spec : Prop :=
  ∀ n, P2343987706157415806.a n = A059571 (n + 1)

end A059571

/-! ## A059571.P12557022376207132921

`A059581(n+1)+A000194(A002321(n+1)²)`
-/

namespace A059571.P12557022376207132921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059581 (n + 1) + A000194 (A002321 (n + 1) ^ 2).toNat

end

end A059571.P12557022376207132921

namespace A059571

/-- `A059581(n+1)+A000194(A002321(n+1)²)` -/
def P12557022376207132921.Spec : Prop :=
  ∀ n, P12557022376207132921.a n = A059571 (n + 1)

end A059571

/-! ## A059571.P3644311721747040132

`A059581(n+1)+A000196(A002321(n+1)²)`
-/

namespace A059571.P3644311721747040132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059581 (n + 1) + A000196 (A002321 (n + 1) ^ 2).toNat

end

end A059571.P3644311721747040132

namespace A059571

/-- `A059581(n+1)+A000196(A002321(n+1)²)` -/
def P3644311721747040132.Spec : Prop :=
  ∀ n, P3644311721747040132.a n = A059571 (n + 1)

end A059571

/-! ## A059571.P10868805990657570256

`A000196(n+1)-A000196(∑[A008683(n+1)]²)`
-/

namespace A059571.P10868805990657570256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (n + 1) - A000196 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A059571.P10868805990657570256

namespace A059571

/-- `A000196(n+1)-A000196(∑[A008683(n+1)]²)` -/
def P10868805990657570256.Spec : Prop :=
  ∀ n, P10868805990657570256.a n = A059571 (n + 1)

end A059571

/-!
# A059572: From Mertens's conjecture (2): floor(sqrt(n)) - Mertens's function A002321(n).

The programs for A059572, the canonical program `A059572.P2225437894775727846` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059572 has offset 1).

The definition of A059572 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059572.P1458469363301537839

`floor(sqrt(n+1)-A002321(n+1))`
-/

namespace A059572.P1458469363301537839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (n + 1 : ℝ) - (A002321 (n + 1) : ℝ)⌋

end

end A059572.P1458469363301537839

namespace A059572

/-- `floor(sqrt(n+1)-A002321(n+1))` -/
def P1458469363301537839.Spec : Prop :=
  ∀ n, P1458469363301537839.a n = A059572 (n + 1)

end A059572

/-! ## A059572.P4309420139928076645

`floor(sqrt(n+1)-∑[A008683(n+1)])`
-/

namespace A059572.P4309420139928076645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (n + 1 : ℝ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)⌋

end

end A059572.P4309420139928076645

namespace A059572

/-- `floor(sqrt(n+1)-∑[A008683(n+1)])` -/
def P4309420139928076645.Spec : Prop :=
  ∀ n, P4309420139928076645.a n = A059572 (n + 1)

end A059572

/-! ## A059572.P1011499253589236569

`∑[char[n²-1]-A008683(C(n+1, n))]`
-/

namespace A059572.P1011499253589236569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A008683 (Nat.choose (n + 1) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059572.P1011499253589236569

namespace A059572

/-- `∑[char[n²-1]-A008683(C(n+1, n))]` -/
def P1011499253589236569.Spec : Prop :=
  ∀ n, P1011499253589236569.a n = A059572 (n + 1)

end A059572

/-! ## A059572.P2225437894775727846

`A000196(n+1)-A002321(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A059572

/-- `A000196(n+1)-A002321(n+1)` -/
def P2225437894775727846.Spec : Prop :=
  ∀ n, P2225437894775727846.a n = A059572 (n + 1)

theorem P2225437894775727846.correct : P2225437894775727846.Spec := by
  intro n
  simp only [A059572, Nat.add_sub_cancel]

end A059572

/-! ## A059572.P8169336825036295100

`∑[Δ[A000196(n)]-A008683(n+1)]`
-/

namespace A059572.P8169336825036295100
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059572.P8169336825036295100

namespace A059572

/-- `∑[Δ[A000196(n)]-A008683(n+1)]` -/
def P8169336825036295100.Spec : Prop :=
  ∀ n, P8169336825036295100.a n = A059572 (n + 1)

end A059572

/-! ## A059572.P3646711523539824876

`∑[char[A005563(n)]-A008683(n+1)]`
-/

namespace A059572.P3646711523539824876
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059572.P3646711523539824876

namespace A059572

/-- `∑[char[A005563(n)]-A008683(n+1)]` -/
def P3646711523539824876.Spec : Prop :=
  ∀ n, P3646711523539824876.a n = A059572 (n + 1)

end A059572

/-! ## A059572.P18370939586262554834

`A000196(n+1)-∑[A008683(n+1)]`
-/

namespace A059572.P18370939586262554834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059572.P18370939586262554834

namespace A059572

/-- `A000196(n+1)-∑[A008683(n+1)]` -/
def P18370939586262554834.Spec : Prop :=
  ∀ n, P18370939586262554834.a n = A059572 (n + 1)

end A059572

/-! ## A059572.P15463773072315211878

`∑[A000122(n+1)/2-A008683(n+1)]`
-/

namespace A059572.P15463773072315211878
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000122 (n + 1) : ℚ) / 2 - (A008683 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059572.P15463773072315211878

namespace A059572

/-- `∑[A000122(n+1)/2-A008683(n+1)]` -/
def P15463773072315211878.Spec : Prop :=
  ∀ n, P15463773072315211878.a n = (A059572 (n + 1) : ℚ)

end A059572

/-! ## A059572.P10736156330879400879

`∑[A000005(n+1)%2-A008683(n+1)]`
-/

namespace A059572.P10736156330879400879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (n + 1)) 2 - A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059572.P10736156330879400879

namespace A059572

/-- `∑[A000005(n+1)%2-A008683(n+1)]` -/
def P10736156330879400879.Spec : Prop :=
  ∀ n, P10736156330879400879.a n = A059572 (n + 1)

end A059572

/-! ## A059572.P8687980625344354222

`abs(A002321(n+1))+A059571(n+1)-A002321(n+1)`
-/

namespace A059572.P8687980625344354222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002321 (n + 1)| + (A059571 (n + 1) - A002321 (n + 1))

end

end A059572.P8687980625344354222

namespace A059572

/-- `abs(A002321(n+1))+A059571(n+1)-A002321(n+1)` -/
def P8687980625344354222.Spec : Prop :=
  ∀ n, P8687980625344354222.a n = A059572 (n + 1)

theorem P8687980625344354222.correct : P8687980625344354222.Spec := by
  intro n
  simp only [A059572, Nat.add_sub_cancel, A059572.P8687980625344354222.a, A059572.P2225437894775727846.a, A000196, A000196.P15434771586934192083.a, A002321, A002321.P574617781515155943.f2, A002321.P574617781515155943.f3, A002321.P574617781515155943.f1, A002321.P574617781515155943.a, A059571, A059571.P5135965479004864575.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059572

/-! ## A059572.P12949328368949094128

`Δ[A022554(n)]-A002321(n+1)`
-/

namespace A059572.P12949328368949094128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022554 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002321 (n + 1)

end

end A059572.P12949328368949094128

namespace A059572

/-- `Δ[A022554(n)]-A002321(n+1)` -/
def P12949328368949094128.Spec : Prop :=
  ∀ n, P12949328368949094128.a n = A059572 (n + 1)

end A059572

/-!
# A059573: Polyotessamino numbers T(n,k) (1<=k<=n): take all the polyominoes with n cells (including those with holes but excluding rotations and reflections); fill them as completely as possible with rectangular 1 X k tiles; T(n,k) is number of ways of doing this.

The programs for A059573, there is no canonical definition to state claims against.
-/

/-! ## A059573.P17923991280630465753

`A351870(A308437(n+1)-char[11])`
-/

namespace A059573.P17923991280630465753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (A308437 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A059573.P17923991280630465753

/-! ## A059573.P2820869498074797424

`A351870(xor(char[11], A308437(n+1)))`
-/

namespace A059573.P2820869498074797424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A308437 (n + 1))).toNat

end

end A059573.P2820869498074797424

/-! ## A059573.P12892174854961246462

`A351870(A308437(n+1))-A085393(n+1)`
-/

namespace A059573.P12892174854961246462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (A308437 (n + 1)).toNat - A085393 (n + 1)

end

end A059573.P12892174854961246462

/-! ## A059573.P6625413869534746380

`A308437(n+1)-A287372(A265781(n+1))`
-/

namespace A059573.P6625413869534746380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308437 (n + 1) - A287372 (A265781 (n + 1)).toNat

end

end A059573.P6625413869534746380

/-! ## A059573.P1655174535624751818

`A351870(A308437(n+1))-A308424(n+1)`
-/

namespace A059573.P1655174535624751818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (A308437 (n + 1)).toNat - A308424 (n + 1)

end

end A059573.P1655174535624751818

/-!
# A059574: The array described in A059513 read by antidiagonals in the 'up' direction.

The programs for A059574, there is no canonical definition to state claims against.
-/

/-! ## A059574.P15853429832457459408

`A059575(A056023(n+1))`
-/

namespace A059574.P15853429832457459408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059575 (A056023 (n + 1)).toNat

end

end A059574.P15853429832457459408

/-!
# A059575: The array described in A059513 read by antidiagonals in the direction of construction.

The programs for A059575, there is no canonical definition to state claims against.
-/

/-! ## A059575.P10741665601366165224

`A059574(A056023(n+1))`
-/

namespace A059575.P10741665601366165224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059574 (A056023 (n + 1)).toNat

end

end A059575.P10741665601366165224

/-!
# A059576: Summatory Pascal triangle T(n,k) (0 <= k <= n) read by rows. Top entry is 1. Each entry is the sum of the parallelogram above it.

The programs for A059576, there is no canonical definition to state claims against.
-/

/-! ## A059576.P12212427489592311704

`ceil(A059474(n)/2)`
-/

namespace A059576.P12212427489592311704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A059474 n : ℚ) / 2⌉

end

end A059576.P12212427489592311704

/-! ## A059576.P3089915470521738113

`A059474(n)/gcd(2, A131999(n))`
-/

namespace A059576.P3089915470521738113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059474 n : ℚ) / (Int.gcd 2 (A131999 n) : ℚ)

end

end A059576.P3089915470521738113

/-! ## A059576.P16352208419388428742

`A059474(n)/A020639(A059474(A000523(n+1)))`
-/

namespace A059576.P16352208419388428742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059474 n : ℚ) / (A020639 (A059474 (A000523 (n + 1)).toNat).toNat : ℚ)

end

end A059576.P16352208419388428742

/-! ## A059576.P3876083676524190483

`A059474(n)/A020639(Δ[A095841(n+1)])`
-/

namespace A059576.P3876083676524190483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095841 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059474 n : ℚ) / (A020639 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A059576.P3876083676524190483

/-! ## A059576.P17725218001415594008

`round(A059474(n)/A020639(A261678(n+1)))`
-/

namespace A059576.P17725218001415594008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A059474 n : ℚ) / (A020639 (A261678 (n + 1)).toNat : ℚ))

end

end A059576.P17725218001415594008

/-! ## A059576.P16851198260165271182

`A059474(n)/A020639(A095841(n+1)-1)`
-/

namespace A059576.P16851198260165271182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059474 n : ℚ) / (A020639 (A095841 (n + 1) - 1).toNat : ℚ)

end

end A059576.P16851198260165271182

/-! ## A059576.P6544365314556515008

`A059474(n)/A000005(record[A014963(n+1)])`
-/

namespace A059576.P6544365314556515008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059474 n : ℚ) / (A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ)

end

end A059576.P6544365314556515008

/-! ## A059576.P9191334783303990491

`A003480(n)/A007070(n)*A059474(n)`
-/

namespace A059576.P9191334783303990491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003480 n : ℚ) / (A007070 n : ℚ) * (A059474 n : ℚ)

end

end A059576.P9191334783303990491

/-! ## A059576.P13958287093071505430

`A052141(n)/A084773(n)*A059474(n)`
-/

namespace A059576.P13958287093071505430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052141 n : ℚ) / (A084773 n : ℚ) * (A059474 n : ℚ)

end

end A059576.P13958287093071505430

/-!
# A059577: Main diagonal of the array A059574.

The programs for A059577, there is no canonical definition to state claims against.
-/

/-! ## A059577.P6534093645655804115

`A059574(∑[4*n]+1)`
-/

namespace A059577.P6534093645655804115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059574 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A059577.P6534093645655804115

/-! ## A059577.P13760869653860675412

`A059575((n+1)²+n²)`
-/

namespace A059577.P13760869653860675412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059575 ((n + 1) ^ 2 + n ^ 2)

end

end A059577.P13760869653860675412

/-! ## A059577.P9828325320089463191

`record[A059575(Δ[A235355(n)])]`
-/

namespace A059577.P9828325320089463191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059575 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059577.P9828325320089463191

/-! ## A059577.P11532456184590399374

`and(-1, A059575(A001844(n)))`
-/

namespace A059577.P11532456184590399374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A059575 (A001844 n).toNat)

end

end A059577.P11532456184590399374

/-! ## A059577.P9275601190532275407

`record[A003982(n)*A059575(n+1)]`
-/

namespace A059577.P9275601190532275407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A059575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059577.P9275601190532275407

/-!
# A059578: Variation of Boustrophedon transform applied to 1,1,1,1,... Fill an array by diagonals, all in the 'up' direction. The first column is 1,1,1,1,.... For the next element of a diagonal, add to the previous element the elements of the row and the column the new element is in. The first row gives a(n).

The programs for A059578, there is no canonical definition to state claims against.
-/

/-! ## A059578.P2907487404136354017

`A059579(∑[n+1])`
-/

namespace A059578.P2907487404136354017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059579 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059578.P2907487404136354017

/-! ## A059578.P15988803366448603175

`record[1-Δ[A059579(n+1)]]`
-/

namespace A059578.P15988803366448603175
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059579 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059578.P15988803366448603175

/-! ## A059578.P1439901812735218078

`record[A059579(∑[A145677(n)])]`
-/

namespace A059578.P1439901812735218078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145677 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059579 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059578.P1439901812735218078

/-! ## A059578.P14440939301637251589

`record[A059579(A059399(n+1))]`
-/

namespace A059578.P14440939301637251589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059579 (A059399 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059578.P14440939301637251589

/-! ## A059578.P349129221009346681

`record[A059579(n+1)/A092582(n+1)]`
-/

namespace A059578.P349129221009346681
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059579 (n + 1) : ℚ) / (A092582 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059578.P349129221009346681

/-!
# A059580: Main diagonal of the array A059579.

The programs for A059580, there is no canonical definition to state claims against.
-/

/-! ## A059580.P7178360113268909892

`A059579(∑[4*n]+1)`
-/

namespace A059580.P7178360113268909892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059579 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A059580.P7178360113268909892

/-! ## A059580.P6685604223864879888

`A059579(A001844(n))%A134501(n)`
-/

namespace A059580.P6685604223864879888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059579 (A001844 n).toNat) (A134501 n)

end

end A059580.P6685604223864879888

/-! ## A059580.P3513938184942650665

`lcm(A059579(A001844(n)), A131534(n))`
-/

namespace A059580.P3513938184942650665
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A059579 (A001844 n).toNat) (A131534 n)

end

end A059580.P3513938184942650665

/-! ## A059580.P12501970520503936943

`A059579(A001844(n))+val(A040660(n), 5)`
-/

namespace A059580.P12501970520503936943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059579 (A001844 n).toNat + (SequenceMachineLib.valuation (A040660 n).toNat 5 : ℤ)

end

end A059580.P12501970520503936943

/-! ## A059580.P5970206124081020835

`A059579(A001844(n))+val(A083952(n), 5)`
-/

namespace A059580.P5970206124081020835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059579 (A001844 n).toNat + (SequenceMachineLib.valuation (A083952 n).toNat 5 : ℤ)

end

end A059580.P5970206124081020835

/-! ## A059580.P9926391836463973985

`A059579(A001844(n))+val(A000124(n+5), 5)`
-/

namespace A059580.P9926391836463973985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059579 (A001844 n).toNat + (SequenceMachineLib.valuation (A000124 (n + 5)).toNat 5 : ℤ)

end

end A059580.P9926391836463973985

/-!
# A059581: From Von Sterneck's conjecture: floor(sqrt(n)) - 2*|Mertens's function A002321(n)|.

The programs for A059581, the canonical program `A059581.P17730618558655217201` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059581 has offset 1).

The definition of A059581 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059581.P17730618558655217201

`A059571(n+1)-abs(A002321(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A059581

/-- `A059571(n+1)-abs(A002321(n+1))` -/
def P17730618558655217201.Spec : Prop :=
  ∀ n, P17730618558655217201.a n = A059581 (n + 1)

theorem P17730618558655217201.correct : P17730618558655217201.Spec := by
  intro n
  simp only [A059581, Nat.add_sub_cancel]

end A059581

/-! ## A059581.P644941132430859115

`A059571(n+1)-abs(∑[A008683(n+1)])`
-/

namespace A059581.P644941132430859115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059571 (n + 1) - |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A059581.P644941132430859115

namespace A059581

/-- `A059571(n+1)-abs(∑[A008683(n+1)])` -/
def P644941132430859115.Spec : Prop :=
  ∀ n, P644941132430859115.a n = A059581 (n + 1)

end A059581

/-! ## A059581.P8396224700208308462

`A059571(n+1)-abs(∑[A007423(n+1)-1])`
-/

namespace A059581.P8396224700208308462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059571 (n + 1) - |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A059581.P8396224700208308462

namespace A059581

/-- `A059571(n+1)-abs(∑[A007423(n+1)-1])` -/
def P8396224700208308462.Spec : Prop :=
  ∀ n, P8396224700208308462.a n = A059581 (n + 1)

theorem P8396224700208308462.correct : P8396224700208308462.Spec := by
  intro n
  simp only [A059581, Nat.add_sub_cancel, A059581.P8396224700208308462.f1, A059581.P8396224700208308462.a, A059581.P17730618558655217201.a, A002321, A002321.P574617781515155943.f2, A002321.P574617781515155943.f3, A002321.P574617781515155943.f1, A002321.P574617781515155943.a, A007423, A007423.P11782207234129447454.a, A059571, A059571.P5135965479004864575.a, A000196, A000196.P15434771586934192083.a, A080847, A080847.P15039464906544920582.f1, A080847.P15039464906544920582.f2, A080847.P15039464906544920582.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059581

/-! ## A059581.P18413763717764951957

`A059571(n+1)-abs(1-∑[A157658(n+1)])`
-/

namespace A059581.P18413763717764951957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059571 (n + 1) - |1 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A059581.P18413763717764951957

namespace A059581

/-- `A059571(n+1)-abs(1-∑[A157658(n+1)])` -/
def P18413763717764951957.Spec : Prop :=
  ∀ n, P18413763717764951957.a n = A059581 (n + 1)

end A059581

/-! ## A059581.P4240382538704196879

`A059571(n+1)-abs(∑[A080847(n+1)-2])`
-/

namespace A059581.P4240382538704196879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080847 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059571 (n + 1) - |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A059581.P4240382538704196879

namespace A059581

/-- `A059571(n+1)-abs(∑[A080847(n+1)-2])` -/
def P4240382538704196879.Spec : Prop :=
  ∀ n, P4240382538704196879.a n = A059581 (n + 1)

theorem P4240382538704196879.correct : P4240382538704196879.Spec := by
  intro n
  simp only [A059581, Nat.add_sub_cancel, A059581.P4240382538704196879.f1, A059581.P4240382538704196879.a, A059581.P17730618558655217201.a, A002321, A002321.P574617781515155943.f2, A002321.P574617781515155943.f3, A002321.P574617781515155943.f1, A002321.P574617781515155943.a, A059571, A059571.P5135965479004864575.a, A080847, A080847.P15039464906544920582.f1, A080847.P15039464906544920582.f2, A080847.P15039464906544920582.a, A000196, A000196.P15434771586934192083.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059581

/-! ## A059581.P8029182568418199768

`A059571(n+1)-abs(2-∑[A157657(n+1)])`
-/

namespace A059581.P8029182568418199768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059571 (n + 1) - |2 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A059581.P8029182568418199768

namespace A059581

/-- `A059571(n+1)-abs(2-∑[A157657(n+1)])` -/
def P8029182568418199768.Spec : Prop :=
  ∀ n, P8029182568418199768.a n = A059581 (n + 1)

end A059581

/-! ## A059581.P16470426679444108948

`A059571(n+1)-A000194(A002321(n+1)²)`
-/

namespace A059581.P16470426679444108948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059571 (n + 1) - A000194 (A002321 (n + 1) ^ 2).toNat

end

end A059581.P16470426679444108948

namespace A059581

/-- `A059571(n+1)-A000194(A002321(n+1)²)` -/
def P16470426679444108948.Spec : Prop :=
  ∀ n, P16470426679444108948.a n = A059581 (n + 1)

end A059581

/-! ## A059581.P2451931360785099329

`A059571(n+1)-A000196(A002321(n+1)²)`
-/

namespace A059581.P2451931360785099329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059571 (n + 1) - A000196 (A002321 (n + 1) ^ 2).toNat

end

end A059581.P2451931360785099329

namespace A059581

/-- `A059571(n+1)-A000196(A002321(n+1)²)` -/
def P2451931360785099329.Spec : Prop :=
  ∀ n, P2451931360785099329.a n = A059581 (n + 1)

end A059581

/-! ## A059581.P17589056068380761349

`A059571(n+1)+A059571(n+1)-A000196(n+1)`
-/

namespace A059581.P17589056068380761349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059571 (n + 1) + (A059571 (n + 1) - A000196 (n + 1))

end

end A059581.P17589056068380761349

namespace A059581

/-- `A059571(n+1)+A059571(n+1)-A000196(n+1)` -/
def P17589056068380761349.Spec : Prop :=
  ∀ n, P17589056068380761349.a n = A059581 (n + 1)

theorem P17589056068380761349.correct : P17589056068380761349.Spec := by
  intro n
  simp only [A059581, Nat.add_sub_cancel, A059581.P17589056068380761349.a, A059581.P17730618558655217201.a, A000196, A000196.P15434771586934192083.a, A002321, A002321.P574617781515155943.f2, A002321.P574617781515155943.f3, A002321.P574617781515155943.f1, A002321.P574617781515155943.a, A059571, A059571.P5135965479004864575.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059581

/-!
# A059582: First differences give digits of Pi = 3.1415926...

The programs for A059582, there is no canonical definition to state claims against.
-/

/-! ## A059582.P2304497005156071969

`Δ[A227844(n+1)]`
-/

namespace A059582.P2304497005156071969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A059582.P2304497005156071969

/-! ## A059582.P12563405242707792540

`∑[A000796(abs(1-n))]`
-/

namespace A059582.P12563405242707792540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (|1 - (n : ℤ)|.toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059582.P12563405242707792540

/-! ## A059582.P14038562377120009422

`A000796(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A059582.P14038562377120009422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000796 (n - 1 + 1) + a (n - 1)

end

end A059582.P14038562377120009422

/-! ## A059582.P1872066750922020790

`A046974(n)+1-A000796(n)`
-/

namespace A059582.P1872066750922020790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n + (1 - A000796 (n + 1))

end

end A059582.P1872066750922020790

/-! ## A059582.P9631442457192924551

`A046974(n)+2-A123152(n+1)`
-/

namespace A059582.P9631442457192924551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n + (2 - A123152 (n + 1))

end

end A059582.P9631442457192924551

/-! ## A059582.P16370300929243122320

`A227844(n+2)-A227844(n+1)`
-/

namespace A059582.P16370300929243122320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227844 (n + 2) - A227844 (n + 1)

end

end A059582.P16370300929243122320

/-! ## A059582.P3312744945842450964

`A046974(n)+1-A010879(A065253(n+1))`
-/

namespace A059582.P3312744945842450964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n + (1 - A010879 (A065253 (n + 1)).toNat)

end

end A059582.P3312744945842450964

/-! ## A059582.P13968334605391327882

`∑[A095709(∑[n]+2)]`
-/

namespace A059582.P13968334605391327882
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095709 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059582.P13968334605391327882

/-! ## A059582.P13798881194376040486

`∑[A138114(∑[n+3])]`
-/

namespace A059582.P13798881194376040486
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138114 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059582.P13798881194376040486

/-! ## A059582.P5118696436205827372

`A104691(2*n)+a(n-1)` with `a(0)=1`
-/

namespace A059582.P5118696436205827372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A104691 (2 * n) + a (n - 1)

end

end A059582.P5118696436205827372

/-!
# A059585: Number of labeled 3-node T_0-hypergraphs with n hyperedges (empty hyperedges and multiple hyperedges included).

The programs for A059585, the canonical program `A059585.P2036071658982893750` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059585 has offset 0).

The definition of A059585 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059585.P2036071658982893750

`C(n+7, n)-3*C(n+3, n)+2*C(n+1, n)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059585

/-- `C(n+7, n)-3*C(n+3, n)+2*C(n+1, n)` -/
def P2036071658982893750.Spec : Prop :=
  ∀ n, P2036071658982893750.a n = A059585 n

theorem P2036071658982893750.correct : P2036071658982893750.Spec := by
  intro n
  simp only [A059585]

end A059585

/-! ## A059585.P4330096263555221581

`∑[∑[∑[∑[∑[∑[n+1]]]-3]]+2]`
-/

namespace A059585.P4330096263555221581
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059585.P4330096263555221581

namespace A059585

/-- `∑[∑[∑[∑[∑[∑[n+1]]]-3]]+2]` -/
def P4330096263555221581.Spec : Prop :=
  ∀ n, P4330096263555221581.a n = A059585 n

end A059585

/-! ## A059585.P15534167864253923802

`A000580(n+7)+n-A154560(n)`
-/

namespace A059585.P15534167864253923802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) + ((n : ℤ) - A154560 n)

end

end A059585.P15534167864253923802

namespace A059585

/-- `A000580(n+7)+n-A154560(n)` -/
def P15534167864253923802.Spec : Prop :=
  ∀ n, P15534167864253923802.a n = A059585 n

end A059585

/-! ## A059585.P14338865784573340252

`A000580(n+7)-∑[A133694(n+1)]`
-/

namespace A059585.P14338865784573340252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059585.P14338865784573340252

namespace A059585

/-- `A000580(n+7)-∑[A133694(n+1)]` -/
def P14338865784573340252.Spec : Prop :=
  ∀ n, P14338865784573340252.a n = A059585 n

end A059585

/-! ## A059585.P6398855613354199063

`A000580(n+7)-∑[3*A000096(n)+1]`
-/

namespace A059585.P6398855613354199063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000096 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059585.P6398855613354199063

namespace A059585

/-- `A000580(n+7)-∑[3*A000096(n)+1]` -/
def P6398855613354199063.Spec : Prop :=
  ∀ n, P6398855613354199063.a n = A059585 n

end A059585

/-! ## A059585.P1246529704897252957

`A000580(n+7)-(n+1)*A034856(n+1)`
-/

namespace A059585.P1246529704897252957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) - (n + 1 : ℤ) * A034856 (n + 1)

end

end A059585.P1246529704897252957

namespace A059585

/-- `A000580(n+7)-(n+1)*A034856(n+1)` -/
def P1246529704897252957.Spec : Prop :=
  ∀ n, P1246529704897252957.a n = A059585 n

end A059585

/-! ## A059585.P1345140840132724699

`A000580(n+7)-A256857(n+1)`
-/

namespace A059585.P1345140840132724699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) - A256857 (n + 1)

end

end A059585.P1345140840132724699

namespace A059585

/-- `A000580(n+7)-A256857(n+1)` -/
def P1345140840132724699.Spec : Prop :=
  ∀ n, P1345140840132724699.a n = A059585 n

end A059585

/-!
# A059589: Sums of factorials of distinct integers.

The programs for A059589, there is no canonical definition to state claims against.
-/

/-! ## A059589.P9851246427144631577

`∪[A059590(n+1)+1, A059590(n+1)]`
-/

namespace A059589.P9851246427144631577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059589.P9851246427144631577

/-! ## A059589.P14728476653926050385

`record[A059590(A008624(n))+A000035(n)]`
-/

namespace A059589.P14728476653926050385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 (A008624 n).toNat + A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059589.P14728476653926050385

/-! ## A059589.P14652434607145867378

`record[A098725(n)+A059590(A008621(n))]`
-/

namespace A059589.P14652434607145867378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098725 n + A059590 (A008621 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059589.P14652434607145867378

/-! ## A059589.P11908228566651192329

`record[A292077(n+1)+A059590(A008624(n))]`
-/

namespace A059589.P11908228566651192329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292077 (n + 1) + A059590 (A008624 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059589.P11908228566651192329

/-! ## A059589.P9213540044900694904

`record[A059841(n)+A059590(A164089(n+1))]`
-/

namespace A059589.P9213540044900694904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + A059590 (A164089 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059589.P9213540044900694904

/-! ## A059589.P6705213819542520360

`record[A059590(A164089(n+1))+A000035(n+1)]`
-/

namespace A059589.P6705213819542520360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 (A164089 (n + 1)).toNat + A000035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059589.P6705213819542520360

/-! ## A059589.P558539796652773443

`record[A059590(A164089(n+1))+A328843(n)%2]`
-/

namespace A059589.P558539796652773443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 (A164089 (n + 1)).toNat + Int.tmod (A328843 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059589.P558539796652773443

/-! ## A059589.P7985262978148117168

`record[n+1-A276009(n+1)*A276009(n)]`
-/

namespace A059589.P7985262978148117168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A276009 (n + 1) * A276009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059589.P7985262978148117168

/-! ## A059589.P13902083035375118604

`record[n+1-A007623(A257684(n+1))]`
-/

namespace A059589.P13902083035375118604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A007623 (A257684 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059589.P13902083035375118604

/-! ## A059589.P13207737700515909635

`record[1-A091908(A257684(n+1)+1)+n]`
-/

namespace A059589.P13207737700515909635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A091908 (A257684 (n + 1) + 1).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059589.P13207737700515909635

/-! ## A059589.P5774171682409103477

`record[(n+1)*A115944(A115944(n+1)+n)]`
-/

namespace A059589.P5774171682409103477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A115944 (A115944 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059589.P5774171682409103477

/-!
# A059590: Numbers obtained by reinterpreting base-2 representation of n in the factorial base: a(n) = Sum_{k>=0} A030308(n,k)*A000142(k+1).

The programs for A059590, there is no canonical definition to state claims against.
-/

/-! ## A059590.P4298533216809190840

`A225901(A276091(n))`
-/

namespace A059590.P4298533216809190840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225901 (A276091 n).toNat

end

end A059590.P4298533216809190840

/-! ## A059590.P17505567930335732832

`A283984(n)-A283984(floor(n/2))`
-/

namespace A059590.P17505567930335732832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283984 n - A283984 ⌊(n : ℚ) / 2⌋.toNat

end

end A059590.P17505567930335732832

/-! ## A059590.P11405697876836832966

`A276082(n)+A276083(n)-A276091(n)`
-/

namespace A059590.P11405697876836832966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276082 n + (A276083 n - A276091 n)

end

end A059590.P11405697876836832966

/-! ## A059590.P17789411166312112194

`A059589(A047201(n+1))-1`
-/

namespace A059590.P17789411166312112194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059589 (A047201 (n + 1)).toNat - 1

end

end A059590.P17789411166312112194

/-! ## A059590.P10755001266552929367

`A080323(A176905(n+1))+A059589(A047201(n+1))`
-/

namespace A059590.P10755001266552929367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080323 (A176905 (n + 1)).toNat + A059589 (A047201 (n + 1)).toNat

end

end A059590.P10755001266552929367

/-! ## A059590.P15341670246341430903

`A080323(A001132(n+1))+A059589(A047201(n+1))`
-/

namespace A059590.P15341670246341430903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080323 (A001132 (n + 1)).toNat + A059589 (A047201 (n + 1)).toNat

end

end A059590.P15341670246341430903

/-! ## A059590.P1426567422779603482

`A080323(A014752(n+1))+A059589(A047201(n+1))`
-/

namespace A059590.P1426567422779603482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080323 (A014752 (n + 1)).toNat + A059589 (A047201 (n + 1)).toNat

end

end A059590.P1426567422779603482

/-! ## A059590.P12037931382544129522

`∑{p}[A019565(n), A276075(#)]`
-/

namespace A059590.P12037931382544129522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A276075 p

end

end A059590.P12037931382544129522

/-! ## A059590.P12058019564153356494

`∑{p}[A019565(n), A321898(#)]`
-/

namespace A059590.P12058019564153356494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A321898 p

end

end A059590.P12058019564153356494

/-! ## A059590.P12683087957408211387

`∑{p}[A019565(n), A321908(#)]`
-/

namespace A059590.P12683087957408211387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A321908 p

end

end A059590.P12683087957408211387

/-! ## A059590.P16553999734273092141

`∑{p}[A019565(n), A000720(#)!]`
-/

namespace A059590.P16553999734273092141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial (A000720 p).toNat

end

end A059590.P16553999734273092141

/-! ## A059590.P1514036322157344954

`∑{p}[A019565(n), A290103(#)!]`
-/

namespace A059590.P1514036322157344954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial (A290103 p).toNat

end

end A059590.P1514036322157344954

/-! ## A059590.P16205552064544740451

`A277011(A048678(n))`
-/

namespace A059590.P16205552064544740451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277011 (A048678 n).toNat

end

end A059590.P16205552064544740451

/-! ## A059590.P10096830917651819346

`A277011(A124108(n)/2)`
-/

namespace A059590.P10096830917651819346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277011 (SequenceMachineLib.roundAway ((A124108 n : ℚ) / 2)).toNat

end

end A059590.P10096830917651819346

/-! ## A059590.P12145035699597231499

`eq[0, A276009(n)]`
-/

namespace A059590.P12145035699597231499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276009 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059590.P12145035699597231499

/-! ## A059590.P6414688107013358175

`eq[A060130(n), A275729(n)]`
-/

namespace A059590.P6414688107013358175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059590.P6414688107013358175

/-! ## A059590.P175184173719532196

`eq[A060502(n), A275729(n)]`
-/

namespace A059590.P175184173719532196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059590.P175184173719532196

/-! ## A059590.P15628314398474839978

`eq[A275727(n), A275728(n)]`
-/

namespace A059590.P15628314398474839978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275727 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275728 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059590.P15628314398474839978

/-! ## A059590.P9843252611563067787

`eq[A275727(n), A275736(n)]`
-/

namespace A059590.P9843252611563067787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275727 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275736 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059590.P9843252611563067787

/-! ## A059590.P6190084616736461744

`eq[A275728(n), A275736(n)]`
-/

namespace A059590.P6190084616736461744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275728 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275736 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059590.P6190084616736461744

/-!
# A059591: Squarefree part of n^2+1.

The programs for A059591, the canonical program `A059591.P11025850722583355818` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059591 has offset 0).

The definition of A059591 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A059591.P11025850722583355818

`A007913(n²+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A059591

/-- `A007913(n²+1)` -/
def P11025850722583355818.Spec : Prop :=
  ∀ n, P11025850722583355818.a n = A059591 n

theorem P11025850722583355818.correct : P11025850722583355818.Spec := by
  intro n
  simp only [A059591]

end A059591

/-! ## A059591.P9047802909116637065

`A002522(n)/A059592(n)²`
-/

namespace A059591.P9047802909116637065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002522 n : ℚ) / (A059592 n ^ 2 : ℚ)

end

end A059591.P9047802909116637065

namespace A059591

/-- `A002522(n)/A059592(n)²` -/
def P9047802909116637065.Spec : Prop :=
  ∀ n, P9047802909116637065.a n = (A059591 n : ℚ)

end A059591

/-! ## A059591.P5357898972062736110

`(n²+1)/A008833(n²+1)`
-/

namespace A059591.P5357898972062736110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 : ℚ) / (A008833 (n ^ 2 + 1) : ℚ)

end

end A059591.P5357898972062736110

namespace A059591

/-- `(n²+1)/A008833(n²+1)` -/
def P5357898972062736110.Spec : Prop :=
  ∀ n, P5357898972062736110.a n = (A059591 n : ℚ)

end A059591

/-! ## A059591.P14984276021674935305

`∏{p}[A007913(∑[2*n]-n+1), #]`
-/

namespace A059591.P14984276021674935305
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A059591.P14984276021674935305

namespace A059591

/-- `∏{p}[A007913(∑[2*n]-n+1), #]` -/
def P14984276021674935305.Spec : Prop :=
  ∀ n, (P14984276021674935305.a n : ℤ) = A059591 n

end A059591

/-! ## A059591.P6479822925099988398

`A000027(A007913(n*n+1))`
-/

namespace A059591.P6479822925099988398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A007913 (n * n + 1)).toNat

end

end A059591.P6479822925099988398

namespace A059591

/-- `A000027(A007913(n*n+1))` -/
def P6479822925099988398.Spec : Prop :=
  ∀ n, P6479822925099988398.a n = A059591 n

end A059591

/-! ## A059591.P13986559039218759585

`A007913(A000290(n)+1)+C(n, n+1)`
-/

namespace A059591.P13986559039218759585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000290 n + 1).toNat + (Nat.choose n (n + 1) : ℤ)

end

end A059591.P13986559039218759585

namespace A059591

/-- `A007913(A000290(n)+1)+C(n, n+1)` -/
def P13986559039218759585.Spec : Prop :=
  ∀ n, P13986559039218759585.a n = A059591 n

end A059591

/-! ## A059591.P16377412755830281360

`or(A005369(n), A007913(A000290(n)+1))`
-/

namespace A059591.P16377412755830281360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005369 n) (A007913 (A000290 n + 1).toNat)

end

end A059591.P16377412755830281360

namespace A059591

/-- `or(A005369(n), A007913(A000290(n)+1))` -/
def P16377412755830281360.Spec : Prop :=
  ∀ n, P16377412755830281360.a n = A059591 n

end A059591

/-! ## A059591.P530196430979203458

`A288352(A064544(n+1))+A007913(n*n+1)`
-/

namespace A059591.P530196430979203458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288352 (A064544 (n + 1)).toNat + A007913 (n * n + 1)

end

end A059591.P530196430979203458

namespace A059591

/-- `A288352(A064544(n+1))+A007913(n*n+1)` -/
def P530196430979203458.Spec : Prop :=
  ∀ n, P530196430979203458.a n = A059591 n

end A059591

/-! ## A059591.P14556043917904225766

`A285031(A285032(n+1))+A007913(A000290(n)+1)`
-/

namespace A059591.P14556043917904225766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285031 (A285032 (n + 1)).toNat + A007913 (A000290 n + 1).toNat

end

end A059591.P14556043917904225766

namespace A059591

/-- `A285031(A285032(n+1))+A007913(A000290(n)+1)` -/
def P14556043917904225766.Spec : Prop :=
  ∀ n, P14556043917904225766.a n = A059591 n

end A059591

/-! ## A059591.P8202867826055218724

`A285034(A285035(n+1))+A007913(A000290(n)+1)`
-/

namespace A059591.P8202867826055218724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285034 (A285035 (n + 1)).toNat + A007913 (A000290 n + 1).toNat

end

end A059591.P8202867826055218724

namespace A059591

/-- `A285034(A285035(n+1))+A007913(A000290(n)+1)` -/
def P8202867826055218724.Spec : Prop :=
  ∀ n, P8202867826055218724.a n = A059591 n

end A059591

/-! ## A059591.P6883431925325937471

`A007913(A000290(n)+1)*A285031(A285033(n+1))`
-/

namespace A059591.P6883431925325937471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000290 n + 1).toNat * A285031 (A285033 (n + 1)).toNat

end

end A059591.P6883431925325937471

namespace A059591

/-- `A007913(A000290(n)+1)*A285031(A285033(n+1))` -/
def P6883431925325937471.Spec : Prop :=
  ∀ n, P6883431925325937471.a n = A059591 n

end A059591

/-! ## A059591.P7789156001031216824

`A007913(A000290(n)+1)*A285034(A285036(n+1))`
-/

namespace A059591.P7789156001031216824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000290 n + 1).toNat * A285034 (A285036 (n + 1)).toNat

end

end A059591.P7789156001031216824

namespace A059591

/-- `A007913(A000290(n)+1)*A285034(A285036(n+1))` -/
def P7789156001031216824.Spec : Prop :=
  ∀ n, P7789156001031216824.a n = A059591 n

end A059591

/-! ## A059591.P12113391054237824015

`A007913(A000290(n)+1)*A287263(A287265(n+1))`
-/

namespace A059591.P12113391054237824015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000290 n + 1).toNat * A287263 (A287265 (n + 1)).toNat

end

end A059591.P12113391054237824015

namespace A059591

/-- `A007913(A000290(n)+1)*A287263(A287265(n+1))` -/
def P12113391054237824015.Spec : Prop :=
  ∀ n, P12113391054237824015.a n = A059591 n

end A059591

/-! ## A059591.P17542091616574441888

`n²-A326128(n²+1)+1`
-/

namespace A059591.P17542091616574441888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A326128 (n ^ 2 + 1) + 1

end

end A059591.P17542091616574441888

namespace A059591

/-- `n²-A326128(n²+1)+1` -/
def P17542091616574441888.Spec : Prop :=
  ∀ n, P17542091616574441888.a n = A059591 n

theorem P17542091616574441888.correct : P17542091616574441888.Spec := by
  intro n
  simp only [A059591, Nat.add_sub_cancel, A059591.P17542091616574441888.a, A059591.P11025850722583355818.a, A007913, A007913.P11359412940648999332.a, A326128, A326128.P4962900157914824511.a, A059479, A059479.P17464652159649958448.a, A355264, A355264.P1842573885147649764.f1, A355264.P1842573885147649764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059591

/-! ## A059591.P16644001681359907854

`A332462(A335423(n²+1))`
-/

namespace A059591.P16644001681359907854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332462 (A335423 (n ^ 2 + 1)).toNat

end

end A059591.P16644001681359907854

namespace A059591

/-- `A332462(A335423(n²+1))` -/
def P16644001681359907854.Spec : Prop :=
  ∀ n, P16644001681359907854.a n = A059591 n

end A059591

/-! ## A059591.P4489206283232516202

`A000034(n)*A364900(n²)`
-/

namespace A059591.P4489206283232516202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A364900 (n ^ 2)

end

end A059591.P4489206283232516202

namespace A059591

/-- `A000034(n)*A364900(n²)` -/
def P4489206283232516202.Spec : Prop :=
  ∀ n, P4489206283232516202.a n = A059591 n

end A059591

/-! ## A059591.P15160886022607092049

`A038387(n²+1)`
-/

namespace A059591.P15160886022607092049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038387 (n ^ 2 + 1)

end

end A059591.P15160886022607092049

namespace A059591

/-- `A038387(n²+1)` -/
def P15160886022607092049.Spec : Prop :=
  ∀ n, P15160886022607092049.a n = A059591 n

end A059591

/-! ## A059591.P14866830629969573479

`A160400(n²+1)`
-/

namespace A059591.P14866830629969573479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160400 (n ^ 2 + 1)

end

end A059591.P14866830629969573479

namespace A059591

/-- `A160400(n²+1)` -/
def P14866830629969573479.Spec : Prop :=
  ∀ n, P14866830629969573479.a n = A059591 n

end A059591

/-! ## A059591.P16835955477944196679

`A366244(n²+1)`
-/

namespace A059591.P16835955477944196679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366244 (n ^ 2 + 1)

end

end A059591.P16835955477944196679

namespace A059591

/-- `A366244(n²+1)` -/
def P16835955477944196679.Spec : Prop :=
  ∀ n, P16835955477944196679.a n = A059591 n

end A059591

/-! ## A059591.P3593203562618937198

`sqrt(A055491(n²+1))`
-/

namespace A059591.P3593203562618937198
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055491 (n ^ 2 + 1) : ℝ)

end

end A059591.P3593203562618937198

namespace A059591

/-- `sqrt(A055491(n²+1))` -/
def P3593203562618937198.Spec : Prop :=
  ∀ n, P3593203562618937198.a n = (A059591 n : ℝ)

end A059591

/-!
# A059592: Square-full part of n^2 + 1.

The programs for A059592, the canonical program `A059592.P18336560042415151975` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059592 has offset 0).

The definition of A059592 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A059592.P18336560042415151975

`A000188(A002522(n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A059592

/-- `A000188(A002522(n))` -/
def P18336560042415151975.Spec : Prop :=
  ∀ n, P18336560042415151975.a n = A059592 n

theorem P18336560042415151975.correct : P18336560042415151975.Spec := by
  intro n
  simp only [A059592]

end A059592

/-! ## A059592.P5978104705114887414

`sqrt(A008833(n²+1))`
-/

namespace A059592.P5978104705114887414
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008833 (n ^ 2 + 1) : ℝ)

end

end A059592.P5978104705114887414

namespace A059592

/-- `sqrt(A008833(n²+1))` -/
def P5978104705114887414.Spec : Prop :=
  ∀ n, P5978104705114887414.a n = (A059592 n : ℝ)

end A059592

/-! ## A059592.P16532776629827365196

`root(A008833((abs(1-n)+1)²+1), 2)`
-/

namespace A059592.P16532776629827365196
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A008833 ((|1 - (n : ℤ)| + 1) ^ 2 + 1).toNat : ℝ) ^ (1 / (2 : ℝ))

end

end A059592.P16532776629827365196

namespace A059592

/-- `root(A008833((abs(1-n)+1)²+1), 2)` -/
def P16532776629827365196.Spec : Prop :=
  ∀ n, P16532776629827365196.a n = (A059592 n : ℝ)

end A059592

/-! ## A059592.P9932168000055409869

`A000188(A008833(n*n+1))`
-/

namespace A059592.P9932168000055409869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A008833 (n * n + 1)).toNat

end

end A059592.P9932168000055409869

namespace A059592

/-- `A000188(A008833(n*n+1))` -/
def P9932168000055409869.Spec : Prop :=
  ∀ n, P9932168000055409869.a n = A059592 n

end A059592

/-! ## A059592.P12007995769479568171

`A094685(A008833(n²+1)+1)`
-/

namespace A059592.P12007995769479568171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094685 (A008833 (n ^ 2 + 1) + 1).toNat

end

end A059592.P12007995769479568171

namespace A059592

/-- `A094685(A008833(n²+1)+1)` -/
def P12007995769479568171.Spec : Prop :=
  ∀ n, P12007995769479568171.a n = A059592 n

end A059592

/-! ## A059592.P15935455622409629641

`A000196(ceil(n²/A059591(n))+1)`
-/

namespace A059592.P15935455622409629641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (⌈(n ^ 2 : ℚ) / (A059591 n : ℚ)⌉ + 1).toNat

end

end A059592.P15935455622409629641

namespace A059592

/-- `A000196(ceil(n²/A059591(n))+1)` -/
def P15935455622409629641.Spec : Prop :=
  ∀ n, P15935455622409629641.a n = A059592 n

end A059592

/-! ## A059592.P12196155325585836981

`∏{p}[A348037(n²+1), #]`
-/

namespace A059592.P12196155325585836981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348037 (n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A059592.P12196155325585836981

namespace A059592

/-- `∏{p}[A348037(n²+1), #]` -/
def P12196155325585836981.Spec : Prop :=
  ∀ n, (P12196155325585836981.a n : ℤ) = A059592 n

end A059592

/-! ## A059592.P8225706208532162628

`A006530(A348037(n²+1))`
-/

namespace A059592.P8225706208532162628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A348037 (n ^ 2 + 1)).toNat

end

end A059592.P8225706208532162628

namespace A059592

/-- `A006530(A348037(n²+1))` -/
def P8225706208532162628.Spec : Prop :=
  ∀ n, P8225706208532162628.a n = A059592 n

end A059592

/-! ## A059592.P15812181051016681249

`A006530(A183102(n²+1))`
-/

namespace A059592.P15812181051016681249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A183102 (n ^ 2 + 1)).toNat

end

end A059592.P15812181051016681249

namespace A059592

/-- `A006530(A183102(n²+1))` -/
def P15812181051016681249.Spec : Prop :=
  ∀ n, P15812181051016681249.a n = A059592 n

end A059592

/-! ## A059592.P9929375244120762541

`A006530(A183104(n²+1))`
-/

namespace A059592.P9929375244120762541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A183104 (n ^ 2 + 1)).toNat

end

end A059592.P9929375244120762541

namespace A059592

/-- `A006530(A183104(n²+1))` -/
def P9929375244120762541.Spec : Prop :=
  ∀ n, P9929375244120762541.a n = A059592 n

end A059592

/-! ## A059592.P9901675154387955128

`A006530(A057521(n²+1))`
-/

namespace A059592.P9901675154387955128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A057521 (n ^ 2 + 1)).toNat

end

end A059592.P9901675154387955128

namespace A059592

/-- `A006530(A057521(n²+1))` -/
def P9901675154387955128.Spec : Prop :=
  ∀ n, P9901675154387955128.a n = A059592 n

end A059592

/-! ## A059592.P3374559549095327177

`A007947(A057521(∑[2*n]-(n-1)))`
-/

namespace A059592.P3374559549095327177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A057521 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - 1)).toNat).toNat

end

end A059592.P3374559549095327177

namespace A059592

/-- `A007947(A057521(∑[2*n]-(n-1)))` -/
def P3374559549095327177.Spec : Prop :=
  ∀ n, P3374559549095327177.a n = A059592 n

end A059592

/-! ## A059592.P12767903256334069776

`A000188(floor(n^(3-a(n-1)))+1)` with `a(0)=1`
-/

namespace A059592.P12767903256334069776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000188 (⌊(n : ℚ) ^ (3 - a (n - 1) : ℤ)⌋ + 1).toNat

end

end A059592.P12767903256334069776

namespace A059592

/-- `A000188(floor(n^(3-a(n-1)))+1)` -/
def P12767903256334069776.Spec : Prop :=
  ∀ n, P12767903256334069776.a n = A059592 n

end A059592

/-! ## A059592.P9049603327547372850

`A260443(A334109(n²+1))`
-/

namespace A059592.P9049603327547372850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 (A334109 (n ^ 2 + 1)).toNat

end

end A059592.P9049603327547372850

namespace A059592

/-- `A260443(A334109(n²+1))` -/
def P9049603327547372850.Spec : Prop :=
  ∀ n, P9049603327547372850.a n = A059592 n

end A059592

/-! ## A059592.P6365223458056133680

`A000188(n²+1)`
-/

namespace A059592.P6365223458056133680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n ^ 2 + 1)

end

end A059592.P6365223458056133680

namespace A059592

/-- `A000188(n²+1)` -/
def P6365223458056133680.Spec : Prop :=
  ∀ n, P6365223458056133680.a n = A059592 n

end A059592

/-! ## A059592.P5561507086315535896

`A071773(n²+1)`
-/

namespace A059592.P5561507086315535896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071773 (n ^ 2 + 1)

end

end A059592.P5561507086315535896

namespace A059592

/-- `A071773(n²+1)` -/
def P5561507086315535896.Spec : Prop :=
  ∀ n, P5561507086315535896.a n = A059592 n

end A059592

/-! ## A059592.P17144908219093246329

`A249739(n²+1)`
-/

namespace A059592.P17144908219093246329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249739 (n ^ 2 + 1)

end

end A059592.P17144908219093246329

namespace A059592

/-- `A249739(n²+1)` -/
def P17144908219093246329.Spec : Prop :=
  ∀ n, P17144908219093246329.a n = A059592 n

end A059592

/-! ## A059592.P6693243446694456576

`A249740(n²+1)`
-/

namespace A059592.P6693243446694456576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249740 (n ^ 2 + 1)

end

end A059592.P6693243446694456576

namespace A059592

/-- `A249740(n²+1)` -/
def P6693243446694456576.Spec : Prop :=
  ∀ n, P6693243446694456576.a n = A059592 n

end A059592

/-! ## A059592.P17383659657291053045

`A308993(n²+1)`
-/

namespace A059592.P17383659657291053045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308993 (n ^ 2 + 1)

end

end A059592.P17383659657291053045

namespace A059592

/-- `A308993(n²+1)` -/
def P17383659657291053045.Spec : Prop :=
  ∀ n, P17383659657291053045.a n = A059592 n

end A059592

/-! ## A059592.P5913892452953563748

`A370784(n²+1)`
-/

namespace A059592.P5913892452953563748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370784 (n ^ 2 + 1)

end

end A059592.P5913892452953563748

namespace A059592

/-- `A370784(n²+1)` -/
def P5913892452953563748.Spec : Prop :=
  ∀ n, P5913892452953563748.a n = A059592 n

end A059592

/-!
# A059593: Number of degree-n permutations of order exactly 5.

The programs for A059593, the canonical program `A059593.P6124274366967896719` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059593 has offset 0).

The definition of A059593 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059593.P6124274366967896719

`a(n-1)+(1+a(n-5))*(n-1)*(n-2)*(n-3)*(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059593

/-- `a(n-1)+(1+a(n-5))*(n-1)*(n-2)*(n-3)*(n-4)` -/
def P6124274366967896719.Spec : Prop :=
  ∀ n, P6124274366967896719.a n = A059593 n

theorem P6124274366967896719.correct : P6124274366967896719.Spec := by
  intro n
  simp only [A059593]

end A059593

/-! ## A059593.P9752816828532861901

`A052501(n)-1`
-/

namespace A059593.P9752816828532861901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052501 n - 1

end

end A059593.P9752816828532861901

namespace A059593

/-- `A052501(n)-1` -/
def P9752816828532861901.Spec : Prop :=
  ∀ n, P9752816828532861901.a n = A059593 n

theorem P9752816828532861901.correct : P9752816828532861901.Spec := by
  intro n
  simp only [A059593, Nat.add_sub_cancel, A059593.P9752816828532861901.a, A059593.P6124274366967896719.a, A052501, A052501.P8235743457399303753.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059593

/-! ## A059593.P5223088908939619893

`a(n-1)+(1+a(n-5))*(n-1)!/(n-5)!` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0`
-/

namespace A059593.P5223088908939619893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 0, 0, 0] fun n a =>
  a (n - 1) + (1 + a (n - 5)) * (Nat.factorial ((n : ℤ) - 1).toNat : ℚ) / (Nat.factorial ((n : ℤ) - 5).toNat : ℚ)

end

end A059593.P5223088908939619893

namespace A059593

/-- `a(n-1)+(1+a(n-5))*(n-1)!/(n-5)!` -/
def P5223088908939619893.Spec : Prop :=
  ∀ n, P5223088908939619893.a n = (A059593 n : ℚ)

end A059593

/-! ## A059593.P13181273257758669824

`xor(1, A052501(A028310(n)))`
-/

namespace A059593.P13181273257758669824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A052501 (A028310 n).toNat)

end

end A059593.P13181273257758669824

namespace A059593

/-- `xor(1, A052501(A028310(n)))` -/
def P13181273257758669824.Spec : Prop :=
  ∀ n, P13181273257758669824.a n = A059593 n

end A059593

/-! ## A059593.P14802259338855887569

`and(-A255336(n), A052501(n))`
-/

namespace A059593.P14802259338855887569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A255336 n) (A052501 n)

end

end A059593.P14802259338855887569

namespace A059593

/-- `and(-A255336(n), A052501(n))` -/
def P14802259338855887569.Spec : Prop :=
  ∀ n, P14802259338855887569.a n = A059593 n

end A059593

/-! ## A059593.P15897120924715180665

`xor(char[A026730(n)], A052501(n))`
-/

namespace A059593.P15897120924715180665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026730 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A052501 n)

end

end A059593.P15897120924715180665

namespace A059593

/-- `xor(char[A026730(n)], A052501(n))` -/
def P15897120924715180665.Spec : Prop :=
  ∀ n, P15897120924715180665.a n = A059593 n

end A059593

/-! ## A059593.P10388953835823111908

`xor(char[A028242(n)], A052501(n))`
-/

namespace A059593.P10388953835823111908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A052501 n)

end

end A059593.P10388953835823111908

namespace A059593

/-- `xor(char[A028242(n)], A052501(n))` -/
def P10388953835823111908.Spec : Prop :=
  ∀ n, P10388953835823111908.a n = A059593 n

end A059593

/-! ## A059593.P9565629224610348589

`xor(1, A052501(A233583(n+1)))`
-/

namespace A059593.P9565629224610348589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A052501 (A233583 (n + 1)).toNat)

end

end A059593.P9565629224610348589

namespace A059593

/-- `xor(1, A052501(A233583(n+1)))` -/
def P9565629224610348589.Spec : Prop :=
  ∀ n, P9565629224610348589.a n = A059593 n

end A059593

/-! ## A059593.P15215799167295941543

`xor(A007318(A000096(n)), A052501(n))`
-/

namespace A059593.P15215799167295941543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007318 (A000096 n).toNat) (A052501 n)

end

end A059593.P15215799167295941543

namespace A059593

/-- `xor(A007318(A000096(n)), A052501(n))` -/
def P15215799167295941543.Spec : Prop :=
  ∀ n, P15215799167295941543.a n = A059593 n

end A059593

/-! ## A059593.P4297581854679407677

`xor(A007318(A000217(n)), A052501(n))`
-/

namespace A059593.P4297581854679407677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007318 (A000217 n).toNat) (A052501 n)

end

end A059593.P4297581854679407677

namespace A059593

/-- `xor(A007318(A000217(n)), A052501(n))` -/
def P4297581854679407677.Spec : Prop :=
  ∀ n, P4297581854679407677.a n = A059593 n

end A059593

/-!
# A059594: Convolution triangle based on A008619 (positive integers repeated).

The programs for A059594, there is no canonical definition to state claims against.
-/

/-! ## A059594.P18356314120966978329

`A188316(n)+A060086(n+1)`
-/

namespace A059594.P18356314120966978329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188316 n + A060086 (n + 1)

end

end A059594.P18356314120966978329

/-! ## A059594.P5859964563310629492

`A060086(comp[∑[n]])`
-/

namespace A059594.P5859964563310629492
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060086 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A059594.P5859964563310629492

/-! ## A059594.P365905750596348427

`abs(1-A060086(comp[C(n, 2)]))+1`
-/

namespace A059594.P365905750596348427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A060086 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)| + 1

end

end A059594.P365905750596348427

/-! ## A059594.P8320337140124637350

`and(1-4/2, A060086(comp[C(n+1, 2)]))`
-/

namespace A059594.P8320337140124637350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (1 - (4 : ℚ) / 2)) (A060086 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A059594.P8320337140124637350

/-! ## A059594.P11805964705388312550

`or(char[1], A060086(A014132(n+1)))`
-/

namespace A059594.P11805964705388312550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A060086 (A014132 (n + 1)).toNat)

end

end A059594.P11805964705388312550

/-! ## A059594.P15760976724466027029

`A060086(A014132(n+1))%∑[A000032(n)]`
-/

namespace A059594.P15760976724466027029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060086 (A014132 (n + 1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059594.P15760976724466027029

/-! ## A059594.P16493964567260921381

`∑{d}[A060086(A014132(n+1)), A000010(#)]`
-/

namespace A059594.P16493964567260921381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060086 (A014132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A059594.P16493964567260921381

/-! ## A059594.P17865622216314338644

`A028310(A060086(comp[C(n, 2)]))`
-/

namespace A059594.P17865622216314338644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A060086 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A059594.P17865622216314338644

/-!
# A059595: Seventh column (m=6) of convolution triangle A059594(n,m).

The programs for A059595, the canonical program `A059595.P15272793515478132709` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059595 has offset 0).

The definition of A059595 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059595.P15272793515478132709

`∑[A038166(n)]+a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A059595

/-- `∑[A038166(n)]+a(n-2)` -/
def P15272793515478132709.Spec : Prop :=
  ∀ n, P15272793515478132709.a n = A059595 n

theorem P15272793515478132709.correct : P15272793515478132709.Spec := by
  intro n
  simp only [A059595]

end A059595

/-! ## A059595.P8690403464323141705

`∑[A188316(A166136(n+5))]`
-/

namespace A059595.P8690403464323141705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188316 (A166136 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059595.P8690403464323141705

namespace A059595

/-- `∑[A188316(A166136(n+5))]` -/
def P8690403464323141705.Spec : Prop :=
  ∀ n, P8690403464323141705.a n = A059595 n

end A059595

/-! ## A059595.P12403086128602068958

`A060086(A167487(n+6))`
-/

namespace A059595.P12403086128602068958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060086 (A167487 (n + 6)).toNat

end

end A059595.P12403086128602068958

namespace A059595

/-- `A060086(A167487(n+6))` -/
def P12403086128602068958.Spec : Prop :=
  ∀ n, P12403086128602068958.a n = A059595 n

end A059595

/-! ## A059595.P7027578820894123450

`A060086(eq[7, A002262(n)])`
-/

namespace A059595.P7027578820894123450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060086 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059595.P7027578820894123450

namespace A059595

/-- `A060086(eq[7, A002262(n)])` -/
def P7027578820894123450.Spec : Prop :=
  ∀ n, P7027578820894123450.a n = A059595 n

end A059595

/-! ## A059595.P3421846529180438034

`A060086(A167499(n+6)+2)`
-/

namespace A059595.P3421846529180438034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060086 (A167499 (n + 6) + 2).toNat

end

end A059595.P3421846529180438034

namespace A059595

/-- `A060086(A167499(n+6)+2)` -/
def P3421846529180438034.Spec : Prop :=
  ∀ n, P3421846529180438034.a n = A059595 n

end A059595

/-! ## A059595.P4467454617437563947

`A060086(eq[8, A002260(n+1)])`
-/

namespace A059595.P4467454617437563947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060086 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059595.P4467454617437563947

namespace A059595

/-- `A060086(eq[8, A002260(n+1)])` -/
def P4467454617437563947.Spec : Prop :=
  ∀ n, P4467454617437563947.a n = A059595 n

end A059595

/-! ## A059595.P7694040719351846723

`A060086(eq[8, sqrt(A133819(n+1))])`
-/

namespace A059595.P7694040719351846723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133819 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060086 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A059595.P7694040719351846723

namespace A059595

/-- `A060086(eq[8, sqrt(A133819(n+1))])` -/
def P7694040719351846723.Spec : Prop :=
  ∀ n, P7694040719351846723.a n = A059595 n

end A059595

/-!
# A059596: Eighth column (m=7) of convolution triangle A059594(n,m).

The programs for A059596, the canonical program `A059596.P11268705004907283405` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059596 has offset 0).

The definition of A059596 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059596.P11268705004907283405

`∑[∑[A059595(n)-a(n-1)]]` with `a(0)=1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A059596

/-- `∑[∑[A059595(n)-a(n-1)]]` -/
def P11268705004907283405.Spec : Prop :=
  ∀ n, P11268705004907283405.a n = A059596 n

theorem P11268705004907283405.correct : P11268705004907283405.Spec := by
  intro n
  simp only [A059596]

end A059596

/-! ## A059596.P17950874167885980388

`∑[A188316(eq[7, A002262(n)])]`
-/

namespace A059596.P17950874167885980388
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188316 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059596.P17950874167885980388

namespace A059596

/-- `∑[A188316(eq[7, A002262(n)])]` -/
def P17950874167885980388.Spec : Prop :=
  ∀ n, P17950874167885980388.a n = A059596 n

end A059596

/-! ## A059596.P5374232535177228432

`A059594(A161680(n+8)+7)`
-/

namespace A059596.P5374232535177228432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059594 (A161680 (n + 8) + 7).toNat

end

end A059596.P5374232535177228432

namespace A059596

/-- `A059594(A161680(n+8)+7)` -/
def P5374232535177228432.Spec : Prop :=
  ∀ n, P5374232535177228432.a n = A059596 n

end A059596

/-! ## A059596.P4706018854778408264

`∑[A188316(A000096(n+6)+8)]`
-/

namespace A059596.P4706018854778408264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188316 (A000096 (n + 6) + 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059596.P4706018854778408264

namespace A059596

/-- `∑[A188316(A000096(n+6)+8)]` -/
def P4706018854778408264.Spec : Prop :=
  ∀ n, P4706018854778408264.a n = A059596 n

end A059596

/-! ## A059596.P16605362390308773787

`A060086(eq[8, A002262(n)])`
-/

namespace A059596.P16605362390308773787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060086 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059596.P16605362390308773787

namespace A059596

/-- `A060086(eq[8, A002262(n)])` -/
def P16605362390308773787.Spec : Prop :=
  ∀ n, P16605362390308773787.a n = A059596 n

end A059596

/-! ## A059596.P3664199821146784106

`A060086(A000096(n+7)+9)`
-/

namespace A059596.P3664199821146784106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060086 (A000096 (n + 7) + 9).toNat

end

end A059596.P3664199821146784106

namespace A059596

/-- `A060086(A000096(n+7)+9)` -/
def P3664199821146784106.Spec : Prop :=
  ∀ n, P3664199821146784106.a n = A059596 n

end A059596

/-! ## A059596.P1001358850413014032

`A060086(eq[9, A002260(n+1)])`
-/

namespace A059596.P1001358850413014032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060086 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059596.P1001358850413014032

namespace A059596

/-- `A060086(eq[9, A002260(n+1)])` -/
def P1001358850413014032.Spec : Prop :=
  ∀ n, P1001358850413014032.a n = A059596 n

end A059596

/-!
# A059597: Ninth column (m=8) of convolution triangle A059594(n,m).

The programs for A059597, there is no canonical definition to state claims against.
-/

/-! ## A059597.P17052891201702211108

`A060086(eq[9, A002262(n)])`
-/

namespace A059597.P17052891201702211108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060086 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059597.P17052891201702211108

/-! ## A059597.P11102738431099505691

`A060086(A000096(n+8)+10)`
-/

namespace A059597.P11102738431099505691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060086 (A000096 (n + 8) + 10).toNat

end

end A059597.P11102738431099505691

/-! ## A059597.P10517257800013183455

`A060086(A046691(n+7)+13)`
-/

namespace A059597.P10517257800013183455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060086 (A046691 (n + 7) + 13).toNat

end

end A059597.P10517257800013183455

/-! ## A059597.P1065272955639425070

`A060086(eq[9, A144328(n+1)])`
-/

namespace A059597.P1065272955639425070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060086 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059597.P1065272955639425070

/-! ## A059597.P12126984381461420445

`A060086(eq[10, A002260(n+1)])`
-/

namespace A059597.P12126984381461420445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060086 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059597.P12126984381461420445

/-! ## A059597.P6641701212218535052

`A060086(eq[10, A134868(n+1)])`
-/

namespace A059597.P6641701212218535052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060086 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059597.P6641701212218535052

/-!
# A059598: Tenth column (m=9) of convolution triangle A059594(n,m).

The programs for A059598, there is no canonical definition to state claims against.
-/

/-! ## A059598.P7347611303588622430

`A060086(eq[10, A002262(n)])`
-/

namespace A059598.P7347611303588622430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060086 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059598.P7347611303588622430

/-! ## A059598.P8865273967164820003

`A060086(eq[10, A144328(n+1)])`
-/

namespace A059598.P8865273967164820003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060086 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059598.P8865273967164820003

/-! ## A059598.P4614014447295570370

`A060086(eq[11, A002260(n+1)])`
-/

namespace A059598.P4614014447295570370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060086 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059598.P4614014447295570370

/-! ## A059598.P14640648672241713384

`A060086(eq[11, A134868(n+1)])`
-/

namespace A059598.P14640648672241713384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060086 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059598.P14640648672241713384

/-! ## A059598.P11077018294466805811

`A060086(eq[31, A037126(n+1)])`
-/

namespace A059598.P11077018294466805811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060086 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059598.P11077018294466805811

/-!
# A059599: Expansion of (3+x)/(1-x)^6.

The programs for A059599, the canonical program `A059599.P10772236887406018189` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059599 has offset 0).

The definition of A059599 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((3+x)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` (program `A059599.P10772236887406018189`, by `A059599.P10772236887406018189.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A059599.P10772236887406018189

`ogf((3+x)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059599

/-- `ogf((3+x)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P10772236887406018189.Spec : Prop :=
  ∀ n, P10772236887406018189.a n = A059599 n

theorem P10772236887406018189.correct : P10772236887406018189.Spec := by
  intro n
  simp only [A059599]

end A059599

/-! ## A059599.P4913348555321711280

`C(n+4, 4)*(15+4*n)/5`
-/

namespace A059599.P4913348555321711280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 4 * (15 + 4 * n) : ℚ) / 5

end

end A059599.P4913348555321711280

namespace A059599

/-- `C(n+4, 4)*(15+4*n)/5` -/
def P4913348555321711280.Spec : Prop :=
  ∀ n, P4913348555321711280.a n = (A059599 n : ℚ)

end A059599

/-! ## A059599.P13649760381768539671

`∑[∑[∑[∑[record[xor(3, n)]]]]]`
-/

namespace A059599.P13649760381768539671
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f5 (SequenceMachineLib.nth (fun j => ∀ l < j, f5 l < f5 j) n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059599.P13649760381768539671

namespace A059599

/-- `∑[∑[∑[∑[record[xor(3, n)]]]]]` -/
def P13649760381768539671.Spec : Prop :=
  ∀ n, (P13649760381768539671.a n : ℤ) = A059599 n

end A059599

/-! ## A059599.P1034196519565260951

`∑[∑[∑[∑[4*n+3]]]]`
-/

namespace A059599.P1034196519565260951
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059599.P1034196519565260951

namespace A059599

/-- `∑[∑[∑[∑[4*n+3]]]]` -/
def P1034196519565260951.Spec : Prop :=
  ∀ n, (P1034196519565260951.a n : ℤ) = A059599 n

end A059599

/-! ## A059599.P17246873895090477828

`floor(∑[∑[∑[∑[a(n-1)+4]]]])` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A059599.P17246873895090477828
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f4 =>
  f4 (n - 1) + 4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059599.P17246873895090477828

namespace A059599

/-- `floor(∑[∑[∑[∑[a(n-1)+4]]]])` -/
def P17246873895090477828.Spec : Prop :=
  ∀ n, (P17246873895090477828.a n : ℤ) = A059599 n

end A059599

/-! ## A059599.P10530687651675105206

`a(n-1)+(n+3)*C(n+3, 3)` with `a(0)=3`
-/

namespace A059599.P10530687651675105206
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (n + 3) * Nat.choose (n + 3) 3

end

end A059599.P10530687651675105206

namespace A059599

/-- `a(n-1)+(n+3)*C(n+3, 3)` -/
def P10530687651675105206.Spec : Prop :=
  ∀ n, (P10530687651675105206.a n : ℤ) = A059599 n

end A059599

/-! ## A059599.P7426960046228131436

`∑[∑[∑[a(n-1)+4]]]+a(n-1)` with `a(0)=3`
-/

namespace A059599.P7426960046228131436
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f3 =>
  f3 (n - 1) + 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A059599.P7426960046228131436

namespace A059599

/-- `∑[∑[∑[a(n-1)+4]]]+a(n-1)` -/
def P7426960046228131436.Spec : Prop :=
  ∀ n, (P7426960046228131436.a n : ℤ) = A059599 n

end A059599

/-! ## A059599.P6735275294584921929

`A095669(n)-A257200(n+1)`
-/

namespace A059599.P6735275294584921929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095669 n - A257200 (n + 1)

end

end A059599.P6735275294584921929

namespace A059599

/-- `A095669(n)-A257200(n+1)` -/
def P6735275294584921929.Spec : Prop :=
  ∀ n, P6735275294584921929.a n = A059599 n

end A059599

/-! ## A059599.P5761133254594161427

`A004320(n+1)+∑[A004320(n)]`
-/

namespace A059599.P5761133254594161427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004320 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004320 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059599.P5761133254594161427

namespace A059599

/-- `A004320(n+1)+∑[A004320(n)]` -/
def P5761133254594161427.Spec : Prop :=
  ∀ n, P5761133254594161427.a n = A059599 n

end A059599

/-! ## A059599.P10348774120019721540

`A006411(n+1)-A277935(n+1)/2`
-/

namespace A059599.P10348774120019721540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006411 (n + 1) : ℚ) - (A277935 (n + 1) : ℚ) / 2

end

end A059599.P10348774120019721540

namespace A059599

/-- `A006411(n+1)-A277935(n+1)/2` -/
def P10348774120019721540.Spec : Prop :=
  ∀ n, P10348774120019721540.a n = (A059599 n : ℚ)

end A059599

/-! ## A059599.P4518252197151835117

`A005585(n+1)+A051880(n+1)-A051878(n+1)`
-/

namespace A059599.P4518252197151835117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005585 (n + 1) + (A051880 (n + 1) - A051878 (n + 1))

end

end A059599.P4518252197151835117

namespace A059599

/-- `A005585(n+1)+A051880(n+1)-A051878(n+1)` -/
def P4518252197151835117.Spec : Prop :=
  ∀ n, P4518252197151835117.a n = A059599 n

end A059599

/-! ## A059599.P6376694133737654616

`A005585(n+1)+A271567(n+1)-A051880(n+1)`
-/

namespace A059599.P6376694133737654616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005585 (n + 1) + (A271567 (n + 1) - A051880 (n + 1))

end

end A059599.P6376694133737654616

namespace A059599

/-- `A005585(n+1)+A271567(n+1)-A051880(n+1)` -/
def P6376694133737654616.Spec : Prop :=
  ∀ n, P6376694133737654616.a n = A059599 n

end A059599

/-! ## A059599.P5691708447220662117

`A277935(n+2)+A005585(n+1)`
-/

namespace A059599.P5691708447220662117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277935 (n + 2) + A005585 (n + 1)

end

end A059599.P5691708447220662117

namespace A059599

/-- `A277935(n+2)+A005585(n+1)` -/
def P5691708447220662117.Spec : Prop :=
  ∀ n, P5691708447220662117.a n = A059599 n

end A059599

/-! ## A059599.P14331433901323052833

`A005585(n+1)+A034263(n+1)-A005585(n+2)`
-/

namespace A059599.P14331433901323052833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005585 (n + 1) + (A034263 (n + 1) - A005585 (n + 2))

end

end A059599.P14331433901323052833

namespace A059599

/-- `A005585(n+1)+A034263(n+1)-A005585(n+2)` -/
def P14331433901323052833.Spec : Prop :=
  ∀ n, P14331433901323052833.a n = A059599 n

end A059599

/-! ## A059599.P6660142122502004950

`A101094(n+2)-(A101094(n+1)+A005585(n+2))`
-/

namespace A059599.P6660142122502004950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101094 (n + 2) - (A101094 (n + 1) + A005585 (n + 2))

end

end A059599.P6660142122502004950

namespace A059599

/-- `A101094(n+2)-(A101094(n+1)+A005585(n+2))` -/
def P6660142122502004950.Spec : Prop :=
  ∀ n, P6660142122502004950.a n = A059599 n

end A059599

/-! ## A059599.P11539034788719693815

`A277228(n+2)-a(n-1)` with `a(0)=3`
-/

namespace A059599.P11539034788719693815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A277228 (n + 2) - a (n - 1)

end

end A059599.P11539034788719693815

namespace A059599

/-- `A277228(n+2)-a(n-1)` -/
def P11539034788719693815.Spec : Prop :=
  ∀ n, P11539034788719693815.a n = A059599 n

end A059599

/-! ## A059599.P1762115923972657658

`A024166(n+2)-A005585(n+2)`
-/

namespace A059599.P1762115923972657658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024166 (n + 2) - A005585 (n + 2)

end

end A059599.P1762115923972657658

namespace A059599

/-- `A024166(n+2)-A005585(n+2)` -/
def P1762115923972657658.Spec : Prop :=
  ∀ n, P1762115923972657658.a n = A059599 n

end A059599

/-! ## A059599.P17785611188789248059

`A207361(n+2)-A033455(n+2)`
-/

namespace A059599.P17785611188789248059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207361 (n + 2) - A033455 (n + 2)

end

end A059599.P17785611188789248059

namespace A059599

/-- `A207361(n+2)-A033455(n+2)` -/
def P17785611188789248059.Spec : Prop :=
  ∀ n, P17785611188789248059.a n = A059599 n

end A059599

/-! ## A059599.P17171440646403011515

`A000332(n+4)+2*A005585(n+1)`
-/

namespace A059599.P17171440646403011515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 4) + 2 * A005585 (n + 1)

end

end A059599.P17171440646403011515

namespace A059599

/-- `A000332(n+4)+2*A005585(n+1)` -/
def P17171440646403011515.Spec : Prop :=
  ∀ n, P17171440646403011515.a n = A059599 n

end A059599

/-! ## A059599.P2587267640905281942

`A038163(Δ[n²])`
-/

namespace A059599.P2587267640905281942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038163 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A059599.P2587267640905281942

namespace A059599

/-- `A038163(Δ[n²])` -/
def P2587267640905281942.Spec : Prop :=
  ∀ n, P2587267640905281942.a n = A059599 n

end A059599

