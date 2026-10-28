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
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
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
import Seq.B003.C004
import Seq.B003.C005
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A319801: Odd numbers without middle divisors.

The programs for A319801, the canonical program `A319801.P2334632365175691862` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319801 has offset 1).

The definition of A319801 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319801.P7217498881501304224

`filter[2*n+1, A348327(#)]`
-/

namespace A319801.P7217498881501304224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j) = 1) n)

end

end A319801.P7217498881501304224

namespace A319801

/-- `filter[2*n+1, A348327(#)]` -/
def P7217498881501304224.Spec : Prop :=
  ∀ n, (P7217498881501304224.a n : ℤ) = A319801 (n + 1)

end A319801

/-! ## A319801.P13476781256616095731

`filter[2*n+1, A348406(#)]`
-/

namespace A319801.P13476781256616095731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348406 (f1 j) = 1) n)

end

end A319801.P13476781256616095731

namespace A319801

/-- `filter[2*n+1, A348406(#)]` -/
def P13476781256616095731.Spec : Prop :=
  ∀ n, (P13476781256616095731.a n : ℤ) = A319801 (n + 1)

end A319801

/-! ## A319801.P11615797798245215456

`eq[1, A348406(n^and(1, n))]`
-/

namespace A319801.P11615797798245215456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348406 (n ^ Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A319801.P11615797798245215456

namespace A319801

/-- `eq[1, A348406(n^and(1, n))]` -/
def P11615797798245215456.Spec : Prop :=
  ∀ n, (P11615797798245215456.a n : ℤ) = A319801 (n + 1)

end A319801

/-! ## A319801.P606391912111917423

`eq[and(1, n), A348406(or(1, n))]`
-/

namespace A319801.P606391912111917423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348406 (Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A319801.P606391912111917423

namespace A319801

/-- `eq[and(1, n), A348406(or(1, n))]` -/
def P606391912111917423.Spec : Prop :=
  ∀ n, (P606391912111917423.a n : ℤ) = A319801 (n + 1)

end A319801

/-! ## A319801.P2334632365175691862

`comp[or(n, A348327(n+1))]+1`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A319801

/-- `comp[or(n, A348327(n+1))]+1` -/
def P2334632365175691862.Spec : Prop :=
  ∀ n, (P2334632365175691862.a n : ℤ) = A319801 (n + 1)

theorem P2334632365175691862.correct : P2334632365175691862.Spec := by
  intro n
  simp only [A319801, Nat.add_sub_cancel]

end A319801

/-! ## A319801.P5081674384614787612

`eq[(-1)^n, A348406(n+1)]+1`
-/

namespace A319801.P5081674384614787612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348406 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A319801.P5081674384614787612

namespace A319801

/-- `eq[(-1)^n, A348406(n+1)]+1` -/
def P5081674384614787612.Spec : Prop :=
  ∀ n, (P5081674384614787612.a n : ℤ) = A319801 (n + 1)

end A319801

/-! ## A319801.P4314740994962674171

`filter[2*n+1, A348364(#)]`
-/

namespace A319801.P4314740994962674171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348364 (f1 j) = 1) n)

end

end A319801.P4314740994962674171

namespace A319801

/-- `filter[2*n+1, A348364(#)]` -/
def P4314740994962674171.Spec : Prop :=
  ∀ n, (P4314740994962674171.a n : ℤ) = A319801 (n + 1)

end A319801

/-! ## A319801.P4941448051149083226

`eq[(-1)^n, A348364(n+1)]+1`
-/

namespace A319801.P4941448051149083226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348364 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A319801.P4941448051149083226

namespace A319801

/-- `eq[(-1)^n, A348364(n+1)]+1` -/
def P4941448051149083226.Spec : Prop :=
  ∀ n, (P4941448051149083226.a n : ℤ) = A319801 (n + 1)

end A319801

/-! ## A319801.P2168790450523284715

`∩[2*n+1, A071561(n+1)]`
-/

namespace A319801.P2168790450523284715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319801.P2168790450523284715

namespace A319801

/-- `∩[2*n+1, A071561(n+1)]` -/
def P2168790450523284715.Spec : Prop :=
  ∀ n, (P2168790450523284715.a n : ℤ) = A319801 (n + 1)

end A319801

/-! ## A319801.P15794435336839136443

`filter[A071561(n+1), A053867(#)]`
-/

namespace A319801.P15794435336839136443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053867 (f1 j).toNat = 1) n)

end

end A319801.P15794435336839136443

namespace A319801

/-- `filter[A071561(n+1), A053867(#)]` -/
def P15794435336839136443.Spec : Prop :=
  ∀ n, P15794435336839136443.a n = A319801 (n + 1)

end A319801

/-! ## A319801.P11689954914784998586

`filter[A071561(n+1), A323158(#)]`
-/

namespace A319801.P11689954914784998586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A319801.P11689954914784998586

namespace A319801

/-- `filter[A071561(n+1), A323158(#)]` -/
def P11689954914784998586.Spec : Prop :=
  ∀ n, P11689954914784998586.a n = A319801 (n + 1)

end A319801

/-! ## A319801.P4915801373755954373

`∩[A071561(n+1), A088828(n+1)]`
-/

namespace A319801.P4915801373755954373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319801.P4915801373755954373

namespace A319801

/-- `∩[A071561(n+1), A088828(n+1)]` -/
def P4915801373755954373.Spec : Prop :=
  ∀ n, (P4915801373755954373.a n : ℤ) = A319801 (n + 1)

end A319801

/-! ## A319801.P12645262793896604613

`∩[A071561(n+1), A088948(n+1)]`
-/

namespace A319801.P12645262793896604613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319801.P12645262793896604613

namespace A319801

/-- `∩[A071561(n+1), A088948(n+1)]` -/
def P12645262793896604613.Spec : Prop :=
  ∀ n, (P12645262793896604613.a n : ℤ) = A319801 (n + 1)

end A319801

/-! ## A319801.P5827968647824410329

`∩[A071561(n+1), A128201(n+1)]`
-/

namespace A319801.P5827968647824410329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319801.P5827968647824410329

namespace A319801

/-- `∩[A071561(n+1), A128201(n+1)]` -/
def P5827968647824410329.Spec : Prop :=
  ∀ n, (P5827968647824410329.a n : ℤ) = A319801 (n + 1)

end A319801

/-! ## A319801.P5090993977142717307

`∩[A071561(n+1), A144396(n+1)]`
-/

namespace A319801.P5090993977142717307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319801.P5090993977142717307

namespace A319801

/-- `∩[A071561(n+1), A144396(n+1)]` -/
def P5090993977142717307.Spec : Prop :=
  ∀ n, (P5090993977142717307.a n : ℤ) = A319801 (n + 1)

end A319801

/-! ## A319801.P8609226292201044697

`filter[A071561(n+1), A000035(#)]`
-/

namespace A319801.P8609226292201044697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A319801.P8609226292201044697

namespace A319801

/-- `filter[A071561(n+1), A000035(#)]` -/
def P8609226292201044697.Spec : Prop :=
  ∀ n, P8609226292201044697.a n = A319801 (n + 1)

end A319801

/-! ## A319801.P16732890987467914744

`filter[A071561(n+1), A266070(#)]`
-/

namespace A319801.P16732890987467914744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A319801.P16732890987467914744

namespace A319801

/-- `filter[A071561(n+1), A266070(#)]` -/
def P16732890987467914744.Spec : Prop :=
  ∀ n, P16732890987467914744.a n = A319801 (n + 1)

end A319801

/-! ## A319801.P9531793127876016019

`filter[A071561(n+1), A266719(#)]`
-/

namespace A319801.P9531793127876016019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A319801.P9531793127876016019

namespace A319801

/-- `filter[A071561(n+1), A266719(#)]` -/
def P9531793127876016019.Spec : Prop :=
  ∀ n, P9531793127876016019.a n = A319801 (n + 1)

end A319801

/-! ## A319801.P12524600850079689454

`filter[A071561(n+1), A267155(#)]`
-/

namespace A319801.P12524600850079689454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267155 (f1 j).toNat = 1) n)

end

end A319801.P12524600850079689454

namespace A319801

/-- `filter[A071561(n+1), A267155(#)]` -/
def P12524600850079689454.Spec : Prop :=
  ∀ n, P12524600850079689454.a n = A319801 (n + 1)

end A319801

/-! ## A319801.P6268533501852074024

`filter[A071561(n+1), A267256(#)]`
-/

namespace A319801.P6268533501852074024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267256 (f1 j).toNat = 1) n)

end

end A319801.P6268533501852074024

namespace A319801

/-- `filter[A071561(n+1), A267256(#)]` -/
def P6268533501852074024.Spec : Prop :=
  ∀ n, P6268533501852074024.a n = A319801 (n + 1)

end A319801

/-!
# A319802: Even numbers without middle divisors.

The programs for A319802, the canonical program `A319802.P14391175377016966646` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319802 has offset 1).

The definition of A319802 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319802.P14391175377016966646

`2*A348471(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A319802

/-- `2*A348471(n+1)` -/
def P14391175377016966646.Spec : Prop :=
  ∀ n, P14391175377016966646.a n = A319802 (n + 1)

theorem P14391175377016966646.correct : P14391175377016966646.Spec := by
  intro n
  simp only [A319802, Nat.add_sub_cancel]

end A319802

/-! ## A319802.P17174055058951066963

`filter[A139710(n+1), A348327(#)]`
-/

namespace A319802.P17174055058951066963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j).toNat = 1) n)

end

end A319802.P17174055058951066963

namespace A319802

/-- `filter[A139710(n+1), A348327(#)]` -/
def P17174055058951066963.Spec : Prop :=
  ∀ n, P17174055058951066963.a n = A319802 (n + 1)

end A319802

/-! ## A319802.P3800165190797019751

`filter[A115036(n+1), A348327(#)]`
-/

namespace A319802.P3800165190797019751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j).toNat = 1) n)

end

end A319802.P3800165190797019751

namespace A319802

/-- `filter[A115036(n+1), A348327(#)]` -/
def P3800165190797019751.Spec : Prop :=
  ∀ n, P3800165190797019751.a n = A319802 (n + 1)

end A319802

/-! ## A319802.P15322714087031909626

`filter[A088829(n+1), A348327(#)]`
-/

namespace A319802.P15322714087031909626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j).toNat = 1) n)

end

end A319802.P15322714087031909626

namespace A319802

/-- `filter[A088829(n+1), A348327(#)]` -/
def P15322714087031909626.Spec : Prop :=
  ∀ n, P15322714087031909626.a n = A319802 (n + 1)

end A319802

/-! ## A319802.P9237631419705041038

`filter[A053869(n+1), A348327(#)]`
-/

namespace A319802.P9237631419705041038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j).toNat = 1) n)

end

end A319802.P9237631419705041038

namespace A319802

/-- `filter[A053869(n+1), A348327(#)]` -/
def P9237631419705041038.Spec : Prop :=
  ∀ n, P9237631419705041038.a n = A319802 (n + 1)

end A319802

/-! ## A319802.P10215669293411582981

`filter[A348005(n+1), A348327(#)]`
-/

namespace A319802.P10215669293411582981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j).toNat = 1) n)

end

end A319802.P10215669293411582981

namespace A319802

/-- `filter[A348005(n+1), A348327(#)]` -/
def P10215669293411582981.Spec : Prop :=
  ∀ n, P10215669293411582981.a n = A319802 (n + 1)

end A319802

/-! ## A319802.P17283981137279657861

`filter[A305634(n+1), A348327(#)]`
-/

namespace A319802.P17283981137279657861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j).toNat = 1) n)

end

end A319802.P17283981137279657861

namespace A319802

/-- `filter[A305634(n+1), A348327(#)]` -/
def P17283981137279657861.Spec : Prop :=
  ∀ n, P17283981137279657861.a n = A319802 (n + 1)

end A319802

/-! ## A319802.P12014604675410073498

`filter[A157502(n+1), A348327(#)]`
-/

namespace A319802.P12014604675410073498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j).toNat = 1) n)

end

end A319802.P12014604675410073498

namespace A319802

/-- `filter[A157502(n+1), A348327(#)]` -/
def P12014604675410073498.Spec : Prop :=
  ∀ n, P12014604675410073498.a n = A319802 (n + 1)

end A319802

/-! ## A319802.P3317600841809627143

`filter[A020744(n), A348327(#)]`
-/

namespace A319802.P3317600841809627143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j).toNat = 1) n)

end

end A319802.P3317600841809627143

namespace A319802

/-- `filter[A020744(n), A348327(#)]` -/
def P3317600841809627143.Spec : Prop :=
  ∀ n, P3317600841809627143.a n = A319802 (n + 1)

end A319802

/-! ## A319802.P4208312173297249017

`filter[A020739(n), A348327(#)]`
-/

namespace A319802.P4208312173297249017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j).toNat = 1) n)

end

end A319802.P4208312173297249017

namespace A319802

/-- `filter[A020739(n), A348327(#)]` -/
def P4208312173297249017.Spec : Prop :=
  ∀ n, P4208312173297249017.a n = A319802 (n + 1)

end A319802

/-! ## A319802.P6548782664506891207

`A004277(A348471(n+1))`
-/

namespace A319802.P6548782664506891207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A348471 (n + 1)).toNat

end

end A319802.P6548782664506891207

namespace A319802

/-- `A004277(A348471(n+1))` -/
def P6548782664506891207.Spec : Prop :=
  ∀ n, P6548782664506891207.a n = A319802 (n + 1)

end A319802

/-! ## A319802.P3731490401208967835

`filter[A004277(n), A348327(#)]`
-/

namespace A319802.P3731490401208967835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j).toNat = 1) n)

end

end A319802.P3731490401208967835

namespace A319802

/-- `filter[A004277(n), A348327(#)]` -/
def P3731490401208967835.Spec : Prop :=
  ∀ n, P3731490401208967835.a n = A319802 (n + 1)

end A319802

/-! ## A319802.P13654729771188080185

`filter[A103517(n), A348327(#)]`
-/

namespace A319802.P13654729771188080185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j).toNat = 1) n)

end

end A319802.P13654729771188080185

namespace A319802

/-- `filter[A103517(n), A348327(#)]` -/
def P13654729771188080185.Spec : Prop :=
  ∀ n, P13654729771188080185.a n = A319802 (n + 1)

end A319802

/-! ## A319802.P5441226982488851019

`filter[A004275(n+1), A348327(#)]`
-/

namespace A319802.P5441226982488851019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j).toNat = 1) n)

end

end A319802.P5441226982488851019

namespace A319802

/-- `filter[A004275(n+1), A348327(#)]` -/
def P5441226982488851019.Spec : Prop :=
  ∀ n, P5441226982488851019.a n = A319802 (n + 1)

end A319802

/-! ## A319802.P8078936252537245175

`filter[A005843(n+1), A348327(#)]`
-/

namespace A319802.P8078936252537245175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j).toNat = 1) n)

end

end A319802.P8078936252537245175

namespace A319802

/-- `filter[A005843(n+1), A348327(#)]` -/
def P8078936252537245175.Spec : Prop :=
  ∀ n, P8078936252537245175.a n = A319802 (n + 1)

end A319802

/-! ## A319802.P6435494377521534801

`eq[A040011(n), A348406(n+1)]+1`
-/

namespace A319802.P6435494377521534801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040011 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348406 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A319802.P6435494377521534801

namespace A319802

/-- `eq[A040011(n), A348406(n+1)]+1` -/
def P6435494377521534801.Spec : Prop :=
  ∀ n, (P6435494377521534801.a n : ℤ) = A319802 (n + 1)

end A319802

/-! ## A319802.P4399471176590003265

`A245092(A348471(n+1)+A348471(n+1))`
-/

namespace A319802.P4399471176590003265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A348471 (n + 1) + A348471 (n + 1)).toNat

end

end A319802.P4399471176590003265

namespace A319802

/-- `A245092(A348471(n+1)+A348471(n+1))` -/
def P4399471176590003265.Spec : Prop :=
  ∀ n, P4399471176590003265.a n = A319802 (n + 1)

end A319802

/-! ## A319802.P5630246086500788901

`filter[A176693(n+3), A348327(#)]`
-/

namespace A319802.P5630246086500788901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176693 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j).toNat = 1) n)

end

end A319802.P5630246086500788901

namespace A319802

/-- `filter[A176693(n+3), A348327(#)]` -/
def P5630246086500788901.Spec : Prop :=
  ∀ n, P5630246086500788901.a n = A319802 (n + 1)

end A319802

/-! ## A319802.P15451810340617330634

`eq[n%2, A348364(n+1)]+1`
-/

namespace A319802.P15451810340617330634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348364 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A319802.P15451810340617330634

namespace A319802

/-- `eq[n%2, A348364(n+1)]+1` -/
def P15451810340617330634.Spec : Prop :=
  ∀ n, (P15451810340617330634.a n : ℤ) = A319802 (n + 1)

end A319802

/-! ## A319802.P6994758562187734671

`eq[A115716(n), A348364(n+1)]+1`
-/

namespace A319802.P6994758562187734671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115716 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348364 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A319802.P6994758562187734671

namespace A319802

/-- `eq[A115716(n), A348364(n+1)]+1` -/
def P6994758562187734671.Spec : Prop :=
  ∀ n, (P6994758562187734671.a n : ℤ) = A319802 (n + 1)

end A319802

/-!
# A319803: a(n) = A319651(n) + A038574(n).

The programs for A319803, there is no canonical definition to state claims against.
-/

/-! ## A319803.P13103899204179362994

`A319651(n)+A038574(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A319803.P13103899204179362994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319651 n + A038574 n

end

end A319803.P13103899204179362994

/-! ## A319803.P18006991209956857723

`A164993(n)+2*A038574(n)`
-/

namespace A319803.P18006991209956857723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164993 n + 2 * A038574 n

end

end A319803.P18006991209956857723

/-! ## A319803.P8189985267741378679

`2*A319651(n)-A164993(n)`
-/

namespace A319803.P8189985267741378679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A319651 n - A164993 n

end

end A319803.P8189985267741378679

/-! ## A319803.P664890431508754719

`A164993(n)+A005843(A038574(n))`
-/

namespace A319803.P664890431508754719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164993 n + A005843 (A038574 n).toNat

end

end A319803.P664890431508754719

/-! ## A319803.P17112780398122417269

`A055946(A319651(n))`
-/

namespace A319803.P17112780398122417269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055946 (A319651 n).toNat

end

end A319803.P17112780398122417269

/-! ## A319803.P14943091725690722087

`A164993(3*n)-2*A164993(n)`
-/

namespace A319803.P14943091725690722087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164993 (3 * n) - 2 * A164993 n

end

end A319803.P14943091725690722087

/-!
# A319804: a(n) = A319720(n) + A319652(n).

The programs for A319804, there is no canonical definition to state claims against.
-/

/-! ## A319804.P12405316763888461994

`A319720(n)+A319652(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A319804.P12405316763888461994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319720 n + A319652 n

end

end A319804.P12405316763888461994

/-! ## A319804.P7797622363311573402

`A165012(n)+2*A319652(n)`
-/

namespace A319804.P7797622363311573402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165012 n + 2 * A319652 n

end

end A319804.P7797622363311573402

/-! ## A319804.P6710409253545738083

`2*A319720(n)-A165012(n)`
-/

namespace A319804.P6710409253545738083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A319720 n - A165012 n

end

end A319804.P6710409253545738083

/-! ## A319804.P16423667991500804931

`A165012(n)+A005843(A319652(n))`
-/

namespace A319804.P16423667991500804931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165012 n + A005843 (A319652 n).toNat

end

end A319804.P16423667991500804931

/-! ## A319804.P12038198340723298769

`2*A319720(n)-A008585(A165013(n))`
-/

namespace A319804.P12038198340723298769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A319720 n - A008585 (A165013 n).toNat

end

end A319804.P12038198340723298769

/-! ## A319804.P7698835185718501965

`A008585(A319720(n)-A165013(n))-A319720(n)`
-/

namespace A319804.P7698835185718501965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A319720 n - A165013 n).toNat - A319720 n

end

end A319804.P7698835185718501965

/-! ## A319804.P9446642942417342661

`A055948(A319720(n))`
-/

namespace A319804.P9446642942417342661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055948 (A319720 n).toNat

end

end A319804.P9446642942417342661

/-! ## A319804.P2450448657787220753

`A005843(A319720(n))-A165012(n)`
-/

namespace A319804.P2450448657787220753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A319720 n).toNat - A165012 n

end

end A319804.P2450448657787220753

/-! ## A319804.P13628990513311377923

`A008587(A319720(n))-A165012(A008586(n))`
-/

namespace A319804.P13628990513311377923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A319720 n).toNat - A165012 (A008586 n).toNat

end

end A319804.P13628990513311377923

/-! ## A319804.P13654247301583472026

`A319720(A008586(n))/2-A165012(n)`
-/

namespace A319804.P13654247301583472026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319720 (A008586 n).toNat : ℚ) / 2 - (A165012 n : ℚ)

end

end A319804.P13654247301583472026

/-!
# A319805: a(n) = A319722(n) + A319653(n).

The programs for A319805, there is no canonical definition to state claims against.
-/

/-! ## A319805.P10238560219103025143

`A319722(n)+A319653(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A319805.P10238560219103025143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319722 n + A319653 n

end

end A319805.P10238560219103025143

/-! ## A319805.P12303364448150414437

`A165032(n)+2*A319653(n)`
-/

namespace A319805.P12303364448150414437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165032 n + 2 * A319653 n

end

end A319805.P12303364448150414437

/-! ## A319805.P1562167169250451390

`2*A319722(n)-A165032(n)`
-/

namespace A319805.P1562167169250451390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A319722 n - A165032 n

end

end A319805.P1562167169250451390

/-! ## A319805.P9164310834092913324

`A055950(A319722(n))`
-/

namespace A319805.P9164310834092913324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055950 (A319722 n).toNat

end

end A319805.P9164310834092913324

/-! ## A319805.P13016067614584852171

`A319722(n)+A030104(A319722(n%(n+1)))`
-/

namespace A319805.P13016067614584852171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319722 n + A030104 (A319722 (n % (n + 1))).toNat

end

end A319805.P13016067614584852171

/-! ## A319805.P4801728031745211074

`A008586(A165033(n))+2*A319653(n)`
-/

namespace A319805.P4801728031745211074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A165033 n).toNat + 2 * A319653 n

end

end A319805.P4801728031745211074

/-! ## A319805.P15171531956455441178

`2*A319722(n)-A008586(A165033(n))`
-/

namespace A319805.P15171531956455441178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A319722 n - A008586 (A165033 n).toNat

end

end A319805.P15171531956455441178

/-!
# A319806: a(n) = A319723(n) + A319654(n).

The programs for A319806, there is no canonical definition to state claims against.
-/

/-! ## A319806.P10779351692277230247

`A319723(n)+A319654(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A319806.P10779351692277230247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319723 n + A319654 n

end

end A319806.P10779351692277230247

/-! ## A319806.P9168998058488349238

`A165051(n)+2*A319654(n)`
-/

namespace A319806.P9168998058488349238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165051 n + 2 * A319654 n

end

end A319806.P9168998058488349238

/-! ## A319806.P11590728674660751600

`2*A319723(n)-A165051(n)`
-/

namespace A319806.P11590728674660751600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A319723 n - A165051 n

end

end A319806.P11590728674660751600

/-! ## A319806.P8634426943800761737

`A165051(n)+A005843(A319654(n))`
-/

namespace A319806.P8634426943800761737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165051 n + A005843 (A319654 n).toNat

end

end A319806.P8634426943800761737

/-! ## A319806.P17887747655794708982

`A055952(A319723(n))`
-/

namespace A319806.P17887747655794708982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055952 (A319723 n).toNat

end

end A319806.P17887747655794708982

/-! ## A319806.P14488876726172043940

`A055952(A319654(n)+A165051(n))`
-/

namespace A319806.P14488876726172043940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055952 (A319654 n + A165051 n).toNat

end

end A319806.P14488876726172043940

/-! ## A319806.P9729300929700173915

`A005843(A319723(n))-A165051(n)`
-/

namespace A319806.P9729300929700173915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A319723 n).toNat - A165051 n

end

end A319806.P9729300929700173915

/-! ## A319806.P2762392950765255640

`A008587(A165052(n))+2*A319654(n)`
-/

namespace A319806.P2762392950765255640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A165052 n).toNat + 2 * A319654 n

end

end A319806.P2762392950765255640

/-! ## A319806.P13186387773615656607

`2*A319723(n)-A008587(A165052(n))`
-/

namespace A319806.P13186387773615656607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A319723 n - A008587 (A165052 n).toNat

end

end A319806.P13186387773615656607

/-!
# A319807: a(n) = A319724(n) + A319655(n).

The programs for A319807, there is no canonical definition to state claims against.
-/

/-! ## A319807.P13489422032875511215

`A319724(n)+A319655(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A319807.P13489422032875511215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319724 n + A319655 n

end

end A319807.P13489422032875511215

/-! ## A319807.P244835490807176602

`A165071(n)+2*A319655(n)`
-/

namespace A319807.P244835490807176602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165071 n + 2 * A319655 n

end

end A319807.P244835490807176602

/-! ## A319807.P9258021586730900267

`2*A319724(n)-A165071(n)`
-/

namespace A319807.P9258021586730900267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A319724 n - A165071 n

end

end A319807.P9258021586730900267

/-! ## A319807.P1006736630182529674

`A165071(n)+A005843(A319655(n))`
-/

namespace A319807.P1006736630182529674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165071 n + A005843 (A319655 n).toNat

end

end A319807.P1006736630182529674

/-! ## A319807.P4278616695748488154

`A055954(A319724(n))`
-/

namespace A319807.P4278616695748488154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055954 (A319724 n).toNat

end

end A319807.P4278616695748488154

/-! ## A319807.P16583791188117407555

`A055954(A319655(n)+A165071(n))`
-/

namespace A319807.P16583791188117407555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055954 (A319655 n + A165071 n).toNat

end

end A319807.P16583791188117407555

/-! ## A319807.P11399723880724412129

`A005843(A319724(n))-A165071(n)`
-/

namespace A319807.P11399723880724412129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A319724 n).toNat - A165071 n

end

end A319807.P11399723880724412129

/-! ## A319807.P2868136571200328458

`A008588(A165072(n))+2*A319655(n)`
-/

namespace A319807.P2868136571200328458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A165072 n).toNat + 2 * A319655 n

end

end A319807.P2868136571200328458

/-! ## A319807.P2371063997869440784

`2*A319724(n)-A008588(A165072(n))`
-/

namespace A319807.P2371063997869440784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A319724 n - A008588 (A165072 n).toNat

end

end A319807.P2371063997869440784

/-!
# A319808: a(n) = A319725(n) + A319656(n).

The programs for A319808, there is no canonical definition to state claims against.
-/

/-! ## A319808.P13586196561286707730

`A319725(n)+A319656(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A319808.P13586196561286707730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319725 n + A319656 n

end

end A319808.P13586196561286707730

/-! ## A319808.P13086989781034605862

`A165090(n)+2*A319656(n)`
-/

namespace A319808.P13086989781034605862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165090 n + 2 * A319656 n

end

end A319808.P13086989781034605862

/-! ## A319808.P1230400396236261212

`2*A319725(n)-A165090(n)`
-/

namespace A319808.P1230400396236261212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A319725 n - A165090 n

end

end A319808.P1230400396236261212

/-! ## A319808.P4992436968980859688

`A055956(A319725(n))`
-/

namespace A319808.P4992436968980859688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055956 (A319725 n).toNat

end

end A319808.P4992436968980859688

/-! ## A319808.P924097599750524305

`A055956(A319656(n)+A165090(n))`
-/

namespace A319808.P924097599750524305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055956 (A319656 n + A165090 n).toNat

end

end A319808.P924097599750524305

/-! ## A319808.P18086525033928073131

`2*A319725(n)-A008589(A165091(n))`
-/

namespace A319808.P18086525033928073131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A319725 n - A008589 (A165091 n).toNat

end

end A319808.P18086525033928073131

/-!
# A319810: Number of fully periodic integer partitions of n.

The programs for A319810, there is no canonical definition to state claims against.
-/

/-! ## A319810.P1929435770237975784

`A024994(n+1)+A007318(A323719(3*n+5))`
-/

namespace A319810.P1929435770237975784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024994 (n + 1) + A007318 (A323719 (3 * n + 5)).toNat

end

end A319810.P1929435770237975784

/-! ## A319810.P17075749171999907677

`A063435(A239242(n))+A024994(n+1)`
-/

namespace A319810.P17075749171999907677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063435 (A239242 n).toNat + A024994 (n + 1)

end

end A319810.P17075749171999907677

/-! ## A319810.P15897731158441641431

`A024994(n+1)%A123061(n+2)+1`
-/

namespace A319810.P15897731158441641431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024994 (n + 1)) (A123061 (n + 2)) + 1

end

end A319810.P15897731158441641431

/-! ## A319810.P13568563070194405151

`A057427(A303853(n+3))+A024994(n+1)`
-/

namespace A319810.P13568563070194405151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A303853 (n + 3)).toNat + A024994 (n + 1)

end

end A319810.P13568563070194405151

/-!
# A319811: Number of totally aperiodic integer partitions of n.

The programs for A319811, there is no canonical definition to state claims against.
-/

/-! ## A319811.P2927324547449083975

`A000837(A187829(n+1))-A026814(A025147(n))`
-/

namespace A319811.P2927324547449083975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 (A187829 (n + 1)).toNat - A026814 (A025147 n).toNat

end

end A319811.P2927324547449083975

/-! ## A319811.P2453136445473187557

`A000837(A077168(n))-A283001(n)`
-/

namespace A319811.P2453136445473187557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 (A077168 n).toNat - A283001 n

end

end A319811.P2453136445473187557

/-! ## A319811.P1916056238706174012

`A000837(n+1)-A083896(A000079(n))`
-/

namespace A319811.P1916056238706174012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 (n + 1) - A083896 (A000079 n).toNat

end

end A319811.P1916056238706174012

/-! ## A319811.P3710005029373981715

`A000837(n+1)-A335474(A217153(n+1))`
-/

namespace A319811.P3710005029373981715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 (n + 1) - A335474 (A217153 (n + 1)).toNat

end

end A319811.P3710005029373981715

/-! ## A319811.P15105080767929799435

`A000837(n+1)-A001899(A053576(n))`
-/

namespace A319811.P15105080767929799435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 (n + 1) - A001899 (A053576 n).toNat

end

end A319811.P15105080767929799435

/-!
# A319813: a(n) is the smallest positive k such that k^n + 1 is divisible by n, or 0 if no such k exists.

The programs for A319813, there is no canonical definition to state claims against.
-/

/-! ## A319813.P17689291001400460125

`round(A076951(n+1)^acot(n))`
-/

namespace A319813.P17689291001400460125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A076951 (n + 1) : ℝ) ^ (SequenceMachineLib.acot (n : ℝ)))

end

end A319813.P17689291001400460125

/-! ## A319813.P2878966263690543161

`A004718(or(n^(char[n²]/2), A054432(n+1)))`
-/

namespace A319813.P2878966263690543161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (Int.lor (SequenceMachineLib.roundAway ((n : ℝ) ^ (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) / 2 : ℝ))) (A054432 (n + 1))).toNat

end

end A319813.P2878966263690543161

/-! ## A319813.P8094762038525724384

`A221642(A000124(n)+1-A285699(n+1))`
-/

namespace A319813.P8094762038525724384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221642 (A000124 n + (1 - A285699 (n + 1))).toNat

end

end A319813.P8094762038525724384

/-! ## A319813.P6931879958059627775

`A026741(A290828(n))%A263027(n+1)`
-/

namespace A319813.P6931879958059627775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026741 (A290828 n).toNat) (A263027 (n + 1))

end

end A319813.P6931879958059627775

/-! ## A319813.P7339013970201530661

`xor(A174869(A280412(n)), A268336(n+1))`
-/

namespace A319813.P7339013970201530661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A174869 (A280412 n).toNat) (A268336 (n + 1))

end

end A319813.P7339013970201530661

/-!
# A319814: Number of partitions of n into exactly four positive triangular numbers.

The programs for A319814, there is no canonical definition to state claims against.
-/

/-! ## A319814.P14310402605443316424

`A319797(∑[n+4]+10)`
-/

namespace A319814.P14310402605443316424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A319814.P14310402605443316424

/-! ## A319814.P4103855553227661616

`A181506(∑[n+3]+7)`
-/

namespace A319814.P4103855553227661616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181506 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A319814.P4103855553227661616

/-! ## A319814.P1591967666137049929

`A181506(A167614(n+2)+1)%A004767(n)`
-/

namespace A319814.P1591967666137049929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181506 (A167614 (n + 2) + 1).toNat) (A004767 n)

end

end A319814.P1591967666137049929

/-! ## A319814.P11305190155256029193

`A210718(A366624(n+1))+A181506(A167614(n+2)+1)`
-/

namespace A319814.P11305190155256029193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210718 (A366624 (n + 1)).toNat + A181506 (A167614 (n + 2) + 1).toNat

end

end A319814.P11305190155256029193

/-! ## A319814.P5211922105070020458

`A368734(A193762(n+1))`
-/

namespace A319814.P5211922105070020458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368734 (A193762 (n + 1)).toNat

end

end A319814.P5211922105070020458

/-!
# A319815: Number of partitions of n into exactly five positive triangular numbers.

The programs for A319815, there is no canonical definition to state claims against.
-/

/-! ## A319815.P14600420170172023248

`A319797(∑[n+5]+15)`
-/

namespace A319815.P14600420170172023248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (∑ j ∈ Finset.range (n + 1), f1 j + 15)

end

end A319815.P14600420170172023248

/-! ## A319815.P17495200863244219439

`A181506(∑[n+4]+11)`
-/

namespace A319815.P17495200863244219439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181506 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A319815.P17495200863244219439

/-! ## A319815.P9805542730805856629

`A196563(A223894(n+2))`
-/

namespace A319815.P9805542730805856629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A223894 (n + 2)).toNat

end

end A319815.P9805542730805856629

/-! ## A319815.P4578730544775280812

`A001221(A332834(n)+A123402(2*(n+2)))`
-/

namespace A319815.P4578730544775280812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A332834 n + A123402 (2 * (n + 2))).toNat

end

end A319815.P4578730544775280812

/-! ## A319815.P1880139516808578396

`A097795(A325042(n+1)+2)`
-/

namespace A319815.P1880139516808578396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097795 (A325042 (n + 1) + 2).toNat

end

end A319815.P1880139516808578396

/-!
# A319816: Number of partitions of n into exactly six positive triangular numbers.

The programs for A319816, there is no canonical definition to state claims against.
-/

/-! ## A319816.P4807806004990817271

`A319797(A056119(n)+27)`
-/

namespace A319816.P4807806004990817271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A056119 n + 27).toNat

end

end A319816.P4807806004990817271

/-! ## A319816.P3006861435098800056

`A319797(A167499(n+5)+1)`
-/

namespace A319816.P3006861435098800056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A167499 (n + 5) + 1).toNat

end

end A319816.P3006861435098800056

/-! ## A319816.P11574152888551974353

`A319797(A167487(n+5)-1)`
-/

namespace A319816.P11574152888551974353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A167487 (n + 5) - 1).toNat

end

end A319816.P11574152888551974353

/-! ## A319816.P6614065048448844109

`A319797(A167614(n+5)+3)`
-/

namespace A319816.P6614065048448844109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A167614 (n + 5) + 3).toNat

end

end A319816.P6614065048448844109

/-! ## A319816.P951369880743415201

`A319797(A133263(n+6)+4)`
-/

namespace A319816.P951369880743415201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A133263 (n + 6) + 4).toNat

end

end A319816.P951369880743415201

/-! ## A319816.P6477084539256166383

`A319797(A152950(n+7)+3)`
-/

namespace A319816.P6477084539256166383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A152950 (n + 7) + 3).toNat

end

end A319816.P6477084539256166383

/-! ## A319816.P17727156783633053926

`A319797(A000124(n+6)+5)`
-/

namespace A319816.P17727156783633053926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A000124 (n + 6) + 5).toNat

end

end A319816.P17727156783633053926

/-! ## A319816.P4547277236316115002

`A319797(A000096(n+5)+7)`
-/

namespace A319816.P4547277236316115002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A000096 (n + 5) + 7).toNat

end

end A319816.P4547277236316115002

/-! ## A319816.P13628540695245171232

`A319797(A000217(n+6)+6)`
-/

namespace A319816.P13628540695245171232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A000217 (n + 6) + 6).toNat

end

end A319816.P13628540695245171232

/-! ## A319816.P3120626421025148556

`A319797(A161680(n+7)+6)`
-/

namespace A319816.P3120626421025148556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A161680 (n + 7) + 6).toNat

end

end A319816.P3120626421025148556

/-! ## A319816.P17290844400943884984

`A319797(A046691(n+4)+10)`
-/

namespace A319816.P17290844400943884984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A046691 (n + 4) + 10).toNat

end

end A319816.P17290844400943884984

/-! ## A319816.P6100810046706351876

`A319797(A052905(n+3)+11)`
-/

namespace A319816.P6100810046706351876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A052905 (n + 3) + 11).toNat

end

end A319816.P6100810046706351876

/-! ## A319816.P1250866845929389598

`A319797(or(-1, A000041(n))+A055998(n+4)+10)`
-/

namespace A319816.P1250866845929389598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (Int.lor (-1) (A000041 n) + (A055998 (n + 4) + 10)).toNat

end

end A319816.P1250866845929389598

/-!
# A319817: Number of partitions of n into exactly seven positive triangular numbers.

The programs for A319817, there is no canonical definition to state claims against.
-/

/-! ## A319817.P12728948859748939827

`A319797(A167487(n+6))`
-/

namespace A319817.P12728948859748939827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A167487 (n + 6)).toNat

end

end A319817.P12728948859748939827

/-! ## A319817.P5390515002058727550

`A319797(A167499(n+6)+2)`
-/

namespace A319817.P5390515002058727550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A167499 (n + 6) + 2).toNat

end

end A319817.P5390515002058727550

/-! ## A319817.P1689813889333110628

`A319797(A167614(n+6)+4)`
-/

namespace A319817.P1689813889333110628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A167614 (n + 6) + 4).toNat

end

end A319817.P1689813889333110628

/-! ## A319817.P8271262370772807725

`A319797(A133263(n+7)+5)`
-/

namespace A319817.P8271262370772807725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A133263 (n + 7) + 5).toNat

end

end A319817.P8271262370772807725

/-! ## A319817.P3323259747317333056

`A319797(A000124(n+7)+6)`
-/

namespace A319817.P3323259747317333056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A000124 (n + 7) + 6).toNat

end

end A319817.P3323259747317333056

/-! ## A319817.P8812368246771746965

`A319797(A000096(n+6)+8)`
-/

namespace A319817.P8812368246771746965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A000096 (n + 6) + 8).toNat

end

end A319817.P8812368246771746965

/-! ## A319817.P11636680856268274059

`A319797(A000217(n+7)+7)`
-/

namespace A319817.P11636680856268274059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A000217 (n + 7) + 7).toNat

end

end A319817.P11636680856268274059

/-! ## A319817.P4576398122665344674

`A319797(A052905(n+4)+12)`
-/

namespace A319817.P4576398122665344674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A052905 (n + 4) + 12).toNat

end

end A319817.P4576398122665344674

/-! ## A319817.P15909296402571586345

`A319797(A055999(n+4)+13)`
-/

namespace A319817.P15909296402571586345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A055999 (n + 4) + 13).toNat

end

end A319817.P15909296402571586345

/-! ## A319817.P13623971853500951881

`A319797(A055998(n+7)-A004273(n+4))`
-/

namespace A319817.P13623971853500951881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A055998 (n + 7) - A004273 (n + 4)).toNat

end

end A319817.P13623971853500951881

/-!
# A319818: Number of partitions of n into exactly eight positive triangular numbers.

The programs for A319818, there is no canonical definition to state claims against.
-/

/-! ## A319818.P2899154663442064442

`A319797(A167499(n+7)+3)`
-/

namespace A319818.P2899154663442064442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A167499 (n + 7) + 3).toNat

end

end A319818.P2899154663442064442

/-! ## A319818.P10679582116652959578

`A319797(A000124(n+8)+7)`
-/

namespace A319818.P10679582116652959578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A000124 (n + 8) + 7).toNat

end

end A319818.P10679582116652959578

/-! ## A319818.P3083738253119179762

`A319797(A000096(n+7)+9)`
-/

namespace A319818.P3083738253119179762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A000096 (n + 7) + 9).toNat

end

end A319818.P3083738253119179762

/-! ## A319818.P17832354006112860630

`A319797(A000217(n+8)+8)`
-/

namespace A319818.P17832354006112860630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A000217 (n + 8) + 8).toNat

end

end A319818.P17832354006112860630

/-! ## A319818.P12435324805279246324

`A319797(A046691(n+8)-A004273(n+4))`
-/

namespace A319818.P12435324805279246324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A046691 (n + 8) - A004273 (n + 4)).toNat

end

end A319818.P12435324805279246324

/-!
# A319819: Number of partitions of n into exactly nine positive triangular numbers.

The programs for A319819, there is no canonical definition to state claims against.
-/

/-! ## A319819.P8352167545131183870

`A319797(A167499(n+8)+4)`
-/

namespace A319819.P8352167545131183870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A167499 (n + 8) + 4).toNat

end

end A319819.P8352167545131183870

/-! ## A319819.P17683684225605093283

`A319797(A000124(n+9)+8)`
-/

namespace A319819.P17683684225605093283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A000124 (n + 9) + 8).toNat

end

end A319819.P17683684225605093283

/-! ## A319819.P4732212837840153610

`A319797(A000096(n+8)+10)`
-/

namespace A319819.P4732212837840153610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A000096 (n + 8) + 10).toNat

end

end A319819.P4732212837840153610

/-! ## A319819.P18242067149283807066

`A319797(A000217(n+9)+9)`
-/

namespace A319819.P18242067149283807066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A000217 (n + 9) + 9).toNat

end

end A319819.P18242067149283807066

/-! ## A319819.P16625092934598141546

`A319797(A056000(n+7)-2*(n+1))`
-/

namespace A319819.P16625092934598141546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A056000 (n + 7) - (2 * (n + 1) : ℤ)).toNat

end

end A319819.P16625092934598141546

/-! ## A319819.P9803018324990583215

`A319797(A055998(n+9)-A004273(n+5))`
-/

namespace A319819.P9803018324990583215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A055998 (n + 9) - A004273 (n + 5)).toNat

end

end A319819.P9803018324990583215

/-!
# A319820: Number of partitions of n into exactly ten positive triangular numbers.

The programs for A319820, there is no canonical definition to state claims against.
-/

/-! ## A319820.P1522620915989829732

`A319797(A000124(n+10)+9)`
-/

namespace A319820.P1522620915989829732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A000124 (n + 10) + 9).toNat

end

end A319820.P1522620915989829732

/-! ## A319820.P1098892720643650478

`A319797(A000096(n+9)+11)`
-/

namespace A319820.P1098892720643650478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A000096 (n + 9) + 11).toNat

end

end A319820.P1098892720643650478

/-! ## A319820.P4158832024112123120

`A319797(A000217(n+10)+10)`
-/

namespace A319820.P4158832024112123120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A000217 (n + 10) + 10).toNat

end

end A319820.P4158832024112123120

/-! ## A319820.P3029099688209566463

`A319797(A161680(n+12)-(n+1))`
-/

namespace A319820.P3029099688209566463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A161680 (n + 12) - (n + 1 : ℤ)).toNat

end

end A319820.P3029099688209566463

/-! ## A319820.P15074316020130347927

`A319797(A152950(n+3)+A017101(n+7))`
-/

namespace A319820.P15074316020130347927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A152950 (n + 3) + A017101 (n + 7)).toNat

end

end A319820.P15074316020130347927

/-!
# A319821: a(n) = log_2(A094269(n)).

The programs for A319821, there is no canonical definition to state claims against.
-/

/-! ## A319821.P8854701072652503070

`log2(A094269(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A319821.P8854701072652503070
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A094269 (n + 1) : ℝ)

end

end A319821.P8854701072652503070

/-! ## A319821.P18228098990807142695

`A157928(n)+A046079(A094269(n+1))`
-/

namespace A319821.P18228098990807142695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n + A046079 (A094269 (n + 1)).toNat

end

end A319821.P18228098990807142695

/-! ## A319821.P4335666494738136397

`A001222(A001511(Δ[n²])*A094269(n+1))`
-/

namespace A319821.P4335666494738136397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001511 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A094269 (n + 1)).toNat

end

end A319821.P4335666494738136397

/-! ## A319821.P12890243331599788073

`A001222(gcd(A094269(2*(n+2)), A094269(n+1)))`
-/

namespace A319821.P12890243331599788073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A094269 (2 * (n + 2))) (A094269 (n + 1)))

end

end A319821.P12890243331599788073

/-! ## A319821.P7267971867770983781

`val(A000010(A003401(n+1)), 2)`
-/

namespace A319821.P7267971867770983781
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000010 (A003401 (n + 1)).toNat).toNat 2

end

end A319821.P7267971867770983781

/-! ## A319821.P17003006594097647713

`∑{d}[A000010(A003401(n+1)), A001221(#)]`
-/

namespace A319821.P17003006594097647713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A003401 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A319821.P17003006594097647713

/-! ## A319821.P14698099487457394412

`A046079(2*A094269(n+1))`
-/

namespace A319821.P14698099487457394412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (2 * A094269 (n + 1)).toNat

end

end A319821.P14698099487457394412

/-! ## A319821.P17610971109117185017

`A257991(abs(1-A094269(n+1))+1)`
-/

namespace A319821.P17610971109117185017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (|1 - A094269 (n + 1)| + 1).toNat

end

end A319821.P17610971109117185017

/-! ## A319821.P13262476837590527533

`val(A000010(eq[1, A295660(n+1)]+1), 2)`
-/

namespace A319821.P13262476837590527533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295660 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)).toNat 2

end

end A319821.P13262476837590527533

/-! ## A319821.P7223633714996707401

`val(A000010(eq[1, A318831(n+1)]+1), 2)`
-/

namespace A319821.P7223633714996707401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318831 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)).toNat 2

end

end A319821.P7223633714996707401

/-! ## A319821.P11553964839156527545

`A000120(A094269(n+1)-1)`
-/

namespace A319821.P11553964839156527545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A094269 (n + 1) - 1).toNat

end

end A319821.P11553964839156527545

/-! ## A319821.P18248467334115551989

`A002487(A094269(n+1)-1)`
-/

namespace A319821.P18248467334115551989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A094269 (n + 1) - 1).toNat

end

end A319821.P18248467334115551989

/-! ## A319821.P14568837484401920096

`A000120(A000010(A003401(n+1))-1)`
-/

namespace A319821.P14568837484401920096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000010 (A003401 (n + 1)).toNat - 1).toNat

end

end A319821.P14568837484401920096

/-! ## A319821.P12878014552939838039

`A070824(2*A094269(n+1))`
-/

namespace A319821.P12878014552939838039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (2 * A094269 (n + 1)).toNat

end

end A319821.P12878014552939838039

/-!
# A319822: Number of solutions to x^2 + 2*y^2 + 5*z^2 + 5*w^2 = n.

The programs for A319822, there is no canonical definition to state claims against.
-/

/-! ## A319822.P7600368977565533068

`∑{#}[floor(n/5), A004018(#)*A033715(n-5*#)]`
-/

namespace A319822.P7600368977565533068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A004018 k * A033715 (n - 5 * k)

end

end A319822.P7600368977565533068

/-!
# A319823: Primes p such that min(d(p-1), d(p+1)) is larger than the corresponding values of all previous primes, where d(n) is the number of divisors of n (A000005).

The programs for A319823, there is no canonical definition to state claims against.
-/

/-! ## A319823.P4430255607174038239

`∩[A127049(n+1), A279080(n)]`
-/

namespace A319823.P4430255607174038239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279080 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319823.P4430255607174038239

/-!
# A319824: Numbers that are not the sum of distinct lucky-indexed lucky numbers.

The programs for A319824, there is no canonical definition to state claims against.
-/

/-! ## A319824.P5065443190208445062

`∑[gcd(A287881(2*(n+2)), A288820(2*(n+1)))]`
-/

namespace A319824.P5065443190208445062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A287881 (2 * (n + 2))) (A288820 (2 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319824.P5065443190208445062

/-! ## A319824.P11349902579347039645

`eq[0, and(A016409(n), A141214(n))]`
-/

namespace A319824.P11349902579347039645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016409 n) (A141214 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A319824.P11349902579347039645

/-!
# A319825: LCM of the strict integer partition with FDH number n.

The programs for A319825, there is no canonical definition to state claims against.
-/

/-! ## A319825.P16844568099819657285

`A290103(A160102(n+1))%(n+1)`
-/

namespace A319825.P16844568099819657285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290103 (A160102 (n + 1)).toNat) (n + 1 : ℤ)

end

end A319825.P16844568099819657285

/-! ## A319825.P3832327653909119703

`A290103(A160102(n+1))-A000007(n)`
-/

namespace A319825.P3832327653909119703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (A160102 (n + 1)).toNat - A000007 n

end

end A319825.P3832327653909119703

/-! ## A319825.P14587951858085034267

`A057427(n)*A290103(A160102(n+1))`
-/

namespace A319825.P14587951858085034267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A290103 (A160102 (n + 1)).toNat

end

end A319825.P14587951858085034267

/-! ## A319825.P14713223399208432412

`A178334(n)*A290103(A160102(n+1))`
-/

namespace A319825.P14713223399208432412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A290103 (A160102 (n + 1)).toNat

end

end A319825.P14713223399208432412

/-! ## A319825.P3139823371357633047

`lcm(A011602(n), A290103(A160102(n+1)))`
-/

namespace A319825.P3139823371357633047
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011602 n) (A290103 (A160102 (n + 1)).toNat)

end

end A319825.P3139823371357633047

/-! ## A319825.P4236895713649324082

`A011602(n²)*A290103(A160102(n+1))`
-/

namespace A319825.P4236895713649324082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011602 (n ^ 2) * A290103 (A160102 (n + 1)).toNat

end

end A319825.P4236895713649324082

/-! ## A319825.P13454588263236135474

`char[A000174(n)]*A290103(A160102(n+1))`
-/

namespace A319825.P13454588263236135474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A290103 (A160102 (n + 1)).toNat

end

end A319825.P13454588263236135474

/-! ## A319825.P6465336924421261613

`A290103(A160102(n+1))-A008683((n+1)²)`
-/

namespace A319825.P6465336924421261613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (A160102 (n + 1)).toNat - A008683 ((n + 1) ^ 2)

end

end A319825.P6465336924421261613

/-! ## A319825.P8518622378655562081

`char[A290103(n+1)]*A290103(A160102(n+1))`
-/

namespace A319825.P8518622378655562081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A290103 (A160102 (n + 1)).toNat

end

end A319825.P8518622378655562081

/-! ## A319825.P11119981371419460113

`A290103(A160102(n+1))-and(1, A000010(n+2))`
-/

namespace A319825.P11119981371419460113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (A160102 (n + 1)).toNat - Int.land 1 (A000010 (n + 2))

end

end A319825.P11119981371419460113

/-!
# A319826: GCD of the strict integer partition with FDH number n; GCD of the indices (in A050376) of Fermi-Dirac prime factors of n.

The programs for A319826, there is no canonical definition to state claims against.
-/

/-! ## A319826.P18195649662293215124

`A289508(A160102(n+1))`
-/

namespace A319826.P18195649662293215124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A160102 (n + 1)).toNat

end

end A319826.P18195649662293215124

/-! ## A319826.P917830966124342524

`gcd(A302786(n+1)%A302796(n+1), A302785(n+1))`
-/

namespace A319826.P917830966124342524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A302786 (n + 1)) (A302796 (n + 1))) (A302785 (n + 1))

end

end A319826.P917830966124342524

/-! ## A319826.P16840701586662248815

`A356352(A302029(n+1))`
-/

namespace A319826.P16840701586662248815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356352 (A302029 (n + 1)).toNat

end

end A319826.P16840701586662248815

/-!
# A319827: FDH numbers of relatively prime strict integer partitions.

The programs for A319827, there is no canonical definition to state claims against.
-/

/-! ## A319827.P1726947712964359078

`eq[1, A319826(n+1)]+1`
-/

namespace A319827.P1726947712964359078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319826 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A319827.P1726947712964359078

/-! ## A319827.P16097366363885641580

`eq[1, A319826(A028310(n))]`
-/

namespace A319827.P16097366363885641580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319826 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A319827.P16097366363885641580

/-! ## A319827.P181905722646394652

`record[A060681(2*(n+2))-A319826(n+1)]`
-/

namespace A319827.P181905722646394652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (2 * (n + 2)) - A319826 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319827.P181905722646394652

/-! ## A319827.P9803773512893990954

`lt[A001511(n+1), A001511(A353851(n))]`
-/

namespace A319827.P9803773512893990954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A353851 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A319827.P9803773512893990954

/-! ## A319827.P9900219840934215791

`lt[A006519(n+1), A006519(A353851(n))]`
-/

namespace A319827.P9900219840934215791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A353851 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A319827.P9900219840934215791

/-!
# A319828: FDH numbers of strict integer partitions of even numbers.

The programs for A319828, there is no canonical definition to state claims against.
-/

/-! ## A319828.P18395000482412556444

`comp[A319829(n+1)-1]+1`
-/

namespace A319828.P18395000482412556444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319829 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A319828.P18395000482412556444

/-! ## A319828.P15464793083528383273

`eq[2, gcd(2, A299757(n+1))]+1`
-/

namespace A319828.P15464793083528383273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A299757 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A319828.P15464793083528383273

/-! ## A319828.P1145657392993832949

`eq[1, A059841(A299757(n+1))]+1`
-/

namespace A319828.P1145657392993832949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A299757 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A319828.P1145657392993832949

/-! ## A319828.P796362414304308524

`eq[0, A257991(A160102(n+1))%2]+1`
-/

namespace A319828.P796362414304308524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257991 (A160102 (n + 1)).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A319828.P796362414304308524

/-! ## A319828.P7688363547968678649

`lt[A261968(A299757(n+1)+1)/2, 1]+1`
-/

namespace A319828.P7688363547968678649
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261968 (A299757 (n + 1) + 1).toNat : ℚ) / 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A319828.P7688363547968678649

/-!
# A319829: FDH numbers of strict integer partitions of odd numbers.

The programs for A319829, there is no canonical definition to state claims against.
-/

/-! ## A319829.P5867607010532907764

`eq[1, A299757(n+1)%2]+1`
-/

namespace A319829.P5867607010532907764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299757 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A319829.P5867607010532907764

/-! ## A319829.P4670614861306165881

`eq[1, A000035(A299757(n+1))]+1`
-/

namespace A319829.P4670614861306165881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A299757 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A319829.P4670614861306165881

/-! ## A319829.P10445883995572802282

`lt[0, A257991(A160102(n+1))%2]+1`
-/

namespace A319829.P10445883995572802282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257991 (A160102 (n + 1)).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A319829.P10445883995572802282

/-! ## A319829.P3763681488160890756

`comp[A319828(n+1)-1]+1`
-/

namespace A319829.P3763681488160890756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319828 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A319829.P3763681488160890756

/-!
# A319833: O.g.f. A(x) satisfies: [x^n] (1+x)^(n^2) / exp( n*A(x) ) = 0 for n >= 1.

The programs for A319833, there is no canonical definition to state claims against.
-/

/-! ## A319833.P5826425136591061116

`A008615(A097627(n+1)+1)`
-/

namespace A319833.P5826425136591061116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A097627 (n + 1) + 1).toNat

end

end A319833.P5826425136591061116

/-!
# A319834: a(n) = coefficient of x^n*y^(n+1)/n! in log( Sum_{n>=0} (n^2 + n*y + y^2)^n * x^n/n! ).

The programs for A319834, there is no canonical definition to state claims against.
-/

/-! ## A319834.P1960973264148181886

`A098098(n*A048287(n+1))`
-/

namespace A319834.P1960973264148181886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098098 ((n : ℤ) * A048287 (n + 1)).toNat

end

end A319834.P1960973264148181886

/-!
# A319837: Numbers whose distinct prime indices are pairwise indivisible and whose own prime indices span an initial interval of positive integers.

The programs for A319837, there is no canonical definition to state claims against.
-/

/-! ## A319837.P1419495728106887710

`filter[A320456(n+1), A378442(#)]`
-/

namespace A319837.P1419495728106887710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320456 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378442 (f1 j).toNat = 1) n)

end

end A319837.P1419495728106887710

/-! ## A319837.P9571903440069538113

`∩[A316476(n+1), A320456(n+1)]`
-/

namespace A319837.P9571903440069538113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320456 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319837.P9571903440069538113

/-! ## A319837.P5272237567823492707

`record[A327393(A330060(n+1)%A330060(2*n+5))]`
-/

namespace A319837.P5272237567823492707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327393 (Int.tmod (A330060 (n + 1)) (A330060 (2 * n + 5))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319837.P5272237567823492707

/-! ## A319837.P2536949740679574336

`A321699(n+1)-A185284(A185297(n+4))`
-/

namespace A319837.P2536949740679574336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321699 (n + 1) - A185284 (A185297 (n + 4)).toNat

end

end A319837.P2536949740679574336

/-! ## A319837.P7545206061136960297

`A321699(A043318(n+1))`
-/

namespace A319837.P7545206061136960297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321699 (A043318 (n + 1)).toNat

end

end A319837.P7545206061136960297

/-!
# A319838: Numbers k such that A319100(k) is a power of 6.

The programs for A319838, the canonical program `A319838.P6735889884423733754` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319838 has offset 1).

The definition of A319838 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1796 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319838.P6735889884423733754

`eq[1, A277544(A319100(n+1))]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A319838

/-- `eq[1, A277544(A319100(n+1))]+1` -/
def P6735889884423733754.Spec : Prop :=
  ∀ n, (P6735889884423733754.a n : ℤ) = A319838 (n + 1)

theorem P6735889884423733754.correct : P6735889884423733754.Spec := by
  intro n
  simp only [A319838, Nat.add_sub_cancel]

end A319838

/-! ## A319838.P16312549288043289917

`lt[A277544(A319100(n+1)), A020639(6*(n+1)+2)]+1`
-/

namespace A319838.P16312549288043289917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277544 (A319100 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (6 * (n + 1) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A319838.P16312549288043289917

namespace A319838

/-- `lt[A277544(A319100(n+1)), A020639(6*(n+1)+2)]+1` -/
def P16312549288043289917.Spec : Prop :=
  ∀ n, (P16312549288043289917.a n : ℤ) = A319838 (n + 1)

end A319838

/-! ## A319838.P3477568495226776971

`eq[4, a(A140080(A270492(n)))²]` with `a(0)=2`
-/

namespace A319838.P3477568495226776971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (A140080 (A270492 n).toNat).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A319838.P3477568495226776971

namespace A319838

/-- `eq[4, a(A140080(A270492(n)))²]` -/
def P3477568495226776971.Spec : Prop :=
  ∀ n, (P3477568495226776971.a n : ℤ) = A319838 (n + 1)

end A319838

/-! ## A319838.P7728111915179383504

`eq[0, A140080(A270492(n+1))]+1`
-/

namespace A319838.P7728111915179383504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140080 (A270492 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A319838.P7728111915179383504

namespace A319838

/-- `eq[0, A140080(A270492(n+1))]+1` -/
def P7728111915179383504.Spec : Prop :=
  ∀ n, (P7728111915179383504.a n : ℤ) = A319838 (n + 1)

end A319838

/-! ## A319838.P11863225323634173697

`lt[2%A068950(A060594(n+1)*A060839(n+1)), 2]+1`
-/

namespace A319838.P11863225323634173697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A068950 (A060594 (n + 1) * A060839 (n + 1)).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A319838.P11863225323634173697

namespace A319838

/-- `lt[2%A068950(A060594(n+1)*A060839(n+1)), 2]+1` -/
def P11863225323634173697.Spec : Prop :=
  ∀ n, (P11863225323634173697.a n : ℤ) = A319838 (n + 1)

end A319838

/-!
# A319839: Smallest fixed points (>0) of the base-2*n Kaprekar map.

The programs for A319839, there is no canonical definition to state claims against.
-/

/-! ## A319839.P17188376744137688841

`A319798(2*(n+1))`
-/

namespace A319839.P17188376744137688841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319798 (2 * (n + 1))

end

end A319839.P17188376744137688841

/-! ## A319839.P11807635838916635866

`root(A319798(n+2+n), 2)²`
-/

namespace A319839.P11807635838916635866
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A319798 (n + 2 + n) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A319839.P11807635838916635866

/-! ## A319839.P16295773693440415561

`A319798(n+2+n)/A007318(∑[n])`
-/

namespace A319839.P16295773693440415561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319798 (n + 2 + n) : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A319839.P16295773693440415561

/-! ## A319839.P6627626150806300083

`lcm(A000041(C(2, n)), A319798(n+2+n))`
-/

namespace A319839.P6627626150806300083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000041 (Nat.choose 2 n)) (A319798 (n + 2 + n))

end

end A319839.P6627626150806300083

/-!
# A319840: Table read by antidiagonals: T(n, k) is the number of elements on the perimeter of an n X k matrix.

The programs for A319840, the canonical program `A319840.P10443051831769235735` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319840 has offset 1).

The definition of A319840 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319840.P10443051831769235735

`A318274(n)+A000523(A137688(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A319840

/-- `A318274(n)+A000523(A137688(n))` -/
def P10443051831769235735.Spec : Prop :=
  ∀ n, P10443051831769235735.a n = A319840 (n + 1)

theorem P10443051831769235735.correct : P10443051831769235735.Spec := by
  intro n
  simp only [A319840, Nat.add_sub_cancel]

end A319840

/-! ## A319840.P3830241223432138215

`A318274(n)-A000523(A137688(n))*A057428(n)`
-/

namespace A319840.P3830241223432138215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318274 n - A000523 (A137688 n).toNat * A057428 n

end

end A319840.P3830241223432138215

namespace A319840

/-- `A318274(n)-A000523(A137688(n))*A057428(n)` -/
def P3830241223432138215.Spec : Prop :=
  ∀ n, P3830241223432138215.a n = A319840 (n + 1)

end A319840

/-! ## A319840.P16703619349287872605

`A023416(A137688(n))+A003056(n+1)/A144112(n+1)`
-/

namespace A319840.P16703619349287872605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023416 (A137688 n).toNat : ℚ) + (A003056 (n + 1) : ℚ) / (A144112 (n + 1) : ℚ)

end

end A319840.P16703619349287872605

namespace A319840

/-- `A023416(A137688(n))+A003056(n+1)/A144112(n+1)` -/
def P16703619349287872605.Spec : Prop :=
  ∀ n, P16703619349287872605.a n = (A319840 (n + 1) : ℚ)

end A319840

/-! ## A319840.P9144812097864193555

`A023416(A137688(n))+A003056(A131821(n+1)+n)/A131821(n+1)`
-/

namespace A319840.P9144812097864193555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023416 (A137688 n).toNat : ℚ) + (A003056 (A131821 (n + 1) + (n : ℤ)).toNat : ℚ) / (A131821 (n + 1) : ℚ)

end

end A319840.P9144812097864193555

namespace A319840

/-- `A023416(A137688(n))+A003056(A131821(n+1)+n)/A131821(n+1)` -/
def P9144812097864193555.Spec : Prop :=
  ∀ n, P9144812097864193555.a n = (A319840 (n + 1) : ℚ)

end A319840

/-! ## A319840.P13593316196589564992

`A003056(n)+A318274(n)%A305117(n²+4)`
-/

namespace A319840.P13593316196589564992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + Int.tmod (A318274 n) (A305117 (n ^ 2 + 4))

end

end A319840.P13593316196589564992

namespace A319840

/-- `A003056(n)+A318274(n)%A305117(n²+4)` -/
def P13593316196589564992.Spec : Prop :=
  ∀ n, P13593316196589564992.a n = A319840 (n + 1)

end A319840

/-! ## A319840.P5823336831303639080

`A131901(n+1)-A157928(A008288(n))`
-/

namespace A319840.P5823336831303639080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131901 (n + 1) - A157928 (A008288 n).toNat

end

end A319840.P5823336831303639080

namespace A319840

/-- `A131901(n+1)-A157928(A008288(n))` -/
def P5823336831303639080.Spec : Prop :=
  ∀ n, P5823336831303639080.a n = A319840 (n + 1)

end A319840

/-! ## A319840.P1115700032715281733

`A318274(n)+A055212(∏[char[∑[n]]+1])`
-/

namespace A319840.P1115700032715281733
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318274 n + A055212 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A319840.P1115700032715281733

namespace A319840

/-- `A318274(n)+A055212(∏[char[∑[n]]+1])` -/
def P1115700032715281733.Spec : Prop :=
  ∀ n, P1115700032715281733.a n = A319840 (n + 1)

end A319840

/-! ## A319840.P11345821656533604921

`A318274(n)+A023645(A140513(n))`
-/

namespace A319840.P11345821656533604921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318274 n + A023645 (A140513 n).toNat

end

end A319840.P11345821656533604921

namespace A319840

/-- `A318274(n)+A023645(A140513(n))` -/
def P11345821656533604921.Spec : Prop :=
  ∀ n, P11345821656533604921.a n = A319840 (n + 1)

end A319840

/-! ## A319840.P15912117258394773603

`A023645(A140513(n))+A003056(n+1)/A144112(n+1)`
-/

namespace A319840.P15912117258394773603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023645 (A140513 n).toNat : ℚ) + (A003056 (n + 1) : ℚ) / (A144112 (n + 1) : ℚ)

end

end A319840.P15912117258394773603

namespace A319840

/-- `A023645(A140513(n))+A003056(n+1)/A144112(n+1)` -/
def P15912117258394773603.Spec : Prop :=
  ∀ n, P15912117258394773603.a n = (A319840 (n + 1) : ℚ)

end A319840

/-! ## A319840.P1273063407728224943

`A318274(n)+A023416(A018900(n+1))`
-/

namespace A319840.P1273063407728224943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318274 n + A023416 (A018900 (n + 1)).toNat

end

end A319840.P1273063407728224943

namespace A319840

/-- `A318274(n)+A023416(A018900(n+1))` -/
def P1273063407728224943.Spec : Prop :=
  ∀ n, P1273063407728224943.a n = A319840 (n + 1)

end A319840

/-!
# A319841: Number of distinct positive integers that can be obtained by iteratively adding or multiplying together parts of the integer partition with Heinz number n until only one part remains.

The programs for A319841, there is no canonical definition to state claims against.
-/

/-! ## A319841.P10281806799732937326

`A000523(A342085(3*(n+1))%A349500(n+5))`
-/

namespace A319841.P10281806799732937326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (Int.tmod (A342085 (3 * (n + 1))) (A349500 (n + 5))).toNat

end

end A319841.P10281806799732937326

/-! ## A319841.P9175445796138716735

`round(sqrt(A295635(3*(n+1))-1))`
-/

namespace A319841.P9175445796138716735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A295635 (3 * (n + 1)) - 1 : ℝ))

end

end A319841.P9175445796138716735

/-! ## A319841.P13441594492545136454

`A000194(A295635(3*(n+1))-1)`
-/

namespace A319841.P13441594492545136454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A295635 (3 * (n + 1)) - 1).toNat

end

end A319841.P13441594492545136454

/-! ## A319841.P414417053444900701

`A051889(A305254(3*(n+1))-1)`
-/

namespace A319841.P414417053444900701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A305254 (3 * (n + 1)) - 1).toNat

end

end A319841.P414417053444900701

/-! ## A319841.P14266736723401912681

`gcd(A001222(n+1), A171872(A307796(n)))`
-/

namespace A319841.P14266736723401912681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (n + 1)) (A171872 (A307796 n).toNat)

end

end A319841.P14266736723401912681

/-!
# A319842: a(n) = 8 * A104720(n) + ceiling(n/2).

The programs for A319842, the canonical program `A319842.P8477965333211123551` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319842 has offset 0).

The definition of A319842 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*A104720(n)+ceil(n/2)` (program `A319842.P8477965333211123551`, by `A319842.P8477965333211123551.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A319842.P7394692900061156114

`ogf((8+x-10x^2)/(1-11x+9x^2+11x^3-10x^4))`
-/

namespace A319842.P7394692900061156114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 1, -10] [1, -11, 9, 11, -10] n

end

end A319842.P7394692900061156114

namespace A319842

/-- `ogf((8+x-10x^2)/(1-11x+9x^2+11x^3-10x^4))` -/
def P7394692900061156114.Spec : Prop :=
  ∀ n, P7394692900061156114.a n = A319842 n

end A319842

/-! ## A319842.P8477965333211123551

`8*A104720(n)+ceil(n/2)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A319842

/-- `8*A104720(n)+ceil(n/2)` -/
def P8477965333211123551.Spec : Prop :=
  ∀ n, P8477965333211123551.a n = A319842 n

theorem P8477965333211123551.correct : P8477965333211123551.Spec := by
  intro n
  simp only [A319842]

end A319842

/-! ## A319842.P10588640160460408139

`∑[xor(10*a(n-1), gcd(2, n))]` with `a(0)=8`
-/

namespace A319842.P10588640160460408139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8] fun n f1 =>
  Nat.xor (10 * f1 (n - 1)) (Nat.gcd 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319842.P10588640160460408139

namespace A319842

/-- `∑[xor(10*a(n-1), gcd(2, n))]` -/
def P10588640160460408139.Spec : Prop :=
  ∀ n, (P10588640160460408139.a n : ℤ) = A319842 n

end A319842

/-! ## A319842.P4477746483424216531

`∑[A000035(n)]+8*A104720(n)`
-/

namespace A319842.P4477746483424216531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 8 * A104720 n

end

end A319842.P4477746483424216531

namespace A319842

/-- `∑[A000035(n)]+8*A104720(n)` -/
def P4477746483424216531.Spec : Prop :=
  ∀ n, P4477746483424216531.a n = A319842 n

end A319842

/-! ## A319842.P4037391051048522869

`A004526(n+1)+8*A104720(n)`
-/

namespace A319842.P4037391051048522869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) + 8 * A104720 n

end

end A319842.P4037391051048522869

namespace A319842

/-- `A004526(n+1)+8*A104720(n)` -/
def P4037391051048522869.Spec : Prop :=
  ∀ n, P4037391051048522869.a n = A319842 n

end A319842

/-! ## A319842.P11866315390024096399

`∑[Δ[A056830(n+1)]-A056830(n+1)]`
-/

namespace A319842.P11866315390024096399
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A056830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319842.P11866315390024096399

namespace A319842

/-- `∑[Δ[A056830(n+1)]-A056830(n+1)]` -/
def P11866315390024096399.Spec : Prop :=
  ∀ n, P11866315390024096399.a n = A319842 n

end A319842

/-! ## A319842.P12659750296397859223

`∑[Δ[A287742(2*n)]-A287742(2*n)]`
-/

namespace A319842.P12659750296397859223
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287742 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A287742 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319842.P12659750296397859223

namespace A319842

/-- `∑[Δ[A287742(2*n)]-A287742(2*n)]` -/
def P12659750296397859223.Spec : Prop :=
  ∀ n, P12659750296397859223.a n = A319842 n

end A319842

/-!
# A319844: Irregular triangle read by rows in which row n lists the even divisors of n in decreasing order together with the odd divisors of n in increasing order.

The programs for A319844, there is no canonical definition to state claims against.
-/

/-! ## A319844.P2870874507478992456

`A319848(n+1)+A319849(n+1)-A319845(n+1)`
-/

namespace A319844.P2870874507478992456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319848 (n + 1) + (A319849 (n + 1) - A319845 (n + 1))

end

end A319844.P2870874507478992456

/-! ## A319844.P3069853132337786139

`gcd(A003056(2*n+1), A093494(A035554(n)))`
-/

namespace A319844.P3069853132337786139
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003056 (2 * n + 1)) (A093494 (A035554 n).toNat)

end

end A319844.P3069853132337786139

/-! ## A319844.P5881914671789312486

`A087377(A079191(n+1))%A027434(n+1)`
-/

namespace A319844.P5881914671789312486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087377 (A079191 (n + 1)).toNat) (A027434 (n + 1))

end

end A319844.P5881914671789312486

/-! ## A319844.P8203061444667586473

`gcd(A067434(n+1), A079227(A276562(n+4)))`
-/

namespace A319844.P8203061444667586473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A067434 (n + 1)) (A079227 (A276562 (n + 4)).toNat)

end

end A319844.P8203061444667586473

/-!
# A319845: Irregular triangle read by rows in which row n lists the even divisors of n in increasing order together with the odd divisors of n in decreasing order.

The programs for A319845, there is no canonical definition to state claims against.
-/

/-! ## A319845.P3743989804218157279

`A319848(n+1)+A319849(n+1)-A319844(n+1)`
-/

namespace A319845.P3743989804218157279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319848 (n + 1) + (A319849 (n + 1) - A319844 (n + 1))

end

end A319845.P3743989804218157279

/-! ## A319845.P16010427887912431788

`A316524(4*A056824(n+1))`
-/

namespace A319845.P16010427887912431788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (4 * A056824 (n + 1)).toNat

end

end A319845.P16010427887912431788

/-! ## A319845.P11188310927799013851

`A321648(4*A056824(n+1))`
-/

namespace A319845.P11188310927799013851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321648 (4 * A056824 (n + 1)).toNat

end

end A319845.P11188310927799013851

/-! ## A319845.P16520698653171764194

`A348135(lt[A053602(n), A023717(n)])`
-/

namespace A319845.P16520698653171764194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348135 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A319845.P16520698653171764194

/-! ## A319845.P4504966830963108359

`A290103(A082850(n+1)*A304291(n+1))`
-/

namespace A319845.P4504966830963108359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (A082850 (n + 1) * A304291 (n + 1)).toNat

end

end A319845.P4504966830963108359

/-!
# A319846: Irregular triangle read by rows in which row n lists the odd divisors of n in decreasing order together with the even divisors of n in decreasing order.

The programs for A319846, there is no canonical definition to state claims against.
-/

/-! ## A319846.P6854437004778623601

`A299481(n+1)+A299483(n+1)-A319847(n+1)`
-/

namespace A319846.P6854437004778623601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299481 (n + 1) + (A299483 (n + 1) - A319847 (n + 1))

end

end A319846.P6854437004778623601

/-! ## A319846.P16368789824580784357

`A299481(A273862(n+2))`
-/

namespace A319846.P16368789824580784357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299481 (A273862 (n + 2)).toNat

end

end A319846.P16368789824580784357

/-! ## A319846.P9113445624061321836

`gcd(A166724(A045335(n+1)), A166724(n+1))`
-/

namespace A319846.P9113445624061321836
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A166724 (A045335 (n + 1)).toNat) (A166724 (n + 1))

end

end A319846.P9113445624061321836

/-! ## A319846.P2197884288121303493

`gcd(A056239(A206396(2*n+5)), A104842(n+1))`
-/

namespace A319846.P2197884288121303493
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056239 (A206396 (2 * n + 5)).toNat) (A104842 (n + 1))

end

end A319846.P2197884288121303493

/-! ## A319846.P11070368997271216232

`A246064(A029515(n+1))`
-/

namespace A319846.P11070368997271216232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246064 (A029515 (n + 1)).toNat

end

end A319846.P11070368997271216232

/-!
# A319847: Irregular triangle read by rows in which row n lists the odd divisors of n in increasing order together with the even divisors of n in increasing order.

The programs for A319847, there is no canonical definition to state claims against.
-/

/-! ## A319847.P16206328840550477678

`A299481(n+1)+A299483(n+1)-A319846(n+1)`
-/

namespace A319847.P16206328840550477678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299481 (n + 1) + (A299483 (n + 1) - A319846 (n + 1))

end

end A319847.P16206328840550477678

/-! ## A319847.P14263710970500719320

`A097291((A061017(n+1)/A319848(n+1))²)`
-/

namespace A319847.P14263710970500719320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097291 (SequenceMachineLib.roundAway (((A061017 (n + 1) : ℚ) / (A319848 (n + 1) : ℚ)) ^ 2)).toNat

end

end A319847.P14263710970500719320

/-! ## A319847.P16397650793613282674

`A027750(n+1)+Δ[A122191(A001263(n+1))]`
-/

namespace A319847.P16397650793613282674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122191 (A001263 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1) + (f1 (n + 1) - f1 n)

end

end A319847.P16397650793613282674

/-! ## A319847.P7913320668889681106

`A027750(n+1)+Δ[A140218(A140210(n+1))]`
-/

namespace A319847.P7913320668889681106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140218 (A140210 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1) + (f1 (n + 1) - f1 n)

end

end A319847.P7913320668889681106

/-! ## A319847.P12698388421929968061

`A299483(A273862(n+2))`
-/

namespace A319847.P12698388421929968061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299483 (A273862 (n + 2)).toNat

end

end A319847.P12698388421929968061

/-!
# A319848: Irregular triangle read by rows in which row n lists the even divisors of n in decreasing order together with the odd divisors of n in decreasing order.

The programs for A319848, there is no canonical definition to state claims against.
-/

/-! ## A319848.P17725937662495531237

`A319844(n+1)+A319845(n+1)-A319849(n+1)`
-/

namespace A319848.P17725937662495531237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319844 (n + 1) + (A319845 (n + 1) - A319849 (n + 1))

end

end A319848.P17725937662495531237

/-! ## A319848.P2803043912677993039

`xor(A056538(n+1), A070109(A208355(n)))`
-/

namespace A319848.P2803043912677993039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A056538 (n + 1)) (A070109 (A208355 n).toNat)

end

end A319848.P2803043912677993039

/-! ## A319848.P4986140576055257426

`xor(A010894(A184396(n+3)), A056538(n+1))`
-/

namespace A319848.P4986140576055257426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010894 ((A184396 (n + 3)).toNat + 21)) (A056538 (n + 1))

end

end A319848.P4986140576055257426

/-! ## A319848.P5489803405587135030

`xor(A010051(A359907(3*(n+1))), A056538(n+1))`
-/

namespace A319848.P5489803405587135030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010051 (A359907 (3 * (n + 1))).toNat) (A056538 (n + 1))

end

end A319848.P5489803405587135030

/-! ## A319848.P12030409584425937794

`A210959(n+2)%A334035(2*n+3)`
-/

namespace A319848.P12030409584425937794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210959 (n + 2)) (A334035 (2 * n + 3))

end

end A319848.P12030409584425937794

/-!
# A319849: Irregular triangle read by rows in which row n lists the even divisors of n in increasing order together with the odd divisors of n in increasing order.

The programs for A319849, there is no canonical definition to state claims against.
-/

/-! ## A319849.P14287976582201614641

`A319844(n+1)+A319845(n+1)-A319848(n+1)`
-/

namespace A319849.P14287976582201614641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319844 (n + 1) + (A319845 (n + 1) - A319848 (n + 1))

end

end A319849.P14287976582201614641

/-! ## A319849.P12978565883074198907

`A135010(A098083(2*n+1)+1)`
-/

namespace A319849.P12978565883074198907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135010 (A098083 (2 * n + 1) + 1).toNat

end

end A319849.P12978565883074198907

/-! ## A319849.P2351577210802401545

`gcd(A061023(5*C(n+4, 4)), A123510(n))`
-/

namespace A319849.P2351577210802401545
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061023 (5 * Nat.choose (n + 4) 4)) (A123510 n)

end

end A319849.P2351577210802401545

/-! ## A319849.P3455784418918853398

`A358172(∑[A099774(n+1)^A316432(n+1)])`
-/

namespace A319849.P3455784418918853398
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099774 (n + 1) : ℚ) ^ (A316432 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358172 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A319849.P3455784418918853398

/-! ## A319849.P5399515042409400384

`gcd(A064724(n+4), A064741(A064721(3*n+2)))`
-/

namespace A319849.P5399515042409400384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064724 (n + 4)) (A064741 (A064721 (3 * n + 2)).toNat)

end

end A319849.P5399515042409400384

/-!
# A319850: Number of distinct positive integers that can be obtained, starting with the initial interval partition (1, ..., n), by iteratively adding or multiplying together parts until only one part remains.

The programs for A319850, there is no canonical definition to state claims against.
-/

/-! ## A319850.P11019321173309372445

`A080098(n^(n+2)+n+1)`
-/

namespace A319850.P11019321173309372445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 (n ^ (n + 2) + (n + 1))

end

end A319850.P11019321173309372445

/-! ## A319850.P993408043986235512

`A276798(A320813(n)+A089927(n))`
-/

namespace A319850.P993408043986235512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276798 (A320813 n + A089927 n).toNat

end

end A319850.P993408043986235512

/-!
# A319851: Welschinger invariant for the number of real plane curves of degree n passing through 3*n-1 general points.

The programs for A319851, there is no canonical definition to state claims against.
-/

/-! ## A319851.P5962664988305819475

`A034386(n)*A072445(A000961(n+1))`
-/

namespace A319851.P5962664988305819475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 n * A072445 (A000961 (n + 1)).toNat

end

end A319851.P5962664988305819475

/-!
# A319852: Difference between 3^n and the product of primes less than or equal to n.

The programs for A319852, the canonical program `A319852.P2834976345500521243` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319852 has offset 0).

The definition of A319852 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319852.P2834976345500521243

`3^n-A034386(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A319852

/-- `3^n-A034386(n)` -/
def P2834976345500521243.Spec : Prop :=
  ∀ n, P2834976345500521243.a n = A319852 n

theorem P2834976345500521243.correct : P2834976345500521243.Spec := by
  intro n
  simp only [A319852]

end A319852

/-! ## A319852.P5915922880426945533

`3^n-A300951(2*n)`
-/

namespace A319852.P5915922880426945533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A300951 (2 * n)

end

end A319852.P5915922880426945533

namespace A319852

/-- `3^n-A300951(2*n)` -/
def P5915922880426945533.Spec : Prop :=
  ∀ n, P5915922880426945533.a n = A319852 n

end A319852

/-! ## A319852.P4793409268856951684

`A319880(n)+3^n-2^n`
-/

namespace A319852.P4793409268856951684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319880 n + ((3 ^ n : ℤ) - (2 ^ n : ℤ))

end

end A319852.P4793409268856951684

namespace A319852

/-- `A319880(n)+3^n-2^n` -/
def P4793409268856951684.Spec : Prop :=
  ∀ n, P4793409268856951684.a n = A319852 n

theorem P4793409268856951684.correct : P4793409268856951684.Spec := by
  intro n
  simp only [A319852, Nat.add_sub_cancel, A319852.P4793409268856951684.a, A319852.P2834976345500521243.a, A034386, A034386.P1755129826133478527.a, A319880, A319880.P15208408059183821800.a, A000079, A000079.P10855139691139572931.a, A003418, A003418.P6976248655893080794.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A319852

/-! ## A319852.P16608252143970497839

`A319880(n)+A000244(n)-A000079(n)`
-/

namespace A319852.P16608252143970497839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319880 n + A000244 n - A000079 n

end

end A319852.P16608252143970497839

namespace A319852

/-- `A319880(n)+A000244(n)-A000079(n)` -/
def P16608252143970497839.Spec : Prop :=
  ∀ n, P16608252143970497839.a n = A319852 n

theorem P16608252143970497839.correct : P16608252143970497839.Spec := by
  intro n
  simp only [A319852, Nat.add_sub_cancel, A319852.P16608252143970497839.a, A319852.P2834976345500521243.a, A000079, A000079.P10855139691139572931.a, A000244, A000244.P17162167222172810417.a, A034386, A034386.P1755129826133478527.a, A319880, A319880.P15208408059183821800.a, A003418, A003418.P6976248655893080794.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A319852

/-! ## A319852.P17427205836965735469

`A319857(n)-A005061(n)`
-/

namespace A319852.P17427205836965735469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319857 n - A005061 n

end

end A319852.P17427205836965735469

namespace A319852

/-- `A319857(n)-A005061(n)` -/
def P17427205836965735469.Spec : Prop :=
  ∀ n, P17427205836965735469.a n = A319852 n

theorem P17427205836965735469.correct : P17427205836965735469.Spec := by
  intro n
  simp only [A319852, Nat.add_sub_cancel, A319852.P17427205836965735469.a, A319852.P2834976345500521243.a, A005061, A005061.P16496871994776631977.a, A034386, A034386.P1755129826133478527.a, A319857, A319857.P3217448747804554425.a, A003418, A003418.P6976248655893080794.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A319852

/-! ## A319852.P2943232497562427061

`A319857(n)+A000244(n)-A000302(n)`
-/

namespace A319852.P2943232497562427061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319857 n + A000244 n - A000302 n

end

end A319852.P2943232497562427061

namespace A319852

/-- `A319857(n)+A000244(n)-A000302(n)` -/
def P2943232497562427061.Spec : Prop :=
  ∀ n, P2943232497562427061.a n = A319852 n

theorem P2943232497562427061.correct : P2943232497562427061.Spec := by
  intro n
  simp only [A319852, Nat.add_sub_cancel, A319852.P2943232497562427061.a, A319852.P2834976345500521243.a, A000244, A000244.P17162167222172810417.a, A000302, A000302.P5166485833484575275.a, A034386, A034386.P1755129826133478527.a, A319857, A319857.P3217448747804554425.a, A003418, A003418.P6976248655893080794.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A319852

/-! ## A319852.P9092407759641477092

`3^n-A201146(C(n, 2)+1)`
-/

namespace A319852.P9092407759641477092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A201146 (Nat.choose n 2 + 1)

end

end A319852.P9092407759641477092

namespace A319852

/-- `3^n-A201146(C(n, 2)+1)` -/
def P9092407759641477092.Spec : Prop :=
  ∀ n, P9092407759641477092.a n = A319852 n

end A319852

/-! ## A319852.P1739874162354737294

`3^n-A201146(∑[abs(1-n)])`
-/

namespace A319852.P1739874162354737294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A201146 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A319852.P1739874162354737294

namespace A319852

/-- `3^n-A201146(∑[abs(1-n)])` -/
def P1739874162354737294.Spec : Prop :=
  ∀ n, P1739874162354737294.a n = A319852 n

end A319852

/-!
# A319853: Number of ways to write n as the sum of 4 positive integers a,b,c,d such that a/b - c/d = (a - c)/(b + d).

The programs for A319853, there is no canonical definition to state claims against.
-/

/-! ## A319853.P18397635628388726345

`A090843(n)%A272604(A282119(n))`
-/

namespace A319853.P18397635628388726345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090843 n) (A272604 (A282119 n).toNat)

end

end A319853.P18397635628388726345

/-! ## A319853.P4624747991169717372

`A291598(A281520(n))-A291598(n+1)`
-/

namespace A319853.P4624747991169717372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291598 (A281520 n).toNat - A291598 (n + 1)

end

end A319853.P4624747991169717372

/-! ## A319853.P13506333545718849864

`A217696(A175544(n+1))%A079584(n+1)`
-/

namespace A319853.P13506333545718849864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217696 (A175544 (n + 1)).toNat) (A079584 (n + 1))

end

end A319853.P13506333545718849864

/-! ## A319853.P14763657090016117323

`xor(A343380(3*n+2), A343380(A140994(3*n+4)))`
-/

namespace A319853.P14763657090016117323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A343380 (3 * n + 2)) (A343380 (A140994 (3 * n + 4)).toNat)

end

end A319853.P14763657090016117323

/-! ## A319853.P6323541788638639728

`A001620(A124501(n))%7`
-/

namespace A319853.P6323541788638639728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001620 (A124501 n).toNat) 7

end

end A319853.P6323541788638639728

/-!
# A319854: Number of ways to write n as the sum of 4 positive integers a, b, c, d such that d < b and a/b - c/d = (a - c)/(b + d).

The programs for A319854, there is no canonical definition to state claims against.
-/

/-! ## A319854.P15551692795295059868

`val(A000142(n), A055593(A114412(n+1)))`
-/

namespace A319854.P15551692795295059868
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000142 n).toNat (A055593 (A114412 (n + 1)).toNat).toNat

end

end A319854.P15551692795295059868

/-! ## A319854.P5480326958616267438

`A235748(n+2)%A001221(A051918(n))`
-/

namespace A319854.P5480326958616267438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235748 (n + 2)) (A001221 (A051918 n).toNat)

end

end A319854.P5480326958616267438

/-! ## A319854.P11820713959225869948

`A341027(A226555(2*n+1))`
-/

namespace A319854.P11820713959225869948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341027 ((A226555 (2 * n + 1)).toNat + 220)

end

end A319854.P11820713959225869948

/-! ## A319854.P10208603561399495947

`A341027(A018804(2*n+1)-n)`
-/

namespace A319854.P10208603561399495947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341027 ((A018804 (2 * n + 1) - (n : ℤ)).toNat + 220)

end

end A319854.P10208603561399495947

/-!
# A319855: Minimum number that can be obtained by iteratively adding or multiplying together parts of the integer partition with Heinz number n until only one part remains.

The programs for A319855, the canonical program `A319855.P2547922749606692144` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319855 has offset 1).

The definition of A319855 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319855.P1282046945031701327

`A056239(lcm((n+1)/2^val(n+1, 2), ceil((n+1)/∏{p}[n+1, (n+1)/#])))`
-/

namespace A319855.P1282046945031701327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))) ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉)

end

end A319855.P1282046945031701327

namespace A319855

/-- `A056239(lcm((n+1)/2^val(n+1, 2), ceil((n+1)/∏{p}[n+1, (n+1)/#])))` -/
def P1282046945031701327.Spec : Prop :=
  ∀ n, P1282046945031701327.a n = A319855 (n + 1)

end A319855

/-! ## A319855.P12646304976838966800

`A339823(n+1)+A238845(n)`
-/

namespace A319855.P12646304976838966800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339823 (n + 1) + A238845 n

end

end A319855.P12646304976838966800

namespace A319855

/-- `A339823(n+1)+A238845(n)` -/
def P12646304976838966800.Spec : Prop :=
  ∀ n, P12646304976838966800.a n = A319855 (n + 1)

end A319855

/-! ## A319855.P2547922749606692144

`A056239((n+1)/A135517(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A319855

/-- `A056239((n+1)/A135517(n))` -/
def P2547922749606692144.Spec : Prop :=
  ∀ n, P2547922749606692144.a n = A319855 (n + 1)

theorem P2547922749606692144.correct : P2547922749606692144.Spec := by
  intro n
  simp only [A319855, Nat.add_sub_cancel]

end A319855

/-! ## A319855.P13271692685752571927

`A056239(n+1)-log2(A135517(n))`
-/

namespace A319855.P13271692685752571927
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A056239 (n + 1) : ℝ) - Real.logb 2 (A135517 n : ℝ)

end

end A319855.P13271692685752571927

namespace A319855

/-- `A056239(n+1)-log2(A135517(n))` -/
def P13271692685752571927.Spec : Prop :=
  ∀ n, P13271692685752571927.a n = (A319855 (n + 1) : ℝ)

end A319855

/-! ## A319855.P8747435482677855616

`A056239(n+1)+1-A091090(n)`
-/

namespace A319855.P8747435482677855616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) + (1 - A091090 n)

end

end A319855.P8747435482677855616

namespace A319855

/-- `A056239(n+1)+1-A091090(n)` -/
def P8747435482677855616.Spec : Prop :=
  ∀ n, P8747435482677855616.a n = A319855 (n + 1)

end A319855

/-! ## A319855.P17903492196998001056

`A316436(2*(n+1))-A091090(n)`
-/

namespace A319855.P17903492196998001056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316436 (2 * (n + 1)) - A091090 n

end

end A319855.P17903492196998001056

namespace A319855

/-- `A316436(2*(n+1))-A091090(n)` -/
def P17903492196998001056.Spec : Prop :=
  ∀ n, P17903492196998001056.a n = A319855 (n + 1)

end A319855

/-! ## A319855.P3815525848530613400

`A056239(n+1)-val(A052126(n+1), 2)`
-/

namespace A319855.P3815525848530613400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - (SequenceMachineLib.valuation (A052126 (n + 1)).toNat 2 : ℤ)

end

end A319855.P3815525848530613400

namespace A319855

/-- `A056239(n+1)-val(A052126(n+1), 2)` -/
def P3815525848530613400.Spec : Prop :=
  ∀ n, P3815525848530613400.a n = A319855 (n + 1)

end A319855

/-! ## A319855.P5741407766579532717

`A056239(lcm(A000265(n+1), A006530(n+1)))`
-/

namespace A319855.P5741407766579532717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.lcm (A000265 (n + 1)) (A006530 (n + 1)))

end

end A319855.P5741407766579532717

namespace A319855

/-- `A056239(lcm(A000265(n+1), A006530(n+1)))` -/
def P5741407766579532717.Spec : Prop :=
  ∀ n, P5741407766579532717.a n = A319855 (n + 1)

end A319855

/-! ## A319855.P12209339030930473008

`A056239(A036044(A036044(n))+1)`
-/

namespace A319855.P12209339030930473008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A036044 (A036044 n).toNat + 1).toNat

end

end A319855.P12209339030930473008

namespace A319855

/-- `A056239(A036044(A036044(n))+1)` -/
def P12209339030930473008.Spec : Prop :=
  ∀ n, P12209339030930473008.a n = A319855 (n + 1)

end A319855

/-! ## A319855.P3416315764120532812

`log2(A248692(n+1)/A135517(n))`
-/

namespace A319855.P3416315764120532812
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((A248692 (n + 1) : ℚ) / (A135517 n : ℚ) : ℝ)

end

end A319855.P3416315764120532812

namespace A319855

/-- `log2(A248692(n+1)/A135517(n))` -/
def P3416315764120532812.Spec : Prop :=
  ∀ n, P3416315764120532812.a n = (A319855 (n + 1) : ℝ)

end A319855

/-!
# A319856: Maximum number that can be obtained by iteratively adding or multiplying together parts of the integer partition with Heinz number n until only one part remains.

The programs for A319856, there is no canonical definition to state claims against.
-/

/-! ## A319856.P8164209446547682617

`A326499(A184912(n+1))+A056239(n+1)`
-/

namespace A319856.P8164209446547682617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326499 ((A184912 (n + 1)).toNat + 51) + A056239 (n + 1)

end

end A319856.P8164209446547682617

/-! ## A319856.P16633575022584051891

`A056239(n+1)+A025441(A045686(n))`
-/

namespace A319856.P16633575022584051891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) + A025441 (A045686 n).toNat

end

end A319856.P16633575022584051891

/-! ## A319856.P6955985192742645451

`A056239(n+1)+A025469(A137361(n))`
-/

namespace A319856.P6955985192742645451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) + A025469 (A137361 n).toNat

end

end A319856.P6955985192742645451

/-! ## A319856.P13017471588677184192

`A086013(A156953(n))+A056239(n+1)`
-/

namespace A319856.P13017471588677184192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086013 (A156953 n).toNat + A056239 (n + 1)

end

end A319856.P13017471588677184192

/-! ## A319856.P8745824055974274805

`A274011(A313560(n))-A323305(n+1)`
-/

namespace A319856.P8745824055974274805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274011 (A313560 n).toNat - A323305 (n + 1)

end

end A319856.P8745824055974274805

/-!
# A319857: Difference between 4^n and the product of primes less than or equal to n.

The programs for A319857, the canonical program `A319857.P3217448747804554425` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319857 has offset 0).

The definition of A319857 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A319857.P3217448747804554425

`4^n-A034386(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A319857

/-- `4^n-A034386(n)` -/
def P3217448747804554425.Spec : Prop :=
  ∀ n, P3217448747804554425.a n = A319857 n

theorem P3217448747804554425.correct : P3217448747804554425.Spec := by
  intro n
  simp only [A319857]

end A319857

/-! ## A319857.P16144868421870483772

`4^n-A300951(2*n)`
-/

namespace A319857.P16144868421870483772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - A300951 (2 * n)

end

end A319857.P16144868421870483772

namespace A319857

/-- `4^n-A300951(2*n)` -/
def P16144868421870483772.Spec : Prop :=
  ∀ n, P16144868421870483772.a n = A319857 n

end A319857

/-! ## A319857.P17595801405679918308

`record[(-2)^n-A300951(n)]`
-/

namespace A319857.P17595801405679918308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n - A300951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319857.P17595801405679918308

namespace A319857

/-- `record[(-2)^n-A300951(n)]` -/
def P17595801405679918308.Spec : Prop :=
  ∀ n, P17595801405679918308.a n = A319857 n

end A319857

/-! ## A319857.P13202967220713624500

`A319852(n)+A005061(n)`
-/

namespace A319857.P13202967220713624500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319852 n + A005061 n

end

end A319857.P13202967220713624500

namespace A319857

/-- `A319852(n)+A005061(n)` -/
def P13202967220713624500.Spec : Prop :=
  ∀ n, P13202967220713624500.a n = A319857 n

theorem P13202967220713624500.correct : P13202967220713624500.Spec := by
  intro n
  simp only [A319857, Nat.add_sub_cancel, A319857.P13202967220713624500.a, A319857.P3217448747804554425.a, A005061, A005061.P16496871994776631977.a, A034386, A034386.P1755129826133478527.a, A319852, A319852.P2834976345500521243.a, A003418, A003418.P6976248655893080794.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A319857

/-! ## A319857.P15009617714779132139

`A319880(n)+A020522(n)`
-/

namespace A319857.P15009617714779132139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319880 n + A020522 n

end

end A319857.P15009617714779132139

namespace A319857

/-- `A319880(n)+A020522(n)` -/
def P15009617714779132139.Spec : Prop :=
  ∀ n, P15009617714779132139.a n = A319857 n

theorem P15009617714779132139.correct : P15009617714779132139.Spec := by
  intro n
  simp only [A319857, Nat.add_sub_cancel, A319857.P15009617714779132139.a, A319857.P3217448747804554425.a, A020522, A020522.P10227953348410881457.a, A034386, A034386.P1755129826133478527.a, A319880, A319880.P15208408059183821800.a, A000079, A000079.P10855139691139572931.a, A003418, A003418.P6976248655893080794.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A319857

/-! ## A319857.P15541364838207583357

`A319880(n)+A000302(n)-A000079(n)`
-/

namespace A319857.P15541364838207583357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319880 n + A000302 n - A000079 n

end

end A319857.P15541364838207583357

namespace A319857

/-- `A319880(n)+A000302(n)-A000079(n)` -/
def P15541364838207583357.Spec : Prop :=
  ∀ n, P15541364838207583357.a n = A319857 n

theorem P15541364838207583357.correct : P15541364838207583357.Spec := by
  intro n
  simp only [A319857, Nat.add_sub_cancel, A319857.P15541364838207583357.a, A319857.P3217448747804554425.a, A000079, A000079.P10855139691139572931.a, A000302, A000302.P5166485833484575275.a, A034386, A034386.P1755129826133478527.a, A319880, A319880.P15208408059183821800.a, A003418, A003418.P6976248655893080794.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A319857

/-! ## A319857.P8463079587459395400

`A319852(n)+A000302(n)-A000244(n)`
-/

namespace A319857.P8463079587459395400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319852 n + A000302 n - A000244 n

end

end A319857.P8463079587459395400

namespace A319857

/-- `A319852(n)+A000302(n)-A000244(n)` -/
def P8463079587459395400.Spec : Prop :=
  ∀ n, P8463079587459395400.a n = A319857 n

theorem P8463079587459395400.correct : P8463079587459395400.Spec := by
  intro n
  simp only [A319857, Nat.add_sub_cancel, A319857.P8463079587459395400.a, A319857.P3217448747804554425.a, A000244, A000244.P17162167222172810417.a, A000302, A000302.P5166485833484575275.a, A034386, A034386.P1755129826133478527.a, A319852, A319852.P2834976345500521243.a, A003418, A003418.P6976248655893080794.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A319857

/-! ## A319857.P17039067814000701867

`4^n-A201146(C(n, 2)+1)`
-/

namespace A319857.P17039067814000701867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - A201146 (Nat.choose n 2 + 1)

end

end A319857.P17039067814000701867

namespace A319857

/-- `4^n-A201146(C(n, 2)+1)` -/
def P17039067814000701867.Spec : Prop :=
  ∀ n, P17039067814000701867.a n = A319857 n

end A319857

/-! ## A319857.P2317860848714550479

`abs(A201146(∑[abs(1-n)])-4^n)`
-/

namespace A319857.P2317860848714550479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A201146 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (4 ^ n : ℤ)|

end

end A319857.P2317860848714550479

namespace A319857

/-- `abs(A201146(∑[abs(1-n)])-4^n)` -/
def P2317860848714550479.Spec : Prop :=
  ∀ n, P2317860848714550479.a n = A319857 n

end A319857

/-!
# A319859: Expansion of Product_{k>0} (1 + (2*k-1)*x^(2*k-1))/(1 - 2*k*x^(2*k)).

The programs for A319859, there is no canonical definition to state claims against.
-/

/-! ## A319859.P4458397916833461392

`A178670(A301627(n))+A128761(n)`
-/

namespace A319859.P4458397916833461392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178670 (A301627 n).toNat + A128761 n

end

end A319859.P4458397916833461392

/-! ## A319859.P11422263018199169567

`or(A003056(A054660(n+1)), A357136(2*(n+1)))`
-/

namespace A319859.P11422263018199169567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003056 (A054660 (n + 1)).toNat) (A357136 (2 * (n + 1)))

end

end A319859.P11422263018199169567

/-!
# A319861: Triangle read by rows, 0 <= k <= n: T(n,k) is the numerator of the k-th Bernstein basis polynomial of degree n evaluated at the interval midpoint t = 1/2; denominator is A319862.

The programs for A319861, the canonical program `A319861.P4565149569775814978` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319861 has offset 0).

The definition of A319861 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319861.P4565149569775814978

`A007318(n)/A082907(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A319861

/-- `A007318(n)/A082907(n)` -/
def P4565149569775814978.Spec : Prop :=
  ∀ n, P4565149569775814978.a n = (A319861 n : ℚ)

end A319861

/-! ## A319861.P8307406791743982220

`(A109004(n)-A140682(n))/A082907(n)`
-/

namespace A319861.P8307406791743982220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109004 n - A140682 n : ℚ) / (A082907 n : ℚ)

end

end A319861.P8307406791743982220

namespace A319861

/-- `(A109004(n)-A140682(n))/A082907(n)` -/
def P8307406791743982220.Spec : Prop :=
  ∀ n, P8307406791743982220.a n = (A319861 n : ℚ)

end A319861

/-! ## A319861.P17966004546706267899

`lcm(A132046(n), A140513(n))/A140513(n)`
-/

namespace A319861.P17966004546706267899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A132046 n) (A140513 n) : ℚ) / (A140513 n : ℚ)

end

end A319861.P17966004546706267899

namespace A319861

/-- `lcm(A132046(n), A140513(n))/A140513(n)` -/
def P17966004546706267899.Spec : Prop :=
  ∀ n, P17966004546706267899.a n = (A319861 n : ℚ)

end A319861

/-! ## A319861.P2154843981037660631

`A007318(n)/and(A007318(n), A134346(n))`
-/

namespace A319861.P2154843981037660631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (Int.land (A007318 n) (A134346 n) : ℚ)

end

end A319861.P2154843981037660631

namespace A319861

/-- `A007318(n)/and(A007318(n), A134346(n))` -/
def P2154843981037660631.Spec : Prop :=
  ∀ n, P2154843981037660631.a n = (A319861 n : ℚ)

end A319861

/-! ## A319861.P13200578276334190077

`gcd(A007318(n), A173424(n))`
-/

namespace A319861.P13200578276334190077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007318 n) (A173424 n)

end

end A319861.P13200578276334190077

namespace A319861

/-- `gcd(A007318(n), A173424(n))` -/
def P13200578276334190077.Spec : Prop :=
  ∀ n, (P13200578276334190077.a n : ℤ) = A319861 n

end A319861

/-! ## A319861.P11336286667119763692

`gcd(A134058(n), A336599(n+1))`
-/

namespace A319861.P11336286667119763692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A134058 n) (A336599 (n + 1))

end

end A319861.P11336286667119763692

namespace A319861

/-- `gcd(A134058(n), A336599(n+1))` -/
def P11336286667119763692.Spec : Prop :=
  ∀ n, (P11336286667119763692.a n : ℤ) = A319861 n

end A319861

/-! ## A319861.P7388785260554526532

`A007318(n)/and(A007318(n), A177228(n))`
-/

namespace A319861.P7388785260554526532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (Int.land (A007318 n) (A177228 n) : ℚ)

end

end A319861.P7388785260554526532

namespace A319861

/-- `A007318(n)/and(A007318(n), A177228(n))` -/
def P7388785260554526532.Spec : Prop :=
  ∀ n, P7388785260554526532.a n = (A319861 n : ℚ)

end A319861

/-! ## A319861.P13969405086566450507

`A007318(n)/gcd(A013612(n), A016116(n))`
-/

namespace A319861.P13969405086566450507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (Int.gcd (A013612 n) (A016116 n) : ℚ)

end

end A319861.P13969405086566450507

namespace A319861

/-- `A007318(n)/gcd(A013612(n), A016116(n))` -/
def P13969405086566450507.Spec : Prop :=
  ∀ n, P13969405086566450507.a n = (A319861 n : ℚ)

end A319861

/-! ## A319861.P8256346755970951515

`gcd(A111636(n), A336599(n+1))`
-/

namespace A319861.P8256346755970951515
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A111636 n) (A336599 (n + 1))

end

end A319861.P8256346755970951515

namespace A319861

/-- `gcd(A111636(n), A336599(n+1))` -/
def P8256346755970951515.Spec : Prop :=
  ∀ n, (P8256346755970951515.a n : ℤ) = A319861 n

end A319861

/-! ## A319861.P163224312035624833

`gcd(A028326(n), A119239(n+1))`
-/

namespace A319861.P163224312035624833
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028326 n) (A119239 (n + 1))

end

end A319861.P163224312035624833

namespace A319861

/-- `gcd(A028326(n), A119239(n+1))` -/
def P163224312035624833.Spec : Prop :=
  ∀ n, (P163224312035624833.a n : ℤ) = A319861 n

end A319861

/-! ## A319861.P2747786364141125966

`gcd(A038210(n), A119239(n+2))`
-/

namespace A319861.P2747786364141125966
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038210 n) (A119239 (n + 2))

end

end A319861.P2747786364141125966

namespace A319861

/-- `gcd(A038210(n), A119239(n+2))` -/
def P2747786364141125966.Spec : Prop :=
  ∀ n, (P2747786364141125966.a n : ℤ) = A319861 n

end A319861

/-! ## A319861.P15232025882511149555

`gcd(A013611(n), A053624(n+1))`
-/

namespace A319861.P15232025882511149555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013611 n) (A053624 (n + 1))

end

end A319861.P15232025882511149555

namespace A319861

/-- `gcd(A013611(n), A053624(n+1))` -/
def P15232025882511149555.Spec : Prop :=
  ∀ n, (P15232025882511149555.a n : ℤ) = A319861 n

end A319861

/-! ## A319861.P8942087882296993376

`gcd(A038208(n), A053624(n+2))`
-/

namespace A319861.P8942087882296993376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038208 n) (A053624 (n + 2))

end

end A319861.P8942087882296993376

namespace A319861

/-- `gcd(A038208(n), A053624(n+2))` -/
def P8942087882296993376.Spec : Prop :=
  ∀ n, (P8942087882296993376.a n : ℤ) = A319861 n

end A319861

/-! ## A319861.P14303570837529661680

`A000265(A007318(n))`
-/

namespace A319861.P14303570837529661680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A007318 n).toNat

end

end A319861.P14303570837529661680

namespace A319861

/-- `A000265(A007318(n))` -/
def P14303570837529661680.Spec : Prop :=
  ∀ n, P14303570837529661680.a n = A319861 n

end A319861

/-! ## A319861.P16203895791871875571

`A000265(A132749(n))`
-/

namespace A319861.P16203895791871875571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A132749 n).toNat

end

end A319861.P16203895791871875571

namespace A319861

/-- `A000265(A132749(n))` -/
def P16203895791871875571.Spec : Prop :=
  ∀ n, P16203895791871875571.a n = A319861 n

end A319861

/-! ## A319861.P16166761653222082122

`A000265(abs(A130595(n)))`
-/

namespace A319861.P16166761653222082122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 |A130595 n|.toNat

end

end A319861.P16166761653222082122

namespace A319861

/-- `A000265(abs(A130595(n)))` -/
def P16166761653222082122.Spec : Prop :=
  ∀ n, P16166761653222082122.a n = A319861 n

end A319861

/-! ## A319861.P11320302465634208166

`A000265(A014473(n)+1)`
-/

namespace A319861.P11320302465634208166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A014473 n + 1).toNat

end

end A319861.P11320302465634208166

namespace A319861

/-- `A000265(A014473(n)+1)` -/
def P11320302465634208166.Spec : Prop :=
  ∀ n, P11320302465634208166.a n = A319861 n

end A319861

/-! ## A319861.P4874724349796961739

`A000265(A028326(n)/2)`
-/

namespace A319861.P4874724349796961739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A028326 n : ℚ) / 2)).toNat

end

end A319861.P4874724349796961739

namespace A319861

/-- `A000265(A028326(n)/2)` -/
def P4874724349796961739.Spec : Prop :=
  ∀ n, P4874724349796961739.a n = A319861 n

end A319861

/-! ## A319861.P379571558432399287

`A000265(A028326(n))`
-/

namespace A319861.P379571558432399287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A028326 n).toNat

end

end A319861.P379571558432399287

namespace A319861

/-- `A000265(A028326(n))` -/
def P379571558432399287.Spec : Prop :=
  ∀ n, P379571558432399287.a n = A319861 n

end A319861

/-! ## A319861.P845050689279728744

`A000265(A124845(n))`
-/

namespace A319861.P845050689279728744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A124845 n).toNat

end

end A319861.P845050689279728744

namespace A319861

/-- `A000265(A124845(n))` -/
def P845050689279728744.Spec : Prop :=
  ∀ n, P845050689279728744.a n = A319861 n

end A319861

/-!
# A319862: Triangle read by rows, 0 <= k <= n: T(n,k) is the denominator of the k-th Bernstein basis polynomial of degree n evaluated at the interval midpoint t = 1/2; numerator is A319861.

The programs for A319862, the canonical program `A319862.P1169711650458814628` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319862 has offset 0).

The definition of A319862 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319862.P1169711650458814628

`A137688(n)/A082907(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A319862

/-- `A137688(n)/A082907(n)` -/
def P1169711650458814628.Spec : Prop :=
  ∀ n, P1169711650458814628.a n = (A319862 n : ℚ)

end A319862

/-! ## A319862.P9049702872917450271

`A130321(A057944(n))/A082907(n)`
-/

namespace A319862.P9049702872917450271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130321 (A057944 n).toNat : ℚ) / (A082907 n : ℚ)

end

end A319862.P9049702872917450271

namespace A319862

/-- `A130321(A057944(n))/A082907(n)` -/
def P9049702872917450271.Spec : Prop :=
  ∀ n, P9049702872917450271.a n = (A319862 n : ℚ)

end A319862

/-! ## A319862.P4600413518521982103

`A137688(n)/gcd(A007318(n), A137688(n))`
-/

namespace A319862.P4600413518521982103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137688 n : ℚ) / (Int.gcd (A007318 n) (A137688 n) : ℚ)

end

end A319862.P4600413518521982103

namespace A319862

/-- `A137688(n)/gcd(A007318(n), A137688(n))` -/
def P4600413518521982103.Spec : Prop :=
  ∀ n, P4600413518521982103.a n = (A319862 n : ℚ)

end A319862

/-! ## A319862.P6082475339558553991

`A038208(n)/gcd(A007318(n)², A038208(n))`
-/

namespace A319862.P6082475339558553991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038208 n : ℚ) / (Int.gcd (A007318 n ^ 2) (A038208 n) : ℚ)

end

end A319862.P6082475339558553991

namespace A319862

/-- `A038208(n)/gcd(A007318(n)², A038208(n))` -/
def P6082475339558553991.Spec : Prop :=
  ∀ n, P6082475339558553991.a n = (A319862 n : ℚ)

end A319862

/-! ## A319862.P245964101154758903

`A038216(n)/gcd(A038271(n)², A038216(n))`
-/

namespace A319862.P245964101154758903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038216 n : ℚ) / (Int.gcd (A038271 n ^ 2) (A038216 n) : ℚ)

end

end A319862.P245964101154758903

namespace A319862

/-- `A038216(n)/gcd(A038271(n)², A038216(n))` -/
def P245964101154758903.Spec : Prop :=
  ∀ n, P245964101154758903.a n = (A319862 n : ℚ)

end A319862

/-! ## A319862.P9893502598324617718

`A038284(n)/gcd(A038305(n)², A038284(n))`
-/

namespace A319862.P9893502598324617718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038284 n : ℚ) / (Int.gcd (A038305 n ^ 2) (A038284 n) : ℚ)

end

end A319862.P9893502598324617718

namespace A319862

/-- `A038284(n)/gcd(A038305(n)², A038284(n))` -/
def P9893502598324617718.Spec : Prop :=
  ∀ n, P9893502598324617718.a n = (A319862 n : ℚ)

end A319862

/-! ## A319862.P13070083025666686924

`lcm(A137688(n), A257625(n))/A257625(n)`
-/

namespace A319862.P13070083025666686924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A137688 n) (A257625 n) : ℚ) / (A257625 n : ℚ)

end

end A319862.P13070083025666686924

namespace A319862

/-- `lcm(A137688(n), A257625(n))/A257625(n)` -/
def P13070083025666686924.Spec : Prop :=
  ∀ n, P13070083025666686924.a n = (A319862 n : ℚ)

end A319862

/-! ## A319862.P16176647465179548493

`A257612(n)/gcd(A257625(n)², A257612(n))`
-/

namespace A319862.P16176647465179548493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257612 n : ℚ) / (Int.gcd (A257625 n ^ 2) (A257612 n) : ℚ)

end

end A319862.P16176647465179548493

namespace A319862

/-- `A257612(n)/gcd(A257625(n)², A257612(n))` -/
def P16176647465179548493.Spec : Prop :=
  ∀ n, P16176647465179548493.a n = (A319862 n : ℚ)

end A319862

/-!
# A319864: Exponents of the final nontrivial entry of the iterated Stern sequence; a(n) = log_2 min{s^k(n) : k > 0, s^k(n) > 1}, where s(n) = A002487(n).

The programs for A319864, there is no canonical definition to state claims against.
-/

/-! ## A319864.P14332380719730231416

`A063962(A189072(n+1)+A063962(n+2))`
-/

namespace A319864.P14332380719730231416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063962 (A189072 (n + 1) + A063962 (n + 2)).toNat

end

end A319864.P14332380719730231416

/-! ## A319864.P11651314564502431281

`A246351(A271341(n+4))%A000005(n+2)`
-/

namespace A319864.P11651314564502431281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246351 (A271341 (n + 4)).toNat) (A000005 (n + 2))

end

end A319864.P11651314564502431281

/-! ## A319864.P16400373142509223102

`gcd(A005811(A282757(n+1)), A164392(2*n+3))`
-/

namespace A319864.P16400373142509223102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005811 (A282757 (n + 1)).toNat) (A164392 (2 * n + 3))

end

end A319864.P16400373142509223102

/-! ## A319864.P12597396648349095166

`gcd(record[A224367(n)], A274009(n))`
-/

namespace A319864.P12597396648349095166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224367 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A274009 n)

end

end A319864.P12597396648349095166

/-! ## A319864.P11128637448326088610

`∑{e}[A274346(A066638(n+1)), #]`
-/

namespace A319864.P11128637448326088610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274346 (A066638 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A319864.P11128637448326088610

/-!
# A319865: Product of distinct prime factors of highly composite numbers (definition 1, A002182).

The programs for A319865, there is no canonical definition to state claims against.
-/

/-! ## A319865.P8197269665783288919

`A007947(A002182(n+1))`
-/

namespace A319865.P8197269665783288919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A002182 (n + 1)).toNat

end

end A319865.P8197269665783288919

/-! ## A319865.P16417419631139901399

`A002110(A108602(n+1))`
-/

namespace A319865.P16417419631139901399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A108602 (n + 1)).toNat

end

end A319865.P16417419631139901399

/-! ## A319865.P6991555945132142595

`A034386(A272605(n+1))`
-/

namespace A319865.P6991555945132142595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (A272605 (n + 1)).toNat

end

end A319865.P6991555945132142595

/-! ## A319865.P8184057357507784287

`A002182(n+1)/A301413(n+1)`
-/

namespace A319865.P8184057357507784287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002182 (n + 1) : ℚ) / (A301413 (n + 1) : ℚ)

end

end A319865.P8184057357507784287

/-! ## A319865.P8615033959799668603

`sqrt(A046952(n+1))/A301413(n+1)`
-/

namespace A319865.P8615033959799668603
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A046952 (n + 1) : ℝ) / (A301413 (n + 1) : ℝ)

end

end A319865.P8615033959799668603

/-! ## A319865.P8614102803933510775

`gcd(A002182(n+1), A034386(A080513(n)))`
-/

namespace A319865.P8614102803933510775
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002182 (n + 1)) (A034386 (A080513 n).toNat)

end

end A319865.P8614102803933510775

/-! ## A319865.P12008451627449165561

`gcd(A002182(n+1), A186944(n+1))`
-/

namespace A319865.P12008451627449165561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002182 (n + 1)) (A186944 (n + 1))

end

end A319865.P12008451627449165561

/-! ## A319865.P9325438759556412862

`gcd(A034386(n+1), A046952(n+1))`
-/

namespace A319865.P9325438759556412862
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034386 (n + 1)) (A046952 (n + 1))

end

end A319865.P9325438759556412862

/-! ## A319865.P2505873543727521269

`gcd(1-A135372(n+1), A002110(A272605(n+1)))`
-/

namespace A319865.P2505873543727521269
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A135372 (n + 1)) (A002110 (A272605 (n + 1)).toNat)

end

end A319865.P2505873543727521269

/-! ## A319865.P12565800161433313985

`A332462(2^A108602(n+1))`
-/

namespace A319865.P12565800161433313985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332462 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A108602 (n + 1) : ℤ))).toNat

end

end A319865.P12565800161433313985

/-! ## A319865.P3454838069137382870

`gcd(A002182(n+1), A054641(n+1))`
-/

namespace A319865.P3454838069137382870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002182 (n + 1)) (A054641 (n + 1))

end

end A319865.P3454838069137382870

/-! ## A319865.P3713643917970580205

`A276156(2^A108602(n+1))`
-/

namespace A319865.P3713643917970580205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276156 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A108602 (n + 1) : ℤ))).toNat

end

end A319865.P3713643917970580205

/-! ## A319865.P726679880196612054

`A002110(A061395(A329902(n+1)))`
-/

namespace A319865.P726679880196612054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A061395 (A329902 (n + 1)).toNat).toNat

end

end A319865.P726679880196612054

/-! ## A319865.P12379306932505851787

`gcd(A002182(A080513(2*n)), A034386(2*n))`
-/

namespace A319865.P12379306932505851787
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002182 (A080513 (2 * n)).toNat) (A034386 (2 * n))

end

end A319865.P12379306932505851787

/-! ## A319865.P14821631291687653809

`A247451(A306802(n+1))`
-/

namespace A319865.P14821631291687653809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247451 (A306802 (n + 1)).toNat

end

end A319865.P14821631291687653809

/-!
# A319866: a(n) = 2*1 + 4*3 + 6*5 + 8*7 + 10*9 + 12*11 + ... + (up to the n-th term).

The programs for A319866, the canonical program `A319866.P4839197206583511121` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319866 has offset 1).

The definition of A319866 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A319866.P4839197206583511121

`ogf((2-6x^2+8x^3+6x^4-16x^5-2x^6+8x^7)/(1-x-5x^2+5x^3+10x^4-10x^5-10x^6+10x^7+5x^8-5x^9-x^10+x^11))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A319866

/-- `ogf((2-6x^2+8x^3+6x^4-16x^5-2x^6+8x^7)/(1-x-5x^2+5x^3+10x^4-10x^5-10x^6+10x^7+5x^8-5x^9-x^10+x^11))` -/
def P4839197206583511121.Spec : Prop :=
  ∀ n, P4839197206583511121.a n = A319866 (n + 1)

theorem P4839197206583511121.correct : P4839197206583511121.Spec := by
  intro n
  simp only [A319866, Nat.add_sub_cancel]

end A319866

/-! ## A319866.P10626949320680683018

`A228958(n+1)+char[2*n]`
-/

namespace A319866.P10626949320680683018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228958 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A319866.P10626949320680683018

namespace A319866

/-- `A228958(n+1)+char[2*n]` -/
def P10626949320680683018.Spec : Prop :=
  ∀ n, P10626949320680683018.a n = A319866 (n + 1)

end A319866

/-! ## A319866.P15824373507839325677

`a(n-2)+2*A128918(n)` with `a(0)=2, a(1)=2`
-/

namespace A319866.P15824373507839325677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 2) + 2 * A128918 n

end

end A319866.P15824373507839325677

namespace A319866

/-- `a(n-2)+2*A128918(n)` -/
def P15824373507839325677.Spec : Prop :=
  ∀ n, P15824373507839325677.a n = A319866 (n + 1)

end A319866

/-! ## A319866.P6445414565965348574

`∑[(A109613(n)+1)*A124625(n)]`
-/

namespace A319866.P6445414565965348574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109613 n + 1) * A124625 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319866.P6445414565965348574

namespace A319866

/-- `∑[(A109613(n)+1)*A124625(n)]` -/
def P6445414565965348574.Spec : Prop :=
  ∀ n, P6445414565965348574.a n = A319866 (n + 1)

end A319866

/-! ## A319866.P13263141424489017725

`A228958(n+1)+1-A000035(n)`
-/

namespace A319866.P13263141424489017725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228958 (n + 1) + 1 - A000035 n

end

end A319866.P13263141424489017725

namespace A319866

/-- `A228958(n+1)+1-A000035(n)` -/
def P13263141424489017725.Spec : Prop :=
  ∀ n, P13263141424489017725.a n = A319866 (n + 1)

end A319866

/-! ## A319866.P14453539992596815382

`A212964(n+1)+2*A000463(n+1)`
-/

namespace A319866.P14453539992596815382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212964 (n + 1) + 2 * A000463 (n + 1)

end

end A319866.P14453539992596815382

namespace A319866

/-- `A212964(n+1)+2*A000463(n+1)` -/
def P14453539992596815382.Spec : Prop :=
  ∀ n, P14453539992596815382.a n = A319866 (n + 1)

end A319866

/-! ## A319866.P7938413276363668157

`∑[A124625(n+1)+A008865(A124625(n)+1)]`
-/

namespace A319866.P7938413276363668157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 (n + 1) + A008865 (A124625 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319866.P7938413276363668157

namespace A319866

/-- `∑[A124625(n+1)+A008865(A124625(n)+1)]` -/
def P7938413276363668157.Spec : Prop :=
  ∀ n, P7938413276363668157.a n = A319866 (n + 1)

end A319866

/-! ## A319866.P1548269105573321037

`A001057(n+1)+A228958(n+1)+A001057(n)`
-/

namespace A319866.P1548269105573321037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (n + 1) + (A228958 (n + 1) + A001057 n)

end

end A319866.P1548269105573321037

namespace A319866

/-- `A001057(n+1)+A228958(n+1)+A001057(n)` -/
def P1548269105573321037.Spec : Prop :=
  ∀ n, P1548269105573321037.a n = A319866 (n + 1)

end A319866

/-! ## A319866.P9022682203638330357

`2*A327672(A087279(n+2)-(n+1))`
-/

namespace A319866.P9022682203638330357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A327672 (A087279 (n + 2) - (n + 1 : ℤ)).toNat

end

end A319866.P9022682203638330357

namespace A319866

/-- `2*A327672(A087279(n+2)-(n+1))` -/
def P9022682203638330357.Spec : Prop :=
  ∀ n, P9022682203638330357.a n = A319866 (n + 1)

end A319866

/-!
# A319867: a(n) = 3*2*1 + 6*5*4 + 9*8*7 + 12*11*10 + ... + (up to the n-th term).

The programs for A319867, the canonical program `A319867.P7164746411427591608` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319867 has offset 1).

The definition of A319867 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A319867.P7164746411427591608

`ogf((3+3x-6x^3+12x^4+90x^5+3x^6-15x^7+72x^8)/(1-x-4x^3+4x^4+6x^6-6x^7-4x^9+4x^10+x^12-x^13))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A319867

/-- `ogf((3+3x-6x^3+12x^4+90x^5+3x^6-15x^7+72x^8)/(1-x-4x^3+4x^4+6x^6-6x^7-4x^9+4x^10+x^12-x^13))` -/
def P7164746411427591608.Spec : Prop :=
  ∀ n, P7164746411427591608.a n = A319867 (n + 1)

theorem P7164746411427591608.correct : P7164746411427591608.Spec := by
  intro n
  simp only [A319867, Nat.add_sub_cancel]

end A319867

/-! ## A319867.P12111159535894025417

`3*(p?[A019460(n)]-1)`
-/

namespace A319867.P12111159535894025417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019460 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1)

end

end A319867.P12111159535894025417

namespace A319867

/-- `3*(p?[A019460(n)]-1)` -/
def P12111159535894025417.Spec : Prop :=
  ∀ n, P12111159535894025417.a n = A319867 (n + 1)

end A319867

/-!
# A319869: a(n) = 5*4*3*2*1 + 10*9*8*7*6 + 15*14*13*12*11 + ... + (up to the n-th term).

The programs for A319869, there is no canonical definition to state claims against.
-/

/-! ## A319869.P2845915584030203360

`A036750(n+2)/3`
-/

namespace A319869.P2845915584030203360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036750 (n + 2) : ℚ) / 3

end

end A319869.P2845915584030203360

/-!
# A319870: a(n) = 6*5*4*3*2*1 + 12*11*10*9*8*7 + 18*17*16*15*14*13 + ... + (up to the n-th term).

The programs for A319870, there is no canonical definition to state claims against.
-/

/-! ## A319870.P7052374944409190234

`A036752(n+2)`
-/

namespace A319870.P7052374944409190234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036752 (n + 2)

end

end A319870.P7052374944409190234

/-! ## A319870.P9002450599085401225

`2*A036750(n+1)`
-/

namespace A319870.P9002450599085401225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A036750 (n + 1)

end

end A319870.P9002450599085401225

/-!
# A319871: a(n) = 7*6*5*4*3*2*1 + 14*13*12*11*10*9*8 + ... + (up to the n-th term).

The programs for A319871, there is no canonical definition to state claims against.
-/

/-! ## A319871.P18419587833972214409

`A036754(n+2)/3`
-/

namespace A319871.P18419587833972214409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036754 (n + 2) : ℚ) / 3

end

end A319871.P18419587833972214409

/-! ## A319871.P7124257588347915719

`A036753(n+3)/27`
-/

namespace A319871.P7124257588347915719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036753 (n + 3) : ℚ) / 27

end

end A319871.P7124257588347915719

/-! ## A319871.P10114549189180486917

`∏[dr(record[A238409(n+3)])]`
-/

namespace A319871.P10114549189180486917
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238409 (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A319871.P10114549189180486917

/-!
# A319872: a(n) = 8*7*6*5*4*3*2*1 + 16*15*14*12*11*10*9 + ... + (up to the n-th term).

The programs for A319872, there is no canonical definition to state claims against.
-/

/-! ## A319872.P2599071502706264759

`∏[8-A001222(5^n)]`
-/

namespace A319872.P2599071502706264759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 - A001222 (5 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A319872.P2599071502706264759

/-! ## A319872.P8730185795545300399

`∏[9-A000005(5^n)]`
-/

namespace A319872.P8730185795545300399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A000005 (5 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A319872.P8730185795545300399

/-! ## A319872.P13620163326963541172

`A000027(∏[xor(7, n)+1])`
-/

namespace A319872.P13620163326963541172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A319872.P13620163326963541172

/-!
# A319873: a(n) = 9*8*7*6*5*4*3*2*1 + 18*17*16*15*14*13*12*11*10 + ... + (up to the n-th term).

The programs for A319873, there is no canonical definition to state claims against.
-/

/-! ## A319873.P13236523495461684414

`A319892(n+1)+A004016(A255736(n+3))`
-/

namespace A319873.P13236523495461684414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319892 (n + 1) + A004016 (A255736 (n + 3)).toNat

end

end A319873.P13236523495461684414

/-! ## A319873.P17560994506576447991

`A000027(A110396(n+1))`
-/

namespace A319873.P17560994506576447991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A110396 (n + 1)).toNat

end

end A319873.P17560994506576447991

/-! ## A319873.P3173612003966570687

`A110396(A032565(n+1))`
-/

namespace A319873.P3173612003966570687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110396 (A032565 (n + 1)).toNat

end

end A319873.P3173612003966570687

/-! ## A319873.P7529259704507385751

`A110396(A073790(n)+1)`
-/

namespace A319873.P7529259704507385751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110396 (A073790 n + 1).toNat

end

end A319873.P7529259704507385751

/-! ## A319873.P15188484591331335385

`A319892(A032555(n+1))`
-/

namespace A319873.P15188484591331335385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319892 (A032555 (n + 1)).toNat

end

end A319873.P15188484591331335385

/-!
# A319874: a(n) = 10*9*8*7*6*5*4*3*2*1 + 20*19*18*17*16*15*14*13*12*11 + ... + (up to the n-th term).

The programs for A319874, there is no canonical definition to state claims against.
-/

/-! ## A319874.P4884897311424921690

`∏[A228245(3*n+2)]`
-/

namespace A319874.P4884897311424921690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228245 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A319874.P4884897311424921690

/-! ## A319874.P3977442755906992259

`∏[10-A039616(2*n+1)]`
-/

namespace A319874.P3977442755906992259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - A039616 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A319874.P3977442755906992259

/-! ## A319874.P629410165640436713

`ceil(sqrt(∑[2*n]))!*A010926(n+1)`
-/

namespace A319874.P629410165640436713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉.toNat : ℤ) * A010926 (n + 1)

end

end A319874.P629410165640436713

/-! ## A319874.P10005727514155615861

`A319893(A173588(∑[n]))`
-/

namespace A319874.P10005727514155615861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319893 (A173588 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A319874.P10005727514155615861

/-! ## A319874.P1656488986855650950

`A306957(A062399(n+1))`
-/

namespace A319874.P1656488986855650950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306957 (A062399 (n + 1)).toNat

end

end A319874.P1656488986855650950

/-!
# A319875: a(n) is the number of liberties of the group of n stones labeled 1 to n, by analogy to the game of go, in a pi(n)-dimensional board where a stone's coordinates are its label's p-adic valuations.

The programs for A319875, there is no canonical definition to state claims against.
-/

/-! ## A319875.P7198964433910327147

`A128913(n+1)-A203623(n+1)`
-/

namespace A319875.P7198964433910327147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128913 (n + 1) - A203623 (n + 1)

end

end A319875.P7198964433910327147

/-! ## A319875.P13114130075142738552

`A128913(n+1)-∑[A061395(n+1)]`
-/

namespace A319875.P13114130075142738552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128913 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319875.P13114130075142738552

/-! ## A319875.P852451548726821242

`(n+1)*A000720(n+1)-A203623(n+1)`
-/

namespace A319875.P852451548726821242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000720 (n + 1) - A203623 (n + 1)

end

end A319875.P852451548726821242

/-! ## A319875.P15683121199152408834

`(n+1)*A000720(n+1)-∑[A061395(n+1)]`
-/

namespace A319875.P15683121199152408834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000720 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319875.P15683121199152408834

/-! ## A319875.P8648135064306355175

`∑[(A064427(n+1)-A061395(n+1))%(n+1)]`
-/

namespace A319875.P8648135064306355175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064427 (n + 1) - A061395 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319875.P8648135064306355175

/-!
# A319878: Odd numbers whose product of prime indices (A003963) is a square of a squarefree number (A062503).

The programs for A319878, there is no canonical definition to state claims against.
-/

/-! ## A319878.P17608481082860734635

`∩[2*n+1, A319877(n+1)]`
-/

namespace A319878.P17608481082860734635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319878.P17608481082860734635

/-! ## A319878.P11663090541517503004

`record[A000265(A319877(n+1))]`
-/

namespace A319878.P11663090541517503004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A319877 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319878.P11663090541517503004

/-! ## A319878.P5538358508082953573

`filter[A319877(n+1), A000035(#)]`
-/

namespace A319878.P5538358508082953573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A319878.P5538358508082953573

/-! ## A319878.P18406167956904527188

`filter[A319877(n+1), A267256(#)]`
-/

namespace A319878.P18406167956904527188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267256 (f1 j).toNat = 1) n)

end

end A319878.P18406167956904527188

/-! ## A319878.P10800425348075512787

`∩[A319877(n+1), A326835(n+1)]`
-/

namespace A319878.P10800425348075512787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319878.P10800425348075512787

/-!
# A319879: a(n) = minimal number m of unit squares needed to make a figure formed from squares (joined edge to edge) which has n holes.

The programs for A319879, the canonical program `A319879.P677260879233120515` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319879 has offset 0).

The definition of A319879 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319879.P15625331924002183126

`2*ceil((sqrt(n)+1)²)-1+n`
-/

namespace A319879.P15625331924002183126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈(Real.sqrt (n : ℝ) + 1) ^ 2⌉ - 1 + (n : ℤ)

end

end A319879.P15625331924002183126

namespace A319879

/-- `2*ceil((sqrt(n)+1)²)-1+n` -/
def P15625331924002183126.Spec : Prop :=
  ∀ n, P15625331924002183126.a n = A319879 n

end A319879

/-! ## A319879.P11808713730253062747

`∑[A265411(n)+2%(n+1)]`
-/

namespace A319879.P11808713730253062747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265411 n + ((2 % (n + 1) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319879.P11808713730253062747

namespace A319879

/-- `∑[A265411(n)+2%(n+1)]` -/
def P11808713730253062747.Spec : Prop :=
  ∀ n, P11808713730253062747.a n = A319879 n

end A319879

/-! ## A319879.P18105224489296920628

`floor(2*n-cot(5)+A027709(n)+1+n)`
-/

namespace A319879.P18105224489296920628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℝ) - Real.cot (5 : ℝ) + (A027709 n + 1 + (n : ℤ) : ℝ)⌋

end

end A319879.P18105224489296920628

namespace A319879

/-- `floor(2*n-cot(5)+A027709(n)+1+n)` -/
def P18105224489296920628.Spec : Prop :=
  ∀ n, P18105224489296920628.a n = A319879 n

end A319879

/-! ## A319879.P4503169681502275727

`root(A027709(n)+A016777(n), 2)²`
-/

namespace A319879.P4503169681502275727
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A027709 n + A016777 n : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A319879.P4503169681502275727

namespace A319879

/-- `root(A027709(n)+A016777(n), 2)²` -/
def P4503169681502275727.Spec : Prop :=
  ∀ n, P4503169681502275727.a n = (A319879 n : ℝ)

end A319879

/-! ## A319879.P677260879233120515

`A000027(A027709(n)+3*n+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A319879

/-- `A000027(A027709(n)+3*n+1)` -/
def P677260879233120515.Spec : Prop :=
  ∀ n, P677260879233120515.a n = A319879 n

theorem P677260879233120515.correct : P677260879233120515.Spec := by
  intro n
  simp only [A319879]

end A319879

/-! ## A319879.P10178277251635450952

`A028310(A027709(n)+3*n+1)`
-/

namespace A319879.P10178277251635450952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A027709 n + (3 * n + 1 : ℤ)).toNat

end

end A319879.P10178277251635450952

namespace A319879

/-- `A028310(A027709(n)+3*n+1)` -/
def P10178277251635450952.Spec : Prop :=
  ∀ n, P10178277251635450952.a n = A319879 n

end A319879

/-! ## A319879.P1570053269164668524

`(A027709(n)+A016777(n))%A000032(n+4)`
-/

namespace A319879.P1570053269164668524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027709 n + A016777 n) (A000032 (n + 4))

end

end A319879.P1570053269164668524

namespace A319879

/-- `(A027709(n)+A016777(n))%A000032(n+4)` -/
def P1570053269164668524.Spec : Prop :=
  ∀ n, P1570053269164668524.a n = A319879 n

end A319879

/-! ## A319879.P10488971951304840764

`(A027709(n)+A016777(n))*A007318(∑[n+2])`
-/

namespace A319879.P10488971951304840764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A027709 n + A016777 n) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A319879.P10488971951304840764

namespace A319879

/-- `(A027709(n)+A016777(n))*A007318(∑[n+2])` -/
def P10488971951304840764.Spec : Prop :=
  ∀ n, P10488971951304840764.a n = A319879 n

end A319879

/-!
# A319880: Difference between 2^n and the product of primes less than or equal to n.

The programs for A319880, the canonical program `A319880.P15208408059183821800` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319880 has offset 0).

The definition of A319880 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A319880.P15208408059183821800

`A000079(n)-A034386(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A319880

/-- `A000079(n)-A034386(n)` -/
def P15208408059183821800.Spec : Prop :=
  ∀ n, P15208408059183821800.a n = A319880 n

theorem P15208408059183821800.correct : P15208408059183821800.Spec := by
  intro n
  simp only [A319880]

end A319880

/-! ## A319880.P16321630151105093865

`2^n-A034386(n)`
-/

namespace A319880.P16321630151105093865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A034386 n

end

end A319880.P16321630151105093865

namespace A319880

/-- `2^n-A034386(n)` -/
def P16321630151105093865.Spec : Prop :=
  ∀ n, P16321630151105093865.a n = A319880 n

theorem P16321630151105093865.correct : P16321630151105093865.Spec := by
  intro n
  simp only [A319880, Nat.add_sub_cancel, A319880.P16321630151105093865.a, A319880.P15208408059183821800.a, A000079, A000079.P10855139691139572931.a, A034386, A034386.P1755129826133478527.a, A003418, A003418.P6976248655893080794.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A319880

/-! ## A319880.P2786113620595486523

`2^n-A300951(2*n)`
-/

namespace A319880.P2786113620595486523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A300951 (2 * n)

end

end A319880.P2786113620595486523

namespace A319880

/-- `2^n-A300951(2*n)` -/
def P2786113620595486523.Spec : Prop :=
  ∀ n, P2786113620595486523.a n = A319880 n

end A319880

/-! ## A319880.P12666573049609674850

`A000051(n)-(A034386(n)+1)`
-/

namespace A319880.P12666573049609674850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A034386 n + 1)

end

end A319880.P12666573049609674850

namespace A319880

/-- `A000051(n)-(A034386(n)+1)` -/
def P12666573049609674850.Spec : Prop :=
  ∀ n, P12666573049609674850.a n = A319880 n

theorem P12666573049609674850.correct : P12666573049609674850.Spec := by
  intro n
  simp only [A319880, Nat.add_sub_cancel, A319880.P12666573049609674850.a, A319880.P15208408059183821800.a, A000051, A000051.P14067217022188782580.a, A000079, A000079.P10855139691139572931.a, A034386, A034386.P1755129826133478527.a, A003418, A003418.P6976248655893080794.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A319880

/-! ## A319880.P6194467898394933284

`A000079(n)-A066838(A151800(n))`
-/

namespace A319880.P6194467898394933284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A066838 (A151800 n).toNat

end

end A319880.P6194467898394933284

namespace A319880

/-- `A000079(n)-A066838(A151800(n))` -/
def P6194467898394933284.Spec : Prop :=
  ∀ n, P6194467898394933284.a n = A319880 n

end A319880

/-! ## A319880.P5737780111347172114

`∑[A011782(n)]-A002110(A230980(n))`
-/

namespace A319880.P5737780111347172114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002110 (A230980 n).toNat

end

end A319880.P5737780111347172114

namespace A319880

/-- `∑[A011782(n)]-A002110(A230980(n))` -/
def P5737780111347172114.Spec : Prop :=
  ∀ n, P5737780111347172114.a n = A319880 n

end A319880

/-! ## A319880.P9897810788903983371

`A000079(n)-A066838(A159477(n+1))`
-/

namespace A319880.P9897810788903983371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A066838 (A159477 (n + 1)).toNat

end

end A319880.P9897810788903983371

namespace A319880

/-- `A000079(n)-A066838(A159477(n+1))` -/
def P9897810788903983371.Spec : Prop :=
  ∀ n, P9897810788903983371.a n = A319880 n

end A319880

/-! ## A319880.P4837867867866288316

`A011782(n+1)-A002110(A230980(n))`
-/

namespace A319880.P4837867867866288316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) - A002110 (A230980 n).toNat

end

end A319880.P4837867867866288316

namespace A319880

/-- `A011782(n+1)-A002110(A230980(n))` -/
def P4837867867866288316.Spec : Prop :=
  ∀ n, P4837867867866288316.a n = A319880 n

end A319880

/-! ## A319880.P9342798980893195008

`A000079(n)-A163641(n)*A163644(n)`
-/

namespace A319880.P9342798980893195008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A163641 n * A163644 n

end

end A319880.P9342798980893195008

namespace A319880

/-- `A000079(n)-A163641(n)*A163644(n)` -/
def P9342798980893195008.Spec : Prop :=
  ∀ n, P9342798980893195008.a n = A319880 n

end A319880

/-! ## A319880.P8222650503341983721

`A034386(n+1)-(A068511(n+1)+A034386(n))`
-/

namespace A319880.P8222650503341983721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (n + 1) - (A068511 (n + 1) + A034386 n)

end

end A319880.P8222650503341983721

namespace A319880

/-- `A034386(n+1)-(A068511(n+1)+A034386(n))` -/
def P8222650503341983721.Spec : Prop :=
  ∀ n, P8222650503341983721.a n = A319880 n

end A319880

/-! ## A319880.P3743193077559393854

`A003418(n+1)-(A059794(n+1)+A034386(n))`
-/

namespace A319880.P3743193077559393854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (n + 1) - (A059794 (n + 1) + A034386 n)

end

end A319880.P3743193077559393854

namespace A319880

/-- `A003418(n+1)-(A059794(n+1)+A034386(n))` -/
def P3743193077559393854.Spec : Prop :=
  ∀ n, P3743193077559393854.a n = A319880 n

end A319880

/-! ## A319880.P7109335673114796957

`A059794(n+1)-(A067068(n+1)+A034386(n))`
-/

namespace A319880.P7109335673114796957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059794 (n + 1) - (A067068 (n + 1) + A034386 n)

end

end A319880.P7109335673114796957

namespace A319880

/-- `A059794(n+1)-(A067068(n+1)+A034386(n))` -/
def P7109335673114796957.Spec : Prop :=
  ∀ n, P7109335673114796957.a n = A319880 n

theorem P7109335673114796957.correct : P7109335673114796957.Spec := by
  intro n
  simp only [A319880, Nat.add_sub_cancel, A319880.P7109335673114796957.a, A319880.P15208408059183821800.a, A000079, A000079.P10855139691139572931.a, A034386, A034386.P1755129826133478527.a, A059794, A059794.P9663854077218559482.f2, A059794.P9663854077218559482.f1, A059794.P9663854077218559482.a, A067068, A067068.P1628427676556564340.f2, A067068.P1628427676556564340.f1, A067068.P1628427676556564340.a, A003418, A003418.P6976248655893080794.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A319880

/-! ## A319880.P13599824327134045019

`A319852(n)-A001047(n)`
-/

namespace A319880.P13599824327134045019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319852 n - A001047 n

end

end A319880.P13599824327134045019

namespace A319880

/-- `A319852(n)-A001047(n)` -/
def P13599824327134045019.Spec : Prop :=
  ∀ n, P13599824327134045019.a n = A319880 n

theorem P13599824327134045019.correct : P13599824327134045019.Spec := by
  intro n
  simp only [A319880, Nat.add_sub_cancel, A319880.P13599824327134045019.a, A319880.P15208408059183821800.a, A000079, A000079.P10855139691139572931.a, A001047, A001047.P13659031121335709313.a, A034386, A034386.P1755129826133478527.a, A319852, A319852.P2834976345500521243.a, A003418, A003418.P6976248655893080794.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A319880

/-! ## A319880.P2148094947320153021

`A319852(n)+A000079(n)-A000244(n)`
-/

namespace A319880.P2148094947320153021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319852 n + A000079 n - A000244 n

end

end A319880.P2148094947320153021

namespace A319880

/-- `A319852(n)+A000079(n)-A000244(n)` -/
def P2148094947320153021.Spec : Prop :=
  ∀ n, P2148094947320153021.a n = A319880 n

theorem P2148094947320153021.correct : P2148094947320153021.Spec := by
  intro n
  simp only [A319880, Nat.add_sub_cancel, A319880.P2148094947320153021.a, A319880.P15208408059183821800.a, A000079, A000079.P10855139691139572931.a, A000244, A000244.P17162167222172810417.a, A034386, A034386.P1755129826133478527.a, A319852, A319852.P2834976345500521243.a, A003418, A003418.P6976248655893080794.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A319880

/-! ## A319880.P18239007811706612131

`A319857(n)-A020522(n)`
-/

namespace A319880.P18239007811706612131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319857 n - A020522 n

end

end A319880.P18239007811706612131

namespace A319880

/-- `A319857(n)-A020522(n)` -/
def P18239007811706612131.Spec : Prop :=
  ∀ n, P18239007811706612131.a n = A319880 n

theorem P18239007811706612131.correct : P18239007811706612131.Spec := by
  intro n
  simp only [A319880, Nat.add_sub_cancel, A319880.P18239007811706612131.a, A319880.P15208408059183821800.a, A000079, A000079.P10855139691139572931.a, A020522, A020522.P10227953348410881457.a, A034386, A034386.P1755129826133478527.a, A319857, A319857.P3217448747804554425.a, A003418, A003418.P6976248655893080794.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A319880

/-! ## A319880.P9506863327199416487

`A319857(n)+A000079(n)-A000302(n)`
-/

namespace A319880.P9506863327199416487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319857 n + A000079 n - A000302 n

end

end A319880.P9506863327199416487

namespace A319880

/-- `A319857(n)+A000079(n)-A000302(n)` -/
def P9506863327199416487.Spec : Prop :=
  ∀ n, P9506863327199416487.a n = A319880 n

theorem P9506863327199416487.correct : P9506863327199416487.Spec := by
  intro n
  simp only [A319880, Nat.add_sub_cancel, A319880.P9506863327199416487.a, A319880.P15208408059183821800.a, A000079, A000079.P10855139691139572931.a, A000302, A000302.P5166485833484575275.a, A034386, A034386.P1755129826133478527.a, A319857, A319857.P3217448747804554425.a, A003418, A003418.P6976248655893080794.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A319880

/-! ## A319880.P200118488221249385

`A000079(n)-∏[A014963(A030664(n))]`
-/

namespace A319880.P200118488221249385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A030664 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A319880.P200118488221249385

namespace A319880

/-- `A000079(n)-∏[A014963(A030664(n))]` -/
def P200118488221249385.Spec : Prop :=
  ∀ n, P200118488221249385.a n = A319880 n

end A319880

/-! ## A319880.P18405852273623467182

`A000225(n)+1-A104588(abs((n+1)²-3))`
-/

namespace A319880.P18405852273623467182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + 1 - A104588 |((n + 1) ^ 2 : ℤ) - 3|.toNat

end

end A319880.P18405852273623467182

namespace A319880

/-- `A000225(n)+1-A104588(abs((n+1)²-3))` -/
def P18405852273623467182.Spec : Prop :=
  ∀ n, P18405852273623467182.a n = A319880 n

end A319880

/-!
# A319882: Number of ordered pairs (i, j) with 0 < i < j < prime(n)/2 such that (i^4 mod prime(n)) > (j^4 mod prime(n)).

The programs for A319882, there is no canonical definition to state claims against.
-/

/-! ## A319882.P2284832477292437334

`A236138(A060680(n+6)+A024023(n))`
-/

namespace A319882.P2284832477292437334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236138 (A060680 (n + 6) + A024023 n).toNat

end

end A319882.P2284832477292437334

/-!
# A319884: Number of unordered pairs of set partitions of {1,...,n} where every block of one is a proper subset or proper superset of some block of the other.

The programs for A319884, there is no canonical definition to state claims against.
-/

/-! ## A319884.P4032036186107837025

`A131166(A278990(n))`
-/

namespace A319884.P4032036186107837025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131166 (A278990 n).toNat

end

end A319884.P4032036186107837025

/-! ## A319884.P6916886439353711312

`A131166(A079267(∑[n]))`
-/

namespace A319884.P6916886439353711312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131166 (A079267 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A319884.P6916886439353711312

/-!
# A319885: a(n) = 2*1 - 4*3 + 6*5 - 8*7 + 10*9 - 12*11 + 14*13 - 16*15 + ... - (up to the n-th term).

The programs for A319885, the canonical program `A319885.P10933813899109617767` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319885 has offset 1).

The definition of A319885 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A319885.P10933813899109617767

`ogf((2+2x^2-8x^3)/(1-x+3x^2-3x^3+3x^4-3x^5+x^6-x^7))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A319885

/-- `ogf((2+2x^2-8x^3)/(1-x+3x^2-3x^3+3x^4-3x^5+x^6-x^7))` -/
def P10933813899109617767.Spec : Prop :=
  ∀ n, P10933813899109617767.a n = A319885 (n + 1)

theorem P10933813899109617767.correct : P10933813899109617767.Spec := by
  intro n
  simp only [A319885, Nat.add_sub_cancel]

end A319885

/-! ## A319885.P12897512140959124864

`A319373(n+1)+A056594(n)`
-/

namespace A319885.P12897512140959124864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319373 (n + 1) + A056594 n

end

end A319885.P12897512140959124864

namespace A319885

/-- `A319373(n+1)+A056594(n)` -/
def P12897512140959124864.Spec : Prop :=
  ∀ n, P12897512140959124864.a n = A319885 (n + 1)

end A319885

/-! ## A319885.P4709064497915826077

`A319373(n+1)+∑[A087960(n)]`
-/

namespace A319885.P4709064497915826077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319373 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319885.P4709064497915826077

namespace A319885

/-- `A319373(n+1)+∑[A087960(n)]` -/
def P4709064497915826077.Spec : Prop :=
  ∀ n, P4709064497915826077.a n = A319885 (n + 1)

end A319885

/-! ## A319885.P14122840663710177527

`A319373(n+1)-A163805(A141310(n))`
-/

namespace A319885.P14122840663710177527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319373 (n + 1) - A163805 (A141310 n).toNat

end

end A319885.P14122840663710177527

namespace A319885

/-- `A319373(n+1)-A163805(A141310(n))` -/
def P14122840663710177527.Spec : Prop :=
  ∀ n, P14122840663710177527.a n = A319885 (n + 1)

end A319885

/-! ## A319885.P12395942931005847523

`A319373(n+1)-A163805(n+1)`
-/

namespace A319885.P12395942931005847523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319373 (n + 1) - A163805 (n + 1)

end

end A319885.P12395942931005847523

namespace A319885

/-- `A319373(n+1)-A163805(n+1)` -/
def P12395942931005847523.Spec : Prop :=
  ∀ n, P12395942931005847523.a n = A319885 (n + 1)

end A319885

/-! ## A319885.P14185256792012920836

`∑[A004525(2*n+1)*A009001(n)]-A163805(n+1)`
-/

namespace A319885.P14185256792012920836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * n + 1) * A009001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A163805 (n + 1)

end

end A319885.P14185256792012920836

namespace A319885

/-- `∑[A004525(2*n+1)*A009001(n)]-A163805(n+1)` -/
def P14185256792012920836.Spec : Prop :=
  ∀ n, P14185256792012920836.a n = A319885 (n + 1)

end A319885

/-! ## A319885.P10517601374756657677

`A319373(n+1)+A039991(A000096(n))`
-/

namespace A319885.P10517601374756657677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319373 (n + 1) + A039991 (A000096 n).toNat

end

end A319885.P10517601374756657677

namespace A319885

/-- `A319373(n+1)+A039991(A000096(n))` -/
def P10517601374756657677.Spec : Prop :=
  ∀ n, P10517601374756657677.a n = A319885 (n + 1)

end A319885

/-!
# A319886: a(n) = 3*2*1 - 6*5*4 + 9*8*7 - 12*11*10 + 15*14*13 - 18*17*16 + ... - (up to the n-th term).

The programs for A319886, the canonical program `A319886.P8229277307577472930` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319886 has offset 1).

The definition of A319886 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A319886.P8229277307577472930

`ogf((3+3x+6x^3-12x^4-90x^5+3x^6-15x^7+72x^8)/(1-x+4x^3-4x^4+6x^6-6x^7+4x^9-4x^10+x^12-x^13))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A319886

/-- `ogf((3+3x+6x^3-12x^4-90x^5+3x^6-15x^7+72x^8)/(1-x+4x^3-4x^4+6x^6-6x^7+4x^9-4x^10+x^12-x^13))` -/
def P8229277307577472930.Spec : Prop :=
  ∀ n, P8229277307577472930.a n = A319886 (n + 1)

theorem P8229277307577472930.correct : P8229277307577472930.Spec := by
  intro n
  simp only [A319886, Nat.add_sub_cancel]

end A319886

/-! ## A319886.P3881901149648657760

`∑[5-A337498(A229046(n))]`
-/

namespace A319886.P3881901149648657760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A337498 (A229046 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319886.P3881901149648657760

namespace A319886

/-- `∑[5-A337498(A229046(n))]` -/
def P3881901149648657760.Spec : Prop :=
  ∀ n, P3881901149648657760.a n = A319886 (n + 1)

end A319886

/-!
# A319888: a(n) = 5*4*3*2*1 - 10*9*8*7*6 + 15*14*13*12*11 - 20*19*18*17*16 + ... - (up to the n-th term).

The programs for A319888, there is no canonical definition to state claims against.
-/

/-! ## A319888.P5256323666395919508

`A235027(lcm(A046988(n), A319869(n+1)))`
-/

namespace A319888.P5256323666395919508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 (Int.lcm (A046988 n) (A319869 (n + 1)))

end

end A319888.P5256323666395919508

/-! ## A319888.P8507128981880467355

`A319869(n+1)-A066283(A000081(n+1))`
-/

namespace A319888.P8507128981880467355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319869 (n + 1) - A066283 (A000081 (n + 1)).toNat

end

end A319888.P8507128981880467355

/-!
# A319889: a(n) = 6*5*4*3*2*1 - 12*11*10*9*8*7 + 18*17*16*15*14*13 - 24*23*22*21*20*19 + ... - (up to the n-th term).

The programs for A319889, there is no canonical definition to state claims against.
-/

/-! ## A319889.P15410044546840758081

`A319870(n+1)-A339060(A099099(n))`
-/

namespace A319889.P15410044546840758081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319870 (n + 1) - A339060 (A099099 n).toNat

end

end A319889.P15410044546840758081

/-! ## A319889.P9711202125819943371

`A319870(n+1)-A232357(A232376(n+1))`
-/

namespace A319889.P9711202125819943371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319870 (n + 1) - A232357 (A232376 (n + 1)).toNat

end

end A319889.P9711202125819943371

/-!
# A319895: a(n) is the number of partitions of n into consecutive parts, plus the total number of parts in those partitions.

The programs for A319895, there is no canonical definition to state claims against.
-/

/-! ## A319895.P8100044852259889592

`A001227(n+1)+A204217(n+1)`
-/

namespace A319895.P8100044852259889592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) + A204217 (n + 1)

end

end A319895.P8100044852259889592

/-! ## A319895.P11136233447366109214

`A001227(n+1)+A338616(n+1)/2`
-/

namespace A319895.P11136233447366109214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001227 (n + 1) : ℚ) + (A338616 (n + 1) : ℚ) / 2

end

end A319895.P11136233447366109214

/-! ## A319895.P5858989776586481433

`(A338616(n+1)+A054844(n+1))/2`
-/

namespace A319895.P5858989776586481433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338616 (n + 1) + A054844 (n + 1) : ℚ) / 2

end

end A319895.P5858989776586481433

/-! ## A319895.P9388180887988109036

`A204217(n+1)+n+1-A347286(n+1)`
-/

namespace A319895.P9388180887988109036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204217 (n + 1) + ((n + 1 : ℤ) - A347286 (n + 1))

end

end A319895.P9388180887988109036

/-! ## A319895.P13190131247896676642

`A204217(n+1)+A245579(n+1)/(n+1)`
-/

namespace A319895.P13190131247896676642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204217 (n + 1) : ℚ) + (A245579 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A319895.P13190131247896676642

/-! ## A319895.P6081113733947762884

`A082647(n+1)+A204217(n+1)+A131576(n+1)`
-/

namespace A319895.P6081113733947762884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082647 (n + 1) + (A204217 (n + 1) + A131576 (n + 1))

end

end A319895.P6081113733947762884

/-! ## A319895.P14369570817229722339

`A060831(n+1)+A204217(n+1)-A060831(n)`
-/

namespace A319895.P14369570817229722339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 (n + 1) + (A204217 (n + 1) - A060831 n)

end

end A319895.P14369570817229722339

/-! ## A319895.P14555484294319709306

`A000203(n+1)+A001227(n+1)-A284475(n+1)`
-/

namespace A319895.P14555484294319709306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A001227 (n + 1) - A284475 (n + 1))

end

end A319895.P14555484294319709306

/-!
# A319896: Number of connected non-regular multigraphs with n nodes of degree up to n.

The programs for A319896, there is no canonical definition to state claims against.
-/

/-! ## A319896.P13162754354934704136

`A289988(n)-A319897(n)`
-/

namespace A319896.P13162754354934704136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289988 n - A319897 n

end

end A319896.P13162754354934704136

/-! ## A319896.P8523396798258986042

`xor(1, A157528(A006129(n)))`
-/

namespace A319896.P8523396798258986042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A157528 (A006129 n).toNat)

end

end A319896.P8523396798258986042

/-!
# A319897: Number of connected regular loopless multigraphs on n unlabeled nodes with degree up to n.

The programs for A319897, there is no canonical definition to state claims against.
-/

/-! ## A319897.P5816230236751051484

`A328682(A106232(n+1))+A325476(n)`
-/

namespace A319897.P5816230236751051484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (A106232 (n + 1)).toNat + A325476 n

end

end A319897.P5816230236751051484

/-! ## A319897.P627067417521335769

`A028310(A289988(n)-A319896(n))`
-/

namespace A319897.P627067417521335769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A289988 n - A319896 n).toNat

end

end A319897.P627067417521335769

/-! ## A319897.P3638515424374917328

`A028310(A334546(∑[4*n])-A319896(n))`
-/

namespace A319897.P3638515424374917328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A334546 (∑ j ∈ Finset.range (n + 1), f1 j) - A319896 n).toNat

end

end A319897.P3638515424374917328

/-!
# A319898: Number of digits of 2^^n.

The programs for A319898, there is no canonical definition to state claims against.
-/

/-! ## A319898.P6308695927374253860

`A057755(∑{e}[2^a(n-1), #])` with `a(0)=0, a(1)=0`
-/

namespace A319898.P6308695927374253860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  2 ^ f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057755 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A319898.P6308695927374253860

/-! ## A319898.P14402327431992903798

`A057755(A000924(n!))`
-/

namespace A319898.P14402327431992903798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057755 (A000924 (Nat.factorial n)).toNat

end

end A319898.P14402327431992903798

/-! ## A319898.P14618645781344007800

`A057755(A110005(n+1))`
-/

namespace A319898.P14618645781344007800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057755 (A110005 (n + 1)).toNat

end

end A319898.P14618645781344007800

/-!
# A319899: Numbers whose number of prime factors with multiplicity (A001222) is the number of distinct prime factors (A001221) in the product of the prime indices (A003963).

The programs for A319899, there is no canonical definition to state claims against.
-/

/-! ## A319899.P13328043292087136451

`eq[A001222(n+1), A303975(n+1)]+1`
-/

namespace A319899.P13328043292087136451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303975 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A319899.P13328043292087136451

/-! ## A319899.P12468464785334855854

`eq[A008481(n+1), A303975(n+1)]+1`
-/

namespace A319899.P12468464785334855854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303975 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A319899.P12468464785334855854

/-! ## A319899.P15392414504093206971

`eq[A001222(n+1), A001221(A003963(n+1))]+1`
-/

namespace A319899.P15392414504093206971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A003963 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A319899.P15392414504093206971

/-! ## A319899.P16601447272591839947

`eq[A001222(n+1), A001221(A156061(n+1))]+1`
-/

namespace A319899.P16601447272591839947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A156061 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A319899.P16601447272591839947

/-! ## A319899.P12397171189174742375

`eq[A001222(n+1), A001221(A290103(n+1))]+1`
-/

namespace A319899.P12397171189174742375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A290103 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A319899.P12397171189174742375

