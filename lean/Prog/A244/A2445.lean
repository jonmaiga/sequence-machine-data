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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
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
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
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
# A244501: Number of ways to place 3 points on an n X n X n triangular grid so that no pair of them has distance sqrt(3).

The programs for A244501, there is no canonical definition to state claims against.
-/

/-! ## A244501.P14694792106926458955

`A244500(∑[A287195(n+1)+1]+4)`
-/

namespace A244501.P14694792106926458955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287195 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244500 (∑ j ∈ Finset.range (n + 1), f1 j + 4).toNat

end

end A244501.P14694792106926458955

/-!
# A244504: Number of distinct lines passing through at least two points in a triangular grid of side n.

The programs for A244504, there is no canonical definition to state claims against.
-/

/-! ## A244504.P6971767920095763431

`∑[3*A334087(n+2)]`
-/

namespace A244504.P6971767920095763431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A334087 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244504.P6971767920095763431

/-! ## A244504.P9295237798746495851

`∑[A008486(A334087(n+2))]`
-/

namespace A244504.P9295237798746495851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A334087 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244504.P9295237798746495851

/-! ## A244504.P3178866582161037948

`a(n-1)+(3*A334087(n+2))%A158493(n)` with `a(0)=3`
-/

namespace A244504.P3178866582161037948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + Int.tmod (3 * A334087 (n + 2)) (A158493 n)

end

end A244504.P3178866582161037948

/-! ## A244504.P10421839080632178108

`(a(n-1)+3*A334087(n+2))%A115226(n+1)` with `a(0)=3`
-/

namespace A244504.P10421839080632178108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.tmod (a (n - 1) + 3 * A334087 (n + 2)) (A115226 (n + 1))

end

end A244504.P10421839080632178108

/-! ## A244504.P10528786070546431577

`A008585(∑[A334087(n+2)])`
-/

namespace A244504.P10528786070546431577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334087 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A244504.P10528786070546431577

/-!
# A244505: Greater of twin primes of (40n-23,40n-21).

The programs for A244505, the canonical program `A244505.P9278648048121045581` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244505 has offset 1).

The definition of A244505 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1251 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244505.P1109187580612815585

`∩[A071696(n+1), A142190(n+1)]`
-/

namespace A244505.P1109187580612815585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244505.P1109187580612815585

namespace A244505

/-- `∩[A071696(n+1), A142190(n+1)]` -/
def P1109187580612815585.Spec : Prop :=
  ∀ n, (P1109187580612815585.a n : ℤ) = A244505 (n + 1)

end A244505

/-! ## A244505.P13866251720602765539

`∩[A001359(n+1)+2, A142190(n+1)]`
-/

namespace A244505.P13866251720602765539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244505.P13866251720602765539

namespace A244505

/-- `∩[A001359(n+1)+2, A142190(n+1)]` -/
def P13866251720602765539.Spec : Prop :=
  ∀ n, (P13866251720602765539.a n : ℤ) = A244505 (n + 1)

end A244505

/-! ## A244505.P15838787509060805293

`∩[A142190(n+1), A269840(n+1)+2]`
-/

namespace A244505.P15838787509060805293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269840 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244505.P15838787509060805293

namespace A244505

/-- `∩[A142190(n+1), A269840(n+1)+2]` -/
def P15838787509060805293.Spec : Prop :=
  ∀ n, (P15838787509060805293.a n : ℤ) = A244505 (n + 1)

end A244505

/-! ## A244505.P13880339797203017239

`∩[A142190(n+1), A270225(n+1)+2]`
-/

namespace A244505.P13880339797203017239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270225 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244505.P13880339797203017239

namespace A244505

/-- `∩[A142190(n+1), A270225(n+1)+2]` -/
def P13880339797203017239.Spec : Prop :=
  ∀ n, (P13880339797203017239.a n : ℤ) = A244505 (n + 1)

end A244505

/-! ## A244505.P9278648048121045581

`∩[A139902(n+1), A181606(n+1)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A244505

/-- `∩[A139902(n+1), A181606(n+1)]` -/
def P9278648048121045581.Spec : Prop :=
  ∀ n, (P9278648048121045581.a n : ℤ) = A244505 (n + 1)

theorem P9278648048121045581.correct : P9278648048121045581.Spec := by
  intro n
  simp only [A244505, Nat.add_sub_cancel]

end A244505

/-! ## A244505.P12179487715177651881

`∩[A122565(n+1), A142190(n+1)]`
-/

namespace A244505.P12179487715177651881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122565 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244505.P12179487715177651881

namespace A244505

/-- `∩[A122565(n+1), A142190(n+1)]` -/
def P12179487715177651881.Spec : Prop :=
  ∀ n, (P12179487715177651881.a n : ℤ) = A244505 (n + 1)

end A244505

/-! ## A244505.P12851354444100686673

`∩[A126193(n+1)+2, A142190(n+1)]`
-/

namespace A244505.P12851354444100686673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126193 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244505.P12851354444100686673

namespace A244505

/-- `∩[A126193(n+1)+2, A142190(n+1)]` -/
def P12851354444100686673.Spec : Prop :=
  ∀ n, (P12851354444100686673.a n : ℤ) = A244505 (n + 1)

end A244505

/-! ## A244505.P7812926021023309150

`∩[A006512(n+1), A142190(n+1)]`
-/

namespace A244505.P7812926021023309150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244505.P7812926021023309150

namespace A244505

/-- `∩[A006512(n+1), A142190(n+1)]` -/
def P7812926021023309150.Spec : Prop :=
  ∀ n, (P7812926021023309150.a n : ℤ) = A244505 (n + 1)

end A244505

/-! ## A244505.P8546300124925316682

`∩[A067829(n+1), A142190(n+1)]`
-/

namespace A244505.P8546300124925316682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244505.P8546300124925316682

namespace A244505

/-- `∩[A067829(n+1), A142190(n+1)]` -/
def P8546300124925316682.Spec : Prop :=
  ∀ n, (P8546300124925316682.a n : ℤ) = A244505 (n + 1)

end A244505

/-! ## A244505.P14660996514643072740

`∩[A142190(n+1), A172057(n+1)]`
-/

namespace A244505.P14660996514643072740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244505.P14660996514643072740

namespace A244505

/-- `∩[A142190(n+1), A172057(n+1)]` -/
def P14660996514643072740.Spec : Prop :=
  ∀ n, (P14660996514643072740.a n : ℤ) = A244505 (n + 1)

end A244505

/-! ## A244505.P1248742748248145611

`∩[A142190(n+1), A267945(n+1)]`
-/

namespace A244505.P1248742748248145611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244505.P1248742748248145611

namespace A244505

/-- `∩[A142190(n+1), A267945(n+1)]` -/
def P1248742748248145611.Spec : Prop :=
  ∀ n, (P1248742748248145611.a n : ℤ) = A244505 (n + 1)

end A244505

/-! ## A244505.P5732123464536790028

`∩[A054799(n+1)+2, A142190(n+1)]`
-/

namespace A244505.P5732123464536790028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244505.P5732123464536790028

namespace A244505

/-- `∩[A054799(n+1)+2, A142190(n+1)]` -/
def P5732123464536790028.Spec : Prop :=
  ∀ n, (P5732123464536790028.a n : ℤ) = A244505 (n + 1)

end A244505

/-! ## A244505.P9835486623193232975

`∩[A063700(n+1)+2, A142190(n+1)]`
-/

namespace A244505.P9835486623193232975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244505.P9835486623193232975

namespace A244505

/-- `∩[A063700(n+1)+2, A142190(n+1)]` -/
def P9835486623193232975.Spec : Prop :=
  ∀ n, (P9835486623193232975.a n : ℤ) = A244505 (n + 1)

end A244505

/-! ## A244505.P13900696676692716666

`∩[A111166(n+1)+2, A142190(n+1)]`
-/

namespace A244505.P13900696676692716666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244505.P13900696676692716666

namespace A244505

/-- `∩[A111166(n+1)+2, A142190(n+1)]` -/
def P13900696676692716666.Spec : Prop :=
  ∀ n, (P13900696676692716666.a n : ℤ) = A244505 (n + 1)

end A244505

/-! ## A244505.P17796128194271086002

`∩[A124588(n+1)+2, A142190(n+1)]`
-/

namespace A244505.P17796128194271086002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244505.P17796128194271086002

namespace A244505

/-- `∩[A124588(n+1)+2, A142190(n+1)]` -/
def P17796128194271086002.Spec : Prop :=
  ∀ n, (P17796128194271086002.a n : ℤ) = A244505 (n + 1)

end A244505

/-! ## A244505.P4041937981007665202

`∩[A142190(n+1), A181747(n+1)+2]`
-/

namespace A244505.P4041937981007665202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244505.P4041937981007665202

namespace A244505

/-- `∩[A142190(n+1), A181747(n+1)+2]` -/
def P4041937981007665202.Spec : Prop :=
  ∀ n, (P4041937981007665202.a n : ℤ) = A244505 (n + 1)

end A244505

/-! ## A244505.P5262641617078906465

`∩[A142190(n+1), A238528(n+1)+2]`
-/

namespace A244505.P5262641617078906465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244505.P5262641617078906465

namespace A244505

/-- `∩[A142190(n+1), A238528(n+1)+2]` -/
def P5262641617078906465.Spec : Prop :=
  ∀ n, (P5262641617078906465.a n : ℤ) = A244505 (n + 1)

end A244505

/-! ## A244505.P16999749029080946016

`∩[A142190(n+1), A339692(n+1)]`
-/

namespace A244505.P16999749029080946016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244505.P16999749029080946016

namespace A244505

/-- `∩[A142190(n+1), A339692(n+1)]` -/
def P16999749029080946016.Spec : Prop :=
  ∀ n, (P16999749029080946016.a n : ℤ) = A244505 (n + 1)

end A244505

/-! ## A244505.P14277915504808292294

`∩[A063693(n+1)+2, A142190(n+1)]`
-/

namespace A244505.P14277915504808292294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244505.P14277915504808292294

namespace A244505

/-- `∩[A063693(n+1)+2, A142190(n+1)]` -/
def P14277915504808292294.Spec : Prop :=
  ∀ n, (P14277915504808292294.a n : ℤ) = A244505 (n + 1)

end A244505

/-! ## A244505.P18150036377674722880

`∩[A142190(n+1), A280255(n+1)+2]`
-/

namespace A244505.P18150036377674722880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244505.P18150036377674722880

namespace A244505

/-- `∩[A142190(n+1), A280255(n+1)+2]` -/
def P18150036377674722880.Spec : Prop :=
  ∀ n, (P18150036377674722880.a n : ℤ) = A244505 (n + 1)

end A244505

/-!
# A244506: Number of ways to place the maximal number of points that can be placed on a j X j X j triangular grid, j=3n-2, so that no pair of them has distance sqrt(3).

The programs for A244506, there is no canonical definition to state claims against.
-/

/-! ## A244506.P4904709592141281040

`A244507(n+1)²`
-/

namespace A244506.P4904709592141281040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244507 (n + 1) ^ 2

end

end A244506.P4904709592141281040

/-! ## A244506.P9807052908195323240

`A297537(3*n+1)`
-/

namespace A244506.P9807052908195323240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297537 (3 * n + 1)

end

end A244506.P9807052908195323240

/-! ## A244506.P8783167060869659323

`record[A244507(A020986(n))²]`
-/

namespace A244506.P8783167060869659323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244507 (A020986 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244506.P8783167060869659323

/-! ## A244506.P7468182135625860857

`record[A244507(A025454(n))²]`
-/

namespace A244506.P7468182135625860857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244507 (A025454 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244506.P7468182135625860857

/-! ## A244506.P5885433582271089381

`record[A244507(A053632(n))²]`
-/

namespace A244506.P5885433582271089381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244507 (A053632 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244506.P5885433582271089381

/-!
# A244507: Square roots of A244506.

The programs for A244507, there is no canonical definition to state claims against.
-/

/-! ## A244507.P176825137564589090

`sqrt(A244506(n+1))`
-/

namespace A244507.P176825137564589090
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A244506 (n + 1) : ℝ)

end

end A244507.P176825137564589090

/-! ## A244507.P14080792430663430959

`sqrt(A297537(3*n+1))`
-/

namespace A244507.P14080792430663430959
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A297537 (3 * n + 1) : ℝ)

end

end A244507.P14080792430663430959

/-! ## A244507.P16249550880789321836

`root(A244506(n+1), dr(A166616(n)))`
-/

namespace A244507.P16249550880789321836
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A244506 (n + 1) : ℝ) ^ (1 / (SequenceMachineLib.digitalRoot (A166616 n) : ℝ))

end

end A244507.P16249550880789321836

/-! ## A244507.P8974240389425460332

`root(A244506(n+1), p?[A025454(n)])`
-/

namespace A244507.P8974240389425460332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025454 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A244506 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A244507.P8974240389425460332

/-!
# A244508: Number of odd prime powers (A246655) between 2^n and 2^(n+1).

The programs for A244508, there is no canonical definition to state claims against.
-/

/-! ## A244508.P9099212673252220149

`Δ[A024622(n)]-1`
-/

namespace A244508.P9099212673252220149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A244508.P9099212673252220149

/-! ## A244508.P13937364421738352455

`A304521(n+1)-1`
-/

namespace A244508.P13937364421738352455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304521 (n + 1) - 1

end

end A244508.P13937364421738352455

/-! ## A244508.P11038996983311269897

`Δ[A024622(n)+A001489(n)]`
-/

namespace A244508.P11038996983311269897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024622 n + A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A244508.P11038996983311269897

/-! ## A244508.P12504373467453318874

`A182908(n+1)-A024622(n)`
-/

namespace A244508.P12504373467453318874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182908 (n + 1) - A024622 n

end

end A244508.P12504373467453318874

/-! ## A244508.P16886310543396221083

`A024622(n+1)-(A024622(n)+1)`
-/

namespace A244508.P16886310543396221083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024622 (n + 1) - (A024622 n + 1)

end

end A244508.P16886310543396221083

/-! ## A244508.P18104502165791827985

`A036380(n+1)+A036378(n)-1`
-/

namespace A244508.P18104502165791827985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036380 (n + 1) + (A036378 n - 1)

end

end A244508.P18104502165791827985

/-! ## A244508.P14859374756808637141

`A182908(round(sqrt(n²+1))+1)%A024622(n)`
-/

namespace A244508.P14859374756808637141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182908 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat) (A024622 n)

end

end A244508.P14859374756808637141

/-! ## A244508.P12873762807023444142

`A182908(n+1)%(A024622(n)%A000051(n))`
-/

namespace A244508.P12873762807023444142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182908 (n + 1)) (Int.tmod (A024622 n) (A000051 n))

end

end A244508.P12873762807023444142

/-! ## A244508.P4193918929651375596

`A182908(n+1)-(A182908(A028310(n))+A057427(n))`
-/

namespace A244508.P4193918929651375596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182908 (n + 1) - (A182908 (A028310 n).toNat + A057427 n)

end

end A244508.P4193918929651375596

/-! ## A244508.P10751183473964992257

`A182908(n+1)+A057428(n)-A182908(A028310(n))`
-/

namespace A244508.P10751183473964992257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182908 (n + 1) + (A057428 n - A182908 (A028310 n).toNat)

end

end A244508.P10751183473964992257

/-!
# A244509: Order of GL_2(p), the general linear group over F_p, where p runs through the primes.

The programs for A244509, the canonical program `A244509.P12134030914393588250` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244509 has offset 1).

The definition of A244509 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244509.P12134030914393588250

`A127917(n+1)*(A000040(n+1)-1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A244509

/-- `A127917(n+1)*(A000040(n+1)-1)` -/
def P12134030914393588250.Spec : Prop :=
  ∀ n, P12134030914393588250.a n = A244509 (n + 1)

theorem P12134030914393588250.correct : P12134030914393588250.Spec := by
  intro n
  simp only [A244509, Nat.add_sub_cancel]

end A244509

/-! ## A244509.P5969179364345339535

`2*A230325(n+1)`
-/

namespace A244509.P5969179364345339535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A230325 (n + 1)

end

end A244509.P5969179364345339535

namespace A244509

/-- `2*A230325(n+1)` -/
def P5969179364345339535.Spec : Prop :=
  ∀ n, P5969179364345339535.a n = A244509 (n + 1)

end A244509

/-! ## A244509.P15850077854209995059

`A138403(n+1)-A036689(n+1)`
-/

namespace A244509.P15850077854209995059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138403 (n + 1) - A036689 (n + 1)

end

end A244509.P15850077854209995059

namespace A244509

/-- `A138403(n+1)-A036689(n+1)` -/
def P15850077854209995059.Spec : Prop :=
  ∀ n, P15850077854209995059.a n = A244509 (n + 1)

end A244509

/-! ## A244509.P17953847665209354545

`A138402(n+1)-A127917(n+1)`
-/

namespace A244509.P17953847665209354545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138402 (n + 1) - A127917 (n + 1)

end

end A244509.P17953847665209354545

namespace A244509

/-- `A138402(n+1)-A127917(n+1)` -/
def P17953847665209354545.Spec : Prop :=
  ∀ n, P17953847665209354545.a n = A244509 (n + 1)

end A244509

/-! ## A244509.P2092415845832810862

`A005722(n+1)*A036690(n+1)`
-/

namespace A244509.P2092415845832810862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005722 (n + 1) * A036690 (n + 1)

end

end A244509.P2092415845832810862

namespace A244509

/-- `A005722(n+1)*A036690(n+1)` -/
def P2092415845832810862.Spec : Prop :=
  ∀ n, P2092415845832810862.a n = A244509 (n + 1)

end A244509

/-! ## A244509.P16105925554970334413

`A036689(n+1)*A084920(n+1)`
-/

namespace A244509.P16105925554970334413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036689 (n + 1) * A084920 (n + 1)

end

end A244509.P16105925554970334413

namespace A244509

/-- `A036689(n+1)*A084920(n+1)` -/
def P16105925554970334413.Spec : Prop :=
  ∀ n, P16105925554970334413.a n = A244509 (n + 1)

end A244509

/-! ## A244509.P11153621392183796691

`A006093(n+1)*A127917(n+1)`
-/

namespace A244509.P11153621392183796691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) * A127917 (n + 1)

end

end A244509.P11153621392183796691

namespace A244509

/-- `A006093(n+1)*A127917(n+1)` -/
def P11153621392183796691.Spec : Prop :=
  ∀ n, P11153621392183796691.a n = A244509 (n + 1)

theorem P11153621392183796691.correct : P11153621392183796691.Spec := by
  intro n
  simp only [A244509, Nat.add_sub_cancel, A244509.P11153621392183796691.a, A244509.P12134030914393588250.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A127917, A127917.P3075272387178552324.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A244509

/-! ## A244509.P13814712306274813469

`A037168(n+1)*A127918(n+1)`
-/

namespace A244509.P13814712306274813469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037168 (n + 1) * A127918 (n + 1)

end

end A244509.P13814712306274813469

namespace A244509

/-- `A037168(n+1)*A127918(n+1)` -/
def P13814712306274813469.Spec : Prop :=
  ∀ n, P13814712306274813469.a n = A244509 (n + 1)

end A244509

/-! ## A244509.P4360330531832582954

`A130290(n+1)*A262354(n+1)`
-/

namespace A244509.P4360330531832582954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 1) * A262354 (n + 1)

end

end A244509.P4360330531832582954

namespace A244509

/-- `A130290(n+1)*A262354(n+1)` -/
def P4360330531832582954.Spec : Prop :=
  ∀ n, P4360330531832582954.a n = A244509 (n + 1)

end A244509

/-! ## A244509.P2986411386339922545

`A006093(n+1)²*A036690(n+1)`
-/

namespace A244509.P2986411386339922545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) ^ 2 * A036690 (n + 1)

end

end A244509.P2986411386339922545

namespace A244509

/-- `A006093(n+1)²*A036690(n+1)` -/
def P2986411386339922545.Spec : Prop :=
  ∀ n, P2986411386339922545.a n = A244509 (n + 1)

end A244509

/-! ## A244509.P7859902986665738140

`A127917(n+1)²/A036690(n+1)`
-/

namespace A244509.P7859902986665738140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127917 (n + 1) ^ 2 : ℚ) / (A036690 (n + 1) : ℚ)

end

end A244509.P7859902986665738140

namespace A244509

/-- `A127917(n+1)²/A036690(n+1)` -/
def P7859902986665738140.Spec : Prop :=
  ∀ n, P7859902986665738140.a n = (A244509 (n + 1) : ℚ)

end A244509

/-! ## A244509.P2819595317555655238

`(A049001(n+1)+1)*A036689(n+1)`
-/

namespace A244509.P2819595317555655238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A049001 (n + 1) + 1) * A036689 (n + 1)

end

end A244509.P2819595317555655238

namespace A244509

/-- `(A049001(n+1)+1)*A036689(n+1)` -/
def P2819595317555655238.Spec : Prop :=
  ∀ n, P2819595317555655238.a n = A244509 (n + 1)

end A244509

/-! ## A244509.P10674042040474676389

`(A040976(n+1)+1)*A127917(n+1)`
-/

namespace A244509.P10674042040474676389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040976 (n + 1) + 1) * A127917 (n + 1)

end

end A244509.P10674042040474676389

namespace A244509

/-- `(A040976(n+1)+1)*A127917(n+1)` -/
def P10674042040474676389.Spec : Prop :=
  ∀ n, P10674042040474676389.a n = A244509 (n + 1)

theorem P10674042040474676389.correct : P10674042040474676389.Spec := by
  intro n
  simp only [A244509, Nat.add_sub_cancel, A244509.P10674042040474676389.a, A244509.P12134030914393588250.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, A127917, A127917.P3075272387178552324.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A244509

/-! ## A244509.P13696891306174179360

`(A319597(n+1)+1)*A005722(n+1)`
-/

namespace A244509.P13696891306174179360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A319597 (n + 1) + 1) * A005722 (n + 1)

end

end A244509.P13696891306174179360

namespace A244509

/-- `(A319597(n+1)+1)*A005722(n+1)` -/
def P13696891306174179360.Spec : Prop :=
  ∀ n, P13696891306174179360.a n = A244509 (n + 1)

end A244509

/-! ## A244509.P4002642446566068314

`(A001248(n+1)-1)*A036689(n+1)`
-/

namespace A244509.P4002642446566068314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001248 (n + 1) - 1) * A036689 (n + 1)

end

end A244509.P4002642446566068314

namespace A244509

/-- `(A001248(n+1)-1)*A036689(n+1)` -/
def P4002642446566068314.Spec : Prop :=
  ∀ n, P4002642446566068314.a n = A244509 (n + 1)

end A244509

/-! ## A244509.P12194191314822610558

`(A119959(n+1)-1)*A084920(n+1)`
-/

namespace A244509.P12194191314822610558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A119959 (n + 1) - 1) * A084920 (n + 1)

end

end A244509.P12194191314822610558

namespace A244509

/-- `(A119959(n+1)-1)*A084920(n+1)` -/
def P12194191314822610558.Spec : Prop :=
  ∀ n, P12194191314822610558.a n = A244509 (n + 1)

end A244509

/-! ## A244509.P3971096737795918568

`(A079704(n+1)-2)*A008837(n+1)`
-/

namespace A244509.P3971096737795918568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A079704 (n + 1) - 2) * A008837 (n + 1)

end

end A244509.P3971096737795918568

namespace A244509

/-- `(A079704(n+1)-2)*A008837(n+1)` -/
def P3971096737795918568.Spec : Prop :=
  ∀ n, P3971096737795918568.a n = A244509 (n + 1)

end A244509

/-! ## A244509.P18160535137246847340

`(A066872(n+1)-2)*A036689(n+1)`
-/

namespace A244509.P18160535137246847340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A066872 (n + 1) - 2) * A036689 (n + 1)

end

end A244509.P18160535137246847340

namespace A244509

/-- `(A066872(n+1)-2)*A036689(n+1)` -/
def P18160535137246847340.Spec : Prop :=
  ∀ n, P18160535137246847340.a n = A244509 (n + 1)

end A244509

/-! ## A244509.P11166202721630995985

`(A008864(n+1)-2)*A127917(n+1)`
-/

namespace A244509.P11166202721630995985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008864 (n + 1) - 2) * A127917 (n + 1)

end

end A244509.P11166202721630995985

namespace A244509

/-- `(A008864(n+1)-2)*A127917(n+1)` -/
def P11166202721630995985.Spec : Prop :=
  ∀ n, P11166202721630995985.a n = A244509 (n + 1)

theorem P11166202721630995985.correct : P11166202721630995985.Spec := by
  intro n
  simp only [A244509, Nat.add_sub_cancel, A244509.P11166202721630995985.a, A244509.P12134030914393588250.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A127917, A127917.P3075272387178552324.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A244509

/-! ## A244509.P1272623943507078820

`2*(A138423(n+1)-A008837(n+1))`
-/

namespace A244509.P1272623943507078820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A138423 (n + 1) - A008837 (n + 1))

end

end A244509.P1272623943507078820

namespace A244509

/-- `2*(A138423(n+1)-A008837(n+1))` -/
def P1272623943507078820.Spec : Prop :=
  ∀ n, P1272623943507078820.a n = A244509 (n + 1)

end A244509

/-!
# A244510: a(0)=0; for n>0, choose a(n) to be the smallest number > a(n-1) such that the condition a(n) > Sum_{k=0..n} digsum(a(k)) holds.

The programs for A244510, there is no canonical definition to state claims against.
-/

/-! ## A244510.P12310509111092499169

`lt[A329562(n), A246780(or(1, n))]`
-/

namespace A244510.P12310509111092499169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329562 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246780 (Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A244510.P12310509111092499169

/-! ## A244510.P16967549564902763250

`lt[A126646(∑{digits}[n, #]), A092857(n+1)]`
-/

namespace A244510.P16967549564902763250
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092857 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A244510.P16967549564902763250

/-! ## A244510.P16519452942790929141

`lt[n-9*floor(n/10), A110591(A045943(n))]`
-/

namespace A244510.P16519452942790929141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 9 * ⌊(n : ℚ) / 10⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (A045943 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A244510.P16519452942790929141

/-! ## A244510.P1927695913199176969

`lt[A001698(n-9*floor(n/10)), A000040(n+1)]`
-/

namespace A244510.P1927695913199176969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001698 ((n : ℤ) - 9 * ⌊(n : ℚ) / 10⌋).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A244510.P1927695913199176969

/-! ## A244510.P18347416176160945356

`lt[A086246(n-9*floor(n/10)), A008615(n+4)]`
-/

namespace A244510.P18347416176160945356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086246 ((n : ℤ) - 9 * ⌊(n : ℚ) / 10⌋).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A244510.P18347416176160945356

/-!
# A244511: Possible numbers of Hamiltonian cycles up to direction in 7-vertex graphs.

The programs for A244511, there is no canonical definition to state claims against.
-/

/-! ## A244511.P9732873236816643796

`lt[A249905(n), 8]`
-/

namespace A244511.P9732873236816643796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249905 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A244511.P9732873236816643796

/-! ## A244511.P4825860915707154535

`lt[A082039(A266072(n)), A239934(n+1)]`
-/

namespace A244511.P4825860915707154535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082039 (A266072 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239934 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A244511.P4825860915707154535

/-! ## A244511.P7620056563111743896

`lt[A348326(2*(n+2)), A348363(A126706(n+1))]`
-/

namespace A244511.P7620056563111743896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348326 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348363 (A126706 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A244511.P7620056563111743896

/-! ## A244511.P10720402973245074406

`lt[A320782(n), A020639(A206889(n+1))]`
-/

namespace A244511.P10720402973245074406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320782 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A206889 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A244511.P10720402973245074406

/-! ## A244511.P6187742163120610665

`lt[A254048(n+2), A007953(A135764(3*(n+1)))]`
-/

namespace A244511.P6187742163120610665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254048 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A135764 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A244511.P6187742163120610665

/-!
# A244513: Legendre symbol (prime(n), prime(n+1)).

The programs for A244513, there is no canonical definition to state claims against.
-/

/-! ## A244513.P12775095143843323743

`A226520(A072055(n+1)+A007504(n))`
-/

namespace A244513.P12775095143843323743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226520 (A072055 (n + 1) + A007504 n).toNat

end

end A244513.P12775095143843323743

/-! ## A244513.P11984244937589538004

`A226520(A014284(n+2)+p?[A259153(n)])`
-/

namespace A244513.P11984244937589538004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226520 (A014284 (n + 2) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A244513.P11984244937589538004

/-! ## A244513.P15579619482199959952

`A226520(A008864(n+1)+A007504(n+1))`
-/

namespace A244513.P15579619482199959952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226520 (A008864 (n + 1) + A007504 (n + 1)).toNat

end

end A244513.P15579619482199959952

/-! ## A244513.P1903450663984591799

`A226520(A175965(n+3)+A006093(n+1))`
-/

namespace A244513.P1903450663984591799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226520 (A175965 (n + 3) + A006093 (n + 1)).toNat

end

end A244513.P1903450663984591799

/-! ## A244513.P7960213995593761819

`A097343(A006093(n+1)+∑[A000040(n+1)])`
-/

namespace A244513.P7960213995593761819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097343 (A006093 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A244513.P7960213995593761819

/-! ## A244513.P16296960786182258381

`A226520(A014692(n+1)+∑[A008864(n+1)])`
-/

namespace A244513.P16296960786182258381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226520 (A014692 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A244513.P16296960786182258381

/-! ## A244513.P13715933127973921494

`A226520(A014284(n+1)+2*A000040(n+1))`
-/

namespace A244513.P13715933127973921494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226520 (A014284 (n + 1) + 2 * A000040 (n + 1)).toNat

end

end A244513.P13715933127973921494

/-! ## A244513.P2131726560881499623

`A226520(A000040(n+1)+∑[A000040(n+1)]+1)`
-/

namespace A244513.P2131726560881499623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226520 (A000040 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A244513.P2131726560881499623

/-! ## A244513.P709112078305798082

`A097343(A000040(n+1)+∑[A000040(n+1)]-1)`
-/

namespace A244513.P709112078305798082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097343 (A000040 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - 1)).toNat

end

end A244513.P709112078305798082

/-! ## A244513.P10833950078917634283

`A226520(A000040(n+1)+A014284(n+1)+A000040(n+1))`
-/

namespace A244513.P10833950078917634283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226520 (A000040 (n + 1) + (A014284 (n + 1) + A000040 (n + 1))).toNat

end

end A244513.P10833950078917634283

/-!
# A244515: Number of partitions of n where the minimal multiplicity of any part is 2.

The programs for A244515, there is no canonical definition to state claims against.
-/

/-! ## A244515.P5213950882189741933

`A007690(n+1)-A100405(n+1)`
-/

namespace A244515.P5213950882189741933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007690 (n + 1) - A100405 (n + 1)

end

end A244515.P5213950882189741933

/-! ## A244515.P18356035385258042976

`A000041(n+1)-(A183558(n+1)+A100405(n+1))`
-/

namespace A244515.P18356035385258042976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A183558 (n + 1) + A100405 (n + 1))

end

end A244515.P18356035385258042976

/-! ## A244515.P17712391681507102340

`A243978(∑[n+1]+2)`
-/

namespace A244515.P17712391681507102340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243978 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A244515.P17712391681507102340

/-! ## A244515.P16993137227691532532

`or(char[1], A243978(A133263(n+1)))`
-/

namespace A244515.P16993137227691532532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A243978 (A133263 (n + 1)).toNat)

end

end A244515.P16993137227691532532

/-! ## A244515.P10808266614136919000

`A243978(A133263(n+1))%A006261(n)`
-/

namespace A244515.P10808266614136919000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243978 (A133263 (n + 1)).toNat) (A006261 n)

end

end A244515.P10808266614136919000

/-! ## A244515.P5064866061902999064

`A243978(A133263(n+1))/A014963(4*n+2)`
-/

namespace A244515.P5064866061902999064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243978 (A133263 (n + 1)).toNat : ℚ) / (A014963 (4 * n + 2) : ℚ)

end

end A244515.P5064866061902999064

/-! ## A244515.P12506456744623549028

`A010167(A000265(n+1))*A243978(A133263(n+1))`
-/

namespace A244515.P12506456744623549028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010167 (A000265 (n + 1)).toNat * A243978 (A133263 (n + 1)).toNat

end

end A244515.P12506456744623549028

/-! ## A244515.P5158265465443743582

`A033999(A001223(n+1))*A243978(A133263(n+1))`
-/

namespace A244515.P5158265465443743582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A001223 (n + 1)).toNat * A243978 (A133263 (n + 1)).toNat

end

end A244515.P5158265465443743582

/-!
# A244516: Number of partitions of n where the minimal multiplicity of any part is 3.

The programs for A244516, there is no canonical definition to state claims against.
-/

/-! ## A244516.P7731476723464749586

`A100405(n+1)-A160974(n+1)`
-/

namespace A244516.P7731476723464749586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100405 (n + 1) - A160974 (n + 1)

end

end A244516.P7731476723464749586

/-! ## A244516.P15434431655455469128

`A243978(∑[round(acot(n)+n)+1])`
-/

namespace A244516.P15434431655455469128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243978 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A244516.P15434431655455469128

/-! ## A244516.P10110807084354689997

`A243978(∑[char[1]+1+n]+2)`
-/

namespace A244516.P10110807084354689997
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243978 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A244516.P10110807084354689997

/-! ## A244516.P11558195344395006585

`A025458(A066375(n+1)-n)`
-/

namespace A244516.P11558195344395006585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025458 (A066375 (n + 1) - (n : ℤ)).toNat

end

end A244516.P11558195344395006585

/-! ## A244516.P5198798876892401134

`A161078(n+1)-A161053(A187829(n+1))`
-/

namespace A244516.P5198798876892401134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161078 (n + 1) - A161053 (A187829 (n + 1)).toNat

end

end A244516.P5198798876892401134

/-!
# A244517: Number of partitions of n where the minimal multiplicity of any part is 4.

The programs for A244517, there is no canonical definition to state claims against.
-/

/-! ## A244517.P7194993708751453863

`A160974(n+1)-A160975(n+1)`
-/

namespace A244517.P7194993708751453863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160974 (n + 1) - A160975 (n + 1)

end

end A244517.P7194993708751453863

/-! ## A244517.P17223790439215728985

`A160974(n+1)-(A244518(n+1)+A160976(n+1))`
-/

namespace A244517.P17223790439215728985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160974 (n + 1) - (A244518 (n + 1) + A160976 (n + 1))

end

end A244517.P17223790439215728985

/-! ## A244517.P15903590699802753014

`A243978(∑[(char[3]+1)*(n+1)])`
-/

namespace A244517.P15903590699802753014
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0) + 1) * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243978 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A244517.P15903590699802753014

/-! ## A244517.P851116447487712141

`A160974(n+1)-(A244518(n+1)+∑{d}[n+1, A002562(#)*A161030((n+1)/#)])`
-/

namespace A244517.P851116447487712141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160974 (n + 1) - (A244518 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A002562 d * A161030 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat)

end

end A244517.P851116447487712141

/-! ## A244517.P15037090700386252505

`A160974(n+1)-(A244518(n+1)+∑{d}[n+1, A002562(#)*A161081((n+1)/#)])`
-/

namespace A244517.P15037090700386252505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160974 (n + 1) - (A244518 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A002562 d * A161081 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat)

end

end A244517.P15037090700386252505

/-!
# A244518: Number of partitions of n where the minimal multiplicity of any part is 5.

The programs for A244518, there is no canonical definition to state claims against.
-/

/-! ## A244518.P11378853874058340546

`A160975(n+1)-A160976(n+1)`
-/

namespace A244518.P11378853874058340546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160975 (n + 1) - A160976 (n + 1)

end

end A244518.P11378853874058340546

/-! ## A244518.P13237265899907720166

`A160974(n+1)-A244517(n+1)-A160976(n+1)`
-/

namespace A244518.P13237265899907720166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160974 (n + 1) - A244517 (n + 1) - A160976 (n + 1)

end

end A244518.P13237265899907720166

/-! ## A244518.P15103473875869927979

`A243978(A167499(n))%A000009(n)`
-/

namespace A244518.P15103473875869927979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243978 (A167499 n).toNat) (A000009 n)

end

end A244518.P15103473875869927979

/-! ## A244518.P11373948603650740783

`A160975(n+1)-∑{d}[n+1, A002562(#)*A161030((n+1)/#)]`
-/

namespace A244518.P11373948603650740783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160975 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A002562 d * A161030 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A244518.P11373948603650740783

/-! ## A244518.P8256887645296097751

`A160975(n+1)-∑{d}[n+1, A002562(#)*A161081((n+1)/#)]`
-/

namespace A244518.P8256887645296097751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160975 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A002562 d * A161081 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A244518.P8256887645296097751

/-!
# A244519: Expansion of Product_{n>=1} (1 + H(x^n)) where H(x) is the g.f. of A000081.

The programs for A244519, there is no canonical definition to state claims against.
-/

/-! ## A244519.P409430612632750218

`A243283(A279551(n+1))`
-/

namespace A244519.P409430612632750218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (A279551 (n + 1)).toNat

end

end A244519.P409430612632750218

/-! ## A244519.P1803328757677697070

`A261104(∑[A182645(n+1)]-n)`
-/

namespace A244519.P1803328757677697070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A244519.P1803328757677697070

/-! ## A244519.P6636227019729322033

`A092886(n)+A000196(A005638(n))`
-/

namespace A244519.P6636227019729322033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092886 n + A000196 (A005638 n).toNat

end

end A244519.P6636227019729322033

/-! ## A244519.P7088493689003412230

`A243283(A148687(n)+A054152(n))`
-/

namespace A244519.P7088493689003412230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (A148687 n + A054152 n).toNat

end

end A244519.P7088493689003412230

/-! ## A244519.P9144754063005416450

`A243283(A301872(n)+A148453(n))`
-/

namespace A244519.P9144754063005416450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (A301872 n + A148453 n).toNat

end

end A244519.P9144754063005416450

/-!
# A244520: a(n) = A080715(n+1) / 2.

The programs for A244520, there is no canonical definition to state claims against.
-/

/-! ## A244520.P14021927083513337142

`A080715(n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A244520.P14021927083513337142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080715 (n + 2) : ℚ) / 2

end

end A244520.P14021927083513337142

/-! ## A244520.P15248439413885860979

`Δ[A268403(n+1)/2]`
-/

namespace A244520.P15248439413885860979
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268403 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A244520.P15248439413885860979

/-! ## A244520.P2519496618644153611

`∑[A004525(Δ[A080715(n+1)])]`
-/

namespace A244520.P2519496618644153611
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080715 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244520.P2519496618644153611

/-! ## A244520.P3929446629076696726

`∩[A077064(n+2), A358816(n+2)]/2`
-/

namespace A244520.P3929446629076696726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077064 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358816 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A244520.P3929446629076696726

/-! ## A244520.P9004172033588278660

`∩[A112925(n+2), A358816(n+2)]/2`
-/

namespace A244520.P9004172033588278660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112925 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358816 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A244520.P9004172033588278660

/-! ## A244520.P18124041761534617820

`A000265(A080715(n+2))`
-/

namespace A244520.P18124041761534617820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A080715 (n + 2)).toNat

end

end A244520.P18124041761534617820

/-! ## A244520.P8947024052218509738

`A006530(Δ[A268403(n+1)]+4)-2`
-/

namespace A244520.P8947024052218509738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n + 4).toNat - 2

end

end A244520.P8947024052218509738

/-! ## A244520.P17587109502166600020

`A328399(A080715(n+2)-2)`
-/

namespace A244520.P17587109502166600020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (A080715 (n + 2) - 2).toNat

end

end A244520.P17587109502166600020

/-! ## A244520.P771088517565258982

`∩[A007674(n+2), A358816(n+2)]/2`
-/

namespace A244520.P771088517565258982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007674 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358816 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A244520.P771088517565258982

/-! ## A244520.P12150786941653417639

`∩[A081083(n+2), A358816(n+2)]/2`
-/

namespace A244520.P12150786941653417639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081083 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358816 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A244520.P12150786941653417639

/-! ## A244520.P10503915073719945394

`∩[A344314(n+2), A358816(n+2)]/2`
-/

namespace A244520.P10503915073719945394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344314 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358816 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A244520.P10503915073719945394

/-! ## A244520.P5062728131565470699

`∩[A358816(n+2), A358817(n+2)]/2`
-/

namespace A244520.P5062728131565470699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358816 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358817 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A244520.P5062728131565470699

/-! ## A244520.P17614916836213517045

`∩[A344312(n+2), A358816(n+2)]/2`
-/

namespace A244520.P17614916836213517045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344312 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358816 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A244520.P17614916836213517045

/-! ## A244520.P16824080387053408121

`∩[A089269(n+2), A358816(n+2)]/2`
-/

namespace A244520.P16824080387053408121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089269 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358816 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A244520.P16824080387053408121

/-! ## A244520.P17303007047054779884

`∩[A034044(n+2), A358816(n+2)]/2`
-/

namespace A244520.P17303007047054779884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034044 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358816 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A244520.P17303007047054779884

/-!
# A244521: Number of pseudo-square parallelogram (psp) polyominoes by semiperimeter.

The programs for A244521, there is no canonical definition to state claims against.
-/

/-! ## A244521.P14096298299387809911

`A172471(A150113(n))`
-/

namespace A244521.P14096298299387809911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A150113 n).toNat

end

end A244521.P14096298299387809911

/-! ## A244521.P10638296229211701079

`A276581(A149040(n)+n)`
-/

namespace A244521.P10638296229211701079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (A149040 n + (n : ℤ)).toNat

end

end A244521.P10638296229211701079

/-! ## A244521.P7144300802581867760

`A000267(floor(A150113(n)/2))`
-/

namespace A244521.P7144300802581867760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 ⌊(A150113 n : ℚ) / 2⌋.toNat

end

end A244521.P7144300802581867760

/-! ## A244521.P5103011726776434298

`A094536(n)+A053879(A019308(n))`
-/

namespace A244521.P5103011726776434298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094536 n + A053879 (A019308 n).toNat

end

end A244521.P5103011726776434298

/-!
# A244522: Number of simple involutions of length n.

The programs for A244522, there is no canonical definition to state claims against.
-/

/-! ## A244522.P5224374808621479390

`A311384(n)%A344416(A036052(n))`
-/

namespace A244522.P5224374808621479390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311384 n) (A344416 (A036052 n).toNat)

end

end A244522.P5224374808621479390

/-! ## A244522.P16874125452079173486

`A185278(n+3)*A185287(A185306(n+2))`
-/

namespace A244522.P16874125452079173486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185278 (n + 3) * A185287 (A185306 (n + 2)).toNat

end

end A244522.P16874125452079173486

/-! ## A244522.P8884271552752661328

`A321099(n)*A321102(A321152(2*(n+2)))`
-/

namespace A244522.P8884271552752661328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321099 n * A321102 (A321152 (2 * (n + 2))).toNat

end

end A244522.P8884271552752661328

/-!
# A244523: Irregular triangle read by rows: T(n,k) is the number of identity trees with n nodes and maximal branching factor k.

The programs for A244523, there is no canonical definition to state claims against.
-/

/-! ## A244523.P15605677945305632060

`A003714(A291878(n)%p?[A200748(n)])`
-/

namespace A244523.P15605677945305632060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (Int.tmod (A291878 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A244523.P15605677945305632060

/-! ## A244523.P4259780100074822923

`A003714(A291878(n)^A014963(n+2))`
-/

namespace A244523.P4259780100074822923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (SequenceMachineLib.roundAway ((A291878 n : ℚ) ^ (A014963 (n + 2) : ℤ))).toNat

end

end A244523.P4259780100074822923

/-! ## A244523.P18157757090285952110

`A003714(A291878(n))^A007318(A053602(n))`
-/

namespace A244523.P18157757090285952110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003714 (A291878 n).toNat : ℚ) ^ (A007318 (A053602 n).toNat : ℤ)

end

end A244523.P18157757090285952110

/-! ## A244523.P5859629495736542227

`A381524(A393036(n))`
-/

namespace A244523.P5859629495736542227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381524 (A393036 n).toNat

end

end A244523.P5859629495736542227

/-! ## A244523.P11346427775324829852

`A386891(n)^A378985(A205475(n+1))`
-/

namespace A244523.P11346427775324829852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386891 n : ℚ) ^ (A378985 (A205475 (n + 1)).toNat : ℤ)

end

end A244523.P11346427775324829852

/-!
# A244524: Number of pairs (f,g) of commuting maps {0,..,n-1}->{0,..,n-1} with 0 <= f(k), g(k) <= k.

The programs for A244524, there is no canonical definition to state claims against.
-/

/-! ## A244524.P5967732835760440274

`A006370(∏[3*n+1]/(3*n+1)+n!*ceil(2^(n-1)))`
-/

namespace A244524.P5967732835760440274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (3 * n + 1 : ℚ) + ((Nat.factorial n : ℤ) * ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℚ))).toNat

end

end A244524.P5967732835760440274

/-! ## A244524.P2924582142540954680

`A006370(round(2^n*n!/2)+∏[3*n+1]/(3*n+1))`
-/

namespace A244524.P2924582142540954680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway ((2 ^ n * Nat.factorial n : ℚ) / 2) : ℚ) + ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (3 * n + 1 : ℚ))).toNat

end

end A244524.P2924582142540954680

/-!
# A244525: Expansion of f(-x^1, -x^7) in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A244525, the canonical program `A244525.P10571466511866612896` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244525 has offset 0).

The definition of A244525 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244525.P10571466511866612896

`(-1)^n*A214263(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A244525

/-- `(-1)^n*A214263(n)` -/
def P10571466511866612896.Spec : Prop :=
  ∀ n, P10571466511866612896.a n = A244525 n

theorem P10571466511866612896.correct : P10571466511866612896.Spec := by
  intro n
  simp only [A244525]

end A244525

/-! ## A244525.P13904010612716586586

`A010052(16*n+9)*(-1)^n`
-/

namespace A244525.P13904010612716586586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (16 * n + 9) * (-1) ^ n

end

end A244525.P13904010612716586586

namespace A244525

/-- `A010052(16*n+9)*(-1)^n` -/
def P13904010612716586586.Spec : Prop :=
  ∀ n, P13904010612716586586.a n = A244525 n

end A244525

/-! ## A244525.P17609540395739755298

`(-1)^n*char[∑[n*gcd(3, n%2)]]`
-/

namespace A244525.P17609540395739755298
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 3 (n % 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A244525.P17609540395739755298

namespace A244525

/-- `(-1)^n*char[∑[n*gcd(3, n%2)]]` -/
def P17609540395739755298.Spec : Prop :=
  ∀ n, P17609540395739755298.a n = A244525 n

end A244525

/-! ## A244525.P17452311888792482804

`(-1)^n*char[A074377(n)]`
-/

namespace A244525.P17452311888792482804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074377 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A244525.P17452311888792482804

namespace A244525

/-- `(-1)^n*char[A074377(n)]` -/
def P17452311888792482804.Spec : Prop :=
  ∀ n, P17452311888792482804.a n = A244525 n

end A244525

/-! ## A244525.P14444717414195633306

`xor(n, A023531(2*n))-n`
-/

namespace A244525.P14444717414195633306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A023531 (2 * n)) - (n : ℤ)

end

end A244525.P14444717414195633306

namespace A244525

/-- `xor(n, A023531(2*n))-n` -/
def P14444717414195633306.Spec : Prop :=
  ∀ n, P14444717414195633306.a n = A244525 n

end A244525

/-! ## A244525.P14266996608294835626

`(-A073423(2*n+1))^n`
-/

namespace A244525.P14266996608294835626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-A073423 (2 * n + 1)) ^ n

end

end A244525.P14266996608294835626

namespace A244525

/-- `(-A073423(2*n+1))^n` -/
def P14266996608294835626.Spec : Prop :=
  ∀ n, P14266996608294835626.a n = A244525 n

end A244525

/-! ## A244525.P15626835105647653483

`A023531(2*n)*A033999(n)`
-/

namespace A244525.P15626835105647653483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (2 * n) * A033999 n

end

end A244525.P15626835105647653483

namespace A244525

/-- `A023531(2*n)*A033999(n)` -/
def P15626835105647653483.Spec : Prop :=
  ∀ n, P15626835105647653483.a n = A244525 n

theorem P15626835105647653483.correct : P15626835105647653483.Spec := by
  intro n
  simp only [A244525, Nat.add_sub_cancel, A244525.P15626835105647653483.a, A244525.P10571466511866612896.a, A023531, A023531.P13036811505051547859.a, A033999, A033999.P17703899380244199787.a, A214263, A214263.P14358253122449274088.a, A010054, A010054.P18347828677204923252.a, A005369, A005369.P10796159359873341658.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A244525

/-! ## A244525.P2163048658535152269

`A033999(n)*A073423(2*n+1)`
-/

namespace A244525.P2163048658535152269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A073423 (2 * n + 1)

end

end A244525.P2163048658535152269

namespace A244525

/-- `A033999(n)*A073423(2*n+1)` -/
def P2163048658535152269.Spec : Prop :=
  ∀ n, P2163048658535152269.a n = A244525 n

end A244525

/-! ## A244525.P7608481061947739898

`A000035(A246863(n)+A000035(n))-A000035(n)`
-/

namespace A244525.P7608481061947739898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A246863 n + A000035 n).toNat - A000035 n

end

end A244525.P7608481061947739898

namespace A244525

/-- `A000035(A246863(n)+A000035(n))-A000035(n)` -/
def P7608481061947739898.Spec : Prop :=
  ∀ n, P7608481061947739898.a n = A244525 n

end A244525

/-! ## A244525.P13297300090799374400

`A000035(A246863(n)+n)-A000035(n)`
-/

namespace A244525.P13297300090799374400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A246863 n + (n : ℤ)).toNat - A000035 n

end

end A244525.P13297300090799374400

namespace A244525

/-- `A000035(A246863(n)+n)-A000035(n)` -/
def P13297300090799374400.Spec : Prop :=
  ∀ n, P13297300090799374400.a n = A244525 n

end A244525

/-! ## A244525.P3473643063356717604

`xor(n, A073424(2*n+1))-n`
-/

namespace A244525.P3473643063356717604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A073424 (2 * n + 1)) - (n : ℤ)

end

end A244525.P3473643063356717604

namespace A244525

/-- `xor(n, A073424(2*n+1))-n` -/
def P3473643063356717604.Spec : Prop :=
  ∀ n, P3473643063356717604.a n = A244525 n

end A244525

/-! ## A244525.P9178575081329846622

`A143433(A123663(n+1))`
-/

namespace A244525.P9178575081329846622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143433 (A123663 (n + 1)).toNat

end

end A244525.P9178575081329846622

namespace A244525

/-- `A143433(A123663(n+1))` -/
def P9178575081329846622.Spec : Prop :=
  ∀ n, P9178575081329846622.a n = A244525 n

end A244525

/-! ## A244525.P739780322878384137

`A143434(Δ[n²])`
-/

namespace A244525.P739780322878384137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143434 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A244525.P739780322878384137

namespace A244525

/-- `A143434(Δ[n²])` -/
def P739780322878384137.Spec : Prop :=
  ∀ n, P739780322878384137.a n = A244525 n

end A244525

/-! ## A244525.P1633186797807271556

`A106459(Δ[n²])^n`
-/

namespace A244525.P1633186797807271556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106459 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ n

end

end A244525.P1633186797807271556

namespace A244525

/-- `A106459(Δ[n²])^n` -/
def P1633186797807271556.Spec : Prop :=
  ∀ n, P1633186797807271556.a n = A244525 n

end A244525

/-! ## A244525.P7646744725960249088

`-A143433(2*n+1)`
-/

namespace A244525.P7646744725960249088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A143433 (2 * n + 1)

end

end A244525.P7646744725960249088

namespace A244525

/-- `-A143433(2*n+1)` -/
def P7646744725960249088.Spec : Prop :=
  ∀ n, P7646744725960249088.a n = A244525 n

end A244525

/-! ## A244525.P4095932038331003334

`A143434(2*n+1)^3`
-/

namespace A244525.P4095932038331003334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143434 (2 * n + 1) ^ 3

end

end A244525.P4095932038331003334

namespace A244525

/-- `A143434(2*n+1)^3` -/
def P4095932038331003334.Spec : Prop :=
  ∀ n, P4095932038331003334.a n = A244525 n

end A244525

/-! ## A244525.P13089637836747818300

`xor(n, A010054(2*n+1))-n`
-/

namespace A244525.P13089637836747818300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A010054 (2 * n + 1)) - (n : ℤ)

end

end A244525.P13089637836747818300

namespace A244525

/-- `xor(n, A010054(2*n+1))-n` -/
def P13089637836747818300.Spec : Prop :=
  ∀ n, P13089637836747818300.a n = A244525 n

end A244525

/-! ## A244525.P4027932636346624992

`(floor(atan(A110813(2*n)))-1)^n`
-/

namespace A244525.P4027932636346624992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊Real.arctan (A110813 (2 * n) : ℝ)⌋ - 1) ^ n

end

end A244525.P4027932636346624992

namespace A244525

/-- `(floor(atan(A110813(2*n)))-1)^n` -/
def P4027932636346624992.Spec : Prop :=
  ∀ n, P4027932636346624992.a n = A244525 n

end A244525

/-! ## A244525.P17446959692424888624

`A010054(2*n+1)*A033999(n)`
-/

namespace A244525.P17446959692424888624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (2 * n + 1) * A033999 n

end

end A244525.P17446959692424888624

namespace A244525

/-- `A010054(2*n+1)*A033999(n)` -/
def P17446959692424888624.Spec : Prop :=
  ∀ n, P17446959692424888624.a n = A244525 n

theorem P17446959692424888624.correct : P17446959692424888624.Spec := by
  intro n
  simp only [A244525, Nat.add_sub_cancel, A244525.P17446959692424888624.a, A244525.P10571466511866612896.a, A010054, A010054.P18347828677204923252.a, A033999, A033999.P17703899380244199787.a, A214263, A214263.P14358253122449274088.a, A005369, A005369.P10796159359873341658.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A244525

/-! ## A244525.P18435607120464876805

`A143433(2*n+1)²*A033999(n)`
-/

namespace A244525.P18435607120464876805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143433 (2 * n + 1) ^ 2 * A033999 n

end

end A244525.P18435607120464876805

namespace A244525

/-- `A143433(2*n+1)²*A033999(n)` -/
def P18435607120464876805.Spec : Prop :=
  ∀ n, P18435607120464876805.a n = A244525 n

end A244525

/-!
# A244526: Expansion of f(-x^3, -x^5)^2 in powers of x where f() is Ramanujan's two-variable theta function.

The programs for A244526, there is no canonical definition to state claims against.
-/

/-! ## A244526.P10647926647346283485

`A244560(9*n)`
-/

namespace A244526.P10647926647346283485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244560 (9 * n)

end

end A244526.P10647926647346283485

/-! ## A244526.P13433739268285050890

`A244560(A008591(n))^C(3, C(3, n²))`
-/

namespace A244526.P13433739268285050890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244560 (A008591 n).toNat ^ Nat.choose 3 (Nat.choose 3 (n ^ 2))

end

end A244526.P13433739268285050890

/-! ## A244526.P13338620982446248967

`or(A000007(n), A244560(A008591(n)))`
-/

namespace A244526.P13338620982446248967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A244560 (A008591 n).toNat)

end

end A244526.P13338620982446248967

/-! ## A244526.P13778137691152392924

`A244560(A008591(n))+A000007(n+1)`
-/

namespace A244526.P13778137691152392924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244560 (A008591 n).toNat + A000007 (n + 1)

end

end A244526.P13778137691152392924

/-! ## A244526.P9591970110083155129

`A244560(A008591(n))%A083207(n+1)`
-/

namespace A244526.P9591970110083155129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244560 (A008591 n).toNat) (A083207 (n + 1))

end

end A244526.P9591970110083155129

/-! ## A244526.P12922670903662090244

`A244560(A008591(n))/A007318(C(2, n))`
-/

namespace A244526.P12922670903662090244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244560 (A008591 n).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A244526.P12922670903662090244

/-! ## A244526.P12327196206408471476

`or(A028310(n)-n, A244560(A008591(n)))`
-/

namespace A244526.P12327196206408471476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A028310 n - (n : ℤ)) (A244560 (A008591 n).toNat)

end

end A244526.P12327196206408471476

/-! ## A244526.P9698402661300299006

`A244560(A008591(n))/A309873(n+1)²`
-/

namespace A244526.P9698402661300299006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244560 (A008591 n).toNat : ℚ) / (A309873 (n + 1) ^ 2 : ℚ)

end

end A244526.P9698402661300299006

/-! ## A244526.P17873140067447758066

`A244560(A008591(n))/A007318(and(1, -n))`
-/

namespace A244526.P17873140067447758066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244560 (A008591 n).toNat : ℚ) / (A007318 (Int.land 1 (-(n : ℤ))).toNat : ℚ)

end

end A244526.P17873140067447758066

/-! ## A244526.P2529651963104381163

`A244560(A008591(n))+char[A190106(n+1)]`
-/

namespace A244526.P2529651963104381163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190106 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244560 (A008591 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A244526.P2529651963104381163

/-! ## A244526.P10542894290576051921

`A244560(A008591(n))/A000108(C(2, n+2))`
-/

namespace A244526.P10542894290576051921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244560 (A008591 n).toNat : ℚ) / (A000108 (Nat.choose 2 (n + 2)) : ℚ)

end

end A244526.P10542894290576051921

/-! ## A244526.P15255568322836390285

`A244560(A008591(n))^A001700(C(2, n+2))`
-/

namespace A244526.P15255568322836390285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244560 (A008591 n).toNat : ℚ) ^ (A001700 (Nat.choose 2 (n + 2)) : ℤ)

end

end A244526.P15255568322836390285

/-! ## A244526.P3169010729717974797

`A244560(A008591(n))/A000108(gcd(n, n+1))`
-/

namespace A244526.P3169010729717974797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244560 (A008591 n).toNat : ℚ) / (A000108 (Nat.gcd n (n + 1)) : ℚ)

end

end A244526.P3169010729717974797

/-! ## A244526.P17318687399444373599

`A244560(A008591(n))+A049240((n+1)²)`
-/

namespace A244526.P17318687399444373599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244560 (A008591 n).toNat + A049240 ((n + 1) ^ 2)

end

end A244526.P17318687399444373599

/-! ## A244526.P2117920443399818034

`A244560(A008591(n))/A014963(∑[n+1])`
-/

namespace A244526.P2117920443399818034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244560 (A008591 n).toNat : ℚ) / (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A244526.P2117920443399818034

/-!
# A244527: Bisection of A030190 or of A030302.

The programs for A244527, there is no canonical definition to state claims against.
-/

/-! ## A244527.P8133894001806738068

`floor(sqrt(A319954(2*n)))`
-/

namespace A244527.P8133894001806738068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A319954 (2 * n))

end

end A244527.P8133894001806738068

/-! ## A244527.P135127890072309515

`A057427(A000005(n+2)*A319954(2*n))`
-/

namespace A244527.P135127890072309515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A000005 (n + 2) * A319954 (2 * n)).toNat

end

end A244527.P135127890072309515

/-! ## A244527.P4920300135135300401

`A057427(A181796(n+2)*A319954(2*n))`
-/

namespace A244527.P4920300135135300401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A181796 (n + 2) * A319954 (2 * n)).toNat

end

end A244527.P4920300135135300401

/-! ## A244527.P5587809685087173439

`A030190(Δ[n²])`
-/

namespace A244527.P5587809685087173439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A244527.P5587809685087173439

/-! ## A244527.P13751308467188085972

`A030302(Δ[n²])`
-/

namespace A244527.P13751308467188085972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030302 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A244527.P13751308467188085972

/-! ## A244527.P10240180724794416320

`1-A030315(Δ[n²])`
-/

namespace A244527.P10240180724794416320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A030315 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A244527.P10240180724794416320

/-! ## A244527.P16657313996721987862

`A382115(2*n+1)%2`
-/

namespace A244527.P16657313996721987862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A382115 (2 * n + 1)) 2

end

end A244527.P16657313996721987862

/-! ## A244527.P14544870066661127845

`and(1, A030190(2*n+1))`
-/

namespace A244527.P14544870066661127845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A030190 (2 * n + 1))

end

end A244527.P14544870066661127845

/-! ## A244527.P2974051218608610282

`and(1, A030302(2*n+1))`
-/

namespace A244527.P2974051218608610282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A030302 (2 * n + 1))

end

end A244527.P2974051218608610282

/-! ## A244527.P17508450162885768034

`ceil(abs(sin(A030302(n+1+n))))`
-/

namespace A244527.P17508450162885768034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.sin (A030302 (n + 1 + n) : ℝ)|⌉

end

end A244527.P17508450162885768034

/-! ## A244527.P4758778783603213924

`ceil(A030302(4*n/2+1)/2)`
-/

namespace A244527.P4758778783603213924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A030302 (SequenceMachineLib.roundAway (4 * ((n : ℚ) / 2) + 1)).toNat : ℚ) / 2⌉

end

end A244527.P4758778783603213924

/-! ## A244527.P8747431506935849530

`C(A030302(A005408(n))+1, 2)`
-/

namespace A244527.P8747431506935849530
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A030302 (A005408 n).toNat + 1).toNat 2

end

end A244527.P8747431506935849530

/-! ## A244527.P2914587678959266983

`or(A000007(n), A030190(2*n+1))`
-/

namespace A244527.P2914587678959266983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A030190 (2 * n + 1))

end

end A244527.P2914587678959266983

/-! ## A244527.P11037000121816734779

`abs(A020985(n)*A030302(2*n+1))`
-/

namespace A244527.P11037000121816734779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A020985 n * A030302 (2 * n + 1)|

end

end A244527.P11037000121816734779

/-! ## A244527.P10015142233939046142

`A030190(2*n+1)+A000007(n+1)`
-/

namespace A244527.P10015142233939046142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (2 * n + 1) + A000007 (n + 1)

end

end A244527.P10015142233939046142

/-! ## A244527.P3404072817442607485

`A054633(2*n+1)-A054633(2*n)`
-/

namespace A244527.P3404072817442607485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054633 (2 * n + 1) - A054633 (2 * n)

end

end A244527.P3404072817442607485

/-! ## A244527.P8405375880163616378

`ceil(A030190(2*n+1)/A000010(n+1))`
-/

namespace A244527.P8405375880163616378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A030190 (2 * n + 1) : ℚ) / (A000010 (n + 1) : ℚ)⌉

end

end A244527.P8405375880163616378

/-! ## A244527.P197933815844705155

`A085405(2*n+1)+A030190(2*n+1)`
-/

namespace A244527.P197933815844705155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085405 (2 * n + 1) + A030190 (2 * n + 1)

end

end A244527.P197933815844705155

/-! ## A244527.P3968108116828992922

`A135416(2*(n+1))+A030302(2*n+1)`
-/

namespace A244527.P3968108116828992922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135416 (2 * (n + 1)) + A030302 (2 * n + 1)

end

end A244527.P3968108116828992922

/-! ## A244527.P9632563092561554737

`A140807(2*(n+1))+A030190(2*n+1)`
-/

namespace A244527.P9632563092561554737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140807 (2 * (n + 1)) + A030190 (2 * n + 1)

end

end A244527.P9632563092561554737

/-!
# A244528: Bisection of A030190 or of A030302.

The programs for A244528, there is no canonical definition to state claims against.
-/

/-! ## A244528.P14160218190981127407

`floor(sqrt(A319954(2*n+1)))`
-/

namespace A244528.P14160218190981127407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A319954 (2 * n + 1))

end

end A244528.P14160218190981127407

/-! ## A244528.P15157218375073590218

`A057427(A000005(n+2)*A319954(2*n+1))`
-/

namespace A244528.P15157218375073590218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A000005 (n + 2) * A319954 (2 * n + 1)).toNat

end

end A244528.P15157218375073590218

/-! ## A244528.P11276400987440000988

`A057427(A181796(n+2)*A319954(2*n+1))`
-/

namespace A244528.P11276400987440000988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A181796 (n + 2) * A319954 (2 * n + 1)).toNat

end

end A244528.P11276400987440000988

/-! ## A244528.P8398423514617129031

`A030190(2*(n+1))`
-/

namespace A244528.P8398423514617129031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (2 * (n + 1))

end

end A244528.P8398423514617129031

/-! ## A244528.P7025960965685942377

`A030302(2*(n+1))`
-/

namespace A244528.P7025960965685942377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030302 (2 * (n + 1))

end

end A244528.P7025960965685942377

/-! ## A244528.P10967663479553012484

`and(1, A030190(n+2+n))`
-/

namespace A244528.P10967663479553012484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A030190 (n + 2 + n))

end

end A244528.P10967663479553012484

/-! ## A244528.P15629796708518807096

`round(A030302(Δ[n²]+1)/2)`
-/

namespace A244528.P15629796708518807096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A030302 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat : ℚ) / 2)

end

end A244528.P15629796708518807096

/-! ## A244528.P8898465824961046075

`C(A030302(A005408(n)+1)+1, 2)`
-/

namespace A244528.P8898465824961046075
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A030302 (A005408 n + 1).toNat + 1).toNat 2

end

end A244528.P8898465824961046075

/-! ## A244528.P15445221112220085906

`A054633(2*(n+1))-A054633(2*n+1)`
-/

namespace A244528.P15445221112220085906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054633 (2 * (n + 1)) - A054633 (2 * n + 1)

end

end A244528.P15445221112220085906

/-! ## A244528.P13971293066902133105

`1-A030315(2*(n+1))`
-/

namespace A244528.P13971293066902133105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A030315 (2 * (n + 1))

end

end A244528.P13971293066902133105

/-! ## A244528.P8553585338692932929

`Δ[n-∑[A030315(2*n)]]`
-/

namespace A244528.P8553585338692932929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030315 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A244528.P8553585338692932929

/-! ## A244528.P12171245519631967710

`A030315(A030315(2*n)+Δ[A030315(2*n)])`
-/

namespace A244528.P12171245519631967710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030315 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030315 (A030315 (2 * n) + (f1 (n + 1) - f1 n)).toNat

end

end A244528.P12171245519631967710

/-! ## A244528.P70483168950762563

`and(1, A055143(2*(n+1)))`
-/

namespace A244528.P70483168950762563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A055143 (2 * (n + 1)))

end

end A244528.P70483168950762563

/-! ## A244528.P12476373298816975416

`A055143(2*(n+1))-2*A055143(2*n+1)`
-/

namespace A244528.P12476373298816975416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055143 (2 * (n + 1)) - 2 * A055143 (2 * n + 1)

end

end A244528.P12476373298816975416

/-! ## A244528.P17314709795917441100

`A091422(n+1)%2`
-/

namespace A244528.P17314709795917441100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091422 (n + 1)) 2

end

end A244528.P17314709795917441100

/-! ## A244528.P15625235391614387945

`and(1, A091422(A000027(n+1)))`
-/

namespace A244528.P15625235391614387945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A091422 (A000027 (n + 1)).toNat)

end

end A244528.P15625235391614387945

/-! ## A244528.P11117370062296287133

`and(A000322(n), A091422(n+1))`
-/

namespace A244528.P11117370062296287133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000322 n) (A091422 (n + 1))

end

end A244528.P11117370062296287133

/-! ## A244528.P966448713899178894

`and(A000328(n), A091422(n+1))`
-/

namespace A244528.P966448713899178894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000328 n) (A091422 (n + 1))

end

end A244528.P966448713899178894

/-! ## A244528.P13694955774806760237

`and(A001513(n), A091422(n+1))`
-/

namespace A244528.P13694955774806760237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001513 n) (A091422 (n + 1))

end

end A244528.P13694955774806760237

/-! ## A244528.P4305854762327210288

`and(A001535(n), A091422(n+1))`
-/

namespace A244528.P4305854762327210288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001535 n) (A091422 (n + 1))

end

end A244528.P4305854762327210288

/-!
# A244529: Prime numbers whose decimal expansion contains no repeated digits or zeros, whose digits cannot be rearranged to form another prime number.

The programs for A244529, there is no canonical definition to state claims against.
-/

/-! ## A244529.P8584682923899687138

`filter[A360040(n+1), A168046(#)]`
-/

namespace A244529.P8584682923899687138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A244529.P8584682923899687138

/-! ## A244529.P14027774895251703235

`filter[A360041(n+1), A168046(#)]`
-/

namespace A244529.P14027774895251703235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A244529.P14027774895251703235

/-! ## A244529.P287420544669184100

`filter[A360040(n+1), A209929(#)]`
-/

namespace A244529.P287420544669184100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209929 (f1 j).toNat = 1) n)

end

end A244529.P287420544669184100

/-! ## A244529.P6417853374770481563

`filter[A360041(n+1), A209929(#)]`
-/

namespace A244529.P6417853374770481563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209929 (f1 j).toNat = 1) n)

end

end A244529.P6417853374770481563

/-! ## A244529.P11229043059393285865

`∩[A038618(n+1), A360040(n+1)]`
-/

namespace A244529.P11229043059393285865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244529.P11229043059393285865

/-!
# A244530: Number T(n,k) of ordered unlabeled rooted trees with n nodes such that the minimal outdegree of inner nodes equals k; triangle T(n,k), n>=1, 0<=k<=n-1, read by rows.

The programs for A244530, there is no canonical definition to state claims against.
-/

/-! ## A244530.P18081630539471103212

`A271424(n)-A122365(A283666(n+1))`
-/

namespace A244530.P18081630539471103212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 n - A122365 (A283666 (n + 1)).toNat

end

end A244530.P18081630539471103212

/-! ## A244530.P9259821126761672867

`A271424(n)-A271424(A283666(n+1)!)`
-/

namespace A244530.P9259821126761672867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 n - A271424 (Nat.factorial (A283666 (n + 1)).toNat)

end

end A244530.P9259821126761672867

/-! ## A244530.P13840417525352521018

`A319951(A238123(n)²)`
-/

namespace A244530.P13840417525352521018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A238123 n ^ 2).toNat

end

end A244530.P13840417525352521018

/-! ## A244530.P1188877253046799602

`A131625(A238123(n)+1)`
-/

namespace A244530.P1188877253046799602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131625 (A238123 n + 1).toNat

end

end A244530.P1188877253046799602

/-! ## A244530.P12530147369041129945

`and(A271424(n), A289453(A271424(n)))`
-/

namespace A244530.P12530147369041129945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A271424 n) (A289453 (A271424 n).toNat)

end

end A244530.P12530147369041129945

/-!
# A244531: Number of ordered unlabeled rooted trees with n nodes such that the minimal outdegree of inner nodes equals 2.

The programs for A244531, there is no canonical definition to state claims against.
-/

/-! ## A244531.P4228100756161863274

`A005043(n+2)-A114997(n+2)`
-/

namespace A244531.P4228100756161863274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 (n + 2) - A114997 (n + 2)

end

end A244531.P4228100756161863274

/-! ## A244531.P11078845450915656279

`A244530(∑[n+2]+4)`
-/

namespace A244531.P11078845450915656279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A244531.P11078845450915656279

/-! ## A244531.P4146126024296778033

`A244530(A167614(n+1))%A041452(n)`
-/

namespace A244531.P4146126024296778033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244530 (A167614 (n + 1)).toNat) (A041452 n)

end

end A244531.P4146126024296778033

/-! ## A244531.P14518096597723796068

`gcd(A000038(n), A244530(A167614(n+1)))`
-/

namespace A244531.P14518096597723796068
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A244530 (A167614 (n + 1)).toNat)

end

end A244531.P14518096597723796068

/-! ## A244531.P2340715304815617903

`lcm(A033999(n), A244530(A167614(n+1)))`
-/

namespace A244531.P2340715304815617903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A244530 (A167614 (n + 1)).toNat)

end

end A244531.P2340715304815617903

/-! ## A244531.P6731738958386503425

`or(A000007(n), A244530(A167614(n+1)))`
-/

namespace A244531.P6731738958386503425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A244530 (A167614 (n + 1)).toNat)

end

end A244531.P6731738958386503425

/-! ## A244531.P5652291452601270166

`or(A000007(n), A244530(A152949(n+4)))`
-/

namespace A244531.P5652291452601270166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A244530 (A152949 (n + 4)).toNat)

end

end A244531.P5652291452601270166

/-! ## A244531.P8484101496135741156

`A244530(A152949(n+4))+A000035(2*n)`
-/

namespace A244531.P8484101496135741156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (A152949 (n + 4)).toNat + A000035 (2 * n)

end

end A244531.P8484101496135741156

/-! ## A244531.P15771958598961250012

`A244530(A152949(n+4))%A000108(n+2)`
-/

namespace A244531.P15771958598961250012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244530 (A152949 (n + 4)).toNat) (A000108 (n + 2))

end

end A244531.P15771958598961250012

/-! ## A244531.P13074615915046843623

`A244530(A152949(n+4))^A007318(C(2, n))`
-/

namespace A244531.P13074615915046843623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244530 (A152949 (n + 4)).toNat : ℚ) ^ (A007318 (Nat.choose 2 n) : ℤ)

end

end A244531.P13074615915046843623

/-! ## A244531.P9339568091795718695

`A244530(A152949(n+4))^A008683(gcd(n, n+1))`
-/

namespace A244531.P9339568091795718695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244530 (A152949 (n + 4)).toNat : ℚ) ^ (A008683 (Nat.gcd n (n + 1)) : ℤ)

end

end A244531.P9339568091795718695

/-! ## A244531.P14777599153160071791

`A001222(A063912(n+1))*A244530(A152949(n+4))`
-/

namespace A244531.P14777599153160071791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A063912 (n + 1)).toNat * A244530 (A152949 (n + 4)).toNat

end

end A244531.P14777599153160071791

/-! ## A244531.P3029908644472767828

`A244530(A167614(n+1))*A319101(A059268(n))`
-/

namespace A244531.P3029908644472767828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (A167614 (n + 1)).toNat * A319101 (A059268 n).toNat

end

end A244531.P3029908644472767828

/-! ## A244531.P4270919269551774304

`A244530(A167614(n+1))+A000035(A002378(n))`
-/

namespace A244531.P4270919269551774304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (A167614 (n + 1)).toNat + A000035 (A002378 n).toNat

end

end A244531.P4270919269551774304

/-!
# A244532: Number of ordered unlabeled rooted trees with n nodes such that the minimal outdegree of inner nodes equals 3.

The programs for A244532, there is no canonical definition to state claims against.
-/

/-! ## A244532.P3013475868276548703

`A114997(n+3)-A215341(n+3)`
-/

namespace A244532.P3013475868276548703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114997 (n + 3) - A215341 (n + 3)

end

end A244532.P3013475868276548703

/-! ## A244532.P9046787758865164992

`A244530(A052905(n)+9)`
-/

namespace A244532.P9046787758865164992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (A052905 n + 9).toNat

end

end A244532.P9046787758865164992

/-! ## A244532.P2702852415679596368

`A244530(A055999(n)+10)`
-/

namespace A244532.P2702852415679596368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (A055999 n + 10).toNat

end

end A244532.P2702852415679596368

/-! ## A244532.P15872794746123876714

`A244530(Δ[A006503(n)]+7)`
-/

namespace A244532.P15872794746123876714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (f1 (n + 1) - f1 n + 7).toNat

end

end A244532.P15872794746123876714

/-! ## A244532.P9888710890281726600

`A244530(A167614(n+2)+1)`
-/

namespace A244532.P9888710890281726600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (A167614 (n + 2) + 1).toNat

end

end A244532.P9888710890281726600

/-! ## A244532.P13544535206987917322

`A244530(A167499(n+2)-1)`
-/

namespace A244532.P13544535206987917322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (A167499 (n + 2) - 1).toNat

end

end A244532.P13544535206987917322

/-! ## A244532.P8246244885281514425

`A244530(A166136(n+2)-2)`
-/

namespace A244532.P8246244885281514425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (A166136 (n + 2) - 2).toNat

end

end A244532.P8246244885281514425

/-! ## A244532.P15954756988322537174

`A244530(A167487(n+2)-3)`
-/

namespace A244532.P15954756988322537174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (A167487 (n + 2) - 3).toNat

end

end A244532.P15954756988322537174

/-! ## A244532.P17705208737100239748

`A244530(A166136(n+1)+1+n)`
-/

namespace A244532.P17705208737100239748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A244532.P17705208737100239748

/-! ## A244532.P15633331050891891372

`A244530(A167499(n+1)+2+n)`
-/

namespace A244532.P15633331050891891372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (A167499 (n + 1) + 2 + (n : ℤ)).toNat

end

end A244532.P15633331050891891372

/-! ## A244532.P14995924822969373562

`A244530(Δ[A023545(n+1)-n²])`
-/

namespace A244532.P14995924822969373562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (f1 (n + 1) - f1 n).toNat

end

end A244532.P14995924822969373562

/-!
# A244533: Number of ordered unlabeled rooted trees with n nodes such that the minimal outdegree of inner nodes equals 4.

The programs for A244533, there is no canonical definition to state claims against.
-/

/-! ## A244533.P13604636665595750916

`A244530(A167499(n+3))`
-/

namespace A244533.P13604636665595750916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (A167499 (n + 3)).toNat

end

end A244533.P13604636665595750916

/-! ## A244533.P16022559548087567246

`A244530(A133263(n+4)+3)`
-/

namespace A244533.P16022559548087567246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (A133263 (n + 4) + 3).toNat

end

end A244533.P16022559548087567246

/-! ## A244533.P8214737485169470440

`A244530(A000096(n+3)+6)`
-/

namespace A244533.P8214737485169470440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (A000096 (n + 3) + 6).toNat

end

end A244533.P8214737485169470440

/-! ## A244533.P2241063876209268157

`A244530(A000217(n+4)+5)`
-/

namespace A244533.P2241063876209268157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (A000217 (n + 4) + 5).toNat

end

end A244533.P2241063876209268157

/-! ## A244533.P8485205274403213779

`A244530(A161680(n+5)+5)`
-/

namespace A244533.P8485205274403213779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (A161680 (n + 5) + 5).toNat

end

end A244533.P8485205274403213779

/-! ## A244533.P16732322343481151513

`A244530(A038722(Δ[A023545(n+1)]))`
-/

namespace A244533.P16732322343481151513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A244533.P16732322343481151513

/-!
# A244534: Number of ordered unlabeled rooted trees with n nodes such that the minimal outdegree of inner nodes equals 5.

The programs for A244534, there is no canonical definition to state claims against.
-/

/-! ## A244534.P15816033594527099320

`A244530(A166136(n+4))`
-/

namespace A244534.P15816033594527099320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (A166136 (n + 4)).toNat

end

end A244534.P15816033594527099320

/-! ## A244534.P13580776578101268732

`A244530(A167499(n+4)+1)`
-/

namespace A244534.P13580776578101268732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (A167499 (n + 4) + 1).toNat

end

end A244534.P13580776578101268732

/-! ## A244534.P14253324753654723772

`A244530(A167614(n+4)+3)`
-/

namespace A244534.P14253324753654723772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (A167614 (n + 4) + 3).toNat

end

end A244534.P14253324753654723772

/-! ## A244534.P13615961962790703905

`A244530(A000217(n+5)+6)`
-/

namespace A244534.P13615961962790703905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (A000217 (n + 5) + 6).toNat

end

end A244534.P13615961962790703905

/-! ## A244534.P9389874946153333264

`A244530(A161680(n+6)+6)`
-/

namespace A244534.P9389874946153333264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (A161680 (n + 6) + 6).toNat

end

end A244534.P9389874946153333264

/-! ## A244534.P14975462069423659480

`A244530(A055999(n+4)-A005408(n))`
-/

namespace A244534.P14975462069423659480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (A055999 (n + 4) - A005408 n).toNat

end

end A244534.P14975462069423659480

/-! ## A244534.P14633355255358592461

`A244530(A000124(n+8)-A016777(n+5))`
-/

namespace A244534.P14633355255358592461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (A000124 (n + 8) - A016777 (n + 5)).toNat

end

end A244534.P14633355255358592461

/-!
# A244535: Number of ordered unlabeled rooted trees with n nodes such that the minimal outdegree of inner nodes equals 6.

The programs for A244535, there is no canonical definition to state claims against.
-/

/-! ## A244535.P4648475534109273644

`A244530(A167487(n+5))`
-/

namespace A244535.P4648475534109273644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (A167487 (n + 5)).toNat

end

end A244535.P4648475534109273644

/-! ## A244535.P2931919920693709373

`A244530(A167499(n+5)+2)`
-/

namespace A244535.P2931919920693709373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (A167499 (n + 5) + 2).toNat

end

end A244535.P2931919920693709373

/-! ## A244535.P7893829662972713874

`A244530(A000217(n+6)+7)`
-/

namespace A244535.P7893829662972713874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (A000217 (n + 6) + 7).toNat

end

end A244535.P7893829662972713874

/-! ## A244535.P14343274148159583010

`A244530(A161680(n+7)+7)`
-/

namespace A244535.P14343274148159583010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (A161680 (n + 7) + 7).toNat

end

end A244535.P14343274148159583010

/-! ## A244535.P14425458120674205034

`A244530(A133263(n+7)-(n+2))`
-/

namespace A244535.P14425458120674205034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (A133263 (n + 7) - (n + 2 : ℤ)).toNat

end

end A244535.P14425458120674205034

/-! ## A244535.P7122880417543337049

`A244530(A005408(n+8)+A000124(n+4))`
-/

namespace A244535.P7122880417543337049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (A005408 (n + 8) + A000124 (n + 4)).toNat

end

end A244535.P7122880417543337049

/-!
# A244536: Number of ordered unlabeled rooted trees with n nodes such that the minimal outdegree of inner nodes equals 7.

The programs for A244536, there is no canonical definition to state claims against.
-/

/-! ## A244536.P16920643139473678637

`A244530(A167499(n+6)+3)`
-/

namespace A244536.P16920643139473678637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (A167499 (n + 6) + 3).toNat

end

end A244536.P16920643139473678637

/-! ## A244536.P7563483758290025325

`A244530(A000217(n+7)+8)`
-/

namespace A244536.P7563483758290025325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (A000217 (n + 7) + 8).toNat

end

end A244536.P7563483758290025325

/-! ## A244536.P17152369925720812857

`A244530(A161680(n+8)+8)`
-/

namespace A244536.P17152369925720812857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (A161680 (n + 8) + 8).toNat

end

end A244536.P17152369925720812857

/-! ## A244536.P13665920203402936598

`A244530(A133263(n+8)-(n+2))`
-/

namespace A244536.P13665920203402936598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (A133263 (n + 8) - (n + 2 : ℤ)).toNat

end

end A244536.P13665920203402936598

/-! ## A244536.P9823039684490184915

`A244530(A055999(n+6)-A005408(n+1))`
-/

namespace A244536.P9823039684490184915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (A055999 (n + 6) - A005408 (n + 1)).toNat

end

end A244536.P9823039684490184915

/-! ## A244536.P96316176739312863

`A244530(A016777(n+8)+A000124(n+4))`
-/

namespace A244536.P96316176739312863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (A016777 (n + 8) + A000124 (n + 4)).toNat

end

end A244536.P96316176739312863

/-!
# A244537: Number of ordered unlabeled rooted trees with n nodes such that the minimal outdegree of inner nodes equals 8.

The programs for A244537, there is no canonical definition to state claims against.
-/

/-! ## A244537.P17498487378972994024

`A244530(A133263(n+8)+7)`
-/

namespace A244537.P17498487378972994024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (A133263 (n + 8) + 7).toNat

end

end A244537.P17498487378972994024

/-! ## A244537.P4063343774138664165

`A244530(A000124(n+8)+8)`
-/

namespace A244537.P4063343774138664165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (A000124 (n + 8) + 8).toNat

end

end A244537.P4063343774138664165

/-! ## A244537.P1449780852582490756

`A244530(A000217(n+8)+9)`
-/

namespace A244537.P1449780852582490756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (A000217 (n + 8) + 9).toNat

end

end A244537.P1449780852582490756

/-! ## A244537.P18261958893186240719

`A244530(A161680(n+9)+9)`
-/

namespace A244537.P18261958893186240719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (A161680 (n + 9) + 9).toNat

end

end A244537.P18261958893186240719

/-! ## A244537.P13812431814187702049

`A244530(eq[10, A131818(n+1)])`
-/

namespace A244537.P13812431814187702049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244537.P13812431814187702049

/-!
# A244538: Number of ordered unlabeled rooted trees with n nodes such that the minimal outdegree of inner nodes equals 9.

The programs for A244538, there is no canonical definition to state claims against.
-/

/-! ## A244538.P1575240551004851692

`A244530(A133263(n+9)+8)`
-/

namespace A244538.P1575240551004851692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (A133263 (n + 9) + 8).toNat

end

end A244538.P1575240551004851692

/-! ## A244538.P14942970107125423421

`A244530(A000217(n+9)+10)`
-/

namespace A244538.P14942970107125423421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (A000217 (n + 9) + 10).toNat

end

end A244538.P14942970107125423421

/-! ## A244538.P11913228034287776978

`A244530(A161680(n+10)+10)`
-/

namespace A244538.P11913228034287776978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (A161680 (n + 10) + 10).toNat

end

end A244538.P11913228034287776978

/-! ## A244538.P9069102248409375456

`A244530(A000124(n+10)-(n+1))`
-/

namespace A244538.P9069102248409375456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (A000124 (n + 10) - (n + 1 : ℤ)).toNat

end

end A244538.P9069102248409375456

/-! ## A244538.P2084941759419452215

`A244530(A055999(n+8)-A005408(n+2))`
-/

namespace A244538.P2084941759419452215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (A055999 (n + 8) - A005408 (n + 2)).toNat

end

end A244538.P2084941759419452215

/-!
# A244539: Number of ordered unlabeled rooted trees with n nodes such that the minimal outdegree of inner nodes equals 10.

The programs for A244539, there is no canonical definition to state claims against.
-/

/-! ## A244539.P9842452357818195772

`A244530(A161680(n+11)+11)`
-/

namespace A244539.P9842452357818195772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (A161680 (n + 11) + 11).toNat

end

end A244539.P9842452357818195772

/-!
# A244540: Expansion of phi(q) * (phi(q) + phi(q^2)) / 2 in powers of q where phi() is a Ramanujan theta function.

The programs for A244540, there is no canonical definition to state claims against.
-/

/-! ## A244540.P15870995129152826925

`(A004018(n)+A033715(n))/2`
-/

namespace A244540.P15870995129152826925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004018 n + A033715 n : ℚ) / 2

end

end A244540.P15870995129152826925

/-! ## A244540.P4637578980909109406

`A244543(2*n)`
-/

namespace A244540.P4637578980909109406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244543 (2 * n)

end

end A244540.P4637578980909109406

/-! ## A244540.P18116803076289155887

`A025480(A033715(n)+A033999(n)*A104794(n))`
-/

namespace A244540.P18116803076289155887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A033715 n + A033999 n * A104794 n).toNat

end

end A244540.P18116803076289155887

/-! ## A244540.P15083089545831972805

`A110654(A033715(n)+A033999(n)*A104794(n))`
-/

namespace A244540.P15083089545831972805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A033715 n + A033999 n * A104794 n).toNat

end

end A244540.P15083089545831972805

/-! ## A244540.P16816266464586591779

`A025480(A033715(n)+A057079(n)*A256014(n))`
-/

namespace A244540.P16816266464586591779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A033715 n + A057079 n * A256014 n).toNat

end

end A244540.P16816266464586591779

/-! ## A244540.P13991482230764422704

`A244544(2*n)`
-/

namespace A244540.P13991482230764422704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244544 (2 * n)

end

end A244540.P13991482230764422704

/-! ## A244540.P4145190911179972058

`A244544(n+n)%A069280(n+1)`
-/

namespace A244540.P4145190911179972058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244544 (n + n)) (A069280 (n + 1))

end

end A244540.P4145190911179972058

/-! ## A244540.P17957063995696864706

`A025480(A033715(n)+A104794(2*n))`
-/

namespace A244540.P17957063995696864706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A033715 n + A104794 (2 * n)).toNat

end

end A244540.P17957063995696864706

/-! ## A244540.P5273997959469843410

`A110654(A033715(n)+A104794(2*n))`
-/

namespace A244540.P5273997959469843410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A033715 n + A104794 (2 * n)).toNat

end

end A244540.P5273997959469843410

/-! ## A244540.P2081847484071144615

`A244544(n+n)^A262079(A244544(n)+1)`
-/

namespace A244540.P2081847484071144615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244544 (n + n) : ℚ) ^ (A262079 (A244544 n + 1).toNat : ℤ)

end

end A244540.P2081847484071144615

/-!
# A244541: Numbers n such that n +/ - the product of digits of n are both palindromes.

The programs for A244541, there is no canonical definition to state claims against.
-/

/-! ## A244541.P6627878856046632557

`∩[A229546(n+1), A229547(n+2)]`
-/

namespace A244541.P6627878856046632557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229547 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244541.P6627878856046632557

/-! ## A244541.P1066734439700812060

`∪[A244542(n+1), A244547(n+1)]`
-/

namespace A244541.P1066734439700812060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A244541.P1066734439700812060

/-!
# A244542: Palindromes n such that n +/ - the product of digits of n are both palindromes.

The programs for A244542, there is no canonical definition to state claims against.
-/

/-! ## A244542.P8008911498935219422

`record[A055483(A244541(n+1))]`
-/

namespace A244542.P8008911498935219422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055483 (A244541 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244542.P8008911498935219422

/-! ## A244542.P6901836184146694428

`∩[A085429(n), A244541(n+1)]`
-/

namespace A244542.P6901836184146694428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085429 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244542.P6901836184146694428

/-! ## A244542.P4157314645858815506

`∩[A002113(n+1), A244541(n+1)]`
-/

namespace A244542.P4157314645858815506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244542.P4157314645858815506

/-! ## A244542.P14832046045899014738

`∩[A061379(n+1), A244541(n+1)]`
-/

namespace A244542.P14832046045899014738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244542.P14832046045899014738

/-! ## A244542.P17341293561952768825

`∩[A061917(n+1), A244541(n+1)]`
-/

namespace A244542.P17341293561952768825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244542.P17341293561952768825

/-!
# A244543: Expansion of phi(q^2) * (phi(q) + phi(q^2)) / 2 in powers of q where phi() is a Ramanujan theta function.

The programs for A244543, there is no canonical definition to state claims against.
-/

/-! ## A244543.P4828183624541118402

`2*A244544(n)-A244540(n)`
-/

namespace A244543.P4828183624541118402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A244544 n - A244540 n

end

end A244543.P4828183624541118402

/-! ## A244543.P8791430080572978508

`A005843(A244544(n))-A244540(n)`
-/

namespace A244543.P8791430080572978508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A244544 n).toNat - A244540 n

end

end A244543.P8791430080572978508

/-! ## A244543.P5271784499188832707

`A244540(n)-A000035(n)*A004531(n)`
-/

namespace A244543.P5271784499188832707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244540 n - A000035 n * A004531 n

end

end A244543.P5271784499188832707

/-! ## A244543.P11689209313204693198

`2*A244544(n)-A244544(2*n)`
-/

namespace A244543.P11689209313204693198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A244544 n - A244544 (2 * n)

end

end A244543.P11689209313204693198

/-! ## A244543.P14865637790058269698

`A005843(A244544(n))-A244544(2*n)`
-/

namespace A244543.P14865637790058269698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A244544 n).toNat - A244544 (2 * n)

end

end A244543.P14865637790058269698

/-!
# A244544: Expansion of (phi(q) + phi(q^2))^2 / 4 in powers of q where phi() is a Ramanujan theta function.

The programs for A244544, there is no canonical definition to state claims against.
-/

/-! ## A244544.P6962976497760608011

`(A244543(n)+A244540(n))/2`
-/

namespace A244544.P6962976497760608011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244543 n + A244540 n : ℚ) / 2

end

end A244544.P6962976497760608011

/-! ## A244544.P16337203321543650733

`A004525(A244543(n)+A244540(n))`
-/

namespace A244544.P16337203321543650733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A244543 n + A244540 n).toNat

end

end A244544.P16337203321543650733

/-! ## A244544.P11892699753036715065

`A004526(A244543(n)+A244540(n))`
-/

namespace A244544.P11892699753036715065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A244543 n + A244540 n).toNat

end

end A244544.P11892699753036715065

/-! ## A244544.P13460413882839693545

`A110654(A244543(n)+A244540(n))`
-/

namespace A244544.P13460413882839693545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A244543 n + A244540 n).toNat

end

end A244544.P13460413882839693545

/-! ## A244544.P3910052645116347098

`A028242(A244540(n)+A244543(n)+1)`
-/

namespace A244544.P3910052645116347098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A244540 n + (A244543 n + 1)).toNat

end

end A244544.P3910052645116347098

/-! ## A244544.P15045745831524192318

`A244540(n)-A004526(A244540(n)-A244543(n))`
-/

namespace A244544.P15045745831524192318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244540 n - A004526 (A244540 n - A244543 n).toNat

end

end A244544.P15045745831524192318

/-! ## A244544.P5088597069055307821

`(A244543(A109043(n))+A244543(n))/2`
-/

namespace A244544.P5088597069055307821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244543 (A109043 n).toNat + A244543 n : ℚ) / 2

end

end A244544.P5088597069055307821

/-! ## A244544.P10625790783590110699

`A004525(A244543(2*n)+A244543(n))`
-/

namespace A244544.P10625790783590110699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A244543 (2 * n) + A244543 n).toNat

end

end A244544.P10625790783590110699

/-! ## A244544.P3062689401769787074

`A004526(A244543(2*n)+A244543(n))`
-/

namespace A244544.P3062689401769787074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A244543 (2 * n) + A244543 n).toNat

end

end A244544.P3062689401769787074

/-! ## A244544.P8559670729139926710

`A078898(A244543(2*n)+A244543(n))`
-/

namespace A244544.P8559670729139926710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A244543 (2 * n) + A244543 n).toNat

end

end A244544.P8559670729139926710

/-! ## A244544.P10170984036800722899

`A110654(A244543(2*n)+A244543(n))`
-/

namespace A244544.P10170984036800722899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A244543 (2 * n) + A244543 n).toNat

end

end A244544.P10170984036800722899

/-!
# A244547: Numbers k with nonzero digits such that k +/ - the product of digits of k are both palindromes.

The programs for A244547, there is no canonical definition to state claims against.
-/

/-! ## A244547.P5385234495669069433

`filter[A244541(n+1), A209929(#)]`
-/

namespace A244547.P5385234495669069433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209929 (f1 j).toNat = 1) n)

end

end A244547.P5385234495669069433

/-! ## A244547.P12303796756642475416

`∩[A214678(n+1), A244541(n+1)]`
-/

namespace A244547.P12303796756642475416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244547.P12303796756642475416

/-! ## A244547.P4712897504386056628

`filter[A244541(n+1), A168046(#)]`
-/

namespace A244547.P4712897504386056628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A244547.P4712897504386056628

/-! ## A244547.P405448450522776136

`∩[A062998(n+1), A244541(n+1)]`
-/

namespace A244547.P405448450522776136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244547.P405448450522776136

/-!
# A244548: Palindromes n with nonzero digits such that n +/ - the product of digits of n are both palindromes.

The programs for A244548, there is no canonical definition to state claims against.
-/

/-! ## A244548.P7537575172744444737

`∩[A114341(n+1), A229761(n+1)]`
-/

namespace A244548.P7537575172744444737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244548.P7537575172744444737

/-! ## A244548.P4925810991351374005

`∩[A056525(n+1), A244547(n+1)]`
-/

namespace A244548.P4925810991351374005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244548.P4925810991351374005

/-! ## A244548.P9470555604455295327

`∩[A114341(n+1), A244547(n+1)]`
-/

namespace A244548.P9470555604455295327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244548.P9470555604455295327

/-! ## A244548.P2971919393183185010

`∩[A229761(n+1), A244547(n+1)]`
-/

namespace A244548.P2971919393183185010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244548.P2971919393183185010

/-! ## A244548.P12844006150391527669

`record[A055483(A244547(n+1))]`
-/

namespace A244548.P12844006150391527669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055483 (A244547 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244548.P12844006150391527669

/-!
# A244551: Numbers k such that k +- (sum of digits of k) are both palindromes.

The programs for A244551, there is no canonical definition to state claims against.
-/

/-! ## A244551.P17487214645618341077

`∩[A229545(n+1), A229621(n+2)]`
-/

namespace A244551.P17487214645618341077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229621 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244551.P17487214645618341077

/-! ## A244551.P8400389247855962237

`record[A123108(A341903(n+1))]`
-/

namespace A244551.P8400389247855962237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A341903 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244551.P8400389247855962237

/-! ## A244551.P8722988902094194416

`A324293(∑[record[A071015(n+1)]])`
-/

namespace A244551.P8722988902094194416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071015 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324293 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A244551.P8722988902094194416

/-!
# A244552: Palindromes j such that j +- the sum of digits of j are both palindromes.

The programs for A244552, there is no canonical definition to state claims against.
-/

/-! ## A244552.P5843335186885489955

`record[A055483(A244551(n+1))]`
-/

namespace A244552.P5843335186885489955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055483 (A244551 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244552.P5843335186885489955

/-! ## A244552.P17395238925217125973

`filter[A244551(n+1), A136522(#)]`
-/

namespace A244552.P17395238925217125973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A244552.P17395238925217125973

/-! ## A244552.P12944256712774167442

`∩[A056142(n), A244551(n+1)]`
-/

namespace A244552.P12944256712774167442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244552.P12944256712774167442

/-! ## A244552.P14336005092683118385

`∩[A002113(n+1), A244551(n+1)]`
-/

namespace A244552.P14336005092683118385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244552.P14336005092683118385

/-! ## A244552.P17244668610453316405

`∩[A050783(n+1), A244551(n+1)]`
-/

namespace A244552.P17244668610453316405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244552.P17244668610453316405

/-!
# A244553: Expansion of phi(q^2) * (phi(q) - phi(q^2)) / 2 in powers of q where phi() is a Ramanujan theta function.

The programs for A244553, the canonical program `A244553.P6482115881436918326` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244553 has offset 1).

The definition of A244553 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244553.P1907606539928936945

`A033715(n+1)-A244543(n+1)`
-/

namespace A244553.P1907606539928936945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 (n + 1) - A244543 (n + 1)

end

end A244553.P1907606539928936945

namespace A244553

/-- `A033715(n+1)-A244543(n+1)` -/
def P1907606539928936945.Spec : Prop :=
  ∀ n, P1907606539928936945.a n = A244553 (n + 1)

end A244553

/-! ## A244553.P5965298889445785474

`2*A002325(n+1)-A244543(n+1)`
-/

namespace A244553.P5965298889445785474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002325 (n + 1) - A244543 (n + 1)

end

end A244553.P5965298889445785474

namespace A244553

/-- `2*A002325(n+1)-A244543(n+1)` -/
def P5965298889445785474.Spec : Prop :=
  ∀ n, P5965298889445785474.a n = A244553 (n + 1)

end A244553

/-! ## A244553.P18254048418916467933

`A244540(n+1)-(A244554(n+1)+A244543(n+1))`
-/

namespace A244553.P18254048418916467933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244540 (n + 1) - (A244554 (n + 1) + A244543 (n + 1))

end

end A244553.P18254048418916467933

namespace A244553

/-- `A244540(n+1)-(A244554(n+1)+A244543(n+1))` -/
def P18254048418916467933.Spec : Prop :=
  ∀ n, P18254048418916467933.a n = A244553 (n + 1)

end A244553

/-! ## A244553.P6482115881436918326

`A134015(2*(n+1))+A002325(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A244553

/-- `A134015(2*(n+1))+A002325(n+1)` -/
def P6482115881436918326.Spec : Prop :=
  ∀ n, P6482115881436918326.a n = A244553 (n + 1)

theorem P6482115881436918326.correct : P6482115881436918326.Spec := by
  intro n
  simp only [A244553, Nat.add_sub_cancel]

end A244553

/-! ## A244553.P6826761569957323630

`A134013(2*(n+1))-A244554(n+1)`
-/

namespace A244553.P6826761569957323630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134013 (2 * (n + 1)) - A244554 (n + 1)

end

end A244553.P6826761569957323630

namespace A244553

/-- `A134013(2*(n+1))-A244554(n+1)` -/
def P6826761569957323630.Spec : Prop :=
  ∀ n, P6826761569957323630.a n = A244553 (n + 1)

end A244553

/-!
# A244554: Expansion of phi(q) * (phi(q) - phi(q^2)) / 2 in powers of q where phi() is a Ramanujan theta function.

The programs for A244554, the canonical program `A244554.P4002939539755767008` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244554 has offset 1).

The definition of A244554 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A243747, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A244554.P6771851543099050307

`(A004018(n+1)-A033715(n+1))/2`
-/

namespace A244554.P6771851543099050307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004018 (n + 1) - A033715 (n + 1) : ℚ) / 2

end

end A244554.P6771851543099050307

namespace A244554

/-- `(A004018(n+1)-A033715(n+1))/2` -/
def P6771851543099050307.Spec : Prop :=
  ∀ n, P6771851543099050307.a n = (A244554 (n + 1) : ℚ)

end A244554

/-! ## A244554.P4002939539755767008

`A243747(2*(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A244554

/-- `A243747(2*(n+1))` -/
def P4002939539755767008.Spec : Prop :=
  ∀ n, P4002939539755767008.a n = A244554 (n + 1)

theorem P4002939539755767008.correct : P4002939539755767008.Spec := by
  intro n
  simp only [A244554, Nat.add_sub_cancel]

end A244554

/-! ## A244554.P14103750231695114485

`A105673(n+1)-A002325(n+1)`
-/

namespace A244554.P14103750231695114485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105673 (n + 1) - A002325 (n + 1)

end

end A244554.P14103750231695114485

namespace A244554

/-- `A105673(n+1)-A002325(n+1)` -/
def P14103750231695114485.Spec : Prop :=
  ∀ n, P14103750231695114485.a n = A244554 (n + 1)

end A244554

/-! ## A244554.P8611369111796535628

`2*A002654(n+1)-A002325(n+1)`
-/

namespace A244554.P8611369111796535628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002654 (n + 1) - A002325 (n + 1)

end

end A244554.P8611369111796535628

namespace A244554

/-- `2*A002654(n+1)-A002325(n+1)` -/
def P8611369111796535628.Spec : Prop :=
  ∀ n, P8611369111796535628.a n = A244554 (n + 1)

end A244554

/-! ## A244554.P18438077363345228897

`A004018(n+1)-A244540(n+1)`
-/

namespace A244554.P18438077363345228897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (n + 1) - A244540 (n + 1)

end

end A244554.P18438077363345228897

namespace A244554

/-- `A004018(n+1)-A244540(n+1)` -/
def P18438077363345228897.Spec : Prop :=
  ∀ n, P18438077363345228897.a n = A244554 (n + 1)

end A244554

/-! ## A244554.P6733393858106671090

`A244540(n+1)-A033715(n+1)`
-/

namespace A244554.P6733393858106671090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244540 (n + 1) - A033715 (n + 1)

end

end A244554.P6733393858106671090

namespace A244554

/-- `A244540(n+1)-A033715(n+1)` -/
def P6733393858106671090.Spec : Prop :=
  ∀ n, P6733393858106671090.a n = A244554 (n + 1)

end A244554

/-! ## A244554.P8712025995669721818

`A244540(n+1)-A002325(n+1)-A002325(n+1)`
-/

namespace A244554.P8712025995669721818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244540 (n + 1) - A002325 (n + 1) - A002325 (n + 1)

end

end A244554.P8712025995669721818

namespace A244554

/-- `A244540(n+1)-A002325(n+1)-A002325(n+1)` -/
def P8712025995669721818.Spec : Prop :=
  ∀ n, P8712025995669721818.a n = A244554 (n + 1)

end A244554

/-! ## A244554.P8939177169656439826

`-A244553(2*(n+1))`
-/

namespace A244554.P8939177169656439826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A244553 (2 * (n + 1))

end

end A244554.P8939177169656439826

namespace A244554

/-- `-A244553(2*(n+1))` -/
def P8939177169656439826.Spec : Prop :=
  ∀ n, P8939177169656439826.a n = A244554 (n + 1)

end A244554

/-! ## A244554.P3201562318937229574

`A244553(2*n+2)-2*A244553(2*n+2)`
-/

namespace A244554.P3201562318937229574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244553 (2 * n + 2) - 2 * A244553 (2 * n + 2)

end

end A244554.P3201562318937229574

namespace A244554

/-- `A244553(2*n+2)-2*A244553(2*n+2)` -/
def P3201562318937229574.Spec : Prop :=
  ∀ n, P3201562318937229574.a n = A244554 (n + 1)

end A244554

/-! ## A244554.P6966699198861276135

`A035184(A259445(2*(n+1)))-A002325(n+1)`
-/

namespace A244554.P6966699198861276135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035184 (A259445 (2 * (n + 1))).toNat - A002325 (n + 1)

end

end A244554.P6966699198861276135

namespace A244554

/-- `A035184(A259445(2*(n+1)))-A002325(n+1)` -/
def P6966699198861276135.Spec : Prop :=
  ∀ n, P6966699198861276135.a n = A244554 (n + 1)

end A244554

/-! ## A244554.P6738816594915489768

`A244543(2*(n+1))-A033715(n+1)`
-/

namespace A244554.P6738816594915489768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244543 (2 * (n + 1)) - A033715 (n + 1)

end

end A244554.P6738816594915489768

namespace A244554

/-- `A244543(2*(n+1))-A033715(n+1)` -/
def P6738816594915489768.Spec : Prop :=
  ∀ n, P6738816594915489768.a n = A244554 (n + 1)

end A244554

/-!
# A244555: Primes which remain prime when the last digit is replaced by its square.

The programs for A244555, there is no canonical definition to state claims against.
-/

/-! ## A244555.P15736513005280511596

`A078133(A077168(n)+4)`
-/

namespace A244555.P15736513005280511596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078133 (A077168 n + 4).toNat

end

end A244555.P15736513005280511596

/-! ## A244555.P13381849109754494880

`A078133(A060695(n+1)+4)`
-/

namespace A244555.P13381849109754494880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078133 (A060695 (n + 1) + 4).toNat

end

end A244555.P13381849109754494880

/-! ## A244555.P7710079691625735050

`A216227(comp[A216227(n+2)]+2)`
-/

namespace A244555.P7710079691625735050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216227 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216227 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2)

end

end A244555.P7710079691625735050

/-! ## A244555.P8669395656323447989

`A216227(record[A303378(3*n+2)])`
-/

namespace A244555.P8669395656323447989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303378 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216227 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A244555.P8669395656323447989

/-! ## A244555.P4337104974960164484

`∩[A020603(n+1), A172284(n+1)]`
-/

namespace A244555.P4337104974960164484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244555.P4337104974960164484

/-!
# A244556: Primes p that do not remain prime if their last digit is replaced by its square.

The programs for A244556, there is no canonical definition to state claims against.
-/

/-! ## A244556.P6630031046153417722

`p?[eq[A143240(3*n), A143242(3*n+1)]]`
-/

namespace A244556.P6630031046153417722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143240 (3 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143242 (3 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A244556.P6630031046153417722

/-!
# A244557: Numbers obtained by concatenating the squares of the digits of prime(n).

The programs for A244557, there is no canonical definition to state claims against.
-/

/-! ## A244557.P8370746572969131804

`A048385(A000040(n+1))`
-/

namespace A244557.P8370746572969131804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 (A000040 (n + 1)).toNat

end

end A244557.P8370746572969131804

/-! ## A244557.P17653343187109419116

`A048385(A008578(n+2))`
-/

namespace A244557.P17653343187109419116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 (A008578 (n + 2)).toNat

end

end A244557.P17653343187109419116

/-! ## A244557.P15319440722000279736

`A048385(A182986(n+2))`
-/

namespace A244557.P15319440722000279736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 (A182986 (n + 2)).toNat

end

end A244557.P15319440722000279736

/-! ## A244557.P12093768110235783108

`A048385(eq[2, A077462(n)])`
-/

namespace A244557.P12093768110235783108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244557.P12093768110235783108

/-! ## A244557.P975251310209366435

`A048385(eq[2, A256750(n)])`
-/

namespace A244557.P975251310209366435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244557.P975251310209366435

/-! ## A244557.P9458707098655710014

`A048385(record[A006530(n+2)])`
-/

namespace A244557.P9458707098655710014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A244557.P9458707098655710014

/-! ## A244557.P4243850136657448265

`A048385(record[A014963(n+2)])`
-/

namespace A244557.P4243850136657448265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A244557.P4243850136657448265

/-! ## A244557.P7724960560080942033

`A048385(record[A020639(n+2)])`
-/

namespace A244557.P7724960560080942033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A244557.P7724960560080942033

/-! ## A244557.P7960613490570035298

`A048385(eq[0, A107393(n)+1])`
-/

namespace A244557.P7960613490570035298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244557.P7960613490570035298

/-! ## A244557.P4902983545165959693

`A048385(eq[2, 1-A107393(n)])`
-/

namespace A244557.P4902983545165959693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A107393 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244557.P4902983545165959693

/-! ## A244557.P7903147939759736876

`A048385(eq[2, A000005(n+1)]+1)`
-/

namespace A244557.P7903147939759736876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A244557.P7903147939759736876

/-!
# A244558: Numbers obtained by concatenating the squares of the digits of Fibonacci(n).

The programs for A244558, there is no canonical definition to state claims against.
-/

/-! ## A244558.P7500839451361512988

`A048385(A000045(n+1))`
-/

namespace A244558.P7500839451361512988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 (A000045 (n + 1)).toNat

end

end A244558.P7500839451361512988

/-! ## A244558.P9040869533903620066

`A048385(Δ[round(ϕ*a(n-1))])` with `a(0)=1`
-/

namespace A244558.P9040869533903620066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 (f1 (n + 1) - f1 n).toNat

end

end A244558.P9040869533903620066

/-! ## A244558.P11252590770850214632

`A048385(∑[round(ϕ*a(n-1))])` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A244558.P11252590770850214632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A244558.P11252590770850214632

/-! ## A244558.P7670160812596578766

`A048385(Δ[a(n-1)+a(n-2)])` with `a(0)=1, a(1)=2`
-/

namespace A244558.P7670160812596578766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A244558.P7670160812596578766

/-!
# A244559: Numbers obtained by concatenating the squares of the digits of n!.

The programs for A244559, there is no canonical definition to state claims against.
-/

/-! ## A244559.P16331834337536549257

`A048385(A000142(n+1))`
-/

namespace A244559.P16331834337536549257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 (A000142 (n + 1)).toNat

end

end A244559.P16331834337536549257

/-! ## A244559.P2797333803937193888

`A048385((n+1)!)`
-/

namespace A244559.P2797333803937193888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 (Nat.factorial (n + 1))

end

end A244559.P2797333803937193888

/-! ## A244559.P1099354797212214022

`A048385(∏[n+1])`
-/

namespace A244559.P1099354797212214022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A244559.P1099354797212214022

/-!
# A244560: Expansion of f(-x^1, -x^7)^2 in powers of x where f() is Ramanujan's two-variable theta function.

The programs for A244560, there is no canonical definition to state claims against.
-/

/-! ## A244560.P1630382384106322749

`A244526(n+1)-A226192(n+1)`
-/

namespace A244560.P1630382384106322749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244526 (n + 1) - A226192 (n + 1)

end

end A244560.P1630382384106322749

/-! ## A244560.P18187189172909237395

`A244526(9*n+10)`
-/

namespace A244560.P18187189172909237395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244526 (9 * n + 10)

end

end A244560.P18187189172909237395

/-! ## A244560.P9347202442754699559

`A143377(A197421(n+2)%A143360(n+1))`
-/

namespace A244560.P9347202442754699559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143377 (Int.tmod (A197421 (n + 2)) (A143360 (n + 1))).toNat

end

end A244560.P9347202442754699559

/-!
# A244561: Odd integers m such that for every integer k > 0, m*2^k+1 has a divisor in the set {3, 5, 7, 13, 17, 241}.

The programs for A244561, there is no canonical definition to state claims against.
-/

/-! ## A244561.P15870867663628530304

`A076336(lt[A361856(3*(n+1)), A233312(2*(n+2))])`
-/

namespace A244561.P15870867663628530304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361856 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233312 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076336 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A244561.P15870867663628530304

/-!
# A244567: Triangle T(n,k) in which the n-th row lists in increasing order all values s such that n is in the trajectory of the 'Reverse and Add!' sequence starting with s; triangle T(n,k), n>=0, 1<=k<=A244569(n), read by rows.

The programs for A244567, there is no canonical definition to state claims against.
-/

/-! ## A244567.P6509506516935672983

`A254112(A233583(n+1))%A000027(A000079(n))`
-/

namespace A244567.P6509506516935672983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254112 (A233583 (n + 1)).toNat) (A000027 (A000079 n).toNat)

end

end A244567.P6509506516935672983

/-! ## A244567.P3219132130007975323

`A254112(A028310(n))%A336906(n)`
-/

namespace A244567.P3219132130007975323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254112 (A028310 n).toNat) (A336906 n)

end

end A244567.P3219132130007975323

/-! ## A244567.P17455477143722165029

`A254112(A233583(n+1))%A336906(n)`
-/

namespace A244567.P17455477143722165029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254112 (A233583 (n + 1)).toNat) (A336906 n)

end

end A244567.P17455477143722165029

/-! ## A244567.P17572434021015091245

`A001221(A077957(2*n))*A254112(A028310(n))`
-/

namespace A244567.P17572434021015091245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A077957 (2 * n)).toNat * A254112 (A028310 n).toNat

end

end A244567.P17572434021015091245

/-! ## A244567.P3904152030742591446

`A175469(n+4)%A005117(A289574(n))`
-/

namespace A244567.P3904152030742591446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175469 (n + 4)) (A005117 (A289574 n).toNat)

end

end A244567.P3904152030742591446

/-!
# A244568: Smallest value s such that n is in the trajectory of the 'Reverse and Add!' sequence starting with s.

The programs for A244568, there is no canonical definition to state claims against.
-/

/-! ## A244568.P10937913000380851145

`A244567(∑[A244569(n)]-A244569(n))`
-/

namespace A244568.P10937913000380851145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244567 (∑ j ∈ Finset.range (n + 1), f1 j - A244569 n).toNat

end

end A244568.P10937913000380851145

/-! ## A244568.P16083207324498569639

`(lcm(32, n)/32)%Δ[A178556(n+1)]`
-/

namespace A244568.P16083207324498569639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178556 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((Nat.lcm 32 n : ℚ) / 32)) (f1 (n + 1) - f1 n)

end

end A244568.P16083207324498569639

/-! ## A244568.P10792068424037619800

`A106617(n)%Δ[A178556(n+1)]`
-/

namespace A244568.P10792068424037619800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178556 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106617 n) (f1 (n + 1) - f1 n)

end

end A244568.P10792068424037619800

/-! ## A244568.P17024831927692492513

`A227140(n)%Δ[A178556(n+1)]`
-/

namespace A244568.P17024831927692492513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178556 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227140 n) (f1 (n + 1) - f1 n)

end

end A244568.P17024831927692492513

/-! ## A244568.P4638392612523591148

`A030101(A030101(n)%A096900(3*(n+1)))`
-/

namespace A244568.P4638392612523591148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (Int.tmod (A030101 n) (A096900 (3 * (n + 1)))).toNat

end

end A244568.P4638392612523591148

/-!
# A244569: Number of values s such that n is in the trajectory of the 'Reverse and Add!' sequence starting with s.

The programs for A244569, there is no canonical definition to state claims against.
-/

/-! ## A244569.P15253294066634956462

`A298972(n)+1`
-/

namespace A244569.P15253294066634956462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298972 n + 1

end

end A244569.P15253294066634956462

/-! ## A244569.P2319722489234583378

`A005496(A298972(n))`
-/

namespace A244569.P2319722489234583378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A298972 n).toNat

end

end A244569.P2319722489234583378

/-! ## A244569.P11969744387746048634

`A008619(2*A298972(n))`
-/

namespace A244569.P11969744387746048634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A298972 n).toNat

end

end A244569.P11969744387746048634

/-! ## A244569.P17957593997989870935

`A328399(2*A298972(n))`
-/

namespace A244569.P17957593997989870935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (2 * A298972 n).toNat

end

end A244569.P17957593997989870935

/-! ## A244569.P1859119715026301901

`A008621(4*A298972(n))`
-/

namespace A244569.P1859119715026301901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (4 * A298972 n).toNat

end

end A244569.P1859119715026301901

/-! ## A244569.P1645432441970824919

`A000005(2^A298972(n))`
-/

namespace A244569.P1645432441970824919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A298972 n : ℤ))).toNat

end

end A244569.P1645432441970824919

/-! ## A244569.P7340243896203978171

`A001511(2^A298972(n))`
-/

namespace A244569.P7340243896203978171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A298972 n : ℤ))).toNat

end

end A244569.P7340243896203978171

/-! ## A244569.P17838068486031995382

`1-A001057(2*A298972(n))`
-/

namespace A244569.P17838068486031995382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001057 (2 * A298972 n).toNat

end

end A244569.P17838068486031995382

/-! ## A244569.P726551905848417072

`A001222(2*2^A298972(n))`
-/

namespace A244569.P726551905848417072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (2 * (2 : ℚ) ^ (A298972 n : ℤ))).toNat

end

end A244569.P726551905848417072

/-! ## A244569.P9147019330656857450

`A001057(or(1, 2*A298972(n)))`
-/

namespace A244569.P9147019330656857450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (Int.lor 1 (2 * A298972 n)).toNat

end

end A244569.P9147019330656857450

/-!
# A244570: Smallest prime p >= prime(n) such that p*prime(n)+2 is prime.

The programs for A244570, there is no canonical definition to state claims against.
-/

/-! ## A244570.P4529748651116299527

`A065091(A243158(n+2)+1+n)`
-/

namespace A244570.P4529748651116299527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A243158 (n + 2) + 1 + (n : ℤ)).toNat

end

end A244570.P4529748651116299527

/-! ## A244570.P10558109036018337102

`A000040(A243158(n+2)+2+n)`
-/

namespace A244570.P10558109036018337102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A243158 (n + 2) + 2 + (n : ℤ)).toNat

end

end A244570.P10558109036018337102

/-! ## A244570.P10247677150700155291

`A008578(A243158(n+2)+n+3)`
-/

namespace A244570.P10247677150700155291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A243158 (n + 2) + (n + 3 : ℤ)).toNat

end

end A244570.P10247677150700155291

/-!
# A244571: Smallest prime p >= prime(n) such that p*prime(n)-2 is prime.

The programs for A244571, there is no canonical definition to state claims against.
-/

/-! ## A244571.P15549656011751365898

`A065091(A243154(n+2)+n+1)`
-/

namespace A244571.P15549656011751365898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A243154 (n + 2) + (n + 1 : ℤ)).toNat

end

end A244571.P15549656011751365898

/-! ## A244571.P7430034853534901566

`A000040(A243154(n+2)+n+2)`
-/

namespace A244571.P7430034853534901566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A243154 (n + 2) + (n + 2 : ℤ)).toNat

end

end A244571.P7430034853534901566

/-! ## A244571.P10646971649983168263

`A014673(A242489(n+2)-1)`
-/

namespace A244571.P10646971649983168263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A242489 (n + 2) - 1).toNat

end

end A244571.P10646971649983168263

/-! ## A244571.P16105584144060250751

`A032742(A242489(n+2)-1)`
-/

namespace A244571.P16105584144060250751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A242489 (n + 2) - 1).toNat

end

end A244571.P16105584144060250751

/-! ## A244571.P16630607504229270325

`A033677(A242489(n+2)-1)`
-/

namespace A244571.P16630607504229270325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A242489 (n + 2) - 1).toNat

end

end A244571.P16630607504229270325

/-!
# A244572: a(n) = max(A244570(n), A244571(n)).

The programs for A244572, there is no canonical definition to state claims against.
-/

/-! ## A244572.P1184735427013616120

`A006530(A244570(n+2)*A244571(n+2))`
-/

namespace A244572.P1184735427013616120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A244570 (n + 2) * A244571 (n + 2)).toNat

end

end A244572.P1184735427013616120

/-! ## A244572.P4366574940031503931

`A006530(lcm(A244570(n+2), A244571(n+2)))`
-/

namespace A244572.P4366574940031503931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm (A244570 (n + 2)) (A244571 (n + 2)))

end

end A244572.P4366574940031503931

/-! ## A244572.P6444478782161548259

`A014673(A244570(n+2)*A244571(n+2))`
-/

namespace A244572.P6444478782161548259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A244570 (n + 2) * A244571 (n + 2)).toNat

end

end A244572.P6444478782161548259

/-! ## A244572.P67048402192866841

`A032742(A244570(n+2)*A244571(n+2))`
-/

namespace A244572.P67048402192866841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A244570 (n + 2) * A244571 (n + 2)).toNat

end

end A244572.P67048402192866841

/-! ## A244572.P12014978312056550068

`A033677(A244570(n+2)*A244571(n+2))`
-/

namespace A244572.P12014978312056550068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A244570 (n + 2) * A244571 (n + 2)).toNat

end

end A244572.P12014978312056550068

/-!
# A244573: Numbers n such that 10*n + d - digsum(10*n + d) is a palindrome for any d in {0,1,2,3,4,5,6,7,8,9}.

The programs for A244573, there is no canonical definition to state claims against.
-/

/-! ## A244573.P17082918476857140210

`floor(A229621(10*n+12)/10)`
-/

namespace A244573.P17082918476857140210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A229621 (10 * n + 12) : ℚ) / 10⌋

end

end A244573.P17082918476857140210

/-! ## A244573.P9968223840047745786

`A229621(11*(n+1)-n)/10`
-/

namespace A244573.P9968223840047745786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229621 (11 * (n + 1) - n) : ℚ) / 10

end

end A244573.P9968223840047745786

/-! ## A244573.P15645605319716415909

`record[floor(A229621(xor(6, n)+12)/10)]`
-/

namespace A244573.P15645605319716415909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A229621 (Nat.xor 6 n + 12) : ℚ) / 10⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244573.P15645605319716415909

/-! ## A244573.P18334156080813478139

`record[floor(A229621(A185048(n+1)+12)/10)]`
-/

namespace A244573.P18334156080813478139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A229621 (A185048 (n + 1) + 12).toNat : ℚ) / 10⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244573.P18334156080813478139

/-! ## A244573.P7299153933622860570

`record[floor(A229621(A124782(n)+12)/10)]`
-/

namespace A244573.P7299153933622860570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A229621 (A124782 n + 12).toNat : ℚ) / 10⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244573.P7299153933622860570

/-!
# A244575: Absolute discriminants of complex quadratic fields with 3-class group of type (3,3,3), thus having an infinite class tower.

The programs for A244575, there is no canonical definition to state claims against.
-/

/-! ## A244575.P2627985871355876688

`A244574(A174285(n+1)+A010785(n+4))`
-/

namespace A244575.P2627985871355876688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244574 (A174285 (n + 1) + A010785 (n + 4)).toNat

end

end A244575.P2627985871355876688

/-!
# A244576: Sum of all proper divisors of all positive integers <= prime(n).

The programs for A244576, the canonical program `A244576.P4626810035088509024` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244576 has offset 1).

The definition of A244576 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A244049, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A244576.P4626810035088509024

`A244049(A000040(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A244576

/-- `A244049(A000040(n+1))` -/
def P4626810035088509024.Spec : Prop :=
  ∀ n, P4626810035088509024.a n = A244576 (n + 1)

theorem P4626810035088509024.correct : P4626810035088509024.Spec := by
  intro n
  simp only [A244576, Nat.add_sub_cancel]

end A244576

/-! ## A244576.P6361387301043755790

`A244578(n+1)-A006093(n+1)`
-/

namespace A244576.P6361387301043755790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244578 (n + 1) - A006093 (n + 1)

end

end A244576.P6361387301043755790

namespace A244576

/-- `A244578(n+1)-A006093(n+1)` -/
def P6361387301043755790.Spec : Prop :=
  ∀ n, P6361387301043755790.a n = A244576 (n + 1)

end A244576

/-! ## A244576.P14774339392263272589

`A244049(p?[xor(1, n)])`
-/

namespace A244576.P14774339392263272589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244049 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A244576.P14774339392263272589

namespace A244576

/-- `A244049(p?[xor(1, n)])` -/
def P14774339392263272589.Spec : Prop :=
  ∀ n, P14774339392263272589.a n = A244576 (n + 1)

end A244576

/-! ## A244576.P14677973420026364412

`A244049(eq[1, ∑{e}[n+1, #]])`
-/

namespace A244576.P14677973420026364412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244049 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A244576.P14677973420026364412

namespace A244576

/-- `A244049(eq[1, ∑{e}[n+1, #]])` -/
def P14677973420026364412.Spec : Prop :=
  ∀ n, P14677973420026364412.a n = A244576 (n + 1)

end A244576

/-! ## A244576.P3993541622901575455

`A244049(p?[a(n-1)+2])` with `a(0)=2, a(1)=1`
-/

namespace A244576.P3993541622901575455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244049 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A244576.P3993541622901575455

namespace A244576

/-- `A244049(p?[a(n-1)+2])` -/
def P3993541622901575455.Spec : Prop :=
  ∀ n, P3993541622901575455.a n = A244576 (n + 1)

end A244576

/-! ## A244576.P1534020065503698583

`A244049(A006005(n+1))`
-/

namespace A244576.P1534020065503698583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244049 (A006005 (n + 1)).toNat

end

end A244576.P1534020065503698583

namespace A244576

/-- `A244049(A006005(n+1))` -/
def P1534020065503698583.Spec : Prop :=
  ∀ n, P1534020065503698583.a n = A244576 (n + 1)

end A244576

/-! ## A244576.P17861635907466845440

`A244049(A006093(n+1))`
-/

namespace A244576.P17861635907466845440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244049 (A006093 (n + 1)).toNat

end

end A244576.P17861635907466845440

namespace A244576

/-- `A244049(A006093(n+1))` -/
def P17861635907466845440.Spec : Prop :=
  ∀ n, P17861635907466845440.a n = A244576 (n + 1)

end A244576

/-! ## A244576.P1722376345994171629

`A244049(A039915(n+1))`
-/

namespace A244576.P1722376345994171629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244049 (A039915 (n + 1)).toNat

end

end A244576.P1722376345994171629

namespace A244576

/-- `A244049(A039915(n+1))` -/
def P1722376345994171629.Spec : Prop :=
  ∀ n, P1722376345994171629.a n = A244576 (n + 1)

end A244576

/-! ## A244576.P7175274626103920506

`A244049(A156037(n+1))`
-/

namespace A244576.P7175274626103920506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244049 (A156037 (n + 1)).toNat

end

end A244576.P7175274626103920506

namespace A244576

/-- `A244049(A156037(n+1))` -/
def P7175274626103920506.Spec : Prop :=
  ∀ n, P7175274626103920506.a n = A244576 (n + 1)

end A244576

/-! ## A244576.P4622431061744991639

`A244049(A008578(n+2))`
-/

namespace A244576.P4622431061744991639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244049 (A008578 (n + 2)).toNat

end

end A244576.P4622431061744991639

namespace A244576

/-- `A244049(A008578(n+2))` -/
def P4622431061744991639.Spec : Prop :=
  ∀ n, P4622431061744991639.a n = A244576 (n + 1)

end A244576

/-! ## A244576.P3538032688853306618

`A244049(A068499(n+2))`
-/

namespace A244576.P3538032688853306618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244049 (A068499 (n + 2)).toNat

end

end A244576.P3538032688853306618

namespace A244576

/-- `A244049(A068499(n+2))` -/
def P3538032688853306618.Spec : Prop :=
  ∀ n, P3538032688853306618.a n = A244576 (n + 1)

end A244576

/-! ## A244576.P175180177392699908

`A244049(A075643(n+2))`
-/

namespace A244576.P175180177392699908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244049 (A075643 (n + 2)).toNat

end

end A244576.P175180177392699908

namespace A244576

/-- `A244049(A075643(n+2))` -/
def P175180177392699908.Spec : Prop :=
  ∀ n, P175180177392699908.a n = A244576 (n + 1)

end A244576

/-! ## A244576.P1817697680962089216

`A244049(A171525(n+2))`
-/

namespace A244576.P1817697680962089216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244049 (A171525 (n + 2)).toNat

end

end A244576.P1817697680962089216

namespace A244576

/-- `A244049(A171525(n+2))` -/
def P1817697680962089216.Spec : Prop :=
  ∀ n, P1817697680962089216.a n = A244576 (n + 1)

end A244576

/-! ## A244576.P7082687014877781796

`A244049(A182986(n+2))`
-/

namespace A244576.P7082687014877781796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244049 (A182986 (n + 2)).toNat

end

end A244576.P7082687014877781796

namespace A244576

/-- `A244049(A182986(n+2))` -/
def P7082687014877781796.Spec : Prop :=
  ∀ n, P7082687014877781796.a n = A244576 (n + 1)

end A244576

/-! ## A244576.P7674747653382347568

`A244049(∑{p}[p?[round(8*n/7)]², #])`
-/

namespace A244576.P7674747653382347568
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244049 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A244576.P7674747653382347568

namespace A244576

/-- `A244049(∑{p}[p?[round(8*n/7)]², #])` -/
def P7674747653382347568.Spec : Prop :=
  ∀ n, P7674747653382347568.a n = A244576 (n + 1)

end A244576

/-! ## A244576.P9864491930669847750

`A244049(∏{p}[p?[round(8*n/7)]², #])`
-/

namespace A244576.P9864491930669847750
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244049 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A244576.P9864491930669847750

namespace A244576

/-- `A244049(∏{p}[p?[round(8*n/7)]², #])` -/
def P9864491930669847750.Spec : Prop :=
  ∀ n, P9864491930669847750.a n = A244576 (n + 1)

end A244576

/-!
# A244578: Sum of all aliquot divisors of all positive integers <= prime(n).

The programs for A244578, the canonical program `A244578.P4846969564591678736` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244578 has offset 1).

The definition of A244578 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153485, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A244578.P4846969564591678736

`A153485(A000040(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A244578

/-- `A153485(A000040(n+1))` -/
def P4846969564591678736.Spec : Prop :=
  ∀ n, P4846969564591678736.a n = A244578 (n + 1)

theorem P4846969564591678736.correct : P4846969564591678736.Spec := by
  intro n
  simp only [A244578, Nat.add_sub_cancel]

end A244578

/-! ## A244578.P4549076940973718196

`A244576(n+1)+A006093(n+1)`
-/

namespace A244578.P4549076940973718196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244576 (n + 1) + A006093 (n + 1)

end

end A244578.P4549076940973718196

namespace A244578

/-- `A244576(n+1)+A006093(n+1)` -/
def P4549076940973718196.Spec : Prop :=
  ∀ n, P4549076940973718196.a n = A244578 (n + 1)

end A244578

/-! ## A244578.P905702714745105389

`A008837(n+1)-A050482(n+1)`
-/

namespace A244578.P905702714745105389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008837 (n + 1) - A050482 (n + 1)

end

end A244578.P905702714745105389

namespace A244578

/-- `A008837(n+1)-A050482(n+1)` -/
def P905702714745105389.Spec : Prop :=
  ∀ n, P905702714745105389.a n = A244578 (n + 1)

end A244578

/-! ## A244578.P5895639633673447254

`A244583(n+1)-A034953(n+1)`
-/

namespace A244578.P5895639633673447254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244583 (n + 1) - A034953 (n + 1)

end

end A244578.P5895639633673447254

namespace A244578

/-- `A244583(n+1)-A034953(n+1)` -/
def P5895639633673447254.Spec : Prop :=
  ∀ n, P5895639633673447254.a n = A244578 (n + 1)

end A244578

/-! ## A244578.P18041267573804115054

`A244583(n+1)-A036690(n+1)/2`
-/

namespace A244578.P18041267573804115054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244583 (n + 1) : ℚ) - (A036690 (n + 1) : ℚ) / 2

end

end A244578.P18041267573804115054

namespace A244578

/-- `A244583(n+1)-A036690(n+1)/2` -/
def P18041267573804115054.Spec : Prop :=
  ∀ n, P18041267573804115054.a n = (A244578 (n + 1) : ℚ)

end A244578

/-! ## A244578.P13058566420773657016

`A034953(n+1)-(A050482(n+1)+A000040(n+1))`
-/

namespace A244578.P13058566420773657016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 1) - (A050482 (n + 1) + A000040 (n + 1))

end

end A244578.P13058566420773657016

namespace A244578

/-- `A034953(n+1)-(A050482(n+1)+A000040(n+1))` -/
def P13058566420773657016.Spec : Prop :=
  ∀ n, P13058566420773657016.a n = A244578 (n + 1)

end A244578

/-! ## A244578.P9635438661244406034

`A153485(p?[comp[n²]])`
-/

namespace A244578.P9635438661244406034
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153485 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A244578.P9635438661244406034

namespace A244578

/-- `A153485(p?[comp[n²]])` -/
def P9635438661244406034.Spec : Prop :=
  ∀ n, P9635438661244406034.a n = A244578 (n + 1)

end A244578

/-! ## A244578.P1302284312203740214

`∑{d}[p?[xor(1, n)+1], A153485(#)]`
-/

namespace A244578.P1302284312203740214
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A153485 d

end

end A244578.P1302284312203740214

namespace A244578

/-- `∑{d}[p?[xor(1, n)+1], A153485(#)]` -/
def P1302284312203740214.Spec : Prop :=
  ∀ n, P1302284312203740214.a n = A244578 (n + 1)

end A244578

/-! ## A244578.P5463550166203615943

`A153485(and(p?[xor(1, n)+1], -1))`
-/

namespace A244578.P5463550166203615943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153485 (Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (-1)).toNat

end

end A244578.P5463550166203615943

namespace A244578

/-- `A153485(and(p?[xor(1, n)+1], -1))` -/
def P5463550166203615943.Spec : Prop :=
  ∀ n, P5463550166203615943.a n = A244578 (n + 1)

end A244578

/-! ## A244578.P8882041520040262135

`A153485(or(n%2, p?[xor(1, n)+1]))`
-/

namespace A244578.P8882041520040262135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153485 (Nat.lor (n % 2) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A244578.P8882041520040262135

namespace A244578

/-- `A153485(or(n%2, p?[xor(1, n)+1]))` -/
def P8882041520040262135.Spec : Prop :=
  ∀ n, P8882041520040262135.a n = A244578 (n + 1)

end A244578

/-! ## A244578.P14739402792361390437

`A244048(A008864(n+1))`
-/

namespace A244578.P14739402792361390437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244048 (A008864 (n + 1)).toNat

end

end A244578.P14739402792361390437

namespace A244578

/-- `A244048(A008864(n+1))` -/
def P14739402792361390437.Spec : Prop :=
  ∀ n, P14739402792361390437.a n = A244578 (n + 1)

end A244578

/-! ## A244578.P18053634060701172443

`A244048(A028815(n+1))`
-/

namespace A244578.P18053634060701172443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244048 (A028815 (n + 1)).toNat

end

end A244578.P18053634060701172443

namespace A244578

/-- `A244048(A028815(n+1))` -/
def P18053634060701172443.Spec : Prop :=
  ∀ n, P18053634060701172443.a n = A244578 (n + 1)

end A244578

/-! ## A244578.P6479400472598867216

`A153485(A008578(n+2))`
-/

namespace A244578.P6479400472598867216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153485 (A008578 (n + 2)).toNat

end

end A244578.P6479400472598867216

namespace A244578

/-- `A153485(A008578(n+2))` -/
def P6479400472598867216.Spec : Prop :=
  ∀ n, P6479400472598867216.a n = A244578 (n + 1)

end A244578

/-! ## A244578.P8924622022373320344

`A153485(A182986(n+2))`
-/

namespace A244578.P8924622022373320344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153485 (A182986 (n + 2)).toNat

end

end A244578.P8924622022373320344

namespace A244578

/-- `A153485(A182986(n+2))` -/
def P8924622022373320344.Spec : Prop :=
  ∀ n, P8924622022373320344.a n = A244578 (n + 1)

end A244578

/-! ## A244578.P10926480035797510426

`A244048(A299763(n+2))`
-/

namespace A244578.P10926480035797510426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244048 (A299763 (n + 2)).toNat

end

end A244578.P10926480035797510426

namespace A244578

/-- `A244048(A299763(n+2))` -/
def P10926480035797510426.Spec : Prop :=
  ∀ n, P10926480035797510426.a n = A244578 (n + 1)

end A244578

/-! ## A244578.P2155623383547868173

`A008837(n+1)-A004125(A000040(n+1))`
-/

namespace A244578.P2155623383547868173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008837 (n + 1) - A004125 (A000040 (n + 1)).toNat

end

end A244578.P2155623383547868173

namespace A244578

/-- `A008837(n+1)-A004125(A000040(n+1))` -/
def P2155623383547868173.Spec : Prop :=
  ∀ n, P2155623383547868173.a n = A244578 (n + 1)

end A244578

/-! ## A244578.P8916807914850253610

`A153485(∑{p}[p?[round(8*n/7)]², #])`
-/

namespace A244578.P8916807914850253610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153485 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A244578.P8916807914850253610

namespace A244578

/-- `A153485(∑{p}[p?[round(8*n/7)]², #])` -/
def P8916807914850253610.Spec : Prop :=
  ∀ n, P8916807914850253610.a n = A244578 (n + 1)

end A244578

/-!
# A244579: Numbers k with the property that the number of parts in the symmetric representation of sigma(k) equals the number of divisors of k.

The programs for A244579, there is no canonical definition to state claims against.
-/

/-! ## A244579.P4861853641465828220

`record[A053626(or(1, n))]`
-/

namespace A244579.P4861853641465828220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053626 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244579.P4861853641465828220

/-! ## A244579.P3482630208264659152

`record[A053627(or(1, n))]`
-/

namespace A244579.P3482630208264659152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053627 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244579.P3482630208264659152

/-! ## A244579.P9103315723626251332

`A182991(n+2)/2`
-/

namespace A244579.P9103315723626251332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182991 (n + 2) : ℚ) / 2

end

end A244579.P9103315723626251332

/-! ## A244579.P4581320070570431560

`record[A053626(2*n+1)]`
-/

namespace A244579.P4581320070570431560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053626 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244579.P4581320070570431560

/-! ## A244579.P8873439443501623336

`record[A053627(2*n+1)]`
-/

namespace A244579.P8873439443501623336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053627 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244579.P8873439443501623336

/-! ## A244579.P17963003110913452437

`lt[A243982(n+1), 1]+1`
-/

namespace A244579.P17963003110913452437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243982 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A244579.P17963003110913452437

/-! ## A244579.P5178646976228354271

`lt[A338021(n+1), 1]+1`
-/

namespace A244579.P5178646976228354271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338021 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A244579.P5178646976228354271

/-! ## A244579.P11756177923731162529

`∩[2*n+1, A174905(n+1)]`
-/

namespace A244579.P11756177923731162529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244579.P11756177923731162529

/-! ## A244579.P6908445007561439830

`∩[2*n+1, A273130(n+1)]`
-/

namespace A244579.P6908445007561439830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244579.P6908445007561439830

/-! ## A244579.P6082612546204931861

`record[A053626(n+1)/(-1)^n]`
-/

namespace A244579.P6082612546204931861
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053626 (n + 1) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244579.P6082612546204931861

/-!
# A244580: Square array read by antidiagonals related to the symmetric representation of sigma.

The programs for A244580, there is no canonical definition to state claims against.
-/

/-! ## A244580.P7013479239173782743

`round(sqrt(2*(n+1))-A056978(A008288(n)²))`
-/

namespace A244580.P7013479239173782743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ) - (A056978 (A008288 n ^ 2).toNat : ℝ))

end

end A244580.P7013479239173782743

/-! ## A244580.P14773122550190928038

`∑[A010054(n)]-A070176(A022166(n))`
-/

namespace A244580.P14773122550190928038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A070176 (A022166 n).toNat

end

end A244580.P14773122550190928038

/-! ## A244580.P851057668434700968

`A002024(n+1)-A070176(A022166(n))`
-/

namespace A244580.P851057668434700968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) - A070176 (A022166 n).toNat

end

end A244580.P851057668434700968

/-! ## A244580.P917475214741078434

`A003056(n)+1-A070176(A022166(n))`
-/

namespace A244580.P917475214741078434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + (1 - A070176 (A022166 n).toNat)

end

end A244580.P917475214741078434

/-! ## A244580.P13085059988958118494

`A067132(lcm(A036561(n), A210789(n+1)))`
-/

namespace A244580.P13085059988958118494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067132 (Int.lcm (A036561 n) (A210789 (n + 1)))

end

end A244580.P13085059988958118494

/-!
# A244581: Multisets of multisets corresponding to integer partitions lambda, drawn from |lambda| symbols, where the sizes of the multisets are given by the elements of lambda as is the total number of occurrences of each symbol.

The programs for A244581, there is no canonical definition to state claims against.
-/

/-! ## A244581.P11708066535143893433

`A187446(A380401(n))`
-/

namespace A244581.P11708066535143893433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187446 (A380401 n).toNat

end

end A244581.P11708066535143893433

/-!
# A244583: a(n) = sum of all divisors of all positive integers <= prime(n).

The programs for A244583, the canonical program `A244583.P1388980908316134735` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244583 has offset 1).

The definition of A244583 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244583.P14161524600935060148

`A001248(n+1)-A050482(n+1)`
-/

namespace A244583.P14161524600935060148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - A050482 (n + 1)

end

end A244583.P14161524600935060148

namespace A244583

/-- `A001248(n+1)-A050482(n+1)` -/
def P14161524600935060148.Spec : Prop :=
  ∀ n, P14161524600935060148.a n = A244583 (n + 1)

end A244583

/-! ## A244583.P1388980908316134735

`A024916(A000040(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A244583

/-- `A024916(A000040(n+1))` -/
def P1388980908316134735.Spec : Prop :=
  ∀ n, P1388980908316134735.a n = A244583 (n + 1)

theorem P1388980908316134735.correct : P1388980908316134735.Spec := by
  intro n
  simp only [A244583, Nat.add_sub_cancel]

end A244583

/-! ## A244583.P4868594393236908303

`A000040(n+1)²-A050482(n+1)`
-/

namespace A244583.P4868594393236908303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - A050482 (n + 1)

end

end A244583.P4868594393236908303

namespace A244583

/-- `A000040(n+1)²-A050482(n+1)` -/
def P4868594393236908303.Spec : Prop :=
  ∀ n, P4868594393236908303.a n = A244583 (n + 1)

end A244583

/-! ## A244583.P17562649488075579164

`A036690(n+1)-(A050482(n+1)+A000040(n+1))`
-/

namespace A244583.P17562649488075579164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036690 (n + 1) - (A050482 (n + 1) + A000040 (n + 1))

end

end A244583.P17562649488075579164

namespace A244583

/-- `A036690(n+1)-(A050482(n+1)+A000040(n+1))` -/
def P17562649488075579164.Spec : Prop :=
  ∀ n, P17562649488075579164.a n = A244583 (n + 1)

end A244583

/-! ## A244583.P7177530718915169531

`A244578(n+1)+A034953(n+1)`
-/

namespace A244583.P7177530718915169531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244578 (n + 1) + A034953 (n + 1)

end

end A244583.P7177530718915169531

namespace A244583

/-- `A244578(n+1)+A034953(n+1)` -/
def P7177530718915169531.Spec : Prop :=
  ∀ n, P7177530718915169531.a n = A244583 (n + 1)

end A244583

/-! ## A244583.P12129779088207576130

`A024916(p?[comp[n²]])`
-/

namespace A244583.P12129779088207576130
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A244583.P12129779088207576130

namespace A244583

/-- `A024916(p?[comp[n²]])` -/
def P12129779088207576130.Spec : Prop :=
  ∀ n, P12129779088207576130.a n = A244583 (n + 1)

end A244583

/-! ## A244583.P3485815725247914202

`A024916(record[p?[∏{p}[n+1, #]]])`
-/

namespace A244583.P3485815725247914202
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A244583.P3485815725247914202

namespace A244583

/-- `A024916(record[p?[∏{p}[n+1, #]]])` -/
def P3485815725247914202.Spec : Prop :=
  ∀ n, P3485815725247914202.a n = A244583 (n + 1)

end A244583

/-! ## A244583.P6068035049810559512

`A024916(eq[1, ∏{e}[n, #+1]-1])`
-/

namespace A244583.P6068035049810559512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1) : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244583.P6068035049810559512

namespace A244583

/-- `A024916(eq[1, ∏{e}[n, #+1]-1])` -/
def P6068035049810559512.Spec : Prop :=
  ∀ n, P6068035049810559512.a n = A244583 (n + 1)

end A244583

/-! ## A244583.P17555106972051549697

`A024916(A008578(n+2))`
-/

namespace A244583.P17555106972051549697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (A008578 (n + 2)).toNat

end

end A244583.P17555106972051549697

namespace A244583

/-- `A024916(A008578(n+2))` -/
def P17555106972051549697.Spec : Prop :=
  ∀ n, P17555106972051549697.a n = A244583 (n + 1)

end A244583

/-! ## A244583.P12095902991459894052

`A024916(A182986(n+2))`
-/

namespace A244583.P12095902991459894052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (A182986 (n + 2)).toNat

end

end A244583.P12095902991459894052

namespace A244583

/-- `A024916(A182986(n+2))` -/
def P12095902991459894052.Spec : Prop :=
  ∀ n, P12095902991459894052.a n = A244583 (n + 1)

end A244583

/-! ## A244583.P13093931674294392207

`A024916(∑[A054541(n+1)])`
-/

namespace A244583.P13093931674294392207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A244583.P13093931674294392207

namespace A244583

/-- `A024916(∑[A054541(n+1)])` -/
def P13093931674294392207.Spec : Prop :=
  ∀ n, P13093931674294392207.a n = A244583 (n + 1)

end A244583

/-! ## A244583.P8735416551392993369

`A160664(Δ[A007504(n)])-1`
-/

namespace A244583.P8735416551392993369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 (f1 (n + 1) - f1 n).toNat - 1

end

end A244583.P8735416551392993369

namespace A244583

/-- `A160664(Δ[A007504(n)])-1` -/
def P8735416551392993369.Spec : Prop :=
  ∀ n, P8735416551392993369.a n = A244583 (n + 1)

end A244583

/-! ## A244583.P6189815555806619542

`A024916(record[A006530(n+2)])`
-/

namespace A244583.P6189815555806619542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A244583.P6189815555806619542

namespace A244583

/-- `A024916(record[A006530(n+2)])` -/
def P6189815555806619542.Spec : Prop :=
  ∀ n, P6189815555806619542.a n = A244583 (n + 1)

end A244583

/-! ## A244583.P9131631008704055986

`A024916(record[A014963(n+2)])`
-/

namespace A244583.P9131631008704055986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A244583.P9131631008704055986

namespace A244583

/-- `A024916(record[A014963(n+2)])` -/
def P9131631008704055986.Spec : Prop :=
  ∀ n, P9131631008704055986.a n = A244583 (n + 1)

end A244583

/-! ## A244583.P827196051071772342

`A024916(record[A020639(n+2)])`
-/

namespace A244583.P827196051071772342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A244583.P827196051071772342

namespace A244583

/-- `A024916(record[A020639(n+2)])` -/
def P827196051071772342.Spec : Prop :=
  ∀ n, P827196051071772342.a n = A244583 (n + 1)

end A244583

/-! ## A244583.P6664510915661464775

`A024916(A299763(n+2)-1)`
-/

namespace A244583.P6664510915661464775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (A299763 (n + 2) - 1).toNat

end

end A244583.P6664510915661464775

namespace A244583

/-- `A024916(A299763(n+2)-1)` -/
def P6664510915661464775.Spec : Prop :=
  ∀ n, P6664510915661464775.a n = A244583 (n + 1)

end A244583

/-! ## A244583.P3870344042993927915

`A024916(A207790(2*(n+1)))`
-/

namespace A244583.P3870344042993927915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (A207790 (2 * (n + 1))).toNat

end

end A244583.P3870344042993927915

namespace A244583

/-- `A024916(A207790(2*(n+1)))` -/
def P3870344042993927915.Spec : Prop :=
  ∀ n, P3870344042993927915.a n = A244583 (n + 1)

end A244583

/-! ## A244583.P4275923245740479288

`A160664(p?[A114112(n+1)])-1`
-/

namespace A244583.P4275923245740479288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A244583.P4275923245740479288

namespace A244583

/-- `A160664(p?[A114112(n+1)])-1` -/
def P4275923245740479288.Spec : Prop :=
  ∀ n, P4275923245740479288.a n = A244583 (n + 1)

end A244583

/-! ## A244583.P6528635625600884493

`A024916(eq[1, A054024(n+1)]+1)`
-/

namespace A244583.P6528635625600884493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A244583.P6528635625600884493

namespace A244583

/-- `A024916(eq[1, A054024(n+1)]+1)` -/
def P6528635625600884493.Spec : Prop :=
  ∀ n, P6528635625600884493.a n = A244583 (n + 1)

end A244583

/-! ## A244583.P4962534331556204722

`A160664(A014692(n+1)+n)-1`
-/

namespace A244583.P4962534331556204722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 (A014692 (n + 1) + (n : ℤ)).toNat - 1

end

end A244583.P4962534331556204722

namespace A244583

/-- `A160664(A014692(n+1)+n)-1` -/
def P4962534331556204722.Spec : Prop :=
  ∀ n, P4962534331556204722.a n = A244583 (n + 1)

end A244583

/-!
# A244584: a(n) = n OR 3.

The programs for A244584, the canonical program `A244584.P16738395715254007377` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244584 has offset 0).

The definition of A244584 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244584.P16738395715254007377

`or(n, 3)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A244584

/-- `or(n, 3)` -/
def P16738395715254007377.Spec : Prop :=
  ∀ n, (P16738395715254007377.a n : ℤ) = A244584 n

theorem P16738395715254007377.correct : P16738395715254007377.Spec := by
  intro n
  simp only [A244584]

end A244584

/-! ## A244584.P14133058689977693645

`n+(3*n+3)%4`
-/

namespace A244584.P14133058689977693645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + (3 * n + 3) % 4

end

end A244584.P14133058689977693645

namespace A244584

/-- `n+(3*n+3)%4` -/
def P14133058689977693645.Spec : Prop :=
  ∀ n, (P14133058689977693645.a n : ℤ) = A244584 n

end A244584

/-! ## A244584.P12502605134758833276

`4*floor((n+4)/4)-1`
-/

namespace A244584.P12502605134758833276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ⌊(n + 4 : ℚ) / 4⌋ - 1

end

end A244584.P12502605134758833276

namespace A244584

/-- `4*floor((n+4)/4)-1` -/
def P12502605134758833276.Spec : Prop :=
  ∀ n, P12502605134758833276.a n = A244584 n

end A244584

/-! ## A244584.P8224954868946440822

`xor(3, and(n, -4))`
-/

namespace A244584.P8224954868946440822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (Int.land (n : ℤ) (-4))

end

end A244584.P8224954868946440822

namespace A244584

/-- `xor(3, and(n, -4))` -/
def P8224954868946440822.Spec : Prop :=
  ∀ n, P8224954868946440822.a n = A244584 n

end A244584

/-! ## A244584.P8696331750596231934

`xor(n, 3-n%4)`
-/

namespace A244584.P8696331750596231934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (3 - ((n % 4 : ℕ) : ℤ))

end

end A244584.P8696331750596231934

namespace A244584

/-- `xor(n, 3-n%4)` -/
def P8696331750596231934.Spec : Prop :=
  ∀ n, P8696331750596231934.a n = A244584 n

end A244584

/-! ## A244584.P3317806305125285585

`xor(3, n-and(3, n))`
-/

namespace A244584.P3317806305125285585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 ((n : ℤ) - (Nat.land 3 n : ℤ))

end

end A244584.P3317806305125285585

namespace A244584

/-- `xor(3, n-and(3, n))` -/
def P3317806305125285585.Spec : Prop :=
  ∀ n, P3317806305125285585.a n = A244584 n

end A244584

/-! ## A244584.P14982525575799476370

`xor(n, xor(7, n)%4)`
-/

namespace A244584.P14982525575799476370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.xor 7 n % 4)

end

end A244584.P14982525575799476370

namespace A244584

/-- `xor(n, xor(7, n)%4)` -/
def P14982525575799476370.Spec : Prop :=
  ∀ n, (P14982525575799476370.a n : ℤ) = A244584 n

end A244584

/-! ## A244584.P6115694489900550671

`xor(3, xor(n, and(3, n)))`
-/

namespace A244584.P6115694489900550671
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (Nat.xor n (Nat.land 3 n))

end

end A244584.P6115694489900550671

namespace A244584

/-- `xor(3, xor(n, and(3, n)))` -/
def P6115694489900550671.Spec : Prop :=
  ∀ n, (P6115694489900550671.a n : ℤ) = A244584 n

end A244584

/-! ## A244584.P4527364982283587377

`xor(3, 4*floor(n/4))`
-/

namespace A244584.P4527364982283587377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (4 * ⌊(n : ℚ) / 4⌋)

end

end A244584.P4527364982283587377

namespace A244584

/-- `xor(3, 4*floor(n/4))` -/
def P4527364982283587377.Spec : Prop :=
  ∀ n, P4527364982283587377.a n = A244584 n

end A244584

/-! ## A244584.P7852050092396649124

`(xor(3, n)+n+3)/2`
-/

namespace A244584.P7852050092396649124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 3 n + (n + 3) : ℚ) / 2

end

end A244584.P7852050092396649124

namespace A244584

/-- `(xor(3, n)+n+3)/2` -/
def P7852050092396649124.Spec : Prop :=
  ∀ n, P7852050092396649124.a n = (A244584 n : ℚ)

end A244584

/-! ## A244584.P15774083445137966543

`abs(a(n-4)+4)` with `a(0)=3, a(1)=3, a(2)=3, a(3)=3`
-/

namespace A244584.P15774083445137966543
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 3, 3, 3] fun n a =>
  a (n - 4) + 4

end

end A244584.P15774083445137966543

namespace A244584

/-- `abs(a(n-4)+4)` -/
def P15774083445137966543.Spec : Prop :=
  ∀ n, (P15774083445137966543.a n : ℤ) = A244584 n

end A244584

/-! ## A244584.P5353667613433754060

`∑[floor(a(n-4))]` with `a(0)=3, a(1)=0, a(2)=0, a(3)=0, a(4)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A244584.P5353667613433754060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 0, 0, 0, 4] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244584.P5353667613433754060

namespace A244584

/-- `∑[floor(a(n-4))]` -/
def P5353667613433754060.Spec : Prop :=
  ∀ n, (P5353667613433754060.a n : ℤ) = A244584 n

end A244584

/-! ## A244584.P10364588325581451020

`∑[(a(n-4)/2)²]` with `a(0)=3, a(1)=0, a(2)=0, a(3)=0, a(4)=4`
-/

namespace A244584.P10364588325581451020
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3, 0, 0, 0, 4] fun n f1 =>
  (f1 (n - 4) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244584.P10364588325581451020

namespace A244584

/-- `∑[(a(n-4)/2)²]` -/
def P10364588325581451020.Spec : Prop :=
  ∀ n, P10364588325581451020.a n = (A244584 n : ℚ)

end A244584

/-! ## A244584.P16827205441204640942

`-xor(n, a(n-2)-(n+2))` with `a(0)=3, a(1)=3`
-/

namespace A244584.P16827205441204640942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n a =>
  -Int.xor (n : ℤ) (a (n - 2) - (n + 2 : ℤ))

end

end A244584.P16827205441204640942

namespace A244584

/-- `-xor(n, a(n-2)-(n+2))` -/
def P16827205441204640942.Spec : Prop :=
  ∀ n, P16827205441204640942.a n = A244584 n

end A244584

/-! ## A244584.P9357882887031685925

`∑[log2(A010153(n))]`
-/

namespace A244584.P9357882887031685925
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A010153 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244584.P9357882887031685925

namespace A244584

/-- `∑[log2(A010153(n))]` -/
def P9357882887031685925.Spec : Prop :=
  ∀ n, P9357882887031685925.a n = (A244584 n : ℝ)

end A244584

/-! ## A244584.P15305018926334104087

`A168269(∑[char[2*n]])`
-/

namespace A244584.P15305018926334104087
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168269 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A244584.P15305018926334104087

namespace A244584

/-- `A168269(∑[char[2*n]])` -/
def P15305018926334104087.Spec : Prop :=
  ∀ n, P15305018926334104087.a n = A244584 n

end A244584

/-! ## A244584.P551989049364864324

`A004767(A002265(n))`
-/

namespace A244584.P551989049364864324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A002265 n).toNat

end

end A244584.P551989049364864324

namespace A244584

/-- `A004767(A002265(n))` -/
def P551989049364864324.Spec : Prop :=
  ∀ n, P551989049364864324.a n = A244584 n

end A244584

/-! ## A244584.P1192182606665571282

`A005818(A092533(n))`
-/

namespace A244584.P1192182606665571282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005818 (A092533 n).toNat

end

end A244584.P1192182606665571282

namespace A244584

/-- `A005818(A092533(n))` -/
def P1192182606665571282.Spec : Prop :=
  ∀ n, P1192182606665571282.a n = A244584 n

end A244584

/-! ## A244584.P5713324365996937197

`A014601(A129756(n))`
-/

namespace A244584.P5713324365996937197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 (A129756 n).toNat

end

end A244584.P5713324365996937197

namespace A244584

/-- `A014601(A129756(n))` -/
def P5713324365996937197.Spec : Prop :=
  ∀ n, P5713324365996937197.a n = A244584 n

end A244584

/-! ## A244584.P7533445261666884206

`A086799(A174091(n))`
-/

namespace A244584.P7533445261666884206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A174091 n).toNat

end

end A244584.P7533445261666884206

namespace A244584

/-- `A086799(A174091(n))` -/
def P7533445261666884206.Spec : Prop :=
  ∀ n, P7533445261666884206.a n = A244584 n

end A244584

/-!
# A244586: a(n) = n OR 4.

The programs for A244586, the canonical program `A244586.P7940218175795131863` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244586 has offset 0).

The definition of A244586 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244586.P7940218175795131863

`or(n, 4)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A244586

/-- `or(n, 4)` -/
def P7940218175795131863.Spec : Prop :=
  ∀ n, (P7940218175795131863.a n : ℤ) = A244586 n

theorem P7940218175795131863.correct : P7940218175795131863.Spec := by
  intro n
  simp only [A244586]

end A244586

/-! ## A244586.P4991348261225657714

`n+4*floor((n+4)%8/4)`
-/

namespace A244586.P4991348261225657714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + 4 * ⌊(((n + 4) % 8 : ℕ) : ℚ) / 4⌋

end

end A244586.P4991348261225657714

namespace A244586

/-- `n+4*floor((n+4)%8/4)` -/
def P4991348261225657714.Spec : Prop :=
  ∀ n, P4991348261225657714.a n = A244586 n

end A244586

/-! ## A244586.P14682628688116323605

`2+n+2*(-1)^floor(n/4)`
-/

namespace A244586.P14682628688116323605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + n : ℚ) + 2 * (-1 : ℚ) ^ (⌊(n : ℚ) / 4⌋ : ℤ)

end

end A244586.P14682628688116323605

namespace A244586

/-- `2+n+2*(-1)^floor(n/4)` -/
def P14682628688116323605.Spec : Prop :=
  ∀ n, P14682628688116323605.a n = (A244586 n : ℚ)

end A244586

/-! ## A244586.P783635024762996626

`xor(4, and(n, -5))`
-/

namespace A244586.P783635024762996626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (Int.land (n : ℤ) (-5))

end

end A244586.P783635024762996626

namespace A244586

/-- `xor(4, and(n, -5))` -/
def P783635024762996626.Spec : Prop :=
  ∀ n, P783635024762996626.a n = A244586 n

end A244586

/-! ## A244586.P13472698320778427878

`(n+3-xor(n, -5))/2`
-/

namespace A244586.P13472698320778427878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 3 : ℤ) - Int.xor (n : ℤ) (-5) : ℚ) / 2

end

end A244586.P13472698320778427878

namespace A244586

/-- `(n+3-xor(n, -5))/2` -/
def P13472698320778427878.Spec : Prop :=
  ∀ n, P13472698320778427878.a n = (A244586 n : ℚ)

end A244586

/-! ## A244586.P13281301418449498651

`ceil((xor(4, n)+n+3)/2)`
-/

namespace A244586.P13281301418449498651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 4 n + (n + 3) : ℚ) / 2⌉

end

end A244586.P13281301418449498651

namespace A244586

/-- `ceil((xor(4, n)+n+3)/2)` -/
def P13281301418449498651.Spec : Prop :=
  ∀ n, P13281301418449498651.a n = A244586 n

end A244586

/-! ## A244586.P5032467484190347431

`round((xor(4, n)+n+3)/2)`
-/

namespace A244586.P5032467484190347431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 4 n + (n + 3) : ℚ) / 2)

end

end A244586.P5032467484190347431

namespace A244586

/-- `round((xor(4, n)+n+3)/2)` -/
def P5032467484190347431.Spec : Prop :=
  ∀ n, P5032467484190347431.a n = A244586 n

end A244586

/-! ## A244586.P9726168240272756787

`and(A244587(n), A244588(n))`
-/

namespace A244586.P9726168240272756787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A244587 n) (A244588 n)

end

end A244586.P9726168240272756787

namespace A244586

/-- `and(A244587(n), A244588(n))` -/
def P9726168240272756787.Spec : Prop :=
  ∀ n, P9726168240272756787.a n = A244586 n

end A244586

/-! ## A244586.P14192733741691104414

`xor(A059841(n), A244587(n))`
-/

namespace A244586.P14192733741691104414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A059841 n) (A244587 n)

end

end A244586.P14192733741691104414

namespace A244586

/-- `xor(A059841(n), A244587(n))` -/
def P14192733741691104414.Spec : Prop :=
  ∀ n, P14192733741691104414.a n = A244586 n

end A244586

/-! ## A244586.P4448741348749795387

`floor(log2(A335161(n)))`
-/

namespace A244586.P4448741348749795387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A335161 n).toNat

end

end A244586.P4448741348749795387

namespace A244586

/-- `floor(log2(A335161(n)))` -/
def P4448741348749795387.Spec : Prop :=
  ∀ n, (P4448741348749795387.a n : ℤ) = A244586 n

end A244586

/-!
# A244587: a(n) = n OR 5.

The programs for A244587, the canonical program `A244587.P12497443490309036214` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244587 has offset 0).

The definition of A244587 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244587.P12497443490309036214

`or(n, 5)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A244587

/-- `or(n, 5)` -/
def P12497443490309036214.Spec : Prop :=
  ∀ n, (P12497443490309036214.a n : ℤ) = A244587 n

theorem P12497443490309036214.correct : P12497443490309036214.Spec := by
  intro n
  simp only [A244587]

end A244587

/-! ## A244587.P7411609958363044135

`n+(n+1)%2+4*floor((n+4)%8/4)`
-/

namespace A244587.P7411609958363044135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + (n + 1) % 2 : ℕ) : ℤ) + 4 * ⌊(((n + 4) % 8 : ℕ) : ℚ) / 4⌋

end

end A244587.P7411609958363044135

namespace A244587

/-- `n+(n+1)%2+4*floor((n+4)%8/4)` -/
def P7411609958363044135.Spec : Prop :=
  ∀ n, P7411609958363044135.a n = A244587 n

end A244587

/-! ## A244587.P9891102866431728765

`(2*n+4*(-1)^floor(n/4)+(-1)^n+5)/2`
-/

namespace A244587.P9891102866431728765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℚ) + 4 * (-1 : ℚ) ^ (⌊(n : ℚ) / 4⌋ : ℤ) + ((-1) ^ n : ℚ) + 5) / 2

end

end A244587.P9891102866431728765

namespace A244587

/-- `(2*n+4*(-1)^floor(n/4)+(-1)^n+5)/2` -/
def P9891102866431728765.Spec : Prop :=
  ∀ n, P9891102866431728765.a n = (A244587 n : ℚ)

end A244587

/-! ## A244587.P16367934609937305912

`and(n, -6)+5`
-/

namespace A244587.P16367934609937305912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-6) + 5

end

end A244587.P16367934609937305912

namespace A244587

/-- `and(n, -6)+5` -/
def P16367934609937305912.Spec : Prop :=
  ∀ n, P16367934609937305912.a n = A244587 n

end A244587

/-! ## A244587.P13217471876895853133

`xor(5, and(n, -6))`
-/

namespace A244587.P13217471876895853133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 (Int.land (n : ℤ) (-6))

end

end A244587.P13217471876895853133

namespace A244587

/-- `xor(5, and(n, -6))` -/
def P13217471876895853133.Spec : Prop :=
  ∀ n, P13217471876895853133.a n = A244587 n

end A244587

/-! ## A244587.P7265100020246675285

`5-and(5, n)+n`
-/

namespace A244587.P7265100020246675285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (Nat.land 5 n : ℤ) + (n : ℤ)

end

end A244587.P7265100020246675285

namespace A244587

/-- `5-and(5, n)+n` -/
def P7265100020246675285.Spec : Prop :=
  ∀ n, P7265100020246675285.a n = A244587 n

end A244587

/-! ## A244587.P12566917212622817117

`5-(and(5, n)-n)`
-/

namespace A244587.P12566917212622817117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - ((Nat.land 5 n : ℤ) - (n : ℤ))

end

end A244587.P12566917212622817117

namespace A244587

/-- `5-(and(5, n)-n)` -/
def P12566917212622817117.Spec : Prop :=
  ∀ n, P12566917212622817117.a n = A244587 n

end A244587

/-! ## A244587.P15681304497442183412

`xor(4, xor(n, and(5, n))+1)`
-/

namespace A244587.P15681304497442183412
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 4 (Nat.xor n (Nat.land 5 n) + 1)

end

end A244587.P15681304497442183412

namespace A244587

/-- `xor(4, xor(n, and(5, n))+1)` -/
def P15681304497442183412.Spec : Prop :=
  ∀ n, (P15681304497442183412.a n : ℤ) = A244587 n

end A244587

/-! ## A244587.P17155159826497594412

`A244586(A109613(n))`
-/

namespace A244587.P17155159826497594412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244586 (A109613 n).toNat

end

end A244587.P17155159826497594412

namespace A244587

/-- `A244586(A109613(n))` -/
def P17155159826497594412.Spec : Prop :=
  ∀ n, P17155159826497594412.a n = A244587 n

end A244587

/-! ## A244587.P15312698717398758254

`A244586(A059841(n)+n)`
-/

namespace A244587.P15312698717398758254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244586 (A059841 n + (n : ℤ)).toNat

end

end A244587.P15312698717398758254

namespace A244587

/-- `A244586(A059841(n)+n)` -/
def P15312698717398758254.Spec : Prop :=
  ∀ n, P15312698717398758254.a n = A244587 n

end A244587

/-! ## A244587.P3418114620889464062

`A004446(and(n, A004446(n)))`
-/

namespace A244587.P3418114620889464062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004446 (Int.land (n : ℤ) (A004446 n)).toNat

end

end A244587.P3418114620889464062

namespace A244587

/-- `A004446(and(n, A004446(n)))` -/
def P3418114620889464062.Spec : Prop :=
  ∀ n, P3418114620889464062.a n = A244587 n

end A244587

/-! ## A244587.P2683556214329558657

`A244586(xor(n, A059841(n)))`
-/

namespace A244587.P2683556214329558657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244586 (Int.xor (n : ℤ) (A059841 n)).toNat

end

end A244587.P2683556214329558657

namespace A244587

/-- `A244586(xor(n, A059841(n)))` -/
def P2683556214329558657.Spec : Prop :=
  ∀ n, P2683556214329558657.a n = A244587 n

end A244587

/-! ## A244587.P4932831694368197944

`2*A174091(A004526(n))+1`
-/

namespace A244587.P4932831694368197944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174091 (A004526 n).toNat + 1

end

end A244587.P4932831694368197944

namespace A244587

/-- `2*A174091(A004526(n))+1` -/
def P4932831694368197944.Spec : Prop :=
  ∀ n, P4932831694368197944.a n = A244587 n

end A244587

/-! ## A244587.P7081898927197795242

`A244586(2*A004526(n)+1)`
-/

namespace A244587.P7081898927197795242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244586 (2 * A004526 n + 1).toNat

end

end A244587.P7081898927197795242

namespace A244587

/-- `A244586(2*A004526(n)+1)` -/
def P7081898927197795242.Spec : Prop :=
  ∀ n, P7081898927197795242.a n = A244587 n

end A244587

/-! ## A244587.P17593807711322695838

`A244586(2-A000034(n)+n)`
-/

namespace A244587.P17593807711322695838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244586 (2 - A000034 n + (n : ℤ)).toNat

end

end A244587.P17593807711322695838

namespace A244587

/-- `A244586(2-A000034(n)+n)` -/
def P17593807711322695838.Spec : Prop :=
  ∀ n, P17593807711322695838.a n = A244587 n

end A244587

/-! ## A244587.P2915754436232306709

`A244586(2-(A000034(n)-n))`
-/

namespace A244587.P2915754436232306709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244586 (2 - (A000034 n - (n : ℤ))).toNat

end

end A244587.P2915754436232306709

namespace A244587

/-- `A244586(2-(A000034(n)-n))` -/
def P2915754436232306709.Spec : Prop :=
  ∀ n, P2915754436232306709.a n = A244587 n

end A244587

/-! ## A244587.P3708675959473953078

`A244586(A042964(n+1)-(n+1))`
-/

namespace A244587.P3708675959473953078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244586 (A042964 (n + 1) - (n + 1 : ℤ)).toNat

end

end A244587.P3708675959473953078

namespace A244587

/-- `A244586(A042964(n+1)-(n+1))` -/
def P3708675959473953078.Spec : Prop :=
  ∀ n, P3708675959473953078.a n = A244587 n

end A244587

/-! ## A244587.P18022643411197643419

`A115419(n+1)-(A174091(n)+1)`
-/

namespace A244587.P18022643411197643419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115419 (n + 1) - (A174091 n + 1)

end

end A244587.P18022643411197643419

namespace A244587

/-- `A115419(n+1)-(A174091(n)+1)` -/
def P18022643411197643419.Spec : Prop :=
  ∀ n, P18022643411197643419.a n = A244587 n

end A244587

/-! ## A244587.P8936089158389393682

`A115419(A109613(n))-A244584(n)`
-/

namespace A244587.P8936089158389393682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115419 (A109613 n).toNat - A244584 n

end

end A244587.P8936089158389393682

namespace A244587

/-- `A115419(A109613(n))-A244584(n)` -/
def P8936089158389393682.Spec : Prop :=
  ∀ n, P8936089158389393682.a n = A244587 n

end A244587

/-! ## A244587.P5839760659571985126

`A115419(A244586(n))-A244588(n)`
-/

namespace A244587.P5839760659571985126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115419 (A244586 n).toNat - A244588 n

end

end A244587.P5839760659571985126

namespace A244587

/-- `A115419(A244586(n))-A244588(n)` -/
def P5839760659571985126.Spec : Prop :=
  ∀ n, P5839760659571985126.a n = A244587 n

end A244587

/-!
# A244588: a(n) = n OR 6.

The programs for A244588, the canonical program `A244588.P9944880604603588958` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244588 has offset 0).

The definition of A244588 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244588.P9944880604603588958

`or(n, 6)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A244588

/-- `or(n, 6)` -/
def P9944880604603588958.Spec : Prop :=
  ∀ n, (P9944880604603588958.a n : ℤ) = A244588 n

theorem P9944880604603588958.correct : P9944880604603588958.Spec := by
  intro n
  simp only [A244588]

end A244588

/-! ## A244588.P16108835412284887051

`and(n, -7)+6`
-/

namespace A244588.P16108835412284887051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-7) + 6

end

end A244588.P16108835412284887051

namespace A244588

/-- `and(n, -7)+6` -/
def P16108835412284887051.Spec : Prop :=
  ∀ n, P16108835412284887051.a n = A244588 n

end A244588

/-! ## A244588.P15212638132989005856

`xor(6, and(n, -7))`
-/

namespace A244588.P15212638132989005856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 6 (Int.land (n : ℤ) (-7))

end

end A244588.P15212638132989005856

namespace A244588

/-- `xor(6, and(n, -7))` -/
def P15212638132989005856.Spec : Prop :=
  ∀ n, P15212638132989005856.a n = A244588 n

end A244588

/-! ## A244588.P17318031154460898387

`6-(and(6, n)-n)`
-/

namespace A244588.P17318031154460898387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - ((Nat.land 6 n : ℤ) - (n : ℤ))

end

end A244588.P17318031154460898387

namespace A244588

/-- `6-(and(6, n)-n)` -/
def P17318031154460898387.Spec : Prop :=
  ∀ n, P17318031154460898387.a n = A244588 n

end A244588

/-! ## A244588.P12747882057779850554

`(xor(6, n)+n)/2+3`
-/

namespace A244588.P12747882057779850554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 6 n + n : ℚ) / 2 + 3

end

end A244588.P12747882057779850554

namespace A244588

/-- `(xor(6, n)+n)/2+3` -/
def P12747882057779850554.Spec : Prop :=
  ∀ n, P12747882057779850554.a n = (A244588 n : ℚ)

end A244588

/-! ## A244588.P12942909977575530091

`∑[6*(n+1)²]%8+n`
-/

namespace A244588.P12942909977575530091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 8 + n

end

end A244588.P12942909977575530091

namespace A244588

/-- `∑[6*(n+1)²]%8+n` -/
def P12942909977575530091.Spec : Prop :=
  ∀ n, (P12942909977575530091.a n : ℤ) = A244588 n

end A244588

/-! ## A244588.P14597781145557683201

`2*(3-A004526(n)%4)+n`
-/

namespace A244588.P14597781145557683201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (3 - Int.tmod (A004526 n) 4) + (n : ℤ)

end

end A244588.P14597781145557683201

namespace A244588

/-- `2*(3-A004526(n)%4)+n` -/
def P14597781145557683201.Spec : Prop :=
  ∀ n, P14597781145557683201.a n = A244588 n

end A244588

/-! ## A244588.P13635272621182365463

`A244586(A174091(n))`
-/

namespace A244588.P13635272621182365463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244586 (A174091 n).toNat

end

end A244588.P13635272621182365463

namespace A244588

/-- `A244586(A174091(n))` -/
def P13635272621182365463.Spec : Prop :=
  ∀ n, P13635272621182365463.a n = A244588 n

end A244588

/-! ## A244588.P1850129817229967807

`A004447(and(n, A004447(n)))`
-/

namespace A244588.P1850129817229967807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004447 (Int.land (n : ℤ) (A004447 n)).toNat

end

end A244588.P1850129817229967807

namespace A244588

/-- `A004447(and(n, A004447(n)))` -/
def P1850129817229967807.Spec : Prop :=
  ∀ n, P1850129817229967807.a n = A244588 n

end A244588

/-! ## A244588.P4345134420976587804

`A115419(n+1)-(A109613(n)+1)`
-/

namespace A244588.P4345134420976587804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115419 (n + 1) - (A109613 n + 1)

end

end A244588.P4345134420976587804

namespace A244588

/-- `A115419(n+1)-(A109613(n)+1)` -/
def P4345134420976587804.Spec : Prop :=
  ∀ n, P4345134420976587804.a n = A244588 n

end A244588

/-! ## A244588.P1457002114355963138

`A115419(A174091(n))-A244584(n)`
-/

namespace A244588.P1457002114355963138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115419 (A174091 n).toNat - A244584 n

end

end A244588.P1457002114355963138

namespace A244588

/-- `A115419(A174091(n))-A244584(n)` -/
def P1457002114355963138.Spec : Prop :=
  ∀ n, P1457002114355963138.a n = A244588 n

end A244588

/-! ## A244588.P10531064865051196400

`A115419(A244586(n))-A244587(n)`
-/

namespace A244588.P10531064865051196400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115419 (A244586 n).toNat - A244587 n

end

end A244588.P10531064865051196400

namespace A244588

/-- `A115419(A244586(n))-A244587(n)` -/
def P10531064865051196400.Spec : Prop :=
  ∀ n, P10531064865051196400.a n = A244588 n

end A244588

/-! ## A244588.P6103011506764125455

`A174091(n)+A244587(n)-A109613(n)`
-/

namespace A244588.P6103011506764125455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174091 n + (A244587 n - A109613 n)

end

end A244588.P6103011506764125455

namespace A244588

/-- `A174091(n)+A244587(n)-A109613(n)` -/
def P6103011506764125455.Spec : Prop :=
  ∀ n, P6103011506764125455.a n = A244588 n

end A244588

/-! ## A244588.P14173165916297040145

`A244584(n)+A244586(n)-A109613(n)`
-/

namespace A244588.P14173165916297040145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244584 n + (A244586 n - A109613 n)

end

end A244588.P14173165916297040145

namespace A244588

/-- `A244584(n)+A244586(n)-A109613(n)` -/
def P14173165916297040145.Spec : Prop :=
  ∀ n, P14173165916297040145.a n = A244588 n

end A244588

/-! ## A244588.P7265155177952620925

`A115419(n+1)+A174091(n)-A047566(n+1)`
-/

namespace A244588.P7265155177952620925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115419 (n + 1) + (A174091 n - A047566 (n + 1))

end

end A244588.P7265155177952620925

namespace A244588

/-- `A115419(n+1)+A174091(n)-A047566(n+1)` -/
def P7265155177952620925.Spec : Prop :=
  ∀ n, P7265155177952620925.a n = A244588 n

end A244588

/-! ## A244588.P2651628831343363448

`A244586(A244586(2*n)/2)`
-/

namespace A244588.P2651628831343363448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244586 (SequenceMachineLib.roundAway ((A244586 (2 * n) : ℚ) / 2)).toNat

end

end A244588.P2651628831343363448

namespace A244588

/-- `A244586(A244586(2*n)/2)` -/
def P2651628831343363448.Spec : Prop :=
  ∀ n, P2651628831343363448.a n = A244588 n

end A244588

/-! ## A244588.P10828434616025381180

`A244586(A028242(A244587(2*n)))`
-/

namespace A244588.P10828434616025381180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244586 (A028242 (A244587 (2 * n)).toNat).toNat

end

end A244588.P10828434616025381180

namespace A244588

/-- `A244586(A028242(A244587(2*n)))` -/
def P10828434616025381180.Spec : Prop :=
  ∀ n, P10828434616025381180.a n = A244588 n

end A244588

/-! ## A244588.P16674307723669500157

`A244586(A028242(A244586(2*n+1)))`
-/

namespace A244588.P16674307723669500157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244586 (A028242 (A244586 (2 * n + 1)).toNat).toNat

end

end A244588.P16674307723669500157

namespace A244588

/-- `A244586(A028242(A244586(2*n+1)))` -/
def P16674307723669500157.Spec : Prop :=
  ∀ n, P16674307723669500157.a n = A244588 n

end A244588

/-! ## A244588.P16603034233962752969

`A028242(A244587(A005843(A244586(n))))`
-/

namespace A244588.P16603034233962752969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A244587 (A005843 (A244586 n).toNat).toNat).toNat

end

end A244588.P16603034233962752969

namespace A244588

/-- `A028242(A244587(A005843(A244586(n))))` -/
def P16603034233962752969.Spec : Prop :=
  ∀ n, P16603034233962752969.a n = A244588 n

end A244588

/-!
# A244589: E.g.f. A(x) satisfies the property that the sum of the coefficients of x^k, k=0..n, in A(x)^n equals (n+1)^n.

The programs for A244589, there is no canonical definition to state claims against.
-/

/-! ## A244589.P12114197796261248225

`A162699(A117264(n))`
-/

namespace A244589.P12114197796261248225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162699 (A117264 n).toNat

end

end A244589.P12114197796261248225

/-!
# A244590: a(n) = sum( floor(k*n/8), k=1..7 ).

The programs for A244590, the canonical program `A244590.P15541902687039525621` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244590 has offset 0).

The definition of A244590 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244590.P15541902687039525621

`(gcd(n, 8)-(n+8)+n*8)/2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A244590

/-- `(gcd(n, 8)-(n+8)+n*8)/2` -/
def P15541902687039525621.Spec : Prop :=
  ∀ n, P15541902687039525621.a n = (A244590 n : ℚ)

end A244590

/-! ## A244590.P407369493517434090

`A259572(A167487(n+5)+1)`
-/

namespace A244590.P407369493517434090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259572 (A167487 (n + 5) + 1).toNat

end

end A244590.P407369493517434090

namespace A244590

/-- `A259572(A167487(n+5)+1)` -/
def P407369493517434090.Spec : Prop :=
  ∀ n, P407369493517434090.a n = A244590 n

end A244590

/-! ## A244590.P13316239701024576784

`A259572(A027379(n+5)-4)`
-/

namespace A244590.P13316239701024576784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259572 (A027379 (n + 5) - 4).toNat

end

end A244590.P13316239701024576784

namespace A244590

/-- `A259572(A027379(n+5)-4)` -/
def P13316239701024576784.Spec : Prop :=
  ∀ n, P13316239701024576784.a n = A244590 n

end A244590

/-! ## A244590.P15228145599397927331

`A259572(A000124(n+6)+7)`
-/

namespace A244590.P15228145599397927331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259572 (A000124 (n + 6) + 7).toNat

end

end A244590.P15228145599397927331

namespace A244590

/-- `A259572(A000124(n+6)+7)` -/
def P15228145599397927331.Spec : Prop :=
  ∀ n, P15228145599397927331.a n = A244590 n

end A244590

/-! ## A244590.P5578384612553609450

`A259572(A000217(n+6)+8)`
-/

namespace A244590.P5578384612553609450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259572 (A000217 (n + 6) + 8).toNat

end

end A244590.P5578384612553609450

namespace A244590

/-- `A259572(A000217(n+6)+8)` -/
def P5578384612553609450.Spec : Prop :=
  ∀ n, P5578384612553609450.a n = A244590 n

end A244590

/-! ## A244590.P10076957961187924481

`A259572(A161680(n+8)-7)`
-/

namespace A244590.P10076957961187924481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259572 (A161680 (n + 8) - 7).toNat

end

end A244590.P10076957961187924481

namespace A244590

/-- `A259572(A161680(n+8)-7)` -/
def P10076957961187924481.Spec : Prop :=
  ∀ n, P10076957961187924481.a n = A244590 n

end A244590

/-! ## A244590.P4483452546757786289

`A259572(eq[7, A004736(n+1)])`
-/

namespace A244590.P4483452546757786289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259572 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244590.P4483452546757786289

namespace A244590

/-- `A259572(eq[7, A004736(n+1)])` -/
def P4483452546757786289.Spec : Prop :=
  ∀ n, P4483452546757786289.a n = A244590 n

end A244590

/-! ## A244590.P10599826706541372465

`A259572(2*n+A000096(n+4)+7)`
-/

namespace A244590.P10599826706541372465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259572 ((2 * n : ℤ) + (A000096 (n + 4) + 7)).toNat

end

end A244590.P10599826706541372465

namespace A244590

/-- `A259572(2*n+A000096(n+4)+7)` -/
def P10599826706541372465.Spec : Prop :=
  ∀ n, P10599826706541372465.a n = A244590 n

end A244590

/-!
# A244591: Zero followed by the terms of A032924 arranged to give the unique path to the n-th node of a complete, rooted and ordered binary tree.

The programs for A244591, there is no canonical definition to state claims against.
-/

/-! ## A244591.P5297178727315463005

`A030102(eq[1, A054390(n)])`
-/

namespace A244591.P5297178727315463005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244591.P5297178727315463005

/-! ## A244591.P9443007309381415212

`A263273(eq[1, A054390(n)])`
-/

namespace A244591.P9443007309381415212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244591.P9443007309381415212

/-! ## A244591.P4682355997603804063

`A321464(eq[1, A054390(n)])`
-/

namespace A244591.P4682355997603804063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321464 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244591.P4682355997603804063

/-! ## A244591.P3865332476553193517

`A321726(eq[1, A054390(n)])`
-/

namespace A244591.P3865332476553193517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321726 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A244591.P3865332476553193517

/-! ## A244591.P686393577186280386

`A030102(lt[A054390(n), 2])`
-/

namespace A244591.P686393577186280386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054390 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A244591.P686393577186280386

/-! ## A244591.P5845650584240382910

`A030102(record[n/A054390(n)])`
-/

namespace A244591.P5845650584240382910
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A054390 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A244591.P5845650584240382910

/-! ## A244591.P2363510940854578506

`A263273(record[n/A054390(n)])`
-/

namespace A244591.P2363510940854578506
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A054390 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A244591.P2363510940854578506

/-! ## A244591.P819816450299917676

`A321464(record[n/A054390(n)])`
-/

namespace A244591.P819816450299917676
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A054390 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321464 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A244591.P819816450299917676

/-! ## A244591.P10464483835112571671

`A030102(A153775(n+1)-1)`
-/

namespace A244591.P10464483835112571671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 (A153775 (n + 1) - 1).toNat

end

end A244591.P10464483835112571671

/-! ## A244591.P13047399049601826218

`A153775(A059893(n+1))-1`
-/

namespace A244591.P13047399049601826218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153775 (A059893 (n + 1)).toNat - 1

end

end A244591.P13047399049601826218

/-!
# A244593: Decimal expansion of z_c = phi^5 (where phi is the golden ratio), a lattice statistics constant which is the exact value of the critical activity of the hard hexagon model.

The programs for A244593, there is no canonical definition to state claims against.
-/

/-! ## A244593.P16845729150831911590

`A296182(n-char[1])`
-/

namespace A244593.P16845729150831911590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296182 (n - (if ∃ j, f1 j = n then 1 else 0) + 1)

end

end A244593.P16845729150831911590

/-! ## A244593.P16321773064766359518

`A239798(A159075(n)+n)`
-/

namespace A244593.P16321773064766359518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239798 ((A159075 n + (n : ℤ)).toNat + 1)

end

end A244593.P16321773064766359518

/-! ## A244593.P3625913776735380533

`gcd(A239798(n), A296182(n))`
-/

namespace A244593.P3625913776735380533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A239798 (n + 1)) (A296182 (n + 1))

end

end A244593.P3625913776735380533

/-! ## A244593.P16682705049160809603

`A239798(n-A159075(n)²)`
-/

namespace A244593.P16682705049160809603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239798 (((n : ℤ) - A159075 n ^ 2).toNat + 1)

end

end A244593.P16682705049160809603

/-! ## A244593.P12087856568398633029

`abs(or(A154955(n+1), A296182(n)))`
-/

namespace A244593.P12087856568398633029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (A154955 (n + 1)) (A296182 (n + 1))|

end

end A244593.P12087856568398633029

/-! ## A244593.P13766686903302119238

`A239798(n)-A000038(A004442(n))`
-/

namespace A244593.P13766686903302119238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239798 (n + 1) - A000038 (A004442 n).toNat

end

end A244593.P13766686903302119238

/-! ## A244593.P7129980087009492823

`A239798(n)-A000038(A008624(n))`
-/

namespace A244593.P7129980087009492823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239798 (n + 1) - A000038 (A008624 n).toNat

end

end A244593.P7129980087009492823

/-! ## A244593.P1343501455177747225

`A239798(n)-A000038(A123108(n))`
-/

namespace A244593.P1343501455177747225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239798 (n + 1) - A000038 (A123108 n).toNat

end

end A244593.P1343501455177747225

/-! ## A244593.P14915819109914737351

`A239798(n-A159075(n))-A159075(n)`
-/

namespace A244593.P14915819109914737351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239798 (((n : ℤ) - A159075 n).toNat + 1) - A159075 n

end

end A244593.P14915819109914737351

/-! ## A244593.P1081735629444210658

`A018783(A081259(a(n-2)+1))*A296182(n)` with `a(0)=1, a(1)=1`
-/

namespace A244593.P1081735629444210658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A018783 (A081259 (a (n - 2) + 1).toNat).toNat * A296182 (n + 1)

end

end A244593.P1081735629444210658

/-!
# A244594: G.f. satisfies: A(x) = (3 + A(x)^3) / (4 - x).

The programs for A244594, there is no canonical definition to state claims against.
-/

/-! ## A244594.P15544949948352992337

`A026424(A002866(n))-A112936(n)`
-/

namespace A244594.P15544949948352992337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (A002866 n).toNat - A112936 n

end

end A244594.P15544949948352992337

/-! ## A244594.P14502289486089334238

`A333692(A052813(n))+A108707(n+1)`
-/

namespace A244594.P14502289486089334238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333692 (A052813 n).toNat + A108707 (n + 1)

end

end A244594.P14502289486089334238

/-!
# A244595: Prime numbers whose decimal expansion has the same digit sum as its hexadecimal expansion. Only digits 0-9 are allowed in the hex expansion.

The programs for A244595, there is no canonical definition to state claims against.
-/

/-! ## A244595.P14673299192143938196

`∑{p}[A244597(n+1)², #]`
-/

namespace A244595.P14673299192143938196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244597 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A244595.P14673299192143938196

/-! ## A244595.P4022839975457676501

`A244597(A077168(n))`
-/

namespace A244595.P4022839975457676501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244597 (A077168 n).toNat

end

end A244595.P4022839975457676501

/-! ## A244595.P14942000993038167443

`A060653(A244597(n+1))`
-/

namespace A244595.P14942000993038167443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060653 (A244597 (n + 1)).toNat

end

end A244595.P14942000993038167443

