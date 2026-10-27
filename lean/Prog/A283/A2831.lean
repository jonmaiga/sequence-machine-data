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
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A283101: Numbers of A'Campo forests of degree n>2 and co-dimension 3.

The programs for A283101, there is no canonical definition to state claims against.
-/

/-! ## A283101.P4731523961639060374

`A001113(n)*A025439(A239862(n+1))`
-/

namespace A283101.P4731523961639060374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1) * A025439 (A239862 (n + 1)).toNat

end

end A283101.P4731523961639060374

/-!
# A283102: Number of A'Campo forests of degree n and co-dimension 4.

The programs for A283102, there is no canonical definition to state claims against.
-/

/-! ## A283102.P3813415125715818274

`C(4*(n+1), 4)%A179837(C(n², 2)/3)`
-/

namespace A283102.P3813415125715818274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.choose (4 * (n + 1)) 4 : ℤ) (A179837 (SequenceMachineLib.roundAway ((Nat.choose (n ^ 2) 2 : ℚ) / 3)).toNat)

end

end A283102.P3813415125715818274

/-!
# A283103: Number of A'Campo forests of degree n and co-dimension 5.

The programs for A283103, there is no canonical definition to state claims against.
-/

/-! ## A283103.P9600512032789442908

`A093392(∏[∏[n!]])`
-/

namespace A283103.P9600512032789442908
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093392 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A283103.P9600512032789442908

/-!
# A283104: Second differences of Stern's diatomic sequence (A002487).

The programs for A283104, the canonical program `A283104.P9603618085006619344` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283104 has offset 0).

The definition of A283104 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283104.P9603618085006619344

`Δ[Δ[a(n-1)+a(n-2)-2*a(n-2)%a(n-1)]]` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A283104

/-- `Δ[Δ[a(n-1)+a(n-2)-2*a(n-2)%a(n-1)]]` -/
def P9603618085006619344.Spec : Prop :=
  ∀ n, P9603618085006619344.a n = A283104 n

theorem P9603618085006619344.correct : P9603618085006619344.Spec := by
  intro n
  simp only [A283104]

end A283104

/-! ## A283104.P14383517054509168654

`Δ[Δ[A002487(n)]]`
-/

namespace A283104.P14383517054509168654
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283104.P14383517054509168654

namespace A283104

/-- `Δ[Δ[A002487(n)]]` -/
def P14383517054509168654.Spec : Prop :=
  ∀ n, P14383517054509168654.a n = A283104 n

end A283104

/-! ## A283104.P14443096211772149032

`Δ[Δ[A324337(A003188(n))]]`
-/

namespace A283104.P14443096211772149032
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324337 (A003188 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283104.P14443096211772149032

namespace A283104

/-- `Δ[Δ[A324337(A003188(n))]]` -/
def P14443096211772149032.Spec : Prop :=
  ∀ n, P14443096211772149032.a n = A283104 n

end A283104

/-! ## A283104.P5788514240555265407

`Δ[Δ[n-A284013(n)]]`
-/

namespace A283104.P5788514240555265407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A284013 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283104.P5788514240555265407

namespace A283104

/-- `Δ[Δ[n-A284013(n)]]` -/
def P5788514240555265407.Spec : Prop :=
  ∀ n, P5788514240555265407.a n = A283104 n

end A283104

/-! ## A283104.P503215483340160391

`Δ[Δ[A284272(n)+A284271(n)]]`
-/

namespace A283104.P503215483340160391
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284272 n + A284271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283104.P503215483340160391

namespace A283104

/-- `Δ[Δ[A284272(n)+A284271(n)]]` -/
def P503215483340160391.Spec : Prop :=
  ∀ n, P503215483340160391.a n = A283104 n

end A283104

/-! ## A283104.P11197270820769427208

`Δ[Δ[A324338(A233280(n))%(n+1)]]`
-/

namespace A283104.P11197270820769427208
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324338 (A233280 n).toNat) (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283104.P11197270820769427208

namespace A283104

/-- `Δ[Δ[A324338(A233280(n))%(n+1)]]` -/
def P11197270820769427208.Spec : Prop :=
  ∀ n, P11197270820769427208.a n = A283104 n

end A283104

/-! ## A283104.P15112688870290543360

`Δ[A295515(2*(n+1))-A295515(2*n+1)]`
-/

namespace A283104.P15112688870290543360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295515 (2 * (n + 1)) - A295515 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283104.P15112688870290543360

namespace A283104

/-- `Δ[A295515(2*(n+1))-A295515(2*n+1)]` -/
def P15112688870290543360.Spec : Prop :=
  ∀ n, P15112688870290543360.a n = A283104 n

end A283104

/-! ## A283104.P2617703832735334611

`Δ[Δ[A283976(2*n)]]`
-/

namespace A283104.P2617703832735334611
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283104.P2617703832735334611

namespace A283104

/-- `Δ[Δ[A283976(2*n)]]` -/
def P2617703832735334611.Spec : Prop :=
  ∀ n, P2617703832735334611.a n = A283104 n

end A283104

/-! ## A283104.P8011831665809640030

`Δ[Δ[A283977(2*n)]]`
-/

namespace A283104.P8011831665809640030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283977 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283104.P8011831665809640030

namespace A283104

/-- `Δ[Δ[A283977(2*n)]]` -/
def P8011831665809640030.Spec : Prop :=
  ∀ n, P8011831665809640030.a n = A283104 n

end A283104

/-! ## A283104.P13228364190239354075

`Δ[Δ[A288002(2*n+1)]]`
-/

namespace A283104.P13228364190239354075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288002 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283104.P13228364190239354075

namespace A283104

/-- `Δ[Δ[A288002(2*n+1)]]` -/
def P13228364190239354075.Spec : Prop :=
  ∀ n, P13228364190239354075.a n = A283104 n

end A283104

/-! ## A283104.P6932456203218734186

`Δ[Δ[A295515(2*n+1)]]`
-/

namespace A283104.P6932456203218734186
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295515 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283104.P6932456203218734186

namespace A283104

/-- `Δ[Δ[A295515(2*n+1)]]` -/
def P6932456203218734186.Spec : Prop :=
  ∀ n, P6932456203218734186.a n = A283104 n

end A283104

/-! ## A283104.P1893593150296417386

`Δ[Δ[A284556(2*n)+A284556(n)]]`
-/

namespace A283104.P1893593150296417386
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284556 (2 * n) + A284556 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283104.P1893593150296417386

namespace A283104

/-- `Δ[Δ[A284556(2*n)+A284556(n)]]` -/
def P1893593150296417386.Spec : Prop :=
  ∀ n, P1893593150296417386.a n = A283104 n

end A283104

/-! ## A283104.P9845622237243355257

`Δ[Δ[A007306(2*n+1)-A007306(n+1)]]`
-/

namespace A283104.P9845622237243355257
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (2 * n + 1) - A007306 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283104.P9845622237243355257

namespace A283104

/-- `Δ[Δ[A007306(2*n+1)-A007306(n+1)]]` -/
def P9845622237243355257.Spec : Prop :=
  ∀ n, P9845622237243355257.a n = A283104 n

end A283104

/-! ## A283104.P3847615877290572820

`Δ[Δ[A127971(2*n)-A127971(2*n+1)]]`
-/

namespace A283104.P3847615877290572820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127971 (2 * n) - A127971 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283104.P3847615877290572820

namespace A283104

/-- `Δ[Δ[A127971(2*n)-A127971(2*n+1)]]` -/
def P3847615877290572820.Spec : Prop :=
  ∀ n, P3847615877290572820.a n = A283104 n

end A283104

/-!
# A283105: Numbers that are an integer multiple of the mean of their smallest and largest nontrivial divisors.

The programs for A283105, there is no canonical definition to state claims against.
-/

/-! ## A283105.P10601802899966657900

`∩[A286228(n+1), A390250(n+1)]`
-/

namespace A283105.P10601802899966657900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283105.P10601802899966657900

/-! ## A283105.P9768657628280676415

`∩[A319745(n+1), A390250(n+1)]`
-/

namespace A283105.P9768657628280676415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283105.P9768657628280676415

/-! ## A283105.P3627407175546011199

`∩[A357497(n+1), A390250(n+1)]`
-/

namespace A283105.P3627407175546011199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283105.P3627407175546011199

/-! ## A283105.P4568373422098149743

`filter[A390250(n+1), A359429(#)]`
-/

namespace A283105.P4568373422098149743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A283105.P4568373422098149743

/-! ## A283105.P9881810187450375290

`filter[A390250(n+1), A359474(#)]`
-/

namespace A283105.P9881810187450375290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359474 (f1 j).toNat = 1) n)

end

end A283105.P9881810187450375290

/-! ## A283105.P13186644784510398623

`∩[A390250(n+1), A397710(n+1)]`
-/

namespace A283105.P13186644784510398623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283105.P13186644784510398623

/-! ## A283105.P13954186200454173238

`∩[A390250(n+1), A398264(n+1)]`
-/

namespace A283105.P13954186200454173238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283105.P13954186200454173238

/-! ## A283105.P11237182802260626381

`∩[A060687(n+1), A390250(n+1)]`
-/

namespace A283105.P11237182802260626381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283105.P11237182802260626381

/-! ## A283105.P10890354429468070745

`∩[A088382(n+1), A319745(n+1)]`
-/

namespace A283105.P10890354429468070745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283105.P10890354429468070745

/-! ## A283105.P11583809186452433783

`∩[A088382(n+1), A348918(n+1)]`
-/

namespace A283105.P11583809186452433783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283105.P11583809186452433783

/-!
# A283106: Number of distinct envelope areas of the polyominoes of order n.

The programs for A283106, there is no canonical definition to state claims against.
-/

/-! ## A283106.P9176244328781897847

`A225527(n+1)-n`
-/

namespace A283106.P9176244328781897847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225527 (n + 1) - (n : ℤ)

end

end A283106.P9176244328781897847

/-! ## A283106.P324435137634656915

`A227800(n+2)+1-n`
-/

namespace A283106.P324435137634656915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227800 (n + 2) + 1 - (n : ℤ)

end

end A283106.P324435137634656915

/-! ## A283106.P7095726410786459588

`∑[A369793(n+1)]+1-n`
-/

namespace A283106.P7095726410786459588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - (n : ℤ)

end

end A283106.P7095726410786459588

/-! ## A283106.P11337036777673138590

`A000463(A225523(n+1))-n`
-/

namespace A283106.P11337036777673138590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A225523 (n + 1)).toNat - (n : ℤ)

end

end A283106.P11337036777673138590

/-! ## A283106.P11877190584073801405

`A227800(n+2)-A023443(n)`
-/

namespace A283106.P11877190584073801405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227800 (n + 2) - A023443 n

end

end A283106.P11877190584073801405

/-! ## A283106.P10554289862303202043

`∑[A369793(n+1)+A260196(2*n)]`
-/

namespace A283106.P10554289862303202043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369793 (n + 1) + A260196 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283106.P10554289862303202043

/-!
# A283107: Numbers k such that tau(4*(k - 1)) is prime.

The programs for A283107, there is no canonical definition to state claims against.
-/

/-! ## A283107.P12448687125605647604

`2^(p?[2*n+1]-3)+1`
-/

namespace A283107.P12448687125605647604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 3 : ℤ) + 1

end

end A283107.P12448687125605647604

/-! ## A283107.P2453224622527003486

`2^A154115(n+1)+1`
-/

namespace A283107.P2453224622527003486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A154115 (n + 1) : ℤ) + 1

end

end A283107.P2453224622527003486

/-! ## A283107.P17407688057073037128

`2^(A000040(n+2)-3)+1`
-/

namespace A283107.P17407688057073037128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000040 (n + 2) - 3 : ℤ) + 1

end

end A283107.P17407688057073037128

/-! ## A283107.P2547459553063325121

`2^eq[1, A001222(n+3)]+1`
-/

namespace A283107.P2547459553063325121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A283107.P2547459553063325121

/-! ## A283107.P16559804659613306350

`2^eq[2, A000005(n+3)]+1`
-/

namespace A283107.P16559804659613306350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A283107.P16559804659613306350

/-! ## A283107.P3952488714169379644

`2^lt[n+1, A000010(n+3)]+1`
-/

namespace A283107.P3952488714169379644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A283107.P3952488714169379644

/-! ## A283107.P14931626708372712686

`2^lt[n+1, A006530(n+3)]+1`
-/

namespace A283107.P14931626708372712686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A283107.P14931626708372712686

/-! ## A283107.P13828293650060165173

`2^lt[n+1, A020639(n+3)]+1`
-/

namespace A283107.P13828293650060165173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A283107.P13828293650060165173

/-! ## A283107.P10365842540582705662

`A052539(A067076(n+1))`
-/

namespace A283107.P10365842540582705662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052539 (A067076 (n + 1)).toNat

end

end A283107.P10365842540582705662

/-! ## A283107.P4420069229292822757

`A123166(A005097(n+1))`
-/

namespace A283107.P4420069229292822757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123166 (A005097 (n + 1)).toNat

end

end A283107.P4420069229292822757

/-!
# A283108: Number of fixed polyominoes minus number of free polyominoes for order n.

The programs for A283108, there is no canonical definition to state claims against.
-/

/-! ## A283108.P17056202799508287990

`A001168(n)-A000105(n)`
-/

namespace A283108.P17056202799508287990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 n - A000105 n

end

end A283108.P17056202799508287990

/-! ## A283108.P16119005698141949676

`∑[A283110(abs(1-n))]-A000105(n)`
-/

namespace A283108.P16119005698141949676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283110 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000105 n

end

end A283108.P16119005698141949676

/-! ## A283108.P4331155642808697779

`A001168(n)-(A006765(round(acot(n)+n))+1)`
-/

namespace A283108.P4331155642808697779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 n - (A006765 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat + 1)

end

end A283108.P4331155642808697779

/-! ## A283108.P17127940019306626380

`A001168(n)-(A006765(round(sqrt(n²+1)))+1)`
-/

namespace A283108.P17127940019306626380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 n - (A006765 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + 1)

end

end A283108.P17127940019306626380

/-! ## A283108.P14330756967912985720

`A001168(n)+A030228(n)-A000988(n)`
-/

namespace A283108.P14330756967912985720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 n + (A030228 n - A000988 n)

end

end A283108.P14330756967912985720

/-! ## A283108.P8822613922925795062

`A001168(n)-(A030228(n)+A030227(n))`
-/

namespace A283108.P8822613922925795062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 n - (A030228 n + A030227 n)

end

end A283108.P8822613922925795062

/-!
# A283109: Increase in the number of free polyominoes from order n to n+1.

The programs for A283109, there is no canonical definition to state claims against.
-/

/-! ## A283109.P13027449669796306814

`A000105(n+1)-A000105(n)`
-/

namespace A283109.P13027449669796306814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000105 (n + 1) - A000105 n

end

end A283109.P13027449669796306814

/-! ## A283109.P18299931659918522234

`Δ[A000105(n)]`
-/

namespace A283109.P18299931659918522234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000105 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283109.P18299931659918522234

/-! ## A283109.P5307672007295445478

`Δ[A006765(floor(acot(n)+n))]`
-/

namespace A283109.P5307672007295445478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006765 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283109.P5307672007295445478

/-! ## A283109.P12562038118544464014

`Δ[A006765(round(acot(n)+n))]`
-/

namespace A283109.P12562038118544464014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006765 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283109.P12562038118544464014

/-! ## A283109.P484519551253259851

`Δ[A006765(round(sqrt(n²+1)))]`
-/

namespace A283109.P484519551253259851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006765 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283109.P484519551253259851

/-! ## A283109.P13537626137250568350

`abs(Δ[A006765(A028310(n))])`
-/

namespace A283109.P13537626137250568350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006765 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A283109.P13537626137250568350

/-! ## A283109.P12677179666131288697

`Δ[A030228(n)+A030227(n)]`
-/

namespace A283109.P12677179666131288697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030228 n + A030227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283109.P12677179666131288697

/-! ## A283109.P15326128361103904982

`Δ[A000988(n)-A030228(n)]`
-/

namespace A283109.P15326128361103904982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000988 n - A030228 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283109.P15326128361103904982

/-! ## A283109.P2855776369527936730

`A006765(n+1)-A006765(A028310(n))`
-/

namespace A283109.P2855776369527936730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006765 (n + 1) - A006765 (A028310 n).toNat

end

end A283109.P2855776369527936730

/-! ## A283109.P12441860245528371223

`A006765(n+1)-A006765(A233583(n+1))`
-/

namespace A283109.P12441860245528371223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006765 (n + 1) - A006765 (A233583 (n + 1)).toNat

end

end A283109.P12441860245528371223

/-!
# A283110: Increase in the number of fixed polyominoes from order n to order n+1.

The programs for A283110, there is no canonical definition to state claims against.
-/

/-! ## A283110.P4404848437489130727

`A001168(n+1)-A001168(n)`
-/

namespace A283110.P4404848437489130727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 (n + 1) - A001168 n

end

end A283110.P4404848437489130727

/-! ## A283110.P4175746383475644358

`Δ[A001168(n)]`
-/

namespace A283110.P4175746383475644358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283110.P4175746383475644358

/-! ## A283110.P6836542148608594866

`Δ[A048664(A028310(n))/A028310(n)]`
-/

namespace A283110.P6836542148608594866
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048664 (A028310 n).toNat : ℚ) / (A028310 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283110.P6836542148608594866

/-! ## A283110.P2654929859507267034

`record[A001168(A002262(n))]-A001168(n)`
-/

namespace A283110.P2654929859507267034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A001168 n

end

end A283110.P2654929859507267034

/-! ## A283110.P6440534430233406449

`record[A001168(A008611(n))]-A001168(n)`
-/

namespace A283110.P6440534430233406449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A001168 n

end

end A283110.P6440534430233406449

/-! ## A283110.P7763114786919355874

`record[A001168(A008612(n))]-A001168(n)`
-/

namespace A283110.P7763114786919355874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 (A008612 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A001168 n

end

end A283110.P7763114786919355874

/-! ## A283110.P16714187618457515570

`record[A001168(A025581(n))]-A001168(n)`
-/

namespace A283110.P16714187618457515570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 (A025581 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A001168 n

end

end A283110.P16714187618457515570

/-! ## A283110.P11663628831283822103

`record[A001168(A028242(n))]-A001168(n)`
-/

namespace A283110.P11663628831283822103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 (A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A001168 n

end

end A283110.P11663628831283822103

/-! ## A283110.P2529594465586844047

`record[A001168(A103221(n))]-A001168(n)`
-/

namespace A283110.P2529594465586844047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 (A103221 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A001168 n

end

end A283110.P2529594465586844047

/-! ## A283110.P1649828515686655021

`record[A001168(A106249(n))]-A001168(n)`
-/

namespace A283110.P1649828515686655021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 (A106249 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A001168 n

end

end A283110.P1649828515686655021

/-!
# A283111: Number of partitions of 2^n into n parts.

The programs for A283111, there is no canonical definition to state claims against.
-/

/-! ## A283111.P9722894885365470451

`A072233((2^n+4^n)/2+n)`
-/

namespace A283111.P9722894885365470451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (SequenceMachineLib.roundAway ((2 ^ n + 4 ^ n : ℚ) / 2 + (n : ℚ))).toNat

end

end A283111.P9722894885365470451

/-! ## A283111.P12988499676952161713

`A239494(A133641(n+1))`
-/

namespace A283111.P12988499676952161713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239494 (A133641 (n + 1)).toNat

end

end A283111.P12988499676952161713

/-!
# A283115: Number of nonequivalent ways (mod D_3) to place 4 points on an n X n X n triangular grid so that no two of them are on the same row, column or diagonal.

The programs for A283115, there is no canonical definition to state claims against.
-/

/-! ## A283115.P6111629935076590365

`A151851(A108883(n))`
-/

namespace A283115.P6111629935076590365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151851 (A108883 n).toNat

end

end A283115.P6111629935076590365

/-! ## A283115.P17653995729995139473

`A235044(xor(5, A020105(n)))`
-/

namespace A283115.P17653995729995139473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235044 (Int.xor 5 (A020105 n)).toNat

end

end A283115.P17653995729995139473

/-! ## A283115.P16427726409966007919

`A235044(A020105(n)-n)`
-/

namespace A283115.P16427726409966007919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235044 (A020105 n - (n : ℤ)).toNat

end

end A283115.P16427726409966007919

/-! ## A283115.P8736034406429833420

`A165072(gcd(2, n)*A275166(n))`
-/

namespace A283115.P8736034406429833420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165072 ((Nat.gcd 2 n : ℤ) * A275166 n).toNat

end

end A283115.P8736034406429833420

/-!
# A283116: Number of nonequivalent ways (mod D_3) to place 5 points on an n X n X n triangular grid so that no two of them are on the same row, column or diagonal.

The programs for A283116, there is no canonical definition to state claims against.
-/

/-! ## A283116.P11321189255326777183

`A010764(A193983(n+1)+3)`
-/

namespace A283116.P11321189255326777183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010764 (A193983 (n + 1) + 3).toNat

end

end A283116.P11321189255326777183

/-! ## A283116.P4910427484952288072

`A085858(A000757(n))*A355584(n+1)`
-/

namespace A283116.P4910427484952288072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085858 (A000757 n).toNat * A355584 (n + 1)

end

end A283116.P4910427484952288072

/-!
# A283117: Number of nonequivalent ways (mod D_3) to place rooks on an n X n X n triangular grid so that no two of them are on the same row, column or diagonal.

The programs for A283117, there is no canonical definition to state claims against.
-/

/-! ## A283117.P10508636071164943841

`(A289709(n+1)+2*A326611(n+1)+3*2^ceil((n+1)/2))/6`
-/

namespace A283117.P10508636071164943841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A289709 (n + 1) + 2 * A326611 (n + 1) : ℚ) + 3 * (2 : ℚ) ^ (⌈(n + 1 : ℚ) / 2⌉ : ℤ)) / 6

end

end A283117.P10508636071164943841

/-! ## A283117.P13267777547026482346

`A225545(A352279(n)+A081562(n))`
-/

namespace A283117.P13267777547026482346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225545 (A352279 n + A081562 n).toNat

end

end A283117.P13267777547026482346

/-! ## A283117.P5031069821246701126

`A172471(4*A136722(n))`
-/

namespace A283117.P5031069821246701126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (4 * A136722 n).toNat

end

end A283117.P5031069821246701126

/-!
# A283118: a(n) = sigma(5*n).

The programs for A283118, the canonical program `A283118.P7943081042999744` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283118 has offset 1).

The definition of A283118 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(5*(n+1))` (program `A283118.P7943081042999744`, by `A283118.P7943081042999744.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A283118.P7943081042999744

`A000203(5*(n+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A283118

/-- `A000203(5*(n+1))` -/
def P7943081042999744.Spec : Prop :=
  ∀ n, P7943081042999744.a n = A283118 (n + 1)

theorem P7943081042999744.correct : P7943081042999744.Spec := by
  intro n
  simp only [A283118, Nat.add_sub_cancel]

end A283118

/-! ## A283118.P8745987215766360218

`∑{d}[5*(n+1), #]`
-/

namespace A283118.P8745987215766360218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A283118.P8745987215766360218

namespace A283118

/-- `∑{d}[5*(n+1), #]` -/
def P8745987215766360218.Spec : Prop :=
  ∀ n, (P8745987215766360218.a n : ℤ) = A283118 (n + 1)

end A283118

/-! ## A283118.P16110938736115850426

`A274535(n+1)+A116073(n+1)`
-/

namespace A283118.P16110938736115850426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274535 (n + 1) + A116073 (n + 1)

end

end A283118.P16110938736115850426

namespace A283118

/-- `A274535(n+1)+A116073(n+1)` -/
def P16110938736115850426.Spec : Prop :=
  ∀ n, P16110938736115850426.a n = A283118 (n + 1)

end A283118

/-! ## A283118.P17413985418486737523

`A000027(∑{d}[A016957(n)-n+1, #])`
-/

namespace A283118.P17413985418486737523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 n - (n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A283118.P17413985418486737523

namespace A283118

/-- `A000027(∑{d}[A016957(n)-n+1, #])` -/
def P17413985418486737523.Spec : Prop :=
  ∀ n, P17413985418486737523.a n = A283118 (n + 1)

end A283118

/-! ## A283118.P10822066059830835731

`A000027(∑{d}[A008587(n+1), #])`
-/

namespace A283118.P10822066059830835731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A283118.P10822066059830835731

namespace A283118

/-- `A000027(∑{d}[A008587(n+1), #])` -/
def P10822066059830835731.Spec : Prop :=
  ∀ n, P10822066059830835731.a n = A283118 (n + 1)

end A283118

/-! ## A283118.P16408030968488760421

`∑{d}[A016897(n)+1, #]+val(A157532(n+4), 43)`
-/

namespace A283118.P16408030968488760421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d + SequenceMachineLib.valuation (A157532 (n + 4)).toNat 43

end

end A283118.P16408030968488760421

namespace A283118

/-- `∑{d}[A016897(n)+1, #]+val(A157532(n+4), 43)` -/
def P16408030968488760421.Spec : Prop :=
  ∀ n, (P16408030968488760421.a n : ℤ) = A283118 (n + 1)

end A283118

/-! ## A283118.P13140384049771902047

`A242962(5*(n+1))`
-/

namespace A283118.P13140384049771902047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242962 (5 * (n + 1))

end

end A283118.P13140384049771902047

namespace A283118

/-- `A242962(5*(n+1))` -/
def P13140384049771902047.Spec : Prop :=
  ∀ n, P13140384049771902047.a n = A283118 (n + 1)

end A283118

/-! ## A283118.P4484182964390748458

`sqrt(A072861(5*(n+1)))`
-/

namespace A283118.P4484182964390748458
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (5 * (n + 1)) : ℝ)

end

end A283118.P4484182964390748458

namespace A283118

/-- `sqrt(A072861(5*(n+1)))` -/
def P4484182964390748458.Spec : Prop :=
  ∀ n, P4484182964390748458.a n = (A283118 (n + 1) : ℝ)

end A283118

/-! ## A283118.P11076830960850514694

`A245092(9*(n+1)+n)`
-/

namespace A283118.P11076830960850514694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (9 * (n + 1) + n)

end

end A283118.P11076830960850514694

namespace A283118

/-- `A245092(9*(n+1)+n)` -/
def P11076830960850514694.Spec : Prop :=
  ∀ n, P11076830960850514694.a n = A283118 (n + 1)

end A283118

/-! ## A283118.P4080775807560146443

`A039653(3*n+2*n+5)+1`
-/

namespace A283118.P4080775807560146443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (3 * n + (2 * n + 5)) + 1

end

end A283118.P4080775807560146443

namespace A283118

/-- `A039653(3*n+2*n+5)+1` -/
def P4080775807560146443.Spec : Prop :=
  ∀ n, P4080775807560146443.a n = A283118 (n + 1)

end A283118

/-! ## A283118.P18031841278766334834

`A326065(A008592(n+1))`
-/

namespace A283118.P18031841278766334834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326065 (A008592 (n + 1)).toNat

end

end A283118.P18031841278766334834

namespace A283118

/-- `A326065(A008592(n+1))` -/
def P18031841278766334834.Spec : Prop :=
  ∀ n, P18031841278766334834.a n = A283118 (n + 1)

end A283118

/-! ## A283118.P15174666473101830678

`A354103(3*A267099(n+1))`
-/

namespace A283118.P15174666473101830678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354103 (3 * A267099 (n + 1)).toNat

end

end A283118.P15174666473101830678

namespace A283118

/-- `A354103(3*A267099(n+1))` -/
def P15174666473101830678.Spec : Prop :=
  ∀ n, P15174666473101830678.a n = A283118 (n + 1)

end A283118

/-! ## A283118.P18356038606361847199

`A319526(A374005(n+1))`
-/

namespace A283118.P18356038606361847199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319526 (A374005 (n + 1)).toNat

end

end A283118.P18356038606361847199

namespace A283118

/-- `A319526(A374005(n+1))` -/
def P18356038606361847199.Spec : Prop :=
  ∀ n, P18356038606361847199.a n = A283118 (n + 1)

end A283118

/-!
# A283119: Expansion of exp( Sum_{n>=1} sigma(6*n)*x^n/n ) in powers of x.

The programs for A283119, there is no canonical definition to state claims against.
-/

/-! ## A283119.P3855252862027788694

`A101402(A016993(n)*A261519(n))`
-/

namespace A283119.P3855252862027788694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101402 (A016993 n * A261519 n).toNat

end

end A283119.P3855252862027788694

/-!
# A283121: Expansion of exp( Sum_{n>=1} sigma(9*n)*x^n/n ) in powers of x.

The programs for A283121, there is no canonical definition to state claims against.
-/

/-! ## A283121.P15684343521904191823

`A028310(A002409(n)-A060446(n))`
-/

namespace A283121.P15684343521904191823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A002409 n - A060446 n).toNat

end

end A283121.P15684343521904191823

/-!
# A283122: a(n) = sigma(8*n).

The programs for A283122, the canonical program `A283122.P15983487600107587987` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283122 has offset 1).

The definition of A283122 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(8*(n+1))` (program `A283122.P15983487600107587987`, by `A283122.P15983487600107587987.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A283122.P15983487600107587987

`A000203(8*(n+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A283122

/-- `A000203(8*(n+1))` -/
def P15983487600107587987.Spec : Prop :=
  ∀ n, P15983487600107587987.a n = A283122 (n + 1)

theorem P15983487600107587987.correct : P15983487600107587987.Spec := by
  intro n
  simp only [A283122, Nat.add_sub_cancel]

end A283122

/-! ## A283122.P931421692389123662

`∑{d}[8*(n+1), #]`
-/

namespace A283122.P931421692389123662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A283122.P931421692389123662

namespace A283122

/-- `∑{d}[8*(n+1), #]` -/
def P931421692389123662.Spec : Prop :=
  ∀ n, (P931421692389123662.a n : ℤ) = A283122 (n + 1)

end A283122

/-! ## A283122.P8438713926011594043

`A000203(A022144(n+1))+n%A020985(n)`
-/

namespace A283122.P8438713926011594043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A022144 (n + 1)).toNat + Int.tmod (n : ℤ) (A020985 n)

end

end A283122.P8438713926011594043

namespace A283122

/-- `A000203(A022144(n+1))+n%A020985(n)` -/
def P8438713926011594043.Spec : Prop :=
  ∀ n, P8438713926011594043.a n = A283122 (n + 1)

end A283122

/-! ## A283122.P17484325767006462066

`A000203(A022144(n+1))+A000007(n+2)`
-/

namespace A283122.P17484325767006462066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A022144 (n + 1)).toNat + A000007 (n + 2)

end

end A283122.P17484325767006462066

namespace A283122

/-- `A000203(A022144(n+1))+A000007(n+2)` -/
def P17484325767006462066.Spec : Prop :=
  ∀ n, P17484325767006462066.a n = A283122 (n + 1)

end A283122

/-! ## A283122.P4945072243045559927

`A193553(2*(n+1))`
-/

namespace A283122.P4945072243045559927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193553 (2 * (n + 1))

end

end A283122.P4945072243045559927

namespace A283122

/-- `A193553(2*(n+1))` -/
def P4945072243045559927.Spec : Prop :=
  ∀ n, P4945072243045559927.a n = A283122 (n + 1)

end A283122

/-! ## A283122.P595424014309980946

`A062731(4*(n+1))`
-/

namespace A283122.P595424014309980946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062731 (4 * (n + 1))

end

end A283122.P595424014309980946

namespace A283122

/-- `A062731(4*(n+1))` -/
def P595424014309980946.Spec : Prop :=
  ∀ n, P595424014309980946.a n = A283122 (n + 1)

end A283122

/-! ## A283122.P9840955206071061312

`A319527(2*(n+1))-A274536(n+1)`
-/

namespace A283122.P9840955206071061312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319527 (2 * (n + 1)) - A274536 (n + 1)

end

end A283122.P9840955206071061312

namespace A283122

/-- `A319527(2*(n+1))-A274536(n+1)` -/
def P9840955206071061312.Spec : Prop :=
  ∀ n, P9840955206071061312.a n = A283122 (n + 1)

end A283122

/-! ## A283122.P2269691680951794860

`A323403(8*(n+1))`
-/

namespace A283122.P2269691680951794860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323403 (8 * (n + 1))

end

end A283122.P2269691680951794860

namespace A283122

/-- `A323403(8*(n+1))` -/
def P2269691680951794860.Spec : Prop :=
  ∀ n, P2269691680951794860.a n = A283122 (n + 1)

end A283122

/-! ## A283122.P8987738032669369626

`A242962(8*(n+1))`
-/

namespace A283122.P8987738032669369626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242962 (8 * (n + 1))

end

end A283122.P8987738032669369626

namespace A283122

/-- `A242962(8*(n+1))` -/
def P8987738032669369626.Spec : Prop :=
  ∀ n, P8987738032669369626.a n = A283122 (n + 1)

end A283122

/-! ## A283122.P10569481412903711682

`A245092(A125169(n))`
-/

namespace A283122.P10569481412903711682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A125169 n).toNat

end

end A283122.P10569481412903711682

namespace A283122

/-- `A245092(A125169(n))` -/
def P10569481412903711682.Spec : Prop :=
  ∀ n, P10569481412903711682.a n = A283122 (n + 1)

end A283122

/-! ## A283122.P8469883337946395832

`A245092(A004771(2*n+1))`
-/

namespace A283122.P8469883337946395832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A004771 (2 * n + 1)).toNat

end

end A283122.P8469883337946395832

namespace A283122

/-- `A245092(A004771(2*n+1))` -/
def P8469883337946395832.Spec : Prop :=
  ∀ n, P8469883337946395832.a n = A283122 (n + 1)

end A283122

/-! ## A283122.P4523624527270135594

`A326065(A008598(n+1))`
-/

namespace A283122.P4523624527270135594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326065 (A008598 (n + 1)).toNat

end

end A283122.P4523624527270135594

namespace A283122

/-- `A326065(A008598(n+1))` -/
def P4523624527270135594.Spec : Prop :=
  ∀ n, P4523624527270135594.a n = A283122 (n + 1)

end A283122

/-! ## A283122.P9271505528274615262

`A319526(A374009(n+1))`
-/

namespace A283122.P9271505528274615262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319526 (A374009 (n + 1)).toNat

end

end A283122.P9271505528274615262

namespace A283122

/-- `A319526(A374009(n+1))` -/
def P9271505528274615262.Spec : Prop :=
  ∀ n, P9271505528274615262.a n = A283122 (n + 1)

end A283122

/-!
# A283123: a(n) = sigma(9*n).

The programs for A283123, the canonical program `A283123.P9327775811291743870` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283123 has offset 1).

The definition of A283123 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(9*(n+1))` (program `A283123.P9327775811291743870`, by `A283123.P9327775811291743870.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A283123.P9327775811291743870

`A000203(9*(n+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A283123

/-- `A000203(9*(n+1))` -/
def P9327775811291743870.Spec : Prop :=
  ∀ n, P9327775811291743870.a n = A283123 (n + 1)

theorem P9327775811291743870.correct : P9327775811291743870.Spec := by
  intro n
  simp only [A283123, Nat.add_sub_cancel]

end A283123

/-! ## A283123.P4882814482696448725

`∑{d}[9*(n+1), #]`
-/

namespace A283123.P4882814482696448725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A283123.P4882814482696448725

namespace A283123

/-- `∑{d}[9*(n+1), #]` -/
def P4882814482696448725.Spec : Prop :=
  ∀ n, (P4882814482696448725.a n : ℤ) = A283123 (n + 1)

end A283123

/-! ## A283123.P10920326877015029277

`A000203(A008591(n+1))%A017474(n)`
-/

namespace A283123.P10920326877015029277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (A008591 (n + 1)).toNat) (A017474 n)

end

end A283123.P10920326877015029277

namespace A283123

/-- `A000203(A008591(n+1))%A017474(n)` -/
def P10920326877015029277.Spec : Prop :=
  ∀ n, P10920326877015029277.a n = A283123 (n + 1)

end A283123

/-! ## A283123.P9118813375654572652

`A144613(3*(n+1))`
-/

namespace A283123.P9118813375654572652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144613 (3 * (n + 1))

end

end A283123.P9118813375654572652

namespace A283123

/-- `A144613(3*(n+1))` -/
def P9118813375654572652.Spec : Prop :=
  ∀ n, P9118813375654572652.a n = A283123 (n + 1)

end A283123

/-! ## A283123.P335084088600975986

`A319528(3*(n+1))/2-A272027(n+1)`
-/

namespace A283123.P335084088600975986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319528 (3 * (n + 1)) : ℚ) / 2 - (A272027 (n + 1) : ℚ)

end

end A283123.P335084088600975986

namespace A283123

/-- `A319528(3*(n+1))/2-A272027(n+1)` -/
def P335084088600975986.Spec : Prop :=
  ∀ n, P335084088600975986.a n = (A283123 (n + 1) : ℚ)

end A283123

/-! ## A283123.P11976772716281463150

`A074400(9*(n+1))/2`
-/

namespace A283123.P11976772716281463150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (9 * (n + 1)) : ℚ) / 2

end

end A283123.P11976772716281463150

namespace A283123

/-- `A074400(9*(n+1))/2` -/
def P11976772716281463150.Spec : Prop :=
  ∀ n, P11976772716281463150.a n = (A283123 (n + 1) : ℚ)

theorem P11976772716281463150.correct : P11976772716281463150.Spec := by
  intro n
  simp only [A283123, Nat.add_sub_cancel, A283123.P11976772716281463150.a, A283123.P9327775811291743870.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A074400, A074400.P16312391460013478761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A283123

/-! ## A283123.P16018528906109727877

`A242962(9*(n+1))`
-/

namespace A283123.P16018528906109727877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242962 (9 * (n + 1))

end

end A283123.P16018528906109727877

namespace A283123

/-- `A242962(9*(n+1))` -/
def P16018528906109727877.Spec : Prop :=
  ∀ n, P16018528906109727877.a n = A283123 (n + 1)

end A283123

/-! ## A283123.P2451076796339335669

`A088580(9*(n+1))-1`
-/

namespace A283123.P2451076796339335669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (9 * (n + 1)) - 1

end

end A283123.P2451076796339335669

namespace A283123

/-- `A088580(9*(n+1))-1` -/
def P2451076796339335669.Spec : Prop :=
  ∀ n, P2451076796339335669.a n = A283123 (n + 1)

theorem P2451076796339335669.correct : P2451076796339335669.Spec := by
  intro n
  simp only [A283123, Nat.add_sub_cancel, A283123.P2451076796339335669.a, A283123.P9327775811291743870.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A088580, A088580.P3089093194242277422.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A283123

/-! ## A283123.P9774546309336411158

`A039653(3*3*(n+1))+1`
-/

namespace A283123.P9774546309336411158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (3 * (3 * (n + 1))) + 1

end

end A283123.P9774546309336411158

namespace A283123

/-- `A039653(3*3*(n+1))+1` -/
def P9774546309336411158.Spec : Prop :=
  ∀ n, P9774546309336411158.a n = A283123 (n + 1)

end A283123

/-! ## A283123.P15265964184323658121

`A245092(A239129(n+1))`
-/

namespace A283123.P15265964184323658121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A239129 (n + 1)).toNat

end

end A283123.P15265964184323658121

namespace A283123

/-- `A245092(A239129(n+1))` -/
def P15265964184323658121.Spec : Prop :=
  ∀ n, P15265964184323658121.a n = A283123 (n + 1)

end A283123

/-! ## A283123.P16802909277633756562

`A245092(A016969(3*n+1)+6)`
-/

namespace A283123.P16802909277633756562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A016969 (3 * n + 1) + 6).toNat

end

end A283123.P16802909277633756562

namespace A283123

/-- `A245092(A016969(3*n+1)+6)` -/
def P16802909277633756562.Spec : Prop :=
  ∀ n, P16802909277633756562.a n = A283123 (n + 1)

end A283123

/-! ## A283123.P8517666314623951632

`A245092(A245092(Δ[(3*n+1)²]+1)+1)`
-/

namespace A283123.P8517666314623951632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat + 1).toNat

end

end A283123.P8517666314623951632

namespace A283123

/-- `A245092(A245092(Δ[(3*n+1)²]+1)+1)` -/
def P8517666314623951632.Spec : Prop :=
  ∀ n, P8517666314623951632.a n = A283123 (n + 1)

end A283123

/-! ## A283123.P15144281883681118654

`A008591(A008486(n+1))-A033885(A008591(n+1))`
-/

namespace A283123.P15144281883681118654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (A008486 (n + 1)).toNat - A033885 (A008591 (n + 1)).toNat

end

end A283123.P15144281883681118654

namespace A283123

/-- `A008591(A008486(n+1))-A033885(A008591(n+1))` -/
def P15144281883681118654.Spec : Prop :=
  ∀ n, P15144281883681118654.a n = A283123 (n + 1)

end A283123

/-! ## A283123.P6977202945763874197

`A008591(A008585(n+1))-A033885(A008591(n+1))`
-/

namespace A283123.P6977202945763874197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (A008585 (n + 1)).toNat - A033885 (A008591 (n + 1)).toNat

end

end A283123.P6977202945763874197

namespace A283123

/-- `A008591(A008585(n+1))-A033885(A008591(n+1))` -/
def P6977202945763874197.Spec : Prop :=
  ∀ n, P6977202945763874197.a n = A283123 (n + 1)

end A283123

/-! ## A283123.P10802090287173074094

`A326065(A008600(n+1))`
-/

namespace A283123.P10802090287173074094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326065 (A008600 (n + 1)).toNat

end

end A283123.P10802090287173074094

namespace A283123

/-- `A326065(A008600(n+1))` -/
def P10802090287173074094.Spec : Prop :=
  ∀ n, P10802090287173074094.a n = A283123 (n + 1)

end A283123

/-! ## A283123.P16556379429247125148

`A326065(A152053(2*n+1)/2)`
-/

namespace A283123.P16556379429247125148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326065 (SequenceMachineLib.roundAway ((A152053 (2 * n + 1) : ℚ) / 2)).toNat

end

end A283123.P16556379429247125148

namespace A283123

/-- `A326065(A152053(2*n+1)/2)` -/
def P16556379429247125148.Spec : Prop :=
  ∀ n, P16556379429247125148.a n = A283123 (n + 1)

end A283123

/-! ## A283123.P7037226142793555959

`A326065(A152053(n))`
-/

namespace A283123.P7037226142793555959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326065 (A152053 n).toNat

end

end A283123.P7037226142793555959

namespace A283123

/-- `A326065(A152053(n))` -/
def P7037226142793555959.Spec : Prop :=
  ∀ n, P7037226142793555959.a n = A283123 (n + 1)

end A283123

/-! ## A283123.P5056162792024177127

`A319526(A374010(n+1))`
-/

namespace A283123.P5056162792024177127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319526 (A374010 (n + 1)).toNat

end

end A283123.P5056162792024177127

namespace A283123

/-- `A319526(A374010(n+1))` -/
def P5056162792024177127.Spec : Prop :=
  ∀ n, P5056162792024177127.a n = A283123 (n + 1)

end A283123

/-!
# A283124: Number of nX2 0..1 arrays with no 1 equal to more than two of its horizontal and vertical neighbors.

The programs for A283124, the canonical program `A283124.P16528086512649912892` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283124 has offset 1).

The definition of A283124 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 177 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283124.P16528086512649912892

`3*a(n-1)+2*a(n-2)+2*a(n-3)-a(n-4)-a(n-5)` with `a(0)=4, a(1)=16, a(2)=57, a(3)=209, a(4)=768`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A283124

/-- `3*a(n-1)+2*a(n-2)+2*a(n-3)-a(n-4)-a(n-5)` -/
def P16528086512649912892.Spec : Prop :=
  ∀ n, P16528086512649912892.a n = A283124 (n + 1)

theorem P16528086512649912892.correct : P16528086512649912892.Spec := by
  intro n
  simp only [A283124, Nat.add_sub_cancel]

end A283124

/-! ## A283124.P10059572163105160854

`A283130(∑[n+1]+2)`
-/

namespace A283124.P10059572163105160854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283130 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A283124.P10059572163105160854

namespace A283124

/-- `A283130(∑[n+1]+2)` -/
def P10059572163105160854.Spec : Prop :=
  ∀ n, P10059572163105160854.a n = A283124 (n + 1)

end A283124

/-! ## A283124.P14275152033849414778

`A295716(∑[n+1]+2)`
-/

namespace A283124.P14275152033849414778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295716 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A283124.P14275152033849414778

namespace A283124

/-- `A295716(∑[n+1]+2)` -/
def P14275152033849414778.Spec : Prop :=
  ∀ n, P14275152033849414778.a n = A283124 (n + 1)

end A283124

/-! ## A283124.P13589296712237460806

`record[A010054(n)*A295716(n+2)]`
-/

namespace A283124.P13589296712237460806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A295716 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283124.P13589296712237460806

namespace A283124

/-- `record[A010054(n)*A295716(n+2)]` -/
def P13589296712237460806.Spec : Prop :=
  ∀ n, P13589296712237460806.a n = A283124 (n + 1)

end A283124

/-! ## A283124.P11610573765917680938

`A283691(∑[n+2])`
-/

namespace A283124.P11610573765917680938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283691 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A283124.P11610573765917680938

namespace A283124

/-- `A283691(∑[n+2])` -/
def P11610573765917680938.Spec : Prop :=
  ∀ n, P11610573765917680938.a n = A283124 (n + 1)

end A283124

/-!
# A283125: Number of nX3 0..1 arrays with no 1 equal to more than two of its horizontal and vertical neighbors.

The programs for A283125, there is no canonical definition to state claims against.
-/

/-! ## A283125.P2000427984986652061

`A283130(∑[n+2]+4)`
-/

namespace A283125.P2000427984986652061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283130 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A283125.P2000427984986652061

/-! ## A283125.P17169442980296035994

`A283130(A167614(n+1))%A013715(n)`
-/

namespace A283125.P17169442980296035994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283130 (A167614 (n + 1)).toNat) (A013715 n)

end

end A283125.P17169442980296035994

/-! ## A283125.P18224358139543111603

`lcm(A131561(n), A283130(A167614(n+1)))`
-/

namespace A283125.P18224358139543111603
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A131561 n) (A283130 (A167614 (n + 1)).toNat)

end

end A283125.P18224358139543111603

/-! ## A283125.P16033562912693031857

`A082586(n+1)*A283130(A167614(n+1))`
-/

namespace A283125.P16033562912693031857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082586 (n + 1) * A283130 (A167614 (n + 1)).toNat

end

end A283125.P16033562912693031857

/-! ## A283125.P1491351383813881407

`lcm(A152848(n), A283130(A034856(n+2)))`
-/

namespace A283125.P1491351383813881407
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A152848 n) (A283130 (A034856 (n + 2)).toNat)

end

end A283125.P1491351383813881407

/-!
# A283126: Number of nX4 0..1 arrays with no 1 equal to more than two of its horizontal and vertical neighbors.

The programs for A283126, there is no canonical definition to state claims against.
-/

/-! ## A283126.P13430232665940481208

`A283130(A374004(n+1))`
-/

namespace A283126.P13430232665940481208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283130 (A374004 (n + 1)).toNat

end

end A283126.P13430232665940481208

/-! ## A283126.P4978312091503828316

`A283130(A167614(n+2)+1)`
-/

namespace A283126.P4978312091503828316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283130 (A167614 (n + 2) + 1).toNat

end

end A283126.P4978312091503828316

/-! ## A283126.P4920933682264348077

`A283130(Δ[A023545(n+1)-n²])`
-/

namespace A283126.P4920933682264348077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283130 (f1 (n + 1) - f1 n).toNat

end

end A283126.P4920933682264348077

/-! ## A283126.P10699455938178146015

`A283130(A141214(n+1))`
-/

namespace A283126.P10699455938178146015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283130 (A141214 (n + 1)).toNat

end

end A283126.P10699455938178146015

/-! ## A283126.P8484708036661493190

`A283130(A027379(n+2))`
-/

namespace A283126.P8484708036661493190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283130 (A027379 (n + 2)).toNat

end

end A283126.P8484708036661493190

/-!
# A283127: Number of nX5 0..1 arrays with no 1 equal to more than two of its horizontal and vertical neighbors.

The programs for A283127, there is no canonical definition to state claims against.
-/

/-! ## A283127.P17191783242117449112

`A283130(A374005(n+1))`
-/

namespace A283127.P17191783242117449112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283130 (A374005 (n + 1)).toNat

end

end A283127.P17191783242117449112

/-! ## A283127.P2043990612772077010

`A283130(A167499(n+3))`
-/

namespace A283127.P2043990612772077010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283130 (A167499 (n + 3)).toNat

end

end A283127.P2043990612772077010

/-! ## A283127.P14457251658983501477

`A283130(A055998(n+2)+8)`
-/

namespace A283127.P14457251658983501477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283130 (A055998 (n + 2) + 8).toNat

end

end A283127.P14457251658983501477

/-! ## A283127.P6039547775192410977

`A283130(A046691(n+3))`
-/

namespace A283127.P6039547775192410977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283130 (A046691 (n + 3)).toNat

end

end A283127.P6039547775192410977

/-! ## A283127.P15554456184694196422

`A283130(Δ[A023545(n+1)])`
-/

namespace A283127.P15554456184694196422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283130 (f1 (n + 1) - f1 n).toNat

end

end A283127.P15554456184694196422

/-!
# A283128: Number of nX6 0..1 arrays with no 1 equal to more than two of its horizontal and vertical neighbors.

The programs for A283128, there is no canonical definition to state claims against.
-/

/-! ## A283128.P14366122269214127407

`A283130(A374007(n+1))`
-/

namespace A283128.P14366122269214127407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283130 (A374007 (n + 1)).toNat

end

end A283128.P14366122269214127407

/-! ## A283128.P10877431658651117093

`A283130(eq[7, A131818(n+1)])`
-/

namespace A283128.P10877431658651117093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283130 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283128.P10877431658651117093

/-! ## A283128.P17675256892257384125

`A283130(A052905(n+3))`
-/

namespace A283128.P17675256892257384125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283130 (A052905 (n + 3)).toNat

end

end A283128.P17675256892257384125

/-! ## A283128.P9104763955649702258

`A283130(eq[3, A219347(n)])`
-/

namespace A283128.P9104763955649702258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283130 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283128.P9104763955649702258

/-! ## A283128.P7324705111626084307

`A283130(eq[5, A193592(n)])`
-/

namespace A283128.P7324705111626084307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283130 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283128.P7324705111626084307

/-!
# A283129: Number of nX7 0..1 arrays with no 1 equal to more than two of its horizontal and vertical neighbors.

The programs for A283129, there is no canonical definition to state claims against.
-/

/-! ## A283129.P6830593687059133689

`A283130(A374008(n+1))`
-/

namespace A283129.P6830593687059133689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283130 (A374008 (n + 1)).toNat

end

end A283129.P6830593687059133689

/-! ## A283129.P2946947453415200562

`A283130(eq[8, A131818(n+1)])`
-/

namespace A283129.P2946947453415200562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283130 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283129.P2946947453415200562

/-! ## A283129.P7272717893679170827

`A283130(A000124(n+7)-(n+1))`
-/

namespace A283129.P7272717893679170827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283130 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A283129.P7272717893679170827

/-! ## A283129.P8851304732712629311

`A283130(eq[4, A219347(n)])`
-/

namespace A283129.P8851304732712629311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283130 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283129.P8851304732712629311

/-! ## A283129.P5075534400795120326

`A283130(eq[6, A193592(n)])`
-/

namespace A283129.P5075534400795120326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283130 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283129.P5075534400795120326

/-!
# A283130: T(n,k)=Number of nXk 0..1 arrays with no 1 equal to more than two of its horizontal and vertical neighbors.

The programs for A283130, there is no canonical definition to state claims against.
-/

/-! ## A283130.P14047884815774024434

`A295716(n+1)-A367868(A217153(n+1))`
-/

namespace A283130.P14047884815774024434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295716 (n + 1) - A367868 (A217153 (n + 1)).toNat

end

end A283130.P14047884815774024434

/-! ## A283130.P15374754558758970745

`A295716(A084193(∑[n]))`
-/

namespace A283130.P15374754558758970745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295716 (A084193 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A283130.P15374754558758970745

/-! ## A283130.P3228179064251623015

`A115060(A295716(n+1))`
-/

namespace A283130.P3228179064251623015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115060 (A295716 (n + 1)).toNat

end

end A283130.P3228179064251623015

/-! ## A283130.P9203588302791538249

`A295716(A004896(n+2))`
-/

namespace A283130.P9203588302791538249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295716 (A004896 (n + 2)).toNat

end

end A283130.P9203588302791538249

/-! ## A283130.P5714727448571465040

`A295716(A004907(n+2))`
-/

namespace A283130.P5714727448571465040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295716 (A004907 (n + 2)).toNat

end

end A283130.P5714727448571465040

/-!
# A283131: A different representation (1 mapped to 1, 2 mapped to -1) of the Linus sequence (A006345): a(n) "breaks the pattern" by avoiding the longest doubled suffix.

The programs for A283131, there is no canonical definition to state claims against.
-/

/-! ## A283131.P7004668052777836654

`1-2*A157238(n+1)`
-/

namespace A283131.P7004668052777836654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A157238 (n + 1)

end

end A283131.P7004668052777836654

/-! ## A283131.P7213316276563676176

`3-2*A006345(n+1)`
-/

namespace A283131.P7213316276563676176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - 2 * A006345 (n + 1)

end

end A283131.P7213316276563676176

/-! ## A283131.P7231074507545099544

`-(-1)^A006345(n+1)`
-/

namespace A283131.P7231074507545099544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((-1 : ℚ) ^ (A006345 (n + 1) : ℤ))

end

end A283131.P7231074507545099544

/-! ## A283131.P6519952084463333523

`2-(A157238(n+1)+A006345(n+1))`
-/

namespace A283131.P6519952084463333523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A157238 (n + 1) + A006345 (n + 1))

end

end A283131.P6519952084463333523

/-! ## A283131.P7574514259883658832

`A280193(A006345(n+1)-gcd(n, n+1))`
-/

namespace A283131.P7574514259883658832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A006345 (n + 1) - (Nat.gcd n (n + 1) : ℤ)).toNat

end

end A283131.P7574514259883658832

/-! ## A283131.P4660653912029680248

`A286546(ceil(A006345(n+1)+1/(n+1)))`
-/

namespace A283131.P4660653912029680248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286546 ⌈(A006345 (n + 1) : ℚ) + 1 / (n + 1 : ℚ)⌉.toNat

end

end A283131.P4660653912029680248

/-! ## A283131.P7451881298060090607

`A008683(A027379((A006345(n+1)+n)%(n+1)))`
-/

namespace A283131.P7451881298060090607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A027379 (Int.tmod (A006345 (n + 1) + (n : ℤ)) (n + 1 : ℤ)).toNat).toNat

end

end A283131.P7451881298060090607

/-! ## A283131.P11332125317193855689

`A157239(and(A157238(n+1), A157241(n)))`
-/

namespace A283131.P11332125317193855689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157239 (Int.land (A157238 (n + 1)) (A157241 n)).toNat

end

end A283131.P11332125317193855689

/-! ## A283131.P16067228562651146638

`A157239(and(A157238(n+1), A157240(n)))`
-/

namespace A283131.P16067228562651146638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157239 (Int.land (A157238 (n + 1)) (A157240 n)).toNat

end

end A283131.P16067228562651146638

/-!
# A283132: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 581", based on the 5-celled von Neumann neighborhood.

The programs for A283132, there is no canonical definition to state claims against.
-/

/-! ## A283132.P3382877608731093428

`A007088(A283134(n))`
-/

namespace A283132.P3382877608731093428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283134 n).toNat

end

end A283132.P3382877608731093428

/-! ## A283132.P12545072326291574943

`A185544(2*A283134(n))`
-/

namespace A283132.P12545072326291574943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283134 n).toNat

end

end A283132.P12545072326291574943

/-! ## A283132.P1827421191501047168

`xor(A278344(n), A333487(A024737(n+1)))`
-/

namespace A283132.P1827421191501047168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A278344 n) (A333487 (A024737 (n + 1)).toNat)

end

end A283132.P1827421191501047168

/-!
# A283133: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 581", based on the 5-celled von Neumann neighborhood.

The programs for A283133, there is no canonical definition to state claims against.
-/

/-! ## A283133.P1145685028731076700

`A007088(A283135(n))`
-/

namespace A283133.P1145685028731076700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283135 n).toNat

end

end A283133.P1145685028731076700

/-! ## A283133.P7078591242547196822

`A305989(A283134(n))`
-/

namespace A283133.P7078591242547196822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A283134 n).toNat

end

end A283133.P7078591242547196822

/-! ## A283133.P11131257281510758662

`A185544(2*A283135(n))`
-/

namespace A283133.P11131257281510758662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283135 n).toNat

end

end A283133.P11131257281510758662

/-! ## A283133.P5524590078864464502

`A185544(lcm(2, A283135(n)))`
-/

namespace A283133.P5524590078864464502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A283135 n))

end

end A283133.P5524590078864464502

/-!
# A283134: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 581", based on the 5-celled von Neumann neighborhood.

The programs for A283134, there is no canonical definition to state claims against.
-/

/-! ## A283134.P9475784079252757259

`A283216(n)-A356201(A075208(n+1))`
-/

namespace A283134.P9475784079252757259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283216 n - A356201 (A075208 (n + 1)).toNat

end

end A283134.P9475784079252757259

/-! ## A283134.P7913142317685632817

`A283293(n)-A356201(A075208(n+1))`
-/

namespace A283134.P7913142317685632817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283293 n - A356201 (A075208 (n + 1)).toNat

end

end A283134.P7913142317685632817

/-! ## A283134.P7932700010646260720

`A283216(n)-A283306(A283330(n+1))`
-/

namespace A283134.P7932700010646260720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283216 n - A283306 (A283330 (n + 1)).toNat

end

end A283134.P7932700010646260720

/-! ## A283134.P8450312254874233144

`A283293(n)-A283306(A283330(n+1))`
-/

namespace A283134.P8450312254874233144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283293 n - A283306 (A283330 (n + 1)).toNat

end

end A283134.P8450312254874233144

/-!
# A283135: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 581", based on the 5-celled von Neumann neighborhood.

The programs for A283135, there is no canonical definition to state claims against.
-/

/-! ## A283135.P5888522535394734192

`A283134(n)-A055945(A283134(n))`
-/

namespace A283135.P5888522535394734192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283134 n - A055945 (A283134 n).toNat

end

end A283135.P5888522535394734192

/-! ## A283135.P6907550008910955350

`A030101(A283134(n))`
-/

namespace A283135.P6907550008910955350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A283134 n).toNat

end

end A283135.P6907550008910955350

/-! ## A283135.P14027664216866899013

`A281589(2*A283134(n))`
-/

namespace A283135.P14027664216866899013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (2 * A283134 n).toNat

end

end A283135.P14027664216866899013

/-! ## A283135.P16901713313912640748

`A281589(lcm(2, A283134(n)))`
-/

namespace A283135.P16901713313912640748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (Int.lcm 2 (A283134 n))

end

end A283135.P16901713313912640748

/-!
# A283136: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 585", based on the 5-celled von Neumann neighborhood.

The programs for A283136, there is no canonical definition to state claims against.
-/

/-! ## A283136.P5753636264654469924

`A000042(n+1)%A282218(A028310(n))`
-/

namespace A283136.P5753636264654469924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000042 (n + 1)) (A282218 (A028310 n).toNat)

end

end A283136.P5753636264654469924

/-! ## A283136.P3889198529700480756

`A282219(n)+A283137(n)-A282218(n)`
-/

namespace A283136.P3889198529700480756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282219 n + (A283137 n - A282218 n)

end

end A283136.P3889198529700480756

/-! ## A283136.P6447806205720270491

`A000042(n+1)+A000007(n)-A282218(n)`
-/

namespace A283136.P6447806205720270491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) + (A000007 n - A282218 n)

end

end A283136.P6447806205720270491

/-! ## A283136.P15758328916887711684

`A002283(n)+A047855(A028310(n))-A282218(n)`
-/

namespace A283136.P15758328916887711684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 n + (A047855 (A028310 n).toNat - A282218 n)

end

end A283136.P15758328916887711684

/-! ## A283136.P7395141295211978821

`(A047855(n)+A002283(n))%A282218(A028310(n))`
-/

namespace A283136.P7395141295211978821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047855 n + A002283 n) (A282218 (A028310 n).toNat)

end

end A283136.P7395141295211978821

/-!
# A283137: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 585", based on the 5-celled von Neumann neighborhood.

The programs for A283137, there is no canonical definition to state claims against.
-/

/-! ## A283137.P7210113039820336604

`1+A285612(2*n)-A282219(n)`
-/

namespace A283137.P7210113039820336604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + (A285612 (2 * n) - A282219 n)

end

end A283137.P7210113039820336604

/-! ## A283137.P13318587481738286150

`A282218(n)+A283136(n)-A282219(n)`
-/

namespace A283137.P13318587481738286150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282218 n + (A283136 n - A282219 n)

end

end A283137.P13318587481738286150

/-! ## A283137.P11992946478147226107

`A000042(n+1)+A000007(n)-A282219(n)`
-/

namespace A283137.P11992946478147226107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) + (A000007 n - A282219 n)

end

end A283137.P11992946478147226107

/-! ## A283137.P8219154443440200123

`A002275(n+1)+A000007(n)-A282219(n)`
-/

namespace A283137.P8219154443440200123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 1) + (A000007 n - A282219 n)

end

end A283137.P8219154443440200123

/-! ## A283137.P17459159099240630056

`A007088(A283139(n))`
-/

namespace A283137.P17459159099240630056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283139 n).toNat

end

end A283137.P17459159099240630056

/-!
# A283138: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 585", based on the 5-celled von Neumann neighborhood.

The programs for A283138, there is no canonical definition to state claims against.
-/

/-! ## A283138.P11122285019598822625

`A126646(n)%A282220(A028310(n))`
-/

namespace A283138.P11122285019598822625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126646 n) (A282220 (A028310 n).toNat)

end

end A283138.P11122285019598822625

/-! ## A283138.P8604065319126612793

`∑[A000079(n)]%A282220(A028310(n))`
-/

namespace A283138.P8604065319126612793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A282220 (A028310 n).toNat)

end

end A283138.P8604065319126612793

/-! ## A283138.P2432632996930169348

`A282221(n)+A283139(n)-A282220(n)`
-/

namespace A283138.P2432632996930169348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282221 n + (A283139 n - A282220 n)

end

end A283138.P2432632996930169348

/-! ## A283138.P532026365173733000

`or(A000225(n), A052531(n))-A282220(n)`
-/

namespace A283138.P532026365173733000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000225 n) (A052531 n) - A282220 n

end

end A283138.P532026365173733000

/-! ## A283138.P16672634061827552871

`A126646(n)-A282220(n)%A282218(n)`
-/

namespace A283138.P16672634061827552871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A282220 n) (A282218 n)

end

end A283138.P16672634061827552871

/-!
# A283139: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 585", based on the 5-celled von Neumann neighborhood.

The programs for A283139, there is no canonical definition to state claims against.
-/

/-! ## A283139.P10956111002683797251

`xor(record[A077896(n+1)], A282221(n))`
-/

namespace A283139.P10956111002683797251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A282221 n)

end

end A283139.P10956111002683797251

/-! ## A283139.P3389863776385140035

`A000007(n)+A126646(n)-A282221(n)`
-/

namespace A283139.P3389863776385140035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A126646 n - A282221 n)

end

end A283139.P3389863776385140035

/-! ## A283139.P15709668991566938355

`A282220(n)+A283138(n)-A282221(n)`
-/

namespace A283139.P15709668991566938355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282220 n + (A283138 n - A282221 n)

end

end A283139.P15709668991566938355

/-! ## A283139.P17971170158372234643

`or(A000225(n), A052531(n))-A282221(n)`
-/

namespace A283139.P17971170158372234643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000225 n) (A052531 n) - A282221 n

end

end A283139.P17971170158372234643

/-! ## A283139.P17641589196624973473

`A126646(n)-A282221(n)%A282218(n)`
-/

namespace A283139.P17641589196624973473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A282221 n) (A282218 n)

end

end A283139.P17641589196624973473

/-!
# A283140: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 587", based on the 5-celled von Neumann neighborhood.

The programs for A283140, there is no canonical definition to state claims against.
-/

/-! ## A283140.P5767053197589855726

`A007088(A283142(n))`
-/

namespace A283140.P5767053197589855726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283142 n).toNat

end

end A283140.P5767053197589855726

/-! ## A283140.P18270140347455856049

`A077812(or(1, A283142(n)))`
-/

namespace A283140.P18270140347455856049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077812 (Int.lor 1 (A283142 n)).toNat

end

end A283140.P18270140347455856049

/-! ## A283140.P7872792263210341649

`A305989(A283143(n))`
-/

namespace A283140.P7872792263210341649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A283143 n).toNat

end

end A283140.P7872792263210341649

/-! ## A283140.P6906578248737721696

`A185544(2*A283142(n))`
-/

namespace A283140.P6906578248737721696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283142 n).toNat

end

end A283140.P6906578248737721696

/-! ## A283140.P16064434486735365727

`A185544(lcm(2, A283142(n)))`
-/

namespace A283140.P16064434486735365727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A283142 n))

end

end A283140.P16064434486735365727

/-!
# A283141: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 587", based on the 5-celled von Neumann neighborhood.

The programs for A283141, there is no canonical definition to state claims against.
-/

/-! ## A283141.P11083609639862814936

`A007088(A283143(n))`
-/

namespace A283141.P11083609639862814936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283143 n).toNat

end

end A283141.P11083609639862814936

/-! ## A283141.P7187004644405547987

`A185544(2*A283143(n))`
-/

namespace A283141.P7187004644405547987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283143 n).toNat

end

end A283141.P7187004644405547987

/-!
# A283142: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 587", based on the 5-celled von Neumann neighborhood.

The programs for A283142, there is no canonical definition to state claims against.
-/

/-! ## A283142.P1809493080436435365

`A030101(A283143(n))`
-/

namespace A283142.P1809493080436435365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A283143 n).toNat

end

end A283142.P1809493080436435365

/-!
# A283143: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 587", based on the 5-celled von Neumann neighborhood.

The programs for A283143, there is no canonical definition to state claims against.
-/

/-! ## A283143.P3917606314559717202

`A126087(n)+A030132(A005165(n))`
-/

namespace A283143.P3917606314559717202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126087 n + A030132 (A005165 n).toNat

end

end A283143.P3917606314559717202

/-!
# A283144: Partial sums of A283131.

The programs for A283144, there is no canonical definition to state claims against.
-/

/-! ## A283144.P2302386810842695757

`∑[A283131(n+1)]`
-/

namespace A283144.P2302386810842695757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283144.P2302386810842695757

/-! ## A283144.P12521284103597693203

`∑[1-2*A157238(n+1)]`
-/

namespace A283144.P12521284103597693203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A157238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283144.P12521284103597693203

/-! ## A283144.P7019952225762684363

`∑[3-2*A006345(n+1)]`
-/

namespace A283144.P7019952225762684363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - 2 * A006345 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283144.P7019952225762684363

/-! ## A283144.P17435837588589920634

`∑[A015290((A006345(n+1)+n)%(n+1))]`
-/

namespace A283144.P17435837588589920634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015290 (Int.tmod (A006345 (n + 1) + (n : ℤ)) (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283144.P17435837588589920634

/-! ## A283144.P5405365775559060836

`∑[A280193(A006345(n+1)-gcd(n, n+1))]`
-/

namespace A283144.P5405365775559060836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A006345 (n + 1) - (Nat.gcd n (n + 1) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283144.P5405365775559060836

/-!
# A283145: a(1)=5; for n > 1, and a(n) is the least prime p > a(n-1) such that both q = p + 2n and r = q + 2n + 2 are prime.

The programs for A283145, there is no canonical definition to state claims against.
-/

/-! ## A283145.P10091900585445806181

`A283159(A043320(n+1))`
-/

namespace A283145.P10091900585445806181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283159 (A043320 (n + 1)).toNat

end

end A283145.P10091900585445806181

/-! ## A283145.P3276316242607860172

`A283159(A044917(n+1))`
-/

namespace A283145.P3276316242607860172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283159 (A044917 (n + 1)).toNat

end

end A283145.P3276316242607860172

/-! ## A283145.P11146198542199880844

`A283159(A055645(n+1))`
-/

namespace A283145.P11146198542199880844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283159 (A055645 (n + 1)).toNat

end

end A283145.P11146198542199880844

/-! ## A283145.P10631632830071424839

`A283159(A055646(n)+1)`
-/

namespace A283145.P10631632830071424839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283159 (A055646 n + 1).toNat

end

end A283145.P10631632830071424839

/-! ## A283145.P13879700202447555530

`A283159(A161953(n+1))`
-/

namespace A283145.P13879700202447555530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283159 (A161953 (n + 1)).toNat

end

end A283145.P13879700202447555530

/-!
# A283149: Largest k such that (p-1)! == -1 (mod p^k), where p = prime(n).

The programs for A283149, the canonical program `A283149.P13100395430897150850` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283149 has offset 1).

The definition of A283149 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283149.P13100395430897150850

`char[(n*a(n-1))²+n]+1` with `a(0)=2`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A283149

/-- `char[(n*a(n-1))²+n]+1` -/
def P13100395430897150850.Spec : Prop :=
  ∀ n, (P13100395430897150850.a n : ℤ) = A283149 (n + 1)

theorem P13100395430897150850.correct : P13100395430897150850.Spec := by
  intro n
  simp only [A283149, Nat.add_sub_cancel]

end A283149

/-!
# A283153: Number of set partitions of unique elements from an n X 4 matrix where elements from the same row may not be in the same partition.

The programs for A283153, there is no canonical definition to state claims against.
-/

/-! ## A283153.P16852344482273782588

`A071379(n+1)`
-/

namespace A283153.P16852344482273782588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071379 (n + 1)

end

end A283153.P16852344482273782588

/-!
# A283154: 

The programs for A283154, there is no canonical definition to state claims against.
-/

/-! ## A283154.P6189421780125479865

`A090209(n+1)`
-/

namespace A283154.P6189421780125479865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090209 (n + 1)

end

end A283154.P6189421780125479865

/-!
# A283156: Number of preimages of even integers under the sum-of-proper-divisors function.

The programs for A283156, there is no canonical definition to state claims against.
-/

/-! ## A283156.P1685878692094133912

`A048138(2*(n+1))`
-/

namespace A283156.P1685878692094133912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048138 (2 * (n + 1))

end

end A283156.P1685878692094133912

/-! ## A283156.P10112945535823438886

`dr(A048138(Δ[A002378(n)]))`
-/

namespace A283156.P10112945535823438886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A048138 (f1 (n + 1) - f1 n).toNat)

end

end A283156.P10112945535823438886

/-! ## A283156.P12135234959977816203

`A028904(A048138(n+2+n))`
-/

namespace A283156.P12135234959977816203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (A048138 (n + 2 + n)).toNat

end

end A283156.P12135234959977816203

/-! ## A283156.P5441073534894166211

`A333693(A048138(n+n+2))`
-/

namespace A283156.P5441073534894166211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333693 (A048138 (n + n + 2)).toNat

end

end A283156.P5441073534894166211

/-! ## A283156.P10213404033180620951

`A048138(n+2+n)/A054977(n)`
-/

namespace A283156.P10213404033180620951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048138 (n + 2 + n) : ℚ) / (A054977 n : ℚ)

end

end A283156.P10213404033180620951

/-! ## A283156.P126762607266189688

`A048138(record[A244478(n)])%(n+1)`
-/

namespace A283156.P126762607266189688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048138 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (n + 1 : ℤ)

end

end A283156.P126762607266189688

/-! ## A283156.P8120501762560560639

`A068914(∑[n+1])+A048138(n+n+2)`
-/

namespace A283156.P8120501762560560639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068914 (∑ j ∈ Finset.range (n + 1), f1 j) + A048138 (n + n + 2)

end

end A283156.P8120501762560560639

/-!
# A283157: Smallest even numbers with strictly increasing number of preimages under the sum-of-proper-divisors function.

The programs for A283157, there is no canonical definition to state claims against.
-/

/-! ## A283157.P7056108627725894260

`A335060((A205136(n+1)+2)*n!+1)`
-/

namespace A283157.P7056108627725894260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335060 ((A205136 (n + 1) + 2) * (Nat.factorial n : ℤ) + 1).toNat

end

end A283157.P7056108627725894260

/-!
# A283162: Number of free polyominoes with n cells containing a complete self-avoiding walk obeying mortal coil rules.

The programs for A283162, there is no canonical definition to state claims against.
-/

/-! ## A283162.P13087880252800284971

`A199410(n)-A117248(A007477(n))`
-/

namespace A283162.P13087880252800284971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199410 n - A117248 (A007477 n).toNat

end

end A283162.P13087880252800284971

/-! ## A283162.P18073186147405055138

`A121208(A243082(n))`
-/

namespace A283162.P18073186147405055138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121208 (A243082 n).toNat

end

end A283162.P18073186147405055138

/-! ## A283162.P15741984553748708429

`A121208(A300520(n))`
-/

namespace A283162.P15741984553748708429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121208 (A300520 n).toNat

end

end A283162.P15741984553748708429

/-! ## A283162.P8869029988905615491

`A302505(A239791(n))`
-/

namespace A283162.P8869029988905615491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302505 (A239791 n).toNat

end

end A283162.P8869029988905615491

/-!
# A283163: Expansion of exp( Sum_{n>=1} -sigma(4*n)*x^n/n ) in powers of x.

The programs for A283163, there is no canonical definition to state claims against.
-/

/-! ## A283163.P4952651468392486145

`A000009(n)-8*A239292(n)`
-/

namespace A283163.P4952651468392486145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - 8 * A239292 n

end

end A283163.P4952651468392486145

/-! ## A283163.P3716372676839885377

`abs(A081360(n))-8*A239292(n)`
-/

namespace A283163.P3716372676839885377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| - 8 * A239292 n

end

end A283163.P3716372676839885377

/-! ## A283163.P7502690115834498632

`∑[A087897(n)]-8*A239292(n)`
-/

namespace A283163.P7502690115834498632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 8 * A239292 n

end

end A283163.P7502690115834498632

/-! ## A283163.P11848653054284894572

`A264404(A028387(n))-8*A239292(n)`
-/

namespace A283163.P11848653054284894572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264404 (A028387 n).toNat - 8 * A239292 n

end

end A283163.P11848653054284894572

/-!
# A283165: a(0) = 0; a(1) = 1; a(2*n) = 2*a(n), a(2*n+1) = 2*a(n) + (-1)^a(n+1).

The programs for A283165, the canonical program `A283165.P4937381751944655618` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283165 has offset 0).

The definition of A283165 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283165.P4937381751944655618

`n-and(n-A006257(n), 2*n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A283165

/-- `n-and(n-A006257(n), 2*n)` -/
def P4937381751944655618.Spec : Prop :=
  ∀ n, P4937381751944655618.a n = A283165 n

theorem P4937381751944655618.correct : P4937381751944655618.Spec := by
  intro n
  simp only [A283165]

end A283165

/-! ## A283165.P9005411036085350408

`A334076(n)+A006257(n)`
-/

namespace A283165.P9005411036085350408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334076 n + A006257 n

end

end A283165.P9005411036085350408

namespace A283165

/-- `A334076(n)+A006257(n)` -/
def P9005411036085350408.Spec : Prop :=
  ∀ n, P9005411036085350408.a n = A283165 n

end A283165

/-! ## A283165.P4758644009953677721

`n-and(A005843(n), A035327(n))`
-/

namespace A283165.P4758644009953677721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land (A005843 n) (A035327 n)

end

end A283165.P4758644009953677721

namespace A283165

/-- `n-and(A005843(n), A035327(n))` -/
def P4758644009953677721.Spec : Prop :=
  ∀ n, P4758644009953677721.a n = A283165 n

end A283165

/-! ## A283165.P16289389362325438922

`xor(n, A038554(n))-A038554(n)`
-/

namespace A283165.P16289389362325438922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A038554 n) - A038554 n

end

end A283165.P16289389362325438922

namespace A283165

/-- `xor(n, A038554(n))-A038554(n)` -/
def P16289389362325438922.Spec : Prop :=
  ∀ n, P16289389362325438922.a n = A283165 n

end A283165

/-! ## A283165.P5046074993333547234

`A180201(n)-xor(n, A180201(n))`
-/

namespace A283165.P5046074993333547234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180201 n - Int.xor (n : ℤ) (A180201 n)

end

end A283165.P5046074993333547234

namespace A283165

/-- `A180201(n)-xor(n, A180201(n))` -/
def P5046074993333547234.Spec : Prop :=
  ∀ n, P5046074993333547234.a n = A283165 n

end A283165

/-! ## A283165.P167256551981252570

`A006257(n)+or(A003817(n)-n, 2*n)-2*n`
-/

namespace A283165.P167256551981252570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n + (Int.lor (A003817 n - (n : ℤ)) (2 * n : ℤ) - (2 * n : ℤ))

end

end A283165.P167256551981252570

namespace A283165

/-- `A006257(n)+or(A003817(n)-n, 2*n)-2*n` -/
def P167256551981252570.Spec : Prop :=
  ∀ n, P167256551981252570.a n = A283165 n

end A283165

/-! ## A283165.P371580854920203819

`or(A038572(n), A053644(n))-A038554(n)`
-/

namespace A283165.P371580854920203819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A038572 n) (A053644 n) - A038554 n

end

end A283165.P371580854920203819

namespace A283165

/-- `or(A038572(n), A053644(n))-A038554(n)` -/
def P371580854920203819.Spec : Prop :=
  ∀ n, P371580854920203819.a n = A283165 n

end A283165

/-! ## A283165.P1731237656132700183

`A006257(or(n, A334076(n)))-A334076(n)`
-/

namespace A283165.P1731237656132700183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (Int.lor (n : ℤ) (A334076 n)).toNat - A334076 n

end

end A283165.P1731237656132700183

namespace A283165

/-- `A006257(or(n, A334076(n)))-A334076(n)` -/
def P1731237656132700183.Spec : Prop :=
  ∀ n, P1731237656132700183.a n = A283165 n

end A283165

/-! ## A283165.P12704705586565868937

`and(2*n, A004760(n+2))-n`
-/

namespace A283165.P12704705586565868937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (A004760 (n + 2)) - (n : ℤ)

end

end A283165.P12704705586565868937

namespace A283165

/-- `and(2*n, A004760(n+2))-n` -/
def P12704705586565868937.Spec : Prop :=
  ∀ n, P12704705586565868937.a n = A283165 n

end A283165

/-! ## A283165.P12458863582619818255

`or(n-A087734(2*n), A087734(2*n))`
-/

namespace A283165.P12458863582619818255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) - A087734 (2 * n)) (A087734 (2 * n))

end

end A283165.P12458863582619818255

namespace A283165

/-- `or(n-A087734(2*n), A087734(2*n))` -/
def P12458863582619818255.Spec : Prop :=
  ∀ n, P12458863582619818255.a n = A283165 n

end A283165

/-! ## A283165.P13138743619449000788

`A265716(n)-A003817(n)`
-/

namespace A283165.P13138743619449000788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265716 n - A003817 n

end

end A283165.P13138743619449000788

namespace A283165

/-- `A265716(n)-A003817(n)` -/
def P13138743619449000788.Spec : Prop :=
  ∀ n, P13138743619449000788.a n = A283165 n

end A283165

/-! ## A283165.P5052322895704725530

`n-A292944(A213064(n))`
-/

namespace A283165.P5052322895704725530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A292944 (A213064 n).toNat

end

end A283165.P5052322895704725530

namespace A283165

/-- `n-A292944(A213064(n))` -/
def P5052322895704725530.Spec : Prop :=
  ∀ n, P5052322895704725530.a n = A283165 n

end A283165

/-! ## A283165.P3242447373982933011

`n-A292944(A292272(2*n))`
-/

namespace A283165.P3242447373982933011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A292944 (A292272 (2 * n)).toNat

end

end A283165.P3242447373982933011

namespace A283165

/-- `n-A292944(A292272(2*n))` -/
def P3242447373982933011.Spec : Prop :=
  ∀ n, P3242447373982933011.a n = A283165 n

end A283165

/-! ## A283165.P3822825153330728591

`n-A229762(A265716(n)-n)`
-/

namespace A283165.P3822825153330728591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A229762 (A265716 n - (n : ℤ)).toNat

end

end A283165.P3822825153330728591

namespace A283165

/-- `n-A229762(A265716(n)-n)` -/
def P3822825153330728591.Spec : Prop :=
  ∀ n, P3822825153330728591.a n = A283165 n

end A283165

/-! ## A283165.P14751021760727899964

`n-A229762(A010078(n+1)-n)`
-/

namespace A283165.P14751021760727899964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A229762 (A010078 (n + 1) - (n : ℤ)).toNat

end

end A283165.P14751021760727899964

namespace A283165

/-- `n-A229762(A010078(n+1)-n)` -/
def P14751021760727899964.Spec : Prop :=
  ∀ n, P14751021760727899964.a n = A283165 n

end A283165

/-! ## A283165.P10026565277807009898

`A292264(A213064(n))-A229763(n)`
-/

namespace A283165.P10026565277807009898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292264 (A213064 n).toNat - A229763 n

end

end A283165.P10026565277807009898

namespace A283165

/-- `A292264(A213064(n))-A229763(n)` -/
def P10026565277807009898.Spec : Prop :=
  ∀ n, P10026565277807009898.a n = A283165 n

end A283165

/-! ## A283165.P5759894985211898055

`A292264(A292272(2*n))-A229763(n)`
-/

namespace A283165.P5759894985211898055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292264 (A292272 (2 * n)).toNat - A229763 n

end

end A283165.P5759894985211898055

namespace A283165

/-- `A292264(A292272(2*n))-A229763(n)` -/
def P5759894985211898055.Spec : Prop :=
  ∀ n, P5759894985211898055.a n = A283165 n

end A283165

/-! ## A283165.P6511372817772006085

`A292264(A229763(n)+n)-A229763(n)`
-/

namespace A283165.P6511372817772006085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292264 (A229763 n + (n : ℤ)).toNat - A229763 n

end

end A283165.P6511372817772006085

namespace A283165

/-- `A292264(A229763(n)+n)-A229763(n)` -/
def P6511372817772006085.Spec : Prop :=
  ∀ n, P6511372817772006085.a n = A283165 n

end A283165

/-! ## A283165.P7400005858290397436

`A003817(n)+A229763(A003817(n))-A229763(n)`
-/

namespace A283165.P7400005858290397436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n + (A229763 (A003817 n).toNat - A229763 n)

end

end A283165.P7400005858290397436

namespace A283165

/-- `A003817(n)+A229763(A003817(n))-A229763(n)` -/
def P7400005858290397436.Spec : Prop :=
  ∀ n, P7400005858290397436.a n = A283165 n

end A283165

/-! ## A283165.P10414807890622967685

`A265716(n)-A086099(2*n)`
-/

namespace A283165.P10414807890622967685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265716 n - A086099 (2 * n)

end

end A283165.P10414807890622967685

namespace A283165

/-- `A265716(n)-A086099(2*n)` -/
def P10414807890622967685.Spec : Prop :=
  ∀ n, P10414807890622967685.a n = A283165 n

end A283165

/-!
# A283166: a(0) = 0; a(1) = 1; a(2*n) = sigma(a(n)), a(2*n+1) = sigma(a(n)) + sigma(a(n+1)).

The programs for A283166, there is no canonical definition to state claims against.
-/

/-! ## A283166.P18162611549917886381

`A261366(n)+A256974(A103997(n))`
-/

namespace A283166.P18162611549917886381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261366 n + A256974 (A103997 n).toNat

end

end A283166.P18162611549917886381

/-! ## A283166.P10924347735302589415

`or(A082858(A176200(n)), A261366(n))`
-/

namespace A283166.P10924347735302589415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A082858 (A176200 n).toNat) (A261366 n)

end

end A283166.P10924347735302589415

/-! ## A283166.P5720806065310683252

`A285118(A131111(n))+n-A038573(A139756(n))`
-/

namespace A283166.P5720806065310683252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285118 (A131111 n).toNat + ((n : ℤ) - A038573 (A139756 n).toNat)

end

end A283166.P5720806065310683252

/-! ## A283166.P17318865683533241741

`A285118(A134059(n))+n-A038573(A139756(n))`
-/

namespace A283166.P17318865683533241741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285118 (A134059 n).toNat + ((n : ℤ) - A038573 (A139756 n).toNat)

end

end A283166.P17318865683533241741

/-!
# A283167: a(0) = 1; a(2*n) = 2*a(n), a(2*n+1) = sigma(a(n)).

The programs for A283167, there is no canonical definition to state claims against.
-/

/-! ## A283167.P13252002511356784755

`∏{e}[A288807(∑[and(2, n)]+n), #]`
-/

namespace A283167.P13252002511356784755
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288807 (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A283167.P13252002511356784755

/-! ## A283167.P13735833719707210181

`A035327(n)+A007706(p?[A111771(n+1)])`
-/

namespace A283167.P13735833719707210181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 n + A007706 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A283167.P13735833719707210181

/-! ## A283167.P7138945951216888532

`A035327(n)+A023532(p?[A111771(n+1)])`
-/

namespace A283167.P7138945951216888532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 n + A023532 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A283167.P7138945951216888532

/-! ## A283167.P13172614742363872262

`A316343(A343895(3*(n+1)))+A035327(n)`
-/

namespace A283167.P13172614742363872262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316343 (A343895 (3 * (n + 1))).toNat + A035327 n

end

end A283167.P13172614742363872262

/-! ## A283167.P9705222214008749343

`A302436(n)+A025469(A266925(n+1))`
-/

namespace A283167.P9705222214008749343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302436 n + A025469 (A266925 (n + 1)).toNat

end

end A283167.P9705222214008749343

/-!
# A283171: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 589", based on the 5-celled von Neumann neighborhood.

The programs for A283171, there is no canonical definition to state claims against.
-/

/-! ## A283171.P15693783903503476549

`A007088(A283173(n))`
-/

namespace A283171.P15693783903503476549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283173 n).toNat

end

end A283171.P15693783903503476549

/-! ## A283171.P15297101323190247157

`A185544(2*A283173(n))`
-/

namespace A283171.P15297101323190247157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283173 n).toNat

end

end A283171.P15297101323190247157

/-!
# A283172: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 589", based on the 5-celled von Neumann neighborhood.

The programs for A283172, there is no canonical definition to state claims against.
-/

/-! ## A283172.P16666153728268175410

`A007088(A283174(n))`
-/

namespace A283172.P16666153728268175410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283174 n).toNat

end

end A283172.P16666153728268175410

/-! ## A283172.P5205535499789927081

`A305989(A283173(n))`
-/

namespace A283172.P5205535499789927081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A283173 n).toNat

end

end A283172.P5205535499789927081

/-! ## A283172.P5041229888656988464

`A185544(2*A283174(n))`
-/

namespace A283172.P5041229888656988464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283174 n).toNat

end

end A283172.P5041229888656988464

/-! ## A283172.P11920723895017740431

`A185544(lcm(2, A283174(n)))`
-/

namespace A283172.P11920723895017740431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A283174 n))

end

end A283172.P11920723895017740431

/-!
# A283173: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 589", based on the 5-celled von Neumann neighborhood.

The programs for A283173, there is no canonical definition to state claims against.
-/

/-! ## A283173.P15784682882913272983

`A003188(A283587(n*A102480(n)))`
-/

namespace A283173.P15784682882913272983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A283587 ((n : ℤ) * A102480 n).toNat).toNat

end

end A283173.P15784682882913272983

/-! ## A283173.P15863178105068660790

`A003188(A283587(n)^A102480(n))`
-/

namespace A283173.P15863178105068660790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (SequenceMachineLib.roundAway ((A283587 n : ℚ) ^ (A102480 n : ℤ))).toNat

end

end A283173.P15863178105068660790

/-! ## A283173.P991834657598982133

`A003188(C(A283587(n), A102480(n)))`
-/

namespace A283173.P991834657598982133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (Nat.choose (A283587 n).toNat (A102480 n).toNat)

end

end A283173.P991834657598982133

/-!
# A283174: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 589", based on the 5-celled von Neumann neighborhood.

The programs for A283174, there is no canonical definition to state claims against.
-/

/-! ## A283174.P8283354215256159976

`A325401(lcm(2, A283173(n)))`
-/

namespace A283174.P8283354215256159976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.lcm 2 (A283173 n))

end

end A283174.P8283354215256159976

/-! ## A283174.P2326205511765654494

`A030101(A283173(n))`
-/

namespace A283174.P2326205511765654494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A283173 n).toNat

end

end A283174.P2326205511765654494

/-! ## A283174.P2235400687608276437

`A325401(2*A283173(n))`
-/

namespace A283174.P2235400687608276437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A283173 n).toNat

end

end A283174.P2235400687608276437

/-! ## A283174.P9183334308685470823

`A342122(2*A283173(n))`
-/

namespace A283174.P9183334308685470823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342122 (2 * A283173 n).toNat

end

end A283174.P9183334308685470823

/-! ## A283174.P3403498951169233769

`A126646(n)-A036044(A283173(n))`
-/

namespace A283174.P3403498951169233769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A036044 (A283173 n).toNat

end

end A283174.P3403498951169233769

/-!
# A283175: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 590", based on the 5-celled von Neumann neighborhood.

The programs for A283175, there is no canonical definition to state claims against.
-/

/-! ## A283175.P17987634534363705903

`A007088(A283177(n))`
-/

namespace A283175.P17987634534363705903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283177 n).toNat

end

end A283175.P17987634534363705903

/-! ## A283175.P4803708549223451262

`A305989(A283178(n))`
-/

namespace A283175.P4803708549223451262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A283178 n).toNat

end

end A283175.P4803708549223451262

/-! ## A283175.P7316384367240260138

`A185544(2*A283177(n))`
-/

namespace A283175.P7316384367240260138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283177 n).toNat

end

end A283175.P7316384367240260138

/-! ## A283175.P6456320717090139323

`A185544(lcm(2, A283177(n)))`
-/

namespace A283175.P6456320717090139323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A283177 n))

end

end A283175.P6456320717090139323

/-!
# A283176: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 590", based on the 5-celled von Neumann neighborhood.

The programs for A283176, there is no canonical definition to state claims against.
-/

/-! ## A283176.P7618680991008525144

`A007088(A283178(n))`
-/

namespace A283176.P7618680991008525144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283178 n).toNat

end

end A283176.P7618680991008525144

/-! ## A283176.P3301990945863606421

`A305989(A283177(n))`
-/

namespace A283176.P3301990945863606421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A283177 n).toNat

end

end A283176.P3301990945863606421

/-! ## A283176.P6470413242910905427

`A185544(2*A283178(n))`
-/

namespace A283176.P6470413242910905427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283178 n).toNat

end

end A283176.P6470413242910905427

/-! ## A283176.P10801656503274909885

`A185544(lcm(2, A283178(n)))`
-/

namespace A283176.P10801656503274909885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A283178 n))

end

end A283176.P10801656503274909885

/-!
# A283177: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 590", based on the 5-celled von Neumann neighborhood.

The programs for A283177, there is no canonical definition to state claims against.
-/

/-! ## A283177.P12095967703492971083

`A030101(A283178(n))`
-/

namespace A283177.P12095967703492971083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A283178 n).toNat

end

end A283177.P12095967703492971083

/-! ## A283177.P2206949922558026199

`A057889(or(1, A283178(n)))`
-/

namespace A283177.P2206949922558026199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (Int.lor 1 (A283178 n)).toNat

end

end A283177.P2206949922558026199

/-! ## A283177.P15357287164144837776

`A165789(or(1, A283178(n)))`
-/

namespace A283177.P15357287164144837776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165789 (Int.lor 1 (A283178 n)).toNat

end

end A283177.P15357287164144837776

/-! ## A283177.P4479080191582060004

`A057889(root(A283178(n), 2)²)`
-/

namespace A283177.P4479080191582060004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (SequenceMachineLib.roundAway (((A283178 n : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat

end

end A283177.P4479080191582060004

/-! ## A283177.P16588921676357662443

`A165789(root(A283178(n), 2)²)`
-/

namespace A283177.P16588921676357662443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165789 (SequenceMachineLib.roundAway (((A283178 n : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat

end

end A283177.P16588921676357662443

/-!
# A283178: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 590", based on the 5-celled von Neumann neighborhood.

The programs for A283178, there is no canonical definition to state claims against.
-/

/-! ## A283178.P7804183883719586696

`A057889(A283177(n))`
-/

namespace A283178.P7804183883719586696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A283177 n).toNat

end

end A283178.P7804183883719586696

/-! ## A283178.P17234369034522644549

`A325401(A052307(n)*A283177(n))`
-/

namespace A283178.P17234369034522644549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A052307 n * A283177 n).toNat

end

end A283178.P17234369034522644549

/-! ## A283178.P10083743183346772791

`A325401(A283177(n)*A284249(n))`
-/

namespace A283178.P10083743183346772791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A283177 n * A284249 n).toNat

end

end A283178.P10083743183346772791

/-! ## A283178.P11270146152890949606

`A325401(lcm(A052307(n), A283177(n)))`
-/

namespace A283178.P11270146152890949606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.lcm (A052307 n) (A283177 n))

end

end A283178.P11270146152890949606

/-! ## A283178.P8594173164206153038

`A325401(2*A283177(n))`
-/

namespace A283178.P8594173164206153038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A283177 n).toNat

end

end A283178.P8594173164206153038

/-!
# A283179: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 593", based on the 5-celled von Neumann neighborhood.

The programs for A283179, there is no canonical definition to state claims against.
-/

/-! ## A283179.P17720845505072129445

`A000042(n+1)%A282419(A028310(n))`
-/

namespace A283179.P17720845505072129445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000042 (n + 1)) (A282419 (A028310 n).toNat)

end

end A283179.P17720845505072129445

/-! ## A283179.P11771682241836234503

`A007088(A283181(n))`
-/

namespace A283179.P11771682241836234503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283181 n).toNat

end

end A283179.P11771682241836234503

/-! ## A283179.P5002379364241284460

`A007088(A282422(n)+A283182(n)-A282421(n))`
-/

namespace A283179.P5002379364241284460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282422 n + (A283182 n - A282421 n)).toNat

end

end A283179.P5002379364241284460

/-! ## A283179.P5104048373916236367

`A007088(A282422(n)-(A282421(n)-A283182(n)))`
-/

namespace A283179.P5104048373916236367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282422 n - (A282421 n - A283182 n)).toNat

end

end A283179.P5104048373916236367

/-! ## A283179.P5761923545242854803

`A007088(A126646(n)-A282421(n)%A282682(n))`
-/

namespace A283179.P5761923545242854803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A126646 n - Int.tmod (A282421 n) (A282682 n)).toNat

end

end A283179.P5761923545242854803

/-!
# A283180: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 593", based on the 5-celled von Neumann neighborhood.

The programs for A283180, there is no canonical definition to state claims against.
-/

/-! ## A283180.P12584882536147922480

`A007088(A283182(n))`
-/

namespace A283180.P12584882536147922480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283182 n).toNat

end

end A283180.P12584882536147922480

/-! ## A283180.P11186546529061985553

`A007088(A095121(n)+1-A282422(n))`
-/

namespace A283180.P11186546529061985553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A095121 n + (1 - A282422 n)).toNat

end

end A283180.P11186546529061985553

/-! ## A283180.P6109468593631295665

`A007088(1-(A282422(n)-A095121(n)))`
-/

namespace A283180.P6109468593631295665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (1 - (A282422 n - A095121 n)).toNat

end

end A283180.P6109468593631295665

/-! ## A283180.P15006404762275476274

`A007088(A282421(n)+A283181(n)-A282422(n))`
-/

namespace A283180.P15006404762275476274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282421 n + (A283181 n - A282422 n)).toNat

end

end A283180.P15006404762275476274

/-! ## A283180.P6000398627696666313

`A007088(A282421(n)-(A282422(n)-A283181(n)))`
-/

namespace A283180.P6000398627696666313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282421 n - (A282422 n - A283181 n)).toNat

end

end A283180.P6000398627696666313

/-!
# A283181: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 593", based on the 5-celled von Neumann neighborhood.

The programs for A283181, there is no canonical definition to state claims against.
-/

/-! ## A283181.P10390843524226706662

`xor(record[A324715(n+1)], A282421(n))`
-/

namespace A283181.P10390843524226706662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A282421 n)

end

end A283181.P10390843524226706662

/-! ## A283181.P14668368661157309395

`A126646(n)%A282421(A028310(n))`
-/

namespace A283181.P14668368661157309395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126646 n) (A282421 (A028310 n).toNat)

end

end A283181.P14668368661157309395

/-! ## A283181.P11463322563444693060

`xor(A077896(A004277(n)), A282421(n))`
-/

namespace A283181.P11463322563444693060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A077896 (A004277 n).toNat) (A282421 n)

end

end A283181.P11463322563444693060

/-! ## A283181.P13707586439418013547

`A282422(n)+A283182(n)-A282421(n)`
-/

namespace A283181.P13707586439418013547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282422 n + (A283182 n - A282421 n)

end

end A283181.P13707586439418013547

/-! ## A283181.P14590773431579862211

`A126646(n)-A282421(n)%A282682(n)`
-/

namespace A283181.P14590773431579862211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A282421 n) (A282682 n)

end

end A283181.P14590773431579862211

/-!
# A283182: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 593", based on the 5-celled von Neumann neighborhood.

The programs for A283182, there is no canonical definition to state claims against.
-/

/-! ## A283182.P78663212910779637

`A095121(n)+1-A282422(n)`
-/

namespace A283182.P78663212910779637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (1 - A282422 n)

end

end A283182.P78663212910779637

/-! ## A283182.P17961968611850790800

`xor(record[A324715(n+1)], A282422(n))`
-/

namespace A283182.P17961968611850790800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A282422 n)

end

end A283182.P17961968611850790800

/-! ## A283182.P7086562242588714774

`xor(A077896(A004277(n)), A282422(n))`
-/

namespace A283182.P7086562242588714774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A077896 (A004277 n).toNat) (A282422 n)

end

end A283182.P7086562242588714774

/-! ## A283182.P2239309564521765707

`A282421(n)+A283181(n)-A282422(n)`
-/

namespace A283182.P2239309564521765707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282421 n + (A283181 n - A282422 n)

end

end A283182.P2239309564521765707

/-! ## A283182.P17729954508179947640

`A014963(A017089(n))*A126646(n)-A282422(n)`
-/

namespace A283182.P17729954508179947640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A017089 n).toNat * A126646 n - A282422 n

end

end A283182.P17729954508179947640

/-!
# A283183: Number of partitions of n into a prime and a square of an arbitrary integer.

The programs for A283183, there is no canonical definition to state claims against.
-/

/-! ## A283183.P2381049909917060112

`2*A002471(n+1)-A010051(n+1)`
-/

namespace A283183.P2381049909917060112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002471 (n + 1) - A010051 (n + 1)

end

end A283183.P2381049909917060112

/-! ## A283183.P11913828259796566641

`A005843(A002471(n+1))-A010051(n+1)`
-/

namespace A283183.P11913828259796566641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A002471 (n + 1)).toNat - A010051 (n + 1)

end

end A283183.P11913828259796566641

/-! ## A283183.P5825805593286037628

`2*A002471(n+1)-A000035(A035026(n+1))`
-/

namespace A283183.P5825805593286037628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002471 (n + 1) - A000035 (A035026 (n + 1)).toNat

end

end A283183.P5825805593286037628

/-! ## A283183.P3299961360051607692

`A005843(A002471(n+1))-A000035(A035026(n+1))`
-/

namespace A283183.P3299961360051607692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A002471 (n + 1)).toNat - A000035 (A035026 (n + 1)).toNat

end

end A283183.P3299961360051607692

/-! ## A283183.P3303906943792027159

`2*A002471(n+1)-Δ[A230980(n)]`
-/

namespace A283183.P3303906943792027159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002471 (n + 1) - (f1 (n + 1) - f1 n)

end

end A283183.P3303906943792027159

/-! ## A283183.P12188254087616874197

`A005843(A002471(n+1))-Δ[A230980(n)]`
-/

namespace A283183.P12188254087616874197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A002471 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A283183.P12188254087616874197

/-! ## A283183.P6283099174519375428

`A064272(A233583(n+2))+A002471(n+1)`
-/

namespace A283183.P6283099174519375428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064272 (A233583 (n + 2)).toNat + A002471 (n + 1)

end

end A283183.P6283099174519375428

/-!
# A283184: a(n) is the number of symmetric permutations (p(1),p(2),...,p(m)) of (1,2,...,m), m=2n or m=2n+1, with p(m+1-k) = m+1-p(k) for 1<=k<=m, such that adjacent numbers do not differ by 1. a(n) is also the number of point-symmetric arrangements of m non-attacking kings on an m X m board, with one in each row and column.

The programs for A283184, there is no canonical definition to state claims against.
-/

/-! ## A283184.P13215113020552158797

`2*A370767(n)-A370766(n)`
-/

namespace A283184.P13215113020552158797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A370767 n - A370766 n

end

end A283184.P13215113020552158797

/-! ## A283184.P3451541130584789134

`A000007(n)+(2*A370767(n))%A370766(n)`
-/

namespace A283184.P3451541130584789134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + Int.tmod (2 * A370767 n) (A370766 n)

end

end A283184.P3451541130584789134

/-!
# A283187: a(0) = 0; a(1) = 1; a(2*n) = 2*a(n), a(2*n+1) = a(n) + (-1)^a(n+1).

The programs for A283187, there is no canonical definition to state claims against.
-/

/-! ## A283187.P4267189049964144560

`A283165(A087808(n))%A288152(n+5)`
-/

namespace A283187.P4267189049964144560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283165 (A087808 n).toNat) (A288152 (n + 5))

end

end A283187.P4267189049964144560

/-! ## A283187.P15132025880849940377

`A283165(A000265(A000079(n))*A087808(n))`
-/

namespace A283187.P15132025880849940377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283165 (A000265 (A000079 n).toNat * A087808 n).toNat

end

end A283187.P15132025880849940377

/-! ## A283187.P10311285183755264999

`A283165(A087808(n)/A000265(A000079(n)))`
-/

namespace A283187.P10311285183755264999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283165 (SequenceMachineLib.roundAway ((A087808 n : ℚ) / (A000265 (A000079 n).toNat : ℚ))).toNat

end

end A283187.P10311285183755264999

/-! ## A283187.P18184035229488509872

`A283165(A087808(n)^A000265(A000079(n)))`
-/

namespace A283187.P18184035229488509872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283165 (SequenceMachineLib.roundAway ((A087808 n : ℚ) ^ (A000265 (A000079 n).toNat : ℤ))).toNat

end

end A283187.P18184035229488509872

/-! ## A283187.P4713736859978831386

`A283165(A087808(n)%A000040(A000079(n)))`
-/

namespace A283187.P4713736859978831386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283165 (Int.tmod (A087808 n) (A000040 (A000079 n).toNat)).toNat

end

end A283187.P4713736859978831386

/-!
# A283190: a(n) is the number of different values n mod k for 1 <= k <= floor(n/2).

The programs for A283190, there is no canonical definition to state claims against.
-/

/-! ## A283190.P4701404260823117565

`∑[log2(gcd(2, n))]-A227911(n+1)`
-/

namespace A283190.P4701404260823117565
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A227911 (n + 1) : ℝ)

end

end A283190.P4701404260823117565

/-! ## A283190.P5906326190488085063

`A008619(n)-A227911(n+1)`
-/

namespace A283190.P5906326190488085063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - A227911 (n + 1)

end

end A283190.P5906326190488085063

/-! ## A283190.P6278643206604674807

`∑[A059841(n)]-A227911(n+1)`
-/

namespace A283190.P6278643206604674807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A227911 (n + 1)

end

end A283190.P6278643206604674807

/-! ## A283190.P814361004746328335

`A004526(n)+1-A227911(n+1)`
-/

namespace A283190.P814361004746328335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + (1 - A227911 (n + 1))

end

end A283190.P814361004746328335

/-! ## A283190.P14219953488038918988

`∑[A000035(n+1)]-A227911(n+1)`
-/

namespace A283190.P14219953488038918988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A227911 (n + 1)

end

end A283190.P14219953488038918988

/-!
# A283191: Prime numbers p such that (2^p - 5)/3 is prime.

The programs for A283191, there is no canonical definition to state claims against.
-/

/-! ## A283191.P9689701569979365616

`p?[A363491(n+1)]`
-/

namespace A283191.P9689701569979365616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A283191.P9689701569979365616

/-!
# A283195: Clone sequence C(2,3): a(1) = 1; for n > 1, a(n) is obtained by repeating each digit of a(n-1), summing the digits in groups of 3, and concatenating the digits of the sums.

The programs for A283195, there is no canonical definition to state claims against.
-/

/-! ## A283195.P5406299829697134703

`A132015(∑[A087906(n+1)+1])`
-/

namespace A283195.P5406299829697134703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087906 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132015 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A283195.P5406299829697134703

/-! ## A283195.P3392032434726027533

`xor(A001998(n), A073642(A064898(n)))`
-/

namespace A283195.P3392032434726027533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001998 n) (A073642 (A064898 n).toNat)

end

end A283195.P3392032434726027533

/-!
# A283196: Number of ways to write n as x^2 + y^2 + z^2 + w^2 with 2*x + y and 2*x + z both squares, where x,y,z are integers with |y| <= |z|, and w is a positive integer.

The programs for A283196, there is no canonical definition to state claims against.
-/

/-! ## A283196.P9656444164233295919

`gcd(A016861(A000285(n+2)), A325768(n))`
-/

namespace A283196.P9656444164233295919
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016861 (A000285 (n + 2)).toNat) (A325768 n)

end

end A283196.P9656444164233295919

/-!
# A283197: Number of n X 2 0..1 arrays with no 1 equal to more than two of its horizontal and vertical neighbors, with the exception of exactly one element.

The programs for A283197, there is no canonical definition to state claims against.
-/

/-! ## A283197.P13111083984160812363

`A283203(∑[n+1]+2)`
-/

namespace A283197.P13111083984160812363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283203 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A283197.P13111083984160812363

/-! ## A283197.P17328196577140705917

`A283726(∑[n+2])`
-/

namespace A283197.P17328196577140705917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283726 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A283197.P17328196577140705917

/-! ## A283197.P12070873656333696644

`char[A083044(n)]*A283726(A000096(n+1))`
-/

namespace A283197.P12070873656333696644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083044 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A283726 (A000096 (n + 1)).toNat

end

end A283197.P12070873656333696644

/-! ## A283197.P9329316532931943193

`A283726(A000096(n+1))+A000007(n+1)`
-/

namespace A283197.P9329316532931943193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283726 (A000096 (n + 1)).toNat + A000007 (n + 1)

end

end A283197.P9329316532931943193

/-!
# A283198: Number of n X 3 0..1 arrays with no 1 equal to more than two of its horizontal and vertical neighbors, with the exception of exactly one element.

The programs for A283198, there is no canonical definition to state claims against.
-/

/-! ## A283198.P3630414648233895594

`A283203(∑[n+2]+4)`
-/

namespace A283198.P3630414648233895594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283203 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A283198.P3630414648233895594

/-! ## A283198.P17808247458555007403

`A283203(A167614(n+1))%A000533(n)`
-/

namespace A283198.P17808247458555007403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283203 (A167614 (n + 1)).toNat) (A000533 n)

end

end A283198.P17808247458555007403

/-! ## A283198.P9112034267796987497

`lcm(A016251(n), A283203(A167614(n+1)))`
-/

namespace A283198.P9112034267796987497
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A016251 n) (A283203 (A167614 (n + 1)).toNat)

end

end A283198.P9112034267796987497

/-! ## A283198.P9880905865971346859

`record[A283203(∑[A158416(n)])]`
-/

namespace A283198.P9880905865971346859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283203 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283198.P9880905865971346859

/-! ## A283198.P12568533051773042470

`record[gcd(A230614(n+1), A283203(n+1))]`
-/

namespace A283198.P12568533051773042470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A230614 (n + 1)) (A283203 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283198.P12568533051773042470

/-!
# A283199: Number of nX4 0..1 arrays with no 1 equal to more than two of its horizontal and vertical neighbors, with the exception of exactly one element.

The programs for A283199, there is no canonical definition to state claims against.
-/

/-! ## A283199.P4801412236712120884

`A283203(A374004(n+1))`
-/

namespace A283199.P4801412236712120884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283203 (A374004 (n + 1)).toNat

end

end A283199.P4801412236712120884

/-! ## A283199.P3534423099051473689

`A283203(A141214(n)+7)`
-/

namespace A283199.P3534423099051473689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283203 (A141214 n + 7).toNat

end

end A283199.P3534423099051473689

/-! ## A283199.P6972694875217424506

`A283203(A052905(n)+9)`
-/

namespace A283199.P6972694875217424506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283203 (A052905 n + 9).toNat

end

end A283199.P6972694875217424506

/-! ## A283199.P15857937506351935729

`A283203(A055999(n)+10)`
-/

namespace A283199.P15857937506351935729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283203 (A055999 n + 10).toNat

end

end A283199.P15857937506351935729

/-! ## A283199.P5158639942943892297

`A283203(A167614(n+2)+1)`
-/

namespace A283199.P5158639942943892297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283203 (A167614 (n + 2) + 1).toNat

end

end A283199.P5158639942943892297

