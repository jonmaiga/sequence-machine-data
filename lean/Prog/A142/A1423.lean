import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
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
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
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
import Seq.B008.C000
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
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A142300: Primes congruent to 19 mod 44.

The programs for A142300, the canonical program `A142300.P9504984252573206551` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142300 has offset 1).

The definition of A142300 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3964 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142300.P9504984252573206551

`p?[a(n-1)+44]` with `a(0)=19`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142300

/-- `p?[a(n-1)+44]` -/
def P9504984252573206551.Spec : Prop :=
  ∀ n, (P9504984252573206551.a n : ℤ) = A142300 (n + 1)

theorem P9504984252573206551.correct : P9504984252573206551.Spec := by
  intro n
  simp only [A142300, Nat.add_sub_cancel]

end A142300

/-! ## A142300.P11809774824006762256

`p?[43*(n-63)+n]`
-/

namespace A142300.P11809774824006762256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  43 * ((n : ℤ) - 63) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142300.P11809774824006762256

namespace A142300

/-- `p?[43*(n-63)+n]` -/
def P11809774824006762256.Spec : Prop :=
  ∀ n, P11809774824006762256.a n = A142300 (n + 1)

end A142300

/-! ## A142300.P11209554259235787295

`∩[A141183(n+1), A141855(n+1)]`
-/

namespace A142300.P11209554259235787295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142300.P11209554259235787295

namespace A142300

/-- `∩[A141183(n+1), A141855(n+1)]` -/
def P11209554259235787295.Spec : Prop :=
  ∀ n, (P11209554259235787295.a n : ℤ) = A142300 (n + 1)

end A142300

/-! ## A142300.P7988089826227172943

`∩[A040122(n+1), A141855(n+1)]`
-/

namespace A142300.P7988089826227172943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142300.P7988089826227172943

namespace A142300

/-- `∩[A040122(n+1), A141855(n+1)]` -/
def P7988089826227172943.Spec : Prop :=
  ∀ n, (P7988089826227172943.a n : ℤ) = A142300 (n + 1)

end A142300

/-! ## A142300.P18142778501115147055

`∩[A038881(n+1), A141855(n+1)]`
-/

namespace A142300.P18142778501115147055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142300.P18142778501115147055

namespace A142300

/-- `∩[A038881(n+1), A141855(n+1)]` -/
def P18142778501115147055.Spec : Prop :=
  ∀ n, (P18142778501115147055.a n : ℤ) = A142300 (n + 1)

end A142300

/-! ## A142300.P15607203198786536570

`∩[A141855(n+1), A296935(n+1)]`
-/

namespace A142300.P15607203198786536570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142300.P15607203198786536570

namespace A142300

/-- `∩[A141855(n+1), A296935(n+1)]` -/
def P15607203198786536570.Spec : Prop :=
  ∀ n, (P15607203198786536570.a n : ℤ) = A142300 (n + 1)

end A142300

/-! ## A142300.P4004877814613383179

`∩[A002145(n+1), A141855(n+1)]`
-/

namespace A142300.P4004877814613383179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142300.P4004877814613383179

namespace A142300

/-- `∩[A002145(n+1), A141855(n+1)]` -/
def P4004877814613383179.Spec : Prop :=
  ∀ n, (P4004877814613383179.a n : ℤ) = A142300 (n + 1)

end A142300

/-! ## A142300.P155505737944769369

`∩[A045326(n+1), A141855(n+1)]`
-/

namespace A142300.P155505737944769369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142300.P155505737944769369

namespace A142300

/-- `∩[A045326(n+1), A141855(n+1)]` -/
def P155505737944769369.Spec : Prop :=
  ∀ n, (P155505737944769369.a n : ℤ) = A142300 (n + 1)

end A142300

/-! ## A142300.P12767182660255612495

`∩[A085760(n+1), A141855(n+1)]`
-/

namespace A142300.P12767182660255612495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142300.P12767182660255612495

namespace A142300

/-- `∩[A085760(n+1), A141855(n+1)]` -/
def P12767182660255612495.Spec : Prop :=
  ∀ n, (P12767182660255612495.a n : ℤ) = A142300 (n + 1)

end A142300

/-! ## A142300.P3698823141449719064

`∩[A141855(n+1), A197504(n+1)]`
-/

namespace A142300.P3698823141449719064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142300.P3698823141449719064

namespace A142300

/-- `∩[A141855(n+1), A197504(n+1)]` -/
def P3698823141449719064.Spec : Prop :=
  ∀ n, (P3698823141449719064.a n : ℤ) = A142300 (n + 1)

end A142300

/-! ## A142300.P13659131775790159118

`∩[A141855(n+1), A332555(n+1)]`
-/

namespace A142300.P13659131775790159118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142300.P13659131775790159118

namespace A142300

/-- `∩[A141855(n+1), A332555(n+1)]` -/
def P13659131775790159118.Spec : Prop :=
  ∀ n, (P13659131775790159118.a n : ℤ) = A142300 (n + 1)

end A142300

/-! ## A142300.P11925837560977798510

`∩[A002145(n+1), A248339(n)]`
-/

namespace A142300.P11925837560977798510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142300.P11925837560977798510

namespace A142300

/-- `∩[A002145(n+1), A248339(n)]` -/
def P11925837560977798510.Spec : Prop :=
  ∀ n, (P11925837560977798510.a n : ℤ) = A142300 (n + 1)

end A142300

/-! ## A142300.P17094735009991949499

`∩[A038881(n+1), A248339(n)]`
-/

namespace A142300.P17094735009991949499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142300.P17094735009991949499

namespace A142300

/-- `∩[A038881(n+1), A248339(n)]` -/
def P17094735009991949499.Spec : Prop :=
  ∀ n, (P17094735009991949499.a n : ℤ) = A142300 (n + 1)

end A142300

/-! ## A142300.P4619263181012814659

`∩[A040122(n+1), A248339(n)]`
-/

namespace A142300.P4619263181012814659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142300.P4619263181012814659

namespace A142300

/-- `∩[A040122(n+1), A248339(n)]` -/
def P4619263181012814659.Spec : Prop :=
  ∀ n, (P4619263181012814659.a n : ℤ) = A142300 (n + 1)

end A142300

/-! ## A142300.P8448987226975363931

`∩[A045326(n+1), A248339(n)]`
-/

namespace A142300.P8448987226975363931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142300.P8448987226975363931

namespace A142300

/-- `∩[A045326(n+1), A248339(n)]` -/
def P8448987226975363931.Spec : Prop :=
  ∀ n, (P8448987226975363931.a n : ℤ) = A142300 (n + 1)

end A142300

/-! ## A142300.P13035928112815661084

`∩[A085760(n+1), A248339(n)]`
-/

namespace A142300.P13035928112815661084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142300.P13035928112815661084

namespace A142300

/-- `∩[A085760(n+1), A248339(n)]` -/
def P13035928112815661084.Spec : Prop :=
  ∀ n, (P13035928112815661084.a n : ℤ) = A142300 (n + 1)

end A142300

/-! ## A142300.P12642632581667308225

`∩[A141183(n+1), A248339(n)]`
-/

namespace A142300.P12642632581667308225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142300.P12642632581667308225

namespace A142300

/-- `∩[A141183(n+1), A248339(n)]` -/
def P12642632581667308225.Spec : Prop :=
  ∀ n, (P12642632581667308225.a n : ℤ) = A142300 (n + 1)

end A142300

/-! ## A142300.P10114010528584063992

`∩[A197504(n+1), A248339(n)]`
-/

namespace A142300.P10114010528584063992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142300.P10114010528584063992

namespace A142300

/-- `∩[A197504(n+1), A248339(n)]` -/
def P10114010528584063992.Spec : Prop :=
  ∀ n, (P10114010528584063992.a n : ℤ) = A142300 (n + 1)

end A142300

/-! ## A142300.P17459945260689693397

`∩[A248339(n), A296935(n+1)]`
-/

namespace A142300.P17459945260689693397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142300.P17459945260689693397

namespace A142300

/-- `∩[A248339(n), A296935(n+1)]` -/
def P17459945260689693397.Spec : Prop :=
  ∀ n, (P17459945260689693397.a n : ℤ) = A142300 (n + 1)

end A142300

/-! ## A142300.P14096872003003355691

`∩[A332555(n+1), A248339(n)]`
-/

namespace A142300.P14096872003003355691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142300.P14096872003003355691

namespace A142300

/-- `∩[A332555(n+1), A248339(n)]` -/
def P14096872003003355691.Spec : Prop :=
  ∀ n, (P14096872003003355691.a n : ℤ) = A142300 (n + 1)

end A142300

/-!
# A142301: Primes congruent to 21 mod 44.

The programs for A142301, the canonical program `A142301.P13322853834450072478` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142301 has offset 1).

The definition of A142301 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3917 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142301.P13322853834450072478

`p?[a(n-1)+44]` with `a(0)=21`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142301

/-- `p?[a(n-1)+44]` -/
def P13322853834450072478.Spec : Prop :=
  ∀ n, (P13322853834450072478.a n : ℤ) = A142301 (n + 1)

theorem P13322853834450072478.correct : P13322853834450072478.Spec := by
  intro n
  simp only [A142301, Nat.add_sub_cancel]

end A142301

/-! ## A142301.P11730783843872169981

`p?[11*(4*n+2)-1]`
-/

namespace A142301.P11730783843872169981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 * (4 * n + 2) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142301.P11730783843872169981

namespace A142301

/-- `p?[11*(4*n+2)-1]` -/
def P11730783843872169981.Spec : Prop :=
  ∀ n, P11730783843872169981.a n = A142301 (n + 1)

end A142301

/-! ## A142301.P9980512586668236464

`∩[A008846(n+1), A141857(n+1)]`
-/

namespace A142301.P9980512586668236464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142301.P9980512586668236464

namespace A142301

/-- `∩[A008846(n+1), A141857(n+1)]` -/
def P9980512586668236464.Spec : Prop :=
  ∀ n, (P9980512586668236464.a n : ℤ) = A142301 (n + 1)

end A142301

/-! ## A142301.P6225903017111736653

`∩[A141857(n+1), A191218(n+1)]`
-/

namespace A142301.P6225903017111736653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142301.P6225903017111736653

namespace A142301

/-- `∩[A141857(n+1), A191218(n+1)]` -/
def P6225903017111736653.Spec : Prop :=
  ∀ n, (P6225903017111736653.a n : ℤ) = A142301 (n + 1)

end A142301

/-! ## A142301.P6763522365486087734

`∩[A096785(n+1), A141857(n+1)]`
-/

namespace A142301.P6763522365486087734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142301.P6763522365486087734

namespace A142301

/-- `∩[A096785(n+1), A141857(n+1)]` -/
def P6763522365486087734.Spec : Prop :=
  ∀ n, (P6763522365486087734.a n : ℤ) = A142301 (n + 1)

end A142301

/-! ## A142301.P1276864776291673305

`∩[A002144(n+1), A141857(n+1)]`
-/

namespace A142301.P1276864776291673305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142301.P1276864776291673305

namespace A142301

/-- `∩[A002144(n+1), A141857(n+1)]` -/
def P1276864776291673305.Spec : Prop :=
  ∀ n, (P1276864776291673305.a n : ℤ) = A142301 (n + 1)

end A142301

/-! ## A142301.P2391017832715145457

`∩[A002313(n+1), A141857(n+1)]`
-/

namespace A142301.P2391017832715145457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142301.P2391017832715145457

namespace A142301

/-- `∩[A002313(n+1), A141857(n+1)]` -/
def P2391017832715145457.Spec : Prop :=
  ∀ n, (P2391017832715145457.a n : ℤ) = A142301 (n + 1)

end A142301

/-! ## A142301.P124954587294421525

`∩[A141857(n+1), A280084(n+1)]`
-/

namespace A142301.P124954587294421525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142301.P124954587294421525

namespace A142301

/-- `∩[A141857(n+1), A280084(n+1)]` -/
def P124954587294421525.Spec : Prop :=
  ∀ n, (P124954587294421525.a n : ℤ) = A142301 (n + 1)

end A142301

/-! ## A142301.P10697720964905795266

`∩[A038882(n+1), A141857(n+1)]`
-/

namespace A142301.P10697720964905795266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142301.P10697720964905795266

namespace A142301

/-- `∩[A038882(n+1), A141857(n+1)]` -/
def P10697720964905795266.Spec : Prop :=
  ∀ n, (P10697720964905795266.a n : ℤ) = A142301 (n + 1)

end A142301

/-! ## A142301.P17164526134973990458

`∩[A141857(n+1), A296936(n+1)]`
-/

namespace A142301.P17164526134973990458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142301.P17164526134973990458

namespace A142301

/-- `∩[A141857(n+1), A296936(n+1)]` -/
def P17164526134973990458.Spec : Prop :=
  ∀ n, (P17164526134973990458.a n : ℤ) = A142301 (n + 1)

end A142301

/-! ## A142301.P12941012640518357403

`∩[A055025(n+1), A141857(n+1)]`
-/

namespace A142301.P12941012640518357403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142301.P12941012640518357403

namespace A142301

/-- `∩[A055025(n+1), A141857(n+1)]` -/
def P12941012640518357403.Spec : Prop :=
  ∀ n, (P12941012640518357403.a n : ℤ) = A142301 (n + 1)

end A142301

/-! ## A142301.P2004281279694821004

`∩[A120960(n+1), A141857(n+1)]`
-/

namespace A142301.P2004281279694821004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142301.P2004281279694821004

namespace A142301

/-- `∩[A120960(n+1), A141857(n+1)]` -/
def P2004281279694821004.Spec : Prop :=
  ∀ n, (P2004281279694821004.a n : ℤ) = A142301 (n + 1)

end A142301

/-! ## A142301.P13981111653316414439

`∩[A085759(n+1), A141857(n+1)]`
-/

namespace A142301.P13981111653316414439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142301.P13981111653316414439

namespace A142301

/-- `∩[A085759(n+1), A141857(n+1)]` -/
def P13981111653316414439.Spec : Prop :=
  ∀ n, (P13981111653316414439.a n : ℤ) = A142301 (n + 1)

end A142301

/-! ## A142301.P16778406168628872695

`∩[A002144(n+1), A248339(n)+2]`
-/

namespace A142301.P16778406168628872695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142301.P16778406168628872695

namespace A142301

/-- `∩[A002144(n+1), A248339(n)+2]` -/
def P16778406168628872695.Spec : Prop :=
  ∀ n, (P16778406168628872695.a n : ℤ) = A142301 (n + 1)

end A142301

/-! ## A142301.P4410333670542816565

`∩[A002313(n+1), A248339(n)+2]`
-/

namespace A142301.P4410333670542816565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142301.P4410333670542816565

namespace A142301

/-- `∩[A002313(n+1), A248339(n)+2]` -/
def P4410333670542816565.Spec : Prop :=
  ∀ n, (P4410333670542816565.a n : ℤ) = A142301 (n + 1)

end A142301

/-! ## A142301.P9543951727150863220

`∩[A038882(n+1), A248339(n)+2]`
-/

namespace A142301.P9543951727150863220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142301.P9543951727150863220

namespace A142301

/-- `∩[A038882(n+1), A248339(n)+2]` -/
def P9543951727150863220.Spec : Prop :=
  ∀ n, (P9543951727150863220.a n : ℤ) = A142301 (n + 1)

end A142301

/-! ## A142301.P129220553467372956

`∩[A055025(n+1), A248339(n)+2]`
-/

namespace A142301.P129220553467372956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142301.P129220553467372956

namespace A142301

/-- `∩[A055025(n+1), A248339(n)+2]` -/
def P129220553467372956.Spec : Prop :=
  ∀ n, (P129220553467372956.a n : ℤ) = A142301 (n + 1)

end A142301

/-! ## A142301.P12178386922322463864

`∩[A280084(n+1), A248339(n)+2]`
-/

namespace A142301.P12178386922322463864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142301.P12178386922322463864

namespace A142301

/-- `∩[A280084(n+1), A248339(n)+2]` -/
def P12178386922322463864.Spec : Prop :=
  ∀ n, (P12178386922322463864.a n : ℤ) = A142301 (n + 1)

end A142301

/-! ## A142301.P13695827156534817374

`∩[A296936(n+1), A248339(n)+2]`
-/

namespace A142301.P13695827156534817374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142301.P13695827156534817374

namespace A142301

/-- `∩[A296936(n+1), A248339(n)+2]` -/
def P13695827156534817374.Spec : Prop :=
  ∀ n, (P13695827156534817374.a n : ℤ) = A142301 (n + 1)

end A142301

/-! ## A142301.P9586882018475034656

`∩[A002144(n+1), A161709(n)-2]`
-/

namespace A142301.P9586882018475034656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142301.P9586882018475034656

namespace A142301

/-- `∩[A002144(n+1), A161709(n)-2]` -/
def P9586882018475034656.Spec : Prop :=
  ∀ n, (P9586882018475034656.a n : ℤ) = A142301 (n + 1)

end A142301

/-!
# A142302: Primes congruent to 23 mod 44.

The programs for A142302, the canonical program `A142302.P941425820295180325` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142302 has offset 1).

The definition of A142302 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3955 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142302.P941425820295180325

`p?[a(n-1)+44]` with `a(0)=23`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142302

/-- `p?[a(n-1)+44]` -/
def P941425820295180325.Spec : Prop :=
  ∀ n, (P941425820295180325.a n : ℤ) = A142302 (n + 1)

theorem P941425820295180325.correct : P941425820295180325.Spec := by
  intro n
  simp only [A142302, Nat.add_sub_cancel]

end A142302

/-! ## A142302.P10906698210436052022

`p?[11*(4*n+2)+1]`
-/

namespace A142302.P10906698210436052022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * (4 * n + 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142302.P10906698210436052022

namespace A142302

/-- `p?[11*(4*n+2)+1]` -/
def P10906698210436052022.Spec : Prop :=
  ∀ n, (P10906698210436052022.a n : ℤ) = A142302 (n + 1)

end A142302

/-! ## A142302.P2789469377833889787

`∩[A002145(n+1), A141849(n+1)]`
-/

namespace A142302.P2789469377833889787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142302.P2789469377833889787

namespace A142302

/-- `∩[A002145(n+1), A141849(n+1)]` -/
def P2789469377833889787.Spec : Prop :=
  ∀ n, (P2789469377833889787.a n : ℤ) = A142302 (n + 1)

end A142302

/-! ## A142302.P5672937864429224686

`∩[A038882(n+1), A141849(n+1)]`
-/

namespace A142302.P5672937864429224686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142302.P5672937864429224686

namespace A142302

/-- `∩[A038882(n+1), A141849(n+1)]` -/
def P5672937864429224686.Spec : Prop :=
  ∀ n, (P5672937864429224686.a n : ℤ) = A142302 (n + 1)

end A142302

/-! ## A142302.P11595793230995163396

`∩[A045326(n+1), A141849(n+1)]`
-/

namespace A142302.P11595793230995163396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142302.P11595793230995163396

namespace A142302

/-- `∩[A045326(n+1), A141849(n+1)]` -/
def P11595793230995163396.Spec : Prop :=
  ∀ n, (P11595793230995163396.a n : ℤ) = A142302 (n + 1)

end A142302

/-! ## A142302.P17282933215941407391

`∩[A141849(n+1), A296936(n+1)]`
-/

namespace A142302.P17282933215941407391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142302.P17282933215941407391

namespace A142302

/-- `∩[A141849(n+1), A296936(n+1)]` -/
def P17282933215941407391.Spec : Prop :=
  ∀ n, (P17282933215941407391.a n : ℤ) = A142302 (n + 1)

end A142302

/-! ## A142302.P1089704681582256688

`∩[A085760(n+1), A141849(n+1)]`
-/

namespace A142302.P1089704681582256688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142302.P1089704681582256688

namespace A142302

/-- `∩[A085760(n+1), A141849(n+1)]` -/
def P1089704681582256688.Spec : Prop :=
  ∀ n, (P1089704681582256688.a n : ℤ) = A142302 (n + 1)

end A142302

/-! ## A142302.P7953012755484981835

`∩[A141849(n+1), A197504(n+1)]`
-/

namespace A142302.P7953012755484981835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142302.P7953012755484981835

namespace A142302

/-- `∩[A141849(n+1), A197504(n+1)]` -/
def P7953012755484981835.Spec : Prop :=
  ∀ n, (P7953012755484981835.a n : ℤ) = A142302 (n + 1)

end A142302

/-! ## A142302.P1641677194704456185

`∩[A141849(n+1), A332555(n+1)]`
-/

namespace A142302.P1641677194704456185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142302.P1641677194704456185

namespace A142302

/-- `∩[A141849(n+1), A332555(n+1)]` -/
def P1641677194704456185.Spec : Prop :=
  ∀ n, (P1641677194704456185.a n : ℤ) = A142302 (n + 1)

end A142302

/-! ## A142302.P11872021454190796937

`or(1, p?[A161709(Δ[n²])])`
-/

namespace A142302.P11872021454190796937
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142302.P11872021454190796937

namespace A142302

/-- `or(1, p?[A161709(Δ[n²])])` -/
def P11872021454190796937.Spec : Prop :=
  ∀ n, P11872021454190796937.a n = A142302 (n + 1)

end A142302

/-! ## A142302.P8507016155140588994

`∩[A002145(n+1), A161709(n)]`
-/

namespace A142302.P8507016155140588994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142302.P8507016155140588994

namespace A142302

/-- `∩[A002145(n+1), A161709(n)]` -/
def P8507016155140588994.Spec : Prop :=
  ∀ n, (P8507016155140588994.a n : ℤ) = A142302 (n + 1)

end A142302

/-! ## A142302.P1061148763063865564

`∩[A038882(n+1), A161709(n)]`
-/

namespace A142302.P1061148763063865564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142302.P1061148763063865564

namespace A142302

/-- `∩[A038882(n+1), A161709(n)]` -/
def P1061148763063865564.Spec : Prop :=
  ∀ n, (P1061148763063865564.a n : ℤ) = A142302 (n + 1)

end A142302

/-! ## A142302.P2954011872277211292

`∩[A045326(n+1), A161709(n)]`
-/

namespace A142302.P2954011872277211292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142302.P2954011872277211292

namespace A142302

/-- `∩[A045326(n+1), A161709(n)]` -/
def P2954011872277211292.Spec : Prop :=
  ∀ n, (P2954011872277211292.a n : ℤ) = A142302 (n + 1)

end A142302

/-! ## A142302.P15322606740856700851

`∩[A296936(n+1), A161709(n)]`
-/

namespace A142302.P15322606740856700851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142302.P15322606740856700851

namespace A142302

/-- `∩[A296936(n+1), A161709(n)]` -/
def P15322606740856700851.Spec : Prop :=
  ∀ n, (P15322606740856700851.a n : ℤ) = A142302 (n + 1)

end A142302

/-! ## A142302.P6409119991845841384

`∩[A161709(2*n+1), A215134(n+2)]`
-/

namespace A142302.P6409119991845841384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215134 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142302.P6409119991845841384

namespace A142302

/-- `∩[A161709(2*n+1), A215134(n+2)]` -/
def P6409119991845841384.Spec : Prop :=
  ∀ n, (P6409119991845841384.a n : ℤ) = A142302 (n + 1)

end A142302

/-! ## A142302.P18294796410165773473

`∩[A161709(2*n+1), A215214(n+2)]`
-/

namespace A142302.P18294796410165773473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215214 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142302.P18294796410165773473

namespace A142302

/-- `∩[A161709(2*n+1), A215214(n+2)]` -/
def P18294796410165773473.Spec : Prop :=
  ∀ n, (P18294796410165773473.a n : ℤ) = A142302 (n + 1)

end A142302

/-! ## A142302.P15745256717306591913

`∩[A161709(2*n+1), A215378(n+2)]`
-/

namespace A142302.P15745256717306591913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215378 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142302.P15745256717306591913

namespace A142302

/-- `∩[A161709(2*n+1), A215378(n+2)]` -/
def P15745256717306591913.Spec : Prop :=
  ∀ n, (P15745256717306591913.a n : ℤ) = A142302 (n + 1)

end A142302

/-! ## A142302.P6210020502437818074

`∩[A161709(2*n+1), A215390(n+2)]`
-/

namespace A142302.P6210020502437818074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215390 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142302.P6210020502437818074

namespace A142302

/-- `∩[A161709(2*n+1), A215390(n+2)]` -/
def P6210020502437818074.Spec : Prop :=
  ∀ n, (P6210020502437818074.a n : ℤ) = A142302 (n + 1)

end A142302

/-! ## A142302.P14764618856813768483

`∩[A141849(n+1), A292762(n+1)]`
-/

namespace A142302.P14764618856813768483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142302.P14764618856813768483

namespace A142302

/-- `∩[A141849(n+1), A292762(n+1)]` -/
def P14764618856813768483.Spec : Prop :=
  ∀ n, (P14764618856813768483.a n : ℤ) = A142302 (n + 1)

end A142302

/-! ## A142302.P6399210427610532840

`∩[A066499(n+1), A141849(n+1)]`
-/

namespace A142302.P6399210427610532840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142302.P6399210427610532840

namespace A142302

/-- `∩[A066499(n+1), A141849(n+1)]` -/
def P6399210427610532840.Spec : Prop :=
  ∀ n, (P6399210427610532840.a n : ℤ) = A142302 (n + 1)

end A142302

/-!
# A142303: Primes congruent to 25 mod 44.

The programs for A142303, the canonical program `A142303.P17998901484285474109` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142303 has offset 1).

The definition of A142303 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4960 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142303.P17998901484285474109

`A141850(eq[1, A141850(n+1)%4]+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A142303

/-- `A141850(eq[1, A141850(n+1)%4]+1)` -/
def P17998901484285474109.Spec : Prop :=
  ∀ n, P17998901484285474109.a n = A142303 (n + 1)

theorem P17998901484285474109.correct : P17998901484285474109.Spec := by
  intro n
  simp only [A142303, Nat.add_sub_cancel]

end A142303

/-! ## A142303.P7074204845695941067

`A141850(eq[1, and(3, A141850(n+1))]+1)`
-/

namespace A142303.P7074204845695941067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A141850 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A142303.P7074204845695941067

namespace A142303

/-- `A141850(eq[1, and(3, A141850(n+1))]+1)` -/
def P7074204845695941067.Spec : Prop :=
  ∀ n, P7074204845695941067.a n = A142303 (n + 1)

end A142303

/-! ## A142303.P11300284931915349329

`p?[4*11*n-63]`
-/

namespace A142303.P11300284931915349329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (11 * n) : ℤ) - 63

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142303.P11300284931915349329

namespace A142303

/-- `p?[4*11*n-63]` -/
def P11300284931915349329.Spec : Prop :=
  ∀ n, P11300284931915349329.a n = A142303 (n + 1)

end A142303

/-! ## A142303.P12942342173641544324

`∩[A008846(n+1), A141850(n+1)]`
-/

namespace A142303.P12942342173641544324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142303.P12942342173641544324

namespace A142303

/-- `∩[A008846(n+1), A141850(n+1)]` -/
def P12942342173641544324.Spec : Prop :=
  ∀ n, (P12942342173641544324.a n : ℤ) = A142303 (n + 1)

end A142303

/-! ## A142303.P1189674992935882827

`∩[A141182(n+1), A141850(n+1)]`
-/

namespace A142303.P1189674992935882827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142303.P1189674992935882827

namespace A142303

/-- `∩[A141182(n+1), A141850(n+1)]` -/
def P1189674992935882827.Spec : Prop :=
  ∀ n, (P1189674992935882827.a n : ℤ) = A142303 (n + 1)

end A142303

/-! ## A142303.P7151272180490167072

`∩[A141182(n+1), A214888(n+1)]`
-/

namespace A142303.P7151272180490167072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142303.P7151272180490167072

namespace A142303

/-- `∩[A141182(n+1), A214888(n+1)]` -/
def P7151272180490167072.Spec : Prop :=
  ∀ n, (P7151272180490167072.a n : ℤ) = A142303 (n + 1)

end A142303

/-! ## A142303.P8265514238779934215

`∩[A141182(n+1), A215374(n+1)]`
-/

namespace A142303.P8265514238779934215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142303.P8265514238779934215

namespace A142303

/-- `∩[A141182(n+1), A215374(n+1)]` -/
def P8265514238779934215.Spec : Prop :=
  ∀ n, (P8265514238779934215.a n : ℤ) = A142303 (n + 1)

end A142303

/-! ## A142303.P12845402499572043793

`∩[A141182(n+1), A215386(n+1)]`
-/

namespace A142303.P12845402499572043793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142303.P12845402499572043793

namespace A142303

/-- `∩[A141182(n+1), A215386(n+1)]` -/
def P12845402499572043793.Spec : Prop :=
  ∀ n, (P12845402499572043793.a n : ℤ) = A142303 (n + 1)

end A142303

/-! ## A142303.P5822323225447781963

`∩[A141850(n+1), A191218(n+1)]`
-/

namespace A142303.P5822323225447781963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142303.P5822323225447781963

namespace A142303

/-- `∩[A141850(n+1), A191218(n+1)]` -/
def P5822323225447781963.Spec : Prop :=
  ∀ n, (P5822323225447781963.a n : ℤ) = A142303 (n + 1)

end A142303

/-! ## A142303.P9655127386685031708

`∩[A002144(n+1), A141850(n+1)]`
-/

namespace A142303.P9655127386685031708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142303.P9655127386685031708

namespace A142303

/-- `∩[A002144(n+1), A141850(n+1)]` -/
def P9655127386685031708.Spec : Prop :=
  ∀ n, (P9655127386685031708.a n : ℤ) = A142303 (n + 1)

end A142303

/-! ## A142303.P7701433780980255192

`∩[A038881(n+1), A141850(n+1)]`
-/

namespace A142303.P7701433780980255192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142303.P7701433780980255192

namespace A142303

/-- `∩[A038881(n+1), A141850(n+1)]` -/
def P7701433780980255192.Spec : Prop :=
  ∀ n, (P7701433780980255192.a n : ℤ) = A142303 (n + 1)

end A142303

/-! ## A142303.P7946908722918630880

`∩[A002313(n+1), A141850(n+1)]`
-/

namespace A142303.P7946908722918630880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142303.P7946908722918630880

namespace A142303

/-- `∩[A002313(n+1), A141850(n+1)]` -/
def P7946908722918630880.Spec : Prop :=
  ∀ n, (P7946908722918630880.a n : ℤ) = A142303 (n + 1)

end A142303

/-! ## A142303.P5924842790489581584

`∩[A141850(n+1), A280084(n+1)]`
-/

namespace A142303.P5924842790489581584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142303.P5924842790489581584

namespace A142303

/-- `∩[A141850(n+1), A280084(n+1)]` -/
def P5924842790489581584.Spec : Prop :=
  ∀ n, (P5924842790489581584.a n : ℤ) = A142303 (n + 1)

end A142303

/-! ## A142303.P909948665495540024

`∩[A141850(n+1), A296935(n+1)]`
-/

namespace A142303.P909948665495540024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142303.P909948665495540024

namespace A142303

/-- `∩[A141850(n+1), A296935(n+1)]` -/
def P909948665495540024.Spec : Prop :=
  ∀ n, (P909948665495540024.a n : ℤ) = A142303 (n + 1)

end A142303

/-! ## A142303.P734770647156538950

`∩[A055025(n+1), A141850(n+1)]`
-/

namespace A142303.P734770647156538950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142303.P734770647156538950

namespace A142303

/-- `∩[A055025(n+1), A141850(n+1)]` -/
def P734770647156538950.Spec : Prop :=
  ∀ n, (P734770647156538950.a n : ℤ) = A142303 (n + 1)

end A142303

/-! ## A142303.P17772291980597561693

`∩[A120960(n+1), A141850(n+1)]`
-/

namespace A142303.P17772291980597561693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142303.P17772291980597561693

namespace A142303

/-- `∩[A120960(n+1), A141850(n+1)]` -/
def P17772291980597561693.Spec : Prop :=
  ∀ n, (P17772291980597561693.a n : ℤ) = A142303 (n + 1)

end A142303

/-! ## A142303.P8359465588695348208

`∩[A085759(n+1), A141850(n+1)]`
-/

namespace A142303.P8359465588695348208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142303.P8359465588695348208

namespace A142303

/-- `∩[A085759(n+1), A141850(n+1)]` -/
def P8359465588695348208.Spec : Prop :=
  ∀ n, (P8359465588695348208.a n : ℤ) = A142303 (n + 1)

end A142303

/-! ## A142303.P5007408290852869994

`∩[A002144(n+1), A161709(n)+2]`
-/

namespace A142303.P5007408290852869994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142303.P5007408290852869994

namespace A142303

/-- `∩[A002144(n+1), A161709(n)+2]` -/
def P5007408290852869994.Spec : Prop :=
  ∀ n, (P5007408290852869994.a n : ℤ) = A142303 (n + 1)

end A142303

/-! ## A142303.P5779900208569555493

`∩[A002313(n+1), A161709(n)+2]`
-/

namespace A142303.P5779900208569555493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142303.P5779900208569555493

namespace A142303

/-- `∩[A002313(n+1), A161709(n)+2]` -/
def P5779900208569555493.Spec : Prop :=
  ∀ n, (P5779900208569555493.a n : ℤ) = A142303 (n + 1)

end A142303

/-! ## A142303.P1134786965798421417

`∩[A038881(n+1), A161709(n)+2]`
-/

namespace A142303.P1134786965798421417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142303.P1134786965798421417

namespace A142303

/-- `∩[A038881(n+1), A161709(n)+2]` -/
def P1134786965798421417.Spec : Prop :=
  ∀ n, (P1134786965798421417.a n : ℤ) = A142303 (n + 1)

end A142303

/-!
# A142304: Primes congruent to 27 mod 44.

The programs for A142304, the canonical program `A142304.P2644614537605367875` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142304 has offset 1).

The definition of A142304 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3916 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142304.P2644614537605367875

`p?[44*n-17]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142304

/-- `p?[44*n-17]` -/
def P2644614537605367875.Spec : Prop :=
  ∀ n, P2644614537605367875.a n = A142304 (n + 1)

theorem P2644614537605367875.correct : P2644614537605367875.Spec := by
  intro n
  simp only [A142304, Nat.add_sub_cancel]

end A142304

/-! ## A142304.P12198446462868773181

`or(1, p?[A304157(n+1)+3])`
-/

namespace A142304.P12198446462868773181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304157 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142304.P12198446462868773181

namespace A142304

/-- `or(1, p?[A304157(n+1)+3])` -/
def P12198446462868773181.Spec : Prop :=
  ∀ n, P12198446462868773181.a n = A142304 (n + 1)

end A142304

/-! ## A142304.P13326284958583748603

`A000027(p?[A304157(n+1)+3])`
-/

namespace A142304.P13326284958583748603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304157 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142304.P13326284958583748603

namespace A142304

/-- `A000027(p?[A304157(n+1)+3])` -/
def P13326284958583748603.Spec : Prop :=
  ∀ n, P13326284958583748603.a n = A142304 (n + 1)

end A142304

/-! ## A142304.P7060976782904907267

`A000007(n+1)+p?[A304157(n+1)+3]`
-/

namespace A142304.P7060976782904907267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304157 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142304.P7060976782904907267

namespace A142304

/-- `A000007(n+1)+p?[A304157(n+1)+3]` -/
def P7060976782904907267.Spec : Prop :=
  ∀ n, P7060976782904907267.a n = A142304 (n + 1)

end A142304

/-! ## A142304.P17424489228742258298

`A000038(n+1)+p?[A304157(n+1)+3]`
-/

namespace A142304.P17424489228742258298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304157 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142304.P17424489228742258298

namespace A142304

/-- `A000038(n+1)+p?[A304157(n+1)+3]` -/
def P17424489228742258298.Spec : Prop :=
  ∀ n, P17424489228742258298.a n = A142304 (n + 1)

end A142304

/-! ## A142304.P185801212557202266

`p?[A304157(n+1)+3]%A127341(n+1)`
-/

namespace A142304.P185801212557202266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304157 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A127341 (n + 1))

end

end A142304.P185801212557202266

namespace A142304

/-- `p?[A304157(n+1)+3]%A127341(n+1)` -/
def P185801212557202266.Spec : Prop :=
  ∀ n, P185801212557202266.a n = A142304 (n + 1)

end A142304

/-! ## A142304.P18299106143942967523

`A001221(A000430(n+1))*p?[A304157(n+1)+3]`
-/

namespace A142304.P18299106143942967523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304157 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000430 (n + 1)).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142304.P18299106143942967523

namespace A142304

/-- `A001221(A000430(n+1))*p?[A304157(n+1)+3]` -/
def P18299106143942967523.Spec : Prop :=
  ∀ n, P18299106143942967523.a n = A142304 (n + 1)

end A142304

/-! ## A142304.P17625358201553168055

`p?[A304157(n+1)+3]*A051707(A020639(n+1))`
-/

namespace A142304.P17625358201553168055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304157 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A051707 (A020639 (n + 1)).toNat

end

end A142304.P17625358201553168055

namespace A142304

/-- `p?[A304157(n+1)+3]*A051707(A020639(n+1))` -/
def P17625358201553168055.Spec : Prop :=
  ∀ n, P17625358201553168055.a n = A142304 (n + 1)

end A142304

/-! ## A142304.P10562071119367771027

`∩[A002145(n+1), A141852(n+1)]`
-/

namespace A142304.P10562071119367771027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142304.P10562071119367771027

namespace A142304

/-- `∩[A002145(n+1), A141852(n+1)]` -/
def P10562071119367771027.Spec : Prop :=
  ∀ n, (P10562071119367771027.a n : ℤ) = A142304 (n + 1)

end A142304

/-! ## A142304.P3495134026479867187

`∩[A045326(n+1), A141852(n+1)]`
-/

namespace A142304.P3495134026479867187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142304.P3495134026479867187

namespace A142304

/-- `∩[A045326(n+1), A141852(n+1)]` -/
def P3495134026479867187.Spec : Prop :=
  ∀ n, (P3495134026479867187.a n : ℤ) = A142304 (n + 1)

end A142304

/-! ## A142304.P5704297083592977022

`∩[A038882(n+1), A141852(n+1)]`
-/

namespace A142304.P5704297083592977022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142304.P5704297083592977022

namespace A142304

/-- `∩[A038882(n+1), A141852(n+1)]` -/
def P5704297083592977022.Spec : Prop :=
  ∀ n, (P5704297083592977022.a n : ℤ) = A142304 (n + 1)

end A142304

/-! ## A142304.P5147414541781645301

`∩[A085760(n+1), A141852(n+1)]`
-/

namespace A142304.P5147414541781645301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142304.P5147414541781645301

namespace A142304

/-- `∩[A085760(n+1), A141852(n+1)]` -/
def P5147414541781645301.Spec : Prop :=
  ∀ n, (P5147414541781645301.a n : ℤ) = A142304 (n + 1)

end A142304

/-! ## A142304.P1387647748963156559

`∩[A141852(n+1), A296936(n+1)]`
-/

namespace A142304.P1387647748963156559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142304.P1387647748963156559

namespace A142304

/-- `∩[A141852(n+1), A296936(n+1)]` -/
def P1387647748963156559.Spec : Prop :=
  ∀ n, (P1387647748963156559.a n : ℤ) = A142304 (n + 1)

end A142304

/-! ## A142304.P783018913216956610

`∩[A141852(n+1), A197504(n+1)]`
-/

namespace A142304.P783018913216956610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142304.P783018913216956610

namespace A142304

/-- `∩[A141852(n+1), A197504(n+1)]` -/
def P783018913216956610.Spec : Prop :=
  ∀ n, (P783018913216956610.a n : ℤ) = A142304 (n + 1)

end A142304

/-! ## A142304.P4857511562952801536

`∩[A141852(n+1), A332555(n+1)]`
-/

namespace A142304.P4857511562952801536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142304.P4857511562952801536

namespace A142304

/-- `∩[A141852(n+1), A332555(n+1)]` -/
def P4857511562952801536.Spec : Prop :=
  ∀ n, (P4857511562952801536.a n : ℤ) = A142304 (n + 1)

end A142304

/-! ## A142304.P1646719827319881028

`∩[A141852(n+1), A292762(n+1)]`
-/

namespace A142304.P1646719827319881028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142304.P1646719827319881028

namespace A142304

/-- `∩[A141852(n+1), A292762(n+1)]` -/
def P1646719827319881028.Spec : Prop :=
  ∀ n, (P1646719827319881028.a n : ℤ) = A142304 (n + 1)

end A142304

/-! ## A142304.P12390858114319323740

`∩[A066499(n+1), A141852(n+1)]`
-/

namespace A142304.P12390858114319323740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142304.P12390858114319323740

namespace A142304

/-- `∩[A066499(n+1), A141852(n+1)]` -/
def P12390858114319323740.Spec : Prop :=
  ∀ n, (P12390858114319323740.a n : ℤ) = A142304 (n + 1)

end A142304

/-! ## A142304.P2693413259354442844

`∩[A097987(n+1), A141852(n+1)]`
-/

namespace A142304.P2693413259354442844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142304.P2693413259354442844

namespace A142304

/-- `∩[A097987(n+1), A141852(n+1)]` -/
def P2693413259354442844.Spec : Prop :=
  ∀ n, (P2693413259354442844.a n : ℤ) = A142304 (n + 1)

end A142304

/-! ## A142304.P5083816975711115254

`∩[A094179(n+1), A141852(n+1)]`
-/

namespace A142304.P5083816975711115254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142304.P5083816975711115254

namespace A142304

/-- `∩[A094179(n+1), A141852(n+1)]` -/
def P5083816975711115254.Spec : Prop :=
  ∀ n, (P5083816975711115254.a n : ℤ) = A142304 (n + 1)

end A142304

/-! ## A142304.P5649763414382797693

`∩[A002145(n+1), A017449(n)]`
-/

namespace A142304.P5649763414382797693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017449 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142304.P5649763414382797693

namespace A142304

/-- `∩[A002145(n+1), A017449(n)]` -/
def P5649763414382797693.Spec : Prop :=
  ∀ n, (P5649763414382797693.a n : ℤ) = A142304 (n + 1)

end A142304

/-!
# A142305: Primes congruent to 29 mod 44.

The programs for A142305, the canonical program `A142305.P14501484807531580135` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142305 has offset 1).

The definition of A142305 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5011 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142305.P14501484807531580135

`A141854(eq[1, and(3, A141854(n+1))]+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A142305

/-- `A141854(eq[1, and(3, A141854(n+1))]+1)` -/
def P14501484807531580135.Spec : Prop :=
  ∀ n, P14501484807531580135.a n = A142305 (n + 1)

theorem P14501484807531580135.correct : P14501484807531580135.Spec := by
  intro n
  simp only [A142305, Nat.add_sub_cancel]

end A142305

/-! ## A142305.P5149394710410523900

`p?[4*11*n-15]`
-/

namespace A142305.P5149394710410523900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (11 * n) : ℤ) - 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142305.P5149394710410523900

namespace A142305

/-- `p?[4*11*n-15]` -/
def P5149394710410523900.Spec : Prop :=
  ∀ n, P5149394710410523900.a n = A142305 (n + 1)

end A142305

/-! ## A142305.P1271306959539923263

`∩[A008846(n+1), A141854(n+1)]`
-/

namespace A142305.P1271306959539923263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142305.P1271306959539923263

namespace A142305

/-- `∩[A008846(n+1), A141854(n+1)]` -/
def P1271306959539923263.Spec : Prop :=
  ∀ n, (P1271306959539923263.a n : ℤ) = A142305 (n + 1)

end A142305

/-! ## A142305.P9949353364680668445

`∩[A141854(n+1), A191218(n+1)]`
-/

namespace A142305.P9949353364680668445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142305.P9949353364680668445

namespace A142305

/-- `∩[A141854(n+1), A191218(n+1)]` -/
def P9949353364680668445.Spec : Prop :=
  ∀ n, (P9949353364680668445.a n : ℤ) = A142305 (n + 1)

end A142305

/-! ## A142305.P13712277882057012659

`∩[A002144(n+1), A141854(n+1)]`
-/

namespace A142305.P13712277882057012659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142305.P13712277882057012659

namespace A142305

/-- `∩[A002144(n+1), A141854(n+1)]` -/
def P13712277882057012659.Spec : Prop :=
  ∀ n, (P13712277882057012659.a n : ℤ) = A142305 (n + 1)

end A142305

/-! ## A142305.P2282857151314580641

`∩[A002313(n+1), A141854(n+1)]`
-/

namespace A142305.P2282857151314580641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142305.P2282857151314580641

namespace A142305

/-- `∩[A002313(n+1), A141854(n+1)]` -/
def P2282857151314580641.Spec : Prop :=
  ∀ n, (P2282857151314580641.a n : ℤ) = A142305 (n + 1)

end A142305

/-! ## A142305.P9839288758964721799

`∩[A141854(n+1), A280084(n+1)]`
-/

namespace A142305.P9839288758964721799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142305.P9839288758964721799

namespace A142305

/-- `∩[A141854(n+1), A280084(n+1)]` -/
def P9839288758964721799.Spec : Prop :=
  ∀ n, (P9839288758964721799.a n : ℤ) = A142305 (n + 1)

end A142305

/-! ## A142305.P3048326648477327040

`∩[A141854(n+1), A296936(n+1)]`
-/

namespace A142305.P3048326648477327040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142305.P3048326648477327040

namespace A142305

/-- `∩[A141854(n+1), A296936(n+1)]` -/
def P3048326648477327040.Spec : Prop :=
  ∀ n, (P3048326648477327040.a n : ℤ) = A142305 (n + 1)

end A142305

/-! ## A142305.P7229612765536070219

`∩[A038882(n+1), A141854(n+1)]`
-/

namespace A142305.P7229612765536070219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142305.P7229612765536070219

namespace A142305

/-- `∩[A038882(n+1), A141854(n+1)]` -/
def P7229612765536070219.Spec : Prop :=
  ∀ n, (P7229612765536070219.a n : ℤ) = A142305 (n + 1)

end A142305

/-! ## A142305.P5051011318695436229

`∩[A055025(n+1), A141854(n+1)]`
-/

namespace A142305.P5051011318695436229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142305.P5051011318695436229

namespace A142305

/-- `∩[A055025(n+1), A141854(n+1)]` -/
def P5051011318695436229.Spec : Prop :=
  ∀ n, (P5051011318695436229.a n : ℤ) = A142305 (n + 1)

end A142305

/-! ## A142305.P10260872575148721752

`∩[A120960(n+1), A141854(n+1)]`
-/

namespace A142305.P10260872575148721752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142305.P10260872575148721752

namespace A142305

/-- `∩[A120960(n+1), A141854(n+1)]` -/
def P10260872575148721752.Spec : Prop :=
  ∀ n, (P10260872575148721752.a n : ℤ) = A142305 (n + 1)

end A142305

/-! ## A142305.P14512694950387666015

`∩[A085759(n+1), A141854(n+1)]`
-/

namespace A142305.P14512694950387666015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142305.P14512694950387666015

namespace A142305

/-- `∩[A085759(n+1), A141854(n+1)]` -/
def P14512694950387666015.Spec : Prop :=
  ∀ n, (P14512694950387666015.a n : ℤ) = A142305 (n + 1)

end A142305

/-! ## A142305.P5770258638883962186

`∩[A002144(n+1), A063154(n+1)-2]`
-/

namespace A142305.P5770258638883962186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063154 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142305.P5770258638883962186

namespace A142305

/-- `∩[A002144(n+1), A063154(n+1)-2]` -/
def P5770258638883962186.Spec : Prop :=
  ∀ n, (P5770258638883962186.a n : ℤ) = A142305 (n + 1)

end A142305

/-! ## A142305.P5003094909294140045

`∩[A002313(n+1), A063154(n+1)-2]`
-/

namespace A142305.P5003094909294140045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063154 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142305.P5003094909294140045

namespace A142305

/-- `∩[A002313(n+1), A063154(n+1)-2]` -/
def P5003094909294140045.Spec : Prop :=
  ∀ n, (P5003094909294140045.a n : ℤ) = A142305 (n + 1)

end A142305

/-! ## A142305.P2908645620630513567

`∩[A038882(n+1), A063154(n+1)-2]`
-/

namespace A142305.P2908645620630513567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063154 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142305.P2908645620630513567

namespace A142305

/-- `∩[A038882(n+1), A063154(n+1)-2]` -/
def P2908645620630513567.Spec : Prop :=
  ∀ n, (P2908645620630513567.a n : ℤ) = A142305 (n + 1)

end A142305

/-! ## A142305.P13240533618471594188

`∩[A063154(n+1)-2, A280084(n+1)]`
-/

namespace A142305.P13240533618471594188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063154 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142305.P13240533618471594188

namespace A142305

/-- `∩[A063154(n+1)-2, A280084(n+1)]` -/
def P13240533618471594188.Spec : Prop :=
  ∀ n, (P13240533618471594188.a n : ℤ) = A142305 (n + 1)

end A142305

/-! ## A142305.P1801834757681899206

`∩[A063154(n+1)-2, A296936(n+1)]`
-/

namespace A142305.P1801834757681899206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063154 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142305.P1801834757681899206

namespace A142305

/-- `∩[A063154(n+1)-2, A296936(n+1)]` -/
def P1801834757681899206.Spec : Prop :=
  ∀ n, (P1801834757681899206.a n : ℤ) = A142305 (n + 1)

end A142305

/-! ## A142305.P8769127449677942953

`∩[A141854(n+1), A351535(n+1)]`
-/

namespace A142305.P8769127449677942953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142305.P8769127449677942953

namespace A142305

/-- `∩[A141854(n+1), A351535(n+1)]` -/
def P8769127449677942953.Spec : Prop :=
  ∀ n, (P8769127449677942953.a n : ℤ) = A142305 (n + 1)

end A142305

/-! ## A142305.P13924330433506016201

`∩[A125018(n+1), A141854(n+1)]`
-/

namespace A142305.P13924330433506016201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142305.P13924330433506016201

namespace A142305

/-- `∩[A125018(n+1), A141854(n+1)]` -/
def P13924330433506016201.Spec : Prop :=
  ∀ n, (P13924330433506016201.a n : ℤ) = A142305 (n + 1)

end A142305

/-! ## A142305.P6793078725500028767

`∩[A040123(n+1), A141854(n+1)]`
-/

namespace A142305.P6793078725500028767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142305.P6793078725500028767

namespace A142305

/-- `∩[A040123(n+1), A141854(n+1)]` -/
def P6793078725500028767.Spec : Prop :=
  ∀ n, (P6793078725500028767.a n : ℤ) = A142305 (n + 1)

end A142305

/-!
# A142306: Primes congruent to 31 mod 44.

The programs for A142306, the canonical program `A142306.P5695032437069678238` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142306 has offset 1).

The definition of A142306 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3953 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142306.P5695032437069678238

`p?[44*n+31]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142306

/-- `p?[44*n+31]` -/
def P5695032437069678238.Spec : Prop :=
  ∀ n, (P5695032437069678238.a n : ℤ) = A142306 (n + 1)

theorem P5695032437069678238.correct : P5695032437069678238.Spec := by
  intro n
  simp only [A142306, Nat.add_sub_cancel]

end A142306

/-! ## A142306.P12049396662636223813

`or(1, p?[A304157(n+1)+7])`
-/

namespace A142306.P12049396662636223813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304157 (n + 1) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142306.P12049396662636223813

namespace A142306

/-- `or(1, p?[A304157(n+1)+7])` -/
def P12049396662636223813.Spec : Prop :=
  ∀ n, P12049396662636223813.a n = A142306 (n + 1)

end A142306

/-! ## A142306.P15589897542922080722

`∩[A002145(n+1), A141856(n+1)]`
-/

namespace A142306.P15589897542922080722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142306.P15589897542922080722

namespace A142306

/-- `∩[A002145(n+1), A141856(n+1)]` -/
def P15589897542922080722.Spec : Prop :=
  ∀ n, (P15589897542922080722.a n : ℤ) = A142306 (n + 1)

end A142306

/-! ## A142306.P13932177748561785517

`∩[A038882(n+1), A141856(n+1)]`
-/

namespace A142306.P13932177748561785517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142306.P13932177748561785517

namespace A142306

/-- `∩[A038882(n+1), A141856(n+1)]` -/
def P13932177748561785517.Spec : Prop :=
  ∀ n, (P13932177748561785517.a n : ℤ) = A142306 (n + 1)

end A142306

/-! ## A142306.P6340287280680983051

`∩[A045326(n+1), A141856(n+1)]`
-/

namespace A142306.P6340287280680983051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142306.P6340287280680983051

namespace A142306

/-- `∩[A045326(n+1), A141856(n+1)]` -/
def P6340287280680983051.Spec : Prop :=
  ∀ n, (P6340287280680983051.a n : ℤ) = A142306 (n + 1)

end A142306

/-! ## A142306.P2684706438747879383

`∩[A141856(n+1), A296936(n+1)]`
-/

namespace A142306.P2684706438747879383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142306.P2684706438747879383

namespace A142306

/-- `∩[A141856(n+1), A296936(n+1)]` -/
def P2684706438747879383.Spec : Prop :=
  ∀ n, (P2684706438747879383.a n : ℤ) = A142306 (n + 1)

end A142306

/-! ## A142306.P4713769200716019473

`∩[A085760(n+1), A141856(n+1)]`
-/

namespace A142306.P4713769200716019473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142306.P4713769200716019473

namespace A142306

/-- `∩[A085760(n+1), A141856(n+1)]` -/
def P4713769200716019473.Spec : Prop :=
  ∀ n, (P4713769200716019473.a n : ℤ) = A142306 (n + 1)

end A142306

/-! ## A142306.P15778364221733903762

`∩[A141856(n+1), A197504(n+1)]`
-/

namespace A142306.P15778364221733903762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142306.P15778364221733903762

namespace A142306

/-- `∩[A141856(n+1), A197504(n+1)]` -/
def P15778364221733903762.Spec : Prop :=
  ∀ n, (P15778364221733903762.a n : ℤ) = A142306 (n + 1)

end A142306

/-! ## A142306.P13821312869776494424

`∩[A141856(n+1), A332555(n+1)]`
-/

namespace A142306.P13821312869776494424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142306.P13821312869776494424

namespace A142306

/-- `∩[A141856(n+1), A332555(n+1)]` -/
def P13821312869776494424.Spec : Prop :=
  ∀ n, (P13821312869776494424.a n : ℤ) = A142306 (n + 1)

end A142306

/-! ## A142306.P4251901447589719051

`∩[A002145(n+1), A063154(n+1)]`
-/

namespace A142306.P4251901447589719051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142306.P4251901447589719051

namespace A142306

/-- `∩[A002145(n+1), A063154(n+1)]` -/
def P4251901447589719051.Spec : Prop :=
  ∀ n, (P4251901447589719051.a n : ℤ) = A142306 (n + 1)

end A142306

/-! ## A142306.P12248109161357158738

`∩[A038882(n+1), A063154(n+1)]`
-/

namespace A142306.P12248109161357158738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142306.P12248109161357158738

namespace A142306

/-- `∩[A038882(n+1), A063154(n+1)]` -/
def P12248109161357158738.Spec : Prop :=
  ∀ n, (P12248109161357158738.a n : ℤ) = A142306 (n + 1)

end A142306

/-! ## A142306.P13061733948533805221

`∩[A045326(n+1), A063154(n+1)]`
-/

namespace A142306.P13061733948533805221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142306.P13061733948533805221

namespace A142306

/-- `∩[A045326(n+1), A063154(n+1)]` -/
def P13061733948533805221.Spec : Prop :=
  ∀ n, (P13061733948533805221.a n : ℤ) = A142306 (n + 1)

end A142306

/-! ## A142306.P9697195016192289738

`∩[A063154(n+1), A296936(n+1)]`
-/

namespace A142306.P9697195016192289738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142306.P9697195016192289738

namespace A142306

/-- `∩[A063154(n+1), A296936(n+1)]` -/
def P9697195016192289738.Spec : Prop :=
  ∀ n, (P9697195016192289738.a n : ℤ) = A142306 (n + 1)

end A142306

/-! ## A142306.P11078630231554456045

`∩[A141856(n+1), A292762(n+1)]`
-/

namespace A142306.P11078630231554456045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142306.P11078630231554456045

namespace A142306

/-- `∩[A141856(n+1), A292762(n+1)]` -/
def P11078630231554456045.Spec : Prop :=
  ∀ n, (P11078630231554456045.a n : ℤ) = A142306 (n + 1)

end A142306

/-! ## A142306.P7795240851593140999

`∩[A066499(n+1), A141856(n+1)]`
-/

namespace A142306.P7795240851593140999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142306.P7795240851593140999

namespace A142306

/-- `∩[A066499(n+1), A141856(n+1)]` -/
def P7795240851593140999.Spec : Prop :=
  ∀ n, (P7795240851593140999.a n : ℤ) = A142306 (n + 1)

end A142306

/-! ## A142306.P10750681947940792397

`∩[A097987(n+1), A141856(n+1)]`
-/

namespace A142306.P10750681947940792397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142306.P10750681947940792397

namespace A142306

/-- `∩[A097987(n+1), A141856(n+1)]` -/
def P10750681947940792397.Spec : Prop :=
  ∀ n, (P10750681947940792397.a n : ℤ) = A142306 (n + 1)

end A142306

/-! ## A142306.P6420212481236750771

`∩[A094179(n+1), A141856(n+1)]`
-/

namespace A142306.P6420212481236750771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142306.P6420212481236750771

namespace A142306

/-- `∩[A094179(n+1), A141856(n+1)]` -/
def P6420212481236750771.Spec : Prop :=
  ∀ n, (P6420212481236750771.a n : ℤ) = A142306 (n + 1)

end A142306

/-! ## A142306.P9529590334784326201

`∩[A002145(n+1), A017497(n)]`
-/

namespace A142306.P9529590334784326201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017497 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142306.P9529590334784326201

namespace A142306

/-- `∩[A002145(n+1), A017497(n)]` -/
def P9529590334784326201.Spec : Prop :=
  ∀ n, (P9529590334784326201.a n : ℤ) = A142306 (n + 1)

end A142306

/-! ## A142306.P7220870224165317592

`∩[A038882(n+1), A017497(n)]`
-/

namespace A142306.P7220870224165317592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017497 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142306.P7220870224165317592

namespace A142306

/-- `∩[A038882(n+1), A017497(n)]` -/
def P7220870224165317592.Spec : Prop :=
  ∀ n, (P7220870224165317592.a n : ℤ) = A142306 (n + 1)

end A142306

/-! ## A142306.P4867298200529409151

`∩[A045326(n+1), A017497(n)]`
-/

namespace A142306.P4867298200529409151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017497 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142306.P4867298200529409151

namespace A142306

/-- `∩[A045326(n+1), A017497(n)]` -/
def P4867298200529409151.Spec : Prop :=
  ∀ n, (P4867298200529409151.a n : ℤ) = A142306 (n + 1)

end A142306

/-!
# A142307: Primes congruent to 35 mod 44.

The programs for A142307, the canonical program `A142307.P7240851486528345183` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142307 has offset 1).

The definition of A142307 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3907 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142307.P7240851486528345183

`p?[44*n-9]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142307

/-- `p?[44*n-9]` -/
def P7240851486528345183.Spec : Prop :=
  ∀ n, P7240851486528345183.a n = A142307 (n + 1)

theorem P7240851486528345183.correct : P7240851486528345183.Spec := by
  intro n
  simp only [A142307, Nat.add_sub_cancel]

end A142307

/-! ## A142307.P8565377171865523883

`or(p?[a(n-1)+44], A035214(n))` with `a(0)=35`
-/

namespace A142307.P8565377171865523883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [35] fun n f1 =>
  f1 (n - 1) + 44

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (A035214 n)

end

end A142307.P8565377171865523883

namespace A142307

/-- `or(p?[a(n-1)+44], A035214(n))` -/
def P8565377171865523883.Spec : Prop :=
  ∀ n, P8565377171865523883.a n = A142307 (n + 1)

end A142307

/-! ## A142307.P14749571751166903406

`or(p?[a(n-1)+44], A008966(n+1))` with `a(0)=35`
-/

namespace A142307.P14749571751166903406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [35] fun n f1 =>
  f1 (n - 1) + 44

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (A008966 (n + 1))

end

end A142307.P14749571751166903406

namespace A142307

/-- `or(p?[a(n-1)+44], A008966(n+1))` -/
def P14749571751166903406.Spec : Prop :=
  ∀ n, P14749571751166903406.a n = A142307 (n + 1)

end A142307

/-! ## A142307.P3877076348652531034

`p?[a(n-1)+44]%A181775(n+1)` with `a(0)=35`
-/

namespace A142307.P3877076348652531034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [35] fun n f1 =>
  f1 (n - 1) + 44

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (A181775 (n + 1))

end

end A142307.P3877076348652531034

namespace A142307

/-- `p?[a(n-1)+44]%A181775(n+1)` -/
def P3877076348652531034.Spec : Prop :=
  ∀ n, P3877076348652531034.a n = A142307 (n + 1)

end A142307

/-! ## A142307.P12868074458080898826

`∩[A038881(n+1), A090187(n+1)]`
-/

namespace A142307.P12868074458080898826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142307.P12868074458080898826

namespace A142307

/-- `∩[A038881(n+1), A090187(n+1)]` -/
def P12868074458080898826.Spec : Prop :=
  ∀ n, (P12868074458080898826.a n : ℤ) = A142307 (n + 1)

end A142307

/-! ## A142307.P5195025681729660780

`∩[A090187(n+1), A296935(n+1)]`
-/

namespace A142307.P5195025681729660780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142307.P5195025681729660780

namespace A142307

/-- `∩[A090187(n+1), A296935(n+1)]` -/
def P5195025681729660780.Spec : Prop :=
  ∀ n, (P5195025681729660780.a n : ℤ) = A142307 (n + 1)

end A142307

/-! ## A142307.P341833391494073536

`∩[A002145(n+1), A090187(n+1)]`
-/

namespace A142307.P341833391494073536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142307.P341833391494073536

namespace A142307

/-- `∩[A002145(n+1), A090187(n+1)]` -/
def P341833391494073536.Spec : Prop :=
  ∀ n, (P341833391494073536.a n : ℤ) = A142307 (n + 1)

end A142307

/-! ## A142307.P16009791668247302108

`∩[A085760(n+1), A090187(n+1)]`
-/

namespace A142307.P16009791668247302108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142307.P16009791668247302108

namespace A142307

/-- `∩[A085760(n+1), A090187(n+1)]` -/
def P16009791668247302108.Spec : Prop :=
  ∀ n, (P16009791668247302108.a n : ℤ) = A142307 (n + 1)

end A142307

/-! ## A142307.P14260020009652296140

`∩[A090187(n+1), A197504(n+1)]`
-/

namespace A142307.P14260020009652296140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142307.P14260020009652296140

namespace A142307

/-- `∩[A090187(n+1), A197504(n+1)]` -/
def P14260020009652296140.Spec : Prop :=
  ∀ n, (P14260020009652296140.a n : ℤ) = A142307 (n + 1)

end A142307

/-! ## A142307.P3031537403783868548

`∩[A090187(n+1), A292762(n+1)]`
-/

namespace A142307.P3031537403783868548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142307.P3031537403783868548

namespace A142307

/-- `∩[A090187(n+1), A292762(n+1)]` -/
def P3031537403783868548.Spec : Prop :=
  ∀ n, (P3031537403783868548.a n : ℤ) = A142307 (n + 1)

end A142307

/-! ## A142307.P8118364316924412056

`∩[A066499(n+1), A090187(n+1)]`
-/

namespace A142307.P8118364316924412056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142307.P8118364316924412056

namespace A142307

/-- `∩[A066499(n+1), A090187(n+1)]` -/
def P8118364316924412056.Spec : Prop :=
  ∀ n, (P8118364316924412056.a n : ℤ) = A142307 (n + 1)

end A142307

/-! ## A142307.P7183530431819022218

`∩[A090187(n+1), A094179(n+1)]`
-/

namespace A142307.P7183530431819022218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142307.P7183530431819022218

namespace A142307

/-- `∩[A090187(n+1), A094179(n+1)]` -/
def P7183530431819022218.Spec : Prop :=
  ∀ n, (P7183530431819022218.a n : ℤ) = A142307 (n + 1)

end A142307

/-! ## A142307.P1100411421918148058

`∩[A002145(n+1), A017413(n)]`
-/

namespace A142307.P1100411421918148058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017413 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142307.P1100411421918148058

namespace A142307

/-- `∩[A002145(n+1), A017413(n)]` -/
def P1100411421918148058.Spec : Prop :=
  ∀ n, (P1100411421918148058.a n : ℤ) = A142307 (n + 1)

end A142307

/-! ## A142307.P14171851336963442821

`∩[A038881(n+1), A017413(n)]`
-/

namespace A142307.P14171851336963442821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017413 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142307.P14171851336963442821

namespace A142307

/-- `∩[A038881(n+1), A017413(n)]` -/
def P14171851336963442821.Spec : Prop :=
  ∀ n, (P14171851336963442821.a n : ℤ) = A142307 (n + 1)

end A142307

/-! ## A142307.P8525571727637806914

`∩[A017413(n), A296935(n+1)]`
-/

namespace A142307.P8525571727637806914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017413 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142307.P8525571727637806914

namespace A142307

/-- `∩[A017413(n), A296935(n+1)]` -/
def P8525571727637806914.Spec : Prop :=
  ∀ n, (P8525571727637806914.a n : ℤ) = A142307 (n + 1)

end A142307

/-! ## A142307.P2069313734206650867

`A000027(p?[A017413(4*n+3)])`
-/

namespace A142307.P2069313734206650867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017413 (4 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142307.P2069313734206650867

namespace A142307

/-- `A000027(p?[A017413(4*n+3)])` -/
def P2069313734206650867.Spec : Prop :=
  ∀ n, P2069313734206650867.a n = A142307 (n + 1)

end A142307

/-! ## A142307.P9107349693466960438

`∩[A002145(n+1), A017425(n)-1]`
-/

namespace A142307.P9107349693466960438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017425 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142307.P9107349693466960438

namespace A142307

/-- `∩[A002145(n+1), A017425(n)-1]` -/
def P9107349693466960438.Spec : Prop :=
  ∀ n, (P9107349693466960438.a n : ℤ) = A142307 (n + 1)

end A142307

/-! ## A142307.P9460277701250910897

`∩[A002145(n+1), A017437(n)-2]`
-/

namespace A142307.P9460277701250910897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017437 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142307.P9460277701250910897

namespace A142307

/-- `∩[A002145(n+1), A017437(n)-2]` -/
def P9460277701250910897.Spec : Prop :=
  ∀ n, (P9460277701250910897.a n : ℤ) = A142307 (n + 1)

end A142307

/-! ## A142307.P14427811460804323889

`∩[A038881(n+1), A017437(n)-2]`
-/

namespace A142307.P14427811460804323889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017437 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142307.P14427811460804323889

namespace A142307

/-- `∩[A038881(n+1), A017437(n)-2]` -/
def P14427811460804323889.Spec : Prop :=
  ∀ n, (P14427811460804323889.a n : ℤ) = A142307 (n + 1)

end A142307

/-! ## A142307.P2623928162456858198

`∩[A017437(n)+9, A045326(n+2)]`
-/

namespace A142307.P2623928162456858198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017437 n + 9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142307.P2623928162456858198

namespace A142307

/-- `∩[A017437(n)+9, A045326(n+2)]` -/
def P2623928162456858198.Spec : Prop :=
  ∀ n, (P2623928162456858198.a n : ℤ) = A142307 (n + 1)

end A142307

/-!
# A142308: Primes congruent to 37 mod 44.

The programs for A142308, the canonical program `A142308.P8768982004238066164` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142308 has offset 1).

The definition of A142308 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3931 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142308.P8768982004238066164

`p?[44*n-7]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142308

/-- `p?[44*n-7]` -/
def P8768982004238066164.Spec : Prop :=
  ∀ n, P8768982004238066164.a n = A142308 (n + 1)

theorem P8768982004238066164.correct : P8768982004238066164.Spec := by
  intro n
  simp only [A142308, Nat.add_sub_cancel]

end A142308

/-! ## A142308.P10806023548625075026

`∩[A008846(n+1), A141851(n+1)]`
-/

namespace A142308.P10806023548625075026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142308.P10806023548625075026

namespace A142308

/-- `∩[A008846(n+1), A141851(n+1)]` -/
def P10806023548625075026.Spec : Prop :=
  ∀ n, (P10806023548625075026.a n : ℤ) = A142308 (n + 1)

end A142308

/-! ## A142308.P9385210726162933077

`∩[A141182(n+1), A141851(n+1)]`
-/

namespace A142308.P9385210726162933077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142308.P9385210726162933077

namespace A142308

/-- `∩[A141182(n+1), A141851(n+1)]` -/
def P9385210726162933077.Spec : Prop :=
  ∀ n, (P9385210726162933077.a n : ℤ) = A142308 (n + 1)

end A142308

/-! ## A142308.P7237778406539097818

`A000027(p?[A152691(n)-A139607(n)+n])`
-/

namespace A142308.P7237778406539097818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 n - A139607 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142308.P7237778406539097818

namespace A142308

/-- `A000027(p?[A152691(n)-A139607(n)+n])` -/
def P7237778406539097818.Spec : Prop :=
  ∀ n, P7237778406539097818.a n = A142308 (n + 1)

end A142308

/-! ## A142308.P17167760615836591122

`∩[A141851(n+1), A191218(n+1)]`
-/

namespace A142308.P17167760615836591122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142308.P17167760615836591122

namespace A142308

/-- `∩[A141851(n+1), A191218(n+1)]` -/
def P17167760615836591122.Spec : Prop :=
  ∀ n, (P17167760615836591122.a n : ℤ) = A142308 (n + 1)

end A142308

/-! ## A142308.P2822191120324437642

`∩[A002144(n+1), A141851(n+1)]`
-/

namespace A142308.P2822191120324437642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142308.P2822191120324437642

namespace A142308

/-- `∩[A002144(n+1), A141851(n+1)]` -/
def P2822191120324437642.Spec : Prop :=
  ∀ n, (P2822191120324437642.a n : ℤ) = A142308 (n + 1)

end A142308

/-! ## A142308.P10733046368642290423

`∩[A002313(n+1), A141851(n+1)]`
-/

namespace A142308.P10733046368642290423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142308.P10733046368642290423

namespace A142308

/-- `∩[A002313(n+1), A141851(n+1)]` -/
def P10733046368642290423.Spec : Prop :=
  ∀ n, (P10733046368642290423.a n : ℤ) = A142308 (n + 1)

end A142308

/-! ## A142308.P6153823876622157185

`∩[A038881(n+1), A141851(n+1)]`
-/

namespace A142308.P6153823876622157185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142308.P6153823876622157185

namespace A142308

/-- `∩[A038881(n+1), A141851(n+1)]` -/
def P6153823876622157185.Spec : Prop :=
  ∀ n, (P6153823876622157185.a n : ℤ) = A142308 (n + 1)

end A142308

/-! ## A142308.P3692741470307303981

`∩[A141851(n+1), A280084(n+1)]`
-/

namespace A142308.P3692741470307303981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142308.P3692741470307303981

namespace A142308

/-- `∩[A141851(n+1), A280084(n+1)]` -/
def P3692741470307303981.Spec : Prop :=
  ∀ n, (P3692741470307303981.a n : ℤ) = A142308 (n + 1)

end A142308

/-! ## A142308.P13227637390223019962

`∩[A137977(n+1), A141182(n+1)]`
-/

namespace A142308.P13227637390223019962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142308.P13227637390223019962

namespace A142308

/-- `∩[A137977(n+1), A141182(n+1)]` -/
def P13227637390223019962.Spec : Prop :=
  ∀ n, (P13227637390223019962.a n : ℤ) = A142308 (n + 1)

end A142308

/-! ## A142308.P17775792808201032162

`∩[A141851(n+1), A296935(n+1)]`
-/

namespace A142308.P17775792808201032162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142308.P17775792808201032162

namespace A142308

/-- `∩[A141851(n+1), A296935(n+1)]` -/
def P17775792808201032162.Spec : Prop :=
  ∀ n, (P17775792808201032162.a n : ℤ) = A142308 (n + 1)

end A142308

/-! ## A142308.P12058733569818921227

`∩[A055025(n+1), A141851(n+1)]`
-/

namespace A142308.P12058733569818921227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142308.P12058733569818921227

namespace A142308

/-- `∩[A055025(n+1), A141851(n+1)]` -/
def P12058733569818921227.Spec : Prop :=
  ∀ n, (P12058733569818921227.a n : ℤ) = A142308 (n + 1)

end A142308

/-! ## A142308.P16201961036367231141

`∩[A120960(n+1), A141851(n+1)]`
-/

namespace A142308.P16201961036367231141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142308.P16201961036367231141

namespace A142308

/-- `∩[A120960(n+1), A141851(n+1)]` -/
def P16201961036367231141.Spec : Prop :=
  ∀ n, (P16201961036367231141.a n : ℤ) = A142308 (n + 1)

end A142308

/-! ## A142308.P13456999250003743403

`∩[A085759(n+1), A141851(n+1)]`
-/

namespace A142308.P13456999250003743403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142308.P13456999250003743403

namespace A142308

/-- `∩[A085759(n+1), A141851(n+1)]` -/
def P13456999250003743403.Spec : Prop :=
  ∀ n, (P13456999250003743403.a n : ℤ) = A142308 (n + 1)

end A142308

/-! ## A142308.P9170664507363035515

`∩[A141851(n+1), A351535(n+1)]`
-/

namespace A142308.P9170664507363035515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142308.P9170664507363035515

namespace A142308

/-- `∩[A141851(n+1), A351535(n+1)]` -/
def P9170664507363035515.Spec : Prop :=
  ∀ n, (P9170664507363035515.a n : ℤ) = A142308 (n + 1)

end A142308

/-! ## A142308.P8615440165225870022

`∩[A125018(n+1), A141851(n+1)]`
-/

namespace A142308.P8615440165225870022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142308.P8615440165225870022

namespace A142308

/-- `∩[A125018(n+1), A141851(n+1)]` -/
def P8615440165225870022.Spec : Prop :=
  ∀ n, (P8615440165225870022.a n : ℤ) = A142308 (n + 1)

end A142308

/-! ## A142308.P4523605558768727441

`∩[A141851(n+1), A230779(n+1)]`
-/

namespace A142308.P4523605558768727441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142308.P4523605558768727441

namespace A142308

/-- `∩[A141851(n+1), A230779(n+1)]` -/
def P4523605558768727441.Spec : Prop :=
  ∀ n, (P4523605558768727441.a n : ℤ) = A142308 (n + 1)

end A142308

/-! ## A142308.P6109183700325808674

`∩[A141851(n+1), A281292(n+1)]`
-/

namespace A142308.P6109183700325808674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142308.P6109183700325808674

namespace A142308

/-- `∩[A141851(n+1), A281292(n+1)]` -/
def P6109183700325808674.Spec : Prop :=
  ∀ n, (P6109183700325808674.a n : ℤ) = A142308 (n + 1)

end A142308

/-! ## A142308.P3929742524307631781

`∩[A141851(n+1), A224450(n+1)]`
-/

namespace A142308.P3929742524307631781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142308.P3929742524307631781

namespace A142308

/-- `∩[A141851(n+1), A224450(n+1)]` -/
def P3929742524307631781.Spec : Prop :=
  ∀ n, (P3929742524307631781.a n : ℤ) = A142308 (n + 1)

end A142308

/-! ## A142308.P4009558267617133905

`∩[A003653(n+1), A141851(n+1)]`
-/

namespace A142308.P4009558267617133905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142308.P4009558267617133905

namespace A142308

/-- `∩[A003653(n+1), A141851(n+1)]` -/
def P4009558267617133905.Spec : Prop :=
  ∀ n, (P4009558267617133905.a n : ℤ) = A142308 (n + 1)

end A142308

/-!
# A142309: Primes congruent to 39 mod 44.

The programs for A142309, the canonical program `A142309.P5096015529628759301` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142309 has offset 1).

The definition of A142309 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3917 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142309.P5096015529628759301

`p?[44*n-5]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142309

/-- `p?[44*n-5]` -/
def P5096015529628759301.Spec : Prop :=
  ∀ n, P5096015529628759301.a n = A142309 (n + 1)

theorem P5096015529628759301.correct : P5096015529628759301.Spec := by
  intro n
  simp only [A142309, Nat.add_sub_cancel]

end A142309

/-! ## A142309.P14532424931165465678

`∩[A141183(n+1), A141853(n+1)]`
-/

namespace A142309.P14532424931165465678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142309.P14532424931165465678

namespace A142309

/-- `∩[A141183(n+1), A141853(n+1)]` -/
def P14532424931165465678.Spec : Prop :=
  ∀ n, (P14532424931165465678.a n : ℤ) = A142309 (n + 1)

end A142309

/-! ## A142309.P7196778417939946147

`∩[A141183(n+1), A215106(n+1)]`
-/

namespace A142309.P7196778417939946147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142309.P7196778417939946147

namespace A142309

/-- `∩[A141183(n+1), A215106(n+1)]` -/
def P7196778417939946147.Spec : Prop :=
  ∀ n, (P7196778417939946147.a n : ℤ) = A142309 (n + 1)

end A142309

/-! ## A142309.P2589365789110140432

`∩[A040122(n+1), A141853(n+1)]`
-/

namespace A142309.P2589365789110140432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142309.P2589365789110140432

namespace A142309

/-- `∩[A040122(n+1), A141853(n+1)]` -/
def P2589365789110140432.Spec : Prop :=
  ∀ n, (P2589365789110140432.a n : ℤ) = A142309 (n + 1)

end A142309

/-! ## A142309.P3732444869250757714

`∩[A038881(n+1), A141853(n+1)]`
-/

namespace A142309.P3732444869250757714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142309.P3732444869250757714

namespace A142309

/-- `∩[A038881(n+1), A141853(n+1)]` -/
def P3732444869250757714.Spec : Prop :=
  ∀ n, (P3732444869250757714.a n : ℤ) = A142309 (n + 1)

end A142309

/-! ## A142309.P17168563059520119287

`∩[A141853(n+1), A296935(n+1)]`
-/

namespace A142309.P17168563059520119287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142309.P17168563059520119287

namespace A142309

/-- `∩[A141853(n+1), A296935(n+1)]` -/
def P17168563059520119287.Spec : Prop :=
  ∀ n, (P17168563059520119287.a n : ℤ) = A142309 (n + 1)

end A142309

/-! ## A142309.P12821819860131912838

`∩[A002145(n+1), A141853(n+1)]`
-/

namespace A142309.P12821819860131912838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142309.P12821819860131912838

namespace A142309

/-- `∩[A002145(n+1), A141853(n+1)]` -/
def P12821819860131912838.Spec : Prop :=
  ∀ n, (P12821819860131912838.a n : ℤ) = A142309 (n + 1)

end A142309

/-! ## A142309.P15313236105511497765

`∩[A045326(n+1), A141853(n+1)]`
-/

namespace A142309.P15313236105511497765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142309.P15313236105511497765

namespace A142309

/-- `∩[A045326(n+1), A141853(n+1)]` -/
def P15313236105511497765.Spec : Prop :=
  ∀ n, (P15313236105511497765.a n : ℤ) = A142309 (n + 1)

end A142309

/-! ## A142309.P2240428708806823010

`∩[A085760(n+1), A141853(n+1)]`
-/

namespace A142309.P2240428708806823010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142309.P2240428708806823010

namespace A142309

/-- `∩[A085760(n+1), A141853(n+1)]` -/
def P2240428708806823010.Spec : Prop :=
  ∀ n, (P2240428708806823010.a n : ℤ) = A142309 (n + 1)

end A142309

/-! ## A142309.P4764956304447058126

`∩[A141853(n+1), A197504(n+1)]`
-/

namespace A142309.P4764956304447058126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142309.P4764956304447058126

namespace A142309

/-- `∩[A141853(n+1), A197504(n+1)]` -/
def P4764956304447058126.Spec : Prop :=
  ∀ n, (P4764956304447058126.a n : ℤ) = A142309 (n + 1)

end A142309

/-! ## A142309.P6596345540119631926

`∩[A141853(n+1), A332555(n+1)]`
-/

namespace A142309.P6596345540119631926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142309.P6596345540119631926

namespace A142309

/-- `∩[A141853(n+1), A332555(n+1)]` -/
def P6596345540119631926.Spec : Prop :=
  ∀ n, (P6596345540119631926.a n : ℤ) = A142309 (n + 1)

end A142309

/-! ## A142309.P13235570565901524030

`∩[A002145(n+1), A248339(n)-2]`
-/

namespace A142309.P13235570565901524030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142309.P13235570565901524030

namespace A142309

/-- `∩[A002145(n+1), A248339(n)-2]` -/
def P13235570565901524030.Spec : Prop :=
  ∀ n, (P13235570565901524030.a n : ℤ) = A142309 (n + 1)

end A142309

/-! ## A142309.P388013619927929708

`∩[A038881(n+1), A248339(n)-2]`
-/

namespace A142309.P388013619927929708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142309.P388013619927929708

namespace A142309

/-- `∩[A038881(n+1), A248339(n)-2]` -/
def P388013619927929708.Spec : Prop :=
  ∀ n, (P388013619927929708.a n : ℤ) = A142309 (n + 1)

end A142309

/-! ## A142309.P6299082507643709854

`∩[A040122(n+1), A248339(n)-2]`
-/

namespace A142309.P6299082507643709854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142309.P6299082507643709854

namespace A142309

/-- `∩[A040122(n+1), A248339(n)-2]` -/
def P6299082507643709854.Spec : Prop :=
  ∀ n, (P6299082507643709854.a n : ℤ) = A142309 (n + 1)

end A142309

/-! ## A142309.P17957648713337729248

`∩[A045326(n+1), A248339(n)-2]`
-/

namespace A142309.P17957648713337729248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142309.P17957648713337729248

namespace A142309

/-- `∩[A045326(n+1), A248339(n)-2]` -/
def P17957648713337729248.Spec : Prop :=
  ∀ n, (P17957648713337729248.a n : ℤ) = A142309 (n + 1)

end A142309

/-! ## A142309.P4446189836758165171

`∩[A141183(n+1), A248339(n)-2]`
-/

namespace A142309.P4446189836758165171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142309.P4446189836758165171

namespace A142309

/-- `∩[A141183(n+1), A248339(n)-2]` -/
def P4446189836758165171.Spec : Prop :=
  ∀ n, (P4446189836758165171.a n : ℤ) = A142309 (n + 1)

end A142309

/-! ## A142309.P15408671907251685786

`∩[A296935(n+1), A248339(n)-2]`
-/

namespace A142309.P15408671907251685786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142309.P15408671907251685786

namespace A142309

/-- `∩[A296935(n+1), A248339(n)-2]` -/
def P15408671907251685786.Spec : Prop :=
  ∀ n, (P15408671907251685786.a n : ℤ) = A142309 (n + 1)

end A142309

/-! ## A142309.P283181253405860994

`∩[A141853(n+1), A292762(n+1)]`
-/

namespace A142309.P283181253405860994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142309.P283181253405860994

namespace A142309

/-- `∩[A141853(n+1), A292762(n+1)]` -/
def P283181253405860994.Spec : Prop :=
  ∀ n, (P283181253405860994.a n : ℤ) = A142309 (n + 1)

end A142309

/-! ## A142309.P11132517753579469148

`∩[A066499(n+1), A141853(n+1)]`
-/

namespace A142309.P11132517753579469148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142309.P11132517753579469148

namespace A142309

/-- `∩[A066499(n+1), A141853(n+1)]` -/
def P11132517753579469148.Spec : Prop :=
  ∀ n, (P11132517753579469148.a n : ℤ) = A142309 (n + 1)

end A142309

/-! ## A142309.P17187257176465346874

`∩[A097987(n+1), A141853(n+1)]`
-/

namespace A142309.P17187257176465346874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142309.P17187257176465346874

namespace A142309

/-- `∩[A097987(n+1), A141853(n+1)]` -/
def P17187257176465346874.Spec : Prop :=
  ∀ n, (P17187257176465346874.a n : ℤ) = A142309 (n + 1)

end A142309

/-!
# A142310: Primes congruent to 41 mod 44.

The programs for A142310, the canonical program `A142310.P17788548688774827961` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142310 has offset 1).

The definition of A142310 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3909 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142310.P17788548688774827961

`p?[44*n-3]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142310

/-- `p?[44*n-3]` -/
def P17788548688774827961.Spec : Prop :=
  ∀ n, P17788548688774827961.a n = A142310 (n + 1)

theorem P17788548688774827961.correct : P17788548688774827961.Spec := by
  intro n
  simp only [A142310, Nat.add_sub_cancel]

end A142310

/-! ## A142310.P2489471991650681554

`∩[A008846(n+1), A141855(n+1)]`
-/

namespace A142310.P2489471991650681554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142310.P2489471991650681554

namespace A142310

/-- `∩[A008846(n+1), A141855(n+1)]` -/
def P2489471991650681554.Spec : Prop :=
  ∀ n, (P2489471991650681554.a n : ℤ) = A142310 (n + 1)

end A142310

/-! ## A142310.P3787680539983950123

`∩[A141855(n+1), A191218(n+1)]`
-/

namespace A142310.P3787680539983950123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142310.P3787680539983950123

namespace A142310

/-- `∩[A141855(n+1), A191218(n+1)]` -/
def P3787680539983950123.Spec : Prop :=
  ∀ n, (P3787680539983950123.a n : ℤ) = A142310 (n + 1)

end A142310

/-! ## A142310.P309220063140695343

`∩[A002144(n+1), A141855(n+1)]`
-/

namespace A142310.P309220063140695343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142310.P309220063140695343

namespace A142310

/-- `∩[A002144(n+1), A141855(n+1)]` -/
def P309220063140695343.Spec : Prop :=
  ∀ n, (P309220063140695343.a n : ℤ) = A142310 (n + 1)

end A142310

/-! ## A142310.P1179210067934848544

`∩[A002313(n+1), A141855(n+1)]`
-/

namespace A142310.P1179210067934848544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142310.P1179210067934848544

namespace A142310

/-- `∩[A002313(n+1), A141855(n+1)]` -/
def P1179210067934848544.Spec : Prop :=
  ∀ n, (P1179210067934848544.a n : ℤ) = A142310 (n + 1)

end A142310

/-! ## A142310.P10093077081785387900

`∩[A141855(n+1), A280084(n+1)]`
-/

namespace A142310.P10093077081785387900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142310.P10093077081785387900

namespace A142310

/-- `∩[A141855(n+1), A280084(n+1)]` -/
def P10093077081785387900.Spec : Prop :=
  ∀ n, (P10093077081785387900.a n : ℤ) = A142310 (n + 1)

end A142310

/-! ## A142310.P720184192920757500

`∩[A038882(n+1), A141855(n+1)]`
-/

namespace A142310.P720184192920757500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142310.P720184192920757500

namespace A142310

/-- `∩[A038882(n+1), A141855(n+1)]` -/
def P720184192920757500.Spec : Prop :=
  ∀ n, (P720184192920757500.a n : ℤ) = A142310 (n + 1)

end A142310

/-! ## A142310.P15029223518758386707

`∩[A141855(n+1), A296936(n+1)]`
-/

namespace A142310.P15029223518758386707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142310.P15029223518758386707

namespace A142310

/-- `∩[A141855(n+1), A296936(n+1)]` -/
def P15029223518758386707.Spec : Prop :=
  ∀ n, (P15029223518758386707.a n : ℤ) = A142310 (n + 1)

end A142310

/-! ## A142310.P14901739668491650917

`∩[A055025(n+1), A141855(n+1)]`
-/

namespace A142310.P14901739668491650917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142310.P14901739668491650917

namespace A142310

/-- `∩[A055025(n+1), A141855(n+1)]` -/
def P14901739668491650917.Spec : Prop :=
  ∀ n, (P14901739668491650917.a n : ℤ) = A142310 (n + 1)

end A142310

/-! ## A142310.P8536621470518552997

`∩[A120960(n+1), A141855(n+1)]`
-/

namespace A142310.P8536621470518552997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142310.P8536621470518552997

namespace A142310

/-- `∩[A120960(n+1), A141855(n+1)]` -/
def P8536621470518552997.Spec : Prop :=
  ∀ n, (P8536621470518552997.a n : ℤ) = A142310 (n + 1)

end A142310

/-! ## A142310.P16519106785841583781

`∩[A085759(n+1), A141855(n+1)]`
-/

namespace A142310.P16519106785841583781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142310.P16519106785841583781

namespace A142310

/-- `∩[A085759(n+1), A141855(n+1)]` -/
def P16519106785841583781.Spec : Prop :=
  ∀ n, (P16519106785841583781.a n : ℤ) = A142310 (n + 1)

end A142310

/-! ## A142310.P6213568831473886487

`∩[A002144(n+1), A248339(n)]`
-/

namespace A142310.P6213568831473886487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142310.P6213568831473886487

namespace A142310

/-- `∩[A002144(n+1), A248339(n)]` -/
def P6213568831473886487.Spec : Prop :=
  ∀ n, (P6213568831473886487.a n : ℤ) = A142310 (n + 1)

end A142310

/-! ## A142310.P952123909248025929

`∩[A002313(n+1), A248339(n)]`
-/

namespace A142310.P952123909248025929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142310.P952123909248025929

namespace A142310

/-- `∩[A002313(n+1), A248339(n)]` -/
def P952123909248025929.Spec : Prop :=
  ∀ n, (P952123909248025929.a n : ℤ) = A142310 (n + 1)

end A142310

/-! ## A142310.P6714011941954393861

`∩[A038882(n+1), A248339(n)]`
-/

namespace A142310.P6714011941954393861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142310.P6714011941954393861

namespace A142310

/-- `∩[A038882(n+1), A248339(n)]` -/
def P6714011941954393861.Spec : Prop :=
  ∀ n, (P6714011941954393861.a n : ℤ) = A142310 (n + 1)

end A142310

/-! ## A142310.P5432112496015130973

`∩[A055025(n+1), A248339(n)]`
-/

namespace A142310.P5432112496015130973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142310.P5432112496015130973

namespace A142310

/-- `∩[A055025(n+1), A248339(n)]` -/
def P5432112496015130973.Spec : Prop :=
  ∀ n, (P5432112496015130973.a n : ℤ) = A142310 (n + 1)

end A142310

/-! ## A142310.P8943883889844981924

`∩[A280084(n+1), A248339(n)]`
-/

namespace A142310.P8943883889844981924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142310.P8943883889844981924

namespace A142310

/-- `∩[A280084(n+1), A248339(n)]` -/
def P8943883889844981924.Spec : Prop :=
  ∀ n, (P8943883889844981924.a n : ℤ) = A142310 (n + 1)

end A142310

/-! ## A142310.P13439092571373879255

`∩[A296936(n+1), A248339(n)]`
-/

namespace A142310.P13439092571373879255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142310.P13439092571373879255

namespace A142310

/-- `∩[A296936(n+1), A248339(n)]` -/
def P13439092571373879255.Spec : Prop :=
  ∀ n, (P13439092571373879255.a n : ℤ) = A142310 (n + 1)

end A142310

/-! ## A142310.P12664756465579322579

`∩[A141855(n+1), A351535(n+1)]`
-/

namespace A142310.P12664756465579322579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142310.P12664756465579322579

namespace A142310

/-- `∩[A141855(n+1), A351535(n+1)]` -/
def P12664756465579322579.Spec : Prop :=
  ∀ n, (P12664756465579322579.a n : ℤ) = A142310 (n + 1)

end A142310

/-! ## A142310.P1202093668489833711

`∩[A125018(n+1), A141855(n+1)]`
-/

namespace A142310.P1202093668489833711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142310.P1202093668489833711

namespace A142310

/-- `∩[A125018(n+1), A141855(n+1)]` -/
def P1202093668489833711.Spec : Prop :=
  ∀ n, (P1202093668489833711.a n : ℤ) = A142310 (n + 1)

end A142310

/-! ## A142310.P10954250903031106838

`∩[A040123(n+1), A248339(n)]`
-/

namespace A142310.P10954250903031106838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142310.P10954250903031106838

namespace A142310

/-- `∩[A040123(n+1), A248339(n)]` -/
def P10954250903031106838.Spec : Prop :=
  ∀ n, (P10954250903031106838.a n : ℤ) = A142310 (n + 1)

end A142310

/-!
# A142311: Primes congruent to 43 mod 44.

The programs for A142311, the canonical program `A142311.P241498345937656178` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142311 has offset 1).

The definition of A142311 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3922 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142311.P241498345937656178

`p?[44*n-1]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142311

/-- `p?[44*n-1]` -/
def P241498345937656178.Spec : Prop :=
  ∀ n, P241498345937656178.a n = A142311 (n + 1)

theorem P241498345937656178.correct : P241498345937656178.Spec := by
  intro n
  simp only [A142311, Nat.add_sub_cancel]

end A142311

/-! ## A142311.P6365700793686059173

`or(1, p?[4*11*n+43])`
-/

namespace A142311.P6365700793686059173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (11 * n) + 43

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142311.P6365700793686059173

namespace A142311

/-- `or(1, p?[4*11*n+43])` -/
def P6365700793686059173.Spec : Prop :=
  ∀ n, (P6365700793686059173.a n : ℤ) = A142311 (n + 1)

end A142311

/-! ## A142311.P2014656518894157838

`∩[A141183(n+1), A141857(n+1)]`
-/

namespace A142311.P2014656518894157838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142311.P2014656518894157838

namespace A142311

/-- `∩[A141183(n+1), A141857(n+1)]` -/
def P2014656518894157838.Spec : Prop :=
  ∀ n, (P2014656518894157838.a n : ℤ) = A142311 (n + 1)

end A142311

/-! ## A142311.P15756899481843924002

`∩[A040122(n+1), A141857(n+1)]`
-/

namespace A142311.P15756899481843924002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142311.P15756899481843924002

namespace A142311

/-- `∩[A040122(n+1), A141857(n+1)]` -/
def P15756899481843924002.Spec : Prop :=
  ∀ n, (P15756899481843924002.a n : ℤ) = A142311 (n + 1)

end A142311

/-! ## A142311.P17517192920650063126

`∩[A038881(n+1), A141857(n+1)]`
-/

namespace A142311.P17517192920650063126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142311.P17517192920650063126

namespace A142311

/-- `∩[A038881(n+1), A141857(n+1)]` -/
def P17517192920650063126.Spec : Prop :=
  ∀ n, (P17517192920650063126.a n : ℤ) = A142311 (n + 1)

end A142311

/-! ## A142311.P14656966107490728878

`∩[A141857(n+1), A296935(n+1)]`
-/

namespace A142311.P14656966107490728878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142311.P14656966107490728878

namespace A142311

/-- `∩[A141857(n+1), A296935(n+1)]` -/
def P14656966107490728878.Spec : Prop :=
  ∀ n, (P14656966107490728878.a n : ℤ) = A142311 (n + 1)

end A142311

/-! ## A142311.P3444135502266795888

`∩[A002145(n+1), A141857(n+1)]`
-/

namespace A142311.P3444135502266795888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142311.P3444135502266795888

namespace A142311

/-- `∩[A002145(n+1), A141857(n+1)]` -/
def P3444135502266795888.Spec : Prop :=
  ∀ n, (P3444135502266795888.a n : ℤ) = A142311 (n + 1)

end A142311

/-! ## A142311.P5892612975492928500

`∩[A045326(n+1), A141857(n+1)]`
-/

namespace A142311.P5892612975492928500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142311.P5892612975492928500

namespace A142311

/-- `∩[A045326(n+1), A141857(n+1)]` -/
def P5892612975492928500.Spec : Prop :=
  ∀ n, (P5892612975492928500.a n : ℤ) = A142311 (n + 1)

end A142311

/-! ## A142311.P7915525176403595496

`∩[A085760(n+1), A141857(n+1)]`
-/

namespace A142311.P7915525176403595496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142311.P7915525176403595496

namespace A142311

/-- `∩[A085760(n+1), A141857(n+1)]` -/
def P7915525176403595496.Spec : Prop :=
  ∀ n, (P7915525176403595496.a n : ℤ) = A142311 (n + 1)

end A142311

/-! ## A142311.P3689004641908039557

`∩[A141857(n+1), A197504(n+1)]`
-/

namespace A142311.P3689004641908039557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142311.P3689004641908039557

namespace A142311

/-- `∩[A141857(n+1), A197504(n+1)]` -/
def P3689004641908039557.Spec : Prop :=
  ∀ n, (P3689004641908039557.a n : ℤ) = A142311 (n + 1)

end A142311

/-! ## A142311.P7857946826307983851

`∩[A141857(n+1), A332555(n+1)]`
-/

namespace A142311.P7857946826307983851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142311.P7857946826307983851

namespace A142311

/-- `∩[A141857(n+1), A332555(n+1)]` -/
def P7857946826307983851.Spec : Prop :=
  ∀ n, (P7857946826307983851.a n : ℤ) = A142311 (n + 1)

end A142311

/-! ## A142311.P11109592633432724893

`∩[A002145(n+1), A248339(n)+2]`
-/

namespace A142311.P11109592633432724893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142311.P11109592633432724893

namespace A142311

/-- `∩[A002145(n+1), A248339(n)+2]` -/
def P11109592633432724893.Spec : Prop :=
  ∀ n, (P11109592633432724893.a n : ℤ) = A142311 (n + 1)

end A142311

/-! ## A142311.P7805785448089613296

`∩[A038881(n+1), A248339(n)+2]`
-/

namespace A142311.P7805785448089613296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142311.P7805785448089613296

namespace A142311

/-- `∩[A038881(n+1), A248339(n)+2]` -/
def P7805785448089613296.Spec : Prop :=
  ∀ n, (P7805785448089613296.a n : ℤ) = A142311 (n + 1)

end A142311

/-! ## A142311.P15329062531036627613

`∩[A045326(n+1), A248339(n)+2]`
-/

namespace A142311.P15329062531036627613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142311.P15329062531036627613

namespace A142311

/-- `∩[A045326(n+1), A248339(n)+2]` -/
def P15329062531036627613.Spec : Prop :=
  ∀ n, (P15329062531036627613.a n : ℤ) = A142311 (n + 1)

end A142311

/-! ## A142311.P12567594797452741835

`∩[A141183(n+1), A248339(n)+2]`
-/

namespace A142311.P12567594797452741835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142311.P12567594797452741835

namespace A142311

/-- `∩[A141183(n+1), A248339(n)+2]` -/
def P12567594797452741835.Spec : Prop :=
  ∀ n, (P12567594797452741835.a n : ℤ) = A142311 (n + 1)

end A142311

/-! ## A142311.P6671844291852410847

`∩[A296935(n+1), A248339(n)+2]`
-/

namespace A142311.P6671844291852410847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142311.P6671844291852410847

namespace A142311

/-- `∩[A296935(n+1), A248339(n)+2]` -/
def P6671844291852410847.Spec : Prop :=
  ∀ n, (P6671844291852410847.a n : ℤ) = A142311 (n + 1)

end A142311

/-! ## A142311.P14654579252803462945

`∩[A002145(n+1), A161709(n)-2]`
-/

namespace A142311.P14654579252803462945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142311.P14654579252803462945

namespace A142311

/-- `∩[A002145(n+1), A161709(n)-2]` -/
def P14654579252803462945.Spec : Prop :=
  ∀ n, (P14654579252803462945.a n : ℤ) = A142311 (n + 1)

end A142311

/-! ## A142311.P1063156108950275167

`∩[A038881(n+1), A161709(n)-2]`
-/

namespace A142311.P1063156108950275167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142311.P1063156108950275167

namespace A142311

/-- `∩[A038881(n+1), A161709(n)-2]` -/
def P1063156108950275167.Spec : Prop :=
  ∀ n, (P1063156108950275167.a n : ℤ) = A142311 (n + 1)

end A142311

/-! ## A142311.P15849202833485457061

`∩[A045326(n+1), A161709(n)-2]`
-/

namespace A142311.P15849202833485457061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142311.P15849202833485457061

namespace A142311

/-- `∩[A045326(n+1), A161709(n)-2]` -/
def P15849202833485457061.Spec : Prop :=
  ∀ n, (P15849202833485457061.a n : ℤ) = A142311 (n + 1)

end A142311

/-!
# A142312: Primes congruent to 1 mod 45.

The programs for A142312, the canonical program `A142312.P14164493053183842634` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142312 has offset 1).

The definition of A142312 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3273 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142312.P11131168322627435270

`∩[A089716(n+1), A132230(n+1)]`
-/

namespace A142312.P11131168322627435270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142312.P11131168322627435270

namespace A142312

/-- `∩[A089716(n+1), A132230(n+1)]` -/
def P11131168322627435270.Spec : Prop :=
  ∀ n, (P11131168322627435270.a n : ℤ) = A142312 (n + 1)

end A142312

/-! ## A142312.P14164493053183842634

`p?[45*n+1]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142312

/-- `p?[45*n+1]` -/
def P14164493053183842634.Spec : Prop :=
  ∀ n, (P14164493053183842634.a n : ℤ) = A142312 (n + 1)

theorem P14164493053183842634.correct : P14164493053183842634.Spec := by
  intro n
  simp only [A142312, Nat.add_sub_cancel]

end A142312

/-! ## A142312.P219642344757075295

`or(1, p?[or(1, 45*n)])`
-/

namespace A142312.P219642344757075295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (45 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142312.P219642344757075295

namespace A142312

/-- `or(1, p?[or(1, 45*n)])` -/
def P219642344757075295.Spec : Prop :=
  ∀ n, (P219642344757075295.a n : ℤ) = A142312 (n + 1)

end A142312

/-! ## A142312.P8127456882869324677

`∩[A030430(n+1), A061237(n+1)]`
-/

namespace A142312.P8127456882869324677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142312.P8127456882869324677

namespace A142312

/-- `∩[A030430(n+1), A061237(n+1)]` -/
def P8127456882869324677.Spec : Prop :=
  ∀ n, (P8127456882869324677.a n : ℤ) = A142312 (n + 1)

end A142312

/-! ## A142312.P10428445150738848269

`∩[A061237(n+1), A089716(n+1)]`
-/

namespace A142312.P10428445150738848269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142312.P10428445150738848269

namespace A142312

/-- `∩[A061237(n+1), A089716(n+1)]` -/
def P10428445150738848269.Spec : Prop :=
  ∀ n, (P10428445150738848269.a n : ℤ) = A142312 (n + 1)

end A142312

/-! ## A142312.P11324452481511324101

`∩[A061237(n+1), A132230(n+1)]`
-/

namespace A142312.P11324452481511324101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142312.P11324452481511324101

namespace A142312

/-- `∩[A061237(n+1), A132230(n+1)]` -/
def P11324452481511324101.Spec : Prop :=
  ∀ n, (P11324452481511324101.a n : ℤ) = A142312 (n + 1)

end A142312

/-! ## A142312.P17097970482796819852

`∩[A089716(n+1), A243174(n+1)]`
-/

namespace A142312.P17097970482796819852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142312.P17097970482796819852

namespace A142312

/-- `∩[A089716(n+1), A243174(n+1)]` -/
def P17097970482796819852.Spec : Prop :=
  ∀ n, (P17097970482796819852.a n : ℤ) = A142312 (n + 1)

end A142312

/-! ## A142312.P16140595452251664581

`∩[A061237(n+1), A179446(n+1)]`
-/

namespace A142312.P16140595452251664581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142312.P16140595452251664581

namespace A142312

/-- `∩[A061237(n+1), A179446(n+1)]` -/
def P16140595452251664581.Spec : Prop :=
  ∀ n, (P16140595452251664581.a n : ℤ) = A142312 (n + 1)

end A142312

/-! ## A142312.P3619844930009711250

`∩[A033212(n+1), A089716(n+1)]`
-/

namespace A142312.P3619844930009711250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142312.P3619844930009711250

namespace A142312

/-- `∩[A033212(n+1), A089716(n+1)]` -/
def P3619844930009711250.Spec : Prop :=
  ∀ n, (P3619844930009711250.a n : ℤ) = A142312 (n + 1)

end A142312

/-! ## A142312.P2828261324966248806

`∩[A061237(n+1), A132240(n+1)]`
-/

namespace A142312.P2828261324966248806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142312.P2828261324966248806

namespace A142312

/-- `∩[A061237(n+1), A132240(n+1)]` -/
def P2828261324966248806.Spec : Prop :=
  ∀ n, (P2828261324966248806.a n : ℤ) = A142312 (n + 1)

end A142312

/-! ## A142312.P12412316658925916728

`∩[A089716(n+1), A132240(n+1)]`
-/

namespace A142312.P12412316658925916728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142312.P12412316658925916728

namespace A142312

/-- `∩[A089716(n+1), A132240(n+1)]` -/
def P12412316658925916728.Spec : Prop :=
  ∀ n, (P12412316658925916728.a n : ℤ) = A142312 (n + 1)

end A142312

/-! ## A142312.P17899187778857731024

`∩[A045453(n+1), A061237(n+1)]`
-/

namespace A142312.P17899187778857731024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142312.P17899187778857731024

namespace A142312

/-- `∩[A045453(n+1), A061237(n+1)]` -/
def P17899187778857731024.Spec : Prop :=
  ∀ n, (P17899187778857731024.a n : ℤ) = A142312 (n + 1)

end A142312

/-! ## A142312.P11629038459809847299

`∩[A061237(n+1), A090756(n+1)]`
-/

namespace A142312.P11629038459809847299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142312.P11629038459809847299

namespace A142312

/-- `∩[A061237(n+1), A090756(n+1)]` -/
def P11629038459809847299.Spec : Prop :=
  ∀ n, (P11629038459809847299.a n : ℤ) = A142312 (n + 1)

end A142312

/-! ## A142312.P588160815194873610

`∩[A061237(n+1), A327752(n+1)]`
-/

namespace A142312.P588160815194873610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142312.P588160815194873610

namespace A142312

/-- `∩[A061237(n+1), A327752(n+1)]` -/
def P588160815194873610.Spec : Prop :=
  ∀ n, (P588160815194873610.a n : ℤ) = A142312 (n + 1)

end A142312

/-! ## A142312.P2878296892903413440

`∩[A079130(n+1), A089716(n+1)]`
-/

namespace A142312.P2878296892903413440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142312.P2878296892903413440

namespace A142312

/-- `∩[A079130(n+1), A089716(n+1)]` -/
def P2878296892903413440.Spec : Prop :=
  ∀ n, (P2878296892903413440.a n : ℤ) = A142312 (n + 1)

end A142312

/-! ## A142312.P15559154764090363800

`∩[A089716(n+1), A129805(n+1)]`
-/

namespace A142312.P15559154764090363800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142312.P15559154764090363800

namespace A142312

/-- `∩[A089716(n+1), A129805(n+1)]` -/
def P15559154764090363800.Spec : Prop :=
  ∀ n, (P15559154764090363800.a n : ℤ) = A142312 (n + 1)

end A142312

/-! ## A142312.P3903097751911351697

`∩[A129805(n+1), A132230(n+1)]`
-/

namespace A142312.P3903097751911351697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142312.P3903097751911351697

namespace A142312

/-- `∩[A129805(n+1), A132230(n+1)]` -/
def P3903097751911351697.Spec : Prop :=
  ∀ n, (P3903097751911351697.a n : ℤ) = A142312 (n + 1)

end A142312

/-! ## A142312.P17458343053361938263

`∩[A004615(n+1), A061237(n+1)]`
-/

namespace A142312.P17458343053361938263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142312.P17458343053361938263

namespace A142312

/-- `∩[A004615(n+1), A061237(n+1)]` -/
def P17458343053361938263.Spec : Prop :=
  ∀ n, (P17458343053361938263.a n : ℤ) = A142312 (n + 1)

end A142312

/-! ## A142312.P11207800950762617706

`∩[A061237(n+1), A128470(n)]`
-/

namespace A142312.P11207800950762617706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142312.P11207800950762617706

namespace A142312

/-- `∩[A061237(n+1), A128470(n)]` -/
def P11207800950762617706.Spec : Prop :=
  ∀ n, (P11207800950762617706.a n : ℤ) = A142312 (n + 1)

end A142312

/-!
# A142313: Primes congruent to 2 mod 45.

The programs for A142313, the canonical program `A142313.P17283951088892303914` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142313 has offset 1).

The definition of A142313 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3266 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142313.P17283951088892303914

`p?[45*n+2]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142313

/-- `p?[45*n+2]` -/
def P17283951088892303914.Spec : Prop :=
  ∀ n, (P17283951088892303914.a n : ℤ) = A142313 (n + 1)

theorem P17283951088892303914.correct : P17283951088892303914.Spec := by
  intro n
  simp only [A142313, Nat.add_sub_cancel]

end A142313

/-! ## A142313.P7313954818860837969

`∩[A061238(n+1), A141860(n+1)]`
-/

namespace A142313.P7313954818860837969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142313.P7313954818860837969

namespace A142313

/-- `∩[A061238(n+1), A141860(n+1)]` -/
def P7313954818860837969.Spec : Prop :=
  ∀ n, (P7313954818860837969.a n : ℤ) = A142313 (n + 1)

end A142313

/-! ## A142313.P15351340309768882991

`∩[A045357(n+1), A061238(n+1)]`
-/

namespace A142313.P15351340309768882991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142313.P15351340309768882991

namespace A142313

/-- `∩[A045357(n+1), A061238(n+1)]` -/
def P15351340309768882991.Spec : Prop :=
  ∀ n, (P15351340309768882991.a n : ℤ) = A142313 (n + 1)

end A142313

/-! ## A142313.P4597390111760604526

`∩[A045380(n+1), A061238(n+1)]`
-/

namespace A142313.P4597390111760604526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142313.P4597390111760604526

namespace A142313

/-- `∩[A045380(n+1), A061238(n+1)]` -/
def P4597390111760604526.Spec : Prop :=
  ∀ n, (P4597390111760604526.a n : ℤ) = A142313 (n + 1)

end A142313

/-! ## A142313.P10939215275944432576

`∩[A061238(n+1), A063118(n+1)]`
-/

namespace A142313.P10939215275944432576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142313.P10939215275944432576

namespace A142313

/-- `∩[A061238(n+1), A063118(n+1)]` -/
def P10939215275944432576.Spec : Prop :=
  ∀ n, (P10939215275944432576.a n : ℤ) = A142313 (n + 1)

end A142313

/-! ## A142313.P11756044656801786769

`∩[A045357(n+1), A076206(n+1)]`
-/

namespace A142313.P11756044656801786769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142313.P11756044656801786769

namespace A142313

/-- `∩[A045357(n+1), A076206(n+1)]` -/
def P11756044656801786769.Spec : Prop :=
  ∀ n, (P11756044656801786769.a n : ℤ) = A142313 (n + 1)

end A142313

/-! ## A142313.P117546441164383078

`∩[A045380(n+1), A076206(n+1)]`
-/

namespace A142313.P117546441164383078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142313.P117546441164383078

namespace A142313

/-- `∩[A045380(n+1), A076206(n+1)]` -/
def P117546441164383078.Spec : Prop :=
  ∀ n, (P117546441164383078.a n : ℤ) = A142313 (n + 1)

end A142313

/-! ## A142313.P3033727537868795990

`∩[A076206(n+1), A141860(n+1)]`
-/

namespace A142313.P3033727537868795990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142313.P3033727537868795990

namespace A142313

/-- `∩[A076206(n+1), A141860(n+1)]` -/
def P3033727537868795990.Spec : Prop :=
  ∀ n, (P3033727537868795990.a n : ℤ) = A142313 (n + 1)

end A142313

/-! ## A142313.P227100665638750649

`∩[A004616(n+1), A061238(n+1)]`
-/

namespace A142313.P227100665638750649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142313.P227100665638750649

namespace A142313

/-- `∩[A004616(n+1), A061238(n+1)]` -/
def P227100665638750649.Spec : Prop :=
  ∀ n, (P227100665638750649.a n : ℤ) = A142313 (n + 1)

end A142313

/-! ## A142313.P6731373842979572996

`record[A006530(45*n+2)]`
-/

namespace A142313.P6731373842979572996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (45 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142313.P6731373842979572996

namespace A142313

/-- `record[A006530(45*n+2)]` -/
def P6731373842979572996.Spec : Prop :=
  ∀ n, P6731373842979572996.a n = A142313 (n + 1)

end A142313

/-! ## A142313.P11895773192546511505

`record[A020639(45*n+2)]`
-/

namespace A142313.P11895773192546511505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (45 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142313.P11895773192546511505

namespace A142313

/-- `record[A020639(45*n+2)]` -/
def P11895773192546511505.Spec : Prop :=
  ∀ n, P11895773192546511505.a n = A142313 (n + 1)

end A142313

/-! ## A142313.P10296813420065075169

`record[A008472(44*n+n+2)]`
-/

namespace A142313.P10296813420065075169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (44 * n + (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142313.P10296813420065075169

namespace A142313

/-- `record[A008472(44*n+n+2)]` -/
def P10296813420065075169.Spec : Prop :=
  ∀ n, P10296813420065075169.a n = A142313 (n + 1)

end A142313

/-! ## A142313.P10195536873115080300

`∩[A045357(n+1), A017185(n)]`
-/

namespace A142313.P10195536873115080300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142313.P10195536873115080300

namespace A142313

/-- `∩[A045357(n+1), A017185(n)]` -/
def P10195536873115080300.Spec : Prop :=
  ∀ n, (P10195536873115080300.a n : ℤ) = A142313 (n + 1)

end A142313

/-! ## A142313.P5698713579775656984

`∩[A045380(n+1), A017185(n)]`
-/

namespace A142313.P5698713579775656984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142313.P5698713579775656984

namespace A142313

/-- `∩[A045380(n+1), A017185(n)]` -/
def P5698713579775656984.Spec : Prop :=
  ∀ n, (P5698713579775656984.a n : ℤ) = A142313 (n + 1)

end A142313

/-! ## A142313.P16151686747902446568

`∩[A141860(n+1), A017185(n)]`
-/

namespace A142313.P16151686747902446568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142313.P16151686747902446568

namespace A142313

/-- `∩[A141860(n+1), A017185(n)]` -/
def P16151686747902446568.Spec : Prop :=
  ∀ n, (P16151686747902446568.a n : ℤ) = A142313 (n + 1)

end A142313

/-! ## A142313.P822381488113103680

`record[and(A253254(n+2), A253262(n+2))]`
-/

namespace A142313.P822381488113103680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A253254 (n + 2)) (A253262 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142313.P822381488113103680

namespace A142313

/-- `record[and(A253254(n+2), A253262(n+2))]` -/
def P822381488113103680.Spec : Prop :=
  ∀ n, P822381488113103680.a n = A142313 (n + 1)

end A142313

/-! ## A142313.P17552695660552812976

`∩[A061238(n+1), A177964(n+1)]`
-/

namespace A142313.P17552695660552812976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142313.P17552695660552812976

namespace A142313

/-- `∩[A061238(n+1), A177964(n+1)]` -/
def P17552695660552812976.Spec : Prop :=
  ∀ n, (P17552695660552812976.a n : ℤ) = A142313 (n + 1)

end A142313

/-! ## A142313.P8367739798586481150

`∩[A061238(n+1), A016873(n)]`
-/

namespace A142313.P8367739798586481150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142313.P8367739798586481150

namespace A142313

/-- `∩[A061238(n+1), A016873(n)]` -/
def P8367739798586481150.Spec : Prop :=
  ∀ n, (P8367739798586481150.a n : ℤ) = A142313 (n + 1)

end A142313

/-! ## A142313.P4129936841517248922

`∩[A061238(n+1), A267711(n+1)]`
-/

namespace A142313.P4129936841517248922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142313.P4129936841517248922

namespace A142313

/-- `∩[A061238(n+1), A267711(n+1)]` -/
def P4129936841517248922.Spec : Prop :=
  ∀ n, (P4129936841517248922.a n : ℤ) = A142313 (n + 1)

end A142313

/-! ## A142313.P17626419813631003641

`∩[A045357(n+1), A193910(n+1)]`
-/

namespace A142313.P17626419813631003641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142313.P17626419813631003641

namespace A142313

/-- `∩[A045357(n+1), A193910(n+1)]` -/
def P17626419813631003641.Spec : Prop :=
  ∀ n, (P17626419813631003641.a n : ℤ) = A142313 (n + 1)

end A142313

/-!
# A142314: Primes congruent to 4 mod 45.

The programs for A142314, the canonical program `A142314.P6050126753474725159` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142314 has offset 1).

The definition of A142314 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3261 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142314.P6050126753474725159

`p?[45*n+4]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142314

/-- `p?[45*n+4]` -/
def P6050126753474725159.Spec : Prop :=
  ∀ n, (P6050126753474725159.a n : ℤ) = A142314 (n + 1)

theorem P6050126753474725159.correct : P6050126753474725159.Spec := by
  intro n
  simp only [A142314, Nat.add_sub_cancel]

end A142314

/-! ## A142314.P4664972032366876205

`∩[A030433(n+1), A061239(n+1)]`
-/

namespace A142314.P4664972032366876205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142314.P4664972032366876205

namespace A142314

/-- `∩[A030433(n+1), A061239(n+1)]` -/
def P4664972032366876205.Spec : Prop :=
  ∀ n, (P4664972032366876205.a n : ℤ) = A142314 (n + 1)

end A142314

/-! ## A142314.P12527212516893736454

`∩[A061239(n+1), A132234(n+1)]`
-/

namespace A142314.P12527212516893736454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142314.P12527212516893736454

namespace A142314

/-- `∩[A061239(n+1), A132234(n+1)]` -/
def P12527212516893736454.Spec : Prop :=
  ∀ n, (P12527212516893736454.a n : ℤ) = A142314 (n + 1)

end A142314

/-! ## A142314.P17990787291338666279

`∩[A061239(n+1), A132239(n+1)]`
-/

namespace A142314.P17990787291338666279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142314.P17990787291338666279

namespace A142314

/-- `∩[A061239(n+1), A132239(n+1)]` -/
def P17990787291338666279.Spec : Prop :=
  ∀ n, (P17990787291338666279.a n : ℤ) = A142314 (n + 1)

end A142314

/-! ## A142314.P6717115135644454839

`∩[A045457(n+1), A061239(n+1)]`
-/

namespace A142314.P6717115135644454839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142314.P6717115135644454839

namespace A142314

/-- `∩[A045457(n+1), A061239(n+1)]` -/
def P6717115135644454839.Spec : Prop :=
  ∀ n, (P6717115135644454839.a n : ℤ) = A142314 (n + 1)

end A142314

/-! ## A142314.P8849741128861055925

`∩[A061239(n+1), A140506(n+1)]`
-/

namespace A142314.P8849741128861055925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142314.P8849741128861055925

namespace A142314

/-- `∩[A061239(n+1), A140506(n+1)]` -/
def P8849741128861055925.Spec : Prop :=
  ∀ n, (P8849741128861055925.a n : ℤ) = A142314 (n + 1)

end A142314

/-! ## A142314.P13441557593634028780

`∩[A061239(n+1), A327753(n+1)]`
-/

namespace A142314.P13441557593634028780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142314.P13441557593634028780

namespace A142314

/-- `∩[A061239(n+1), A327753(n+1)]` -/
def P13441557593634028780.Spec : Prop :=
  ∀ n, (P13441557593634028780.a n : ℤ) = A142314 (n + 1)

end A142314

/-! ## A142314.P3797286934021084143

`∩[A004618(n+1), A061239(n+1)]`
-/

namespace A142314.P3797286934021084143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142314.P3797286934021084143

namespace A142314

/-- `∩[A004618(n+1), A061239(n+1)]` -/
def P3797286934021084143.Spec : Prop :=
  ∀ n, (P3797286934021084143.a n : ℤ) = A142314 (n + 1)

end A142314

/-! ## A142314.P977686732641616797

`∩[A129806(n+1), A132234(n+1)]`
-/

namespace A142314.P977686732641616797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142314.P977686732641616797

namespace A142314

/-- `∩[A129806(n+1), A132234(n+1)]` -/
def P977686732641616797.Spec : Prop :=
  ∀ n, (P977686732641616797.a n : ℤ) = A142314 (n + 1)

end A142314

/-! ## A142314.P3131345886229350873

`∩[A061239(n+1), A156376(n)]`
-/

namespace A142314.P3131345886229350873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156376 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142314.P3131345886229350873

namespace A142314

/-- `∩[A061239(n+1), A156376(n)]` -/
def P3131345886229350873.Spec : Prop :=
  ∀ n, (P3131345886229350873.a n : ℤ) = A142314 (n + 1)

end A142314

/-! ## A142314.P7623977831594099313

`∩[A129806(n+1), A156376(n)]`
-/

namespace A142314.P7623977831594099313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156376 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142314.P7623977831594099313

namespace A142314

/-- `∩[A129806(n+1), A156376(n)]` -/
def P7623977831594099313.Spec : Prop :=
  ∀ n, (P7623977831594099313.a n : ℤ) = A142314 (n + 1)

end A142314

/-! ## A142314.P15729946869244380932

`∩[A129806(n+1), A128468(n)+2]`
-/

namespace A142314.P15729946869244380932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128468 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142314.P15729946869244380932

namespace A142314

/-- `∩[A129806(n+1), A128468(n)+2]` -/
def P15729946869244380932.Spec : Prop :=
  ∀ n, (P15729946869244380932.a n : ℤ) = A142314 (n + 1)

end A142314

/-! ## A142314.P10592114178033775351

`∩[A030433(n+1), A301622(n+1)]`
-/

namespace A142314.P10592114178033775351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142314.P10592114178033775351

namespace A142314

/-- `∩[A030433(n+1), A301622(n+1)]` -/
def P10592114178033775351.Spec : Prop :=
  ∀ n, (P10592114178033775351.a n : ℤ) = A142314 (n + 1)

end A142314

/-! ## A142314.P10326426625674323661

`∩[A045457(n+1), A301622(n+1)]`
-/

namespace A142314.P10326426625674323661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142314.P10326426625674323661

namespace A142314

/-- `∩[A045457(n+1), A301622(n+1)]` -/
def P10326426625674323661.Spec : Prop :=
  ∀ n, (P10326426625674323661.a n : ℤ) = A142314 (n + 1)

end A142314

/-! ## A142314.P13713565382825976630

`∩[A132234(n+1), A301622(n+1)]`
-/

namespace A142314.P13713565382825976630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142314.P13713565382825976630

namespace A142314

/-- `∩[A132234(n+1), A301622(n+1)]` -/
def P13713565382825976630.Spec : Prop :=
  ∀ n, (P13713565382825976630.a n : ℤ) = A142314 (n + 1)

end A142314

/-! ## A142314.P16887835469014925851

`∩[A132239(n+1), A301622(n+1)]`
-/

namespace A142314.P16887835469014925851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142314.P16887835469014925851

namespace A142314

/-- `∩[A132239(n+1), A301622(n+1)]` -/
def P16887835469014925851.Spec : Prop :=
  ∀ n, (P16887835469014925851.a n : ℤ) = A142314 (n + 1)

end A142314

/-! ## A142314.P11920685770237583999

`∩[A140506(n+1), A301622(n+1)]`
-/

namespace A142314.P11920685770237583999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142314.P11920685770237583999

namespace A142314

/-- `∩[A140506(n+1), A301622(n+1)]` -/
def P11920685770237583999.Spec : Prop :=
  ∀ n, (P11920685770237583999.a n : ℤ) = A142314 (n + 1)

end A142314

/-! ## A142314.P899464793217609893

`∩[A030433(n+1), A301621(n+1)+2]`
-/

namespace A142314.P899464793217609893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142314.P899464793217609893

namespace A142314

/-- `∩[A030433(n+1), A301621(n+1)+2]` -/
def P899464793217609893.Spec : Prop :=
  ∀ n, (P899464793217609893.a n : ℤ) = A142314 (n + 1)

end A142314

/-! ## A142314.P10127098695580155818

`∩[A045457(n+1), A301621(n+1)+2]`
-/

namespace A142314.P10127098695580155818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142314.P10127098695580155818

namespace A142314

/-- `∩[A045457(n+1), A301621(n+1)+2]` -/
def P10127098695580155818.Spec : Prop :=
  ∀ n, (P10127098695580155818.a n : ℤ) = A142314 (n + 1)

end A142314

/-! ## A142314.P11366738703319831509

`∩[A140506(n+1), A301621(n+1)+2]`
-/

namespace A142314.P11366738703319831509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142314.P11366738703319831509

namespace A142314

/-- `∩[A140506(n+1), A301621(n+1)+2]` -/
def P11366738703319831509.Spec : Prop :=
  ∀ n, (P11366738703319831509.a n : ℤ) = A142314 (n + 1)

end A142314

/-!
# A142315: Primes congruent to 7 mod 45.

The programs for A142315, the canonical program `A142315.P7476752833073599193` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142315 has offset 1).

The definition of A142315 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3251 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142315.P7476752833073599193

`p?[45*n+7]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142315

/-- `p?[45*n+7]` -/
def P7476752833073599193.Spec : Prop :=
  ∀ n, (P7476752833073599193.a n : ℤ) = A142315 (n + 1)

theorem P7476752833073599193.correct : P7476752833073599193.Spec := by
  intro n
  simp only [A142315, Nat.add_sub_cancel]

end A142315

/-! ## A142315.P11523046477627626651

`p?[A139280(n+1)-2]%A023284(n+1)`
-/

namespace A142315.P11523046477627626651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139280 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A023284 (n + 1))

end

end A142315.P11523046477627626651

namespace A142315

/-- `p?[A139280(n+1)-2]%A023284(n+1)` -/
def P11523046477627626651.Spec : Prop :=
  ∀ n, P11523046477627626651.a n = A142315 (n + 1)

end A142315

/-! ## A142315.P18408347489755724233

`∩[A030432(n+1), A061241(n+1)]`
-/

namespace A142315.P18408347489755724233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142315.P18408347489755724233

namespace A142315

/-- `∩[A030432(n+1), A061241(n+1)]` -/
def P18408347489755724233.Spec : Prop :=
  ∀ n, (P18408347489755724233.a n : ℤ) = A142315 (n + 1)

end A142315

/-! ## A142315.P1655504071690774390

`∩[A061241(n+1), A132231(n+1)]`
-/

namespace A142315.P1655504071690774390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142315.P1655504071690774390

namespace A142315

/-- `∩[A061241(n+1), A132231(n+1)]` -/
def P1655504071690774390.Spec : Prop :=
  ∀ n, (P1655504071690774390.a n : ℤ) = A142315 (n + 1)

end A142315

/-! ## A142315.P3978258471011442056

`∩[A045357(n+1), A061241(n+1)]`
-/

namespace A142315.P3978258471011442056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142315.P3978258471011442056

namespace A142315

/-- `∩[A045357(n+1), A061241(n+1)]` -/
def P3978258471011442056.Spec : Prop :=
  ∀ n, (P3978258471011442056.a n : ℤ) = A142315 (n + 1)

end A142315

/-! ## A142315.P780507893397864391

`∩[A045380(n+1), A061241(n+1)]`
-/

namespace A142315.P780507893397864391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142315.P780507893397864391

namespace A142315

/-- `∩[A045380(n+1), A061241(n+1)]` -/
def P780507893397864391.Spec : Prop :=
  ∀ n, (P780507893397864391.a n : ℤ) = A142315 (n + 1)

end A142315

/-! ## A142315.P10237168768650146901

`∩[A061241(n+1), A132237(n+1)]`
-/

namespace A142315.P10237168768650146901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142315.P10237168768650146901

namespace A142315

/-- `∩[A061241(n+1), A132237(n+1)]` -/
def P10237168768650146901.Spec : Prop :=
  ∀ n, (P10237168768650146901.a n : ℤ) = A142315 (n + 1)

end A142315

/-! ## A142315.P1153672736850410037

`∩[A129807(n+1), A132231(n+1)]`
-/

namespace A142315.P1153672736850410037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142315.P1153672736850410037

namespace A142315

/-- `∩[A129807(n+1), A132231(n+1)]` -/
def P1153672736850410037.Spec : Prop :=
  ∀ n, (P1153672736850410037.a n : ℤ) = A142315 (n + 1)

end A142315

/-! ## A142315.P13712701090803102854

`∩[A061241(n+1), A128471(n)]`
-/

namespace A142315.P13712701090803102854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128471 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142315.P13712701090803102854

namespace A142315

/-- `∩[A061241(n+1), A128471(n)]` -/
def P13712701090803102854.Spec : Prop :=
  ∀ n, (P13712701090803102854.a n : ℤ) = A142315 (n + 1)

end A142315

/-! ## A142315.P5996063064710103972

`∩[A129807(n+1), A128471(n)]`
-/

namespace A142315.P5996063064710103972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128471 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142315.P5996063064710103972

namespace A142315

/-- `∩[A129807(n+1), A128471(n)]` -/
def P5996063064710103972.Spec : Prop :=
  ∀ n, (P5996063064710103972.a n : ℤ) = A142315 (n + 1)

end A142315

/-! ## A142315.P10360530453138508805

`∩[A061241(n+1), A090652(n+1)]`
-/

namespace A142315.P10360530453138508805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142315.P10360530453138508805

namespace A142315

/-- `∩[A061241(n+1), A090652(n+1)]` -/
def P10360530453138508805.Spec : Prop :=
  ∀ n, (P10360530453138508805.a n : ℤ) = A142315 (n + 1)

end A142315

/-! ## A142315.P11806312052725797233

`∩[A078403(n+1), A128471(n)]`
-/

namespace A142315.P11806312052725797233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128471 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142315.P11806312052725797233

namespace A142315

/-- `∩[A078403(n+1), A128471(n)]` -/
def P11806312052725797233.Spec : Prop :=
  ∀ n, (P11806312052725797233.a n : ℤ) = A142315 (n + 1)

end A142315

/-! ## A142315.P11541630623191385998

`∩[A078403(n+1), A132231(n+1)]`
-/

namespace A142315.P11541630623191385998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142315.P11541630623191385998

namespace A142315

/-- `∩[A078403(n+1), A132231(n+1)]` -/
def P11541630623191385998.Spec : Prop :=
  ∀ n, (P11541630623191385998.a n : ℤ) = A142315 (n + 1)

end A142315

/-! ## A142315.P5577693732696630274

`∩[A030432(n+1), A301628(n+1)]`
-/

namespace A142315.P5577693732696630274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142315.P5577693732696630274

namespace A142315

/-- `∩[A030432(n+1), A301628(n+1)]` -/
def P5577693732696630274.Spec : Prop :=
  ∀ n, (P5577693732696630274.a n : ℤ) = A142315 (n + 1)

end A142315

/-! ## A142315.P5156868651425999472

`∩[A045357(n+1), A301628(n+1)]`
-/

namespace A142315.P5156868651425999472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142315.P5156868651425999472

namespace A142315

/-- `∩[A045357(n+1), A301628(n+1)]` -/
def P5156868651425999472.Spec : Prop :=
  ∀ n, (P5156868651425999472.a n : ℤ) = A142315 (n + 1)

end A142315

/-! ## A142315.P13985375835182808480

`∩[A045380(n+1), A301628(n+1)]`
-/

namespace A142315.P13985375835182808480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142315.P13985375835182808480

namespace A142315

/-- `∩[A045380(n+1), A301628(n+1)]` -/
def P13985375835182808480.Spec : Prop :=
  ∀ n, (P13985375835182808480.a n : ℤ) = A142315 (n + 1)

end A142315

/-! ## A142315.P18143089531191036916

`∩[A132231(n+1), A301628(n+1)]`
-/

namespace A142315.P18143089531191036916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142315.P18143089531191036916

namespace A142315

/-- `∩[A132231(n+1), A301628(n+1)]` -/
def P18143089531191036916.Spec : Prop :=
  ∀ n, (P18143089531191036916.a n : ℤ) = A142315 (n + 1)

end A142315

/-! ## A142315.P17904078429896846525

`∩[A132237(n+1), A301628(n+1)]`
-/

namespace A142315.P17904078429896846525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142315.P17904078429896846525

namespace A142315

/-- `∩[A132237(n+1), A301628(n+1)]` -/
def P17904078429896846525.Spec : Prop :=
  ∀ n, (P17904078429896846525.a n : ℤ) = A142315 (n + 1)

end A142315

/-! ## A142315.P7952948099342357623

`∩[A030432(n+1), A242215(n)+2]`
-/

namespace A142315.P7952948099342357623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142315.P7952948099342357623

namespace A142315

/-- `∩[A030432(n+1), A242215(n)+2]` -/
def P7952948099342357623.Spec : Prop :=
  ∀ n, (P7952948099342357623.a n : ℤ) = A142315 (n + 1)

end A142315

/-! ## A142315.P10349673525267552566

`∩[A132237(n+1), A242215(n)+2]`
-/

namespace A142315.P10349673525267552566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142315.P10349673525267552566

namespace A142315

/-- `∩[A132237(n+1), A242215(n)+2]` -/
def P10349673525267552566.Spec : Prop :=
  ∀ n, (P10349673525267552566.a n : ℤ) = A142315 (n + 1)

end A142315

/-!
# A142316: Primes congruent to 8 mod 45.

The programs for A142316, the canonical program `A142316.P12716095900696772004` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142316 has offset 1).

The definition of A142316 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3267 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142316.P12716095900696772004

`p?[45*n+8]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142316

/-- `p?[45*n+8]` -/
def P12716095900696772004.Spec : Prop :=
  ∀ n, (P12716095900696772004.a n : ℤ) = A142316 (n + 1)

theorem P12716095900696772004.correct : P12716095900696772004.Spec := by
  intro n
  simp only [A142316, Nat.add_sub_cancel]

end A142316

/-! ## A142316.P14640697925282920619

`∩[A030431(n+1), A061242(n+1)]`
-/

namespace A142316.P14640697925282920619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142316.P14640697925282920619

namespace A142316

/-- `∩[A030431(n+1), A061242(n+1)]` -/
def P14640697925282920619.Spec : Prop :=
  ∀ n, (P14640697925282920619.a n : ℤ) = A142316 (n + 1)

end A142316

/-! ## A142316.P6962280077066789304

`∩[A061242(n+1), A132235(n+1)]`
-/

namespace A142316.P6962280077066789304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132235 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142316.P6962280077066789304

namespace A142316

/-- `∩[A061242(n+1), A132235(n+1)]` -/
def P6962280077066789304.Spec : Prop :=
  ∀ n, (P6962280077066789304.a n : ℤ) = A142316 (n + 1)

end A142316

/-! ## A142316.P14288811801469580863

`∩[A045414(n+1), A061242(n+1)]`
-/

namespace A142316.P14288811801469580863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142316.P14288811801469580863

namespace A142316

/-- `∩[A045414(n+1), A061242(n+1)]` -/
def P14288811801469580863.Spec : Prop :=
  ∀ n, (P14288811801469580863.a n : ℤ) = A142316 (n + 1)

end A142316

/-! ## A142316.P7823857120473405696

`∩[A061242(n+1), A132237(n+1)]`
-/

namespace A142316.P7823857120473405696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142316.P7823857120473405696

namespace A142316

/-- `∩[A061242(n+1), A132237(n+1)]` -/
def P7823857120473405696.Spec : Prop :=
  ∀ n, (P7823857120473405696.a n : ℤ) = A142316 (n + 1)

end A142316

/-! ## A142316.P4931309425518832485

`or(p?[A139610(n+1)-2], A000035(n))`
-/

namespace A142316.P4931309425518832485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000035 n)

end

end A142316.P4931309425518832485

namespace A142316

/-- `or(p?[A139610(n+1)-2], A000035(n))` -/
def P4931309425518832485.Spec : Prop :=
  ∀ n, P4931309425518832485.a n = A142316 (n + 1)

end A142316

/-! ## A142316.P1571503493583866588

`∩[A129805(n+1), A132235(n+1)]`
-/

namespace A142316.P1571503493583866588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132235 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142316.P1571503493583866588

namespace A142316

/-- `∩[A129805(n+1), A132235(n+1)]` -/
def P1571503493583866588.Spec : Prop :=
  ∀ n, (P1571503493583866588.a n : ℤ) = A142316 (n + 1)

end A142316

/-! ## A142316.P13178957936690087747

`∩[A061242(n+1), A128473(n+1)]`
-/

namespace A142316.P13178957936690087747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142316.P13178957936690087747

namespace A142316

/-- `∩[A061242(n+1), A128473(n+1)]` -/
def P13178957936690087747.Spec : Prop :=
  ∀ n, (P13178957936690087747.a n : ℤ) = A142316 (n + 1)

end A142316

/-! ## A142316.P16013692797532206800

`∩[A128473(n+1), A129805(n+1)]`
-/

namespace A142316.P16013692797532206800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142316.P16013692797532206800

namespace A142316

/-- `∩[A128473(n+1), A129805(n+1)]` -/
def P16013692797532206800.Spec : Prop :=
  ∀ n, (P16013692797532206800.a n : ℤ) = A142316 (n + 1)

end A142316

/-! ## A142316.P5694578574891117389

`∩[A030431(n+1), A295869(n+1)]`
-/

namespace A142316.P5694578574891117389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142316.P5694578574891117389

namespace A142316

/-- `∩[A030431(n+1), A295869(n+1)]` -/
def P5694578574891117389.Spec : Prop :=
  ∀ n, (P5694578574891117389.a n : ℤ) = A142316 (n + 1)

end A142316

/-! ## A142316.P14483158846527937553

`∩[A045414(n+1), A295869(n+1)]`
-/

namespace A142316.P14483158846527937553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142316.P14483158846527937553

namespace A142316

/-- `∩[A045414(n+1), A295869(n+1)]` -/
def P14483158846527937553.Spec : Prop :=
  ∀ n, (P14483158846527937553.a n : ℤ) = A142316 (n + 1)

end A142316

/-! ## A142316.P10112467023086600697

`∩[A132235(n+1), A295869(n+1)]`
-/

namespace A142316.P10112467023086600697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142316.P10112467023086600697

namespace A142316

/-- `∩[A132235(n+1), A295869(n+1)]` -/
def P10112467023086600697.Spec : Prop :=
  ∀ n, (P10112467023086600697.a n : ℤ) = A142316 (n + 1)

end A142316

/-! ## A142316.P15268717692338572917

`∩[A132237(n+1), A295869(n+1)]`
-/

namespace A142316.P15268717692338572917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142316.P15268717692338572917

namespace A142316

/-- `∩[A132237(n+1), A295869(n+1)]` -/
def P15268717692338572917.Spec : Prop :=
  ∀ n, (P15268717692338572917.a n : ℤ) = A142316 (n + 1)

end A142316

/-! ## A142316.P8378383253355321591

`∩[A004617(n+1), A061242(n+1)]`
-/

namespace A142316.P8378383253355321591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142316.P8378383253355321591

namespace A142316

/-- `∩[A004617(n+1), A061242(n+1)]` -/
def P8378383253355321591.Spec : Prop :=
  ∀ n, (P8378383253355321591.a n : ℤ) = A142316 (n + 1)

end A142316

/-! ## A142316.P11260916662521882835

`∩[A030431(n+1), A239129(n+1)]`
-/

namespace A142316.P11260916662521882835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142316.P11260916662521882835

namespace A142316

/-- `∩[A030431(n+1), A239129(n+1)]` -/
def P11260916662521882835.Spec : Prop :=
  ∀ n, (P11260916662521882835.a n : ℤ) = A142316 (n + 1)

end A142316

/-! ## A142316.P1428018925043958436

`∩[A045414(n+1), A239129(n+1)]`
-/

namespace A142316.P1428018925043958436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142316.P1428018925043958436

namespace A142316

/-- `∩[A045414(n+1), A239129(n+1)]` -/
def P1428018925043958436.Spec : Prop :=
  ∀ n, (P1428018925043958436.a n : ℤ) = A142316 (n + 1)

end A142316

/-! ## A142316.P14706765271061873721

`∩[A132235(n+1), A239129(n+1)]`
-/

namespace A142316.P14706765271061873721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142316.P14706765271061873721

namespace A142316

/-- `∩[A132235(n+1), A239129(n+1)]` -/
def P14706765271061873721.Spec : Prop :=
  ∀ n, (P14706765271061873721.a n : ℤ) = A142316 (n + 1)

end A142316

/-! ## A142316.P16228685642321433022

`∩[A132237(n+1), A239129(n+1)]`
-/

namespace A142316.P16228685642321433022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142316.P16228685642321433022

namespace A142316

/-- `∩[A132237(n+1), A239129(n+1)]` -/
def P16228685642321433022.Spec : Prop :=
  ∀ n, (P16228685642321433022.a n : ℤ) = A142316 (n + 1)

end A142316

/-! ## A142316.P9644446414388660490

`∩[A061242(n+1), A164284(n+1)]`
-/

namespace A142316.P9644446414388660490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142316.P9644446414388660490

namespace A142316

/-- `∩[A061242(n+1), A164284(n+1)]` -/
def P9644446414388660490.Spec : Prop :=
  ∀ n, (P9644446414388660490.a n : ℤ) = A142316 (n + 1)

end A142316

/-! ## A142316.P6194455137549226891

`∩[A129805(n+1), A164284(n+1)]`
-/

namespace A142316.P6194455137549226891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142316.P6194455137549226891

namespace A142316

/-- `∩[A129805(n+1), A164284(n+1)]` -/
def P6194455137549226891.Spec : Prop :=
  ∀ n, (P6194455137549226891.a n : ℤ) = A142316 (n + 1)

end A142316

/-!
# A142317: Primes congruent to 11 mod 45.

The programs for A142317, the canonical program `A142317.P7412645523689734447` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142317 has offset 1).

The definition of A142317 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142317.P7412645523689734447

`p?[45*n+11]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142317

/-- `p?[45*n+11]` -/
def P7412645523689734447.Spec : Prop :=
  ∀ n, (P7412645523689734447.a n : ℤ) = A142317 (n + 1)

theorem P7412645523689734447.correct : P7412645523689734447.Spec := by
  intro n
  simp only [A142317, Nat.add_sub_cancel]

end A142317

/-! ## A142317.P17816551662153126242

`∩[A061238(n+1), A128467(n)]`
-/

namespace A142317.P17816551662153126242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128467 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142317.P17816551662153126242

namespace A142317

/-- `∩[A061238(n+1), A128467(n)]` -/
def P17816551662153126242.Spec : Prop :=
  ∀ n, (P17816551662153126242.a n : ℤ) = A142317 (n + 1)

end A142317

/-! ## A142317.P1329091880910459698

`∩[A089716(n+1), A128467(n)]`
-/

namespace A142317.P1329091880910459698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128467 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142317.P1329091880910459698

namespace A142317

/-- `∩[A089716(n+1), A128467(n)]` -/
def P1329091880910459698.Spec : Prop :=
  ∀ n, (P1329091880910459698.a n : ℤ) = A142317 (n + 1)

end A142317

/-! ## A142317.P10055619965222391397

`∩[A129807(n+1), A128467(n)]`
-/

namespace A142317.P10055619965222391397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128467 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142317.P10055619965222391397

namespace A142317

/-- `∩[A129807(n+1), A128467(n)]` -/
def P10055619965222391397.Spec : Prop :=
  ∀ n, (P10055619965222391397.a n : ℤ) = A142317 (n + 1)

end A142317

/-! ## A142317.P17518913410311790416

`∩[A004615(n+1), A061238(n+1)]`
-/

namespace A142317.P17518913410311790416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142317.P17518913410311790416

namespace A142317

/-- `∩[A004615(n+1), A061238(n+1)]` -/
def P17518913410311790416.Spec : Prop :=
  ∀ n, (P17518913410311790416.a n : ℤ) = A142317 (n + 1)

end A142317

/-! ## A142317.P17208188535722537803

`∩[A030430(n+1), A061238(n+1)]`
-/

namespace A142317.P17208188535722537803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142317.P17208188535722537803

namespace A142317

/-- `∩[A030430(n+1), A061238(n+1)]` -/
def P17208188535722537803.Spec : Prop :=
  ∀ n, (P17208188535722537803.a n : ℤ) = A142317 (n + 1)

end A142317

/-! ## A142317.P14494926005845773526

`∩[A045453(n+1), A061238(n+1)]`
-/

namespace A142317.P14494926005845773526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142317.P14494926005845773526

namespace A142317

/-- `∩[A045453(n+1), A061238(n+1)]` -/
def P14494926005845773526.Spec : Prop :=
  ∀ n, (P14494926005845773526.a n : ℤ) = A142317 (n + 1)

end A142317

/-! ## A142317.P10092557073383069805

`∩[A061238(n+1), A089716(n+1)]`
-/

namespace A142317.P10092557073383069805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142317.P10092557073383069805

namespace A142317

/-- `∩[A061238(n+1), A089716(n+1)]` -/
def P10092557073383069805.Spec : Prop :=
  ∀ n, (P10092557073383069805.a n : ℤ) = A142317 (n + 1)

end A142317

/-! ## A142317.P17737254567842353978

`∩[A061238(n+1), A090756(n+1)]`
-/

namespace A142317.P17737254567842353978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142317.P17737254567842353978

namespace A142317

/-- `∩[A061238(n+1), A090756(n+1)]` -/
def P17737254567842353978.Spec : Prop :=
  ∀ n, (P17737254567842353978.a n : ℤ) = A142317 (n + 1)

end A142317

/-! ## A142317.P1778457018749084113

`∩[A061238(n+1), A132232(n+1)]`
-/

namespace A142317.P1778457018749084113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142317.P1778457018749084113

namespace A142317

/-- `∩[A061238(n+1), A132232(n+1)]` -/
def P1778457018749084113.Spec : Prop :=
  ∀ n, (P1778457018749084113.a n : ℤ) = A142317 (n + 1)

end A142317

/-! ## A142317.P4044845552854958104

`∩[A061238(n+1), A132238(n+1)]`
-/

namespace A142317.P4044845552854958104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142317.P4044845552854958104

namespace A142317

/-- `∩[A061238(n+1), A132238(n+1)]` -/
def P4044845552854958104.Spec : Prop :=
  ∀ n, (P4044845552854958104.a n : ℤ) = A142317 (n + 1)

end A142317

/-! ## A142317.P2292918439516596943

`∩[A061238(n+1), A140506(n+1)]`
-/

namespace A142317.P2292918439516596943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142317.P2292918439516596943

namespace A142317

/-- `∩[A061238(n+1), A140506(n+1)]` -/
def P2292918439516596943.Spec : Prop :=
  ∀ n, (P2292918439516596943.a n : ℤ) = A142317 (n + 1)

end A142317

/-! ## A142317.P3830049149115225230

`∩[A089716(n+1), A129807(n+1)]`
-/

namespace A142317.P3830049149115225230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142317.P3830049149115225230

namespace A142317

/-- `∩[A089716(n+1), A129807(n+1)]` -/
def P3830049149115225230.Spec : Prop :=
  ∀ n, (P3830049149115225230.a n : ℤ) = A142317 (n + 1)

end A142317

/-! ## A142317.P4889688841234762600

`∩[A089716(n+1), A132232(n+1)]`
-/

namespace A142317.P4889688841234762600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142317.P4889688841234762600

namespace A142317

/-- `∩[A089716(n+1), A132232(n+1)]` -/
def P4889688841234762600.Spec : Prop :=
  ∀ n, (P4889688841234762600.a n : ℤ) = A142317 (n + 1)

end A142317

/-! ## A142317.P15455717487030625642

`∩[A089716(n+1), A132238(n+1)]`
-/

namespace A142317.P15455717487030625642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142317.P15455717487030625642

namespace A142317

/-- `∩[A089716(n+1), A132238(n+1)]` -/
def P15455717487030625642.Spec : Prop :=
  ∀ n, (P15455717487030625642.a n : ℤ) = A142317 (n + 1)

end A142317

/-! ## A142317.P14670685309252569533

`∩[A089716(n+1), A140506(n+1)]`
-/

namespace A142317.P14670685309252569533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142317.P14670685309252569533

namespace A142317

/-- `∩[A089716(n+1), A140506(n+1)]` -/
def P14670685309252569533.Spec : Prop :=
  ∀ n, (P14670685309252569533.a n : ℤ) = A142317 (n + 1)

end A142317

/-! ## A142317.P5265730077703184400

`∩[A089716(n+1), A141785(n+1)]`
-/

namespace A142317.P5265730077703184400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142317.P5265730077703184400

namespace A142317

/-- `∩[A089716(n+1), A141785(n+1)]` -/
def P5265730077703184400.Spec : Prop :=
  ∀ n, (P5265730077703184400.a n : ℤ) = A142317 (n + 1)

end A142317

/-! ## A142317.P15126715534835028872

`∩[A129807(n+1), A132232(n+1)]`
-/

namespace A142317.P15126715534835028872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142317.P15126715534835028872

namespace A142317

/-- `∩[A129807(n+1), A132232(n+1)]` -/
def P15126715534835028872.Spec : Prop :=
  ∀ n, (P15126715534835028872.a n : ℤ) = A142317 (n + 1)

end A142317

/-! ## A142317.P7465684576765055346

`∩[A089716(n+1), A290530(n+1)]`
-/

namespace A142317.P7465684576765055346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142317.P7465684576765055346

namespace A142317

/-- `∩[A089716(n+1), A290530(n+1)]` -/
def P7465684576765055346.Spec : Prop :=
  ∀ n, (P7465684576765055346.a n : ℤ) = A142317 (n + 1)

end A142317

/-! ## A142317.P16411206648216356854

`∩[A061238(n+1), A327752(n+1)]`
-/

namespace A142317.P16411206648216356854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142317.P16411206648216356854

namespace A142317

/-- `∩[A061238(n+1), A327752(n+1)]` -/
def P16411206648216356854.Spec : Prop :=
  ∀ n, (P16411206648216356854.a n : ℤ) = A142317 (n + 1)

end A142317

/-!
# A142318: Primes congruent to 13 mod 45.

The programs for A142318, the canonical program `A142318.P18123517359371742572` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142318 has offset 1).

The definition of A142318 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3280 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142318.P18123517359371742572

`p?[45*n+13]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142318

/-- `p?[45*n+13]` -/
def P18123517359371742572.Spec : Prop :=
  ∀ n, (P18123517359371742572.a n : ℤ) = A142318 (n + 1)

theorem P18123517359371742572.correct : P18123517359371742572.Spec := by
  intro n
  simp only [A142318, Nat.add_sub_cancel]

end A142318

/-! ## A142318.P1339780312443900859

`∩[A030431(n+1), A061239(n+1)]`
-/

namespace A142318.P1339780312443900859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142318.P1339780312443900859

namespace A142318

/-- `∩[A030431(n+1), A061239(n+1)]` -/
def P1339780312443900859.Spec : Prop :=
  ∀ n, (P1339780312443900859.a n : ℤ) = A142318 (n + 1)

end A142318

/-! ## A142318.P5998449069734435985

`∩[A061239(n+1), A132233(n+1)]`
-/

namespace A142318.P5998449069734435985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132233 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142318.P5998449069734435985

namespace A142318

/-- `∩[A061239(n+1), A132233(n+1)]` -/
def P5998449069734435985.Spec : Prop :=
  ∀ n, (P5998449069734435985.a n : ℤ) = A142318 (n + 1)

end A142318

/-! ## A142318.P2765621158822182675

`∩[A045414(n+1), A061239(n+1)]`
-/

namespace A142318.P2765621158822182675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142318.P2765621158822182675

namespace A142318

/-- `∩[A045414(n+1), A061239(n+1)]` -/
def P2765621158822182675.Spec : Prop :=
  ∀ n, (P2765621158822182675.a n : ℤ) = A142318 (n + 1)

end A142318

/-! ## A142318.P16097608151726176799

`∩[A061239(n+1), A140533(n+1)]`
-/

namespace A142318.P16097608151726176799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142318.P16097608151726176799

namespace A142318

/-- `∩[A061239(n+1), A140533(n+1)]` -/
def P16097608151726176799.Spec : Prop :=
  ∀ n, (P16097608151726176799.a n : ℤ) = A142318 (n + 1)

end A142318

/-! ## A142318.P4680733007442540969

`∩[A061239(n+1), A132238(n+1)]`
-/

namespace A142318.P4680733007442540969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142318.P4680733007442540969

namespace A142318

/-- `∩[A061239(n+1), A132238(n+1)]` -/
def P4680733007442540969.Spec : Prop :=
  ∀ n, (P4680733007442540969.a n : ℤ) = A142318 (n + 1)

end A142318

/-! ## A142318.P18028651366084716772

`∩[A129806(n+1), A132233(n+1)]`
-/

namespace A142318.P18028651366084716772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132233 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142318.P18028651366084716772

namespace A142318

/-- `∩[A129806(n+1), A132233(n+1)]` -/
def P18028651366084716772.Spec : Prop :=
  ∀ n, (P18028651366084716772.a n : ℤ) = A142318 (n + 1)

end A142318

/-! ## A142318.P9657314555530480779

`∩[A061239(n+1), A082369(n+1)]`
-/

namespace A142318.P9657314555530480779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142318.P9657314555530480779

namespace A142318

/-- `∩[A061239(n+1), A082369(n+1)]` -/
def P9657314555530480779.Spec : Prop :=
  ∀ n, (P9657314555530480779.a n : ℤ) = A142318 (n + 1)

end A142318

/-! ## A142318.P15963511855503732824

`∩[A082369(n+1), A129806(n+1)]`
-/

namespace A142318.P15963511855503732824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142318.P15963511855503732824

namespace A142318

/-- `∩[A082369(n+1), A129806(n+1)]` -/
def P15963511855503732824.Spec : Prop :=
  ∀ n, (P15963511855503732824.a n : ℤ) = A142318 (n + 1)

end A142318

/-! ## A142318.P3983569090526643841

`∩[A129806(n+1), A128467(n)+2]`
-/

namespace A142318.P3983569090526643841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128467 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142318.P3983569090526643841

namespace A142318

/-- `∩[A129806(n+1), A128467(n)+2]` -/
def P3983569090526643841.Spec : Prop :=
  ∀ n, (P3983569090526643841.a n : ℤ) = A142318 (n + 1)

end A142318

/-! ## A142318.P4427256336797081358

`∩[A030431(n+1), A301622(n+1)]`
-/

namespace A142318.P4427256336797081358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142318.P4427256336797081358

namespace A142318

/-- `∩[A030431(n+1), A301622(n+1)]` -/
def P4427256336797081358.Spec : Prop :=
  ∀ n, (P4427256336797081358.a n : ℤ) = A142318 (n + 1)

end A142318

/-! ## A142318.P15304109241972244039

`∩[A045414(n+1), A301622(n+1)]`
-/

namespace A142318.P15304109241972244039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142318.P15304109241972244039

namespace A142318

/-- `∩[A045414(n+1), A301622(n+1)]` -/
def P15304109241972244039.Spec : Prop :=
  ∀ n, (P15304109241972244039.a n : ℤ) = A142318 (n + 1)

end A142318

/-! ## A142318.P17649082525578827379

`∩[A132233(n+1), A301622(n+1)]`
-/

namespace A142318.P17649082525578827379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142318.P17649082525578827379

namespace A142318

/-- `∩[A132233(n+1), A301622(n+1)]` -/
def P17649082525578827379.Spec : Prop :=
  ∀ n, (P17649082525578827379.a n : ℤ) = A142318 (n + 1)

end A142318

/-! ## A142318.P13199353647386790218

`∩[A132238(n+1), A301622(n+1)]`
-/

namespace A142318.P13199353647386790218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142318.P13199353647386790218

namespace A142318

/-- `∩[A132238(n+1), A301622(n+1)]` -/
def P13199353647386790218.Spec : Prop :=
  ∀ n, (P13199353647386790218.a n : ℤ) = A142318 (n + 1)

end A142318

/-! ## A142318.P4540812582895741181

`∩[A140533(n+1), A301622(n+1)]`
-/

namespace A142318.P4540812582895741181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142318.P4540812582895741181

namespace A142318

/-- `∩[A140533(n+1), A301622(n+1)]` -/
def P4540812582895741181.Spec : Prop :=
  ∀ n, (P4540812582895741181.a n : ℤ) = A142318 (n + 1)

end A142318

/-! ## A142318.P4118640410801169993

`∩[A030431(n+1), A301621(n+1)+2]`
-/

namespace A142318.P4118640410801169993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142318.P4118640410801169993

namespace A142318

/-- `∩[A030431(n+1), A301621(n+1)+2]` -/
def P4118640410801169993.Spec : Prop :=
  ∀ n, (P4118640410801169993.a n : ℤ) = A142318 (n + 1)

end A142318

/-! ## A142318.P9215733686574822789

`∩[A045414(n+1), A301621(n+1)+2]`
-/

namespace A142318.P9215733686574822789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142318.P9215733686574822789

namespace A142318

/-- `∩[A045414(n+1), A301621(n+1)+2]` -/
def P9215733686574822789.Spec : Prop :=
  ∀ n, (P9215733686574822789.a n : ℤ) = A142318 (n + 1)

end A142318

/-! ## A142318.P3615269869984423940

`∩[A132238(n+1), A301621(n+1)+2]`
-/

namespace A142318.P3615269869984423940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142318.P3615269869984423940

namespace A142318

/-- `∩[A132238(n+1), A301621(n+1)+2]` -/
def P3615269869984423940.Spec : Prop :=
  ∀ n, (P3615269869984423940.a n : ℤ) = A142318 (n + 1)

end A142318

/-! ## A142318.P12810520054248425149

`∩[A079132(n+1), A082369(n+1)]`
-/

namespace A142318.P12810520054248425149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142318.P12810520054248425149

namespace A142318

/-- `∩[A079132(n+1), A082369(n+1)]` -/
def P12810520054248425149.Spec : Prop :=
  ∀ n, (P12810520054248425149.a n : ℤ) = A142318 (n + 1)

end A142318

/-! ## A142318.P1869467932005198285

`∩[A079132(n+1), A132233(n+1)]`
-/

namespace A142318.P1869467932005198285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132233 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142318.P1869467932005198285

namespace A142318

/-- `∩[A079132(n+1), A132233(n+1)]` -/
def P1869467932005198285.Spec : Prop :=
  ∀ n, (P1869467932005198285.a n : ℤ) = A142318 (n + 1)

end A142318

/-!
# A142319: Primes congruent to 14 mod 45.

The programs for A142319, the canonical program `A142319.P12550948628733803953` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142319 has offset 1).

The definition of A142319 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3281 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142319.P12550948628733803953

`p?[45*n+14]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142319

/-- `p?[45*n+14]` -/
def P12550948628733803953.Spec : Prop :=
  ∀ n, (P12550948628733803953.a n : ℤ) = A142319 (n + 1)

theorem P12550948628733803953.correct : P12550948628733803953.Spec := by
  intro n
  simp only [A142319, Nat.add_sub_cancel]

end A142319

/-! ## A142319.P16101878539180163027

`∩[A030433(n+1), A061240(n+1)]`
-/

namespace A142319.P16101878539180163027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142319.P16101878539180163027

namespace A142319

/-- `∩[A030433(n+1), A061240(n+1)]` -/
def P16101878539180163027.Spec : Prop :=
  ∀ n, (P16101878539180163027.a n : ℤ) = A142319 (n + 1)

end A142319

/-! ## A142319.P18224813906987569947

`∩[A061240(n+1), A132236(n+1)]`
-/

namespace A142319.P18224813906987569947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142319.P18224813906987569947

namespace A142319

/-- `∩[A061240(n+1), A132236(n+1)]` -/
def P18224813906987569947.Spec : Prop :=
  ∀ n, (P18224813906987569947.a n : ℤ) = A142319 (n + 1)

end A142319

/-! ## A142319.P13681919286579099791

`∩[A061240(n+1), A132240(n+1)]`
-/

namespace A142319.P13681919286579099791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142319.P13681919286579099791

namespace A142319

/-- `∩[A061240(n+1), A132240(n+1)]` -/
def P13681919286579099791.Spec : Prop :=
  ∀ n, (P13681919286579099791.a n : ℤ) = A142319 (n + 1)

end A142319

/-! ## A142319.P17311359680415396239

`∩[A061240(n+1), A327753(n+1)]`
-/

namespace A142319.P17311359680415396239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142319.P17311359680415396239

namespace A142319

/-- `∩[A061240(n+1), A327753(n+1)]` -/
def P17311359680415396239.Spec : Prop :=
  ∀ n, (P17311359680415396239.a n : ℤ) = A142319 (n + 1)

end A142319

/-! ## A142319.P2501498319513336844

`∩[A004618(n+1), A061240(n+1)]`
-/

namespace A142319.P2501498319513336844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142319.P2501498319513336844

namespace A142319

/-- `∩[A004618(n+1), A061240(n+1)]` -/
def P2501498319513336844.Spec : Prop :=
  ∀ n, (P2501498319513336844.a n : ℤ) = A142319 (n + 1)

end A142319

/-! ## A142319.P17128260673240629166

`∩[A129806(n+1), A132236(n+1)]`
-/

namespace A142319.P17128260673240629166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142319.P17128260673240629166

namespace A142319

/-- `∩[A129806(n+1), A132236(n+1)]` -/
def P17128260673240629166.Spec : Prop :=
  ∀ n, (P17128260673240629166.a n : ℤ) = A142319 (n + 1)

end A142319

/-! ## A142319.P1731197131425253498

`∩[A129806(n+1), A128470(n)-2]`
-/

namespace A142319.P1731197131425253498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142319.P1731197131425253498

namespace A142319

/-- `∩[A129806(n+1), A128470(n)-2]` -/
def P1731197131425253498.Spec : Prop :=
  ∀ n, (P1731197131425253498.a n : ℤ) = A142319 (n + 1)

end A142319

/-! ## A142319.P1820732992629107406

`∩[A030433(n+1), A301623(n+1)]`
-/

namespace A142319.P1820732992629107406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142319.P1820732992629107406

namespace A142319

/-- `∩[A030433(n+1), A301623(n+1)]` -/
def P1820732992629107406.Spec : Prop :=
  ∀ n, (P1820732992629107406.a n : ℤ) = A142319 (n + 1)

end A142319

/-! ## A142319.P16564306507430000428

`∩[A045457(n+1), A301623(n+1)]`
-/

namespace A142319.P16564306507430000428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142319.P16564306507430000428

namespace A142319

/-- `∩[A045457(n+1), A301623(n+1)]` -/
def P16564306507430000428.Spec : Prop :=
  ∀ n, (P16564306507430000428.a n : ℤ) = A142319 (n + 1)

end A142319

/-! ## A142319.P6122875002399955643

`∩[A132236(n+1), A301623(n+1)]`
-/

namespace A142319.P6122875002399955643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142319.P6122875002399955643

namespace A142319

/-- `∩[A132236(n+1), A301623(n+1)]` -/
def P6122875002399955643.Spec : Prop :=
  ∀ n, (P6122875002399955643.a n : ℤ) = A142319 (n + 1)

end A142319

/-! ## A142319.P5317788670250124967

`∩[A132240(n+1), A301623(n+1)]`
-/

namespace A142319.P5317788670250124967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142319.P5317788670250124967

namespace A142319

/-- `∩[A132240(n+1), A301623(n+1)]` -/
def P5317788670250124967.Spec : Prop :=
  ∀ n, (P5317788670250124967.a n : ℤ) = A142319 (n + 1)

end A142319

/-! ## A142319.P17286580380892907288

`∩[A301623(n+1), A327753(n+1)]`
-/

namespace A142319.P17286580380892907288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142319.P17286580380892907288

namespace A142319

/-- `∩[A301623(n+1), A327753(n+1)]` -/
def P17286580380892907288.Spec : Prop :=
  ∀ n, (P17286580380892907288.a n : ℤ) = A142319 (n + 1)

end A142319

/-! ## A142319.P16359594962857417825

`∩[A030433(n+1), A301628(n+1)-2]`
-/

namespace A142319.P16359594962857417825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142319.P16359594962857417825

namespace A142319

/-- `∩[A030433(n+1), A301628(n+1)-2]` -/
def P16359594962857417825.Spec : Prop :=
  ∀ n, (P16359594962857417825.a n : ℤ) = A142319 (n + 1)

end A142319

/-! ## A142319.P11947601131892849305

`∩[A132240(n+1), A301628(n+1)-2]`
-/

namespace A142319.P11947601131892849305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142319.P11947601131892849305

namespace A142319

/-- `∩[A132240(n+1), A301628(n+1)-2]` -/
def P11947601131892849305.Spec : Prop :=
  ∀ n, (P11947601131892849305.a n : ℤ) = A142319 (n + 1)

end A142319

/-! ## A142319.P2209809113009815789

`∩[A045457(n+2), A301628(n+2)-2]`
-/

namespace A142319.P2209809113009815789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 2) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142319.P2209809113009815789

namespace A142319

/-- `∩[A045457(n+2), A301628(n+2)-2]` -/
def P2209809113009815789.Spec : Prop :=
  ∀ n, (P2209809113009815789.a n : ℤ) = A142319 (n + 1)

end A142319

/-! ## A142319.P7139430145498926997

`∩[A079131(n+1), A132236(n+1)]`
-/

namespace A142319.P7139430145498926997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142319.P7139430145498926997

namespace A142319

/-- `∩[A079131(n+1), A132236(n+1)]` -/
def P7139430145498926997.Spec : Prop :=
  ∀ n, (P7139430145498926997.a n : ℤ) = A142319 (n + 1)

end A142319

/-! ## A142319.P17466212148141385130

`∩[A030433(n+1), A242215(n)]`
-/

namespace A142319.P17466212148141385130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142319.P17466212148141385130

namespace A142319

/-- `∩[A030433(n+1), A242215(n)]` -/
def P17466212148141385130.Spec : Prop :=
  ∀ n, (P17466212148141385130.a n : ℤ) = A142319 (n + 1)

end A142319

/-! ## A142319.P8384234331251517923

`∩[A132236(n+1), A242215(n)]`
-/

namespace A142319.P8384234331251517923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142319.P8384234331251517923

namespace A142319

/-- `∩[A132236(n+1), A242215(n)]` -/
def P8384234331251517923.Spec : Prop :=
  ∀ n, (P8384234331251517923.a n : ℤ) = A142319 (n + 1)

end A142319

/-! ## A142319.P4617121677676852306

`∩[A132240(n+1), A242215(n)]`
-/

namespace A142319.P4617121677676852306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142319.P4617121677676852306

namespace A142319

/-- `∩[A132240(n+1), A242215(n)]` -/
def P4617121677676852306.Spec : Prop :=
  ∀ n, (P4617121677676852306.a n : ℤ) = A142319 (n + 1)

end A142319

/-!
# A142320: Primes congruent to 16 mod 45.

The programs for A142320, the canonical program `A142320.P9111520421625643267` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142320 has offset 1).

The definition of A142320 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3282 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142320.P9111520421625643267

`p?[45*n+16]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142320

/-- `p?[45*n+16]` -/
def P9111520421625643267.Spec : Prop :=
  ∀ n, (P9111520421625643267.a n : ℤ) = A142320 (n + 1)

theorem P9111520421625643267.correct : P9111520421625643267.Spec := by
  intro n
  simp only [A142320, Nat.add_sub_cancel]

end A142320

/-! ## A142320.P8665180124357169199

`∩[A030430(n+1), A061241(n+1)]`
-/

namespace A142320.P8665180124357169199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142320.P8665180124357169199

namespace A142320

/-- `∩[A030430(n+1), A061241(n+1)]` -/
def P8665180124357169199.Spec : Prop :=
  ∀ n, (P8665180124357169199.a n : ℤ) = A142320 (n + 1)

end A142320

/-! ## A142320.P13621000818822785029

`∩[A061241(n+1), A132230(n+1)]`
-/

namespace A142320.P13621000818822785029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142320.P13621000818822785029

namespace A142320

/-- `∩[A061241(n+1), A132230(n+1)]` -/
def P13621000818822785029.Spec : Prop :=
  ∀ n, (P13621000818822785029.a n : ℤ) = A142320 (n + 1)

end A142320

/-! ## A142320.P9561122343335461126

`∩[A061241(n+1), A179446(n+1)]`
-/

namespace A142320.P9561122343335461126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142320.P9561122343335461126

namespace A142320

/-- `∩[A061241(n+1), A179446(n+1)]` -/
def P9561122343335461126.Spec : Prop :=
  ∀ n, (P9561122343335461126.a n : ℤ) = A142320 (n + 1)

end A142320

/-! ## A142320.P3050550949417145688

`∩[A045453(n+1), A061241(n+1)]`
-/

namespace A142320.P3050550949417145688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142320.P3050550949417145688

namespace A142320

/-- `∩[A045453(n+1), A061241(n+1)]` -/
def P3050550949417145688.Spec : Prop :=
  ∀ n, (P3050550949417145688.a n : ℤ) = A142320 (n + 1)

end A142320

/-! ## A142320.P17818376567898365645

`∩[A061241(n+1), A132240(n+1)]`
-/

namespace A142320.P17818376567898365645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142320.P17818376567898365645

namespace A142320

/-- `∩[A061241(n+1), A132240(n+1)]` -/
def P17818376567898365645.Spec : Prop :=
  ∀ n, (P17818376567898365645.a n : ℤ) = A142320 (n + 1)

end A142320

/-! ## A142320.P4832823546027115284

`∩[A061241(n+1), A090756(n+1)]`
-/

namespace A142320.P4832823546027115284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142320.P4832823546027115284

namespace A142320

/-- `∩[A061241(n+1), A090756(n+1)]` -/
def P4832823546027115284.Spec : Prop :=
  ∀ n, (P4832823546027115284.a n : ℤ) = A142320 (n + 1)

end A142320

/-! ## A142320.P10813508230878169150

`∩[A061241(n+1), A327752(n+1)]`
-/

namespace A142320.P10813508230878169150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142320.P10813508230878169150

namespace A142320

/-- `∩[A061241(n+1), A327752(n+1)]` -/
def P10813508230878169150.Spec : Prop :=
  ∀ n, (P10813508230878169150.a n : ℤ) = A142320 (n + 1)

end A142320

/-! ## A142320.P3552052280765606397

`∩[A129807(n+1), A132230(n+1)]`
-/

namespace A142320.P3552052280765606397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142320.P3552052280765606397

namespace A142320

/-- `∩[A129807(n+1), A132230(n+1)]` -/
def P3552052280765606397.Spec : Prop :=
  ∀ n, (P3552052280765606397.a n : ℤ) = A142320 (n + 1)

end A142320

/-! ## A142320.P15013103847428136666

`∩[A004615(n+1), A061241(n+1)]`
-/

namespace A142320.P15013103847428136666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142320.P15013103847428136666

namespace A142320

/-- `∩[A004615(n+1), A061241(n+1)]` -/
def P15013103847428136666.Spec : Prop :=
  ∀ n, (P15013103847428136666.a n : ℤ) = A142320 (n + 1)

end A142320

/-! ## A142320.P2008076865659496996

`∩[A061241(n+1), A128470(n)]`
-/

namespace A142320.P2008076865659496996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142320.P2008076865659496996

namespace A142320

/-- `∩[A061241(n+1), A128470(n)]` -/
def P2008076865659496996.Spec : Prop :=
  ∀ n, (P2008076865659496996.a n : ℤ) = A142320 (n + 1)

end A142320

/-! ## A142320.P16513736538456488881

`∩[A129807(n+1), A128470(n)]`
-/

namespace A142320.P16513736538456488881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142320.P16513736538456488881

namespace A142320

/-- `∩[A129807(n+1), A128470(n)]` -/
def P16513736538456488881.Spec : Prop :=
  ∀ n, (P16513736538456488881.a n : ℤ) = A142320 (n + 1)

end A142320

/-! ## A142320.P14239871431304310814

`∩[A030430(n+1), A301628(n+1)]`
-/

namespace A142320.P14239871431304310814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142320.P14239871431304310814

namespace A142320

/-- `∩[A030430(n+1), A301628(n+1)]` -/
def P14239871431304310814.Spec : Prop :=
  ∀ n, (P14239871431304310814.a n : ℤ) = A142320 (n + 1)

end A142320

/-! ## A142320.P10660048746228059640

`∩[A045453(n+1), A301628(n+1)]`
-/

namespace A142320.P10660048746228059640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142320.P10660048746228059640

namespace A142320

/-- `∩[A045453(n+1), A301628(n+1)]` -/
def P10660048746228059640.Spec : Prop :=
  ∀ n, (P10660048746228059640.a n : ℤ) = A142320 (n + 1)

end A142320

/-! ## A142320.P10122995568893001207

`∩[A090756(n+1), A301628(n+1)]`
-/

namespace A142320.P10122995568893001207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142320.P10122995568893001207

namespace A142320

/-- `∩[A090756(n+1), A301628(n+1)]` -/
def P10122995568893001207.Spec : Prop :=
  ∀ n, (P10122995568893001207.a n : ℤ) = A142320 (n + 1)

end A142320

/-! ## A142320.P9044772505162500450

`∩[A132230(n+1), A301628(n+1)]`
-/

namespace A142320.P9044772505162500450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142320.P9044772505162500450

namespace A142320

/-- `∩[A132230(n+1), A301628(n+1)]` -/
def P9044772505162500450.Spec : Prop :=
  ∀ n, (P9044772505162500450.a n : ℤ) = A142320 (n + 1)

end A142320

/-! ## A142320.P6924404898002515272

`∩[A132240(n+1), A301628(n+1)]`
-/

namespace A142320.P6924404898002515272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142320.P6924404898002515272

namespace A142320

/-- `∩[A132240(n+1), A301628(n+1)]` -/
def P6924404898002515272.Spec : Prop :=
  ∀ n, (P6924404898002515272.a n : ℤ) = A142320 (n + 1)

end A142320

/-! ## A142320.P2206815624246031989

`∩[A179446(n+1), A301628(n+1)]`
-/

namespace A142320.P2206815624246031989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142320.P2206815624246031989

namespace A142320

/-- `∩[A179446(n+1), A301628(n+1)]` -/
def P2206815624246031989.Spec : Prop :=
  ∀ n, (P2206815624246031989.a n : ℤ) = A142320 (n + 1)

end A142320

/-! ## A142320.P4798159952891055955

`∩[A030430(n+1), A301623(n+1)+2]`
-/

namespace A142320.P4798159952891055955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301623 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142320.P4798159952891055955

namespace A142320

/-- `∩[A030430(n+1), A301623(n+1)+2]` -/
def P4798159952891055955.Spec : Prop :=
  ∀ n, (P4798159952891055955.a n : ℤ) = A142320 (n + 1)

end A142320

/-! ## A142320.P4456852173562544943

`∩[A045453(n+1), A301623(n+1)+2]`
-/

namespace A142320.P4456852173562544943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301623 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142320.P4456852173562544943

namespace A142320

/-- `∩[A045453(n+1), A301623(n+1)+2]` -/
def P4456852173562544943.Spec : Prop :=
  ∀ n, (P4456852173562544943.a n : ℤ) = A142320 (n + 1)

end A142320

/-!
# A142321: Primes congruent to 17 mod 45.

The programs for A142321, the canonical program `A142321.P10996513615225347293` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142321 has offset 1).

The definition of A142321 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3272 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142321.P10996513615225347293

`p?[45*n+17]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142321

/-- `p?[45*n+17]` -/
def P10996513615225347293.Spec : Prop :=
  ∀ n, (P10996513615225347293.a n : ℤ) = A142321 (n + 1)

theorem P10996513615225347293.correct : P10996513615225347293.Spec := by
  intro n
  simp only [A142321, Nat.add_sub_cancel]

end A142321

/-! ## A142321.P12883979785793567239

`∩[A030432(n+1), A061242(n+1)]`
-/

namespace A142321.P12883979785793567239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142321.P12883979785793567239

namespace A142321

/-- `∩[A030432(n+1), A061242(n+1)]` -/
def P12883979785793567239.Spec : Prop :=
  ∀ n, (P12883979785793567239.a n : ℤ) = A142321 (n + 1)

end A142321

/-! ## A142321.P4262605234127054839

`∩[A039949(n+1), A061242(n+1)]`
-/

namespace A142321.P4262605234127054839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142321.P4262605234127054839

namespace A142321

/-- `∩[A039949(n+1), A061242(n+1)]` -/
def P4262605234127054839.Spec : Prop :=
  ∀ n, (P4262605234127054839.a n : ℤ) = A142321 (n + 1)

end A142321

/-! ## A142321.P7426459475265498481

`∩[A061242(n+1), A141860(n+1)]`
-/

namespace A142321.P7426459475265498481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142321.P7426459475265498481

namespace A142321

/-- `∩[A061242(n+1), A141860(n+1)]` -/
def P7426459475265498481.Spec : Prop :=
  ∀ n, (P7426459475265498481.a n : ℤ) = A142321 (n + 1)

end A142321

/-! ## A142321.P4965187685531110749

`∩[A061242(n+1), A132239(n+1)]`
-/

namespace A142321.P4965187685531110749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142321.P4965187685531110749

namespace A142321

/-- `∩[A061242(n+1), A132239(n+1)]` -/
def P4965187685531110749.Spec : Prop :=
  ∀ n, (P4965187685531110749.a n : ℤ) = A142321 (n + 1)

end A142321

/-! ## A142321.P15018185016087807528

`∩[A061242(n+1), A140533(n+1)]`
-/

namespace A142321.P15018185016087807528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142321.P15018185016087807528

namespace A142321

/-- `∩[A061242(n+1), A140533(n+1)]` -/
def P15018185016087807528.Spec : Prop :=
  ∀ n, (P15018185016087807528.a n : ℤ) = A142321 (n + 1)

end A142321

/-! ## A142321.P3676666892983683236

`∩[A045357(n+1), A061242(n+1)]`
-/

namespace A142321.P3676666892983683236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142321.P3676666892983683236

namespace A142321

/-- `∩[A045357(n+1), A061242(n+1)]` -/
def P3676666892983683236.Spec : Prop :=
  ∀ n, (P3676666892983683236.a n : ℤ) = A142321 (n + 1)

end A142321

/-! ## A142321.P1846431054805448344

`∩[A045380(n+1), A061242(n+1)]`
-/

namespace A142321.P1846431054805448344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142321.P1846431054805448344

namespace A142321

/-- `∩[A045380(n+1), A061242(n+1)]` -/
def P1846431054805448344.Spec : Prop :=
  ∀ n, (P1846431054805448344.a n : ℤ) = A142321 (n + 1)

end A142321

/-! ## A142321.P1986320916595954565

`∩[A039949(n+1), A129805(n+1)]`
-/

namespace A142321.P1986320916595954565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142321.P1986320916595954565

namespace A142321

/-- `∩[A039949(n+1), A129805(n+1)]` -/
def P1986320916595954565.Spec : Prop :=
  ∀ n, (P1986320916595954565.a n : ℤ) = A142321 (n + 1)

end A142321

/-! ## A142321.P13214343297735784269

`∩[A129805(n+1), A141860(n+1)]`
-/

namespace A142321.P13214343297735784269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142321.P13214343297735784269

namespace A142321

/-- `∩[A129805(n+1), A141860(n+1)]` -/
def P13214343297735784269.Spec : Prop :=
  ∀ n, (P13214343297735784269.a n : ℤ) = A142321 (n + 1)

end A142321

/-! ## A142321.P1954951234066653680

`∩[A061242(n+1), A128468(n)]`
-/

namespace A142321.P1954951234066653680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128468 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142321.P1954951234066653680

namespace A142321

/-- `∩[A061242(n+1), A128468(n)]` -/
def P1954951234066653680.Spec : Prop :=
  ∀ n, (P1954951234066653680.a n : ℤ) = A142321 (n + 1)

end A142321

/-! ## A142321.P16774412612552623561

`∩[A129805(n+1), A128468(n)]`
-/

namespace A142321.P16774412612552623561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128468 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142321.P16774412612552623561

namespace A142321

/-- `∩[A129805(n+1), A128468(n)]` -/
def P16774412612552623561.Spec : Prop :=
  ∀ n, (P16774412612552623561.a n : ℤ) = A142321 (n + 1)

end A142321

/-! ## A142321.P7180613172507886569

`∩[A129805(n+1), A156376(n)-2]`
-/

namespace A142321.P7180613172507886569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156376 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142321.P7180613172507886569

namespace A142321

/-- `∩[A129805(n+1), A156376(n)-2]` -/
def P7180613172507886569.Spec : Prop :=
  ∀ n, (P7180613172507886569.a n : ℤ) = A142321 (n + 1)

end A142321

/-! ## A142321.P16075583512494341028

`∩[A061242(n+1), A090652(n+1)]`
-/

namespace A142321.P16075583512494341028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142321.P16075583512494341028

namespace A142321

/-- `∩[A061242(n+1), A090652(n+1)]` -/
def P16075583512494341028.Spec : Prop :=
  ∀ n, (P16075583512494341028.a n : ℤ) = A142321 (n + 1)

end A142321

/-! ## A142321.P14520578823832780080

`∩[A030432(n+1), A295869(n+1)]`
-/

namespace A142321.P14520578823832780080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142321.P14520578823832780080

namespace A142321

/-- `∩[A030432(n+1), A295869(n+1)]` -/
def P14520578823832780080.Spec : Prop :=
  ∀ n, (P14520578823832780080.a n : ℤ) = A142321 (n + 1)

end A142321

/-! ## A142321.P14436113692122155774

`∩[A039949(n+1), A295869(n+1)]`
-/

namespace A142321.P14436113692122155774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142321.P14436113692122155774

namespace A142321

/-- `∩[A039949(n+1), A295869(n+1)]` -/
def P14436113692122155774.Spec : Prop :=
  ∀ n, (P14436113692122155774.a n : ℤ) = A142321 (n + 1)

end A142321

/-! ## A142321.P13941804944015022890

`∩[A045357(n+1), A295869(n+1)]`
-/

namespace A142321.P13941804944015022890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142321.P13941804944015022890

namespace A142321

/-- `∩[A045357(n+1), A295869(n+1)]` -/
def P13941804944015022890.Spec : Prop :=
  ∀ n, (P13941804944015022890.a n : ℤ) = A142321 (n + 1)

end A142321

/-! ## A142321.P1218343358530462027

`∩[A045380(n+1), A295869(n+1)]`
-/

namespace A142321.P1218343358530462027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142321.P1218343358530462027

namespace A142321

/-- `∩[A045380(n+1), A295869(n+1)]` -/
def P1218343358530462027.Spec : Prop :=
  ∀ n, (P1218343358530462027.a n : ℤ) = A142321 (n + 1)

end A142321

/-! ## A142321.P16662152498873801713

`∩[A132239(n+1), A295869(n+1)]`
-/

namespace A142321.P16662152498873801713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142321.P16662152498873801713

namespace A142321

/-- `∩[A132239(n+1), A295869(n+1)]` -/
def P16662152498873801713.Spec : Prop :=
  ∀ n, (P16662152498873801713.a n : ℤ) = A142321 (n + 1)

end A142321

/-! ## A142321.P6902799078879329537

`∩[A140533(n+1), A295869(n+1)]`
-/

namespace A142321.P6902799078879329537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142321.P6902799078879329537

namespace A142321

/-- `∩[A140533(n+1), A295869(n+1)]` -/
def P6902799078879329537.Spec : Prop :=
  ∀ n, (P6902799078879329537.a n : ℤ) = A142321 (n + 1)

end A142321

/-!
# A142322: Primes congruent to 19 mod 45.

The programs for A142322, the canonical program `A142322.P3484727509360590983` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142322 has offset 1).

The definition of A142322 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3244 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142322.P10618013417682939847

`A132234(record[(n+1)/A132234(n+1)%9])`
-/

namespace A142322.P10618013417682939847
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.tmod (A132234 (n + 1)) 9 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132234 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A142322.P10618013417682939847

namespace A142322

/-- `A132234(record[(n+1)/A132234(n+1)%9])` -/
def P10618013417682939847.Spec : Prop :=
  ∀ n, P10618013417682939847.a n = A142322 (n + 1)

end A142322

/-! ## A142322.P3484727509360590983

`p?[45*n-26]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142322

/-- `p?[45*n-26]` -/
def P3484727509360590983.Spec : Prop :=
  ∀ n, P3484727509360590983.a n = A142322 (n + 1)

theorem P3484727509360590983.correct : P3484727509360590983.Spec := by
  intro n
  simp only [A142322, Nat.add_sub_cancel]

end A142322

/-! ## A142322.P5977308966127592715

`∩[A030433(n+1), A061237(n+1)]`
-/

namespace A142322.P5977308966127592715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142322.P5977308966127592715

namespace A142322

/-- `∩[A030433(n+1), A061237(n+1)]` -/
def P5977308966127592715.Spec : Prop :=
  ∀ n, (P5977308966127592715.a n : ℤ) = A142322 (n + 1)

end A142322

/-! ## A142322.P7979255188247522983

`∩[A061237(n+1), A132234(n+1)]`
-/

namespace A142322.P7979255188247522983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142322.P7979255188247522983

namespace A142322

/-- `∩[A061237(n+1), A132234(n+1)]` -/
def P7979255188247522983.Spec : Prop :=
  ∀ n, (P7979255188247522983.a n : ℤ) = A142322 (n + 1)

end A142322

/-! ## A142322.P16781226229508290639

`∩[A061237(n+1), A132239(n+1)]`
-/

namespace A142322.P16781226229508290639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142322.P16781226229508290639

namespace A142322

/-- `∩[A061237(n+1), A132239(n+1)]` -/
def P16781226229508290639.Spec : Prop :=
  ∀ n, (P16781226229508290639.a n : ℤ) = A142322 (n + 1)

end A142322

/-! ## A142322.P7918550849490102365

`∩[A045457(n+1), A061237(n+1)]`
-/

namespace A142322.P7918550849490102365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142322.P7918550849490102365

namespace A142322

/-- `∩[A045457(n+1), A061237(n+1)]` -/
def P7918550849490102365.Spec : Prop :=
  ∀ n, (P7918550849490102365.a n : ℤ) = A142322 (n + 1)

end A142322

/-! ## A142322.P15474376262032183646

`∩[A061237(n+1), A140506(n+1)]`
-/

namespace A142322.P15474376262032183646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142322.P15474376262032183646

namespace A142322

/-- `∩[A061237(n+1), A140506(n+1)]` -/
def P15474376262032183646.Spec : Prop :=
  ∀ n, (P15474376262032183646.a n : ℤ) = A142322 (n + 1)

end A142322

/-! ## A142322.P6245706437397758875

`∩[A061237(n+1), A327753(n+1)]`
-/

namespace A142322.P6245706437397758875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142322.P6245706437397758875

namespace A142322

/-- `∩[A061237(n+1), A327753(n+1)]` -/
def P6245706437397758875.Spec : Prop :=
  ∀ n, (P6245706437397758875.a n : ℤ) = A142322 (n + 1)

end A142322

/-! ## A142322.P12603403506341298102

`∩[A004618(n+1), A061237(n+1)]`
-/

namespace A142322.P12603403506341298102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142322.P12603403506341298102

namespace A142322

/-- `∩[A004618(n+1), A061237(n+1)]` -/
def P12603403506341298102.Spec : Prop :=
  ∀ n, (P12603403506341298102.a n : ℤ) = A142322 (n + 1)

end A142322

/-! ## A142322.P17446847659028053457

`∩[A129805(n+1), A132234(n+1)]`
-/

namespace A142322.P17446847659028053457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142322.P17446847659028053457

namespace A142322

/-- `∩[A129805(n+1), A132234(n+1)]` -/
def P17446847659028053457.Spec : Prop :=
  ∀ n, (P17446847659028053457.a n : ℤ) = A142322 (n + 1)

end A142322

/-! ## A142322.P11607588908344054196

`∩[A061237(n+1), A156376(n)]`
-/

namespace A142322.P11607588908344054196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156376 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142322.P11607588908344054196

namespace A142322

/-- `∩[A061237(n+1), A156376(n)]` -/
def P11607588908344054196.Spec : Prop :=
  ∀ n, (P11607588908344054196.a n : ℤ) = A142322 (n + 1)

end A142322

/-! ## A142322.P4794483738268677586

`∩[A129805(n+1), A156376(n)]`
-/

namespace A142322.P4794483738268677586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156376 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142322.P4794483738268677586

namespace A142322

/-- `∩[A129805(n+1), A156376(n)]` -/
def P4794483738268677586.Spec : Prop :=
  ∀ n, (P4794483738268677586.a n : ℤ) = A142322 (n + 1)

end A142322

/-! ## A142322.P7447452007772255400

`∩[A129805(n+1), A128468(n)+2]`
-/

namespace A142322.P7447452007772255400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128468 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142322.P7447452007772255400

namespace A142322

/-- `∩[A129805(n+1), A128468(n)+2]` -/
def P7447452007772255400.Spec : Prop :=
  ∀ n, (P7447452007772255400.a n : ℤ) = A142322 (n + 1)

end A142322

/-! ## A142322.P17795004529823999190

`∩[A030433(n+1), A301617(n+1)]`
-/

namespace A142322.P17795004529823999190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142322.P17795004529823999190

namespace A142322

/-- `∩[A030433(n+1), A301617(n+1)]` -/
def P17795004529823999190.Spec : Prop :=
  ∀ n, (P17795004529823999190.a n : ℤ) = A142322 (n + 1)

end A142322

/-! ## A142322.P10263282974768767354

`∩[A045457(n+1), A301617(n+1)]`
-/

namespace A142322.P10263282974768767354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142322.P10263282974768767354

namespace A142322

/-- `∩[A045457(n+1), A301617(n+1)]` -/
def P10263282974768767354.Spec : Prop :=
  ∀ n, (P10263282974768767354.a n : ℤ) = A142322 (n + 1)

end A142322

/-! ## A142322.P3816448484289584903

`∩[A132234(n+1), A301617(n+1)]`
-/

namespace A142322.P3816448484289584903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142322.P3816448484289584903

namespace A142322

/-- `∩[A132234(n+1), A301617(n+1)]` -/
def P3816448484289584903.Spec : Prop :=
  ∀ n, (P3816448484289584903.a n : ℤ) = A142322 (n + 1)

end A142322

/-! ## A142322.P14608081087655810962

`∩[A132239(n+1), A301617(n+1)]`
-/

namespace A142322.P14608081087655810962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142322.P14608081087655810962

namespace A142322

/-- `∩[A132239(n+1), A301617(n+1)]` -/
def P14608081087655810962.Spec : Prop :=
  ∀ n, (P14608081087655810962.a n : ℤ) = A142322 (n + 1)

end A142322

/-! ## A142322.P4388194751444040507

`∩[A140506(n+1), A301617(n+1)]`
-/

namespace A142322.P4388194751444040507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142322.P4388194751444040507

namespace A142322

/-- `∩[A140506(n+1), A301617(n+1)]` -/
def P4388194751444040507.Spec : Prop :=
  ∀ n, (P4388194751444040507.a n : ℤ) = A142322 (n + 1)

end A142322

/-! ## A142322.P9810626584755584732

`∩[A030433(n+1), A295869(n+1)+2]`
-/

namespace A142322.P9810626584755584732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142322.P9810626584755584732

namespace A142322

/-- `∩[A030433(n+1), A295869(n+1)+2]` -/
def P9810626584755584732.Spec : Prop :=
  ∀ n, (P9810626584755584732.a n : ℤ) = A142322 (n + 1)

end A142322

/-!
# A142323: Primes congruent to 22 mod 45.

The programs for A142323, the canonical program `A142323.P6599792148377430745` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142323 has offset 1).

The definition of A142323 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3277 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142323.P6599792148377430745

`p?[45*n+22]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142323

/-- `p?[45*n+22]` -/
def P6599792148377430745.Spec : Prop :=
  ∀ n, (P6599792148377430745.a n : ℤ) = A142323 (n + 1)

theorem P6599792148377430745.correct : P6599792148377430745.Spec := by
  intro n
  simp only [A142323, Nat.add_sub_cancel]

end A142323

/-! ## A142323.P3182452135044231339

`xor(1, p?[18*A016897(n)-5]-1)`
-/

namespace A142323.P3182452135044231339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 * A016897 n - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1)

end

end A142323.P3182452135044231339

namespace A142323

/-- `xor(1, p?[18*A016897(n)-5]-1)` -/
def P3182452135044231339.Spec : Prop :=
  ∀ n, P3182452135044231339.a n = A142323 (n + 1)

end A142323

/-! ## A142323.P14895127982530787566

`∩[A030432(n+1), A061239(n+1)]`
-/

namespace A142323.P14895127982530787566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142323.P14895127982530787566

namespace A142323

/-- `∩[A030432(n+1), A061239(n+1)]` -/
def P14895127982530787566.Spec : Prop :=
  ∀ n, (P14895127982530787566.a n : ℤ) = A142323 (n + 1)

end A142323

/-! ## A142323.P1404016026042533217

`∩[A061239(n+1), A132231(n+1)]`
-/

namespace A142323.P1404016026042533217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142323.P1404016026042533217

namespace A142323

/-- `∩[A061239(n+1), A132231(n+1)]` -/
def P1404016026042533217.Spec : Prop :=
  ∀ n, (P1404016026042533217.a n : ℤ) = A142323 (n + 1)

end A142323

/-! ## A142323.P7770425239275531992

`∩[A061239(n+1), A132237(n+1)]`
-/

namespace A142323.P7770425239275531992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142323.P7770425239275531992

namespace A142323

/-- `∩[A061239(n+1), A132237(n+1)]` -/
def P7770425239275531992.Spec : Prop :=
  ∀ n, (P7770425239275531992.a n : ℤ) = A142323 (n + 1)

end A142323

/-! ## A142323.P9354531463613159004

`∩[A045357(n+1), A061239(n+1)]`
-/

namespace A142323.P9354531463613159004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142323.P9354531463613159004

namespace A142323

/-- `∩[A045357(n+1), A061239(n+1)]` -/
def P9354531463613159004.Spec : Prop :=
  ∀ n, (P9354531463613159004.a n : ℤ) = A142323 (n + 1)

end A142323

/-! ## A142323.P9054732530267453716

`∩[A045380(n+1), A061239(n+1)]`
-/

namespace A142323.P9054732530267453716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142323.P9054732530267453716

namespace A142323

/-- `∩[A045380(n+1), A061239(n+1)]` -/
def P9054732530267453716.Spec : Prop :=
  ∀ n, (P9054732530267453716.a n : ℤ) = A142323 (n + 1)

end A142323

/-! ## A142323.P17676548821047047436

`∩[A129806(n+1), A132231(n+1)]`
-/

namespace A142323.P17676548821047047436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142323.P17676548821047047436

namespace A142323

/-- `∩[A129806(n+1), A132231(n+1)]` -/
def P17676548821047047436.Spec : Prop :=
  ∀ n, (P17676548821047047436.a n : ℤ) = A142323 (n + 1)

end A142323

/-! ## A142323.P16710436660133772123

`∩[A061239(n+1), A128471(n)]`
-/

namespace A142323.P16710436660133772123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128471 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142323.P16710436660133772123

namespace A142323

/-- `∩[A061239(n+1), A128471(n)]` -/
def P16710436660133772123.Spec : Prop :=
  ∀ n, (P16710436660133772123.a n : ℤ) = A142323 (n + 1)

end A142323

/-! ## A142323.P3426047998578271025

`∩[A129806(n+1), A128471(n)]`
-/

namespace A142323.P3426047998578271025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128471 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142323.P3426047998578271025

namespace A142323

/-- `∩[A129806(n+1), A128471(n)]` -/
def P3426047998578271025.Spec : Prop :=
  ∀ n, (P3426047998578271025.a n : ℤ) = A142323 (n + 1)

end A142323

/-! ## A142323.P2372340613244802869

`∩[A061239(n+1), A090652(n+1)]`
-/

namespace A142323.P2372340613244802869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142323.P2372340613244802869

namespace A142323

/-- `∩[A061239(n+1), A090652(n+1)]` -/
def P2372340613244802869.Spec : Prop :=
  ∀ n, (P2372340613244802869.a n : ℤ) = A142323 (n + 1)

end A142323

/-! ## A142323.P3291648498244571067

`∩[A030432(n+1), A301622(n+1)]`
-/

namespace A142323.P3291648498244571067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142323.P3291648498244571067

namespace A142323

/-- `∩[A030432(n+1), A301622(n+1)]` -/
def P3291648498244571067.Spec : Prop :=
  ∀ n, (P3291648498244571067.a n : ℤ) = A142323 (n + 1)

end A142323

/-! ## A142323.P2580890238464414588

`∩[A045357(n+1), A301622(n+1)]`
-/

namespace A142323.P2580890238464414588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142323.P2580890238464414588

namespace A142323

/-- `∩[A045357(n+1), A301622(n+1)]` -/
def P2580890238464414588.Spec : Prop :=
  ∀ n, (P2580890238464414588.a n : ℤ) = A142323 (n + 1)

end A142323

/-! ## A142323.P11280011280938001913

`∩[A045380(n+1), A301622(n+1)]`
-/

namespace A142323.P11280011280938001913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142323.P11280011280938001913

namespace A142323

/-- `∩[A045380(n+1), A301622(n+1)]` -/
def P11280011280938001913.Spec : Prop :=
  ∀ n, (P11280011280938001913.a n : ℤ) = A142323 (n + 1)

end A142323

/-! ## A142323.P13210060758120870199

`∩[A132231(n+1), A301622(n+1)]`
-/

namespace A142323.P13210060758120870199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142323.P13210060758120870199

namespace A142323

/-- `∩[A132231(n+1), A301622(n+1)]` -/
def P13210060758120870199.Spec : Prop :=
  ∀ n, (P13210060758120870199.a n : ℤ) = A142323 (n + 1)

end A142323

/-! ## A142323.P327971779453149661

`∩[A132237(n+1), A301622(n+1)]`
-/

namespace A142323.P327971779453149661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142323.P327971779453149661

namespace A142323

/-- `∩[A132237(n+1), A301622(n+1)]` -/
def P327971779453149661.Spec : Prop :=
  ∀ n, (P327971779453149661.a n : ℤ) = A142323 (n + 1)

end A142323

/-! ## A142323.P6244758691564415471

`∩[A079132(n+1), A128471(n)]`
-/

namespace A142323.P6244758691564415471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128471 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142323.P6244758691564415471

namespace A142323

/-- `∩[A079132(n+1), A128471(n)]` -/
def P6244758691564415471.Spec : Prop :=
  ∀ n, (P6244758691564415471.a n : ℤ) = A142323 (n + 1)

end A142323

/-! ## A142323.P8694681020325308465

`∩[A079132(n+1), A132231(n+1)]`
-/

namespace A142323.P8694681020325308465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142323.P8694681020325308465

namespace A142323

/-- `∩[A079132(n+1), A132231(n+1)]` -/
def P8694681020325308465.Spec : Prop :=
  ∀ n, (P8694681020325308465.a n : ℤ) = A142323 (n + 1)

end A142323

/-! ## A142323.P9223817966454670911

`∩[A030432(n+1), A063305(n+2)]`
-/

namespace A142323.P9223817966454670911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063305 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142323.P9223817966454670911

namespace A142323

/-- `∩[A030432(n+1), A063305(n+2)]` -/
def P9223817966454670911.Spec : Prop :=
  ∀ n, (P9223817966454670911.a n : ℤ) = A142323 (n + 1)

end A142323

/-! ## A142323.P343744904199396118

`∩[A045357(n+1), A063305(n+2)]`
-/

namespace A142323.P343744904199396118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063305 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142323.P343744904199396118

namespace A142323

/-- `∩[A045357(n+1), A063305(n+2)]` -/
def P343744904199396118.Spec : Prop :=
  ∀ n, (P343744904199396118.a n : ℤ) = A142323 (n + 1)

end A142323

/-!
# A142324: Primes congruent to 23 mod 45.

The programs for A142324, the canonical program `A142324.P3883511816270207009` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142324 has offset 1).

The definition of A142324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3270 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142324.P3883511816270207009

`p?[45*n-22]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142324

/-- `p?[45*n-22]` -/
def P3883511816270207009.Spec : Prop :=
  ∀ n, P3883511816270207009.a n = A142324 (n + 1)

theorem P3883511816270207009.correct : P3883511816270207009.Spec := by
  intro n
  simp only [A142324, Nat.add_sub_cancel]

end A142324

/-! ## A142324.P15591704320652322571

`∩[A030431(n+1), A061240(n+1)]`
-/

namespace A142324.P15591704320652322571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142324.P15591704320652322571

namespace A142324

/-- `∩[A030431(n+1), A061240(n+1)]` -/
def P15591704320652322571.Spec : Prop :=
  ∀ n, (P15591704320652322571.a n : ℤ) = A142324 (n + 1)

end A142324

/-! ## A142324.P8416547397703051498

`∩[A061240(n+1), A132235(n+1)]`
-/

namespace A142324.P8416547397703051498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132235 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142324.P8416547397703051498

namespace A142324

/-- `∩[A061240(n+1), A132235(n+1)]` -/
def P8416547397703051498.Spec : Prop :=
  ∀ n, (P8416547397703051498.a n : ℤ) = A142324 (n + 1)

end A142324

/-! ## A142324.P7192633192167671761

`A000027(p?[ceil(45*(n+1)/2)])`
-/

namespace A142324.P7192633192167671761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈45 * ((n + 1 : ℚ) / 2)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142324.P7192633192167671761

namespace A142324

/-- `A000027(p?[ceil(45*(n+1)/2)])` -/
def P7192633192167671761.Spec : Prop :=
  ∀ n, P7192633192167671761.a n = A142324 (n + 1)

end A142324

/-! ## A142324.P17642858677556088242

`∩[A061240(n+1), A132237(n+1)]`
-/

namespace A142324.P17642858677556088242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142324.P17642858677556088242

namespace A142324

/-- `∩[A061240(n+1), A132237(n+1)]` -/
def P17642858677556088242.Spec : Prop :=
  ∀ n, (P17642858677556088242.a n : ℤ) = A142324 (n + 1)

end A142324

/-! ## A142324.P4981344098007140242

`∩[A129806(n+1), A132235(n+1)]`
-/

namespace A142324.P4981344098007140242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132235 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142324.P4981344098007140242

namespace A142324

/-- `∩[A129806(n+1), A132235(n+1)]` -/
def P4981344098007140242.Spec : Prop :=
  ∀ n, (P4981344098007140242.a n : ℤ) = A142324 (n + 1)

end A142324

/-! ## A142324.P13288610635683122578

`∩[A061240(n+1), A128473(n+1)]`
-/

namespace A142324.P13288610635683122578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142324.P13288610635683122578

namespace A142324

/-- `∩[A061240(n+1), A128473(n+1)]` -/
def P13288610635683122578.Spec : Prop :=
  ∀ n, (P13288610635683122578.a n : ℤ) = A142324 (n + 1)

end A142324

/-! ## A142324.P5010505875744960639

`∩[A128473(n+1), A129806(n+1)]`
-/

namespace A142324.P5010505875744960639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142324.P5010505875744960639

namespace A142324

/-- `∩[A128473(n+1), A129806(n+1)]` -/
def P5010505875744960639.Spec : Prop :=
  ∀ n, (P5010505875744960639.a n : ℤ) = A142324 (n + 1)

end A142324

/-! ## A142324.P11833616980248420981

`∩[A079131(n+1), A128473(n+1)]`
-/

namespace A142324.P11833616980248420981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142324.P11833616980248420981

namespace A142324

/-- `∩[A079131(n+1), A128473(n+1)]` -/
def P11833616980248420981.Spec : Prop :=
  ∀ n, (P11833616980248420981.a n : ℤ) = A142324 (n + 1)

end A142324

/-! ## A142324.P8309812593621976827

`∩[A079131(n+1), A132235(n+1)]`
-/

namespace A142324.P8309812593621976827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132235 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142324.P8309812593621976827

namespace A142324

/-- `∩[A079131(n+1), A132235(n+1)]` -/
def P8309812593621976827.Spec : Prop :=
  ∀ n, (P8309812593621976827.a n : ℤ) = A142324 (n + 1)

end A142324

/-! ## A142324.P4040358294460536510

`∩[A030431(n+1), A301623(n+1)]`
-/

namespace A142324.P4040358294460536510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142324.P4040358294460536510

namespace A142324

/-- `∩[A030431(n+1), A301623(n+1)]` -/
def P4040358294460536510.Spec : Prop :=
  ∀ n, (P4040358294460536510.a n : ℤ) = A142324 (n + 1)

end A142324

/-! ## A142324.P5303681376808666206

`∩[A045414(n+1), A301623(n+1)]`
-/

namespace A142324.P5303681376808666206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142324.P5303681376808666206

namespace A142324

/-- `∩[A045414(n+1), A301623(n+1)]` -/
def P5303681376808666206.Spec : Prop :=
  ∀ n, (P5303681376808666206.a n : ℤ) = A142324 (n + 1)

end A142324

/-! ## A142324.P9226583335720493172

`∩[A132235(n+1), A301623(n+1)]`
-/

namespace A142324.P9226583335720493172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142324.P9226583335720493172

namespace A142324

/-- `∩[A132235(n+1), A301623(n+1)]` -/
def P9226583335720493172.Spec : Prop :=
  ∀ n, (P9226583335720493172.a n : ℤ) = A142324 (n + 1)

end A142324

/-! ## A142324.P15459112091774743849

`∩[A132237(n+1), A301623(n+1)]`
-/

namespace A142324.P15459112091774743849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142324.P15459112091774743849

namespace A142324

/-- `∩[A132237(n+1), A301623(n+1)]` -/
def P15459112091774743849.Spec : Prop :=
  ∀ n, (P15459112091774743849.a n : ℤ) = A142324 (n + 1)

end A142324

/-! ## A142324.P14820143115218591061

`∩[A161709(2*n+1)+n, A030431(n+2)]`
-/

namespace A142324.P14820143115218591061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 (2 * n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142324.P14820143115218591061

namespace A142324

/-- `∩[A161709(2*n+1)+n, A030431(n+2)]` -/
def P14820143115218591061.Spec : Prop :=
  ∀ n, (P14820143115218591061.a n : ℤ) = A142324 (n + 1)

end A142324

/-! ## A142324.P3835649932672294317

`∩[A161709(2*n+1)+n, A045414(n+2)]`
-/

namespace A142324.P3835649932672294317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 (2 * n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142324.P3835649932672294317

namespace A142324

/-- `∩[A161709(2*n+1)+n, A045414(n+2)]` -/
def P3835649932672294317.Spec : Prop :=
  ∀ n, (P3835649932672294317.a n : ℤ) = A142324 (n + 1)

end A142324

/-! ## A142324.P17098960477358028932

`∩[A004617(n+1), A061240(n+1)]`
-/

namespace A142324.P17098960477358028932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142324.P17098960477358028932

namespace A142324

/-- `∩[A004617(n+1), A061240(n+1)]` -/
def P17098960477358028932.Spec : Prop :=
  ∀ n, (P17098960477358028932.a n : ℤ) = A142324 (n + 1)

end A142324

/-! ## A142324.P4915245808613335

`∩[A030431(n+1), A242215(n)]`
-/

namespace A142324.P4915245808613335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142324.P4915245808613335

namespace A142324

/-- `∩[A030431(n+1), A242215(n)]` -/
def P4915245808613335.Spec : Prop :=
  ∀ n, (P4915245808613335.a n : ℤ) = A142324 (n + 1)

end A142324

/-! ## A142324.P17090800157356074674

`∩[A132235(n+1), A242215(n)]`
-/

namespace A142324.P17090800157356074674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142324.P17090800157356074674

namespace A142324

/-- `∩[A132235(n+1), A242215(n)]` -/
def P17090800157356074674.Spec : Prop :=
  ∀ n, (P17090800157356074674.a n : ℤ) = A142324 (n + 1)

end A142324

/-! ## A142324.P7743440686638333567

`∩[A132237(n+1), A242215(n)]`
-/

namespace A142324.P7743440686638333567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142324.P7743440686638333567

namespace A142324

/-- `∩[A132237(n+1), A242215(n)]` -/
def P7743440686638333567.Spec : Prop :=
  ∀ n, (P7743440686638333567.a n : ℤ) = A142324 (n + 1)

end A142324

/-!
# A142325: Primes congruent to 26 mod 45.

The programs for A142325, the canonical program `A142325.P16190209765258327535` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142325 has offset 1).

The definition of A142325 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3280 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142325.P16190209765258327535

`p?[45*n+26]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142325

/-- `p?[45*n+26]` -/
def P16190209765258327535.Spec : Prop :=
  ∀ n, (P16190209765258327535.a n : ℤ) = A142325 (n + 1)

theorem P16190209765258327535.correct : P16190209765258327535.Spec := by
  intro n
  simp only [A142325, Nat.add_sub_cancel]

end A142325

/-! ## A142325.P7411658802853763859

`∩[A030430(n+1), A061242(n+1)]`
-/

namespace A142325.P7411658802853763859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142325.P7411658802853763859

namespace A142325

/-- `∩[A030430(n+1), A061242(n+1)]` -/
def P7411658802853763859.Spec : Prop :=
  ∀ n, (P7411658802853763859.a n : ℤ) = A142325 (n + 1)

end A142325

/-! ## A142325.P16510436907867030476

`∩[A061242(n+1), A132232(n+1)]`
-/

namespace A142325.P16510436907867030476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142325.P16510436907867030476

namespace A142325

/-- `∩[A061242(n+1), A132232(n+1)]` -/
def P16510436907867030476.Spec : Prop :=
  ∀ n, (P16510436907867030476.a n : ℤ) = A142325 (n + 1)

end A142325

/-! ## A142325.P15575043998973984887

`∩[A061242(n+1), A140506(n+1)]`
-/

namespace A142325.P15575043998973984887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142325.P15575043998973984887

namespace A142325

/-- `∩[A061242(n+1), A140506(n+1)]` -/
def P15575043998973984887.Spec : Prop :=
  ∀ n, (P15575043998973984887.a n : ℤ) = A142325 (n + 1)

end A142325

/-! ## A142325.P15679302021436398964

`∩[A045453(n+1), A061242(n+1)]`
-/

namespace A142325.P15679302021436398964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142325.P15679302021436398964

namespace A142325

/-- `∩[A045453(n+1), A061242(n+1)]` -/
def P15679302021436398964.Spec : Prop :=
  ∀ n, (P15679302021436398964.a n : ℤ) = A142325 (n + 1)

end A142325

/-! ## A142325.P3368911667796164733

`∩[A061242(n+1), A132238(n+1)]`
-/

namespace A142325.P3368911667796164733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142325.P3368911667796164733

namespace A142325

/-- `∩[A061242(n+1), A132238(n+1)]` -/
def P3368911667796164733.Spec : Prop :=
  ∀ n, (P3368911667796164733.a n : ℤ) = A142325 (n + 1)

end A142325

/-! ## A142325.P11005632779603339345

`∩[A061242(n+1), A090756(n+1)]`
-/

namespace A142325.P11005632779603339345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142325.P11005632779603339345

namespace A142325

/-- `∩[A061242(n+1), A090756(n+1)]` -/
def P11005632779603339345.Spec : Prop :=
  ∀ n, (P11005632779603339345.a n : ℤ) = A142325 (n + 1)

end A142325

/-! ## A142325.P2383256654258387592

`∩[A061242(n+1), A327752(n+1)]`
-/

namespace A142325.P2383256654258387592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142325.P2383256654258387592

namespace A142325

/-- `∩[A061242(n+1), A327752(n+1)]` -/
def P2383256654258387592.Spec : Prop :=
  ∀ n, (P2383256654258387592.a n : ℤ) = A142325 (n + 1)

end A142325

/-! ## A142325.P10656731415429680601

`∩[A129805(n+1), A132232(n+1)]`
-/

namespace A142325.P10656731415429680601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142325.P10656731415429680601

namespace A142325

/-- `∩[A129805(n+1), A132232(n+1)]` -/
def P10656731415429680601.Spec : Prop :=
  ∀ n, (P10656731415429680601.a n : ℤ) = A142325 (n + 1)

end A142325

/-! ## A142325.P6471819473508835449

`∩[A004615(n+1), A061242(n+1)]`
-/

namespace A142325.P6471819473508835449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142325.P6471819473508835449

namespace A142325

/-- `∩[A004615(n+1), A061242(n+1)]` -/
def P6471819473508835449.Spec : Prop :=
  ∀ n, (P6471819473508835449.a n : ℤ) = A142325 (n + 1)

end A142325

/-! ## A142325.P17182064798713989388

`∩[A061242(n+1), A128467(n)]`
-/

namespace A142325.P17182064798713989388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128467 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142325.P17182064798713989388

namespace A142325

/-- `∩[A061242(n+1), A128467(n)]` -/
def P17182064798713989388.Spec : Prop :=
  ∀ n, (P17182064798713989388.a n : ℤ) = A142325 (n + 1)

end A142325

/-! ## A142325.P8614890340568983007

`∩[A129805(n+1), A128467(n)]`
-/

namespace A142325.P8614890340568983007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128467 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142325.P8614890340568983007

namespace A142325

/-- `∩[A129805(n+1), A128467(n)]` -/
def P8614890340568983007.Spec : Prop :=
  ∀ n, (P8614890340568983007.a n : ℤ) = A142325 (n + 1)

end A142325

/-! ## A142325.P12708612387613250576

`∩[A082369(n+1)-2, A129805(n+1)]`
-/

namespace A142325.P12708612387613250576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082369 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142325.P12708612387613250576

namespace A142325

/-- `∩[A082369(n+1)-2, A129805(n+1)]` -/
def P12708612387613250576.Spec : Prop :=
  ∀ n, (P12708612387613250576.a n : ℤ) = A142325 (n + 1)

end A142325

/-! ## A142325.P13003032422911165195

`∩[A030430(n+1), A295869(n+1)]`
-/

namespace A142325.P13003032422911165195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142325.P13003032422911165195

namespace A142325

/-- `∩[A030430(n+1), A295869(n+1)]` -/
def P13003032422911165195.Spec : Prop :=
  ∀ n, (P13003032422911165195.a n : ℤ) = A142325 (n + 1)

end A142325

/-! ## A142325.P5812345236274374054

`∩[A045453(n+1), A295869(n+1)]`
-/

namespace A142325.P5812345236274374054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142325.P5812345236274374054

namespace A142325

/-- `∩[A045453(n+1), A295869(n+1)]` -/
def P5812345236274374054.Spec : Prop :=
  ∀ n, (P5812345236274374054.a n : ℤ) = A142325 (n + 1)

end A142325

/-! ## A142325.P5111719826884665218

`∩[A090756(n+1), A295869(n+1)]`
-/

namespace A142325.P5111719826884665218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142325.P5111719826884665218

namespace A142325

/-- `∩[A090756(n+1), A295869(n+1)]` -/
def P5111719826884665218.Spec : Prop :=
  ∀ n, (P5111719826884665218.a n : ℤ) = A142325 (n + 1)

end A142325

/-! ## A142325.P2860287749430855689

`∩[A132232(n+1), A295869(n+1)]`
-/

namespace A142325.P2860287749430855689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142325.P2860287749430855689

namespace A142325

/-- `∩[A132232(n+1), A295869(n+1)]` -/
def P2860287749430855689.Spec : Prop :=
  ∀ n, (P2860287749430855689.a n : ℤ) = A142325 (n + 1)

end A142325

/-! ## A142325.P1070226455873284419

`∩[A132238(n+1), A295869(n+1)]`
-/

namespace A142325.P1070226455873284419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142325.P1070226455873284419

namespace A142325

/-- `∩[A132238(n+1), A295869(n+1)]` -/
def P1070226455873284419.Spec : Prop :=
  ∀ n, (P1070226455873284419.a n : ℤ) = A142325 (n + 1)

end A142325

/-! ## A142325.P15827495412889959162

`∩[A140506(n+1), A295869(n+1)]`
-/

namespace A142325.P15827495412889959162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142325.P15827495412889959162

namespace A142325

/-- `∩[A140506(n+1), A295869(n+1)]` -/
def P15827495412889959162.Spec : Prop :=
  ∀ n, (P15827495412889959162.a n : ℤ) = A142325 (n + 1)

end A142325

/-! ## A142325.P2555813299835897045

`∩[A030430(n+1), A301617(n+1)-2]`
-/

namespace A142325.P2555813299835897045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301617 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142325.P2555813299835897045

namespace A142325

/-- `∩[A030430(n+1), A301617(n+1)-2]` -/
def P2555813299835897045.Spec : Prop :=
  ∀ n, (P2555813299835897045.a n : ℤ) = A142325 (n + 1)

end A142325

/-!
# A142326: Primes congruent to 28 mod 45.

The programs for A142326, the canonical program `A142326.P18413968442934630755` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142326 has offset 1).

The definition of A142326 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3262 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142326.P18413968442934630755

`p?[45*n-17]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142326

/-- `p?[45*n-17]` -/
def P18413968442934630755.Spec : Prop :=
  ∀ n, P18413968442934630755.a n = A142326 (n + 1)

theorem P18413968442934630755.correct : P18413968442934630755.Spec := by
  intro n
  simp only [A142326, Nat.add_sub_cancel]

end A142326

/-! ## A142326.P5982172510841759163

`∩[A030431(n+1), A061237(n+1)]`
-/

namespace A142326.P5982172510841759163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142326.P5982172510841759163

namespace A142326

/-- `∩[A030431(n+1), A061237(n+1)]` -/
def P5982172510841759163.Spec : Prop :=
  ∀ n, (P5982172510841759163.a n : ℤ) = A142326 (n + 1)

end A142326

/-! ## A142326.P6054411277943464217

`∩[A061237(n+1), A132233(n+1)]`
-/

namespace A142326.P6054411277943464217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132233 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142326.P6054411277943464217

namespace A142326

/-- `∩[A061237(n+1), A132233(n+1)]` -/
def P6054411277943464217.Spec : Prop :=
  ∀ n, (P6054411277943464217.a n : ℤ) = A142326 (n + 1)

end A142326

/-! ## A142326.P1126044023925006560

`∩[A045414(n+1), A061237(n+1)]`
-/

namespace A142326.P1126044023925006560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142326.P1126044023925006560

namespace A142326

/-- `∩[A045414(n+1), A061237(n+1)]` -/
def P1126044023925006560.Spec : Prop :=
  ∀ n, (P1126044023925006560.a n : ℤ) = A142326 (n + 1)

end A142326

/-! ## A142326.P12901838765721850266

`∩[A061237(n+1), A140533(n+1)]`
-/

namespace A142326.P12901838765721850266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142326.P12901838765721850266

namespace A142326

/-- `∩[A061237(n+1), A140533(n+1)]` -/
def P12901838765721850266.Spec : Prop :=
  ∀ n, (P12901838765721850266.a n : ℤ) = A142326 (n + 1)

end A142326

/-! ## A142326.P14192619855150560096

`∩[A061237(n+1), A132238(n+1)]`
-/

namespace A142326.P14192619855150560096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142326.P14192619855150560096

namespace A142326

/-- `∩[A061237(n+1), A132238(n+1)]` -/
def P14192619855150560096.Spec : Prop :=
  ∀ n, (P14192619855150560096.a n : ℤ) = A142326 (n + 1)

end A142326

/-! ## A142326.P1744605454452900104

`∩[A129805(n+1), A132233(n+1)]`
-/

namespace A142326.P1744605454452900104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132233 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142326.P1744605454452900104

namespace A142326

/-- `∩[A129805(n+1), A132233(n+1)]` -/
def P1744605454452900104.Spec : Prop :=
  ∀ n, (P1744605454452900104.a n : ℤ) = A142326 (n + 1)

end A142326

/-! ## A142326.P11688370665372184706

`∩[A061237(n+1), A082369(n+1)]`
-/

namespace A142326.P11688370665372184706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142326.P11688370665372184706

namespace A142326

/-- `∩[A061237(n+1), A082369(n+1)]` -/
def P11688370665372184706.Spec : Prop :=
  ∀ n, (P11688370665372184706.a n : ℤ) = A142326 (n + 1)

end A142326

/-! ## A142326.P7596784494793829164

`∩[A082369(n+1), A129805(n+1)]`
-/

namespace A142326.P7596784494793829164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142326.P7596784494793829164

namespace A142326

/-- `∩[A082369(n+1), A129805(n+1)]` -/
def P7596784494793829164.Spec : Prop :=
  ∀ n, (P7596784494793829164.a n : ℤ) = A142326 (n + 1)

end A142326

/-! ## A142326.P15795086014248266244

`∩[A129805(n+1), A128467(n)+2]`
-/

namespace A142326.P15795086014248266244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128467 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142326.P15795086014248266244

namespace A142326

/-- `∩[A129805(n+1), A128467(n)+2]` -/
def P15795086014248266244.Spec : Prop :=
  ∀ n, (P15795086014248266244.a n : ℤ) = A142326 (n + 1)

end A142326

/-! ## A142326.P9466334681753644674

`∩[A030431(n+1), A301617(n+1)]`
-/

namespace A142326.P9466334681753644674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142326.P9466334681753644674

namespace A142326

/-- `∩[A030431(n+1), A301617(n+1)]` -/
def P9466334681753644674.Spec : Prop :=
  ∀ n, (P9466334681753644674.a n : ℤ) = A142326 (n + 1)

end A142326

/-! ## A142326.P15099408668718486773

`∩[A045414(n+1), A301617(n+1)]`
-/

namespace A142326.P15099408668718486773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142326.P15099408668718486773

namespace A142326

/-- `∩[A045414(n+1), A301617(n+1)]` -/
def P15099408668718486773.Spec : Prop :=
  ∀ n, (P15099408668718486773.a n : ℤ) = A142326 (n + 1)

end A142326

/-! ## A142326.P10311864614762142837

`∩[A132233(n+1), A301617(n+1)]`
-/

namespace A142326.P10311864614762142837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142326.P10311864614762142837

namespace A142326

/-- `∩[A132233(n+1), A301617(n+1)]` -/
def P10311864614762142837.Spec : Prop :=
  ∀ n, (P10311864614762142837.a n : ℤ) = A142326 (n + 1)

end A142326

/-! ## A142326.P5718646929215864194

`∩[A132238(n+1), A301617(n+1)]`
-/

namespace A142326.P5718646929215864194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142326.P5718646929215864194

namespace A142326

/-- `∩[A132238(n+1), A301617(n+1)]` -/
def P5718646929215864194.Spec : Prop :=
  ∀ n, (P5718646929215864194.a n : ℤ) = A142326 (n + 1)

end A142326

/-! ## A142326.P5218691188804757364

`∩[A140533(n+1), A301617(n+1)]`
-/

namespace A142326.P5218691188804757364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142326.P5218691188804757364

namespace A142326

/-- `∩[A140533(n+1), A301617(n+1)]` -/
def P5218691188804757364.Spec : Prop :=
  ∀ n, (P5218691188804757364.a n : ℤ) = A142326 (n + 1)

end A142326

/-! ## A142326.P12283953960372601235

`∩[A030431(n+1), A295869(n+1)+2]`
-/

namespace A142326.P12283953960372601235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142326.P12283953960372601235

namespace A142326

/-- `∩[A030431(n+1), A295869(n+1)+2]` -/
def P12283953960372601235.Spec : Prop :=
  ∀ n, (P12283953960372601235.a n : ℤ) = A142326 (n + 1)

end A142326

/-! ## A142326.P8457272938899539764

`∩[A045414(n+1), A295869(n+1)+2]`
-/

namespace A142326.P8457272938899539764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142326.P8457272938899539764

namespace A142326

/-- `∩[A045414(n+1), A295869(n+1)+2]` -/
def P8457272938899539764.Spec : Prop :=
  ∀ n, (P8457272938899539764.a n : ℤ) = A142326 (n + 1)

end A142326

/-! ## A142326.P3022991258653027910

`∩[A132238(n+1), A295869(n+1)+2]`
-/

namespace A142326.P3022991258653027910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142326.P3022991258653027910

namespace A142326

/-- `∩[A132238(n+1), A295869(n+1)+2]` -/
def P3022991258653027910.Spec : Prop :=
  ∀ n, (P3022991258653027910.a n : ℤ) = A142326 (n + 1)

end A142326

/-! ## A142326.P8863365612948952419

`∩[A140533(n+1), A295869(n+1)+2]`
-/

namespace A142326.P8863365612948952419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142326.P8863365612948952419

namespace A142326

/-- `∩[A140533(n+1), A295869(n+1)+2]` -/
def P8863365612948952419.Spec : Prop :=
  ∀ n, (P8863365612948952419.a n : ℤ) = A142326 (n + 1)

end A142326

/-! ## A142326.P9771690071767426030

`∩[A004617(n+1), A061237(n+1)]`
-/

namespace A142326.P9771690071767426030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142326.P9771690071767426030

namespace A142326

/-- `∩[A004617(n+1), A061237(n+1)]` -/
def P9771690071767426030.Spec : Prop :=
  ∀ n, (P9771690071767426030.a n : ℤ) = A142326 (n + 1)

end A142326

/-!
# A142327: Primes congruent to 29 mod 45.

The programs for A142327, the canonical program `A142327.P4584270671583773330` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142327 has offset 1).

The definition of A142327 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3244 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142327.P4584270671583773330

`p?[45*n-16]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142327

/-- `p?[45*n-16]` -/
def P4584270671583773330.Spec : Prop :=
  ∀ n, P4584270671583773330.a n = A142327 (n + 1)

theorem P4584270671583773330.correct : P4584270671583773330.Spec := by
  intro n
  simp only [A142327, Nat.add_sub_cancel]

end A142327

/-! ## A142327.P365269757884275900

`∩[A030433(n+1), A061238(n+1)]`
-/

namespace A142327.P365269757884275900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142327.P365269757884275900

namespace A142327

/-- `∩[A030433(n+1), A061238(n+1)]` -/
def P365269757884275900.Spec : Prop :=
  ∀ n, (P365269757884275900.a n : ℤ) = A142327 (n + 1)

end A142327

/-! ## A142327.P7134071550792623067

`∩[A061238(n+1), A132236(n+1)]`
-/

namespace A142327.P7134071550792623067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142327.P7134071550792623067

namespace A142327

/-- `∩[A061238(n+1), A132236(n+1)]` -/
def P7134071550792623067.Spec : Prop :=
  ∀ n, (P7134071550792623067.a n : ℤ) = A142327 (n + 1)

end A142327

/-! ## A142327.P14541023532812211329

`∩[A045457(n+1), A061238(n+1)]`
-/

namespace A142327.P14541023532812211329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142327.P14541023532812211329

namespace A142327

/-- `∩[A045457(n+1), A061238(n+1)]` -/
def P14541023532812211329.Spec : Prop :=
  ∀ n, (P14541023532812211329.a n : ℤ) = A142327 (n + 1)

end A142327

/-! ## A142327.P17786980335786544384

`∩[A061238(n+1), A132240(n+1)]`
-/

namespace A142327.P17786980335786544384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142327.P17786980335786544384

namespace A142327

/-- `∩[A061238(n+1), A132240(n+1)]` -/
def P17786980335786544384.Spec : Prop :=
  ∀ n, (P17786980335786544384.a n : ℤ) = A142327 (n + 1)

end A142327

/-! ## A142327.P7792875218161697274

`∩[A061238(n+1), A327753(n+1)]`
-/

namespace A142327.P7792875218161697274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142327.P7792875218161697274

namespace A142327

/-- `∩[A061238(n+1), A327753(n+1)]` -/
def P7792875218161697274.Spec : Prop :=
  ∀ n, (P7792875218161697274.a n : ℤ) = A142327 (n + 1)

end A142327

/-! ## A142327.P38674491922734337

`∩[A004618(n+1), A061238(n+1)]`
-/

namespace A142327.P38674491922734337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142327.P38674491922734337

namespace A142327

/-- `∩[A004618(n+1), A061238(n+1)]` -/
def P38674491922734337.Spec : Prop :=
  ∀ n, (P38674491922734337.a n : ℤ) = A142327 (n + 1)

end A142327

/-! ## A142327.P1699749742178707591

`∩[A129807(n+1), A132236(n+1)]`
-/

namespace A142327.P1699749742178707591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142327.P1699749742178707591

namespace A142327

/-- `∩[A129807(n+1), A132236(n+1)]` -/
def P1699749742178707591.Spec : Prop :=
  ∀ n, (P1699749742178707591.a n : ℤ) = A142327 (n + 1)

end A142327

/-! ## A142327.P13240917465641465218

`∩[A129807(n+1), A128470(n)-2]`
-/

namespace A142327.P13240917465641465218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142327.P13240917465641465218

namespace A142327

/-- `∩[A129807(n+1), A128470(n)-2]` -/
def P13240917465641465218.Spec : Prop :=
  ∀ n, (P13240917465641465218.a n : ℤ) = A142327 (n + 1)

end A142327

/-! ## A142327.P6704892242798888004

`∩[A030433(n+1), A301621(n+1)]`
-/

namespace A142327.P6704892242798888004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142327.P6704892242798888004

namespace A142327

/-- `∩[A030433(n+1), A301621(n+1)]` -/
def P6704892242798888004.Spec : Prop :=
  ∀ n, (P6704892242798888004.a n : ℤ) = A142327 (n + 1)

end A142327

/-! ## A142327.P2753524492364322769

`∩[A045457(n+1), A301621(n+1)]`
-/

namespace A142327.P2753524492364322769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142327.P2753524492364322769

namespace A142327

/-- `∩[A045457(n+1), A301621(n+1)]` -/
def P2753524492364322769.Spec : Prop :=
  ∀ n, (P2753524492364322769.a n : ℤ) = A142327 (n + 1)

end A142327

/-! ## A142327.P7505778753628246085

`∩[A132236(n+1), A301621(n+1)]`
-/

namespace A142327.P7505778753628246085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142327.P7505778753628246085

namespace A142327

/-- `∩[A132236(n+1), A301621(n+1)]` -/
def P7505778753628246085.Spec : Prop :=
  ∀ n, (P7505778753628246085.a n : ℤ) = A142327 (n + 1)

end A142327

/-! ## A142327.P8976528074894818516

`∩[A132240(n+1), A301621(n+1)]`
-/

namespace A142327.P8976528074894818516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142327.P8976528074894818516

namespace A142327

/-- `∩[A132240(n+1), A301621(n+1)]` -/
def P8976528074894818516.Spec : Prop :=
  ∀ n, (P8976528074894818516.a n : ℤ) = A142327 (n + 1)

end A142327

/-! ## A142327.P9354991168017650275

`∩[A301621(n+1), A327753(n+1)]`
-/

namespace A142327.P9354991168017650275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142327.P9354991168017650275

namespace A142327

/-- `∩[A301621(n+1), A327753(n+1)]` -/
def P9354991168017650275.Spec : Prop :=
  ∀ n, (P9354991168017650275.a n : ℤ) = A142327 (n + 1)

end A142327

/-! ## A142327.P217442327442158077

`∩[A030433(n+1), A301622(n+1)-2]`
-/

namespace A142327.P217442327442158077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142327.P217442327442158077

namespace A142327

/-- `∩[A030433(n+1), A301622(n+1)-2]` -/
def P217442327442158077.Spec : Prop :=
  ∀ n, (P217442327442158077.a n : ℤ) = A142327 (n + 1)

end A142327

/-! ## A142327.P6646472298628915586

`∩[A045457(n+1), A301622(n+1)-2]`
-/

namespace A142327.P6646472298628915586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142327.P6646472298628915586

namespace A142327

/-- `∩[A045457(n+1), A301622(n+1)-2]` -/
def P6646472298628915586.Spec : Prop :=
  ∀ n, (P6646472298628915586.a n : ℤ) = A142327 (n + 1)

end A142327

/-! ## A142327.P13563696891519066647

`∩[A132240(n+1), A301622(n+1)-2]`
-/

namespace A142327.P13563696891519066647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142327.P13563696891519066647

namespace A142327

/-- `∩[A132240(n+1), A301622(n+1)-2]` -/
def P13563696891519066647.Spec : Prop :=
  ∀ n, (P13563696891519066647.a n : ℤ) = A142327 (n + 1)

end A142327

/-! ## A142327.P4131998655353164836

`∩[A061238(n+1), A257645(n)]`
-/

namespace A142327.P4131998655353164836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257645 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142327.P4131998655353164836

namespace A142327

/-- `∩[A061238(n+1), A257645(n)]` -/
def P4131998655353164836.Spec : Prop :=
  ∀ n, (P4131998655353164836.a n : ℤ) = A142327 (n + 1)

end A142327

/-! ## A142327.P2493415581428565909

`∩[A129807(n+1), A257645(n)]`
-/

namespace A142327.P2493415581428565909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257645 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142327.P2493415581428565909

namespace A142327

/-- `∩[A129807(n+1), A257645(n)]` -/
def P2493415581428565909.Spec : Prop :=
  ∀ n, (P2493415581428565909.a n : ℤ) = A142327 (n + 1)

end A142327

/-! ## A142327.P14804939245708046077

`∩[A061238(n+1), A063118(n+1)-2]`
-/

namespace A142327.P14804939245708046077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063118 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142327.P14804939245708046077

namespace A142327

/-- `∩[A061238(n+1), A063118(n+1)-2]` -/
def P14804939245708046077.Spec : Prop :=
  ∀ n, (P14804939245708046077.a n : ℤ) = A142327 (n + 1)

end A142327

/-!
# A142328: Primes congruent to 31 mod 45.

The programs for A142328, the canonical program `A142328.P14824499500990808311` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142328 has offset 1).

The definition of A142328 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3252 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142328.P14824499500990808311

`p?[90*n+31]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142328

/-- `p?[90*n+31]` -/
def P14824499500990808311.Spec : Prop :=
  ∀ n, (P14824499500990808311.a n : ℤ) = A142328 (n + 1)

theorem P14824499500990808311.correct : P14824499500990808311.Spec := by
  intro n
  simp only [A142328, Nat.add_sub_cancel]

end A142328

/-! ## A142328.P6586434640065184564

`∩[A030430(n+1), A061239(n+1)]`
-/

namespace A142328.P6586434640065184564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142328.P6586434640065184564

namespace A142328

/-- `∩[A030430(n+1), A061239(n+1)]` -/
def P6586434640065184564.Spec : Prop :=
  ∀ n, (P6586434640065184564.a n : ℤ) = A142328 (n + 1)

end A142328

/-! ## A142328.P10983464119696411706

`∩[A061239(n+1), A132230(n+1)]`
-/

namespace A142328.P10983464119696411706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142328.P10983464119696411706

namespace A142328

/-- `∩[A061239(n+1), A132230(n+1)]` -/
def P10983464119696411706.Spec : Prop :=
  ∀ n, (P10983464119696411706.a n : ℤ) = A142328 (n + 1)

end A142328

/-! ## A142328.P3693762825717844251

`∩[A061239(n+1), A132240(n+1)]`
-/

namespace A142328.P3693762825717844251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142328.P3693762825717844251

namespace A142328

/-- `∩[A061239(n+1), A132240(n+1)]` -/
def P3693762825717844251.Spec : Prop :=
  ∀ n, (P3693762825717844251.a n : ℤ) = A142328 (n + 1)

end A142328

/-! ## A142328.P3533576755571058682

`∩[A045453(n+1), A061239(n+1)]`
-/

namespace A142328.P3533576755571058682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142328.P3533576755571058682

namespace A142328

/-- `∩[A045453(n+1), A061239(n+1)]` -/
def P3533576755571058682.Spec : Prop :=
  ∀ n, (P3533576755571058682.a n : ℤ) = A142328 (n + 1)

end A142328

/-! ## A142328.P2665608420616010845

`∩[A061239(n+1), A090756(n+1)]`
-/

namespace A142328.P2665608420616010845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142328.P2665608420616010845

namespace A142328

/-- `∩[A061239(n+1), A090756(n+1)]` -/
def P2665608420616010845.Spec : Prop :=
  ∀ n, (P2665608420616010845.a n : ℤ) = A142328 (n + 1)

end A142328

/-! ## A142328.P11867381859478909307

`∩[A061239(n+1), A327752(n+1)]`
-/

namespace A142328.P11867381859478909307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142328.P11867381859478909307

namespace A142328

/-- `∩[A061239(n+1), A327752(n+1)]` -/
def P11867381859478909307.Spec : Prop :=
  ∀ n, (P11867381859478909307.a n : ℤ) = A142328 (n + 1)

end A142328

/-! ## A142328.P13432018865474484456

`∩[A129806(n+1), A132230(n+1)]`
-/

namespace A142328.P13432018865474484456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142328.P13432018865474484456

namespace A142328

/-- `∩[A129806(n+1), A132230(n+1)]` -/
def P13432018865474484456.Spec : Prop :=
  ∀ n, (P13432018865474484456.a n : ℤ) = A142328 (n + 1)

end A142328

/-! ## A142328.P6509947333802446015

`∩[A004615(n+1), A061239(n+1)]`
-/

namespace A142328.P6509947333802446015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142328.P6509947333802446015

namespace A142328

/-- `∩[A004615(n+1), A061239(n+1)]` -/
def P6509947333802446015.Spec : Prop :=
  ∀ n, (P6509947333802446015.a n : ℤ) = A142328 (n + 1)

end A142328

/-! ## A142328.P2478478081398569828

`∩[A061239(n+1), A128470(n)]`
-/

namespace A142328.P2478478081398569828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142328.P2478478081398569828

namespace A142328

/-- `∩[A061239(n+1), A128470(n)]` -/
def P2478478081398569828.Spec : Prop :=
  ∀ n, (P2478478081398569828.a n : ℤ) = A142328 (n + 1)

end A142328

/-! ## A142328.P2391052805033584638

`∩[A129806(n+1), A128470(n)]`
-/

namespace A142328.P2391052805033584638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142328.P2391052805033584638

namespace A142328

/-- `∩[A129806(n+1), A128470(n)]` -/
def P2391052805033584638.Spec : Prop :=
  ∀ n, (P2391052805033584638.a n : ℤ) = A142328 (n + 1)

end A142328

/-! ## A142328.P16624274914186579528

`∩[A079132(n+1), A128470(n)]`
-/

namespace A142328.P16624274914186579528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142328.P16624274914186579528

namespace A142328

/-- `∩[A079132(n+1), A128470(n)]` -/
def P16624274914186579528.Spec : Prop :=
  ∀ n, (P16624274914186579528.a n : ℤ) = A142328 (n + 1)

end A142328

/-! ## A142328.P5794301762840979363

`∩[A079132(n+1), A132230(n+1)]`
-/

namespace A142328.P5794301762840979363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142328.P5794301762840979363

namespace A142328

/-- `∩[A079132(n+1), A132230(n+1)]` -/
def P5794301762840979363.Spec : Prop :=
  ∀ n, (P5794301762840979363.a n : ℤ) = A142328 (n + 1)

end A142328

/-! ## A142328.P15642672137313982108

`∩[A030430(n+1), A301622(n+1)]`
-/

namespace A142328.P15642672137313982108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142328.P15642672137313982108

namespace A142328

/-- `∩[A030430(n+1), A301622(n+1)]` -/
def P15642672137313982108.Spec : Prop :=
  ∀ n, (P15642672137313982108.a n : ℤ) = A142328 (n + 1)

end A142328

/-! ## A142328.P9227135256013837247

`∩[A045453(n+1), A301622(n+1)]`
-/

namespace A142328.P9227135256013837247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142328.P9227135256013837247

namespace A142328

/-- `∩[A045453(n+1), A301622(n+1)]` -/
def P9227135256013837247.Spec : Prop :=
  ∀ n, (P9227135256013837247.a n : ℤ) = A142328 (n + 1)

end A142328

/-! ## A142328.P17042934464671730253

`∩[A090756(n+1), A301622(n+1)]`
-/

namespace A142328.P17042934464671730253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142328.P17042934464671730253

namespace A142328

/-- `∩[A090756(n+1), A301622(n+1)]` -/
def P17042934464671730253.Spec : Prop :=
  ∀ n, (P17042934464671730253.a n : ℤ) = A142328 (n + 1)

end A142328

/-! ## A142328.P13713943099781624199

`∩[A132230(n+1), A301622(n+1)]`
-/

namespace A142328.P13713943099781624199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142328.P13713943099781624199

namespace A142328

/-- `∩[A132230(n+1), A301622(n+1)]` -/
def P13713943099781624199.Spec : Prop :=
  ∀ n, (P13713943099781624199.a n : ℤ) = A142328 (n + 1)

end A142328

/-! ## A142328.P3973304785281601206

`∩[A132240(n+1), A301622(n+1)]`
-/

namespace A142328.P3973304785281601206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142328.P3973304785281601206

namespace A142328

/-- `∩[A132240(n+1), A301622(n+1)]` -/
def P3973304785281601206.Spec : Prop :=
  ∀ n, (P3973304785281601206.a n : ℤ) = A142328 (n + 1)

end A142328

/-! ## A142328.P15340809086724090729

`∩[A030430(n+1), A301621(n+1)+2]`
-/

namespace A142328.P15340809086724090729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142328.P15340809086724090729

namespace A142328

/-- `∩[A030430(n+1), A301621(n+1)+2]` -/
def P15340809086724090729.Spec : Prop :=
  ∀ n, (P15340809086724090729.a n : ℤ) = A142328 (n + 1)

end A142328

/-! ## A142328.P15667369537717711718

`∩[A045453(n+1), A301621(n+1)+2]`
-/

namespace A142328.P15667369537717711718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142328.P15667369537717711718

namespace A142328

/-- `∩[A045453(n+1), A301621(n+1)+2]` -/
def P15667369537717711718.Spec : Prop :=
  ∀ n, (P15667369537717711718.a n : ℤ) = A142328 (n + 1)

end A142328

/-!
# A142329: Primes congruent to 32 mod 45.

The programs for A142329, the canonical program `A142329.P1160488117302926088` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142329 has offset 1).

The definition of A142329 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3272 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142329.P1160488117302926088

`p?[45*n-13]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142329

/-- `p?[45*n-13]` -/
def P1160488117302926088.Spec : Prop :=
  ∀ n, P1160488117302926088.a n = A142329 (n + 1)

theorem P1160488117302926088.correct : P1160488117302926088.Spec := by
  intro n
  simp only [A142329, Nat.add_sub_cancel]

end A142329

/-! ## A142329.P17554843586008139144

`∩[A030432(n+1), A061240(n+1)]`
-/

namespace A142329.P17554843586008139144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142329.P17554843586008139144

namespace A142329

/-- `∩[A030432(n+1), A061240(n+1)]` -/
def P17554843586008139144.Spec : Prop :=
  ∀ n, (P17554843586008139144.a n : ℤ) = A142329 (n + 1)

end A142329

/-! ## A142329.P12843642053036291177

`∩[A039949(n+1), A061240(n+1)]`
-/

namespace A142329.P12843642053036291177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142329.P12843642053036291177

namespace A142329

/-- `∩[A039949(n+1), A061240(n+1)]` -/
def P12843642053036291177.Spec : Prop :=
  ∀ n, (P12843642053036291177.a n : ℤ) = A142329 (n + 1)

end A142329

/-! ## A142329.P8830217763020472472

`∩[A061240(n+1), A141860(n+1)]`
-/

namespace A142329.P8830217763020472472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142329.P8830217763020472472

namespace A142329

/-- `∩[A061240(n+1), A141860(n+1)]` -/
def P8830217763020472472.Spec : Prop :=
  ∀ n, (P8830217763020472472.a n : ℤ) = A142329 (n + 1)

end A142329

/-! ## A142329.P13756346527588016188

`∩[A061240(n+1), A132239(n+1)]`
-/

namespace A142329.P13756346527588016188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142329.P13756346527588016188

namespace A142329

/-- `∩[A061240(n+1), A132239(n+1)]` -/
def P13756346527588016188.Spec : Prop :=
  ∀ n, (P13756346527588016188.a n : ℤ) = A142329 (n + 1)

end A142329

/-! ## A142329.P11307509606708560578

`∩[A061240(n+1), A140533(n+1)]`
-/

namespace A142329.P11307509606708560578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142329.P11307509606708560578

namespace A142329

/-- `∩[A061240(n+1), A140533(n+1)]` -/
def P11307509606708560578.Spec : Prop :=
  ∀ n, (P11307509606708560578.a n : ℤ) = A142329 (n + 1)

end A142329

/-! ## A142329.P11250853757799108874

`∩[A045380(n+1), A061240(n+1)]`
-/

namespace A142329.P11250853757799108874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142329.P11250853757799108874

namespace A142329

/-- `∩[A045380(n+1), A061240(n+1)]` -/
def P11250853757799108874.Spec : Prop :=
  ∀ n, (P11250853757799108874.a n : ℤ) = A142329 (n + 1)

end A142329

/-! ## A142329.P16682460172743962465

`∩[A039949(n+1), A129806(n+1)]`
-/

namespace A142329.P16682460172743962465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142329.P16682460172743962465

namespace A142329

/-- `∩[A039949(n+1), A129806(n+1)]` -/
def P16682460172743962465.Spec : Prop :=
  ∀ n, (P16682460172743962465.a n : ℤ) = A142329 (n + 1)

end A142329

/-! ## A142329.P10960679312135336154

`∩[A129806(n+1), A141860(n+1)]`
-/

namespace A142329.P10960679312135336154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142329.P10960679312135336154

namespace A142329

/-- `∩[A129806(n+1), A141860(n+1)]` -/
def P10960679312135336154.Spec : Prop :=
  ∀ n, (P10960679312135336154.a n : ℤ) = A142329 (n + 1)

end A142329

/-! ## A142329.P15374424245980134716

`or(1, p?[A128468(3*n+2)])`
-/

namespace A142329.P15374424245980134716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128468 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142329.P15374424245980134716

namespace A142329

/-- `or(1, p?[A128468(3*n+2)])` -/
def P15374424245980134716.Spec : Prop :=
  ∀ n, P15374424245980134716.a n = A142329 (n + 1)

end A142329

/-! ## A142329.P1530467699530241492

`∩[A061240(n+1), A128468(n)]`
-/

namespace A142329.P1530467699530241492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128468 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142329.P1530467699530241492

namespace A142329

/-- `∩[A061240(n+1), A128468(n)]` -/
def P1530467699530241492.Spec : Prop :=
  ∀ n, (P1530467699530241492.a n : ℤ) = A142329 (n + 1)

end A142329

/-! ## A142329.P6442483051055027028

`∩[A129806(n+1), A128468(n)]`
-/

namespace A142329.P6442483051055027028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128468 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142329.P6442483051055027028

namespace A142329

/-- `∩[A129806(n+1), A128468(n)]` -/
def P6442483051055027028.Spec : Prop :=
  ∀ n, (P6442483051055027028.a n : ℤ) = A142329 (n + 1)

end A142329

/-! ## A142329.P1274262292628016576

`A000027(p?[A128468(3*n+2)])`
-/

namespace A142329.P1274262292628016576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128468 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142329.P1274262292628016576

namespace A142329

/-- `A000027(p?[A128468(3*n+2)])` -/
def P1274262292628016576.Spec : Prop :=
  ∀ n, P1274262292628016576.a n = A142329 (n + 1)

end A142329

/-! ## A142329.P7753869728576695230

`∩[A129806(n+1), A156376(n)-2]`
-/

namespace A142329.P7753869728576695230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156376 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142329.P7753869728576695230

namespace A142329

/-- `∩[A129806(n+1), A156376(n)-2]` -/
def P7753869728576695230.Spec : Prop :=
  ∀ n, (P7753869728576695230.a n : ℤ) = A142329 (n + 1)

end A142329

/-! ## A142329.P14710794050061295081

`p?[A128468(3*n+2)]+n*A000038(n)`
-/

namespace A142329.P14710794050061295081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128468 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (n : ℤ) * A000038 n

end

end A142329.P14710794050061295081

namespace A142329

/-- `p?[A128468(3*n+2)]+n*A000038(n)` -/
def P14710794050061295081.Spec : Prop :=
  ∀ n, P14710794050061295081.a n = A142329 (n + 1)

end A142329

/-! ## A142329.P1059446321170800058

`∩[A061240(n+1), A090652(n+1)]`
-/

namespace A142329.P1059446321170800058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142329.P1059446321170800058

namespace A142329

/-- `∩[A061240(n+1), A090652(n+1)]` -/
def P1059446321170800058.Spec : Prop :=
  ∀ n, (P1059446321170800058.a n : ℤ) = A142329 (n + 1)

end A142329

/-! ## A142329.P2617808550421220403

`p?[A128468(A016789(n))]%A270798(n+1)`
-/

namespace A142329.P2617808550421220403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128468 (A016789 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A270798 (n + 1))

end

end A142329.P2617808550421220403

namespace A142329

/-- `p?[A128468(A016789(n))]%A270798(n+1)` -/
def P2617808550421220403.Spec : Prop :=
  ∀ n, P2617808550421220403.a n = A142329 (n + 1)

end A142329

/-! ## A142329.P18081471745472696098

`∩[A030432(n+1), A301623(n+1)]`
-/

namespace A142329.P18081471745472696098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142329.P18081471745472696098

namespace A142329

/-- `∩[A030432(n+1), A301623(n+1)]` -/
def P18081471745472696098.Spec : Prop :=
  ∀ n, (P18081471745472696098.a n : ℤ) = A142329 (n + 1)

end A142329

/-! ## A142329.P10185073318609973485

`∩[A039949(n+1), A301623(n+1)]`
-/

namespace A142329.P10185073318609973485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142329.P10185073318609973485

namespace A142329

/-- `∩[A039949(n+1), A301623(n+1)]` -/
def P10185073318609973485.Spec : Prop :=
  ∀ n, (P10185073318609973485.a n : ℤ) = A142329 (n + 1)

end A142329

/-! ## A142329.P15308570576023803022

`∩[A045357(n+1), A301623(n+1)]`
-/

namespace A142329.P15308570576023803022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142329.P15308570576023803022

namespace A142329

/-- `∩[A045357(n+1), A301623(n+1)]` -/
def P15308570576023803022.Spec : Prop :=
  ∀ n, (P15308570576023803022.a n : ℤ) = A142329 (n + 1)

end A142329

/-!
# A142330: Primes congruent to 34 mod 45.

The programs for A142330, the canonical program `A142330.P1189926326019420080` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142330 has offset 1).

The definition of A142330 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3283 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142330.P1189926326019420080

`p?[45*n-11]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142330

/-- `p?[45*n-11]` -/
def P1189926326019420080.Spec : Prop :=
  ∀ n, P1189926326019420080.a n = A142330 (n + 1)

theorem P1189926326019420080.correct : P1189926326019420080.Spec := by
  intro n
  simp only [A142330, Nat.add_sub_cancel]

end A142330

/-! ## A142330.P4706995933885341482

`∩[A030433(n+1), A061241(n+1)]`
-/

namespace A142330.P4706995933885341482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142330.P4706995933885341482

namespace A142330

/-- `∩[A030433(n+1), A061241(n+1)]` -/
def P4706995933885341482.Spec : Prop :=
  ∀ n, (P4706995933885341482.a n : ℤ) = A142330 (n + 1)

end A142330

/-! ## A142330.P4699542076377262336

`∩[A061241(n+1), A132234(n+1)]`
-/

namespace A142330.P4699542076377262336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142330.P4699542076377262336

namespace A142330

/-- `∩[A061241(n+1), A132234(n+1)]` -/
def P4699542076377262336.Spec : Prop :=
  ∀ n, (P4699542076377262336.a n : ℤ) = A142330 (n + 1)

end A142330

/-! ## A142330.P12573555257303876939

`∩[A061241(n+1), A132239(n+1)]`
-/

namespace A142330.P12573555257303876939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142330.P12573555257303876939

namespace A142330

/-- `∩[A061241(n+1), A132239(n+1)]` -/
def P12573555257303876939.Spec : Prop :=
  ∀ n, (P12573555257303876939.a n : ℤ) = A142330 (n + 1)

end A142330

/-! ## A142330.P15497516495685524970

`∩[A045457(n+1), A061241(n+1)]`
-/

namespace A142330.P15497516495685524970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142330.P15497516495685524970

namespace A142330

/-- `∩[A045457(n+1), A061241(n+1)]` -/
def P15497516495685524970.Spec : Prop :=
  ∀ n, (P15497516495685524970.a n : ℤ) = A142330 (n + 1)

end A142330

/-! ## A142330.P12588259202759760878

`∩[A061241(n+1), A140506(n+1)]`
-/

namespace A142330.P12588259202759760878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142330.P12588259202759760878

namespace A142330

/-- `∩[A061241(n+1), A140506(n+1)]` -/
def P12588259202759760878.Spec : Prop :=
  ∀ n, (P12588259202759760878.a n : ℤ) = A142330 (n + 1)

end A142330

/-! ## A142330.P4286907677990040552

`∩[A061241(n+1), A327753(n+1)]`
-/

namespace A142330.P4286907677990040552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142330.P4286907677990040552

namespace A142330

/-- `∩[A061241(n+1), A327753(n+1)]` -/
def P4286907677990040552.Spec : Prop :=
  ∀ n, (P4286907677990040552.a n : ℤ) = A142330 (n + 1)

end A142330

/-! ## A142330.P17187905395080306908

`∩[A004618(n+1), A061241(n+1)]`
-/

namespace A142330.P17187905395080306908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142330.P17187905395080306908

namespace A142330

/-- `∩[A004618(n+1), A061241(n+1)]` -/
def P17187905395080306908.Spec : Prop :=
  ∀ n, (P17187905395080306908.a n : ℤ) = A142330 (n + 1)

end A142330

/-! ## A142330.P15602171660044183187

`∩[A129807(n+1), A132234(n+1)]`
-/

namespace A142330.P15602171660044183187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142330.P15602171660044183187

namespace A142330

/-- `∩[A129807(n+1), A132234(n+1)]` -/
def P15602171660044183187.Spec : Prop :=
  ∀ n, (P15602171660044183187.a n : ℤ) = A142330 (n + 1)

end A142330

/-! ## A142330.P8871870211141074579

`∩[A061241(n+1), A156376(n)]`
-/

namespace A142330.P8871870211141074579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156376 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142330.P8871870211141074579

namespace A142330

/-- `∩[A061241(n+1), A156376(n)]` -/
def P8871870211141074579.Spec : Prop :=
  ∀ n, (P8871870211141074579.a n : ℤ) = A142330 (n + 1)

end A142330

/-! ## A142330.P9474064326720673669

`∩[A129807(n+1), A156376(n)]`
-/

namespace A142330.P9474064326720673669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156376 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142330.P9474064326720673669

namespace A142330

/-- `∩[A129807(n+1), A156376(n)]` -/
def P9474064326720673669.Spec : Prop :=
  ∀ n, (P9474064326720673669.a n : ℤ) = A142330 (n + 1)

end A142330

/-! ## A142330.P17432902451459270821

`∩[A078403(n+1), A156376(n)]`
-/

namespace A142330.P17432902451459270821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156376 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142330.P17432902451459270821

namespace A142330

/-- `∩[A078403(n+1), A156376(n)]` -/
def P17432902451459270821.Spec : Prop :=
  ∀ n, (P17432902451459270821.a n : ℤ) = A142330 (n + 1)

end A142330

/-! ## A142330.P6113331895345561813

`∩[A078403(n+1), A132234(n+1)]`
-/

namespace A142330.P6113331895345561813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142330.P6113331895345561813

namespace A142330

/-- `∩[A078403(n+1), A132234(n+1)]` -/
def P6113331895345561813.Spec : Prop :=
  ∀ n, (P6113331895345561813.a n : ℤ) = A142330 (n + 1)

end A142330

/-! ## A142330.P653399368601785751

`∩[A030433(n+1), A301628(n+1)]`
-/

namespace A142330.P653399368601785751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142330.P653399368601785751

namespace A142330

/-- `∩[A030433(n+1), A301628(n+1)]` -/
def P653399368601785751.Spec : Prop :=
  ∀ n, (P653399368601785751.a n : ℤ) = A142330 (n + 1)

end A142330

/-! ## A142330.P16973640005068465260

`∩[A045457(n+1), A301628(n+1)]`
-/

namespace A142330.P16973640005068465260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142330.P16973640005068465260

namespace A142330

/-- `∩[A045457(n+1), A301628(n+1)]` -/
def P16973640005068465260.Spec : Prop :=
  ∀ n, (P16973640005068465260.a n : ℤ) = A142330 (n + 1)

end A142330

/-! ## A142330.P5677820303189204246

`∩[A132234(n+1), A301628(n+1)]`
-/

namespace A142330.P5677820303189204246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142330.P5677820303189204246

namespace A142330

/-- `∩[A132234(n+1), A301628(n+1)]` -/
def P5677820303189204246.Spec : Prop :=
  ∀ n, (P5677820303189204246.a n : ℤ) = A142330 (n + 1)

end A142330

/-! ## A142330.P18413631312355356902

`∩[A132239(n+1), A301628(n+1)]`
-/

namespace A142330.P18413631312355356902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142330.P18413631312355356902

namespace A142330

/-- `∩[A132239(n+1), A301628(n+1)]` -/
def P18413631312355356902.Spec : Prop :=
  ∀ n, (P18413631312355356902.a n : ℤ) = A142330 (n + 1)

end A142330

/-! ## A142330.P7793560395296094537

`∩[A140506(n+1), A301628(n+1)]`
-/

namespace A142330.P7793560395296094537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142330.P7793560395296094537

namespace A142330

/-- `∩[A140506(n+1), A301628(n+1)]` -/
def P7793560395296094537.Spec : Prop :=
  ∀ n, (P7793560395296094537.a n : ℤ) = A142330 (n + 1)

end A142330

/-! ## A142330.P14666288405397576750

`∩[A030433(n+1), A301623(n+1)+2]`
-/

namespace A142330.P14666288405397576750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301623 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142330.P14666288405397576750

namespace A142330

/-- `∩[A030433(n+1), A301623(n+1)+2]` -/
def P14666288405397576750.Spec : Prop :=
  ∀ n, (P14666288405397576750.a n : ℤ) = A142330 (n + 1)

end A142330

/-! ## A142330.P7999893072949590898

`∩[A045457(n+1), A301623(n+1)+2]`
-/

namespace A142330.P7999893072949590898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301623 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142330.P7999893072949590898

namespace A142330

/-- `∩[A045457(n+1), A301623(n+1)+2]` -/
def P7999893072949590898.Spec : Prop :=
  ∀ n, (P7999893072949590898.a n : ℤ) = A142330 (n + 1)

end A142330

/-!
# A142331: Primes congruent to 37 mod 45.

The programs for A142331, the canonical program `A142331.P15071362400208504778` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142331 has offset 1).

The definition of A142331 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3284 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142331.P15071362400208504778

`p?[45*n-8]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142331

/-- `p?[45*n-8]` -/
def P15071362400208504778.Spec : Prop :=
  ∀ n, P15071362400208504778.a n = A142331 (n + 1)

theorem P15071362400208504778.correct : P15071362400208504778.Spec := by
  intro n
  simp only [A142331, Nat.add_sub_cancel]

end A142331

/-! ## A142331.P3260342415281093752

`p?[A053743(n)-A017365(n)]%A183907(n+6)`
-/

namespace A142331.P3260342415281093752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n - A017365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A183907 (n + 6))

end

end A142331.P3260342415281093752

namespace A142331

/-- `p?[A053743(n)-A017365(n)]%A183907(n+6)` -/
def P3260342415281093752.Spec : Prop :=
  ∀ n, P3260342415281093752.a n = A142331 (n + 1)

end A142331

/-! ## A142331.P3423511538443986523

`∩[A030432(n+1), A061237(n+1)]`
-/

namespace A142331.P3423511538443986523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142331.P3423511538443986523

namespace A142331

/-- `∩[A030432(n+1), A061237(n+1)]` -/
def P3423511538443986523.Spec : Prop :=
  ∀ n, (P3423511538443986523.a n : ℤ) = A142331 (n + 1)

end A142331

/-! ## A142331.P15998155521644987285

`∩[A061237(n+1), A132231(n+1)]`
-/

namespace A142331.P15998155521644987285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142331.P15998155521644987285

namespace A142331

/-- `∩[A061237(n+1), A132231(n+1)]` -/
def P15998155521644987285.Spec : Prop :=
  ∀ n, (P15998155521644987285.a n : ℤ) = A142331 (n + 1)

end A142331

/-! ## A142331.P9097096775264287594

`A000027(p?[A053743(n)-A017365(n)])`
-/

namespace A142331.P9097096775264287594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n - A017365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142331.P9097096775264287594

namespace A142331

/-- `A000027(p?[A053743(n)-A017365(n)])` -/
def P9097096775264287594.Spec : Prop :=
  ∀ n, P9097096775264287594.a n = A142331 (n + 1)

end A142331

/-! ## A142331.P7007956108255606511

`∩[A061237(n+1), A132237(n+1)]`
-/

namespace A142331.P7007956108255606511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142331.P7007956108255606511

namespace A142331

/-- `∩[A061237(n+1), A132237(n+1)]` -/
def P7007956108255606511.Spec : Prop :=
  ∀ n, (P7007956108255606511.a n : ℤ) = A142331 (n + 1)

end A142331

/-! ## A142331.P6257967505691949880

`∩[A045357(n+1), A061237(n+1)]`
-/

namespace A142331.P6257967505691949880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142331.P6257967505691949880

namespace A142331

/-- `∩[A045357(n+1), A061237(n+1)]` -/
def P6257967505691949880.Spec : Prop :=
  ∀ n, (P6257967505691949880.a n : ℤ) = A142331 (n + 1)

end A142331

/-! ## A142331.P13487869117978540105

`∩[A045380(n+1), A061237(n+1)]`
-/

namespace A142331.P13487869117978540105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142331.P13487869117978540105

namespace A142331

/-- `∩[A045380(n+1), A061237(n+1)]` -/
def P13487869117978540105.Spec : Prop :=
  ∀ n, (P13487869117978540105.a n : ℤ) = A142331 (n + 1)

end A142331

/-! ## A142331.P2124712974520338435

`∩[A129805(n+1), A132231(n+1)]`
-/

namespace A142331.P2124712974520338435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142331.P2124712974520338435

namespace A142331

/-- `∩[A129805(n+1), A132231(n+1)]` -/
def P2124712974520338435.Spec : Prop :=
  ∀ n, (P2124712974520338435.a n : ℤ) = A142331 (n + 1)

end A142331

/-! ## A142331.P17542114723509300012

`∩[A061237(n+1), A128471(n)]`
-/

namespace A142331.P17542114723509300012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128471 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142331.P17542114723509300012

namespace A142331

/-- `∩[A061237(n+1), A128471(n)]` -/
def P17542114723509300012.Spec : Prop :=
  ∀ n, (P17542114723509300012.a n : ℤ) = A142331 (n + 1)

end A142331

/-! ## A142331.P3319812083898206751

`∩[A129805(n+1), A128471(n)]`
-/

namespace A142331.P3319812083898206751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128471 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142331.P3319812083898206751

namespace A142331

/-- `∩[A129805(n+1), A128471(n)]` -/
def P3319812083898206751.Spec : Prop :=
  ∀ n, (P3319812083898206751.a n : ℤ) = A142331 (n + 1)

end A142331

/-! ## A142331.P6533164956726422326

`∩[A061237(n+1), A090652(n+1)]`
-/

namespace A142331.P6533164956726422326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142331.P6533164956726422326

namespace A142331

/-- `∩[A061237(n+1), A090652(n+1)]` -/
def P6533164956726422326.Spec : Prop :=
  ∀ n, (P6533164956726422326.a n : ℤ) = A142331 (n + 1)

end A142331

/-! ## A142331.P7243701703444338982

`∩[A030432(n+1), A301617(n+1)]`
-/

namespace A142331.P7243701703444338982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142331.P7243701703444338982

namespace A142331

/-- `∩[A030432(n+1), A301617(n+1)]` -/
def P7243701703444338982.Spec : Prop :=
  ∀ n, (P7243701703444338982.a n : ℤ) = A142331 (n + 1)

end A142331

/-! ## A142331.P13528576357077649003

`∩[A045357(n+1), A301617(n+1)]`
-/

namespace A142331.P13528576357077649003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142331.P13528576357077649003

namespace A142331

/-- `∩[A045357(n+1), A301617(n+1)]` -/
def P13528576357077649003.Spec : Prop :=
  ∀ n, (P13528576357077649003.a n : ℤ) = A142331 (n + 1)

end A142331

/-! ## A142331.P8821052607055271113

`∩[A045380(n+1), A301617(n+1)]`
-/

namespace A142331.P8821052607055271113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142331.P8821052607055271113

namespace A142331

/-- `∩[A045380(n+1), A301617(n+1)]` -/
def P8821052607055271113.Spec : Prop :=
  ∀ n, (P8821052607055271113.a n : ℤ) = A142331 (n + 1)

end A142331

/-! ## A142331.P14021804668170931908

`∩[A132231(n+1), A301617(n+1)]`
-/

namespace A142331.P14021804668170931908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142331.P14021804668170931908

namespace A142331

/-- `∩[A132231(n+1), A301617(n+1)]` -/
def P14021804668170931908.Spec : Prop :=
  ∀ n, (P14021804668170931908.a n : ℤ) = A142331 (n + 1)

end A142331

/-! ## A142331.P18423973071512961149

`∩[A132237(n+1), A301617(n+1)]`
-/

namespace A142331.P18423973071512961149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142331.P18423973071512961149

namespace A142331

/-- `∩[A132237(n+1), A301617(n+1)]` -/
def P18423973071512961149.Spec : Prop :=
  ∀ n, (P18423973071512961149.a n : ℤ) = A142331 (n + 1)

end A142331

/-! ## A142331.P207557689395870337

`∩[A030432(n+1), A161705(n)]`
-/

namespace A142331.P207557689395870337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142331.P207557689395870337

namespace A142331

/-- `∩[A030432(n+1), A161705(n)]` -/
def P207557689395870337.Spec : Prop :=
  ∀ n, (P207557689395870337.a n : ℤ) = A142331 (n + 1)

end A142331

/-! ## A142331.P14193543401601142683

`∩[A045357(n+1), A161705(n)]`
-/

namespace A142331.P14193543401601142683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142331.P14193543401601142683

namespace A142331

/-- `∩[A045357(n+1), A161705(n)]` -/
def P14193543401601142683.Spec : Prop :=
  ∀ n, (P14193543401601142683.a n : ℤ) = A142331 (n + 1)

end A142331

/-! ## A142331.P17294936224608627635

`∩[A045380(n+1), A161705(n)]`
-/

namespace A142331.P17294936224608627635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142331.P17294936224608627635

namespace A142331

/-- `∩[A045380(n+1), A161705(n)]` -/
def P17294936224608627635.Spec : Prop :=
  ∀ n, (P17294936224608627635.a n : ℤ) = A142331 (n + 1)

end A142331

/-!
# A142332: Primes congruent to 38 mod 45.

The programs for A142332, the canonical program `A142332.P10873769994353950579` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142332 has offset 1).

The definition of A142332 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3303 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142332.P10873769994353950579

`p?[45*n-7]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142332

/-- `p?[45*n-7]` -/
def P10873769994353950579.Spec : Prop :=
  ∀ n, P10873769994353950579.a n = A142332 (n + 1)

theorem P10873769994353950579.correct : P10873769994353950579.Spec := by
  intro n
  simp only [A142332, Nat.add_sub_cancel]

end A142332

/-! ## A142332.P6498805562233571147

`∩[A030431(n+1), A061238(n+1)]`
-/

namespace A142332.P6498805562233571147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142332.P6498805562233571147

namespace A142332

/-- `∩[A030431(n+1), A061238(n+1)]` -/
def P6498805562233571147.Spec : Prop :=
  ∀ n, (P6498805562233571147.a n : ℤ) = A142332 (n + 1)

end A142332

/-! ## A142332.P14562478925380609330

`∩[A061238(n+1), A132235(n+1)]`
-/

namespace A142332.P14562478925380609330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132235 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142332.P14562478925380609330

namespace A142332

/-- `∩[A061238(n+1), A132235(n+1)]` -/
def P14562478925380609330.Spec : Prop :=
  ∀ n, (P14562478925380609330.a n : ℤ) = A142332 (n + 1)

end A142332

/-! ## A142332.P2602510635124888024

`∩[A045414(n+1), A061238(n+1)]`
-/

namespace A142332.P2602510635124888024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142332.P2602510635124888024

namespace A142332

/-- `∩[A045414(n+1), A061238(n+1)]` -/
def P2602510635124888024.Spec : Prop :=
  ∀ n, (P2602510635124888024.a n : ℤ) = A142332 (n + 1)

end A142332

/-! ## A142332.P2508995204052272696

`∩[A061238(n+1), A132237(n+1)]`
-/

namespace A142332.P2508995204052272696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142332.P2508995204052272696

namespace A142332

/-- `∩[A061238(n+1), A132237(n+1)]` -/
def P2508995204052272696.Spec : Prop :=
  ∀ n, (P2508995204052272696.a n : ℤ) = A142332 (n + 1)

end A142332

/-! ## A142332.P4607819081530256392

`∩[A129807(n+1), A132235(n+1)]`
-/

namespace A142332.P4607819081530256392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132235 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142332.P4607819081530256392

namespace A142332

/-- `∩[A129807(n+1), A132235(n+1)]` -/
def P4607819081530256392.Spec : Prop :=
  ∀ n, (P4607819081530256392.a n : ℤ) = A142332 (n + 1)

end A142332

/-! ## A142332.P14003006602932261341

`∩[A061238(n+1), A128473(n+1)]`
-/

namespace A142332.P14003006602932261341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142332.P14003006602932261341

namespace A142332

/-- `∩[A061238(n+1), A128473(n+1)]` -/
def P14003006602932261341.Spec : Prop :=
  ∀ n, (P14003006602932261341.a n : ℤ) = A142332 (n + 1)

end A142332

/-! ## A142332.P11957909207487671300

`∩[A128473(n+1), A129807(n+1)]`
-/

namespace A142332.P11957909207487671300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142332.P11957909207487671300

namespace A142332

/-- `∩[A128473(n+1), A129807(n+1)]` -/
def P11957909207487671300.Spec : Prop :=
  ∀ n, (P11957909207487671300.a n : ℤ) = A142332 (n + 1)

end A142332

/-! ## A142332.P3482339750417166714

`∩[A030431(n+1), A301621(n+1)]`
-/

namespace A142332.P3482339750417166714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142332.P3482339750417166714

namespace A142332

/-- `∩[A030431(n+1), A301621(n+1)]` -/
def P3482339750417166714.Spec : Prop :=
  ∀ n, (P3482339750417166714.a n : ℤ) = A142332 (n + 1)

end A142332

/-! ## A142332.P9700835462214419797

`∩[A045414(n+1), A301621(n+1)]`
-/

namespace A142332.P9700835462214419797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142332.P9700835462214419797

namespace A142332

/-- `∩[A045414(n+1), A301621(n+1)]` -/
def P9700835462214419797.Spec : Prop :=
  ∀ n, (P9700835462214419797.a n : ℤ) = A142332 (n + 1)

end A142332

/-! ## A142332.P13519477797249528530

`∩[A132235(n+1), A301621(n+1)]`
-/

namespace A142332.P13519477797249528530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142332.P13519477797249528530

namespace A142332

/-- `∩[A132235(n+1), A301621(n+1)]` -/
def P13519477797249528530.Spec : Prop :=
  ∀ n, (P13519477797249528530.a n : ℤ) = A142332 (n + 1)

end A142332

/-! ## A142332.P605936404777167525

`∩[A132237(n+1), A301621(n+1)]`
-/

namespace A142332.P605936404777167525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142332.P605936404777167525

namespace A142332

/-- `∩[A132237(n+1), A301621(n+1)]` -/
def P605936404777167525.Spec : Prop :=
  ∀ n, (P605936404777167525.a n : ℤ) = A142332 (n + 1)

end A142332

/-! ## A142332.P18394226476562688800

`∩[A004617(n+1), A061238(n+1)]`
-/

namespace A142332.P18394226476562688800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142332.P18394226476562688800

namespace A142332

/-- `∩[A004617(n+1), A061238(n+1)]` -/
def P18394226476562688800.Spec : Prop :=
  ∀ n, (P18394226476562688800.a n : ℤ) = A142332 (n + 1)

end A142332

/-! ## A142332.P15309454943271904364

`∩[A030431(n+1), A063305(n+2)-2]`
-/

namespace A142332.P15309454943271904364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063305 (n + 2) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142332.P15309454943271904364

namespace A142332

/-- `∩[A030431(n+1), A063305(n+2)-2]` -/
def P15309454943271904364.Spec : Prop :=
  ∀ n, (P15309454943271904364.a n : ℤ) = A142332 (n + 1)

end A142332

/-! ## A142332.P2574102458223619822

`∩[A061238(n+1), A164284(n+1)]`
-/

namespace A142332.P2574102458223619822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142332.P2574102458223619822

namespace A142332

/-- `∩[A061238(n+1), A164284(n+1)]` -/
def P2574102458223619822.Spec : Prop :=
  ∀ n, (P2574102458223619822.a n : ℤ) = A142332 (n + 1)

end A142332

/-! ## A142332.P7236463313398013604

`∩[A129807(n+1), A164284(n+1)]`
-/

namespace A142332.P7236463313398013604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142332.P7236463313398013604

namespace A142332

/-- `∩[A129807(n+1), A164284(n+1)]` -/
def P7236463313398013604.Spec : Prop :=
  ∀ n, (P7236463313398013604.a n : ℤ) = A142332 (n + 1)

end A142332

/-! ## A142332.P4735042054278354371

`∩[A030431(n+1), A076206(n+1)]`
-/

namespace A142332.P4735042054278354371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142332.P4735042054278354371

namespace A142332

/-- `∩[A030431(n+1), A076206(n+1)]` -/
def P4735042054278354371.Spec : Prop :=
  ∀ n, (P4735042054278354371.a n : ℤ) = A142332 (n + 1)

end A142332

/-! ## A142332.P12336281640460037698

`∩[A045414(n+1), A076206(n+1)]`
-/

namespace A142332.P12336281640460037698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142332.P12336281640460037698

namespace A142332

/-- `∩[A045414(n+1), A076206(n+1)]` -/
def P12336281640460037698.Spec : Prop :=
  ∀ n, (P12336281640460037698.a n : ℤ) = A142332 (n + 1)

end A142332

/-! ## A142332.P2245381309989548107

`∩[A076206(n+1), A132235(n+1)]`
-/

namespace A142332.P2245381309989548107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132235 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142332.P2245381309989548107

namespace A142332

/-- `∩[A076206(n+1), A132235(n+1)]` -/
def P2245381309989548107.Spec : Prop :=
  ∀ n, (P2245381309989548107.a n : ℤ) = A142332 (n + 1)

end A142332

/-! ## A142332.P6232709083193765513

`∩[A076206(n+1), A132237(n+1)]`
-/

namespace A142332.P6232709083193765513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142332.P6232709083193765513

namespace A142332

/-- `∩[A076206(n+1), A132237(n+1)]` -/
def P6232709083193765513.Spec : Prop :=
  ∀ n, (P6232709083193765513.a n : ℤ) = A142332 (n + 1)

end A142332

/-!
# A142333: Primes congruent to 41 mod 45.

The programs for A142333, the canonical program `A142333.P7726727833732103365` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142333 has offset 1).

The definition of A142333 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3244 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142333.P7726727833732103365

`p?[45*n-4]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142333

/-- `p?[45*n-4]` -/
def P7726727833732103365.Spec : Prop :=
  ∀ n, P7726727833732103365.a n = A142333 (n + 1)

theorem P7726727833732103365.correct : P7726727833732103365.Spec := by
  intro n
  simp only [A142333, Nat.add_sub_cancel]

end A142333

/-! ## A142333.P9247463039088628021

`∩[A030430(n+1), A061240(n+1)]`
-/

namespace A142333.P9247463039088628021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142333.P9247463039088628021

namespace A142333

/-- `∩[A030430(n+1), A061240(n+1)]` -/
def P9247463039088628021.Spec : Prop :=
  ∀ n, (P9247463039088628021.a n : ℤ) = A142333 (n + 1)

end A142333

/-! ## A142333.P8498119488365341806

`∩[A061240(n+1), A132232(n+1)]`
-/

namespace A142333.P8498119488365341806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142333.P8498119488365341806

namespace A142333

/-- `∩[A061240(n+1), A132232(n+1)]` -/
def P8498119488365341806.Spec : Prop :=
  ∀ n, (P8498119488365341806.a n : ℤ) = A142333 (n + 1)

end A142333

/-! ## A142333.P11646577365167948680

`∩[A061240(n+1), A140506(n+1)]`
-/

namespace A142333.P11646577365167948680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142333.P11646577365167948680

namespace A142333

/-- `∩[A061240(n+1), A140506(n+1)]` -/
def P11646577365167948680.Spec : Prop :=
  ∀ n, (P11646577365167948680.a n : ℤ) = A142333 (n + 1)

end A142333

/-! ## A142333.P15833599735325613205

`∩[A061240(n+1), A132238(n+1)]`
-/

namespace A142333.P15833599735325613205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142333.P15833599735325613205

namespace A142333

/-- `∩[A061240(n+1), A132238(n+1)]` -/
def P15833599735325613205.Spec : Prop :=
  ∀ n, (P15833599735325613205.a n : ℤ) = A142333 (n + 1)

end A142333

/-! ## A142333.P5811457566499666568

`∩[A061240(n+1), A090756(n+1)]`
-/

namespace A142333.P5811457566499666568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142333.P5811457566499666568

namespace A142333

/-- `∩[A061240(n+1), A090756(n+1)]` -/
def P5811457566499666568.Spec : Prop :=
  ∀ n, (P5811457566499666568.a n : ℤ) = A142333 (n + 1)

end A142333

/-! ## A142333.P4412304248547762057

`∩[A061240(n+1), A327752(n+1)]`
-/

namespace A142333.P4412304248547762057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142333.P4412304248547762057

namespace A142333

/-- `∩[A061240(n+1), A327752(n+1)]` -/
def P4412304248547762057.Spec : Prop :=
  ∀ n, (P4412304248547762057.a n : ℤ) = A142333 (n + 1)

end A142333

/-! ## A142333.P4792366030010704267

`∩[A129806(n+1), A132232(n+1)]`
-/

namespace A142333.P4792366030010704267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142333.P4792366030010704267

namespace A142333

/-- `∩[A129806(n+1), A132232(n+1)]` -/
def P4792366030010704267.Spec : Prop :=
  ∀ n, (P4792366030010704267.a n : ℤ) = A142333 (n + 1)

end A142333

/-! ## A142333.P4614422008565607515

`∩[A004615(n+1), A061240(n+1)]`
-/

namespace A142333.P4614422008565607515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142333.P4614422008565607515

namespace A142333

/-- `∩[A004615(n+1), A061240(n+1)]` -/
def P4614422008565607515.Spec : Prop :=
  ∀ n, (P4614422008565607515.a n : ℤ) = A142333 (n + 1)

end A142333

/-! ## A142333.P11829304602461058214

`∩[A061240(n+1), A128467(n)]`
-/

namespace A142333.P11829304602461058214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128467 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142333.P11829304602461058214

namespace A142333

/-- `∩[A061240(n+1), A128467(n)]` -/
def P11829304602461058214.Spec : Prop :=
  ∀ n, (P11829304602461058214.a n : ℤ) = A142333 (n + 1)

end A142333

/-! ## A142333.P13682438082350137647

`∩[A129806(n+1), A128467(n)]`
-/

namespace A142333.P13682438082350137647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128467 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142333.P13682438082350137647

namespace A142333

/-- `∩[A129806(n+1), A128467(n)]` -/
def P13682438082350137647.Spec : Prop :=
  ∀ n, (P13682438082350137647.a n : ℤ) = A142333 (n + 1)

end A142333

/-! ## A142333.P17135347277494684795

`∩[A082369(n+1)-2, A129806(n+1)]`
-/

namespace A142333.P17135347277494684795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082369 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142333.P17135347277494684795

namespace A142333

/-- `∩[A082369(n+1)-2, A129806(n+1)]` -/
def P17135347277494684795.Spec : Prop :=
  ∀ n, (P17135347277494684795.a n : ℤ) = A142333 (n + 1)

end A142333

/-! ## A142333.P4087868418711485632

`∩[A030430(n+1), A301623(n+1)]`
-/

namespace A142333.P4087868418711485632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142333.P4087868418711485632

namespace A142333

/-- `∩[A030430(n+1), A301623(n+1)]` -/
def P4087868418711485632.Spec : Prop :=
  ∀ n, (P4087868418711485632.a n : ℤ) = A142333 (n + 1)

end A142333

/-! ## A142333.P11861995791957865779

`∩[A045453(n+1), A301623(n+1)]`
-/

namespace A142333.P11861995791957865779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142333.P11861995791957865779

namespace A142333

/-- `∩[A045453(n+1), A301623(n+1)]` -/
def P11861995791957865779.Spec : Prop :=
  ∀ n, (P11861995791957865779.a n : ℤ) = A142333 (n + 1)

end A142333

/-! ## A142333.P9019735738876039712

`∩[A090756(n+1), A301623(n+1)]`
-/

namespace A142333.P9019735738876039712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142333.P9019735738876039712

namespace A142333

/-- `∩[A090756(n+1), A301623(n+1)]` -/
def P9019735738876039712.Spec : Prop :=
  ∀ n, (P9019735738876039712.a n : ℤ) = A142333 (n + 1)

end A142333

/-! ## A142333.P5374422611620404608

`∩[A132232(n+1), A301623(n+1)]`
-/

namespace A142333.P5374422611620404608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142333.P5374422611620404608

namespace A142333

/-- `∩[A132232(n+1), A301623(n+1)]` -/
def P5374422611620404608.Spec : Prop :=
  ∀ n, (P5374422611620404608.a n : ℤ) = A142333 (n + 1)

end A142333

/-! ## A142333.P10706133926770665195

`∩[A132238(n+1), A301623(n+1)]`
-/

namespace A142333.P10706133926770665195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142333.P10706133926770665195

namespace A142333

/-- `∩[A132238(n+1), A301623(n+1)]` -/
def P10706133926770665195.Spec : Prop :=
  ∀ n, (P10706133926770665195.a n : ℤ) = A142333 (n + 1)

end A142333

/-! ## A142333.P9154051621188567990

`∩[A140506(n+1), A301623(n+1)]`
-/

namespace A142333.P9154051621188567990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142333.P9154051621188567990

namespace A142333

/-- `∩[A140506(n+1), A301623(n+1)]` -/
def P9154051621188567990.Spec : Prop :=
  ∀ n, (P9154051621188567990.a n : ℤ) = A142333 (n + 1)

end A142333

/-! ## A142333.P201939280455847367

`∩[A030430(n+1), A301628(n+1)-2]`
-/

namespace A142333.P201939280455847367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142333.P201939280455847367

namespace A142333

/-- `∩[A030430(n+1), A301628(n+1)-2]` -/
def P201939280455847367.Spec : Prop :=
  ∀ n, (P201939280455847367.a n : ℤ) = A142333 (n + 1)

end A142333

/-! ## A142333.P7097436022007048368

`∩[A090756(n+1), A301628(n+1)-2]`
-/

namespace A142333.P7097436022007048368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142333.P7097436022007048368

namespace A142333

/-- `∩[A090756(n+1), A301628(n+1)-2]` -/
def P7097436022007048368.Spec : Prop :=
  ∀ n, (P7097436022007048368.a n : ℤ) = A142333 (n + 1)

end A142333

/-!
# A142334: Primes congruent to 43 mod 45.

The programs for A142334, the canonical program `A142334.P14791503635872050758` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142334 has offset 1).

The definition of A142334 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3282 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142334.P14791503635872050758

`p?[45*n-2]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142334

/-- `p?[45*n-2]` -/
def P14791503635872050758.Spec : Prop :=
  ∀ n, P14791503635872050758.a n = A142334 (n + 1)

theorem P14791503635872050758.correct : P14791503635872050758.Spec := by
  intro n
  simp only [A142334, Nat.add_sub_cancel]

end A142334

/-! ## A142334.P8663974528853132077

`∩[A030431(n+1), A061241(n+1)]`
-/

namespace A142334.P8663974528853132077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142334.P8663974528853132077

namespace A142334

/-- `∩[A030431(n+1), A061241(n+1)]` -/
def P8663974528853132077.Spec : Prop :=
  ∀ n, (P8663974528853132077.a n : ℤ) = A142334 (n + 1)

end A142334

/-! ## A142334.P9622816715682028992

`∩[A061241(n+1), A132233(n+1)]`
-/

namespace A142334.P9622816715682028992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132233 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142334.P9622816715682028992

namespace A142334

/-- `∩[A061241(n+1), A132233(n+1)]` -/
def P9622816715682028992.Spec : Prop :=
  ∀ n, (P9622816715682028992.a n : ℤ) = A142334 (n + 1)

end A142334

/-! ## A142334.P902899323300462584

`∩[A045414(n+1), A061241(n+1)]`
-/

namespace A142334.P902899323300462584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142334.P902899323300462584

namespace A142334

/-- `∩[A045414(n+1), A061241(n+1)]` -/
def P902899323300462584.Spec : Prop :=
  ∀ n, (P902899323300462584.a n : ℤ) = A142334 (n + 1)

end A142334

/-! ## A142334.P5932342569204088032

`∩[A061241(n+1), A140533(n+1)]`
-/

namespace A142334.P5932342569204088032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142334.P5932342569204088032

namespace A142334

/-- `∩[A061241(n+1), A140533(n+1)]` -/
def P5932342569204088032.Spec : Prop :=
  ∀ n, (P5932342569204088032.a n : ℤ) = A142334 (n + 1)

end A142334

/-! ## A142334.P4009590298269085054

`∩[A061241(n+1), A132238(n+1)]`
-/

namespace A142334.P4009590298269085054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142334.P4009590298269085054

namespace A142334

/-- `∩[A061241(n+1), A132238(n+1)]` -/
def P4009590298269085054.Spec : Prop :=
  ∀ n, (P4009590298269085054.a n : ℤ) = A142334 (n + 1)

end A142334

/-! ## A142334.P14405588619178619341

`∩[A129807(n+1), A132233(n+1)]`
-/

namespace A142334.P14405588619178619341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132233 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142334.P14405588619178619341

namespace A142334

/-- `∩[A129807(n+1), A132233(n+1)]` -/
def P14405588619178619341.Spec : Prop :=
  ∀ n, (P14405588619178619341.a n : ℤ) = A142334 (n + 1)

end A142334

/-! ## A142334.P13308876898543641041

`∩[A061241(n+1), A082369(n+1)]`
-/

namespace A142334.P13308876898543641041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142334.P13308876898543641041

namespace A142334

/-- `∩[A061241(n+1), A082369(n+1)]` -/
def P13308876898543641041.Spec : Prop :=
  ∀ n, (P13308876898543641041.a n : ℤ) = A142334 (n + 1)

end A142334

/-! ## A142334.P2174175994827656787

`∩[A082369(n+1), A129807(n+1)]`
-/

namespace A142334.P2174175994827656787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142334.P2174175994827656787

namespace A142334

/-- `∩[A082369(n+1), A129807(n+1)]` -/
def P2174175994827656787.Spec : Prop :=
  ∀ n, (P2174175994827656787.a n : ℤ) = A142334 (n + 1)

end A142334

/-! ## A142334.P6941609726364360088

`∩[A129807(n+1), A128467(n)+2]`
-/

namespace A142334.P6941609726364360088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128467 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142334.P6941609726364360088

namespace A142334

/-- `∩[A129807(n+1), A128467(n)+2]` -/
def P6941609726364360088.Spec : Prop :=
  ∀ n, (P6941609726364360088.a n : ℤ) = A142334 (n + 1)

end A142334

/-! ## A142334.P13226011768308765366

`∩[A030431(n+1), A301628(n+1)]`
-/

namespace A142334.P13226011768308765366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142334.P13226011768308765366

namespace A142334

/-- `∩[A030431(n+1), A301628(n+1)]` -/
def P13226011768308765366.Spec : Prop :=
  ∀ n, (P13226011768308765366.a n : ℤ) = A142334 (n + 1)

end A142334

/-! ## A142334.P15305826566280611093

`∩[A045414(n+1), A301628(n+1)]`
-/

namespace A142334.P15305826566280611093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142334.P15305826566280611093

namespace A142334

/-- `∩[A045414(n+1), A301628(n+1)]` -/
def P15305826566280611093.Spec : Prop :=
  ∀ n, (P15305826566280611093.a n : ℤ) = A142334 (n + 1)

end A142334

/-! ## A142334.P1943943443302433957

`∩[A132233(n+1), A301628(n+1)]`
-/

namespace A142334.P1943943443302433957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142334.P1943943443302433957

namespace A142334

/-- `∩[A132233(n+1), A301628(n+1)]` -/
def P1943943443302433957.Spec : Prop :=
  ∀ n, (P1943943443302433957.a n : ℤ) = A142334 (n + 1)

end A142334

/-! ## A142334.P4436789000410761312

`∩[A132238(n+1), A301628(n+1)]`
-/

namespace A142334.P4436789000410761312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142334.P4436789000410761312

namespace A142334

/-- `∩[A132238(n+1), A301628(n+1)]` -/
def P4436789000410761312.Spec : Prop :=
  ∀ n, (P4436789000410761312.a n : ℤ) = A142334 (n + 1)

end A142334

/-! ## A142334.P15946229603630229603

`∩[A140533(n+1), A301628(n+1)]`
-/

namespace A142334.P15946229603630229603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142334.P15946229603630229603

namespace A142334

/-- `∩[A140533(n+1), A301628(n+1)]` -/
def P15946229603630229603.Spec : Prop :=
  ∀ n, (P15946229603630229603.a n : ℤ) = A142334 (n + 1)

end A142334

/-! ## A142334.P4795245297756410877

`∩[A030431(n+1), A301623(n+1)+2]`
-/

namespace A142334.P4795245297756410877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301623 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142334.P4795245297756410877

namespace A142334

/-- `∩[A030431(n+1), A301623(n+1)+2]` -/
def P4795245297756410877.Spec : Prop :=
  ∀ n, (P4795245297756410877.a n : ℤ) = A142334 (n + 1)

end A142334

/-! ## A142334.P16085729085317360086

`∩[A045414(n+1), A301623(n+1)+2]`
-/

namespace A142334.P16085729085317360086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301623 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142334.P16085729085317360086

namespace A142334

/-- `∩[A045414(n+1), A301623(n+1)+2]` -/
def P16085729085317360086.Spec : Prop :=
  ∀ n, (P16085729085317360086.a n : ℤ) = A142334 (n + 1)

end A142334

/-! ## A142334.P12618353753610072585

`∩[A132238(n+1), A301623(n+1)+2]`
-/

namespace A142334.P12618353753610072585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301623 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142334.P12618353753610072585

namespace A142334

/-- `∩[A132238(n+1), A301623(n+1)+2]` -/
def P12618353753610072585.Spec : Prop :=
  ∀ n, (P12618353753610072585.a n : ℤ) = A142334 (n + 1)

end A142334

/-! ## A142334.P9491664526891253311

`∩[A140533(n+1), A301623(n+1)+2]`
-/

namespace A142334.P9491664526891253311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301623 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142334.P9491664526891253311

namespace A142334

/-- `∩[A140533(n+1), A301623(n+1)+2]` -/
def P9491664526891253311.Spec : Prop :=
  ∀ n, (P9491664526891253311.a n : ℤ) = A142334 (n + 1)

end A142334

/-! ## A142334.P8709439743504839475

`∩[A078403(n+1), A082369(n+1)]`
-/

namespace A142334.P8709439743504839475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142334.P8709439743504839475

namespace A142334

/-- `∩[A078403(n+1), A082369(n+1)]` -/
def P8709439743504839475.Spec : Prop :=
  ∀ n, (P8709439743504839475.a n : ℤ) = A142334 (n + 1)

end A142334

/-!
# A142335: Primes congruent to 44 mod 45.

The programs for A142335, the canonical program `A142335.P11028733541637049095` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142335 has offset 1).

The definition of A142335 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3280 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142335.P11028733541637049095

`p?[45*n-1]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142335

/-- `p?[45*n-1]` -/
def P11028733541637049095.Spec : Prop :=
  ∀ n, P11028733541637049095.a n = A142335 (n + 1)

theorem P11028733541637049095.correct : P11028733541637049095.Spec := by
  intro n
  simp only [A142335, Nat.add_sub_cancel]

end A142335

/-! ## A142335.P11776321454705800999

`or(1, p?[5*9*n+44])`
-/

namespace A142335.P11776321454705800999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (9 * n) + 44

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142335.P11776321454705800999

namespace A142335

/-- `or(1, p?[5*9*n+44])` -/
def P11776321454705800999.Spec : Prop :=
  ∀ n, (P11776321454705800999.a n : ℤ) = A142335 (n + 1)

end A142335

/-! ## A142335.P16591515005690283758

`∩[A030433(n+1), A061242(n+1)]`
-/

namespace A142335.P16591515005690283758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142335.P16591515005690283758

namespace A142335

/-- `∩[A030433(n+1), A061242(n+1)]` -/
def P16591515005690283758.Spec : Prop :=
  ∀ n, (P16591515005690283758.a n : ℤ) = A142335 (n + 1)

end A142335

/-! ## A142335.P7940718382650208066

`∩[A061242(n+1), A132236(n+1)]`
-/

namespace A142335.P7940718382650208066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142335.P7940718382650208066

namespace A142335

/-- `∩[A061242(n+1), A132236(n+1)]` -/
def P7940718382650208066.Spec : Prop :=
  ∀ n, (P7940718382650208066.a n : ℤ) = A142335 (n + 1)

end A142335

/-! ## A142335.P6537328788355036711

`∩[A045457(n+1), A061242(n+1)]`
-/

namespace A142335.P6537328788355036711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142335.P6537328788355036711

namespace A142335

/-- `∩[A045457(n+1), A061242(n+1)]` -/
def P6537328788355036711.Spec : Prop :=
  ∀ n, (P6537328788355036711.a n : ℤ) = A142335 (n + 1)

end A142335

/-! ## A142335.P12808242665737123917

`∩[A061242(n+1), A132240(n+1)]`
-/

namespace A142335.P12808242665737123917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142335.P12808242665737123917

namespace A142335

/-- `∩[A061242(n+1), A132240(n+1)]` -/
def P12808242665737123917.Spec : Prop :=
  ∀ n, (P12808242665737123917.a n : ℤ) = A142335 (n + 1)

end A142335

/-! ## A142335.P2291000476414548145

`∩[A061242(n+1), A327753(n+1)]`
-/

namespace A142335.P2291000476414548145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142335.P2291000476414548145

namespace A142335

/-- `∩[A061242(n+1), A327753(n+1)]` -/
def P2291000476414548145.Spec : Prop :=
  ∀ n, (P2291000476414548145.a n : ℤ) = A142335 (n + 1)

end A142335

/-! ## A142335.P10769550559362197631

`∩[A004618(n+1), A061242(n+1)]`
-/

namespace A142335.P10769550559362197631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142335.P10769550559362197631

namespace A142335

/-- `∩[A004618(n+1), A061242(n+1)]` -/
def P10769550559362197631.Spec : Prop :=
  ∀ n, (P10769550559362197631.a n : ℤ) = A142335 (n + 1)

end A142335

/-! ## A142335.P7382102198984976502

`∩[A129805(n+1), A132236(n+1)]`
-/

namespace A142335.P7382102198984976502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142335.P7382102198984976502

namespace A142335

/-- `∩[A129805(n+1), A132236(n+1)]` -/
def P7382102198984976502.Spec : Prop :=
  ∀ n, (P7382102198984976502.a n : ℤ) = A142335 (n + 1)

end A142335

/-! ## A142335.P12871734362163204548

`∩[A129805(n+1), A128470(n)-2]`
-/

namespace A142335.P12871734362163204548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142335.P12871734362163204548

namespace A142335

/-- `∩[A129805(n+1), A128470(n)-2]` -/
def P12871734362163204548.Spec : Prop :=
  ∀ n, (P12871734362163204548.a n : ℤ) = A142335 (n + 1)

end A142335

/-! ## A142335.P17887792293727398818

`∩[A030433(n+1), A295869(n+1)]`
-/

namespace A142335.P17887792293727398818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142335.P17887792293727398818

namespace A142335

/-- `∩[A030433(n+1), A295869(n+1)]` -/
def P17887792293727398818.Spec : Prop :=
  ∀ n, (P17887792293727398818.a n : ℤ) = A142335 (n + 1)

end A142335

/-! ## A142335.P914444554874984503

`∩[A045457(n+1), A295869(n+1)]`
-/

namespace A142335.P914444554874984503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142335.P914444554874984503

namespace A142335

/-- `∩[A045457(n+1), A295869(n+1)]` -/
def P914444554874984503.Spec : Prop :=
  ∀ n, (P914444554874984503.a n : ℤ) = A142335 (n + 1)

end A142335

/-! ## A142335.P87207253251858284

`∩[A132236(n+1), A295869(n+1)]`
-/

namespace A142335.P87207253251858284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142335.P87207253251858284

namespace A142335

/-- `∩[A132236(n+1), A295869(n+1)]` -/
def P87207253251858284.Spec : Prop :=
  ∀ n, (P87207253251858284.a n : ℤ) = A142335 (n + 1)

end A142335

/-! ## A142335.P2013464984490047602

`∩[A132240(n+1), A295869(n+1)]`
-/

namespace A142335.P2013464984490047602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142335.P2013464984490047602

namespace A142335

/-- `∩[A132240(n+1), A295869(n+1)]` -/
def P2013464984490047602.Spec : Prop :=
  ∀ n, (P2013464984490047602.a n : ℤ) = A142335 (n + 1)

end A142335

/-! ## A142335.P3155152711920016268

`∩[A030433(n+1), A301617(n+1)-2]`
-/

namespace A142335.P3155152711920016268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301617 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142335.P3155152711920016268

namespace A142335

/-- `∩[A030433(n+1), A301617(n+1)-2]` -/
def P3155152711920016268.Spec : Prop :=
  ∀ n, (P3155152711920016268.a n : ℤ) = A142335 (n + 1)

end A142335

/-! ## A142335.P6513046773907683484

`∩[A045457(n+1), A301617(n+1)-2]`
-/

namespace A142335.P6513046773907683484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301617 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142335.P6513046773907683484

namespace A142335

/-- `∩[A045457(n+1), A301617(n+1)-2]` -/
def P6513046773907683484.Spec : Prop :=
  ∀ n, (P6513046773907683484.a n : ℤ) = A142335 (n + 1)

end A142335

/-! ## A142335.P3602463029565471550

`∩[A132240(n+1), A301617(n+1)-2]`
-/

namespace A142335.P3602463029565471550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301617 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142335.P3602463029565471550

namespace A142335

/-- `∩[A132240(n+1), A301617(n+1)-2]` -/
def P3602463029565471550.Spec : Prop :=
  ∀ n, (P3602463029565471550.a n : ℤ) = A142335 (n + 1)

end A142335

/-! ## A142335.P14996012744128662473

`∩[A030433(n+1), A239129(n+1)]`
-/

namespace A142335.P14996012744128662473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142335.P14996012744128662473

namespace A142335

/-- `∩[A030433(n+1), A239129(n+1)]` -/
def P14996012744128662473.Spec : Prop :=
  ∀ n, (P14996012744128662473.a n : ℤ) = A142335 (n + 1)

end A142335

/-!
# A142337: Numbers m such that Sum_{i=1..m} sigma(i) is prime.

The programs for A142337, there is no canonical definition to state claims against.
-/

/-! ## A142337.P16817035986379860373

`eq[4, A323161(A160664(n))]`
-/

namespace A142337.P16817035986379860373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323161 (A160664 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A142337.P16817035986379860373

/-! ## A142337.P2000152540344115625

`A185283(p?[A024916(n+1)])`
-/

namespace A142337.P2000152540344115625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142337.P2000152540344115625

/-! ## A142337.P12035410556142420283

`A185283(p?[A160664(n)-1])`
-/

namespace A142337.P12035410556142420283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142337.P12035410556142420283

/-!
# A142339: Primes of the form (p(2*n)-p(n))/2, where p(n)=n-th prime.

The programs for A142339, the canonical program `A142339.P3986988199601511842` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142339 has offset 1).

The definition of A142339 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 677 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142339.P656278039698970309

`p?[A258934(n+2)]`
-/

namespace A142339.P656278039698970309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258934 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142339.P656278039698970309

namespace A142339

/-- `p?[A258934(n+2)]` -/
def P656278039698970309.Spec : Prop :=
  ∀ n, P656278039698970309.a n = A142339 (n + 1)

end A142339

/-! ## A142339.P3986988199601511842

`p?[A087461(n+2)-A000040(n+2)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A142339

/-- `p?[A087461(n+2)-A000040(n+2)]` -/
def P3986988199601511842.Spec : Prop :=
  ∀ n, P3986988199601511842.a n = A142339 (n + 1)

theorem P3986988199601511842.correct : P3986988199601511842.Spec := by
  intro n
  simp only [A142339, Nat.add_sub_cancel]

end A142339

/-! ## A142339.P12937286450878708643

`p?[A004525(A072473(n+1))]`
-/

namespace A142339.P12937286450878708643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A072473 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142339.P12937286450878708643

namespace A142339

/-- `p?[A004525(A072473(n+1))]` -/
def P12937286450878708643.Spec : Prop :=
  ∀ n, P12937286450878708643.a n = A142339 (n + 1)

end A142339

/-! ## A142339.P8012061160838995472

`p?[A174571(2*A072473(n+1))]`
-/

namespace A142339.P8012061160838995472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (2 * A072473 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142339.P8012061160838995472

namespace A142339

/-- `p?[A174571(2*A072473(n+1))]` -/
def P8012061160838995472.Spec : Prop :=
  ∀ n, P8012061160838995472.a n = A142339 (n + 1)

end A142339

/-!
# A142342: a(n) = 10*prime(n).

The programs for A142342, the canonical program `A142342.P5141650117013135676` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142342 has offset 1).

The definition of A142342 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*A000040(n+1)` (program `A142342.P5141650117013135676`, by `A142342.P5141650117013135676.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142342.P5141650117013135676

`10*A000040(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A142342

/-- `10*A000040(n+1)` -/
def P5141650117013135676.Spec : Prop :=
  ∀ n, P5141650117013135676.a n = A142342 (n + 1)

theorem P5141650117013135676.correct : P5141650117013135676.Spec := by
  intro n
  simp only [A142342, Nat.add_sub_cancel]

end A142342

/-! ## A142342.P7519190429609620477

`Δ[10*A007504(n)]`
-/

namespace A142342.P7519190429609620477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A142342.P7519190429609620477

namespace A142342

/-- `Δ[10*A007504(n)]` -/
def P7519190429609620477.Spec : Prop :=
  ∀ n, P7519190429609620477.a n = A142342 (n + 1)

end A142342

/-! ## A142342.P2788825699773340349

`2*A001750(n+1)`
-/

namespace A142342.P2788825699773340349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001750 (n + 1)

end

end A142342.P2788825699773340349

namespace A142342

/-- `2*A001750(n+1)` -/
def P2788825699773340349.Spec : Prop :=
  ∀ n, P2788825699773340349.a n = A142342 (n + 1)

theorem P2788825699773340349.correct : P2788825699773340349.Spec := by
  intro n
  simp only [A142342, Nat.add_sub_cancel, A142342.P2788825699773340349.a, A142342.P5141650117013135676.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001750, A001750.P4133817528224649628.f1, A001750.P4133817528224649628.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A142342

/-! ## A142342.P11001385767516970309

`5*A100484(1+n)`
-/

namespace A142342.P11001385767516970309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A100484 (1 + n)

end

end A142342.P11001385767516970309

namespace A142342

/-- `5*A100484(1+n)` -/
def P11001385767516970309.Spec : Prop :=
  ∀ n, P11001385767516970309.a n = A142342 (n + 1)

end A142342

/-! ## A142342.P3229465074607196699

`abs(Δ[10*A008348(n)])`
-/

namespace A142342.P3229465074607196699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A142342.P3229465074607196699

namespace A142342

/-- `abs(Δ[10*A008348(n)])` -/
def P3229465074607196699.Spec : Prop :=
  ∀ n, P3229465074607196699.a n = A142342 (n + 1)

end A142342

/-! ## A142342.P14358129431029663212

`abs(Δ[10*A022837(n)])`
-/

namespace A142342.P14358129431029663212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A142342.P14358129431029663212

namespace A142342

/-- `abs(Δ[10*A022837(n)])` -/
def P14358129431029663212.Spec : Prop :=
  ∀ n, P14358129431029663212.a n = A142342 (n + 1)

end A142342

/-! ## A142342.P3623078005011998433

`5*sqrt(A069262(n+1))`
-/

namespace A142342.P3623078005011998433
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  5 * Real.sqrt (A069262 (n + 1) : ℝ)

end

end A142342.P3623078005011998433

namespace A142342

/-- `5*sqrt(A069262(n+1))` -/
def P3623078005011998433.Spec : Prop :=
  ∀ n, P3623078005011998433.a n = (A142342 (n + 1) : ℝ)

end A142342

/-! ## A142342.P6751063418457685660

`5*(A037168(n+1)+2)`
-/

namespace A142342.P6751063418457685660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A037168 (n + 1) + 2)

end

end A142342.P6751063418457685660

namespace A142342

/-- `5*(A037168(n+1)+2)` -/
def P6751063418457685660.Spec : Prop :=
  ∀ n, P6751063418457685660.a n = A142342 (n + 1)

theorem P6751063418457685660.correct : P6751063418457685660.Spec := by
  intro n
  simp only [A142342, Nat.add_sub_cancel, A142342.P6751063418457685660.a, A142342.P5141650117013135676.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A037168, A037168.P225285487484933431.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A142342

/-! ## A142342.P10904829079701337562

`5*(A072055(n+1)-1)`
-/

namespace A142342.P10904829079701337562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A072055 (n + 1) - 1)

end

end A142342.P10904829079701337562

namespace A142342

/-- `5*(A072055(n+1)-1)` -/
def P10904829079701337562.Spec : Prop :=
  ∀ n, P10904829079701337562.a n = A142342 (n + 1)

theorem P10904829079701337562.correct : P10904829079701337562.Spec := by
  intro n
  simp only [A142342, Nat.add_sub_cancel, A142342.P10904829079701337562.a, A142342.P5141650117013135676.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A072055, A072055.P8252801676711237860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A142342

/-! ## A142342.P4630309149182118093

`5*(A089241(n+1)-2)`
-/

namespace A142342.P4630309149182118093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A089241 (n + 1) - 2)

end

end A142342.P4630309149182118093

namespace A142342

/-- `5*(A089241(n+1)-2)` -/
def P4630309149182118093.Spec : Prop :=
  ∀ n, P4630309149182118093.a n = A142342 (n + 1)

theorem P4630309149182118093.correct : P4630309149182118093.Spec := by
  intro n
  simp only [A142342, Nat.add_sub_cancel, A142342.P4630309149182118093.a, A142342.P5141650117013135676.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A089241, A089241.P14705987553220613803.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A142342

/-! ## A142342.P13529666140384362563

`5*(A131426(n+1)+3)`
-/

namespace A142342.P13529666140384362563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A131426 (n + 1) + 3)

end

end A142342.P13529666140384362563

namespace A142342

/-- `5*(A131426(n+1)+3)` -/
def P13529666140384362563.Spec : Prop :=
  ∀ n, P13529666140384362563.a n = A142342 (n + 1)

theorem P13529666140384362563.correct : P13529666140384362563.Spec := by
  intro n
  simp only [A142342, Nat.add_sub_cancel, A142342.P13529666140384362563.a, A142342.P5141650117013135676.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A131426, A131426.P1992533446428371945.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A142342

/-! ## A142342.P9369053564476547773

`5*(A129069(n+1)-3)`
-/

namespace A142342.P9369053564476547773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A129069 (n + 1) - 3)

end

end A142342.P9369053564476547773

namespace A142342

/-- `5*(A129069(n+1)-3)` -/
def P9369053564476547773.Spec : Prop :=
  ∀ n, P9369053564476547773.a n = A142342 (n + 1)

theorem P9369053564476547773.correct : P9369053564476547773.Spec := by
  intro n
  simp only [A142342, Nat.add_sub_cancel, A142342.P9369053564476547773.a, A142342.P5141650117013135676.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A129069, A129069.P1730810587281407252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A142342

/-! ## A142342.P15733253805233678744

`5*(A140777(n+1)+4)`
-/

namespace A142342.P15733253805233678744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A140777 (n + 1) + 4)

end

end A142342.P15733253805233678744

namespace A142342

/-- `5*(A140777(n+1)+4)` -/
def P15733253805233678744.Spec : Prop :=
  ∀ n, P15733253805233678744.a n = A142342 (n + 1)

theorem P15733253805233678744.correct : P15733253805233678744.Spec := by
  intro n
  simp only [A142342, Nat.add_sub_cancel, A142342.P15733253805233678744.a, A142342.P5141650117013135676.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A140777, A140777.P12433789027448162273.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A142342

/-! ## A142342.P1365802359032322837

`5/2*A001749(n+1)`
-/

namespace A142342.P1365802359032322837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 2 * (A001749 (n + 1) : ℚ)

end

end A142342.P1365802359032322837

namespace A142342

/-- `5/2*A001749(n+1)` -/
def P1365802359032322837.Spec : Prop :=
  ∀ n, P1365802359032322837.a n = (A142342 (n + 1) : ℚ)

theorem P1365802359032322837.correct : P1365802359032322837.Spec := by
  intro n
  simp only [A142342, Nat.add_sub_cancel, A142342.P1365802359032322837.a, A142342.P5141650117013135676.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001749, A001749.P16106244962881767471.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A142342

/-! ## A142342.P12479994142085704070

`5/3*A138636(n+1)`
-/

namespace A142342.P12479994142085704070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 3 * (A138636 (n + 1) : ℚ)

end

end A142342.P12479994142085704070

namespace A142342

/-- `5/3*A138636(n+1)` -/
def P12479994142085704070.Spec : Prop :=
  ∀ n, P12479994142085704070.a n = (A142342 (n + 1) : ℚ)

theorem P12479994142085704070.correct : P12479994142085704070.Spec := by
  intro n
  simp only [A142342, Nat.add_sub_cancel, A142342.P12479994142085704070.a, A142342.P5141650117013135676.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A138636, A138636.P18275506092715506513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A142342

/-! ## A142342.P9686381808898640026

`5*(A134591(n+1)+n+1)`
-/

namespace A142342.P9686381808898640026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A134591 (n + 1) + (n + 1 : ℤ))

end

end A142342.P9686381808898640026

namespace A142342

/-- `5*(A134591(n+1)+n+1)` -/
def P9686381808898640026.Spec : Prop :=
  ∀ n, P9686381808898640026.a n = A142342 (n + 1)

theorem P9686381808898640026.correct : P9686381808898640026.Spec := by
  intro n
  simp only [A142342, Nat.add_sub_cancel, A142342.P9686381808898640026.a, A142342.P5141650117013135676.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A134591, A134591.P13784663667261059065.a, A014689, A014689.P6286543075765329050.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A142342

/-! ## A142342.P841925851163430017

`2*5*A000040(2*n-(n-1))`
-/

namespace A142342.P841925851163430017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (5 * A000040 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat)

end

end A142342.P841925851163430017

namespace A142342

/-- `2*5*A000040(2*n-(n-1))` -/
def P841925851163430017.Spec : Prop :=
  ∀ n, P841925851163430017.a n = A142342 (n + 1)

end A142342

/-! ## A142342.P16951399388721680010

`A138636(n+1)+A001749(n+1)`
-/

namespace A142342.P16951399388721680010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138636 (n + 1) + A001749 (n + 1)

end

end A142342.P16951399388721680010

namespace A142342

/-- `A138636(n+1)+A001749(n+1)` -/
def P16951399388721680010.Spec : Prop :=
  ∀ n, P16951399388721680010.a n = A142342 (n + 1)

theorem P16951399388721680010.correct : P16951399388721680010.Spec := by
  intro n
  simp only [A142342, Nat.add_sub_cancel, A142342.P16951399388721680010.a, A142342.P5141650117013135676.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001749, A001749.P16106244962881767471.a, A138636, A138636.P18275506092715506513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A142342

/-! ## A142342.P17012205034874216216

`A272470(n+1)+A001748(n+1)`
-/

namespace A142342.P17012205034874216216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272470 (n + 1) + A001748 (n + 1)

end

end A142342.P17012205034874216216

namespace A142342

/-- `A272470(n+1)+A001748(n+1)` -/
def P17012205034874216216.Spec : Prop :=
  ∀ n, P17012205034874216216.a n = A142342 (n + 1)

theorem P17012205034874216216.correct : P17012205034874216216.Spec := by
  intro n
  simp only [A142342, Nat.add_sub_cancel, A142342.P17012205034874216216.a, A142342.P5141650117013135676.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001748, A001748.P16019639290970068825.a, A272470, A272470.P18354335613044509669.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A142342

/-!
# A142343: Primes of the form (p(n)+r(n))/5, where p(n)=n-th prime and r(n)=n-th nonprime.

The programs for A142343, there is no canonical definition to state claims against.
-/

/-! ## A142343.P16757745312364504523

`p?[A330072(3*n+1)-A330038(n+5)]`
-/

namespace A142343.P16757745312364504523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330072 (3 * n + 1) - A330038 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142343.P16757745312364504523

/-! ## A142343.P18168174714848631967

`A000040(record[A271984(2*(n+1))%A272082(3*n+5)])`
-/

namespace A142343.P18168174714848631967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271984 (2 * (n + 1))) (A272082 (3 * n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A142343.P18168174714848631967

/-!
# A142344: Primes congruent to 25 mod 46.

The programs for A142344, there is no canonical definition to state claims against.
-/

/-! ## A142344.P5239534364786554789

`A141908(n+2)`
-/

namespace A142344.P5239534364786554789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141908 (n + 2)

end

end A142344.P5239534364786554789

/-! ## A142344.P361718470814973167

`p?[23*n+25]`
-/

namespace A142344.P361718470814973167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23 * n + 25

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142344.P361718470814973167

/-! ## A142344.P3096345209837182000

`record[A141908(A133310(A057979(n)))]`
-/

namespace A142344.P3096345209837182000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141908 (A133310 (A057979 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142344.P3096345209837182000

/-! ## A142344.P12026366655250365246

`record[A141908(A133310(A008611(n)))]`
-/

namespace A142344.P12026366655250365246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141908 (A133310 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142344.P12026366655250365246

/-! ## A142344.P2489034669695836260

`∩[A215148(n+1)+1, A191021(n+2)]`
-/

namespace A142344.P2489034669695836260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191021 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142344.P2489034669695836260

/-! ## A142344.P14764156837962414856

`∩[A215148(n+1)+1, A296932(n+2)]`
-/

namespace A142344.P14764156837962414856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296932 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142344.P14764156837962414856

/-! ## A142344.P3023438705195279517

`∩[A004139(n+1), A215148(n)+1]`
-/

namespace A142344.P3023438705195279517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142344.P3023438705195279517

/-! ## A142344.P7555226934041801347

`∩[A065091(n+1), A215148(n)+1]`
-/

namespace A142344.P7555226934041801347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142344.P7555226934041801347

/-! ## A142344.P5460588590013430948

`∩[A065396(n+1), A215148(n)+1]`
-/

namespace A142344.P5460588590013430948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142344.P5460588590013430948

/-! ## A142344.P2906752306069624099

`∩[A215148(n+1)+1, A000040(n+2)]`
-/

namespace A142344.P2906752306069624099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142344.P2906752306069624099

/-! ## A142344.P6796201877104727129

`∩[A215148(n+1)+1, A045319(n+2)]`
-/

namespace A142344.P6796201877104727129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142344.P6796201877104727129

/-! ## A142344.P2387173133135743297

`∩[A215148(n+1)+1, A045344(n+2)]`
-/

namespace A142344.P2387173133135743297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142344.P2387173133135743297

/-! ## A142344.P3731566022605064693

`∩[A215148(n+1)+1, A051948(n+2)]`
-/

namespace A142344.P3731566022605064693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142344.P3731566022605064693

/-! ## A142344.P11059414210556727922

`∩[A215148(n+1)+1, A053813(n+2)]`
-/

namespace A142344.P11059414210556727922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142344.P11059414210556727922

/-! ## A142344.P15153188647255078806

`∩[A140716(2*(n+1))-n, A000040(n+2)]`
-/

namespace A142344.P15153188647255078806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140716 (2 * (n + 1)) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142344.P15153188647255078806

/-! ## A142344.P16567511427133210117

`record[A006530(23*(2*n+3)+2)]`
-/

namespace A142344.P16567511427133210117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (23 * (2 * n + 3) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142344.P16567511427133210117

/-! ## A142344.P10700282871756487209

`∩[A191021(n+1), A310509(n)]`
-/

namespace A142344.P10700282871756487209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310509 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142344.P10700282871756487209

/-! ## A142344.P13685166588250941300

`∩[A296932(n+1), A310509(n)]`
-/

namespace A142344.P13685166588250941300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310509 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142344.P13685166588250941300

/-!
# A142345: Primes of the form (p(n)+r(n))/3, where p(n) = n-th prime and r(n) = n-th nonprime.

The programs for A142345, there is no canonical definition to state claims against.
-/

/-! ## A142345.P8931381635014756610

`p?[A135997(A022797(n+1)+A001223(n+1))]`
-/

namespace A142345.P8931381635014756610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A022797 (n + 1) + A001223 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142345.P8931381635014756610

/-! ## A142345.P12413275882217023328

`p?[A135997(A001043(n+1)-A014237(n+1))]`
-/

namespace A142345.P12413275882217023328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A001043 (n + 1) - A014237 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142345.P12413275882217023328

/-!
# A142346: Primes of the form (p(n)+r(n))/2, where p(n)=n-th prime and r(n)=n-th nonprime.

The programs for A142346, there is no canonical definition to state claims against.
-/

/-! ## A142346.P2690765130309144992

`p?[A001057(A060462(n+1)+A045344(n+1))]`
-/

namespace A142346.P2690765130309144992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A060462 (n + 1) + A045344 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142346.P2690765130309144992

/-! ## A142346.P6482450391760610440

`p?[A001057(A141468(n+1)+A006093(n+1))]`
-/

namespace A142346.P6482450391760610440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A141468 (n + 1) + A006093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142346.P6482450391760610440

/-! ## A142346.P13323034968713583712

`p?[A057979(A141468(n+1)+A008864(n+1))]`
-/

namespace A142346.P13323034968713583712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A141468 (n + 1) + A008864 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142346.P13323034968713583712

/-! ## A142346.P18220759345310606226

`p?[A004524(A163976(n+1)+A141468(n+1))]`
-/

namespace A142346.P18220759345310606226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A163976 (n + 1) + A141468 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142346.P18220759345310606226

/-! ## A142346.P2326472542677879254

`p?[A001281(A001043(n+1)-A014237(n+1))]`
-/

namespace A142346.P2326472542677879254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A001043 (n + 1) - A014237 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142346.P2326472542677879254

/-!
# A142348: Primes of the form (p(n)+r(n)), where p(n)=n-th prime and r(n)=n-th nonprime.

The programs for A142348, the canonical program `A142348.P7541731852378196357` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142348 has offset 1).

The definition of A142348 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142348.P7541731852378196357

`p?[A141468(n+1)+p?[xor(1, n)+1]]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A142348

/-- `p?[A141468(n+1)+p?[xor(1, n)+1]]` -/
def P7541731852378196357.Spec : Prop :=
  ∀ n, P7541731852378196357.a n = A142348 (n + 1)

theorem P7541731852378196357.correct : P7541731852378196357.Spec := by
  intro n
  simp only [A142348, Nat.add_sub_cancel]

end A142348

/-! ## A142348.P3324466436758232765

`p?[A141468(n+1)+p?[A014681(n)]]`
-/

namespace A142348.P3324466436758232765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1) + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142348.P3324466436758232765

namespace A142348

/-- `p?[A141468(n+1)+p?[A014681(n)]]` -/
def P3324466436758232765.Spec : Prop :=
  ∀ n, P3324466436758232765.a n = A142348 (n + 1)

end A142348

/-! ## A142348.P934599881138120718

`p?[p?[A137661(n+1)]+n]`
-/

namespace A142348.P934599881138120718
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137661 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142348.P934599881138120718

namespace A142348

/-- `p?[p?[A137661(n+1)]+n]` -/
def P934599881138120718.Spec : Prop :=
  ∀ n, P934599881138120718.a n = A142348 (n + 1)

end A142348

/-! ## A142348.P8448727969577418630

`p?[A141468(n+1)+p?[A001057(n)]]`
-/

namespace A142348.P8448727969577418630
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1) + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142348.P8448727969577418630

namespace A142348

/-- `p?[A141468(n+1)+p?[A001057(n)]]` -/
def P8448727969577418630.Spec : Prop :=
  ∀ n, P8448727969577418630.a n = A142348 (n + 1)

end A142348

/-! ## A142348.P3083295161934921617

`p?[A141468(n+1)+p?[A006370(n)]]`
-/

namespace A142348.P3083295161934921617
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1) + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142348.P3083295161934921617

namespace A142348

/-- `p?[A141468(n+1)+p?[A006370(n)]]` -/
def P3083295161934921617.Spec : Prop :=
  ∀ n, P3083295161934921617.a n = A142348 (n + 1)

end A142348

/-!
# A142354: A triangular sequence "representation" of the modulo 10 Integer field: t(+)(n,m)=Mod[n + m, 10]; t(x)(n,m)=Mod[n*m, 10]; t(n,m)=Mod[t(=)(n,m)*t(X)(n,m),10].

The programs for A142354, there is no canonical definition to state claims against.
-/

/-! ## A142354.P18421985464801053236

`(A051162(n)*A079904(n))%10`
-/

namespace A142354.P18421985464801053236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051162 n * A079904 n) 10

end

end A142354.P18421985464801053236

/-! ## A142354.P4480802076598389876

`((A144204(n+1)+1)*A051162(n))%10`
-/

namespace A142354.P4480802076598389876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A144204 (n + 1) + 1) * A051162 n) 10

end

end A142354.P4480802076598389876

/-! ## A142354.P7943336486436293729

`A010879(A051162(n)*A079904(n))`
-/

namespace A142354.P7943336486436293729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A051162 n * A079904 n).toNat

end

end A142354.P7943336486436293729

/-! ## A142354.P11846420417728755590

`A010879((A144204(n+1)+1)*A051162(n))`
-/

namespace A142354.P11846420417728755590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 ((A144204 (n + 1) + 1) * A051162 n).toNat

end

end A142354.P11846420417728755590

/-! ## A142354.P7960424435144191093

`A010879((A076110(n+1)-1)*A051162(n))`
-/

namespace A142354.P7960424435144191093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 ((A076110 (n + 1) - 1) * A051162 n).toNat

end

end A142354.P7960424435144191093

/-! ## A142354.P16535271167895194847

`A010879((A069011(n)-A073254(n))*A051162(n))`
-/

namespace A142354.P16535271167895194847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 ((A069011 n - A073254 n) * A051162 n).toNat

end

end A142354.P16535271167895194847

/-! ## A142354.P12609025703079413989

`A010879(A002262(n)*A003056(n)*A051162(n))`
-/

namespace A142354.P12609025703079413989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A002262 n * A003056 n * A051162 n).toNat

end

end A142354.P12609025703079413989

/-! ## A142354.P13127005796950789416

`A010879((A004247(n)+A002262(n)²)*A051162(n))`
-/

namespace A142354.P13127005796950789416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 ((A004247 n + A002262 n ^ 2) * A051162 n).toNat

end

end A142354.P13127005796950789416

/-! ## A142354.P2490455293956473421

`A010879((n-A057944(n))*A003056(n)*A051162(n))`
-/

namespace A142354.P2490455293956473421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (((n : ℤ) - A057944 n) * A003056 n * A051162 n).toNat

end

end A142354.P2490455293956473421

/-! ## A142354.P17688822136932911483

`A010879((A002262(n)²+A077028(n)-1)*A051162(n))`
-/

namespace A142354.P17688822136932911483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 ((A002262 n ^ 2 + (A077028 n - 1)) * A051162 n).toNat

end

end A142354.P17688822136932911483

/-!
# A142355: Primes congruent to 2 mod 47.

The programs for A142355, the canonical program `A142355.P15778158199979336971` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142355 has offset 1).

The definition of A142355 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1706 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142355.P15778158199979336971

`p?[47*n+2]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142355

/-- `p?[47*n+2]` -/
def P15778158199979336971.Spec : Prop :=
  ∀ n, (P15778158199979336971.a n : ℤ) = A142355 (n + 1)

theorem P15778158199979336971.correct : P15778158199979336971.Spec := by
  intro n
  simp only [A142355, Nat.add_sub_cancel]

end A142355

/-! ## A142355.P10299522170543165568

`A000027(p?[A215148(n)+A103214(n)])`
-/

namespace A142355.P10299522170543165568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n + A103214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142355.P10299522170543165568

namespace A142355

/-- `A000027(p?[A215148(n)+A103214(n)])` -/
def P10299522170543165568.Spec : Prop :=
  ∀ n, P10299522170543165568.a n = A142355 (n + 1)

end A142355

/-! ## A142355.P996617785920063433

`A000027(p?[A248572(n)+A161705(n)])`
-/

namespace A142355.P996617785920063433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + A161705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142355.P996617785920063433

namespace A142355

/-- `A000027(p?[A248572(n)+A161705(n)])` -/
def P996617785920063433.Spec : Prop :=
  ∀ n, P996617785920063433.a n = A142355 (n + 1)

end A142355

/-! ## A142355.P17878050573435718587

`p?[A248572(n)+A161705(n)]%A001546(n)`
-/

namespace A142355.P17878050573435718587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + A161705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A001546 n)

end

end A142355.P17878050573435718587

namespace A142355

/-- `p?[A248572(n)+A161705(n)]%A001546(n)` -/
def P17878050573435718587.Spec : Prop :=
  ∀ n, P17878050573435718587.a n = A142355 (n + 1)

end A142355

/-! ## A142355.P1043508100636842287

`p?[A248572(n)+A161705(n)]/A020985(n)²`
-/

namespace A142355.P1043508100636842287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + A161705 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A020985 n ^ 2 : ℚ)

end

end A142355.P1043508100636842287

namespace A142355

/-- `p?[A248572(n)+A161705(n)]/A020985(n)²` -/
def P1043508100636842287.Spec : Prop :=
  ∀ n, P1043508100636842287.a n = (A142355 (n + 1) : ℚ)

end A142355

/-! ## A142355.P5267228756486567296

`p?[A248572(n)+A161705(n)]/A025469(n)!`
-/

namespace A142355.P5267228756486567296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + A161705 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (Nat.factorial (A025469 n).toNat : ℚ)

end

end A142355.P5267228756486567296

namespace A142355

/-- `p?[A248572(n)+A161705(n)]/A025469(n)!` -/
def P5267228756486567296.Spec : Prop :=
  ∀ n, P5267228756486567296.a n = (A142355 (n + 1) : ℚ)

end A142355

/-! ## A142355.P12920865835905104754

`A000007(n+1)+p?[A248572(n)+A161705(n)]`
-/

namespace A142355.P12920865835905104754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + A161705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142355.P12920865835905104754

namespace A142355

/-- `A000007(n+1)+p?[A248572(n)+A161705(n)]` -/
def P12920865835905104754.Spec : Prop :=
  ∀ n, P12920865835905104754.a n = A142355 (n + 1)

end A142355

/-! ## A142355.P5983844809310921188

`A000038(n+1)+p?[A248572(n)+A161705(n)]`
-/

namespace A142355.P5983844809310921188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + A161705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142355.P5983844809310921188

namespace A142355

/-- `A000038(n+1)+p?[A248572(n)+A161705(n)]` -/
def P5983844809310921188.Spec : Prop :=
  ∀ n, P5983844809310921188.a n = A142355 (n + 1)

end A142355

/-! ## A142355.P6322755376495331767

`p?[A248572(n)+A161705(n)]/A241099(n+1)%2`
-/

namespace A142355.P6322755376495331767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + A161705 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (Int.tmod (A241099 (n + 1)) 2 : ℚ)

end

end A142355.P6322755376495331767

namespace A142355

/-- `p?[A248572(n)+A161705(n)]/A241099(n+1)%2` -/
def P6322755376495331767.Spec : Prop :=
  ∀ n, P6322755376495331767.a n = (A142355 (n + 1) : ℚ)

end A142355

/-! ## A142355.P15978816985360021870

`p?[A248572(n)+A161705(n)]^((-1)^n)^A103517(n)`
-/

namespace A142355.P15978816985360021870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + A161705 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ) ^ (((-1) ^ n : ℚ) ^ (A103517 n : ℤ) : ℝ)

end

end A142355.P15978816985360021870

namespace A142355

/-- `p?[A248572(n)+A161705(n)]^((-1)^n)^A103517(n)` -/
def P15978816985360021870.Spec : Prop :=
  ∀ n, P15978816985360021870.a n = (A142355 (n + 1) : ℝ)

end A142355

/-! ## A142355.P8527510842854416101

`A001414(p?[A215148(n)+A103214(n)])`
-/

namespace A142355.P8527510842854416101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n + A103214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142355.P8527510842854416101

namespace A142355

/-- `A001414(p?[A215148(n)+A103214(n)])` -/
def P8527510842854416101.Spec : Prop :=
  ∀ n, P8527510842854416101.a n = A142355 (n + 1)

end A142355

/-! ## A142355.P15873335263563473668

`A008472(p?[A215148(n)+A103214(n)])`
-/

namespace A142355.P15873335263563473668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n + A103214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142355.P15873335263563473668

namespace A142355

/-- `A008472(p?[A215148(n)+A103214(n)])` -/
def P15873335263563473668.Spec : Prop :=
  ∀ n, P15873335263563473668.a n = A142355 (n + 1)

end A142355

/-! ## A142355.P17845762007031327029

`A008472(p?[A248572(n)+A161705(n)])`
-/

namespace A142355.P17845762007031327029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + A161705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142355.P17845762007031327029

namespace A142355

/-- `A008472(p?[A248572(n)+A161705(n)])` -/
def P17845762007031327029.Spec : Prop :=
  ∀ n, P17845762007031327029.a n = A142355 (n + 1)

end A142355

/-! ## A142355.P6350310046345201691

`A052410(p?[A248572(n)+A161705(n)])`
-/

namespace A142355.P6350310046345201691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + A161705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142355.P6350310046345201691

namespace A142355

/-- `A052410(p?[A248572(n)+A161705(n)])` -/
def P6350310046345201691.Spec : Prop :=
  ∀ n, P6350310046345201691.a n = A142355 (n + 1)

end A142355

/-!
# A142356: Primes congruent to 4 mod 47.

The programs for A142356, the canonical program `A142356.P12702020935622007177` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142356 has offset 1).

The definition of A142356 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1707 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142356.P12702020935622007177

`p?[47*n+4]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142356

/-- `p?[47*n+4]` -/
def P12702020935622007177.Spec : Prop :=
  ∀ n, (P12702020935622007177.a n : ℤ) = A142356 (n + 1)

theorem P12702020935622007177.correct : P12702020935622007177.Spec := by
  intro n
  simp only [A142356, Nat.add_sub_cancel]

end A142356

/-! ## A142356.P6360757304085716263

`A000027(p?[A146081(n)-A154266(n)])`
-/

namespace A142356.P6360757304085716263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - A154266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142356.P6360757304085716263

namespace A142356

/-- `A000027(p?[A146081(n)-A154266(n)])` -/
def P6360757304085716263.Spec : Prop :=
  ∀ n, P6360757304085716263.a n = A142356 (n + 1)

end A142356

/-! ## A142356.P8825965813144874316

`A000027(p?[A158066(n+1)-A004273(n)])`
-/

namespace A142356.P8825965813144874316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) - A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142356.P8825965813144874316

namespace A142356

/-- `A000027(p?[A158066(n+1)-A004273(n)])` -/
def P8825965813144874316.Spec : Prop :=
  ∀ n, P8825965813144874316.a n = A142356 (n + 1)

end A142356

/-! ## A142356.P15714598259469897946

`A000007(n+1)+p?[A146081(n)-A154266(n)]`
-/

namespace A142356.P15714598259469897946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - A154266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142356.P15714598259469897946

namespace A142356

/-- `A000007(n+1)+p?[A146081(n)-A154266(n)]` -/
def P15714598259469897946.Spec : Prop :=
  ∀ n, P15714598259469897946.a n = A142356 (n + 1)

end A142356

/-! ## A142356.P1907256786420144771

`p?[A146081(n)-A154266(n)]+2%A040001(n)`
-/

namespace A142356.P1907256786420144771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - A154266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod 2 (A040001 n)

end

end A142356.P1907256786420144771

namespace A142356

/-- `p?[A146081(n)-A154266(n)]+2%A040001(n)` -/
def P1907256786420144771.Spec : Prop :=
  ∀ n, P1907256786420144771.a n = A142356 (n + 1)

end A142356

/-! ## A142356.P3208498015362184905

`A002061(n)%2*p?[A146081(n)-A154266(n)]`
-/

namespace A142356.P3208498015362184905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - A154266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002061 n) 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142356.P3208498015362184905

namespace A142356

/-- `A002061(n)%2*p?[A146081(n)-A154266(n)]` -/
def P3208498015362184905.Spec : Prop :=
  ∀ n, P3208498015362184905.a n = A142356 (n + 1)

end A142356

/-! ## A142356.P4545754772361943504

`p?[A146081(n)-A154266(n)]-n*A000007(n)`
-/

namespace A142356.P4545754772361943504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - A154266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (n : ℤ) * A000007 n

end

end A142356.P4545754772361943504

namespace A142356

/-- `p?[A146081(n)-A154266(n)]-n*A000007(n)` -/
def P4545754772361943504.Spec : Prop :=
  ∀ n, P4545754772361943504.a n = A142356 (n + 1)

end A142356

/-! ## A142356.P6575722784452758714

`(A063942(3*n)-n)*p?[A146081(n)-A154266(n)]`
-/

namespace A142356.P6575722784452758714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - A154266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A063942 (3 * n) - (n : ℤ)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142356.P6575722784452758714

namespace A142356

/-- `(A063942(3*n)-n)*p?[A146081(n)-A154266(n)]` -/
def P6575722784452758714.Spec : Prop :=
  ∀ n, P6575722784452758714.a n = A142356 (n + 1)

end A142356

/-! ## A142356.P4687220552680916662

`A000265(p?[A146081(n)-A154266(n)])`
-/

namespace A142356.P4687220552680916662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - A154266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142356.P4687220552680916662

namespace A142356

/-- `A000265(p?[A146081(n)-A154266(n)])` -/
def P4687220552680916662.Spec : Prop :=
  ∀ n, P4687220552680916662.a n = A142356 (n + 1)

end A142356

/-! ## A142356.P18422475486931538285

`A007947(p?[A146081(n)-A154266(n)])`
-/

namespace A142356.P18422475486931538285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - A154266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142356.P18422475486931538285

namespace A142356

/-- `A007947(p?[A146081(n)-A154266(n)])` -/
def P18422475486931538285.Spec : Prop :=
  ∀ n, P18422475486931538285.a n = A142356 (n + 1)

end A142356

/-! ## A142356.P18207755640684108309

`A000265(p?[A158066(n+1)-A004273(n)])`
-/

namespace A142356.P18207755640684108309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) - A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142356.P18207755640684108309

namespace A142356

/-- `A000265(p?[A158066(n+1)-A004273(n)])` -/
def P18207755640684108309.Spec : Prop :=
  ∀ n, P18207755640684108309.a n = A142356 (n + 1)

end A142356

/-! ## A142356.P3624771825429823500

`A007947(p?[A158066(n+1)-A004273(n)])`
-/

namespace A142356.P3624771825429823500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) - A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142356.P3624771825429823500

namespace A142356

/-- `A007947(p?[A158066(n+1)-A004273(n)])` -/
def P3624771825429823500.Spec : Prop :=
  ∀ n, P3624771825429823500.a n = A142356 (n + 1)

end A142356

/-! ## A142356.P6359518756328896476

`A299149(p?[A146081(n)-A154266(n)])`
-/

namespace A142356.P6359518756328896476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - A154266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299149 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142356.P6359518756328896476

namespace A142356

/-- `A299149(p?[A146081(n)-A154266(n)])` -/
def P6359518756328896476.Spec : Prop :=
  ∀ n, P6359518756328896476.a n = A142356 (n + 1)

end A142356

/-!
# A142357: Primes congruent to 6 mod 47.

The programs for A142357, the canonical program `A142357.P17076880945785824031` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142357 has offset 1).

The definition of A142357 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1700 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142357.P17076880945785824031

`p?[47*n+6]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142357

/-- `p?[47*n+6]` -/
def P17076880945785824031.Spec : Prop :=
  ∀ n, (P17076880945785824031.a n : ℤ) = A142357 (n + 1)

theorem P17076880945785824031.correct : P17076880945785824031.Spec := by
  intro n
  simp only [A142357, Nat.add_sub_cancel]

end A142357

/-! ## A142357.P7935407918192774370

`A000027(p?[A174312(n)+A139606(n)])`
-/

namespace A142357.P7935407918192774370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174312 n + A139606 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142357.P7935407918192774370

namespace A142357

/-- `A000027(p?[A174312(n)+A139606(n)])` -/
def P7935407918192774370.Spec : Prop :=
  ∀ n, P7935407918192774370.a n = A142357 (n + 1)

end A142357

/-! ## A142357.P4227933977877395804

`A000007(n+1)+p?[A174312(n)+A139606(n)]`
-/

namespace A142357.P4227933977877395804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174312 n + A139606 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142357.P4227933977877395804

namespace A142357

/-- `A000007(n+1)+p?[A174312(n)+A139606(n)]` -/
def P4227933977877395804.Spec : Prop :=
  ∀ n, P4227933977877395804.a n = A142357 (n + 1)

end A142357

/-! ## A142357.P1193643781926486049

`p?[A174312(n)+A139606(n)]%A200732(n+1)`
-/

namespace A142357.P1193643781926486049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174312 n + A139606 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A200732 (n + 1))

end

end A142357.P1193643781926486049

namespace A142357

/-- `p?[A174312(n)+A139606(n)]%A200732(n+1)` -/
def P1193643781926486049.Spec : Prop :=
  ∀ n, P1193643781926486049.a n = A142357 (n + 1)

end A142357

/-! ## A142357.P12215842971833433347

`∩[A164135(n+1)-1, A191033(n+1)]`
-/

namespace A142357.P12215842971833433347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164135 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142357.P12215842971833433347

namespace A142357

/-- `∩[A164135(n+1)-1, A191033(n+1)]` -/
def P12215842971833433347.Spec : Prop :=
  ∀ n, (P12215842971833433347.a n : ℤ) = A142357 (n + 1)

end A142357

/-! ## A142357.P11775077601934466646

`∩[A164135(n+1)-1, A267601(n+1)]`
-/

namespace A142357.P11775077601934466646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164135 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142357.P11775077601934466646

namespace A142357

/-- `∩[A164135(n+1)-1, A267601(n+1)]` -/
def P11775077601934466646.Spec : Prop :=
  ∀ n, (P11775077601934466646.a n : ℤ) = A142357 (n + 1)

end A142357

/-! ## A142357.P15820660635466688560

`record[A020639(47*(n+1)+6)]`
-/

namespace A142357.P15820660635466688560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (47 * (n + 1) + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142357.P15820660635466688560

namespace A142357

/-- `record[A020639(47*(n+1)+6)]` -/
def P15820660635466688560.Spec : Prop :=
  ∀ n, P15820660635466688560.a n = A142357 (n + 1)

end A142357

/-! ## A142357.P8135603329704673688

`record[A006530(A008472(47*(n+1)+6))]`
-/

namespace A142357.P8135603329704673688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A008472 (47 * (n + 1) + 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142357.P8135603329704673688

namespace A142357

/-- `record[A006530(A008472(47*(n+1)+6))]` -/
def P8135603329704673688.Spec : Prop :=
  ∀ n, P8135603329704673688.a n = A142357 (n + 1)

end A142357

/-! ## A142357.P11150295602180786851

`A000265(p?[A174312(n)+A139606(n)])`
-/

namespace A142357.P11150295602180786851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174312 n + A139606 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142357.P11150295602180786851

namespace A142357

/-- `A000265(p?[A174312(n)+A139606(n)])` -/
def P11150295602180786851.Spec : Prop :=
  ∀ n, P11150295602180786851.a n = A142357 (n + 1)

end A142357

/-! ## A142357.P7294253310576278385

`A007947(p?[A174312(n)+A139606(n)])`
-/

namespace A142357.P7294253310576278385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174312 n + A139606 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142357.P7294253310576278385

namespace A142357

/-- `A007947(p?[A174312(n)+A139606(n)])` -/
def P7294253310576278385.Spec : Prop :=
  ∀ n, P7294253310576278385.a n = A142357 (n + 1)

end A142357

/-! ## A142357.P7342865306992384842

`A008472(p?[A174312(n)+A139606(n)])`
-/

namespace A142357.P7342865306992384842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174312 n + A139606 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142357.P7342865306992384842

namespace A142357

/-- `A008472(p?[A174312(n)+A139606(n)])` -/
def P7342865306992384842.Spec : Prop :=
  ∀ n, P7342865306992384842.a n = A142357 (n + 1)

end A142357

/-!
# A142358: Primes congruent to 7 mod 47.

The programs for A142358, the canonical program `A142358.P8955062867562280245` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142358 has offset 1).

The definition of A142358 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1700 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142358.P8955062867562280245

`p?[47*n+7]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142358

/-- `p?[47*n+7]` -/
def P8955062867562280245.Spec : Prop :=
  ∀ n, (P8955062867562280245.a n : ℤ) = A142358 (n + 1)

theorem P8955062867562280245.correct : P8955062867562280245.Spec := by
  intro n
  simp only [A142358, Nat.add_sub_cancel]

end A142358

/-! ## A142358.P2954148558114721994

`p?[A139264(n+1)+A008606(n)]%A017368(n)`
-/

namespace A142358.P2954148558114721994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139264 (n + 1) + A008606 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017368 n)

end

end A142358.P2954148558114721994

namespace A142358

/-- `p?[A139264(n+1)+A008606(n)]%A017368(n)` -/
def P2954148558114721994.Spec : Prop :=
  ∀ n, P2954148558114721994.a n = A142358 (n + 1)

end A142358

/-! ## A142358.P4078418919792588110

`A000027(p?[a(n-1)+47])` with `a(0)=7`
-/

namespace A142358.P4078418919792588110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7] fun n f1 =>
  f1 (n - 1) + 47

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142358.P4078418919792588110

namespace A142358

/-- `A000027(p?[a(n-1)+47])` -/
def P4078418919792588110.Spec : Prop :=
  ∀ n, P4078418919792588110.a n = A142358 (n + 1)

end A142358

/-! ## A142358.P15282173460599033557

`∩[A164135(n+1), A191033(n+1)]`
-/

namespace A142358.P15282173460599033557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142358.P15282173460599033557

namespace A142358

/-- `∩[A164135(n+1), A191033(n+1)]` -/
def P15282173460599033557.Spec : Prop :=
  ∀ n, (P15282173460599033557.a n : ℤ) = A142358 (n + 1)

end A142358

/-! ## A142358.P16203894426843135821

`∩[A164135(n+1), A267601(n+1)]`
-/

namespace A142358.P16203894426843135821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142358.P16203894426843135821

namespace A142358

/-- `∩[A164135(n+1), A267601(n+1)]` -/
def P16203894426843135821.Spec : Prop :=
  ∀ n, (P16203894426843135821.a n : ℤ) = A142358 (n + 1)

end A142358

/-! ## A142358.P15765387568420891306

`record[A006530(47*n+7)]`
-/

namespace A142358.P15765387568420891306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (47 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142358.P15765387568420891306

namespace A142358

/-- `record[A006530(47*n+7)]` -/
def P15765387568420891306.Spec : Prop :=
  ∀ n, P15765387568420891306.a n = A142358 (n + 1)

end A142358

/-! ## A142358.P12330420595483739710

`record[A020639(47*n+7)]`
-/

namespace A142358.P12330420595483739710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (47 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142358.P12330420595483739710

namespace A142358

/-- `record[A020639(47*n+7)]` -/
def P12330420595483739710.Spec : Prop :=
  ∀ n, P12330420595483739710.a n = A142358 (n + 1)

end A142358

/-! ## A142358.P4825990917178933741

`filter[A164135(2*n+1), A010051(#)]`
-/

namespace A142358.P4825990917178933741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164135 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A142358.P4825990917178933741

namespace A142358

/-- `filter[A164135(2*n+1), A010051(#)]` -/
def P4825990917178933741.Spec : Prop :=
  ∀ n, P4825990917178933741.a n = A142358 (n + 1)

end A142358

/-! ## A142358.P6551856671592808527

`filter[A164135(2*n+1), A257531(#)]`
-/

namespace A142358.P6551856671592808527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164135 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A142358.P6551856671592808527

namespace A142358

/-- `filter[A164135(2*n+1), A257531(#)]` -/
def P6551856671592808527.Spec : Prop :=
  ∀ n, P6551856671592808527.a n = A142358 (n + 1)

end A142358

/-! ## A142358.P10529109415063933855

`filter[A164135(2*n+1), A323152(#)]`
-/

namespace A142358.P10529109415063933855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164135 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A142358.P10529109415063933855

namespace A142358

/-- `filter[A164135(2*n+1), A323152(#)]` -/
def P10529109415063933855.Spec : Prop :=
  ∀ n, P10529109415063933855.a n = A142358 (n + 1)

end A142358

/-! ## A142358.P7853046364117895094

`filter[A164135(2*n+1), A323153(#)]`
-/

namespace A142358.P7853046364117895094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164135 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A142358.P7853046364117895094

namespace A142358

/-- `filter[A164135(2*n+1), A323153(#)]` -/
def P7853046364117895094.Spec : Prop :=
  ∀ n, P7853046364117895094.a n = A142358 (n + 1)

end A142358

/-! ## A142358.P9323508871550591981

`filter[A164135(2*n+1), A351957(#)]`
-/

namespace A142358.P9323508871550591981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164135 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351957 (f1 j).toNat = 1) n)

end

end A142358.P9323508871550591981

namespace A142358

/-- `filter[A164135(2*n+1), A351957(#)]` -/
def P9323508871550591981.Spec : Prop :=
  ∀ n, P9323508871550591981.a n = A142358 (n + 1)

end A142358

/-! ## A142358.P17842284852441414705

`filter[A164135(2*n+1), A353817(#)]`
-/

namespace A142358.P17842284852441414705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164135 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A142358.P17842284852441414705

namespace A142358

/-- `filter[A164135(2*n+1), A353817(#)]` -/
def P17842284852441414705.Spec : Prop :=
  ∀ n, P17842284852441414705.a n = A142358 (n + 1)

end A142358

/-!
# A142359: Primes congruent to 8 mod 47.

The programs for A142359, the canonical program `A142359.P10481489079351972437` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142359 has offset 1).

The definition of A142359 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1707 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142359.P10481489079351972437

`p?[47*n+8]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142359

/-- `p?[47*n+8]` -/
def P10481489079351972437.Spec : Prop :=
  ∀ n, (P10481489079351972437.a n : ℤ) = A142359 (n + 1)

theorem P10481489079351972437.correct : P10481489079351972437.Spec := by
  intro n
  simp only [A142359, Nat.add_sub_cancel]

end A142359

/-! ## A142359.P1412470449116957728

`or(1, p?[A139611(n)-A017101(n)])`
-/

namespace A142359.P1412470449116957728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n - A017101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142359.P1412470449116957728

namespace A142359

/-- `or(1, p?[A139611(n)-A017101(n)])` -/
def P1412470449116957728.Spec : Prop :=
  ∀ n, P1412470449116957728.a n = A142359 (n + 1)

end A142359

/-! ## A142359.P2013094807054472978

`p?[A139611(n)-A017101(n)]%A017212(n)`
-/

namespace A142359.P2013094807054472978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n - A017101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017212 n)

end

end A142359.P2013094807054472978

namespace A142359

/-- `p?[A139611(n)-A017101(n)]%A017212(n)` -/
def P2013094807054472978.Spec : Prop :=
  ∀ n, P2013094807054472978.a n = A142359 (n + 1)

end A142359

/-! ## A142359.P15973167053301721179

`A257075(n)²*p?[A139611(n)-A017101(n)]`
-/

namespace A142359.P15973167053301721179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n - A017101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257075 n ^ 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142359.P15973167053301721179

namespace A142359

/-- `A257075(n)²*p?[A139611(n)-A017101(n)]` -/
def P15973167053301721179.Spec : Prop :=
  ∀ n, P15973167053301721179.a n = A142359 (n + 1)

end A142359

/-! ## A142359.P5816265395103538875

`A056594(2*n)²*p?[A139611(n)-A017101(n)]`
-/

namespace A142359.P5816265395103538875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n - A017101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) ^ 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142359.P5816265395103538875

namespace A142359

/-- `A056594(2*n)²*p?[A139611(n)-A017101(n)]` -/
def P5816265395103538875.Spec : Prop :=
  ∀ n, P5816265395103538875.a n = A142359 (n + 1)

end A142359

/-! ## A142359.P16720788364436949519

`(A005408(n)-2*n)*p?[A139611(n)-A017101(n)]`
-/

namespace A142359.P16720788364436949519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n - A017101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005408 n - (2 * n : ℤ)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142359.P16720788364436949519

namespace A142359

/-- `(A005408(n)-2*n)*p?[A139611(n)-A017101(n)]` -/
def P16720788364436949519.Spec : Prop :=
  ∀ n, P16720788364436949519.a n = A142359 (n + 1)

end A142359

/-! ## A142359.P9483248206262808356

`∩[A164135(n+1)+1, A191033(n+1)]`
-/

namespace A142359.P9483248206262808356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164135 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142359.P9483248206262808356

namespace A142359

/-- `∩[A164135(n+1)+1, A191033(n+1)]` -/
def P9483248206262808356.Spec : Prop :=
  ∀ n, (P9483248206262808356.a n : ℤ) = A142359 (n + 1)

end A142359

/-! ## A142359.P14191490913382815005

`∩[A164135(n+1)+1, A267601(n+1)]`
-/

namespace A142359.P14191490913382815005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164135 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142359.P14191490913382815005

namespace A142359

/-- `∩[A164135(n+1)+1, A267601(n+1)]` -/
def P14191490913382815005.Spec : Prop :=
  ∀ n, (P14191490913382815005.a n : ℤ) = A142359 (n + 1)

end A142359

/-! ## A142359.P2930795708352920744

`A000265(p?[A144619(n)+A135628(n)])`
-/

namespace A142359.P2930795708352920744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n + A135628 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142359.P2930795708352920744

namespace A142359

/-- `A000265(p?[A144619(n)+A135628(n)])` -/
def P2930795708352920744.Spec : Prop :=
  ∀ n, P2930795708352920744.a n = A142359 (n + 1)

end A142359

/-! ## A142359.P12055372932676699457

`A001414(p?[A144619(n)+A135628(n)])`
-/

namespace A142359.P12055372932676699457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n + A135628 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142359.P12055372932676699457

namespace A142359

/-- `A001414(p?[A144619(n)+A135628(n)])` -/
def P12055372932676699457.Spec : Prop :=
  ∀ n, P12055372932676699457.a n = A142359 (n + 1)

end A142359

/-! ## A142359.P2499784377135983785

`A000265(p?[A139611(n)-A017101(n)])`
-/

namespace A142359.P2499784377135983785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n - A017101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142359.P2499784377135983785

namespace A142359

/-- `A000265(p?[A139611(n)-A017101(n)])` -/
def P2499784377135983785.Spec : Prop :=
  ∀ n, P2499784377135983785.a n = A142359 (n + 1)

end A142359

/-! ## A142359.P8238577542665422537

`A001414(p?[A139611(n)-A017101(n)])`
-/

namespace A142359.P8238577542665422537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n - A017101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142359.P8238577542665422537

namespace A142359

/-- `A001414(p?[A139611(n)-A017101(n)])` -/
def P8238577542665422537.Spec : Prop :=
  ∀ n, P8238577542665422537.a n = A142359 (n + 1)

end A142359

/-! ## A142359.P2556860931662204169

`A000265(p?[A157330(n+1)-A215137(n)])`
-/

namespace A142359.P2556860931662204169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157330 (n + 1) - A215137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142359.P2556860931662204169

namespace A142359

/-- `A000265(p?[A157330(n+1)-A215137(n)])` -/
def P2556860931662204169.Spec : Prop :=
  ∀ n, P2556860931662204169.a n = A142359 (n + 1)

end A142359

/-! ## A142359.P4008282084381379711

`A125746(p?[A139611(n)-A017101(n)])`
-/

namespace A142359.P4008282084381379711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n - A017101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142359.P4008282084381379711

namespace A142359

/-- `A125746(p?[A139611(n)-A017101(n)])` -/
def P4008282084381379711.Spec : Prop :=
  ∀ n, P4008282084381379711.a n = A142359 (n + 1)

end A142359

/-!
# A142360: Primes congruent to 9 mod 47.

The programs for A142360, the canonical program `A142360.P14805223479057948877` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142360 has offset 1).

The definition of A142360 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1706 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142360.P14805223479057948877

`p?[47*n+9]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142360

/-- `p?[47*n+9]` -/
def P14805223479057948877.Spec : Prop :=
  ∀ n, (P14805223479057948877.a n : ℤ) = A142360 (n + 1)

theorem P14805223479057948877.correct : P14805223479057948877.Spec := by
  intro n
  simp only [A142360, Nat.add_sub_cancel]

end A142360

/-! ## A142360.P12885595960651367426

`A000027(p?[a(n-1)+47])` with `a(0)=9`
-/

namespace A142360.P12885595960651367426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9] fun n f1 =>
  f1 (n - 1) + 47

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142360.P12885595960651367426

namespace A142360

/-- `A000027(p?[a(n-1)+47])` -/
def P12885595960651367426.Spec : Prop :=
  ∀ n, P12885595960651367426.a n = A142360 (n + 1)

end A142360

/-! ## A142360.P15163274239979535192

`A000027(p?[A139615(n)-A017461(n)])`
-/

namespace A142360.P15163274239979535192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139615 n - A017461 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142360.P15163274239979535192

namespace A142360

/-- `A000027(p?[A139615(n)-A017461(n)])` -/
def P15163274239979535192.Spec : Prop :=
  ∀ n, P15163274239979535192.a n = A142360 (n + 1)

end A142360

/-! ## A142360.P16687515080292525682

`A000027(p?[A139610(n)+A004273(n)])`
-/

namespace A142360.P16687515080292525682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n + A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142360.P16687515080292525682

namespace A142360

/-- `A000027(p?[A139610(n)+A004273(n)])` -/
def P16687515080292525682.Spec : Prop :=
  ∀ n, P16687515080292525682.a n = A142360 (n + 1)

end A142360

/-! ## A142360.P3595343337570862045

`A000027(p?[A139609(n)+A008593(n)])`
-/

namespace A142360.P3595343337570862045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A008593 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142360.P3595343337570862045

namespace A142360

/-- `A000027(p?[A139609(n)+A008593(n)])` -/
def P3595343337570862045.Spec : Prop :=
  ∀ n, P3595343337570862045.a n = A142360 (n + 1)

end A142360

/-! ## A142360.P12491430441336688974

`∩[A164135(2*n+1)+2, A191033(n+2)]`
-/

namespace A142360.P12491430441336688974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164135 (2 * n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191033 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142360.P12491430441336688974

namespace A142360

/-- `∩[A164135(2*n+1)+2, A191033(n+2)]` -/
def P12491430441336688974.Spec : Prop :=
  ∀ n, (P12491430441336688974.a n : ℤ) = A142360 (n + 1)

end A142360

/-! ## A142360.P6513707634751673674

`record[A020639(94*(n+1)+9)]`
-/

namespace A142360.P6513707634751673674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (94 * (n + 1) + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142360.P6513707634751673674

namespace A142360

/-- `record[A020639(94*(n+1)+9)]` -/
def P6513707634751673674.Spec : Prop :=
  ∀ n, P6513707634751673674.a n = A142360 (n + 1)

end A142360

/-! ## A142360.P11272287216174245746

`record[A006530(A164135(2*(n+2))+16)]`
-/

namespace A142360.P11272287216174245746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A164135 (2 * (n + 2)) + 16).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142360.P11272287216174245746

namespace A142360

/-- `record[A006530(A164135(2*(n+2))+16)]` -/
def P11272287216174245746.Spec : Prop :=
  ∀ n, P11272287216174245746.a n = A142360 (n + 1)

end A142360

/-! ## A142360.P3942682861532770234

`A000265(p?[A139609(n)+A008593(n)])`
-/

namespace A142360.P3942682861532770234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A008593 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142360.P3942682861532770234

namespace A142360

/-- `A000265(p?[A139609(n)+A008593(n)])` -/
def P3942682861532770234.Spec : Prop :=
  ∀ n, P3942682861532770234.a n = A142360 (n + 1)

end A142360

/-! ## A142360.P13505469868816582094

`A007913(p?[A139610(n)+A004273(n)])`
-/

namespace A142360.P13505469868816582094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n + A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142360.P13505469868816582094

namespace A142360

/-- `A007913(p?[A139610(n)+A004273(n)])` -/
def P13505469868816582094.Spec : Prop :=
  ∀ n, P13505469868816582094.a n = A142360 (n + 1)

end A142360

/-! ## A142360.P17344835899083742942

`A008472(p?[A139615(n)-A017461(n)])`
-/

namespace A142360.P17344835899083742942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139615 n - A017461 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142360.P17344835899083742942

namespace A142360

/-- `A008472(p?[A139615(n)-A017461(n)])` -/
def P17344835899083742942.Spec : Prop :=
  ∀ n, P17344835899083742942.a n = A142360 (n + 1)

end A142360

/-! ## A142360.P4675218809826069849

`A007947(p?[A139280(n+1)+A008574(n)])`
-/

namespace A142360.P4675218809826069849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139280 (n + 1) + A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142360.P4675218809826069849

namespace A142360

/-- `A007947(p?[A139280(n+1)+A008574(n)])` -/
def P4675218809826069849.Spec : Prop :=
  ∀ n, P4675218809826069849.a n = A142360 (n + 1)

end A142360

/-!
# A142361: Primes congruent to 10 mod 47.

The programs for A142361, the canonical program `A142361.P13826215273931227432` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142361 has offset 1).

The definition of A142361 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1710 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142361.P13826215273931227432

`p?[47*n+10]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142361

/-- `p?[47*n+10]` -/
def P13826215273931227432.Spec : Prop :=
  ∀ n, (P13826215273931227432.a n : ℤ) = A142361 (n + 1)

theorem P13826215273931227432.correct : P13826215273931227432.Spec := by
  intro n
  simp only [A142361, Nat.add_sub_cancel]

end A142361

/-! ## A142361.P15761470528557207035

`A000027(p?[A139610(n)+A005843(n)])`
-/

namespace A142361.P15761470528557207035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n + A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142361.P15761470528557207035

namespace A142361

/-- `A000027(p?[A139610(n)+A005843(n)])` -/
def P15761470528557207035.Spec : Prop :=
  ∀ n, P15761470528557207035.a n = A142361 (n + 1)

end A142361

/-! ## A142361.P16831392672536989624

`A000027(p?[A139609(n)+A017401(n)])`
-/

namespace A142361.P16831392672536989624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142361.P16831392672536989624

namespace A142361

/-- `A000027(p?[A139609(n)+A017401(n)])` -/
def P16831392672536989624.Spec : Prop :=
  ∀ n, P16831392672536989624.a n = A142361 (n + 1)

end A142361

/-! ## A142361.P15190267267286676247

`p?[A139610(n)+A005843(n)]%A017464(n)`
-/

namespace A142361.P15190267267286676247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n + A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017464 n)

end

end A142361.P15190267267286676247

namespace A142361

/-- `p?[A139610(n)+A005843(n)]%A017464(n)` -/
def P15190267267286676247.Spec : Prop :=
  ∀ n, P15190267267286676247.a n = A142361 (n + 1)

end A142361

/-! ## A142361.P14969364973723264233

`p?[A139610(n)+A005843(n)]+A000038(n)%2`
-/

namespace A142361.P14969364973723264233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n + A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A000038 n) 2

end

end A142361.P14969364973723264233

namespace A142361

/-- `p?[A139610(n)+A005843(n)]+A000038(n)%2` -/
def P14969364973723264233.Spec : Prop :=
  ∀ n, P14969364973723264233.a n = A142361 (n + 1)

end A142361

/-! ## A142361.P9667152397526648815

`p?[A139609(n)+A017401(n)]+A005843(n)%2`
-/

namespace A142361.P9667152397526648815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A005843 n) 2

end

end A142361.P9667152397526648815

namespace A142361

/-- `p?[A139609(n)+A017401(n)]+A005843(n)%2` -/
def P9667152397526648815.Spec : Prop :=
  ∀ n, P9667152397526648815.a n = A142361 (n + 1)

end A142361

/-! ## A142361.P17371193168521740636

`p?[A139609(n)+A017401(n)]+A016825(n)%2`
-/

namespace A142361.P17371193168521740636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A016825 n) 2

end

end A142361.P17371193168521740636

namespace A142361

/-- `p?[A139609(n)+A017401(n)]+A016825(n)%2` -/
def P17371193168521740636.Spec : Prop :=
  ∀ n, P17371193168521740636.a n = A142361 (n + 1)

end A142361

/-! ## A142361.P2813759062014615745

`p?[A139609(n)+A017401(n)]+A017545(n)%2`
-/

namespace A142361.P2813759062014615745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A017545 n) 2

end

end A142361.P2813759062014615745

namespace A142361

/-- `p?[A139609(n)+A017401(n)]+A017545(n)%2` -/
def P2813759062014615745.Spec : Prop :=
  ∀ n, P2813759062014615745.a n = A142361 (n + 1)

end A142361

/-! ## A142361.P10432919454365937838

`p?[A139609(n)+A017401(n)]+A028326(n)%2`
-/

namespace A142361.P10432919454365937838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A028326 n) 2

end

end A142361.P10432919454365937838

namespace A142361

/-- `p?[A139609(n)+A017401(n)]+A028326(n)%2` -/
def P10432919454365937838.Spec : Prop :=
  ∀ n, P10432919454365937838.a n = A142361 (n + 1)

end A142361

/-! ## A142361.P15998742536331830120

`p?[A139610(n)+A005843(n)]/A001539(n)%2`
-/

namespace A142361.P15998742536331830120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n + A005843 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (Int.tmod (A001539 n) 2 : ℚ)

end

end A142361.P15998742536331830120

namespace A142361

/-- `p?[A139610(n)+A005843(n)]/A001539(n)%2` -/
def P15998742536331830120.Spec : Prop :=
  ∀ n, P15998742536331830120.a n = (A142361 (n + 1) : ℚ)

end A142361

/-! ## A142361.P12385952436841218931

`p?[A139609(n)+A017401(n)]/A016777(n)%3`
-/

namespace A142361.P12385952436841218931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017401 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (Int.tmod (A016777 n) 3 : ℚ)

end

end A142361.P12385952436841218931

namespace A142361

/-- `p?[A139609(n)+A017401(n)]/A016777(n)%3` -/
def P12385952436841218931.Spec : Prop :=
  ∀ n, P12385952436841218931.a n = (A142361 (n + 1) : ℚ)

end A142361

/-! ## A142361.P16087094801260999180

`p?[A139609(n)+A017401(n)]/(A008586(n)+1)%2`
-/

namespace A142361.P16087094801260999180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017401 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (Int.tmod (A008586 n + 1) 2 : ℚ)

end

end A142361.P16087094801260999180

namespace A142361

/-- `p?[A139609(n)+A017401(n)]/(A008586(n)+1)%2` -/
def P16087094801260999180.Spec : Prop :=
  ∀ n, P16087094801260999180.a n = (A142361 (n + 1) : ℚ)

end A142361

/-! ## A142361.P16800028410619902118

`p?[A139609(n)+A017401(n)]/A158405(n+1)%2`
-/

namespace A142361.P16800028410619902118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017401 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (Int.tmod (A158405 (n + 1)) 2 : ℚ)

end

end A142361.P16800028410619902118

namespace A142361

/-- `p?[A139609(n)+A017401(n)]/A158405(n+1)%2` -/
def P16800028410619902118.Spec : Prop :=
  ∀ n, P16800028410619902118.a n = (A142361 (n + 1) : ℚ)

end A142361

/-! ## A142361.P7262049658518877286

`p?[A139609(n)+A017401(n)]+(n+1)%A141310(n)`
-/

namespace A142361.P7262049658518877286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (n + 1 : ℤ) (A141310 n)

end

end A142361.P7262049658518877286

namespace A142361

/-- `p?[A139609(n)+A017401(n)]+(n+1)%A141310(n)` -/
def P7262049658518877286.Spec : Prop :=
  ∀ n, P7262049658518877286.a n = A142361 (n + 1)

end A142361

/-! ## A142361.P7987037690001609762

`A005408(n)+p?[A139609(n)+A017401(n)]-(n+1+n)`
-/

namespace A142361.P7987037690001609762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (n + 1 + n : ℤ))

end

end A142361.P7987037690001609762

namespace A142361

/-- `A005408(n)+p?[A139609(n)+A017401(n)]-(n+1+n)` -/
def P7987037690001609762.Spec : Prop :=
  ∀ n, P7987037690001609762.a n = A142361 (n + 1)

end A142361

/-! ## A142361.P8733097819956670808

`A000265(p?[A139610(n)+A005843(n)])`
-/

namespace A142361.P8733097819956670808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n + A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142361.P8733097819956670808

namespace A142361

/-- `A000265(p?[A139610(n)+A005843(n)])` -/
def P8733097819956670808.Spec : Prop :=
  ∀ n, P8733097819956670808.a n = A142361 (n + 1)

end A142361

/-! ## A142361.P17694421459869116379

`A008472(p?[A139609(n)+A017401(n)])`
-/

namespace A142361.P17694421459869116379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142361.P17694421459869116379

namespace A142361

/-- `A008472(p?[A139609(n)+A017401(n)])` -/
def P17694421459869116379.Spec : Prop :=
  ∀ n, P17694421459869116379.a n = A142361 (n + 1)

end A142361

/-! ## A142361.P10209140585945706322

`A318456(p?[A139609(n)+A017401(n)])`
-/

namespace A142361.P10209140585945706322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318456 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142361.P10209140585945706322

namespace A142361

/-- `A318456(p?[A139609(n)+A017401(n)])` -/
def P10209140585945706322.Spec : Prop :=
  ∀ n, P10209140585945706322.a n = A142361 (n + 1)

end A142361

/-!
# A142362: Primes congruent to 11 mod 47.

The programs for A142362, the canonical program `A142362.P13177743375997532641` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142362 has offset 1).

The definition of A142362 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1727 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142362.P13177743375997532641

`p?[11+47*n]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142362

/-- `p?[11+47*n]` -/
def P13177743375997532641.Spec : Prop :=
  ∀ n, (P13177743375997532641.a n : ℤ) = A142362 (n + 1)

theorem P13177743375997532641.correct : P13177743375997532641.Spec := by
  intro n
  simp only [A142362, Nat.add_sub_cancel]

end A142362

/-! ## A142362.P402582378494059226

`A000027(p?[a(n-1)+47])` with `a(0)=11`
-/

namespace A142362.P402582378494059226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [11] fun n f1 =>
  f1 (n - 1) + 47

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142362.P402582378494059226

namespace A142362

/-- `A000027(p?[a(n-1)+47])` -/
def P402582378494059226.Spec : Prop :=
  ∀ n, P402582378494059226.a n = A142362 (n + 1)

end A142362

/-! ## A142362.P16181642085577334891

`A000027(p?[A304205(n+1)-A005408(n)])`
-/

namespace A142362.P16181642085577334891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142362.P16181642085577334891

namespace A142362

/-- `A000027(p?[A304205(n+1)-A005408(n)])` -/
def P16181642085577334891.Spec : Prop :=
  ∀ n, P16181642085577334891.a n = A142362 (n + 1)

end A142362

/-! ## A142362.P10486022640560615244

`A000007(n+1)+p?[A304205(n+1)-A005408(n)]`
-/

namespace A142362.P10486022640560615244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142362.P10486022640560615244

namespace A142362

/-- `A000007(n+1)+p?[A304205(n+1)-A005408(n)]` -/
def P10486022640560615244.Spec : Prop :=
  ∀ n, P10486022640560615244.a n = A142362 (n + 1)

end A142362

/-! ## A142362.P6150717750105592120

`p?[A304205(n+1)-A005408(n)]%A175747(n+1)`
-/

namespace A142362.P6150717750105592120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A175747 (n + 1))

end

end A142362.P6150717750105592120

namespace A142362

/-- `p?[A304205(n+1)-A005408(n)]%A175747(n+1)` -/
def P6150717750105592120.Spec : Prop :=
  ∀ n, P6150717750105592120.a n = A142362 (n + 1)

end A142362

/-! ## A142362.P3621436085622551881

`p?[A304205(n+1)-A005408(n)]-n%A008195(n)+n`
-/

namespace A142362.P3621436085622551881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - Int.tmod (n : ℤ) (A008195 n) + (n : ℤ)

end

end A142362.P3621436085622551881

namespace A142362

/-- `p?[A304205(n+1)-A005408(n)]-n%A008195(n)+n` -/
def P3621436085622551881.Spec : Prop :=
  ∀ n, P3621436085622551881.a n = A142362 (n + 1)

end A142362

/-! ## A142362.P534645734888371768

`record[A020639(94*n+11)]`
-/

namespace A142362.P534645734888371768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (94 * n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142362.P534645734888371768

namespace A142362

/-- `record[A020639(94*n+11)]` -/
def P534645734888371768.Spec : Prop :=
  ∀ n, P534645734888371768.a n = A142362 (n + 1)

end A142362

/-! ## A142362.P13678894110568492731

`A000265(p?[A304205(n+1)-A005408(n)])`
-/

namespace A142362.P13678894110568492731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142362.P13678894110568492731

namespace A142362

/-- `A000265(p?[A304205(n+1)-A005408(n)])` -/
def P13678894110568492731.Spec : Prop :=
  ∀ n, P13678894110568492731.a n = A142362 (n + 1)

end A142362

/-! ## A142362.P12042784842116192566

`or(1, p?[A017101(A016921(n))-n])`
-/

namespace A142362.P12042784842116192566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 (A016921 n).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142362.P12042784842116192566

namespace A142362

/-- `or(1, p?[A017101(A016921(n))-n])` -/
def P12042784842116192566.Spec : Prop :=
  ∀ n, P12042784842116192566.a n = A142362 (n + 1)

end A142362

/-!
# A142363: Primes congruent to 12 mod 47.

The programs for A142363, the canonical program `A142363.P12607683732152399389` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142363 has offset 1).

The definition of A142363 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1722 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142363.P12607683732152399389

`p?[47*n+12]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142363

/-- `p?[47*n+12]` -/
def P12607683732152399389.Spec : Prop :=
  ∀ n, (P12607683732152399389.a n : ℤ) = A142363 (n + 1)

theorem P12607683732152399389.correct : P12607683732152399389.Spec := by
  intro n
  simp only [A142363, Nat.add_sub_cancel]

end A142363

/-! ## A142363.P10508870222316702301

`or(1, p?[A139609(n)+A017425(n)])`
-/

namespace A142363.P10508870222316702301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142363.P10508870222316702301

namespace A142363

/-- `or(1, p?[A139609(n)+A017425(n)])` -/
def P10508870222316702301.Spec : Prop :=
  ∀ n, P10508870222316702301.a n = A142363 (n + 1)

end A142363

/-! ## A142363.P1898421537209372975

`A000027(p?[A304205(n+1)-A005843(n)])`
-/

namespace A142363.P1898421537209372975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) - A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142363.P1898421537209372975

namespace A142363

/-- `A000027(p?[A304205(n+1)-A005843(n)])` -/
def P1898421537209372975.Spec : Prop :=
  ∀ n, P1898421537209372975.a n = A142363 (n + 1)

end A142363

/-! ## A142363.P4290462693046096490

`p?[A139609(n)+A017425(n)]/A016754(n)%2`
-/

namespace A142363.P4290462693046096490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017425 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (Int.tmod (A016754 n) 2 : ℚ)

end

end A142363.P4290462693046096490

namespace A142363

/-- `p?[A139609(n)+A017425(n)]/A016754(n)%2` -/
def P4290462693046096490.Spec : Prop :=
  ∀ n, P4290462693046096490.a n = (A142363 (n + 1) : ℚ)

end A142363

/-! ## A142363.P17833816086338210103

`p?[A139609(n)+A017425(n)]+A074400(n+1)%2`
-/

namespace A142363.P17833816086338210103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A074400 (n + 1)) 2

end

end A142363.P17833816086338210103

namespace A142363

/-- `p?[A139609(n)+A017425(n)]+A074400(n+1)%2` -/
def P17833816086338210103.Spec : Prop :=
  ∀ n, P17833816086338210103.a n = A142363 (n + 1)

end A142363

/-! ## A142363.P4813275238797642794

`p?[A139609(n)+A017425(n)]/A002061(n+1)%2`
-/

namespace A142363.P4813275238797642794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017425 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (Int.tmod (A002061 (n + 1)) 2 : ℚ)

end

end A142363.P4813275238797642794

namespace A142363

/-- `p?[A139609(n)+A017425(n)]/A002061(n+1)%2` -/
def P4813275238797642794.Spec : Prop :=
  ∀ n, P4813275238797642794.a n = (A142363 (n + 1) : ℚ)

end A142363

/-! ## A142363.P7387937729470958483

`p?[A139609(n)+A017425(n)]+(n+2)%A020639(n+2)`
-/

namespace A142363.P7387937729470958483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (n + 2 : ℤ) (A020639 (n + 2))

end

end A142363.P7387937729470958483

namespace A142363

/-- `p?[A139609(n)+A017425(n)]+(n+2)%A020639(n+2)` -/
def P7387937729470958483.Spec : Prop :=
  ∀ n, P7387937729470958483.a n = A142363 (n + 1)

end A142363

/-! ## A142363.P135589667751714595

`A001414(p?[A139609(n)+A017425(n)])`
-/

namespace A142363.P135589667751714595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142363.P135589667751714595

namespace A142363

/-- `A001414(p?[A139609(n)+A017425(n)])` -/
def P135589667751714595.Spec : Prop :=
  ∀ n, P135589667751714595.a n = A142363 (n + 1)

end A142363

/-! ## A142363.P13827920689295004779

`A008472(p?[A139609(n)+A017425(n)])`
-/

namespace A142363.P13827920689295004779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142363.P13827920689295004779

namespace A142363

/-- `A008472(p?[A139609(n)+A017425(n)])` -/
def P13827920689295004779.Spec : Prop :=
  ∀ n, P13827920689295004779.a n = A142363 (n + 1)

end A142363

/-! ## A142363.P3521107193844843408

`A000265(p?[A154266(n)-A195159(n)])`
-/

namespace A142363.P3521107193844843408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n - A195159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142363.P3521107193844843408

namespace A142363

/-- `A000265(p?[A154266(n)-A195159(n)])` -/
def P3521107193844843408.Spec : Prop :=
  ∀ n, P3521107193844843408.a n = A142363 (n + 1)

end A142363

/-! ## A142363.P10821251084530673811

`A000265(p?[A304205(n+1)-A005843(n)])`
-/

namespace A142363.P10821251084530673811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) - A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142363.P10821251084530673811

namespace A142363

/-- `A000265(p?[A304205(n+1)-A005843(n)])` -/
def P10821251084530673811.Spec : Prop :=
  ∀ n, P10821251084530673811.a n = A142363 (n + 1)

end A142363

/-! ## A142363.P8617040872439994457

`A007947(p?[A304205(n+1)-A005843(n)])`
-/

namespace A142363.P8617040872439994457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) - A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142363.P8617040872439994457

namespace A142363

/-- `A007947(p?[A304205(n+1)-A005843(n)])` -/
def P8617040872439994457.Spec : Prop :=
  ∀ n, P8617040872439994457.a n = A142363 (n + 1)

end A142363

/-! ## A142363.P16941344912752149184

`record[A020639(A304205(n+2)-A005843(n+1))]`
-/

namespace A142363.P16941344912752149184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A304205 (n + 2) - A005843 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142363.P16941344912752149184

namespace A142363

/-- `record[A020639(A304205(n+2)-A005843(n+1))]` -/
def P16941344912752149184.Spec : Prop :=
  ∀ n, P16941344912752149184.a n = A142363 (n + 1)

end A142363

/-!
# A142364: Primes congruent to 13 mod 47.

The programs for A142364, the canonical program `A142364.P10932836593473637332` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142364 has offset 1).

The definition of A142364 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1680 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142364.P10932836593473637332

`p?[47*n+13]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142364

/-- `p?[47*n+13]` -/
def P10932836593473637332.Spec : Prop :=
  ∀ n, (P10932836593473637332.a n : ℤ) = A142364 (n + 1)

theorem P10932836593473637332.correct : P10932836593473637332.Spec := by
  intro n
  simp only [A142364, Nat.add_sub_cancel]

end A142364

/-! ## A142364.P9436917982261531445

`p?[A161714(n)+A139612(n)]%A002620(n+9)²`
-/

namespace A142364.P9436917982261531445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161714 n + A139612 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A002620 (n + 9) ^ 2)

end

end A142364.P9436917982261531445

namespace A142364

/-- `p?[A161714(n)+A139612(n)]%A002620(n+9)²` -/
def P9436917982261531445.Spec : Prop :=
  ∀ n, P9436917982261531445.a n = A142364 (n + 1)

end A142364

/-! ## A142364.P12112652901717931715

`A000027(p?[A161714(n)+A139612(n)])`
-/

namespace A142364.P12112652901717931715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161714 n + A139612 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142364.P12112652901717931715

namespace A142364

/-- `A000027(p?[A161714(n)+A139612(n)])` -/
def P12112652901717931715.Spec : Prop :=
  ∀ n, P12112652901717931715.a n = A142364 (n + 1)

end A142364

/-! ## A142364.P14839477480072930283

`A000027(p?[A139609(n)+A017437(n)])`
-/

namespace A142364.P14839477480072930283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142364.P14839477480072930283

namespace A142364

/-- `A000027(p?[A139609(n)+A017437(n)])` -/
def P14839477480072930283.Spec : Prop :=
  ∀ n, P14839477480072930283.a n = A142364 (n + 1)

end A142364

/-! ## A142364.P9844009957678936825

`A000027(p?[A215145(n)+A154266(n)])`
-/

namespace A142364.P9844009957678936825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215145 n + A154266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142364.P9844009957678936825

namespace A142364

/-- `A000027(p?[A215145(n)+A154266(n)])` -/
def P9844009957678936825.Spec : Prop :=
  ∀ n, P9844009957678936825.a n = A142364 (n + 1)

end A142364

/-! ## A142364.P17288422251112634973

`p?[A139609(n)+A017437(n)]%A017221(n)²`
-/

namespace A142364.P17288422251112634973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017221 n ^ 2)

end

end A142364.P17288422251112634973

namespace A142364

/-- `p?[A139609(n)+A017437(n)]%A017221(n)²` -/
def P17288422251112634973.Spec : Prop :=
  ∀ n, P17288422251112634973.a n = A142364 (n + 1)

end A142364

/-! ## A142364.P4196738882300431351

`record[A020639(94*n+13)]`
-/

namespace A142364.P4196738882300431351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (94 * n + 13)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142364.P4196738882300431351

namespace A142364

/-- `record[A020639(94*n+13)]` -/
def P4196738882300431351.Spec : Prop :=
  ∀ n, P4196738882300431351.a n = A142364 (n + 1)

end A142364

/-! ## A142364.P9951689300002923431

`record[A006530(A135631(n)+A082285(n))]`
-/

namespace A142364.P9951689300002923431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A135631 n + A082285 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142364.P9951689300002923431

namespace A142364

/-- `record[A006530(A135631(n)+A082285(n))]` -/
def P9951689300002923431.Spec : Prop :=
  ∀ n, P9951689300002923431.a n = A142364 (n + 1)

end A142364

/-! ## A142364.P455355988233169566

`record[A006530(A161714(n)+A139612(n))]`
-/

namespace A142364.P455355988233169566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A161714 n + A139612 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142364.P455355988233169566

namespace A142364

/-- `record[A006530(A161714(n)+A139612(n))]` -/
def P455355988233169566.Spec : Prop :=
  ∀ n, P455355988233169566.a n = A142364 (n + 1)

end A142364

/-! ## A142364.P7632790750006040761

`record[A006530(A215145(n)+A154266(n))]`
-/

namespace A142364.P7632790750006040761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A215145 n + A154266 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142364.P7632790750006040761

namespace A142364

/-- `record[A006530(A215145(n)+A154266(n))]` -/
def P7632790750006040761.Spec : Prop :=
  ∀ n, P7632790750006040761.a n = A142364 (n + 1)

end A142364

/-! ## A142364.P15965252609599989960

`A000265(p?[A139609(n)+A017437(n)])`
-/

namespace A142364.P15965252609599989960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142364.P15965252609599989960

namespace A142364

/-- `A000265(p?[A139609(n)+A017437(n)])` -/
def P15965252609599989960.Spec : Prop :=
  ∀ n, P15965252609599989960.a n = A142364 (n + 1)

end A142364

/-! ## A142364.P11230156127506940026

`A001414(p?[A139609(n)+A017437(n)])`
-/

namespace A142364.P11230156127506940026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142364.P11230156127506940026

namespace A142364

/-- `A001414(p?[A139609(n)+A017437(n)])` -/
def P11230156127506940026.Spec : Prop :=
  ∀ n, P11230156127506940026.a n = A142364 (n + 1)

end A142364

/-! ## A142364.P199957992172667904

`A034699(p?[A139609(n)+A017437(n)])`
-/

namespace A142364.P199957992172667904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142364.P199957992172667904

namespace A142364

/-- `A034699(p?[A139609(n)+A017437(n)])` -/
def P199957992172667904.Spec : Prop :=
  ∀ n, P199957992172667904.a n = A142364 (n + 1)

end A142364

/-!
# A142365: Primes congruent to 14 mod 47.

The programs for A142365, the canonical program `A142365.P4519385043105044102` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142365 has offset 1).

The definition of A142365 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1716 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142365.P4519385043105044102

`p?[47*n-33]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142365

/-- `p?[47*n-33]` -/
def P4519385043105044102.Spec : Prop :=
  ∀ n, P4519385043105044102.a n = A142365 (n + 1)

theorem P4519385043105044102.correct : P4519385043105044102.Spec := by
  intro n
  simp only [A142365, Nat.add_sub_cancel]

end A142365

/-! ## A142365.P11728260577762635792

`A000027(p?[A154267(n)+A008602(n)-1])`
-/

namespace A142365.P11728260577762635792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154267 n + A008602 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142365.P11728260577762635792

namespace A142365

/-- `A000027(p?[A154267(n)+A008602(n)-1])` -/
def P11728260577762635792.Spec : Prop :=
  ∀ n, P11728260577762635792.a n = A142365 (n + 1)

end A142365

/-! ## A142365.P6597544342516259365

`p?[A154267(n)+A008602(n)-1]%A084649(n+1)`
-/

namespace A142365.P6597544342516259365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154267 n + A008602 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A084649 (n + 1))

end

end A142365.P6597544342516259365

namespace A142365

/-- `p?[A154267(n)+A008602(n)-1]%A084649(n+1)` -/
def P6597544342516259365.Spec : Prop :=
  ∀ n, P6597544342516259365.a n = A142365 (n + 1)

end A142365

/-! ## A142365.P16143687552408620873

`∩[A164135(2*n+1)-A164135(n+2), A191033(n+2)]`
-/

namespace A142365.P16143687552408620873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164135 (2 * n + 1) - A164135 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191033 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142365.P16143687552408620873

namespace A142365

/-- `∩[A164135(2*n+1)-A164135(n+2), A191033(n+2)]` -/
def P16143687552408620873.Spec : Prop :=
  ∀ n, (P16143687552408620873.a n : ℤ) = A142365 (n + 1)

end A142365

/-! ## A142365.P14166927690115064182

`record[A020639(A164135(n+3)+7)]`
-/

namespace A142365.P14166927690115064182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A164135 (n + 3) + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142365.P14166927690115064182

namespace A142365

/-- `record[A020639(A164135(n+3)+7)]` -/
def P14166927690115064182.Spec : Prop :=
  ∀ n, P14166927690115064182.a n = A142365 (n + 1)

end A142365

/-! ## A142365.P909778624757598839

`record[A020639(A304205(2*(n+1))-4*n)]`
-/

namespace A142365.P909778624757598839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A304205 (2 * (n + 1)) - (4 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142365.P909778624757598839

namespace A142365

/-- `record[A020639(A304205(2*(n+1))-4*n)]` -/
def P909778624757598839.Spec : Prop :=
  ∀ n, P909778624757598839.a n = A142365 (n + 1)

end A142365

/-! ## A142365.P8923455875025476438

`record[A020639(A004273(47*n+31))]`
-/

namespace A142365.P8923455875025476438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004273 (47 * n + 31)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142365.P8923455875025476438

namespace A142365

/-- `record[A020639(A004273(47*n+31))]` -/
def P8923455875025476438.Spec : Prop :=
  ∀ n, P8923455875025476438.a n = A142365 (n + 1)

end A142365

/-!
# A142366: Primes congruent to 15 mod 47.

The programs for A142366, the canonical program `A142366.P735969868907015625` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142366 has offset 1).

The definition of A142366 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1718 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142366.P735969868907015625

`p?[47*n+15]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142366

/-- `p?[47*n+15]` -/
def P735969868907015625.Spec : Prop :=
  ∀ n, (P735969868907015625.a n : ℤ) = A142366 (n + 1)

theorem P735969868907015625.correct : P735969868907015625.Spec := by
  intro n
  simp only [A142366, Nat.add_sub_cancel]

end A142366

/-! ## A142366.P3438738545997305779

`A000027(p?[A139609(n)+A017461(n)])`
-/

namespace A142366.P3438738545997305779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017461 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142366.P3438738545997305779

namespace A142366

/-- `A000027(p?[A139609(n)+A017461(n)])` -/
def P3438738545997305779.Spec : Prop :=
  ∀ n, P3438738545997305779.a n = A142366 (n + 1)

end A142366

/-! ## A142366.P14748865596100112540

`A000027(p?[A154267(n)+A008602(n)])`
-/

namespace A142366.P14748865596100112540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154267 n + A008602 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142366.P14748865596100112540

namespace A142366

/-- `A000027(p?[A154267(n)+A008602(n)])` -/
def P14748865596100112540.Spec : Prop :=
  ∀ n, P14748865596100112540.a n = A142366 (n + 1)

end A142366

/-! ## A142366.P14446404614510976675

`p?[A139609(n)+A017461(n)]%A017510(n)²`
-/

namespace A142366.P14446404614510976675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017461 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017510 n ^ 2)

end

end A142366.P14446404614510976675

namespace A142366

/-- `p?[A139609(n)+A017461(n)]%A017510(n)²` -/
def P14446404614510976675.Spec : Prop :=
  ∀ n, P14446404614510976675.a n = A142366 (n + 1)

end A142366

/-! ## A142366.P14984378239825229780

`p?[A139609(n)+A017461(n)]+A193581(n)²%3`
-/

namespace A142366.P14984378239825229780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017461 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A193581 n ^ 2) 3

end

end A142366.P14984378239825229780

namespace A142366

/-- `p?[A139609(n)+A017461(n)]+A193581(n)²%3` -/
def P14984378239825229780.Spec : Prop :=
  ∀ n, P14984378239825229780.a n = A142366 (n + 1)

end A142366

/-! ## A142366.P12154700949754343894

`p?[A139609(n)+A017461(n)]+A033428(n+1)%3`
-/

namespace A142366.P12154700949754343894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017461 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A033428 (n + 1)) 3

end

end A142366.P12154700949754343894

namespace A142366

/-- `p?[A139609(n)+A017461(n)]+A033428(n+1)%3` -/
def P12154700949754343894.Spec : Prop :=
  ∀ n, P12154700949754343894.a n = A142366 (n + 1)

end A142366

/-! ## A142366.P14842386853371359556

`A001414(p?[A139609(n)+A017461(n)])`
-/

namespace A142366.P14842386853371359556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017461 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142366.P14842386853371359556

namespace A142366

/-- `A001414(p?[A139609(n)+A017461(n)])` -/
def P14842386853371359556.Spec : Prop :=
  ∀ n, P14842386853371359556.a n = A142366 (n + 1)

end A142366

/-! ## A142366.P12552700415026631638

`A001414(p?[A154267(n)+A008602(n)])`
-/

namespace A142366.P12552700415026631638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154267 n + A008602 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142366.P12552700415026631638

namespace A142366

/-- `A001414(p?[A154267(n)+A008602(n)])` -/
def P12552700415026631638.Spec : Prop :=
  ∀ n, P12552700415026631638.a n = A142366 (n + 1)

end A142366

/-! ## A142366.P1696537324654436865

`A318456(p?[A139609(n)+A017461(n)])`
-/

namespace A142366.P1696537324654436865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017461 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318456 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142366.P1696537324654436865

namespace A142366

/-- `A318456(p?[A139609(n)+A017461(n)])` -/
def P1696537324654436865.Spec : Prop :=
  ∀ n, P1696537324654436865.a n = A142366 (n + 1)

end A142366

/-! ## A142366.P17458274343721891886

`A318456(p?[A154267(n)+A008602(n)])`
-/

namespace A142366.P17458274343721891886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154267 n + A008602 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318456 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142366.P17458274343721891886

namespace A142366

/-- `A318456(p?[A154267(n)+A008602(n)])` -/
def P17458274343721891886.Spec : Prop :=
  ∀ n, P17458274343721891886.a n = A142366 (n + 1)

end A142366

/-!
# A142367: Primes congruent to 16 mod 47.

The programs for A142367, the canonical program `A142367.P17124882875609087229` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142367 has offset 1).

The definition of A142367 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1711 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142367.P17124882875609087229

`p?[47*n-31]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142367

/-- `p?[47*n-31]` -/
def P17124882875609087229.Spec : Prop :=
  ∀ n, P17124882875609087229.a n = A142367 (n + 1)

theorem P17124882875609087229.correct : P17124882875609087229.Spec := by
  intro n
  simp only [A142367, Nat.add_sub_cancel]

end A142367

/-! ## A142367.P17007464196776793009

`or(1, p?[A270700(n)+A017509(n)])`
-/

namespace A142367.P17007464196776793009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270700 n + A017509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142367.P17007464196776793009

namespace A142367

/-- `or(1, p?[A270700(n)+A017509(n)])` -/
def P17007464196776793009.Spec : Prop :=
  ∀ n, P17007464196776793009.a n = A142367 (n + 1)

end A142367

/-! ## A142367.P15285056098432585311

`or(1, p?[A215145(n)+A154267(n)])`
-/

namespace A142367.P15285056098432585311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215145 n + A154267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142367.P15285056098432585311

namespace A142367

/-- `or(1, p?[A215145(n)+A154267(n)])` -/
def P15285056098432585311.Spec : Prop :=
  ∀ n, P15285056098432585311.a n = A142367 (n + 1)

end A142367

/-! ## A142367.P5947156666293362636

`A000027(p?[A270700(n)+A017509(n)])`
-/

namespace A142367.P5947156666293362636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270700 n + A017509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142367.P5947156666293362636

namespace A142367

/-- `A000027(p?[A270700(n)+A017509(n)])` -/
def P5947156666293362636.Spec : Prop :=
  ∀ n, P5947156666293362636.a n = A142367 (n + 1)

end A142367

/-! ## A142367.P1313851970379782604

`A000027(p?[A215145(n)+A154267(n)])`
-/

namespace A142367.P1313851970379782604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215145 n + A154267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142367.P1313851970379782604

namespace A142367

/-- `A000027(p?[A215145(n)+A154267(n)])` -/
def P1313851970379782604.Spec : Prop :=
  ∀ n, P1313851970379782604.a n = A142367 (n + 1)

end A142367

/-! ## A142367.P3290416791299896488

`A000007(n+1)+p?[A270700(n)+A017509(n)]`
-/

namespace A142367.P3290416791299896488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270700 n + A017509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142367.P3290416791299896488

namespace A142367

/-- `A000007(n+1)+p?[A270700(n)+A017509(n)]` -/
def P3290416791299896488.Spec : Prop :=
  ∀ n, P3290416791299896488.a n = A142367 (n + 1)

end A142367

/-! ## A142367.P16227158614527407983

`A000035(2*n)+p?[A270700(n)+A017509(n)]`
-/

namespace A142367.P16227158614527407983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270700 n + A017509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142367.P16227158614527407983

namespace A142367

/-- `A000035(2*n)+p?[A270700(n)+A017509(n)]` -/
def P16227158614527407983.Spec : Prop :=
  ∀ n, P16227158614527407983.a n = A142367 (n + 1)

end A142367

/-! ## A142367.P6252648098363385556

`A000265(p?[A270700(n)+A017509(n)])`
-/

namespace A142367.P6252648098363385556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270700 n + A017509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142367.P6252648098363385556

namespace A142367

/-- `A000265(p?[A270700(n)+A017509(n)])` -/
def P6252648098363385556.Spec : Prop :=
  ∀ n, P6252648098363385556.a n = A142367 (n + 1)

end A142367

/-! ## A142367.P11192823084053920758

`A001414(p?[A270700(n)+A017509(n)])`
-/

namespace A142367.P11192823084053920758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270700 n + A017509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142367.P11192823084053920758

namespace A142367

/-- `A001414(p?[A270700(n)+A017509(n)])` -/
def P11192823084053920758.Spec : Prop :=
  ∀ n, P11192823084053920758.a n = A142367 (n + 1)

end A142367

/-! ## A142367.P10060125897389329520

`A007947(p?[A270700(n)+A017509(n)])`
-/

namespace A142367.P10060125897389329520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270700 n + A017509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142367.P10060125897389329520

namespace A142367

/-- `A007947(p?[A270700(n)+A017509(n)])` -/
def P10060125897389329520.Spec : Prop :=
  ∀ n, P10060125897389329520.a n = A142367 (n + 1)

end A142367

/-! ## A142367.P17588833233498734038

`A008472(p?[A270700(n)+A017509(n)])`
-/

namespace A142367.P17588833233498734038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270700 n + A017509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142367.P17588833233498734038

namespace A142367

/-- `A008472(p?[A270700(n)+A017509(n)])` -/
def P17588833233498734038.Spec : Prop :=
  ∀ n, P17588833233498734038.a n = A142367 (n + 1)

end A142367

/-! ## A142367.P6087465221891412239

`A001414(p?[A215145(n)+A154267(n)])`
-/

namespace A142367.P6087465221891412239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215145 n + A154267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142367.P6087465221891412239

namespace A142367

/-- `A001414(p?[A215145(n)+A154267(n)])` -/
def P6087465221891412239.Spec : Prop :=
  ∀ n, P6087465221891412239.a n = A142367 (n + 1)

end A142367

/-! ## A142367.P9335129121791000408

`A006530(2*p?[A270700(n)+A017509(n)])`
-/

namespace A142367.P9335129121791000408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270700 n + A017509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142367.P9335129121791000408

namespace A142367

/-- `A006530(2*p?[A270700(n)+A017509(n)])` -/
def P9335129121791000408.Spec : Prop :=
  ∀ n, P9335129121791000408.a n = A142367 (n + 1)

end A142367

/-!
# A142368: Primes congruent to 17 mod 47.

The programs for A142368, the canonical program `A142368.P17642259357547429494` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142368 has offset 1).

The definition of A142368 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1701 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142368.P17642259357547429494

`p?[47*n+17]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142368

/-- `p?[47*n+17]` -/
def P17642259357547429494.Spec : Prop :=
  ∀ n, (P17642259357547429494.a n : ℤ) = A142368 (n + 1)

theorem P17642259357547429494.correct : P17642259357547429494.Spec := by
  intro n
  simp only [A142368, Nat.add_sub_cancel]

end A142368

/-! ## A142368.P3069519970156481328

`or(1, p?[A152691(n)+A128468(n)])`
-/

namespace A142368.P3069519970156481328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 n + A128468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142368.P3069519970156481328

namespace A142368

/-- `or(1, p?[A152691(n)+A128468(n)])` -/
def P3069519970156481328.Spec : Prop :=
  ∀ n, P3069519970156481328.a n = A142368 (n + 1)

end A142368

/-! ## A142368.P13323270817096852530

`p?[A152691(n)+A128468(n)]/A033999(n)²`
-/

namespace A142368.P13323270817096852530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 n + A128468 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A033999 n ^ 2 : ℚ)

end

end A142368.P13323270817096852530

namespace A142368

/-- `p?[A152691(n)+A128468(n)]/A033999(n)²` -/
def P13323270817096852530.Spec : Prop :=
  ∀ n, P13323270817096852530.a n = (A142368 (n + 1) : ℚ)

end A142368

/-! ## A142368.P3302148016026799379

`A000007(n+1)+p?[A152691(n)+A128468(n)]`
-/

namespace A142368.P3302148016026799379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 n + A128468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142368.P3302148016026799379

namespace A142368

/-- `A000007(n+1)+p?[A152691(n)+A128468(n)]` -/
def P3302148016026799379.Spec : Prop :=
  ∀ n, P3302148016026799379.a n = A142368 (n + 1)

end A142368

/-! ## A142368.P6227332587792343180

`A000038(n+1)+p?[A152691(n)+A128468(n)]`
-/

namespace A142368.P6227332587792343180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 n + A128468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142368.P6227332587792343180

namespace A142368

/-- `A000038(n+1)+p?[A152691(n)+A128468(n)]` -/
def P6227332587792343180.Spec : Prop :=
  ∀ n, P6227332587792343180.a n = A142368 (n + 1)

end A142368

/-! ## A142368.P6203446775336935116

`p?[A152691(n)+A128468(n)]%A158668(n+2)`
-/

namespace A142368.P6203446775336935116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 n + A128468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A158668 (n + 2))

end

end A142368.P6203446775336935116

namespace A142368

/-- `p?[A152691(n)+A128468(n)]%A158668(n+2)` -/
def P6203446775336935116.Spec : Prop :=
  ∀ n, P6203446775336935116.a n = A142368 (n + 1)

end A142368

/-! ## A142368.P14916289379444565306

`p?[A152691(n)+A128468(n)]+A036554(n+1)%2`
-/

namespace A142368.P14916289379444565306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 n + A128468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A036554 (n + 1)) 2

end

end A142368.P14916289379444565306

namespace A142368

/-- `p?[A152691(n)+A128468(n)]+A036554(n+1)%2` -/
def P14916289379444565306.Spec : Prop :=
  ∀ n, P14916289379444565306.a n = A142368 (n + 1)

end A142368

/-! ## A142368.P18078446079637440963

`record[A020639(47*(n+1)-30)]`
-/

namespace A142368.P18078446079637440963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (47 * (n + 1) - 30)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142368.P18078446079637440963

namespace A142368

/-- `record[A020639(47*(n+1)-30)]` -/
def P18078446079637440963.Spec : Prop :=
  ∀ n, P18078446079637440963.a n = A142368 (n + 1)

end A142368

/-! ## A142368.P17901097492182191268

`A000265(p?[A152691(n)+A128468(n)])`
-/

namespace A142368.P17901097492182191268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 n + A128468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142368.P17901097492182191268

namespace A142368

/-- `A000265(p?[A152691(n)+A128468(n)])` -/
def P17901097492182191268.Spec : Prop :=
  ∀ n, P17901097492182191268.a n = A142368 (n + 1)

end A142368

/-!
# A142369: Primes congruent to 18 mod 47.

The programs for A142369, the canonical program `A142369.P2473731333366495914` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142369 has offset 1).

The definition of A142369 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1686 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142369.P2473731333366495914

`p?[47*n+18]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142369

/-- `p?[47*n+18]` -/
def P2473731333366495914.Spec : Prop :=
  ∀ n, (P2473731333366495914.a n : ℤ) = A142369 (n + 1)

theorem P2473731333366495914.correct : P2473731333366495914.Spec := by
  intro n
  simp only [A142369, Nat.add_sub_cancel]

end A142369

/-! ## A142369.P17217510943641488646

`or(1, p?[A249674(n)+A158071(n+1)])`
-/

namespace A142369.P17217510943641488646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A158071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142369.P17217510943641488646

namespace A142369

/-- `or(1, p?[A249674(n)+A158071(n+1)])` -/
def P17217510943641488646.Spec : Prop :=
  ∀ n, P17217510943641488646.a n = A142369 (n + 1)

end A142369

/-! ## A142369.P16232121369765426811

`or(1, p?[A139609(n)+A017497(n)])`
-/

namespace A142369.P16232121369765426811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142369.P16232121369765426811

namespace A142369

/-- `or(1, p?[A139609(n)+A017497(n)])` -/
def P16232121369765426811.Spec : Prop :=
  ∀ n, P16232121369765426811.a n = A142369 (n + 1)

end A142369

/-! ## A142369.P14700893369977148157

`or(1, p?[A053741(n)-A016789(n)])`
-/

namespace A142369.P14700893369977148157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n - A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142369.P14700893369977148157

namespace A142369

/-- `or(1, p?[A053741(n)-A016789(n)])` -/
def P14700893369977148157.Spec : Prop :=
  ∀ n, P14700893369977148157.a n = A142369 (n + 1)

end A142369

/-! ## A142369.P1167366891127340470

`p?[A139609(n)+A017497(n)]%A017128(n)`
-/

namespace A142369.P1167366891127340470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017128 n)

end

end A142369.P1167366891127340470

namespace A142369

/-- `p?[A139609(n)+A017497(n)]%A017128(n)` -/
def P1167366891127340470.Spec : Prop :=
  ∀ n, P1167366891127340470.a n = A142369 (n + 1)

end A142369

/-! ## A142369.P17849064261380729604

`p?[A139609(n)+A017497(n)]/(1-A010673(n))²`
-/

namespace A142369.P17849064261380729604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017497 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / ((1 - A010673 n) ^ 2 : ℚ)

end

end A142369.P17849064261380729604

namespace A142369

/-- `p?[A139609(n)+A017497(n)]/(1-A010673(n))²` -/
def P17849064261380729604.Spec : Prop :=
  ∀ n, P17849064261380729604.a n = (A142369 (n + 1) : ℚ)

end A142369

/-! ## A142369.P16028474162442597228

`p?[A053741(n)-A016789(n)]/A158405(n+1)%2`
-/

namespace A142369.P16028474162442597228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n - A016789 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (Int.tmod (A158405 (n + 1)) 2 : ℚ)

end

end A142369.P16028474162442597228

namespace A142369

/-- `p?[A053741(n)-A016789(n)]/A158405(n+1)%2` -/
def P16028474162442597228.Spec : Prop :=
  ∀ n, P16028474162442597228.a n = (A142369 (n + 1) : ℚ)

end A142369

/-! ## A142369.P4051833701538818413

`p?[A053741(n)-A016789(n)]%(A108112(n+1)+1)²`
-/

namespace A142369.P4051833701538818413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n - A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) ((A108112 (n + 1) + 1) ^ 2)

end

end A142369.P4051833701538818413

namespace A142369

/-- `p?[A053741(n)-A016789(n)]%(A108112(n+1)+1)²` -/
def P4051833701538818413.Spec : Prop :=
  ∀ n, P4051833701538818413.a n = A142369 (n + 1)

end A142369

/-! ## A142369.P17012911373966478997

`record[A020639(A008605(2*(n+7)+1)+n+2)]`
-/

namespace A142369.P17012911373966478997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008605 (2 * (n + 7) + 1) + (n : ℤ) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142369.P17012911373966478997

namespace A142369

/-- `record[A020639(A008605(2*(n+7)+1)+n+2)]` -/
def P17012911373966478997.Spec : Prop :=
  ∀ n, P17012911373966478997.a n = A142369 (n + 1)

end A142369

/-! ## A142369.P18336103602634433894

`A001414(p?[A139609(n)+A017497(n)])`
-/

namespace A142369.P18336103602634433894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142369.P18336103602634433894

namespace A142369

/-- `A001414(p?[A139609(n)+A017497(n)])` -/
def P18336103602634433894.Spec : Prop :=
  ∀ n, P18336103602634433894.a n = A142369 (n + 1)

end A142369

/-! ## A142369.P2760841602770779497

`A000265(p?[A053741(n)-A016789(n)])`
-/

namespace A142369.P2760841602770779497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n - A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142369.P2760841602770779497

namespace A142369

/-- `A000265(p?[A053741(n)-A016789(n)])` -/
def P2760841602770779497.Spec : Prop :=
  ∀ n, P2760841602770779497.a n = A142369 (n + 1)

end A142369

/-! ## A142369.P14161375846990490488

`A001414(p?[A249674(n)+A158071(n+1)])`
-/

namespace A142369.P14161375846990490488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A158071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142369.P14161375846990490488

namespace A142369

/-- `A001414(p?[A249674(n)+A158071(n+1)])` -/
def P14161375846990490488.Spec : Prop :=
  ∀ n, P14161375846990490488.a n = A142369 (n + 1)

end A142369

/-! ## A142369.P426110177356717694

`A007913(p?[A249674(n)+A158071(n+1)])`
-/

namespace A142369.P426110177356717694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A158071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142369.P426110177356717694

namespace A142369

/-- `A007913(p?[A249674(n)+A158071(n+1)])` -/
def P426110177356717694.Spec : Prop :=
  ∀ n, P426110177356717694.a n = A142369 (n + 1)

end A142369

/-! ## A142369.P5389653805655176146

`A008472(p?[A249674(n)+A158071(n+1)])`
-/

namespace A142369.P5389653805655176146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A158071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142369.P5389653805655176146

namespace A142369

/-- `A008472(p?[A249674(n)+A158071(n+1)])` -/
def P5389653805655176146.Spec : Prop :=
  ∀ n, P5389653805655176146.a n = A142369 (n + 1)

end A142369

/-!
# A142370: Primes congruent to 19 mod 47.

The programs for A142370, the canonical program `A142370.P9402227055383927916` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142370 has offset 1).

The definition of A142370 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1696 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142370.P9402227055383927916

`p?[47*n+19]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142370

/-- `p?[47*n+19]` -/
def P9402227055383927916.Spec : Prop :=
  ∀ n, (P9402227055383927916.a n : ℤ) = A142370 (n + 1)

theorem P9402227055383927916.correct : P9402227055383927916.Spec := by
  intro n
  simp only [A142370, Nat.add_sub_cancel]

end A142370

/-! ## A142370.P16917444283763314720

`A000027(p?[A053741(n)-A016777(n)])`
-/

namespace A142370.P16917444283763314720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n - A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142370.P16917444283763314720

namespace A142370

/-- `A000027(p?[A053741(n)-A016777(n)])` -/
def P16917444283763314720.Spec : Prop :=
  ∀ n, P16917444283763314720.a n = A142370 (n + 1)

end A142370

/-! ## A142370.P1546708671517401199

`A033999(n)²*p?[A053741(n)-A016777(n)]`
-/

namespace A142370.P1546708671517401199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n - A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142370.P1546708671517401199

namespace A142370

/-- `A033999(n)²*p?[A053741(n)-A016777(n)]` -/
def P1546708671517401199.Spec : Prop :=
  ∀ n, P1546708671517401199.a n = A142370 (n + 1)

end A142370

/-! ## A142370.P14720210297273345129

`p?[A053741(n)-A016777(n)]/A054977(n+1)`
-/

namespace A142370.P14720210297273345129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n - A016777 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A054977 (n + 1) : ℚ)

end

end A142370.P14720210297273345129

namespace A142370

/-- `p?[A053741(n)-A016777(n)]/A054977(n+1)` -/
def P14720210297273345129.Spec : Prop :=
  ∀ n, P14720210297273345129.a n = (A142370 (n + 1) : ℚ)

end A142370

/-! ## A142370.P8871724373552444213

`p?[A053741(n)-A016777(n)]%A006094(n+1)²`
-/

namespace A142370.P8871724373552444213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n - A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A006094 (n + 1) ^ 2)

end

end A142370.P8871724373552444213

namespace A142370

/-- `p?[A053741(n)-A016777(n)]%A006094(n+1)²` -/
def P8871724373552444213.Spec : Prop :=
  ∀ n, P8871724373552444213.a n = A142370 (n + 1)

end A142370

/-! ## A142370.P8332709242552365648

`record[A020639(47*n+19)]`
-/

namespace A142370.P8332709242552365648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (47 * n + 19)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142370.P8332709242552365648

namespace A142370

/-- `record[A020639(47*n+19)]` -/
def P8332709242552365648.Spec : Prop :=
  ∀ n, P8332709242552365648.a n = A142370 (n + 1)

end A142370

/-! ## A142370.P2865214161427626529

`A008472(p?[A053741(n)-A016777(n)])`
-/

namespace A142370.P2865214161427626529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n - A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142370.P2865214161427626529

namespace A142370

/-- `A008472(p?[A053741(n)-A016777(n)])` -/
def P2865214161427626529.Spec : Prop :=
  ∀ n, P2865214161427626529.a n = A142370 (n + 1)

end A142370

/-! ## A142370.P875257325496153940

`A006530(2*p?[A053741(n)-A016777(n)])`
-/

namespace A142370.P875257325496153940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n - A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142370.P875257325496153940

namespace A142370

/-- `A006530(2*p?[A053741(n)-A016777(n)])` -/
def P875257325496153940.Spec : Prop :=
  ∀ n, P875257325496153940.a n = A142370 (n + 1)

end A142370

/-!
# A142371: Primes congruent to 20 mod 47.

The programs for A142371, the canonical program `A142371.P3074159514887902529` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142371 has offset 1).

The definition of A142371 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1714 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142371.P3074159514887902529

`p?[47*n+20]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142371

/-- `p?[47*n+20]` -/
def P3074159514887902529.Spec : Prop :=
  ∀ n, (P3074159514887902529.a n : ℤ) = A142371 (n + 1)

theorem P3074159514887902529.correct : P3074159514887902529.Spec := by
  intro n
  simp only [A142371, Nat.add_sub_cancel]

end A142371

/-! ## A142371.P14751934188440166604

`or(1, p?[A250024(n+1)+A016993(n)])`
-/

namespace A142371.P14751934188440166604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250024 (n + 1) + A016993 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142371.P14751934188440166604

namespace A142371

/-- `or(1, p?[A250024(n+1)+A016993(n)])` -/
def P14751934188440166604.Spec : Prop :=
  ∀ n, P14751934188440166604.a n = A142371 (n + 1)

end A142371

/-! ## A142371.P7209272009034084035

`A000027(p?[A053741(n)-A008585(n)])`
-/

namespace A142371.P7209272009034084035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n - A008585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142371.P7209272009034084035

namespace A142371

/-- `A000027(p?[A053741(n)-A008585(n)])` -/
def P7209272009034084035.Spec : Prop :=
  ∀ n, P7209272009034084035.a n = A142371 (n + 1)

end A142371

/-! ## A142371.P295602873436914640

`p?[A053741(n)-A008585(n)]*A282738(2*n)`
-/

namespace A142371.P295602873436914640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n - A008585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A282738 (2 * n)

end

end A142371.P295602873436914640

namespace A142371

/-- `p?[A053741(n)-A008585(n)]*A282738(2*n)` -/
def P295602873436914640.Spec : Prop :=
  ∀ n, P295602873436914640.a n = A142371 (n + 1)

end A142371

/-! ## A142371.P9835611168097591891

`p?[A250024(n+1)+A016993(n)]%A014803(n)`
-/

namespace A142371.P9835611168097591891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250024 (n + 1) + A016993 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A014803 n)

end

end A142371.P9835611168097591891

namespace A142371

/-- `p?[A250024(n+1)+A016993(n)]%A014803(n)` -/
def P9835611168097591891.Spec : Prop :=
  ∀ n, P9835611168097591891.a n = A142371 (n + 1)

end A142371

/-! ## A142371.P4853708641826923628

`p?[A053741(n)-A008585(n)]%A157998(n+1)`
-/

namespace A142371.P4853708641826923628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n - A008585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A157998 (n + 1))

end

end A142371.P4853708641826923628

namespace A142371

/-- `p?[A053741(n)-A008585(n)]%A157998(n+1)` -/
def P4853708641826923628.Spec : Prop :=
  ∀ n, P4853708641826923628.a n = A142371 (n + 1)

end A142371

/-! ## A142371.P15422895365700239199

`p?[A053741(n)-A008585(n)]+A005843(n)%2`
-/

namespace A142371.P15422895365700239199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n - A008585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A005843 n) 2

end

end A142371.P15422895365700239199

namespace A142371

/-- `p?[A053741(n)-A008585(n)]+A005843(n)%2` -/
def P15422895365700239199.Spec : Prop :=
  ∀ n, P15422895365700239199.a n = A142371 (n + 1)

end A142371

/-! ## A142371.P8393769457629060568

`p?[A053741(n)-A008585(n)]+A224977(n)%3`
-/

namespace A142371.P8393769457629060568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n - A008585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A224977 n) 3

end

end A142371.P8393769457629060568

namespace A142371

/-- `p?[A053741(n)-A008585(n)]+A224977(n)%3` -/
def P8393769457629060568.Spec : Prop :=
  ∀ n, P8393769457629060568.a n = A142371 (n + 1)

end A142371

/-! ## A142371.P13481313221568080267

`A002061(n)%2*p?[A053741(n)-A008585(n)]`
-/

namespace A142371.P13481313221568080267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n - A008585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002061 n) 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142371.P13481313221568080267

namespace A142371

/-- `A002061(n)%2*p?[A053741(n)-A008585(n)]` -/
def P13481313221568080267.Spec : Prop :=
  ∀ n, P13481313221568080267.a n = A142371 (n + 1)

end A142371

/-! ## A142371.P14183396433175272693

`p?[A053741(n)-A008585(n)]+A232342(n+1)%2`
-/

namespace A142371.P14183396433175272693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n - A008585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A232342 (n + 1)) 2

end

end A142371.P14183396433175272693

namespace A142371

/-- `p?[A053741(n)-A008585(n)]+A232342(n+1)%2` -/
def P14183396433175272693.Spec : Prop :=
  ∀ n, P14183396433175272693.a n = A142371 (n + 1)

end A142371

/-! ## A142371.P15284327581567255851

`record[A020639(47*(n+1)+20)]`
-/

namespace A142371.P15284327581567255851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (47 * (n + 1) + 20)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142371.P15284327581567255851

namespace A142371

/-- `record[A020639(47*(n+1)+20)]` -/
def P15284327581567255851.Spec : Prop :=
  ∀ n, P15284327581567255851.a n = A142371 (n + 1)

end A142371

/-! ## A142371.P335008128427518776

`A000265(p?[A053741(n)-A008585(n)])`
-/

namespace A142371.P335008128427518776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n - A008585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142371.P335008128427518776

namespace A142371

/-- `A000265(p?[A053741(n)-A008585(n)])` -/
def P335008128427518776.Spec : Prop :=
  ∀ n, P335008128427518776.a n = A142371 (n + 1)

end A142371

/-! ## A142371.P15471930425273606022

`A001414(p?[A053741(n)-A008585(n)])`
-/

namespace A142371.P15471930425273606022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n - A008585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142371.P15471930425273606022

namespace A142371

/-- `A001414(p?[A053741(n)-A008585(n)])` -/
def P15471930425273606022.Spec : Prop :=
  ∀ n, P15471930425273606022.a n = A142371 (n + 1)

end A142371

/-! ## A142371.P7167010262475309635

`A000265(p?[A250024(n+1)+A016993(n)])`
-/

namespace A142371.P7167010262475309635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250024 (n + 1) + A016993 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142371.P7167010262475309635

namespace A142371

/-- `A000265(p?[A250024(n+1)+A016993(n)])` -/
def P7167010262475309635.Spec : Prop :=
  ∀ n, P7167010262475309635.a n = A142371 (n + 1)

end A142371

/-! ## A142371.P8867565955142442934

`A007913(p?[A250024(n+1)+A016993(n)])`
-/

namespace A142371.P8867565955142442934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250024 (n + 1) + A016993 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142371.P8867565955142442934

namespace A142371

/-- `A007913(p?[A250024(n+1)+A016993(n)])` -/
def P8867565955142442934.Spec : Prop :=
  ∀ n, P8867565955142442934.a n = A142371 (n + 1)

end A142371

/-! ## A142371.P15125711197710972806

`record[A006530(A250024(2*(n+1))+A016993(2*n+1))]`
-/

namespace A142371.P15125711197710972806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A250024 (2 * (n + 1)) + A016993 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142371.P15125711197710972806

namespace A142371

/-- `record[A006530(A250024(2*(n+1))+A016993(2*n+1))]` -/
def P15125711197710972806.Spec : Prop :=
  ∀ n, P15125711197710972806.a n = A142371 (n + 1)

end A142371

/-!
# A142372: Primes congruent to 21 mod 47.

The programs for A142372, the canonical program `A142372.P1169779385598995932` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142372 has offset 1).

The definition of A142372 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1675 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142372.P1169779385598995932

`p?[47*n+21]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142372

/-- `p?[47*n+21]` -/
def P1169779385598995932.Spec : Prop :=
  ∀ n, (P1169779385598995932.a n : ℤ) = A142372 (n + 1)

theorem P1169779385598995932.correct : P1169779385598995932.Spec := by
  intro n
  simp only [A142372, Nat.add_sub_cancel]

end A142372

/-! ## A142372.P7097082223667164884

`or(1, p?[A139609(n)+A017497(n)+3])`
-/

namespace A142372.P7097082223667164884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017497 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142372.P7097082223667164884

namespace A142372

/-- `or(1, p?[A139609(n)+A017497(n)+3])` -/
def P7097082223667164884.Spec : Prop :=
  ∀ n, P7097082223667164884.a n = A142372 (n + 1)

end A142372

/-! ## A142372.P16487745506947155739

`or(1, p?[3*A004771(n)-A026741(n)])`
-/

namespace A142372.P16487745506947155739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A004771 n - A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142372.P16487745506947155739

namespace A142372

/-- `or(1, p?[3*A004771(n)-A026741(n)])` -/
def P16487745506947155739.Spec : Prop :=
  ∀ n, P16487745506947155739.a n = A142372 (n + 1)

end A142372

/-! ## A142372.P384895010937755141

`A052410(p?[3*A004771(n)-A026741(n)])`
-/

namespace A142372.P384895010937755141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A004771 n - A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142372.P384895010937755141

namespace A142372

/-- `A052410(p?[3*A004771(n)-A026741(n)])` -/
def P384895010937755141.Spec : Prop :=
  ∀ n, P384895010937755141.a n = A142372 (n + 1)

end A142372

/-! ## A142372.P18265542817232843098

`A034699(p?[3*A004771(n)-A026741(n)])`
-/

namespace A142372.P18265542817232843098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A004771 n - A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142372.P18265542817232843098

namespace A142372

/-- `A034699(p?[3*A004771(n)-A026741(n)])` -/
def P18265542817232843098.Spec : Prop :=
  ∀ n, P18265542817232843098.a n = A142372 (n + 1)

end A142372

/-!
# A142373: Primes congruent to 22 mod 47.

The programs for A142373, the canonical program `A142373.P5843553424164270790` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142373 has offset 1).

The definition of A142373 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1701 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142373.P5843553424164270790

`p?[47*n+22]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142373

/-- `p?[47*n+22]` -/
def P5843553424164270790.Spec : Prop :=
  ∀ n, (P5843553424164270790.a n : ℤ) = A142373 (n + 1)

theorem P5843553424164270790.correct : P5843553424164270790.Spec := by
  intro n
  simp only [A142373, Nat.add_sub_cancel]

end A142373

/-! ## A142373.P826926952591577698

`A000027(p?[A250024(n+1)+A017017(n)])`
-/

namespace A142373.P826926952591577698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250024 (n + 1) + A017017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142373.P826926952591577698

namespace A142373

/-- `A000027(p?[A250024(n+1)+A017017(n)])` -/
def P826926952591577698.Spec : Prop :=
  ∀ n, P826926952591577698.a n = A142373 (n + 1)

end A142373

/-! ## A142373.P3312293391214913976

`A000038(n+1)+p?[A250024(n+1)+A017017(n)]`
-/

namespace A142373.P3312293391214913976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250024 (n + 1) + A017017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142373.P3312293391214913976

namespace A142373

/-- `A000038(n+1)+p?[A250024(n+1)+A017017(n)]` -/
def P3312293391214913976.Spec : Prop :=
  ∀ n, P3312293391214913976.a n = A142373 (n + 1)

end A142373

/-! ## A142373.P10368879723872514793

`p?[A250024(n+1)+A017017(n)]%A125491(n+1)`
-/

namespace A142373.P10368879723872514793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250024 (n + 1) + A017017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A125491 (n + 1))

end

end A142373.P10368879723872514793

namespace A142373

/-- `p?[A250024(n+1)+A017017(n)]%A125491(n+1)` -/
def P10368879723872514793.Spec : Prop :=
  ∀ n, P10368879723872514793.a n = A142373 (n + 1)

end A142373

/-! ## A142373.P6524046919163629697

`p?[A250024(n+1)+A017017(n)]/A034947(n+1)²`
-/

namespace A142373.P6524046919163629697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250024 (n + 1) + A017017 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A034947 (n + 1) ^ 2 : ℚ)

end

end A142373.P6524046919163629697

namespace A142373

/-- `p?[A250024(n+1)+A017017(n)]/A034947(n+1)²` -/
def P6524046919163629697.Spec : Prop :=
  ∀ n, P6524046919163629697.a n = (A142373 (n + 1) : ℚ)

end A142373

/-! ## A142373.P13798614180406751844

`A000265(p?[A250024(n+1)+A017017(n)])`
-/

namespace A142373.P13798614180406751844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250024 (n + 1) + A017017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142373.P13798614180406751844

namespace A142373

/-- `A000265(p?[A250024(n+1)+A017017(n)])` -/
def P13798614180406751844.Spec : Prop :=
  ∀ n, P13798614180406751844.a n = A142373 (n + 1)

end A142373

/-! ## A142373.P1678997058657406602

`A001414(p?[A250024(n+1)+A017017(n)])`
-/

namespace A142373.P1678997058657406602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250024 (n + 1) + A017017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142373.P1678997058657406602

namespace A142373

/-- `A001414(p?[A250024(n+1)+A017017(n)])` -/
def P1678997058657406602.Spec : Prop :=
  ∀ n, P1678997058657406602.a n = A142373 (n + 1)

end A142373

/-! ## A142373.P3597631747556147891

`A008472(p?[A250024(n+1)+A017017(n)])`
-/

namespace A142373.P3597631747556147891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250024 (n + 1) + A017017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142373.P3597631747556147891

namespace A142373

/-- `A008472(p?[A250024(n+1)+A017017(n)])` -/
def P3597631747556147891.Spec : Prop :=
  ∀ n, P3597631747556147891.a n = A142373 (n + 1)

end A142373

/-! ## A142373.P8633056288169661655

`A008472(p?[A183010(n)-A326139(n+1)])`
-/

namespace A142373.P8633056288169661655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 n - A326139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142373.P8633056288169661655

namespace A142373

/-- `A008472(p?[A183010(n)-A326139(n+1)])` -/
def P8633056288169661655.Spec : Prop :=
  ∀ n, P8633056288169661655.a n = A142373 (n + 1)

end A142373

/-!
# A142374: Primes congruent to 23 mod 47.

The programs for A142374, the canonical program `A142374.P10160663467144381370` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142374 has offset 1).

The definition of A142374 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1709 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142374.P10160663467144381370

`p?[47*n-24]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142374

/-- `p?[47*n-24]` -/
def P10160663467144381370.Spec : Prop :=
  ∀ n, P10160663467144381370.a n = A142374 (n + 1)

theorem P10160663467144381370.correct : P10160663467144381370.Spec := by
  intro n
  simp only [A142374, Nat.add_sub_cancel]

end A142374

/-! ## A142374.P9387536833777048517

`∑{d}[p?[A053742(n)-(A008585(n)+2)], #]-1`
-/

namespace A142374.P9387536833777048517
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - (A008585 n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - 1

end

end A142374.P9387536833777048517

namespace A142374

/-- `∑{d}[p?[A053742(n)-(A008585(n)+2)], #]-1` -/
def P9387536833777048517.Spec : Prop :=
  ∀ n, P9387536833777048517.a n = A142374 (n + 1)

end A142374

/-! ## A142374.P4127578392150394994

`A000027(p?[A008606(n)-A001057(n)])`
-/

namespace A142374.P4127578392150394994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008606 n - A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142374.P4127578392150394994

namespace A142374

/-- `A000027(p?[A008606(n)-A001057(n)])` -/
def P4127578392150394994.Spec : Prop :=
  ∀ n, P4127578392150394994.a n = A142374 (n + 1)

end A142374

/-! ## A142374.P5737384434600189574

`record[A020639(A008605(2*n+1)+n)]`
-/

namespace A142374.P5737384434600189574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008605 (2 * n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142374.P5737384434600189574

namespace A142374

/-- `record[A020639(A008605(2*n+1)+n)]` -/
def P5737384434600189574.Spec : Prop :=
  ∀ n, P5737384434600189574.a n = A142374 (n + 1)

end A142374

/-! ## A142374.P13024850018795900072

`record[A020639(A183010(2*n+1)-n)]`
-/

namespace A142374.P13024850018795900072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A183010 (2 * n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142374.P13024850018795900072

namespace A142374

/-- `record[A020639(A183010(2*n+1)-n)]` -/
def P13024850018795900072.Spec : Prop :=
  ∀ n, P13024850018795900072.a n = A142374 (n + 1)

end A142374

/-! ## A142374.P16699562477514189482

`record[A020639(A053742(n)-A016789(n))]`
-/

namespace A142374.P16699562477514189482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A053742 n - A016789 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142374.P16699562477514189482

namespace A142374

/-- `record[A020639(A053742(n)-A016789(n))]` -/
def P16699562477514189482.Spec : Prop :=
  ∀ n, P16699562477514189482.a n = A142374 (n + 1)

end A142374

/-! ## A142374.P7265180660423283760

`record[A020639(A139609(2*n)+A017425(2*n+1))]`
-/

namespace A142374.P7265180660423283760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A139609 (2 * n) + A017425 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142374.P7265180660423283760

namespace A142374

/-- `record[A020639(A139609(2*n)+A017425(2*n+1))]` -/
def P7265180660423283760.Spec : Prop :=
  ∀ n, P7265180660423283760.a n = A142374 (n + 1)

end A142374

/-! ## A142374.P458773328266604503

`record[A020639(A139609(n)+A017425(n)+11)-n%2]`
-/

namespace A142374.P458773328266604503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A139609 n + A017425 n + 11).toNat - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142374.P458773328266604503

namespace A142374

/-- `record[A020639(A139609(n)+A017425(n)+11)-n%2]` -/
def P458773328266604503.Spec : Prop :=
  ∀ n, P458773328266604503.a n = A142374 (n + 1)

end A142374

/-! ## A142374.P12391594857537787174

`record[A006530(A008574(47*n+11)+2)]`
-/

namespace A142374.P12391594857537787174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A008574 (47 * n + 11) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142374.P12391594857537787174

namespace A142374

/-- `record[A006530(A008574(47*n+11)+2)]` -/
def P12391594857537787174.Spec : Prop :=
  ∀ n, P12391594857537787174.a n = A142374 (n + 1)

end A142374

/-!
# A142375: Primes congruent to 24 mod 47.

The programs for A142375, the canonical program `A142375.P4003145315948319740` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142375 has offset 1).

The definition of A142375 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1704 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142375.P4003145315948319740

`p?[47*n+24]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142375

/-- `p?[47*n+24]` -/
def P4003145315948319740.Spec : Prop :=
  ∀ n, (P4003145315948319740.a n : ℤ) = A142375 (n + 1)

theorem P4003145315948319740.correct : P4003145315948319740.Spec := by
  intro n
  simp only [A142375, Nat.add_sub_cancel]

end A142375

/-! ## A142375.P17865365538382645084

`A000027(p?[A053742(n)-A016777(n)])`
-/

namespace A142375.P17865365538382645084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142375.P17865365538382645084

namespace A142375

/-- `A000027(p?[A053742(n)-A016777(n)])` -/
def P17865365538382645084.Spec : Prop :=
  ∀ n, P17865365538382645084.a n = A142375 (n + 1)

end A142375

/-! ## A142375.P12186816350913442463

`p?[A053742(n)-A016777(n)]%A017056(n)`
-/

namespace A142375.P12186816350913442463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017056 n)

end

end A142375.P12186816350913442463

namespace A142375

/-- `p?[A053742(n)-A016777(n)]%A017056(n)` -/
def P12186816350913442463.Spec : Prop :=
  ∀ n, P12186816350913442463.a n = A142375 (n + 1)

end A142375

/-! ## A142375.P8724692949849681699

`(A005408(n)-2*n)*p?[A053742(n)-A016777(n)]`
-/

namespace A142375.P8724692949849681699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005408 n - (2 * n : ℤ)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142375.P8724692949849681699

namespace A142375

/-- `(A005408(n)-2*n)*p?[A053742(n)-A016777(n)]` -/
def P8724692949849681699.Spec : Prop :=
  ∀ n, P8724692949849681699.a n = A142375 (n + 1)

end A142375

/-! ## A142375.P5537444253325187241

`A000027(p?[A103214(n)-A032742(n+1)])`
-/

namespace A142375.P5537444253325187241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103214 n - A032742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142375.P5537444253325187241

namespace A142375

/-- `A000027(p?[A103214(n)-A032742(n+1)])` -/
def P5537444253325187241.Spec : Prop :=
  ∀ n, P5537444253325187241.a n = A142375 (n + 1)

end A142375

/-! ## A142375.P17407153409469668800

`∩[A215148(2*n+1)+n, A000040(n+2)]`
-/

namespace A142375.P17407153409469668800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 (2 * n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142375.P17407153409469668800

namespace A142375

/-- `∩[A215148(2*n+1)+n, A000040(n+2)]` -/
def P17407153409469668800.Spec : Prop :=
  ∀ n, (P17407153409469668800.a n : ℤ) = A142375 (n + 1)

end A142375

/-! ## A142375.P17866039433052105455

`record[A006530(47*(n+1)+24)]`
-/

namespace A142375.P17866039433052105455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (47 * (n + 1) + 24)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142375.P17866039433052105455

namespace A142375

/-- `record[A006530(47*(n+1)+24)]` -/
def P17866039433052105455.Spec : Prop :=
  ∀ n, P17866039433052105455.a n = A142375 (n + 1)

end A142375

/-! ## A142375.P4511312464481595461

`record[A020639(A008605(2*(n+1)+1)+n+2)]`
-/

namespace A142375.P4511312464481595461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008605 (2 * (n + 1) + 1) + (n : ℤ) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142375.P4511312464481595461

namespace A142375

/-- `record[A020639(A008605(2*(n+1)+1)+n+2)]` -/
def P4511312464481595461.Spec : Prop :=
  ∀ n, P4511312464481595461.a n = A142375 (n + 1)

end A142375

/-! ## A142375.P1491612283022724252

`A000265(p?[A053742(n)-A016777(n)])`
-/

namespace A142375.P1491612283022724252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142375.P1491612283022724252

namespace A142375

/-- `A000265(p?[A053742(n)-A016777(n)])` -/
def P1491612283022724252.Spec : Prop :=
  ∀ n, P1491612283022724252.a n = A142375 (n + 1)

end A142375

/-! ## A142375.P9462251025020738441

`A001414(p?[A053742(n)-A016777(n)])`
-/

namespace A142375.P9462251025020738441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142375.P9462251025020738441

namespace A142375

/-- `A001414(p?[A053742(n)-A016777(n)])` -/
def P9462251025020738441.Spec : Prop :=
  ∀ n, P9462251025020738441.a n = A142375 (n + 1)

end A142375

/-! ## A142375.P11599239484488086638

`record[A020639(A053742(n+1)-A016777(n+1))]`
-/

namespace A142375.P11599239484488086638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A053742 (n + 1) - A016777 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142375.P11599239484488086638

namespace A142375

/-- `record[A020639(A053742(n+1)-A016777(n+1))]` -/
def P11599239484488086638.Spec : Prop :=
  ∀ n, P11599239484488086638.a n = A142375 (n + 1)

end A142375

/-!
# A142376: Primes congruent to 25 mod 47.

The programs for A142376, the canonical program `A142376.P6797894476532796369` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142376 has offset 1).

The definition of A142376 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1705 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142376.P6797894476532796369

`p?[47*n-22]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142376

/-- `p?[47*n-22]` -/
def P6797894476532796369.Spec : Prop :=
  ∀ n, P6797894476532796369.a n = A142376 (n + 1)

theorem P6797894476532796369.correct : P6797894476532796369.Spec := by
  intro n
  simp only [A142376, Nat.add_sub_cancel]

end A142376

/-! ## A142376.P4776868992006101143

`or(1, p?[A053742(n)-A008585(n)])`
-/

namespace A142376.P4776868992006101143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - A008585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142376.P4776868992006101143

namespace A142376

/-- `or(1, p?[A053742(n)-A008585(n)])` -/
def P4776868992006101143.Spec : Prop :=
  ∀ n, P4776868992006101143.a n = A142376 (n + 1)

end A142376

/-! ## A142376.P12889709185469161965

`A000027(p?[A053742(n)-A008486(n)])`
-/

namespace A142376.P12889709185469161965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142376.P12889709185469161965

namespace A142376

/-- `A000027(p?[A053742(n)-A008486(n)])` -/
def P12889709185469161965.Spec : Prop :=
  ∀ n, P12889709185469161965.a n = A142376 (n + 1)

end A142376

/-! ## A142376.P5291079347105944052

`p?[A053742(n)-A008486(n)]%A157609(n+1)`
-/

namespace A142376.P5291079347105944052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A157609 (n + 1))

end

end A142376.P5291079347105944052

namespace A142376

/-- `p?[A053742(n)-A008486(n)]%A157609(n+1)` -/
def P5291079347105944052.Spec : Prop :=
  ∀ n, P5291079347105944052.a n = A142376 (n + 1)

end A142376

/-! ## A142376.P2540948847948763879

`p?[A053742(n)-A008585(n)]%A052905(n+5)²`
-/

namespace A142376.P2540948847948763879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - A008585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A052905 (n + 5) ^ 2)

end

end A142376.P2540948847948763879

namespace A142376

/-- `p?[A053742(n)-A008585(n)]%A052905(n+5)²` -/
def P2540948847948763879.Spec : Prop :=
  ∀ n, P2540948847948763879.a n = A142376 (n + 1)

end A142376

/-! ## A142376.P4222842513797643681

`A005408(n)-n+p?[A053742(n)-A008486(n)]-(n+1)`
-/

namespace A142376.P4222842513797643681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - (n : ℤ) + (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (n + 1 : ℤ))

end

end A142376.P4222842513797643681

namespace A142376

/-- `A005408(n)-n+p?[A053742(n)-A008486(n)]-(n+1)` -/
def P4222842513797643681.Spec : Prop :=
  ∀ n, P4222842513797643681.a n = A142376 (n + 1)

end A142376

/-! ## A142376.P2736993706877083065

`A000265(p?[A053742(n)-A008486(n)])`
-/

namespace A142376.P2736993706877083065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142376.P2736993706877083065

namespace A142376

/-- `A000265(p?[A053742(n)-A008486(n)])` -/
def P2736993706877083065.Spec : Prop :=
  ∀ n, P2736993706877083065.a n = A142376 (n + 1)

end A142376

/-! ## A142376.P8287541645595182957

`A000265(p?[A053742(n)-A008585(n)])`
-/

namespace A142376.P8287541645595182957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - A008585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142376.P8287541645595182957

namespace A142376

/-- `A000265(p?[A053742(n)-A008585(n)])` -/
def P8287541645595182957.Spec : Prop :=
  ∀ n, P8287541645595182957.a n = A142376 (n + 1)

end A142376

/-! ## A142376.P16252339839990201862

`A001414(p?[A053742(n)-A008486(n)])`
-/

namespace A142376.P16252339839990201862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142376.P16252339839990201862

namespace A142376

/-- `A001414(p?[A053742(n)-A008486(n)])` -/
def P16252339839990201862.Spec : Prop :=
  ∀ n, P16252339839990201862.a n = A142376 (n + 1)

end A142376

/-! ## A142376.P16515367156370950503

`A008472(p?[A053742(n)-A008486(n)])`
-/

namespace A142376.P16515367156370950503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142376.P16515367156370950503

namespace A142376

/-- `A008472(p?[A053742(n)-A008486(n)])` -/
def P16515367156370950503.Spec : Prop :=
  ∀ n, P16515367156370950503.a n = A142376 (n + 1)

end A142376

/-! ## A142376.P3403829717557790656

`A034699(p?[A053742(n)-A008486(n)])`
-/

namespace A142376.P3403829717557790656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142376.P3403829717557790656

namespace A142376

/-- `A034699(p?[A053742(n)-A008486(n)])` -/
def P3403829717557790656.Spec : Prop :=
  ∀ n, P3403829717557790656.a n = A142376 (n + 1)

end A142376

/-!
# A142377: Primes congruent to 26 mod 47.

The programs for A142377, the canonical program `A142377.P12606999402120422051` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142377 has offset 1).

The definition of A142377 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1716 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142377.P12606999402120422051

`p?[47*n-21]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142377

/-- `p?[47*n-21]` -/
def P12606999402120422051.Spec : Prop :=
  ∀ n, P12606999402120422051.a n = A142377 (n + 1)

theorem P12606999402120422051.correct : P12606999402120422051.Spec := by
  intro n
  simp only [A142377, Nat.add_sub_cancel]

end A142377

/-! ## A142377.P1404558069637489866

`or(1, p?[A304157(n+1)+A016789(n)])`
-/

namespace A142377.P1404558069637489866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304157 (n + 1) + A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142377.P1404558069637489866

namespace A142377

/-- `or(1, p?[A304157(n+1)+A016789(n)])` -/
def P1404558069637489866.Spec : Prop :=
  ∀ n, P1404558069637489866.a n = A142377 (n + 1)

end A142377

/-! ## A142377.P18006194960704048524

`∑{d}[p?[A053742(n)-(A008585(n)-1)], #]-1`
-/

namespace A142377.P18006194960704048524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - (A008585 n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - 1

end

end A142377.P18006194960704048524

namespace A142377

/-- `∑{d}[p?[A053742(n)-(A008585(n)-1)], #]-1` -/
def P18006194960704048524.Spec : Prop :=
  ∀ n, P18006194960704048524.a n = A142377 (n + 1)

end A142377

/-! ## A142377.P7749407957937209340

`A014963(10*(n+1))*p?[A304157(n+1)+A016789(n)]`
-/

namespace A142377.P7749407957937209340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304157 (n + 1) + A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142377.P7749407957937209340

namespace A142377

/-- `A014963(10*(n+1))*p?[A304157(n+1)+A016789(n)]` -/
def P7749407957937209340.Spec : Prop :=
  ∀ n, P7749407957937209340.a n = A142377 (n + 1)

end A142377

/-! ## A142377.P666813263624107169

`A000265(p?[A195035(n+1)+A106839(n)])`
-/

namespace A142377.P666813263624107169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195035 (n + 1) + A106839 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142377.P666813263624107169

namespace A142377

/-- `A000265(p?[A195035(n+1)+A106839(n)])` -/
def P666813263624107169.Spec : Prop :=
  ∀ n, P666813263624107169.a n = A142377 (n + 1)

end A142377

/-! ## A142377.P16106549097956402409

`A001414(p?[A195035(n+1)+A106839(n)])`
-/

namespace A142377.P16106549097956402409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195035 (n + 1) + A106839 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142377.P16106549097956402409

namespace A142377

/-- `A001414(p?[A195035(n+1)+A106839(n)])` -/
def P16106549097956402409.Spec : Prop :=
  ∀ n, P16106549097956402409.a n = A142377 (n + 1)

end A142377

/-! ## A142377.P17008987276970383083

`A000265(p?[A304157(n+1)+A016789(n)])`
-/

namespace A142377.P17008987276970383083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304157 (n + 1) + A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142377.P17008987276970383083

namespace A142377

/-- `A000265(p?[A304157(n+1)+A016789(n)])` -/
def P17008987276970383083.Spec : Prop :=
  ∀ n, P17008987276970383083.a n = A142377 (n + 1)

end A142377

/-! ## A142377.P12852393400694982971

`A007913(p?[A304157(n+1)+A016789(n)])`
-/

namespace A142377.P12852393400694982971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304157 (n + 1) + A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142377.P12852393400694982971

namespace A142377

/-- `A007913(p?[A304157(n+1)+A016789(n)])` -/
def P12852393400694982971.Spec : Prop :=
  ∀ n, P12852393400694982971.a n = A142377 (n + 1)

end A142377

/-! ## A142377.P3476212154806505645

`A007947(p?[A304157(n+1)+A016789(n)])`
-/

namespace A142377.P3476212154806505645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304157 (n + 1) + A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142377.P3476212154806505645

namespace A142377

/-- `A007947(p?[A304157(n+1)+A016789(n)])` -/
def P3476212154806505645.Spec : Prop :=
  ∀ n, P3476212154806505645.a n = A142377 (n + 1)

end A142377

/-! ## A142377.P11345414460560377456

`record[A020639(A053742(2*n+1)-A016789(2*n))]`
-/

namespace A142377.P11345414460560377456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A053742 (2 * n + 1) - A016789 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142377.P11345414460560377456

namespace A142377

/-- `record[A020639(A053742(2*n+1)-A016789(2*n))]` -/
def P11345414460560377456.Spec : Prop :=
  ∀ n, P11345414460560377456.a n = A142377 (n + 1)

end A142377

/-! ## A142377.P1126427820307454974

`record[A006530(146+94*n)]`
-/

namespace A142377.P1126427820307454974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (146 + 94 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142377.P1126427820307454974

namespace A142377

/-- `record[A006530(146+94*n)]` -/
def P1126427820307454974.Spec : Prop :=
  ∀ n, P1126427820307454974.a n = A142377 (n + 1)

end A142377

/-!
# A142378: Primes congruent to 27 mod 47.

The programs for A142378, the canonical program `A142378.P325881904583641626` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142378 has offset 1).

The definition of A142378 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1712 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142378.P325881904583641626

`p?[47*n+27]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142378

/-- `p?[47*n+27]` -/
def P325881904583641626.Spec : Prop :=
  ∀ n, (P325881904583641626.a n : ℤ) = A142378 (n + 1)

theorem P325881904583641626.correct : P325881904583641626.Spec := by
  intro n
  simp only [A142378, Nat.add_sub_cancel]

end A142378

/-! ## A142378.P11076062012504167434

`or(1, p?[A053742(n+1)-A016777(n)])`
-/

namespace A142378.P11076062012504167434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 (n + 1) - A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142378.P11076062012504167434

namespace A142378

/-- `or(1, p?[A053742(n+1)-A016777(n)])` -/
def P11076062012504167434.Spec : Prop :=
  ∀ n, P11076062012504167434.a n = A142378 (n + 1)

end A142378

/-! ## A142378.P8181102861258917070

`A000027(p?[A161709(n)+A158060(n+1)])`
-/

namespace A142378.P8181102861258917070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n + A158060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142378.P8181102861258917070

namespace A142378

/-- `A000027(p?[A161709(n)+A158060(n+1)])` -/
def P8181102861258917070.Spec : Prop :=
  ∀ n, P8181102861258917070.a n = A142378 (n + 1)

end A142378

/-! ## A142378.P13736123350200561668

`A000038(n+1)+p?[A161709(n)+A158060(n+1)]`
-/

namespace A142378.P13736123350200561668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n + A158060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142378.P13736123350200561668

namespace A142378

/-- `A000038(n+1)+p?[A161709(n)+A158060(n+1)]` -/
def P13736123350200561668.Spec : Prop :=
  ∀ n, P13736123350200561668.a n = A142378 (n + 1)

end A142378

/-!
# A142379: Primes congruent to 28 mod 47.

The programs for A142379, the canonical program `A142379.P4192917569701328443` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142379 has offset 1).

The definition of A142379 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1709 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142379.P4192917569701328443

`p?[47*n-19]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142379

/-- `p?[47*n-19]` -/
def P4192917569701328443.Spec : Prop :=
  ∀ n, P4192917569701328443.a n = A142379 (n + 1)

theorem P4192917569701328443.correct : P4192917569701328443.Spec := by
  intro n
  simp only [A142379, Nat.add_sub_cancel]

end A142379

/-! ## A142379.P9900924531708586939

`or(1, p?[A053742(n+1)-A008585(n)])`
-/

namespace A142379.P9900924531708586939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 (n + 1) - A008585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142379.P9900924531708586939

namespace A142379

/-- `or(1, p?[A053742(n+1)-A008585(n)])` -/
def P9900924531708586939.Spec : Prop :=
  ∀ n, P9900924531708586939.a n = A142379 (n + 1)

end A142379

/-! ## A142379.P14334629982539633589

`or(1, p?[A248572(n+9)+A161705(n)])`
-/

namespace A142379.P14334629982539633589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 (n + 9) + A161705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142379.P14334629982539633589

namespace A142379

/-- `or(1, p?[A248572(n+9)+A161705(n)])` -/
def P14334629982539633589.Spec : Prop :=
  ∀ n, P14334629982539633589.a n = A142379 (n + 1)

end A142379

/-! ## A142379.P8684584250191089421

`A000027(p?[A053742(n+1)-A008585(n)])`
-/

namespace A142379.P8684584250191089421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 (n + 1) - A008585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142379.P8684584250191089421

namespace A142379

/-- `A000027(p?[A053742(n+1)-A008585(n)])` -/
def P8684584250191089421.Spec : Prop :=
  ∀ n, P8684584250191089421.a n = A142379 (n + 1)

end A142379

/-! ## A142379.P14758860808497043412

`record[A020639(A069894(n+8)-A001107(n+3))]`
-/

namespace A142379.P14758860808497043412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A069894 (n + 8) - A001107 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142379.P14758860808497043412

namespace A142379

/-- `record[A020639(A069894(n+8)-A001107(n+3))]` -/
def P14758860808497043412.Spec : Prop :=
  ∀ n, P14758860808497043412.a n = A142379 (n + 1)

end A142379

/-! ## A142379.P8444578016065066360

`A007913(p?[A017185(3*n+2)+A008586(5*n+2)])`
-/

namespace A142379.P8444578016065066360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 (3 * n + 2) + A008586 (5 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142379.P8444578016065066360

namespace A142379

/-- `A007913(p?[A017185(3*n+2)+A008586(5*n+2)])` -/
def P8444578016065066360.Spec : Prop :=
  ∀ n, P8444578016065066360.a n = A142379 (n + 1)

end A142379

/-!
# A142380: Primes congruent to 29 mod 47.

The programs for A142380, the canonical program `A142380.P13151873305960099680` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142380 has offset 1).

The definition of A142380 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1721 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142380.P13151873305960099680

`p?[47*n-18]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142380

/-- `p?[47*n-18]` -/
def P13151873305960099680.Spec : Prop :=
  ∀ n, P13151873305960099680.a n = A142380 (n + 1)

theorem P13151873305960099680.correct : P13151873305960099680.Spec := by
  intro n
  simp only [A142380, Nat.add_sub_cancel]

end A142380

/-! ## A142380.P6848395068387866027

`or(1, p?[47*n+29])`
-/

namespace A142380.P6848395068387866027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  47 * n + 29

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142380.P6848395068387866027

namespace A142380

/-- `or(1, p?[47*n+29])` -/
def P6848395068387866027.Spec : Prop :=
  ∀ n, (P6848395068387866027.a n : ℤ) = A142380 (n + 1)

end A142380

/-! ## A142380.P17121738870419863738

`A008683(A006881(n+1))*p?[47*n+29]`
-/

namespace A142380.P17121738870419863738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  47 * n + 29

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A006881 (n + 1)).toNat * (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A142380.P17121738870419863738

namespace A142380

/-- `A008683(A006881(n+1))*p?[47*n+29]` -/
def P17121738870419863738.Spec : Prop :=
  ∀ n, P17121738870419863738.a n = A142380 (n + 1)

end A142380

/-! ## A142380.P4183807736081073104

`p?[47*n+29]*A078899(A038026(n+1))`
-/

namespace A142380.P4183807736081073104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  47 * n + 29

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) * A078899 (A038026 (n + 1)).toNat

end

end A142380.P4183807736081073104

namespace A142380

/-- `p?[47*n+29]*A078899(A038026(n+1))` -/
def P4183807736081073104.Spec : Prop :=
  ∀ n, P4183807736081073104.a n = A142380 (n + 1)

end A142380

/-! ## A142380.P14090988198975362927

`record[A020639(47*n+29)]`
-/

namespace A142380.P14090988198975362927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (47 * n + 29)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142380.P14090988198975362927

namespace A142380

/-- `record[A020639(47*n+29)]` -/
def P14090988198975362927.Spec : Prop :=
  ∀ n, P14090988198975362927.a n = A142380 (n + 1)

end A142380

/-! ## A142380.P5225685324614827899

`A001222(A163466(n))*p?[47*n+29]`
-/

namespace A142380.P5225685324614827899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  47 * n + 29

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A163466 n).toNat * (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A142380.P5225685324614827899

namespace A142380

/-- `A001222(A163466(n))*p?[47*n+29]` -/
def P5225685324614827899.Spec : Prop :=
  ∀ n, P5225685324614827899.a n = A142380 (n + 1)

end A142380

/-!
# A142381: Primes congruent to 30 mod 47.

The programs for A142381, the canonical program `A142381.P18133789118264969557` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142381 has offset 1).

The definition of A142381 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1722 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142381.P18133789118264969557

`p?[47*n-64]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142381

/-- `p?[47*n-64]` -/
def P18133789118264969557.Spec : Prop :=
  ∀ n, P18133789118264969557.a n = A142381 (n + 1)

theorem P18133789118264969557.correct : P18133789118264969557.Spec := by
  intro n
  simp only [A142381, Nat.add_sub_cancel]

end A142381

/-! ## A142381.P9891869734908357799

`or(1, p?[A044102(n+2)+A017449(n)])`
-/

namespace A142381.P9891869734908357799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044102 (n + 2) + A017449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142381.P9891869734908357799

namespace A142381

/-- `or(1, p?[A044102(n+2)+A017449(n)])` -/
def P9891869734908357799.Spec : Prop :=
  ∀ n, P9891869734908357799.a n = A142381 (n + 1)

end A142381

/-! ## A142381.P12269385874534472804

`or(1, p?[A158065(n+2)+A017437(n)])`
-/

namespace A142381.P12269385874534472804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158065 (n + 2) + A017437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142381.P12269385874534472804

namespace A142381

/-- `or(1, p?[A158065(n+2)+A017437(n)])` -/
def P12269385874534472804.Spec : Prop :=
  ∀ n, P12269385874534472804.a n = A142381 (n + 1)

end A142381

/-! ## A142381.P12190053273420069113

`p?[A158065(n+2)+A017437(n)]%A051388(n+1)`
-/

namespace A142381.P12190053273420069113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158065 (n + 2) + A017437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A051388 (n + 1))

end

end A142381.P12190053273420069113

namespace A142381

/-- `p?[A158065(n+2)+A017437(n)]%A051388(n+1)` -/
def P12190053273420069113.Spec : Prop :=
  ∀ n, P12190053273420069113.a n = A142381 (n + 1)

end A142381

/-! ## A142381.P15871524709793095320

`A006530(3*p?[A044102(n+2)+A017449(n)])`
-/

namespace A142381.P15871524709793095320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044102 (n + 2) + A017449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142381.P15871524709793095320

namespace A142381

/-- `A006530(3*p?[A044102(n+2)+A017449(n)])` -/
def P15871524709793095320.Spec : Prop :=
  ∀ n, P15871524709793095320.a n = A142381 (n + 1)

end A142381

/-!
# A142382: Primes congruent to 31 mod 47.

The programs for A142382, the canonical program `A142382.P9930877696019130693` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142382 has offset 1).

The definition of A142382 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1693 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142382.P9930877696019130693

`p?[47*n+31]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142382

/-- `p?[47*n+31]` -/
def P9930877696019130693.Spec : Prop :=
  ∀ n, (P9930877696019130693.a n : ℤ) = A142382 (n + 1)

theorem P9930877696019130693.correct : P9930877696019130693.Spec := by
  intro n
  simp only [A142382, Nat.add_sub_cancel]

end A142382

/-! ## A142382.P9261494015516660781

`or(1, p?[16*A001281(n)-n])`
-/

namespace A142382.P9261494015516660781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A001281 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142382.P9261494015516660781

namespace A142382

/-- `or(1, p?[16*A001281(n)-n])` -/
def P9261494015516660781.Spec : Prop :=
  ∀ n, P9261494015516660781.a n = A142382 (n + 1)

end A142382

/-! ## A142382.P690705176726697318

`A000027(p?[16*A001281(n)-n])`
-/

namespace A142382.P690705176726697318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A001281 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142382.P690705176726697318

namespace A142382

/-- `A000027(p?[16*A001281(n)-n])` -/
def P690705176726697318.Spec : Prop :=
  ∀ n, P690705176726697318.a n = A142382 (n + 1)

end A142382

/-! ## A142382.P12309358205627478581

`p?[16*A001281(n)-n]%A017116(n)`
-/

namespace A142382.P12309358205627478581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A001281 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017116 n)

end

end A142382.P12309358205627478581

namespace A142382

/-- `p?[16*A001281(n)-n]%A017116(n)` -/
def P12309358205627478581.Spec : Prop :=
  ∀ n, P12309358205627478581.a n = A142382 (n + 1)

end A142382

/-! ## A142382.P14240295896008411773

`record[A020639(47*n+31)]`
-/

namespace A142382.P14240295896008411773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (47 * n + 31)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142382.P14240295896008411773

namespace A142382

/-- `record[A020639(47*n+31)]` -/
def P14240295896008411773.Spec : Prop :=
  ∀ n, P14240295896008411773.a n = A142382 (n + 1)

end A142382

/-! ## A142382.P1285840433990146544

`A000265(p?[16*A001281(n)-n])`
-/

namespace A142382.P1285840433990146544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A001281 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142382.P1285840433990146544

namespace A142382

/-- `A000265(p?[16*A001281(n)-n])` -/
def P1285840433990146544.Spec : Prop :=
  ∀ n, P1285840433990146544.a n = A142382 (n + 1)

end A142382

/-! ## A142382.P2252463296891962869

`A007947(p?[16*A001281(n)-n])`
-/

namespace A142382.P2252463296891962869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A001281 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142382.P2252463296891962869

namespace A142382

/-- `A007947(p?[16*A001281(n)-n])` -/
def P2252463296891962869.Spec : Prop :=
  ∀ n, P2252463296891962869.a n = A142382 (n + 1)

end A142382

/-! ## A142382.P12599002575358939807

`A006530(2*p?[16*A001281(n)-n])`
-/

namespace A142382.P12599002575358939807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A001281 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142382.P12599002575358939807

namespace A142382

/-- `A006530(2*p?[16*A001281(n)-n])` -/
def P12599002575358939807.Spec : Prop :=
  ∀ n, P12599002575358939807.a n = A142382 (n + 1)

end A142382

/-!
# A142383: Primes congruent to 32 mod 47.

The programs for A142383, the canonical program `A142383.P10376334562524176700` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142383 has offset 1).

The definition of A142383 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1715 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142383.P10376334562524176700

`p?[47*n-15]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142383

/-- `p?[47*n-15]` -/
def P10376334562524176700.Spec : Prop :=
  ∀ n, P10376334562524176700.a n = A142383 (n + 1)

theorem P10376334562524176700.correct : P10376334562524176700.Spec := by
  intro n
  simp only [A142383, Nat.add_sub_cancel]

end A142383

/-! ## A142383.P6803402239527732965

`record[A020639(A164135(2*(n+2))-8)]`
-/

namespace A142383.P6803402239527732965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A164135 (2 * (n + 2)) - 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142383.P6803402239527732965

namespace A142383

/-- `record[A020639(A164135(2*(n+2))-8)]` -/
def P6803402239527732965.Spec : Prop :=
  ∀ n, P6803402239527732965.a n = A142383 (n + 1)

end A142383

/-! ## A142383.P16552622287169441775

`record[A006530(A157330(n+1)+A128473(n+1))]`
-/

namespace A142383.P16552622287169441775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A157330 (n + 1) + A128473 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142383.P16552622287169441775

namespace A142383

/-- `record[A006530(A157330(n+1)+A128473(n+1))]` -/
def P16552622287169441775.Spec : Prop :=
  ∀ n, P16552622287169441775.a n = A142383 (n + 1)

end A142383

/-! ## A142383.P14534200830020003520

`record[A020639(A157330(n+1)+A128473(n+1))]`
-/

namespace A142383.P14534200830020003520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A157330 (n + 1) + A128473 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142383.P14534200830020003520

namespace A142383

/-- `record[A020639(A157330(n+1)+A128473(n+1))]` -/
def P14534200830020003520.Spec : Prop :=
  ∀ n, P14534200830020003520.a n = A142383 (n + 1)

end A142383

/-! ## A142383.P15580572150877994185

`record[A006530(A139264(n+2)+A008606(n)+2)]`
-/

namespace A142383.P15580572150877994185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A139264 (n + 2) + A008606 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142383.P15580572150877994185

namespace A142383

/-- `record[A006530(A139264(n+2)+A008606(n)+2)]` -/
def P15580572150877994185.Spec : Prop :=
  ∀ n, P15580572150877994185.a n = A142383 (n + 1)

end A142383

/-! ## A142383.P2076430982192790526

`record[A090368(A164135(2*(n+1)))]`
-/

namespace A142383.P2076430982192790526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (A164135 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142383.P2076430982192790526

namespace A142383

/-- `record[A090368(A164135(2*(n+1)))]` -/
def P2076430982192790526.Spec : Prop :=
  ∀ n, P2076430982192790526.a n = A142383 (n + 1)

end A142383

/-!
# A142384: Primes congruent to 33 mod 47.

The programs for A142384, the canonical program `A142384.P5270389051962731911` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142384 has offset 1).

The definition of A142384 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1724 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142384.P5270389051962731911

`p?[47*n+33]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142384

/-- `p?[47*n+33]` -/
def P5270389051962731911.Spec : Prop :=
  ∀ n, (P5270389051962731911.a n : ℤ) = A142384 (n + 1)

theorem P5270389051962731911.correct : P5270389051962731911.Spec := by
  intro n
  simp only [A142384, Nat.add_sub_cancel]

end A142384

/-! ## A142384.P4869406563315105966

`A000027(p?[n²-A186950(n)-5])`
-/

namespace A142384.P4869406563315105966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A186950 n - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142384.P4869406563315105966

namespace A142384

/-- `A000027(p?[n²-A186950(n)-5])` -/
def P4869406563315105966.Spec : Prop :=
  ∀ n, P4869406563315105966.a n = A142384 (n + 1)

end A142384

/-! ## A142384.P2976304967100462876

`p?[n²-A186950(n)-5]%A344357(n+1)`
-/

namespace A142384.P2976304967100462876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A186950 n - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A344357 (n + 1))

end

end A142384.P2976304967100462876

namespace A142384

/-- `p?[n²-A186950(n)-5]%A344357(n+1)` -/
def P2976304967100462876.Spec : Prop :=
  ∀ n, P2976304967100462876.a n = A142384 (n + 1)

end A142384

/-! ## A142384.P16592206439570209390

`∩[A164135(2*(n+1))-A164135(n+2), A191072(n+2)]`
-/

namespace A142384.P16592206439570209390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164135 (2 * (n + 1)) - A164135 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191072 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142384.P16592206439570209390

namespace A142384

/-- `∩[A164135(2*(n+1))-A164135(n+2), A191072(n+2)]` -/
def P16592206439570209390.Spec : Prop :=
  ∀ n, (P16592206439570209390.a n : ℤ) = A142384 (n + 1)

end A142384

/-! ## A142384.P1968287912705004723

`record[A006530(A164135(2*(n+1))+A164135(2*(n+2)))]`
-/

namespace A142384.P1968287912705004723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A164135 (2 * (n + 1)) + A164135 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142384.P1968287912705004723

namespace A142384

/-- `record[A006530(A164135(2*(n+1))+A164135(2*(n+2)))]` -/
def P1968287912705004723.Spec : Prop :=
  ∀ n, P1968287912705004723.a n = A142384 (n + 1)

end A142384

/-! ## A142384.P18100456774796810606

`record[A020639(A164135(2*(n+1))+A164135(2*(n+2)))]`
-/

namespace A142384.P18100456774796810606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A164135 (2 * (n + 1)) + A164135 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142384.P18100456774796810606

namespace A142384

/-- `record[A020639(A164135(2*(n+1))+A164135(2*(n+2)))]` -/
def P18100456774796810606.Spec : Prop :=
  ∀ n, P18100456774796810606.a n = A142384 (n + 1)

end A142384

/-!
# A142385: Primes congruent to 34 mod 47.

The programs for A142385, the canonical program `A142385.P9294846718590855022` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142385 has offset 1).

The definition of A142385 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1709 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142385.P9294846718590855022

`p?[47*n-13]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142385

/-- `p?[47*n-13]` -/
def P9294846718590855022.Spec : Prop :=
  ∀ n, P9294846718590855022.a n = A142385 (n + 1)

theorem P9294846718590855022.correct : P9294846718590855022.Spec := by
  intro n
  simp only [A142385, Nat.add_sub_cancel]

end A142385

/-! ## A142385.P6813054586568516548

`A020985(n)²*p?[A152691(n+1)+A128468(n)]`
-/

namespace A142385.P6813054586568516548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 (n + 1) + A128468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142385.P6813054586568516548

namespace A142385

/-- `A020985(n)²*p?[A152691(n+1)+A128468(n)]` -/
def P6813054586568516548.Spec : Prop :=
  ∀ n, P6813054586568516548.a n = A142385 (n + 1)

end A142385

/-! ## A142385.P2853789142054188638

`(A000041(n)%2)!*p?[A152691(n+1)+A128468(n)]`
-/

namespace A142385.P2853789142054188638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 (n + 1) + A128468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142385.P2853789142054188638

namespace A142385

/-- `(A000041(n)%2)!*p?[A152691(n+1)+A128468(n)]` -/
def P2853789142054188638.Spec : Prop :=
  ∀ n, P2853789142054188638.a n = A142385 (n + 1)

end A142385

/-! ## A142385.P17395921707092389189

`A000027(p?[A053742(n+3)-A008585(n)])`
-/

namespace A142385.P17395921707092389189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 (n + 3) - A008585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142385.P17395921707092389189

namespace A142385

/-- `A000027(p?[A053742(n+3)-A008585(n)])` -/
def P17395921707092389189.Spec : Prop :=
  ∀ n, P17395921707092389189.a n = A142385 (n + 1)

end A142385

/-!
# A142386: Primes congruent to 35 mod 47.

The programs for A142386, the canonical program `A142386.P1052990782215385682` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142386 has offset 1).

The definition of A142386 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1706 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142386.P1052990782215385682

`p?[47*n-12]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142386

/-- `p?[47*n-12]` -/
def P1052990782215385682.Spec : Prop :=
  ∀ n, P1052990782215385682.a n = A142386 (n + 1)

theorem P1052990782215385682.correct : P1052990782215385682.Spec := by
  intro n
  simp only [A142386, Nat.add_sub_cancel]

end A142386

/-! ## A142386.P6582532096086300206

`or(1, p?[n²-A186950(n)-3])`
-/

namespace A142386.P6582532096086300206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A186950 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142386.P6582532096086300206

namespace A142386

/-- `or(1, p?[n²-A186950(n)-3])` -/
def P6582532096086300206.Spec : Prop :=
  ∀ n, P6582532096086300206.a n = A142386 (n + 1)

end A142386

/-! ## A142386.P14839652750879200194

`p?[n²-A186950(n)-3]%A188186(n+1)`
-/

namespace A142386.P14839652750879200194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A186950 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A188186 (n + 1))

end

end A142386.P14839652750879200194

namespace A142386

/-- `p?[n²-A186950(n)-3]%A188186(n+1)` -/
def P14839652750879200194.Spec : Prop :=
  ∀ n, P14839652750879200194.a n = A142386 (n + 1)

end A142386

/-! ## A142386.P10559902160190093738

`p?[n²-A186950(n)-3]+and(8, A007949(n+1))`
-/

namespace A142386.P10559902160190093738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A186950 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.land 8 (A007949 (n + 1))

end

end A142386.P10559902160190093738

namespace A142386

/-- `p?[n²-A186950(n)-3]+and(8, A007949(n+1))` -/
def P10559902160190093738.Spec : Prop :=
  ∀ n, P10559902160190093738.a n = A142386 (n + 1)

end A142386

/-! ## A142386.P118131739830324671

`p?[A174029(n)+A017353(n)]%A080132(n)`
-/

namespace A142386.P118131739830324671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174029 n + A017353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A080132 n)

end

end A142386.P118131739830324671

namespace A142386

/-- `p?[A174029(n)+A017353(n)]%A080132(n)` -/
def P118131739830324671.Spec : Prop :=
  ∀ n, P118131739830324671.a n = A142386 (n + 1)

end A142386

/-! ## A142386.P3485483241565505854

`A097807(n)²*p?[A174029(n)+A017353(n)]`
-/

namespace A142386.P3485483241565505854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174029 n + A017353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n ^ 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142386.P3485483241565505854

namespace A142386

/-- `A097807(n)²*p?[A174029(n)+A017353(n)]` -/
def P3485483241565505854.Spec : Prop :=
  ∀ n, P3485483241565505854.a n = A142386 (n + 1)

end A142386

/-! ## A142386.P13203600211085213204

`A033999(n+7)²*p?[A174029(n)+A017353(n)]`
-/

namespace A142386.P13203600211085213204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174029 n + A017353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 7) ^ 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142386.P13203600211085213204

namespace A142386

/-- `A033999(n+7)²*p?[A174029(n)+A017353(n)]` -/
def P13203600211085213204.Spec : Prop :=
  ∀ n, P13203600211085213204.a n = A142386 (n + 1)

end A142386

/-! ## A142386.P15154398794920353123

`A000265(p?[n²-A186950(n)-3])`
-/

namespace A142386.P15154398794920353123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A186950 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142386.P15154398794920353123

namespace A142386

/-- `A000265(p?[n²-A186950(n)-3])` -/
def P15154398794920353123.Spec : Prop :=
  ∀ n, P15154398794920353123.a n = A142386 (n + 1)

end A142386

/-! ## A142386.P13354241772436061544

`A325959(p?[A174029(n)+A017353(n)])`
-/

namespace A142386.P13354241772436061544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174029 n + A017353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325959 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142386.P13354241772436061544

namespace A142386

/-- `A325959(p?[A174029(n)+A017353(n)])` -/
def P13354241772436061544.Spec : Prop :=
  ∀ n, P13354241772436061544.a n = A142386 (n + 1)

end A142386

/-!
# A142387: Primes congruent to 36 mod 47.

The programs for A142387, the canonical program `A142387.P16442262103069469868` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142387 has offset 1).

The definition of A142387 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1674 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142387.P16442262103069469868

`p?[47*n-11]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142387

/-- `p?[47*n-11]` -/
def P16442262103069469868.Spec : Prop :=
  ∀ n, P16442262103069469868.a n = A142387 (n + 1)

theorem P16442262103069469868.correct : P16442262103069469868.Spec := by
  intro n
  simp only [A142387, Nat.add_sub_cancel]

end A142387

/-! ## A142387.P15675380202827102706

`or(1, p?[A215145(n+1)+A154267(n)])`
-/

namespace A142387.P15675380202827102706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215145 (n + 1) + A154267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142387.P15675380202827102706

namespace A142387

/-- `or(1, p?[A215145(n+1)+A154267(n)])` -/
def P15675380202827102706.Spec : Prop :=
  ∀ n, P15675380202827102706.a n = A142387 (n + 1)

end A142387

/-! ## A142387.P18409477533834376040

`A000007(n+1)+p?[A215145(n+1)+A154267(n)]`
-/

namespace A142387.P18409477533834376040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215145 (n + 1) + A154267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142387.P18409477533834376040

namespace A142387

/-- `A000007(n+1)+p?[A215145(n+1)+A154267(n)]` -/
def P18409477533834376040.Spec : Prop :=
  ∀ n, P18409477533834376040.a n = A142387 (n + 1)

end A142387

/-! ## A142387.P17360586855309568360

`p?[A215145(n+1)+A154267(n)]%A031936(3*n+5)`
-/

namespace A142387.P17360586855309568360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215145 (n + 1) + A154267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A031936 (3 * n + 5))

end

end A142387.P17360586855309568360

namespace A142387

/-- `p?[A215145(n+1)+A154267(n)]%A031936(3*n+5)` -/
def P17360586855309568360.Spec : Prop :=
  ∀ n, P17360586855309568360.a n = A142387 (n + 1)

end A142387

/-! ## A142387.P6626615231807879417

`record[A001414(94*(n+1)-11)]`
-/

namespace A142387.P6626615231807879417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (94 * (n + 1) - 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142387.P6626615231807879417

namespace A142387

/-- `record[A001414(94*(n+1)-11)]` -/
def P6626615231807879417.Spec : Prop :=
  ∀ n, P6626615231807879417.a n = A142387 (n + 1)

end A142387

/-! ## A142387.P9594348258733420790

`record[A006530(94*(n+1)-11)]`
-/

namespace A142387.P9594348258733420790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (94 * (n + 1) - 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142387.P9594348258733420790

namespace A142387

/-- `record[A006530(94*(n+1)-11)]` -/
def P9594348258733420790.Spec : Prop :=
  ∀ n, P9594348258733420790.a n = A142387 (n + 1)

end A142387

/-! ## A142387.P1034597236840328594

`record[A020639(94*(n+1)-11)]`
-/

namespace A142387.P1034597236840328594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (94 * (n + 1) - 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142387.P1034597236840328594

namespace A142387

/-- `record[A020639(94*(n+1)-11)]` -/
def P1034597236840328594.Spec : Prop :=
  ∀ n, P1034597236840328594.a n = A142387 (n + 1)

end A142387

/-! ## A142387.P4533756261393092617

`A007913(p?[A158066(n+1)-A103517(n+6)])`
-/

namespace A142387.P4533756261393092617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) - A103517 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142387.P4533756261393092617

namespace A142387

/-- `A007913(p?[A158066(n+1)-A103517(n+6)])` -/
def P4533756261393092617.Spec : Prop :=
  ∀ n, P4533756261393092617.a n = A142387 (n + 1)

end A142387

/-! ## A142387.P17182560365428670883

`A093411(p?[2*n+3+A017233(5*n+3)])`
-/

namespace A142387.P17182560365428670883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) + A017233 (5 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142387.P17182560365428670883

namespace A142387

/-- `A093411(p?[2*n+3+A017233(5*n+3)])` -/
def P17182560365428670883.Spec : Prop :=
  ∀ n, P17182560365428670883.a n = A142387 (n + 1)

end A142387

/-!
# A142388: Primes congruent to 37 mod 47.

The programs for A142388, the canonical program `A142388.P7511379802884212700` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142388 has offset 1).

The definition of A142388 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1713 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142388.P7511379802884212700

`or(1, p?[47*n-10])`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142388

/-- `or(1, p?[47*n-10])` -/
def P7511379802884212700.Spec : Prop :=
  ∀ n, P7511379802884212700.a n = A142388 (n + 1)

theorem P7511379802884212700.correct : P7511379802884212700.Spec := by
  intro n
  simp only [A142388, Nat.add_sub_cancel]

end A142388

/-! ## A142388.P8016844976675412424

`p?[a(n-1)+47]` with `a(0)=37`
-/

namespace A142388.P8016844976675412424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [37] fun n f1 =>
  f1 (n - 1) + 47

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142388.P8016844976675412424

namespace A142388

/-- `p?[a(n-1)+47]` -/
def P8016844976675412424.Spec : Prop :=
  ∀ n, (P8016844976675412424.a n : ℤ) = A142388 (n + 1)

end A142388

/-! ## A142388.P12927402428745903424

`p?[48*n-(n+10)]`
-/

namespace A142388.P12927402428745903424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (48 * n : ℤ) - (n + 10 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142388.P12927402428745903424

namespace A142388

/-- `p?[48*n-(n+10)]` -/
def P12927402428745903424.Spec : Prop :=
  ∀ n, P12927402428745903424.a n = A142388 (n + 1)

end A142388

/-! ## A142388.P2255295673670002097

`A000027(p?[47*n-10])`
-/

namespace A142388.P2255295673670002097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (47 * n : ℤ) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142388.P2255295673670002097

namespace A142388

/-- `A000027(p?[47*n-10])` -/
def P2255295673670002097.Spec : Prop :=
  ∀ n, P2255295673670002097.a n = A142388 (n + 1)

end A142388

/-!
# A142389: Primes congruent to 38 mod 47.

The programs for A142389, the canonical program `A142389.P6617584334484456022` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142389 has offset 1).

The definition of A142389 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1707 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142389.P6617584334484456022

`p?[47*n-9]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142389

/-- `p?[47*n-9]` -/
def P6617584334484456022.Spec : Prop :=
  ∀ n, P6617584334484456022.a n = A142389 (n + 1)

theorem P6617584334484456022.correct : P6617584334484456022.Spec := by
  intro n
  simp only [A142389, Nat.add_sub_cancel]

end A142389

/-! ## A142389.P15753313016468924643

`or(1, p?[n²-A186950(n)])`
-/

namespace A142389.P15753313016468924643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A186950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142389.P15753313016468924643

namespace A142389

/-- `or(1, p?[n²-A186950(n)])` -/
def P15753313016468924643.Spec : Prop :=
  ∀ n, P15753313016468924643.a n = A142389 (n + 1)

end A142389

/-! ## A142389.P16862295550627153771

`A000027(p?[n²-A186950(n)])`
-/

namespace A142389.P16862295550627153771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A186950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142389.P16862295550627153771

namespace A142389

/-- `A000027(p?[n²-A186950(n)])` -/
def P16862295550627153771.Spec : Prop :=
  ∀ n, P16862295550627153771.a n = A142389 (n + 1)

end A142389

/-! ## A142389.P8085135657173210013

`p?[n²-A186950(n)]%A017044(n)`
-/

namespace A142389.P8085135657173210013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A186950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017044 n)

end

end A142389.P8085135657173210013

namespace A142389

/-- `p?[n²-A186950(n)]%A017044(n)` -/
def P8085135657173210013.Spec : Prop :=
  ∀ n, P8085135657173210013.a n = A142389 (n + 1)

end A142389

/-! ## A142389.P13537725468220541149

`A339012(A005843(n))+p?[n²-A186950(n)]`
-/

namespace A142389.P13537725468220541149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A186950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339012 (A005843 n).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142389.P13537725468220541149

namespace A142389

/-- `A339012(A005843(n))+p?[n²-A186950(n)]` -/
def P13537725468220541149.Spec : Prop :=
  ∀ n, P13537725468220541149.a n = A142389 (n + 1)

end A142389

/-! ## A142389.P1582240033660533796

`p?[n²-A186950(n)]/(A001936(n)/A079006(n))²`
-/

namespace A142389.P1582240033660533796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A186950 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / ((A001936 n : ℚ) / (A079006 n : ℚ)) ^ 2

end

end A142389.P1582240033660533796

namespace A142389

/-- `p?[n²-A186950(n)]/(A001936(n)/A079006(n))²` -/
def P1582240033660533796.Spec : Prop :=
  ∀ n, P1582240033660533796.a n = (A142389 (n + 1) : ℚ)

end A142389

/-! ## A142389.P6691373029744664885

`∩[A164135(2*(n+1))-2, A191072(n+2)]`
-/

namespace A142389.P6691373029744664885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164135 (2 * (n + 1)) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191072 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142389.P6691373029744664885

namespace A142389

/-- `∩[A164135(2*(n+1))-2, A191072(n+2)]` -/
def P6691373029744664885.Spec : Prop :=
  ∀ n, (P6691373029744664885.a n : ℤ) = A142389 (n + 1)

end A142389

/-! ## A142389.P13454837148134952756

`A000265(p?[n²-A186950(n)])`
-/

namespace A142389.P13454837148134952756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A186950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142389.P13454837148134952756

namespace A142389

/-- `A000265(p?[n²-A186950(n)])` -/
def P13454837148134952756.Spec : Prop :=
  ∀ n, P13454837148134952756.a n = A142389 (n + 1)

end A142389

/-! ## A142389.P582160293771193929

`A001414(p?[n²-A186950(n)])`
-/

namespace A142389.P582160293771193929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A186950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142389.P582160293771193929

namespace A142389

/-- `A001414(p?[n²-A186950(n)])` -/
def P582160293771193929.Spec : Prop :=
  ∀ n, P582160293771193929.a n = A142389 (n + 1)

end A142389

/-! ## A142389.P6457085015623858329

`A007913(p?[n²-A186950(n)])`
-/

namespace A142389.P6457085015623858329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A186950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142389.P6457085015623858329

namespace A142389

/-- `A007913(p?[n²-A186950(n)])` -/
def P6457085015623858329.Spec : Prop :=
  ∀ n, P6457085015623858329.a n = A142389 (n + 1)

end A142389

/-! ## A142389.P2609817938061877867

`A330691(p?[n²-A186950(n)])`
-/

namespace A142389.P2609817938061877867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A186950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330691 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142389.P2609817938061877867

namespace A142389

/-- `A330691(p?[n²-A186950(n)])` -/
def P2609817938061877867.Spec : Prop :=
  ∀ n, P2609817938061877867.a n = A142389 (n + 1)

end A142389

/-! ## A142389.P3550103931350074815

`A351078(p?[n²-A186950(n)])`
-/

namespace A142389.P3550103931350074815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A186950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142389.P3550103931350074815

namespace A142389

/-- `A351078(p?[n²-A186950(n)])` -/
def P3550103931350074815.Spec : Prop :=
  ∀ n, P3550103931350074815.a n = A142389 (n + 1)

end A142389

/-! ## A142389.P13902094368832378041

`A006530(lcm(2, p?[n²-A186950(n)]))`
-/

namespace A142389.P13902094368832378041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A186950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)))

end

end A142389.P13902094368832378041

namespace A142389

/-- `A006530(lcm(2, p?[n²-A186950(n)]))` -/
def P13902094368832378041.Spec : Prop :=
  ∀ n, P13902094368832378041.a n = A142389 (n + 1)

end A142389

/-!
# A142390: Primes congruent to 39 mod 47.

The programs for A142390, the canonical program `A142390.P556182768649480966` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142390 has offset 1).

The definition of A142390 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1722 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142390.P556182768649480966

`p?[47*n-8]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142390

/-- `p?[47*n-8]` -/
def P556182768649480966.Spec : Prop :=
  ∀ n, P556182768649480966.a n = A142390 (n + 1)

theorem P556182768649480966.correct : P556182768649480966.Spec := by
  intro n
  simp only [A142390, Nat.add_sub_cancel]

end A142390

/-! ## A142390.P15492133807555249335

`A000027(p?[n²-A186950(n)+1])`
-/

namespace A142390.P15492133807555249335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A186950 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142390.P15492133807555249335

namespace A142390

/-- `A000027(p?[n²-A186950(n)+1])` -/
def P15492133807555249335.Spec : Prop :=
  ∀ n, P15492133807555249335.a n = A142390 (n + 1)

end A142390

/-! ## A142390.P14803301170199570636

`or(p?[n²-A186950(n)+1], A010051(n+1))`
-/

namespace A142390.P14803301170199570636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A186950 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A010051 (n + 1))

end

end A142390.P14803301170199570636

namespace A142390

/-- `or(p?[n²-A186950(n)+1], A010051(n+1))` -/
def P14803301170199570636.Spec : Prop :=
  ∀ n, P14803301170199570636.a n = A142390 (n + 1)

end A142390

/-! ## A142390.P3880325177268874065

`or(p?[n²-A186950(n)+1], A035263(n+1))`
-/

namespace A142390.P3880325177268874065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A186950 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A035263 (n + 1))

end

end A142390.P3880325177268874065

namespace A142390

/-- `or(p?[n²-A186950(n)+1], A035263(n+1))` -/
def P3880325177268874065.Spec : Prop :=
  ∀ n, P3880325177268874065.a n = A142390 (n + 1)

end A142390

/-! ## A142390.P17263779650333851410

`p?[n²-A186950(n)+1]/A309873(n+1)²`
-/

namespace A142390.P17263779650333851410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A186950 n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A309873 (n + 1) ^ 2 : ℚ)

end

end A142390.P17263779650333851410

namespace A142390

/-- `p?[n²-A186950(n)+1]/A309873(n+1)²` -/
def P17263779650333851410.Spec : Prop :=
  ∀ n, P17263779650333851410.a n = (A142390 (n + 1) : ℚ)

end A142390

/-! ## A142390.P13072371757571729069

`∩[A164135(n+1)-1, A191072(n+1)]`
-/

namespace A142390.P13072371757571729069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164135 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142390.P13072371757571729069

namespace A142390

/-- `∩[A164135(n+1)-1, A191072(n+1)]` -/
def P13072371757571729069.Spec : Prop :=
  ∀ n, (P13072371757571729069.a n : ℤ) = A142390 (n + 1)

end A142390

/-! ## A142390.P1667660395678721069

`A000265(p?[n²-A186950(n)+1])`
-/

namespace A142390.P1667660395678721069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A186950 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142390.P1667660395678721069

namespace A142390

/-- `A000265(p?[n²-A186950(n)+1])` -/
def P1667660395678721069.Spec : Prop :=
  ∀ n, P1667660395678721069.a n = A142390 (n + 1)

end A142390

/-!
# A142391: Primes congruent to 40 mod 47.

The programs for A142391, the canonical program `A142391.P6690089389627483051` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142391 has offset 1).

The definition of A142391 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1692 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142391.P6690089389627483051

`p?[47*n-7]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142391

/-- `p?[47*n-7]` -/
def P6690089389627483051.Spec : Prop :=
  ∀ n, P6690089389627483051.a n = A142391 (n + 1)

theorem P6690089389627483051.correct : P6690089389627483051.Spec := by
  intro n
  simp only [A142391, Nat.add_sub_cancel]

end A142391

/-! ## A142391.P3356736381143891214

`A000027(p?[n²-A186950(n)+2])`
-/

namespace A142391.P3356736381143891214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A186950 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142391.P3356736381143891214

namespace A142391

/-- `A000027(p?[n²-A186950(n)+2])` -/
def P3356736381143891214.Spec : Prop :=
  ∀ n, P3356736381143891214.a n = A142391 (n + 1)

end A142391

/-! ## A142391.P10772681625549813844

`or(1, p?[A164135(2*(n+1))])`
-/

namespace A142391.P10772681625549813844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164135 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142391.P10772681625549813844

namespace A142391

/-- `or(1, p?[A164135(2*(n+1))])` -/
def P10772681625549813844.Spec : Prop :=
  ∀ n, P10772681625549813844.a n = A142391 (n + 1)

end A142391

/-! ## A142391.P17564977781129024793

`A000027(p?[A164135(2*(n+1))])`
-/

namespace A142391.P17564977781129024793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164135 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142391.P17564977781129024793

namespace A142391

/-- `A000027(p?[A164135(2*(n+1))])` -/
def P17564977781129024793.Spec : Prop :=
  ∀ n, P17564977781129024793.a n = A142391 (n + 1)

end A142391

/-! ## A142391.P14208718348449494566

`p?[A164135(2*(n+2))]%A124412(n+1)`
-/

namespace A142391.P14208718348449494566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164135 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A124412 (n + 1))

end

end A142391.P14208718348449494566

namespace A142391

/-- `p?[A164135(2*(n+2))]%A124412(n+1)` -/
def P14208718348449494566.Spec : Prop :=
  ∀ n, P14208718348449494566.a n = A142391 (n + 1)

end A142391

/-! ## A142391.P8040773847217232243

`A262697(A259934(n))+p?[A164135(2*(n+1))]`
-/

namespace A142391.P8040773847217232243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164135 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262697 (A259934 n).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142391.P8040773847217232243

namespace A142391

/-- `A262697(A259934(n))+p?[A164135(2*(n+1))]` -/
def P8040773847217232243.Spec : Prop :=
  ∀ n, P8040773847217232243.a n = A142391 (n + 1)

end A142391

/-! ## A142391.P16951505355164093406

`∩[A164135(n+1), A191072(n+1)]`
-/

namespace A142391.P16951505355164093406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142391.P16951505355164093406

namespace A142391

/-- `∩[A164135(n+1), A191072(n+1)]` -/
def P16951505355164093406.Spec : Prop :=
  ∀ n, (P16951505355164093406.a n : ℤ) = A142391 (n + 1)

end A142391

/-! ## A142391.P52108215605606370

`A000027(p?[A017425(4*n+3)+3*n+4])`
-/

namespace A142391.P52108215605606370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017425 (4 * n + 3) + (3 * n + 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142391.P52108215605606370

namespace A142391

/-- `A000027(p?[A017425(4*n+3)+3*n+4])` -/
def P52108215605606370.Spec : Prop :=
  ∀ n, P52108215605606370.a n = A142391 (n + 1)

end A142391

/-! ## A142391.P5834819450839308020

`A007947(p?[A164135(2*(n+1))])`
-/

namespace A142391.P5834819450839308020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164135 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142391.P5834819450839308020

namespace A142391

/-- `A007947(p?[A164135(2*(n+1))])` -/
def P5834819450839308020.Spec : Prop :=
  ∀ n, P5834819450839308020.a n = A142391 (n + 1)

end A142391

/-! ## A142391.P1001178645517745243

`filter[A164135(2*(n+1)), A010051(#)]`
-/

namespace A142391.P1001178645517745243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164135 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A142391.P1001178645517745243

namespace A142391

/-- `filter[A164135(2*(n+1)), A010051(#)]` -/
def P1001178645517745243.Spec : Prop :=
  ∀ n, P1001178645517745243.a n = A142391 (n + 1)

end A142391

/-!
# A142392: Primes congruent to 41 mod 47.

The programs for A142392, the canonical program `A142392.P15313587033907760608` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142392 has offset 1).

The definition of A142392 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1703 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142392.P15313587033907760608

`p?[47*n-6]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142392

/-- `p?[47*n-6]` -/
def P15313587033907760608.Spec : Prop :=
  ∀ n, P15313587033907760608.a n = A142392 (n + 1)

theorem P15313587033907760608.correct : P15313587033907760608.Spec := by
  intro n
  simp only [A142392, Nat.add_sub_cancel]

end A142392

/-! ## A142392.P16122338302592828439

`or(1, p?[A044102(n+1)+A017449(n)])`
-/

namespace A142392.P16122338302592828439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044102 (n + 1) + A017449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142392.P16122338302592828439

namespace A142392

/-- `or(1, p?[A044102(n+1)+A017449(n)])` -/
def P16122338302592828439.Spec : Prop :=
  ∀ n, P16122338302592828439.a n = A142392 (n + 1)

end A142392

/-! ## A142392.P9523355025034350595

`p?[A158065(n+1)+A017437(n)]%A076336(n+1)`
-/

namespace A142392.P9523355025034350595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158065 (n + 1) + A017437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A076336 (n + 1))

end

end A142392.P9523355025034350595

namespace A142392

/-- `p?[A158065(n+1)+A017437(n)]%A076336(n+1)` -/
def P9523355025034350595.Spec : Prop :=
  ∀ n, P9523355025034350595.a n = A142392 (n + 1)

end A142392

/-! ## A142392.P9394469964079310297

`∩[A164135(n+1)+1, A191072(n+1)]`
-/

namespace A142392.P9394469964079310297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164135 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142392.P9394469964079310297

namespace A142392

/-- `∩[A164135(n+1)+1, A191072(n+1)]` -/
def P9394469964079310297.Spec : Prop :=
  ∀ n, (P9394469964079310297.a n : ℤ) = A142392 (n + 1)

end A142392

/-! ## A142392.P6961143434271132367

`record[A020639(A164135(2*(n+1))+1)]`
-/

namespace A142392.P6961143434271132367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A164135 (2 * (n + 1)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142392.P6961143434271132367

namespace A142392

/-- `record[A020639(A164135(2*(n+1))+1)]` -/
def P6961143434271132367.Spec : Prop :=
  ∀ n, P6961143434271132367.a n = A142392 (n + 1)

end A142392

/-! ## A142392.P3023874542854872643

`record[A008472(A008472(47*(n+1)-6))]`
-/

namespace A142392.P3023874542854872643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A008472 (47 * (n + 1) - 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142392.P3023874542854872643

namespace A142392

/-- `record[A008472(A008472(47*(n+1)-6))]` -/
def P3023874542854872643.Spec : Prop :=
  ∀ n, P3023874542854872643.a n = A142392 (n + 1)

end A142392

/-! ## A142392.P215967617125837024

`record[A020639(A158065(n+1)+A017437(n))]`
-/

namespace A142392.P215967617125837024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A158065 (n + 1) + A017437 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142392.P215967617125837024

namespace A142392

/-- `record[A020639(A158065(n+1)+A017437(n))]` -/
def P215967617125837024.Spec : Prop :=
  ∀ n, P215967617125837024.a n = A142392 (n + 1)

end A142392

/-!
# A142393: Primes congruent to 42 mod 47.

The programs for A142393, the canonical program `A142393.P585495198988390091` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142393 has offset 1).

The definition of A142393 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1703 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142393.P585495198988390091

`p?[47*n-5]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142393

/-- `p?[47*n-5]` -/
def P585495198988390091.Spec : Prop :=
  ∀ n, P585495198988390091.a n = A142393 (n + 1)

theorem P585495198988390091.correct : P585495198988390091.Spec := by
  intro n
  simp only [A142393, Nat.add_sub_cancel]

end A142393

/-! ## A142393.P8166885703653554652

`or(1, p?[A154267(n+1)+A008602(n)])`
-/

namespace A142393.P8166885703653554652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154267 (n + 1) + A008602 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142393.P8166885703653554652

namespace A142393

/-- `or(1, p?[A154267(n+1)+A008602(n)])` -/
def P8166885703653554652.Spec : Prop :=
  ∀ n, P8166885703653554652.a n = A142393 (n + 1)

end A142393

/-! ## A142393.P15391991410311998961

`∩[A164135(2*(n+1))+2, A191033(n+2)]`
-/

namespace A142393.P15391991410311998961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164135 (2 * (n + 1)) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191033 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142393.P15391991410311998961

namespace A142393

/-- `∩[A164135(2*(n+1))+2, A191033(n+2)]` -/
def P15391991410311998961.Spec : Prop :=
  ∀ n, (P15391991410311998961.a n : ℤ) = A142393 (n + 1)

end A142393

/-! ## A142393.P6694226071976355240

`record[A006530(94*(n+1)-5)]`
-/

namespace A142393.P6694226071976355240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (94 * (n + 1) - 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142393.P6694226071976355240

namespace A142393

/-- `record[A006530(94*(n+1)-5)]` -/
def P6694226071976355240.Spec : Prop :=
  ∀ n, P6694226071976355240.a n = A142393 (n + 1)

end A142393

/-! ## A142393.P8254299881259084831

`record[A020639(94*(n+1)-5)]`
-/

namespace A142393.P8254299881259084831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (94 * (n + 1) - 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142393.P8254299881259084831

namespace A142393

/-- `record[A020639(94*(n+1)-5)]` -/
def P8254299881259084831.Spec : Prop :=
  ∀ n, P8254299881259084831.a n = A142393 (n + 1)

end A142393

/-!
# A142394: Primes congruent to 43 mod 47.

The programs for A142394, the canonical program `A142394.P11567026280531860457` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142394 has offset 1).

The definition of A142394 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1690 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142394.P11567026280531860457

`p?[47*n-4]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142394

/-- `p?[47*n-4]` -/
def P11567026280531860457.Spec : Prop :=
  ∀ n, P11567026280531860457.a n = A142394 (n + 1)

theorem P11567026280531860457.correct : P11567026280531860457.Spec := by
  intro n
  simp only [A142394, Nat.add_sub_cancel]

end A142394

/-! ## A142394.P9876743676068872895

`or(1, p?[A102438(n)-A016921(n)])`
-/

namespace A142394.P9876743676068872895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102438 n - A016921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142394.P9876743676068872895

namespace A142394

/-- `or(1, p?[A102438(n)-A016921(n)])` -/
def P9876743676068872895.Spec : Prop :=
  ∀ n, P9876743676068872895.a n = A142394 (n + 1)

end A142394

/-! ## A142394.P17146038385539098985

`A000038(n+1)+p?[A102438(n)-A016921(n)]`
-/

namespace A142394.P17146038385539098985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102438 n - A016921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142394.P17146038385539098985

namespace A142394

/-- `A000038(n+1)+p?[A102438(n)-A016921(n)]` -/
def P17146038385539098985.Spec : Prop :=
  ∀ n, P17146038385539098985.a n = A142394 (n + 1)

end A142394

/-! ## A142394.P14724025694877128206

`A000007(n+1)+p?[A215145(n+1)+A154267(n)+7]`
-/

namespace A142394.P14724025694877128206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215145 (n + 1) + A154267 n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142394.P14724025694877128206

namespace A142394

/-- `A000007(n+1)+p?[A215145(n+1)+A154267(n)+7]` -/
def P14724025694877128206.Spec : Prop :=
  ∀ n, P14724025694877128206.a n = A142394 (n + 1)

end A142394

/-! ## A142394.P1602293519771893066

`record[A020639(47*(n+1)-4)]`
-/

namespace A142394.P1602293519771893066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (47 * (n + 1) - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142394.P1602293519771893066

namespace A142394

/-- `record[A020639(47*(n+1)-4)]` -/
def P1602293519771893066.Spec : Prop :=
  ∀ n, P1602293519771893066.a n = A142394 (n + 1)

end A142394

/-! ## A142394.P3798012854368793293

`record[A008472(A008472(47*(n+1)-4))]`
-/

namespace A142394.P3798012854368793293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A008472 (47 * (n + 1) - 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142394.P3798012854368793293

namespace A142394

/-- `record[A008472(A008472(47*(n+1)-4))]` -/
def P3798012854368793293.Spec : Prop :=
  ∀ n, P3798012854368793293.a n = A142394 (n + 1)

end A142394

/-!
# A142395: Primes congruent to 44 mod 47.

The programs for A142395, the canonical program `A142395.P343959778373377213` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142395 has offset 1).

The definition of A142395 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1710 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142395.P343959778373377213

`p?[47*n-3]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142395

/-- `p?[47*n-3]` -/
def P343959778373377213.Spec : Prop :=
  ∀ n, P343959778373377213.a n = A142395 (n + 1)

theorem P343959778373377213.correct : P343959778373377213.Spec := by
  intro n
  simp only [A142395, Nat.add_sub_cancel]

end A142395

/-! ## A142395.P1532558635999010334

`or(1, p?[A044102(n+5)+A017449(n)])`
-/

namespace A142395.P1532558635999010334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044102 (n + 5) + A017449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142395.P1532558635999010334

namespace A142395

/-- `or(1, p?[A044102(n+5)+A017449(n)])` -/
def P1532558635999010334.Spec : Prop :=
  ∀ n, P1532558635999010334.a n = A142395 (n + 1)

end A142395

/-! ## A142395.P6366998751964627961

`xor(1, p?[A139609(n)+A017401(n)+34])+1`
-/

namespace A142395.P6366998751964627961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017401 n + 34

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) + 1

end

end A142395.P6366998751964627961

namespace A142395

/-- `xor(1, p?[A139609(n)+A017401(n)+34])+1` -/
def P6366998751964627961.Spec : Prop :=
  ∀ n, P6366998751964627961.a n = A142395 (n + 1)

end A142395

/-! ## A142395.P17488540674914493633

`or(1, p?[A164135(2*(n+1))+4])`
-/

namespace A142395.P17488540674914493633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164135 (2 * (n + 1)) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142395.P17488540674914493633

namespace A142395

/-- `or(1, p?[A164135(2*(n+1))+4])` -/
def P17488540674914493633.Spec : Prop :=
  ∀ n, P17488540674914493633.a n = A142395 (n + 1)

end A142395

/-! ## A142395.P7987195185649720308

`A000027(p?[A164135(2*(n+2))+4])`
-/

namespace A142395.P7987195185649720308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164135 (2 * (n + 2)) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142395.P7987195185649720308

namespace A142395

/-- `A000027(p?[A164135(2*(n+2))+4])` -/
def P7987195185649720308.Spec : Prop :=
  ∀ n, P7987195185649720308.a n = A142395 (n + 1)

end A142395

/-! ## A142395.P9396070259379686798

`A000265(p?[n²-A186950(n)+6])`
-/

namespace A142395.P9396070259379686798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A186950 n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142395.P9396070259379686798

namespace A142395

/-- `A000265(p?[n²-A186950(n)+6])` -/
def P9396070259379686798.Spec : Prop :=
  ∀ n, P9396070259379686798.a n = A142395 (n + 1)

end A142395

/-! ## A142395.P4333732950040008800

`A331170(p?[n²-A186950(n)+6])`
-/

namespace A142395.P4333732950040008800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A186950 n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331170 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142395.P4333732950040008800

namespace A142395

/-- `A331170(p?[n²-A186950(n)+6])` -/
def P4333732950040008800.Spec : Prop :=
  ∀ n, P4333732950040008800.a n = A142395 (n + 1)

end A142395

/-! ## A142395.P3189605789512317085

`A006530(2*p?[A174312(n+10)+A139606(n)])`
-/

namespace A142395.P3189605789512317085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174312 (n + 10) + A139606 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142395.P3189605789512317085

namespace A142395

/-- `A006530(2*p?[A174312(n+10)+A139606(n)])` -/
def P3189605789512317085.Spec : Prop :=
  ∀ n, P3189605789512317085.a n = A142395 (n + 1)

end A142395

/-!
# A142396: Primes congruent to 45 mod 47.

The programs for A142396, the canonical program `A142396.P5085327593745097292` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142396 has offset 1).

The definition of A142396 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1706 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142396.P5085327593745097292

`p?[47*n-2]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142396

/-- `p?[47*n-2]` -/
def P5085327593745097292.Spec : Prop :=
  ∀ n, P5085327593745097292.a n = A142396 (n + 1)

theorem P5085327593745097292.correct : P5085327593745097292.Spec := by
  intro n
  simp only [A142396, Nat.add_sub_cancel]

end A142396

/-! ## A142396.P1952554438589699095

`p?[A053743(n)-A008458(n)]+A269879(n)%4`
-/

namespace A142396.P1952554438589699095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n - A008458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A269879 n) 4

end

end A142396.P1952554438589699095

namespace A142396

/-- `p?[A053743(n)-A008458(n)]+A269879(n)%4` -/
def P1952554438589699095.Spec : Prop :=
  ∀ n, P1952554438589699095.a n = A142396 (n + 1)

end A142396

/-! ## A142396.P10719312411397282137

`p?[A053743(n)-A008458(n)]/A138397(n+5)%2`
-/

namespace A142396.P10719312411397282137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n - A008458 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (Int.tmod (A138397 (n + 5)) 2 : ℚ)

end

end A142396.P10719312411397282137

namespace A142396

/-- `p?[A053743(n)-A008458(n)]/A138397(n+5)%2` -/
def P10719312411397282137.Spec : Prop :=
  ∀ n, P10719312411397282137.a n = (A142396 (n + 1) : ℚ)

end A142396

/-! ## A142396.P1735400086531825352

`-(-p?[A053743(n)-A008458(n)]%A003392(n+4))`
-/

namespace A142396.P1735400086531825352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n - A008458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (-f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A003392 (n + 4))

end

end A142396.P1735400086531825352

namespace A142396

/-- `-(-p?[A053743(n)-A008458(n)]%A003392(n+4))` -/
def P1735400086531825352.Spec : Prop :=
  ∀ n, P1735400086531825352.a n = A142396 (n + 1)

end A142396

/-! ## A142396.P1588047254968074852

`p?[A053743(n)-A008458(n)]%A097021(n+1)`
-/

namespace A142396.P1588047254968074852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n - A008458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A097021 (n + 1))

end

end A142396.P1588047254968074852

namespace A142396

/-- `p?[A053743(n)-A008458(n)]%A097021(n+1)` -/
def P1588047254968074852.Spec : Prop :=
  ∀ n, P1588047254968074852.a n = A142396 (n + 1)

end A142396

/-! ## A142396.P6655545193552005524

`A000027(p?[A053743(n)-A008458(n)])`
-/

namespace A142396.P6655545193552005524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n - A008458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142396.P6655545193552005524

namespace A142396

/-- `A000027(p?[A053743(n)-A008458(n)])` -/
def P6655545193552005524.Spec : Prop :=
  ∀ n, P6655545193552005524.a n = A142396 (n + 1)

end A142396

/-! ## A142396.P16937115356678112861

`record[A006530(47*(n+3)-2)]`
-/

namespace A142396.P16937115356678112861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (47 * (n + 3) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142396.P16937115356678112861

namespace A142396

/-- `record[A006530(47*(n+3)-2)]` -/
def P16937115356678112861.Spec : Prop :=
  ∀ n, P16937115356678112861.a n = A142396 (n + 1)

end A142396

/-! ## A142396.P14089789285140386184

`record[A020639(47*(n+3)-2)]`
-/

namespace A142396.P14089789285140386184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (47 * (n + 3) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142396.P14089789285140386184

namespace A142396

/-- `record[A020639(47*(n+3)-2)]` -/
def P14089789285140386184.Spec : Prop :=
  ∀ n, P14089789285140386184.a n = A142396 (n + 1)

end A142396

/-! ## A142396.P6183843608340583613

`A007913(p?[45*(n+1)+2*n])`
-/

namespace A142396.P6183843608340583613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  45 * (n + 1) + 2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142396.P6183843608340583613

namespace A142396

/-- `A007913(p?[45*(n+1)+2*n])` -/
def P6183843608340583613.Spec : Prop :=
  ∀ n, P6183843608340583613.a n = A142396 (n + 1)

end A142396

/-! ## A142396.P10503547736876781188

`A000265(p?[A053743(n)-A008458(n)])`
-/

namespace A142396.P10503547736876781188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n - A008458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142396.P10503547736876781188

namespace A142396

/-- `A000265(p?[A053743(n)-A008458(n)])` -/
def P10503547736876781188.Spec : Prop :=
  ∀ n, P10503547736876781188.a n = A142396 (n + 1)

end A142396

/-! ## A142396.P11453037728418614205

`A000265(p?[A183010(n)-A029579(n)])`
-/

namespace A142396.P11453037728418614205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 n - A029579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142396.P11453037728418614205

namespace A142396

/-- `A000265(p?[A183010(n)-A029579(n)])` -/
def P11453037728418614205.Spec : Prop :=
  ∀ n, P11453037728418614205.a n = A142396 (n + 1)

end A142396

/-!
# A142397: Primes congruent to 46 mod 47.

The programs for A142397, the canonical program `A142397.P11675747106029405364` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142397 has offset 1).

The definition of A142397 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1711 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142397.P11675747106029405364

`p?[47*n-1]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A142397

/-- `p?[47*n-1]` -/
def P11675747106029405364.Spec : Prop :=
  ∀ n, P11675747106029405364.a n = A142397 (n + 1)

theorem P11675747106029405364.correct : P11675747106029405364.Spec := by
  intro n
  simp only [A142397, Nat.add_sub_cancel]

end A142397

/-! ## A142397.P4021618825292340370

`or(1, p?[46*(n+1)+n])`
-/

namespace A142397.P4021618825292340370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  46 * (n + 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142397.P4021618825292340370

namespace A142397

/-- `or(1, p?[46*(n+1)+n])` -/
def P4021618825292340370.Spec : Prop :=
  ∀ n, (P4021618825292340370.a n : ℤ) = A142397 (n + 1)

end A142397

/-! ## A142397.P8982882137598479897

`p?[A102439(n)-A016969(n)]%A016901(n)`
-/

namespace A142397.P8982882137598479897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102439 n - A016969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A016901 n)

end

end A142397.P8982882137598479897

namespace A142397

/-- `p?[A102439(n)-A016969(n)]%A016901(n)` -/
def P8982882137598479897.Spec : Prop :=
  ∀ n, P8982882137598479897.a n = A142397 (n + 1)

end A142397

/-! ## A142397.P2883088228862846877

`A000027(p?[A102439(n)-A016969(n)])`
-/

namespace A142397.P2883088228862846877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102439 n - A016969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142397.P2883088228862846877

namespace A142397

/-- `A000027(p?[A102439(n)-A016969(n)])` -/
def P2883088228862846877.Spec : Prop :=
  ∀ n, P2883088228862846877.a n = A142397 (n + 1)

end A142397

/-! ## A142397.P7535397891721468177

`A007913(p?[45*(n+1)+2*n+1])`
-/

namespace A142397.P7535397891721468177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  45 * (n + 1) + (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142397.P7535397891721468177

namespace A142397

/-- `A007913(p?[45*(n+1)+2*n+1])` -/
def P7535397891721468177.Spec : Prop :=
  ∀ n, P7535397891721468177.a n = A142397 (n + 1)

end A142397

/-! ## A142397.P15341438711788253217

`A000265(p?[A102439(n)-A016969(n)])`
-/

namespace A142397.P15341438711788253217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102439 n - A016969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142397.P15341438711788253217

namespace A142397

/-- `A000265(p?[A102439(n)-A016969(n)])` -/
def P15341438711788253217.Spec : Prop :=
  ∀ n, P15341438711788253217.a n = A142397 (n + 1)

end A142397

/-! ## A142397.P13328712292735796630

`A008472(p?[A102439(n)-A016969(n)])`
-/

namespace A142397.P13328712292735796630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102439 n - A016969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142397.P13328712292735796630

namespace A142397

/-- `A008472(p?[A102439(n)-A016969(n)])` -/
def P13328712292735796630.Spec : Prop :=
  ∀ n, P13328712292735796630.a n = A142397 (n + 1)

end A142397

/-!
# A142398: Primes congruent to 1 mod 48.

The programs for A142398, the canonical program `A142398.P17690431213871584159` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142398 has offset 1).

The definition of A142398 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4966 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142398.P17690431213871584159

`∩[A094407(n+1), A107008(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A142398

/-- `∩[A094407(n+1), A107008(n+1)]` -/
def P17690431213871584159.Spec : Prop :=
  ∀ n, (P17690431213871584159.a n : ℤ) = A142398 (n + 1)

theorem P17690431213871584159.correct : P17690431213871584159.Spec := by
  intro n
  simp only [A142398, Nat.add_sub_cancel]

end A142398

/-! ## A142398.P8882298327579490784

`p?[48*n+1]`
-/

namespace A142398.P8882298327579490784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  48 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142398.P8882298327579490784

namespace A142398

/-- `p?[48*n+1]` -/
def P8882298327579490784.Spec : Prop :=
  ∀ n, (P8882298327579490784.a n : ℤ) = A142398 (n + 1)

end A142398

/-! ## A142398.P10561924104725365001

`or(1, p?[or(1, 48*n)])`
-/

namespace A142398.P10561924104725365001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (48 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142398.P10561924104725365001

namespace A142398

/-- `or(1, p?[or(1, 48*n)])` -/
def P10561924104725365001.Spec : Prop :=
  ∀ n, (P10561924104725365001.a n : ℤ) = A142398 (n + 1)

end A142398

/-! ## A142398.P10289739992350104678

`∩[A033199(n+1), A094407(n+1)]`
-/

namespace A142398.P10289739992350104678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142398.P10289739992350104678

namespace A142398

/-- `∩[A033199(n+1), A094407(n+1)]` -/
def P10289739992350104678.Spec : Prop :=
  ∀ n, (P10289739992350104678.a n : ℤ) = A142398 (n + 1)

end A142398

/-! ## A142398.P16087556168454926631

`∩[A094407(n+1), A354084(n+1)]`
-/

namespace A142398.P16087556168454926631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142398.P16087556168454926631

namespace A142398

/-- `∩[A094407(n+1), A354084(n+1)]` -/
def P16087556168454926631.Spec : Prop :=
  ∀ n, (P16087556168454926631.a n : ℤ) = A142398 (n + 1)

end A142398

/-! ## A142398.P3576299794570354026

`∩[A068228(n+1), A094407(n+1)]`
-/

namespace A142398.P3576299794570354026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142398.P3576299794570354026

namespace A142398

/-- `∩[A068228(n+1), A094407(n+1)]` -/
def P3576299794570354026.Spec : Prop :=
  ∀ n, (P3576299794570354026.a n : ℤ) = A142398 (n + 1)

end A142398

/-! ## A142398.P9524956578714653855

`∩[A094407(n+1), A130063(n+1)]`
-/

namespace A142398.P9524956578714653855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142398.P9524956578714653855

namespace A142398

/-- `∩[A094407(n+1), A130063(n+1)]` -/
def P9524956578714653855.Spec : Prop :=
  ∀ n, (P9524956578714653855.a n : ℤ) = A142398 (n + 1)

end A142398

/-! ## A142398.P9859757648528261316

`∩[A094407(n+1), A106950(n+1)]`
-/

namespace A142398.P9859757648528261316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142398.P9859757648528261316

namespace A142398

/-- `∩[A094407(n+1), A106950(n+1)]` -/
def P9859757648528261316.Spec : Prop :=
  ∀ n, (P9859757648528261316.a n : ℤ) = A142398 (n + 1)

end A142398

/-! ## A142398.P18188809899758031801

`∩[A094407(n+1), A141170(n+1)]`
-/

namespace A142398.P18188809899758031801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142398.P18188809899758031801

namespace A142398

/-- `∩[A094407(n+1), A141170(n+1)]` -/
def P18188809899758031801.Spec : Prop :=
  ∀ n, (P18188809899758031801.a n : ℤ) = A142398 (n + 1)

end A142398

/-! ## A142398.P1562791061810136690

`∩[A094407(n+1), A351537(n+1)]`
-/

namespace A142398.P1562791061810136690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142398.P1562791061810136690

namespace A142398

/-- `∩[A094407(n+1), A351537(n+1)]` -/
def P1562791061810136690.Spec : Prop :=
  ∀ n, (P1562791061810136690.a n : ℤ) = A142398 (n + 1)

end A142398

/-! ## A142398.P3915276519723236366

`∩[A094407(n+1), A354467(n+1)]`
-/

namespace A142398.P3915276519723236366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142398.P3915276519723236366

namespace A142398

/-- `∩[A094407(n+1), A354467(n+1)]` -/
def P3915276519723236366.Spec : Prop :=
  ∀ n, (P3915276519723236366.a n : ℤ) = A142398 (n + 1)

end A142398

/-! ## A142398.P11444653205024381861

`or(1, p?[A103214(2*n)])`
-/

namespace A142398.P11444653205024381861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103214 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142398.P11444653205024381861

namespace A142398

/-- `or(1, p?[A103214(2*n)])` -/
def P11444653205024381861.Spec : Prop :=
  ∀ n, P11444653205024381861.a n = A142398 (n + 1)

end A142398

/-! ## A142398.P16584298710638370433

`A000027(p?[A103214(2*n)])`
-/

namespace A142398.P16584298710638370433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103214 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142398.P16584298710638370433

namespace A142398

/-- `A000027(p?[A103214(2*n)])` -/
def P16584298710638370433.Spec : Prop :=
  ∀ n, P16584298710638370433.a n = A142398 (n + 1)

end A142398

/-! ## A142398.P3421522495740758061

`∩[A094407(n+1), A103214(n)]`
-/

namespace A142398.P3421522495740758061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103214 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142398.P3421522495740758061

namespace A142398

/-- `∩[A094407(n+1), A103214(n)]` -/
def P3421522495740758061.Spec : Prop :=
  ∀ n, (P3421522495740758061.a n : ℤ) = A142398 (n + 1)

end A142398

/-! ## A142398.P1272144932565961751

`record[p?[A103214(A000265(n+1)+1)]]`
-/

namespace A142398.P1272144932565961751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103214 (A000265 (n + 1) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142398.P1272144932565961751

namespace A142398

/-- `record[p?[A103214(A000265(n+1)+1)]]` -/
def P1272144932565961751.Spec : Prop :=
  ∀ n, P1272144932565961751.a n = A142398 (n + 1)

end A142398

/-! ## A142398.P3567971237749022543

`record[p?[A103214(A248511(n+1)+1)]]`
-/

namespace A142398.P3567971237749022543
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103214 (A248511 (n + 1) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142398.P3567971237749022543

namespace A142398

/-- `record[p?[A103214(A248511(n+1)+1)]]` -/
def P3567971237749022543.Spec : Prop :=
  ∀ n, P3567971237749022543.a n = A142398 (n + 1)

end A142398

/-! ## A142398.P2363280467014036357

`∩[A097934(n+1), A094407(n+1)]`
-/

namespace A142398.P2363280467014036357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142398.P2363280467014036357

namespace A142398

/-- `∩[A097934(n+1), A094407(n+1)]` -/
def P2363280467014036357.Spec : Prop :=
  ∀ n, (P2363280467014036357.a n : ℤ) = A142398 (n + 1)

end A142398

/-! ## A142398.P5445354474052976520

`∩[A038876(n+1), A094407(n+1)]`
-/

namespace A142398.P5445354474052976520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142398.P5445354474052976520

namespace A142398

/-- `∩[A038876(n+1), A094407(n+1)]` -/
def P5445354474052976520.Spec : Prop :=
  ∀ n, (P5445354474052976520.a n : ℤ) = A142398 (n + 1)

end A142398

/-! ## A142398.P2524033477617382938

`∩[A038874(n+1), A094407(n+1)]`
-/

namespace A142398.P2524033477617382938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142398.P2524033477617382938

namespace A142398

/-- `∩[A038874(n+1), A094407(n+1)]` -/
def P2524033477617382938.Spec : Prop :=
  ∀ n, (P2524033477617382938.a n : ℤ) = A142398 (n + 1)

end A142398

/-! ## A142398.P17075773487763072894

`∩[A094407(n+1), A097933(n+1)]`
-/

namespace A142398.P17075773487763072894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142398.P17075773487763072894

namespace A142398

/-- `∩[A094407(n+1), A097933(n+1)]` -/
def P17075773487763072894.Spec : Prop :=
  ∀ n, (P17075773487763072894.a n : ℤ) = A142398 (n + 1)

end A142398

/-!
# A142399: Primes congruent to 5 mod 48.

The programs for A142399, the canonical program `A142399.P8157399368544041410` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142399 has offset 1).

The definition of A142399 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142399.P8157399368544041410

`∩[A107003(n+1), A127589(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A142399

/-- `∩[A107003(n+1), A127589(n+1)]` -/
def P8157399368544041410.Spec : Prop :=
  ∀ n, (P8157399368544041410.a n : ℤ) = A142399 (n + 1)

theorem P8157399368544041410.correct : P8157399368544041410.Spec := by
  intro n
  simp only [A142399, Nat.add_sub_cancel]

end A142399

/-! ## A142399.P2087981080638417806

`p?[6*8*n+5]`
-/

namespace A142399.P2087981080638417806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (8 * n) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142399.P2087981080638417806

namespace A142399

/-- `p?[6*8*n+5]` -/
def P2087981080638417806.Spec : Prop :=
  ∀ n, (P2087981080638417806.a n : ℤ) = A142399 (n + 1)

end A142399

/-! ## A142399.P15819801943853340752

`∩[A127589(n+1), A354084(n+1)]`
-/

namespace A142399.P15819801943853340752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142399.P15819801943853340752

namespace A142399

/-- `∩[A127589(n+1), A354084(n+1)]` -/
def P15819801943853340752.Spec : Prop :=
  ∀ n, (P15819801943853340752.a n : ℤ) = A142399 (n + 1)

end A142399

/-! ## A142399.P5757455023400669802

`∩[A040117(n+1), A127589(n+1)]`
-/

namespace A142399.P5757455023400669802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142399.P5757455023400669802

namespace A142399

/-- `∩[A040117(n+1), A127589(n+1)]` -/
def P5757455023400669802.Spec : Prop :=
  ∀ n, (P5757455023400669802.a n : ℤ) = A142399 (n + 1)

end A142399

/-! ## A142399.P16325341323237480080

`∩[A127589(n+1), A243183(n+1)]`
-/

namespace A142399.P16325341323237480080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142399.P16325341323237480080

namespace A142399

/-- `∩[A127589(n+1), A243183(n+1)]` -/
def P16325341323237480080.Spec : Prop :=
  ∀ n, (P16325341323237480080.a n : ℤ) = A142399 (n + 1)

end A142399

/-! ## A142399.P2002263469766534348

`∩[A084865(n+1), A127589(n+1)]`
-/

namespace A142399.P2002263469766534348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142399.P2002263469766534348

namespace A142399

/-- `∩[A084865(n+1), A127589(n+1)]` -/
def P2002263469766534348.Spec : Prop :=
  ∀ n, (P2002263469766534348.a n : ℤ) = A142399 (n + 1)

end A142399

/-! ## A142399.P17856792210994442120

`∩[A127589(n+1), A141171(n+1)]`
-/

namespace A142399.P17856792210994442120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142399.P17856792210994442120

namespace A142399

/-- `∩[A127589(n+1), A141171(n+1)]` -/
def P17856792210994442120.Spec : Prop :=
  ∀ n, (P17856792210994442120.a n : ℤ) = A142399 (n + 1)

end A142399

/-! ## A142399.P15287198381456991504

`∩[A038876(n+1), A127589(n+1)]`
-/

namespace A142399.P15287198381456991504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142399.P15287198381456991504

namespace A142399

/-- `∩[A038876(n+1), A127589(n+1)]` -/
def P15287198381456991504.Spec : Prop :=
  ∀ n, (P15287198381456991504.a n : ℤ) = A142399 (n + 1)

end A142399

/-! ## A142399.P244719158227027624

`∩[A097934(n+1), A127589(n+1)]`
-/

namespace A142399.P244719158227027624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142399.P244719158227027624

namespace A142399

/-- `∩[A097934(n+1), A127589(n+1)]` -/
def P244719158227027624.Spec : Prop :=
  ∀ n, (P244719158227027624.a n : ℤ) = A142399 (n + 1)

end A142399

/-! ## A142399.P18300696347404363773

`∩[A127589(n+1), A157437(n+1)]`
-/

namespace A142399.P18300696347404363773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142399.P18300696347404363773

namespace A142399

/-- `∩[A127589(n+1), A157437(n+1)]` -/
def P18300696347404363773.Spec : Prop :=
  ∀ n, (P18300696347404363773.a n : ℤ) = A142399 (n + 1)

end A142399

/-! ## A142399.P14924294339679137614

`∩[A107003(n+1), A214588(n+1)]`
-/

namespace A142399.P14924294339679137614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142399.P14924294339679137614

namespace A142399

/-- `∩[A107003(n+1), A214588(n+1)]` -/
def P14924294339679137614.Spec : Prop :=
  ∀ n, (P14924294339679137614.a n : ℤ) = A142399 (n + 1)

end A142399

/-! ## A142399.P8169522413070165672

`∩[A127589(n+1), A296924(n+1)]`
-/

namespace A142399.P8169522413070165672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142399.P8169522413070165672

namespace A142399

/-- `∩[A127589(n+1), A296924(n+1)]` -/
def P8169522413070165672.Spec : Prop :=
  ∀ n, (P8169522413070165672.a n : ℤ) = A142399 (n + 1)

end A142399

/-! ## A142399.P13299927352300140405

`∩[A127589(n+1), A391371(n+1)]`
-/

namespace A142399.P13299927352300140405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142399.P13299927352300140405

namespace A142399

/-- `∩[A127589(n+1), A391371(n+1)]` -/
def P13299927352300140405.Spec : Prop :=
  ∀ n, (P13299927352300140405.a n : ℤ) = A142399 (n + 1)

end A142399

/-! ## A142399.P1978254075836263183

`∩[A214588(n+1), A135659(n)-2]`
-/

namespace A142399.P1978254075836263183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135659 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142399.P1978254075836263183

namespace A142399

/-- `∩[A214588(n+1), A135659(n)-2]` -/
def P1978254075836263183.Spec : Prop :=
  ∀ n, (P1978254075836263183.a n : ℤ) = A142399 (n + 1)

end A142399

/-! ## A142399.P6145276347397573371

`∩[A007528(n+1), A127589(n+1)]`
-/

namespace A142399.P6145276347397573371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142399.P6145276347397573371

namespace A142399

/-- `∩[A007528(n+1), A127589(n+1)]` -/
def P6145276347397573371.Spec : Prop :=
  ∀ n, (P6145276347397573371.a n : ℤ) = A142399 (n + 1)

end A142399

/-! ## A142399.P5933094870561320031

`∩[A003627(n+1), A127589(n+1)]`
-/

namespace A142399.P5933094870561320031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142399.P5933094870561320031

namespace A142399

/-- `∩[A003627(n+1), A127589(n+1)]` -/
def P5933094870561320031.Spec : Prop :=
  ∀ n, (P5933094870561320031.a n : ℤ) = A142399 (n + 1)

end A142399

/-! ## A142399.P16027576218616373934

`∩[A045309(n+1), A127589(n+1)]`
-/

namespace A142399.P16027576218616373934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142399.P16027576218616373934

namespace A142399

/-- `∩[A045309(n+1), A127589(n+1)]` -/
def P16027576218616373934.Spec : Prop :=
  ∀ n, (P16027576218616373934.a n : ℤ) = A142399 (n + 1)

end A142399

/-! ## A142399.P14338604543279852769

`∩[A045410(n+1), A127589(n+1)]`
-/

namespace A142399.P14338604543279852769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142399.P14338604543279852769

namespace A142399

/-- `∩[A045410(n+1), A127589(n+1)]` -/
def P14338604543279852769.Spec : Prop :=
  ∀ n, (P14338604543279852769.a n : ℤ) = A142399 (n + 1)

end A142399

/-! ## A142399.P14914708532757728591

`∩[A056955(n+1), A127589(n+1)]`
-/

namespace A142399.P14914708532757728591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142399.P14914708532757728591

namespace A142399

/-- `∩[A056955(n+1), A127589(n+1)]` -/
def P14914708532757728591.Spec : Prop :=
  ∀ n, (P14914708532757728591.a n : ℤ) = A142399 (n + 1)

end A142399

/-! ## A142399.P9319890572370555745

`∩[A003630(n+1), A127589(n+1)]`
-/

namespace A142399.P9319890572370555745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142399.P9319890572370555745

namespace A142399

/-- `∩[A003630(n+1), A127589(n+1)]` -/
def P9319890572370555745.Spec : Prop :=
  ∀ n, (P9319890572370555745.a n : ℤ) = A142399 (n + 1)

end A142399

