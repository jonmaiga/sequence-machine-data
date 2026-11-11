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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C050
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
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
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A393201: Numbers k that are neither squarefree nor prime powers, such that k/rad(k) != lpf(k), where rad = A007947 and lpf = A020639.

The programs for A393201, the canonical program `A393201.P3275454451732274938` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393201 has offset 1).

The definition of A393201 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A393201.P2222207760752805599

`∪[A071365(n+1), A378878(n+1)]`
-/

namespace A393201.P2222207760752805599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A393201.P2222207760752805599

namespace A393201

/-- `∪[A071365(n+1), A378878(n+1)]` -/
def P2222207760752805599.Spec : Prop :=
  ∀ n, (P2222207760752805599.a n : ℤ) = A393201 (n + 1)

end A393201

/-! ## A393201.P370169456701400126

`∪[A093617(n+1), A378878(n+1)]`
-/

namespace A393201.P370169456701400126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A393201.P370169456701400126

namespace A393201

/-- `∪[A093617(n+1), A378878(n+1)]` -/
def P370169456701400126.Spec : Prop :=
  ∀ n, (P370169456701400126.a n : ℤ) = A393201 (n + 1)

end A393201

/-! ## A393201.P9829892489086797052

`∪[A360768(n+1), A362148(n+1)]`
-/

namespace A393201.P9829892489086797052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A393201.P9829892489086797052

namespace A393201

/-- `∪[A360768(n+1), A362148(n+1)]` -/
def P9829892489086797052.Spec : Prop :=
  ∀ n, (P9829892489086797052.a n : ℤ) = A393201 (n + 1)

end A393201

/-! ## A393201.P18168034777156682925

`∪[A360768(n+1), A369150(n+1)]`
-/

namespace A393201.P18168034777156682925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A393201.P18168034777156682925

namespace A393201

/-- `∪[A360768(n+1), A369150(n+1)]` -/
def P18168034777156682925.Spec : Prop :=
  ∀ n, (P18168034777156682925.a n : ℤ) = A393201 (n + 1)

end A393201

/-! ## A393201.P14862863071282291737

`∪[A362148(n+1), A375397(n+1)]`
-/

namespace A393201.P14862863071282291737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A393201.P14862863071282291737

namespace A393201

/-- `∪[A362148(n+1), A375397(n+1)]` -/
def P14862863071282291737.Spec : Prop :=
  ∀ n, (P14862863071282291737.a n : ℤ) = A393201 (n + 1)

end A393201

/-! ## A393201.P18170831522226604713

`∪[A360768(n+1), A378767(n+1)]`
-/

namespace A393201.P18170831522226604713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A393201.P18170831522226604713

namespace A393201

/-- `∪[A360768(n+1), A378767(n+1)]` -/
def P18170831522226604713.Spec : Prop :=
  ∀ n, (P18170831522226604713.a n : ℤ) = A393201 (n + 1)

end A393201

/-! ## A393201.P3880530872457982749

`∪[A360768(n+1), A378878(n+1)]`
-/

namespace A393201.P3880530872457982749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A393201.P3880530872457982749

namespace A393201

/-- `∪[A360768(n+1), A378878(n+1)]` -/
def P3880530872457982749.Spec : Prop :=
  ∀ n, (P3880530872457982749.a n : ℤ) = A393201 (n + 1)

end A393201

/-! ## A393201.P7694758655975623625

`∪[A360768(n+1), A391319(n+1)]`
-/

namespace A393201.P7694758655975623625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A393201.P7694758655975623625

namespace A393201

/-- `∪[A360768(n+1), A391319(n+1)]` -/
def P7694758655975623625.Spec : Prop :=
  ∀ n, (P7694758655975623625.a n : ℤ) = A393201 (n + 1)

end A393201

/-! ## A393201.P1538908562985428721

`∪[A360768(n+1), A391415(n+1)]`
-/

namespace A393201.P1538908562985428721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A393201.P1538908562985428721

namespace A393201

/-- `∪[A360768(n+1), A391415(n+1)]` -/
def P1538908562985428721.Spec : Prop :=
  ∀ n, (P1538908562985428721.a n : ℤ) = A393201 (n + 1)

end A393201

/-! ## A393201.P17200605299133409821

`∪[A375397(n+1), A378767(n+1)]`
-/

namespace A393201.P17200605299133409821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A393201.P17200605299133409821

namespace A393201

/-- `∪[A375397(n+1), A378767(n+1)]` -/
def P17200605299133409821.Spec : Prop :=
  ∀ n, (P17200605299133409821.a n : ℤ) = A393201 (n + 1)

end A393201

/-! ## A393201.P12546033943243207839

`∪[A375397(n+1), A378878(n+1)]`
-/

namespace A393201.P12546033943243207839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A393201.P12546033943243207839

namespace A393201

/-- `∪[A375397(n+1), A378878(n+1)]` -/
def P12546033943243207839.Spec : Prop :=
  ∀ n, (P12546033943243207839.a n : ℤ) = A393201 (n + 1)

end A393201

/-! ## A393201.P10518064197395555719

`∪[A375397(n+1), A391319(n+1)]`
-/

namespace A393201.P10518064197395555719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A393201.P10518064197395555719

namespace A393201

/-- `∪[A375397(n+1), A391319(n+1)]` -/
def P10518064197395555719.Spec : Prop :=
  ∀ n, (P10518064197395555719.a n : ℤ) = A393201 (n + 1)

end A393201

/-! ## A393201.P10911208752852722442

`∪[A375397(n+1), A391415(n+1)]`
-/

namespace A393201.P10911208752852722442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A393201.P10911208752852722442

namespace A393201

/-- `∪[A375397(n+1), A391415(n+1)]` -/
def P10911208752852722442.Spec : Prop :=
  ∀ n, (P10911208752852722442.a n : ℤ) = A393201 (n + 1)

end A393201

/-! ## A393201.P3275454451732274938

`∪[A378878(n+1), A400801(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A393201

/-- `∪[A378878(n+1), A400801(n+1)]` -/
def P3275454451732274938.Spec : Prop :=
  ∀ n, (P3275454451732274938.a n : ℤ) = A393201 (n + 1)

theorem P3275454451732274938.correct : P3275454451732274938.Spec := by
  intro n
  simp only [A393201, Nat.add_sub_cancel]

end A393201

/-! ## A393201.P6116731400256270000

`∪[A317258(n+1), A378878(n+1)]`
-/

namespace A393201.P6116731400256270000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317258 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A393201.P6116731400256270000

namespace A393201

/-- `∪[A317258(n+1), A378878(n+1)]` -/
def P6116731400256270000.Spec : Prop :=
  ∀ n, (P6116731400256270000.a n : ℤ) = A393201 (n + 1)

end A393201

/-!
# A393202: a(n) = prime(n + 2)^2 - prime(n + 1)*prime(n).

The programs for A393202, the canonical program `A393202.P8725241224376797018` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393202 has offset 1).

The definition of A393202 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+3)²-A000040(n+2)*A000040(n+1)` (program `A393202.P8725241224376797018`, by `A393202.P8725241224376797018.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A393202.P15291799632325750024

`A001248(n+3)-A006094(n+1)`
-/

namespace A393202.P15291799632325750024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 3) - A006094 (n + 1)

end

end A393202.P15291799632325750024

namespace A393202

/-- `A001248(n+3)-A006094(n+1)` -/
def P15291799632325750024.Spec : Prop :=
  ∀ n, P15291799632325750024.a n = A393202 (n + 1)

theorem P15291799632325750024.correct : P15291799632325750024.Spec := by
  intro n
  simp only [A393202, Nat.add_sub_cancel, A393202.P15291799632325750024.a, A393202.P8725241224376797018.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A393202

/-! ## A393202.P15205246259738285173

`A000040(n+3)²-A000040(n+1)*A000040(n+2)`
-/

namespace A393202.P15205246259738285173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 3) ^ 2 - A000040 (n + 1) * A000040 (n + 2)

end

end A393202.P15205246259738285173

namespace A393202

/-- `A000040(n+3)²-A000040(n+1)*A000040(n+2)` -/
def P15205246259738285173.Spec : Prop :=
  ∀ n, P15205246259738285173.a n = A393202 (n + 1)

theorem P15205246259738285173.correct : P15205246259738285173.Spec := by
  intro n
  simp only [A393202, Nat.add_sub_cancel, A393202.P15205246259738285173.a, A393202.P8725241224376797018.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A393202

/-! ## A393202.P8725241224376797018

`A000040(n+3)²-A000040(n+2)*A000040(n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A393202

/-- `A000040(n+3)²-A000040(n+2)*A000040(n+1)` -/
def P8725241224376797018.Spec : Prop :=
  ∀ n, P8725241224376797018.a n = A393202 (n + 1)

theorem P8725241224376797018.correct : P8725241224376797018.Spec := by
  intro n
  simp only [A393202, Nat.add_sub_cancel]

end A393202

/-! ## A393202.P12766849331976056082

`A084856(n+1)-A291463(n+1)`
-/

namespace A393202.P12766849331976056082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084856 (n + 1) - A291463 (n + 1)

end

end A393202.P12766849331976056082

namespace A393202

/-- `A084856(n+1)-A291463(n+1)` -/
def P12766849331976056082.Spec : Prop :=
  ∀ n, P12766849331976056082.a n = A393202 (n + 1)

theorem P12766849331976056082.correct : P12766849331976056082.Spec := by
  intro n
  simp only [A393202, Nat.add_sub_cancel, A393202.P12766849331976056082.a, A393202.P8725241224376797018.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A084856, A084856.P17326876538272872775.a, A291463, A291463.P14308935140851577628.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A393202

/-! ## A393202.P15784478785082036427

`A258155(n+1)/A166329(n+1)-A006094(n+1)`
-/

namespace A393202.P15784478785082036427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258155 (n + 1) : ℚ) / (A166329 (n + 1) : ℚ) - (A006094 (n + 1) : ℚ)

end

end A393202.P15784478785082036427

namespace A393202

/-- `A258155(n+1)/A166329(n+1)-A006094(n+1)` -/
def P15784478785082036427.Spec : Prop :=
  ∀ n, P15784478785082036427.a n = (A393202 (n + 1) : ℚ)

end A393202

/-! ## A393202.P11009553123420636958

`A069482(n+2)+A048852(n+1)`
-/

namespace A393202.P11009553123420636958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069482 (n + 2) + A048852 (n + 1)

end

end A393202.P11009553123420636958

namespace A393202

/-- `A069482(n+2)+A048852(n+1)` -/
def P11009553123420636958.Spec : Prop :=
  ∀ n, P11009553123420636958.a n = A393202 (n + 1)

end A393202

/-! ## A393202.P6840013627567156312

`A069484(n+2)-(A291463(n+1)+A069484(n+1))`
-/

namespace A393202.P6840013627567156312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069484 (n + 2) - (A291463 (n + 1) + A069484 (n + 1))

end

end A393202.P6840013627567156312

namespace A393202

/-- `A069484(n+2)-(A291463(n+1)+A069484(n+1))` -/
def P6840013627567156312.Spec : Prop :=
  ∀ n, P6840013627567156312.a n = A393202 (n + 1)

theorem P6840013627567156312.correct : P6840013627567156312.Spec := by
  intro n
  simp only [A393202, Nat.add_sub_cancel, A393202.P6840013627567156312.a, A393202.P8725241224376797018.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A069484, A069484.P10584348183158188878.a, A291463, A291463.P14308935140851577628.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A393202

/-! ## A393202.P5997161044198226219

`A075892(n+2)+A124434(n+2)-A006094(n+1)`
-/

namespace A393202.P5997161044198226219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075892 (n + 2) + (A124434 (n + 2) - A006094 (n + 1))

end

end A393202.P5997161044198226219

namespace A393202

/-- `A075892(n+2)+A124434(n+2)-A006094(n+1)` -/
def P5997161044198226219.Spec : Prop :=
  ∀ n, P5997161044198226219.a n = A393202 (n + 1)

end A393202

/-! ## A393202.P12607940160748277037

`A069482(n+2)+A000040(n+2)*A001223(n+1)`
-/

namespace A393202.P12607940160748277037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069482 (n + 2) + A000040 (n + 2) * A001223 (n + 1)

end

end A393202.P12607940160748277037

namespace A393202

/-- `A069482(n+2)+A000040(n+2)*A001223(n+1)` -/
def P12607940160748277037.Spec : Prop :=
  ∀ n, P12607940160748277037.a n = A393202 (n + 1)

theorem P12607940160748277037.correct : P12607940160748277037.Spec := by
  intro n
  simp only [A393202, Nat.add_sub_cancel, A393202.P12607940160748277037.a, A393202.P8725241224376797018.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A069482, A069482.P16588716990720648360.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A393202

/-! ## A393202.P5034962940469030202

`A065091(n+2)*A065091(n+2)-A006094(n+1)`
-/

namespace A393202.P5034962940469030202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 2) * A065091 (n + 2) - A006094 (n + 1)

end

end A393202.P5034962940469030202

namespace A393202

/-- `A065091(n+2)*A065091(n+2)-A006094(n+1)` -/
def P5034962940469030202.Spec : Prop :=
  ∀ n, P5034962940469030202.a n = A393202 (n + 1)

theorem P5034962940469030202.correct : P5034962940469030202.Spec := by
  intro n
  simp only [A393202, Nat.add_sub_cancel, A393202.P5034962940469030202.a, A393202.P8725241224376797018.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006094, A006094.P10257567645245129766.a, A065091, A065091.P6971844946592549357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A393202

/-! ## A393202.P907773349656685639

`A001248(n+3)-A033476(2*n+1)`
-/

namespace A393202.P907773349656685639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 3) - A033476 (2 * n + 1)

end

end A393202.P907773349656685639

namespace A393202

/-- `A001248(n+3)-A033476(2*n+1)` -/
def P907773349656685639.Spec : Prop :=
  ∀ n, P907773349656685639.a n = A393202 (n + 1)

end A393202

/-!
# A393203: a(n) = (1/2)*(prime(n + 2)^2 - prime(n + 1)*prime(n)).

The programs for A393203, the canonical program `A393203.P10331077631998674736` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393203 has offset 2).

The definition of A393203 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393203.P10331077631998674736

`(A001248(n+4)-A006094(n+2))/2`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A393203

/-- `(A001248(n+4)-A006094(n+2))/2` -/
def P10331077631998674736.Spec : Prop :=
  ∀ n, P10331077631998674736.a n = (A393203 (n + 2) : ℚ)

end A393203

/-! ## A393203.P453149768628480865

`(A000040(n+4)²-A000040(n+2)*A000040(n+3))/2`
-/

namespace A393203.P453149768628480865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 4) ^ 2 - A000040 (n + 2) * A000040 (n + 3) : ℚ) / 2

end

end A393203.P453149768628480865

namespace A393203

/-- `(A000040(n+4)²-A000040(n+2)*A000040(n+3))/2` -/
def P453149768628480865.Spec : Prop :=
  ∀ n, P453149768628480865.a n = (A393203 (n + 2) : ℚ)

end A393203

/-! ## A393203.P17229098774867942597

`1/2*(A000040(n+4)²-A000040(n+3)*A000040(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A393203.P17229098774867942597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A000040 (n + 4) ^ 2 - A000040 (n + 3) * A000040 (n + 2) : ℚ)

end

end A393203.P17229098774867942597

namespace A393203

/-- `1/2*(A000040(n+4)²-A000040(n+3)*A000040(n+2))` -/
def P17229098774867942597.Spec : Prop :=
  ∀ n, P17229098774867942597.a n = (A393203 (n + 2) : ℚ)

end A393203

/-! ## A393203.P1946104728594455480

`A393202(n+2)/2`
-/

namespace A393203.P1946104728594455480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A393202 (n + 2) : ℚ) / 2

end

end A393203.P1946104728594455480

namespace A393203

/-- `A393202(n+2)/2` -/
def P1946104728594455480.Spec : Prop :=
  ∀ n, P1946104728594455480.a n = (A393203 (n + 2) : ℚ)

end A393203

/-! ## A393203.P8213043342652782501

`A001281(A393202(n+2))`
-/

namespace A393203.P8213043342652782501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A393202 (n + 2)).toNat

end

end A393203.P8213043342652782501

namespace A393203

/-- `A001281(A393202(n+2))` -/
def P8213043342652782501.Spec : Prop :=
  ∀ n, P8213043342652782501.a n = A393203 (n + 2)

end A393203

/-!
# A393204: Number of n X n matrices over GF(2) such that the row space is equal to the column space.

The programs for A393204, the canonical program `A393204.P4868010084340078736` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393204 has offset 0).

The definition of A393204 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022166, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A393204.P4868010084340078736

`∑{#}[n, A002884(#)*A022166(C(n+1, 2)+#)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A393204

/-- `∑{#}[n, A002884(#)*A022166(C(n+1, 2)+#)]` -/
def P4868010084340078736.Spec : Prop :=
  ∀ n, P4868010084340078736.a n = A393204 n

theorem P4868010084340078736.correct : P4868010084340078736.Spec := by
  intro n
  simp only [A393204]

end A393204

/-!
# A393205: Primes p such that there is at least one Pythagorean triple with perimeter s and inradius r such that s + r^2 = p^2.

The programs for A393205, there is no canonical definition to state claims against.
-/

/-! ## A393205.P751460772842584511

`A088083(A003424(n+1))`
-/

namespace A393205.P751460772842584511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088083 (A003424 (n + 1)).toNat

end

end A393205.P751460772842584511

/-!
# A393207: Number of compositions (c1, c2, ...) of n with each c_i <= phi*c_{i-1}, where phi = (1 + sqrt(5))/2 = A001622.

The programs for A393207, there is no canonical definition to state claims against.
-/

/-! ## A393207.P5665314347239329455

`A257639(A102699(n+1))`
-/

namespace A393207.P5665314347239329455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A102699 (n + 1)).toNat

end

end A393207.P5665314347239329455

/-! ## A393207.P16766992390916597199

`row(A065033(A077852(n)))`
-/

namespace A393207.P16766992390916597199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A065033 (A077852 n).toNat).toNat

end

end A393207.P16766992390916597199

/-! ## A393207.P17193340994999258783

`row(A024898(A154447(ceil(2^(n-1)))))`
-/

namespace A393207.P17193340994999258783
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A024898 (A154447 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat).toNat).toNat

end

end A393207.P17193340994999258783

/-! ## A393207.P4448340928900362711

`A003056(A053120(n)+A052910(n))`
-/

namespace A393207.P4448340928900362711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A053120 n + A052910 n).toNat

end

end A393207.P4448340928900362711

/-! ## A393207.P16433118550872579971

`A000194(A374687(2*n)-A000389(n))`
-/

namespace A393207.P16433118550872579971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A374687 (2 * n) - A000389 n).toNat

end

end A393207.P16433118550872579971

/-!
# A393210: Halting time for Wolfram's 2-state 2-symbol Turing machine 3626 when started with n on the tape.

The programs for A393210, the canonical program `A393210.P3107208145558068616` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393210 has offset 1).

The definition of A393210 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A393210.P3107208145558068616

`2*xor(1+n, n)-1`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393210

/-- `2*xor(1+n, n)-1` -/
def P3107208145558068616.Spec : Prop :=
  ∀ n, P3107208145558068616.a n = A393210 (n + 1)

theorem P3107208145558068616.correct : P3107208145558068616.Spec := by
  intro n
  simp only [A393210, Nat.add_sub_cancel]

end A393210

/-! ## A393210.P9838320345429642987

`lcm(2, xor(1+n, n))-1`
-/

namespace A393210.P9838320345429642987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (Nat.xor (1 + n) n) : ℤ) - 1

end

end A393210.P9838320345429642987

namespace A393210

/-- `lcm(2, xor(1+n, n))-1` -/
def P9838320345429642987.Spec : Prop :=
  ∀ n, P9838320345429642987.a n = A393210 (n + 1)

end A393210

/-! ## A393210.P4011950276826040381

`xor(3, 2*xor(n+1, n))`
-/

namespace A393210.P4011950276826040381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (2 * Nat.xor (n + 1) n)

end

end A393210.P4011950276826040381

namespace A393210

/-- `xor(3, 2*xor(n+1, n))` -/
def P4011950276826040381.Spec : Prop :=
  ∀ n, (P4011950276826040381.a n : ℤ) = A393210 (n + 1)

end A393210

/-! ## A393210.P9301163827797967475

`1+4*and(n, -(n+2))`
-/

namespace A393210.P9301163827797967475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 4 * Int.land (n : ℤ) (-(n + 2 : ℤ))

end

end A393210.P9301163827797967475

namespace A393210

/-- `1+4*and(n, -(n+2))` -/
def P9301163827797967475.Spec : Prop :=
  ∀ n, P9301163827797967475.a n = A393210 (n + 1)

end A393210

/-! ## A393210.P9368484544885353547

`lcm(4, and(n, -(n+2)))+1`
-/

namespace A393210.P9368484544885353547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (Int.land (n : ℤ) (-(n + 2 : ℤ))) + 1

end

end A393210.P9368484544885353547

namespace A393210

/-- `lcm(4, and(n, -(n+2)))+1` -/
def P9368484544885353547.Spec : Prop :=
  ∀ n, (P9368484544885353547.a n : ℤ) = A393210 (n + 1)

end A393210

/-! ## A393210.P11746818498068165134

`∑{d}[xor(n, -(n+2)), #]-2`
-/

namespace A393210.P11746818498068165134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n + 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - 2

end

end A393210.P11746818498068165134

namespace A393210

/-- `∑{d}[xor(n, -(n+2)), #]-2` -/
def P11746818498068165134.Spec : Prop :=
  ∀ n, P11746818498068165134.a n = A393210 (n + 1)

end A393210

/-! ## A393210.P14780463302764242139

`xor(3-xor(2, -(2*n)), 2*n)`
-/

namespace A393210.P14780463302764242139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (3 - Int.xor 2 (-(2 * n : ℤ))) (2 * n : ℤ)

end

end A393210.P14780463302764242139

namespace A393210

/-- `xor(3-xor(2, -(2*n)), 2*n)` -/
def P14780463302764242139.Spec : Prop :=
  ∀ n, P14780463302764242139.a n = A393210 (n + 1)

end A393210

/-! ## A393210.P17876028075304499833

`A100892(n+1)-1`
-/

namespace A393210.P17876028075304499833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100892 (n + 1) - 1

end

end A393210.P17876028075304499833

namespace A393210

/-- `A100892(n+1)-1` -/
def P17876028075304499833.Spec : Prop :=
  ∀ n, P17876028075304499833.a n = A393210 (n + 1)

theorem P17876028075304499833.correct : P17876028075304499833.Spec := by
  intro n
  simp only [A393210, Nat.add_sub_cancel, A393210.P17876028075304499833.a, A393210.P3107208145558068616.a, A100892, A100892.P5668575000177681908.a, A088837, A088837.P13542131755671239569.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A393210

/-! ## A393210.P9452306655868515635

`A088837(n+1)-2`
-/

namespace A393210.P9452306655868515635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088837 (n + 1) - 2

end

end A393210.P9452306655868515635

namespace A393210

/-- `A088837(n+1)-2` -/
def P9452306655868515635.Spec : Prop :=
  ∀ n, P9452306655868515635.a n = A393210 (n + 1)

theorem P9452306655868515635.correct : P9452306655868515635.Spec := by
  intro n
  simp only [A393210, Nat.add_sub_cancel, A393210.P9452306655868515635.a, A393210.P3107208145558068616.a, A088837, A088837.P13542131755671239569.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A393210

/-! ## A393210.P16228032462021491910

`A059159(n+1)-3`
-/

namespace A393210.P16228032462021491910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059159 (n + 1) - 3

end

end A393210.P16228032462021491910

namespace A393210

/-- `A059159(n+1)-3` -/
def P16228032462021491910.Spec : Prop :=
  ∀ n, P16228032462021491910.a n = A393210 (n + 1)

end A393210

/-! ## A393210.P7963066175848716602

`4*A135481(n)+1`
-/

namespace A393210.P7963066175848716602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A135481 n + 1

end

end A393210.P7963066175848716602

namespace A393210

/-- `4*A135481(n)+1` -/
def P7963066175848716602.Spec : Prop :=
  ∀ n, P7963066175848716602.a n = A393210 (n + 1)

end A393210

/-! ## A393210.P16545272801693045242

`A059161(n)/3-3`
-/

namespace A393210.P16545272801693045242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059161 n : ℚ) / 3 - 3

end

end A393210.P16545272801693045242

namespace A393210

/-- `A059161(n)/3-3` -/
def P16545272801693045242.Spec : Prop :=
  ∀ n, P16545272801693045242.a n = (A393210 (n + 1) : ℚ)

end A393210

/-! ## A393210.P16187647481372169891

`A059164(n)/4-3`
-/

namespace A393210.P16187647481372169891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059164 n : ℚ) / 4 - 3

end

end A393210.P16187647481372169891

namespace A393210

/-- `A059164(n)/4-3` -/
def P16187647481372169891.Spec : Prop :=
  ∀ n, P16187647481372169891.a n = (A393210 (n + 1) : ℚ)

end A393210

/-! ## A393210.P8761530537850641904

`2^A085058(n)-3`
-/

namespace A393210.P8761530537850641904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A085058 n : ℤ) - 3

end

end A393210.P8761530537850641904

namespace A393210

/-- `2^A085058(n)-3` -/
def P8761530537850641904.Spec : Prop :=
  ∀ n, P8761530537850641904.a n = (A393210 (n + 1) : ℚ)

end A393210

/-! ## A393210.P16887663690425800226

`2*A038712(n+1)-1`
-/

namespace A393210.P16887663690425800226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038712 (n + 1) - 1

end

end A393210.P16887663690425800226

namespace A393210

/-- `2*A038712(n+1)-1` -/
def P16887663690425800226.Spec : Prop :=
  ∀ n, P16887663690425800226.a n = A393210 (n + 1)

theorem P16887663690425800226.correct : P16887663690425800226.Spec := by
  intro n
  simp only [A393210, Nat.add_sub_cancel, A393210.P16887663690425800226.a, A393210.P3107208145558068616.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A393210

/-! ## A393210.P5627230906556252074

`A037239(n+1)/2-3`
-/

namespace A393210.P5627230906556252074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037239 (n + 1) : ℚ) / 2 - 3

end

end A393210.P5627230906556252074

namespace A393210

/-- `A037239(n+1)/2-3` -/
def P5627230906556252074.Spec : Prop :=
  ∀ n, P5627230906556252074.a n = (A393210 (n + 1) : ℚ)

end A393210

/-! ## A393210.P5216585930764043594

`4*A006519(n+1)-3`
-/

namespace A393210.P5216585930764043594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A006519 (n + 1) - 3

end

end A393210.P5216585930764043594

namespace A393210

/-- `4*A006519(n+1)-3` -/
def P5216585930764043594.Spec : Prop :=
  ∀ n, P5216585930764043594.a n = A393210 (n + 1)

end A393210

/-! ## A393210.P8180248783212300017

`∑{d}[n+1, #*A069517(#)]`
-/

namespace A393210.P8180248783212300017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A069517 d

end

end A393210.P8180248783212300017

namespace A393210

/-- `∑{d}[n+1, #*A069517(#)]` -/
def P8180248783212300017.Spec : Prop :=
  ∀ n, P8180248783212300017.a n = A393210 (n + 1)

end A393210

/-! ## A393210.P3816113501916001472

`A036563(A085058(n))`
-/

namespace A393210.P3816113501916001472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036563 (A085058 n).toNat

end

end A393210.P3816113501916001472

namespace A393210

/-- `A036563(A085058(n))` -/
def P3816113501916001472.Spec : Prop :=
  ∀ n, P3816113501916001472.a n = A393210 (n + 1)

end A393210

/-! ## A393210.P16102500915374063201

`A016813(A135481(n))`
-/

namespace A393210.P16102500915374063201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A135481 n).toNat

end

end A393210.P16102500915374063201

namespace A393210

/-- `A016813(A135481(n))` -/
def P16102500915374063201.Spec : Prop :=
  ∀ n, P16102500915374063201.a n = A393210 (n + 1)

end A393210

/-!
# A393211: Number computed by Wolfram's 2-state 2-symbol Turing machine 773 when started with n on the tape.

The programs for A393211, the canonical program `A393211.P7893023393097711899` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393211 has offset 1).

The definition of A393211 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A393211.P7893023393097711899

`n-A176965(A087230(1+n))+1`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A393211

/-- `n-A176965(A087230(1+n))+1` -/
def P7893023393097711899.Spec : Prop :=
  ∀ n, P7893023393097711899.a n = A393211 (n + 1)

theorem P7893023393097711899.correct : P7893023393097711899.Spec := by
  intro n
  simp only [A393211, Nat.add_sub_cancel]

end A393211

/-! ## A393211.P2832987391995883461

`and(A006579(n+1), A010846(A000079(n)))`
-/

namespace A393211.P2832987391995883461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006579 (n + 1)) (A010846 (A000079 n).toNat)

end

end A393211.P2832987391995883461

namespace A393211

/-- `and(A006579(n+1), A010846(A000079(n)))` -/
def P2832987391995883461.Spec : Prop :=
  ∀ n, P2832987391995883461.a n = A393211 (n + 1)

end A393211

/-! ## A393211.P13338026187407593180

`and(A006579(n+1), A087230(A176965(n+1)))`
-/

namespace A393211.P13338026187407593180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006579 (n + 1)) (A087230 (A176965 (n + 1)).toNat)

end

end A393211.P13338026187407593180

namespace A393211

/-- `and(A006579(n+1), A087230(A176965(n+1)))` -/
def P13338026187407593180.Spec : Prop :=
  ∀ n, P13338026187407593180.a n = A393211 (n + 1)

end A393211

/-! ## A393211.P13512821949436287014

`and(A010846(A000079(n)), A255993(2*n+2))`
-/

namespace A393211.P13512821949436287014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010846 (A000079 n).toNat) (A255993 (2 * n + 2))

end

end A393211.P13512821949436287014

namespace A393211

/-- `and(A010846(A000079(n)), A255993(2*n+2))` -/
def P13512821949436287014.Spec : Prop :=
  ∀ n, P13512821949436287014.a n = A393211 (n + 1)

end A393211

/-! ## A393211.P11733538164806006064

`and(A087230(A176965(n+1)), A255993(2*n+2))`
-/

namespace A393211.P11733538164806006064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087230 (A176965 (n + 1)).toNat) (A255993 (2 * n + 2))

end

end A393211.P11733538164806006064

namespace A393211

/-- `and(A087230(A176965(n+1)), A255993(2*n+2))` -/
def P11733538164806006064.Spec : Prop :=
  ∀ n, P11733538164806006064.a n = A393211 (n + 1)

end A393211

/-!
# A393212: Halting time for Wolfram's 2-state 2-symbol Turing machine 773 when started with n on the tape.

The programs for A393212, the canonical program `A393212.P8608727344683158324` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393212 has offset 1).

The definition of A393212 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A393212.P2073492603706968513

`or(A073575(3*n+5), A247328(A087230(n+1)))`
-/

namespace A393212.P2073492603706968513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A073575 (3 * n + 5)) (A247328 (A087230 (n + 1)).toNat)

end

end A393212.P2073492603706968513

namespace A393212

/-- `or(A073575(3*n+5), A247328(A087230(n+1)))` -/
def P2073492603706968513.Spec : Prop :=
  ∀ n, P2073492603706968513.a n = A393212 (n + 1)

end A393212

/-! ## A393212.P11537862973925930359

`or(A053381(3*n+4)-1, A073575(3*n+1))`
-/

namespace A393212.P11537862973925930359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A053381 (3 * n + 4) - 1) (A073575 (3 * n + 1))

end

end A393212.P11537862973925930359

namespace A393212

/-- `or(A053381(3*n+4)-1, A073575(3*n+1))` -/
def P11537862973925930359.Spec : Prop :=
  ∀ n, P11537862973925930359.a n = A393212 (n + 1)

end A393212

/-! ## A393212.P13060924874884940908

`1+val(A356191(3*n+5)², 2)`
-/

namespace A393212.P13060924874884940908
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.valuation (A356191 (3 * n + 5) ^ 2).toNat 2

end

end A393212.P13060924874884940908

namespace A393212

/-- `1+val(A356191(3*n+5)², 2)` -/
def P13060924874884940908.Spec : Prop :=
  ∀ n, (P13060924874884940908.a n : ℤ) = A393212 (n + 1)

end A393212

/-! ## A393212.P8608727344683158324

`or(A005843(A007814(3*n+5)), A073575(3*n+5))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A393212

/-- `or(A005843(A007814(3*n+5)), A073575(3*n+5))` -/
def P8608727344683158324.Spec : Prop :=
  ∀ n, P8608727344683158324.a n = A393212 (n + 1)

theorem P8608727344683158324.correct : P8608727344683158324.Spec := by
  intro n
  simp only [A393212, Nat.add_sub_cancel]

end A393212

/-! ## A393212.P3406054511563754600

`A001644(val(A325868(3*n+4)+xor(1, n), 2)+1)`
-/

namespace A393212.P3406054511563754600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 (SequenceMachineLib.valuation (A325868 (3 * n + 4) + (Nat.xor 1 n : ℤ)).toNat 2 + 1)

end

end A393212.P3406054511563754600

namespace A393212

/-- `A001644(val(A325868(3*n+4)+xor(1, n), 2)+1)` -/
def P3406054511563754600.Spec : Prop :=
  ∀ n, P3406054511563754600.a n = A393212 (n + 1)

end A393212

/-!
# A393213: Primes and cubes of primes.

The programs for A393213, the canonical program `A393213.P13843200019453395351` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393213 has offset 1).

The definition of A393213 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6555 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A393213.P17791325051472349139

`filter[A277187(n+1), A066829(#)]`
-/

namespace A393213.P17791325051472349139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277187 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A393213.P17791325051472349139

namespace A393213

/-- `filter[A277187(n+1), A066829(#)]` -/
def P17791325051472349139.Spec : Prop :=
  ∀ n, P17791325051472349139.a n = A393213 (n + 1)

end A393213

/-! ## A393213.P8766733416632577157

`filter[A375270(n+1), A066829(#)]`
-/

namespace A393213.P8766733416632577157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A393213.P8766733416632577157

namespace A393213

/-- `filter[A375270(n+1), A066829(#)]` -/
def P8766733416632577157.Spec : Prop :=
  ∀ n, P8766733416632577157.a n = A393213 (n + 1)

end A393213

/-! ## A393213.P4344388337844189732

`filter[A128603(n+1), A359473(#)]`
-/

namespace A393213.P4344388337844189732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128603 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A393213.P4344388337844189732

namespace A393213

/-- `filter[A128603(n+1), A359473(#)]` -/
def P4344388337844189732.Spec : Prop :=
  ∀ n, P4344388337844189732.a n = A393213 (n + 1)

end A393213

/-! ## A393213.P3592789775538562838

`filter[A277187(n+1), A358769(#)]`
-/

namespace A393213.P3592789775538562838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277187 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A393213.P3592789775538562838

namespace A393213

/-- `filter[A277187(n+1), A358769(#)]` -/
def P3592789775538562838.Spec : Prop :=
  ∀ n, P3592789775538562838.a n = A393213 (n + 1)

end A393213

/-! ## A393213.P14651271680441949678

`filter[A277187(n+1), A374474(#)]`
-/

namespace A393213.P14651271680441949678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277187 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A393213.P14651271680441949678

namespace A393213

/-- `filter[A277187(n+1), A374474(#)]` -/
def P14651271680441949678.Spec : Prop :=
  ∀ n, P14651271680441949678.a n = A393213 (n + 1)

end A393213

/-! ## A393213.P18270966029877020168

`filter[A115975(n+2), A359473(#)]`
-/

namespace A393213.P18270966029877020168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115975 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A393213.P18270966029877020168

namespace A393213

/-- `filter[A115975(n+2), A359473(#)]` -/
def P18270966029877020168.Spec : Prop :=
  ∀ n, P18270966029877020168.a n = A393213 (n + 1)

end A393213

/-! ## A393213.P14514475583406742143

`filter[A277187(n+2), A359473(#)]`
-/

namespace A393213.P14514475583406742143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277187 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A393213.P14514475583406742143

namespace A393213

/-- `filter[A277187(n+2), A359473(#)]` -/
def P14514475583406742143.Spec : Prop :=
  ∀ n, P14514475583406742143.a n = A393213 (n + 1)

end A393213

/-! ## A393213.P8145242474229776703

`filter[A339841(n+2), A359473(#)]`
-/

namespace A393213.P8145242474229776703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339841 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A393213.P8145242474229776703

namespace A393213

/-- `filter[A339841(n+2), A359473(#)]` -/
def P8145242474229776703.Spec : Prop :=
  ∀ n, P8145242474229776703.a n = A393213 (n + 1)

end A393213

/-! ## A393213.P1116438171940324942

`filter[A277187(n+1), A353817(#)]`
-/

namespace A393213.P1116438171940324942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277187 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A393213.P1116438171940324942

namespace A393213

/-- `filter[A277187(n+1), A353817(#)]` -/
def P1116438171940324942.Spec : Prop :=
  ∀ n, P1116438171940324942.a n = A393213 (n + 1)

end A393213

/-! ## A393213.P13483955280537686362

`filter[A339841(n+1), A353817(#)]`
-/

namespace A393213.P13483955280537686362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339841 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A393213.P13483955280537686362

namespace A393213

/-- `filter[A339841(n+1), A353817(#)]` -/
def P13483955280537686362.Spec : Prop :=
  ∀ n, P13483955280537686362.a n = A393213 (n + 1)

end A393213

/-! ## A393213.P6187019686269712832

`filter[A115975(n+1), A099104(#)]`
-/

namespace A393213.P6187019686269712832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A099104 (f1 j).toNat = 1) n)

end

end A393213.P6187019686269712832

namespace A393213

/-- `filter[A115975(n+1), A099104(#)]` -/
def P6187019686269712832.Spec : Prop :=
  ∀ n, P6187019686269712832.a n = A393213 (n + 1)

end A393213

/-! ## A393213.P8233971603125798653

`filter[A128603(n+1), A099104(#)]`
-/

namespace A393213.P8233971603125798653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128603 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A099104 (f1 j).toNat = 1) n)

end

end A393213.P8233971603125798653

namespace A393213

/-- `filter[A128603(n+1), A099104(#)]` -/
def P8233971603125798653.Spec : Prop :=
  ∀ n, P8233971603125798653.a n = A393213 (n + 1)

end A393213

/-! ## A393213.P11729735983565922949

`filter[A096165(n+1), A174897(#)]`
-/

namespace A393213.P11729735983565922949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A393213.P11729735983565922949

namespace A393213

/-- `filter[A096165(n+1), A174897(#)]` -/
def P11729735983565922949.Spec : Prop :=
  ∀ n, P11729735983565922949.a n = A393213 (n + 1)

end A393213

/-! ## A393213.P13843200019453395351

`filter[A128603(n+1), A181183(#)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A393213

/-- `filter[A128603(n+1), A181183(#)]` -/
def P13843200019453395351.Spec : Prop :=
  ∀ n, P13843200019453395351.a n = A393213 (n + 1)

theorem P13843200019453395351.correct : P13843200019453395351.Spec := by
  intro n
  simp only [A393213, Nat.add_sub_cancel]

end A393213

/-! ## A393213.P17839623781856409205

`filter[A277187(n+1), A049240(#)]`
-/

namespace A393213.P17839623781856409205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277187 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A393213.P17839623781856409205

namespace A393213

/-- `filter[A277187(n+1), A049240(#)]` -/
def P17839623781856409205.Spec : Prop :=
  ∀ n, P17839623781856409205.a n = A393213 (n + 1)

end A393213

/-! ## A393213.P12956459663248619223

`filter[A000961(n+1), A353788(#)]`
-/

namespace A393213.P12956459663248619223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353788 (f1 j).toNat = 1) n)

end

end A393213.P12956459663248619223

namespace A393213

/-- `filter[A000961(n+1), A353788(#)]` -/
def P12956459663248619223.Spec : Prop :=
  ∀ n, P12956459663248619223.a n = A393213 (n + 1)

end A393213

/-! ## A393213.P14071034765181870359

`filter[A246551(n+1), A123927(#)]`
-/

namespace A393213.P14071034765181870359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A393213.P14071034765181870359

namespace A393213

/-- `filter[A246551(n+1), A123927(#)]` -/
def P14071034765181870359.Spec : Prop :=
  ∀ n, P14071034765181870359.a n = A393213 (n + 1)

end A393213

/-! ## A393213.P3902978459580200980

`filter[A277187(n+1), A099104(#)]`
-/

namespace A393213.P3902978459580200980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277187 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A099104 (f1 j).toNat = 1) n)

end

end A393213.P3902978459580200980

namespace A393213

/-- `filter[A277187(n+1), A099104(#)]` -/
def P3902978459580200980.Spec : Prop :=
  ∀ n, P3902978459580200980.a n = A393213 (n + 1)

end A393213

/-! ## A393213.P10157680726163634556

`filter[A268391(n+1), A123927(#)]`
-/

namespace A393213.P10157680726163634556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A393213.P10157680726163634556

namespace A393213

/-- `filter[A268391(n+1), A123927(#)]` -/
def P10157680726163634556.Spec : Prop :=
  ∀ n, P10157680726163634556.a n = A393213 (n + 1)

end A393213

/-! ## A393213.P6146568403206364168

`filter[A375270(n+1), A049240(#)]`
-/

namespace A393213.P6146568403206364168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A393213.P6146568403206364168

namespace A393213

/-- `filter[A375270(n+1), A049240(#)]` -/
def P6146568403206364168.Spec : Prop :=
  ∀ n, P6146568403206364168.a n = A393213 (n + 1)

end A393213

/-!
# A393214: a(n) = d_4(n)^2, where d_4 is the 4th Piltz function (A007426).

The programs for A393214, the canonical program `A393214.P15248670309683618524` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393214 has offset 1).

The definition of A393214 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A393214.P15248670309683618524

`∏{e}[1+n, C(#+3, 3)²]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393214

/-- `∏{e}[1+n, C(#+3, 3)²]` -/
def P15248670309683618524.Spec : Prop :=
  ∀ n, (P15248670309683618524.a n : ℤ) = A393214 (n + 1)

theorem P15248670309683618524.correct : P15248670309683618524.Spec := by
  intro n
  simp only [A393214, Nat.add_sub_cancel]

end A393214

/-! ## A393214.P15774535196043304751

`∏{e}[1+n, C(#+3, 3)]^2`
-/

namespace A393214.P15774535196043304751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (Nat.factorization (f1 n) p + 3) 3) ^ 2

end

end A393214.P15774535196043304751

namespace A393214

/-- `∏{e}[1+n, C(#+3, 3)]^2` -/
def P15774535196043304751.Spec : Prop :=
  ∀ n, (P15774535196043304751.a n : ℤ) = A393214 (n + 1)

end A393214

/-! ## A393214.P471008283960768471

`∏{e}[1+n, C(#+3, 3)]*∏{e}[1+n, C(#+3, 3)]`
-/

namespace A393214.P471008283960768471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (Nat.factorization (f1 n) p + 3) 3) * (∏ p ∈ Nat.primeFactors (f2 n), Nat.choose (Nat.factorization (f2 n) p + 3) 3)

end

end A393214.P471008283960768471

namespace A393214

/-- `∏{e}[1+n, C(#+3, 3)]*∏{e}[1+n, C(#+3, 3)]` -/
def P471008283960768471.Spec : Prop :=
  ∀ n, (P471008283960768471.a n : ℤ) = A393214 (n + 1)

end A393214

/-! ## A393214.P12822775200655699190

`A007426(1+n)²`
-/

namespace A393214.P12822775200655699190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007426 (1 + n) ^ 2

end

end A393214.P12822775200655699190

namespace A393214

/-- `A007426(1+n)²` -/
def P12822775200655699190.Spec : Prop :=
  ∀ n, P12822775200655699190.a n = A393214 (n + 1)

end A393214

/-! ## A393214.P16406832139203520067

`A007426(n+1)^2`
-/

namespace A393214.P16406832139203520067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007426 (n + 1) ^ 2

end

end A393214.P16406832139203520067

namespace A393214

/-- `A007426(n+1)^2` -/
def P16406832139203520067.Spec : Prop :=
  ∀ n, P16406832139203520067.a n = A393214 (n + 1)

end A393214

/-! ## A393214.P11529835567427500158

`∏{e}[n+1, A001249(#)]`
-/

namespace A393214.P11529835567427500158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A001249 (Nat.factorization (f1 n) p)

end

end A393214.P11529835567427500158

namespace A393214

/-- `∏{e}[n+1, A001249(#)]` -/
def P11529835567427500158.Spec : Prop :=
  ∀ n, P11529835567427500158.a n = A393214 (n + 1)

end A393214

/-! ## A393214.P10817755995187862804

`A000290(∏{e}[n+1, C(#+3, 3)])`
-/

namespace A393214.P10817755995187862804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (Nat.factorization (f1 n) p + 3) 3)

end

end A393214.P10817755995187862804

namespace A393214

/-- `A000290(∏{e}[n+1, C(#+3, 3)])` -/
def P10817755995187862804.Spec : Prop :=
  ∀ n, P10817755995187862804.a n = A393214 (n + 1)

end A393214

/-! ## A393214.P3454301761431762929

`sqrt(A000583(∏{e}[n+1, C(#+3, 3)]))`
-/

namespace A393214.P3454301761431762929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000583 (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (Nat.factorization (f1 n) p + 3) 3) : ℝ)

end

end A393214.P3454301761431762929

namespace A393214

/-- `sqrt(A000583(∏{e}[n+1, C(#+3, 3)]))` -/
def P3454301761431762929.Spec : Prop :=
  ∀ n, P3454301761431762929.a n = (A393214 (n + 1) : ℝ)

end A393214

/-! ## A393214.P16076283646412587374

`A000290(A007426(n+1))`
-/

namespace A393214.P16076283646412587374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A007426 (n + 1)).toNat

end

end A393214.P16076283646412587374

namespace A393214

/-- `A000290(A007426(n+1))` -/
def P16076283646412587374.Spec : Prop :=
  ∀ n, P16076283646412587374.a n = A393214 (n + 1)

end A393214

/-!
# A393216: Number of transitive relations on an n-set with exactly six ordered pairs.

The programs for A393216, there is no canonical definition to state claims against.
-/

/-! ## A393216.P17134521496518561519

`A394769(n)-A394732(n)`
-/

namespace A393216.P17134521496518561519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394769 n - A394732 n

end

end A393216.P17134521496518561519

/-! ## A393216.P16463691529845548570

`A395544(n)-(A393925(n)+A392460(n))-A394732(n)`
-/

namespace A393216.P16463691529845548570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395544 n - (A393925 n + A392460 n) - A394732 n

end

end A393216.P16463691529845548570

/-!
# A393217: Perfect powers m^k, with m, k > 1, such that no digit of m^k is present in k^m.

The programs for A393217, there is no canonical definition to state claims against.
-/

/-! ## A393217.P3280045198764498560

`∩[A124184(n+1), A191980(n+1)]`
-/

namespace A393217.P3280045198764498560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393217.P3280045198764498560

/-! ## A393217.P7677846697891515189

`A025475(lt[A109265(n), A288257(2^n)]+1)`
-/

namespace A393217.P7677846697891515189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109265 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288257 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A393217.P7677846697891515189

/-!
# A393219: Row 3 of A372254.

The programs for A393219, there is no canonical definition to state claims against.
-/

/-! ## A393219.P16715093584871732719

`A372254(A167614(n+2))`
-/

namespace A393219.P16715093584871732719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372254 (A167614 (n + 2)).toNat

end

end A393219.P16715093584871732719

/-! ## A393219.P3498022916232975257

`A372254(eq[3, A002262(n)])`
-/

namespace A393219.P3498022916232975257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372254 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A393219.P3498022916232975257

/-! ## A393219.P6219038751256839612

`A372254(A340266(n+2)+1)`
-/

namespace A393219.P6219038751256839612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372254 (A340266 (n + 2) + 1).toNat

end

end A393219.P6219038751256839612

/-! ## A393219.P15645514453411229128

`A372254(A134869(n+3)+2)`
-/

namespace A393219.P15645514453411229128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372254 (A134869 (n + 3) + 2).toNat

end

end A393219.P15645514453411229128

/-! ## A393219.P12472387378577837923

`A372254(A000217(n+3)+3)`
-/

namespace A393219.P12472387378577837923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372254 (A000217 (n + 3) + 3).toNat

end

end A393219.P12472387378577837923

/-!
# A393220: Row 4 of A372254.

The programs for A393220, there is no canonical definition to state claims against.
-/

/-! ## A393220.P8836086109618089567

`A372254(eq[4, A002262(n)])`
-/

namespace A393220.P8836086109618089567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372254 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A393220.P8836086109618089567

/-! ## A393220.P2281599146592276112

`A372254(A167614(n+3)+1)`
-/

namespace A393220.P2281599146592276112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372254 (A167614 (n + 3) + 1).toNat

end

end A393220.P2281599146592276112

/-! ## A393220.P18322108016283665688

`A372254(A134869(n+4)+3)`
-/

namespace A393220.P18322108016283665688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372254 (A134869 (n + 4) + 3).toNat

end

end A393220.P18322108016283665688

/-! ## A393220.P5668675542399103146

`A372254(A000217(n+4)+4)`
-/

namespace A393220.P5668675542399103146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372254 (A000217 (n + 4) + 4).toNat

end

end A393220.P5668675542399103146

/-!
# A393221: Column 1 of A372254.

The programs for A393221, there is no canonical definition to state claims against.
-/

/-! ## A393221.P16404767019199025870

`A372254(∑[n+2]-1)`
-/

namespace A393221.P16404767019199025870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372254 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A393221.P16404767019199025870

/-! ## A393221.P8821574189088053035

`A372261(C(n+3, 3)-n)`
-/

namespace A393221.P8821574189088053035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372261 (Nat.choose (n + 3) 3 - n)

end

end A393221.P8821574189088053035

/-! ## A393221.P12973100927929787146

`A372261(A105163(n+2))`
-/

namespace A393221.P12973100927929787146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372261 (A105163 (n + 2)).toNat

end

end A393221.P12973100927929787146

/-! ## A393221.P16876170171932353889

`record[gcd(A106356(n+1), A372254(n))]`
-/

namespace A393221.P16876170171932353889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A106356 (n + 1)) (A372254 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A393221.P16876170171932353889

/-! ## A393221.P7036994032971202000

`A306209(A034856(3*n+2)-n)`
-/

namespace A393221.P7036994032971202000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306209 (A034856 (3 * n + 2) - (n : ℤ)).toNat

end

end A393221.P7036994032971202000

/-!
# A393222: Column 2 of A372254.

The programs for A393222, there is no canonical definition to state claims against.
-/

/-! ## A393222.P171859553374810878

`A372254(∑[3+n])`
-/

namespace A393222.P171859553374810878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372254 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A393222.P171859553374810878

/-! ## A393222.P4729854105655024654

`record[A372254(n)/A372254(n+3)]`
-/

namespace A393222.P4729854105655024654
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372254 n : ℚ) / (A372254 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A393222.P4729854105655024654

/-! ## A393222.P2567300533849137328

`record[or(-A002262(n+3), A372254(n))]`
-/

namespace A393222.P2567300533849137328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A002262 (n + 3)) (A372254 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A393222.P2567300533849137328

/-! ## A393222.P17153618020741919113

`record[gcd(A072233(n+4), A372254(n+1))]`
-/

namespace A393222.P17153618020741919113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072233 (n + 4)) (A372254 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A393222.P17153618020741919113

/-!
# A393223: Column 3 of A372254.

The programs for A393223, there is no canonical definition to state claims against.
-/

/-! ## A393223.P5846900324276899008

`A372254(A046691(n+2))`
-/

namespace A393223.P5846900324276899008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372254 (A046691 (n + 2)).toNat

end

end A393223.P5846900324276899008

/-! ## A393223.P619828315681377265

`A372254(A056000(n)+6)`
-/

namespace A393223.P619828315681377265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372254 (A056000 n + 6).toNat

end

end A393223.P619828315681377265

/-! ## A393223.P7101223716500969110

`A372254(A055998(n+2)-1)`
-/

namespace A393223.P7101223716500969110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372254 (A055998 (n + 2) - 1).toNat

end

end A393223.P7101223716500969110

/-! ## A393223.P9929761802816352543

`A372254(A000217(n+3)+n)`
-/

namespace A393223.P9929761802816352543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372254 (A000217 (n + 3) + (n : ℤ)).toNat

end

end A393223.P9929761802816352543

/-! ## A393223.P4891752301064225271

`A372254(A209268(2*n+5)+n)`
-/

namespace A393223.P4891752301064225271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372254 (A209268 (2 * n + 5) + (n : ℤ)).toNat

end

end A393223.P4891752301064225271

/-!
# A393225: Arboricity of the n-Mycielski graph.

The programs for A393225, there is no canonical definition to state claims against.
-/

/-! ## A393225.P13044794967509859543

`A000196(A053282(∑[n+1]))`
-/

namespace A393225.P13044794967509859543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A053282 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A393225.P13044794967509859543

/-! ## A393225.P18200242261346688579

`A000196(∑[A393244(n)]+1)`
-/

namespace A393225.P18200242261346688579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A393225.P18200242261346688579

/-! ## A393225.P11035566567381151535

`ceil(A176287(n)/A004277(A188476(n)))`
-/

namespace A393225.P11035566567381151535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A176287 n : ℚ) / (A004277 (A188476 n).toNat : ℚ)⌉

end

end A393225.P11035566567381151535

/-! ## A393225.P10503950117509037550

`A137735(A238829(n+1)+A230406(2*(n+2)))`
-/

namespace A393225.P10503950117509037550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A238829 (n + 1) + A230406 (2 * (n + 2))).toNat

end

end A393225.P10503950117509037550

/-! ## A393225.P1275658354760267241

`A204164(A191758(n))`
-/

namespace A393225.P1275658354760267241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (A191758 n).toNat

end

end A393225.P1275658354760267241

/-!
# A393227: G.f. A(x) satisfies: A(x) = 1 + x * A(x/(1 - x)^2) / (1 - x)^3.

The programs for A393227, there is no canonical definition to state claims against.
-/

/-! ## A393227.P6940566721650885701

`A186023(eq[1, col(n)])`
-/

namespace A393227.P6940566721650885701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186023 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A393227.P6940566721650885701

/-! ## A393227.P5113389101196316526

`A186023(∑[n+1]+1)`
-/

namespace A393227.P5113389101196316526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186023 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A393227.P5113389101196316526

/-!
# A393228: G.f. A(x) satisfies: A(x) = 1 + x * A(x/(1 - x)^3) / (1 - x)^2.

The programs for A393228, there is no canonical definition to state claims against.
-/

/-! ## A393228.P8213480200621850049

`A109497(A352646(n)-1)`
-/

namespace A393228.P8213480200621850049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109497 (A352646 n - 1).toNat

end

end A393228.P8213480200621850049

/-! ## A393228.P1296558206889986564

`A156077(A323290(n)+n)`
-/

namespace A393228.P1296558206889986564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156077 (A323290 n + (n : ℤ)).toNat

end

end A393228.P1296558206889986564

/-!
# A393231: Expansion of x^2 * (3+x-x^2) / (1-x)^4.

The programs for A393231, the canonical program `A393231.P17955154013371398717` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393231 has offset 1).

The definition of A393231 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((3x+x^2-x^3)/(1-4x+6x^2-4x^3+x^4))` (program `A393231.P17955154013371398717`, by `A393231.P17955154013371398717.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A393231.P17955154013371398717

`ogf((3x+x^2-x^3)/(1-4x+6x^2-4x^3+x^4))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393231

/-- `ogf((3x+x^2-x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P17955154013371398717.Spec : Prop :=
  ∀ n, P17955154013371398717.a n = A393231 (n + 1)

theorem P17955154013371398717.correct : P17955154013371398717.Spec := by
  intro n
  simp only [A393231, Nat.add_sub_cancel]

end A393231

/-! ## A393231.P13920140771879503782

`n*((n+1)²+2*(n+1)-2)/2`
-/

namespace A393231.P13920140771879503782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (((n + 1) ^ 2 + 2 * (n + 1) : ℤ) - 2) : ℚ) / 2

end

end A393231.P13920140771879503782

namespace A393231

/-- `n*((n+1)²+2*(n+1)-2)/2` -/
def P13920140771879503782.Spec : Prop :=
  ∀ n, P13920140771879503782.a n = (A393231 (n + 1) : ℚ)

end A393231

/-! ## A393231.P1828879615599302149

`∑[∑[3*n]]+C(n, 2)`
-/

namespace A393231.P1828879615599302149
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose n 2

end

end A393231.P1828879615599302149

namespace A393231

/-- `∑[∑[3*n]]+C(n, 2)` -/
def P1828879615599302149.Spec : Prop :=
  ∀ n, (P1828879615599302149.a n : ℤ) = A393231 (n + 1)

end A393231

/-! ## A393231.P6114847980788428374

`lcm(n, (2+n)²-3)/2`
-/

namespace A393231.P6114847980788428374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n : ℤ) (((2 + n) ^ 2 : ℤ) - 3) : ℚ) / 2

end

end A393231.P6114847980788428374

namespace A393231

/-- `lcm(n, (2+n)²-3)/2` -/
def P6114847980788428374.Spec : Prop :=
  ∀ n, P6114847980788428374.a n = (A393231 (n + 1) : ℚ)

end A393231

/-! ## A393231.P8969707944209385794

`∑[∑[3+a(n-1)]]` with `a(0)=0, a(1)=3, a(2)=7`
-/

namespace A393231.P8969707944209385794
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 7] fun n f2 =>
  3 + f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393231.P8969707944209385794

namespace A393231

/-- `∑[∑[3+a(n-1)]]` -/
def P8969707944209385794.Spec : Prop :=
  ∀ n, (P8969707944209385794.a n : ℤ) = A393231 (n + 1)

end A393231

/-! ## A393231.P8196069898020952462

`(n-1)*C(n+3, 2)+3`
-/

namespace A393231.P8196069898020952462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (Nat.choose (n + 3) 2 : ℤ) + 3

end

end A393231.P8196069898020952462

namespace A393231

/-- `(n-1)*C(n+3, 2)+3` -/
def P8196069898020952462.Spec : Prop :=
  ∀ n, P8196069898020952462.a n = A393231 (n + 1)

end A393231

/-! ## A393231.P15520986067122374656

`C(n, 2)+C(n+2, 2)*n`
-/

namespace A393231.P15520986067122374656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + Nat.choose (n + 2) 2 * n

end

end A393231.P15520986067122374656

namespace A393231

/-- `C(n, 2)+C(n+2, 2)*n` -/
def P15520986067122374656.Spec : Prop :=
  ∀ n, (P15520986067122374656.a n : ℤ) = A393231 (n + 1)

end A393231

/-! ## A393231.P15654739276949781789

`(lcm(n+1, n+2)+n-1)*n/2`
-/

namespace A393231.P15654739276949781789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm (n + 1) (n + 2) : ℤ) + ((n : ℤ) - 1) : ℚ) * ((n : ℚ) / 2)

end

end A393231.P15654739276949781789

namespace A393231

/-- `(lcm(n+1, n+2)+n-1)*n/2` -/
def P15654739276949781789.Spec : Prop :=
  ∀ n, P15654739276949781789.a n = (A393231 (n + 1) : ℚ)

end A393231

/-! ## A393231.P12646356352513896178

`floor((n+1)*(a(n-1)/n+n+1))` with `a(0)=0, a(1)=3`
-/

namespace A393231.P12646356352513896178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  ⌊(n + 1 : ℚ) * ((a (n - 1) : ℚ) / (n : ℚ) + (n + 1 : ℚ))⌋

end

end A393231.P12646356352513896178

namespace A393231

/-- `floor((n+1)*(a(n-1)/n+n+1))` -/
def P12646356352513896178.Spec : Prop :=
  ∀ n, P12646356352513896178.a n = A393231 (n + 1)

end A393231

/-! ## A393231.P5577200559327222386

`A006002(n)+n²`
-/

namespace A393231.P5577200559327222386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006002 n + (n ^ 2 : ℤ)

end

end A393231.P5577200559327222386

namespace A393231

/-- `A006002(n)+n²` -/
def P5577200559327222386.Spec : Prop :=
  ∀ n, P5577200559327222386.a n = A393231 (n + 1)

end A393231

/-! ## A393231.P16739302474043263218

`A077414(n+1)-n`
-/

namespace A393231.P16739302474043263218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077414 (n + 1) - (n : ℤ)

end

end A393231.P16739302474043263218

namespace A393231

/-- `A077414(n+1)-n` -/
def P16739302474043263218.Spec : Prop :=
  ∀ n, P16739302474043263218.a n = A393231 (n + 1)

end A393231

/-! ## A393231.P3547335180512860874

`A317637(n)/2-n`
-/

namespace A393231.P3547335180512860874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317637 n : ℚ) / 2 - (n : ℚ)

end

end A393231.P3547335180512860874

namespace A393231

/-- `A317637(n)/2-n` -/
def P3547335180512860874.Spec : Prop :=
  ∀ n, P3547335180512860874.a n = (A393231 (n + 1) : ℚ)

end A393231

/-! ## A393231.P55624310105042384

`∑[A005449(n)]+n²`
-/

namespace A393231.P55624310105042384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A393231.P55624310105042384

namespace A393231

/-- `∑[A005449(n)]+n²` -/
def P55624310105042384.Spec : Prop :=
  ∀ n, P55624310105042384.a n = A393231 (n + 1)

end A393231

/-! ## A393231.P11139306431393919001

`∑[A115067(n+1)]-n`
-/

namespace A393231.P11139306431393919001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A393231.P11139306431393919001

namespace A393231

/-- `∑[A115067(n+1)]-n` -/
def P11139306431393919001.Spec : Prop :=
  ∀ n, P11139306431393919001.a n = A393231 (n + 1)

end A393231

/-! ## A393231.P16725932549437616045

`n/2*A028872(n+2)`
-/

namespace A393231.P16725932549437616045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A028872 (n + 2) : ℚ)

end

end A393231.P16725932549437616045

namespace A393231

/-- `n/2*A028872(n+2)` -/
def P16725932549437616045.Spec : Prop :=
  ∀ n, P16725932549437616045.a n = (A393231 (n + 1) : ℚ)

end A393231

/-! ## A393231.P7212710002604902597

`n/4*A152811(n+1)`
-/

namespace A393231.P7212710002604902597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4 * (A152811 (n + 1) : ℚ)

end

end A393231.P7212710002604902597

namespace A393231

/-- `n/4*A152811(n+1)` -/
def P7212710002604902597.Spec : Prop :=
  ∀ n, P7212710002604902597.a n = (A393231 (n + 1) : ℚ)

end A393231

/-! ## A393231.P8925901244873464513

`(n+1)*A000096(n)-n`
-/

namespace A393231.P8925901244873464513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000096 n - (n : ℤ)

end

end A393231.P8925901244873464513

namespace A393231

/-- `(n+1)*A000096(n)-n` -/
def P8925901244873464513.Spec : Prop :=
  ∀ n, P8925901244873464513.a n = A393231 (n + 1)

end A393231

/-! ## A393231.P17139286285093861032

`A212343(n+2)+n*(n+2)`
-/

namespace A393231.P17139286285093861032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212343 (n + 2) + (n * (n + 2) : ℤ)

end

end A393231.P17139286285093861032

namespace A393231

/-- `A212343(n+2)+n*(n+2)` -/
def P17139286285093861032.Spec : Prop :=
  ∀ n, P17139286285093861032.a n = A393231 (n + 1)

end A393231

/-! ## A393231.P2849411207351420137

`A006003(n)+A001105(n)`
-/

namespace A393231.P2849411207351420137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 n + A001105 n

end

end A393231.P2849411207351420137

namespace A393231

/-- `A006003(n)+A001105(n)` -/
def P2849411207351420137.Spec : Prop :=
  ∀ n, P2849411207351420137.a n = A393231 (n + 1)

end A393231

/-! ## A393231.P2392329640119221946

`A005449(n)+A002411(n)`
-/

namespace A393231.P2392329640119221946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n + A002411 n

end

end A393231.P2392329640119221946

namespace A393231

/-- `A005449(n)+A002411(n)` -/
def P2392329640119221946.Spec : Prop :=
  ∀ n, P2392329640119221946.a n = A393231 (n + 1)

end A393231

/-!
# A393232: Halting time for Wolfram's 2-state 2-symbol Turing machine 897 when started with n on the tape.

The programs for A393232, the canonical program `A393232.P14261252287719027146` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393232 has offset 1).

The definition of A393232 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A393232.P14261252287719027146

`A047241(A087230(n+1))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A393232

/-- `A047241(A087230(n+1))` -/
def P14261252287719027146.Spec : Prop :=
  ∀ n, P14261252287719027146.a n = A393232 (n + 1)

theorem P14261252287719027146.correct : P14261252287719027146.Spec := by
  intro n
  simp only [A393232, Nat.add_sub_cancel]

end A393232

/-! ## A393232.P10838524215697607048

`A047241(val(A016777(2*n+3), 2))`
-/

namespace A393232.P10838524215697607048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047241 (SequenceMachineLib.valuation (A016777 (2 * n + 3)).toNat 2)

end

end A393232.P10838524215697607048

namespace A393232

/-- `A047241(val(A016777(2*n+3), 2))` -/
def P10838524215697607048.Spec : Prop :=
  ∀ n, P10838524215697607048.a n = A393232 (n + 1)

end A393232

/-! ## A393232.P14017120025618516274

`or(1, 3*A007814(3*n+5))`
-/

namespace A393232.P14017120025618516274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (3 * A007814 (3 * n + 5))

end

end A393232.P14017120025618516274

namespace A393232

/-- `or(1, 3*A007814(3*n+5))` -/
def P14017120025618516274.Spec : Prop :=
  ∀ n, P14017120025618516274.a n = A393232 (n + 1)

end A393232

/-! ## A393232.P12127475087034651298

`A047241(A007814(3*n+5)+1)`
-/

namespace A393232.P12127475087034651298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047241 (A007814 (3 * n + 5) + 1).toNat

end

end A393232.P12127475087034651298

namespace A393232

/-- `A047241(A007814(3*n+5)+1)` -/
def P12127475087034651298.Spec : Prop :=
  ∀ n, P12127475087034651298.a n = A393232 (n + 1)

end A393232

/-! ## A393232.P2296831844241649213

`A293990(2*A007814(3*n+5))`
-/

namespace A393232.P2296831844241649213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293990 (2 * A007814 (3 * n + 5)).toNat

end

end A393232.P2296831844241649213

namespace A393232

/-- `A293990(2*A007814(3*n+5))` -/
def P2296831844241649213.Spec : Prop :=
  ∀ n, P2296831844241649213.a n = A393232 (n + 1)

end A393232

/-! ## A393232.P92444354488834877

`A106249(6*A007814(3*n+5))`
-/

namespace A393232.P92444354488834877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 (6 * A007814 (3 * n + 5)).toNat

end

end A393232.P92444354488834877

namespace A393232

/-- `A106249(6*A007814(3*n+5))` -/
def P92444354488834877.Spec : Prop :=
  ∀ n, P92444354488834877.a n = A393232 (n + 1)

end A393232

/-! ## A393232.P10151006840383495199

`A047617(A001511(3*n+5))-A001511(3*n+5)`
-/

namespace A393232.P10151006840383495199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047617 (A001511 (3 * n + 5)).toNat - A001511 (3 * n + 5)

end

end A393232.P10151006840383495199

namespace A393232

/-- `A047617(A001511(3*n+5))-A001511(3*n+5)` -/
def P10151006840383495199.Spec : Prop :=
  ∀ n, P10151006840383495199.a n = A393232 (n + 1)

end A393232

/-! ## A393232.P10995951469877690373

`A016813(A007814(3*n+5))-A004526(A393233(n+1))`
-/

namespace A393232.P10995951469877690373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A007814 (3 * n + 5)).toNat - A004526 (A393233 (n + 1)).toNat

end

end A393232.P10995951469877690373

namespace A393232

/-- `A016813(A007814(3*n+5))-A004526(A393233(n+1))` -/
def P10995951469877690373.Spec : Prop :=
  ∀ n, P10995951469877690373.a n = A393232 (n + 1)

end A393232

/-! ## A393232.P3644545883851356263

`A047241(val(A194455(2*n+3), 2))`
-/

namespace A393232.P3644545883851356263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047241 (SequenceMachineLib.valuation (A194455 (2 * n + 3)).toNat 2)

end

end A393232.P3644545883851356263

namespace A393232

/-- `A047241(val(A194455(2*n+3), 2))` -/
def P3644545883851356263.Spec : Prop :=
  ∀ n, P3644545883851356263.a n = A393232 (n + 1)

end A393232

/-!
# A393233: Halting time for Wolfram's 2-state 2-symbol Turing machine 919 when started with n on the tape.

The programs for A393233, the canonical program `A393233.P12718541263085678576` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393233 has offset 1).

The definition of A393233 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A393233.P12718541263085678576

`A163980(A087230(n+1))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A393233

/-- `A163980(A087230(n+1))` -/
def P12718541263085678576.Spec : Prop :=
  ∀ n, P12718541263085678576.a n = A393233 (n + 1)

theorem P12718541263085678576.correct : P12718541263085678576.Spec := by
  intro n
  simp only [A393233, Nat.add_sub_cancel]

end A393233

/-! ## A393233.P10769226729218874094

`A247328(or(1, A087230(n+1)))`
-/

namespace A393233.P10769226729218874094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247328 (Int.lor 1 (A087230 (n + 1))).toNat

end

end A393233.P10769226729218874094

namespace A393233

/-- `A247328(or(1, A087230(n+1)))` -/
def P10769226729218874094.Spec : Prop :=
  ∀ n, P10769226729218874094.a n = A393233 (n + 1)

end A393233

/-! ## A393233.P8851101686889230220

`4*A258059(2*n+3)+1`
-/

namespace A393233.P8851101686889230220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A258059 (2 * n + 3) + 1

end

end A393233.P8851101686889230220

namespace A393233

/-- `4*A258059(2*n+3)+1` -/
def P8851101686889230220.Spec : Prop :=
  ∀ n, P8851101686889230220.a n = A393233 (n + 1)

end A393233

/-! ## A393233.P3951261532858885597

`A163980(val(A016777(2*n+3), 2))`
-/

namespace A393233.P3951261532858885597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163980 (SequenceMachineLib.valuation (A016777 (2 * n + 3)).toNat 2)

end

end A393233.P3951261532858885597

namespace A393233

/-- `A163980(val(A016777(2*n+3), 2))` -/
def P3951261532858885597.Spec : Prop :=
  ∀ n, P3951261532858885597.a n = A393233 (n + 1)

end A393233

/-! ## A393233.P3348668810161871647

`A016813(val(A016777(2*n+3), 4))`
-/

namespace A393233.P3348668810161871647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (SequenceMachineLib.valuation (A016777 (2 * n + 3)).toNat 4)

end

end A393233.P3348668810161871647

namespace A393233

/-- `A016813(val(A016777(2*n+3), 4))` -/
def P3348668810161871647.Spec : Prop :=
  ∀ n, P3348668810161871647.a n = A393233 (n + 1)

end A393233

/-! ## A393233.P6900785041136186580

`A163980(A001511(3*n+5))`
-/

namespace A393233.P6900785041136186580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163980 (A001511 (3 * n + 5)).toNat

end

end A393233.P6900785041136186580

namespace A393233

/-- `A163980(A001511(3*n+5))` -/
def P6900785041136186580.Spec : Prop :=
  ∀ n, P6900785041136186580.a n = A393233 (n + 1)

end A393233

/-! ## A393233.P6688176673129567564

`A168277(A001511(3*n+5)+1)`
-/

namespace A393233.P6688176673129567564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168277 (A001511 (3 * n + 5) + 1).toNat

end

end A393233.P6688176673129567564

namespace A393233

/-- `A168277(A001511(3*n+5)+1)` -/
def P6688176673129567564.Spec : Prop :=
  ∀ n, P6688176673129567564.a n = A393233 (n + 1)

end A393233

/-! ## A393233.P14142188433401604360

`A163980(A007814(3*n+5)+1)`
-/

namespace A393233.P14142188433401604360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163980 (A007814 (3 * n + 5) + 1).toNat

end

end A393233.P14142188433401604360

namespace A393233

/-- `A163980(A007814(3*n+5)+1)` -/
def P14142188433401604360.Spec : Prop :=
  ∀ n, P14142188433401604360.a n = A393233 (n + 1)

end A393233

/-! ## A393233.P16593226541571610131

`A004273(or(1, A001511(3*n+5)))`
-/

namespace A393233.P16593226541571610131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (Int.lor 1 (A001511 (3 * n + 5))).toNat

end

end A393233.P16593226541571610131

namespace A393233

/-- `A004273(or(1, A001511(3*n+5)))` -/
def P16593226541571610131.Spec : Prop :=
  ∀ n, P16593226541571610131.a n = A393233 (n + 1)

end A393233

/-! ## A393233.P18196065515315444420

`A247328(or(1, A001511(3*n+5)))`
-/

namespace A393233.P18196065515315444420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247328 (Int.lor 1 (A001511 (3 * n + 5))).toNat

end

end A393233.P18196065515315444420

namespace A393233

/-- `A247328(or(1, A001511(3*n+5)))` -/
def P18196065515315444420.Spec : Prop :=
  ∀ n, P18196065515315444420.a n = A393233 (n + 1)

end A393233

/-! ## A393233.P8112049549290117193

`A016813(floor((1+A007814(3*n+5))/2))`
-/

namespace A393233.P8112049549290117193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 ⌊(1 + A007814 (3 * n + 5) : ℚ) / 2⌋.toNat

end

end A393233.P8112049549290117193

namespace A393233

/-- `A016813(floor((1+A007814(3*n+5))/2))` -/
def P8112049549290117193.Spec : Prop :=
  ∀ n, P8112049549290117193.a n = A393233 (n + 1)

end A393233

/-!
# A393235: Triangle read by rows: T(n,k) is the number of ordered rooted trees with node weights summing to n that have k non-root nodes; such that the root has weight 0, non-root nodes have positive integer weights, and no two adjacent sibling nodes have the same weight.

The programs for A393235, there is no canonical definition to state claims against.
-/

/-! ## A393235.P280703441675098524

`A003714(A050143(n+1)%A167461(n+1))`
-/

namespace A393235.P280703441675098524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (Int.tmod (A050143 (n + 1)) (A167461 (n + 1))).toNat

end

end A393235.P280703441675098524

/-! ## A393235.P17056974174816748532

`A003714(A050143(n+1)^A363340(3*n+1))`
-/

namespace A393235.P17056974174816748532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (SequenceMachineLib.roundAway ((A050143 (n + 1) : ℚ) ^ (A363340 (3 * n + 1) : ℤ))).toNat

end

end A393235.P17056974174816748532

/-! ## A393235.P1540895920610308516

`round(sqrt(A255294(A269945(n))))`
-/

namespace A393235.P1540895920610308516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A255294 (A269945 n).toNat : ℝ))

end

end A393235.P1540895920610308516

/-! ## A393235.P11007404306950379641

`gcd(A003557(A055503(n+2)), 2)*(T(n-1,k-1)+T(n-1,k))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A393235.P11007404306950379641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  Int.gcd (A003557 (A055503 (n + 2)).toNat) 2 * (SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n)

end

end A393235.P11007404306950379641

/-! ## A393235.P13356542767462332539

`A061282(A090181(n)^A000005(n+1))`
-/

namespace A393235.P13356542767462332539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061282 (SequenceMachineLib.roundAway ((A090181 n : ℚ) ^ (A000005 (n + 1) : ℤ))).toNat

end

end A393235.P13356542767462332539

/-!
# A393236: Consider the square spiral with its cells numbered starting at 0. Two players, Black and Red, take turns. When it is Black's turn, he places a knight at the smallest unoccupied cell not attacked by an existing Red knight, and when it is Red's turn, she places a knight at the smallest unoccupied cell not attacked by an existing Black knight. a(n) gives the number of pieces among the first n with a record index when placed, minus the others.

The programs for A393236, there is no canonical definition to state claims against.
-/

/-! ## A393236.P11010357793670950450

`∑[A082551(18+n*A106378(n+1))]`
-/

namespace A393236.P11010357793670950450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (18 + (n : ℤ) * A106378 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393236.P11010357793670950450

/-! ## A393236.P10406965632992332714

`∑[A067856(A048736(∑{d}[n+1, #]-(1+n)))]`
-/

namespace A393236.P10406965632992332714
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067856 (A048736 (∑ d ∈ Nat.divisors (f2 n), d - (1 + n))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393236.P10406965632992332714

/-! ## A393236.P228546050365562589

`∑[A165574(∑[A007690(3*n)])]`
-/

namespace A393236.P228546050365562589
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007690 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165574 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393236.P228546050365562589

/-! ## A393236.P12979587296040999785

`∑[1/A087960(A291322(n+1)*n+3)]`
-/

namespace A393236.P12979587296040999785
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A087960 (A291322 (n + 1) * (n : ℤ) + 3).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393236.P12979587296040999785

/-! ## A393236.P9468539454131615871

`∑[A033999(A080769(3*n+2)*A113103(n))]`
-/

namespace A393236.P9468539454131615871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A080769 (3 * n + 2) * A113103 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393236.P9468539454131615871

/-!
# A393238: Number of transitive relations on an n-set with at most two ordered pairs.

The programs for A393238, the canonical program `A393238.P17553377918589216133` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393238 has offset 0).

The definition of A393238 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393238.P9349905727310314248

`ogf((1-3x+10x^2-3x^3+7x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A393238.P9349905727310314248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 10, -3, 7] [1, -5, 10, -10, 5, -1] n

end

end A393238.P9349905727310314248

namespace A393238

/-- `ogf((1-3x+10x^2-3x^3+7x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P9349905727310314248.Spec : Prop :=
  ∀ n, P9349905727310314248.a n = A393238 n

end A393238

/-! ## A393238.P4220449758028970990

`(n*(n-1)*(n²-n+5)+2*n+2)/2`
-/

namespace A393238.P4220449758028970990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n : ℤ) - 1) * ((n ^ 2 : ℤ) - (n : ℤ) + 5) + (2 * n : ℤ) + 2 : ℚ) / 2

end

end A393238.P4220449758028970990

namespace A393238

/-- `(n*(n-1)*(n²-n+5)+2*n+2)/2` -/
def P4220449758028970990.Spec : Prop :=
  ∀ n, P4220449758028970990.a n = (A393238 n : ℚ)

theorem P4220449758028970990.correct : P4220449758028970990.Spec := by
  intro n
  simp only [A393238, Nat.add_sub_cancel, A393238.P4220449758028970990.a, A393238.P17553377918589216133.a, A349919, A349919.P10104168673941358758.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A393238

/-! ## A393238.P16510611738721046656

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=10, a(3)=37, a(4)=107`
-/

namespace A393238.P16510611738721046656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 10, 37, 107] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A393238.P16510611738721046656

namespace A393238

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P16510611738721046656.Spec : Prop :=
  ∀ n, P16510611738721046656.a n = A393238 n

end A393238

/-! ## A393238.P17553377918589216133

`A349919(n)+n²+1`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A393238

/-- `A349919(n)+n²+1` -/
def P17553377918589216133.Spec : Prop :=
  ∀ n, P17553377918589216133.a n = A393238 n

theorem P17553377918589216133.correct : P17553377918589216133.Spec := by
  intro n
  simp only [A393238]

end A393238

/-! ## A393238.P10009006676537945580

`∑[n]²+1+6*C(n, 4)`
-/

namespace A393238.P10009006676537945580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1 + 6 * Nat.choose n 4

end

end A393238.P10009006676537945580

namespace A393238

/-- `∑[n]²+1+6*C(n, 4)` -/
def P10009006676537945580.Spec : Prop :=
  ∀ n, (P10009006676537945580.a n : ℤ) = A393238 n

end A393238

/-! ## A393238.P5721830618203151448

`C(n²+2-n, 2)+n²`
-/

namespace A393238.P5721830618203151448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n ^ 2 : ℤ) + (2 - (n : ℤ))).toNat 2 + n ^ 2

end

end A393238.P5721830618203151448

namespace A393238

/-- `C(n²+2-n, 2)+n²` -/
def P5721830618203151448.Spec : Prop :=
  ∀ n, (P5721830618203151448.a n : ℤ) = A393238 n

end A393238

/-! ## A393238.P3668652378164697128

`C(3+(n-1)*n, 2)+n-2`
-/

namespace A393238.P3668652378164697128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 + ((n : ℤ) - 1) * (n : ℤ)).toNat 2 + n : ℤ) - 2

end

end A393238.P3668652378164697128

namespace A393238

/-- `C(3+(n-1)*n, 2)+n-2` -/
def P3668652378164697128.Spec : Prop :=
  ∀ n, P3668652378164697128.a n = A393238 n

end A393238

/-! ## A393238.P1831327231752891285

`1+n²+A349919(n)`
-/

namespace A393238.P1831327231752891285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n ^ 2 : ℤ) + A349919 n

end

end A393238.P1831327231752891285

namespace A393238

/-- `1+n²+A349919(n)` -/
def P1831327231752891285.Spec : Prop :=
  ∀ n, P1831327231752891285.a n = A393238 n

theorem P1831327231752891285.correct : P1831327231752891285.Spec := by
  intro n
  simp only [A393238, Nat.add_sub_cancel, A393238.P1831327231752891285.a, A393238.P17553377918589216133.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A393238

/-! ## A393238.P10019269238135932208

`A130883(n)+C((n-1)*n+1, 2)`
-/

namespace A393238.P10019269238135932208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130883 n + (Nat.choose (((n : ℤ) - 1) * (n : ℤ) + 1).toNat 2 : ℤ)

end

end A393238.P10019269238135932208

namespace A393238

/-- `A130883(n)+C((n-1)*n+1, 2)` -/
def P10019269238135932208.Spec : Prop :=
  ∀ n, P10019269238135932208.a n = A393238 n

end A393238

/-! ## A393238.P9609806552989767095

`A002522(n)+5*C(n, 2)+12*C(n, 3)+12*C(n, 4)`
-/

namespace A393238.P9609806552989767095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n + (5 * Nat.choose n 2 + 12 * Nat.choose n 3 + 12 * Nat.choose n 4 : ℤ)

end

end A393238.P9609806552989767095

namespace A393238

/-- `A002522(n)+5*C(n, 2)+12*C(n, 3)+12*C(n, 4)` -/
def P9609806552989767095.Spec : Prop :=
  ∀ n, P9609806552989767095.a n = A393238 n

theorem P9609806552989767095.correct : P9609806552989767095.Spec := by
  intro n
  simp only [A393238, Nat.add_sub_cancel, A393238.P9609806552989767095.a, A393238.P17553377918589216133.a, A002522, A002522.P3778392011853271743.a, A349919, A349919.P10104168673941358758.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A393238

/-! ## A393238.P18099730306726965382

`A058919(n)+A000326(n)`
-/

namespace A393238.P18099730306726965382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058919 n + A000326 n

end

end A393238.P18099730306726965382

namespace A393238

/-- `A058919(n)+A000326(n)` -/
def P18099730306726965382.Spec : Prop :=
  ∀ n, P18099730306726965382.a n = A393238 n

end A393238

/-! ## A393238.P6136640734185220357

`A349919(n)+A002522(n)`
-/

namespace A393238.P6136640734185220357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349919 n + A002522 n

end

end A393238.P6136640734185220357

namespace A393238

/-- `A349919(n)+A002522(n)` -/
def P6136640734185220357.Spec : Prop :=
  ∀ n, P6136640734185220357.a n = A393238 n

theorem P6136640734185220357.correct : P6136640734185220357.Spec := by
  intro n
  simp only [A393238, Nat.add_sub_cancel, A393238.P6136640734185220357.a, A393238.P17553377918589216133.a, A002522, A002522.P3778392011853271743.a, A349919, A349919.P10104168673941358758.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A393238

/-! ## A393238.P10677001411384127113

`A212135(n)+A143689(n)`
-/

namespace A393238.P10677001411384127113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212135 n + A143689 n

end

end A393238.P10677001411384127113

namespace A393238

/-- `A212135(n)+A143689(n)` -/
def P10677001411384127113.Spec : Prop :=
  ∀ n, P10677001411384127113.a n = A393238 n

end A393238

/-! ## A393238.P8987751487262465387

`A393295(n)-A349927(n)`
-/

namespace A393238.P8987751487262465387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393295 n - A349927 n

end

end A393238.P8987751487262465387

namespace A393238

/-- `A393295(n)-A349927(n)` -/
def P8987751487262465387.Spec : Prop :=
  ∀ n, P8987751487262465387.a n = A393238 n

theorem P8987751487262465387.correct : P8987751487262465387.Spec := by
  intro n
  simp only [A393238, Nat.add_sub_cancel, A393238.P8987751487262465387.a, A393238.P17553377918589216133.a, A349919, A349919.P10104168673941358758.a, A349927, A349927.P10752644657425860974.a, A393295, A393295.P4032472479384952545.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A393238

/-! ## A393238.P11156533603561075209

`A394722(n)-(A349927(n)+A349849(n))`
-/

namespace A393238.P11156533603561075209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394722 n - (A349927 n + A349849 n)

end

end A393238.P11156533603561075209

namespace A393238

/-- `A394722(n)-(A349927(n)+A349849(n))` -/
def P11156533603561075209.Spec : Prop :=
  ∀ n, P11156533603561075209.a n = A393238 n

end A393238

/-! ## A393238.P4544845923093916308

`n²+A000217(A002061(n))`
-/

namespace A393238.P4544845923093916308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + A000217 (A002061 n).toNat

end

end A393238.P4544845923093916308

namespace A393238

/-- `n²+A000217(A002061(n))` -/
def P4544845923093916308.Spec : Prop :=
  ∀ n, P4544845923093916308.a n = A393238 n

end A393238

/-! ## A393238.P11552015925620084287

`A034856(A002061(n))+n`
-/

namespace A393238.P11552015925620084287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (A002061 n).toNat + (n : ℤ)

end

end A393238.P11552015925620084287

namespace A393238

/-- `A034856(A002061(n))+n` -/
def P11552015925620084287.Spec : Prop :=
  ∀ n, P11552015925620084287.a n = A393238 n

end A393238

/-!
# A393239: Numbers k such that A000219(k) == 0 (mod 3).

The programs for A393239, there is no canonical definition to state claims against.
-/

/-! ## A393239.P3269686569773526339

`eq[0, A000219(n)%3]`
-/

namespace A393239.P3269686569773526339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000219 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A393239.P3269686569773526339

/-! ## A393239.P377474560147277843

`eq[lcm(3, A383354(n)), A383354(n)]`
-/

namespace A393239.P377474560147277843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A383354 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383354 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A393239.P377474560147277843

/-!
# A393240: a(n) is the permanent of the n-th order Hankel matrix whose generic element is given by A000045(i+j-1) with i,j = 1, ..., n.

The programs for A393240, there is no canonical definition to state claims against.
-/

/-! ## A393240.P16251689841115319037

`A399367(A149023(n))`
-/

namespace A393240.P16251689841115319037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399367 (A149023 n).toNat

end

end A393240.P16251689841115319037

/-!
# A393244: a(n) = Sum_{k=0..floor(n/3)} binomial(2*k,k) * binomial(n,3*k).

The programs for A393244, the canonical program `A393244.P4168664564217967721` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393244 has offset 0).

The definition of A393244 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/3), C(2*#, #)*C(n, 3*#)]` (program `A393244.P4168664564217967721`, by `A393244.P4168664564217967721.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A393244.P4168664564217967721

`∑{#}[floor(n/3), C(2*#, #)*C(n, 3*#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393244

/-- `∑{#}[floor(n/3), C(2*#, #)*C(n, 3*#)]` -/
def P4168664564217967721.Spec : Prop :=
  ∀ n, (P4168664564217967721.a n : ℤ) = A393244 n

theorem P4168664564217967721.correct : P4168664564217967721.Spec := by
  intro n
  simp only [A393244]

end A393244

/-! ## A393244.P13019414380937422124

`∑[A393274(n)]`
-/

namespace A393244.P13019414380937422124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393274 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393244.P13019414380937422124

namespace A393244

/-- `∑[A393274(n)]` -/
def P13019414380937422124.Spec : Prop :=
  ∀ n, P13019414380937422124.a n = A393244 n

end A393244

/-! ## A393244.P17575527019897169366

`A225055(A097122(n))`
-/

namespace A393244.P17575527019897169366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225055 (A097122 n).toNat

end

end A393244.P17575527019897169366

namespace A393244

/-- `A225055(A097122(n))` -/
def P17575527019897169366.Spec : Prop :=
  ∀ n, P17575527019897169366.a n = A393244 n

end A393244

/-! ## A393244.P5194223692111187749

`A052329(n+1)+A010815(A296603(3*n+2))`
-/

namespace A393244.P5194223692111187749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052329 (n + 1) + A010815 (A296603 (3 * n + 2)).toNat

end

end A393244.P5194223692111187749

namespace A393244

/-- `A052329(n+1)+A010815(A296603(3*n+2))` -/
def P5194223692111187749.Spec : Prop :=
  ∀ n, P5194223692111187749.a n = A393244 n

end A393244

/-!
# A393245: a(n) = Sum_{k=0..floor(n/4)} binomial(2*k,k) * binomial(n,4*k).

The programs for A393245, the canonical program `A393245.P4416118040040543713` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393245 has offset 0).

The definition of A393245 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/4), C(2*#, #)*C(n, 4*#)]` (program `A393245.P4416118040040543713`, by `A393245.P4416118040040543713.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A393245.P4416118040040543713

`∑{#}[floor(n/4), C(2*#, #)*C(n, 4*#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393245

/-- `∑{#}[floor(n/4), C(2*#, #)*C(n, 4*#)]` -/
def P4416118040040543713.Spec : Prop :=
  ∀ n, (P4416118040040543713.a n : ℤ) = A393245 n

theorem P4416118040040543713.correct : P4416118040040543713.Spec := by
  intro n
  simp only [A393245]

end A393245

/-! ## A393245.P11539044433453019974

`∑[A393275(n)]`
-/

namespace A393245.P11539044433453019974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393245.P11539044433453019974

namespace A393245

/-- `∑[A393275(n)]` -/
def P11539044433453019974.Spec : Prop :=
  ∀ n, P11539044433453019974.a n = A393245 n

end A393245

/-! ## A393245.P11688478747401581033

`A130446(A097081(n))`
-/

namespace A393245.P11688478747401581033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (A097081 n).toNat

end

end A393245.P11688478747401581033

namespace A393245

/-- `A130446(A097081(n))` -/
def P11688478747401581033.Spec : Prop :=
  ∀ n, P11688478747401581033.a n = A393245 n

end A393245

/-! ## A393245.P15185568123753155063

`A326536(A387508(n))`
-/

namespace A393245.P15185568123753155063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326536 (A387508 n).toNat

end

end A393245.P15185568123753155063

namespace A393245

/-- `A326536(A387508(n))` -/
def P15185568123753155063.Spec : Prop :=
  ∀ n, P15185568123753155063.a n = A393245 n

end A393245

/-! ## A393245.P2003680562150395965

`∑[A338466(A097119(n))]-n`
-/

namespace A393245.P2003680562150395965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338466 (A097119 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A393245.P2003680562150395965

namespace A393245

/-- `∑[A338466(A097119(n))]-n` -/
def P2003680562150395965.Spec : Prop :=
  ∀ n, P2003680562150395965.a n = A393245 n

end A393245

/-!
# A393246: a(n) = Sum_{k=0..floor(n/4)} binomial(2*k,k) * binomial(n-k,3*k).

The programs for A393246, the canonical program `A393246.P6287185739706933134` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393246 has offset 0).

The definition of A393246 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/4), C(2*#, #)*C(n-#, 3*#)]` (program `A393246.P6287185739706933134`, by `A393246.P6287185739706933134.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A393246.P6287185739706933134

`∑{#}[floor(n/4), C(2*#, #)*C(n-#, 3*#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393246

/-- `∑{#}[floor(n/4), C(2*#, #)*C(n-#, 3*#)]` -/
def P6287185739706933134.Spec : Prop :=
  ∀ n, (P6287185739706933134.a n : ℤ) = A393246 n

theorem P6287185739706933134.correct : P6287185739706933134.Spec := by
  intro n
  simp only [A393246]

end A393246

/-! ## A393246.P12893062690240616604

`∑[A393276(n)]`
-/

namespace A393246.P12893062690240616604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393246.P12893062690240616604

namespace A393246

/-- `∑[A393276(n)]` -/
def P12893062690240616604.Spec : Prop :=
  ∀ n, P12893062690240616604.a n = A393246 n

end A393246

/-! ## A393246.P1206054275777425191

`A225055(A097120(n))`
-/

namespace A393246.P1206054275777425191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225055 (A097120 n).toNat

end

end A393246.P1206054275777425191

namespace A393246

/-- `A225055(A097120(n))` -/
def P1206054275777425191.Spec : Prop :=
  ∀ n, P1206054275777425191.a n = A393246 n

end A393246

/-! ## A393246.P14829962448337122676

`A082375(A364552(n)²)`
-/

namespace A393246.P14829962448337122676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082375 (A364552 n ^ 2).toNat

end

end A393246.P14829962448337122676

namespace A393246

/-- `A082375(A364552(n)²)` -/
def P14829962448337122676.Spec : Prop :=
  ∀ n, P14829962448337122676.a n = A393246 n

end A393246

/-! ## A393246.P13439758931940577260

`A082375(A364552(n)^2)`
-/

namespace A393246.P13439758931940577260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082375 (A364552 n ^ 2).toNat

end

end A393246.P13439758931940577260

namespace A393246

/-- `A082375(A364552(n)^2)` -/
def P13439758931940577260.Spec : Prop :=
  ∀ n, P13439758931940577260.a n = A393246 n

end A393246

/-!
# A393247: a(n) = Sum_{k=0..floor(n/5)} binomial(2*k,k) * binomial(n-2*k,3*k).

The programs for A393247, the canonical program `A393247.P9954757291140051261` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393247 has offset 0).

The definition of A393247 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/5), C(2*#, #)*C(n-2*#, 3*#)]` (program `A393247.P9954757291140051261`, by `A393247.P9954757291140051261.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A393247.P9954757291140051261

`∑{#}[floor(n/5), C(2*#, #)*C(n-2*#, 3*#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393247

/-- `∑{#}[floor(n/5), C(2*#, #)*C(n-2*#, 3*#)]` -/
def P9954757291140051261.Spec : Prop :=
  ∀ n, (P9954757291140051261.a n : ℤ) = A393247 n

theorem P9954757291140051261.correct : P9954757291140051261.Spec := by
  intro n
  simp only [A393247]

end A393247

/-! ## A393247.P3950422943322011099

`A124741(2*A365252(n))`
-/

namespace A393247.P3950422943322011099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (2 * A365252 n).toNat

end

end A393247.P3950422943322011099

namespace A393247

/-- `A124741(2*A365252(n))` -/
def P3950422943322011099.Spec : Prop :=
  ∀ n, P3950422943322011099.a n = A393247 n

end A393247

/-! ## A393247.P6774670440072242425

`A124741(A365252(n)+A365252(n))`
-/

namespace A393247.P6774670440072242425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A365252 n + A365252 n).toNat

end

end A393247.P6774670440072242425

namespace A393247

/-- `A124741(A365252(n)+A365252(n))` -/
def P6774670440072242425.Spec : Prop :=
  ∀ n, P6774670440072242425.a n = A393247 n

end A393247

/-! ## A393247.P17220050897875640388

`A100135(A062399(n+1))`
-/

namespace A393247.P17220050897875640388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100135 (A062399 (n + 1)).toNat

end

end A393247.P17220050897875640388

namespace A393247

/-- `A100135(A062399(n+1))` -/
def P17220050897875640388.Spec : Prop :=
  ∀ n, P17220050897875640388.a n = A393247 n

end A393247

/-! ## A393247.P2621639299543927292

`A100135(A087036(n)+1)`
-/

namespace A393247.P2621639299543927292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100135 (A087036 n + 1).toNat

end

end A393247.P2621639299543927292

namespace A393247

/-- `A100135(A087036(n)+1)` -/
def P2621639299543927292.Spec : Prop :=
  ∀ n, P2621639299543927292.a n = A393247 n

end A393247

/-!
# A393249: a(n) = Sum_{k=0..floor(n/5)} binomial(2*k,k) * binomial(n-4*k,k).

The programs for A393249, the canonical program `A393249.P13160133525303725470` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393249 has offset 0).

The definition of A393249 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/5), C(2*#, #)*C(n-4*#, #)]` (program `A393249.P13160133525303725470`, by `A393249.P13160133525303725470.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A393249.P13160133525303725470

`∑{#}[floor(n/5), C(2*#, #)*C(n-4*#, #)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393249

/-- `∑{#}[floor(n/5), C(2*#, #)*C(n-4*#, #)]` -/
def P13160133525303725470.Spec : Prop :=
  ∀ n, (P13160133525303725470.a n : ℤ) = A393249 n

theorem P13160133525303725470.correct : P13160133525303725470.Spec := by
  intro n
  simp only [A393249]

end A393249

/-! ## A393249.P17273581766802289575

`A218452(A230078(n+1)+1)`
-/

namespace A393249.P17273581766802289575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218452 (A230078 (n + 1) + 1).toNat

end

end A393249.P17273581766802289575

namespace A393249

/-- `A218452(A230078(n+1)+1)` -/
def P17273581766802289575.Spec : Prop :=
  ∀ n, P17273581766802289575.a n = A393249 n

end A393249

/-!
# A393250: a(n) = Sum_{k=0..floor(n/6)} binomial(2*k,k) * binomial(n-3*k,3*k).

The programs for A393250, the canonical program `A393250.P1292396101563155349` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393250 has offset 0).

The definition of A393250 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/6), C(2*#, #)*C(n-3*#, 3*#)]` (program `A393250.P1292396101563155349`, by `A393250.P1292396101563155349.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A393250.P1292396101563155349

`∑{#}[floor(n/6), C(2*#, #)*C(n-3*#, 3*#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393250

/-- `∑{#}[floor(n/6), C(2*#, #)*C(n-3*#, 3*#)]` -/
def P1292396101563155349.Spec : Prop :=
  ∀ n, (P1292396101563155349.a n : ℤ) = A393250 n

theorem P1292396101563155349.correct : P1292396101563155349.Spec := by
  intro n
  simp only [A393250]

end A393250

/-! ## A393250.P5964277647304757697

`A361640(A100136(n))`
-/

namespace A393250.P5964277647304757697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361640 (A100136 n).toNat

end

end A393250.P5964277647304757697

namespace A393250

/-- `A361640(A100136(n))` -/
def P5964277647304757697.Spec : Prop :=
  ∀ n, P5964277647304757697.a n = A393250 n

end A393250

/-! ## A393250.P958070034791463551

`A008611(2*A100136(n))`
-/

namespace A393250.P958070034791463551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (2 * A100136 n).toNat

end

end A393250.P958070034791463551

namespace A393250

/-- `A008611(2*A100136(n))` -/
def P958070034791463551.Spec : Prop :=
  ∀ n, P958070034791463551.a n = A393250 n

end A393250

/-! ## A393250.P17236992134932371247

`A008611(A100136(n)+A100136(n))`
-/

namespace A393250.P17236992134932371247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A100136 n + A100136 n).toNat

end

end A393250.P17236992134932371247

namespace A393250

/-- `A008611(A100136(n)+A100136(n))` -/
def P17236992134932371247.Spec : Prop :=
  ∀ n, P17236992134932371247.a n = A393250 n

end A393250

/-! ## A393250.P16936727667896343635

`A225055(A100136(n))`
-/

namespace A393250.P16936727667896343635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225055 (A100136 n).toNat

end

end A393250.P16936727667896343635

namespace A393250

/-- `A225055(A100136(n))` -/
def P16936727667896343635.Spec : Prop :=
  ∀ n, P16936727667896343635.a n = A393250 n

end A393250

/-!
# A393251: a(n) = Sum_{k=0..floor(n/6)} binomial(2*k,k) * binomial(n-4*k,2*k).

The programs for A393251, the canonical program `A393251.P7131175545142886393` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393251 has offset 0).

The definition of A393251 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/6), C(2*#, #)*C(n-4*#, 2*#)]` (program `A393251.P7131175545142886393`, by `A393251.P7131175545142886393.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A393251.P7131175545142886393

`∑{#}[floor(n/6), C(2*#, #)*C(n-4*#, 2*#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393251

/-- `∑{#}[floor(n/6), C(2*#, #)*C(n-4*#, 2*#)]` -/
def P7131175545142886393.Spec : Prop :=
  ∀ n, (P7131175545142886393.a n : ℤ) = A393251 n

theorem P7131175545142886393.correct : P7131175545142886393.Spec := by
  intro n
  simp only [A393251]

end A393251

/-! ## A393251.P451940612313211054

`A178568(A025727(n+1))`
-/

namespace A393251.P451940612313211054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178568 (A025727 (n + 1)).toNat

end

end A393251.P451940612313211054

namespace A393251

/-- `A178568(A025727(n+1))` -/
def P451940612313211054.Spec : Prop :=
  ∀ n, P451940612313211054.a n = A393251 n

end A393251

/-! ## A393251.P10877212447313177951

`A006670(A250283(n+1))`
-/

namespace A393251.P10877212447313177951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006670 (A250283 (n + 1)).toNat

end

end A393251.P10877212447313177951

namespace A393251

/-- `A006670(A250283(n+1))` -/
def P10877212447313177951.Spec : Prop :=
  ∀ n, P10877212447313177951.a n = A393251 n

end A393251

/-! ## A393251.P9535541928397974466

`A398364(A004896(n+2))`
-/

namespace A393251.P9535541928397974466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398364 (A004896 (n + 2)).toNat

end

end A393251.P9535541928397974466

namespace A393251

/-- `A398364(A004896(n+2))` -/
def P9535541928397974466.Spec : Prop :=
  ∀ n, P9535541928397974466.a n = A393251 n

end A393251

/-! ## A393251.P6594271058496095488

`A398364(A004907(n+2))`
-/

namespace A393251.P6594271058496095488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398364 (A004907 (n + 2)).toNat

end

end A393251.P6594271058496095488

namespace A393251

/-- `A398364(A004907(n+2))` -/
def P6594271058496095488.Spec : Prop :=
  ∀ n, P6594271058496095488.a n = A393251 n

end A393251

/-!
# A393253: Manhattan distance from 0 to n in perfect shuffle array of base-2 expansions.

The programs for A393253, the canonical program `A393253.P9461804458729927362` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393253 has offset 0).

The definition of A393253 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059905, A059906, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A393253.P9461804458729927362

`A059905(n)+A059906(n)`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A393253

/-- `A059905(n)+A059906(n)` -/
def P9461804458729927362.Spec : Prop :=
  ∀ n, P9461804458729927362.a n = A393253 n

theorem P9461804458729927362.correct : P9461804458729927362.Spec := by
  intro n
  simp only [A393253]

end A393253

/-! ## A393253.P8243788411072923449

`row(A054239(n))`
-/

namespace A393253.P8243788411072923449
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A054239 n).toNat

end

end A393253.P8243788411072923449

namespace A393253

/-- `row(A054239(n))` -/
def P8243788411072923449.Spec : Prop :=
  ∀ n, (P8243788411072923449.a n : ℤ) = A393253 n

end A393253

/-! ## A393253.P943381402603956545

`A059261(A163355(n))`
-/

namespace A393253.P943381402603956545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059261 (A163355 n).toNat

end

end A393253.P943381402603956545

namespace A393253

/-- `A059261(A163355(n))` -/
def P943381402603956545.Spec : Prop :=
  ∀ n, P943381402603956545.a n = A393253 n

end A393253

/-! ## A393253.P18011034664272306115

`A059261(A380110(n))`
-/

namespace A393253.P18011034664272306115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059261 (A380110 n).toNat

end

end A393253.P18011034664272306115

namespace A393253

/-- `A059261(A380110(n))` -/
def P18011034664272306115.Spec : Prop :=
  ∀ n, P18011034664272306115.a n = A393253 n

end A393253

/-! ## A393253.P8633230266606819525

`A292373(n)+A309952(n)+A292373(n)`
-/

namespace A393253.P8633230266606819525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 n + (A309952 n + A292373 n)

end

end A393253.P8633230266606819525

namespace A393253

/-- `A292373(n)+A309952(n)+A292373(n)` -/
def P8633230266606819525.Spec : Prop :=
  ∀ n, P8633230266606819525.a n = A393253 n

end A393253

/-! ## A393253.P457574440238094870

`A371459(n)+A371442(n)`
-/

namespace A393253.P457574440238094870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371459 n + A371442 n

end

end A393253.P457574440238094870

namespace A393253

/-- `A371459(n)+A371442(n)` -/
def P457574440238094870.Spec : Prop :=
  ∀ n, P457574440238094870.a n = A393253 n

end A393253

/-! ## A393253.P4169749115221168475

`A371442(n)+A371442(A377415(n))`
-/

namespace A393253.P4169749115221168475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371442 n + A371442 (A377415 n).toNat

end

end A393253.P4169749115221168475

namespace A393253

/-- `A371442(n)+A371442(A377415(n))` -/
def P4169749115221168475.Spec : Prop :=
  ∀ n, P4169749115221168475.a n = A393253 n

end A393253

/-! ## A393253.P10540007612854830121

`A054240(A054239(n)-A059906(n))`
-/

namespace A393253.P10540007612854830121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054240 (A054239 n - A059906 n).toNat

end

end A393253.P10540007612854830121

namespace A393253

/-- `A054240(A054239(n)-A059906(n))` -/
def P10540007612854830121.Spec : Prop :=
  ∀ n, P10540007612854830121.a n = A393253 n

end A393253

/-! ## A393253.P13118221476516252533

`floor(A065362(2*n+1)/2)`
-/

namespace A393253.P13118221476516252533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A065362 (2 * n + 1) : ℚ) / 2⌋

end

end A393253.P13118221476516252533

namespace A393253

/-- `floor(A065362(2*n+1)/2)` -/
def P13118221476516252533.Spec : Prop :=
  ∀ n, P13118221476516252533.a n = A393253 n

end A393253

/-! ## A393253.P9284940102098403120

`A059906(2*n)+A059906(n)`
-/

namespace A393253.P9284940102098403120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (2 * n) + A059906 n

end

end A393253.P9284940102098403120

namespace A393253

/-- `A059906(2*n)+A059906(n)` -/
def P9284940102098403120.Spec : Prop :=
  ∀ n, P9284940102098403120.a n = A393253 n

end A393253

/-! ## A393253.P9594086853464324749

`A059905(A057300(n)+n)`
-/

namespace A393253.P9594086853464324749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (A057300 n + (n : ℤ)).toNat

end

end A393253.P9594086853464324749

namespace A393253

/-- `A059905(A057300(n)+n)` -/
def P9594086853464324749.Spec : Prop :=
  ∀ n, P9594086853464324749.a n = A393253 n

end A393253

/-! ## A393253.P12985499892380524397

`A059906(A057300(A057300(n)+n))`
-/

namespace A393253.P12985499892380524397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (A057300 (A057300 n + (n : ℤ)).toNat).toNat

end

end A393253.P12985499892380524397

namespace A393253

/-- `A059906(A057300(A057300(n)+n))` -/
def P12985499892380524397.Spec : Prop :=
  ∀ n, P12985499892380524397.a n = A393253 n

end A393253

/-! ## A393253.P3989141706196312264

`A059905(A163235(A163234(n))+n)`
-/

namespace A393253.P3989141706196312264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (A163235 (A163234 n).toNat + (n : ℤ)).toNat

end

end A393253.P3989141706196312264

namespace A393253

/-- `A059905(A163235(A163234(n))+n)` -/
def P3989141706196312264.Spec : Prop :=
  ∀ n, P3989141706196312264.a n = A393253 n

end A393253

/-! ## A393253.P282891524138884464

`A059905(A163233(A163236(n))+n)`
-/

namespace A393253.P282891524138884464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (A163233 (A163236 n).toNat + (n : ℤ)).toNat

end

end A393253.P282891524138884464

namespace A393253

/-- `A059905(A163233(A163236(n))+n)` -/
def P282891524138884464.Spec : Prop :=
  ∀ n, P282891524138884464.a n = A393253 n

end A393253

/-!
# A393255: Indices k where A059261(k)=A393253(k).

The programs for A393255, there is no canonical definition to state claims against.
-/

/-! ## A393255.P14532622322678223259

`eq[A059261(n), A393253(n)]`
-/

namespace A393255.P14532622322678223259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059261 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393253 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A393255.P14532622322678223259

/-! ## A393255.P8198822229125677084

`eq[A393253(n), A393253(A163356(n))]`
-/

namespace A393255.P8198822229125677084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393253 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393253 (A163356 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A393255.P8198822229125677084

/-!
# A393260: Number of distinct results from equations consisting of n copies of the number n and one of the four basic arithmetic operations {+, -, *, /} between each pair with multiplication and division taking precedence over addition and subtraction.

The programs for A393260, there is no canonical definition to state claims against.
-/

/-! ## A393260.P1483480908559365168

`A129260(A097163(n))`
-/

namespace A393260.P1483480908559365168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129260 (A097163 n).toNat

end

end A393260.P1483480908559365168

/-! ## A393260.P1004480332087717427

`A260643(A081056(n)*A293606(n)²)`
-/

namespace A393260.P1004480332087717427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260643 (A081056 n * A293606 n ^ 2).toNat

end

end A393260.P1004480332087717427

/-!
# A393261: Irregular table T(n,k) = 2^(prime(n)-k) * prime(n)^k, n >= 1, k = 1..prime(n)-1.

The programs for A393261, there is no canonical definition to state claims against.
-/

/-! ## A393261.P8577475586851739321

`A316115(A173931(n+1))`
-/

namespace A393261.P8577475586851739321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316115 (A173931 (n + 1)).toNat

end

end A393261.P8577475586851739321

/-!
# A393262: Number of plane partitions of n with exactly one smallest part.

The programs for A393262, there is no canonical definition to state claims against.
-/

/-! ## A393262.P4328295338232789753

`A392357(eq[1, col(n)])`
-/

namespace A393262.P4328295338232789753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392357 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A393262.P4328295338232789753

/-! ## A393262.P6617898087253376386

`A392357(∑[n+1]+1)`
-/

namespace A393262.P6617898087253376386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392357 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A393262.P6617898087253376386

/-!
# A393267: Array read by descending antidiagonals T(n,k) is the minimum total surface area of k-element sets of distinct integer-sided cuboids that fill an n X n X n cube.

The programs for A393267, there is no canonical definition to state claims against.
-/

/-! ## A393267.P9585319651387744136

`A284787(A120211(n+2))`
-/

namespace A393267.P9585319651387744136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284787 (A120211 (n + 2)).toNat

end

end A393267.P9585319651387744136

/-!
# A393272: a(0) = 0, a(n) = Sum_{k=1..n} binomial(n+1, k+1)*A000169(k) for n > 0.

The programs for A393272, the canonical program `A393272.P5469321113303359746` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393272 has offset 0).

The definition of A393272 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n-1, C(n+1, #+1+1)*A000169(#+1)]` (program `A393272.P5469321113303359746`, by `A393272.P5469321113303359746.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A393272.P3032541515588673614

`2*a(n-1)-a(n-2)+A038051(n)` with `a(0)=0, a(1)=1`
-/

namespace A393272.P3032541515588673614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * a (n - 1) - a (n - 2) + A038051 n

end

end A393272.P3032541515588673614

namespace A393272

/-- `2*a(n-1)-a(n-2)+A038051(n)` -/
def P3032541515588673614.Spec : Prop :=
  ∀ n, P3032541515588673614.a n = A393272 n

end A393272

/-! ## A393272.P7190675517649760879

`n+∑{#}[n-2, C(n, #)*A258387(n-1-#)]`
-/

namespace A393272.P7190675517649760879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose n k : ℤ) * A258387 ((n : ℤ) - 1 - (k : ℤ)).toNat

end

end A393272.P7190675517649760879

namespace A393272

/-- `n+∑{#}[n-2, C(n, #)*A258387(n-1-#)]` -/
def P7190675517649760879.Spec : Prop :=
  ∀ n, P7190675517649760879.a n = A393272 n

end A393272

/-! ## A393272.P5469321113303359746

`∑{#}[n-1, C(n+1, #+1+1)*A000169(#+1)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A393272

/-- `∑{#}[n-1, C(n+1, #+1+1)*A000169(#+1)]` -/
def P5469321113303359746.Spec : Prop :=
  ∀ n, P5469321113303359746.a n = A393272 n

theorem P5469321113303359746.correct : P5469321113303359746.Spec := by
  intro n
  simp only [A393272]

end A393272

/-! ## A393272.P473962851514780324

`∑[A277473(n)]`
-/

namespace A393272.P473962851514780324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393272.P473962851514780324

namespace A393272

/-- `∑[A277473(n)]` -/
def P473962851514780324.Spec : Prop :=
  ∀ n, P473962851514780324.a n = A393272 n

end A393272

/-! ## A393272.P9444205847202416601

`∑[A088957(abs(1-n))*n]`
-/

namespace A393272.P9444205847202416601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088957 |1 - (n : ℤ)|.toNat * (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393272.P9444205847202416601

namespace A393272

/-- `∑[A088957(abs(1-n))*n]` -/
def P9444205847202416601.Spec : Prop :=
  ∀ n, P9444205847202416601.a n = A393272 n

end A393272

/-! ## A393272.P16786103237060590183

`∑[A277478(n)+A277476(n)]`
-/

namespace A393272.P16786103237060590183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277478 n + A277476 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393272.P16786103237060590183

namespace A393272

/-- `∑[A277478(n)+A277476(n)]` -/
def P16786103237060590183.Spec : Prop :=
  ∀ n, P16786103237060590183.a n = A393272 n

end A393272

/-! ## A393272.P7137738738389696899

`∑[2*A277478(n)-A277474(n)]`
-/

namespace A393272.P7137738738389696899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A277478 n - A277474 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393272.P7137738738389696899

namespace A393272

/-- `∑[2*A277478(n)-A277474(n)]` -/
def P7137738738389696899.Spec : Prop :=
  ∀ n, P7137738738389696899.a n = A393272 n

end A393272

/-! ## A393272.P1043180998623644988

`∑[∑[A038051(n+1)]-A038051(n+1)]`
-/

namespace A393272.P1043180998623644988
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038051 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A038051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393272.P1043180998623644988

namespace A393272

/-- `∑[∑[A038051(n+1)]-A038051(n+1)]` -/
def P1043180998623644988.Spec : Prop :=
  ∀ n, P1043180998623644988.a n = A393272 n

end A393272

/-!
# A393273: Lexicographically earliest sequence of distinct prime numbers such that for any n > 0, the bottom entry in the absolute difference triangle of the first n terms is different from 1.

The programs for A393273, there is no canonical definition to state claims against.
-/

/-! ## A393273.P5710698991976884368

`A393281(1+∑[n])`
-/

namespace A393273.P5710698991976884368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393281 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A393273.P5710698991976884368

/-! ## A393273.P12661909523023678659

`A393281(A000124(n))%A281699(n)`
-/

namespace A393273.P12661909523023678659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A393281 (A000124 n).toNat) (A281699 n)

end

end A393273.P12661909523023678659

/-! ## A393273.P4223914590946900303

`A393281(A000124(n))+A000007(n+4)`
-/

namespace A393273.P4223914590946900303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393281 (A000124 n).toNat + A000007 (n + 4)

end

end A393273.P4223914590946900303

/-! ## A393273.P5425609417768934236

`A393281(A000124(n))%A069507(n)`
-/

namespace A393273.P5425609417768934236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A393281 (A000124 n).toNat) (A069507 n)

end

end A393273.P5425609417768934236

/-!
# A393274: a(n) = Sum_{k=0..floor(n/3)} binomial(2*k,k) * binomial(n-1,n-3*k).

The programs for A393274, there is no canonical definition to state claims against.
-/

/-! ## A393274.P11672413510408319584

`A001227(A007097(n))*A361932(n)`
-/

namespace A393274.P11672413510408319584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A007097 n).toNat * A361932 n

end

end A393274.P11672413510408319584

/-! ## A393274.P3274439472698168915

`A020639(A000142(n))*A361932(n)`
-/

namespace A393274.P3274439472698168915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000142 n).toNat * A361932 n

end

end A393274.P3274439472698168915

/-! ## A393274.P9721155507925122695

`A257990(A069871(n+1))*A361932(n)`
-/

namespace A393274.P9721155507925122695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (A069871 (n + 1)).toNat * A361932 n

end

end A393274.P9721155507925122695

/-! ## A393274.P3391923999547647720

`A257990(A319869(n+1))*A361932(n)`
-/

namespace A393274.P3391923999547647720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (A319869 (n + 1)).toNat * A361932 n

end

end A393274.P3391923999547647720

/-! ## A393274.P3024477337832497491

`A329614(A088810(2*(n+2)))*A361932(n)`
-/

namespace A393274.P3024477337832497491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329614 (A088810 (2 * (n + 2))).toNat * A361932 n

end

end A393274.P3024477337832497491

/-!
# A393275: a(n) = Sum_{k=0..floor(n/4)} binomial(2*k,k) * binomial(n-1,n-4*k).

The programs for A393275, there is no canonical definition to state claims against.
-/

/-! ## A393275.P12018940019006443793

`A338466(A097119(n))-char[col(n)+1]`
-/

namespace A393275.P12018940019006443793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338466 (A097119 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A393275.P12018940019006443793

/-! ## A393275.P1568060869156068721

`A294748(A144700(n))-char[col(n)+1]`
-/

namespace A393275.P1568060869156068721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294748 (A144700 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A393275.P1568060869156068721

/-! ## A393275.P2891003830815650143

`A393246(n)-A329747(A000302(n))`
-/

namespace A393275.P2891003830815650143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393246 n - A329747 (A000302 n).toNat

end

end A393275.P2891003830815650143

/-! ## A393275.P710447344425413979

`A338466(A097119(n))-char[A038722(n+1)]`
-/

namespace A393275.P710447344425413979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338466 (A097119 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A393275.P710447344425413979

/-! ## A393275.P12075458580003022889

`A294748(A144700(n))-char[A038722(n+1)]`
-/

namespace A393275.P12075458580003022889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294748 (A144700 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A393275.P12075458580003022889

/-!
# A393276: a(n) = Sum_{k=0..floor(n/4)} binomial(2*k,k) * binomial(n-k-1,n-4*k).

The programs for A393276, there is no canonical definition to state claims against.
-/

/-! ## A393276.P17311816945396348221

`A093914(A020714(n))*A364403(n)`
-/

namespace A393276.P17311816945396348221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093914 (A020714 n).toNat * A364403 n

end

end A393276.P17311816945396348221

/-! ## A393276.P8759302332740402104

`A082064(A139056(n+1))*A364403(n)`
-/

namespace A393276.P8759302332740402104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082064 (A139056 (n + 1)).toNat * A364403 n

end

end A393276.P8759302332740402104

/-! ## A393276.P9141346116628416441

`A093914(A000085(n))*A364403(n)`
-/

namespace A393276.P9141346116628416441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093914 (A000085 n).toNat * A364403 n

end

end A393276.P9141346116628416441

/-! ## A393276.P9391713838522312903

`A040000(A054782(3*n))*A364403(n)`
-/

namespace A393276.P9391713838522312903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 (A054782 (3 * n)).toNat * A364403 n

end

end A393276.P9391713838522312903

/-! ## A393276.P4779426345658527960

`A098482(n)-A275714(A016754(n))`
-/

namespace A393276.P4779426345658527960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098482 n - A275714 (A016754 n).toNat

end

end A393276.P4779426345658527960

/-!
# A393277: a(n) = Sum_{k=0..floor(n/4)} binomial(2*k,k) * binomial(n-2*k-1,n-4*k).

The programs for A393277, there is no canonical definition to state claims against.
-/

/-! ## A393277.P5797839366177947278

`A331216(A084170(n+1))-A331216(A084170(n))`
-/

namespace A393277.P5797839366177947278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331216 (A084170 (n + 1)).toNat - A331216 (A084170 n).toNat

end

end A393277.P5797839366177947278

/-!
# A393278: Row 4 of A330942.

The programs for A393278, there is no canonical definition to state claims against.
-/

/-! ## A393278.P1130316819388474349

`A330942(eq[4, col(n)])`
-/

namespace A393278.P1130316819388474349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330942 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A393278.P1130316819388474349

/-! ## A393278.P15241412990007806852

`A330942(eq[4, A002262(n)])`
-/

namespace A393278.P15241412990007806852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330942 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A393278.P15241412990007806852

/-! ## A393278.P6537825838929171878

`A330942(A167614(n+3)+1)`
-/

namespace A393278.P6537825838929171878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330942 (A167614 (n + 3) + 1).toNat

end

end A393278.P6537825838929171878

/-! ## A393278.P10774797439101053763

`A330942(A134869(n+4)+3)`
-/

namespace A393278.P10774797439101053763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330942 (A134869 (n + 4) + 3).toNat

end

end A393278.P10774797439101053763

/-! ## A393278.P6604010303934889589

`A330942(A000217(n+4)+4)`
-/

namespace A393278.P6604010303934889589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330942 (A000217 (n + 4) + 4).toNat

end

end A393278.P6604010303934889589

/-!
# A393279: Row 5 of A330942.

The programs for A393279, there is no canonical definition to state claims against.
-/

/-! ## A393279.P15884284591428261899

`A330942(A167499(4+n))`
-/

namespace A393279.P15884284591428261899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330942 (A167499 (4 + n)).toNat

end

end A393279.P15884284591428261899

/-! ## A393279.P3303302676212935959

`A330942(eq[5, A002262(n)])`
-/

namespace A393279.P3303302676212935959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330942 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A393279.P3303302676212935959

/-! ## A393279.P5797752669817735432

`A330942(A167614(n+4)+2)`
-/

namespace A393279.P5797752669817735432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330942 (A167614 (n + 4) + 2).toNat

end

end A393279.P5797752669817735432

/-!
# A393282: Main diagonal of A330942.

The programs for A393282, there is no canonical definition to state claims against.
-/

/-! ## A393282.P16668074007613706482

`A330942(∑[4*n])`
-/

namespace A393282.P16668074007613706482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330942 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A393282.P16668074007613706482

/-!
# A393283: A triangular array where each value is the sum of points on or adjacent to the ray connecting the value to the apex of the triangle, with first rows terms [0], [1,0].

The programs for A393283, there is no canonical definition to state claims against.
-/

/-! ## A393283.P16366292906114719583

`A337633(A208581(n+1))%A183109(n+2)`
-/

namespace A393283.P16366292906114719583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337633 (A208581 (n + 1)).toNat) (A183109 (n + 2))

end

end A393283.P16366292906114719583

/-!
# A393284: Terms in Recamán's sequence A005132 which are the result of a record number of addition steps.

The programs for A393284, there is no canonical definition to state claims against.
-/

/-! ## A393284.P9372692981754052786

`A005132(A390717(1+n))`
-/

namespace A393284.P9372692981754052786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (A390717 (1 + n)).toNat

end

end A393284.P9372692981754052786

/-!
# A393285: Terms in Recamán's sequence A005132 which are the result of a record number of subtraction steps.

The programs for A393285, there is no canonical definition to state claims against.
-/

/-! ## A393285.P4143433395302990438

`A005132(A392407(1+n))`
-/

namespace A393285.P4143433395302990438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (A392407 (1 + n)).toNat

end

end A393285.P4143433395302990438

/-!
# A393286: Rectangular array, read by descending antidiagonals; row n gives the positions in A006881 of numbers whose least prime divisor is prime(n).

The programs for A393286, there is no canonical definition to state claims against.
-/

/-! ## A393286.P2250593043152258546

`A064839(A339116(2+n))`
-/

namespace A393286.P2250593043152258546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 (A339116 (2 + n)).toNat

end

end A393286.P2250593043152258546

/-!
# A393290: Primitive congruent numbers that are the squarefree part of the area of primitive Pythagorean triangles (PPTs) ordered within a Berggren ternary tree of PPTs.

The programs for A393290, there is no canonical definition to state claims against.
-/

/-! ## A393290.P9421122514225555076

`A007913(A322170(n+1))`
-/

namespace A393290.P9421122514225555076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A322170 (n + 1)).toNat

end

end A393290.P9421122514225555076

/-! ## A393290.P8794646738654097194

`A322170(n+1)/A297770(A356269(n))`
-/

namespace A393290.P8794646738654097194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322170 (n + 1) : ℚ) / (A297770 (A356269 n).toNat : ℚ)

end

end A393290.P8794646738654097194

/-!
# A393292: Number computed by Wolfram's 2-state 2-symbol Turing machine 2205 when started with n on the tape.

The programs for A393292, the canonical program `A393292.P12056617963115482837` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393292 has offset 1).

The definition of A393292 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A393292.P12056617963115482837

`and(or(n+1, n)+1, n)+ceil(n/4)-floor(n/4)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393292

/-- `and(or(n+1, n)+1, n)+ceil(n/4)-floor(n/4)` -/
def P12056617963115482837.Spec : Prop :=
  ∀ n, P12056617963115482837.a n = A393292 (n + 1)

theorem P12056617963115482837.correct : P12056617963115482837.Spec := by
  intro n
  simp only [A393292, Nat.add_sub_cancel]

end A393292

/-! ## A393292.P13591515271117301739

`1-A362248(1+n)+n`
-/

namespace A393292.P13591515271117301739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A362248 (1 + n) + (n : ℤ)

end

end A393292.P13591515271117301739

namespace A393292

/-- `1-A362248(1+n)+n` -/
def P13591515271117301739.Spec : Prop :=
  ∀ n, P13591515271117301739.a n = A393292 (n + 1)

end A393292

/-! ## A393292.P12299489359274615138

`xor(xor(1, n), A362248(n+1))`
-/

namespace A393292.P12299489359274615138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.xor 1 n : ℤ) (A362248 (n + 1))

end

end A393292.P12299489359274615138

namespace A393292

/-- `xor(xor(1, n), A362248(n+1))` -/
def P12299489359274615138.Spec : Prop :=
  ∀ n, P12299489359274615138.a n = A393292 (n + 1)

end A393292

/-! ## A393292.P764480658139523872

`n-A023443(A362248(n+1))`
-/

namespace A393292.P764480658139523872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A362248 (n + 1)).toNat

end

end A393292.P764480658139523872

namespace A393292

/-- `n-A023443(A362248(n+1))` -/
def P764480658139523872.Spec : Prop :=
  ∀ n, P764480658139523872.a n = A393292 (n + 1)

end A393292

/-! ## A393292.P3200235294980765915

`xor(A004442(n), A362248(n+1))`
-/

namespace A393292.P3200235294980765915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004442 n) (A362248 (n + 1))

end

end A393292.P3200235294980765915

namespace A393292

/-- `xor(A004442(n), A362248(n+1))` -/
def P3200235294980765915.Spec : Prop :=
  ∀ n, P3200235294980765915.a n = A393292 (n + 1)

end A393292

/-! ## A393292.P6062514848833565723

`A352729(n)+A166486(n)`
-/

namespace A393292.P6062514848833565723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352729 n + A166486 n

end

end A393292.P6062514848833565723

namespace A393292

/-- `A352729(n)+A166486(n)` -/
def P6062514848833565723.Spec : Prop :=
  ∀ n, P6062514848833565723.a n = A393292 (n + 1)

theorem P6062514848833565723.correct : P6062514848833565723.Spec := by
  intro n
  simp only [A393292, Nat.add_sub_cancel, A393292.P6062514848833565723.a, A393292.P12056617963115482837.a, A166486, A166486.P13501783531280266850.a, A352729, A352729.P14116495585611111604.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A393292

/-! ## A393292.P13062939666131907081

`A023443(2*(n+1))%(A362248(n+1)+n)`
-/

namespace A393292.P13062939666131907081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023443 (2 * (n + 1))) (A362248 (n + 1) + (n : ℤ))

end

end A393292.P13062939666131907081

namespace A393292

/-- `A023443(2*(n+1))%(A362248(n+1)+n)` -/
def P13062939666131907081.Spec : Prop :=
  ∀ n, P13062939666131907081.a n = A393292 (n + 1)

end A393292

/-! ## A393292.P17951571115115640141

`A179753(A362248(n+1)+(n+1)²)`
-/

namespace A393292.P17951571115115640141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179753 (A362248 (n + 1) + ((n + 1) ^ 2 : ℤ)).toNat

end

end A393292.P17951571115115640141

namespace A393292

/-- `A179753(A362248(n+1)+(n+1)²)` -/
def P17951571115115640141.Spec : Prop :=
  ∀ n, P17951571115115640141.a n = A393292 (n + 1)

end A393292

/-!
# A393295: Number of transitive relations on an n-set with at most three ordered pairs.

The programs for A393295, the canonical program `A393295.P4032472479384952545` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393295 has offset 0).

The definition of A393295 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393295.P15501621894699242343

`ogf((1-5x+19x^2+3x^3+40x^4+34x^5+28x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A393295.P15501621894699242343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 19, 3, 40, 34, 28] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A393295.P15501621894699242343

namespace A393295

/-- `ogf((1-5x+19x^2+3x^3+40x^4+34x^5+28x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P15501621894699242343.Spec : Prop :=
  ∀ n, P15501621894699242343.a n = A393295 n

end A393295

/-! ## A393295.P4032472479384952545

`A393238(n)+A349927(n)`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A393295

/-- `A393238(n)+A349927(n)` -/
def P4032472479384952545.Spec : Prop :=
  ∀ n, P4032472479384952545.a n = A393295 n

theorem P4032472479384952545.correct : P4032472479384952545.Spec := by
  intro n
  simp only [A393295]

end A393295

/-! ## A393295.P2407464250490603634

`A394722(n)-A349849(n)`
-/

namespace A393295.P2407464250490603634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394722 n - A349849 n

end

end A393295.P2407464250490603634

namespace A393295

/-- `A394722(n)-A349849(n)` -/
def P2407464250490603634.Spec : Prop :=
  ∀ n, P2407464250490603634.a n = A393295 n

end A393295

/-! ## A393295.P12277557477414792119

`n²+1+A349919(n)+A349927(n)`
-/

namespace A393295.P12277557477414792119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 : ℤ) + A349919 n + A349927 n

end

end A393295.P12277557477414792119

namespace A393295

/-- `n²+1+A349919(n)+A349927(n)` -/
def P12277557477414792119.Spec : Prop :=
  ∀ n, P12277557477414792119.a n = A393295 n

theorem P12277557477414792119.correct : P12277557477414792119.Spec := by
  intro n
  simp only [A393295, Nat.add_sub_cancel, A393295.P12277557477414792119.a, A393295.P4032472479384952545.a, A349919, A349919.P10104168673941358758.a, A349927, A349927.P10752644657425860974.a, A393238, A393238.P17553377918589216133.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A393295

/-! ## A393295.P11931325308225065431

`A349927(n)+A349919(n)+A002522(n)`
-/

namespace A393295.P11931325308225065431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349927 n + (A349919 n + A002522 n)

end

end A393295.P11931325308225065431

namespace A393295

/-- `A349927(n)+A349919(n)+A002522(n)` -/
def P11931325308225065431.Spec : Prop :=
  ∀ n, P11931325308225065431.a n = A393295 n

theorem P11931325308225065431.correct : P11931325308225065431.Spec := by
  intro n
  simp only [A393295, Nat.add_sub_cancel, A393295.P11931325308225065431.a, A393295.P4032472479384952545.a, A002522, A002522.P3778392011853271743.a, A349919, A349919.P10104168673941358758.a, A349927, A349927.P10752644657425860974.a, A393238, A393238.P17553377918589216133.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A393295

/-! ## A393295.P3996623060780313753

`A349927(n)+A212135(n)+A143689(n)`
-/

namespace A393295.P3996623060780313753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349927 n + (A212135 n + A143689 n)

end

end A393295.P3996623060780313753

namespace A393295

/-- `A349927(n)+A212135(n)+A143689(n)` -/
def P3996623060780313753.Spec : Prop :=
  ∀ n, P3996623060780313753.a n = A393295 n

end A393295

/-! ## A393295.P220211713815725611

`A394732(n)-(A349849(n)+A348634(n))`
-/

namespace A393295.P220211713815725611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394732 n - (A349849 n + A348634 n)

end

end A393295.P220211713815725611

namespace A393295

/-- `A394732(n)-(A349849(n)+A348634(n))` -/
def P220211713815725611.Spec : Prop :=
  ∀ n, P220211713815725611.a n = A393295 n

end A393295

/-! ## A393295.P2403934010891789646

`A394769(n)-(A393216(n)+A348634(n))-A349849(n)`
-/

namespace A393295.P2403934010891789646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394769 n - (A393216 n + A348634 n) - A349849 n

end

end A393295.P2403934010891789646

namespace A393295

/-- `A394769(n)-(A393216(n)+A348634(n))-A349849(n)` -/
def P2403934010891789646.Spec : Prop :=
  ∀ n, P2403934010891789646.a n = A393295 n

end A393295

/-!
# A393296: Number of lower sets of size n in the Young lattice.

The programs for A393296, there is no canonical definition to state claims against.
-/

/-! ## A393296.P16986559174711672317

`A003056(A356781(n+2)+A115981(n))`
-/

namespace A393296.P16986559174711672317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A356781 (n + 2) + A115981 n).toNat

end

end A393296.P16986559174711672317

/-! ## A393296.P11472514070798269627

`A100617(A137199(n))`
-/

namespace A393296.P11472514070798269627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100617 (A137199 n).toNat

end

end A393296.P11472514070798269627

/-! ## A393296.P10964265140355432002

`A178786(A097122(n))`
-/

namespace A393296.P10964265140355432002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178786 (A097122 n).toNat

end

end A393296.P10964265140355432002

/-! ## A393296.P10496009875091749789

`A295866(A005909(n))`
-/

namespace A393296.P10496009875091749789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295866 (A005909 n).toNat

end

end A393296.P10496009875091749789

/-! ## A393296.P4965495855773539117

`A295866(A399659(n+1))`
-/

namespace A393296.P4965495855773539117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295866 (A399659 (n + 1)).toNat

end

end A393296.P4965495855773539117

/-!
# A393297: a(n) = Pell(Pell(n)) where Pell(n) = A000129(n).

The programs for A393297, the canonical program `A393297.P12328997900511415540` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393297 has offset 0).

The definition of A393297 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000129(A000129(n))` (program `A393297.P12328997900511415540`, by `A393297.P12328997900511415540.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A393297.P12328997900511415540

`A000129(A000129(n))`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A393297

/-- `A000129(A000129(n))` -/
def P12328997900511415540.Spec : Prop :=
  ∀ n, P12328997900511415540.a n = A393297 n

theorem P12328997900511415540.correct : P12328997900511415540.Spec := by
  intro n
  simp only [A393297]

end A393297

/-!
# A393298: Number of partitions p of n such that 2 * (number of distinct parts of p) <= (minimal multiplicity of the parts of p).

The programs for A393298, there is no canonical definition to state claims against.
-/

/-! ## A393298.P13500882877483654902

`A032741(n)+A035587(n)^A294270(n+1)`
-/

namespace A393298.P13500882877483654902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032741 n : ℚ) + (A035587 n : ℚ) ^ (A294270 (n + 1) : ℤ)

end

end A393298.P13500882877483654902

/-! ## A393298.P12433371722879215097

`A032741(n)+A024360(A008891(n))`
-/

namespace A393298.P12433371722879215097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + A024360 (A008891 n).toNat

end

end A393298.P12433371722879215097

/-! ## A393298.P2413359614680566821

`A095986(A078082(n))+A032741(n)`
-/

namespace A393298.P2413359614680566821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095986 (A078082 n).toNat + A032741 n

end

end A393298.P2413359614680566821

/-! ## A393298.P9333713142904723932

`A032741(n)+A010052(A211034(n))`
-/

namespace A393298.P9333713142904723932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + A010052 (A211034 n).toNat

end

end A393298.P9333713142904723932

/-! ## A393298.P10209678032600452428

`A096268(A389973(n))+A032741(n)`
-/

namespace A393298.P10209678032600452428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 (A389973 n).toNat + A032741 n

end

end A393298.P10209678032600452428

/-!
# A393299: a(n) is the number of 2n X 2n matrices over GF(2) such that the column space and the row space and the null space are all equal.

The programs for A393299, there is no canonical definition to state claims against.
-/

/-! ## A393299.P13355257495979765556

`A028362(n)*A002884(n)`
-/

namespace A393299.P13355257495979765556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028362 n * A002884 n

end

end A393299.P13355257495979765556

/-! ## A393299.P5003052018411895711

`A002884(n)*A028362(n)`
-/

namespace A393299.P5003052018411895711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002884 n * A028362 n

end

end A393299.P5003052018411895711

/-! ## A393299.P5852967579860837894

`A005329(n)*A006125(n)*A028362(n)`
-/

namespace A393299.P5852967579860837894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005329 n * A006125 n * A028362 n

end

end A393299.P5852967579860837894

