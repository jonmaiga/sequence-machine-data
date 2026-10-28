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
import Seq.B000.C013
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C049
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
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
# A393201: Numbers k that are neither squarefree nor prime powers, such that k/rad(k) != lpf(k), where rad = A007947 and lpf = A020639.

The programs for A393201, the canonical program `A393201.P3275454451732274938` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393201 has offset 1).

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

The canonical program, it is in `Seq.B012.C000`.
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

/-! ## A393207.P16433118550872579971

`A000194(A374687(2*n)-A000389(n))`
-/

namespace A393207.P16433118550872579971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A374687 (2 * n) - A000389 n).toNat

end

end A393207.P16433118550872579971

/-! ## A393207.P12161237671501796566

`A307707(A033844(n))`
-/

namespace A393207.P12161237671501796566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307707 (A033844 n).toNat

end

end A393207.P12161237671501796566

/-! ## A393207.P10653749255379706004

`A339183(A018909(n))`
-/

namespace A393207.P10653749255379706004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339183 (A018909 n).toNat

end

end A393207.P10653749255379706004

/-! ## A393207.P15226032357341239527

`A351846(A018249(n))`
-/

namespace A393207.P15226032357341239527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351846 (A018249 n).toNat

end

end A393207.P15226032357341239527

/-!
# A393210: Halting time for Wolfram's 2-state 2-symbol Turing machine 3626 when started with n on the tape.

The programs for A393210, the canonical program `A393210.P5495341853458949391` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393210 has offset 1).

The definition of A393210 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A393210.P5495341853458949391

`2*xor(n, n+1)-1`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A393210

/-- `2*xor(n, n+1)-1` -/
def P5495341853458949391.Spec : Prop :=
  ∀ n, P5495341853458949391.a n = A393210 (n + 1)

theorem P5495341853458949391.correct : P5495341853458949391.Spec := by
  intro n
  simp only [A393210, Nat.add_sub_cancel]

end A393210

/-! ## A393210.P12815025937305047321

`lcm(2, xor(n, n+1))-1`
-/

namespace A393210.P12815025937305047321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (Nat.xor n (n + 1)) : ℤ) - 1

end

end A393210.P12815025937305047321

namespace A393210

/-- `lcm(2, xor(n, n+1))-1` -/
def P12815025937305047321.Spec : Prop :=
  ∀ n, P12815025937305047321.a n = A393210 (n + 1)

end A393210

/-! ## A393210.P7639123131092980691

`xor(3, 2*xor(n, n+1))`
-/

namespace A393210.P7639123131092980691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (2 * Nat.xor n (n + 1))

end

end A393210.P7639123131092980691

namespace A393210

/-- `xor(3, 2*xor(n, n+1))` -/
def P7639123131092980691.Spec : Prop :=
  ∀ n, (P7639123131092980691.a n : ℤ) = A393210 (n + 1)

end A393210

/-! ## A393210.P17234351120782225064

`4*and(n, -(n+2))+1`
-/

namespace A393210.P17234351120782225064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * Int.land (n : ℤ) (-(n + 2 : ℤ)) + 1

end

end A393210.P17234351120782225064

namespace A393210

/-- `4*and(n, -(n+2))+1` -/
def P17234351120782225064.Spec : Prop :=
  ∀ n, P17234351120782225064.a n = A393210 (n + 1)

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

The programs for A393211, the canonical program `A393211.P1663722993318290328` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393211 has offset 1).

The definition of A393211 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A393211.P1663722993318290328

`n+1-A176965(A087230(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A393211

/-- `n+1-A176965(A087230(n+1))` -/
def P1663722993318290328.Spec : Prop :=
  ∀ n, P1663722993318290328.a n = A393211 (n + 1)

theorem P1663722993318290328.correct : P1663722993318290328.Spec := by
  intro n
  simp only [A393211, Nat.add_sub_cancel]

end A393211

/-!
# A393212: Halting time for Wolfram's 2-state 2-symbol Turing machine 773 when started with n on the tape.

The programs for A393212, the canonical program `A393212.P8608727344683158324` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393212 has offset 1).

The definition of A393212 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

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

/-! ## A393212.P15550216726850167620

`gcd(A285698(2*n+5), A324695(A001222(3*n+5)))`
-/

namespace A393212.P15550216726850167620
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A285698 (2 * n + 5)) (A324695 (A001222 (3 * n + 5)).toNat)

end

end A393212.P15550216726850167620

namespace A393212

/-- `gcd(A285698(2*n+5), A324695(A001222(3*n+5)))` -/
def P15550216726850167620.Spec : Prop :=
  ∀ n, (P15550216726850167620.a n : ℤ) = A393212 (n + 1)

end A393212

/-! ## A393212.P11019647071028143787

`A053381(A194455(n+1))`
-/

namespace A393212.P11019647071028143787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053381 (A194455 (n + 1)).toNat

end

end A393212.P11019647071028143787

namespace A393212

/-- `A053381(A194455(n+1))` -/
def P11019647071028143787.Spec : Prop :=
  ∀ n, P11019647071028143787.a n = A393212 (n + 1)

end A393212

/-! ## A393212.P7926406327444546643

`A085785(A282961(n+1))`
-/

namespace A393212.P7926406327444546643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085785 (A282961 (n + 1)).toNat

end

end A393212.P7926406327444546643

namespace A393212

/-- `A085785(A282961(n+1))` -/
def P7926406327444546643.Spec : Prop :=
  ∀ n, P7926406327444546643.a n = A393212 (n + 1)

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

The programs for A393214, the canonical program `A393214.P14055961800002760975` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393214 has offset 1).

The definition of A393214 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A393214.P14055961800002760975

`∏{e}[n+1, C(#+3, 3)²]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A393214

/-- `∏{e}[n+1, C(#+3, 3)²]` -/
def P14055961800002760975.Spec : Prop :=
  ∀ n, (P14055961800002760975.a n : ℤ) = A393214 (n + 1)

theorem P14055961800002760975.correct : P14055961800002760975.Spec := by
  intro n
  simp only [A393214, Nat.add_sub_cancel]

end A393214

/-! ## A393214.P9063226162361877803

`∏{e}[n+1, C(#+3, 3)]^2`
-/

namespace A393214.P9063226162361877803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (Nat.factorization (f1 n) p + 3) 3) ^ 2

end

end A393214.P9063226162361877803

namespace A393214

/-- `∏{e}[n+1, C(#+3, 3)]^2` -/
def P9063226162361877803.Spec : Prop :=
  ∀ n, (P9063226162361877803.a n : ℤ) = A393214 (n + 1)

end A393214

/-! ## A393214.P10173295954177991158

`A007426(n+1)²`
-/

namespace A393214.P10173295954177991158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007426 (n + 1) ^ 2

end

end A393214.P10173295954177991158

namespace A393214

/-- `A007426(n+1)²` -/
def P10173295954177991158.Spec : Prop :=
  ∀ n, P10173295954177991158.a n = A393214 (n + 1)

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

/-! ## A393214.P1345625781916967381

`A000290(gcd(floor(1/(n+1)), A007426(n+1)))`
-/

namespace A393214.P1345625781916967381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.gcd ⌊1 / (n + 1 : ℚ)⌋ (A007426 (n + 1)))

end

end A393214.P1345625781916967381

namespace A393214

/-- `A000290(gcd(floor(1/(n+1)), A007426(n+1)))` -/
def P1345625781916967381.Spec : Prop :=
  ∀ n, P1345625781916967381.a n = A393214 (n + 1)

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

/-! ## A393219.P12472387378577837923

`A372254(A000217(n+3)+3)`
-/

namespace A393219.P12472387378577837923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372254 (A000217 (n + 3) + 3).toNat

end

end A393219.P12472387378577837923

/-! ## A393219.P16244574082393445540

`A372254(A209268(2*n+5)+3)`
-/

namespace A393219.P16244574082393445540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372254 (A209268 (2 * n + 5) + 3).toNat

end

end A393219.P16244574082393445540

/-!
# A393221: Column 1 of A372254.

The programs for A393221, there is no canonical definition to state claims against.
-/

/-! ## A393221.P15149169085990947650

`A372254(∑[n+1]+n)`
-/

namespace A393221.P15149169085990947650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372254 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A393221.P15149169085990947650

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

/-!
# A393222: Column 2 of A372254.

The programs for A393222, there is no canonical definition to state claims against.
-/

/-! ## A393222.P16094415751941196166

`A372254(∑[n+3])`
-/

namespace A393222.P16094415751941196166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372254 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A393222.P16094415751941196166

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

/-!
# A393223: Column 3 of A372254.

The programs for A393223, there is no canonical definition to state claims against.
-/

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

/-! ## A393225.P1275658354760267241

`A204164(A191758(n))`
-/

namespace A393225.P1275658354760267241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (A191758 n).toNat

end

end A393225.P1275658354760267241

/-! ## A393225.P16227536701301441865

`A357873(A047084(n))`
-/

namespace A393225.P16227536701301441865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357873 (A047084 n).toNat

end

end A393225.P16227536701301441865

/-! ## A393225.P788288363625133857

`A363100(A393207(n))`
-/

namespace A393225.P788288363625133857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363100 (A393207 n).toNat

end

end A393225.P788288363625133857

/-! ## A393225.P13772434399102891115

`A111651(A091500(n+1))`
-/

namespace A393225.P13772434399102891115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111651 (A091500 (n + 1)).toNat

end

end A393225.P13772434399102891115

/-! ## A393225.P5591614401786458258

`A339183(A093331(n+1))`
-/

namespace A393225.P5591614401786458258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339183 (A093331 (n + 1)).toNat

end

end A393225.P5591614401786458258

/-!
# A393227: G.f. A(x) satisfies: A(x) = 1 + x * A(x/(1 - x)^2) / (1 - x)^3.

The programs for A393227, there is no canonical definition to state claims against.
-/

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

/-! ## A393227.P13735724305517520059

`A117892(A208966(n+2))`
-/

namespace A393227.P13735724305517520059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117892 (A208966 (n + 2)).toNat

end

end A393227.P13735724305517520059

/-!
# A393228: G.f. A(x) satisfies: A(x) = 1 + x * A(x/(1 - x)^3) / (1 - x)^2.

The programs for A393228, there is no canonical definition to state claims against.
-/

/-! ## A393228.P5591637216030241925

`A112689(A000011(2*n)²)`
-/

namespace A393228.P5591637216030241925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (A000011 (2 * n) ^ 2).toNat

end

end A393228.P5591637216030241925

/-!
# A393231: Expansion of x^2 * (3+x-x^2) / (1-x)^4.

The programs for A393231, the canonical program `A393231.P17955154013371398717` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393231 has offset 1).

The definition of A393231 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((3x+x^2-x^3)/(1-4x+6x^2-4x^3+x^4))` (program `A393231.P17955154013371398717`, by `A393231.P17955154013371398717.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A393231.P17955154013371398717

`ogf((3x+x^2-x^3)/(1-4x+6x^2-4x^3+x^4))`

The canonical program, it is in `Seq.B000.C049`.
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

/-! ## A393231.P12891646850003524317

`lcm(n, (n+2)²-3)/2`
-/

namespace A393231.P12891646850003524317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n : ℤ) (((n + 2) ^ 2 : ℤ) - 3) : ℚ) / 2

end

end A393231.P12891646850003524317

namespace A393231

/-- `lcm(n, (n+2)²-3)/2` -/
def P12891646850003524317.Spec : Prop :=
  ∀ n, P12891646850003524317.a n = (A393231 (n + 1) : ℚ)

end A393231

/-! ## A393231.P1600519204402417008

`∑[∑[a(n-1)+3]]` with `a(0)=0, a(1)=3, a(2)=7`
-/

namespace A393231.P1600519204402417008
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 7] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393231.P1600519204402417008

namespace A393231

/-- `∑[∑[a(n-1)+3]]` -/
def P1600519204402417008.Spec : Prop :=
  ∀ n, (P1600519204402417008.a n : ℤ) = A393231 (n + 1)

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

/-! ## A393231.P12203908453231151909

`(2*n/(n+1)+n+1)*C(n+1, 2)`
-/

namespace A393231.P12203908453231151909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℚ) / (n + 1 : ℚ) + (n + 1 : ℚ)) * (Nat.choose (n + 1) 2 : ℚ)

end

end A393231.P12203908453231151909

namespace A393231

/-- `(2*n/(n+1)+n+1)*C(n+1, 2)` -/
def P12203908453231151909.Spec : Prop :=
  ∀ n, P12203908453231151909.a n = (A393231 (n + 1) : ℚ)

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

The programs for A393232, the canonical program `A393232.P14261252287719027146` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393232 has offset 1).

The definition of A393232 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A393232.P14261252287719027146

`A047241(A087230(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A393232

/-- `A047241(A087230(n+1))` -/
def P14261252287719027146.Spec : Prop :=
  ∀ n, P14261252287719027146.a n = A393232 (n + 1)

theorem P14261252287719027146.correct : P14261252287719027146.Spec := by
  intro n
  simp only [A393232, Nat.add_sub_cancel]

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

/-! ## A393232.P13644917928084433612

`A056753(A377663(n+1))`
-/

namespace A393232.P13644917928084433612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056753 (A377663 (n + 1)).toNat

end

end A393232.P13644917928084433612

namespace A393232

/-- `A056753(A377663(n+1))` -/
def P13644917928084433612.Spec : Prop :=
  ∀ n, P13644917928084433612.a n = A393232 (n + 1)

end A393232

/-! ## A393232.P17755769040801444216

`A056753(A077812(n+2))`
-/

namespace A393232.P17755769040801444216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056753 (A077812 (n + 2)).toNat

end

end A393232.P17755769040801444216

namespace A393232

/-- `A056753(A077812(n+2))` -/
def P17755769040801444216.Spec : Prop :=
  ∀ n, P17755769040801444216.a n = A393232 (n + 1)

end A393232

/-! ## A393232.P406972254317616652

`A056753(n*A181497(A005843(n+1)))`
-/

namespace A393232.P406972254317616652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056753 ((n : ℤ) * A181497 (A005843 (n + 1)).toNat).toNat

end

end A393232.P406972254317616652

namespace A393232

/-- `A056753(n*A181497(A005843(n+1)))` -/
def P406972254317616652.Spec : Prop :=
  ∀ n, P406972254317616652.a n = A393232 (n + 1)

end A393232

/-!
# A393233: Halting time for Wolfram's 2-state 2-symbol Turing machine 919 when started with n on the tape.

The programs for A393233, the canonical program `A393233.P12718541263085678576` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393233 has offset 1).

The definition of A393233 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A393233.P12718541263085678576

`A163980(A087230(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A393233

/-- `A163980(A087230(n+1))` -/
def P12718541263085678576.Spec : Prop :=
  ∀ n, P12718541263085678576.a n = A393233 (n + 1)

theorem P12718541263085678576.correct : P12718541263085678576.Spec := by
  intro n
  simp only [A393233, Nat.add_sub_cancel]

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

/-! ## A393233.P13412192266403542151

`A016813(floor((A007814(3*n+5)+1)/2))`
-/

namespace A393233.P13412192266403542151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 ⌊(A007814 (3 * n + 5) + 1 : ℚ) / 2⌋.toNat

end

end A393233.P13412192266403542151

namespace A393233

/-- `A016813(floor((A007814(3*n+5)+1)/2))` -/
def P13412192266403542151.Spec : Prop :=
  ∀ n, P13412192266403542151.a n = A393233 (n + 1)

end A393233

/-! ## A393233.P12749677743451061713

`A135282(A019429(n+2)²)+1`
-/

namespace A393233.P12749677743451061713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135282 (A019429 (n + 2) ^ 2).toNat + 1

end

end A393233.P12749677743451061713

namespace A393233

/-- `A135282(A019429(n+2)²)+1` -/
def P12749677743451061713.Spec : Prop :=
  ∀ n, P12749677743451061713.a n = A393233 (n + 1)

end A393233

/-!
# A393235: Triangle read by rows: T(n,k) is the number of ordered rooted trees with node weights summing to n that have k non-root nodes; such that the root has weight 0, non-root nodes have positive integer weights, and no two adjacent sibling nodes have the same weight.

The programs for A393235, there is no canonical definition to state claims against.
-/

/-! ## A393235.P1453615810754708767

`A071919(lt[A368148(3*n+5), A008277(n+4)])`
-/

namespace A393235.P1453615810754708767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368148 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A393235.P1453615810754708767

/-! ## A393235.P5771699898614117109

`A121464(A172288(n))`
-/

namespace A393235.P5771699898614117109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121464 (A172288 n).toNat

end

end A393235.P5771699898614117109

/-! ## A393235.P4606196495263334953

`A030567(A278073(n))`
-/

namespace A393235.P4606196495263334953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030567 (A278073 n).toNat

end

end A393235.P4606196495263334953

/-! ## A393235.P800355786395717731

`A364663(A135313(n))`
-/

namespace A393235.P800355786395717731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364663 (A135313 n).toNat

end

end A393235.P800355786395717731

/-! ## A393235.P11819147127989230141

`A307672(A256069(n))`
-/

namespace A393235.P11819147127989230141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307672 (A256069 n).toNat

end

end A393235.P11819147127989230141

/-!
# A393238: Number of transitive relations on an n-set with at most two ordered pairs.

The programs for A393238, the canonical program `A393238.P17553377918589216133` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393238 has offset 0).

The definition of A393238 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

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

/-! ## A393238.P4847554854422278406

`C((1-n)²+n+1, 2)+n²`
-/

namespace A393238.P4847554854422278406
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((1 - (n : ℤ)) ^ 2 + (n + 1 : ℤ)).toNat 2 + n ^ 2

end

end A393238.P4847554854422278406

namespace A393238

/-- `C((1-n)²+n+1, 2)+n²` -/
def P4847554854422278406.Spec : Prop :=
  ∀ n, (P4847554854422278406.a n : ℤ) = A393238 n

end A393238

/-! ## A393238.P7521177597041302067

`n²+1+A349919(n)`
-/

namespace A393238.P7521177597041302067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 : ℤ) + A349919 n

end

end A393238.P7521177597041302067

namespace A393238

/-- `n²+1+A349919(n)` -/
def P7521177597041302067.Spec : Prop :=
  ∀ n, P7521177597041302067.a n = A393238 n

theorem P7521177597041302067.correct : P7521177597041302067.Spec := by
  intro n
  simp only [A393238, Nat.add_sub_cancel, A393238.P7521177597041302067.a, A393238.P17553377918589216133.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

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

/-! ## A393239.P4695162885373268256

`lt[A000219(n)%3, 1]`
-/

namespace A393239.P4695162885373268256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000219 n) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A393239.P4695162885373268256

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

The programs for A393244, the canonical program `A393244.P4168664564217967721` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393244 has offset 0).

The definition of A393244 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/3), C(2*#, #)*C(n, 3*#)]` (program `A393244.P4168664564217967721`, by `A393244.P4168664564217967721.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A393244.P4168664564217967721

`∑{#}[floor(n/3), C(2*#, #)*C(n, 3*#)]`

The canonical program, it is in `Seq.B000.C049`.
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

/-! ## A393244.P10872646870039306452

`A120841(A071879(n))`
-/

namespace A393244.P10872646870039306452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120841 (A071879 n).toNat

end

end A393244.P10872646870039306452

namespace A393244

/-- `A120841(A071879(n))` -/
def P10872646870039306452.Spec : Prop :=
  ∀ n, P10872646870039306452.a n = A393244 n

end A393244

/-!
# A393245: a(n) = Sum_{k=0..floor(n/4)} binomial(2*k,k) * binomial(n,4*k).

The programs for A393245, the canonical program `A393245.P4416118040040543713` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393245 has offset 0).

The definition of A393245 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/4), C(2*#, #)*C(n, 4*#)]` (program `A393245.P4416118040040543713`, by `A393245.P4416118040040543713.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A393245.P4416118040040543713

`∑{#}[floor(n/4), C(2*#, #)*C(n, 4*#)]`

The canonical program, it is in `Seq.B000.C049`.
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

/-!
# A393246: a(n) = Sum_{k=0..floor(n/4)} binomial(2*k,k) * binomial(n-k,3*k).

The programs for A393246, the canonical program `A393246.P6287185739706933134` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393246 has offset 0).

The definition of A393246 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/4), C(2*#, #)*C(n-#, 3*#)]` (program `A393246.P6287185739706933134`, by `A393246.P6287185739706933134.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A393246.P6287185739706933134

`∑{#}[floor(n/4), C(2*#, #)*C(n-#, 3*#)]`

The canonical program, it is in `Seq.B000.C049`.
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

/-! ## A393246.P599189823623921594

`A338466(A097119(n))`
-/

namespace A393246.P599189823623921594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338466 (A097119 n).toNat

end

end A393246.P599189823623921594

namespace A393246

/-- `A338466(A097119(n))` -/
def P599189823623921594.Spec : Prop :=
  ∀ n, P599189823623921594.a n = A393246 n

end A393246

/-! ## A393246.P17094397643136425829

`A294748(A144700(n))`
-/

namespace A393246.P17094397643136425829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294748 (A144700 n).toNat

end

end A393246.P17094397643136425829

namespace A393246

/-- `A294748(A144700(n))` -/
def P17094397643136425829.Spec : Prop :=
  ∀ n, P17094397643136425829.a n = A393246 n

end A393246

/-!
# A393247: a(n) = Sum_{k=0..floor(n/5)} binomial(2*k,k) * binomial(n-2*k,3*k).

The programs for A393247, the canonical program `A393247.P9954757291140051261` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393247 has offset 0).

The definition of A393247 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/5), C(2*#, #)*C(n-2*#, 3*#)]` (program `A393247.P9954757291140051261`, by `A393247.P9954757291140051261.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A393247.P9954757291140051261

`∑{#}[floor(n/5), C(2*#, #)*C(n-2*#, 3*#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A393247

/-- `∑{#}[floor(n/5), C(2*#, #)*C(n-2*#, 3*#)]` -/
def P9954757291140051261.Spec : Prop :=
  ∀ n, (P9954757291140051261.a n : ℤ) = A393247 n

theorem P9954757291140051261.correct : P9954757291140051261.Spec := by
  intro n
  simp only [A393247]

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

/-! ## A393247.P353125107673835860

`A097449(A100135(n+1))`
-/

namespace A393247.P353125107673835860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097449 (A100135 (n + 1)).toNat

end

end A393247.P353125107673835860

namespace A393247

/-- `A097449(A100135(n+1))` -/
def P353125107673835860.Spec : Prop :=
  ∀ n, P353125107673835860.a n = A393247 n

end A393247

/-! ## A393247.P8763947662502555976

`A100135(A120126(n+1))`
-/

namespace A393247.P8763947662502555976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100135 (A120126 (n + 1)).toNat

end

end A393247.P8763947662502555976

namespace A393247

/-- `A100135(A120126(n+1))` -/
def P8763947662502555976.Spec : Prop :=
  ∀ n, P8763947662502555976.a n = A393247 n

end A393247

/-! ## A393247.P12901998349623987670

`A100135(A351870(n+1))`
-/

namespace A393247.P12901998349623987670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100135 (A351870 (n + 1)).toNat

end

end A393247.P12901998349623987670

namespace A393247

/-- `A100135(A351870(n+1))` -/
def P12901998349623987670.Spec : Prop :=
  ∀ n, P12901998349623987670.a n = A393247 n

end A393247

/-!
# A393249: a(n) = Sum_{k=0..floor(n/5)} binomial(2*k,k) * binomial(n-4*k,k).

The programs for A393249, the canonical program `A393249.P13160133525303725470` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393249 has offset 0).

The definition of A393249 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/5), C(2*#, #)*C(n-4*#, #)]` (program `A393249.P13160133525303725470`, by `A393249.P13160133525303725470.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A393249.P13160133525303725470

`∑{#}[floor(n/5), C(2*#, #)*C(n-4*#, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A393249

/-- `∑{#}[floor(n/5), C(2*#, #)*C(n-4*#, #)]` -/
def P13160133525303725470.Spec : Prop :=
  ∀ n, (P13160133525303725470.a n : ℤ) = A393249 n

theorem P13160133525303725470.correct : P13160133525303725470.Spec := by
  intro n
  simp only [A393249]

end A393249

/-!
# A393250: a(n) = Sum_{k=0..floor(n/6)} binomial(2*k,k) * binomial(n-3*k,3*k).

The programs for A393250, the canonical program `A393250.P1292396101563155349` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393250 has offset 0).

The definition of A393250 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/6), C(2*#, #)*C(n-3*#, 3*#)]` (program `A393250.P1292396101563155349`, by `A393250.P1292396101563155349.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A393250.P1292396101563155349

`∑{#}[floor(n/6), C(2*#, #)*C(n-3*#, 3*#)]`

The canonical program, it is in `Seq.B000.C049`.
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

The programs for A393251, the canonical program `A393251.P7131175545142886393` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393251 has offset 0).

The definition of A393251 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/6), C(2*#, #)*C(n-4*#, 2*#)]` (program `A393251.P7131175545142886393`, by `A393251.P7131175545142886393.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A393251.P7131175545142886393

`∑{#}[floor(n/6), C(2*#, #)*C(n-4*#, 2*#)]`

The canonical program, it is in `Seq.B000.C049`.
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

The programs for A393253, there is no canonical definition to state claims against.
-/

/-! ## A393253.P9461804458729927362

`A059905(n)+A059906(n)`
-/

namespace A393253.P9461804458729927362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 n + A059906 n

end

end A393253.P9461804458729927362

/-! ## A393253.P943381402603956545

`A059261(A163355(n))`
-/

namespace A393253.P943381402603956545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059261 (A163355 n).toNat

end

end A393253.P943381402603956545

/-! ## A393253.P18011034664272306115

`A059261(A380110(n))`
-/

namespace A393253.P18011034664272306115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059261 (A380110 n).toNat

end

end A393253.P18011034664272306115

/-! ## A393253.P8633230266606819525

`A292373(n)+A309952(n)+A292373(n)`
-/

namespace A393253.P8633230266606819525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 n + (A309952 n + A292373 n)

end

end A393253.P8633230266606819525

/-! ## A393253.P457574440238094870

`A371459(n)+A371442(n)`
-/

namespace A393253.P457574440238094870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371459 n + A371442 n

end

end A393253.P457574440238094870

/-! ## A393253.P4169749115221168475

`A371442(n)+A371442(A377415(n))`
-/

namespace A393253.P4169749115221168475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371442 n + A371442 (A377415 n).toNat

end

end A393253.P4169749115221168475

/-! ## A393253.P13313653397380829336

`A003056(A054239(n))`
-/

namespace A393253.P13313653397380829336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A054239 n).toNat

end

end A393253.P13313653397380829336

/-! ## A393253.P10540007612854830121

`A054240(A054239(n)-A059906(n))`
-/

namespace A393253.P10540007612854830121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054240 (A054239 n - A059906 n).toNat

end

end A393253.P10540007612854830121

/-! ## A393253.P9284940102098403120

`A059906(2*n)+A059906(n)`
-/

namespace A393253.P9284940102098403120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (2 * n) + A059906 n

end

end A393253.P9284940102098403120

/-! ## A393253.P9594086853464324749

`A059905(A057300(n)+n)`
-/

namespace A393253.P9594086853464324749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (A057300 n + (n : ℤ)).toNat

end

end A393253.P9594086853464324749

/-! ## A393253.P12985499892380524397

`A059906(A057300(A057300(n)+n))`
-/

namespace A393253.P12985499892380524397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (A057300 (A057300 n + (n : ℤ)).toNat).toNat

end

end A393253.P12985499892380524397

/-! ## A393253.P3989141706196312264

`A059905(A163235(A163234(n))+n)`
-/

namespace A393253.P3989141706196312264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (A163235 (A163234 n).toNat + (n : ℤ)).toNat

end

end A393253.P3989141706196312264

/-! ## A393253.P282891524138884464

`A059905(A163233(A163236(n))+n)`
-/

namespace A393253.P282891524138884464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (A163233 (A163236 n).toNat + (n : ℤ)).toNat

end

end A393253.P282891524138884464

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

/-! ## A393260.P1009497048344111260

`A392462(A024702(n+3))+A131352(n)`
-/

namespace A393260.P1009497048344111260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392462 (A024702 (n + 3)).toNat + A131352 n

end

end A393260.P1009497048344111260

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

/-!
# A393273: Lexicographically earliest sequence of distinct prime numbers such that for any n > 0, the bottom entry in the absolute difference triangle of the first n terms is different from 1.

The programs for A393273, there is no canonical definition to state claims against.
-/

/-! ## A393273.P12166041721732057364

`A393281(∑[n]+1)`
-/

namespace A393273.P12166041721732057364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393281 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A393273.P12166041721732057364

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

/-!
# A393275: a(n) = Sum_{k=0..floor(n/4)} binomial(2*k,k) * binomial(n-1,n-4*k).

The programs for A393275, there is no canonical definition to state claims against.
-/

/-! ## A393275.P15871616899479754245

`A393246(n)-A333805(A034008(2*(n+1)))`
-/

namespace A393275.P15871616899479754245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393246 n - A333805 (A034008 (2 * (n + 1))).toNat

end

end A393275.P15871616899479754245

/-!
# A393276: a(n) = Sum_{k=0..floor(n/4)} binomial(2*k,k) * binomial(n-k-1,n-4*k).

The programs for A393276, there is no canonical definition to state claims against.
-/

/-! ## A393276.P8759302332740402104

`A082064(A139056(n+1))*A364403(n)`
-/

namespace A393276.P8759302332740402104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082064 (A139056 (n + 1)).toNat * A364403 n

end

end A393276.P8759302332740402104

/-! ## A393276.P10662771948513307577

`A055642(A000045(2*n+3))*A241734(n)`
-/

namespace A393276.P10662771948513307577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A000045 (2 * n + 3)).toNat * A241734 n

end

end A393276.P10662771948513307577

/-! ## A393276.P3307010125211216263

`xor(A098482(n), A343660(A007422(3*(n+1))))`
-/

namespace A393276.P3307010125211216263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A098482 n) (A343660 (A007422 (3 * (n + 1))).toNat)

end

end A393276.P3307010125211216263

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
# A393284: Terms in Recamán's sequence A005132 which are the result of a record number of addition steps.

The programs for A393284, there is no canonical definition to state claims against.
-/

/-! ## A393284.P15215749376092750084

`A005132(A390717(n+1))`
-/

namespace A393284.P15215749376092750084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (A390717 (n + 1)).toNat

end

end A393284.P15215749376092750084

/-!
# A393285: Terms in Recamán's sequence A005132 which are the result of a record number of subtraction steps.

The programs for A393285, there is no canonical definition to state claims against.
-/

/-! ## A393285.P1399149151157823614

`A005132(A392407(n+1))`
-/

namespace A393285.P1399149151157823614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (A392407 (n + 1)).toNat

end

end A393285.P1399149151157823614

/-!
# A393286: Rectangular array, read by descending antidiagonals; row n gives the positions in A006881 of numbers whose least prime divisor is prime(n).

The programs for A393286, there is no canonical definition to state claims against.
-/

/-! ## A393286.P2100314997985033152

`A064839(A339116(n+2))`
-/

namespace A393286.P2100314997985033152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 (A339116 (n + 2)).toNat

end

end A393286.P2100314997985033152

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

The programs for A393292, the canonical program `A393292.P14481508653223136911` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393292 has offset 1).

The definition of A393292 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A393292.P14481508653223136911

`1-A362248(n+1)+n`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A393292

/-- `1-A362248(n+1)+n` -/
def P14481508653223136911.Spec : Prop :=
  ∀ n, P14481508653223136911.a n = A393292 (n + 1)

theorem P14481508653223136911.correct : P14481508653223136911.Spec := by
  intro n
  simp only [A393292, Nat.add_sub_cancel]

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

end A393292

/-!
# A393295: Number of transitive relations on an n-set with at most three ordered pairs.

The programs for A393295, the canonical program `A393295.P4032472479384952545` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393295 has offset 0).

The definition of A393295 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

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

/-!
# A393296: Number of lower sets of size n in the Young lattice.

The programs for A393296, there is no canonical definition to state claims against.
-/

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

/-! ## A393296.P3946886047986410125

`A000196(A062424(n+2))`
-/

namespace A393296.P3946886047986410125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A062424 (n + 2)).toNat

end

end A393296.P3946886047986410125

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

/-! ## A393298.P9333713142904723932

`A032741(n)+A010052(A211034(n))`
-/

namespace A393298.P9333713142904723932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + A010052 (A211034 n).toNat

end

end A393298.P9333713142904723932

/-! ## A393298.P8978258687247387688

`A367582(∑[n]+2)`
-/

namespace A393298.P8978258687247387688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367582 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A393298.P8978258687247387688

/-! ## A393298.P8322457708093700875

`A390256(A210442(n))`
-/

namespace A393298.P8322457708093700875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390256 (A210442 n).toNat

end

end A393298.P8322457708093700875

/-! ## A393298.P16883682350059735023

`A384157(A171785(n+2))`
-/

namespace A393298.P16883682350059735023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384157 (A171785 (n + 2)).toNat

end

end A393298.P16883682350059735023

/-! ## A393298.P6063732258236406952

`A106457(2^A211110(n))`
-/

namespace A393298.P6063732258236406952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106457 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A211110 n : ℤ))).toNat

end

end A393298.P6063732258236406952

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

