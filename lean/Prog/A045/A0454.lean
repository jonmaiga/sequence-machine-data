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
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A045400: Primes congruent to {0, 1, 3, 5} mod 7.

The programs for A045400, the canonical program `A045400.P3956476260167725671` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045400 has offset 1).

The definition of A045400 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7966 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045400.P15754344190364657251

`∪[A023316(n+1), A045415(n+1)]`
-/

namespace A045400.P15754344190364657251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045400.P15754344190364657251

namespace A045400

/-- `∪[A023316(n+1), A045415(n+1)]` -/
def P15754344190364657251.Spec : Prop :=
  ∀ n, (P15754344190364657251.a n : ℤ) = A045400 (n + 1)

end A045400

/-! ## A045400.P6806815167156334984

`∪[A023344(n+1), A045415(n+1)]`
-/

namespace A045400.P6806815167156334984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045400.P6806815167156334984

namespace A045400

/-- `∪[A023344(n+1), A045415(n+1)]` -/
def P6806815167156334984.Spec : Prop :=
  ∀ n, (P6806815167156334984.a n : ℤ) = A045400 (n + 1)

end A045400

/-! ## A045400.P532976010503494517

`∪[A045401(n+1), A045415(n+1)]`
-/

namespace A045400.P532976010503494517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045400.P532976010503494517

namespace A045400

/-- `∪[A045401(n+1), A045415(n+1)]` -/
def P532976010503494517.Spec : Prop :=
  ∀ n, (P532976010503494517.a n : ℤ) = A045400 (n + 1)

end A045400

/-! ## A045400.P2322470291077890303

`∪[A045401(n+1), A045424(n+1)]`
-/

namespace A045400.P2322470291077890303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045400.P2322470291077890303

namespace A045400

/-- `∪[A045401(n+1), A045424(n+1)]` -/
def P2322470291077890303.Spec : Prop :=
  ∀ n, (P2322470291077890303.a n : ℤ) = A045400 (n + 1)

end A045400

/-! ## A045400.P5539648786493044748

`∪[A045436(n+1), A045401(n+1)]`
-/

namespace A045400.P5539648786493044748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045400.P5539648786493044748

namespace A045400

/-- `∪[A045436(n+1), A045401(n+1)]` -/
def P5539648786493044748.Spec : Prop :=
  ∀ n, (P5539648786493044748.a n : ℤ) = A045400 (n + 1)

end A045400

/-! ## A045400.P16280141253901365657

`∪[A045416(n+1), A045424(n+1)]`
-/

namespace A045400.P16280141253901365657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045400.P16280141253901365657

namespace A045400

/-- `∪[A045416(n+1), A045424(n+1)]` -/
def P16280141253901365657.Spec : Prop :=
  ∀ n, (P16280141253901365657.a n : ℤ) = A045400 (n + 1)

end A045400

/-! ## A045400.P10789222811418676225

`∪[A045425(n+1), A045415(n+1)]`
-/

namespace A045400.P10789222811418676225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045400.P10789222811418676225

namespace A045400

/-- `∪[A045425(n+1), A045415(n+1)]` -/
def P10789222811418676225.Spec : Prop :=
  ∀ n, (P10789222811418676225.a n : ℤ) = A045400 (n + 1)

end A045400

/-! ## A045400.P3276735142734479039

`∪[A045446(n+1), A045401(n+1)]`
-/

namespace A045400.P3276735142734479039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045400.P3276735142734479039

namespace A045400

/-- `∪[A045446(n+1), A045401(n+1)]` -/
def P3276735142734479039.Spec : Prop :=
  ∀ n, (P3276735142734479039.a n : ℤ) = A045400 (n + 1)

end A045400

/-! ## A045400.P15372235678982696646

`∪[A045447(n+1), A045415(n+1)]`
-/

namespace A045400.P15372235678982696646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045400.P15372235678982696646

namespace A045400

/-- `∪[A045447(n+1), A045415(n+1)]` -/
def P15372235678982696646.Spec : Prop :=
  ∀ n, (P15372235678982696646.a n : ℤ) = A045400 (n + 1)

end A045400

/-! ## A045400.P3071766163183642892

`∪[A045437(n+1), A045446(n+1)]`
-/

namespace A045400.P3071766163183642892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045400.P3071766163183642892

namespace A045400

/-- `∪[A045437(n+1), A045446(n+1)]` -/
def P3071766163183642892.Spec : Prop :=
  ∀ n, (P3071766163183642892.a n : ℤ) = A045400 (n + 1)

end A045400

/-! ## A045400.P16073619844112740759

`∪[A077721(n+1), A045415(n+1)]`
-/

namespace A045400.P16073619844112740759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045400.P16073619844112740759

namespace A045400

/-- `∪[A077721(n+1), A045415(n+1)]` -/
def P16073619844112740759.Spec : Prop :=
  ∀ n, (P16073619844112740759.a n : ℤ) = A045400 (n + 1)

end A045400

/-! ## A045400.P5442331213302075338

`∪[A182346(n+1), A045415(n+1)]`
-/

namespace A045400.P5442331213302075338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045400.P5442331213302075338

namespace A045400

/-- `∪[A182346(n+1), A045415(n+1)]` -/
def P5442331213302075338.Spec : Prop :=
  ∀ n, (P5442331213302075338.a n : ℤ) = A045400 (n + 1)

end A045400

/-! ## A045400.P3956476260167725671

`p?[floor(7*n/4)]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045400

/-- `p?[floor(7*n/4)]` -/
def P3956476260167725671.Spec : Prop :=
  ∀ n, P3956476260167725671.a n = A045400 (n + 1)

theorem P3956476260167725671.correct : P3956476260167725671.Spec := by
  intro n
  simp only [A045400, Nat.add_sub_cancel]

end A045400

/-! ## A045400.P14542764879088898047

`∩[A042994(n+1), A045396(n+1)]`
-/

namespace A045400.P14542764879088898047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045400.P14542764879088898047

namespace A045400

/-- `∩[A042994(n+1), A045396(n+1)]` -/
def P14542764879088898047.Spec : Prop :=
  ∀ n, (P14542764879088898047.a n : ℤ) = A045400 (n + 1)

end A045400

/-! ## A045400.P15657401614948560948

`∩[A042994(n+1), A045398(n+1)]`
-/

namespace A045400.P15657401614948560948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045400.P15657401614948560948

namespace A045400

/-- `∩[A042994(n+1), A045398(n+1)]` -/
def P15657401614948560948.Spec : Prop :=
  ∀ n, (P15657401614948560948.a n : ℤ) = A045400 (n + 1)

end A045400

/-! ## A045400.P3909126697923897920

`∩[A045396(n+1), A045398(n+1)]`
-/

namespace A045400.P3909126697923897920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045400.P3909126697923897920

namespace A045400

/-- `∩[A045396(n+1), A045398(n+1)]` -/
def P3909126697923897920.Spec : Prop :=
  ∀ n, (P3909126697923897920.a n : ℤ) = A045400 (n + 1)

end A045400

/-! ## A045400.P12032205165933049998

`∩[A045398(n+1), A042988(n)]`
-/

namespace A045400.P12032205165933049998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045400.P12032205165933049998

namespace A045400

/-- `∩[A045398(n+1), A042988(n)]` -/
def P12032205165933049998.Spec : Prop :=
  ∀ n, (P12032205165933049998.a n : ℤ) = A045400 (n + 1)

end A045400

/-! ## A045400.P17626092990166033282

`∩[A045396(n+1), A042990(n)]`
-/

namespace A045400.P17626092990166033282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045400.P17626092990166033282

namespace A045400

/-- `∩[A045396(n+1), A042990(n)]` -/
def P17626092990166033282.Spec : Prop :=
  ∀ n, (P17626092990166033282.a n : ℤ) = A045400 (n + 1)

end A045400

/-! ## A045400.P147272936443153694

`∩[A042994(n+1), A045393(n+1)]`
-/

namespace A045400.P147272936443153694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045400.P147272936443153694

namespace A045400

/-- `∩[A042994(n+1), A045393(n+1)]` -/
def P147272936443153694.Spec : Prop :=
  ∀ n, (P147272936443153694.a n : ℤ) = A045400 (n + 1)

end A045400

/-! ## A045400.P11315254968821105027

`or(1, p?[2*n-A002265(n)+1])`
-/

namespace A045400.P11315254968821105027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A002265 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A045400.P11315254968821105027

namespace A045400

/-- `or(1, p?[2*n-A002265(n)+1])` -/
def P11315254968821105027.Spec : Prop :=
  ∀ n, P11315254968821105027.a n = A045400 (n + 1)

end A045400

/-!
# A045401: Primes congruent to {0, 3, 5} mod 7.

The programs for A045401, the canonical program `A045401.P14312674116841472093` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045401 has offset 1).

The definition of A045401 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6915 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045401.P7330103727898214897

`∪[A045425(n+1), A045416(n+1)]`
-/

namespace A045401.P7330103727898214897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045401.P7330103727898214897

namespace A045401

/-- `∪[A045425(n+1), A045416(n+1)]` -/
def P7330103727898214897.Spec : Prop :=
  ∀ n, (P7330103727898214897.a n : ℤ) = A045401 (n + 1)

end A045401

/-! ## A045401.P8306588520506918190

`∪[A045447(n+1), A045416(n+1)]`
-/

namespace A045401.P8306588520506918190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045401.P8306588520506918190

namespace A045401

/-- `∪[A045447(n+1), A045416(n+1)]` -/
def P8306588520506918190.Spec : Prop :=
  ∀ n, (P8306588520506918190.a n : ℤ) = A045401 (n + 1)

end A045401

/-! ## A045401.P1414003545054831952

`∪[A045458(n+1), A045425(n+1)]`
-/

namespace A045401.P1414003545054831952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045401.P1414003545054831952

namespace A045401

/-- `∪[A045458(n+1), A045425(n+1)]` -/
def P1414003545054831952.Spec : Prop :=
  ∀ n, (P1414003545054831952.a n : ℤ) = A045401 (n + 1)

end A045401

/-! ## A045401.P3665615292966677104

`∪[A045437(n+1), A045447(n+1)]`
-/

namespace A045401.P3665615292966677104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045401.P3665615292966677104

namespace A045401

/-- `∪[A045437(n+1), A045447(n+1)]` -/
def P3665615292966677104.Spec : Prop :=
  ∀ n, (P3665615292966677104.a n : ℤ) = A045401 (n + 1)

end A045401

/-! ## A045401.P14312674116841472093

`p?[ceil(7*n/3)]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045401

/-- `p?[ceil(7*n/3)]` -/
def P14312674116841472093.Spec : Prop :=
  ∀ n, P14312674116841472093.a n = A045401 (n + 1)

theorem P14312674116841472093.correct : P14312674116841472093.Spec := by
  intro n
  simp only [A045401, Nat.add_sub_cancel]

end A045401

/-! ## A045401.P9321444574213750340

`∩[A045399(n+1), A045400(n+1)]`
-/

namespace A045401.P9321444574213750340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045401.P9321444574213750340

namespace A045401

/-- `∩[A045399(n+1), A045400(n+1)]` -/
def P9321444574213750340.Spec : Prop :=
  ∀ n, (P9321444574213750340.a n : ℤ) = A045401 (n + 1)

end A045401

/-! ## A045401.P7276097288632150539

`∩[A042995(n+1), A045397(n+1)]`
-/

namespace A045401.P7276097288632150539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045401.P7276097288632150539

namespace A045401

/-- `∩[A042995(n+1), A045397(n+1)]` -/
def P7276097288632150539.Spec : Prop :=
  ∀ n, (P7276097288632150539.a n : ℤ) = A045401 (n + 1)

end A045401

/-! ## A045401.P12287456601444533446

`∩[A042995(n+1), A045396(n+1)]`
-/

namespace A045401.P12287456601444533446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045401.P12287456601444533446

namespace A045401

/-- `∩[A042995(n+1), A045396(n+1)]` -/
def P12287456601444533446.Spec : Prop :=
  ∀ n, (P12287456601444533446.a n : ℤ) = A045401 (n + 1)

end A045401

/-! ## A045401.P17308583323608334460

`∩[A042989(n+1), A045399(n+1)]`
-/

namespace A045401.P17308583323608334460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045401.P17308583323608334460

namespace A045401

/-- `∩[A042989(n+1), A045399(n+1)]` -/
def P17308583323608334460.Spec : Prop :=
  ∀ n, (P17308583323608334460.a n : ℤ) = A045401 (n + 1)

end A045401

/-! ## A045401.P7294023232901495958

`∩[A042989(n+1), A045400(n+1)]`
-/

namespace A045401.P7294023232901495958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045401.P7294023232901495958

namespace A045401

/-- `∩[A042989(n+1), A045400(n+1)]` -/
def P7294023232901495958.Spec : Prop :=
  ∀ n, (P7294023232901495958.a n : ℤ) = A045401 (n + 1)

end A045401

/-! ## A045401.P13045068235018447516

`∩[A042994(n+1), A045397(n+1)]`
-/

namespace A045401.P13045068235018447516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045401.P13045068235018447516

namespace A045401

/-- `∩[A042994(n+1), A045397(n+1)]` -/
def P13045068235018447516.Spec : Prop :=
  ∀ n, (P13045068235018447516.a n : ℤ) = A045401 (n + 1)

end A045401

/-! ## A045401.P1440563875427989356

`∩[A042994(n+1), A045399(n+1)]`
-/

namespace A045401.P1440563875427989356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045401.P1440563875427989356

namespace A045401

/-- `∩[A042994(n+1), A045399(n+1)]` -/
def P1440563875427989356.Spec : Prop :=
  ∀ n, (P1440563875427989356.a n : ℤ) = A045401 (n + 1)

end A045401

/-! ## A045401.P14664171938707961272

`∩[A042994(n+1), A045394(n+1)]`
-/

namespace A045401.P14664171938707961272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045401.P14664171938707961272

namespace A045401

/-- `∩[A042994(n+1), A045394(n+1)]` -/
def P14664171938707961272.Spec : Prop :=
  ∀ n, (P14664171938707961272.a n : ℤ) = A045401 (n + 1)

end A045401

/-! ## A045401.P3005316542533389821

`∩[A042995(n+1), A045394(n+1)]`
-/

namespace A045401.P3005316542533389821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045401.P3005316542533389821

namespace A045401

/-- `∩[A042995(n+1), A045394(n+1)]` -/
def P3005316542533389821.Spec : Prop :=
  ∀ n, (P3005316542533389821.a n : ℤ) = A045401 (n + 1)

end A045401

/-! ## A045401.P6442661348195340702

`∩[A045394(n+1), A045400(n+1)]`
-/

namespace A045401.P6442661348195340702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045401.P6442661348195340702

namespace A045401

/-- `∩[A045394(n+1), A045400(n+1)]` -/
def P6442661348195340702.Spec : Prop :=
  ∀ n, (P6442661348195340702.a n : ℤ) = A045401 (n + 1)

end A045401

/-! ## A045401.P2415433184541273008

`∩[A042989(n+1), A045398(n+1)]`
-/

namespace A045401.P2415433184541273008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045401.P2415433184541273008

namespace A045401

/-- `∩[A042989(n+1), A045398(n+1)]` -/
def P2415433184541273008.Spec : Prop :=
  ∀ n, (P2415433184541273008.a n : ℤ) = A045401 (n + 1)

end A045401

/-! ## A045401.P4540352106075457723

`∩[A042995(n+1), A045398(n+1)]`
-/

namespace A045401.P4540352106075457723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045401.P4540352106075457723

namespace A045401

/-- `∩[A042995(n+1), A045398(n+1)]` -/
def P4540352106075457723.Spec : Prop :=
  ∀ n, (P4540352106075457723.a n : ℤ) = A045401 (n + 1)

end A045401

/-! ## A045401.P15540455193091549472

`∩[A045397(n+1), A045398(n+1)]`
-/

namespace A045401.P15540455193091549472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045401.P15540455193091549472

namespace A045401

/-- `∩[A045397(n+1), A045398(n+1)]` -/
def P15540455193091549472.Spec : Prop :=
  ∀ n, (P15540455193091549472.a n : ℤ) = A045401 (n + 1)

end A045401

/-! ## A045401.P11669254200104536674

`∩[A042992(n+1), A045396(n+1)]`
-/

namespace A045401.P11669254200104536674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045401.P11669254200104536674

namespace A045401

/-- `∩[A042992(n+1), A045396(n+1)]` -/
def P11669254200104536674.Spec : Prop :=
  ∀ n, (P11669254200104536674.a n : ℤ) = A045401 (n + 1)

end A045401

/-! ## A045401.P18397688475837747372

`∩[A042992(n+1), A045397(n+1)]`
-/

namespace A045401.P18397688475837747372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045401.P18397688475837747372

namespace A045401

/-- `∩[A042992(n+1), A045397(n+1)]` -/
def P18397688475837747372.Spec : Prop :=
  ∀ n, (P18397688475837747372.a n : ℤ) = A045401 (n + 1)

end A045401

/-!
# A045402: Primes congruent to {1, 3, 4, 5, 6} mod 7.

The programs for A045402, the canonical program `A045402.P6716759835119442044` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045402 has offset 1).

The definition of A045402 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A045402.anchor (n : ℕ) (hn : 1 ≤ n) : A045402 n = (Nat.nth (fun p => p.Prime ∧ p % 7 ∈ ({1, 3, 4, 5, 6} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A045.A045402`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A045402.P6716759835119442044

`p?[a(n-5)+7]` with `a(0)=1, a(1)=3, a(2)=4, a(3)=5, a(4)=6`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045402

/-- `p?[a(n-5)+7]` -/
def P6716759835119442044.Spec : Prop :=
  ∀ n, (P6716759835119442044.a n : ℤ) = A045402 (n + 1)

theorem P6716759835119442044.correct : P6716759835119442044.Spec := by
  intro n
  simp only [A045402, Nat.add_sub_cancel]

end A045402

/-! ## A045402.P15016768619455830813

`∪[A003625(n+1), A045408(n+1)]`
-/

namespace A045402.P15016768619455830813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045402.P15016768619455830813

namespace A045402

/-- `∪[A003625(n+1), A045408(n+1)]` -/
def P15016768619455830813.Spec : Prop :=
  ∀ n, (P15016768619455830813.a n : ℤ) = A045402 (n + 1)

end A045402

/-! ## A045402.P6576841161548421304

`∪[A003625(n+1), A045426(n+1)]`
-/

namespace A045402.P6576841161548421304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045402.P6576841161548421304

namespace A045402

/-- `∪[A003625(n+1), A045426(n+1)]` -/
def P6576841161548421304.Spec : Prop :=
  ∀ n, (P6576841161548421304.a n : ℤ) = A045402 (n + 1)

end A045402

/-! ## A045402.P17540249379930534409

`∪[A003625(n+1), A045431(n+1)]`
-/

namespace A045402.P17540249379930534409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045402.P17540249379930534409

namespace A045402

/-- `∪[A003625(n+1), A045431(n+1)]` -/
def P17540249379930534409.Spec : Prop :=
  ∀ n, (P17540249379930534409.a n : ℤ) = A045402 (n + 1)

end A045402

/-! ## A045402.P874364513574079038

`∪[A003625(n+1), A045448(n+1)]`
-/

namespace A045402.P874364513574079038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045402.P874364513574079038

namespace A045402

/-- `∪[A003625(n+1), A045448(n+1)]` -/
def P874364513574079038.Spec : Prop :=
  ∀ n, (P874364513574079038.a n : ℤ) = A045402 (n + 1)

end A045402

/-! ## A045402.P16663594713077045039

`∪[A003625(n+1), A045451(n+1)]`
-/

namespace A045402.P16663594713077045039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045402.P16663594713077045039

namespace A045402

/-- `∪[A003625(n+1), A045451(n+1)]` -/
def P16663594713077045039.Spec : Prop :=
  ∀ n, (P16663594713077045039.a n : ℤ) = A045402 (n + 1)

end A045402

/-! ## A045402.P4894608385128366422

`∪[A003625(n+1), A045469(n+1)]`
-/

namespace A045402.P4894608385128366422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045402.P4894608385128366422

namespace A045402

/-- `∪[A003625(n+1), A045469(n+1)]` -/
def P4894608385128366422.Spec : Prop :=
  ∀ n, (P4894608385128366422.a n : ℤ) = A045402 (n + 1)

end A045402

/-! ## A045402.P13141455769180375743

`∪[A045404(n+1), A045408(n+1)]`
-/

namespace A045402.P13141455769180375743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045402.P13141455769180375743

namespace A045402

/-- `∪[A045404(n+1), A045408(n+1)]` -/
def P13141455769180375743.Spec : Prop :=
  ∀ n, (P13141455769180375743.a n : ℤ) = A045402 (n + 1)

end A045402

/-! ## A045402.P2768855276543314816

`∪[A045409(n+1), A045426(n+1)]`
-/

namespace A045402.P2768855276543314816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045402.P2768855276543314816

namespace A045402

/-- `∪[A045409(n+1), A045426(n+1)]` -/
def P2768855276543314816.Spec : Prop :=
  ∀ n, (P2768855276543314816.a n : ℤ) = A045402 (n + 1)

end A045402

/-! ## A045402.P6588531958718527559

`A045393(A326178(n+1))`
-/

namespace A045402.P6588531958718527559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045393 (A326178 (n + 1)).toNat

end

end A045402.P6588531958718527559

namespace A045402

/-- `A045393(A326178(n+1))` -/
def P6588531958718527559.Spec : Prop :=
  ∀ n, P6588531958718527559.a n = A045402 (n + 1)

end A045402

/-! ## A045402.P6062176256403742698

`p?[2*A047326(n+1)+1]`
-/

namespace A045402.P6062176256403742698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047326 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045402.P6062176256403742698

namespace A045402

/-- `p?[2*A047326(n+1)+1]` -/
def P6062176256403742698.Spec : Prop :=
  ∀ n, P6062176256403742698.a n = A045402 (n + 1)

end A045402

/-! ## A045402.P11234062431375904237

`p?[2*A047287(n+1)-1]`
-/

namespace A045402.P11234062431375904237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047287 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045402.P11234062431375904237

namespace A045402

/-- `p?[2*A047287(n+1)-1]` -/
def P11234062431375904237.Spec : Prop :=
  ∀ n, P11234062431375904237.a n = A045402 (n + 1)

end A045402

/-! ## A045402.P13703172366329530129

`p?[Δ[comp[7*n-3]²]]`
-/

namespace A045402.P13703172366329530129
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n : ℤ) - 3

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045402.P13703172366329530129

namespace A045402

/-- `p?[Δ[comp[7*n-3]²]]` -/
def P13703172366329530129.Spec : Prop :=
  ∀ n, P13703172366329530129.a n = A045402 (n + 1)

end A045402

/-! ## A045402.P14145458462852883911

`∩[A045393(n+1), A162699(n+1)]`
-/

namespace A045402.P14145458462852883911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045402.P14145458462852883911

namespace A045402

/-- `∩[A045393(n+1), A162699(n+1)]` -/
def P14145458462852883911.Spec : Prop :=
  ∀ n, (P14145458462852883911.a n : ℤ) = A045402 (n + 1)

end A045402

/-! ## A045402.P6661852188644526294

`∩[A045393(n+1), A356451(n+1)]`
-/

namespace A045402.P6661852188644526294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045402.P6661852188644526294

namespace A045402

/-- `∩[A045393(n+1), A356451(n+1)]` -/
def P6661852188644526294.Spec : Prop :=
  ∀ n, (P6661852188644526294.a n : ℤ) = A045402 (n + 1)

end A045402

/-! ## A045402.P6956421503576421235

`record[A006530(A047309(n+2))]`
-/

namespace A045402.P6956421503576421235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A047309 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045402.P6956421503576421235

namespace A045402

/-- `record[A006530(A047309(n+2))]` -/
def P6956421503576421235.Spec : Prop :=
  ∀ n, P6956421503576421235.a n = A045402 (n + 1)

end A045402

/-! ## A045402.P15659519672354293292

`filter[A047309(n+1), A010051(#)]`
-/

namespace A045402.P15659519672354293292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A045402.P15659519672354293292

namespace A045402

/-- `filter[A047309(n+1), A010051(#)]` -/
def P15659519672354293292.Spec : Prop :=
  ∀ n, P15659519672354293292.a n = A045402 (n + 1)

end A045402

/-! ## A045402.P10755894591652004393

`record[A006530(A047302(n+1)+2)]`
-/

namespace A045402.P10755894591652004393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A047302 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045402.P10755894591652004393

namespace A045402

/-- `record[A006530(A047302(n+1)+2)]` -/
def P10755894591652004393.Spec : Prop :=
  ∀ n, P10755894591652004393.a n = A045402 (n + 1)

end A045402

/-! ## A045402.P10104524485043920097

`record[A006530(A047363(n+2)+1)]`
-/

namespace A045402.P10104524485043920097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A047363 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045402.P10104524485043920097

namespace A045402

/-- `record[A006530(A047363(n+2)+1)]` -/
def P10104524485043920097.Spec : Prop :=
  ∀ n, P10104524485043920097.a n = A045402 (n + 1)

end A045402

/-! ## A045402.P9382327764836781579

`record[A020639(A047302(n+1)+2)]`
-/

namespace A045402.P9382327764836781579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A047302 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045402.P9382327764836781579

namespace A045402

/-- `record[A020639(A047302(n+1)+2)]` -/
def P9382327764836781579.Spec : Prop :=
  ∀ n, P9382327764836781579.a n = A045402 (n + 1)

end A045402

/-!
# A045403: Primes congruent to {1, 3, 5} mod 8.

The programs for A045403, the canonical program `A045403.P5897622395383599295` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045403 has offset 1).

The definition of A045403 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045403.P5897622395383599295

`p?[floor((8*n+1)/5)]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045403

/-- `p?[floor((8*n+1)/5)]` -/
def P5897622395383599295.Spec : Prop :=
  ∀ n, P5897622395383599295.a n = A045403 (n + 1)

theorem P5897622395383599295.correct : P5897622395383599295.Spec := by
  intro n
  simp only [A045403, Nat.add_sub_cancel]

end A045403

/-! ## A045403.P2809146170613695329

`or(1, p?[(2*n+1)%(2*or(3, n))])`
-/

namespace A045403.P2809146170613695329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) % (2 * Nat.lor 3 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A045403.P2809146170613695329

namespace A045403

/-- `or(1, p?[(2*n+1)%(2*or(3, n))])` -/
def P2809146170613695329.Spec : Prop :=
  ∀ n, (P2809146170613695329.a n : ℤ) = A045403 (n + 1)

end A045403

/-! ## A045403.P1997555050616347389

`A042998(n+2)`
-/

namespace A045403.P1997555050616347389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042998 (n + 2)

end

end A045403.P1997555050616347389

namespace A045403

/-- `A042998(n+2)` -/
def P1997555050616347389.Spec : Prop :=
  ∀ n, P1997555050616347389.a n = A045403 (n + 1)

end A045403

/-! ## A045403.P6854270971895729049

`record[A006530(and(n+4, n-3)+2)]`
-/

namespace A045403.P6854270971895729049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.land (n + 4 : ℤ) ((n : ℤ) - 3) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045403.P6854270971895729049

namespace A045403

/-- `record[A006530(and(n+4, n-3)+2)]` -/
def P6854270971895729049.Spec : Prop :=
  ∀ n, P6854270971895729049.a n = A045403 (n + 1)

end A045403

/-! ## A045403.P4648212024999965254

`eq[A244415(n+1), A370482(n)]`
-/

namespace A045403.P4648212024999965254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370482 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045403.P4648212024999965254

namespace A045403

/-- `eq[A244415(n+1), A370482(n)]` -/
def P4648212024999965254.Spec : Prop :=
  ∀ n, (P4648212024999965254.a n : ℤ) = A045403 (n + 1)

end A045403

/-! ## A045403.P2242309974519497692

`filter[A047623(n+1), A010051(#)]`
-/

namespace A045403.P2242309974519497692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A045403.P2242309974519497692

namespace A045403

/-- `filter[A047623(n+1), A010051(#)]` -/
def P2242309974519497692.Spec : Prop :=
  ∀ n, P2242309974519497692.a n = A045403 (n + 1)

end A045403

/-! ## A045403.P10626553557792746147

`filter[A047623(n+1), A323153(#)]`
-/

namespace A045403.P10626553557792746147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A045403.P10626553557792746147

namespace A045403

/-- `filter[A047623(n+1), A323153(#)]` -/
def P10626553557792746147.Spec : Prop :=
  ∀ n, P10626553557792746147.a n = A045403 (n + 1)

end A045403

/-! ## A045403.P2373078421721025005

`filter[A047623(n+1), A353670(#)]`
-/

namespace A045403.P2373078421721025005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A045403.P2373078421721025005

namespace A045403

/-- `filter[A047623(n+1), A353670(#)]` -/
def P2373078421721025005.Spec : Prop :=
  ∀ n, P2373078421721025005.a n = A045403 (n + 1)

end A045403

/-! ## A045403.P17244485941068063072

`filter[A047623(n+1), A379969(#)]`
-/

namespace A045403.P17244485941068063072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A045403.P17244485941068063072

namespace A045403

/-- `filter[A047623(n+1), A379969(#)]` -/
def P17244485941068063072.Spec : Prop :=
  ∀ n, P17244485941068063072.a n = A045403 (n + 1)

end A045403

/-! ## A045403.P3621808252821776160

`filter[A047623(n+2), A323152(#)]`
-/

namespace A045403.P3621808252821776160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047623 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A045403.P3621808252821776160

namespace A045403

/-- `filter[A047623(n+2), A323152(#)]` -/
def P3621808252821776160.Spec : Prop :=
  ∀ n, P3621808252821776160.a n = A045403 (n + 1)

end A045403

/-! ## A045403.P16863344836946371368

`filter[A047623(n+2), A340371(#)]`
-/

namespace A045403.P16863344836946371368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047623 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A045403.P16863344836946371368

namespace A045403

/-- `filter[A047623(n+2), A340371(#)]` -/
def P16863344836946371368.Spec : Prop :=
  ∀ n, P16863344836946371368.a n = A045403 (n + 1)

end A045403

/-! ## A045403.P17990659305110658787

`filter[A047623(n+2), A365716(#)]`
-/

namespace A045403.P17990659305110658787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047623 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A045403.P17990659305110658787

namespace A045403

/-- `filter[A047623(n+2), A365716(#)]` -/
def P17990659305110658787.Spec : Prop :=
  ∀ n, P17990659305110658787.a n = A045403 (n + 1)

end A045403

/-! ## A045403.P6955694651996589095

`filter[A047623(n+2), A380467(#)]`
-/

namespace A045403.P6955694651996589095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047623 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A045403.P6955694651996589095

namespace A045403

/-- `filter[A047623(n+2), A380467(#)]` -/
def P6955694651996589095.Spec : Prop :=
  ∀ n, P6955694651996589095.a n = A045403 (n + 1)

end A045403

/-! ## A045403.P6155811475805187493

`∩[A000040(n+1), A047623(n+1)]`
-/

namespace A045403.P6155811475805187493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045403.P6155811475805187493

namespace A045403

/-- `∩[A000040(n+1), A047623(n+1)]` -/
def P6155811475805187493.Spec : Prop :=
  ∀ n, (P6155811475805187493.a n : ℤ) = A045403 (n + 1)

end A045403

/-! ## A045403.P11776742844940754147

`∩[A001751(n+1), A047623(n+1)]`
-/

namespace A045403.P11776742844940754147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045403.P11776742844940754147

namespace A045403

/-- `∩[A001751(n+1), A047623(n+1)]` -/
def P11776742844940754147.Spec : Prop :=
  ∀ n, (P11776742844940754147.a n : ℤ) = A045403 (n + 1)

end A045403

/-! ## A045403.P14468545488986336409

`∩[A093515(n+1), A047623(n+1)]`
-/

namespace A045403.P14468545488986336409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045403.P14468545488986336409

namespace A045403

/-- `∩[A093515(n+1), A047623(n+1)]` -/
def P14468545488986336409.Spec : Prop :=
  ∀ n, (P14468545488986336409.a n : ℤ) = A045403 (n + 1)

end A045403

/-! ## A045403.P16867230555149495014

`filter[A047445(n+1), A010051(#)]`
-/

namespace A045403.P16867230555149495014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047445 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A045403.P16867230555149495014

namespace A045403

/-- `filter[A047445(n+1), A010051(#)]` -/
def P16867230555149495014.Spec : Prop :=
  ∀ n, P16867230555149495014.a n = A045403 (n + 1)

end A045403

/-! ## A045403.P6555311788427634829

`filter[A047600(n+1), A010051(#)]`
-/

namespace A045403.P6555311788427634829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A045403.P6555311788427634829

namespace A045403

/-- `filter[A047600(n+1), A010051(#)]` -/
def P6555311788427634829.Spec : Prop :=
  ∀ n, P6555311788427634829.a n = A045403 (n + 1)

end A045403

/-! ## A045403.P7933158146772675484

`filter[A047606(n+3), A010051(#)]`
-/

namespace A045403.P7933158146772675484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047606 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A045403.P7933158146772675484

namespace A045403

/-- `filter[A047606(n+3), A010051(#)]` -/
def P7933158146772675484.Spec : Prop :=
  ∀ n, P7933158146772675484.a n = A045403 (n + 1)

end A045403

/-! ## A045403.P6272668502261047013

`∩[A000040(n+1), A047445(n+1)]`
-/

namespace A045403.P6272668502261047013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047445 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045403.P6272668502261047013

namespace A045403

/-- `∩[A000040(n+1), A047445(n+1)]` -/
def P6272668502261047013.Spec : Prop :=
  ∀ n, (P6272668502261047013.a n : ℤ) = A045403 (n + 1)

end A045403

/-!
# A045404: Primes congruent to {3, 4, 5, 6} mod 7.

The programs for A045404, the canonical program `A045404.P2338934040506893218` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045404 has offset 1).

The definition of A045404 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A045404.anchor (n : ℕ) (hn : 1 ≤ n) : A045404 n = (Nat.nth (fun p => p.Prime ∧ p % 7 ∈ ({3, 4, 5, 6} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A045.A045404`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A045404.P2338934040506893218

`p?[a(n-4)+7]` with `a(0)=3, a(1)=4, a(2)=5, a(3)=6`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045404

/-- `p?[a(n-4)+7]` -/
def P2338934040506893218.Spec : Prop :=
  ∀ n, (P2338934040506893218.a n : ℤ) = A045404 (n + 1)

theorem P2338934040506893218.correct : P2338934040506893218.Spec := by
  intro n
  simp only [A045404, Nat.add_sub_cancel]

end A045404

/-! ## A045404.P6832256714577871441

`p?[3*(floor(n/4)+1)+n]`
-/

namespace A045404.P6832256714577871441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (⌊(n : ℚ) / 4⌋ + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045404.P6832256714577871441

namespace A045404

/-- `p?[3*(floor(n/4)+1)+n]` -/
def P6832256714577871441.Spec : Prop :=
  ∀ n, P6832256714577871441.a n = A045404 (n + 1)

end A045404

/-! ## A045404.P10752140378845506118

`∪[A003625(n+1), A045409(n+1)]`
-/

namespace A045404.P10752140378845506118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045404.P10752140378845506118

namespace A045404

/-- `∪[A003625(n+1), A045409(n+1)]` -/
def P10752140378845506118.Spec : Prop :=
  ∀ n, (P10752140378845506118.a n : ℤ) = A045404 (n + 1)

end A045404

/-! ## A045404.P11516547128267543679

`∪[A045434(n+1), A045409(n+1)]`
-/

namespace A045404.P11516547128267543679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045434 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045404.P11516547128267543679

namespace A045404

/-- `∪[A045434(n+1), A045409(n+1)]` -/
def P11516547128267543679.Spec : Prop :=
  ∀ n, (P11516547128267543679.a n : ℤ) = A045404 (n + 1)

end A045404

/-! ## A045404.P14864087434972445825

`∪[A045455(n+1), A045409(n+1)]`
-/

namespace A045404.P14864087434972445825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045404.P14864087434972445825

namespace A045404

/-- `∪[A045455(n+1), A045409(n+1)]` -/
def P14864087434972445825.Spec : Prop :=
  ∀ n, (P14864087434972445825.a n : ℤ) = A045404 (n + 1)

end A045404

/-! ## A045404.P7014806267714032794

`A045394(A326178(n+1))`
-/

namespace A045404.P7014806267714032794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045394 (A326178 (n + 1)).toNat

end

end A045404.P7014806267714032794

namespace A045404

/-- `A045394(A326178(n+1))` -/
def P7014806267714032794.Spec : Prop :=
  ∀ n, P7014806267714032794.a n = A045404 (n + 1)

end A045404

/-! ## A045404.P15198718370484384467

`∩[A042997(n+1), A045394(n+1)]`
-/

namespace A045404.P15198718370484384467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045404.P15198718370484384467

namespace A045404

/-- `∩[A042997(n+1), A045394(n+1)]` -/
def P15198718370484384467.Spec : Prop :=
  ∀ n, (P15198718370484384467.a n : ℤ) = A045404 (n + 1)

end A045404

/-! ## A045404.P17529319109310136861

`∩[A042997(n+1), A045402(n+1)]`
-/

namespace A045404.P17529319109310136861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045404.P17529319109310136861

namespace A045404

/-- `∩[A042997(n+1), A045402(n+1)]` -/
def P17529319109310136861.Spec : Prop :=
  ∀ n, (P17529319109310136861.a n : ℤ) = A045404 (n + 1)

end A045404

/-! ## A045404.P16986143918061060273

`∩[A045394(n+1), A045402(n+1)]`
-/

namespace A045404.P16986143918061060273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045404.P16986143918061060273

namespace A045404

/-- `∩[A045394(n+1), A045402(n+1)]` -/
def P16986143918061060273.Spec : Prop :=
  ∀ n, (P16986143918061060273.a n : ℤ) = A045404 (n + 1)

end A045404

/-! ## A045404.P7472201645726074165

`∩[A042997(n+1), A045393(n+1)]`
-/

namespace A045404.P7472201645726074165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045404.P7472201645726074165

namespace A045404

/-- `∩[A042997(n+1), A045393(n+1)]` -/
def P7472201645726074165.Spec : Prop :=
  ∀ n, (P7472201645726074165.a n : ℤ) = A045404 (n + 1)

end A045404

/-! ## A045404.P2072686131736746381

`∩[A162699(n+1), A045394(n+1)]`
-/

namespace A045404.P2072686131736746381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045404.P2072686131736746381

namespace A045404

/-- `∩[A162699(n+1), A045394(n+1)]` -/
def P2072686131736746381.Spec : Prop :=
  ∀ n, (P2072686131736746381.a n : ℤ) = A045404 (n + 1)

end A045404

/-! ## A045404.P11795354841066002261

`filter[A047307(n+1), A010051(#)]`
-/

namespace A045404.P11795354841066002261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A045404.P11795354841066002261

namespace A045404

/-- `filter[A047307(n+1), A010051(#)]` -/
def P11795354841066002261.Spec : Prop :=
  ∀ n, P11795354841066002261.a n = A045404 (n + 1)

end A045404

/-! ## A045404.P2429161952613722051

`record[A006530(A047362(n+1)+1)]`
-/

namespace A045404.P2429161952613722051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A047362 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045404.P2429161952613722051

namespace A045404

/-- `record[A006530(A047362(n+1)+1)]` -/
def P2429161952613722051.Spec : Prop :=
  ∀ n, P2429161952613722051.a n = A045404 (n + 1)

end A045404

/-! ## A045404.P11261227175164403463

`record[A006530(A047338(n+1)+2)]`
-/

namespace A045404.P11261227175164403463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A047338 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045404.P11261227175164403463

namespace A045404

/-- `record[A006530(A047338(n+1)+2)]` -/
def P11261227175164403463.Spec : Prop :=
  ∀ n, P11261227175164403463.a n = A045404 (n + 1)

end A045404

/-! ## A045404.P7200963380734682766

`record[A020639(A047338(n+1)+2)]`
-/

namespace A045404.P7200963380734682766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A047338 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045404.P7200963380734682766

namespace A045404

/-- `record[A020639(A047338(n+1)+2)]` -/
def P7200963380734682766.Spec : Prop :=
  ∀ n, P7200963380734682766.a n = A045404 (n + 1)

end A045404

/-! ## A045404.P2454647272740173061

`record[A006530(A047312(n+2)-1)]`
-/

namespace A045404.P2454647272740173061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A047312 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045404.P2454647272740173061

namespace A045404

/-- `record[A006530(A047312(n+2)-1)]` -/
def P2454647272740173061.Spec : Prop :=
  ∀ n, P2454647272740173061.a n = A045404 (n + 1)

end A045404

/-! ## A045404.P13371755391121976594

`record[A020639(A047312(n+2)-1)]`
-/

namespace A045404.P13371755391121976594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A047312 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045404.P13371755391121976594

namespace A045404

/-- `record[A020639(A047312(n+2)-1)]` -/
def P13371755391121976594.Spec : Prop :=
  ∀ n, P13371755391121976594.a n = A045404 (n + 1)

end A045404

/-! ## A045404.P16505976679608354690

`∩[A000040(n+1), A047307(n+1)]`
-/

namespace A045404.P16505976679608354690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045404.P16505976679608354690

namespace A045404

/-- `∩[A000040(n+1), A047307(n+1)]` -/
def P16505976679608354690.Spec : Prop :=
  ∀ n, (P16505976679608354690.a n : ℤ) = A045404 (n + 1)

end A045404

/-! ## A045404.P9934029284582063233

`∩[A006005(n+1), A047307(n+1)]`
-/

namespace A045404.P9934029284582063233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045404.P9934029284582063233

namespace A045404

/-- `∩[A006005(n+1), A047307(n+1)]` -/
def P9934029284582063233.Spec : Prop :=
  ∀ n, (P9934029284582063233.a n : ℤ) = A045404 (n + 1)

end A045404

/-! ## A045404.P6499927906775048995

`∩[A008578(n+1), A047307(n+1)]`
-/

namespace A045404.P6499927906775048995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045404.P6499927906775048995

namespace A045404

/-- `∩[A008578(n+1), A047307(n+1)]` -/
def P6499927906775048995.Spec : Prop :=
  ∀ n, (P6499927906775048995.a n : ℤ) = A045404 (n + 1)

end A045404

/-!
# A045405: Primes congruent to {0, 1, 3, 4} mod 5.

The programs for A045405, the canonical program `A045405.P9318787035671126970` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045405 has offset 1).

The definition of A045405 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045405.P5032788135858787261

`∪[A045428(n+1), A051642(n)]`
-/

namespace A045405.P5032788135858787261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051642 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045405.P5032788135858787261

namespace A045405

/-- `∪[A045428(n+1), A051642(n)]` -/
def P5032788135858787261.Spec : Prop :=
  ∀ n, (P5032788135858787261.a n : ℤ) = A045405 (n + 1)

end A045405

/-! ## A045405.P10078700399948572682

`∪[A045428(n+1), A075704(n)]`
-/

namespace A045405.P10078700399948572682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075704 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045405.P10078700399948572682

namespace A045405

/-- `∪[A045428(n+1), A075704(n)]` -/
def P10078700399948572682.Spec : Prop :=
  ∀ n, (P10078700399948572682.a n : ℤ) = A045405 (n + 1)

end A045405

/-! ## A045405.P15842278859526713265

`∪[A002327(n+1), A045428(n+1)]`
-/

namespace A045405.P15842278859526713265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045405.P15842278859526713265

namespace A045405

/-- `∪[A002327(n+1), A045428(n+1)]` -/
def P15842278859526713265.Spec : Prop :=
  ∀ n, (P15842278859526713265.a n : ℤ) = A045405 (n + 1)

end A045405

/-! ## A045405.P13985870327099588990

`∪[A002649(n+1), A045428(n+1)]`
-/

namespace A045405.P13985870327099588990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045405.P13985870327099588990

namespace A045405

/-- `∪[A002649(n+1), A045428(n+1)]` -/
def P13985870327099588990.Spec : Prop :=
  ∀ n, (P13985870327099588990.a n : ℤ) = A045405 (n + 1)

end A045405

/-! ## A045405.P16970042769570492877

`∪[A003147(n+1), A045428(n+1)]`
-/

namespace A045405.P16970042769570492877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045405.P16970042769570492877

namespace A045405

/-- `∪[A003147(n+1), A045428(n+1)]` -/
def P16970042769570492877.Spec : Prop :=
  ∀ n, (P16970042769570492877.a n : ℤ) = A045405 (n + 1)

end A045405

/-! ## A045405.P2510231501280725177

`∪[A005473(n+1), A045428(n+1)]`
-/

namespace A045405.P2510231501280725177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045405.P2510231501280725177

namespace A045405

/-- `∪[A005473(n+1), A045428(n+1)]` -/
def P2510231501280725177.Spec : Prop :=
  ∀ n, (P2510231501280725177.a n : ℤ) = A045405 (n + 1)

end A045405

/-! ## A045405.P5850505627396614524

`∪[A007530(n+1), A045428(n+1)]`
-/

namespace A045405.P5850505627396614524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045405.P5850505627396614524

namespace A045405

/-- `∪[A007530(n+1), A045428(n+1)]` -/
def P5850505627396614524.Spec : Prop :=
  ∀ n, (P5850505627396614524.a n : ℤ) = A045405 (n + 1)

end A045405

/-! ## A045405.P15993841047298581124

`∪[A020453(n+1), A045428(n+1)]`
-/

namespace A045405.P15993841047298581124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045405.P15993841047298581124

namespace A045405

/-- `∪[A020453(n+1), A045428(n+1)]` -/
def P15993841047298581124.Spec : Prop :=
  ∀ n, (P15993841047298581124.a n : ℤ) = A045405 (n + 1)

end A045405

/-! ## A045405.P13580322913386328154

`∪[A020462(n+1), A045428(n+1)]`
-/

namespace A045405.P13580322913386328154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045405.P13580322913386328154

namespace A045405

/-- `∪[A020462(n+1), A045428(n+1)]` -/
def P13580322913386328154.Spec : Prop :=
  ∀ n, (P13580322913386328154.a n : ℤ) = A045405 (n + 1)

end A045405

/-! ## A045405.P10529201563401757561

`∪[A020468(n+1), A045428(n+1)]`
-/

namespace A045405.P10529201563401757561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045405.P10529201563401757561

namespace A045405

/-- `∪[A020468(n+1), A045428(n+1)]` -/
def P10529201563401757561.Spec : Prop :=
  ∀ n, (P10529201563401757561.a n : ℤ) = A045405 (n + 1)

end A045405

/-! ## A045405.P11663802909148769649

`∪[A021007(n+1), A045428(n+1)]`
-/

namespace A045405.P11663802909148769649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045405.P11663802909148769649

namespace A045405

/-- `∪[A021007(n+1), A045428(n+1)]` -/
def P11663802909148769649.Spec : Prop :=
  ∀ n, (P11663802909148769649.a n : ℤ) = A045405 (n + 1)

end A045405

/-! ## A045405.P4093769464743613899

`∪[A022006(n+1), A045428(n+1)]`
-/

namespace A045405.P4093769464743613899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045405.P4093769464743613899

namespace A045405

/-- `∪[A022006(n+1), A045428(n+1)]` -/
def P4093769464743613899.Spec : Prop :=
  ∀ n, (P4093769464743613899.a n : ℤ) = A045405 (n + 1)

end A045405

/-! ## A045405.P605909520937082924

`∪[A023202(n+1), A045428(n+1)]`
-/

namespace A045405.P605909520937082924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045405.P605909520937082924

namespace A045405

/-- `∪[A023202(n+1), A045428(n+1)]` -/
def P605909520937082924.Spec : Prop :=
  ∀ n, (P605909520937082924.a n : ℤ) = A045405 (n + 1)

end A045405

/-! ## A045405.P11456817440098033149

`∪[A023209(n+1), A045428(n+1)]`
-/

namespace A045405.P11456817440098033149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045405.P11456817440098033149

namespace A045405

/-- `∪[A023209(n+1), A045428(n+1)]` -/
def P11456817440098033149.Spec : Prop :=
  ∀ n, (P11456817440098033149.a n : ℤ) = A045405 (n + 1)

end A045405

/-! ## A045405.P9318787035671126970

`∪[A023225(n+1), A045428(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A045405

/-- `∪[A023225(n+1), A045428(n+1)]` -/
def P9318787035671126970.Spec : Prop :=
  ∀ n, (P9318787035671126970.a n : ℤ) = A045405 (n + 1)

theorem P9318787035671126970.correct : P9318787035671126970.Spec := by
  intro n
  simp only [A045405, Nat.add_sub_cancel]

end A045405

/-! ## A045405.P11037983703461106544

`∪[A023261(n+1), A045428(n+1)]`
-/

namespace A045405.P11037983703461106544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045405.P11037983703461106544

namespace A045405

/-- `∪[A023261(n+1), A045428(n+1)]` -/
def P11037983703461106544.Spec : Prop :=
  ∀ n, (P11037983703461106544.a n : ℤ) = A045405 (n + 1)

end A045405

/-! ## A045405.P6495429970629407695

`∪[A023275(n+1), A045428(n+1)]`
-/

namespace A045405.P6495429970629407695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023275 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045405.P6495429970629407695

namespace A045405

/-- `∪[A023275(n+1), A045428(n+1)]` -/
def P6495429970629407695.Spec : Prop :=
  ∀ n, (P6495429970629407695.a n : ℤ) = A045405 (n + 1)

end A045405

/-! ## A045405.P15358244794618613272

`∪[A030431(n+1), A038872(n+1)]`
-/

namespace A045405.P15358244794618613272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045405.P15358244794618613272

namespace A045405

/-- `∪[A030431(n+1), A038872(n+1)]` -/
def P15358244794618613272.Spec : Prop :=
  ∀ n, (P15358244794618613272.a n : ℤ) = A045405 (n + 1)

end A045405

/-! ## A045405.P2177533955634636448

`∪[A027862(n+1), A045428(n+1)]`
-/

namespace A045405.P2177533955634636448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045405.P2177533955634636448

namespace A045405

/-- `∪[A027862(n+1), A045428(n+1)]` -/
def P2177533955634636448.Spec : Prop :=
  ∀ n, (P2177533955634636448.a n : ℤ) = A045405 (n + 1)

end A045405

/-! ## A045405.P2437707047500472569

`∪[A045407(n+1), A030433(n+1)]`
-/

namespace A045405.P2437707047500472569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045405.P2437707047500472569

namespace A045405

/-- `∪[A045407(n+1), A030433(n+1)]` -/
def P2437707047500472569.Spec : Prop :=
  ∀ n, (P2437707047500472569.a n : ℤ) = A045405 (n + 1)

end A045405

/-! ## A045405.P464950745585644794

`p?[a(n-4)+5]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=4`
-/

namespace A045405.P464950745585644794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 4] fun n f1 =>
  f1 (n - 4) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045405.P464950745585644794

namespace A045405

/-- `p?[a(n-4)+5]` -/
def P464950745585644794.Spec : Prop :=
  ∀ n, (P464950745585644794.a n : ℤ) = A045405 (n + 1)

end A045405

/-!
# A045406: A diagonal of A008296.

The programs for A045406, there is no canonical definition to state claims against.
-/

/-! ## A045406.P17506938401914830465

`A222627(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A045406.P17506938401914830465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A222627 n - (n : ℤ) * a (n - 1)

end

end A045406.P17506938401914830465

/-! ## A045406.P1692036618590837718

`A008296(∑[n+1]+2)`
-/

namespace A045406.P1692036618590837718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008296 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A045406.P1692036618590837718

/-! ## A045406.P11685345951532760901

`A008296(A133263(n+1))+(2*(n+1))%2`
-/

namespace A045406.P11685345951532760901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008296 (A133263 (n + 1)).toNat + ((2 * (n + 1) % 2 : ℕ) : ℤ)

end

end A045406.P11685345951532760901

/-! ## A045406.P17415636864751949011

`or(A008296(A133263(n+1)), A055668(2*n))`
-/

namespace A045406.P17415636864751949011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008296 (A133263 (n + 1)).toNat) (A055668 (2 * n))

end

end A045406.P17415636864751949011

/-! ## A045406.P1628164260111892404

`A055668(A004016(n))+A008296(A133263(n+1))`
-/

namespace A045406.P1628164260111892404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055668 (A004016 n).toNat + A008296 (A133263 (n + 1)).toNat

end

end A045406.P1628164260111892404

/-! ## A045406.P5368446088748454662

`A007318(A000217(n))*A008296(A133263(n+1))`
-/

namespace A045406.P5368446088748454662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A008296 (A133263 (n + 1)).toNat

end

end A045406.P5368446088748454662

/-!
# A045407: Primes congruent to {0, 1, 3} mod 5.

The programs for A045407, the canonical program `A045407.P10976223801705910227` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045407 has offset 1).

The definition of A045407 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045407.P8447086330389632372

`∪[A002649(n+1), A045429(n+1)]`
-/

namespace A045407.P8447086330389632372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045429 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045407.P8447086330389632372

namespace A045407

/-- `∪[A002649(n+1), A045429(n+1)]` -/
def P8447086330389632372.Spec : Prop :=
  ∀ n, (P8447086330389632372.a n : ℤ) = A045407 (n + 1)

end A045407

/-! ## A045407.P7365049028190253568

`∪[A007530(n+1), A045429(n+1)]`
-/

namespace A045407.P7365049028190253568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045429 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045407.P7365049028190253568

namespace A045407

/-- `∪[A007530(n+1), A045429(n+1)]` -/
def P7365049028190253568.Spec : Prop :=
  ∀ n, (P7365049028190253568.a n : ℤ) = A045407 (n + 1)

end A045407

/-! ## A045407.P2338657509127969999

`∪[A020453(n+1), A045429(n+1)]`
-/

namespace A045407.P2338657509127969999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045429 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045407.P2338657509127969999

namespace A045407

/-- `∪[A020453(n+1), A045429(n+1)]` -/
def P2338657509127969999.Spec : Prop :=
  ∀ n, (P2338657509127969999.a n : ℤ) = A045407 (n + 1)

end A045407

/-! ## A045407.P17433132257148201939

`∪[A020462(n+1), A045429(n+1)]`
-/

namespace A045407.P17433132257148201939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045429 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045407.P17433132257148201939

namespace A045407

/-- `∪[A020462(n+1), A045429(n+1)]` -/
def P17433132257148201939.Spec : Prop :=
  ∀ n, (P17433132257148201939.a n : ℤ) = A045407 (n + 1)

end A045407

/-! ## A045407.P5562568941829431061

`∪[A022006(n+1), A045429(n+1)]`
-/

namespace A045407.P5562568941829431061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045429 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045407.P5562568941829431061

namespace A045407

/-- `∪[A022006(n+1), A045429(n+1)]` -/
def P5562568941829431061.Spec : Prop :=
  ∀ n, (P5562568941829431061.a n : ℤ) = A045407 (n + 1)

end A045407

/-! ## A045407.P8476565820306368663

`∪[A023261(n+1), A045429(n+1)]`
-/

namespace A045407.P8476565820306368663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045429 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045407.P8476565820306368663

namespace A045407

/-- `∪[A023261(n+1), A045429(n+1)]` -/
def P8476565820306368663.Spec : Prop :=
  ∀ n, (P8476565820306368663.a n : ℤ) = A045407 (n + 1)

end A045407

/-! ## A045407.P8733608616169453866

`∪[A023271(n+1), A045429(n+1)]`
-/

namespace A045407.P8733608616169453866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045429 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045407.P8733608616169453866

namespace A045407

/-- `∪[A023271(n+1), A045429(n+1)]` -/
def P8733608616169453866.Spec : Prop :=
  ∀ n, (P8733608616169453866.a n : ℤ) = A045407 (n + 1)

end A045407

/-! ## A045407.P15104147558652617965

`∪[A023275(n+1), A045429(n+1)]`
-/

namespace A045407.P15104147558652617965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023275 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045429 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045407.P15104147558652617965

namespace A045407

/-- `∪[A023275(n+1), A045429(n+1)]` -/
def P15104147558652617965.Spec : Prop :=
  ∀ n, (P15104147558652617965.a n : ℤ) = A045407 (n + 1)

end A045407

/-! ## A045407.P11352224318228221706

`∪[A023276(n+1), A045429(n+1)]`
-/

namespace A045407.P11352224318228221706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023276 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045429 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045407.P11352224318228221706

namespace A045407

/-- `∪[A023276(n+1), A045429(n+1)]` -/
def P11352224318228221706.Spec : Prop :=
  ∀ n, (P11352224318228221706.a n : ℤ) = A045407 (n + 1)

end A045407

/-! ## A045407.P12839589811129750222

`∪[A027862(n+1), A045429(n+1)]`
-/

namespace A045407.P12839589811129750222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045429 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045407.P12839589811129750222

namespace A045407

/-- `∪[A027862(n+1), A045429(n+1)]` -/
def P12839589811129750222.Spec : Prop :=
  ∀ n, (P12839589811129750222.a n : ℤ) = A045407 (n + 1)

end A045407

/-! ## A045407.P5942489475280834212

`∪[A030430(n+1), A045414(n+1)]`
-/

namespace A045407.P5942489475280834212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045407.P5942489475280834212

namespace A045407

/-- `∪[A030430(n+1), A045414(n+1)]` -/
def P5942489475280834212.Spec : Prop :=
  ∀ n, (P5942489475280834212.a n : ℤ) = A045407 (n + 1)

end A045407

/-! ## A045407.P10976223801705910227

`∪[A030431(n+1), A045453(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A045407

/-- `∪[A030431(n+1), A045453(n+1)]` -/
def P10976223801705910227.Spec : Prop :=
  ∀ n, (P10976223801705910227.a n : ℤ) = A045407 (n + 1)

theorem P10976223801705910227.correct : P10976223801705910227.Spec := by
  intro n
  simp only [A045407, Nat.add_sub_cancel]

end A045407

/-! ## A045407.P6434236774757125104

`∪[A045414(n+1), A045429(n+1)]`
-/

namespace A045407.P6434236774757125104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045429 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045407.P6434236774757125104

namespace A045407

/-- `∪[A045414(n+1), A045429(n+1)]` -/
def P6434236774757125104.Spec : Prop :=
  ∀ n, (P6434236774757125104.a n : ℤ) = A045407 (n + 1)

end A045407

/-! ## A045407.P8150635252189152471

`∪[A045414(n+1), A045453(n+1)]`
-/

namespace A045407.P8150635252189152471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045407.P8150635252189152471

namespace A045407

/-- `∪[A045414(n+1), A045453(n+1)]` -/
def P8150635252189152471.Spec : Prop :=
  ∀ n, (P8150635252189152471.a n : ℤ) = A045407 (n + 1)

end A045407

/-! ## A045407.P15704804425498812385

`∪[A046138(n+1), A045429(n+1)]`
-/

namespace A045407.P15704804425498812385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045429 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045407.P15704804425498812385

namespace A045407

/-- `∪[A046138(n+1), A045429(n+1)]` -/
def P15704804425498812385.Spec : Prop :=
  ∀ n, (P15704804425498812385.a n : ℤ) = A045407 (n + 1)

end A045407

/-! ## A045407.P11764777725512152830

`∪[A062341(n+1), A045429(n+1)]`
-/

namespace A045407.P11764777725512152830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045429 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045407.P11764777725512152830

namespace A045407

/-- `∪[A062341(n+1), A045429(n+1)]` -/
def P11764777725512152830.Spec : Prop :=
  ∀ n, (P11764777725512152830.a n : ℤ) = A045407 (n + 1)

end A045407

/-! ## A045407.P11714906155614100504

`∪[A067756(n+1), A045429(n+1)]`
-/

namespace A045407.P11714906155614100504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045429 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045407.P11714906155614100504

namespace A045407

/-- `∪[A067756(n+1), A045429(n+1)]` -/
def P11714906155614100504.Spec : Prop :=
  ∀ n, (P11714906155614100504.a n : ℤ) = A045407 (n + 1)

end A045407

/-! ## A045407.P14425903253409113577

`∪[A087871(n+1), A045429(n+1)]`
-/

namespace A045407.P14425903253409113577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045429 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045407.P14425903253409113577

namespace A045407

/-- `∪[A087871(n+1), A045429(n+1)]` -/
def P14425903253409113577.Spec : Prop :=
  ∀ n, (P14425903253409113577.a n : ℤ) = A045407 (n + 1)

end A045407

/-! ## A045407.P521133525959031711

`∪[A088548(n+1), A045429(n+1)]`
-/

namespace A045407.P521133525959031711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088548 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045429 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045407.P521133525959031711

namespace A045407

/-- `∪[A088548(n+1), A045429(n+1)]` -/
def P521133525959031711.Spec : Prop :=
  ∀ n, (P521133525959031711.a n : ℤ) = A045407 (n + 1)

end A045407

/-! ## A045407.P1982727883833022739

`∪[A260223(n+1), A045429(n+1)]`
-/

namespace A045407.P1982727883833022739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045429 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045407.P1982727883833022739

namespace A045407

/-- `∪[A260223(n+1), A045429(n+1)]` -/
def P1982727883833022739.Spec : Prop :=
  ∀ n, (P1982727883833022739.a n : ℤ) = A045407 (n + 1)

end A045407

/-! ## A045407.P3094112462631371942

`p?[a(n-3)+5]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A045407.P3094112462631371942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  f1 (n - 3) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045407.P3094112462631371942

namespace A045407

/-- `p?[a(n-3)+5]` -/
def P3094112462631371942.Spec : Prop :=
  ∀ n, (P3094112462631371942.a n : ℤ) = A045407 (n + 1)

end A045407

/-!
# A045408: Primes congruent to {1, 3, 4, 5} mod 7.

The programs for A045408, the canonical program `A045408.P12723487234980853055` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045408 has offset 1).

The definition of A045408 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A045408.anchor (n : ℕ) (hn : 1 ≤ n) : A045408 n = (Nat.nth (fun p => p.Prime ∧ p % 7 ∈ ({1, 3, 4, 5} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A045.A045408`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A045408.P12723487234980853055

`p?[a(n-4)+7]` with `a(0)=1, a(1)=3, a(2)=4, a(3)=5`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045408

/-- `p?[a(n-4)+7]` -/
def P12723487234980853055.Spec : Prop :=
  ∀ n, (P12723487234980853055.a n : ℤ) = A045408 (n + 1)

theorem P12723487234980853055.correct : P12723487234980853055.Spec := by
  intro n
  simp only [A045408, Nat.add_sub_cancel]

end A045408

/-! ## A045408.P8745488588730051377

`∪[A045409(n+1), A045431(n+1)]`
-/

namespace A045408.P8745488588730051377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045408.P8745488588730051377

namespace A045408

/-- `∪[A045409(n+1), A045431(n+1)]` -/
def P8745488588730051377.Spec : Prop :=
  ∀ n, (P8745488588730051377.a n : ℤ) = A045408 (n + 1)

end A045408

/-! ## A045408.P16778882274856251537

`∪[A045451(n+1), A045409(n+1)]`
-/

namespace A045408.P16778882274856251537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045408.P16778882274856251537

namespace A045408

/-- `∪[A045451(n+1), A045409(n+1)]` -/
def P16778882274856251537.Spec : Prop :=
  ∀ n, (P16778882274856251537.a n : ℤ) = A045408 (n + 1)

end A045408

/-! ## A045408.P6487980090176084213

`∪[A045437(n+1), A045451(n+1)]`
-/

namespace A045408.P6487980090176084213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045408.P6487980090176084213

namespace A045408

/-- `∪[A045437(n+1), A045451(n+1)]` -/
def P6487980090176084213.Spec : Prop :=
  ∀ n, (P6487980090176084213.a n : ℤ) = A045408 (n + 1)

end A045408

/-! ## A045408.P6803551246058322383

`A045396(A326178(n+1))`
-/

namespace A045408.P6803551246058322383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045396 (A326178 (n + 1)).toNat

end

end A045408.P6803551246058322383

namespace A045408

/-- `A045396(A326178(n+1))` -/
def P6803551246058322383.Spec : Prop :=
  ∀ n, P6803551246058322383.a n = A045408 (n + 1)

end A045408

/-! ## A045408.P15977240053395252034

`A045396(A184985(n+1)+1)`
-/

namespace A045408.P15977240053395252034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045396 (A184985 (n + 1) + 1).toNat

end

end A045408.P15977240053395252034

namespace A045408

/-- `A045396(A184985(n+1)+1)` -/
def P15977240053395252034.Spec : Prop :=
  ∀ n, P15977240053395252034.a n = A045408 (n + 1)

end A045408

/-! ## A045408.P6755098745153756887

`∩[A044042(n+1), A045396(n+1)]`
-/

namespace A045408.P6755098745153756887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045408.P6755098745153756887

namespace A045408

/-- `∩[A044042(n+1), A045396(n+1)]` -/
def P6755098745153756887.Spec : Prop :=
  ∀ n, (P6755098745153756887.a n : ℤ) = A045408 (n + 1)

end A045408

/-! ## A045408.P3698336317694833121

`∩[A045402(n+1), A042988(n)]`
-/

namespace A045408.P3698336317694833121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045408.P3698336317694833121

namespace A045408

/-- `∩[A045402(n+1), A042988(n)]` -/
def P3698336317694833121.Spec : Prop :=
  ∀ n, (P3698336317694833121.a n : ℤ) = A045408 (n + 1)

end A045408

/-! ## A045408.P18231232988098016814

`∩[A044042(n+1), A045402(n+1)]`
-/

namespace A045408.P18231232988098016814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045408.P18231232988098016814

namespace A045408

/-- `∩[A044042(n+1), A045402(n+1)]` -/
def P18231232988098016814.Spec : Prop :=
  ∀ n, (P18231232988098016814.a n : ℤ) = A045408 (n + 1)

end A045408

/-! ## A045408.P7779627987148370497

`∩[A045396(n+1), A045402(n+1)]`
-/

namespace A045408.P7779627987148370497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045408.P7779627987148370497

namespace A045408

/-- `∩[A045396(n+1), A045402(n+1)]` -/
def P7779627987148370497.Spec : Prop :=
  ∀ n, (P7779627987148370497.a n : ℤ) = A045408 (n + 1)

end A045408

/-! ## A045408.P12386183117731570033

`∩[A044042(n+1), A045393(n+1)]`
-/

namespace A045408.P12386183117731570033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045408.P12386183117731570033

namespace A045408

/-- `∩[A044042(n+1), A045393(n+1)]` -/
def P12386183117731570033.Spec : Prop :=
  ∀ n, (P12386183117731570033.a n : ℤ) = A045408 (n + 1)

end A045408

/-! ## A045408.P7906254843484803972

`p?[A028919(n+1)-9]`
-/

namespace A045408.P7906254843484803972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028919 (n + 1) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045408.P7906254843484803972

namespace A045408

/-- `p?[A028919(n+1)-9]` -/
def P7906254843484803972.Spec : Prop :=
  ∀ n, P7906254843484803972.a n = A045408 (n + 1)

end A045408

/-! ## A045408.P6988537668997415991

`p?[2*A047388(n+1)+1]`
-/

namespace A045408.P6988537668997415991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047388 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045408.P6988537668997415991

namespace A045408

/-- `p?[2*A047388(n+1)+1]` -/
def P6988537668997415991.Spec : Prop :=
  ∀ n, P6988537668997415991.a n = A045408 (n + 1)

end A045408

/-! ## A045408.P4155303110860942259

`p?[2*A047286(n+1)-1]`
-/

namespace A045408.P4155303110860942259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047286 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045408.P4155303110860942259

namespace A045408

/-- `p?[2*A047286(n+1)-1]` -/
def P4155303110860942259.Spec : Prop :=
  ∀ n, P4155303110860942259.a n = A045408 (n + 1)

end A045408

/-! ## A045408.P898980560076745033

`∩[A045396(n+1), A162699(n+1)]`
-/

namespace A045408.P898980560076745033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045408.P898980560076745033

namespace A045408

/-- `∩[A045396(n+1), A162699(n+1)]` -/
def P898980560076745033.Spec : Prop :=
  ∀ n, (P898980560076745033.a n : ℤ) = A045408 (n + 1)

end A045408

/-! ## A045408.P9925123967321754426

`p?[A005408(A047291(n+1)+1)]`
-/

namespace A045408.P9925123967321754426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A047291 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045408.P9925123967321754426

namespace A045408

/-- `p?[A005408(A047291(n+1)+1)]` -/
def P9925123967321754426.Spec : Prop :=
  ∀ n, P9925123967321754426.a n = A045408 (n + 1)

end A045408

/-! ## A045408.P4543300024402302246

`p?[A016777(A047388(n+2))-A047388(n+2)]`
-/

namespace A045408.P4543300024402302246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A047388 (n + 2)).toNat - A047388 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045408.P4543300024402302246

namespace A045408

/-- `p?[A016777(A047388(n+2))-A047388(n+2)]` -/
def P4543300024402302246.Spec : Prop :=
  ∀ n, P4543300024402302246.a n = A045408 (n + 1)

end A045408

/-! ## A045408.P12224232185540874239

`p?[2*n*A011656(n+2)-3]`
-/

namespace A045408.P12224232185540874239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A011656 (n + 2) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045408.P12224232185540874239

namespace A045408

/-- `p?[2*n*A011656(n+2)-3]` -/
def P12224232185540874239.Spec : Prop :=
  ∀ n, P12224232185540874239.a n = A045408 (n + 1)

end A045408

/-! ## A045408.P10203803855027110989

`p?[A047366(n+1)]`
-/

namespace A045408.P10203803855027110989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047366 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045408.P10203803855027110989

namespace A045408

/-- `p?[A047366(n+1)]` -/
def P10203803855027110989.Spec : Prop :=
  ∀ n, P10203803855027110989.a n = A045408 (n + 1)

end A045408

/-! ## A045408.P5418487731394516906

`p?[A047340(n+1)+1]`
-/

namespace A045408.P5418487731394516906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047340 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045408.P5418487731394516906

namespace A045408

/-- `p?[A047340(n+1)+1]` -/
def P5418487731394516906.Spec : Prop :=
  ∀ n, P5418487731394516906.a n = A045408 (n + 1)

end A045408

/-!
# A045409: Primes congruent to {3, 4, 5} mod 7.

The programs for A045409, the canonical program `A045409.P10973813303333220082` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045409 has offset 1).

The definition of A045409 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A045409.anchor (n : ℕ) (hn : 1 ≤ n) : A045409 n = (Nat.nth (fun p => p.Prime ∧ p % 7 ∈ ({3, 4, 5} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A045.A045409`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A045409.P10973813303333220082

`p?[a(n-3)+7]` with `a(0)=3, a(1)=4, a(2)=5`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045409

/-- `p?[a(n-3)+7]` -/
def P10973813303333220082.Spec : Prop :=
  ∀ n, (P10973813303333220082.a n : ℤ) = A045409 (n + 1)

theorem P10973813303333220082.correct : P10973813303333220082.Spec := by
  intro n
  simp only [A045409, Nat.add_sub_cancel]

end A045409

/-! ## A045409.P13216225653218468271

`p?[ogf((3+x+x^2+2x^3)/(1-x-x^3+x^4))]`
-/

namespace A045409.P13216225653218468271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1, 1, 2] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045409.P13216225653218468271

namespace A045409

/-- `p?[ogf((3+x+x^2+2x^3)/(1-x-x^3+x^4))]` -/
def P13216225653218468271.Spec : Prop :=
  ∀ n, P13216225653218468271.a n = A045409 (n + 1)

end A045409

/-! ## A045409.P16073761180589639719

`A045397(A326178(n+1))`
-/

namespace A045409.P16073761180589639719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045397 (A326178 (n + 1)).toNat

end

end A045409.P16073761180589639719

namespace A045409

/-- `A045397(A326178(n+1))` -/
def P16073761180589639719.Spec : Prop :=
  ∀ n, P16073761180589639719.a n = A045409 (n + 1)

end A045409

/-! ## A045409.P8071032898666591075

`∩[A045397(n+1), A045408(n+1)]`
-/

namespace A045409.P8071032898666591075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045409.P8071032898666591075

namespace A045409

/-- `∩[A045397(n+1), A045408(n+1)]` -/
def P8071032898666591075.Spec : Prop :=
  ∀ n, (P8071032898666591075.a n : ℤ) = A045409 (n + 1)

end A045409

/-! ## A045409.P18050249959191436120

`∩[A042989(n+1), A045408(n+1)]`
-/

namespace A045409.P18050249959191436120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045409.P18050249959191436120

namespace A045409

/-- `∩[A042989(n+1), A045408(n+1)]` -/
def P18050249959191436120.Spec : Prop :=
  ∀ n, (P18050249959191436120.a n : ℤ) = A045409 (n + 1)

end A045409

/-! ## A045409.P2425179749219594943

`∩[A045308(n+1), A045408(n+1)]`
-/

namespace A045409.P2425179749219594943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045409.P2425179749219594943

namespace A045409

/-- `∩[A045308(n+1), A045408(n+1)]` -/
def P2425179749219594943.Spec : Prop :=
  ∀ n, (P2425179749219594943.a n : ℤ) = A045409 (n + 1)

end A045409

/-! ## A045409.P15981685662960324309

`∩[A042989(n+1), A045404(n+1)]`
-/

namespace A045409.P15981685662960324309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045409.P15981685662960324309

namespace A045409

/-- `∩[A042989(n+1), A045404(n+1)]` -/
def P15981685662960324309.Spec : Prop :=
  ∀ n, (P15981685662960324309.a n : ℤ) = A045409 (n + 1)

end A045409

/-! ## A045409.P11497309858978881861

`∩[A045404(n+1), A045408(n+1)]`
-/

namespace A045409.P11497309858978881861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045409.P11497309858978881861

namespace A045409

/-- `∩[A045404(n+1), A045408(n+1)]` -/
def P11497309858978881861.Spec : Prop :=
  ∀ n, (P11497309858978881861.a n : ℤ) = A045409 (n + 1)

end A045409

/-! ## A045409.P9730506335340113007

`∩[A045308(n+1), A045394(n+1)]`
-/

namespace A045409.P9730506335340113007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045409.P9730506335340113007

namespace A045409

/-- `∩[A045308(n+1), A045394(n+1)]` -/
def P9730506335340113007.Spec : Prop :=
  ∀ n, (P9730506335340113007.a n : ℤ) = A045409 (n + 1)

end A045409

/-! ## A045409.P14016671875117700248

`∩[A042997(n+1), A045396(n+1)]`
-/

namespace A045409.P14016671875117700248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045409.P14016671875117700248

namespace A045409

/-- `∩[A042997(n+1), A045396(n+1)]` -/
def P14016671875117700248.Spec : Prop :=
  ∀ n, (P14016671875117700248.a n : ℤ) = A045409 (n + 1)

end A045409

/-! ## A045409.P14064898607378297183

`∩[A042997(n+1), A045397(n+1)]`
-/

namespace A045409.P14064898607378297183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045409.P14064898607378297183

namespace A045409

/-- `∩[A042997(n+1), A045397(n+1)]` -/
def P14064898607378297183.Spec : Prop :=
  ∀ n, (P14064898607378297183.a n : ℤ) = A045409 (n + 1)

end A045409

/-! ## A045409.P10633581995459403303

`∩[A042997(n+1), A045408(n+1)]`
-/

namespace A045409.P10633581995459403303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045409.P10633581995459403303

namespace A045409

/-- `∩[A042997(n+1), A045408(n+1)]` -/
def P10633581995459403303.Spec : Prop :=
  ∀ n, (P10633581995459403303.a n : ℤ) = A045409 (n + 1)

end A045409

/-! ## A045409.P16533327113301169131

`∩[A044042(n+1), A045394(n+1)]`
-/

namespace A045409.P16533327113301169131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045409.P16533327113301169131

namespace A045409

/-- `∩[A044042(n+1), A045394(n+1)]` -/
def P16533327113301169131.Spec : Prop :=
  ∀ n, (P16533327113301169131.a n : ℤ) = A045409 (n + 1)

end A045409

/-! ## A045409.P15820643186416846103

`∩[A044042(n+1), A045397(n+1)]`
-/

namespace A045409.P15820643186416846103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045409.P15820643186416846103

namespace A045409

/-- `∩[A044042(n+1), A045397(n+1)]` -/
def P15820643186416846103.Spec : Prop :=
  ∀ n, (P15820643186416846103.a n : ℤ) = A045409 (n + 1)

end A045409

/-! ## A045409.P8453433720182253306

`∩[A044042(n+1), A045404(n+1)]`
-/

namespace A045409.P8453433720182253306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045409.P8453433720182253306

namespace A045409

/-- `∩[A044042(n+1), A045404(n+1)]` -/
def P8453433720182253306.Spec : Prop :=
  ∀ n, (P8453433720182253306.a n : ℤ) = A045409 (n + 1)

end A045409

/-! ## A045409.P11874953798728818258

`∩[A045404(n+1), A042988(n)]`
-/

namespace A045409.P11874953798728818258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045409.P11874953798728818258

namespace A045409

/-- `∩[A045404(n+1), A042988(n)]` -/
def P11874953798728818258.Spec : Prop :=
  ∀ n, (P11874953798728818258.a n : ℤ) = A045409 (n + 1)

end A045409

/-! ## A045409.P1704746840089850804

`∩[A042989(n+1), A045402(n+1)]`
-/

namespace A045409.P1704746840089850804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045409.P1704746840089850804

namespace A045409

/-- `∩[A042989(n+1), A045402(n+1)]` -/
def P1704746840089850804.Spec : Prop :=
  ∀ n, (P1704746840089850804.a n : ℤ) = A045409 (n + 1)

end A045409

/-! ## A045409.P3334414840952852546

`∩[A045308(n+1), A045393(n+1)]`
-/

namespace A045409.P3334414840952852546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045409.P3334414840952852546

namespace A045409

/-- `∩[A045308(n+1), A045393(n+1)]` -/
def P3334414840952852546.Spec : Prop :=
  ∀ n, (P3334414840952852546.a n : ℤ) = A045409 (n + 1)

end A045409

/-! ## A045409.P2228940343828542842

`p?[A063222(n+1)-10]`
-/

namespace A045409.P2228940343828542842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063222 (n + 1) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045409.P2228940343828542842

namespace A045409

/-- `p?[A063222(n+1)-10]` -/
def P2228940343828542842.Spec : Prop :=
  ∀ n, P2228940343828542842.a n = A045409 (n + 1)

end A045409

/-! ## A045409.P7282799227339819004

`p?[2*A047387(n+1)+1]`
-/

namespace A045409.P7282799227339819004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047387 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045409.P7282799227339819004

namespace A045409

/-- `p?[2*A047387(n+1)+1]` -/
def P7282799227339819004.Spec : Prop :=
  ∀ n, P7282799227339819004.a n = A045409 (n + 1)

end A045409

/-!
# A045410: Primes congruent to {3, 5} mod 6.

The programs for A045410, the canonical program `A045410.P3893065746671623656` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045410 has offset 1).

The definition of A045410 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045410.P3893065746671623656

`p?[or(1, 3*n-1)]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045410

/-- `p?[or(1, 3*n-1)]` -/
def P3893065746671623656.Spec : Prop :=
  ∀ n, P3893065746671623656.a n = A045410 (n + 1)

theorem P3893065746671623656.correct : P3893065746671623656.Spec := by
  intro n
  simp only [A045410, Nat.add_sub_cancel]

end A045410

/-! ## A045410.P9359136026043189176

`or(1, p?[3*n+2])`
-/

namespace A045410.P9359136026043189176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A045410.P9359136026043189176

namespace A045410

/-- `or(1, p?[3*n+2])` -/
def P9359136026043189176.Spec : Prop :=
  ∀ n, (P9359136026043189176.a n : ℤ) = A045410 (n + 1)

end A045410

/-! ## A045410.P15474742207853942009

`p?[a(n-1)+3]` with `a(0)=3, a(1)=5`
-/

namespace A045410.P15474742207853942009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 5] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045410.P15474742207853942009

namespace A045410

/-- `p?[a(n-1)+3]` -/
def P15474742207853942009.Spec : Prop :=
  ∀ n, (P15474742207853942009.a n : ℤ) = A045410 (n + 1)

end A045410

/-! ## A045410.P16074311420295131343

`p?[ogf((3-x+x^2)/(1-2x+x^2))]`
-/

namespace A045410.P16074311420295131343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -1, 1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045410.P16074311420295131343

namespace A045410

/-- `p?[ogf((3-x+x^2)/(1-2x+x^2))]` -/
def P16074311420295131343.Spec : Prop :=
  ∀ n, P16074311420295131343.a n = A045410 (n + 1)

end A045410

/-! ## A045410.P11641037489951887282

`p?[3*(n+1)-n%2]`
-/

namespace A045410.P11641037489951887282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045410.P11641037489951887282

namespace A045410

/-- `p?[3*(n+1)-n%2]` -/
def P11641037489951887282.Spec : Prop :=
  ∀ n, P11641037489951887282.a n = A045410 (n + 1)

end A045410

/-! ## A045410.P16054288390014002423

`p?[3*(n+1)-and(1, n)]`
-/

namespace A045410.P16054288390014002423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045410.P16054288390014002423

namespace A045410

/-- `p?[3*(n+1)-and(1, n)]` -/
def P16054288390014002423.Spec : Prop :=
  ∀ n, P16054288390014002423.a n = A045410 (n + 1)

end A045410

/-! ## A045410.P15387495935673699789

`p?[abs(2-n)+2*n+1]`
-/

namespace A045410.P15387495935673699789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (n : ℤ)| + (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045410.P15387495935673699789

namespace A045410

/-- `p?[abs(2-n)+2*n+1]` -/
def P15387495935673699789.Spec : Prop :=
  ∀ n, P15387495935673699789.a n = A045410 (n + 1)

end A045410

/-! ## A045410.P14530735648305737244

`or(1, A003627(n+1))`
-/

namespace A045410.P14530735648305737244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A003627 (n + 1))

end

end A045410.P14530735648305737244

namespace A045410

/-- `or(1, A003627(n+1))` -/
def P14530735648305737244.Spec : Prop :=
  ∀ n, P14530735648305737244.a n = A045410 (n + 1)

end A045410

/-! ## A045410.P10601022646285151803

`A003627(n+1)+A000007(n)`
-/

namespace A045410.P10601022646285151803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1) + A000007 n

end

end A045410.P10601022646285151803

namespace A045410

/-- `A003627(n+1)+A000007(n)` -/
def P10601022646285151803.Spec : Prop :=
  ∀ n, P10601022646285151803.a n = A045410 (n + 1)

end A045410

/-! ## A045410.P15197426633446043490

`A010051(2*(n+1))+A003627(n+1)`
-/

namespace A045410.P15197426633446043490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1)) + A003627 (n + 1)

end

end A045410.P15197426633446043490

namespace A045410

/-- `A010051(2*(n+1))+A003627(n+1)` -/
def P15197426633446043490.Spec : Prop :=
  ∀ n, P15197426633446043490.a n = A045410 (n + 1)

end A045410

/-! ## A045410.P7588792578755717349

`A109578(2*n+1)+A003627(n+1)`
-/

namespace A045410.P7588792578755717349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109578 (2 * n + 1) + A003627 (n + 1)

end

end A045410.P7588792578755717349

namespace A045410

/-- `A109578(2*n+1)+A003627(n+1)` -/
def P7588792578755717349.Spec : Prop :=
  ∀ n, P7588792578755717349.a n = A045410 (n + 1)

end A045410

/-! ## A045410.P566492885238632957

`A003627(n+1)+A007645(n+1)-A045375(n+1)`
-/

namespace A045410.P566492885238632957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1) + (A007645 (n + 1) - A045375 (n + 1))

end

end A045410.P566492885238632957

namespace A045410

/-- `A003627(n+1)+A007645(n+1)-A045375(n+1)` -/
def P566492885238632957.Spec : Prop :=
  ∀ n, P566492885238632957.a n = A045410 (n + 1)

end A045410

/-! ## A045410.P8728496834977791156

`A003627(n+1)+A184628(n+1)-A000578(n+1)`
-/

namespace A045410.P8728496834977791156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1) + (A184628 (n + 1) - A000578 (n + 1))

end

end A045410.P8728496834977791156

namespace A045410

/-- `A003627(n+1)+A184628(n+1)-A000578(n+1)` -/
def P8728496834977791156.Spec : Prop :=
  ∀ n, P8728496834977791156.a n = A045410 (n + 1)

end A045410

/-! ## A045410.P1445610236481228081

`A045309(n+2)`
-/

namespace A045410.P1445610236481228081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 2)

end

end A045410.P1445610236481228081

namespace A045410

/-- `A045309(n+2)` -/
def P1445610236481228081.Spec : Prop :=
  ∀ n, P1445610236481228081.a n = A045410 (n + 1)

end A045410

/-! ## A045410.P17812328840732464989

`A003627(n+1)+A045331(n+2)-A045375(n+1)`
-/

namespace A045410.P17812328840732464989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1) + (A045331 (n + 2) - A045375 (n + 1))

end

end A045410.P17812328840732464989

namespace A045410

/-- `A003627(n+1)+A045331(n+2)-A045375(n+1)` -/
def P17812328840732464989.Spec : Prop :=
  ∀ n, P17812328840732464989.a n = A045410 (n + 1)

end A045410

/-! ## A045410.P16192280748420827917

`A003627(n+1)+A133677(n+2)-A091177(n+1)`
-/

namespace A045410.P16192280748420827917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1) + (A133677 (n + 2) - A091177 (n + 1))

end

end A045410.P16192280748420827917

namespace A045410

/-- `A003627(n+1)+A133677(n+2)-A091177(n+1)` -/
def P16192280748420827917.Spec : Prop :=
  ∀ n, P16192280748420827917.a n = A045410 (n + 1)

end A045410

/-! ## A045410.P15351248823966643493

`p?[lcm(3, n+1)-n]`
-/

namespace A045410.P15351248823966643493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 (n + 1) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045410.P15351248823966643493

namespace A045410

/-- `p?[lcm(3, n+1)-n]` -/
def P15351248823966643493.Spec : Prop :=
  ∀ n, P15351248823966643493.a n = A045410 (n + 1)

end A045410

/-! ## A045410.P4239903968109013425

`p?[gcd(9, n)+2*n]`
-/

namespace A045410.P4239903968109013425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 9 n + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045410.P4239903968109013425

namespace A045410

/-- `p?[gcd(9, n)+2*n]` -/
def P4239903968109013425.Spec : Prop :=
  ∀ n, (P4239903968109013425.a n : ℤ) = A045410 (n + 1)

end A045410

/-! ## A045410.P15305224012370131901

`p?[2*n-gcd(6, n-1)]`
-/

namespace A045410.P15305224012370131901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (Int.gcd 6 ((n : ℤ) - 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045410.P15305224012370131901

namespace A045410

/-- `p?[2*n-gcd(6, n-1)]` -/
def P15305224012370131901.Spec : Prop :=
  ∀ n, P15305224012370131901.a n = A045410 (n + 1)

end A045410

/-! ## A045410.P2949165757877890256

`record[A323704(n+2)]`
-/

namespace A045410.P2949165757877890256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323704 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045410.P2949165757877890256

namespace A045410

/-- `record[A323704(n+2)]` -/
def P2949165757877890256.Spec : Prop :=
  ∀ n, P2949165757877890256.a n = A045410 (n + 1)

end A045410

/-!
# A045411: Primes congruent to {1, 3, 5, 6} mod 7.

The programs for A045411, the canonical program `A045411.P11998876206122543832` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045411 has offset 1).

The definition of A045411 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A045411.anchor (n : ℕ) (hn : 1 ≤ n) : A045411 n = (Nat.nth (fun p => p.Prime ∧ p % 7 ∈ ({1, 3, 5, 6} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A045.A045411`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A045411.P8320962379884667082

`p?[floor(cot(4/(7*(n+1))))]`
-/

namespace A045411.P8320962379884667082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (4 / (7 * (n + 1) : ℚ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045411.P8320962379884667082

namespace A045411

/-- `p?[floor(cot(4/(7*(n+1))))]` -/
def P8320962379884667082.Spec : Prop :=
  ∀ n, P8320962379884667082.a n = A045411 (n + 1)

end A045411

/-! ## A045411.P11998876206122543832

`p?[a(n-4)+7]` with `a(0)=1, a(1)=3, a(2)=5, a(3)=6`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045411

/-- `p?[a(n-4)+7]` -/
def P11998876206122543832.Spec : Prop :=
  ∀ n, (P11998876206122543832.a n : ℤ) = A045411 (n + 1)

theorem P11998876206122543832.correct : P11998876206122543832.Spec := by
  intro n
  simp only [A045411, Nat.add_sub_cancel]

end A045411

/-! ## A045411.P4262310927161629805

`∪[A045415(n+1), A003625(n+1)]`
-/

namespace A045411.P4262310927161629805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045411.P4262310927161629805

namespace A045411

/-- `∪[A045415(n+1), A003625(n+1)]` -/
def P4262310927161629805.Spec : Prop :=
  ∀ n, (P4262310927161629805.a n : ℤ) = A045411 (n + 1)

end A045411

/-! ## A045411.P11882896608982272715

`∪[A003625(n+1), A045433(n+1)]`
-/

namespace A045411.P11882896608982272715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045411.P11882896608982272715

namespace A045411

/-- `∪[A003625(n+1), A045433(n+1)]` -/
def P11882896608982272715.Spec : Prop :=
  ∀ n, (P11882896608982272715.a n : ℤ) = A045411 (n + 1)

end A045411

/-! ## A045411.P6137518271816216688

`∪[A045454(n+1), A003625(n+1)]`
-/

namespace A045411.P6137518271816216688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045411.P6137518271816216688

namespace A045411

/-- `∪[A045454(n+1), A003625(n+1)]` -/
def P6137518271816216688.Spec : Prop :=
  ∀ n, (P6137518271816216688.a n : ℤ) = A045411 (n + 1)

end A045411

/-! ## A045411.P15275011483621676504

`∪[A045415(n+1), A045455(n+1)]`
-/

namespace A045411.P15275011483621676504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045411.P15275011483621676504

namespace A045411

/-- `∪[A045415(n+1), A045455(n+1)]` -/
def P15275011483621676504.Spec : Prop :=
  ∀ n, (P15275011483621676504.a n : ℤ) = A045411 (n + 1)

end A045411

/-! ## A045411.P3846971209971590497

`A045398(A326178(n+1))`
-/

namespace A045411.P3846971209971590497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045398 (A326178 (n + 1)).toNat

end

end A045411.P3846971209971590497

namespace A045411

/-- `A045398(A326178(n+1))` -/
def P3846971209971590497.Spec : Prop :=
  ∀ n, P3846971209971590497.a n = A045411 (n + 1)

end A045411

/-! ## A045411.P1654853418428833221

`∩[A045311(n+1), A045398(n+1)]`
-/

namespace A045411.P1654853418428833221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045411.P1654853418428833221

namespace A045411

/-- `∩[A045311(n+1), A045398(n+1)]` -/
def P1654853418428833221.Spec : Prop :=
  ∀ n, (P1654853418428833221.a n : ℤ) = A045411 (n + 1)

end A045411

/-! ## A045411.P1703072648278443201

`∩[A045311(n+1), A045402(n+1)]`
-/

namespace A045411.P1703072648278443201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045411.P1703072648278443201

namespace A045411

/-- `∩[A045311(n+1), A045402(n+1)]` -/
def P1703072648278443201.Spec : Prop :=
  ∀ n, (P1703072648278443201.a n : ℤ) = A045411 (n + 1)

end A045411

/-! ## A045411.P3787725809223478248

`∩[A045398(n+1), A045402(n+1)]`
-/

namespace A045411.P3787725809223478248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045411.P3787725809223478248

namespace A045411

/-- `∩[A045398(n+1), A045402(n+1)]` -/
def P3787725809223478248.Spec : Prop :=
  ∀ n, (P3787725809223478248.a n : ℤ) = A045411 (n + 1)

end A045411

/-! ## A045411.P4934458028572523178

`∩[A045402(n+1), A042990(n)]`
-/

namespace A045411.P4934458028572523178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045411.P4934458028572523178

namespace A045411

/-- `∩[A045402(n+1), A042990(n)]` -/
def P4934458028572523178.Spec : Prop :=
  ∀ n, (P4934458028572523178.a n : ℤ) = A045411 (n + 1)

end A045411

/-! ## A045411.P9819505803473713034

`∩[A045311(n+1), A045393(n+1)]`
-/

namespace A045411.P9819505803473713034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045411.P9819505803473713034

namespace A045411

/-- `∩[A045311(n+1), A045393(n+1)]` -/
def P9819505803473713034.Spec : Prop :=
  ∀ n, (P9819505803473713034.a n : ℤ) = A045411 (n + 1)

end A045411

/-! ## A045411.P12207526919201400627

`p?[gcd(n, ((n+1)%7)%2)]`
-/

namespace A045411.P12207526919201400627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n ((n + 1) % 7 % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045411.P12207526919201400627

namespace A045411

/-- `p?[gcd(n, ((n+1)%7)%2)]` -/
def P12207526919201400627.Spec : Prop :=
  ∀ n, (P12207526919201400627.a n : ℤ) = A045411 (n + 1)

end A045411

/-! ## A045411.P10485908947543414022

`p?[2*A047279(n+1)+1]`
-/

namespace A045411.P10485908947543414022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047279 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045411.P10485908947543414022

namespace A045411

/-- `p?[2*A047279(n+1)+1]` -/
def P10485908947543414022.Spec : Prop :=
  ∀ n, P10485908947543414022.a n = A045411 (n + 1)

end A045411

/-! ## A045411.P2109983597334655187

`p?[2*A047361(n+1)-1]`
-/

namespace A045411.P2109983597334655187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047361 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045411.P2109983597334655187

namespace A045411

/-- `p?[2*A047361(n+1)-1]` -/
def P2109983597334655187.Spec : Prop :=
  ∀ n, P2109983597334655187.a n = A045411 (n + 1)

end A045411

/-! ## A045411.P13811588815170969035

`p?[∑[A010125(n+2)]]`
-/

namespace A045411.P13811588815170969035
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010125 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045411.P13811588815170969035

namespace A045411

/-- `p?[∑[A010125(n+2)]]` -/
def P13811588815170969035.Spec : Prop :=
  ∀ n, P13811588815170969035.a n = A045411 (n + 1)

end A045411

/-! ## A045411.P43149040738230724

`p?[A047450(n+2)+n]`
-/

namespace A045411.P43149040738230724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047450 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045411.P43149040738230724

namespace A045411

/-- `p?[A047450(n+2)+n]` -/
def P43149040738230724.Spec : Prop :=
  ∀ n, P43149040738230724.a n = A045411 (n + 1)

end A045411

/-! ## A045411.P5973440992239156566

`p?[∑[A076840(n+2)]+2]`
-/

namespace A045411.P5973440992239156566
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076840 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045411.P5973440992239156566

namespace A045411

/-- `p?[∑[A076840(n+2)]+2]` -/
def P5973440992239156566.Spec : Prop :=
  ∀ n, P5973440992239156566.a n = A045411 (n + 1)

end A045411

/-! ## A045411.P16722463863976303172

`p?[A047498(n+1)+1+n]`
-/

namespace A045411.P16722463863976303172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047498 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045411.P16722463863976303172

namespace A045411

/-- `p?[A047498(n+1)+1+n]` -/
def P16722463863976303172.Spec : Prop :=
  ∀ n, P16722463863976303172.a n = A045411 (n + 1)

end A045411

/-! ## A045411.P13009310737799591281

`p?[A047519(n+1)-2+n]`
-/

namespace A045411.P13009310737799591281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047519 (n + 1) - 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045411.P13009310737799591281

namespace A045411

/-- `p?[A047519(n+1)-2+n]` -/
def P13009310737799591281.Spec : Prop :=
  ∀ n, P13009310737799591281.a n = A045411 (n + 1)

end A045411

/-!
# A045412: a(1)=3; for n > 1, a(n) = a(n-1) + 1 if n is already in the sequence, a(n) = a(n-1) + 3 otherwise.

The programs for A045412, the canonical program `A045412.P17699345519846233104` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045412 has offset 1).

The definition of A045412 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045412.P7748603802695766570

`comp[a(n-1)+val(n, 2)]` with `a(0)=0, a(1)=1`
-/

namespace A045412.P7748603802695766570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + SequenceMachineLib.valuation n 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A045412.P7748603802695766570

namespace A045412

/-- `comp[a(n-1)+val(n, 2)]` -/
def P7748603802695766570.Spec : Prop :=
  ∀ n, (P7748603802695766570.a n : ℤ) = A045412 (n + 1)

end A045412

/-! ## A045412.P3513986542213638315

`comp[a(floor(n/2))+n]+1` with `a(0)=0`
-/

namespace A045412.P3513986542213638315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A045412.P3513986542213638315

namespace A045412

/-- `comp[a(floor(n/2))+n]+1` -/
def P3513986542213638315.Spec : Prop :=
  ∀ n, (P3513986542213638315.a n : ℤ) = A045412 (n + 1)

end A045412

/-! ## A045412.P12057789424414222551

`comp[A005187(n)]+1`
-/

namespace A045412.P12057789424414222551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A045412.P12057789424414222551

namespace A045412

/-- `comp[A005187(n)]+1` -/
def P12057789424414222551.Spec : Prop :=
  ∀ n, (P12057789424414222551.a n : ℤ) = A045412 (n + 1)

end A045412

/-! ## A045412.P7654877487145497370

`A055938(n+1)+1`
-/

namespace A045412.P7654877487145497370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055938 (n + 1) + 1

end

end A045412.P7654877487145497370

namespace A045412

/-- `A055938(n+1)+1` -/
def P7654877487145497370.Spec : Prop :=
  ∀ n, P7654877487145497370.a n = A045412 (n + 1)

theorem P7654877487145497370.correct : P7654877487145497370.Spec := by
  intro n
  simp only [A045412, Nat.add_sub_cancel, A045412.P7654877487145497370.a, A045412.P17699345519846233104.f1, A045412.P17699345519846233104.a, A055938, A055938.P11436454756649086681.a, A079559, A079559.P6833565121082423031.a, A043545, A043545.P6199121594405564387.a, A053644, A053644.P1707366427427647095.a, A036987, A036987.P1789601236562705309.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A045412

/-! ## A045412.P17699345519846233104

`∑[2*A079559(n)+1]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A045412

/-- `∑[2*A079559(n)+1]` -/
def P17699345519846233104.Spec : Prop :=
  ∀ n, P17699345519846233104.a n = A045412 (n + 1)

theorem P17699345519846233104.correct : P17699345519846233104.Spec := by
  intro n
  simp only [A045412, Nat.add_sub_cancel]

end A045412

/-! ## A045412.P3887410858078189504

`Δ[A029715(n)]+1+n`
-/

namespace A045412.P3887410858078189504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1 + (n : ℤ)

end

end A045412.P3887410858078189504

namespace A045412

/-- `Δ[A029715(n)]+1+n` -/
def P3887410858078189504.Spec : Prop :=
  ∀ n, P3887410858078189504.a n = A045412 (n + 1)

end A045412

/-! ## A045412.P2077912949058712686

`lt[1, A082850(n+1)]+1`
-/

namespace A045412.P2077912949058712686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082850 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A045412.P2077912949058712686

namespace A045412

/-- `lt[1, A082850(n+1)]+1` -/
def P2077912949058712686.Spec : Prop :=
  ∀ n, (P2077912949058712686.a n : ℤ) = A045412 (n + 1)

end A045412

/-! ## A045412.P10779856826506266705

`A279340(n)+a(n-1)` with `a(0)=3`
-/

namespace A045412.P10779856826506266705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A279340 n + a (n - 1)

end

end A045412.P10779856826506266705

namespace A045412

/-- `A279340(n)+a(n-1)` -/
def P10779856826506266705.Spec : Prop :=
  ∀ n, P10779856826506266705.a n = A045412 (n + 1)

end A045412

/-! ## A045412.P10795862472872762629

`A100661(n+1)+2*(n+1)`
-/

namespace A045412.P10795862472872762629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100661 (n + 1) + (2 * (n + 1) : ℤ)

end

end A045412.P10795862472872762629

namespace A045412

/-- `A100661(n+1)+2*(n+1)` -/
def P10795862472872762629.Spec : Prop :=
  ∀ n, P10795862472872762629.a n = A045412 (n + 1)

end A045412

/-! ## A045412.P1342404502631047628

`2*A046699(n+2)+n+1`
-/

namespace A045412.P1342404502631047628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046699 (n + 2) + (n + 1 : ℤ)

end

end A045412.P1342404502631047628

namespace A045412

/-- `2*A046699(n+2)+n+1` -/
def P1342404502631047628.Spec : Prop :=
  ∀ n, P1342404502631047628.a n = A045412 (n + 1)

end A045412

/-! ## A045412.P2722551650328949761

`A144396(n+1)+A080468(n+2)`
-/

namespace A045412.P2722551650328949761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1) + A080468 (n + 2)

end

end A045412.P2722551650328949761

namespace A045412

/-- `A144396(n+1)+A080468(n+2)` -/
def P2722551650328949761.Spec : Prop :=
  ∀ n, P2722551650328949761.a n = A045412 (n + 1)

end A045412

/-! ## A045412.P4315985022117117192

`A080578(n+1)+2*A079559(n)`
-/

namespace A045412.P4315985022117117192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080578 (n + 1) + 2 * A079559 n

end

end A045412.P4315985022117117192

namespace A045412

/-- `A080578(n+1)+2*A079559(n)` -/
def P4315985022117117192.Spec : Prop :=
  ∀ n, P4315985022117117192.a n = A045412 (n + 1)

end A045412

/-! ## A045412.P3999074861022276073

`A080578(n+2)-1`
-/

namespace A045412.P3999074861022276073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080578 (n + 2) - 1

end

end A045412.P3999074861022276073

namespace A045412

/-- `A080578(n+2)-1` -/
def P3999074861022276073.Spec : Prop :=
  ∀ n, P3999074861022276073.a n = A045412 (n + 1)

end A045412

/-! ## A045412.P16400441511621395745

`A007843(n+1)+1+n`
-/

namespace A045412.P16400441511621395745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007843 (n + 1) + 1 + (n : ℤ)

end

end A045412.P16400441511621395745

namespace A045412

/-- `A007843(n+1)+1+n` -/
def P16400441511621395745.Spec : Prop :=
  ∀ n, P16400441511621395745.a n = A045412 (n + 1)

end A045412

/-! ## A045412.P9010626402412368690

`2*A288934(n+2)-(n+3)`
-/

namespace A045412.P9010626402412368690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A288934 (n + 2) - (n + 3 : ℤ)

end

end A045412.P9010626402412368690

namespace A045412

/-- `2*A288934(n+2)-(n+3)` -/
def P9010626402412368690.Spec : Prop :=
  ∀ n, P9010626402412368690.a n = A045412 (n + 1)

end A045412

/-! ## A045412.P10078660112625126755

`A065190(A007843(n+1))+n`
-/

namespace A045412.P10078660112625126755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (A007843 (n + 1)).toNat + (n : ℤ)

end

end A045412.P10078660112625126755

namespace A045412

/-- `A065190(A007843(n+1))+n` -/
def P10078660112625126755.Spec : Prop :=
  ∀ n, P10078660112625126755.a n = A045412 (n + 1)

end A045412

/-! ## A045412.P676468353350601400

`eq[0, A257265(n)]+1`
-/

namespace A045412.P676468353350601400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257265 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A045412.P676468353350601400

namespace A045412

/-- `eq[0, A257265(n)]+1` -/
def P676468353350601400.Spec : Prop :=
  ∀ n, (P676468353350601400.a n : ℤ) = A045412 (n + 1)

end A045412

/-! ## A045412.P8903737146278161672

`eq[1, A213725(n)]+1`
-/

namespace A045412.P8903737146278161672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A045412.P8903737146278161672

namespace A045412

/-- `eq[1, A213725(n)]+1` -/
def P8903737146278161672.Spec : Prop :=
  ∀ n, (P8903737146278161672.a n : ℤ) = A045412 (n + 1)

end A045412

/-!
# A045413: Primes congruent to {0, 3, 4} mod 5.

The programs for A045413, the canonical program `A045413.P11718784102126598698` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045413 has offset 1).

The definition of A045413 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045413.P9967152622630055657

`∪[A005473(n+1), A045435(n+1)]`
-/

namespace A045413.P9967152622630055657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045413.P9967152622630055657

namespace A045413

/-- `∪[A005473(n+1), A045435(n+1)]` -/
def P9967152622630055657.Spec : Prop :=
  ∀ n, (P9967152622630055657.a n : ℤ) = A045413 (n + 1)

end A045413

/-! ## A045413.P12614767224930791932

`∪[A020462(n+1), A045435(n+1)]`
-/

namespace A045413.P12614767224930791932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045413.P12614767224930791932

namespace A045413

/-- `∪[A020462(n+1), A045435(n+1)]` -/
def P12614767224930791932.Spec : Prop :=
  ∀ n, (P12614767224930791932.a n : ℤ) = A045413 (n + 1)

end A045413

/-! ## A045413.P10298589639899720189

`∪[A020468(n+1), A045435(n+1)]`
-/

namespace A045413.P10298589639899720189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045413.P10298589639899720189

namespace A045413

/-- `∪[A020468(n+1), A045435(n+1)]` -/
def P10298589639899720189.Spec : Prop :=
  ∀ n, (P10298589639899720189.a n : ℤ) = A045413 (n + 1)

end A045413

/-! ## A045413.P11718784102126598698

`∪[A023247(n+1), A045435(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A045413

/-- `∪[A023247(n+1), A045435(n+1)]` -/
def P11718784102126598698.Spec : Prop :=
  ∀ n, (P11718784102126598698.a n : ℤ) = A045413 (n + 1)

theorem P11718784102126598698.correct : P11718784102126598698.Spec := by
  intro n
  simp only [A045413, Nat.add_sub_cancel]

end A045413

/-! ## A045413.P10871868266974650954

`∪[A023275(n+1), A045435(n+1)]`
-/

namespace A045413.P10871868266974650954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023275 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045413.P10871868266974650954

namespace A045413

/-- `∪[A023275(n+1), A045435(n+1)]` -/
def P10871868266974650954.Spec : Prop :=
  ∀ n, (P10871868266974650954.a n : ℤ) = A045413 (n + 1)

end A045413

/-! ## A045413.P5255980464418845233

`∪[A027753(n+1), A045435(n+1)]`
-/

namespace A045413.P5255980464418845233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045413.P5255980464418845233

namespace A045413

/-- `∪[A027753(n+1), A045435(n+1)]` -/
def P5255980464418845233.Spec : Prop :=
  ∀ n, (P5255980464418845233.a n : ℤ) = A045413 (n + 1)

end A045413

/-! ## A045413.P12634729360492552761

`∪[A030433(n+1), A045414(n+1)]`
-/

namespace A045413.P12634729360492552761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045413.P12634729360492552761

namespace A045413

/-- `∪[A030433(n+1), A045414(n+1)]` -/
def P12634729360492552761.Spec : Prop :=
  ∀ n, (P12634729360492552761.a n : ℤ) = A045413 (n + 1)

end A045413

/-! ## A045413.P5832102442744094286

`∪[A030431(n+1), A045457(n+1)]`
-/

namespace A045413.P5832102442744094286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045413.P5832102442744094286

namespace A045413

/-- `∪[A030431(n+1), A045457(n+1)]` -/
def P5832102442744094286.Spec : Prop :=
  ∀ n, (P5832102442744094286.a n : ℤ) = A045413 (n + 1)

end A045413

/-! ## A045413.P3620692692431947961

`∪[A045414(n+1), A045435(n+1)]`
-/

namespace A045413.P3620692692431947961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045413.P3620692692431947961

namespace A045413

/-- `∪[A045414(n+1), A045435(n+1)]` -/
def P3620692692431947961.Spec : Prop :=
  ∀ n, (P3620692692431947961.a n : ℤ) = A045413 (n + 1)

end A045413

/-! ## A045413.P4797765405711313455

`∪[A045414(n+1), A045457(n+1)]`
-/

namespace A045413.P4797765405711313455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045413.P4797765405711313455

namespace A045413

/-- `∪[A045414(n+1), A045457(n+1)]` -/
def P4797765405711313455.Spec : Prop :=
  ∀ n, (P4797765405711313455.a n : ℤ) = A045413 (n + 1)

end A045413

/-! ## A045413.P12748225823997725584

`∪[A045435(n+1), A045457(n+1)]`
-/

namespace A045413.P12748225823997725584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045413.P12748225823997725584

namespace A045413

/-- `∪[A045435(n+1), A045457(n+1)]` -/
def P12748225823997725584.Spec : Prop :=
  ∀ n, (P12748225823997725584.a n : ℤ) = A045413 (n + 1)

end A045413

/-! ## A045413.P171182810946437339

`∪[A067256(n+1), A045435(n+1)]`
-/

namespace A045413.P171182810946437339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045413.P171182810946437339

namespace A045413

/-- `∪[A067256(n+1), A045435(n+1)]` -/
def P171182810946437339.Spec : Prop :=
  ∀ n, (P171182810946437339.a n : ℤ) = A045413 (n + 1)

end A045413

/-! ## A045413.P15436972661343239456

`∪[A260223(n+1), A045435(n+1)]`
-/

namespace A045413.P15436972661343239456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045413.P15436972661343239456

namespace A045413

/-- `∪[A260223(n+1), A045435(n+1)]` -/
def P15436972661343239456.Spec : Prop :=
  ∀ n, (P15436972661343239456.a n : ℤ) = A045413 (n + 1)

end A045413

/-! ## A045413.P11161223587299598242

`p?[a(n-3)+5]` with `a(0)=0, a(1)=3, a(2)=4`
-/

namespace A045413.P11161223587299598242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 4] fun n f1 =>
  f1 (n - 3) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045413.P11161223587299598242

namespace A045413

/-- `p?[a(n-3)+5]` -/
def P11161223587299598242.Spec : Prop :=
  ∀ n, (P11161223587299598242.a n : ℤ) = A045413 (n + 1)

end A045413

/-! ## A045413.P9523780374157637567

`p?[ogf((3x+x^2+x^3)/(1-x-x^3+x^4))]`
-/

namespace A045413.P9523780374157637567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 1, 1] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045413.P9523780374157637567

namespace A045413

/-- `p?[ogf((3x+x^2+x^3)/(1-x-x^3+x^4))]` -/
def P9523780374157637567.Spec : Prop :=
  ∀ n, P9523780374157637567.a n = A045413 (n + 1)

end A045413

/-! ## A045413.P16090511777864816393

`∩[A042991(n+1), A045405(n+1)]`
-/

namespace A045413.P16090511777864816393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045413.P16090511777864816393

namespace A045413

/-- `∩[A042991(n+1), A045405(n+1)]` -/
def P16090511777864816393.Spec : Prop :=
  ∀ n, (P16090511777864816393.a n : ℤ) = A045413 (n + 1)

end A045413

/-! ## A045413.P6634081920322098161

`p?[A005843(ceil(n/3))+n]`
-/

namespace A045413.P6634081920322098161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 ⌈(n : ℚ) / 3⌉.toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045413.P6634081920322098161

namespace A045413

/-- `p?[A005843(ceil(n/3))+n]` -/
def P6634081920322098161.Spec : Prop :=
  ∀ n, P6634081920322098161.a n = A045413 (n + 1)

end A045413

/-! ## A045413.P3814558695380283673

`p?[A075123(n+1)+n]`
-/

namespace A045413.P3814558695380283673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075123 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045413.P3814558695380283673

namespace A045413

/-- `p?[A075123(n+1)+n]` -/
def P3814558695380283673.Spec : Prop :=
  ∀ n, P3814558695380283673.a n = A045413 (n + 1)

end A045413

/-! ## A045413.P16135476804517136708

`p?[∑[gcd(3, ∑[n])]+n]`
-/

namespace A045413.P16135476804517136708
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045413.P16135476804517136708

namespace A045413

/-- `p?[∑[gcd(3, ∑[n])]+n]` -/
def P16135476804517136708.Spec : Prop :=
  ∀ n, (P16135476804517136708.a n : ℤ) = A045413 (n + 1)

end A045413

/-! ## A045413.P8682916546171197218

`p?[Δ[A398203(n)]]`
-/

namespace A045413.P8682916546171197218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398203 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045413.P8682916546171197218

namespace A045413

/-- `p?[Δ[A398203(n)]]` -/
def P8682916546171197218.Spec : Prop :=
  ∀ n, P8682916546171197218.a n = A045413 (n + 1)

end A045413

/-!
# A045414: Primes congruent to {0, 3} mod 5.

The programs for A045414, the canonical program `A045414.P1788846652987021577` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045414 has offset 1).

The definition of A045414 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5521 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045414.P6449453769165879687

`∪[A020462(n+1), A030431(n+1)]`
-/

namespace A045414.P6449453769165879687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045414.P6449453769165879687

namespace A045414

/-- `∪[A020462(n+1), A030431(n+1)]` -/
def P6449453769165879687.Spec : Prop :=
  ∀ n, (P6449453769165879687.a n : ℤ) = A045414 (n + 1)

end A045414

/-! ## A045414.P548026742229619220

`∪[A023275(n+1), A030431(n+1)]`
-/

namespace A045414.P548026742229619220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023275 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045414.P548026742229619220

namespace A045414

/-- `∪[A023275(n+1), A030431(n+1)]` -/
def P548026742229619220.Spec : Prop :=
  ∀ n, (P548026742229619220.a n : ℤ) = A045414 (n + 1)

end A045414

/-! ## A045414.P3028403286994821776

`∪[A030431(n+1), A138584(n+1)]`
-/

namespace A045414.P3028403286994821776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045414.P3028403286994821776

namespace A045414

/-- `∪[A030431(n+1), A138584(n+1)]` -/
def P3028403286994821776.Spec : Prop :=
  ∀ n, (P3028403286994821776.a n : ℤ) = A045414 (n + 1)

end A045414

/-! ## A045414.P4581488108226650109

`∪[A260223(n+1), A030431(n+1)]`
-/

namespace A045414.P4581488108226650109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045414.P4581488108226650109

namespace A045414

/-- `∪[A260223(n+1), A030431(n+1)]` -/
def P4581488108226650109.Spec : Prop :=
  ∀ n, (P4581488108226650109.a n : ℤ) = A045414 (n + 1)

end A045414

/-! ## A045414.P10094291887263163957

`p?[ogf((3x+x^2+x^3+5x^4)/(1-x-x^3+x^4))]`
-/

namespace A045414.P10094291887263163957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 1, 1, 5] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045414.P10094291887263163957

namespace A045414

/-- `p?[ogf((3x+x^2+x^3+5x^4)/(1-x-x^3+x^4))]` -/
def P10094291887263163957.Spec : Prop :=
  ∀ n, P10094291887263163957.a n = A045414 (n + 1)

end A045414

/-! ## A045414.P1788846652987021577

`p?[ceil(5*n/2)]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045414

/-- `p?[ceil(5*n/2)]` -/
def P1788846652987021577.Spec : Prop :=
  ∀ n, P1788846652987021577.a n = A045414 (n + 1)

theorem P1788846652987021577.correct : P1788846652987021577.Spec := by
  intro n
  simp only [A045414, Nat.add_sub_cancel]

end A045414

/-! ## A045414.P7851102386040153796

`or(1, p?[a(n-2)+5])` with `a(0)=0, a(1)=3`
-/

namespace A045414.P7851102386040153796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  f1 (n - 2) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A045414.P7851102386040153796

namespace A045414

/-- `or(1, p?[a(n-2)+5])` -/
def P7851102386040153796.Spec : Prop :=
  ∀ n, (P7851102386040153796.a n : ℤ) = A045414 (n + 1)

end A045414

/-! ## A045414.P4802640436704862151

`∩[A045407(n+1), A045413(n+1)]`
-/

namespace A045414.P4802640436704862151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045414.P4802640436704862151

namespace A045414

/-- `∩[A045407(n+1), A045413(n+1)]` -/
def P4802640436704862151.Spec : Prop :=
  ∀ n, (P4802640436704862151.a n : ℤ) = A045414 (n + 1)

end A045414

/-! ## A045414.P3592106975427728563

`∩[A042993(n+1), A045407(n+1)]`
-/

namespace A045414.P3592106975427728563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045414.P3592106975427728563

namespace A045414

/-- `∩[A042993(n+1), A045407(n+1)]` -/
def P3592106975427728563.Spec : Prop :=
  ∀ n, (P3592106975427728563.a n : ℤ) = A045414 (n + 1)

end A045414

/-! ## A045414.P2014722239325233243

`∩[A042993(n+1), A045413(n+1)]`
-/

namespace A045414.P2014722239325233243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045414.P2014722239325233243

namespace A045414

/-- `∩[A042993(n+1), A045413(n+1)]` -/
def P2014722239325233243.Spec : Prop :=
  ∀ n, (P2014722239325233243.a n : ℤ) = A045414 (n + 1)

end A045414

/-! ## A045414.P11681281856523372980

`∩[A045407(n+1), A140971(n+1)]`
-/

namespace A045414.P11681281856523372980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045414.P11681281856523372980

namespace A045414

/-- `∩[A045407(n+1), A140971(n+1)]` -/
def P11681281856523372980.Spec : Prop :=
  ∀ n, (P11681281856523372980.a n : ℤ) = A045414 (n + 1)

end A045414

/-! ## A045414.P3159461749679692494

`∩[A045413(n+1), A140971(n+1)]`
-/

namespace A045414.P3159461749679692494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045414.P3159461749679692494

namespace A045414

/-- `∩[A045413(n+1), A140971(n+1)]` -/
def P3159461749679692494.Spec : Prop :=
  ∀ n, (P3159461749679692494.a n : ℤ) = A045414 (n + 1)

end A045414

/-! ## A045414.P11604702397819045339

`∩[A042993(n+1), A045405(n+1)]`
-/

namespace A045414.P11604702397819045339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045414.P11604702397819045339

namespace A045414

/-- `∩[A042993(n+1), A045405(n+1)]` -/
def P11604702397819045339.Spec : Prop :=
  ∀ n, (P11604702397819045339.a n : ℤ) = A045414 (n + 1)

end A045414

/-! ## A045414.P623596676348914179

`∩[A045405(n+1), A140971(n+1)]`
-/

namespace A045414.P623596676348914179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045414.P623596676348914179

namespace A045414

/-- `∩[A045405(n+1), A140971(n+1)]` -/
def P623596676348914179.Spec : Prop :=
  ∀ n, (P623596676348914179.a n : ℤ) = A045414 (n + 1)

end A045414

/-! ## A045414.P11213612713746898782

`∩[A042991(n+1), A045407(n+1)]`
-/

namespace A045414.P11213612713746898782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045414.P11213612713746898782

namespace A045414

/-- `∩[A042991(n+1), A045407(n+1)]` -/
def P11213612713746898782.Spec : Prop :=
  ∀ n, (P11213612713746898782.a n : ℤ) = A045414 (n + 1)

end A045414

/-! ## A045414.P6122365409472334418

`∩[A042986(n+1), A045413(n+1)]`
-/

namespace A045414.P6122365409472334418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045414.P6122365409472334418

namespace A045414

/-- `∩[A042986(n+1), A045413(n+1)]` -/
def P6122365409472334418.Spec : Prop :=
  ∀ n, (P6122365409472334418.a n : ℤ) = A045414 (n + 1)

end A045414

/-! ## A045414.P3833402092128357966

`A000040(A244739(n+1))`
-/

namespace A045414.P3833402092128357966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A244739 (n + 1)).toNat

end

end A045414.P3833402092128357966

namespace A045414

/-- `A000040(A244739(n+1))` -/
def P3833402092128357966.Spec : Prop :=
  ∀ n, P3833402092128357966.a n = A045414 (n + 1)

end A045414

/-! ## A045414.P7104327874511732669

`∩[A045405(n+1), A063241(n+1)]`
-/

namespace A045414.P7104327874511732669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045414.P7104327874511732669

namespace A045414

/-- `∩[A045405(n+1), A063241(n+1)]` -/
def P7104327874511732669.Spec : Prop :=
  ∀ n, (P7104327874511732669.a n : ℤ) = A045414 (n + 1)

end A045414

/-! ## A045414.P8569562670775070462

`∩[A045407(n+1), A063241(n+1)]`
-/

namespace A045414.P8569562670775070462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045414.P8569562670775070462

namespace A045414

/-- `∩[A045407(n+1), A063241(n+1)]` -/
def P8569562670775070462.Spec : Prop :=
  ∀ n, (P8569562670775070462.a n : ℤ) = A045414 (n + 1)

end A045414

/-! ## A045414.P710268706111416061

`∩[A045413(n+1), A063241(n+1)]`
-/

namespace A045414.P710268706111416061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045414.P710268706111416061

namespace A045414

/-- `∩[A045413(n+1), A063241(n+1)]` -/
def P710268706111416061.Spec : Prop :=
  ∀ n, (P710268706111416061.a n : ℤ) = A045414 (n + 1)

end A045414

/-!
# A045415: Primes congruent to {1, 3, 5} mod 7.

The programs for A045415, the canonical program `A045415.P10655368278432645490` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045415 has offset 1).

The definition of A045415 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A045415.anchor (n : ℕ) (hn : 1 ≤ n) : A045415 n = (Nat.nth (fun p => p.Prime ∧ p % 7 ∈ ({1, 3, 5} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A045.A045415`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A045415.P10655368278432645490

`p?[a(n-3)+7]` with `a(0)=1, a(1)=3, a(2)=5`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045415

/-- `p?[a(n-3)+7]` -/
def P10655368278432645490.Spec : Prop :=
  ∀ n, (P10655368278432645490.a n : ℤ) = A045415 (n + 1)

theorem P10655368278432645490.correct : P10655368278432645490.Spec := by
  intro n
  simp only [A045415, Nat.add_sub_cancel]

end A045415

/-! ## A045415.P16909218613321408226

`p?[ogf((1+2x+2x^2+2x^3)/(1-x-x^3+x^4))]`
-/

namespace A045415.P16909218613321408226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 2, 2] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045415.P16909218613321408226

namespace A045415

/-- `p?[ogf((1+2x+2x^2+2x^3)/(1-x-x^3+x^4))]` -/
def P16909218613321408226.Spec : Prop :=
  ∀ n, P16909218613321408226.a n = A045415 (n + 1)

end A045415

/-! ## A045415.P11902849682770066163

`∪[A045437(n+1), A045456(n+1)]`
-/

namespace A045415.P11902849682770066163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045456 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045415.P11902849682770066163

namespace A045415

/-- `∪[A045437(n+1), A045456(n+1)]` -/
def P11902849682770066163.Spec : Prop :=
  ∀ n, (P11902849682770066163.a n : ℤ) = A045415 (n + 1)

end A045415

/-! ## A045415.P7077133763334225465

`A045400(A326178(n+1))`
-/

namespace A045415.P7077133763334225465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045400 (A326178 (n + 1)).toNat

end

end A045415.P7077133763334225465

namespace A045415

/-- `A045400(A326178(n+1))` -/
def P7077133763334225465.Spec : Prop :=
  ∀ n, P7077133763334225465.a n = A045415 (n + 1)

end A045415

/-! ## A045415.P4921369834839312901

`∩[A045400(n+1), A045408(n+1)]`
-/

namespace A045415.P4921369834839312901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045415.P4921369834839312901

namespace A045415

/-- `∩[A045400(n+1), A045408(n+1)]` -/
def P4921369834839312901.Spec : Prop :=
  ∀ n, (P4921369834839312901.a n : ℤ) = A045415 (n + 1)

end A045415

/-! ## A045415.P5144887369231757244

`∩[A045313(n+1), A045396(n+1)]`
-/

namespace A045415.P5144887369231757244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045415.P5144887369231757244

namespace A045415

/-- `∩[A045313(n+1), A045396(n+1)]` -/
def P5144887369231757244.Spec : Prop :=
  ∀ n, (P5144887369231757244.a n : ℤ) = A045415 (n + 1)

end A045415

/-! ## A045415.P13319174628985755557

`∩[A045313(n+1), A045400(n+1)]`
-/

namespace A045415.P13319174628985755557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045415.P13319174628985755557

namespace A045415

/-- `∩[A045313(n+1), A045400(n+1)]` -/
def P13319174628985755557.Spec : Prop :=
  ∀ n, (P13319174628985755557.a n : ℤ) = A045415 (n + 1)

end A045415

/-! ## A045415.P8192744395146883247

`∩[A045313(n+1), A045408(n+1)]`
-/

namespace A045415.P8192744395146883247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045415.P8192744395146883247

namespace A045415

/-- `∩[A045313(n+1), A045408(n+1)]` -/
def P8192744395146883247.Spec : Prop :=
  ∀ n, (P8192744395146883247.a n : ℤ) = A045415 (n + 1)

end A045415

/-! ## A045415.P4950496976901206005

`∩[A042994(n+1), A045408(n+1)]`
-/

namespace A045415.P4950496976901206005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045415.P4950496976901206005

namespace A045415

/-- `∩[A042994(n+1), A045408(n+1)]` -/
def P4950496976901206005.Spec : Prop :=
  ∀ n, (P4950496976901206005.a n : ℤ) = A045415 (n + 1)

end A045415

/-! ## A045415.P8809355053933165181

`∩[A042994(n+1), A045411(n+1)]`
-/

namespace A045415.P8809355053933165181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045415.P8809355053933165181

namespace A045415

/-- `∩[A042994(n+1), A045411(n+1)]` -/
def P8809355053933165181.Spec : Prop :=
  ∀ n, (P8809355053933165181.a n : ℤ) = A045415 (n + 1)

end A045415

/-! ## A045415.P10920518957718236583

`∩[A045396(n+1), A045411(n+1)]`
-/

namespace A045415.P10920518957718236583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045415.P10920518957718236583

namespace A045415

/-- `∩[A045396(n+1), A045411(n+1)]` -/
def P10920518957718236583.Spec : Prop :=
  ∀ n, (P10920518957718236583.a n : ℤ) = A045415 (n + 1)

end A045415

/-! ## A045415.P8587947570580733767

`∩[A045400(n+1), A045411(n+1)]`
-/

namespace A045415.P8587947570580733767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045415.P8587947570580733767

namespace A045415

/-- `∩[A045400(n+1), A045411(n+1)]` -/
def P8587947570580733767.Spec : Prop :=
  ∀ n, (P8587947570580733767.a n : ℤ) = A045415 (n + 1)

end A045415

/-! ## A045415.P3624449707994070572

`∩[A045313(n+1), A045398(n+1)]`
-/

namespace A045415.P3624449707994070572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045415.P3624449707994070572

namespace A045415

/-- `∩[A045313(n+1), A045398(n+1)]` -/
def P3624449707994070572.Spec : Prop :=
  ∀ n, (P3624449707994070572.a n : ℤ) = A045415 (n + 1)

end A045415

/-! ## A045415.P18158673854614675680

`∩[A045398(n+1), A045408(n+1)]`
-/

namespace A045415.P18158673854614675680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045415.P18158673854614675680

namespace A045415

/-- `∩[A045398(n+1), A045408(n+1)]` -/
def P18158673854614675680.Spec : Prop :=
  ∀ n, (P18158673854614675680.a n : ℤ) = A045415 (n + 1)

end A045415

/-! ## A045415.P17205182617222991811

`∩[A044042(n+1), A045398(n+1)]`
-/

namespace A045415.P17205182617222991811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045415.P17205182617222991811

namespace A045415

/-- `∩[A044042(n+1), A045398(n+1)]` -/
def P17205182617222991811.Spec : Prop :=
  ∀ n, (P17205182617222991811.a n : ℤ) = A045415 (n + 1)

end A045415

/-! ## A045415.P4492194370432915741

`∩[A044042(n+1), A045400(n+1)]`
-/

namespace A045415.P4492194370432915741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045415.P4492194370432915741

namespace A045415

/-- `∩[A044042(n+1), A045400(n+1)]` -/
def P4492194370432915741.Spec : Prop :=
  ∀ n, (P4492194370432915741.a n : ℤ) = A045415 (n + 1)

end A045415

/-! ## A045415.P14023570062493464807

`∩[A044042(n+1), A045411(n+1)]`
-/

namespace A045415.P14023570062493464807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045415.P14023570062493464807

namespace A045415

/-- `∩[A044042(n+1), A045411(n+1)]` -/
def P14023570062493464807.Spec : Prop :=
  ∀ n, (P14023570062493464807.a n : ℤ) = A045415 (n + 1)

end A045415

/-! ## A045415.P16354986688685962355

`∩[A045411(n+1), A042988(n)]`
-/

namespace A045415.P16354986688685962355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045415.P16354986688685962355

namespace A045415

/-- `∩[A045411(n+1), A042988(n)]` -/
def P16354986688685962355.Spec : Prop :=
  ∀ n, (P16354986688685962355.a n : ℤ) = A045415 (n + 1)

end A045415

/-! ## A045415.P1126263726585392268

`∩[A042994(n+1), A045402(n+1)]`
-/

namespace A045415.P1126263726585392268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045415.P1126263726585392268

namespace A045415

/-- `∩[A042994(n+1), A045402(n+1)]` -/
def P1126263726585392268.Spec : Prop :=
  ∀ n, (P1126263726585392268.a n : ℤ) = A045415 (n + 1)

end A045415

/-! ## A045415.P3067183550747809073

`∩[A045311(n+1), A045396(n+1)]`
-/

namespace A045415.P3067183550747809073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045415.P3067183550747809073

namespace A045415

/-- `∩[A045311(n+1), A045396(n+1)]` -/
def P3067183550747809073.Spec : Prop :=
  ∀ n, (P3067183550747809073.a n : ℤ) = A045415 (n + 1)

end A045415

/-!
# A045416: Primes congruent to {3, 5} mod 7.

The programs for A045416, the canonical program `A045416.P9358026932021147899` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045416 has offset 1).

The definition of A045416 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A045416.anchor (n : ℕ) (hn : 1 ≤ n) : A045416 n = (Nat.nth (fun p => p.Prime ∧ p % 7 ∈ ({3, 5} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A045.A045416`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A045416.P9358026932021147899

`p?[a(n-2)+7]` with `a(0)=3, a(1)=5`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045416

/-- `p?[a(n-2)+7]` -/
def P9358026932021147899.Spec : Prop :=
  ∀ n, (P9358026932021147899.a n : ℤ) = A045416 (n + 1)

theorem P9358026932021147899.correct : P9358026932021147899.Spec := by
  intro n
  simp only [A045416, Nat.add_sub_cancel]

end A045416

/-! ## A045416.P2436641080363351237

`p?[7*n-(a(n-1)-1)]` with `a(0)=3`
-/

namespace A045416.P2436641080363351237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  (7 * n : ℤ) - (f1 (n - 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045416.P2436641080363351237

namespace A045416

/-- `p?[7*n-(a(n-1)-1)]` -/
def P2436641080363351237.Spec : Prop :=
  ∀ n, P2436641080363351237.a n = A045416 (n + 1)

end A045416

/-! ## A045416.P16286177665182222142

`p?[ogf((3x+x^2+x^3+9x^4)/(1-x-x^3+x^4))]`
-/

namespace A045416.P16286177665182222142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 1, 1, 9] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045416.P16286177665182222142

namespace A045416

/-- `p?[ogf((3x+x^2+x^3+9x^4)/(1-x-x^3+x^4))]` -/
def P16286177665182222142.Spec : Prop :=
  ∀ n, P16286177665182222142.a n = A045416 (n + 1)

end A045416

/-! ## A045416.P14230484852391439593

`A045401(A326178(n+1))`
-/

namespace A045416.P14230484852391439593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045401 (A326178 (n + 1)).toNat

end

end A045416.P14230484852391439593

namespace A045416

/-- `A045401(A326178(n+1))` -/
def P14230484852391439593.Spec : Prop :=
  ∀ n, P14230484852391439593.a n = A045416 (n + 1)

end A045416

/-! ## A045416.P10191417721252422494

`A045401(floor(A004273(n)/(n+1))+n+1)`
-/

namespace A045416.P10191417721252422494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045401 (⌊(A004273 n : ℚ) / (n + 1 : ℚ)⌋ + (n : ℤ) + 1).toNat

end

end A045416.P10191417721252422494

namespace A045416

/-- `A045401(floor(A004273(n)/(n+1))+n+1)` -/
def P10191417721252422494.Spec : Prop :=
  ∀ n, P10191417721252422494.a n = A045416 (n + 1)

end A045416

/-! ## A045416.P7767099697432300897

`∩[A045401(n+1), A045415(n+1)]`
-/

namespace A045416.P7767099697432300897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045416.P7767099697432300897

namespace A045416

/-- `∩[A045401(n+1), A045415(n+1)]` -/
def P7767099697432300897.Spec : Prop :=
  ∀ n, (P7767099697432300897.a n : ℤ) = A045416 (n + 1)

end A045416

/-! ## A045416.P9127901739364348853

`∩[A003625(n+1), A042995(n+1)]`
-/

namespace A045416.P9127901739364348853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045416.P9127901739364348853

namespace A045416

/-- `∩[A003625(n+1), A042995(n+1)]` -/
def P9127901739364348853.Spec : Prop :=
  ∀ n, (P9127901739364348853.a n : ℤ) = A045416 (n + 1)

end A045416

/-! ## A045416.P9896596614341157575

`∩[A003625(n+1), A045314(n+1)]`
-/

namespace A045416.P9896596614341157575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045416.P9896596614341157575

namespace A045416

/-- `∩[A003625(n+1), A045314(n+1)]` -/
def P9896596614341157575.Spec : Prop :=
  ∀ n, (P9896596614341157575.a n : ℤ) = A045416 (n + 1)

end A045416

/-! ## A045416.P8722044440894781162

`∩[A003625(n+1), A045400(n+1)]`
-/

namespace A045416.P8722044440894781162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045416.P8722044440894781162

namespace A045416

/-- `∩[A003625(n+1), A045400(n+1)]` -/
def P8722044440894781162.Spec : Prop :=
  ∀ n, (P8722044440894781162.a n : ℤ) = A045416 (n + 1)

end A045416

/-! ## A045416.P2814069960325342393

`∩[A003625(n+1), A045401(n+1)]`
-/

namespace A045416.P2814069960325342393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045416.P2814069960325342393

namespace A045416

/-- `∩[A003625(n+1), A045401(n+1)]` -/
def P2814069960325342393.Spec : Prop :=
  ∀ n, (P2814069960325342393.a n : ℤ) = A045416 (n + 1)

end A045416

/-! ## A045416.P1393951290738448190

`∩[A003625(n+1), A045415(n+1)]`
-/

namespace A045416.P1393951290738448190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045416.P1393951290738448190

namespace A045416

/-- `∩[A003625(n+1), A045415(n+1)]` -/
def P1393951290738448190.Spec : Prop :=
  ∀ n, (P1393951290738448190.a n : ℤ) = A045416 (n + 1)

end A045416

/-! ## A045416.P15142795727321278465

`∩[A003625(n+1), A045397(n+1)]`
-/

namespace A045416.P15142795727321278465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045416.P15142795727321278465

namespace A045416

/-- `∩[A003625(n+1), A045397(n+1)]` -/
def P15142795727321278465.Spec : Prop :=
  ∀ n, (P15142795727321278465.a n : ℤ) = A045416 (n + 1)

end A045416

/-! ## A045416.P1763844266051504311

`∩[A003625(n+1), A045409(n+1)]`
-/

namespace A045416.P1763844266051504311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045416.P1763844266051504311

namespace A045416

/-- `∩[A003625(n+1), A045409(n+1)]` -/
def P1763844266051504311.Spec : Prop :=
  ∀ n, (P1763844266051504311.a n : ℤ) = A045416 (n + 1)

end A045416

/-! ## A045416.P396464216565663089

`∩[A003625(n+1), A045408(n+1)]`
-/

namespace A045416.P396464216565663089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045416.P396464216565663089

namespace A045416

/-- `∩[A003625(n+1), A045408(n+1)]` -/
def P396464216565663089.Spec : Prop :=
  ∀ n, (P396464216565663089.a n : ℤ) = A045416 (n + 1)

end A045416

/-! ## A045416.P3620147737768571154

`∩[A003625(n+1), A045396(n+1)]`
-/

namespace A045416.P3620147737768571154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045416.P3620147737768571154

namespace A045416

/-- `∩[A003625(n+1), A045396(n+1)]` -/
def P3620147737768571154.Spec : Prop :=
  ∀ n, (P3620147737768571154.a n : ℤ) = A045416 (n + 1)

end A045416

/-! ## A045416.P11319338090093645822

`∩[A003625(n+1), A042989(n+1)]`
-/

namespace A045416.P11319338090093645822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045416.P11319338090093645822

namespace A045416

/-- `∩[A003625(n+1), A042989(n+1)]` -/
def P11319338090093645822.Spec : Prop :=
  ∀ n, (P11319338090093645822.a n : ℤ) = A045416 (n + 1)

end A045416

/-! ## A045416.P4128035411757201434

`∩[A003625(n+1), A045308(n+1)]`
-/

namespace A045416.P4128035411757201434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045416.P4128035411757201434

namespace A045416

/-- `∩[A003625(n+1), A045308(n+1)]` -/
def P4128035411757201434.Spec : Prop :=
  ∀ n, (P4128035411757201434.a n : ℤ) = A045416 (n + 1)

end A045416

/-! ## A045416.P2701564334731320005

`∩[A003625(n+1), A042994(n+1)]`
-/

namespace A045416.P2701564334731320005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045416.P2701564334731320005

namespace A045416

/-- `∩[A003625(n+1), A042994(n+1)]` -/
def P2701564334731320005.Spec : Prop :=
  ∀ n, (P2701564334731320005.a n : ℤ) = A045416 (n + 1)

end A045416

/-! ## A045416.P14283849663225724147

`∩[A003625(n+1), A045313(n+1)]`
-/

namespace A045416.P14283849663225724147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045416.P14283849663225724147

namespace A045416

/-- `∩[A003625(n+1), A045313(n+1)]` -/
def P14283849663225724147.Spec : Prop :=
  ∀ n, (P14283849663225724147.a n : ℤ) = A045416 (n + 1)

end A045416

/-! ## A045416.P12298842027598183335

`∩[A042994(n+1), A045404(n+1)]`
-/

namespace A045416.P12298842027598183335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045416.P12298842027598183335

namespace A045416

/-- `∩[A042994(n+1), A045404(n+1)]` -/
def P12298842027598183335.Spec : Prop :=
  ∀ n, (P12298842027598183335.a n : ℤ) = A045416 (n + 1)

end A045416

/-!
# A045417: Primes congruent to {0, 1, 3, 4, 6} mod 7.

The programs for A045417, the canonical program `A045417.P13044081721877140394` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045417 has offset 1).

The definition of A045417 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045417.P7410603971026863109

`∪[A002383(n+1), A045426(n+1)]`
-/

namespace A045417.P7410603971026863109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045417.P7410603971026863109

namespace A045417

/-- `∪[A002383(n+1), A045426(n+1)]` -/
def P7410603971026863109.Spec : Prop :=
  ∀ n, (P7410603971026863109.a n : ℤ) = A045417 (n + 1)

end A045417

/-! ## A045417.P10168263263062295524

`∪[A022008(n+1), A045426(n+1)]`
-/

namespace A045417.P10168263263062295524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045417.P10168263263062295524

namespace A045417

/-- `∪[A022008(n+1), A045426(n+1)]` -/
def P10168263263062295524.Spec : Prop :=
  ∀ n, (P10168263263062295524.a n : ℤ) = A045417 (n + 1)

end A045417

/-! ## A045417.P6316296829849618620

`∪[A045418(n+1), A045420(n+1)]`
-/

namespace A045417.P6316296829849618620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045418 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045417.P6316296829849618620

namespace A045417

/-- `∪[A045418(n+1), A045420(n+1)]` -/
def P6316296829849618620.Spec : Prop :=
  ∀ n, (P6316296829849618620.a n : ℤ) = A045417 (n + 1)

end A045417

/-! ## A045417.P7158519473703849783

`∪[A045420(n+1), A045423(n+1)]`
-/

namespace A045417.P7158519473703849783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045417.P7158519473703849783

namespace A045417

/-- `∪[A045420(n+1), A045423(n+1)]` -/
def P7158519473703849783.Spec : Prop :=
  ∀ n, (P7158519473703849783.a n : ℤ) = A045417 (n + 1)

end A045417

/-! ## A045417.P5889644761635950442

`∪[A045421(n+1), A045422(n+1)]`
-/

namespace A045417.P5889644761635950442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045417.P5889644761635950442

namespace A045417

/-- `∪[A045421(n+1), A045422(n+1)]` -/
def P5889644761635950442.Spec : Prop :=
  ∀ n, (P5889644761635950442.a n : ℤ) = A045417 (n + 1)

end A045417

/-! ## A045417.P3889041647417838323

`∪[A045418(n+1), A045459(n+1)]`
-/

namespace A045417.P3889041647417838323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045418 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045417.P3889041647417838323

namespace A045417

/-- `∪[A045418(n+1), A045459(n+1)]` -/
def P3889041647417838323.Spec : Prop :=
  ∀ n, (P3889041647417838323.a n : ℤ) = A045417 (n + 1)

end A045417

/-! ## A045417.P696711444057698286

`∪[A045418(n+1), A045463(n+1)]`
-/

namespace A045417.P696711444057698286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045418 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045463 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045417.P696711444057698286

namespace A045417

/-- `∪[A045418(n+1), A045463(n+1)]` -/
def P696711444057698286.Spec : Prop :=
  ∀ n, (P696711444057698286.a n : ℤ) = A045417 (n + 1)

end A045417

/-! ## A045417.P2564776873134573266

`∪[A045420(n+1), A045464(n+1)]`
-/

namespace A045417.P2564776873134573266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045417.P2564776873134573266

namespace A045417

/-- `∪[A045420(n+1), A045464(n+1)]` -/
def P2564776873134573266.Spec : Prop :=
  ∀ n, (P2564776873134573266.a n : ℤ) = A045417 (n + 1)

end A045417

/-! ## A045417.P9853321495011362414

`∪[A045426(n+1), A053183(n+1)]`
-/

namespace A045417.P9853321495011362414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045426 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045417.P9853321495011362414

namespace A045417

/-- `∪[A045426(n+1), A053183(n+1)]` -/
def P9853321495011362414.Spec : Prop :=
  ∀ n, (P9853321495011362414.a n : ℤ) = A045417 (n + 1)

end A045417

/-! ## A045417.P14068542644705398115

`∪[A045426(n+1), A056909(n+1)]`
-/

namespace A045417.P14068542644705398115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045426 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045417.P14068542644705398115

namespace A045417

/-- `∪[A045426(n+1), A056909(n+1)]` -/
def P14068542644705398115.Spec : Prop :=
  ∀ n, (P14068542644705398115.a n : ℤ) = A045417 (n + 1)

end A045417

/-! ## A045417.P13044081721877140394

`∪[A066436(n+1), A045426(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A045417

/-- `∪[A066436(n+1), A045426(n+1)]` -/
def P13044081721877140394.Spec : Prop :=
  ∀ n, (P13044081721877140394.a n : ℤ) = A045417 (n + 1)

theorem P13044081721877140394.correct : P13044081721877140394.Spec := by
  intro n
  simp only [A045417, Nat.add_sub_cancel]

end A045417

/-! ## A045417.P17663073649411990361

`∪[A342150(n+1), A045426(n+1)]`
-/

namespace A045417.P17663073649411990361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045417.P17663073649411990361

namespace A045417

/-- `∪[A342150(n+1), A045426(n+1)]` -/
def P17663073649411990361.Spec : Prop :=
  ∀ n, (P17663073649411990361.a n : ℤ) = A045417 (n + 1)

end A045417

/-! ## A045417.P15158180313311877834

`p?[round(7*n/5)]`
-/

namespace A045417.P15158180313311877834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (7 * ((n : ℚ) / 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045417.P15158180313311877834

namespace A045417

/-- `p?[round(7*n/5)]` -/
def P15158180313311877834.Spec : Prop :=
  ∀ n, P15158180313311877834.a n = A045417 (n + 1)

end A045417

/-! ## A045417.P1871570205287279826

`∩[A045320(n+1), A045393(n+1)]`
-/

namespace A045417.P1871570205287279826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045417.P1871570205287279826

namespace A045417

/-- `∩[A045320(n+1), A045393(n+1)]` -/
def P1871570205287279826.Spec : Prop :=
  ∀ n, (P1871570205287279826.a n : ℤ) = A045417 (n + 1)

end A045417

/-! ## A045417.P8069193257982694785

`∩[A045393(n+1), A162699(n+1)-2]`
-/

namespace A045417.P8069193257982694785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162699 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045417.P8069193257982694785

namespace A045417

/-- `∩[A045393(n+1), A162699(n+1)-2]` -/
def P8069193257982694785.Spec : Prop :=
  ∀ n, (P8069193257982694785.a n : ℤ) = A045417 (n + 1)

end A045417

/-! ## A045417.P2080345085677528136

`record[A006530(A047299(n+3))]`
-/

namespace A045417.P2080345085677528136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A047299 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045417.P2080345085677528136

namespace A045417

/-- `record[A006530(A047299(n+3))]` -/
def P2080345085677528136.Spec : Prop :=
  ∀ n, P2080345085677528136.a n = A045417 (n + 1)

end A045417

/-! ## A045417.P2092714000543483300

`filter[A047299(n+2), A010051(#)]`
-/

namespace A045417.P2092714000543483300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047299 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A045417.P2092714000543483300

namespace A045417

/-- `filter[A047299(n+2), A010051(#)]` -/
def P2092714000543483300.Spec : Prop :=
  ∀ n, P2092714000543483300.a n = A045417 (n + 1)

end A045417

/-! ## A045417.P5928406963702861126

`record[A006530(A047317(n+1)+2)]`
-/

namespace A045417.P5928406963702861126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A047317 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045417.P5928406963702861126

namespace A045417

/-- `record[A006530(A047317(n+1)+2)]` -/
def P5928406963702861126.Spec : Prop :=
  ∀ n, P5928406963702861126.a n = A045417 (n + 1)

end A045417

/-! ## A045417.P13615650410968413491

`record[A006530(A047332(n+2)+1)]`
-/

namespace A045417.P13615650410968413491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A047332 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045417.P13615650410968413491

namespace A045417

/-- `record[A006530(A047332(n+2)+1)]` -/
def P13615650410968413491.Spec : Prop :=
  ∀ n, P13615650410968413491.a n = A045417 (n + 1)

end A045417

/-! ## A045417.P13607073780033425156

`∩[A000040(n+1), A047299(n+1)]`
-/

namespace A045417.P13607073780033425156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045417.P13607073780033425156

namespace A045417

/-- `∩[A000040(n+1), A047299(n+1)]` -/
def P13607073780033425156.Spec : Prop :=
  ∀ n, (P13607073780033425156.a n : ℤ) = A045417 (n + 1)

end A045417

/-!
# A045418: Primes congruent to {0, 3, 4, 6} mod 7.

The programs for A045418, the canonical program `A045418.P4556289289917445752` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045418 has offset 1).

The definition of A045418 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A045418.anchor (n : ℕ) (hn : 1 ≤ n) : A045418 n = (Nat.nth (fun p => p.Prime ∧ p % 7 ∈ ({0, 3, 4, 6} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A045.A045418`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A045418.P6776897501406889470

`∪[A022008(n+1), A045427(n+1)]`
-/

namespace A045418.P6776897501406889470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045418.P6776897501406889470

namespace A045418

/-- `∪[A022008(n+1), A045427(n+1)]` -/
def P6776897501406889470.Spec : Prop :=
  ∀ n, (P6776897501406889470.a n : ℤ) = A045418 (n + 1)

end A045418

/-! ## A045418.P11114572294085768072

`∪[A045421(n+1), A045423(n+1)]`
-/

namespace A045418.P11114572294085768072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045418.P11114572294085768072

namespace A045418

/-- `∪[A045421(n+1), A045423(n+1)]` -/
def P11114572294085768072.Spec : Prop :=
  ∀ n, (P11114572294085768072.a n : ℤ) = A045418 (n + 1)

end A045418

/-! ## A045418.P6192272677869384809

`∪[A045421(n+1), A045427(n+1)]`
-/

namespace A045418.P6192272677869384809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045418.P6192272677869384809

namespace A045418

/-- `∪[A045421(n+1), A045427(n+1)]` -/
def P6192272677869384809.Spec : Prop :=
  ∀ n, (P6192272677869384809.a n : ℤ) = A045418 (n + 1)

end A045418

/-! ## A045418.P290783855684150761

`∪[A045423(n+1), A045427(n+1)]`
-/

namespace A045418.P290783855684150761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045418.P290783855684150761

namespace A045418

/-- `∪[A045423(n+1), A045427(n+1)]` -/
def P290783855684150761.Spec : Prop :=
  ∀ n, (P290783855684150761.a n : ℤ) = A045418 (n + 1)

end A045418

/-! ## A045418.P2337974740391290562

`∪[A045425(n+1), A045427(n+1)]`
-/

namespace A045418.P2337974740391290562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045418.P2337974740391290562

namespace A045418

/-- `∪[A045425(n+1), A045427(n+1)]` -/
def P2337974740391290562.Spec : Prop :=
  ∀ n, (P2337974740391290562.a n : ℤ) = A045418 (n + 1)

end A045418

/-! ## A045418.P97009461481713060

`∪[A045421(n+1), A045434(n+1)]`
-/

namespace A045418.P97009461481713060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045434 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045418.P97009461481713060

namespace A045418

/-- `∪[A045421(n+1), A045434(n+1)]` -/
def P97009461481713060.Spec : Prop :=
  ∀ n, (P97009461481713060.a n : ℤ) = A045418 (n + 1)

end A045418

/-! ## A045418.P8830461691194999613

`∪[A045460(n+1), A045421(n+1)]`
-/

namespace A045418.P8830461691194999613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045460 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045418.P8830461691194999613

namespace A045418

/-- `∪[A045460(n+1), A045421(n+1)]` -/
def P8830461691194999613.Spec : Prop :=
  ∀ n, (P8830461691194999613.a n : ℤ) = A045418 (n + 1)

end A045418

/-! ## A045418.P2432302784832803614

`∪[A045462(n+1), A045423(n+1)]`
-/

namespace A045418.P2432302784832803614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045418.P2432302784832803614

namespace A045418

/-- `∪[A045462(n+1), A045423(n+1)]` -/
def P2432302784832803614.Spec : Prop :=
  ∀ n, (P2432302784832803614.a n : ℤ) = A045418 (n + 1)

end A045418

/-! ## A045418.P4307304262592351675

`∪[A045464(n+1), A045421(n+1)]`
-/

namespace A045418.P4307304262592351675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045418.P4307304262592351675

namespace A045418

/-- `∪[A045464(n+1), A045421(n+1)]` -/
def P4307304262592351675.Spec : Prop :=
  ∀ n, (P4307304262592351675.a n : ℤ) = A045418 (n + 1)

end A045418

/-! ## A045418.P4556289289917445752

`p?[a(n-4)+7]` with `a(0)=0, a(1)=3, a(2)=4, a(3)=6`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045418

/-- `p?[a(n-4)+7]` -/
def P4556289289917445752.Spec : Prop :=
  ∀ n, (P4556289289917445752.a n : ℤ) = A045418 (n + 1)

theorem P4556289289917445752.correct : P4556289289917445752.Spec := by
  intro n
  simp only [A045418, Nat.add_sub_cancel]

end A045418

/-! ## A045418.P17413617188048063707

`∩[A045322(n+1), A045417(n+1)]`
-/

namespace A045418.P17413617188048063707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045418.P17413617188048063707

namespace A045418

/-- `∩[A045322(n+1), A045417(n+1)]` -/
def P17413617188048063707.Spec : Prop :=
  ∀ n, (P17413617188048063707.a n : ℤ) = A045418 (n + 1)

end A045418

/-! ## A045418.P531795458855859482

`∩[A045322(n+1), A045394(n+1)]`
-/

namespace A045418.P531795458855859482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045418.P531795458855859482

namespace A045418

/-- `∩[A045322(n+1), A045394(n+1)]` -/
def P531795458855859482.Spec : Prop :=
  ∀ n, (P531795458855859482.a n : ℤ) = A045418 (n + 1)

end A045418

/-! ## A045418.P5817751377088472505

`∩[A045394(n+1), A045417(n+1)]`
-/

namespace A045418.P5817751377088472505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045418.P5817751377088472505

namespace A045418

/-- `∩[A045394(n+1), A045417(n+1)]` -/
def P5817751377088472505.Spec : Prop :=
  ∀ n, (P5817751377088472505.a n : ℤ) = A045418 (n + 1)

end A045418

/-! ## A045418.P15695156561302607165

`∩[A045320(n+1), A045394(n+1)]`
-/

namespace A045418.P15695156561302607165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045418.P15695156561302607165

namespace A045418

/-- `∩[A045320(n+1), A045394(n+1)]` -/
def P15695156561302607165.Spec : Prop :=
  ∀ n, (P15695156561302607165.a n : ℤ) = A045418 (n + 1)

end A045418

/-! ## A045418.P9999288152197875022

`∩[A045322(n+1), A045393(n+1)]`
-/

namespace A045418.P9999288152197875022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045418.P9999288152197875022

namespace A045418

/-- `∩[A045322(n+1), A045393(n+1)]` -/
def P9999288152197875022.Spec : Prop :=
  ∀ n, (P9999288152197875022.a n : ℤ) = A045418 (n + 1)

end A045418

/-! ## A045418.P11557881168883903076

`p?[or(1, A047280(n+1))]`
-/

namespace A045418.P11557881168883903076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A047280 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045418.P11557881168883903076

namespace A045418

/-- `p?[or(1, A047280(n+1))]` -/
def P11557881168883903076.Spec : Prop :=
  ∀ n, P11557881168883903076.a n = A045418 (n + 1)

end A045418

/-! ## A045418.P13895034023444794710

`p?[∑[A167817(n+1)]+n]`
-/

namespace A045418.P13895034023444794710
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167817 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045418.P13895034023444794710

namespace A045418

/-- `p?[∑[A167817(n+1)]+n]` -/
def P13895034023444794710.Spec : Prop :=
  ∀ n, P13895034023444794710.a n = A045418 (n + 1)

end A045418

/-! ## A045418.P8721354524253017980

`p?[2*A047329(n+1)+1]`
-/

namespace A045418.P8721354524253017980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047329 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045418.P8721354524253017980

namespace A045418

/-- `p?[2*A047329(n+1)+1]` -/
def P8721354524253017980.Spec : Prop :=
  ∀ n, P8721354524253017980.a n = A045418 (n + 1)

end A045418

/-! ## A045418.P9420279987018239126

`p?[2*A047293(n+1)-1]`
-/

namespace A045418.P9420279987018239126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047293 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045418.P9420279987018239126

namespace A045418

/-- `p?[2*A047293(n+1)-1]` -/
def P9420279987018239126.Spec : Prop :=
  ∀ n, P9420279987018239126.a n = A045418 (n + 1)

end A045418

/-! ## A045418.P14146897748874266457

`p?[or(1, A047345(n+1)-1)]`
-/

namespace A045418.P14146897748874266457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A047345 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045418.P14146897748874266457

namespace A045418

/-- `p?[or(1, A047345(n+1)-1)]` -/
def P14146897748874266457.Spec : Prop :=
  ∀ n, P14146897748874266457.a n = A045418 (n + 1)

end A045418

/-!
# A045419: Primes congruent to {1, 3, 7} mod 8.

The programs for A045419, the canonical program `A045419.P10197438057825114288` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045419 has offset 1).

The definition of A045419 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045419.P10197438057825114288

`p?[floor((8*n+7)/5)]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045419

/-- `p?[floor((8*n+7)/5)]` -/
def P10197438057825114288.Spec : Prop :=
  ∀ n, P10197438057825114288.a n = A045419 (n + 1)

theorem P10197438057825114288.correct : P10197438057825114288.Spec := by
  intro n
  simp only [A045419, Nat.add_sub_cancel]

end A045419

/-! ## A045419.P2695692344169607856

`∪[A002145(n+1), A007519(n+1)]`
-/

namespace A045419.P2695692344169607856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045419.P2695692344169607856

namespace A045419

/-- `∪[A002145(n+1), A007519(n+1)]` -/
def P2695692344169607856.Spec : Prop :=
  ∀ n, (P2695692344169607856.a n : ℤ) = A045419 (n + 1)

end A045419

/-! ## A045419.P457277344191457898

`A045323(n+2)`
-/

namespace A045419.P457277344191457898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045323 (n + 2)

end

end A045419.P457277344191457898

namespace A045419

/-- `A045323(n+2)` -/
def P457277344191457898.Spec : Prop :=
  ∀ n, P457277344191457898.a n = A045419 (n + 1)

end A045419

/-! ## A045419.P11175535356407462476

`record[A006530(A047529(n+2))]`
-/

namespace A045419.P11175535356407462476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A047529 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045419.P11175535356407462476

namespace A045419

/-- `record[A006530(A047529(n+2))]` -/
def P11175535356407462476.Spec : Prop :=
  ∀ n, P11175535356407462476.a n = A045419 (n + 1)

end A045419

/-! ## A045419.P5049889513475506191

`filter[A047529(n+1), A010051(#)]`
-/

namespace A045419.P5049889513475506191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A045419.P5049889513475506191

namespace A045419

/-- `filter[A047529(n+1), A010051(#)]` -/
def P5049889513475506191.Spec : Prop :=
  ∀ n, P5049889513475506191.a n = A045419 (n + 1)

end A045419

/-! ## A045419.P9715432057176289954

`filter[A047529(n+1), A323153(#)]`
-/

namespace A045419.P9715432057176289954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A045419.P9715432057176289954

namespace A045419

/-- `filter[A047529(n+1), A323153(#)]` -/
def P9715432057176289954.Spec : Prop :=
  ∀ n, P9715432057176289954.a n = A045419 (n + 1)

end A045419

/-! ## A045419.P6867569521416979934

`filter[A047529(n+1), A353670(#)]`
-/

namespace A045419.P6867569521416979934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A045419.P6867569521416979934

namespace A045419

/-- `filter[A047529(n+1), A353670(#)]` -/
def P6867569521416979934.Spec : Prop :=
  ∀ n, P6867569521416979934.a n = A045419 (n + 1)

end A045419

/-! ## A045419.P9702402725638180115

`filter[A047529(n+1), A379969(#)]`
-/

namespace A045419.P9702402725638180115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A045419.P9702402725638180115

namespace A045419

/-- `filter[A047529(n+1), A379969(#)]` -/
def P9702402725638180115.Spec : Prop :=
  ∀ n, P9702402725638180115.a n = A045419 (n + 1)

end A045419

/-! ## A045419.P16881794036182789770

`filter[A047529(n+2), A323152(#)]`
-/

namespace A045419.P16881794036182789770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047529 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A045419.P16881794036182789770

namespace A045419

/-- `filter[A047529(n+2), A323152(#)]` -/
def P16881794036182789770.Spec : Prop :=
  ∀ n, P16881794036182789770.a n = A045419 (n + 1)

end A045419

/-! ## A045419.P16535381800896914993

`filter[A047529(n+2), A340371(#)]`
-/

namespace A045419.P16535381800896914993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047529 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A045419.P16535381800896914993

namespace A045419

/-- `filter[A047529(n+2), A340371(#)]` -/
def P16535381800896914993.Spec : Prop :=
  ∀ n, P16535381800896914993.a n = A045419 (n + 1)

end A045419

/-! ## A045419.P1599724530344404659

`filter[A047529(n+2), A365716(#)]`
-/

namespace A045419.P1599724530344404659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047529 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A045419.P1599724530344404659

namespace A045419

/-- `filter[A047529(n+2), A365716(#)]` -/
def P1599724530344404659.Spec : Prop :=
  ∀ n, P1599724530344404659.a n = A045419 (n + 1)

end A045419

/-! ## A045419.P8540180481187425617

`filter[A047529(n+2), A380467(#)]`
-/

namespace A045419.P8540180481187425617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047529 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A045419.P8540180481187425617

namespace A045419

/-- `filter[A047529(n+2), A380467(#)]` -/
def P8540180481187425617.Spec : Prop :=
  ∀ n, P8540180481187425617.a n = A045419 (n + 1)

end A045419

/-! ## A045419.P2086537162378534542

`A000265(p?[A047623(n+1)-2])`
-/

namespace A045419.P2086537162378534542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047623 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A045419.P2086537162378534542

namespace A045419

/-- `A000265(p?[A047623(n+1)-2])` -/
def P2086537162378534542.Spec : Prop :=
  ∀ n, P2086537162378534542.a n = A045419 (n + 1)

end A045419

/-! ## A045419.P18129801131767209291

`∩[A000040(n+1), A047529(n+1)]`
-/

namespace A045419.P18129801131767209291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047529 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045419.P18129801131767209291

namespace A045419

/-- `∩[A000040(n+1), A047529(n+1)]` -/
def P18129801131767209291.Spec : Prop :=
  ∀ n, (P18129801131767209291.a n : ℤ) = A045419 (n + 1)

end A045419

/-! ## A045419.P9086606796920330205

`∩[A001751(n+1), A047529(n+1)]`
-/

namespace A045419.P9086606796920330205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047529 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045419.P9086606796920330205

namespace A045419

/-- `∩[A001751(n+1), A047529(n+1)]` -/
def P9086606796920330205.Spec : Prop :=
  ∀ n, (P9086606796920330205.a n : ℤ) = A045419 (n + 1)

end A045419

/-! ## A045419.P2973919515115332518

`∩[A053577(n+1), A047529(n+1)]`
-/

namespace A045419.P2973919515115332518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047529 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045419.P2973919515115332518

namespace A045419

/-- `∩[A053577(n+1), A047529(n+1)]` -/
def P2973919515115332518.Spec : Prop :=
  ∀ n, (P2973919515115332518.a n : ℤ) = A045419 (n + 1)

end A045419

/-! ## A045419.P16669690960342603101

`∩[A085118(n+1), A047529(n+1)]`
-/

namespace A045419.P16669690960342603101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047529 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045419.P16669690960342603101

namespace A045419

/-- `∩[A085118(n+1), A047529(n+1)]` -/
def P16669690960342603101.Spec : Prop :=
  ∀ n, (P16669690960342603101.a n : ℤ) = A045419 (n + 1)

end A045419

/-! ## A045419.P11621407156810267095

`∩[A093515(n+1), A047529(n+1)]`
-/

namespace A045419.P11621407156810267095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047529 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045419.P11621407156810267095

namespace A045419

/-- `∩[A093515(n+1), A047529(n+1)]` -/
def P11621407156810267095.Spec : Prop :=
  ∀ n, (P11621407156810267095.a n : ℤ) = A045419 (n + 1)

end A045419

/-! ## A045419.P1830361465101450630

`filter[A343109(n+3), A010051(#)]`
-/

namespace A045419.P1830361465101450630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343109 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A045419.P1830361465101450630

namespace A045419

/-- `filter[A343109(n+3), A010051(#)]` -/
def P1830361465101450630.Spec : Prop :=
  ∀ n, P1830361465101450630.a n = A045419 (n + 1)

end A045419

/-! ## A045419.P5094064788849179946

`record[p?[A347840(n+1)]]`
-/

namespace A045419.P5094064788849179946
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347840 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045419.P5094064788849179946

namespace A045419

/-- `record[p?[A347840(n+1)]]` -/
def P5094064788849179946.Spec : Prop :=
  ∀ n, P5094064788849179946.a n = A045419 (n + 1)

end A045419

/-!
# A045420: Primes congruent to {0, 1, 3, 4} mod 7.

The programs for A045420, the canonical program `A045420.P16115474253982141672` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045420 has offset 1).

The definition of A045420 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A045420.anchor (n : ℕ) (hn : 1 ≤ n) : A045420 n = (Nat.nth (fun p => p.Prime ∧ p % 7 ∈ ({0, 1, 3, 4} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A045.A045420`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A045420.P2492192088132544685

`∪[A045421(n+1), A045424(n+1)]`
-/

namespace A045420.P2492192088132544685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045420.P2492192088132544685

namespace A045420

/-- `∪[A045421(n+1), A045424(n+1)]` -/
def P2492192088132544685.Spec : Prop :=
  ∀ n, (P2492192088132544685.a n : ℤ) = A045420 (n + 1)

end A045420

/-! ## A045420.P3849549616988480323

`∪[A045421(n+1), A045431(n+1)]`
-/

namespace A045420.P3849549616988480323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045420.P3849549616988480323

namespace A045420

/-- `∪[A045421(n+1), A045431(n+1)]` -/
def P3849549616988480323.Spec : Prop :=
  ∀ n, (P3849549616988480323.a n : ℤ) = A045420 (n + 1)

end A045420

/-! ## A045420.P17803490441045596562

`∪[A045425(n+1), A045431(n+1)]`
-/

namespace A045420.P17803490441045596562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045420.P17803490441045596562

namespace A045420

/-- `∪[A045425(n+1), A045431(n+1)]` -/
def P17803490441045596562.Spec : Prop :=
  ∀ n, (P17803490441045596562.a n : ℤ) = A045420 (n + 1)

end A045420

/-! ## A045420.P6572025154312999203

`∪[A045421(n+1), A045436(n+1)]`
-/

namespace A045420.P6572025154312999203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045420.P6572025154312999203

namespace A045420

/-- `∪[A045421(n+1), A045436(n+1)]` -/
def P6572025154312999203.Spec : Prop :=
  ∀ n, (P6572025154312999203.a n : ℤ) = A045420 (n + 1)

end A045420

/-! ## A045420.P15285796496871185836

`∪[A045421(n+1), A045461(n+1)]`
-/

namespace A045420.P15285796496871185836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045461 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045420.P15285796496871185836

namespace A045420

/-- `∪[A045421(n+1), A045461(n+1)]` -/
def P15285796496871185836.Spec : Prop :=
  ∀ n, (P15285796496871185836.a n : ℤ) = A045420 (n + 1)

end A045420

/-! ## A045420.P15244982923084707326

`∪[A045424(n+1), A045462(n+1)]`
-/

namespace A045420.P15244982923084707326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045420.P15244982923084707326

namespace A045420

/-- `∪[A045424(n+1), A045462(n+1)]` -/
def P15244982923084707326.Spec : Prop :=
  ∀ n, (P15244982923084707326.a n : ℤ) = A045420 (n + 1)

end A045420

/-! ## A045420.P4628756021025489550

`∪[A045437(n+1), A045461(n+1)]`
-/

namespace A045420.P4628756021025489550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045461 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045420.P4628756021025489550

namespace A045420

/-- `∪[A045437(n+1), A045461(n+1)]` -/
def P4628756021025489550.Spec : Prop :=
  ∀ n, (P4628756021025489550.a n : ℤ) = A045420 (n + 1)

end A045420

/-! ## A045420.P7219704861458114320

`∪[A077721(n+1), A045431(n+1)]`
-/

namespace A045420.P7219704861458114320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045420.P7219704861458114320

namespace A045420

/-- `∪[A077721(n+1), A045431(n+1)]` -/
def P7219704861458114320.Spec : Prop :=
  ∀ n, (P7219704861458114320.a n : ℤ) = A045420 (n + 1)

end A045420

/-! ## A045420.P14294645785470142624

`∪[A045431(n+1), A088550(n+1)]`
-/

namespace A045420.P14294645785470142624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045420.P14294645785470142624

namespace A045420

/-- `∪[A045431(n+1), A088550(n+1)]` -/
def P14294645785470142624.Spec : Prop :=
  ∀ n, (P14294645785470142624.a n : ℤ) = A045420 (n + 1)

end A045420

/-! ## A045420.P5570411453914296710

`∪[A182346(n+1), A045431(n+1)]`
-/

namespace A045420.P5570411453914296710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045420.P5570411453914296710

namespace A045420

/-- `∪[A182346(n+1), A045431(n+1)]` -/
def P5570411453914296710.Spec : Prop :=
  ∀ n, (P5570411453914296710.a n : ℤ) = A045420 (n + 1)

end A045420

/-! ## A045420.P876151869337298925

`∪[A045431(n+1), A355577(n+1)]`
-/

namespace A045420.P876151869337298925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045420.P876151869337298925

namespace A045420

/-- `∪[A045431(n+1), A355577(n+1)]` -/
def P876151869337298925.Spec : Prop :=
  ∀ n, (P876151869337298925.a n : ℤ) = A045420 (n + 1)

end A045420

/-! ## A045420.P16115474253982141672

`p?[a(n-4)+7]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045420

/-- `p?[a(n-4)+7]` -/
def P16115474253982141672.Spec : Prop :=
  ∀ n, (P16115474253982141672.a n : ℤ) = A045420 (n + 1)

theorem P16115474253982141672.correct : P16115474253982141672.Spec := by
  intro n
  simp only [A045420, Nat.add_sub_cancel]

end A045420

/-! ## A045420.P8067671022061495267

`∩[A045324(n+1), A045417(n+1)]`
-/

namespace A045420.P8067671022061495267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045420.P8067671022061495267

namespace A045420

/-- `∩[A045324(n+1), A045417(n+1)]` -/
def P8067671022061495267.Spec : Prop :=
  ∀ n, (P8067671022061495267.a n : ℤ) = A045420 (n + 1)

end A045420

/-! ## A045420.P2179364723831032743

`∩[A045324(n+1), A045396(n+1)]`
-/

namespace A045420.P2179364723831032743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045420.P2179364723831032743

namespace A045420

/-- `∩[A045324(n+1), A045396(n+1)]` -/
def P2179364723831032743.Spec : Prop :=
  ∀ n, (P2179364723831032743.a n : ℤ) = A045420 (n + 1)

end A045420

/-! ## A045420.P12109509643195579365

`∩[A045396(n+1), A045417(n+1)]`
-/

namespace A045420.P12109509643195579365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045420.P12109509643195579365

namespace A045420

/-- `∩[A045396(n+1), A045417(n+1)]` -/
def P12109509643195579365.Spec : Prop :=
  ∀ n, (P12109509643195579365.a n : ℤ) = A045420 (n + 1)

end A045420

/-! ## A045420.P7487121060878041886

`∩[A045320(n+1), A045396(n+1)]`
-/

namespace A045420.P7487121060878041886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045420.P7487121060878041886

namespace A045420

/-- `∩[A045320(n+1), A045396(n+1)]` -/
def P7487121060878041886.Spec : Prop :=
  ∀ n, (P7487121060878041886.a n : ℤ) = A045420 (n + 1)

end A045420

/-! ## A045420.P11522673169317729549

`∩[A045417(n+1), A042988(n)]`
-/

namespace A045420.P11522673169317729549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045420.P11522673169317729549

namespace A045420

/-- `∩[A045417(n+1), A042988(n)]` -/
def P11522673169317729549.Spec : Prop :=
  ∀ n, (P11522673169317729549.a n : ℤ) = A045420 (n + 1)

end A045420

/-! ## A045420.P4672250090659760553

`∩[A045324(n+1), A045393(n+1)]`
-/

namespace A045420.P4672250090659760553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045420.P4672250090659760553

namespace A045420

/-- `∩[A045324(n+1), A045393(n+1)]` -/
def P4672250090659760553.Spec : Prop :=
  ∀ n, (P4672250090659760553.a n : ℤ) = A045420 (n + 1)

end A045420

/-! ## A045420.P16615672299078491909

`p?[or(1, A047355(n+1))]`
-/

namespace A045420.P16615672299078491909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A047355 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045420.P16615672299078491909

namespace A045420

/-- `p?[or(1, A047355(n+1))]` -/
def P16615672299078491909.Spec : Prop :=
  ∀ n, P16615672299078491909.a n = A045420 (n + 1)

end A045420

/-! ## A045420.P7450633792881252001

`p?[A032766(floor(n/2))+n]`
-/

namespace A045420.P7450633792881252001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045420.P7450633792881252001

namespace A045420

/-- `p?[A032766(floor(n/2))+n]` -/
def P7450633792881252001.Spec : Prop :=
  ∀ n, P7450633792881252001.a n = A045420 (n + 1)

end A045420

/-!
# A045421: Primes congruent to {0, 3, 4} mod 7.

The programs for A045421, the canonical program `A045421.P3203693625388626806` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045421 has offset 1).

The definition of A045421 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A045421.anchor (n : ℕ) (hn : 1 ≤ n) : A045421 n = (Nat.nth (fun p => p.Prime ∧ p % 7 ∈ ({0, 3, 4} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A045.A045421`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A045421.P4337935373933870307

`∪[A045425(n+1), A045432(n+1)]`
-/

namespace A045421.P4337935373933870307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045421.P4337935373933870307

namespace A045421

/-- `∪[A045425(n+1), A045432(n+1)]` -/
def P4337935373933870307.Spec : Prop :=
  ∀ n, (P4337935373933870307.a n : ℤ) = A045421 (n + 1)

end A045421

/-! ## A045421.P16162012249135549725

`∪[A045471(n+1), A045425(n+1)]`
-/

namespace A045421.P16162012249135549725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045421.P16162012249135549725

namespace A045421

/-- `∪[A045471(n+1), A045425(n+1)]` -/
def P16162012249135549725.Spec : Prop :=
  ∀ n, (P16162012249135549725.a n : ℤ) = A045421 (n + 1)

end A045421

/-! ## A045421.P710405017095922640

`∪[A200961(n+1), A045432(n+1)]`
-/

namespace A045421.P710405017095922640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045421.P710405017095922640

namespace A045421

/-- `∪[A200961(n+1), A045432(n+1)]` -/
def P710405017095922640.Spec : Prop :=
  ∀ n, (P710405017095922640.a n : ℤ) = A045421 (n + 1)

end A045421

/-! ## A045421.P3681624484996486090

`∪[A201116(n+1), A045432(n+1)]`
-/

namespace A045421.P3681624484996486090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045421.P3681624484996486090

namespace A045421

/-- `∪[A201116(n+1), A045432(n+1)]` -/
def P3681624484996486090.Spec : Prop :=
  ∀ n, (P3681624484996486090.a n : ℤ) = A045421 (n + 1)

end A045421

/-! ## A045421.P18326017446236274161

`∪[A201305(n+1), A045432(n+1)]`
-/

namespace A045421.P18326017446236274161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201305 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045421.P18326017446236274161

namespace A045421

/-- `∪[A201305(n+1), A045432(n+1)]` -/
def P18326017446236274161.Spec : Prop :=
  ∀ n, (P18326017446236274161.a n : ℤ) = A045421 (n + 1)

end A045421

/-! ## A045421.P3203693625388626806

`p?[a(n-3)+7]` with `a(0)=0, a(1)=3, a(2)=4`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045421

/-- `p?[a(n-3)+7]` -/
def P3203693625388626806.Spec : Prop :=
  ∀ n, (P3203693625388626806.a n : ℤ) = A045421 (n + 1)

theorem P3203693625388626806.correct : P3203693625388626806.Spec := by
  intro n
  simp only [A045421, Nat.add_sub_cancel]

end A045421

/-! ## A045421.P3805476769249819543

`p?[ogf((3x+x^2+3x^3)/(1-x-x^3+x^4))]`
-/

namespace A045421.P3805476769249819543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 1, 3] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045421.P3805476769249819543

namespace A045421

/-- `p?[ogf((3x+x^2+3x^3)/(1-x-x^3+x^4))]` -/
def P3805476769249819543.Spec : Prop :=
  ∀ n, P3805476769249819543.a n = A045421 (n + 1)

end A045421

/-! ## A045421.P5139121187874566575

`∩[A045325(n+1), A045418(n+1)]`
-/

namespace A045421.P5139121187874566575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045421.P5139121187874566575

namespace A045421

/-- `∩[A045325(n+1), A045418(n+1)]` -/
def P5139121187874566575.Spec : Prop :=
  ∀ n, (P5139121187874566575.a n : ℤ) = A045421 (n + 1)

end A045421

/-! ## A045421.P16032722137538376054

`∩[A045325(n+1), A045420(n+1)]`
-/

namespace A045421.P16032722137538376054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045421.P16032722137538376054

namespace A045421

/-- `∩[A045325(n+1), A045420(n+1)]` -/
def P16032722137538376054.Spec : Prop :=
  ∀ n, (P16032722137538376054.a n : ℤ) = A045421 (n + 1)

end A045421

/-! ## A045421.P14223589905893773572

`∩[A045325(n+1), A045397(n+1)]`
-/

namespace A045421.P14223589905893773572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045421.P14223589905893773572

namespace A045421

/-- `∩[A045325(n+1), A045397(n+1)]` -/
def P14223589905893773572.Spec : Prop :=
  ∀ n, (P14223589905893773572.a n : ℤ) = A045421 (n + 1)

end A045421

/-! ## A045421.P13671991635635617103

`∩[A045397(n+1), A045418(n+1)]`
-/

namespace A045421.P13671991635635617103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045421.P13671991635635617103

namespace A045421

/-- `∩[A045397(n+1), A045418(n+1)]` -/
def P13671991635635617103.Spec : Prop :=
  ∀ n, (P13671991635635617103.a n : ℤ) = A045421 (n + 1)

end A045421

/-! ## A045421.P10265341821347045534

`∩[A045324(n+1), A045397(n+1)]`
-/

namespace A045421.P10265341821347045534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045421.P10265341821347045534

namespace A045421

/-- `∩[A045324(n+1), A045397(n+1)]` -/
def P10265341821347045534.Spec : Prop :=
  ∀ n, (P10265341821347045534.a n : ℤ) = A045421 (n + 1)

end A045421

/-! ## A045421.P4342555648810893043

`∩[A045324(n+1), A045418(n+1)]`
-/

namespace A045421.P4342555648810893043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045421.P4342555648810893043

namespace A045421

/-- `∩[A045324(n+1), A045418(n+1)]` -/
def P4342555648810893043.Spec : Prop :=
  ∀ n, (P4342555648810893043.a n : ℤ) = A045421 (n + 1)

end A045421

/-! ## A045421.P508796794060307048

`∩[A045325(n+1), A045417(n+1)]`
-/

namespace A045421.P508796794060307048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045421.P508796794060307048

namespace A045421

/-- `∩[A045325(n+1), A045417(n+1)]` -/
def P508796794060307048.Spec : Prop :=
  ∀ n, (P508796794060307048.a n : ℤ) = A045421 (n + 1)

end A045421

/-! ## A045421.P17681577675317141240

`∩[A045322(n+1), A045396(n+1)]`
-/

namespace A045421.P17681577675317141240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045421.P17681577675317141240

namespace A045421

/-- `∩[A045322(n+1), A045396(n+1)]` -/
def P17681577675317141240.Spec : Prop :=
  ∀ n, (P17681577675317141240.a n : ℤ) = A045421 (n + 1)

end A045421

/-! ## A045421.P3514006002319464936

`∩[A045322(n+1), A045397(n+1)]`
-/

namespace A045421.P3514006002319464936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045421.P3514006002319464936

namespace A045421

/-- `∩[A045322(n+1), A045397(n+1)]` -/
def P3514006002319464936.Spec : Prop :=
  ∀ n, (P3514006002319464936.a n : ℤ) = A045421 (n + 1)

end A045421

/-! ## A045421.P12285617776789697864

`∩[A045325(n+1), A045396(n+1)]`
-/

namespace A045421.P12285617776789697864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045421.P12285617776789697864

namespace A045421

/-- `∩[A045325(n+1), A045396(n+1)]` -/
def P12285617776789697864.Spec : Prop :=
  ∀ n, (P12285617776789697864.a n : ℤ) = A045421 (n + 1)

end A045421

/-! ## A045421.P5765649490514013747

`∩[A045322(n+1), A045420(n+1)]`
-/

namespace A045421.P5765649490514013747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045421.P5765649490514013747

namespace A045421

/-- `∩[A045322(n+1), A045420(n+1)]` -/
def P5765649490514013747.Spec : Prop :=
  ∀ n, (P5765649490514013747.a n : ℤ) = A045421 (n + 1)

end A045421

/-! ## A045421.P2319324836510387138

`∩[A042989(n+1), A045417(n+1)]`
-/

namespace A045421.P2319324836510387138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045421.P2319324836510387138

namespace A045421

/-- `∩[A042989(n+1), A045417(n+1)]` -/
def P2319324836510387138.Spec : Prop :=
  ∀ n, (P2319324836510387138.a n : ℤ) = A045421 (n + 1)

end A045421

/-! ## A045421.P4668241679930303879

`∩[A042989(n+1), A045418(n+1)]`
-/

namespace A045421.P4668241679930303879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045421.P4668241679930303879

namespace A045421

/-- `∩[A042989(n+1), A045418(n+1)]` -/
def P4668241679930303879.Spec : Prop :=
  ∀ n, (P4668241679930303879.a n : ℤ) = A045421 (n + 1)

end A045421

/-!
# A045422: Primes congruent to {0, 1, 3, 6} mod 7.

The programs for A045422, the canonical program `A045422.P2170341325868455356` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045422 has offset 1).

The definition of A045422 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045422.P10395560407931856223

`∪[A002383(n+1), A045433(n+1)]`
-/

namespace A045422.P10395560407931856223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045422.P10395560407931856223

namespace A045422

/-- `∪[A002383(n+1), A045433(n+1)]` -/
def P10395560407931856223.Spec : Prop :=
  ∀ n, (P10395560407931856223.a n : ℤ) = A045422 (n + 1)

end A045422

/-! ## A045422.P17489296903562711838

`∪[A022008(n+1), A045433(n+1)]`
-/

namespace A045422.P17489296903562711838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045422.P17489296903562711838

namespace A045422

/-- `∪[A022008(n+1), A045433(n+1)]` -/
def P17489296903562711838.Spec : Prop :=
  ∀ n, (P17489296903562711838.a n : ℤ) = A045422 (n + 1)

end A045422

/-! ## A045422.P15716045400465338152

`∪[A045424(n+1), A045423(n+1)]`
-/

namespace A045422.P15716045400465338152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045422.P15716045400465338152

namespace A045422

/-- `∪[A045424(n+1), A045423(n+1)]` -/
def P15716045400465338152.Spec : Prop :=
  ∀ n, (P15716045400465338152.a n : ℤ) = A045422 (n + 1)

end A045422

/-! ## A045422.P12455173012154001561

`∪[A045423(n+1), A045436(n+1)]`
-/

namespace A045422.P12455173012154001561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045422.P12455173012154001561

namespace A045422

/-- `∪[A045423(n+1), A045436(n+1)]` -/
def P12455173012154001561.Spec : Prop :=
  ∀ n, (P12455173012154001561.a n : ℤ) = A045422 (n + 1)

end A045422

/-! ## A045422.P17972336048776678808

`∪[A045463(n+1), A045423(n+1)]`
-/

namespace A045422.P17972336048776678808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045463 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045422.P17972336048776678808

namespace A045422

/-- `∪[A045463(n+1), A045423(n+1)]` -/
def P17972336048776678808.Spec : Prop :=
  ∀ n, (P17972336048776678808.a n : ℤ) = A045422 (n + 1)

end A045422

/-! ## A045422.P5855116799547043136

`∪[A045424(n+1), A045464(n+1)]`
-/

namespace A045422.P5855116799547043136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045422.P5855116799547043136

namespace A045422

/-- `∪[A045424(n+1), A045464(n+1)]` -/
def P5855116799547043136.Spec : Prop :=
  ∀ n, (P5855116799547043136.a n : ℤ) = A045422 (n + 1)

end A045422

/-! ## A045422.P9973471946939822386

`∪[A045433(n+1), A047977(n+1)]`
-/

namespace A045422.P9973471946939822386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045422.P9973471946939822386

namespace A045422

/-- `∪[A045433(n+1), A047977(n+1)]` -/
def P9973471946939822386.Spec : Prop :=
  ∀ n, (P9973471946939822386.a n : ℤ) = A045422 (n + 1)

end A045422

/-! ## A045422.P15623165568810911366

`∪[A045433(n+1), A053183(n+1)]`
-/

namespace A045422.P15623165568810911366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045422.P15623165568810911366

namespace A045422

/-- `∪[A045433(n+1), A053183(n+1)]` -/
def P15623165568810911366.Spec : Prop :=
  ∀ n, (P15623165568810911366.a n : ℤ) = A045422 (n + 1)

end A045422

/-! ## A045422.P3507964740544368843

`∪[A045433(n+1), A056909(n+1)]`
-/

namespace A045422.P3507964740544368843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045422.P3507964740544368843

namespace A045422

/-- `∪[A045433(n+1), A056909(n+1)]` -/
def P3507964740544368843.Spec : Prop :=
  ∀ n, (P3507964740544368843.a n : ℤ) = A045422 (n + 1)

end A045422

/-! ## A045422.P2170341325868455356

`∪[A066436(n+1), A045433(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A045422

/-- `∪[A066436(n+1), A045433(n+1)]` -/
def P2170341325868455356.Spec : Prop :=
  ∀ n, (P2170341325868455356.a n : ℤ) = A045422 (n + 1)

theorem P2170341325868455356.correct : P2170341325868455356.Spec := by
  intro n
  simp only [A045422, Nat.add_sub_cancel]

end A045422

/-! ## A045422.P4025871064725806459

`p?[a(n-4)+7]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=6`
-/

namespace A045422.P4025871064725806459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 6] fun n f1 =>
  f1 (n - 4) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045422.P4025871064725806459

namespace A045422

/-- `p?[a(n-4)+7]` -/
def P4025871064725806459.Spec : Prop :=
  ∀ n, (P4025871064725806459.a n : ℤ) = A045422 (n + 1)

end A045422

/-! ## A045422.P7438969500536615103

`∩[A045328(n+1), A045417(n+1)]`
-/

namespace A045422.P7438969500536615103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045422.P7438969500536615103

namespace A045422

/-- `∩[A045328(n+1), A045417(n+1)]` -/
def P7438969500536615103.Spec : Prop :=
  ∀ n, (P7438969500536615103.a n : ℤ) = A045422 (n + 1)

end A045422

/-! ## A045422.P6524731229316922148

`∩[A045328(n+1), A045398(n+1)]`
-/

namespace A045422.P6524731229316922148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045422.P6524731229316922148

namespace A045422

/-- `∩[A045328(n+1), A045398(n+1)]` -/
def P6524731229316922148.Spec : Prop :=
  ∀ n, (P6524731229316922148.a n : ℤ) = A045422 (n + 1)

end A045422

/-! ## A045422.P16551177572884160397

`∩[A045398(n+1), A045417(n+1)]`
-/

namespace A045422.P16551177572884160397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045422.P16551177572884160397

namespace A045422

/-- `∩[A045398(n+1), A045417(n+1)]` -/
def P16551177572884160397.Spec : Prop :=
  ∀ n, (P16551177572884160397.a n : ℤ) = A045422 (n + 1)

end A045422

/-! ## A045422.P12997552917837650016

`∩[A045320(n+1), A045398(n+1)]`
-/

namespace A045422.P12997552917837650016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045422.P12997552917837650016

namespace A045422

/-- `∩[A045320(n+1), A045398(n+1)]` -/
def P12997552917837650016.Spec : Prop :=
  ∀ n, (P12997552917837650016.a n : ℤ) = A045422 (n + 1)

end A045422

/-! ## A045422.P15960985000958727463

`∩[A045417(n+1), A042990(n)]`
-/

namespace A045422.P15960985000958727463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045422.P15960985000958727463

namespace A045422

/-- `∩[A045417(n+1), A042990(n)]` -/
def P15960985000958727463.Spec : Prop :=
  ∀ n, (P15960985000958727463.a n : ℤ) = A045422 (n + 1)

end A045422

/-! ## A045422.P16811120375493264891

`∩[A045328(n+1), A045393(n+1)]`
-/

namespace A045422.P16811120375493264891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045422.P16811120375493264891

namespace A045422

/-- `∩[A045328(n+1), A045393(n+1)]` -/
def P16811120375493264891.Spec : Prop :=
  ∀ n, (P16811120375493264891.a n : ℤ) = A045422 (n + 1)

end A045422

/-! ## A045422.P7450153764437470284

`p?[A266297(n+1)+1+n]`
-/

namespace A045422.P7450153764437470284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266297 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045422.P7450153764437470284

namespace A045422

/-- `p?[A266297(n+1)+1+n]` -/
def P7450153764437470284.Spec : Prop :=
  ∀ n, P7450153764437470284.a n = A045422 (n + 1)

end A045422

/-! ## A045422.P5364400419998990621

`∩[A045398(n+1), A162699(n+1)-2]`
-/

namespace A045422.P5364400419998990621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162699 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045422.P5364400419998990621

namespace A045422

/-- `∩[A045398(n+1), A162699(n+1)-2]` -/
def P5364400419998990621.Spec : Prop :=
  ∀ n, (P5364400419998990621.a n : ℤ) = A045422 (n + 1)

end A045422

/-! ## A045422.P12575521374766040768

`p?[A047233(A047237(n+1)+1)-or(1, n+1)]`
-/

namespace A045422.P12575521374766040768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047233 (A047237 (n + 1) + 1).toNat - (Nat.lor 1 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045422.P12575521374766040768

namespace A045422

/-- `p?[A047233(A047237(n+1)+1)-or(1, n+1)]` -/
def P12575521374766040768.Spec : Prop :=
  ∀ n, P12575521374766040768.a n = A045422 (n + 1)

end A045422

/-!
# A045423: Primes congruent to {0, 3, 6} mod 7.

The programs for A045423, the canonical program `A045423.P3813189958740387075` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045423 has offset 1).

The definition of A045423 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A045423.anchor (n : ℕ) (hn : 1 ≤ n) : A045423 n = (Nat.nth (fun p => p.Prime ∧ p % 7 ∈ ({0, 3, 6} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A045.A045423`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A045423.P5307446980697988852

`∪[A022008(n+1), A045434(n+1)]`
-/

namespace A045423.P5307446980697988852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045434 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045423.P5307446980697988852

namespace A045423

/-- `∪[A022008(n+1), A045434(n+1)]` -/
def P5307446980697988852.Spec : Prop :=
  ∀ n, (P5307446980697988852.a n : ℤ) = A045423 (n + 1)

end A045423

/-! ## A045423.P12880617758965035400

`∪[A200961(n+1), A045434(n+1)]`
-/

namespace A045423.P12880617758965035400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045434 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045423.P12880617758965035400

namespace A045423

/-- `∪[A200961(n+1), A045434(n+1)]` -/
def P12880617758965035400.Spec : Prop :=
  ∀ n, (P12880617758965035400.a n : ℤ) = A045423 (n + 1)

end A045423

/-! ## A045423.P3813189958740387075

`p?[a(n-3)+7]` with `a(0)=0, a(1)=3, a(2)=6`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045423

/-- `p?[a(n-3)+7]` -/
def P3813189958740387075.Spec : Prop :=
  ∀ n, (P3813189958740387075.a n : ℤ) = A045423 (n + 1)

theorem P3813189958740387075.correct : P3813189958740387075.Spec := by
  intro n
  simp only [A045423, Nat.add_sub_cancel]

end A045423

/-! ## A045423.P16977491459872531430

`p?[ogf((3x+3x^2+x^3)/(1-x-x^3+x^4))]`
-/

namespace A045423.P16977491459872531430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 3, 1] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045423.P16977491459872531430

namespace A045423

/-- `p?[ogf((3x+3x^2+x^3)/(1-x-x^3+x^4))]` -/
def P16977491459872531430.Spec : Prop :=
  ∀ n, P16977491459872531430.a n = A045423 (n + 1)

end A045423

/-! ## A045423.P16879171268826419821

`∩[A045329(n+1), A045422(n+1)]`
-/

namespace A045423.P16879171268826419821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045423.P16879171268826419821

namespace A045423

/-- `∩[A045329(n+1), A045422(n+1)]` -/
def P16879171268826419821.Spec : Prop :=
  ∀ n, (P16879171268826419821.a n : ℤ) = A045423 (n + 1)

end A045423

/-! ## A045423.P5613521338855406129

`∩[A045329(n+1), A045418(n+1)]`
-/

namespace A045423.P5613521338855406129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045423.P5613521338855406129

namespace A045423

/-- `∩[A045329(n+1), A045418(n+1)]` -/
def P5613521338855406129.Spec : Prop :=
  ∀ n, (P5613521338855406129.a n : ℤ) = A045423 (n + 1)

end A045423

/-! ## A045423.P17609187867819141405

`∩[A045329(n+1), A045399(n+1)]`
-/

namespace A045423.P17609187867819141405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045423.P17609187867819141405

namespace A045423

/-- `∩[A045329(n+1), A045399(n+1)]` -/
def P17609187867819141405.Spec : Prop :=
  ∀ n, (P17609187867819141405.a n : ℤ) = A045423 (n + 1)

end A045423

/-! ## A045423.P5985934664364453373

`∩[A045329(n+1), A045417(n+1)]`
-/

namespace A045423.P5985934664364453373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045423.P5985934664364453373

namespace A045423

/-- `∩[A045329(n+1), A045417(n+1)]` -/
def P5985934664364453373.Spec : Prop :=
  ∀ n, (P5985934664364453373.a n : ℤ) = A045423 (n + 1)

end A045423

/-! ## A045423.P6439644999324110388

`∩[A045417(n+1), A045399(n+1)]`
-/

namespace A045423.P6439644999324110388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045423.P6439644999324110388

namespace A045423

/-- `∩[A045417(n+1), A045399(n+1)]` -/
def P6439644999324110388.Spec : Prop :=
  ∀ n, (P6439644999324110388.a n : ℤ) = A045423 (n + 1)

end A045423

/-! ## A045423.P1654992572024994255

`∩[A045322(n+1), A045399(n+1)]`
-/

namespace A045423.P1654992572024994255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045423.P1654992572024994255

namespace A045423

/-- `∩[A045322(n+1), A045399(n+1)]` -/
def P1654992572024994255.Spec : Prop :=
  ∀ n, (P1654992572024994255.a n : ℤ) = A045423 (n + 1)

end A045423

/-! ## A045423.P11959653803733151065

`∩[A045328(n+1), A045399(n+1)]`
-/

namespace A045423.P11959653803733151065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045423.P11959653803733151065

namespace A045423

/-- `∩[A045328(n+1), A045399(n+1)]` -/
def P11959653803733151065.Spec : Prop :=
  ∀ n, (P11959653803733151065.a n : ℤ) = A045423 (n + 1)

end A045423

/-! ## A045423.P12278738398431074552

`∩[A045322(n+1), A045422(n+1)]`
-/

namespace A045423.P12278738398431074552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045423.P12278738398431074552

namespace A045423

/-- `∩[A045322(n+1), A045422(n+1)]` -/
def P12278738398431074552.Spec : Prop :=
  ∀ n, (P12278738398431074552.a n : ℤ) = A045423 (n + 1)

end A045423

/-! ## A045423.P1117555689618689089

`∩[A045328(n+1), A045418(n+1)]`
-/

namespace A045423.P1117555689618689089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045423.P1117555689618689089

namespace A045423

/-- `∩[A045328(n+1), A045418(n+1)]` -/
def P1117555689618689089.Spec : Prop :=
  ∀ n, (P1117555689618689089.a n : ℤ) = A045423 (n + 1)

end A045423

/-! ## A045423.P2947909497206491581

`∩[A045322(n+1), A045398(n+1)]`
-/

namespace A045423.P2947909497206491581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045423.P2947909497206491581

namespace A045423

/-- `∩[A045322(n+1), A045398(n+1)]` -/
def P2947909497206491581.Spec : Prop :=
  ∀ n, (P2947909497206491581.a n : ℤ) = A045423 (n + 1)

end A045423

/-! ## A045423.P4532543401955419296

`∩[A045328(n+1), A045394(n+1)]`
-/

namespace A045423.P4532543401955419296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045423.P4532543401955419296

namespace A045423

/-- `∩[A045328(n+1), A045394(n+1)]` -/
def P4532543401955419296.Spec : Prop :=
  ∀ n, (P4532543401955419296.a n : ℤ) = A045423 (n + 1)

end A045423

/-! ## A045423.P13630083902441507596

`∩[A045329(n+1), A045394(n+1)]`
-/

namespace A045423.P13630083902441507596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045423.P13630083902441507596

namespace A045423

/-- `∩[A045329(n+1), A045394(n+1)]` -/
def P13630083902441507596.Spec : Prop :=
  ∀ n, (P13630083902441507596.a n : ℤ) = A045423 (n + 1)

end A045423

/-! ## A045423.P14343830420313061464

`∩[A045329(n+1), A045398(n+1)]`
-/

namespace A045423.P14343830420313061464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045423.P14343830420313061464

namespace A045423

/-- `∩[A045329(n+1), A045398(n+1)]` -/
def P14343830420313061464.Spec : Prop :=
  ∀ n, (P14343830420313061464.a n : ℤ) = A045423 (n + 1)

end A045423

/-! ## A045423.P6582620980829793463

`∩[A045394(n+1), A045422(n+1)]`
-/

namespace A045423.P6582620980829793463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045423.P6582620980829793463

namespace A045423

/-- `∩[A045394(n+1), A045422(n+1)]` -/
def P6582620980829793463.Spec : Prop :=
  ∀ n, (P6582620980829793463.a n : ℤ) = A045423 (n + 1)

end A045423

/-! ## A045423.P15327757076115203545

`∩[A045418(n+1), A045398(n+1)]`
-/

namespace A045423.P15327757076115203545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045418 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045423.P15327757076115203545

namespace A045423

/-- `∩[A045418(n+1), A045398(n+1)]` -/
def P15327757076115203545.Spec : Prop :=
  ∀ n, (P15327757076115203545.a n : ℤ) = A045423 (n + 1)

end A045423

/-! ## A045423.P3986134876354764853

`∩[A042992(n+1), A045417(n+1)]`
-/

namespace A045423.P3986134876354764853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045423.P3986134876354764853

namespace A045423

/-- `∩[A042992(n+1), A045417(n+1)]` -/
def P3986134876354764853.Spec : Prop :=
  ∀ n, (P3986134876354764853.a n : ℤ) = A045423 (n + 1)

end A045423

/-!
# A045424: Primes congruent to {0, 1, 3} mod 7.

The programs for A045424, the canonical program `A045424.P1819595906686148591` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045424 has offset 1).

The definition of A045424 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A045424.anchor (n : ℕ) (hn : 1 ≤ n) : A045424 n = (Nat.nth (fun p => p.Prime ∧ p % 7 ∈ ({0, 1, 3} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A045.A045424`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A045424.P311163827761695971

`∪[A045425(n+1), A045436(n+1)]`
-/

namespace A045424.P311163827761695971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045424.P311163827761695971

namespace A045424

/-- `∪[A045425(n+1), A045436(n+1)]` -/
def P311163827761695971.Spec : Prop :=
  ∀ n, (P311163827761695971.a n : ℤ) = A045424 (n + 1)

end A045424

/-! ## A045424.P1199304173850179037

`∪[A077721(n+1), A045436(n+1)]`
-/

namespace A045424.P1199304173850179037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045424.P1199304173850179037

namespace A045424

/-- `∪[A077721(n+1), A045436(n+1)]` -/
def P1199304173850179037.Spec : Prop :=
  ∀ n, (P1199304173850179037.a n : ℤ) = A045424 (n + 1)

end A045424

/-! ## A045424.P9110641503932932910

`∪[A088550(n+1), A045436(n+1)]`
-/

namespace A045424.P9110641503932932910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045424.P9110641503932932910

namespace A045424

/-- `∪[A088550(n+1), A045436(n+1)]` -/
def P9110641503932932910.Spec : Prop :=
  ∀ n, (P9110641503932932910.a n : ℤ) = A045424 (n + 1)

end A045424

/-! ## A045424.P12496693144397989106

`∪[A182346(n+1), A045436(n+1)]`
-/

namespace A045424.P12496693144397989106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045424.P12496693144397989106

namespace A045424

/-- `∪[A182346(n+1), A045436(n+1)]` -/
def P12496693144397989106.Spec : Prop :=
  ∀ n, (P12496693144397989106.a n : ℤ) = A045424 (n + 1)

end A045424

/-! ## A045424.P1819595906686148591

`p?[a(n-3)+7]` with `a(0)=0, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045424

/-- `p?[a(n-3)+7]` -/
def P1819595906686148591.Spec : Prop :=
  ∀ n, (P1819595906686148591.a n : ℤ) = A045424 (n + 1)

theorem P1819595906686148591.correct : P1819595906686148591.Spec := by
  intro n
  simp only [A045424, Nat.add_sub_cancel]

end A045424

/-! ## A045424.P9803159762940690

`p?[ogf((x+2x^2+4x^3)/(1-x-x^3+x^4))]`
-/

namespace A045424.P9803159762940690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 4] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045424.P9803159762940690

namespace A045424

/-- `p?[ogf((x+2x^2+4x^3)/(1-x-x^3+x^4))]` -/
def P9803159762940690.Spec : Prop :=
  ∀ n, P9803159762940690.a n = A045424 (n + 1)

end A045424

/-! ## A045424.P1457999003871953383

`∩[A045332(n+1), A045420(n+1)]`
-/

namespace A045424.P1457999003871953383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045424.P1457999003871953383

namespace A045424

/-- `∩[A045332(n+1), A045420(n+1)]` -/
def P1457999003871953383.Spec : Prop :=
  ∀ n, (P1457999003871953383.a n : ℤ) = A045424 (n + 1)

end A045424

/-! ## A045424.P18205003678946754268

`∩[A045332(n+1), A045400(n+1)]`
-/

namespace A045424.P18205003678946754268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045424.P18205003678946754268

namespace A045424

/-- `∩[A045332(n+1), A045400(n+1)]` -/
def P18205003678946754268.Spec : Prop :=
  ∀ n, (P18205003678946754268.a n : ℤ) = A045424 (n + 1)

end A045424

/-! ## A045424.P16188128052318572535

`∩[A045400(n+1), A045422(n+1)]`
-/

namespace A045424.P16188128052318572535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045424.P16188128052318572535

namespace A045424

/-- `∩[A045400(n+1), A045422(n+1)]` -/
def P16188128052318572535.Spec : Prop :=
  ∀ n, (P16188128052318572535.a n : ℤ) = A045424 (n + 1)

end A045424

/-! ## A045424.P10059965819599186533

`∩[A045324(n+1), A045400(n+1)]`
-/

namespace A045424.P10059965819599186533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045424.P10059965819599186533

namespace A045424

/-- `∩[A045324(n+1), A045400(n+1)]` -/
def P10059965819599186533.Spec : Prop :=
  ∀ n, (P10059965819599186533.a n : ℤ) = A045424 (n + 1)

end A045424

/-! ## A045424.P13449223460447467875

`∩[A045324(n+1), A045422(n+1)]`
-/

namespace A045424.P13449223460447467875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045424.P13449223460447467875

namespace A045424

/-- `∩[A045324(n+1), A045422(n+1)]` -/
def P13449223460447467875.Spec : Prop :=
  ∀ n, (P13449223460447467875.a n : ℤ) = A045424 (n + 1)

end A045424

/-! ## A045424.P9680947208903304618

`∩[A045332(n+1), A045417(n+1)]`
-/

namespace A045424.P9680947208903304618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045424.P9680947208903304618

namespace A045424

/-- `∩[A045332(n+1), A045417(n+1)]` -/
def P9680947208903304618.Spec : Prop :=
  ∀ n, (P9680947208903304618.a n : ℤ) = A045424 (n + 1)

end A045424

/-! ## A045424.P3228646899996831357

`∩[A045328(n+1), A045396(n+1)]`
-/

namespace A045424.P3228646899996831357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045424.P3228646899996831357

namespace A045424

/-- `∩[A045328(n+1), A045396(n+1)]` -/
def P3228646899996831357.Spec : Prop :=
  ∀ n, (P3228646899996831357.a n : ℤ) = A045424 (n + 1)

end A045424

/-! ## A045424.P376717244698511341

`∩[A045328(n+1), A045400(n+1)]`
-/

namespace A045424.P376717244698511341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045424.P376717244698511341

namespace A045424

/-- `∩[A045328(n+1), A045400(n+1)]` -/
def P376717244698511341.Spec : Prop :=
  ∀ n, (P376717244698511341.a n : ℤ) = A045424 (n + 1)

end A045424

/-! ## A045424.P11627372365794042653

`∩[A045332(n+1), A045396(n+1)]`
-/

namespace A045424.P11627372365794042653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045424.P11627372365794042653

namespace A045424

/-- `∩[A045332(n+1), A045396(n+1)]` -/
def P11627372365794042653.Spec : Prop :=
  ∀ n, (P11627372365794042653.a n : ℤ) = A045424 (n + 1)

end A045424

/-! ## A045424.P15701539266880192212

`∩[A045328(n+1), A045420(n+1)]`
-/

namespace A045424.P15701539266880192212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045424.P15701539266880192212

namespace A045424

/-- `∩[A045328(n+1), A045420(n+1)]` -/
def P15701539266880192212.Spec : Prop :=
  ∀ n, (P15701539266880192212.a n : ℤ) = A045424 (n + 1)

end A045424

/-! ## A045424.P3821436949542658467

`∩[A045396(n+1), A045422(n+1)]`
-/

namespace A045424.P3821436949542658467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045424.P3821436949542658467

namespace A045424

/-- `∩[A045396(n+1), A045422(n+1)]` -/
def P3821436949542658467.Spec : Prop :=
  ∀ n, (P3821436949542658467.a n : ℤ) = A045424 (n + 1)

end A045424

/-! ## A045424.P5854137655353382410

`∩[A042994(n+1), A045417(n+1)]`
-/

namespace A045424.P5854137655353382410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045424.P5854137655353382410

namespace A045424

/-- `∩[A042994(n+1), A045417(n+1)]` -/
def P5854137655353382410.Spec : Prop :=
  ∀ n, (P5854137655353382410.a n : ℤ) = A045424 (n + 1)

end A045424

/-! ## A045424.P1791419816277321696

`∩[A042994(n+1), A045420(n+1)]`
-/

namespace A045424.P1791419816277321696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045424.P1791419816277321696

namespace A045424

/-- `∩[A042994(n+1), A045420(n+1)]` -/
def P1791419816277321696.Spec : Prop :=
  ∀ n, (P1791419816277321696.a n : ℤ) = A045424 (n + 1)

end A045424

/-! ## A045424.P18139075448085892932

`∩[A042994(n+1), A045422(n+1)]`
-/

namespace A045424.P18139075448085892932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045424.P18139075448085892932

namespace A045424

/-- `∩[A042994(n+1), A045422(n+1)]` -/
def P18139075448085892932.Spec : Prop :=
  ∀ n, (P18139075448085892932.a n : ℤ) = A045424 (n + 1)

end A045424

/-!
# A045425: Primes congruent to {0, 3} mod 7.

The programs for A045425, the canonical program `A045425.P16613585973053834965` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045425 has offset 1).

The definition of A045425 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5005 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045425.P16795476415857620305

`p?[ogf((3x+x^2+3x^3+7x^4)/(1-x-x^3+x^4))]`
-/

namespace A045425.P16795476415857620305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 1, 3, 7] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045425.P16795476415857620305

namespace A045425

/-- `p?[ogf((3x+x^2+3x^3+7x^4)/(1-x-x^3+x^4))]` -/
def P16795476415857620305.Spec : Prop :=
  ∀ n, P16795476415857620305.a n = A045425 (n + 1)

end A045425

/-! ## A045425.P16613585973053834965

`p?[a(n-2)+7]` with `a(0)=3, a(1)=10, a(2)=7`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045425

/-- `p?[a(n-2)+7]` -/
def P16613585973053834965.Spec : Prop :=
  ∀ n, (P16613585973053834965.a n : ℤ) = A045425 (n + 1)

theorem P16613585973053834965.correct : P16613585973053834965.Spec := by
  intro n
  simp only [A045425, Nat.add_sub_cancel]

end A045425

/-! ## A045425.P5003869702168840022

`∩[A045421(n+1), A045423(n+1)]`
-/

namespace A045425.P5003869702168840022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045425.P5003869702168840022

namespace A045425

/-- `∩[A045421(n+1), A045423(n+1)]` -/
def P5003869702168840022.Spec : Prop :=
  ∀ n, (P5003869702168840022.a n : ℤ) = A045425 (n + 1)

end A045425

/-! ## A045425.P2191973098347361572

`∩[A045329(n+1), A045420(n+1)]`
-/

namespace A045425.P2191973098347361572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045425.P2191973098347361572

namespace A045425

/-- `∩[A045329(n+1), A045420(n+1)]` -/
def P2191973098347361572.Spec : Prop :=
  ∀ n, (P2191973098347361572.a n : ℤ) = A045425 (n + 1)

end A045425

/-! ## A045425.P9843276827499132346

`∩[A045424(n+1), A045325(n+1)]`
-/

namespace A045425.P9843276827499132346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045425.P9843276827499132346

namespace A045425

/-- `∩[A045424(n+1), A045325(n+1)]` -/
def P9843276827499132346.Spec : Prop :=
  ∀ n, (P9843276827499132346.a n : ℤ) = A045425 (n + 1)

end A045425

/-! ## A045425.P15651377017422380530

`∩[A042995(n+1), A045418(n+1)]`
-/

namespace A045425.P15651377017422380530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045425.P15651377017422380530

namespace A045425

/-- `∩[A042995(n+1), A045418(n+1)]` -/
def P15651377017422380530.Spec : Prop :=
  ∀ n, (P15651377017422380530.a n : ℤ) = A045425 (n + 1)

end A045425

/-! ## A045425.P5096690357626233314

`∩[A042995(n+1), A045420(n+1)]`
-/

namespace A045425.P5096690357626233314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045425.P5096690357626233314

namespace A045425

/-- `∩[A042995(n+1), A045420(n+1)]` -/
def P5096690357626233314.Spec : Prop :=
  ∀ n, (P5096690357626233314.a n : ℤ) = A045425 (n + 1)

end A045425

/-! ## A045425.P9668827872951653947

`∩[A042995(n+1), A045421(n+1)]`
-/

namespace A045425.P9668827872951653947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045425.P9668827872951653947

namespace A045425

/-- `∩[A042995(n+1), A045421(n+1)]` -/
def P9668827872951653947.Spec : Prop :=
  ∀ n, (P9668827872951653947.a n : ℤ) = A045425 (n + 1)

end A045425

/-! ## A045425.P12243534237383925488

`∩[A042995(n+1), A045422(n+1)]`
-/

namespace A045425.P12243534237383925488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045425.P12243534237383925488

namespace A045425

/-- `∩[A042995(n+1), A045422(n+1)]` -/
def P12243534237383925488.Spec : Prop :=
  ∀ n, (P12243534237383925488.a n : ℤ) = A045425 (n + 1)

end A045425

/-! ## A045425.P9782173153388878410

`∩[A042995(n+1), A045423(n+1)]`
-/

namespace A045425.P9782173153388878410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045425.P9782173153388878410

namespace A045425

/-- `∩[A042995(n+1), A045423(n+1)]` -/
def P9782173153388878410.Spec : Prop :=
  ∀ n, (P9782173153388878410.a n : ℤ) = A045425 (n + 1)

end A045425

/-! ## A045425.P13412053258460065654

`∩[A042995(n+1), A045424(n+1)]`
-/

namespace A045425.P13412053258460065654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045425.P13412053258460065654

namespace A045425

/-- `∩[A042995(n+1), A045424(n+1)]` -/
def P13412053258460065654.Spec : Prop :=
  ∀ n, (P13412053258460065654.a n : ℤ) = A045425 (n + 1)

end A045425

/-! ## A045425.P16480749095190090726

`∩[A042995(n+1), A045417(n+1)]`
-/

namespace A045425.P16480749095190090726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045425.P16480749095190090726

namespace A045425

/-- `∩[A042995(n+1), A045417(n+1)]` -/
def P16480749095190090726.Spec : Prop :=
  ∀ n, (P16480749095190090726.a n : ℤ) = A045425 (n + 1)

end A045425

/-! ## A045425.P3827637469240552920

`∩[A045324(n+1), A045399(n+1)]`
-/

namespace A045425.P3827637469240552920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045425.P3827637469240552920

namespace A045425

/-- `∩[A045324(n+1), A045399(n+1)]` -/
def P3827637469240552920.Spec : Prop :=
  ∀ n, (P3827637469240552920.a n : ℤ) = A045425 (n + 1)

end A045425

/-! ## A045425.P18323748173210417847

`∩[A045324(n+1), A045423(n+1)]`
-/

namespace A045425.P18323748173210417847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045425.P18323748173210417847

namespace A045425

/-- `∩[A045324(n+1), A045423(n+1)]` -/
def P18323748173210417847.Spec : Prop :=
  ∀ n, (P18323748173210417847.a n : ℤ) = A045425 (n + 1)

end A045425

/-! ## A045425.P14168157471594809580

`∩[A045322(n+1), A045400(n+1)]`
-/

namespace A045425.P14168157471594809580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045425.P14168157471594809580

namespace A045425

/-- `∩[A045322(n+1), A045400(n+1)]` -/
def P14168157471594809580.Spec : Prop :=
  ∀ n, (P14168157471594809580.a n : ℤ) = A045425 (n + 1)

end A045425

/-! ## A045425.P10362482715222789384

`∩[A045328(n+1), A045397(n+1)]`
-/

namespace A045425.P10362482715222789384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045425.P10362482715222789384

namespace A045425

/-- `∩[A045328(n+1), A045397(n+1)]` -/
def P10362482715222789384.Spec : Prop :=
  ∀ n, (P10362482715222789384.a n : ℤ) = A045425 (n + 1)

end A045425

/-! ## A045425.P10964538835749614647

`∩[A045329(n+1), A045396(n+1)]`
-/

namespace A045425.P10964538835749614647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045425.P10964538835749614647

namespace A045425

/-- `∩[A045329(n+1), A045396(n+1)]` -/
def P10964538835749614647.Spec : Prop :=
  ∀ n, (P10964538835749614647.a n : ℤ) = A045425 (n + 1)

end A045425

/-! ## A045425.P16609127815773991860

`∩[A042989(n+1), A045422(n+1)]`
-/

namespace A045425.P16609127815773991860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045425.P16609127815773991860

namespace A045425

/-- `∩[A042989(n+1), A045422(n+1)]` -/
def P16609127815773991860.Spec : Prop :=
  ∀ n, (P16609127815773991860.a n : ℤ) = A045425 (n + 1)

end A045425

/-! ## A045425.P16689269865177718235

`∩[A042989(n+1), A045423(n+1)]`
-/

namespace A045425.P16689269865177718235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045425.P16689269865177718235

namespace A045425

/-- `∩[A042989(n+1), A045423(n+1)]` -/
def P16689269865177718235.Spec : Prop :=
  ∀ n, (P16689269865177718235.a n : ℤ) = A045425 (n + 1)

end A045425

/-! ## A045425.P4072840930390537606

`∩[A042994(n+1), A045418(n+1)]`
-/

namespace A045425.P4072840930390537606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045425.P4072840930390537606

namespace A045425

/-- `∩[A042994(n+1), A045418(n+1)]` -/
def P4072840930390537606.Spec : Prop :=
  ∀ n, (P4072840930390537606.a n : ℤ) = A045425 (n + 1)

end A045425

/-!
# A045426: Primes congruent to {1, 3, 4, 6} mod 7.

The programs for A045426, the canonical program `A045426.P3979747812866442004` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045426 has offset 1).

The definition of A045426 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A045426.anchor (n : ℕ) (hn : 1 ≤ n) : A045426 n = (Nat.nth (fun p => p.Prime ∧ p % 7 ∈ ({1, 3, 4, 6} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A045.A045426`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A045426.P3979747812866442004

`p?[a(n-4)+7]` with `a(0)=1, a(1)=3, a(2)=4, a(3)=6`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045426

/-- `p?[a(n-4)+7]` -/
def P3979747812866442004.Spec : Prop :=
  ∀ n, (P3979747812866442004.a n : ℤ) = A045426 (n + 1)

theorem P3979747812866442004.correct : P3979747812866442004.Spec := by
  intro n
  simp only [A045426, Nat.add_sub_cancel]

end A045426

/-! ## A045426.P5035025293845005629

`p?[ceil(or(1, n+2)/3+2*n)]`
-/

namespace A045426.P5035025293845005629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 (n + 2) : ℚ) / 3 + (2 * n : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045426.P5035025293845005629

namespace A045426

/-- `p?[ceil(or(1, n+2)/3+2*n)]` -/
def P5035025293845005629.Spec : Prop :=
  ∀ n, P5035025293845005629.a n = A045426 (n + 1)

end A045426

/-! ## A045426.P4953625226961400115

`∪[A045427(n+1), A045431(n+1)]`
-/

namespace A045426.P4953625226961400115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045426.P4953625226961400115

namespace A045426

/-- `∪[A045427(n+1), A045431(n+1)]` -/
def P4953625226961400115.Spec : Prop :=
  ∀ n, (P4953625226961400115.a n : ℤ) = A045426 (n + 1)

end A045426

/-! ## A045426.P5617032191064289886

`∪[A045434(n+1), A045431(n+1)]`
-/

namespace A045426.P5617032191064289886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045434 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045426.P5617032191064289886

namespace A045426

/-- `∪[A045434(n+1), A045431(n+1)]` -/
def P5617032191064289886.Spec : Prop :=
  ∀ n, (P5617032191064289886.a n : ℤ) = A045426 (n + 1)

end A045426

/-! ## A045426.P17540829524479373138

`∪[A045437(n+1), A045466(n+1)]`
-/

namespace A045426.P17540829524479373138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045426.P17540829524479373138

namespace A045426

/-- `∪[A045437(n+1), A045466(n+1)]` -/
def P17540829524479373138.Spec : Prop :=
  ∀ n, (P17540829524479373138.a n : ℤ) = A045426 (n + 1)

end A045426

/-! ## A045426.P7554793832359916622

`A045417((n+1)%(2*n+1)+1)`
-/

namespace A045426.P7554793832359916622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 ((n + 1) % (2 * n + 1) + 1)

end

end A045426.P7554793832359916622

namespace A045426

/-- `A045417((n+1)%(2*n+1)+1)` -/
def P7554793832359916622.Spec : Prop :=
  ∀ n, P7554793832359916622.a n = A045426 (n + 1)

end A045426

/-! ## A045426.P18399573367697798506

`A045417(A065475(n+1))`
-/

namespace A045426.P18399573367697798506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (A065475 (n + 1)).toNat

end

end A045426.P18399573367697798506

namespace A045426

/-- `A045417(A065475(n+1))` -/
def P18399573367697798506.Spec : Prop :=
  ∀ n, P18399573367697798506.a n = A045426 (n + 1)

end A045426

/-! ## A045426.P10826286068074781945

`A045417(A181440(n+2))`
-/

namespace A045426.P10826286068074781945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (A181440 (n + 2)).toNat

end

end A045426.P10826286068074781945

namespace A045426

/-- `A045417(A181440(n+2))` -/
def P10826286068074781945.Spec : Prop :=
  ∀ n, P10826286068074781945.a n = A045426 (n + 1)

end A045426

/-! ## A045426.P9513987660257292288

`A045417(A184985(n+2))`
-/

namespace A045426.P9513987660257292288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (A184985 (n + 2)).toNat

end

end A045426.P9513987660257292288

namespace A045426

/-- `A045417(A184985(n+2))` -/
def P9513987660257292288.Spec : Prop :=
  ∀ n, P9513987660257292288.a n = A045426 (n + 1)

end A045426

/-! ## A045426.P8445461673851965330

`∩[A045334(n+1), A045417(n+1)]`
-/

namespace A045426.P8445461673851965330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045426.P8445461673851965330

namespace A045426

/-- `∩[A045334(n+1), A045417(n+1)]` -/
def P8445461673851965330.Spec : Prop :=
  ∀ n, (P8445461673851965330.a n : ℤ) = A045426 (n + 1)

end A045426

/-! ## A045426.P852515163699578050

`∩[A045320(n+1), A045402(n+1)]`
-/

namespace A045426.P852515163699578050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045426.P852515163699578050

namespace A045426

/-- `∩[A045320(n+1), A045402(n+1)]` -/
def P852515163699578050.Spec : Prop :=
  ∀ n, (P852515163699578050.a n : ℤ) = A045426 (n + 1)

end A045426

/-! ## A045426.P7127316538699254068

`∩[A045334(n+1), A045402(n+1)]`
-/

namespace A045426.P7127316538699254068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045426.P7127316538699254068

namespace A045426

/-- `∩[A045334(n+1), A045402(n+1)]` -/
def P7127316538699254068.Spec : Prop :=
  ∀ n, (P7127316538699254068.a n : ℤ) = A045426 (n + 1)

end A045426

/-! ## A045426.P7395559206652091096

`∩[A045402(n+1), A045417(n+1)]`
-/

namespace A045426.P7395559206652091096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045426.P7395559206652091096

namespace A045426

/-- `∩[A045402(n+1), A045417(n+1)]` -/
def P7395559206652091096.Spec : Prop :=
  ∀ n, (P7395559206652091096.a n : ℤ) = A045426 (n + 1)

end A045426

/-! ## A045426.P17938269825735818306

`∩[A045334(n+1), A045393(n+1)]`
-/

namespace A045426.P17938269825735818306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045426.P17938269825735818306

namespace A045426

/-- `∩[A045334(n+1), A045393(n+1)]` -/
def P17938269825735818306.Spec : Prop :=
  ∀ n, (P17938269825735818306.a n : ℤ) = A045426 (n + 1)

end A045426

/-! ## A045426.P12938697601937611003

`p?[2*A047322(n+1)+1]`
-/

namespace A045426.P12938697601937611003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047322 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045426.P12938697601937611003

namespace A045426

/-- `p?[2*A047322(n+1)+1]` -/
def P12938697601937611003.Spec : Prop :=
  ∀ n, P12938697601937611003.a n = A045426 (n + 1)

end A045426

/-! ## A045426.P7012210434944476707

`p?[2*A047279(n+1)-1]`
-/

namespace A045426.P7012210434944476707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047279 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045426.P7012210434944476707

namespace A045426

/-- `p?[2*A047279(n+1)-1]` -/
def P7012210434944476707.Spec : Prop :=
  ∀ n, P7012210434944476707.a n = A045426 (n + 1)

end A045426

/-! ## A045426.P7101249103158027149

`p?[∑[A076840(n+2)]]`
-/

namespace A045426.P7101249103158027149
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076840 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045426.P7101249103158027149

namespace A045426

/-- `p?[∑[A076840(n+2)]]` -/
def P7101249103158027149.Spec : Prop :=
  ∀ n, P7101249103158027149.a n = A045426 (n + 1)

end A045426

/-! ## A045426.P4503896251930726804

`p?[A047498(n+2)+n]`
-/

namespace A045426.P4503896251930726804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047498 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045426.P4503896251930726804

namespace A045426

/-- `p?[A047498(n+2)+n]` -/
def P4503896251930726804.Spec : Prop :=
  ∀ n, P4503896251930726804.a n = A045426 (n + 1)

end A045426

/-! ## A045426.P7245802742532616154

`p?[A047517(n+1)+1+n]`
-/

namespace A045426.P7245802742532616154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047517 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045426.P7245802742532616154

namespace A045426

/-- `p?[A047517(n+1)+1+n]` -/
def P7245802742532616154.Spec : Prop :=
  ∀ n, P7245802742532616154.a n = A045426 (n + 1)

end A045426

/-! ## A045426.P2962730369820175505

`∩[A045417(n+1), A162699(n+1)]`
-/

namespace A045426.P2962730369820175505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045426.P2962730369820175505

namespace A045426

/-- `∩[A045417(n+1), A162699(n+1)]` -/
def P2962730369820175505.Spec : Prop :=
  ∀ n, (P2962730369820175505.a n : ℤ) = A045426 (n + 1)

end A045426

/-!
# A045427: Primes congruent to {3, 4, 6} mod 7.

The programs for A045427, the canonical program `A045427.P603247744062735010` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045427 has offset 1).

The definition of A045427 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A045427.anchor (n : ℕ) (hn : 1 ≤ n) : A045427 n = (Nat.nth (fun p => p.Prime ∧ p % 7 ∈ ({3, 4, 6} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A045.A045427`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A045427.P603247744062735010

`p?[a(n-3)+7]` with `a(0)=3, a(1)=4, a(2)=6`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045427

/-- `p?[a(n-3)+7]` -/
def P603247744062735010.Spec : Prop :=
  ∀ n, (P603247744062735010.a n : ℤ) = A045427 (n + 1)

theorem P603247744062735010.correct : P603247744062735010.Spec := by
  intro n
  simp only [A045427, Nat.add_sub_cancel]

end A045427

/-! ## A045427.P15251666343202280904

`p?[ogf((3+x+2x^2+x^3)/(1-x-x^3+x^4))]`
-/

namespace A045427.P15251666343202280904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1, 2, 1] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045427.P15251666343202280904

namespace A045427

/-- `p?[ogf((3+x+2x^2+x^3)/(1-x-x^3+x^4))]` -/
def P15251666343202280904.Spec : Prop :=
  ∀ n, P15251666343202280904.a n = A045427 (n + 1)

end A045427

/-! ## A045427.P15495732794594281509

`A045418((n+1)%(2*n+1)+1)`
-/

namespace A045427.P15495732794594281509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045418 ((n + 1) % (2 * n + 1) + 1)

end

end A045427.P15495732794594281509

namespace A045427

/-- `A045418((n+1)%(2*n+1)+1)` -/
def P15495732794594281509.Spec : Prop :=
  ∀ n, P15495732794594281509.a n = A045427 (n + 1)

end A045427

/-! ## A045427.P13904841809330412035

`A045418(A065475(n+1))`
-/

namespace A045427.P13904841809330412035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045418 (A065475 (n + 1)).toNat

end

end A045427.P13904841809330412035

namespace A045427

/-- `A045418(A065475(n+1))` -/
def P13904841809330412035.Spec : Prop :=
  ∀ n, P13904841809330412035.a n = A045427 (n + 1)

end A045427

/-! ## A045427.P17082249461929610719

`A045418(A181440(n+2))`
-/

namespace A045427.P17082249461929610719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045418 (A181440 (n + 2)).toNat

end

end A045427.P17082249461929610719

namespace A045427

/-- `A045418(A181440(n+2))` -/
def P17082249461929610719.Spec : Prop :=
  ∀ n, P17082249461929610719.a n = A045427 (n + 1)

end A045427

/-! ## A045427.P14452798197544158950

`A045418(A184985(n+2))`
-/

namespace A045427.P14452798197544158950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045418 (A184985 (n + 2)).toNat

end

end A045427.P14452798197544158950

namespace A045427

/-- `A045418(A184985(n+2))` -/
def P14452798197544158950.Spec : Prop :=
  ∀ n, P14452798197544158950.a n = A045427 (n + 1)

end A045427

/-! ## A045427.P15743846391525462198

`∩[A045322(n+1), A045426(n+1)]`
-/

namespace A045427.P15743846391525462198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045427.P15743846391525462198

namespace A045427

/-- `∩[A045322(n+1), A045426(n+1)]` -/
def P15743846391525462198.Spec : Prop :=
  ∀ n, (P15743846391525462198.a n : ℤ) = A045427 (n + 1)

end A045427

/-! ## A045427.P10393023162845453742

`∩[A045322(n+1), A045404(n+1)]`
-/

namespace A045427.P10393023162845453742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045427.P10393023162845453742

namespace A045427

/-- `∩[A045322(n+1), A045404(n+1)]` -/
def P10393023162845453742.Spec : Prop :=
  ∀ n, (P10393023162845453742.a n : ℤ) = A045427 (n + 1)

end A045427

/-! ## A045427.P15750315454042553906

`∩[A045404(n+1), A045417(n+1)]`
-/

namespace A045427.P15750315454042553906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045427.P15750315454042553906

namespace A045427

/-- `∩[A045404(n+1), A045417(n+1)]` -/
def P15750315454042553906.Spec : Prop :=
  ∀ n, (P15750315454042553906.a n : ℤ) = A045427 (n + 1)

end A045427

/-! ## A045427.P6345362618452020907

`∩[A045335(n+1), A045394(n+1)]`
-/

namespace A045427.P6345362618452020907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045335 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045427.P6345362618452020907

namespace A045427

/-- `∩[A045335(n+1), A045394(n+1)]` -/
def P6345362618452020907.Spec : Prop :=
  ∀ n, (P6345362618452020907.a n : ℤ) = A045427 (n + 1)

end A045427

/-! ## A045427.P13432354430918222419

`∩[A045320(n+1), A045404(n+1)]`
-/

namespace A045427.P13432354430918222419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045427.P13432354430918222419

namespace A045427

/-- `∩[A045320(n+1), A045404(n+1)]` -/
def P13432354430918222419.Spec : Prop :=
  ∀ n, (P13432354430918222419.a n : ℤ) = A045427 (n + 1)

end A045427

/-! ## A045427.P13925736020053932099

`∩[A045334(n+1), A045394(n+1)]`
-/

namespace A045427.P13925736020053932099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045427.P13925736020053932099

namespace A045427

/-- `∩[A045334(n+1), A045394(n+1)]` -/
def P13925736020053932099.Spec : Prop :=
  ∀ n, (P13925736020053932099.a n : ℤ) = A045427 (n + 1)

end A045427

/-! ## A045427.P2395289798682440804

`∩[A045334(n+1), A045404(n+1)]`
-/

namespace A045427.P2395289798682440804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045427.P2395289798682440804

namespace A045427

/-- `∩[A045334(n+1), A045404(n+1)]` -/
def P2395289798682440804.Spec : Prop :=
  ∀ n, (P2395289798682440804.a n : ℤ) = A045427 (n + 1)

end A045427

/-! ## A045427.P18416923817087133397

`∩[A042997(n+1), A045417(n+1)]`
-/

namespace A045427.P18416923817087133397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045427.P18416923817087133397

namespace A045427

/-- `∩[A042997(n+1), A045417(n+1)]` -/
def P18416923817087133397.Spec : Prop :=
  ∀ n, (P18416923817087133397.a n : ℤ) = A045427 (n + 1)

end A045427

/-! ## A045427.P17603780619818599077

`∩[A042997(n+1), A045418(n+1)]`
-/

namespace A045427.P17603780619818599077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045427.P17603780619818599077

namespace A045427

/-- `∩[A042997(n+1), A045418(n+1)]` -/
def P17603780619818599077.Spec : Prop :=
  ∀ n, (P17603780619818599077.a n : ℤ) = A045427 (n + 1)

end A045427

/-! ## A045427.P4012532205428990653

`∩[A042997(n+1), A045426(n+1)]`
-/

namespace A045427.P4012532205428990653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045427.P4012532205428990653

namespace A045427

/-- `∩[A042997(n+1), A045426(n+1)]` -/
def P4012532205428990653.Spec : Prop :=
  ∀ n, (P4012532205428990653.a n : ℤ) = A045427 (n + 1)

end A045427

/-! ## A045427.P325230398404516079

`∩[A045322(n+1), A045402(n+1)]`
-/

namespace A045427.P325230398404516079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045427.P325230398404516079

namespace A045427

/-- `∩[A045322(n+1), A045402(n+1)]` -/
def P325230398404516079.Spec : Prop :=
  ∀ n, (P325230398404516079.a n : ℤ) = A045427 (n + 1)

end A045427

/-! ## A045427.P12124490956014613671

`∩[A045335(n+1), A045402(n+1)]`
-/

namespace A045427.P12124490956014613671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045335 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045427.P12124490956014613671

namespace A045427

/-- `∩[A045335(n+1), A045402(n+1)]` -/
def P12124490956014613671.Spec : Prop :=
  ∀ n, (P12124490956014613671.a n : ℤ) = A045427 (n + 1)

end A045427

/-! ## A045427.P14590400827373233623

`∩[A045335(n+1), A045393(n+1)]`
-/

namespace A045427.P14590400827373233623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045335 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045427.P14590400827373233623

namespace A045427

/-- `∩[A045335(n+1), A045393(n+1)]` -/
def P14590400827373233623.Spec : Prop :=
  ∀ n, (P14590400827373233623.a n : ℤ) = A045427 (n + 1)

end A045427

/-! ## A045427.P1285870294290475428

`p?[2*A047277(n+1)-1]`
-/

namespace A045427.P1285870294290475428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047277 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045427.P1285870294290475428

namespace A045427

/-- `p?[2*A047277(n+1)-1]` -/
def P1285870294290475428.Spec : Prop :=
  ∀ n, P1285870294290475428.a n = A045427 (n + 1)

end A045427

/-!
# A045428: Primes congruent to {1, 3, 4} mod 5.

The programs for A045428, the canonical program `A045428.P15442879669614154477` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045428 has offset 1).

The definition of A045428 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045428.P15442879669614154477

`p?[round(5*n/3)+1]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045428

/-- `p?[round(5*n/3)+1]` -/
def P15442879669614154477.Spec : Prop :=
  ∀ n, P15442879669614154477.a n = A045428 (n + 1)

theorem P15442879669614154477.correct : P15442879669614154477.Spec := by
  intro n
  simp only [A045428, Nat.add_sub_cancel]

end A045428

/-! ## A045428.P5921607328503978259

`∪[A045429(n+1), A030433(n+1)]`
-/

namespace A045428.P5921607328503978259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045428.P5921607328503978259

namespace A045428

/-- `∪[A045429(n+1), A030433(n+1)]` -/
def P5921607328503978259.Spec : Prop :=
  ∀ n, (P5921607328503978259.a n : ℤ) = A045428 (n + 1)

end A045428

/-! ## A045428.P8727605718599605584

`∪[A030430(n+1), A045435(n+1)]`
-/

namespace A045428.P8727605718599605584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045428.P8727605718599605584

namespace A045428

/-- `∪[A030430(n+1), A045435(n+1)]` -/
def P8727605718599605584.Spec : Prop :=
  ∀ n, (P8727605718599605584.a n : ℤ) = A045428 (n + 1)

end A045428

/-! ## A045428.P4135149705530393985

`∪[A045468(n+1), A030431(n+1)]`
-/

namespace A045428.P4135149705530393985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045428.P4135149705530393985

namespace A045428

/-- `∪[A045468(n+1), A030431(n+1)]` -/
def P4135149705530393985.Spec : Prop :=
  ∀ n, (P4135149705530393985.a n : ℤ) = A045428 (n + 1)

end A045428

/-! ## A045428.P6024043587112830240

`A045405(A065475(n+1))`
-/

namespace A045428.P6024043587112830240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (A065475 (n + 1)).toNat

end

end A045428.P6024043587112830240

namespace A045428

/-- `A045405(A065475(n+1))` -/
def P6024043587112830240.Spec : Prop :=
  ∀ n, P6024043587112830240.a n = A045428 (n + 1)

end A045428

/-! ## A045428.P6782340433797305071

`A045405(A181440(n+2))`
-/

namespace A045428.P6782340433797305071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (A181440 (n + 2)).toNat

end

end A045428.P6782340433797305071

namespace A045428

/-- `A045405(A181440(n+2))` -/
def P6782340433797305071.Spec : Prop :=
  ∀ n, P6782340433797305071.a n = A045428 (n + 1)

end A045428

/-! ## A045428.P14708494959176575825

`A045405(A184985(n+2))`
-/

namespace A045428.P14708494959176575825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (A184985 (n + 2)).toNat

end

end A045428.P14708494959176575825

namespace A045428

/-- `A045405(A184985(n+2))` -/
def P14708494959176575825.Spec : Prop :=
  ∀ n, P14708494959176575825.a n = A045428 (n + 1)

end A045428

/-! ## A045428.P15428177875789806111

`A045405(A105561(A105561(n+1))+n)`
-/

namespace A045428.P15428177875789806111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (A105561 (A105561 (n + 1)).toNat + (n : ℤ)).toNat

end

end A045428.P15428177875789806111

namespace A045428

/-- `A045405(A105561(A105561(n+1))+n)` -/
def P15428177875789806111.Spec : Prop :=
  ∀ n, P15428177875789806111.a n = A045428 (n + 1)

end A045428

/-! ## A045428.P4556806022846466827

`∩[A004139(n+1), A045405(n+1)]`
-/

namespace A045428.P4556806022846466827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045428.P4556806022846466827

namespace A045428

/-- `∩[A004139(n+1), A045405(n+1)]` -/
def P4556806022846466827.Spec : Prop :=
  ∀ n, (P4556806022846466827.a n : ℤ) = A045428 (n + 1)

end A045428

/-! ## A045428.P6797767577528935382

`∩[A045319(n+1), A045405(n+1)]`
-/

namespace A045428.P6797767577528935382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045428.P6797767577528935382

namespace A045428

/-- `∩[A045319(n+1), A045405(n+1)]` -/
def P6797767577528935382.Spec : Prop :=
  ∀ n, (P6797767577528935382.a n : ℤ) = A045428 (n + 1)

end A045428

/-! ## A045428.P15598553586194210125

`∩[A045405(n+1), A104381(n+1)]`
-/

namespace A045428.P15598553586194210125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045428.P15598553586194210125

namespace A045428

/-- `∩[A045405(n+1), A104381(n+1)]` -/
def P15598553586194210125.Spec : Prop :=
  ∀ n, (P15598553586194210125.a n : ℤ) = A045428 (n + 1)

end A045428

/-! ## A045428.P11985382273319992867

`filter[A045405(n+1), A358847(#)]`
-/

namespace A045428.P11985382273319992867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358847 (f1 j).toNat = 1) n)

end

end A045428.P11985382273319992867

namespace A045428

/-- `filter[A045405(n+1), A358847(#)]` -/
def P11985382273319992867.Spec : Prop :=
  ∀ n, P11985382273319992867.a n = A045428 (n + 1)

end A045428

/-! ## A045428.P3822570689284029802

`∩[A045405(n+1), A086391(n+1)]`
-/

namespace A045428.P3822570689284029802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045428.P3822570689284029802

namespace A045428

/-- `∩[A045405(n+1), A086391(n+1)]` -/
def P3822570689284029802.Spec : Prop :=
  ∀ n, (P3822570689284029802.a n : ℤ) = A045428 (n + 1)

end A045428

/-! ## A045428.P8290888051353075549

`filter[A045405(n+1), A011558(#)]`
-/

namespace A045428.P8290888051353075549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A045428.P8290888051353075549

namespace A045428

/-- `filter[A045405(n+1), A011558(#)]` -/
def P8290888051353075549.Spec : Prop :=
  ∀ n, P8290888051353075549.a n = A045428 (n + 1)

end A045428

/-! ## A045428.P1323074560801917099

`∩[A158942(n+1), A045405(n+1)]`
-/

namespace A045428.P1323074560801917099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045428.P1323074560801917099

namespace A045428

/-- `∩[A158942(n+1), A045405(n+1)]` -/
def P1323074560801917099.Spec : Prop :=
  ∀ n, (P1323074560801917099.a n : ℤ) = A045428 (n + 1)

end A045428

/-! ## A045428.P3154776816531538930

`p?[∑[((n+1)%4)!]]`
-/

namespace A045428.P3154776816531538930
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((n + 1) % 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045428.P3154776816531538930

namespace A045428

/-- `p?[∑[((n+1)%4)!]]` -/
def P3154776816531538930.Spec : Prop :=
  ∀ n, (P3154776816531538930.a n : ℤ) = A045428 (n + 1)

end A045428

/-! ## A045428.P11692073776283619516

`p?[∑[and(3, n+1)!]]`
-/

namespace A045428.P11692073776283619516
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.land 3 (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045428.P11692073776283619516

namespace A045428

/-- `p?[∑[and(3, n+1)!]]` -/
def P11692073776283619516.Spec : Prop :=
  ∀ n, (P11692073776283619516.a n : ℤ) = A045428 (n + 1)

end A045428

/-! ## A045428.P13176801477475194831

`∩[A045405(n+1), A045572(n+1)]`
-/

namespace A045428.P13176801477475194831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045428.P13176801477475194831

namespace A045428

/-- `∩[A045405(n+1), A045572(n+1)]` -/
def P13176801477475194831.Spec : Prop :=
  ∀ n, (P13176801477475194831.a n : ℤ) = A045428 (n + 1)

end A045428

/-! ## A045428.P17109601644470833399

`∩[A004139(n+1), A235499(n)]`
-/

namespace A045428.P17109601644470833399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235499 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045428.P17109601644470833399

namespace A045428

/-- `∩[A004139(n+1), A235499(n)]` -/
def P17109601644470833399.Spec : Prop :=
  ∀ n, (P17109601644470833399.a n : ℤ) = A045428 (n + 1)

end A045428

/-! ## A045428.P8508860048339414994

`∩[A045405(n+1), A235499(n)]`
-/

namespace A045428.P8508860048339414994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235499 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045428.P8508860048339414994

namespace A045428

/-- `∩[A045405(n+1), A235499(n)]` -/
def P8508860048339414994.Spec : Prop :=
  ∀ n, (P8508860048339414994.a n : ℤ) = A045428 (n + 1)

end A045428

/-!
# A045429: Primes congruent to {1, 3} mod 5.

The programs for A045429, the canonical program `A045429.P13123593031557052337` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045429 has offset 1).

The definition of A045429 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A045429.anchor (n : ℕ) (hn : 1 ≤ n) : A045429 n = (Nat.nth (fun p => p.Prime ∧ p % 5 ∈ ({1, 3} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A045.A045429`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A045429.P13123593031557052337

`p?[a(n-2)+5]` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045429

/-- `p?[a(n-2)+5]` -/
def P13123593031557052337.Spec : Prop :=
  ∀ n, (P13123593031557052337.a n : ℤ) = A045429 (n + 1)

theorem P13123593031557052337.correct : P13123593031557052337.Spec := by
  intro n
  simp only [A045429, Nat.add_sub_cancel]

end A045429

/-! ## A045429.P9636321201493570246

`p?[ogf((x+2x^2+x^3+6x^4)/(1-x-x^3+x^4))]`
-/

namespace A045429.P9636321201493570246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 1, 6] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045429.P9636321201493570246

namespace A045429

/-- `p?[ogf((x+2x^2+x^3+6x^4)/(1-x-x^3+x^4))]` -/
def P9636321201493570246.Spec : Prop :=
  ∀ n, P9636321201493570246.a n = A045429 (n + 1)

end A045429

/-! ## A045429.P6618216136221407618

`A216057(n+1)+A045356(n+1)`
-/

namespace A045429.P6618216136221407618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216057 (n + 1) + A045356 (n + 1)

end

end A045429.P6618216136221407618

namespace A045429

/-- `A216057(n+1)+A045356(n+1)` -/
def P6618216136221407618.Spec : Prop :=
  ∀ n, P6618216136221407618.a n = A045429 (n + 1)

theorem P6618216136221407618.correct : P6618216136221407618.Spec := by
  intro n
  simp only [A045429, Nat.add_sub_cancel, A045429.P6618216136221407618.a, A045429.P13123593031557052337.f1, A045429.P13123593031557052337.a, A045356, A045356.P10006111849364483286.f1, A045356.P10006111849364483286.f2, A045356.P10006111849364483286.a, A216057, A216057.P3710212579143236931.a, A045378, A045378.P7302375560797389656.f1, A045378.P7302375560797389656.a, A045457, A045457.P16665131764292938731.f1, A045457.P16665131764292938731.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A045429

/-! ## A045429.P16662627016939387469

`∪[A030431(n+1), A030430(n+1)]`
-/

namespace A045429.P16662627016939387469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045429.P16662627016939387469

namespace A045429

/-- `∪[A030431(n+1), A030430(n+1)]` -/
def P16662627016939387469.Spec : Prop :=
  ∀ n, (P16662627016939387469.a n : ℤ) = A045429 (n + 1)

end A045429

/-! ## A045429.P3893681718210374451

`A045407(A065475(n+1))`
-/

namespace A045429.P3893681718210374451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045407 (A065475 (n + 1)).toNat

end

end A045429.P3893681718210374451

namespace A045429

/-- `A045407(A065475(n+1))` -/
def P3893681718210374451.Spec : Prop :=
  ∀ n, P3893681718210374451.a n = A045429 (n + 1)

end A045429

/-! ## A045429.P7168468062532443250

`A045407(A181440(n+2))`
-/

namespace A045429.P7168468062532443250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045407 (A181440 (n + 2)).toNat

end

end A045429.P7168468062532443250

namespace A045429

/-- `A045407(A181440(n+2))` -/
def P7168468062532443250.Spec : Prop :=
  ∀ n, P7168468062532443250.a n = A045429 (n + 1)

end A045429

/-! ## A045429.P16135543532000692894

`A045407(A184985(n+2))`
-/

namespace A045429.P16135543532000692894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045407 (A184985 (n + 2)).toNat

end

end A045429.P16135543532000692894

namespace A045429

/-- `A045407(A184985(n+2))` -/
def P16135543532000692894.Spec : Prop :=
  ∀ n, P16135543532000692894.a n = A045429 (n + 1)

end A045429

/-! ## A045429.P11339454819102936409

`∩[A045407(n+1), A045428(n+1)]`
-/

namespace A045429.P11339454819102936409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045429.P11339454819102936409

namespace A045429

/-- `∩[A045407(n+1), A045428(n+1)]` -/
def P11339454819102936409.Spec : Prop :=
  ∀ n, (P11339454819102936409.a n : ℤ) = A045429 (n + 1)

end A045429

/-! ## A045429.P9890960208386827290

`∩[A042986(n+1), A045428(n+1)]`
-/

namespace A045429.P9890960208386827290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045429.P9890960208386827290

namespace A045429

/-- `∩[A042986(n+1), A045428(n+1)]` -/
def P9890960208386827290.Spec : Prop :=
  ∀ n, (P9890960208386827290.a n : ℤ) = A045429 (n + 1)

end A045429

/-! ## A045429.P5135330883276692355

`∩[A045321(n+1), A045405(n+1)]`
-/

namespace A045429.P5135330883276692355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045429.P5135330883276692355

namespace A045429

/-- `∩[A045321(n+1), A045405(n+1)]` -/
def P5135330883276692355.Spec : Prop :=
  ∀ n, (P5135330883276692355.a n : ℤ) = A045429 (n + 1)

end A045429

/-! ## A045429.P13755376520420242521

`∩[A045321(n+1), A045407(n+1)]`
-/

namespace A045429.P13755376520420242521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045429.P13755376520420242521

namespace A045429

/-- `∩[A045321(n+1), A045407(n+1)]` -/
def P13755376520420242521.Spec : Prop :=
  ∀ n, (P13755376520420242521.a n : ℤ) = A045429 (n + 1)

end A045429

/-! ## A045429.P3843343650087170625

`∩[A045321(n+1), A045428(n+1)]`
-/

namespace A045429.P3843343650087170625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045429.P3843343650087170625

namespace A045429

/-- `∩[A045321(n+1), A045428(n+1)]` -/
def P3843343650087170625.Spec : Prop :=
  ∀ n, (P3843343650087170625.a n : ℤ) = A045429 (n + 1)

end A045429

/-! ## A045429.P3690510873794794078

`p?[A354935(n+1)]`
-/

namespace A045429.P3690510873794794078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045429.P3690510873794794078

namespace A045429

/-- `p?[A354935(n+1)]` -/
def P3690510873794794078.Spec : Prop :=
  ∀ n, P3690510873794794078.a n = A045429 (n + 1)

end A045429

/-! ## A045429.P17383886426054542929

`∩[A004139(n+1), A045407(n+1)]`
-/

namespace A045429.P17383886426054542929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045429.P17383886426054542929

namespace A045429

/-- `∩[A004139(n+1), A045407(n+1)]` -/
def P17383886426054542929.Spec : Prop :=
  ∀ n, (P17383886426054542929.a n : ℤ) = A045429 (n + 1)

end A045429

/-! ## A045429.P36047907427173942

`∩[A045319(n+1), A045407(n+1)]`
-/

namespace A045429.P36047907427173942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045429.P36047907427173942

namespace A045429

/-- `∩[A045319(n+1), A045407(n+1)]` -/
def P36047907427173942.Spec : Prop :=
  ∀ n, (P36047907427173942.a n : ℤ) = A045429 (n + 1)

end A045429

/-! ## A045429.P5701538147013724467

`A000040(A244737(n+1))`
-/

namespace A045429.P5701538147013724467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A244737 (n + 1)).toNat

end

end A045429.P5701538147013724467

namespace A045429

/-- `A000040(A244737(n+1))` -/
def P5701538147013724467.Spec : Prop :=
  ∀ n, P5701538147013724467.a n = A045429 (n + 1)

end A045429

/-! ## A045429.P3466435384599415575

`∩[A104381(n+1), A045407(n+1)]`
-/

namespace A045429.P3466435384599415575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045429.P3466435384599415575

namespace A045429

/-- `∩[A104381(n+1), A045407(n+1)]` -/
def P3466435384599415575.Spec : Prop :=
  ∀ n, (P3466435384599415575.a n : ℤ) = A045429 (n + 1)

end A045429

/-! ## A045429.P3255862763666083202

`record[A020639(floor(5*((n-1)/2+1))+1)]`
-/

namespace A045429.P3255862763666083202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (⌊5 * (((n : ℤ) - 1 : ℚ) / 2 + 1)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045429.P3255862763666083202

namespace A045429

/-- `record[A020639(floor(5*((n-1)/2+1))+1)]` -/
def P3255862763666083202.Spec : Prop :=
  ∀ n, P3255862763666083202.a n = A045429 (n + 1)

end A045429

/-! ## A045429.P7143980164821469043

`filter[A354935(n+1), A010051(#)]`
-/

namespace A045429.P7143980164821469043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A045429.P7143980164821469043

namespace A045429

/-- `filter[A354935(n+1), A010051(#)]` -/
def P7143980164821469043.Spec : Prop :=
  ∀ n, P7143980164821469043.a n = A045429 (n + 1)

end A045429

/-! ## A045429.P13509955410581279729

`filter[A045407(n+1), A358847(#)]`
-/

namespace A045429.P13509955410581279729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045407 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358847 (f1 j).toNat = 1) n)

end

end A045429.P13509955410581279729

namespace A045429

/-- `filter[A045407(n+1), A358847(#)]` -/
def P13509955410581279729.Spec : Prop :=
  ∀ n, P13509955410581279729.a n = A045429 (n + 1)

end A045429

/-!
# A045431: Primes congruent to {1, 3, 4} mod 7.

The programs for A045431, the canonical program `A045431.P917094724510541085` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045431 has offset 1).

The definition of A045431 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A045431.anchor (n : ℕ) (hn : 1 ≤ n) : A045431 n = (Nat.nth (fun p => p.Prime ∧ p % 7 ∈ ({1, 3, 4} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A045.A045431`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A045431.P917094724510541085

`p?[a(n-3)+7]` with `a(0)=1, a(1)=3, a(2)=4`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045431

/-- `p?[a(n-3)+7]` -/
def P917094724510541085.Spec : Prop :=
  ∀ n, (P917094724510541085.a n : ℤ) = A045431 (n + 1)

theorem P917094724510541085.correct : P917094724510541085.Spec := by
  intro n
  simp only [A045431, Nat.add_sub_cancel]

end A045431

/-! ## A045431.P12826903212237569557

`p?[7*n-a(n-2)]` with `a(0)=3, a(1)=6`
-/

namespace A045431.P12826903212237569557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 6] fun n f1 =>
  (7 * n : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045431.P12826903212237569557

namespace A045431

/-- `p?[7*n-a(n-2)]` -/
def P12826903212237569557.Spec : Prop :=
  ∀ n, P12826903212237569557.a n = A045431 (n + 1)

end A045431

/-! ## A045431.P10904368838111376347

`p?[ogf((1+2x+x^2+3x^3)/(1-x-x^3+x^4))]`
-/

namespace A045431.P10904368838111376347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1, 3] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045431.P10904368838111376347

namespace A045431

/-- `p?[ogf((1+2x+x^2+3x^3)/(1-x-x^3+x^4))]` -/
def P10904368838111376347.Spec : Prop :=
  ∀ n, P10904368838111376347.a n = A045431 (n + 1)

end A045431

/-! ## A045431.P17230780596966522877

`A045420((n+1)%(2*n+1)+1)`
-/

namespace A045431.P17230780596966522877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045420 ((n + 1) % (2 * n + 1) + 1)

end

end A045431.P17230780596966522877

namespace A045431

/-- `A045420((n+1)%(2*n+1)+1)` -/
def P17230780596966522877.Spec : Prop :=
  ∀ n, P17230780596966522877.a n = A045431 (n + 1)

end A045431

/-! ## A045431.P4788557828269470065

`A045420(A065475(n+1))`
-/

namespace A045431.P4788557828269470065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045420 (A065475 (n + 1)).toNat

end

end A045431.P4788557828269470065

namespace A045431

/-- `A045420(A065475(n+1))` -/
def P4788557828269470065.Spec : Prop :=
  ∀ n, P4788557828269470065.a n = A045431 (n + 1)

end A045431

/-! ## A045431.P12922557479980825709

`A045420(A181440(n+2))`
-/

namespace A045431.P12922557479980825709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045420 (A181440 (n + 2)).toNat

end

end A045431.P12922557479980825709

namespace A045431

/-- `A045420(A181440(n+2))` -/
def P12922557479980825709.Spec : Prop :=
  ∀ n, P12922557479980825709.a n = A045431 (n + 1)

end A045431

/-! ## A045431.P15587157288234320301

`A045420(A184985(n+2))`
-/

namespace A045431.P15587157288234320301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045420 (A184985 (n + 2)).toNat

end

end A045431.P15587157288234320301

namespace A045431

/-- `A045420(A184985(n+2))` -/
def P15587157288234320301.Spec : Prop :=
  ∀ n, P15587157288234320301.a n = A045431 (n + 1)

end A045431

/-! ## A045431.P17669507616059056118

`∩[A045337(n+1), A045420(n+1)]`
-/

namespace A045431.P17669507616059056118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045431.P17669507616059056118

namespace A045431

/-- `∩[A045337(n+1), A045420(n+1)]` -/
def P17669507616059056118.Spec : Prop :=
  ∀ n, (P17669507616059056118.a n : ℤ) = A045431 (n + 1)

end A045431

/-! ## A045431.P1217715372285464508

`∩[A045324(n+1), A045426(n+1)]`
-/

namespace A045431.P1217715372285464508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045431.P1217715372285464508

namespace A045431

/-- `∩[A045324(n+1), A045426(n+1)]` -/
def P1217715372285464508.Spec : Prop :=
  ∀ n, (P1217715372285464508.a n : ℤ) = A045431 (n + 1)

end A045431

/-! ## A045431.P3182924398833232137

`∩[A045337(n+1), A045417(n+1)]`
-/

namespace A045431.P3182924398833232137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045431.P3182924398833232137

namespace A045431

/-- `∩[A045337(n+1), A045417(n+1)]` -/
def P3182924398833232137.Spec : Prop :=
  ∀ n, (P3182924398833232137.a n : ℤ) = A045431 (n + 1)

end A045431

/-! ## A045431.P16408608657931273964

`∩[A045324(n+1), A045408(n+1)]`
-/

namespace A045431.P16408608657931273964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045431.P16408608657931273964

namespace A045431

/-- `∩[A045324(n+1), A045408(n+1)]` -/
def P16408608657931273964.Spec : Prop :=
  ∀ n, (P16408608657931273964.a n : ℤ) = A045431 (n + 1)

end A045431

/-! ## A045431.P17293930822521893194

`∩[A045337(n+1), A045396(n+1)]`
-/

namespace A045431.P17293930822521893194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045431.P17293930822521893194

namespace A045431

/-- `∩[A045337(n+1), A045396(n+1)]` -/
def P17293930822521893194.Spec : Prop :=
  ∀ n, (P17293930822521893194.a n : ℤ) = A045431 (n + 1)

end A045431

/-! ## A045431.P6340052515229777765

`∩[A045337(n+1), A045408(n+1)]`
-/

namespace A045431.P6340052515229777765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045431.P6340052515229777765

namespace A045431

/-- `∩[A045337(n+1), A045408(n+1)]` -/
def P6340052515229777765.Spec : Prop :=
  ∀ n, (P6340052515229777765.a n : ℤ) = A045431 (n + 1)

end A045431

/-! ## A045431.P5374967469979667842

`∩[A045408(n+1), A045417(n+1)]`
-/

namespace A045431.P5374967469979667842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045431.P5374967469979667842

namespace A045431

/-- `∩[A045408(n+1), A045417(n+1)]` -/
def P5374967469979667842.Spec : Prop :=
  ∀ n, (P5374967469979667842.a n : ℤ) = A045431 (n + 1)

end A045431

/-! ## A045431.P17196224859803060591

`∩[A045334(n+1), A045396(n+1)]`
-/

namespace A045431.P17196224859803060591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045431.P17196224859803060591

namespace A045431

/-- `∩[A045334(n+1), A045396(n+1)]` -/
def P17196224859803060591.Spec : Prop :=
  ∀ n, (P17196224859803060591.a n : ℤ) = A045431 (n + 1)

end A045431

/-! ## A045431.P8018542180244940022

`∩[A045334(n+1), A045408(n+1)]`
-/

namespace A045431.P8018542180244940022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045431.P8018542180244940022

namespace A045431

/-- `∩[A045334(n+1), A045408(n+1)]` -/
def P8018542180244940022.Spec : Prop :=
  ∀ n, (P8018542180244940022.a n : ℤ) = A045431 (n + 1)

end A045431

/-! ## A045431.P11978822303181417933

`∩[A045334(n+1), A045420(n+1)]`
-/

namespace A045431.P11978822303181417933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045431.P11978822303181417933

namespace A045431

/-- `∩[A045334(n+1), A045420(n+1)]` -/
def P11978822303181417933.Spec : Prop :=
  ∀ n, (P11978822303181417933.a n : ℤ) = A045431 (n + 1)

end A045431

/-! ## A045431.P4704294797492650881

`∩[A045320(n+1), A045408(n+1)]`
-/

namespace A045431.P4704294797492650881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045431.P4704294797492650881

namespace A045431

/-- `∩[A045320(n+1), A045408(n+1)]` -/
def P4704294797492650881.Spec : Prop :=
  ∀ n, (P4704294797492650881.a n : ℤ) = A045431 (n + 1)

end A045431

/-! ## A045431.P6161348590853232546

`∩[A045426(n+1), A042988(n)]`
-/

namespace A045431.P6161348590853232546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045426 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045431.P6161348590853232546

namespace A045431

/-- `∩[A045426(n+1), A042988(n)]` -/
def P6161348590853232546.Spec : Prop :=
  ∀ n, (P6161348590853232546.a n : ℤ) = A045431 (n + 1)

end A045431

/-! ## A045431.P15815626572595280406

`∩[A044042(n+1), A045417(n+1)]`
-/

namespace A045431.P15815626572595280406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045431.P15815626572595280406

namespace A045431

/-- `∩[A044042(n+1), A045417(n+1)]` -/
def P15815626572595280406.Spec : Prop :=
  ∀ n, (P15815626572595280406.a n : ℤ) = A045431 (n + 1)

end A045431

/-!
# A045432: Primes congruent to {3, 4} mod 7.

The programs for A045432, the canonical program `A045432.P5046197234096038513` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045432 has offset 1).

The definition of A045432 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045432.P5046197234096038513

`p?[or(1, 7*n+3)]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045432

/-- `p?[or(1, 7*n+3)]` -/
def P5046197234096038513.Spec : Prop :=
  ∀ n, (P5046197234096038513.a n : ℤ) = A045432 (n + 1)

theorem P5046197234096038513.correct : P5046197234096038513.Spec := by
  intro n
  simp only [A045432, Nat.add_sub_cancel]

end A045432

/-! ## A045432.P5311557419322265784

`p?[4-or(1, -(7*n))]`
-/

namespace A045432.P5311557419322265784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - Int.lor 1 (-(7 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045432.P5311557419322265784

namespace A045432

/-- `p?[4-or(1, -(7*n))]` -/
def P5311557419322265784.Spec : Prop :=
  ∀ n, P5311557419322265784.a n = A045432 (n + 1)

end A045432

/-! ## A045432.P14498417975321611885

`A045421(A065475(n+1))`
-/

namespace A045432.P14498417975321611885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045421 (A065475 (n + 1)).toNat

end

end A045432.P14498417975321611885

namespace A045432

/-- `A045421(A065475(n+1))` -/
def P14498417975321611885.Spec : Prop :=
  ∀ n, P14498417975321611885.a n = A045432 (n + 1)

end A045432

/-! ## A045432.P7960414367506823179

`A045421(A181440(n+2))`
-/

namespace A045432.P7960414367506823179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045421 (A181440 (n + 2)).toNat

end

end A045432.P7960414367506823179

namespace A045432

/-- `A045421(A181440(n+2))` -/
def P7960414367506823179.Spec : Prop :=
  ∀ n, P7960414367506823179.a n = A045432 (n + 1)

end A045432

/-! ## A045432.P13389015873201887154

`A045421(A184985(n+2))`
-/

namespace A045432.P13389015873201887154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045421 (A184985 (n + 2)).toNat

end

end A045432.P13389015873201887154

namespace A045432

/-- `A045421(A184985(n+2))` -/
def P13389015873201887154.Spec : Prop :=
  ∀ n, P13389015873201887154.a n = A045432 (n + 1)

end A045432

/-! ## A045432.P4869532255460416882

`p?[a(n-2)+7]` with `a(0)=3, a(1)=4`
-/

namespace A045432.P4869532255460416882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 4] fun n f1 =>
  f1 (n - 2) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045432.P4869532255460416882

namespace A045432

/-- `p?[a(n-2)+7]` -/
def P4869532255460416882.Spec : Prop :=
  ∀ n, (P4869532255460416882.a n : ℤ) = A045432 (n + 1)

end A045432

/-! ## A045432.P18295513437790875392

`∩[A045421(n+1), A045427(n+1)]`
-/

namespace A045432.P18295513437790875392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045432.P18295513437790875392

namespace A045432

/-- `∩[A045421(n+1), A045427(n+1)]` -/
def P18295513437790875392.Spec : Prop :=
  ∀ n, (P18295513437790875392.a n : ℤ) = A045432 (n + 1)

end A045432

/-! ## A045432.P9583432179618872245

`∩[A045322(n+1), A045408(n+1)]`
-/

namespace A045432.P9583432179618872245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045432.P9583432179618872245

namespace A045432

/-- `∩[A045322(n+1), A045408(n+1)]` -/
def P9583432179618872245.Spec : Prop :=
  ∀ n, (P9583432179618872245.a n : ℤ) = A045432 (n + 1)

end A045432

/-! ## A045432.P8207737646568438556

`∩[A042989(n+1), A045426(n+1)]`
-/

namespace A045432.P8207737646568438556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045432.P8207737646568438556

namespace A045432

/-- `∩[A042989(n+1), A045426(n+1)]` -/
def P8207737646568438556.Spec : Prop :=
  ∀ n, (P8207737646568438556.a n : ℤ) = A045432 (n + 1)

end A045432

/-! ## A045432.P11927088074270208846

`∩[A042989(n+1), A045427(n+1)]`
-/

namespace A045432.P11927088074270208846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045432.P11927088074270208846

namespace A045432

/-- `∩[A042989(n+1), A045427(n+1)]` -/
def P11927088074270208846.Spec : Prop :=
  ∀ n, (P11927088074270208846.a n : ℤ) = A045432 (n + 1)

end A045432

/-! ## A045432.P3984354927547731797

`∩[A042989(n+1), A045431(n+1)]`
-/

namespace A045432.P3984354927547731797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045432.P3984354927547731797

namespace A045432

/-- `∩[A042989(n+1), A045431(n+1)]` -/
def P3984354927547731797.Spec : Prop :=
  ∀ n, (P3984354927547731797.a n : ℤ) = A045432 (n + 1)

end A045432

/-! ## A045432.P4614798768245928768

`∩[A045421(n+1), A045308(n+1)]`
-/

namespace A045432.P4614798768245928768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045432.P4614798768245928768

namespace A045432

/-- `∩[A045421(n+1), A045308(n+1)]` -/
def P4614798768245928768.Spec : Prop :=
  ∀ n, (P4614798768245928768.a n : ℤ) = A045432 (n + 1)

end A045432

/-! ## A045432.P17580025235740820317

`∩[A045324(n+1), A045404(n+1)]`
-/

namespace A045432.P17580025235740820317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045432.P17580025235740820317

namespace A045432

/-- `∩[A045324(n+1), A045404(n+1)]` -/
def P17580025235740820317.Spec : Prop :=
  ∀ n, (P17580025235740820317.a n : ℤ) = A045432 (n + 1)

end A045432

/-! ## A045432.P16537796416491757572

`∩[A045337(n+1), A045394(n+1)]`
-/

namespace A045432.P16537796416491757572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045432.P16537796416491757572

namespace A045432

/-- `∩[A045337(n+1), A045394(n+1)]` -/
def P16537796416491757572.Spec : Prop :=
  ∀ n, (P16537796416491757572.a n : ℤ) = A045432 (n + 1)

end A045432

/-! ## A045432.P9023984894013260990

`∩[A045320(n+1), A045409(n+1)]`
-/

namespace A045432.P9023984894013260990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045432.P9023984894013260990

namespace A045432

/-- `∩[A045320(n+1), A045409(n+1)]` -/
def P9023984894013260990.Spec : Prop :=
  ∀ n, (P9023984894013260990.a n : ℤ) = A045432 (n + 1)

end A045432

/-! ## A045432.P5805853163992841848

`∩[A042997(n+1), A045420(n+1)]`
-/

namespace A045432.P5805853163992841848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045432.P5805853163992841848

namespace A045432

/-- `∩[A042997(n+1), A045420(n+1)]` -/
def P5805853163992841848.Spec : Prop :=
  ∀ n, (P5805853163992841848.a n : ℤ) = A045432 (n + 1)

end A045432

/-! ## A045432.P10454835493982739548

`∩[A042997(n+1), A045421(n+1)]`
-/

namespace A045432.P10454835493982739548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045432.P10454835493982739548

namespace A045432

/-- `∩[A042997(n+1), A045421(n+1)]` -/
def P10454835493982739548.Spec : Prop :=
  ∀ n, (P10454835493982739548.a n : ℤ) = A045432 (n + 1)

end A045432

/-! ## A045432.P17635244437021432081

`∩[A042997(n+1), A045431(n+1)]`
-/

namespace A045432.P17635244437021432081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045432.P17635244437021432081

namespace A045432

/-- `∩[A042997(n+1), A045431(n+1)]` -/
def P17635244437021432081.Spec : Prop :=
  ∀ n, (P17635244437021432081.a n : ℤ) = A045432 (n + 1)

end A045432

/-! ## A045432.P16495703088630330185

`∩[A045427(n+1), A042988(n)]`
-/

namespace A045432.P16495703088630330185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045432.P16495703088630330185

namespace A045432

/-- `∩[A045427(n+1), A042988(n)]` -/
def P16495703088630330185.Spec : Prop :=
  ∀ n, (P16495703088630330185.a n : ℤ) = A045432 (n + 1)

end A045432

/-! ## A045432.P804898575177021490

`∩[A044042(n+1), A045418(n+1)]`
-/

namespace A045432.P804898575177021490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045432.P804898575177021490

namespace A045432

/-- `∩[A044042(n+1), A045418(n+1)]` -/
def P804898575177021490.Spec : Prop :=
  ∀ n, (P804898575177021490.a n : ℤ) = A045432 (n + 1)

end A045432

/-!
# A045433: Primes congruent to {1, 3, 6} mod 7.

The programs for A045433, the canonical program `A045433.P4831852985344999509` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045433 has offset 1).

The definition of A045433 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A045433.anchor (n : ℕ) (hn : 1 ≤ n) : A045433 n = (Nat.nth (fun p => p.Prime ∧ p % 7 ∈ ({1, 3, 6} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A045.A045433`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A045433.P4831852985344999509

`p?[a(n-3)+7]` with `a(0)=1, a(1)=3, a(2)=6`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045433

/-- `p?[a(n-3)+7]` -/
def P4831852985344999509.Spec : Prop :=
  ∀ n, (P4831852985344999509.a n : ℤ) = A045433 (n + 1)

theorem P4831852985344999509.correct : P4831852985344999509.Spec := by
  intro n
  simp only [A045433, Nat.add_sub_cancel]

end A045433

/-! ## A045433.P8680124117582537595

`p?[ogf((1+2x+3x^2+x^3)/(1-x-x^3+x^4))]`
-/

namespace A045433.P8680124117582537595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 3, 1] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045433.P8680124117582537595

namespace A045433

/-- `p?[ogf((1+2x+3x^2+x^3)/(1-x-x^3+x^4))]` -/
def P8680124117582537595.Spec : Prop :=
  ∀ n, P8680124117582537595.a n = A045433 (n + 1)

end A045433

/-! ## A045433.P16423816504953999946

`∪[A045437(n+1), A045472(n+1)]`
-/

namespace A045433.P16423816504953999946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045472 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045433.P16423816504953999946

namespace A045433

/-- `∪[A045437(n+1), A045472(n+1)]` -/
def P16423816504953999946.Spec : Prop :=
  ∀ n, (P16423816504953999946.a n : ℤ) = A045433 (n + 1)

end A045433

/-! ## A045433.P9384040240077053312

`A045422((n+1)%(2*n+1)+1)`
-/

namespace A045433.P9384040240077053312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045422 ((n + 1) % (2 * n + 1) + 1)

end

end A045433.P9384040240077053312

namespace A045433

/-- `A045422((n+1)%(2*n+1)+1)` -/
def P9384040240077053312.Spec : Prop :=
  ∀ n, P9384040240077053312.a n = A045433 (n + 1)

end A045433

/-! ## A045433.P11691647831578206633

`A045422(A065475(n+1))`
-/

namespace A045433.P11691647831578206633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045422 (A065475 (n + 1)).toNat

end

end A045433.P11691647831578206633

namespace A045433

/-- `A045422(A065475(n+1))` -/
def P11691647831578206633.Spec : Prop :=
  ∀ n, P11691647831578206633.a n = A045433 (n + 1)

end A045433

/-! ## A045433.P6573491317304520235

`A045422(A181440(n+2))`
-/

namespace A045433.P6573491317304520235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045422 (A181440 (n + 2)).toNat

end

end A045433.P6573491317304520235

namespace A045433

/-- `A045422(A181440(n+2))` -/
def P6573491317304520235.Spec : Prop :=
  ∀ n, P6573491317304520235.a n = A045433 (n + 1)

end A045433

/-! ## A045433.P13148137585519493999

`A045422(A184985(n+2))`
-/

namespace A045433.P13148137585519493999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045422 (A184985 (n + 2)).toNat

end

end A045433.P13148137585519493999

namespace A045433

/-- `A045422(A184985(n+2))` -/
def P13148137585519493999.Spec : Prop :=
  ∀ n, P13148137585519493999.a n = A045433 (n + 1)

end A045433

/-! ## A045433.P15796773323501029836

`∩[A045340(n+1), A045417(n+1)]`
-/

namespace A045433.P15796773323501029836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045433.P15796773323501029836

namespace A045433

/-- `∩[A045340(n+1), A045417(n+1)]` -/
def P15796773323501029836.Spec : Prop :=
  ∀ n, (P15796773323501029836.a n : ℤ) = A045433 (n + 1)

end A045433

/-! ## A045433.P12396812944812667218

`∩[A045340(n+1), A045422(n+1)]`
-/

namespace A045433.P12396812944812667218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045433.P12396812944812667218

namespace A045433

/-- `∩[A045340(n+1), A045422(n+1)]` -/
def P12396812944812667218.Spec : Prop :=
  ∀ n, (P12396812944812667218.a n : ℤ) = A045433 (n + 1)

end A045433

/-! ## A045433.P10419677766792795173

`∩[A045426(n+1), A045340(n+1)]`
-/

namespace A045433.P10419677766792795173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045426 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045433.P10419677766792795173

namespace A045433

/-- `∩[A045426(n+1), A045340(n+1)]` -/
def P10419677766792795173.Spec : Prop :=
  ∀ n, (P10419677766792795173.a n : ℤ) = A045433 (n + 1)

end A045433

/-! ## A045433.P15261626568215844087

`∩[A045328(n+1), A045426(n+1)]`
-/

namespace A045433.P15261626568215844087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045433.P15261626568215844087

namespace A045433

/-- `∩[A045328(n+1), A045426(n+1)]` -/
def P15261626568215844087.Spec : Prop :=
  ∀ n, (P15261626568215844087.a n : ℤ) = A045433 (n + 1)

end A045433

/-! ## A045433.P4807982549499109966

`∩[A045340(n+1), A045398(n+1)]`
-/

namespace A045433.P4807982549499109966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045433.P4807982549499109966

namespace A045433

/-- `∩[A045340(n+1), A045398(n+1)]` -/
def P4807982549499109966.Spec : Prop :=
  ∀ n, (P4807982549499109966.a n : ℤ) = A045433 (n + 1)

end A045433

/-! ## A045433.P5199085704630605003

`∩[A045328(n+1), A045411(n+1)]`
-/

namespace A045433.P5199085704630605003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045433.P5199085704630605003

namespace A045433

/-- `∩[A045328(n+1), A045411(n+1)]` -/
def P5199085704630605003.Spec : Prop :=
  ∀ n, (P5199085704630605003.a n : ℤ) = A045433 (n + 1)

end A045433

/-! ## A045433.P9825840664886733107

`∩[A045340(n+1), A045411(n+1)]`
-/

namespace A045433.P9825840664886733107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045433.P9825840664886733107

namespace A045433

/-- `∩[A045340(n+1), A045411(n+1)]` -/
def P9825840664886733107.Spec : Prop :=
  ∀ n, (P9825840664886733107.a n : ℤ) = A045433 (n + 1)

end A045433

/-! ## A045433.P1577102173778331808

`∩[A045398(n+1), A045426(n+1)]`
-/

namespace A045433.P1577102173778331808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045433.P1577102173778331808

namespace A045433

/-- `∩[A045398(n+1), A045426(n+1)]` -/
def P1577102173778331808.Spec : Prop :=
  ∀ n, (P1577102173778331808.a n : ℤ) = A045433 (n + 1)

end A045433

/-! ## A045433.P12918150412939166915

`∩[A045334(n+1), A045398(n+1)]`
-/

namespace A045433.P12918150412939166915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045433.P12918150412939166915

namespace A045433

/-- `∩[A045334(n+1), A045398(n+1)]` -/
def P12918150412939166915.Spec : Prop :=
  ∀ n, (P12918150412939166915.a n : ℤ) = A045433 (n + 1)

end A045433

/-! ## A045433.P2705717939493324590

`∩[A045334(n+1), A045411(n+1)]`
-/

namespace A045433.P2705717939493324590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045433.P2705717939493324590

namespace A045433

/-- `∩[A045334(n+1), A045411(n+1)]` -/
def P2705717939493324590.Spec : Prop :=
  ∀ n, (P2705717939493324590.a n : ℤ) = A045433 (n + 1)

end A045433

/-! ## A045433.P3467784159293379669

`∩[A045334(n+1), A045422(n+1)]`
-/

namespace A045433.P3467784159293379669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045433.P3467784159293379669

namespace A045433

/-- `∩[A045334(n+1), A045422(n+1)]` -/
def P3467784159293379669.Spec : Prop :=
  ∀ n, (P3467784159293379669.a n : ℤ) = A045433 (n + 1)

end A045433

/-! ## A045433.P17444701714283952001

`∩[A045320(n+1), A045411(n+1)]`
-/

namespace A045433.P17444701714283952001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045433.P17444701714283952001

namespace A045433

/-- `∩[A045320(n+1), A045411(n+1)]` -/
def P17444701714283952001.Spec : Prop :=
  ∀ n, (P17444701714283952001.a n : ℤ) = A045433 (n + 1)

end A045433

/-! ## A045433.P933006183570805729

`∩[A045311(n+1), A045417(n+1)]`
-/

namespace A045433.P933006183570805729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045433.P933006183570805729

namespace A045433

/-- `∩[A045311(n+1), A045417(n+1)]` -/
def P933006183570805729.Spec : Prop :=
  ∀ n, (P933006183570805729.a n : ℤ) = A045433 (n + 1)

end A045433

/-!
# A045434: Primes congruent to {3, 6} mod 7.

The programs for A045434, the canonical program `A045434.P17871418179106170878` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045434 has offset 1).

The definition of A045434 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A045434.anchor (n : ℕ) (hn : 1 ≤ n) : A045434 n = (Nat.nth (fun p => p.Prime ∧ p % 7 ∈ ({3, 6} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A045.A045434`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A045434.P17871418179106170878

`p?[a(n-2)+7]` with `a(0)=3, a(1)=6`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045434

/-- `p?[a(n-2)+7]` -/
def P17871418179106170878.Spec : Prop :=
  ∀ n, (P17871418179106170878.a n : ℤ) = A045434 (n + 1)

theorem P17871418179106170878.correct : P17871418179106170878.Spec := by
  intro n
  simp only [A045434, Nat.add_sub_cancel]

end A045434

/-! ## A045434.P2507808627780102814

`A045423((n+1)%(2*n+1)+1)`
-/

namespace A045434.P2507808627780102814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045423 ((n + 1) % (2 * n + 1) + 1)

end

end A045434.P2507808627780102814

namespace A045434

/-- `A045423((n+1)%(2*n+1)+1)` -/
def P2507808627780102814.Spec : Prop :=
  ∀ n, P2507808627780102814.a n = A045434 (n + 1)

end A045434

/-! ## A045434.P10328332841965555573

`A045423(A065475(n+1))`
-/

namespace A045434.P10328332841965555573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045423 (A065475 (n + 1)).toNat

end

end A045434.P10328332841965555573

namespace A045434

/-- `A045423(A065475(n+1))` -/
def P10328332841965555573.Spec : Prop :=
  ∀ n, P10328332841965555573.a n = A045434 (n + 1)

end A045434

/-! ## A045434.P1785118899499387289

`A045423(A181440(n+2))`
-/

namespace A045434.P1785118899499387289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045423 (A181440 (n + 2)).toNat

end

end A045434.P1785118899499387289

namespace A045434

/-- `A045423(A181440(n+2))` -/
def P1785118899499387289.Spec : Prop :=
  ∀ n, P1785118899499387289.a n = A045434 (n + 1)

end A045434

/-! ## A045434.P7624341889938451274

`A045423(A184985(n+2))`
-/

namespace A045434.P7624341889938451274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045423 (A184985 (n + 2)).toNat

end

end A045434.P7624341889938451274

namespace A045434

/-- `A045423(A184985(n+2))` -/
def P7624341889938451274.Spec : Prop :=
  ∀ n, P7624341889938451274.a n = A045434 (n + 1)

end A045434

/-! ## A045434.P9921103494463177246

`∩[A003625(n+1), A045329(n+1)]`
-/

namespace A045434.P9921103494463177246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045434.P9921103494463177246

namespace A045434

/-- `∩[A003625(n+1), A045329(n+1)]` -/
def P9921103494463177246.Spec : Prop :=
  ∀ n, (P9921103494463177246.a n : ℤ) = A045434 (n + 1)

end A045434

/-! ## A045434.P16472394747904147723

`∩[A003625(n+1), A045341(n+1)]`
-/

namespace A045434.P16472394747904147723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045434.P16472394747904147723

namespace A045434

/-- `∩[A003625(n+1), A045341(n+1)]` -/
def P16472394747904147723.Spec : Prop :=
  ∀ n, (P16472394747904147723.a n : ℤ) = A045434 (n + 1)

end A045434

/-! ## A045434.P12948127039298957519

`∩[A003625(n+1), A045418(n+1)]`
-/

namespace A045434.P12948127039298957519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045434.P12948127039298957519

namespace A045434

/-- `∩[A003625(n+1), A045418(n+1)]` -/
def P12948127039298957519.Spec : Prop :=
  ∀ n, (P12948127039298957519.a n : ℤ) = A045434 (n + 1)

end A045434

/-! ## A045434.P15313226791964471636

`∩[A003625(n+1), A045422(n+1)]`
-/

namespace A045434.P15313226791964471636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045434.P15313226791964471636

namespace A045434

/-- `∩[A003625(n+1), A045422(n+1)]` -/
def P15313226791964471636.Spec : Prop :=
  ∀ n, (P15313226791964471636.a n : ℤ) = A045434 (n + 1)

end A045434

/-! ## A045434.P8663766501611817801

`∩[A003625(n+1), A045423(n+1)]`
-/

namespace A045434.P8663766501611817801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045434.P8663766501611817801

namespace A045434

/-- `∩[A003625(n+1), A045423(n+1)]` -/
def P8663766501611817801.Spec : Prop :=
  ∀ n, (P8663766501611817801.a n : ℤ) = A045434 (n + 1)

end A045434

/-! ## A045434.P16942519494107339055

`∩[A003625(n+1), A045427(n+1)]`
-/

namespace A045434.P16942519494107339055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045434.P16942519494107339055

namespace A045434

/-- `∩[A003625(n+1), A045427(n+1)]` -/
def P16942519494107339055.Spec : Prop :=
  ∀ n, (P16942519494107339055.a n : ℤ) = A045434 (n + 1)

end A045434

/-! ## A045434.P5195071507069463706

`∩[A003625(n+1), A045433(n+1)]`
-/

namespace A045434.P5195071507069463706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045434.P5195071507069463706

namespace A045434

/-- `∩[A003625(n+1), A045433(n+1)]` -/
def P5195071507069463706.Spec : Prop :=
  ∀ n, (P5195071507069463706.a n : ℤ) = A045434 (n + 1)

end A045434

/-! ## A045434.P8940008035115871038

`∩[A003625(n+1), A045417(n+1)]`
-/

namespace A045434.P8940008035115871038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045434.P8940008035115871038

namespace A045434

/-- `∩[A003625(n+1), A045417(n+1)]` -/
def P8940008035115871038.Spec : Prop :=
  ∀ n, (P8940008035115871038.a n : ℤ) = A045434 (n + 1)

end A045434

/-! ## A045434.P15988006348386661154

`∩[A003625(n+1), A045426(n+1)]`
-/

namespace A045434.P15988006348386661154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045434.P15988006348386661154

namespace A045434

/-- `∩[A003625(n+1), A045426(n+1)]` -/
def P15988006348386661154.Spec : Prop :=
  ∀ n, (P15988006348386661154.a n : ℤ) = A045434 (n + 1)

end A045434

/-! ## A045434.P6220780767335007673

`∩[A003625(n+1), A045340(n+1)]`
-/

namespace A045434.P6220780767335007673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045434.P6220780767335007673

namespace A045434

/-- `∩[A003625(n+1), A045340(n+1)]` -/
def P6220780767335007673.Spec : Prop :=
  ∀ n, (P6220780767335007673.a n : ℤ) = A045434 (n + 1)

end A045434

/-! ## A045434.P16134856254425917142

`∩[A003625(n+1), A045322(n+1)]`
-/

namespace A045434.P16134856254425917142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045434.P16134856254425917142

namespace A045434

/-- `∩[A003625(n+1), A045322(n+1)]` -/
def P16134856254425917142.Spec : Prop :=
  ∀ n, (P16134856254425917142.a n : ℤ) = A045434 (n + 1)

end A045434

/-! ## A045434.P16938905663051587840

`∩[A003625(n+1), A045328(n+1)]`
-/

namespace A045434.P16938905663051587840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045434.P16938905663051587840

namespace A045434

/-- `∩[A003625(n+1), A045328(n+1)]` -/
def P16938905663051587840.Spec : Prop :=
  ∀ n, (P16938905663051587840.a n : ℤ) = A045434 (n + 1)

end A045434

/-! ## A045434.P8045344815707331533

`∩[A003625(n+1), A045335(n+1)]`
-/

namespace A045434.P8045344815707331533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045434.P8045344815707331533

namespace A045434

/-- `∩[A003625(n+1), A045335(n+1)]` -/
def P8045344815707331533.Spec : Prop :=
  ∀ n, (P8045344815707331533.a n : ℤ) = A045434 (n + 1)

end A045434

/-! ## A045434.P16585225548060947689

`∩[A045322(n+1), A045433(n+1)]`
-/

namespace A045434.P16585225548060947689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045434.P16585225548060947689

namespace A045434

/-- `∩[A045322(n+1), A045433(n+1)]` -/
def P16585225548060947689.Spec : Prop :=
  ∀ n, (P16585225548060947689.a n : ℤ) = A045434 (n + 1)

end A045434

/-! ## A045434.P12961570536556836361

`∩[A045340(n+1), A045404(n+1)]`
-/

namespace A045434.P12961570536556836361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045434.P12961570536556836361

namespace A045434

/-- `∩[A045340(n+1), A045404(n+1)]` -/
def P12961570536556836361.Spec : Prop :=
  ∀ n, (P12961570536556836361.a n : ℤ) = A045434 (n + 1)

end A045434

/-!
# A045435: Primes congruent to {3, 4} mod 5.

The programs for A045435, the canonical program `A045435.P6592625135057840072` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045435 has offset 1).

The definition of A045435 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045435.P6592625135057840072

`p?[or(1, 5*n+3)]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045435

/-- `p?[or(1, 5*n+3)]` -/
def P6592625135057840072.Spec : Prop :=
  ∀ n, (P6592625135057840072.a n : ℤ) = A045435 (n + 1)

theorem P6592625135057840072.correct : P6592625135057840072.Spec := by
  intro n
  simp only [A045435, Nat.add_sub_cancel]

end A045435

/-! ## A045435.P14976680856766424173

`p?[a(n-2)+5]` with `a(0)=3, a(1)=4`
-/

namespace A045435.P14976680856766424173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 4] fun n f1 =>
  f1 (n - 2) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045435.P14976680856766424173

namespace A045435

/-- `p?[a(n-2)+5]` -/
def P14976680856766424173.Spec : Prop :=
  ∀ n, (P14976680856766424173.a n : ℤ) = A045435 (n + 1)

end A045435

/-! ## A045435.P2517520571287109268

`p?[ogf((1+2x+x^2+4x^3+2x^4)/(1-x-x^3+x^4))]`
-/

namespace A045435.P2517520571287109268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1, 4, 2] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045435.P2517520571287109268

namespace A045435

/-- `p?[ogf((1+2x+x^2+4x^3+2x^4)/(1-x-x^3+x^4))]` -/
def P2517520571287109268.Spec : Prop :=
  ∀ n, P2517520571287109268.a n = A045435 (n + 1)

end A045435

/-! ## A045435.P10008948069214158164

`A045413(A065475(n+1))`
-/

namespace A045435.P10008948069214158164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045413 (A065475 (n + 1)).toNat

end

end A045435.P10008948069214158164

namespace A045435

/-- `A045413(A065475(n+1))` -/
def P10008948069214158164.Spec : Prop :=
  ∀ n, P10008948069214158164.a n = A045435 (n + 1)

end A045435

/-! ## A045435.P7223252464912061241

`A045413(A181440(n+2))`
-/

namespace A045435.P7223252464912061241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045413 (A181440 (n + 2)).toNat

end

end A045435.P7223252464912061241

namespace A045435

/-- `A045413(A181440(n+2))` -/
def P7223252464912061241.Spec : Prop :=
  ∀ n, P7223252464912061241.a n = A045435 (n + 1)

end A045435

/-! ## A045435.P16860833730029741605

`A045413(A184985(n+2))`
-/

namespace A045435.P16860833730029741605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045413 (A184985 (n + 2)).toNat

end

end A045435.P16860833730029741605

namespace A045435

/-- `A045413(A184985(n+2))` -/
def P16860833730029741605.Spec : Prop :=
  ∀ n, P16860833730029741605.a n = A045435 (n + 1)

end A045435

/-! ## A045435.P14819074972236773379

`A045413(n+2-A109578(2*n+1))`
-/

namespace A045435.P14819074972236773379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045413 ((n + 2 : ℤ) - A109578 (2 * n + 1)).toNat

end

end A045435.P14819074972236773379

namespace A045435

/-- `A045413(n+2-A109578(2*n+1))` -/
def P14819074972236773379.Spec : Prop :=
  ∀ n, P14819074972236773379.a n = A045435 (n + 1)

end A045435

/-! ## A045435.P17612593661475677490

`A045413(A105560(A105560(n+1))+n)`
-/

namespace A045435.P17612593661475677490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045413 (A105560 (A105560 (n + 1)).toNat + (n : ℤ)).toNat

end

end A045435.P17612593661475677490

namespace A045435

/-- `A045413(A105560(A105560(n+1))+n)` -/
def P17612593661475677490.Spec : Prop :=
  ∀ n, P17612593661475677490.a n = A045435 (n + 1)

end A045435

/-! ## A045435.P14630543144462963558

`A045319(n+2)+A045413(n+2)-A045344(n+2)`
-/

namespace A045435.P14630543144462963558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 2) + (A045413 (n + 2) - A045344 (n + 2))

end

end A045435.P14630543144462963558

namespace A045435

/-- `A045319(n+2)+A045413(n+2)-A045344(n+2)` -/
def P14630543144462963558.Spec : Prop :=
  ∀ n, P14630543144462963558.a n = A045435 (n + 1)

end A045435

/-! ## A045435.P5439488688327307151

`p?[n%5+2*n]`
-/

namespace A045435.P5439488688327307151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 5 + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045435.P5439488688327307151

namespace A045435

/-- `p?[n%5+2*n]` -/
def P5439488688327307151.Spec : Prop :=
  ∀ n, (P5439488688327307151.a n : ℤ) = A045435 (n + 1)

end A045435

/-! ## A045435.P1636838527890082406

`A045413(A352894(2*n+1)+n+1)`
-/

namespace A045435.P1636838527890082406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045413 (A352894 (2 * n + 1) + (n + 1 : ℤ)).toNat

end

end A045435.P1636838527890082406

namespace A045435

/-- `A045413(A352894(2*n+1)+n+1)` -/
def P1636838527890082406.Spec : Prop :=
  ∀ n, P1636838527890082406.a n = A045435 (n + 1)

end A045435

/-! ## A045435.P7125863389619473933

`∩[A045405(n+1), A045327(n+1)]`
-/

namespace A045435.P7125863389619473933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045327 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045435.P7125863389619473933

namespace A045435

/-- `∩[A045405(n+1), A045327(n+1)]` -/
def P7125863389619473933.Spec : Prop :=
  ∀ n, (P7125863389619473933.a n : ℤ) = A045435 (n + 1)

end A045435

/-! ## A045435.P5251992318174104905

`∩[A045428(n+1), A042991(n+1)]`
-/

namespace A045435.P5251992318174104905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045435.P5251992318174104905

namespace A045435

/-- `∩[A045428(n+1), A042991(n+1)]` -/
def P5251992318174104905.Spec : Prop :=
  ∀ n, (P5251992318174104905.a n : ℤ) = A045435 (n + 1)

end A045435

/-! ## A045435.P5676992185040134077

`∩[A004139(n+1), A045413(n+1)]`
-/

namespace A045435.P5676992185040134077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045435.P5676992185040134077

namespace A045435

/-- `∩[A004139(n+1), A045413(n+1)]` -/
def P5676992185040134077.Spec : Prop :=
  ∀ n, (P5676992185040134077.a n : ℤ) = A045435 (n + 1)

end A045435

/-! ## A045435.P1729711583536900916

`∩[A045319(n+1), A045413(n+1)]`
-/

namespace A045435.P1729711583536900916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045435.P1729711583536900916

namespace A045435

/-- `∩[A045319(n+1), A045413(n+1)]` -/
def P1729711583536900916.Spec : Prop :=
  ∀ n, (P1729711583536900916.a n : ℤ) = A045435 (n + 1)

end A045435

/-! ## A045435.P18441331049539082478

`∩[A104381(n+1), A045413(n+1)]`
-/

namespace A045435.P18441331049539082478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045435.P18441331049539082478

namespace A045435

/-- `∩[A104381(n+1), A045413(n+1)]` -/
def P18441331049539082478.Spec : Prop :=
  ∀ n, (P18441331049539082478.a n : ℤ) = A045435 (n + 1)

end A045435

/-! ## A045435.P6868852400719491931

`record[A006530(or(1, 5*n+3))]`
-/

namespace A045435.P6868852400719491931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.lor 1 (5 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045435.P6868852400719491931

namespace A045435

/-- `record[A006530(or(1, 5*n+3))]` -/
def P6868852400719491931.Spec : Prop :=
  ∀ n, P6868852400719491931.a n = A045435 (n + 1)

end A045435

/-! ## A045435.P18143741508047217865

`record[A020639(or(1, 5*n+3))]`
-/

namespace A045435.P18143741508047217865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.lor 1 (5 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045435.P18143741508047217865

namespace A045435

/-- `record[A020639(or(1, 5*n+3))]` -/
def P18143741508047217865.Spec : Prop :=
  ∀ n, P18143741508047217865.a n = A045435 (n + 1)

end A045435

/-! ## A045435.P4140546665997855428

`filter[A045413(n+1), A358847(#)]`
-/

namespace A045435.P4140546665997855428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358847 (f1 j).toNat = 1) n)

end

end A045435.P4140546665997855428

namespace A045435

/-- `filter[A045413(n+1), A358847(#)]` -/
def P4140546665997855428.Spec : Prop :=
  ∀ n, P4140546665997855428.a n = A045435 (n + 1)

end A045435

/-! ## A045435.P4993635840090668949

`filter[A045413(n+1), A011558(#)]`
-/

namespace A045435.P4993635840090668949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A045435.P4993635840090668949

namespace A045435

/-- `filter[A045413(n+1), A011558(#)]` -/
def P4993635840090668949.Spec : Prop :=
  ∀ n, P4993635840090668949.a n = A045435 (n + 1)

end A045435

/-!
# A045436: Primes congruent to {1, 3} mod 7.

The programs for A045436, the canonical program `A045436.P4716944390061127291` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045436 has offset 1).

The definition of A045436 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045436.P567372184053272638

`p?[ogf((x+2x^2+3x^3+8x^4)/(1-x-x^3+x^4))]`
-/

namespace A045436.P567372184053272638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 3, 8] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045436.P567372184053272638

namespace A045436

/-- `p?[ogf((x+2x^2+3x^3+8x^4)/(1-x-x^3+x^4))]` -/
def P567372184053272638.Spec : Prop :=
  ∀ n, P567372184053272638.a n = A045436 (n + 1)

end A045436

/-! ## A045436.P4716944390061127291

`A045424(A065475(n+1))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A045436

/-- `A045424(A065475(n+1))` -/
def P4716944390061127291.Spec : Prop :=
  ∀ n, P4716944390061127291.a n = A045436 (n + 1)

theorem P4716944390061127291.correct : P4716944390061127291.Spec := by
  intro n
  simp only [A045436, Nat.add_sub_cancel]

end A045436

/-! ## A045436.P5942076983946124512

`A045424(A181440(n+2))`
-/

namespace A045436.P5942076983946124512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045424 (A181440 (n + 2)).toNat

end

end A045436.P5942076983946124512

namespace A045436

/-- `A045424(A181440(n+2))` -/
def P5942076983946124512.Spec : Prop :=
  ∀ n, P5942076983946124512.a n = A045436 (n + 1)

end A045436

/-! ## A045436.P7282320103736129901

`A045424(A184985(n+2))`
-/

namespace A045436.P7282320103736129901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045424 (A184985 (n + 2)).toNat

end

end A045436.P7282320103736129901

namespace A045436

/-- `A045424(A184985(n+2))` -/
def P7282320103736129901.Spec : Prop :=
  ∀ n, P7282320103736129901.a n = A045436 (n + 1)

end A045436

/-! ## A045436.P12610370940659262155

`p?[a(n-2)+7]` with `a(0)=1, a(1)=3`
-/

namespace A045436.P12610370940659262155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 2) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045436.P12610370940659262155

namespace A045436

/-- `p?[a(n-2)+7]` -/
def P12610370940659262155.Spec : Prop :=
  ∀ n, (P12610370940659262155.a n : ℤ) = A045436 (n + 1)

end A045436

/-! ## A045436.P16347181438180958878

`∩[A045433(n+1), A045342(n+1)]`
-/

namespace A045436.P16347181438180958878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045436.P16347181438180958878

namespace A045436

/-- `∩[A045433(n+1), A045342(n+1)]` -/
def P16347181438180958878.Spec : Prop :=
  ∀ n, (P16347181438180958878.a n : ℤ) = A045436 (n + 1)

end A045436

/-! ## A045436.P4484291291214190375

`∩[A045328(n+1), A045408(n+1)]`
-/

namespace A045436.P4484291291214190375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045436.P4484291291214190375

namespace A045436

/-- `∩[A045328(n+1), A045408(n+1)]` -/
def P4484291291214190375.Spec : Prop :=
  ∀ n, (P4484291291214190375.a n : ℤ) = A045436 (n + 1)

end A045436

/-! ## A045436.P17490127073323308862

`∩[A045340(n+1), A045396(n+1)]`
-/

namespace A045436.P17490127073323308862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045436.P17490127073323308862

namespace A045436

/-- `∩[A045340(n+1), A045396(n+1)]` -/
def P17490127073323308862.Spec : Prop :=
  ∀ n, (P17490127073323308862.a n : ℤ) = A045436 (n + 1)

end A045436

/-! ## A045436.P1817557608041601109

`∩[A045313(n+1), A045417(n+1)]`
-/

namespace A045436.P1817557608041601109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045436.P1817557608041601109

namespace A045436

/-- `∩[A045313(n+1), A045417(n+1)]` -/
def P1817557608041601109.Spec : Prop :=
  ∀ n, (P1817557608041601109.a n : ℤ) = A045436 (n + 1)

end A045436

/-! ## A045436.P14986696603570983568

`∩[A045313(n+1), A045420(n+1)]`
-/

namespace A045436.P14986696603570983568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045436.P14986696603570983568

namespace A045436

/-- `∩[A045313(n+1), A045420(n+1)]` -/
def P14986696603570983568.Spec : Prop :=
  ∀ n, (P14986696603570983568.a n : ℤ) = A045436 (n + 1)

end A045436

/-! ## A045436.P13673029552034996660

`∩[A045313(n+1), A045422(n+1)]`
-/

namespace A045436.P13673029552034996660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045436.P13673029552034996660

namespace A045436

/-- `∩[A045313(n+1), A045422(n+1)]` -/
def P13673029552034996660.Spec : Prop :=
  ∀ n, (P13673029552034996660.a n : ℤ) = A045436 (n + 1)

end A045436

/-! ## A045436.P12001060142278437669

`∩[A045313(n+1), A045424(n+1)]`
-/

namespace A045436.P12001060142278437669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045436.P12001060142278437669

namespace A045436

/-- `∩[A045313(n+1), A045424(n+1)]` -/
def P12001060142278437669.Spec : Prop :=
  ∀ n, (P12001060142278437669.a n : ℤ) = A045436 (n + 1)

end A045436

/-! ## A045436.P9851626330413372078

`∩[A045313(n+1), A045426(n+1)]`
-/

namespace A045436.P9851626330413372078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045436.P9851626330413372078

namespace A045436

/-- `∩[A045313(n+1), A045426(n+1)]` -/
def P9851626330413372078.Spec : Prop :=
  ∀ n, (P9851626330413372078.a n : ℤ) = A045436 (n + 1)

end A045436

/-! ## A045436.P12717737319105893266

`∩[A042994(n+1), A045426(n+1)]`
-/

namespace A045436.P12717737319105893266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045436.P12717737319105893266

namespace A045436

/-- `∩[A042994(n+1), A045426(n+1)]` -/
def P12717737319105893266.Spec : Prop :=
  ∀ n, (P12717737319105893266.a n : ℤ) = A045436 (n + 1)

end A045436

/-! ## A045436.P1881647635034268058

`∩[A042994(n+1), A045431(n+1)]`
-/

namespace A045436.P1881647635034268058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045436.P1881647635034268058

namespace A045436

/-- `∩[A042994(n+1), A045431(n+1)]` -/
def P1881647635034268058.Spec : Prop :=
  ∀ n, (P1881647635034268058.a n : ℤ) = A045436 (n + 1)

end A045436

/-! ## A045436.P440211162809741853

`∩[A042994(n+1), A045433(n+1)]`
-/

namespace A045436.P440211162809741853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045436.P440211162809741853

namespace A045436

/-- `∩[A042994(n+1), A045433(n+1)]` -/
def P440211162809741853.Spec : Prop :=
  ∀ n, (P440211162809741853.a n : ℤ) = A045436 (n + 1)

end A045436

/-! ## A045436.P17477680151477896498

`∩[A045324(n+1), A045411(n+1)]`
-/

namespace A045436.P17477680151477896498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045436.P17477680151477896498

namespace A045436

/-- `∩[A045324(n+1), A045411(n+1)]` -/
def P17477680151477896498.Spec : Prop :=
  ∀ n, (P17477680151477896498.a n : ℤ) = A045436 (n + 1)

end A045436

/-! ## A045436.P9238920019916594515

`∩[A045398(n+1), A045337(n+1)]`
-/

namespace A045436.P9238920019916594515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045436.P9238920019916594515

namespace A045436

/-- `∩[A045398(n+1), A045337(n+1)]` -/
def P9238920019916594515.Spec : Prop :=
  ∀ n, (P9238920019916594515.a n : ℤ) = A045436 (n + 1)

end A045436

/-! ## A045436.P3905153597836832319

`∩[A045334(n+1), A045400(n+1)]`
-/

namespace A045436.P3905153597836832319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045436.P3905153597836832319

namespace A045436

/-- `∩[A045334(n+1), A045400(n+1)]` -/
def P3905153597836832319.Spec : Prop :=
  ∀ n, (P3905153597836832319.a n : ℤ) = A045436 (n + 1)

end A045436

/-! ## A045436.P14742610916296568025

`∩[A045320(n+1), A045415(n+1)]`
-/

namespace A045436.P14742610916296568025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045436.P14742610916296568025

namespace A045436

/-- `∩[A045320(n+1), A045415(n+1)]` -/
def P14742610916296568025.Spec : Prop :=
  ∀ n, (P14742610916296568025.a n : ℤ) = A045436 (n + 1)

end A045436

/-!
# A045437: Primes congruent to 3 mod 7.

The programs for A045437, the canonical program `A045437.P8146727644767287443` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045437 has offset 1).

The definition of A045437 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045437.P8146727644767287443

`A045425(A065475(n+1))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A045437

/-- `A045425(A065475(n+1))` -/
def P8146727644767287443.Spec : Prop :=
  ∀ n, P8146727644767287443.a n = A045437 (n + 1)

theorem P8146727644767287443.correct : P8146727644767287443.Spec := by
  intro n
  simp only [A045437, Nat.add_sub_cancel]

end A045437

/-! ## A045437.P4050326109499997451

`A045425(A181440(n+2))`
-/

namespace A045437.P4050326109499997451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (A181440 (n + 2)).toNat

end

end A045437.P4050326109499997451

namespace A045437

/-- `A045425(A181440(n+2))` -/
def P4050326109499997451.Spec : Prop :=
  ∀ n, P4050326109499997451.a n = A045437 (n + 1)

end A045437

/-! ## A045437.P6563176455456366965

`A045425(A184985(n+2))`
-/

namespace A045437.P6563176455456366965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (A184985 (n + 2)).toNat

end

end A045437.P6563176455456366965

namespace A045437

/-- `A045425(A184985(n+2))` -/
def P6563176455456366965.Spec : Prop :=
  ∀ n, P6563176455456366965.a n = A045437 (n + 1)

end A045437

/-! ## A045437.P1237841119643734268

`p?[7*n+3]`
-/

namespace A045437.P1237841119643734268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045437.P1237841119643734268

namespace A045437

/-- `p?[7*n+3]` -/
def P1237841119643734268.Spec : Prop :=
  ∀ n, (P1237841119643734268.a n : ℤ) = A045437 (n + 1)

end A045437

/-! ## A045437.P17676222466112467167

`or(1, p?[a(n-1)+7])` with `a(0)=3`
-/

namespace A045437.P17676222466112467167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A045437.P17676222466112467167

namespace A045437

/-- `or(1, p?[a(n-1)+7])` -/
def P17676222466112467167.Spec : Prop :=
  ∀ n, (P17676222466112467167.a n : ℤ) = A045437 (n + 1)

end A045437

/-! ## A045437.P17404878896166586139

`or(1, p?[A004621(n+1)])`
-/

namespace A045437.P17404878896166586139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A045437.P17404878896166586139

namespace A045437

/-- `or(1, p?[A004621(n+1)])` -/
def P17404878896166586139.Spec : Prop :=
  ∀ n, P17404878896166586139.a n = A045437 (n + 1)

end A045437

/-! ## A045437.P5787206969929530238

`p?[A004621(n+1)]%A004634(n+2)`
-/

namespace A045437.P5787206969929530238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A004634 (n + 2))

end

end A045437.P5787206969929530238

namespace A045437

/-- `p?[A004621(n+1)]%A004634(n+2)` -/
def P5787206969929530238.Spec : Prop :=
  ∀ n, P5787206969929530238.a n = A045437 (n + 1)

end A045437

/-! ## A045437.P15184328157885618000

`∩[A045338(n+1), A004621(n+1)]`
-/

namespace A045437.P15184328157885618000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045437.P15184328157885618000

namespace A045437

/-- `∩[A045338(n+1), A004621(n+1)]` -/
def P15184328157885618000.Spec : Prop :=
  ∀ n, (P15184328157885618000.a n : ℤ) = A045437 (n + 1)

end A045437

/-! ## A045437.P9976040561229867170

`∩[A004621(n+1), A045400(n+1)]`
-/

namespace A045437.P9976040561229867170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045437.P9976040561229867170

namespace A045437

/-- `∩[A004621(n+1), A045400(n+1)]` -/
def P9976040561229867170.Spec : Prop :=
  ∀ n, (P9976040561229867170.a n : ℤ) = A045437 (n + 1)

end A045437

/-! ## A045437.P7726175867203854641

`∩[A004621(n+1), A042995(n+1)]`
-/

namespace A045437.P7726175867203854641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045437.P7726175867203854641

namespace A045437

/-- `∩[A004621(n+1), A042995(n+1)]` -/
def P7726175867203854641.Spec : Prop :=
  ∀ n, (P7726175867203854641.a n : ℤ) = A045437 (n + 1)

end A045437

/-! ## A045437.P5223816798804360568

`∩[A003625(n+1), A004621(n+1)]`
-/

namespace A045437.P5223816798804360568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045437.P5223816798804360568

namespace A045437

/-- `∩[A003625(n+1), A004621(n+1)]` -/
def P5223816798804360568.Spec : Prop :=
  ∀ n, (P5223816798804360568.a n : ℤ) = A045437 (n + 1)

end A045437

/-! ## A045437.P212951307508825178

`∩[A003625(n+1), A045325(n+1)]`
-/

namespace A045437.P212951307508825178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045437.P212951307508825178

namespace A045437

/-- `∩[A003625(n+1), A045325(n+1)]` -/
def P212951307508825178.Spec : Prop :=
  ∀ n, (P212951307508825178.a n : ℤ) = A045437 (n + 1)

end A045437

/-! ## A045437.P1505260576223916625

`∩[A003625(n+1), A045332(n+1)]`
-/

namespace A045437.P1505260576223916625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045437.P1505260576223916625

namespace A045437

/-- `∩[A003625(n+1), A045332(n+1)]` -/
def P1505260576223916625.Spec : Prop :=
  ∀ n, (P1505260576223916625.a n : ℤ) = A045437 (n + 1)

end A045437

/-! ## A045437.P10187276897440771877

`∩[A003625(n+1), A045333(n+1)]`
-/

namespace A045437.P10187276897440771877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045437.P10187276897440771877

namespace A045437

/-- `∩[A003625(n+1), A045333(n+1)]` -/
def P10187276897440771877.Spec : Prop :=
  ∀ n, (P10187276897440771877.a n : ℤ) = A045437 (n + 1)

end A045437

/-! ## A045437.P4596253908959550200

`∩[A003625(n+1), A045338(n+1)]`
-/

namespace A045437.P4596253908959550200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045437.P4596253908959550200

namespace A045437

/-- `∩[A003625(n+1), A045338(n+1)]` -/
def P4596253908959550200.Spec : Prop :=
  ∀ n, (P4596253908959550200.a n : ℤ) = A045437 (n + 1)

end A045437

/-! ## A045437.P12297477939073862326

`∩[A003625(n+1), A045342(n+1)]`
-/

namespace A045437.P12297477939073862326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045437.P12297477939073862326

namespace A045437

/-- `∩[A003625(n+1), A045342(n+1)]` -/
def P12297477939073862326.Spec : Prop :=
  ∀ n, (P12297477939073862326.a n : ℤ) = A045437 (n + 1)

end A045437

/-! ## A045437.P17629449471245951261

`∩[A003625(n+1), A045343(n+1)]`
-/

namespace A045437.P17629449471245951261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045437.P17629449471245951261

namespace A045437

/-- `∩[A003625(n+1), A045343(n+1)]` -/
def P17629449471245951261.Spec : Prop :=
  ∀ n, (P17629449471245951261.a n : ℤ) = A045437 (n + 1)

end A045437

/-! ## A045437.P9817981389269023865

`∩[A003625(n+1), A045424(n+1)]`
-/

namespace A045437.P9817981389269023865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045437.P9817981389269023865

namespace A045437

/-- `∩[A003625(n+1), A045424(n+1)]` -/
def P9817981389269023865.Spec : Prop :=
  ∀ n, (P9817981389269023865.a n : ℤ) = A045437 (n + 1)

end A045437

/-! ## A045437.P12212259892124241635

`∩[A003625(n+1), A045324(n+1)]`
-/

namespace A045437.P12212259892124241635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045437.P12212259892124241635

namespace A045437

/-- `∩[A003625(n+1), A045324(n+1)]` -/
def P12212259892124241635.Spec : Prop :=
  ∀ n, (P12212259892124241635.a n : ℤ) = A045437 (n + 1)

end A045437

/-! ## A045437.P1828383485555003931

`∩[A003625(n+1), A045337(n+1)]`
-/

namespace A045437.P1828383485555003931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045437.P1828383485555003931

namespace A045437

/-- `∩[A003625(n+1), A045337(n+1)]` -/
def P1828383485555003931.Spec : Prop :=
  ∀ n, (P1828383485555003931.a n : ℤ) = A045437 (n + 1)

end A045437

/-!
# A045438: Primes congruent to {0, 1, 4, 5, 6} mod 7.

The programs for A045438, the canonical program `A045438.P18307851375055473180` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045438 has offset 1).

The definition of A045438 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045438.P8878705344404193055

`∪[A022007(n+1), A045448(n+1)]`
-/

namespace A045438.P8878705344404193055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045438.P8878705344404193055

namespace A045438

/-- `∪[A022007(n+1), A045448(n+1)]` -/
def P8878705344404193055.Spec : Prop :=
  ∀ n, (P8878705344404193055.a n : ℤ) = A045438 (n + 1)

end A045438

/-! ## A045438.P1213106921933020815

`∪[A022008(n+1), A045448(n+1)]`
-/

namespace A045438.P1213106921933020815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045438.P1213106921933020815

namespace A045438

/-- `∪[A022008(n+1), A045448(n+1)]` -/
def P1213106921933020815.Spec : Prop :=
  ∀ n, (P1213106921933020815.a n : ℤ) = A045438 (n + 1)

end A045438

/-! ## A045438.P18307851375055473180

`∪[A023251(n+1), A045448(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A045438

/-- `∪[A023251(n+1), A045448(n+1)]` -/
def P18307851375055473180.Spec : Prop :=
  ∀ n, (P18307851375055473180.a n : ℤ) = A045438 (n + 1)

theorem P18307851375055473180.correct : P18307851375055473180.Spec := by
  intro n
  simp only [A045438, Nat.add_sub_cancel]

end A045438

/-! ## A045438.P15621501897762549118

`∪[A023286(n+1), A045448(n+1)]`
-/

namespace A045438.P15621501897762549118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023286 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045438.P15621501897762549118

namespace A045438

/-- `∪[A023286(n+1), A045448(n+1)]` -/
def P15621501897762549118.Spec : Prop :=
  ∀ n, (P15621501897762549118.a n : ℤ) = A045438 (n + 1)

end A045438

/-! ## A045438.P18392350886692260740

`∪[A023316(n+1), A045448(n+1)]`
-/

namespace A045438.P18392350886692260740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045438.P18392350886692260740

namespace A045438

/-- `∪[A023316(n+1), A045448(n+1)]` -/
def P18392350886692260740.Spec : Prop :=
  ∀ n, (P18392350886692260740.a n : ℤ) = A045438 (n + 1)

end A045438

/-! ## A045438.P16867943937361747355

`∪[A023344(n+1), A045448(n+1)]`
-/

namespace A045438.P16867943937361747355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045438.P16867943937361747355

namespace A045438

/-- `∪[A023344(n+1), A045448(n+1)]` -/
def P16867943937361747355.Spec : Prop :=
  ∀ n, (P16867943937361747355.a n : ℤ) = A045438 (n + 1)

end A045438

/-! ## A045438.P7761720217951563331

`∪[A045439(n+1), A045440(n+1)]`
-/

namespace A045438.P7761720217951563331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045439 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045438.P7761720217951563331

namespace A045438

/-- `∪[A045439(n+1), A045440(n+1)]` -/
def P7761720217951563331.Spec : Prop :=
  ∀ n, (P7761720217951563331.a n : ℤ) = A045438 (n + 1)

end A045438

/-! ## A045438.P572055005879780064

`∪[A045439(n+1), A045443(n+1)]`
-/

namespace A045438.P572055005879780064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045439 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045438.P572055005879780064

namespace A045438

/-- `∪[A045439(n+1), A045443(n+1)]` -/
def P572055005879780064.Spec : Prop :=
  ∀ n, (P572055005879780064.a n : ℤ) = A045438 (n + 1)

end A045438

/-! ## A045438.P15306333695517280187

`∪[A045440(n+1), A045443(n+1)]`
-/

namespace A045438.P15306333695517280187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045440 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045438.P15306333695517280187

namespace A045438

/-- `∪[A045440(n+1), A045443(n+1)]` -/
def P15306333695517280187.Spec : Prop :=
  ∀ n, (P15306333695517280187.a n : ℤ) = A045438 (n + 1)

end A045438

/-! ## A045438.P17317999294908441159

`∪[A045440(n+1), A045444(n+1)]`
-/

namespace A045438.P17317999294908441159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045440 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045438.P17317999294908441159

namespace A045438

/-- `∪[A045440(n+1), A045444(n+1)]` -/
def P17317999294908441159.Spec : Prop :=
  ∀ n, (P17317999294908441159.a n : ℤ) = A045438 (n + 1)

end A045438

/-! ## A045438.P11179527094125843038

`∪[A045441(n+1), A045443(n+1)]`
-/

namespace A045438.P11179527094125843038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045438.P11179527094125843038

namespace A045438

/-- `∪[A045441(n+1), A045443(n+1)]` -/
def P11179527094125843038.Spec : Prop :=
  ∀ n, (P11179527094125843038.a n : ℤ) = A045438 (n + 1)

end A045438

/-! ## A045438.P839916899230144332

`∪[A045439(n+1), A045446(n+1)]`
-/

namespace A045438.P839916899230144332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045439 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045438.P839916899230144332

namespace A045438

/-- `∪[A045439(n+1), A045446(n+1)]` -/
def P839916899230144332.Spec : Prop :=
  ∀ n, (P839916899230144332.a n : ℤ) = A045438 (n + 1)

end A045438

/-! ## A045438.P5444878578006522257

`∪[A045440(n+1), A045455(n+1)]`
-/

namespace A045438.P5444878578006522257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045440 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045438.P5444878578006522257

namespace A045438

/-- `∪[A045440(n+1), A045455(n+1)]` -/
def P5444878578006522257.Spec : Prop :=
  ∀ n, (P5444878578006522257.a n : ℤ) = A045438 (n + 1)

end A045438

/-! ## A045438.P17661127091798771777

`∪[A045447(n+1), A045448(n+1)]`
-/

namespace A045438.P17661127091798771777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045438.P17661127091798771777

namespace A045438

/-- `∪[A045447(n+1), A045448(n+1)]` -/
def P17661127091798771777.Spec : Prop :=
  ∀ n, (P17661127091798771777.a n : ℤ) = A045438 (n + 1)

end A045438

/-! ## A045438.P10279211826137806262

`∪[A045439(n+1), A045463(n+1)]`
-/

namespace A045438.P10279211826137806262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045439 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045463 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045438.P10279211826137806262

namespace A045438

/-- `∪[A045439(n+1), A045463(n+1)]` -/
def P10279211826137806262.Spec : Prop :=
  ∀ n, (P10279211826137806262.a n : ℤ) = A045438 (n + 1)

end A045438

/-! ## A045438.P8637511853138779406

`∪[A045439(n+1), A045469(n+1)]`
-/

namespace A045438.P8637511853138779406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045439 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045438.P8637511853138779406

namespace A045438

/-- `∪[A045439(n+1), A045469(n+1)]` -/
def P8637511853138779406.Spec : Prop :=
  ∀ n, (P8637511853138779406.a n : ℤ) = A045438 (n + 1)

end A045438

/-! ## A045438.P2524363464230722018

`∪[A046137(n+1), A045448(n+1)]`
-/

namespace A045438.P2524363464230722018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045438.P2524363464230722018

namespace A045438

/-- `∪[A046137(n+1), A045448(n+1)]` -/
def P2524363464230722018.Spec : Prop :=
  ∀ n, (P2524363464230722018.a n : ℤ) = A045438 (n + 1)

end A045438

/-! ## A045438.P3640428967575914150

`∪[A045448(n+1), A201308(n+1)]`
-/

namespace A045438.P3640428967575914150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045438.P3640428967575914150

namespace A045438

/-- `∪[A045448(n+1), A201308(n+1)]` -/
def P3640428967575914150.Spec : Prop :=
  ∀ n, (P3640428967575914150.a n : ℤ) = A045438 (n + 1)

end A045438

/-! ## A045438.P13549266745084884658

`∪[A045448(n+1), A355577(n+1)]`
-/

namespace A045438.P13549266745084884658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045438.P13549266745084884658

namespace A045438

/-- `∪[A045448(n+1), A355577(n+1)]` -/
def P13549266745084884658.Spec : Prop :=
  ∀ n, (P13549266745084884658.a n : ℤ) = A045438 (n + 1)

end A045438

/-! ## A045438.P15696849314482342010

`p?[a(n-5)+7]` with `a(0)=0, a(1)=1, a(2)=4, a(3)=5, a(4)=6`
-/

namespace A045438.P15696849314482342010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4, 5, 6] fun n f1 =>
  f1 (n - 5) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045438.P15696849314482342010

namespace A045438

/-- `p?[a(n-5)+7]` -/
def P15696849314482342010.Spec : Prop :=
  ∀ n, (P15696849314482342010.a n : ℤ) = A045438 (n + 1)

end A045438

/-!
# A045439: Primes congruent to {0, 4, 5, 6} mod 7.

The programs for A045439, the canonical program `A045439.P1033746242523659184` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045439 has offset 1).

The definition of A045439 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045439.P617497086603486279

`∪[A022007(n+1), A045449(n+1)]`
-/

namespace A045439.P617497086603486279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045439.P617497086603486279

namespace A045439

/-- `∪[A022007(n+1), A045449(n+1)]` -/
def P617497086603486279.Spec : Prop :=
  ∀ n, (P617497086603486279.a n : ℤ) = A045439 (n + 1)

end A045439

/-! ## A045439.P13741861260776900291

`∪[A022008(n+1), A045449(n+1)]`
-/

namespace A045439.P13741861260776900291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045439.P13741861260776900291

namespace A045439

/-- `∪[A022008(n+1), A045449(n+1)]` -/
def P13741861260776900291.Spec : Prop :=
  ∀ n, (P13741861260776900291.a n : ℤ) = A045439 (n + 1)

end A045439

/-! ## A045439.P579047843277104474

`∪[A023344(n+1), A045449(n+1)]`
-/

namespace A045439.P579047843277104474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045439.P579047843277104474

namespace A045439

/-- `∪[A023344(n+1), A045449(n+1)]` -/
def P579047843277104474.Spec : Prop :=
  ∀ n, (P579047843277104474.a n : ℤ) = A045439 (n + 1)

end A045439

/-! ## A045439.P18180637861903041861

`∪[A045441(n+1), A045444(n+1)]`
-/

namespace A045439.P18180637861903041861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045439.P18180637861903041861

namespace A045439

/-- `∪[A045441(n+1), A045444(n+1)]` -/
def P18180637861903041861.Spec : Prop :=
  ∀ n, (P18180637861903041861.a n : ℤ) = A045439 (n + 1)

end A045439

/-! ## A045439.P10717161229430923759

`∪[A045441(n+1), A045449(n+1)]`
-/

namespace A045439.P10717161229430923759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045439.P10717161229430923759

namespace A045439

/-- `∪[A045441(n+1), A045449(n+1)]` -/
def P10717161229430923759.Spec : Prop :=
  ∀ n, (P10717161229430923759.a n : ℤ) = A045439 (n + 1)

end A045439

/-! ## A045439.P15345948183407044183

`∪[A045444(n+1), A045449(n+1)]`
-/

namespace A045439.P15345948183407044183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045439.P15345948183407044183

namespace A045439

/-- `∪[A045444(n+1), A045449(n+1)]` -/
def P15345948183407044183.Spec : Prop :=
  ∀ n, (P15345948183407044183.a n : ℤ) = A045439 (n + 1)

end A045439

/-! ## A045439.P18230954604672744978

`∪[A045441(n+1), A045455(n+1)]`
-/

namespace A045439.P18230954604672744978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045439.P18230954604672744978

namespace A045439

/-- `∪[A045441(n+1), A045455(n+1)]` -/
def P18230954604672744978.Spec : Prop :=
  ∀ n, (P18230954604672744978.a n : ℤ) = A045439 (n + 1)

end A045439

/-! ## A045439.P18288841325984611936

`∪[A045447(n+1), A045449(n+1)]`
-/

namespace A045439.P18288841325984611936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045439.P18288841325984611936

namespace A045439

/-- `∪[A045447(n+1), A045449(n+1)]` -/
def P18288841325984611936.Spec : Prop :=
  ∀ n, (P18288841325984611936.a n : ℤ) = A045439 (n + 1)

end A045439

/-! ## A045439.P1038169717945812624

`∪[A045441(n+1), A045467(n+1)]`
-/

namespace A045439.P1038169717945812624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045439.P1038169717945812624

namespace A045439

/-- `∪[A045441(n+1), A045467(n+1)]` -/
def P1038169717945812624.Spec : Prop :=
  ∀ n, (P1038169717945812624.a n : ℤ) = A045439 (n + 1)

end A045439

/-! ## A045439.P1033746242523659184

`∪[A045449(n+1), A045462(n+1)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A045439

/-- `∪[A045449(n+1), A045462(n+1)]` -/
def P1033746242523659184.Spec : Prop :=
  ∀ n, (P1033746242523659184.a n : ℤ) = A045439 (n + 1)

theorem P1033746242523659184.correct : P1033746242523659184.Spec := by
  intro n
  simp only [A045439, Nat.add_sub_cancel]

end A045439

/-! ## A045439.P7314132548339915237

`∪[A045449(n+1), A201308(n+1)]`
-/

namespace A045439.P7314132548339915237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045439.P7314132548339915237

namespace A045439

/-- `∪[A045449(n+1), A201308(n+1)]` -/
def P7314132548339915237.Spec : Prop :=
  ∀ n, (P7314132548339915237.a n : ℤ) = A045439 (n + 1)

end A045439

/-! ## A045439.P9286826359343538161

`p?[3*ceil(n/4)+n]`
-/

namespace A045439.P9286826359343538161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌈(n : ℚ) / 4⌉ + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045439.P9286826359343538161

namespace A045439

/-- `p?[3*ceil(n/4)+n]` -/
def P9286826359343538161.Spec : Prop :=
  ∀ n, P9286826359343538161.a n = A045439 (n + 1)

end A045439

/-! ## A045439.P1363317417324788519

`∩[A045347(n+1), A045438(n+1)]`
-/

namespace A045439.P1363317417324788519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045439.P1363317417324788519

namespace A045439

/-- `∩[A045347(n+1), A045438(n+1)]` -/
def P1363317417324788519.Spec : Prop :=
  ∀ n, (P1363317417324788519.a n : ℤ) = A045439 (n + 1)

end A045439

/-! ## A045439.P2062973876774646631

`∩[A045347(n+1), A045394(n+1)]`
-/

namespace A045439.P2062973876774646631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045439.P2062973876774646631

namespace A045439

/-- `∩[A045347(n+1), A045394(n+1)]` -/
def P2062973876774646631.Spec : Prop :=
  ∀ n, (P2062973876774646631.a n : ℤ) = A045439 (n + 1)

end A045439

/-! ## A045439.P14170914852880443920

`∩[A045394(n+1), A045438(n+1)]`
-/

namespace A045439.P14170914852880443920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045439.P14170914852880443920

namespace A045439

/-- `∩[A045394(n+1), A045438(n+1)]` -/
def P14170914852880443920.Spec : Prop :=
  ∀ n, (P14170914852880443920.a n : ℤ) = A045439 (n + 1)

end A045439

/-! ## A045439.P5951103700092215151

`∩[A045346(n+1), A045394(n+1)]`
-/

namespace A045439.P5951103700092215151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045439.P5951103700092215151

namespace A045439

/-- `∩[A045346(n+1), A045394(n+1)]` -/
def P5951103700092215151.Spec : Prop :=
  ∀ n, (P5951103700092215151.a n : ℤ) = A045439 (n + 1)

end A045439

/-! ## A045439.P13376012504100430098

`∩[A045347(n+1), A045393(n+1)]`
-/

namespace A045439.P13376012504100430098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045439.P13376012504100430098

namespace A045439

/-- `∩[A045347(n+1), A045393(n+1)]` -/
def P13376012504100430098.Spec : Prop :=
  ∀ n, (P13376012504100430098.a n : ℤ) = A045439 (n + 1)

end A045439

/-! ## A045439.P3153889515201937372

`record[A020639(2*A047331(n+1)+1)]`
-/

namespace A045439.P3153889515201937372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * A047331 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045439.P3153889515201937372

namespace A045439

/-- `record[A020639(2*A047331(n+1)+1)]` -/
def P3153889515201937372.Spec : Prop :=
  ∀ n, P3153889515201937372.a n = A045439 (n + 1)

end A045439

/-! ## A045439.P9428067167511281096

`or(1, p?[A047312(n+1)])`
-/

namespace A045439.P9428067167511281096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A045439.P9428067167511281096

namespace A045439

/-- `or(1, p?[A047312(n+1)])` -/
def P9428067167511281096.Spec : Prop :=
  ∀ n, P9428067167511281096.a n = A045439 (n + 1)

end A045439

/-! ## A045439.P14153398797674102799

`record[A006530(A047312(n+3))]`
-/

namespace A045439.P14153398797674102799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A047312 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045439.P14153398797674102799

namespace A045439

/-- `record[A006530(A047312(n+3))]` -/
def P14153398797674102799.Spec : Prop :=
  ∀ n, P14153398797674102799.a n = A045439 (n + 1)

end A045439

/-!
# A045440: Primes congruent to {0, 1, 4, 5} mod 7.

The programs for A045440, the canonical program `A045440.P8810629820623067539` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045440 has offset 1).

The definition of A045440 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045440.P15598820911947529710

`∪[A023316(n+1), A045451(n+1)]`
-/

namespace A045440.P15598820911947529710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045440.P15598820911947529710

namespace A045440

/-- `∪[A023316(n+1), A045451(n+1)]` -/
def P15598820911947529710.Spec : Prop :=
  ∀ n, (P15598820911947529710.a n : ℤ) = A045440 (n + 1)

end A045440

/-! ## A045440.P15342054156243372438

`∪[A023344(n+1), A045451(n+1)]`
-/

namespace A045440.P15342054156243372438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045440.P15342054156243372438

namespace A045440

/-- `∪[A023344(n+1), A045451(n+1)]` -/
def P15342054156243372438.Spec : Prop :=
  ∀ n, (P15342054156243372438.a n : ℤ) = A045440 (n + 1)

end A045440

/-! ## A045440.P1556265376470875351

`∪[A045441(n+1), A045446(n+1)]`
-/

namespace A045440.P1556265376470875351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045440.P1556265376470875351

namespace A045440

/-- `∪[A045441(n+1), A045446(n+1)]` -/
def P1556265376470875351.Spec : Prop :=
  ∀ n, (P1556265376470875351.a n : ℤ) = A045440 (n + 1)

end A045440

/-! ## A045440.P4914791974638219664

`∪[A045441(n+1), A045451(n+1)]`
-/

namespace A045440.P4914791974638219664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045440.P4914791974638219664

namespace A045440

/-- `∪[A045441(n+1), A045451(n+1)]` -/
def P4914791974638219664.Spec : Prop :=
  ∀ n, (P4914791974638219664.a n : ℤ) = A045440 (n + 1)

end A045440

/-! ## A045440.P2364237113733504912

`∪[A045441(n+1), A045456(n+1)]`
-/

namespace A045440.P2364237113733504912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045456 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045440.P2364237113733504912

namespace A045440

/-- `∪[A045441(n+1), A045456(n+1)]` -/
def P2364237113733504912.Spec : Prop :=
  ∀ n, (P2364237113733504912.a n : ℤ) = A045440 (n + 1)

end A045440

/-! ## A045440.P8035444173602068909

`∪[A045446(n+1), A045451(n+1)]`
-/

namespace A045440.P8035444173602068909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045440.P8035444173602068909

namespace A045440

/-- `∪[A045446(n+1), A045451(n+1)]` -/
def P8035444173602068909.Spec : Prop :=
  ∀ n, (P8035444173602068909.a n : ℤ) = A045440 (n + 1)

end A045440

/-! ## A045440.P16641478492202714756

`∪[A045447(n+1), A045451(n+1)]`
-/

namespace A045440.P16641478492202714756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045440.P16641478492202714756

namespace A045440

/-- `∪[A045447(n+1), A045451(n+1)]` -/
def P16641478492202714756.Spec : Prop :=
  ∀ n, (P16641478492202714756.a n : ℤ) = A045440 (n + 1)

end A045440

/-! ## A045440.P11737173562627718942

`∪[A045452(n+1), A045446(n+1)]`
-/

namespace A045440.P11737173562627718942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045440.P11737173562627718942

namespace A045440

/-- `∪[A045452(n+1), A045446(n+1)]` -/
def P11737173562627718942.Spec : Prop :=
  ∀ n, (P11737173562627718942.a n : ℤ) = A045440 (n + 1)

end A045440

/-! ## A045440.P12164783231520541896

`∪[A045441(n+1), A045461(n+1)]`
-/

namespace A045440.P12164783231520541896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045461 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045440.P12164783231520541896

namespace A045440

/-- `∪[A045441(n+1), A045461(n+1)]` -/
def P12164783231520541896.Spec : Prop :=
  ∀ n, (P12164783231520541896.a n : ℤ) = A045440 (n + 1)

end A045440

/-! ## A045440.P9420850868920415183

`∪[A045446(n+1), A045461(n+1)]`
-/

namespace A045440.P9420850868920415183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045461 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045440.P9420850868920415183

namespace A045440

/-- `∪[A045446(n+1), A045461(n+1)]` -/
def P9420850868920415183.Spec : Prop :=
  ∀ n, (P9420850868920415183.a n : ℤ) = A045440 (n + 1)

end A045440

/-! ## A045440.P8810629820623067539

`∪[A045451(n+1), A045462(n+1)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A045440

/-- `∪[A045451(n+1), A045462(n+1)]` -/
def P8810629820623067539.Spec : Prop :=
  ∀ n, (P8810629820623067539.a n : ℤ) = A045440 (n + 1)

theorem P8810629820623067539.correct : P8810629820623067539.Spec := by
  intro n
  simp only [A045440, Nat.add_sub_cancel]

end A045440

/-! ## A045440.P13209148981452713895

`∪[A045451(n+1), A088550(n+1)]`
-/

namespace A045440.P13209148981452713895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045440.P13209148981452713895

namespace A045440

/-- `∪[A045451(n+1), A088550(n+1)]` -/
def P13209148981452713895.Spec : Prop :=
  ∀ n, (P13209148981452713895.a n : ℤ) = A045440 (n + 1)

end A045440

/-! ## A045440.P11882024776556009181

`∪[A182346(n+1), A045451(n+1)]`
-/

namespace A045440.P11882024776556009181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045440.P11882024776556009181

namespace A045440

/-- `∪[A182346(n+1), A045451(n+1)]` -/
def P11882024776556009181.Spec : Prop :=
  ∀ n, (P11882024776556009181.a n : ℤ) = A045440 (n + 1)

end A045440

/-! ## A045440.P15827844150678153842

`∪[A045451(n+1), A355577(n+1)]`
-/

namespace A045440.P15827844150678153842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045440.P15827844150678153842

namespace A045440

/-- `∪[A045451(n+1), A355577(n+1)]` -/
def P15827844150678153842.Spec : Prop :=
  ∀ n, (P15827844150678153842.a n : ℤ) = A045440 (n + 1)

end A045440

/-! ## A045440.P1227889400188618864

`p?[a(n-4)+7]` with `a(0)=0, a(1)=1, a(2)=4, a(3)=5`
-/

namespace A045440.P1227889400188618864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4, 5] fun n f1 =>
  f1 (n - 4) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045440.P1227889400188618864

namespace A045440

/-- `p?[a(n-4)+7]` -/
def P1227889400188618864.Spec : Prop :=
  ∀ n, (P1227889400188618864.a n : ℤ) = A045440 (n + 1)

end A045440

/-! ## A045440.P8796296267500388916

`∩[A045350(n+1), A045438(n+1)]`
-/

namespace A045440.P8796296267500388916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045440.P8796296267500388916

namespace A045440

/-- `∩[A045350(n+1), A045438(n+1)]` -/
def P8796296267500388916.Spec : Prop :=
  ∀ n, (P8796296267500388916.a n : ℤ) = A045440 (n + 1)

end A045440

/-! ## A045440.P8560064181274384366

`∩[A045350(n+1), A045396(n+1)]`
-/

namespace A045440.P8560064181274384366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045440.P8560064181274384366

namespace A045440

/-- `∩[A045350(n+1), A045396(n+1)]` -/
def P8560064181274384366.Spec : Prop :=
  ∀ n, (P8560064181274384366.a n : ℤ) = A045440 (n + 1)

end A045440

/-! ## A045440.P6261269198385662485

`∩[A045396(n+1), A045438(n+1)]`
-/

namespace A045440.P6261269198385662485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045440.P6261269198385662485

namespace A045440

/-- `∩[A045396(n+1), A045438(n+1)]` -/
def P6261269198385662485.Spec : Prop :=
  ∀ n, (P6261269198385662485.a n : ℤ) = A045440 (n + 1)

end A045440

/-! ## A045440.P7689067139721278032

`∩[A045346(n+1), A045396(n+1)]`
-/

namespace A045440.P7689067139721278032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045440.P7689067139721278032

namespace A045440

/-- `∩[A045346(n+1), A045396(n+1)]` -/
def P7689067139721278032.Spec : Prop :=
  ∀ n, (P7689067139721278032.a n : ℤ) = A045440 (n + 1)

end A045440

/-! ## A045440.P5759498078823359569

`∩[A045438(n+1), A042988(n)]`
-/

namespace A045440.P5759498078823359569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045440.P5759498078823359569

namespace A045440

/-- `∩[A045438(n+1), A042988(n)]` -/
def P5759498078823359569.Spec : Prop :=
  ∀ n, (P5759498078823359569.a n : ℤ) = A045440 (n + 1)

end A045440

/-!
# A045441: Primes congruent to {0, 4, 5} mod 7.

The programs for A045441, the canonical program `A045441.P2771389372555859978` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045441 has offset 1).

The definition of A045441 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A045441.anchor (n : ℕ) (hn : 1 ≤ n) : A045441 n = (Nat.nth (fun p => p.Prime ∧ p % 7 ∈ ({0, 4, 5} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A045.A045441`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A045441.P18245757086829436545

`∪[A045447(n+1), A045452(n+1)]`
-/

namespace A045441.P18245757086829436545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045452 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045441.P18245757086829436545

namespace A045441

/-- `∪[A045447(n+1), A045452(n+1)]` -/
def P18245757086829436545.Spec : Prop :=
  ∀ n, (P18245757086829436545.a n : ℤ) = A045441 (n + 1)

end A045441

/-! ## A045441.P6046826169014349057

`∪[A045462(n+1), A045447(n+1)]`
-/

namespace A045441.P6046826169014349057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045441.P6046826169014349057

namespace A045441

/-- `∪[A045462(n+1), A045447(n+1)]` -/
def P6046826169014349057.Spec : Prop :=
  ∀ n, (P6046826169014349057.a n : ℤ) = A045441 (n + 1)

end A045441

/-! ## A045441.P5847359593256203695

`∪[A045471(n+1), A045447(n+1)]`
-/

namespace A045441.P5847359593256203695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045441.P5847359593256203695

namespace A045441

/-- `∪[A045471(n+1), A045447(n+1)]` -/
def P5847359593256203695.Spec : Prop :=
  ∀ n, (P5847359593256203695.a n : ℤ) = A045441 (n + 1)

end A045441

/-! ## A045441.P2771389372555859978

`p?[a(n-3)+7]` with `a(0)=0, a(1)=4, a(2)=5`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045441

/-- `p?[a(n-3)+7]` -/
def P2771389372555859978.Spec : Prop :=
  ∀ n, (P2771389372555859978.a n : ℤ) = A045441 (n + 1)

theorem P2771389372555859978.correct : P2771389372555859978.Spec := by
  intro n
  simp only [A045441, Nat.add_sub_cancel]

end A045441

/-! ## A045441.P12508725936237839514

`p?[ogf((4x+x^2+2x^3)/(1-x-x^3+x^4))]`
-/

namespace A045441.P12508725936237839514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 1, 2] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045441.P12508725936237839514

namespace A045441

/-- `p?[ogf((4x+x^2+2x^3)/(1-x-x^3+x^4))]` -/
def P12508725936237839514.Spec : Prop :=
  ∀ n, P12508725936237839514.a n = A045441 (n + 1)

end A045441

/-! ## A045441.P15497326382274549701

`∩[A045351(n+1), A045440(n+1)]`
-/

namespace A045441.P15497326382274549701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045441.P15497326382274549701

namespace A045441

/-- `∩[A045351(n+1), A045440(n+1)]` -/
def P15497326382274549701.Spec : Prop :=
  ∀ n, (P15497326382274549701.a n : ℤ) = A045441 (n + 1)

end A045441

/-! ## A045441.P10884234959408691217

`∩[A045351(n+1), A045439(n+1)]`
-/

namespace A045441.P10884234959408691217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045441.P10884234959408691217

namespace A045441

/-- `∩[A045351(n+1), A045439(n+1)]` -/
def P10884234959408691217.Spec : Prop :=
  ∀ n, (P10884234959408691217.a n : ℤ) = A045441 (n + 1)

end A045441

/-! ## A045441.P16263381094184985976

`∩[A045351(n+1), A045397(n+1)]`
-/

namespace A045441.P16263381094184985976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045441.P16263381094184985976

namespace A045441

/-- `∩[A045351(n+1), A045397(n+1)]` -/
def P16263381094184985976.Spec : Prop :=
  ∀ n, (P16263381094184985976.a n : ℤ) = A045441 (n + 1)

end A045441

/-! ## A045441.P13607279138099011597

`∩[A045439(n+1), A045397(n+1)]`
-/

namespace A045441.P13607279138099011597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045439 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045441.P13607279138099011597

namespace A045441

/-- `∩[A045439(n+1), A045397(n+1)]` -/
def P13607279138099011597.Spec : Prop :=
  ∀ n, (P13607279138099011597.a n : ℤ) = A045441 (n + 1)

end A045441

/-! ## A045441.P16318018738289733677

`∩[A045350(n+1), A045397(n+1)]`
-/

namespace A045441.P16318018738289733677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045441.P16318018738289733677

namespace A045441

/-- `∩[A045350(n+1), A045397(n+1)]` -/
def P16318018738289733677.Spec : Prop :=
  ∀ n, (P16318018738289733677.a n : ℤ) = A045441 (n + 1)

end A045441

/-! ## A045441.P1144355792274564478

`∩[A045350(n+1), A045439(n+1)]`
-/

namespace A045441.P1144355792274564478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045441.P1144355792274564478

namespace A045441

/-- `∩[A045350(n+1), A045439(n+1)]` -/
def P1144355792274564478.Spec : Prop :=
  ∀ n, (P1144355792274564478.a n : ℤ) = A045441 (n + 1)

end A045441

/-! ## A045441.P6614266020653628379

`∩[A045351(n+1), A045438(n+1)]`
-/

namespace A045441.P6614266020653628379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045441.P6614266020653628379

namespace A045441

/-- `∩[A045351(n+1), A045438(n+1)]` -/
def P6614266020653628379.Spec : Prop :=
  ∀ n, (P6614266020653628379.a n : ℤ) = A045441 (n + 1)

end A045441

/-! ## A045441.P6986184739850055540

`∩[A045347(n+1), A045397(n+1)]`
-/

namespace A045441.P6986184739850055540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045441.P6986184739850055540

namespace A045441

/-- `∩[A045347(n+1), A045397(n+1)]` -/
def P6986184739850055540.Spec : Prop :=
  ∀ n, (P6986184739850055540.a n : ℤ) = A045441 (n + 1)

end A045441

/-! ## A045441.P14496501322867739460

`∩[A045347(n+1), A045440(n+1)]`
-/

namespace A045441.P14496501322867739460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045441.P14496501322867739460

namespace A045441

/-- `∩[A045347(n+1), A045440(n+1)]` -/
def P14496501322867739460.Spec : Prop :=
  ∀ n, (P14496501322867739460.a n : ℤ) = A045441 (n + 1)

end A045441

/-! ## A045441.P7022205115478642706

`∩[A045347(n+1), A045396(n+1)]`
-/

namespace A045441.P7022205115478642706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045441.P7022205115478642706

namespace A045441

/-- `∩[A045347(n+1), A045396(n+1)]` -/
def P7022205115478642706.Spec : Prop :=
  ∀ n, (P7022205115478642706.a n : ℤ) = A045441 (n + 1)

end A045441

/-! ## A045441.P941142100465771173

`∩[A045351(n+1), A045396(n+1)]`
-/

namespace A045441.P941142100465771173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045441.P941142100465771173

namespace A045441

/-- `∩[A045351(n+1), A045396(n+1)]` -/
def P941142100465771173.Spec : Prop :=
  ∀ n, (P941142100465771173.a n : ℤ) = A045441 (n + 1)

end A045441

/-! ## A045441.P7916109570345135076

`∩[A045439(n+1), A045396(n+1)]`
-/

namespace A045441.P7916109570345135076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045439 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045441.P7916109570345135076

namespace A045441

/-- `∩[A045439(n+1), A045396(n+1)]` -/
def P7916109570345135076.Spec : Prop :=
  ∀ n, (P7916109570345135076.a n : ℤ) = A045441 (n + 1)

end A045441

/-! ## A045441.P12429136750577454189

`∩[A042989(n+1), A045438(n+1)]`
-/

namespace A045441.P12429136750577454189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045441.P12429136750577454189

namespace A045441

/-- `∩[A042989(n+1), A045438(n+1)]` -/
def P12429136750577454189.Spec : Prop :=
  ∀ n, (P12429136750577454189.a n : ℤ) = A045441 (n + 1)

end A045441

/-! ## A045441.P12956791703261373039

`∩[A042989(n+1), A045439(n+1)]`
-/

namespace A045441.P12956791703261373039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045441.P12956791703261373039

namespace A045441

/-- `∩[A042989(n+1), A045439(n+1)]` -/
def P12956791703261373039.Spec : Prop :=
  ∀ n, (P12956791703261373039.a n : ℤ) = A045441 (n + 1)

end A045441

/-! ## A045441.P6568728729618610780

`∩[A042989(n+1), A045440(n+1)]`
-/

namespace A045441.P6568728729618610780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045441.P6568728729618610780

namespace A045441

/-- `∩[A042989(n+1), A045440(n+1)]` -/
def P6568728729618610780.Spec : Prop :=
  ∀ n, (P6568728729618610780.a n : ℤ) = A045441 (n + 1)

end A045441

/-!
# A045442: Primes congruent to {1, 5, 7} mod 8.

The programs for A045442, the canonical program `A045442.P4869329039055737044` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045442 has offset 1).

The definition of A045442 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A045442.anchor (n : ℕ) (hn : 1 ≤ n) : A045442 n = (Nat.nth (fun p => p.Prime ∧ p % 8 ∈ ({1, 5, 7} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A045.A045442`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A045442.P4869329039055737044

`p?[a(n-3)+8]` with `a(0)=1, a(1)=5, a(2)=7`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045442

/-- `p?[a(n-3)+8]` -/
def P4869329039055737044.Spec : Prop :=
  ∀ n, (P4869329039055737044.a n : ℤ) = A045442 (n + 1)

theorem P4869329039055737044.correct : P4869329039055737044.Spec := by
  intro n
  simp only [A045442, Nat.add_sub_cancel]

end A045442

/-! ## A045442.P2389697611564950239

`p?[ogf((1+4x+2x^2+x^3)/(1-x-x^3+x^4))]`
-/

namespace A045442.P2389697611564950239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 2, 1] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045442.P2389697611564950239

namespace A045442

/-- `p?[ogf((1+4x+2x^2+x^3)/(1-x-x^3+x^4))]` -/
def P2389697611564950239.Spec : Prop :=
  ∀ n, P2389697611564950239.a n = A045442 (n + 1)

end A045442

/-! ## A045442.P8692605957449553849

`A045352(n+2)`
-/

namespace A045442.P8692605957449553849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045352 (n + 2)

end

end A045442.P8692605957449553849

namespace A045442

/-- `A045352(n+2)` -/
def P8692605957449553849.Spec : Prop :=
  ∀ n, P8692605957449553849.a n = A045442 (n + 1)

end A045442

/-! ## A045442.P13680255205002085065

`record[A020639(2*n+5)/and(2, n^3)!]`
-/

namespace A045442.P13680255205002085065
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (2 * n + 5) : ℚ) / (Nat.factorial (Nat.land 2 (n ^ 3)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045442.P13680255205002085065

namespace A045442

/-- `record[A020639(2*n+5)/and(2, n^3)!]` -/
def P13680255205002085065.Spec : Prop :=
  ∀ n, P13680255205002085065.a n = (A045442 (n + 1) : ℚ)

end A045442

/-! ## A045442.P4462044123912861301

`record[A006530(2*n+5)*A166486(n+1)]`
-/

namespace A045442.P4462044123912861301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 5) * A166486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045442.P4462044123912861301

namespace A045442

/-- `record[A006530(2*n+5)*A166486(n+1)]` -/
def P4462044123912861301.Spec : Prop :=
  ∀ n, P4462044123912861301.a n = A045442 (n + 1)

end A045442

/-! ## A045442.P10749167737165234491

`record[A020639(A000027(or(2, n)+1+n)+2)]`
-/

namespace A045442.P10749167737165234491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000027 (Nat.lor 2 n + 1 + n) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045442.P10749167737165234491

namespace A045442

/-- `record[A020639(A000027(or(2, n)+1+n)+2)]` -/
def P10749167737165234491.Spec : Prop :=
  ∀ n, P10749167737165234491.a n = A045442 (n + 1)

end A045442

/-! ## A045442.P15726355762668393937

`p?[A343108(n+3)]`
-/

namespace A045442.P15726355762668393937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343108 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045442.P15726355762668393937

namespace A045442

/-- `p?[A343108(n+3)]` -/
def P15726355762668393937.Spec : Prop :=
  ∀ n, P15726355762668393937.a n = A045442 (n + 1)

end A045442

/-! ## A045442.P6762776087020201200

`p?[A047484(n+1)+2]`
-/

namespace A045442.P6762776087020201200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047484 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045442.P6762776087020201200

namespace A045442

/-- `p?[A047484(n+1)+2]` -/
def P6762776087020201200.Spec : Prop :=
  ∀ n, P6762776087020201200.a n = A045442 (n + 1)

end A045442

/-! ## A045442.P12104202227223320709

`p?[Δ[A397982(n)]]`
-/

namespace A045442.P12104202227223320709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397982 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045442.P12104202227223320709

namespace A045442

/-- `p?[Δ[A397982(n)]]` -/
def P12104202227223320709.Spec : Prop :=
  ∀ n, P12104202227223320709.a n = A045442 (n + 1)

end A045442

/-! ## A045442.P12496981350246597462

`p?[A047478(n+1)]`
-/

namespace A045442.P12496981350246597462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045442.P12496981350246597462

namespace A045442

/-- `p?[A047478(n+1)]` -/
def P12496981350246597462.Spec : Prop :=
  ∀ n, P12496981350246597462.a n = A045442 (n + 1)

end A045442

/-! ## A045442.P1453748762766109325

`p?[A047395(n+1)-1]`
-/

namespace A045442.P1453748762766109325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047395 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045442.P1453748762766109325

namespace A045442

/-- `p?[A047395(n+1)-1]` -/
def P1453748762766109325.Spec : Prop :=
  ∀ n, P1453748762766109325.a n = A045442 (n + 1)

end A045442

/-! ## A045442.P415431977903840606

`p?[A008854(n+2)+n]`
-/

namespace A045442.P415431977903840606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008854 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045442.P415431977903840606

namespace A045442

/-- `p?[A008854(n+2)+n]` -/
def P415431977903840606.Spec : Prop :=
  ∀ n, P415431977903840606.a n = A045442 (n + 1)

end A045442

/-! ## A045442.P3488832458679980937

`p?[2*A004772(n+1)+1]`
-/

namespace A045442.P3488832458679980937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004772 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045442.P3488832458679980937

namespace A045442

/-- `p?[2*A004772(n+1)+1]` -/
def P3488832458679980937.Spec : Prop :=
  ∀ n, P3488832458679980937.a n = A045442 (n + 1)

end A045442

/-! ## A045442.P17473627826923994026

`p?[2*A042965(n+1)-1]`
-/

namespace A045442.P17473627826923994026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A042965 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045442.P17473627826923994026

namespace A045442

/-- `p?[2*A042965(n+1)-1]` -/
def P17473627826923994026.Spec : Prop :=
  ∀ n, P17473627826923994026.a n = A045442 (n + 1)

end A045442

/-! ## A045442.P5469762708378429331

`p?[A047205(n+1)+1+n]`
-/

namespace A045442.P5469762708378429331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047205 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045442.P5469762708378429331

namespace A045442

/-- `p?[A047205(n+1)+1+n]` -/
def P5469762708378429331.Spec : Prop :=
  ∀ n, P5469762708378429331.a n = A045442 (n + 1)

end A045442

/-! ## A045442.P9072015204088085679

`record[A006530(A047478(n+2))]`
-/

namespace A045442.P9072015204088085679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A047478 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045442.P9072015204088085679

namespace A045442

/-- `record[A006530(A047478(n+2))]` -/
def P9072015204088085679.Spec : Prop :=
  ∀ n, P9072015204088085679.a n = A045442 (n + 1)

end A045442

/-! ## A045442.P5659532741402304790

`filter[A047478(n+1), A010051(#)]`
-/

namespace A045442.P5659532741402304790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A045442.P5659532741402304790

namespace A045442

/-- `filter[A047478(n+1), A010051(#)]` -/
def P5659532741402304790.Spec : Prop :=
  ∀ n, P5659532741402304790.a n = A045442 (n + 1)

end A045442

/-! ## A045442.P9196751797722203963

`filter[A047478(n+1), A323153(#)]`
-/

namespace A045442.P9196751797722203963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A045442.P9196751797722203963

namespace A045442

/-- `filter[A047478(n+1), A323153(#)]` -/
def P9196751797722203963.Spec : Prop :=
  ∀ n, P9196751797722203963.a n = A045442 (n + 1)

end A045442

/-! ## A045442.P17640885099016837322

`∩[A000040(n+1), A047478(n+1)]`
-/

namespace A045442.P17640885099016837322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045442.P17640885099016837322

namespace A045442

/-- `∩[A000040(n+1), A047478(n+1)]` -/
def P17640885099016837322.Spec : Prop :=
  ∀ n, (P17640885099016837322.a n : ℤ) = A045442 (n + 1)

end A045442

/-! ## A045442.P8854396791404562858

`∩[A001751(n+1), A047478(n+1)]`
-/

namespace A045442.P8854396791404562858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045442.P8854396791404562858

namespace A045442

/-- `∩[A001751(n+1), A047478(n+1)]` -/
def P8854396791404562858.Spec : Prop :=
  ∀ n, (P8854396791404562858.a n : ℤ) = A045442 (n + 1)

end A045442

/-!
# A045443: Primes congruent to {0, 1, 5, 6} mod 7.

The programs for A045443, the canonical program `A045443.P2542425746791850043` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045443 has offset 1).

The definition of A045443 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7967 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045443.P12407115468107353124

`∪[A022007(n+1), A045454(n+1)]`
-/

namespace A045443.P12407115468107353124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045443.P12407115468107353124

namespace A045443

/-- `∪[A022007(n+1), A045454(n+1)]` -/
def P12407115468107353124.Spec : Prop :=
  ∀ n, (P12407115468107353124.a n : ℤ) = A045443 (n + 1)

end A045443

/-! ## A045443.P2237223841832770361

`∪[A022008(n+1), A045454(n+1)]`
-/

namespace A045443.P2237223841832770361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045443.P2237223841832770361

namespace A045443

/-- `∪[A022008(n+1), A045454(n+1)]` -/
def P2237223841832770361.Spec : Prop :=
  ∀ n, (P2237223841832770361.a n : ℤ) = A045443 (n + 1)

end A045443

/-! ## A045443.P1170675611320138719

`∪[A023286(n+1), A045454(n+1)]`
-/

namespace A045443.P1170675611320138719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023286 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045443.P1170675611320138719

namespace A045443

/-- `∪[A023286(n+1), A045454(n+1)]` -/
def P1170675611320138719.Spec : Prop :=
  ∀ n, (P1170675611320138719.a n : ℤ) = A045443 (n + 1)

end A045443

/-! ## A045443.P16710686133922283976

`∪[A023316(n+1), A045454(n+1)]`
-/

namespace A045443.P16710686133922283976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045443.P16710686133922283976

namespace A045443

/-- `∪[A023316(n+1), A045454(n+1)]` -/
def P16710686133922283976.Spec : Prop :=
  ∀ n, (P16710686133922283976.a n : ℤ) = A045443 (n + 1)

end A045443

/-! ## A045443.P1251108059164428023

`∪[A023344(n+1), A045454(n+1)]`
-/

namespace A045443.P1251108059164428023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045443.P1251108059164428023

namespace A045443

/-- `∪[A023344(n+1), A045454(n+1)]` -/
def P1251108059164428023.Spec : Prop :=
  ∀ n, (P1251108059164428023.a n : ℤ) = A045443 (n + 1)

end A045443

/-! ## A045443.P14332499521211053828

`∪[A045444(n+1), A045446(n+1)]`
-/

namespace A045443.P14332499521211053828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045443.P14332499521211053828

namespace A045443

/-- `∪[A045444(n+1), A045446(n+1)]` -/
def P14332499521211053828.Spec : Prop :=
  ∀ n, (P14332499521211053828.a n : ℤ) = A045443 (n + 1)

end A045443

/-! ## A045443.P4444642009539296203

`∪[A045447(n+1), A045454(n+1)]`
-/

namespace A045443.P4444642009539296203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045443.P4444642009539296203

namespace A045443

/-- `∪[A045447(n+1), A045454(n+1)]` -/
def P4444642009539296203.Spec : Prop :=
  ∀ n, (P4444642009539296203.a n : ℤ) = A045443 (n + 1)

end A045443

/-! ## A045443.P16659213511064685561

`∪[A045455(n+1), A045446(n+1)]`
-/

namespace A045443.P16659213511064685561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045443.P16659213511064685561

namespace A045443

/-- `∪[A045455(n+1), A045446(n+1)]` -/
def P16659213511064685561.Spec : Prop :=
  ∀ n, (P16659213511064685561.a n : ℤ) = A045443 (n + 1)

end A045443

/-! ## A045443.P1948361414938492954

`∪[A045458(n+1), A045463(n+1)]`
-/

namespace A045443.P1948361414938492954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045463 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045443.P1948361414938492954

namespace A045443

/-- `∪[A045458(n+1), A045463(n+1)]` -/
def P1948361414938492954.Spec : Prop :=
  ∀ n, (P1948361414938492954.a n : ℤ) = A045443 (n + 1)

end A045443

/-! ## A045443.P3963385541378176395

`∪[A077721(n+1), A045454(n+1)]`
-/

namespace A045443.P3963385541378176395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045443.P3963385541378176395

namespace A045443

/-- `∪[A077721(n+1), A045454(n+1)]` -/
def P3963385541378176395.Spec : Prop :=
  ∀ n, (P3963385541378176395.a n : ℤ) = A045443 (n + 1)

end A045443

/-! ## A045443.P10648532462170437538

`∪[A201308(n+1), A045454(n+1)]`
-/

namespace A045443.P10648532462170437538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045443.P10648532462170437538

namespace A045443

/-- `∪[A201308(n+1), A045454(n+1)]` -/
def P10648532462170437538.Spec : Prop :=
  ∀ n, (P10648532462170437538.a n : ℤ) = A045443 (n + 1)

end A045443

/-! ## A045443.P2542425746791850043

`p?[3*round(n/4)+n]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045443

/-- `p?[3*round(n/4)+n]` -/
def P2542425746791850043.Spec : Prop :=
  ∀ n, P2542425746791850043.a n = A045443 (n + 1)

theorem P2542425746791850043.correct : P2542425746791850043.Spec := by
  intro n
  simp only [A045443, Nat.add_sub_cancel]

end A045443

/-! ## A045443.P2051854191657692654

`∩[A045353(n+1), A045438(n+1)]`
-/

namespace A045443.P2051854191657692654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045443.P2051854191657692654

namespace A045443

/-- `∩[A045353(n+1), A045438(n+1)]` -/
def P2051854191657692654.Spec : Prop :=
  ∀ n, (P2051854191657692654.a n : ℤ) = A045443 (n + 1)

end A045443

/-! ## A045443.P15063220369283908342

`∩[A045353(n+1), A045398(n+1)]`
-/

namespace A045443.P15063220369283908342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045443.P15063220369283908342

namespace A045443

/-- `∩[A045353(n+1), A045398(n+1)]` -/
def P15063220369283908342.Spec : Prop :=
  ∀ n, (P15063220369283908342.a n : ℤ) = A045443 (n + 1)

end A045443

/-! ## A045443.P2400763499924786349

`∩[A045398(n+1), A045438(n+1)]`
-/

namespace A045443.P2400763499924786349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045443.P2400763499924786349

namespace A045443

/-- `∩[A045398(n+1), A045438(n+1)]` -/
def P2400763499924786349.Spec : Prop :=
  ∀ n, (P2400763499924786349.a n : ℤ) = A045443 (n + 1)

end A045443

/-! ## A045443.P11389928810923709573

`∩[A045346(n+1), A045398(n+1)]`
-/

namespace A045443.P11389928810923709573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045443.P11389928810923709573

namespace A045443

/-- `∩[A045346(n+1), A045398(n+1)]` -/
def P11389928810923709573.Spec : Prop :=
  ∀ n, (P11389928810923709573.a n : ℤ) = A045443 (n + 1)

end A045443

/-! ## A045443.P5615633172798775610

`∩[A045438(n+1), A042990(n)]`
-/

namespace A045443.P5615633172798775610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045443.P5615633172798775610

namespace A045443

/-- `∩[A045438(n+1), A042990(n)]` -/
def P5615633172798775610.Spec : Prop :=
  ∀ n, (P5615633172798775610.a n : ℤ) = A045443 (n + 1)

end A045443

/-! ## A045443.P6044710873001622678

`∩[A045353(n+1), A045393(n+1)]`
-/

namespace A045443.P6044710873001622678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045443.P6044710873001622678

namespace A045443

/-- `∩[A045353(n+1), A045393(n+1)]` -/
def P6044710873001622678.Spec : Prop :=
  ∀ n, (P6044710873001622678.a n : ℤ) = A045443 (n + 1)

end A045443

/-! ## A045443.P4257014196697720788

`or(1, p?[A047322(n+1)])`
-/

namespace A045443.P4257014196697720788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A045443.P4257014196697720788

namespace A045443

/-- `or(1, p?[A047322(n+1)])` -/
def P4257014196697720788.Spec : Prop :=
  ∀ n, P4257014196697720788.a n = A045443 (n + 1)

end A045443

/-! ## A045443.P13461874678969134340

`record[A006530(A047322(n+3))]`
-/

namespace A045443.P13461874678969134340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A047322 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045443.P13461874678969134340

namespace A045443

/-- `record[A006530(A047322(n+3))]` -/
def P13461874678969134340.Spec : Prop :=
  ∀ n, P13461874678969134340.a n = A045443 (n + 1)

end A045443

/-!
# A045444: Primes congruent to {0, 5, 6} mod 7.

The programs for A045444, the canonical program `A045444.P2324794396399335647` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045444 has offset 1).

The definition of A045444 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6916 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045444.P8133206095709809505

`∪[A022007(n+1), A045455(n+1)]`
-/

namespace A045444.P8133206095709809505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045444.P8133206095709809505

namespace A045444

/-- `∪[A022007(n+1), A045455(n+1)]` -/
def P8133206095709809505.Spec : Prop :=
  ∀ n, (P8133206095709809505.a n : ℤ) = A045444 (n + 1)

end A045444

/-! ## A045444.P14349811085371724333

`∪[A022008(n+1), A045455(n+1)]`
-/

namespace A045444.P14349811085371724333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045444.P14349811085371724333

namespace A045444

/-- `∪[A022008(n+1), A045455(n+1)]` -/
def P14349811085371724333.Spec : Prop :=
  ∀ n, (P14349811085371724333.a n : ℤ) = A045444 (n + 1)

end A045444

/-! ## A045444.P1957521328366743503

`∪[A045447(n+1), A045455(n+1)]`
-/

namespace A045444.P1957521328366743503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045444.P1957521328366743503

namespace A045444

/-- `∪[A045447(n+1), A045455(n+1)]` -/
def P1957521328366743503.Spec : Prop :=
  ∀ n, (P1957521328366743503.a n : ℤ) = A045444 (n + 1)

end A045444

/-! ## A045444.P2324794396399335647

`p?[4*ceil(n/3)+n]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045444

/-- `p?[4*ceil(n/3)+n]` -/
def P2324794396399335647.Spec : Prop :=
  ∀ n, P2324794396399335647.a n = A045444 (n + 1)

theorem P2324794396399335647.correct : P2324794396399335647.Spec := by
  intro n
  simp only [A045444, Nat.add_sub_cancel]

end A045444

/-! ## A045444.P6523099755242224729

`∩[A045354(n+1), A045443(n+1)]`
-/

namespace A045444.P6523099755242224729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045444.P6523099755242224729

namespace A045444

/-- `∩[A045354(n+1), A045443(n+1)]` -/
def P6523099755242224729.Spec : Prop :=
  ∀ n, (P6523099755242224729.a n : ℤ) = A045444 (n + 1)

end A045444

/-! ## A045444.P7736519227093696219

`∩[A045354(n+1), A045399(n+1)]`
-/

namespace A045444.P7736519227093696219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045444.P7736519227093696219

namespace A045444

/-- `∩[A045354(n+1), A045399(n+1)]` -/
def P7736519227093696219.Spec : Prop :=
  ∀ n, (P7736519227093696219.a n : ℤ) = A045444 (n + 1)

end A045444

/-! ## A045444.P5823879267158513134

`∩[A045354(n+1), A045439(n+1)]`
-/

namespace A045444.P5823879267158513134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045444.P5823879267158513134

namespace A045444

/-- `∩[A045354(n+1), A045439(n+1)]` -/
def P5823879267158513134.Spec : Prop :=
  ∀ n, (P5823879267158513134.a n : ℤ) = A045444 (n + 1)

end A045444

/-! ## A045444.P10657521530811882438

`∩[A045354(n+1), A045438(n+1)]`
-/

namespace A045444.P10657521530811882438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045444.P10657521530811882438

namespace A045444

/-- `∩[A045354(n+1), A045438(n+1)]` -/
def P10657521530811882438.Spec : Prop :=
  ∀ n, (P10657521530811882438.a n : ℤ) = A045444 (n + 1)

end A045444

/-! ## A045444.P18031385173857114892

`∩[A045347(n+1), A045399(n+1)]`
-/

namespace A045444.P18031385173857114892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045444.P18031385173857114892

namespace A045444

/-- `∩[A045347(n+1), A045399(n+1)]` -/
def P18031385173857114892.Spec : Prop :=
  ∀ n, (P18031385173857114892.a n : ℤ) = A045444 (n + 1)

end A045444

/-! ## A045444.P8866330579937125844

`∩[A045353(n+1), A045399(n+1)]`
-/

namespace A045444.P8866330579937125844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045444.P8866330579937125844

namespace A045444

/-- `∩[A045353(n+1), A045399(n+1)]` -/
def P8866330579937125844.Spec : Prop :=
  ∀ n, (P8866330579937125844.a n : ℤ) = A045444 (n + 1)

end A045444

/-! ## A045444.P17768778746310748212

`∩[A045347(n+1), A045443(n+1)]`
-/

namespace A045444.P17768778746310748212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045444.P17768778746310748212

namespace A045444

/-- `∩[A045347(n+1), A045443(n+1)]` -/
def P17768778746310748212.Spec : Prop :=
  ∀ n, (P17768778746310748212.a n : ℤ) = A045444 (n + 1)

end A045444

/-! ## A045444.P11155974176038484682

`∩[A045353(n+1), A045439(n+1)]`
-/

namespace A045444.P11155974176038484682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045444.P11155974176038484682

namespace A045444

/-- `∩[A045353(n+1), A045439(n+1)]` -/
def P11155974176038484682.Spec : Prop :=
  ∀ n, (P11155974176038484682.a n : ℤ) = A045444 (n + 1)

end A045444

/-! ## A045444.P15349261765617546917

`∩[A045353(n+1), A045394(n+1)]`
-/

namespace A045444.P15349261765617546917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045444.P15349261765617546917

namespace A045444

/-- `∩[A045353(n+1), A045394(n+1)]` -/
def P15349261765617546917.Spec : Prop :=
  ∀ n, (P15349261765617546917.a n : ℤ) = A045444 (n + 1)

end A045444

/-! ## A045444.P469792131336851744

`∩[A045354(n+1), A045394(n+1)]`
-/

namespace A045444.P469792131336851744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045444.P469792131336851744

namespace A045444

/-- `∩[A045354(n+1), A045394(n+1)]` -/
def P469792131336851744.Spec : Prop :=
  ∀ n, (P469792131336851744.a n : ℤ) = A045444 (n + 1)

end A045444

/-! ## A045444.P10187484150499972525

`∩[A045394(n+1), A045443(n+1)]`
-/

namespace A045444.P10187484150499972525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045444.P10187484150499972525

namespace A045444

/-- `∩[A045394(n+1), A045443(n+1)]` -/
def P10187484150499972525.Spec : Prop :=
  ∀ n, (P10187484150499972525.a n : ℤ) = A045444 (n + 1)

end A045444

/-! ## A045444.P3502257637280861419

`∩[A045347(n+1), A045398(n+1)]`
-/

namespace A045444.P3502257637280861419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045444.P3502257637280861419

namespace A045444

/-- `∩[A045347(n+1), A045398(n+1)]` -/
def P3502257637280861419.Spec : Prop :=
  ∀ n, (P3502257637280861419.a n : ℤ) = A045444 (n + 1)

end A045444

/-! ## A045444.P4354772496325228603

`∩[A045354(n+1), A045398(n+1)]`
-/

namespace A045444.P4354772496325228603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045444.P4354772496325228603

namespace A045444

/-- `∩[A045354(n+1), A045398(n+1)]` -/
def P4354772496325228603.Spec : Prop :=
  ∀ n, (P4354772496325228603.a n : ℤ) = A045444 (n + 1)

end A045444

/-! ## A045444.P14243056877979492095

`∩[A045398(n+1), A045439(n+1)]`
-/

namespace A045444.P14243056877979492095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045444.P14243056877979492095

namespace A045444

/-- `∩[A045398(n+1), A045439(n+1)]` -/
def P14243056877979492095.Spec : Prop :=
  ∀ n, (P14243056877979492095.a n : ℤ) = A045444 (n + 1)

end A045444

/-! ## A045444.P9443666854222243018

`∩[A042992(n+1), A045438(n+1)]`
-/

namespace A045444.P9443666854222243018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045444.P9443666854222243018

namespace A045444

/-- `∩[A042992(n+1), A045438(n+1)]` -/
def P9443666854222243018.Spec : Prop :=
  ∀ n, (P9443666854222243018.a n : ℤ) = A045444 (n + 1)

end A045444

/-! ## A045444.P9397506177206269453

`∩[A042992(n+1), A045439(n+1)]`
-/

namespace A045444.P9397506177206269453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045444.P9397506177206269453

namespace A045444

/-- `∩[A042992(n+1), A045439(n+1)]` -/
def P9397506177206269453.Spec : Prop :=
  ∀ n, (P9397506177206269453.a n : ℤ) = A045444 (n + 1)

end A045444

/-!
# A045445: Number of nonisomorphic systems of catafusenes for the unsymmetrical schemes (group C_s) with two appendages (see references for precise definition).

The programs for A045445, the canonical program `A045445.P8537979393669909021` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045445 has offset 1).

The definition of A045445 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A045445.P8537979393669909021

`A002212(n+2)-3*A002212(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A045445

/-- `A002212(n+2)-3*A002212(n+1)` -/
def P8537979393669909021.Spec : Prop :=
  ∀ n, P8537979393669909021.a n = A045445 (n + 1)

theorem P8537979393669909021.correct : P8537979393669909021.Spec := by
  intro n
  simp only [A045445, Nat.add_sub_cancel]

end A045445

/-! ## A045445.P3252759578120376512

`2/(n+1)*∑{#}[n-1, C(n+1, #)*C(2*n-2*#+2, n-#-1)]`
-/

namespace A045445.P3252759578120376512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * ((∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose (n + 1) k * Nat.choose ((2 * n : ℤ) - (2 * k : ℤ) + 2).toNat ((n : ℤ) - (k : ℤ) - 1).toNat : ℕ) : ℚ)

end

end A045445.P3252759578120376512

namespace A045445

/-- `2/(n+1)*∑{#}[n-1, C(n+1, #)*C(2*n-2*#+2, n-#-1)]` -/
def P3252759578120376512.Spec : Prop :=
  ∀ n, P3252759578120376512.a n = (A045445 (n + 1) : ℚ)

end A045445

/-! ## A045445.P205030108616827518

`∑[A045890(n)-A045868(n)]`
-/

namespace A045445.P205030108616827518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045890 n - A045868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045445.P205030108616827518

namespace A045445

/-- `∑[A045890(n)-A045868(n)]` -/
def P205030108616827518.Spec : Prop :=
  ∀ n, P205030108616827518.a n = A045445 (n + 1)

end A045445

/-! ## A045445.P645924507394254111

`∑[A045890(n)]-Δ[A007317(n+1)]`
-/

namespace A045445.P645924507394254111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045890 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007317 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (f2 (n + 1) - f2 n)

end

end A045445.P645924507394254111

namespace A045445

/-- `∑[A045890(n)]-Δ[A007317(n+1)]` -/
def P645924507394254111.Spec : Prop :=
  ∀ n, P645924507394254111.a n = A045445 (n + 1)

end A045445

/-! ## A045445.P7622431722074500117

`Δ[A039919(n+1)]-∑[A045868(n)]`
-/

namespace A045445.P7622431722074500117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A045445.P7622431722074500117

namespace A045445

/-- `Δ[A039919(n+1)]-∑[A045868(n)]` -/
def P7622431722074500117.Spec : Prop :=
  ∀ n, P7622431722074500117.a n = A045445 (n + 1)

end A045445

/-! ## A045445.P640696705558288989

`Δ[A039919(n+1)]-A002212(n+1)`
-/

namespace A045445.P640696705558288989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002212 (n + 1)

end

end A045445.P640696705558288989

namespace A045445

/-- `Δ[A039919(n+1)]-A002212(n+1)` -/
def P640696705558288989.Spec : Prop :=
  ∀ n, P640696705558288989.a n = A045445 (n + 1)

end A045445

/-! ## A045445.P8659468985563968137

`Δ[A039919(n+1)-A007317(n+1)]`
-/

namespace A045445.P8659468985563968137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039919 (n + 1) - A007317 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A045445.P8659468985563968137

namespace A045445

/-- `Δ[A039919(n+1)-A007317(n+1)]` -/
def P8659468985563968137.Spec : Prop :=
  ∀ n, P8659468985563968137.a n = A045445 (n + 1)

end A045445

/-! ## A045445.P7583743842755220459

`Δ[A002212(n+1)]-A122737(n+2)`
-/

namespace A045445.P7583743842755220459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A122737 (n + 2)

end

end A045445.P7583743842755220459

namespace A045445

/-- `Δ[A002212(n+1)]-A122737(n+2)` -/
def P7583743842755220459.Spec : Prop :=
  ∀ n, P7583743842755220459.a n = A045445 (n + 1)

end A045445

/-! ## A045445.P6254172168001090984

`A045868(n+1)-2*A025238(n+2)`
-/

namespace A045445.P6254172168001090984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045868 (n + 1) - 2 * A025238 (n + 2)

end

end A045445.P6254172168001090984

namespace A045445

/-- `A045868(n+1)-2*A025238(n+2)` -/
def P6254172168001090984.Spec : Prop :=
  ∀ n, P6254172168001090984.a n = A045445 (n + 1)

end A045445

/-! ## A045445.P2600221062049039808

`Δ[A025238(n+2)]%A002215(2*n+3)`
-/

namespace A045445.P2600221062049039808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025238 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A002215 (2 * n + 3))

end

end A045445.P2600221062049039808

namespace A045445

/-- `Δ[A025238(n+2)]%A002215(2*n+3)` -/
def P2600221062049039808.Spec : Prop :=
  ∀ n, P2600221062049039808.a n = A045445 (n + 1)

end A045445

/-! ## A045445.P9436400631438798365

`A039660(2*(n+1))-A039660(2*n+1)`
-/

namespace A045445.P9436400631438798365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039660 (2 * (n + 1)) - A039660 (2 * n + 1)

end

end A045445.P9436400631438798365

namespace A045445

/-- `A039660(2*(n+1))-A039660(2*n+1)` -/
def P9436400631438798365.Spec : Prop :=
  ∀ n, P9436400631438798365.a n = A045445 (n + 1)

end A045445

/-! ## A045445.P1645813880237002170

`A045868(n+1)-(A002212(n+1)+A002212(n+1))`
-/

namespace A045445.P1645813880237002170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045868 (n + 1) - (A002212 (n + 1) + A002212 (n + 1))

end

end A045445.P1645813880237002170

namespace A045445

/-- `A045868(n+1)-(A002212(n+1)+A002212(n+1))` -/
def P1645813880237002170.Spec : Prop :=
  ∀ n, P1645813880237002170.a n = A045445 (n + 1)

theorem P1645813880237002170.correct : P1645813880237002170.Spec := by
  intro n
  simp only [A045445, Nat.add_sub_cancel, A045445.P1645813880237002170.a, A045445.P8537979393669909021.a, A002212, A002212.P1343919783186949336.a, A045868, A045868.P10026377013549762271.f1, A045868.P10026377013549762271.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A045445

/-! ## A045445.P17150988796492871360

`A039919(n+2)-(A039919(n+1)+A002212(n+1))`
-/

namespace A045445.P17150988796492871360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039919 (n + 2) - (A039919 (n + 1) + A002212 (n + 1))

end

end A045445.P17150988796492871360

namespace A045445

/-- `A039919(n+2)-(A039919(n+1)+A002212(n+1))` -/
def P17150988796492871360.Spec : Prop :=
  ∀ n, P17150988796492871360.a n = A045445 (n + 1)

end A045445

/-! ## A045445.P15743298280186600437

`A024311(n+2)+A046697(n+2)-A002212(n+1)`
-/

namespace A045445.P15743298280186600437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024311 (n + 2) + (A046697 (n + 2) - A002212 (n + 1))

end

end A045445.P15743298280186600437

namespace A045445

/-- `A024311(n+2)+A046697(n+2)-A002212(n+1)` -/
def P15743298280186600437.Spec : Prop :=
  ∀ n, P15743298280186600437.a n = A045445 (n + 1)

end A045445

/-! ## A045445.P13252059356151249722

`∑[∑[A045902(n)]-A045902(n)]`
-/

namespace A045445.P13252059356151249722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045902 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A045902 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045445.P13252059356151249722

namespace A045445

/-- `∑[∑[A045902(n)]-A045902(n)]` -/
def P13252059356151249722.Spec : Prop :=
  ∀ n, P13252059356151249722.a n = A045445 (n + 1)

end A045445

/-! ## A045445.P17101501442536217185

`Δ[Δ[A039658(2*n+1)]-A039658(2*(n+1))]`
-/

namespace A045445.P17101501442536217185
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039658 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A039658 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A045445.P17101501442536217185

namespace A045445

/-- `Δ[Δ[A039658(2*n+1)]-A039658(2*(n+1))]` -/
def P17101501442536217185.Spec : Prop :=
  ∀ n, P17101501442536217185.a n = A045445 (n + 1)

end A045445

/-! ## A045445.P8583247122522253432

`A057427(n)*A091965(A133263(n)-1)`
-/

namespace A045445.P8583247122522253432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A091965 (A133263 n - 1).toNat

end

end A045445.P8583247122522253432

namespace A045445

/-- `A057427(n)*A091965(A133263(n)-1)` -/
def P8583247122522253432.Spec : Prop :=
  ∀ n, P8583247122522253432.a n = A045445 (n + 1)

end A045445

/-! ## A045445.P2802474471367751621

`A057427(n)*A091965(A152950(n+1)-2)`
-/

namespace A045445.P2802474471367751621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A091965 (A152950 (n + 1) - 2).toNat

end

end A045445.P2802474471367751621

namespace A045445

/-- `A057427(n)*A091965(A152950(n+1)-2)` -/
def P2802474471367751621.Spec : Prop :=
  ∀ n, P2802474471367751621.a n = A045445 (n + 1)

end A045445

/-!
# A045446: Primes congruent to {0, 1, 5} mod 7.

The programs for A045446, the canonical program `A045446.P8652472118922088523` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045446 has offset 1).

The definition of A045446 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A045446.anchor (n : ℕ) (hn : 1 ≤ n) : A045446 n = (Nat.nth (fun p => p.Prime ∧ p % 7 ∈ ({0, 1, 5} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A045.A045446`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A045446.P3627098804378155769

`∪[A023316(n+1), A045456(n+1)]`
-/

namespace A045446.P3627098804378155769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045456 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045446.P3627098804378155769

namespace A045446

/-- `∪[A023316(n+1), A045456(n+1)]` -/
def P3627098804378155769.Spec : Prop :=
  ∀ n, (P3627098804378155769.a n : ℤ) = A045446 (n + 1)

end A045446

/-! ## A045446.P10124931375883976845

`∪[A045447(n+1), A045456(n+1)]`
-/

namespace A045446.P10124931375883976845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045456 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045446.P10124931375883976845

namespace A045446

/-- `∪[A045447(n+1), A045456(n+1)]` -/
def P10124931375883976845.Spec : Prop :=
  ∀ n, (P10124931375883976845.a n : ℤ) = A045446 (n + 1)

end A045446

/-! ## A045446.P9285518555216141887

`∪[A077721(n+1), A045456(n+1)]`
-/

namespace A045446.P9285518555216141887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045456 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045446.P9285518555216141887

namespace A045446

/-- `∪[A077721(n+1), A045456(n+1)]` -/
def P9285518555216141887.Spec : Prop :=
  ∀ n, (P9285518555216141887.a n : ℤ) = A045446 (n + 1)

end A045446

/-! ## A045446.P12191324216117317926

`∪[A182346(n+1), A045456(n+1)]`
-/

namespace A045446.P12191324216117317926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045456 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045446.P12191324216117317926

namespace A045446

/-- `∪[A182346(n+1), A045456(n+1)]` -/
def P12191324216117317926.Spec : Prop :=
  ∀ n, (P12191324216117317926.a n : ℤ) = A045446 (n + 1)

end A045446

/-! ## A045446.P8652472118922088523

`p?[a(n-3)+7]` with `a(0)=0, a(1)=1, a(2)=5`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045446

/-- `p?[a(n-3)+7]` -/
def P8652472118922088523.Spec : Prop :=
  ∀ n, (P8652472118922088523.a n : ℤ) = A045446 (n + 1)

theorem P8652472118922088523.correct : P8652472118922088523.Spec := by
  intro n
  simp only [A045446, Nat.add_sub_cancel]

end A045446

/-! ## A045446.P1083066527909564685

`p?[ogf((x+4x^2+2x^3)/(1-x-x^3+x^4))]`
-/

namespace A045446.P1083066527909564685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 4, 2] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045446.P1083066527909564685

namespace A045446

/-- `p?[ogf((x+4x^2+2x^3)/(1-x-x^3+x^4))]` -/
def P1083066527909564685.Spec : Prop :=
  ∀ n, P1083066527909564685.a n = A045446 (n + 1)

end A045446

/-! ## A045446.P12792454972440002455

`∩[A045358(n+1), A045443(n+1)]`
-/

namespace A045446.P12792454972440002455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045446.P12792454972440002455

namespace A045446

/-- `∩[A045358(n+1), A045443(n+1)]` -/
def P12792454972440002455.Spec : Prop :=
  ∀ n, (P12792454972440002455.a n : ℤ) = A045446 (n + 1)

end A045446

/-! ## A045446.P1471904801205790824

`∩[A045358(n+1), A045400(n+1)]`
-/

namespace A045446.P1471904801205790824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045446.P1471904801205790824

namespace A045446

/-- `∩[A045358(n+1), A045400(n+1)]` -/
def P1471904801205790824.Spec : Prop :=
  ∀ n, (P1471904801205790824.a n : ℤ) = A045446 (n + 1)

end A045446

/-! ## A045446.P9082393467861903085

`∩[A045358(n+1), A045440(n+1)]`
-/

namespace A045446.P9082393467861903085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045446.P9082393467861903085

namespace A045446

/-- `∩[A045358(n+1), A045440(n+1)]` -/
def P9082393467861903085.Spec : Prop :=
  ∀ n, (P9082393467861903085.a n : ℤ) = A045446 (n + 1)

end A045446

/-! ## A045446.P16222713158644037169

`∩[A045440(n+1), A045443(n+1)]`
-/

namespace A045446.P16222713158644037169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045440 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045446.P16222713158644037169

namespace A045446

/-- `∩[A045440(n+1), A045443(n+1)]` -/
def P16222713158644037169.Spec : Prop :=
  ∀ n, (P16222713158644037169.a n : ℤ) = A045446 (n + 1)

end A045446

/-! ## A045446.P17718731741738400947

`∩[A045350(n+1), A045400(n+1)]`
-/

namespace A045446.P17718731741738400947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045446.P17718731741738400947

namespace A045446

/-- `∩[A045350(n+1), A045400(n+1)]` -/
def P17718731741738400947.Spec : Prop :=
  ∀ n, (P17718731741738400947.a n : ℤ) = A045446 (n + 1)

end A045446

/-! ## A045446.P1134948889416005352

`∩[A045350(n+1), A045443(n+1)]`
-/

namespace A045446.P1134948889416005352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045446.P1134948889416005352

namespace A045446

/-- `∩[A045350(n+1), A045443(n+1)]` -/
def P1134948889416005352.Spec : Prop :=
  ∀ n, (P1134948889416005352.a n : ℤ) = A045446 (n + 1)

end A045446

/-! ## A045446.P1250173586447467380

`∩[A045358(n+1), A045438(n+1)]`
-/

namespace A045446.P1250173586447467380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045446.P1250173586447467380

namespace A045446

/-- `∩[A045358(n+1), A045438(n+1)]` -/
def P1250173586447467380.Spec : Prop :=
  ∀ n, (P1250173586447467380.a n : ℤ) = A045446 (n + 1)

end A045446

/-! ## A045446.P6219912670169242891

`∩[A045400(n+1), A045438(n+1)]`
-/

namespace A045446.P6219912670169242891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045446.P6219912670169242891

namespace A045446

/-- `∩[A045400(n+1), A045438(n+1)]` -/
def P6219912670169242891.Spec : Prop :=
  ∀ n, (P6219912670169242891.a n : ℤ) = A045446 (n + 1)

end A045446

/-! ## A045446.P6269348343400183773

`∩[A045353(n+1), A045400(n+1)]`
-/

namespace A045446.P6269348343400183773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045446.P6269348343400183773

namespace A045446

/-- `∩[A045353(n+1), A045400(n+1)]` -/
def P6269348343400183773.Spec : Prop :=
  ∀ n, (P6269348343400183773.a n : ℤ) = A045446 (n + 1)

end A045446

/-! ## A045446.P10324066908137927277

`∩[A045353(n+1), A045440(n+1)]`
-/

namespace A045446.P10324066908137927277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045446.P10324066908137927277

namespace A045446

/-- `∩[A045353(n+1), A045440(n+1)]` -/
def P10324066908137927277.Spec : Prop :=
  ∀ n, (P10324066908137927277.a n : ℤ) = A045446 (n + 1)

end A045446

/-! ## A045446.P17489977220617852388

`∩[A045353(n+1), A045396(n+1)]`
-/

namespace A045446.P17489977220617852388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045446.P17489977220617852388

namespace A045446

/-- `∩[A045353(n+1), A045396(n+1)]` -/
def P17489977220617852388.Spec : Prop :=
  ∀ n, (P17489977220617852388.a n : ℤ) = A045446 (n + 1)

end A045446

/-! ## A045446.P3027475469029218904

`∩[A045358(n+1), A045396(n+1)]`
-/

namespace A045446.P3027475469029218904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045446.P3027475469029218904

namespace A045446

/-- `∩[A045358(n+1), A045396(n+1)]` -/
def P3027475469029218904.Spec : Prop :=
  ∀ n, (P3027475469029218904.a n : ℤ) = A045446 (n + 1)

end A045446

/-! ## A045446.P17913992220869667454

`∩[A045396(n+1), A045443(n+1)]`
-/

namespace A045446.P17913992220869667454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045446.P17913992220869667454

namespace A045446

/-- `∩[A045396(n+1), A045443(n+1)]` -/
def P17913992220869667454.Spec : Prop :=
  ∀ n, (P17913992220869667454.a n : ℤ) = A045446 (n + 1)

end A045446

/-! ## A045446.P4515246931337193139

`∩[A042994(n+1), A045438(n+1)]`
-/

namespace A045446.P4515246931337193139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045446.P4515246931337193139

namespace A045446

/-- `∩[A042994(n+1), A045438(n+1)]` -/
def P4515246931337193139.Spec : Prop :=
  ∀ n, (P4515246931337193139.a n : ℤ) = A045446 (n + 1)

end A045446

/-!
# A045447: Primes congruent to {0, 5} mod 7.

The programs for A045447, the canonical program `A045447.P11335890847617652961` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045447 has offset 1).

The definition of A045447 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A045447.anchor (n : ℕ) (hn : 1 ≤ n) : A045447 n = (Nat.nth (fun p => p.Prime ∧ p % 7 ∈ ({0, 5} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A045.A045447`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A045447.P12891813805774348055

`p?[ogf((4x+x^2+2x^3+7x^4)/(1-x-x^3+x^4))]`
-/

namespace A045447.P12891813805774348055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 1, 2, 7] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045447.P12891813805774348055

namespace A045447

/-- `p?[ogf((4x+x^2+2x^3+7x^4)/(1-x-x^3+x^4))]` -/
def P12891813805774348055.Spec : Prop :=
  ∀ n, P12891813805774348055.a n = A045447 (n + 1)

end A045447

/-! ## A045447.P11335890847617652961

`p?[a(n-2)+7]` with `a(0)=0, a(1)=5`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045447

/-- `p?[a(n-2)+7]` -/
def P11335890847617652961.Spec : Prop :=
  ∀ n, (P11335890847617652961.a n : ℤ) = A045447 (n + 1)

theorem P11335890847617652961.correct : P11335890847617652961.Spec := by
  intro n
  simp only [A045447, Nat.add_sub_cancel]

end A045447

/-! ## A045447.P15288823691312169446

`p?[2*n+3*round(n/2)]`
-/

namespace A045447.P15288823691312169446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + 3 * SequenceMachineLib.roundAway ((n : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045447.P15288823691312169446

namespace A045447

/-- `p?[2*n+3*round(n/2)]` -/
def P15288823691312169446.Spec : Prop :=
  ∀ n, P15288823691312169446.a n = A045447 (n + 1)

end A045447

/-! ## A045447.P2902198064780260790

`∩[A042995(n+1), A045441(n+1)]`
-/

namespace A045447.P2902198064780260790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045447.P2902198064780260790

namespace A045447

/-- `∩[A042995(n+1), A045441(n+1)]` -/
def P2902198064780260790.Spec : Prop :=
  ∀ n, (P2902198064780260790.a n : ℤ) = A045447 (n + 1)

end A045447

/-! ## A045447.P3403844033919078534

`∩[A042995(n+1), A045443(n+1)]`
-/

namespace A045447.P3403844033919078534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045447.P3403844033919078534

namespace A045447

/-- `∩[A042995(n+1), A045443(n+1)]` -/
def P3403844033919078534.Spec : Prop :=
  ∀ n, (P3403844033919078534.a n : ℤ) = A045447 (n + 1)

end A045447

/-! ## A045447.P7964620081278798683

`∩[A042995(n+1), A045444(n+1)]`
-/

namespace A045447.P7964620081278798683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045447.P7964620081278798683

namespace A045447

/-- `∩[A042995(n+1), A045444(n+1)]` -/
def P7964620081278798683.Spec : Prop :=
  ∀ n, (P7964620081278798683.a n : ℤ) = A045447 (n + 1)

end A045447

/-! ## A045447.P256522375747647294

`∩[A042995(n+1), A045446(n+1)]`
-/

namespace A045447.P256522375747647294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045447.P256522375747647294

namespace A045447

/-- `∩[A042995(n+1), A045446(n+1)]` -/
def P256522375747647294.Spec : Prop :=
  ∀ n, (P256522375747647294.a n : ℤ) = A045447 (n + 1)

end A045447

/-! ## A045447.P15222809523750343854

`∩[A042995(n+1), A045440(n+1)]`
-/

namespace A045447.P15222809523750343854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045447.P15222809523750343854

namespace A045447

/-- `∩[A042995(n+1), A045440(n+1)]` -/
def P15222809523750343854.Spec : Prop :=
  ∀ n, (P15222809523750343854.a n : ℤ) = A045447 (n + 1)

end A045447

/-! ## A045447.P11767836521860016404

`∩[A045440(n+1), A045444(n+1)]`
-/

namespace A045447.P11767836521860016404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045440 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045447.P11767836521860016404

namespace A045447

/-- `∩[A045440(n+1), A045444(n+1)]` -/
def P11767836521860016404.Spec : Prop :=
  ∀ n, (P11767836521860016404.a n : ℤ) = A045447 (n + 1)

end A045447

/-! ## A045447.P4169318834222087840

`∩[A042995(n+1), A045439(n+1)]`
-/

namespace A045447.P4169318834222087840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045447.P4169318834222087840

namespace A045447

/-- `∩[A042995(n+1), A045439(n+1)]` -/
def P4169318834222087840.Spec : Prop :=
  ∀ n, (P4169318834222087840.a n : ℤ) = A045447 (n + 1)

end A045447

/-! ## A045447.P6828347334032796418

`∩[A045350(n+1), A045399(n+1)]`
-/

namespace A045447.P6828347334032796418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045447.P6828347334032796418

namespace A045447

/-- `∩[A045350(n+1), A045399(n+1)]` -/
def P6828347334032796418.Spec : Prop :=
  ∀ n, (P6828347334032796418.a n : ℤ) = A045447 (n + 1)

end A045447

/-! ## A045447.P3592827351170551975

`∩[A042995(n+1), A045438(n+1)]`
-/

namespace A045447.P3592827351170551975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045447.P3592827351170551975

namespace A045447

/-- `∩[A042995(n+1), A045438(n+1)]` -/
def P3592827351170551975.Spec : Prop :=
  ∀ n, (P3592827351170551975.a n : ℤ) = A045447 (n + 1)

end A045447

/-! ## A045447.P3180509218173466948

`∩[A045347(n+1), A045400(n+1)]`
-/

namespace A045447.P3180509218173466948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045447.P3180509218173466948

namespace A045447

/-- `∩[A045347(n+1), A045400(n+1)]` -/
def P3180509218173466948.Spec : Prop :=
  ∀ n, (P3180509218173466948.a n : ℤ) = A045447 (n + 1)

end A045447

/-! ## A045447.P17835770703823375562

`∩[A045353(n+1), A045397(n+1)]`
-/

namespace A045447.P17835770703823375562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045447.P17835770703823375562

namespace A045447

/-- `∩[A045353(n+1), A045397(n+1)]` -/
def P17835770703823375562.Spec : Prop :=
  ∀ n, (P17835770703823375562.a n : ℤ) = A045447 (n + 1)

end A045447

/-! ## A045447.P10494095230236999709

`∩[A045353(n+1), A045441(n+1)]`
-/

namespace A045447.P10494095230236999709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045447.P10494095230236999709

namespace A045447

/-- `∩[A045353(n+1), A045441(n+1)]` -/
def P10494095230236999709.Spec : Prop :=
  ∀ n, (P10494095230236999709.a n : ℤ) = A045447 (n + 1)

end A045447

/-! ## A045447.P4669552226951132582

`∩[A042989(n+1), A045443(n+1)]`
-/

namespace A045447.P4669552226951132582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045447.P4669552226951132582

namespace A045447

/-- `∩[A042989(n+1), A045443(n+1)]` -/
def P4669552226951132582.Spec : Prop :=
  ∀ n, (P4669552226951132582.a n : ℤ) = A045447 (n + 1)

end A045447

/-! ## A045447.P1546534848469962408

`∩[A042989(n+1), A045444(n+1)]`
-/

namespace A045447.P1546534848469962408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045447.P1546534848469962408

namespace A045447

/-- `∩[A042989(n+1), A045444(n+1)]` -/
def P1546534848469962408.Spec : Prop :=
  ∀ n, (P1546534848469962408.a n : ℤ) = A045447 (n + 1)

end A045447

/-! ## A045447.P5763683281503372317

`∩[A042989(n+1), A045446(n+1)]`
-/

namespace A045447.P5763683281503372317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045447.P5763683281503372317

namespace A045447

/-- `∩[A042989(n+1), A045446(n+1)]` -/
def P5763683281503372317.Spec : Prop :=
  ∀ n, (P5763683281503372317.a n : ℤ) = A045447 (n + 1)

end A045447

/-! ## A045447.P14756729103818724992

`∩[A045354(n+1), A045396(n+1)]`
-/

namespace A045447.P14756729103818724992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045447.P14756729103818724992

namespace A045447

/-- `∩[A045354(n+1), A045396(n+1)]` -/
def P14756729103818724992.Spec : Prop :=
  ∀ n, (P14756729103818724992.a n : ℤ) = A045447 (n + 1)

end A045447

/-! ## A045447.P5336394457319170081

`∩[A042994(n+1), A045439(n+1)]`
-/

namespace A045447.P5336394457319170081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045447.P5336394457319170081

namespace A045447

/-- `∩[A042994(n+1), A045439(n+1)]` -/
def P5336394457319170081.Spec : Prop :=
  ∀ n, (P5336394457319170081.a n : ℤ) = A045447 (n + 1)

end A045447

/-!
# A045448: Primes congruent to {1, 4, 5, 6} mod 7.

The programs for A045448, the canonical program `A045448.P14804397343011090116` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045448 has offset 1).

The definition of A045448 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A045448.anchor (n : ℕ) (hn : 1 ≤ n) : A045448 n = (Nat.nth (fun p => p.Prime ∧ p % 7 ∈ ({1, 4, 5, 6} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A045.A045448`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A045448.P14804397343011090116

`p?[a(n-4)+7]` with `a(0)=1, a(1)=4, a(2)=5, a(3)=6`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045448

/-- `p?[a(n-4)+7]` -/
def P14804397343011090116.Spec : Prop :=
  ∀ n, (P14804397343011090116.a n : ℤ) = A045448 (n + 1)

theorem P14804397343011090116.correct : P14804397343011090116.Spec := by
  intro n
  simp only [A045448, Nat.add_sub_cancel]

end A045448

/-! ## A045448.P6642046580436290858

`∪[A045454(n+1), A045449(n+1)]`
-/

namespace A045448.P6642046580436290858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045448.P6642046580436290858

namespace A045448

/-- `∪[A045454(n+1), A045449(n+1)]` -/
def P6642046580436290858.Spec : Prop :=
  ∀ n, (P6642046580436290858.a n : ℤ) = A045448 (n + 1)

end A045448

/-! ## A045448.P1879258242136384828

`∪[A045451(n+1), A045455(n+1)]`
-/

namespace A045448.P1879258242136384828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045448.P1879258242136384828

namespace A045448

/-- `∪[A045451(n+1), A045455(n+1)]` -/
def P1879258242136384828.Spec : Prop :=
  ∀ n, (P1879258242136384828.a n : ℤ) = A045448 (n + 1)

end A045448

/-! ## A045448.P13435930073827015762

`∪[A045458(n+1), A045466(n+1)]`
-/

namespace A045448.P13435930073827015762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045448.P13435930073827015762

namespace A045448

/-- `∪[A045458(n+1), A045466(n+1)]` -/
def P13435930073827015762.Spec : Prop :=
  ∀ n, (P13435930073827015762.a n : ℤ) = A045448 (n + 1)

end A045448

/-! ## A045448.P5446733445135203724

`A045438((n+1)%(2*n+1)+1)`
-/

namespace A045448.P5446733445135203724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045438 ((n + 1) % (2 * n + 1) + 1)

end

end A045448.P5446733445135203724

namespace A045448

/-- `A045438((n+1)%(2*n+1)+1)` -/
def P5446733445135203724.Spec : Prop :=
  ∀ n, P5446733445135203724.a n = A045448 (n + 1)

end A045448

/-! ## A045448.P4088139334780978059

`A045438(A065475(n+1))`
-/

namespace A045448.P4088139334780978059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045438 (A065475 (n + 1)).toNat

end

end A045448.P4088139334780978059

namespace A045448

/-- `A045438(A065475(n+1))` -/
def P4088139334780978059.Spec : Prop :=
  ∀ n, P4088139334780978059.a n = A045448 (n + 1)

end A045448

/-! ## A045448.P17994654256832546690

`A045438(A181440(n+2))`
-/

namespace A045448.P17994654256832546690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045438 (A181440 (n + 2)).toNat

end

end A045448.P17994654256832546690

namespace A045448

/-- `A045438(A181440(n+2))` -/
def P17994654256832546690.Spec : Prop :=
  ∀ n, P17994654256832546690.a n = A045448 (n + 1)

end A045448

/-! ## A045448.P11888635014056565370

`A045438(A184985(n+2))`
-/

namespace A045448.P11888635014056565370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045438 (A184985 (n + 2)).toNat

end

end A045448.P11888635014056565370

namespace A045448

/-- `A045438(A184985(n+2))` -/
def P11888635014056565370.Spec : Prop :=
  ∀ n, P11888635014056565370.a n = A045448 (n + 1)

end A045448

/-! ## A045448.P6229882843014538331

`A045438(A000040(n+1)%2+n+1)`
-/

namespace A045448.P6229882843014538331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045438 (Int.tmod (A000040 (n + 1)) 2 + (n : ℤ) + 1).toNat

end

end A045448.P6229882843014538331

namespace A045448

/-- `A045438(A000040(n+1)%2+n+1)` -/
def P6229882843014538331.Spec : Prop :=
  ∀ n, P6229882843014538331.a n = A045448 (n + 1)

end A045448

/-! ## A045448.P2358645511119318737

`∩[A045360(n+1), A045438(n+1)]`
-/

namespace A045448.P2358645511119318737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045448.P2358645511119318737

namespace A045448

/-- `∩[A045360(n+1), A045438(n+1)]` -/
def P2358645511119318737.Spec : Prop :=
  ∀ n, (P2358645511119318737.a n : ℤ) = A045448 (n + 1)

end A045448

/-! ## A045448.P15968185016513867453

`∩[A045346(n+1), A045402(n+1)]`
-/

namespace A045448.P15968185016513867453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045448.P15968185016513867453

namespace A045448

/-- `∩[A045346(n+1), A045402(n+1)]` -/
def P15968185016513867453.Spec : Prop :=
  ∀ n, (P15968185016513867453.a n : ℤ) = A045448 (n + 1)

end A045448

/-! ## A045448.P11720036687512659981

`∩[A045360(n+1), A045393(n+1)]`
-/

namespace A045448.P11720036687512659981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045448.P11720036687512659981

namespace A045448

/-- `∩[A045360(n+1), A045393(n+1)]` -/
def P11720036687512659981.Spec : Prop :=
  ∀ n, (P11720036687512659981.a n : ℤ) = A045448 (n + 1)

end A045448

/-! ## A045448.P1076913839178001695

`∩[A045360(n+1), A045402(n+1)]`
-/

namespace A045448.P1076913839178001695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045448.P1076913839178001695

namespace A045448

/-- `∩[A045360(n+1), A045402(n+1)]` -/
def P1076913839178001695.Spec : Prop :=
  ∀ n, (P1076913839178001695.a n : ℤ) = A045448 (n + 1)

end A045448

/-! ## A045448.P912832846302961109

`∩[A045402(n+1), A045438(n+1)]`
-/

namespace A045448.P912832846302961109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045448.P912832846302961109

namespace A045448

/-- `∩[A045402(n+1), A045438(n+1)]` -/
def P912832846302961109.Spec : Prop :=
  ∀ n, (P912832846302961109.a n : ℤ) = A045448 (n + 1)

end A045448

/-! ## A045448.P12079575677982075237

`p?[A266297(n+2)+n]`
-/

namespace A045448.P12079575677982075237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266297 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045448.P12079575677982075237

namespace A045448

/-- `p?[A266297(n+2)+n]` -/
def P12079575677982075237.Spec : Prop :=
  ∀ n, P12079575677982075237.a n = A045448 (n + 1)

end A045448

/-! ## A045448.P16782474759111801054

`p?[2*A047324(n+1)+1]`
-/

namespace A045448.P16782474759111801054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047324 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045448.P16782474759111801054

namespace A045448

/-- `p?[2*A047324(n+1)+1]` -/
def P16782474759111801054.Spec : Prop :=
  ∀ n, P16782474759111801054.a n = A045448 (n + 1)

end A045448

/-! ## A045448.P3998587620923273752

`p?[A016825(n)-A056991(n+2)]`
-/

namespace A045448.P3998587620923273752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n - A056991 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045448.P3998587620923273752

namespace A045448

/-- `p?[A016825(n)-A056991(n+2)]` -/
def P3998587620923273752.Spec : Prop :=
  ∀ n, P3998587620923273752.a n = A045448 (n + 1)

end A045448

/-! ## A045448.P4941334670299627601

`∩[A045438(n+1), A162699(n+1)]`
-/

namespace A045448.P4941334670299627601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045448.P4941334670299627601

namespace A045448

/-- `∩[A045438(n+1), A162699(n+1)]` -/
def P4941334670299627601.Spec : Prop :=
  ∀ n, (P4941334670299627601.a n : ℤ) = A045448 (n + 1)

end A045448

/-! ## A045448.P12571409538539826152

`p?[A047313(n+1)]`
-/

namespace A045448.P12571409538539826152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047313 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045448.P12571409538539826152

namespace A045448

/-- `p?[A047313(n+1)]` -/
def P12571409538539826152.Spec : Prop :=
  ∀ n, P12571409538539826152.a n = A045448 (n + 1)

end A045448

/-! ## A045448.P2749936258978482192

`p?[A047365(n+1)+1]`
-/

namespace A045448.P2749936258978482192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047365 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045448.P2749936258978482192

namespace A045448

/-- `p?[A047365(n+1)+1]` -/
def P2749936258978482192.Spec : Prop :=
  ∀ n, P2749936258978482192.a n = A045448 (n + 1)

end A045448

/-!
# A045449: Primes congruent to {4, 5, 6} mod 7.

The programs for A045449, the canonical program `A045449.P5265608845256245410` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045449 has offset 1).

The definition of A045449 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A045449.anchor (n : ℕ) (hn : 1 ≤ n) : A045449 n = (Nat.nth (fun p => p.Prime ∧ p % 7 ∈ ({4, 5, 6} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A045.A045449`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A045449.P5265608845256245410

`p?[a(n-3)+7]` with `a(0)=4, a(1)=5, a(2)=6`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045449

/-- `p?[a(n-3)+7]` -/
def P5265608845256245410.Spec : Prop :=
  ∀ n, (P5265608845256245410.a n : ℤ) = A045449 (n + 1)

theorem P5265608845256245410.correct : P5265608845256245410.Spec := by
  intro n
  simp only [A045449, Nat.add_sub_cancel]

end A045449

/-! ## A045449.P17989601079275353564

`p?[ogf((4+x+x^2+x^3)/(1-x-x^3+x^4))]`
-/

namespace A045449.P17989601079275353564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 1, 1, 1] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045449.P17989601079275353564

namespace A045449

/-- `p?[ogf((4+x+x^2+x^3)/(1-x-x^3+x^4))]` -/
def P17989601079275353564.Spec : Prop :=
  ∀ n, P17989601079275353564.a n = A045449 (n + 1)

end A045449

/-! ## A045449.P15478745051773020654

`∪[A045455(n+1), A045452(n+1)]`
-/

namespace A045449.P15478745051773020654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045452 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045449.P15478745051773020654

namespace A045449

/-- `∪[A045455(n+1), A045452(n+1)]` -/
def P15478745051773020654.Spec : Prop :=
  ∀ n, (P15478745051773020654.a n : ℤ) = A045449 (n + 1)

end A045449

/-! ## A045449.P7228266350764649825

`A045439(A065475(n+1))`
-/

namespace A045449.P7228266350764649825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045439 (A065475 (n + 1)).toNat

end

end A045449.P7228266350764649825

namespace A045449

/-- `A045439(A065475(n+1))` -/
def P7228266350764649825.Spec : Prop :=
  ∀ n, P7228266350764649825.a n = A045449 (n + 1)

end A045449

/-! ## A045449.P7778016284899475551

`A045439(A181440(n+2))`
-/

namespace A045449.P7778016284899475551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045439 (A181440 (n + 2)).toNat

end

end A045449.P7778016284899475551

namespace A045449

/-- `A045439(A181440(n+2))` -/
def P7778016284899475551.Spec : Prop :=
  ∀ n, P7778016284899475551.a n = A045449 (n + 1)

end A045449

/-! ## A045449.P15081668567980560480

`A045439(A184985(n+2))`
-/

namespace A045449.P15081668567980560480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045439 (A184985 (n + 2)).toNat

end

end A045449.P15081668567980560480

namespace A045449

/-- `A045439(A184985(n+2))` -/
def P15081668567980560480.Spec : Prop :=
  ∀ n, P15081668567980560480.a n = A045449 (n + 1)

end A045449

/-! ## A045449.P2859433248819667035

`A045439(A134869(n+1)-∑[n])`
-/

namespace A045449.P2859433248819667035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045439 (A134869 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A045449.P2859433248819667035

namespace A045449

/-- `A045439(A134869(n+1)-∑[n])` -/
def P2859433248819667035.Spec : Prop :=
  ∀ n, P2859433248819667035.a n = A045449 (n + 1)

end A045449

/-! ## A045449.P2933465709272574339

`∩[A045347(n+1), A045448(n+1)]`
-/

namespace A045449.P2933465709272574339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045449.P2933465709272574339

namespace A045449

/-- `∩[A045347(n+1), A045448(n+1)]` -/
def P2933465709272574339.Spec : Prop :=
  ∀ n, (P2933465709272574339.a n : ℤ) = A045449 (n + 1)

end A045449

/-! ## A045449.P7081061633026261

`∩[A045347(n+1), A045404(n+1)]`
-/

namespace A045449.P7081061633026261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045449.P7081061633026261

namespace A045449

/-- `∩[A045347(n+1), A045404(n+1)]` -/
def P7081061633026261.Spec : Prop :=
  ∀ n, (P7081061633026261.a n : ℤ) = A045449 (n + 1)

end A045449

/-! ## A045449.P4135861033479339912

`∩[A045361(n+1), A045394(n+1)]`
-/

namespace A045449.P4135861033479339912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045361 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045449.P4135861033479339912

namespace A045449

/-- `∩[A045361(n+1), A045394(n+1)]` -/
def P4135861033479339912.Spec : Prop :=
  ∀ n, (P4135861033479339912.a n : ℤ) = A045449 (n + 1)

end A045449

/-! ## A045449.P12798777351828116253

`∩[A045361(n+1), A045404(n+1)]`
-/

namespace A045449.P12798777351828116253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045361 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045449.P12798777351828116253

namespace A045449

/-- `∩[A045361(n+1), A045404(n+1)]` -/
def P12798777351828116253.Spec : Prop :=
  ∀ n, (P12798777351828116253.a n : ℤ) = A045449 (n + 1)

end A045449

/-! ## A045449.P16990670222005275476

`∩[A045346(n+1), A045404(n+1)]`
-/

namespace A045449.P16990670222005275476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045449.P16990670222005275476

namespace A045449

/-- `∩[A045346(n+1), A045404(n+1)]` -/
def P16990670222005275476.Spec : Prop :=
  ∀ n, (P16990670222005275476.a n : ℤ) = A045449 (n + 1)

end A045449

/-! ## A045449.P17930011578083672992

`∩[A045360(n+1), A045394(n+1)]`
-/

namespace A045449.P17930011578083672992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045449.P17930011578083672992

namespace A045449

/-- `∩[A045360(n+1), A045394(n+1)]` -/
def P17930011578083672992.Spec : Prop :=
  ∀ n, (P17930011578083672992.a n : ℤ) = A045449 (n + 1)

end A045449

/-! ## A045449.P17956295324364772557

`∩[A045360(n+1), A045404(n+1)]`
-/

namespace A045449.P17956295324364772557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045449.P17956295324364772557

namespace A045449

/-- `∩[A045360(n+1), A045404(n+1)]` -/
def P17956295324364772557.Spec : Prop :=
  ∀ n, (P17956295324364772557.a n : ℤ) = A045449 (n + 1)

end A045449

/-! ## A045449.P9803832002692142322

`∩[A042997(n+1), A045438(n+1)]`
-/

namespace A045449.P9803832002692142322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045449.P9803832002692142322

namespace A045449

/-- `∩[A042997(n+1), A045438(n+1)]` -/
def P9803832002692142322.Spec : Prop :=
  ∀ n, (P9803832002692142322.a n : ℤ) = A045449 (n + 1)

end A045449

/-! ## A045449.P10323313077091250357

`∩[A042997(n+1), A045439(n+1)]`
-/

namespace A045449.P10323313077091250357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045449.P10323313077091250357

namespace A045449

/-- `∩[A042997(n+1), A045439(n+1)]` -/
def P10323313077091250357.Spec : Prop :=
  ∀ n, (P10323313077091250357.a n : ℤ) = A045449 (n + 1)

end A045449

/-! ## A045449.P6229788482283542642

`∩[A042997(n+1), A045448(n+1)]`
-/

namespace A045449.P6229788482283542642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045449.P6229788482283542642

namespace A045449

/-- `∩[A042997(n+1), A045448(n+1)]` -/
def P6229788482283542642.Spec : Prop :=
  ∀ n, (P6229788482283542642.a n : ℤ) = A045449 (n + 1)

end A045449

/-! ## A045449.P18267479872440208826

`∩[A045347(n+1), A045402(n+1)]`
-/

namespace A045449.P18267479872440208826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045449.P18267479872440208826

namespace A045449

/-- `∩[A045347(n+1), A045402(n+1)]` -/
def P18267479872440208826.Spec : Prop :=
  ∀ n, (P18267479872440208826.a n : ℤ) = A045449 (n + 1)

end A045449

/-! ## A045449.P6050688362036063654

`∩[A045361(n+1), A045393(n+1)]`
-/

namespace A045449.P6050688362036063654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045361 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045449.P6050688362036063654

namespace A045449

/-- `∩[A045361(n+1), A045393(n+1)]` -/
def P6050688362036063654.Spec : Prop :=
  ∀ n, (P6050688362036063654.a n : ℤ) = A045449 (n + 1)

end A045449

/-! ## A045449.P4096132724335504371

`∩[A045361(n+1), A045402(n+1)]`
-/

namespace A045449.P4096132724335504371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045361 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045449.P4096132724335504371

namespace A045449

/-- `∩[A045361(n+1), A045402(n+1)]` -/
def P4096132724335504371.Spec : Prop :=
  ∀ n, (P4096132724335504371.a n : ℤ) = A045449 (n + 1)

end A045449

/-!
# A045450: Number of partitions of n into a prime number of distinct prime parts.

The programs for A045450, there is no canonical definition to state claims against.
-/

/-! ## A045450.P17851684758258240425

`A329320(and(A062421(n+1), A152116(n)))`
-/

namespace A045450.P17851684758258240425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329320 (Int.land (A062421 (n + 1)) (A152116 n)).toNat

end

end A045450.P17851684758258240425

/-! ## A045450.P8078351143272563041

`A257990(∑[2^(n+1)])-A215530(n)`
-/

namespace A045450.P8078351143272563041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (∑ j ∈ Finset.range (n + 1), f1 j) - A215530 n

end

end A045450.P8078351143272563041

/-! ## A045450.P7360475175945653001

`A235168(A052515(n)+A005043(n))`
-/

namespace A045450.P7360475175945653001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235168 (A052515 n + A005043 n).toNat

end

end A045450.P7360475175945653001

/-! ## A045450.P17735284278880877610

`A277937(A277928(n)+A222237(n))`
-/

namespace A045450.P17735284278880877610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277937 (A277928 n + A222237 n).toNat

end

end A045450.P17735284278880877610

/-! ## A045450.P6346890733254180209

`A379679(A169922(n+1)+A059841(n))`
-/

namespace A045450.P6346890733254180209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379679 (A169922 (n + 1) + A059841 n).toNat

end

end A045450.P6346890733254180209

/-!
# A045451: Primes congruent to {1, 4, 5} mod 7.

The programs for A045451, the canonical program `A045451.P14993889574314152020` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045451 has offset 1).

The definition of A045451 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A045451.anchor (n : ℕ) (hn : 1 ≤ n) : A045451 n = (Nat.nth (fun p => p.Prime ∧ p % 7 ∈ ({1, 4, 5} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A045.A045451`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A045451.P14993889574314152020

`p?[a(n-3)+7]` with `a(0)=1, a(1)=4, a(2)=5`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045451

/-- `p?[a(n-3)+7]` -/
def P14993889574314152020.Spec : Prop :=
  ∀ n, (P14993889574314152020.a n : ℤ) = A045451 (n + 1)

theorem P14993889574314152020.correct : P14993889574314152020.Spec := by
  intro n
  simp only [A045451, Nat.add_sub_cancel]

end A045451

/-! ## A045451.P14465195767421001852

`p?[ogf((1+3x+x^2+2x^3)/(1-x-x^3+x^4))]`
-/

namespace A045451.P14465195767421001852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 1, 2] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045451.P14465195767421001852

namespace A045451

/-- `p?[ogf((1+3x+x^2+2x^3)/(1-x-x^3+x^4))]` -/
def P14465195767421001852.Spec : Prop :=
  ∀ n, P14465195767421001852.a n = A045451 (n + 1)

end A045451

/-! ## A045451.P8144395364873435763

`A045440((n+1)%(2*n+1)+1)`
-/

namespace A045451.P8144395364873435763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045440 ((n + 1) % (2 * n + 1) + 1)

end

end A045451.P8144395364873435763

namespace A045451

/-- `A045440((n+1)%(2*n+1)+1)` -/
def P8144395364873435763.Spec : Prop :=
  ∀ n, P8144395364873435763.a n = A045451 (n + 1)

end A045451

/-! ## A045451.P4680998786810371007

`A045440(A065475(n+1))`
-/

namespace A045451.P4680998786810371007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045440 (A065475 (n + 1)).toNat

end

end A045451.P4680998786810371007

namespace A045451

/-- `A045440(A065475(n+1))` -/
def P4680998786810371007.Spec : Prop :=
  ∀ n, P4680998786810371007.a n = A045451 (n + 1)

end A045451

/-! ## A045451.P6408485181463031985

`A045440(A181440(n+2))`
-/

namespace A045451.P6408485181463031985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045440 (A181440 (n + 2)).toNat

end

end A045451.P6408485181463031985

namespace A045451

/-- `A045440(A181440(n+2))` -/
def P6408485181463031985.Spec : Prop :=
  ∀ n, P6408485181463031985.a n = A045451 (n + 1)

end A045451

/-! ## A045451.P1268514885784980839

`A045440(A184985(n+2))`
-/

namespace A045451.P1268514885784980839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045440 (A184985 (n + 2)).toNat

end

end A045451.P1268514885784980839

namespace A045451

/-- `A045440(A184985(n+2))` -/
def P1268514885784980839.Spec : Prop :=
  ∀ n, P1268514885784980839.a n = A045451 (n + 1)

end A045451

/-! ## A045451.P4850301663546603158

`∩[A045362(n+1), A045440(n+1)]`
-/

namespace A045451.P4850301663546603158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045362 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045451.P4850301663546603158

namespace A045451

/-- `∩[A045362(n+1), A045440(n+1)]` -/
def P4850301663546603158.Spec : Prop :=
  ∀ n, (P4850301663546603158.a n : ℤ) = A045451 (n + 1)

end A045451

/-! ## A045451.P225982592725894170

`∩[A045350(n+1), A045448(n+1)]`
-/

namespace A045451.P225982592725894170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045451.P225982592725894170

namespace A045451

/-- `∩[A045350(n+1), A045448(n+1)]` -/
def P225982592725894170.Spec : Prop :=
  ∀ n, (P225982592725894170.a n : ℤ) = A045451 (n + 1)

end A045451

/-! ## A045451.P13926791411299079708

`∩[A045362(n+1), A045448(n+1)]`
-/

namespace A045451.P13926791411299079708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045362 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045451.P13926791411299079708

namespace A045451

/-- `∩[A045362(n+1), A045448(n+1)]` -/
def P13926791411299079708.Spec : Prop :=
  ∀ n, (P13926791411299079708.a n : ℤ) = A045451 (n + 1)

end A045451

/-! ## A045451.P8890321902678869297

`∩[A045362(n+1), A045438(n+1)]`
-/

namespace A045451.P8890321902678869297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045362 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045451.P8890321902678869297

namespace A045451

/-- `∩[A045362(n+1), A045438(n+1)]` -/
def P8890321902678869297.Spec : Prop :=
  ∀ n, (P8890321902678869297.a n : ℤ) = A045451 (n + 1)

end A045451

/-! ## A045451.P1104542370049777081

`∩[A045350(n+1), A045408(n+1)]`
-/

namespace A045451.P1104542370049777081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045451.P1104542370049777081

namespace A045451

/-- `∩[A045350(n+1), A045408(n+1)]` -/
def P1104542370049777081.Spec : Prop :=
  ∀ n, (P1104542370049777081.a n : ℤ) = A045451 (n + 1)

end A045451

/-! ## A045451.P5098072461086842749

`∩[A045362(n+1), A045408(n+1)]`
-/

namespace A045451.P5098072461086842749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045362 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045451.P5098072461086842749

namespace A045451

/-- `∩[A045362(n+1), A045408(n+1)]` -/
def P5098072461086842749.Spec : Prop :=
  ∀ n, (P5098072461086842749.a n : ℤ) = A045451 (n + 1)

end A045451

/-! ## A045451.P17481532789344340459

`∩[A045408(n+1), A045438(n+1)]`
-/

namespace A045451.P17481532789344340459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045451.P17481532789344340459

namespace A045451

/-- `∩[A045408(n+1), A045438(n+1)]` -/
def P17481532789344340459.Spec : Prop :=
  ∀ n, (P17481532789344340459.a n : ℤ) = A045451 (n + 1)

end A045451

/-! ## A045451.P14856683804108587859

`∩[A045362(n+1), A045396(n+1)]`
-/

namespace A045451.P14856683804108587859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045362 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045451.P14856683804108587859

namespace A045451

/-- `∩[A045362(n+1), A045396(n+1)]` -/
def P14856683804108587859.Spec : Prop :=
  ∀ n, (P14856683804108587859.a n : ℤ) = A045451 (n + 1)

end A045451

/-! ## A045451.P9926333542938441979

`∩[A045346(n+1), A045408(n+1)]`
-/

namespace A045451.P9926333542938441979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045451.P9926333542938441979

namespace A045451

/-- `∩[A045346(n+1), A045408(n+1)]` -/
def P9926333542938441979.Spec : Prop :=
  ∀ n, (P9926333542938441979.a n : ℤ) = A045451 (n + 1)

end A045451

/-! ## A045451.P5122588736306391844

`∩[A045360(n+1), A045396(n+1)]`
-/

namespace A045451.P5122588736306391844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045451.P5122588736306391844

namespace A045451

/-- `∩[A045360(n+1), A045396(n+1)]` -/
def P5122588736306391844.Spec : Prop :=
  ∀ n, (P5122588736306391844.a n : ℤ) = A045451 (n + 1)

end A045451

/-! ## A045451.P411268368718114969

`∩[A045360(n+1), A045408(n+1)]`
-/

namespace A045451.P411268368718114969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045451.P411268368718114969

namespace A045451

/-- `∩[A045360(n+1), A045408(n+1)]` -/
def P411268368718114969.Spec : Prop :=
  ∀ n, (P411268368718114969.a n : ℤ) = A045451 (n + 1)

end A045451

/-! ## A045451.P6014947570278473057

`∩[A045360(n+1), A045440(n+1)]`
-/

namespace A045451.P6014947570278473057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045451.P6014947570278473057

namespace A045451

/-- `∩[A045360(n+1), A045440(n+1)]` -/
def P6014947570278473057.Spec : Prop :=
  ∀ n, (P6014947570278473057.a n : ℤ) = A045451 (n + 1)

end A045451

/-! ## A045451.P4642635138958850332

`∩[A044042(n+1), A045438(n+1)]`
-/

namespace A045451.P4642635138958850332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045451.P4642635138958850332

namespace A045451

/-- `∩[A044042(n+1), A045438(n+1)]` -/
def P4642635138958850332.Spec : Prop :=
  ∀ n, (P4642635138958850332.a n : ℤ) = A045451 (n + 1)

end A045451

/-! ## A045451.P14266013984665930792

`∩[A044042(n+1), A045440(n+1)]`
-/

namespace A045451.P14266013984665930792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045451.P14266013984665930792

namespace A045451

/-- `∩[A044042(n+1), A045440(n+1)]` -/
def P14266013984665930792.Spec : Prop :=
  ∀ n, (P14266013984665930792.a n : ℤ) = A045451 (n + 1)

end A045451

/-!
# A045452: Primes congruent to {4, 5} mod 7.

The programs for A045452, the canonical program `A045452.P11760057339836453400` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045452 has offset 1).

The definition of A045452 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045452.P2299867674970922011

`p?[ogf((4+x+x^2+x^3+7x^4)/(1-x-x^3+x^4))]`
-/

namespace A045452.P2299867674970922011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 1, 1, 1, 7] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045452.P2299867674970922011

namespace A045452

/-- `p?[ogf((4+x+x^2+x^3+7x^4)/(1-x-x^3+x^4))]` -/
def P2299867674970922011.Spec : Prop :=
  ∀ n, P2299867674970922011.a n = A045452 (n + 1)

end A045452

/-! ## A045452.P11760057339836453400

`A045441((n+1)%(2*n+1)+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A045452

/-- `A045441((n+1)%(2*n+1)+1)` -/
def P11760057339836453400.Spec : Prop :=
  ∀ n, P11760057339836453400.a n = A045452 (n + 1)

theorem P11760057339836453400.correct : P11760057339836453400.Spec := by
  intro n
  simp only [A045452, Nat.add_sub_cancel]

end A045452

/-! ## A045452.P4215196267679755335

`A045441(A065475(n+1))`
-/

namespace A045452.P4215196267679755335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045441 (A065475 (n + 1)).toNat

end

end A045452.P4215196267679755335

namespace A045452

/-- `A045441(A065475(n+1))` -/
def P4215196267679755335.Spec : Prop :=
  ∀ n, P4215196267679755335.a n = A045452 (n + 1)

end A045452

/-! ## A045452.P5402074157124603953

`A045441(A181440(n+2))`
-/

namespace A045452.P5402074157124603953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045441 (A181440 (n + 2)).toNat

end

end A045452.P5402074157124603953

namespace A045452

/-- `A045441(A181440(n+2))` -/
def P5402074157124603953.Spec : Prop :=
  ∀ n, P5402074157124603953.a n = A045452 (n + 1)

end A045452

/-! ## A045452.P9859346084513279551

`A045441(A184985(n+2))`
-/

namespace A045452.P9859346084513279551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045441 (A184985 (n + 2)).toNat

end

end A045452.P9859346084513279551

namespace A045452

/-- `A045441(A184985(n+2))` -/
def P9859346084513279551.Spec : Prop :=
  ∀ n, P9859346084513279551.a n = A045452 (n + 1)

end A045452

/-! ## A045452.P4371443914021237157

`p?[a(n-2)+7]` with `a(0)=4, a(1)=5`
-/

namespace A045452.P4371443914021237157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 5] fun n f1 =>
  f1 (n - 2) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045452.P4371443914021237157

namespace A045452

/-- `p?[a(n-2)+7]` -/
def P4371443914021237157.Spec : Prop :=
  ∀ n, (P4371443914021237157.a n : ℤ) = A045452 (n + 1)

end A045452

/-! ## A045452.P17189854011635797344

`∩[A045449(n+1), A045363(n+1)]`
-/

namespace A045452.P17189854011635797344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045452.P17189854011635797344

namespace A045452

/-- `∩[A045449(n+1), A045363(n+1)]` -/
def P17189854011635797344.Spec : Prop :=
  ∀ n, (P17189854011635797344.a n : ℤ) = A045452 (n + 1)

end A045452

/-! ## A045452.P7275409828621519107

`∩[A045449(n+1), A045441(n+1)]`
-/

namespace A045452.P7275409828621519107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045452.P7275409828621519107

namespace A045452

/-- `∩[A045449(n+1), A045441(n+1)]` -/
def P7275409828621519107.Spec : Prop :=
  ∀ n, (P7275409828621519107.a n : ℤ) = A045452 (n + 1)

end A045452

/-! ## A045452.P6439952897783704423

`∩[A045439(n+1), A045362(n+1)]`
-/

namespace A045452.P6439952897783704423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045439 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045362 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045452.P6439952897783704423

namespace A045452

/-- `∩[A045439(n+1), A045362(n+1)]` -/
def P6439952897783704423.Spec : Prop :=
  ∀ n, (P6439952897783704423.a n : ℤ) = A045452 (n + 1)

end A045452

/-! ## A045452.P15027108712852092191

`∩[A045347(n+1), A045408(n+1)]`
-/

namespace A045452.P15027108712852092191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045452.P15027108712852092191

namespace A045452

/-- `∩[A045347(n+1), A045408(n+1)]` -/
def P15027108712852092191.Spec : Prop :=
  ∀ n, (P15027108712852092191.a n : ℤ) = A045452 (n + 1)

end A045452

/-! ## A045452.P3442956950235582030

`∩[A045347(n+1), A045409(n+1)]`
-/

namespace A045452.P3442956950235582030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045452.P3442956950235582030

namespace A045452

/-- `∩[A045347(n+1), A045409(n+1)]` -/
def P3442956950235582030.Spec : Prop :=
  ∀ n, (P3442956950235582030.a n : ℤ) = A045452 (n + 1)

end A045452

/-! ## A045452.P4078489742412291325

`∩[A045396(n+1), A045361(n+1)]`
-/

namespace A045452.P4078489742412291325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045452.P4078489742412291325

namespace A045452

/-- `∩[A045396(n+1), A045361(n+1)]` -/
def P4078489742412291325.Spec : Prop :=
  ∀ n, (P4078489742412291325.a n : ℤ) = A045452 (n + 1)

end A045452

/-! ## A045452.P9695686214331203781

`∩[A042989(n+1), A045448(n+1)]`
-/

namespace A045452.P9695686214331203781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045452.P9695686214331203781

namespace A045452

/-- `∩[A042989(n+1), A045448(n+1)]` -/
def P9695686214331203781.Spec : Prop :=
  ∀ n, (P9695686214331203781.a n : ℤ) = A045452 (n + 1)

end A045452

/-! ## A045452.P6167915628213153017

`∩[A042989(n+1), A045449(n+1)]`
-/

namespace A045452.P6167915628213153017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045452.P6167915628213153017

namespace A045452

/-- `∩[A042989(n+1), A045449(n+1)]` -/
def P6167915628213153017.Spec : Prop :=
  ∀ n, (P6167915628213153017.a n : ℤ) = A045452 (n + 1)

end A045452

/-! ## A045452.P3915910578714837909

`∩[A042989(n+1), A045451(n+1)]`
-/

namespace A045452.P3915910578714837909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045452.P3915910578714837909

namespace A045452

/-- `∩[A042989(n+1), A045451(n+1)]` -/
def P3915910578714837909.Spec : Prop :=
  ∀ n, (P3915910578714837909.a n : ℤ) = A045452 (n + 1)

end A045452

/-! ## A045452.P2047827767412701910

`∩[A045308(n+1), A045438(n+1)]`
-/

namespace A045452.P2047827767412701910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045452.P2047827767412701910

namespace A045452

/-- `∩[A045308(n+1), A045438(n+1)]` -/
def P2047827767412701910.Spec : Prop :=
  ∀ n, (P2047827767412701910.a n : ℤ) = A045452 (n + 1)

end A045452

/-! ## A045452.P15091687210091207118

`∩[A045308(n+1), A045439(n+1)]`
-/

namespace A045452.P15091687210091207118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045452.P15091687210091207118

namespace A045452

/-- `∩[A045308(n+1), A045439(n+1)]` -/
def P15091687210091207118.Spec : Prop :=
  ∀ n, (P15091687210091207118.a n : ℤ) = A045452 (n + 1)

end A045452

/-! ## A045452.P8202270831619798426

`∩[A045308(n+1), A045440(n+1)]`
-/

namespace A045452.P8202270831619798426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045452.P8202270831619798426

namespace A045452

/-- `∩[A045308(n+1), A045440(n+1)]` -/
def P8202270831619798426.Spec : Prop :=
  ∀ n, (P8202270831619798426.a n : ℤ) = A045452 (n + 1)

end A045452

/-! ## A045452.P13694356934615217742

`∩[A045308(n+1), A045441(n+1)]`
-/

namespace A045452.P13694356934615217742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045452.P13694356934615217742

namespace A045452

/-- `∩[A045308(n+1), A045441(n+1)]` -/
def P13694356934615217742.Spec : Prop :=
  ∀ n, (P13694356934615217742.a n : ℤ) = A045452 (n + 1)

end A045452

/-! ## A045452.P6227251970319312595

`∩[A045308(n+1), A045448(n+1)]`
-/

namespace A045452.P6227251970319312595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045452.P6227251970319312595

namespace A045452

/-- `∩[A045308(n+1), A045448(n+1)]` -/
def P6227251970319312595.Spec : Prop :=
  ∀ n, (P6227251970319312595.a n : ℤ) = A045452 (n + 1)

end A045452

/-!
# A045453: Primes congruent to {0, 1} mod 5.

The programs for A045453, the canonical program `A045453.P8226086508845477348` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045453 has offset 1).

The definition of A045453 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045453.P8226086508845477348

`p?[or(1, 5*n)]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045453

/-- `p?[or(1, 5*n)]` -/
def P8226086508845477348.Spec : Prop :=
  ∀ n, (P8226086508845477348.a n : ℤ) = A045453 (n + 1)

theorem P8226086508845477348.correct : P8226086508845477348.Spec := by
  intro n
  simp only [A045453, Nat.add_sub_cancel]

end A045453

/-! ## A045453.P12764589837668271139

`p?[a(n-1)+5]` with `a(0)=5, a(1)=1`
-/

namespace A045453.P12764589837668271139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 1] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045453.P12764589837668271139

namespace A045453

/-- `p?[a(n-1)+5]` -/
def P12764589837668271139.Spec : Prop :=
  ∀ n, (P12764589837668271139.a n : ℤ) = A045453 (n + 1)

end A045453

/-! ## A045453.P1050144538582575946

`p?[ogf((5+x+4x^2)/(1-2x+x^2))]`
-/

namespace A045453.P1050144538582575946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 1, 4] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045453.P1050144538582575946

namespace A045453

/-- `p?[ogf((5+x+4x^2)/(1-2x+x^2))]` -/
def P1050144538582575946.Spec : Prop :=
  ∀ n, P1050144538582575946.a n = A045453 (n + 1)

end A045453

/-! ## A045453.P7489394296827054150

`∪[A030430(n+1), A002649(n+1)]`
-/

namespace A045453.P7489394296827054150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045453.P7489394296827054150

namespace A045453

/-- `∪[A030430(n+1), A002649(n+1)]` -/
def P7489394296827054150.Spec : Prop :=
  ∀ n, (P7489394296827054150.a n : ℤ) = A045453 (n + 1)

end A045453

/-! ## A045453.P1397237057440832978

`∪[A156027(n+1), A030430(n+1)]`
-/

namespace A045453.P1397237057440832978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045453.P1397237057440832978

namespace A045453

/-- `∪[A156027(n+1), A030430(n+1)]` -/
def P1397237057440832978.Spec : Prop :=
  ∀ n, (P1397237057440832978.a n : ℤ) = A045453 (n + 1)

end A045453

/-! ## A045453.P15847185912830390851

`A030430(A028310(n))%A001748(2*n+1)`
-/

namespace A045453.P15847185912830390851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030430 (A028310 n).toNat) (A001748 (2 * n + 1))

end

end A045453.P15847185912830390851

namespace A045453

/-- `A030430(A028310(n))%A001748(2*n+1)` -/
def P15847185912830390851.Spec : Prop :=
  ∀ n, P15847185912830390851.a n = A045453 (n + 1)

end A045453

/-! ## A045453.P8074958199141852548

`∩[A038872(n+1), A045407(n+1)]`
-/

namespace A045453.P8074958199141852548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045453.P8074958199141852548

namespace A045453

/-- `∩[A038872(n+1), A045407(n+1)]` -/
def P8074958199141852548.Spec : Prop :=
  ∀ n, (P8074958199141852548.a n : ℤ) = A045453 (n + 1)

end A045453

/-! ## A045453.P314875430979887970

`∩[A038872(n+1), A045349(n+1)]`
-/

namespace A045453.P314875430979887970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045453.P314875430979887970

namespace A045453

/-- `∩[A038872(n+1), A045349(n+1)]` -/
def P314875430979887970.Spec : Prop :=
  ∀ n, (P314875430979887970.a n : ℤ) = A045453 (n + 1)

end A045453

/-! ## A045453.P13569392432310743070

`p?[(2*n+1)%5+2*n]`
-/

namespace A045453.P13569392432310743070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) % 5 + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045453.P13569392432310743070

namespace A045453

/-- `p?[(2*n+1)%5+2*n]` -/
def P13569392432310743070.Spec : Prop :=
  ∀ n, (P13569392432310743070.a n : ℤ) = A045453 (n + 1)

end A045453

/-! ## A045453.P437924860007991616

`∩[A045349(n+1), A045405(n+1)]`
-/

namespace A045453.P437924860007991616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045453.P437924860007991616

namespace A045453

/-- `∩[A045349(n+1), A045405(n+1)]` -/
def P437924860007991616.Spec : Prop :=
  ∀ n, (P437924860007991616.a n : ℤ) = A045453 (n + 1)

end A045453

/-! ## A045453.P2106726658017324121

`∩[A045348(n+1), A045407(n+1)]`
-/

namespace A045453.P2106726658017324121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045453.P2106726658017324121

namespace A045453

/-- `∩[A045348(n+1), A045407(n+1)]` -/
def P2106726658017324121.Spec : Prop :=
  ∀ n, (P2106726658017324121.a n : ℤ) = A045453 (n + 1)

end A045453

/-! ## A045453.P10125042137378411048

`∩[A038872(n+1), A042986(n+1)]`
-/

namespace A045453.P10125042137378411048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045453.P10125042137378411048

namespace A045453

/-- `∩[A038872(n+1), A042986(n+1)]` -/
def P10125042137378411048.Spec : Prop :=
  ∀ n, (P10125042137378411048.a n : ℤ) = A045453 (n + 1)

end A045453

/-! ## A045453.P7262898072232479380

`record[A006530(A277588(n+2))]`
-/

namespace A045453.P7262898072232479380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A277588 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045453.P7262898072232479380

namespace A045453

/-- `record[A006530(A277588(n+2))]` -/
def P7262898072232479380.Spec : Prop :=
  ∀ n, P7262898072232479380.a n = A045453 (n + 1)

end A045453

/-! ## A045453.P11257830222626648936

`p?[A298360(n+1)-2]`
-/

namespace A045453.P11257830222626648936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298360 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045453.P11257830222626648936

namespace A045453

/-- `p?[A298360(n+1)-2]` -/
def P11257830222626648936.Spec : Prop :=
  ∀ n, P11257830222626648936.a n = A045453 (n + 1)

end A045453

/-! ## A045453.P15548824361947698036

`∩[A001751(n+1), A298360(n+1)-2]`
-/

namespace A045453.P15548824361947698036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298360 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045453.P15548824361947698036

namespace A045453

/-- `∩[A001751(n+1), A298360(n+1)-2]` -/
def P15548824361947698036.Spec : Prop :=
  ∀ n, (P15548824361947698036.a n : ℤ) = A045453 (n + 1)

end A045453

/-! ## A045453.P11608935909181574709

`∩[A058363(n+1), A298360(n+1)-2]`
-/

namespace A045453.P11608935909181574709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298360 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045453.P11608935909181574709

namespace A045453

/-- `∩[A058363(n+1), A298360(n+1)-2]` -/
def P11608935909181574709.Spec : Prop :=
  ∀ n, (P11608935909181574709.a n : ℤ) = A045453 (n + 1)

end A045453

/-! ## A045453.P8569755131717206319

`∩[A031363(n+1), A042986(n+1)]`
-/

namespace A045453.P8569755131717206319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045453.P8569755131717206319

namespace A045453

/-- `∩[A031363(n+1), A042986(n+1)]` -/
def P8569755131717206319.Spec : Prop :=
  ∀ n, (P8569755131717206319.a n : ℤ) = A045453 (n + 1)

end A045453

/-! ## A045453.P13052979905686902412

`∩[A031363(n+1), A045349(n+1)]`
-/

namespace A045453.P13052979905686902412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045453.P13052979905686902412

namespace A045453

/-- `∩[A031363(n+1), A045349(n+1)]` -/
def P13052979905686902412.Spec : Prop :=
  ∀ n, (P13052979905686902412.a n : ℤ) = A045453 (n + 1)

end A045453

/-! ## A045453.P10820071058080224844

`∩[A031363(n+1), A045407(n+1)]`
-/

namespace A045453.P10820071058080224844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045453.P10820071058080224844

namespace A045453

/-- `∩[A031363(n+1), A045407(n+1)]` -/
def P10820071058080224844.Spec : Prop :=
  ∀ n, (P10820071058080224844.a n : ℤ) = A045453 (n + 1)

end A045453

/-! ## A045453.P14878505613144600633

`∩[A045407(n+1), A057762(n+1)]`
-/

namespace A045453.P14878505613144600633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045453.P14878505613144600633

namespace A045453

/-- `∩[A045407(n+1), A057762(n+1)]` -/
def P14878505613144600633.Spec : Prop :=
  ∀ n, (P14878505613144600633.a n : ℤ) = A045453 (n + 1)

end A045453

/-!
# A045454: Primes congruent to {1, 5, 6} mod 7.

The programs for A045454, the canonical program `A045454.P6464486469092698215` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045454 has offset 1).

The definition of A045454 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A045454.anchor (n : ℕ) (hn : 1 ≤ n) : A045454 n = (Nat.nth (fun p => p.Prime ∧ p % 7 ∈ ({1, 5, 6} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A045.A045454`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A045454.P6464486469092698215

`p?[a(n-3)+7]` with `a(0)=1, a(1)=5, a(2)=6`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045454

/-- `p?[a(n-3)+7]` -/
def P6464486469092698215.Spec : Prop :=
  ∀ n, (P6464486469092698215.a n : ℤ) = A045454 (n + 1)

theorem P6464486469092698215.correct : P6464486469092698215.Spec := by
  intro n
  simp only [A045454, Nat.add_sub_cancel]

end A045454

/-! ## A045454.P11446785148786676376

`p?[7*n-a(n-2)]` with `a(0)=1, a(1)=5`
-/

namespace A045454.P11446785148786676376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  (7 * n : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045454.P11446785148786676376

namespace A045454

/-- `p?[7*n-a(n-2)]` -/
def P11446785148786676376.Spec : Prop :=
  ∀ n, P11446785148786676376.a n = A045454 (n + 1)

end A045454

/-! ## A045454.P5193802242499034740

`p?[ogf((1+4x+x^2+x^3)/(1-x-x^3+x^4))]`
-/

namespace A045454.P5193802242499034740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 1, 1] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045454.P5193802242499034740

namespace A045454

/-- `p?[ogf((1+4x+x^2+x^3)/(1-x-x^3+x^4))]` -/
def P5193802242499034740.Spec : Prop :=
  ∀ n, P5193802242499034740.a n = A045454 (n + 1)

end A045454

/-! ## A045454.P3905957931468966459

`A045443((n+1)%(2*n+1)+1)`
-/

namespace A045454.P3905957931468966459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045443 ((n + 1) % (2 * n + 1) + 1)

end

end A045454.P3905957931468966459

namespace A045454

/-- `A045443((n+1)%(2*n+1)+1)` -/
def P3905957931468966459.Spec : Prop :=
  ∀ n, P3905957931468966459.a n = A045454 (n + 1)

end A045454

/-! ## A045454.P11765515625117483923

`A045443(A065475(n+1))`
-/

namespace A045454.P11765515625117483923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045443 (A065475 (n + 1)).toNat

end

end A045454.P11765515625117483923

namespace A045454

/-- `A045443(A065475(n+1))` -/
def P11765515625117483923.Spec : Prop :=
  ∀ n, P11765515625117483923.a n = A045454 (n + 1)

end A045454

/-! ## A045454.P5211111903969547503

`A045443(A181440(n+2))`
-/

namespace A045454.P5211111903969547503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045443 (A181440 (n + 2)).toNat

end

end A045454.P5211111903969547503

namespace A045454

/-- `A045443(A181440(n+2))` -/
def P5211111903969547503.Spec : Prop :=
  ∀ n, P5211111903969547503.a n = A045454 (n + 1)

end A045454

/-! ## A045454.P1268476115251879897

`A045443(A184985(n+2))`
-/

namespace A045454.P1268476115251879897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045443 (A184985 (n + 2)).toNat

end

end A045454.P1268476115251879897

namespace A045454

/-- `A045443(A184985(n+2))` -/
def P1268476115251879897.Spec : Prop :=
  ∀ n, P1268476115251879897.a n = A045454 (n + 1)

end A045454

/-! ## A045454.P11809403663621907766

`∩[A045443(n+1), A045448(n+1)]`
-/

namespace A045454.P11809403663621907766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045454.P11809403663621907766

namespace A045454

/-- `∩[A045443(n+1), A045448(n+1)]` -/
def P11809403663621907766.Spec : Prop :=
  ∀ n, (P11809403663621907766.a n : ℤ) = A045454 (n + 1)

end A045454

/-! ## A045454.P1390156148998996749

`∩[A045364(n+1), A045438(n+1)]`
-/

namespace A045454.P1390156148998996749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045454.P1390156148998996749

namespace A045454

/-- `∩[A045364(n+1), A045438(n+1)]` -/
def P1390156148998996749.Spec : Prop :=
  ∀ n, (P1390156148998996749.a n : ℤ) = A045454 (n + 1)

end A045454

/-! ## A045454.P17736077611975088220

`∩[A045364(n+1), A045443(n+1)]`
-/

namespace A045454.P17736077611975088220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045454.P17736077611975088220

namespace A045454

/-- `∩[A045364(n+1), A045443(n+1)]` -/
def P17736077611975088220.Spec : Prop :=
  ∀ n, (P17736077611975088220.a n : ℤ) = A045454 (n + 1)

end A045454

/-! ## A045454.P1840367546710761780

`∩[A045364(n+1), A045448(n+1)]`
-/

namespace A045454.P1840367546710761780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045454.P1840367546710761780

namespace A045454

/-- `∩[A045364(n+1), A045448(n+1)]` -/
def P1840367546710761780.Spec : Prop :=
  ∀ n, (P1840367546710761780.a n : ℤ) = A045454 (n + 1)

end A045454

/-! ## A045454.P10375423619388855600

`∩[A045353(n+1), A045448(n+1)]`
-/

namespace A045454.P10375423619388855600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045454.P10375423619388855600

namespace A045454

/-- `∩[A045353(n+1), A045448(n+1)]` -/
def P10375423619388855600.Spec : Prop :=
  ∀ n, (P10375423619388855600.a n : ℤ) = A045454 (n + 1)

end A045454

/-! ## A045454.P17789380035303635035

`∩[A045353(n+1), A045411(n+1)]`
-/

namespace A045454.P17789380035303635035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045454.P17789380035303635035

namespace A045454

/-- `∩[A045353(n+1), A045411(n+1)]` -/
def P17789380035303635035.Spec : Prop :=
  ∀ n, (P17789380035303635035.a n : ℤ) = A045454 (n + 1)

end A045454

/-! ## A045454.P1920397138014555901

`∩[A045364(n+1), A045411(n+1)]`
-/

namespace A045454.P1920397138014555901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045454.P1920397138014555901

namespace A045454

/-- `∩[A045364(n+1), A045411(n+1)]` -/
def P1920397138014555901.Spec : Prop :=
  ∀ n, (P1920397138014555901.a n : ℤ) = A045454 (n + 1)

end A045454

/-! ## A045454.P4376873648731874463

`∩[A045443(n+1), A045411(n+1)]`
-/

namespace A045454.P4376873648731874463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045454.P4376873648731874463

namespace A045454

/-- `∩[A045443(n+1), A045411(n+1)]` -/
def P4376873648731874463.Spec : Prop :=
  ∀ n, (P4376873648731874463.a n : ℤ) = A045454 (n + 1)

end A045454

/-! ## A045454.P2816488538966287835

`∩[A045364(n+1), A045398(n+1)]`
-/

namespace A045454.P2816488538966287835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045454.P2816488538966287835

namespace A045454

/-- `∩[A045364(n+1), A045398(n+1)]` -/
def P2816488538966287835.Spec : Prop :=
  ∀ n, (P2816488538966287835.a n : ℤ) = A045454 (n + 1)

end A045454

/-! ## A045454.P6502532801440869092

`∩[A045346(n+1), A045411(n+1)]`
-/

namespace A045454.P6502532801440869092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045454.P6502532801440869092

namespace A045454

/-- `∩[A045346(n+1), A045411(n+1)]` -/
def P6502532801440869092.Spec : Prop :=
  ∀ n, (P6502532801440869092.a n : ℤ) = A045454 (n + 1)

end A045454

/-! ## A045454.P17777014990461203006

`∩[A045360(n+1), A045398(n+1)]`
-/

namespace A045454.P17777014990461203006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045454.P17777014990461203006

namespace A045454

/-- `∩[A045360(n+1), A045398(n+1)]` -/
def P17777014990461203006.Spec : Prop :=
  ∀ n, (P17777014990461203006.a n : ℤ) = A045454 (n + 1)

end A045454

/-! ## A045454.P13841864406562243474

`∩[A045360(n+1), A045411(n+1)]`
-/

namespace A045454.P13841864406562243474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045454.P13841864406562243474

namespace A045454

/-- `∩[A045360(n+1), A045411(n+1)]` -/
def P13841864406562243474.Spec : Prop :=
  ∀ n, (P13841864406562243474.a n : ℤ) = A045454 (n + 1)

end A045454

/-! ## A045454.P3613209619316249156

`∩[A045360(n+1), A045443(n+1)]`
-/

namespace A045454.P3613209619316249156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045454.P3613209619316249156

namespace A045454

/-- `∩[A045360(n+1), A045443(n+1)]` -/
def P3613209619316249156.Spec : Prop :=
  ∀ n, (P3613209619316249156.a n : ℤ) = A045454 (n + 1)

end A045454

/-!
# A045455: Primes congruent to {5, 6} mod 7.

The programs for A045455, the canonical program `A045455.P18014272807448646341` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045455 has offset 1).

The definition of A045455 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045455.P18014272807448646341

`p?[or(1, 7*n+5)]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045455

/-- `p?[or(1, 7*n+5)]` -/
def P18014272807448646341.Spec : Prop :=
  ∀ n, (P18014272807448646341.a n : ℤ) = A045455 (n + 1)

theorem P18014272807448646341.correct : P18014272807448646341.Spec := by
  intro n
  simp only [A045455, Nat.add_sub_cancel]

end A045455

/-! ## A045455.P462855074521800880

`p?[a(n-2)+7]` with `a(0)=5, a(1)=6`
-/

namespace A045455.P462855074521800880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 6] fun n f1 =>
  f1 (n - 2) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045455.P462855074521800880

namespace A045455

/-- `p?[a(n-2)+7]` -/
def P462855074521800880.Spec : Prop :=
  ∀ n, (P462855074521800880.a n : ℤ) = A045455 (n + 1)

end A045455

/-! ## A045455.P5692178105988044030

`A045444(A065475(n+1))`
-/

namespace A045455.P5692178105988044030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045444 (A065475 (n + 1)).toNat

end

end A045455.P5692178105988044030

namespace A045455

/-- `A045444(A065475(n+1))` -/
def P5692178105988044030.Spec : Prop :=
  ∀ n, P5692178105988044030.a n = A045455 (n + 1)

end A045455

/-! ## A045455.P11781909648324327200

`A045444(A181440(n+2))`
-/

namespace A045455.P11781909648324327200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045444 (A181440 (n + 2)).toNat

end

end A045455.P11781909648324327200

namespace A045455

/-- `A045444(A181440(n+2))` -/
def P11781909648324327200.Spec : Prop :=
  ∀ n, P11781909648324327200.a n = A045455 (n + 1)

end A045455

/-! ## A045455.P12188275341937964733

`A045444(A184985(n+2))`
-/

namespace A045455.P12188275341937964733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045444 (A184985 (n + 2)).toNat

end

end A045455.P12188275341937964733

namespace A045455

/-- `A045444(A184985(n+2))` -/
def P12188275341937964733.Spec : Prop :=
  ∀ n, P12188275341937964733.a n = A045455 (n + 1)

end A045455

/-! ## A045455.P6525830795626357340

`∩[A003625(n+1), A045354(n+1)]`
-/

namespace A045455.P6525830795626357340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045455.P6525830795626357340

namespace A045455

/-- `∩[A003625(n+1), A045354(n+1)]` -/
def P6525830795626357340.Spec : Prop :=
  ∀ n, (P6525830795626357340.a n : ℤ) = A045455 (n + 1)

end A045455

/-! ## A045455.P10800463645339761563

`∩[A003625(n+1), A045365(n+1)]`
-/

namespace A045455.P10800463645339761563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045455.P10800463645339761563

namespace A045455

/-- `∩[A003625(n+1), A045365(n+1)]` -/
def P10800463645339761563.Spec : Prop :=
  ∀ n, (P10800463645339761563.a n : ℤ) = A045455 (n + 1)

end A045455

/-! ## A045455.P2537598149035817306

`∩[A003625(n+1), A045443(n+1)]`
-/

namespace A045455.P2537598149035817306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045455.P2537598149035817306

namespace A045455

/-- `∩[A003625(n+1), A045443(n+1)]` -/
def P2537598149035817306.Spec : Prop :=
  ∀ n, (P2537598149035817306.a n : ℤ) = A045455 (n + 1)

end A045455

/-! ## A045455.P8331526781481302935

`∩[A003625(n+1), A045444(n+1)]`
-/

namespace A045455.P8331526781481302935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045455.P8331526781481302935

namespace A045455

/-- `∩[A003625(n+1), A045444(n+1)]` -/
def P8331526781481302935.Spec : Prop :=
  ∀ n, (P8331526781481302935.a n : ℤ) = A045455 (n + 1)

end A045455

/-! ## A045455.P17155143415720052881

`∩[A003625(n+1), A045454(n+1)]`
-/

namespace A045455.P17155143415720052881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045455.P17155143415720052881

namespace A045455

/-- `∩[A003625(n+1), A045454(n+1)]` -/
def P17155143415720052881.Spec : Prop :=
  ∀ n, (P17155143415720052881.a n : ℤ) = A045455 (n + 1)

end A045455

/-! ## A045455.P17127556181008973661

`∩[A003625(n+1), A045449(n+1)]`
-/

namespace A045455.P17127556181008973661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045455.P17127556181008973661

namespace A045455

/-- `∩[A003625(n+1), A045449(n+1)]` -/
def P17127556181008973661.Spec : Prop :=
  ∀ n, (P17127556181008973661.a n : ℤ) = A045455 (n + 1)

end A045455

/-! ## A045455.P15888410381170011757

`∩[A045449(n+1), A045443(n+1)]`
-/

namespace A045455.P15888410381170011757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045455.P15888410381170011757

namespace A045455

/-- `∩[A045449(n+1), A045443(n+1)]` -/
def P15888410381170011757.Spec : Prop :=
  ∀ n, (P15888410381170011757.a n : ℤ) = A045455 (n + 1)

end A045455

/-! ## A045455.P13171398871190614722

`∩[A003625(n+1), A045439(n+1)]`
-/

namespace A045455.P13171398871190614722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045455.P13171398871190614722

namespace A045455

/-- `∩[A003625(n+1), A045439(n+1)]` -/
def P13171398871190614722.Spec : Prop :=
  ∀ n, (P13171398871190614722.a n : ℤ) = A045455 (n + 1)

end A045455

/-! ## A045455.P6962586699899134191

`∩[A003625(n+1), A045448(n+1)]`
-/

namespace A045455.P6962586699899134191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045455.P6962586699899134191

namespace A045455

/-- `∩[A003625(n+1), A045448(n+1)]` -/
def P6962586699899134191.Spec : Prop :=
  ∀ n, (P6962586699899134191.a n : ℤ) = A045455 (n + 1)

end A045455

/-! ## A045455.P16614255568668121159

`∩[A003625(n+1), A045438(n+1)]`
-/

namespace A045455.P16614255568668121159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045455.P16614255568668121159

namespace A045455

/-- `∩[A003625(n+1), A045438(n+1)]` -/
def P16614255568668121159.Spec : Prop :=
  ∀ n, (P16614255568668121159.a n : ℤ) = A045455 (n + 1)

end A045455

/-! ## A045455.P13538094926478620201

`∩[A003625(n+1), A045361(n+1)]`
-/

namespace A045455.P13538094926478620201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045455.P13538094926478620201

namespace A045455

/-- `∩[A003625(n+1), A045361(n+1)]` -/
def P13538094926478620201.Spec : Prop :=
  ∀ n, (P13538094926478620201.a n : ℤ) = A045455 (n + 1)

end A045455

/-! ## A045455.P16174662703391160520

`∩[A003625(n+1), A045364(n+1)]`
-/

namespace A045455.P16174662703391160520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045364 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045455.P16174662703391160520

namespace A045455

/-- `∩[A003625(n+1), A045364(n+1)]` -/
def P16174662703391160520.Spec : Prop :=
  ∀ n, (P16174662703391160520.a n : ℤ) = A045455 (n + 1)

end A045455

/-! ## A045455.P13538883338918516766

`∩[A003625(n+1), A045347(n+1)]`
-/

namespace A045455.P13538883338918516766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045455.P13538883338918516766

namespace A045455

/-- `∩[A003625(n+1), A045347(n+1)]` -/
def P13538883338918516766.Spec : Prop :=
  ∀ n, (P13538883338918516766.a n : ℤ) = A045455 (n + 1)

end A045455

/-! ## A045455.P8086713596316200254

`∩[A003625(n+1), A045353(n+1)]`
-/

namespace A045455.P8086713596316200254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045455.P8086713596316200254

namespace A045455

/-- `∩[A003625(n+1), A045353(n+1)]` -/
def P8086713596316200254.Spec : Prop :=
  ∀ n, (P8086713596316200254.a n : ℤ) = A045455 (n + 1)

end A045455

/-! ## A045455.P10316686682478418002

`∩[A045398(n+1), A045361(n+1)]`
-/

namespace A045455.P10316686682478418002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045455.P10316686682478418002

namespace A045455

/-- `∩[A045398(n+1), A045361(n+1)]` -/
def P10316686682478418002.Spec : Prop :=
  ∀ n, (P10316686682478418002.a n : ℤ) = A045455 (n + 1)

end A045455

/-!
# A045456: Primes congruent to {1, 5} mod 7.

The programs for A045456, the canonical program `A045456.P7809870137258492627` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045456 has offset 1).

The definition of A045456 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045456.P9453400959682659968

`p?[ogf((x+3x^2+x^3+9x^4)/(1-x-x^3+x^4))]`
-/

namespace A045456.P9453400959682659968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 3, 1, 9] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045456.P9453400959682659968

namespace A045456

/-- `p?[ogf((x+3x^2+x^3+9x^4)/(1-x-x^3+x^4))]` -/
def P9453400959682659968.Spec : Prop :=
  ∀ n, P9453400959682659968.a n = A045456 (n + 1)

end A045456

/-! ## A045456.P7809870137258492627

`A045446((n+1)%(2*n+1)+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A045456

/-- `A045446((n+1)%(2*n+1)+1)` -/
def P7809870137258492627.Spec : Prop :=
  ∀ n, P7809870137258492627.a n = A045456 (n + 1)

theorem P7809870137258492627.correct : P7809870137258492627.Spec := by
  intro n
  simp only [A045456, Nat.add_sub_cancel]

end A045456

/-! ## A045456.P12243245148122715097

`A045446(A065475(n+1))`
-/

namespace A045456.P12243245148122715097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045446 (A065475 (n + 1)).toNat

end

end A045456.P12243245148122715097

namespace A045456

/-- `A045446(A065475(n+1))` -/
def P12243245148122715097.Spec : Prop :=
  ∀ n, P12243245148122715097.a n = A045456 (n + 1)

end A045456

/-! ## A045456.P4241495512109587664

`A045446(A181440(n+2))`
-/

namespace A045456.P4241495512109587664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045446 (A181440 (n + 2)).toNat

end

end A045456.P4241495512109587664

namespace A045456

/-- `A045446(A181440(n+2))` -/
def P4241495512109587664.Spec : Prop :=
  ∀ n, P4241495512109587664.a n = A045456 (n + 1)

end A045456

/-! ## A045456.P494875158922924256

`A045446(A184985(n+2))`
-/

namespace A045456.P494875158922924256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045446 (A184985 (n + 2)).toNat

end

end A045456.P494875158922924256

namespace A045456

/-- `A045446(A184985(n+2))` -/
def P494875158922924256.Spec : Prop :=
  ∀ n, P494875158922924256.a n = A045456 (n + 1)

end A045456

/-! ## A045456.P1903384139603530373

`p?[a(n-2)+7]` with `a(0)=1, a(1)=5`
-/

namespace A045456.P1903384139603530373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 (n - 2) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045456.P1903384139603530373

namespace A045456

/-- `p?[a(n-2)+7]` -/
def P1903384139603530373.Spec : Prop :=
  ∀ n, (P1903384139603530373.a n : ℤ) = A045456 (n + 1)

end A045456

/-! ## A045456.P17607038351533720995

`∩[A045454(n+1), A045400(n+1)]`
-/

namespace A045456.P17607038351533720995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045456.P17607038351533720995

namespace A045456

/-- `∩[A045454(n+1), A045400(n+1)]` -/
def P17607038351533720995.Spec : Prop :=
  ∀ n, (P17607038351533720995.a n : ℤ) = A045456 (n + 1)

end A045456

/-! ## A045456.P4497698785173399159

`∩[A045353(n+1), A045415(n+1)]`
-/

namespace A045456.P4497698785173399159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045456.P4497698785173399159

namespace A045456

/-- `∩[A045353(n+1), A045415(n+1)]` -/
def P4497698785173399159.Spec : Prop :=
  ∀ n, (P4497698785173399159.a n : ℤ) = A045456 (n + 1)

end A045456

/-! ## A045456.P14073110217666880435

`∩[A045364(n+1), A045396(n+1)]`
-/

namespace A045456.P14073110217666880435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045456.P14073110217666880435

namespace A045456

/-- `∩[A045364(n+1), A045396(n+1)]` -/
def P14073110217666880435.Spec : Prop :=
  ∀ n, (P14073110217666880435.a n : ℤ) = A045456 (n + 1)

end A045456

/-! ## A045456.P18088644798387469737

`∩[A045313(n+1), A045438(n+1)]`
-/

namespace A045456.P18088644798387469737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045456.P18088644798387469737

namespace A045456

/-- `∩[A045313(n+1), A045438(n+1)]` -/
def P18088644798387469737.Spec : Prop :=
  ∀ n, (P18088644798387469737.a n : ℤ) = A045456 (n + 1)

end A045456

/-! ## A045456.P6739037644829114708

`∩[A045313(n+1), A045440(n+1)]`
-/

namespace A045456.P6739037644829114708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045456.P6739037644829114708

namespace A045456

/-- `∩[A045313(n+1), A045440(n+1)]` -/
def P6739037644829114708.Spec : Prop :=
  ∀ n, (P6739037644829114708.a n : ℤ) = A045456 (n + 1)

end A045456

/-! ## A045456.P11145206871616015809

`∩[A045313(n+1), A045443(n+1)]`
-/

namespace A045456.P11145206871616015809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045456.P11145206871616015809

namespace A045456

/-- `∩[A045313(n+1), A045443(n+1)]` -/
def P11145206871616015809.Spec : Prop :=
  ∀ n, (P11145206871616015809.a n : ℤ) = A045456 (n + 1)

end A045456

/-! ## A045456.P2466800018943431293

`∩[A045313(n+1), A045446(n+1)]`
-/

namespace A045456.P2466800018943431293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045456.P2466800018943431293

namespace A045456

/-- `∩[A045313(n+1), A045446(n+1)]` -/
def P2466800018943431293.Spec : Prop :=
  ∀ n, (P2466800018943431293.a n : ℤ) = A045456 (n + 1)

end A045456

/-! ## A045456.P4036452701167395631

`∩[A045313(n+1), A045448(n+1)]`
-/

namespace A045456.P4036452701167395631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045456.P4036452701167395631

namespace A045456

/-- `∩[A045313(n+1), A045448(n+1)]` -/
def P4036452701167395631.Spec : Prop :=
  ∀ n, (P4036452701167395631.a n : ℤ) = A045456 (n + 1)

end A045456

/-! ## A045456.P7954680352448720874

`∩[A045313(n+1), A045451(n+1)]`
-/

namespace A045456.P7954680352448720874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045456.P7954680352448720874

namespace A045456

/-- `∩[A045313(n+1), A045451(n+1)]` -/
def P7954680352448720874.Spec : Prop :=
  ∀ n, (P7954680352448720874.a n : ℤ) = A045456 (n + 1)

end A045456

/-! ## A045456.P8781109078108999519

`∩[A045313(n+1), A045454(n+1)]`
-/

namespace A045456.P8781109078108999519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045456.P8781109078108999519

namespace A045456

/-- `∩[A045313(n+1), A045454(n+1)]` -/
def P8781109078108999519.Spec : Prop :=
  ∀ n, (P8781109078108999519.a n : ℤ) = A045456 (n + 1)

end A045456

/-! ## A045456.P18319520717906243741

`∩[A042994(n+1), A045448(n+1)]`
-/

namespace A045456.P18319520717906243741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045456.P18319520717906243741

namespace A045456

/-- `∩[A042994(n+1), A045448(n+1)]` -/
def P18319520717906243741.Spec : Prop :=
  ∀ n, (P18319520717906243741.a n : ℤ) = A045456 (n + 1)

end A045456

/-! ## A045456.P865842131281197554

`∩[A042994(n+1), A045451(n+1)]`
-/

namespace A045456.P865842131281197554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045456.P865842131281197554

namespace A045456

/-- `∩[A042994(n+1), A045451(n+1)]` -/
def P865842131281197554.Spec : Prop :=
  ∀ n, (P865842131281197554.a n : ℤ) = A045456 (n + 1)

end A045456

/-! ## A045456.P5203932318276212310

`∩[A042994(n+1), A045454(n+1)]`
-/

namespace A045456.P5203932318276212310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045456.P5203932318276212310

namespace A045456

/-- `∩[A042994(n+1), A045454(n+1)]` -/
def P5203932318276212310.Spec : Prop :=
  ∀ n, (P5203932318276212310.a n : ℤ) = A045456 (n + 1)

end A045456

/-! ## A045456.P14788423668591952078

`∩[A045362(n+1), A045398(n+1)]`
-/

namespace A045456.P14788423668591952078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045362 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045456.P14788423668591952078

namespace A045456

/-- `∩[A045362(n+1), A045398(n+1)]` -/
def P14788423668591952078.Spec : Prop :=
  ∀ n, (P14788423668591952078.a n : ℤ) = A045456 (n + 1)

end A045456

/-!
# A045457: Primes congruent to {0, 4} mod 5.

The programs for A045457, the canonical program `A045457.P16665131764292938731` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045457 has offset 1).

The definition of A045457 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045457.P16665131764292938731

`p?[a(n-1)+5]` with `a(0)=5, a(1)=4`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045457

/-- `p?[a(n-1)+5]` -/
def P16665131764292938731.Spec : Prop :=
  ∀ n, (P16665131764292938731.a n : ℤ) = A045457 (n + 1)

theorem P16665131764292938731.correct : P16665131764292938731.Spec := by
  intro n
  simp only [A045457, Nat.add_sub_cancel]

end A045457

/-! ## A045457.P11958207436149758473

`p?[ogf((5-x+x^2)/(1-2x+x^2))]`
-/

namespace A045457.P11958207436149758473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -1, 1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045457.P11958207436149758473

namespace A045457

/-- `p?[ogf((5-x+x^2)/(1-2x+x^2))]` -/
def P11958207436149758473.Spec : Prop :=
  ∀ n, P11958207436149758473.a n = A045457 (n + 1)

end A045457

/-! ## A045457.P483893622507775306

`∪[A020468(n+1), A030433(n+1)]`
-/

namespace A045457.P483893622507775306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045457.P483893622507775306

namespace A045457

/-- `∪[A020468(n+1), A030433(n+1)]` -/
def P483893622507775306.Spec : Prop :=
  ∀ n, (P483893622507775306.a n : ℤ) = A045457 (n + 1)

end A045457

/-! ## A045457.P6712773509486522459

`∪[A085553(n+1), A030433(n+1)]`
-/

namespace A045457.P6712773509486522459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085553 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045457.P6712773509486522459

namespace A045457

/-- `∪[A085553(n+1), A030433(n+1)]` -/
def P6712773509486522459.Spec : Prop :=
  ∀ n, (P6712773509486522459.a n : ℤ) = A045457 (n + 1)

end A045457

/-! ## A045457.P12221258131973721668

`∪[A215850(n+1), A030433(n+1)]`
-/

namespace A045457.P12221258131973721668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045457.P12221258131973721668

namespace A045457

/-- `∪[A215850(n+1), A030433(n+1)]` -/
def P12221258131973721668.Spec : Prop :=
  ∀ n, (P12221258131973721668.a n : ℤ) = A045457 (n + 1)

end A045457

/-! ## A045457.P14871190247556273528

`∪[A242772(n+1), A030433(n+1)]`
-/

namespace A045457.P14871190247556273528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045457.P14871190247556273528

namespace A045457

/-- `∪[A242772(n+1), A030433(n+1)]` -/
def P14871190247556273528.Spec : Prop :=
  ∀ n, (P14871190247556273528.a n : ℤ) = A045457 (n + 1)

end A045457

/-! ## A045457.P5922963003478924564

`∩[A038872(n+1), A045413(n+1)]`
-/

namespace A045457.P5922963003478924564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045457.P5922963003478924564

namespace A045457

/-- `∩[A038872(n+1), A045413(n+1)]` -/
def P5922963003478924564.Spec : Prop :=
  ∀ n, (P5922963003478924564.a n : ℤ) = A045457 (n + 1)

end A045457

/-! ## A045457.P11077057022133460059

`∩[A038872(n+1), A045356(n+1)]`
-/

namespace A045457.P11077057022133460059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045457.P11077057022133460059

namespace A045457

/-- `∩[A038872(n+1), A045356(n+1)]` -/
def P11077057022133460059.Spec : Prop :=
  ∀ n, (P11077057022133460059.a n : ℤ) = A045457 (n + 1)

end A045457

/-! ## A045457.P2719422202354372196

`∩[A045356(n+1), A045413(n+1)]`
-/

namespace A045457.P2719422202354372196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045457.P2719422202354372196

namespace A045457

/-- `∩[A045356(n+1), A045413(n+1)]` -/
def P2719422202354372196.Spec : Prop :=
  ∀ n, (P2719422202354372196.a n : ℤ) = A045457 (n + 1)

end A045457

/-! ## A045457.P11676719983275238620

`∩[A045356(n+1), A341783(n+1)]`
-/

namespace A045457.P11676719983275238620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045457.P11676719983275238620

namespace A045457

/-- `∩[A045356(n+1), A341783(n+1)]` -/
def P11676719983275238620.Spec : Prop :=
  ∀ n, (P11676719983275238620.a n : ℤ) = A045457 (n + 1)

end A045457

/-! ## A045457.P5535332888792703268

`∩[A045413(n+1), A341783(n+1)]`
-/

namespace A045457.P5535332888792703268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045457.P5535332888792703268

namespace A045457

/-- `∩[A045413(n+1), A341783(n+1)]` -/
def P5535332888792703268.Spec : Prop :=
  ∀ n, (P5535332888792703268.a n : ℤ) = A045457 (n + 1)

end A045457

/-! ## A045457.P16607346540922748586

`∩[A045356(n+1), A045405(n+1)]`
-/

namespace A045457.P16607346540922748586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045457.P16607346540922748586

namespace A045457

/-- `∩[A045356(n+1), A045405(n+1)]` -/
def P16607346540922748586.Spec : Prop :=
  ∀ n, (P16607346540922748586.a n : ℤ) = A045457 (n + 1)

end A045457

/-! ## A045457.P768146761688205659

`∩[A045348(n+1), A045413(n+1)]`
-/

namespace A045457.P768146761688205659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045457.P768146761688205659

namespace A045457

/-- `∩[A045348(n+1), A045413(n+1)]` -/
def P768146761688205659.Spec : Prop :=
  ∀ n, (P768146761688205659.a n : ℤ) = A045457 (n + 1)

end A045457

/-! ## A045457.P16713848109789440419

`∩[A038872(n+1), A042991(n+1)]`
-/

namespace A045457.P16713848109789440419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045457.P16713848109789440419

namespace A045457

/-- `∩[A038872(n+1), A042991(n+1)]` -/
def P16713848109789440419.Spec : Prop :=
  ∀ n, (P16713848109789440419.a n : ℤ) = A045457 (n + 1)

end A045457

/-! ## A045457.P9592596577928782023

`∩[A042991(n+1), A341783(n+1)]`
-/

namespace A045457.P9592596577928782023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045457.P9592596577928782023

namespace A045457

/-- `∩[A042991(n+1), A341783(n+1)]` -/
def P9592596577928782023.Spec : Prop :=
  ∀ n, (P9592596577928782023.a n : ℤ) = A045457 (n + 1)

end A045457

/-! ## A045457.P4039187224211144235

`p?[(n-1)*(2*n+1)%10]`
-/

namespace A045457.P4039187224211144235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (((2 * n + 1) % 10 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045457.P4039187224211144235

namespace A045457

/-- `p?[(n-1)*(2*n+1)%10]` -/
def P4039187224211144235.Spec : Prop :=
  ∀ n, P4039187224211144235.a n = A045457 (n + 1)

end A045457

/-! ## A045457.P12524089083902058477

`∩[A038872(n+1), A190876(n+1)]`
-/

namespace A045457.P12524089083902058477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045457.P12524089083902058477

namespace A045457

/-- `∩[A038872(n+1), A190876(n+1)]` -/
def P12524089083902058477.Spec : Prop :=
  ∀ n, (P12524089083902058477.a n : ℤ) = A045457 (n + 1)

end A045457

/-! ## A045457.P3609860970600905896

`∩[A190876(n+1), A230359(n+1)]`
-/

namespace A045457.P3609860970600905896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045457.P3609860970600905896

namespace A045457

/-- `∩[A190876(n+1), A230359(n+1)]` -/
def P3609860970600905896.Spec : Prop :=
  ∀ n, (P3609860970600905896.a n : ℤ) = A045457 (n + 1)

end A045457

/-! ## A045457.P12695088983057453457

`∩[A031363(n+1), A042991(n+1)]`
-/

namespace A045457.P12695088983057453457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045457.P12695088983057453457

namespace A045457

/-- `∩[A031363(n+1), A042991(n+1)]` -/
def P12695088983057453457.Spec : Prop :=
  ∀ n, (P12695088983057453457.a n : ℤ) = A045457 (n + 1)

end A045457

/-! ## A045457.P12485806892980133076

`∩[A031363(n+1), A045356(n+1)]`
-/

namespace A045457.P12485806892980133076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045457.P12485806892980133076

namespace A045457

/-- `∩[A031363(n+1), A045356(n+1)]` -/
def P12485806892980133076.Spec : Prop :=
  ∀ n, (P12485806892980133076.a n : ℤ) = A045457 (n + 1)

end A045457

/-!
# A045458: Primes congruent to 5 mod 7.

The programs for A045458, the canonical program `A045458.P6544782327391573442` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045458 has offset 1).

The definition of A045458 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045458.P6544782327391573442

`A045447(A065475(n+1))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A045458

/-- `A045447(A065475(n+1))` -/
def P6544782327391573442.Spec : Prop :=
  ∀ n, P6544782327391573442.a n = A045458 (n + 1)

theorem P6544782327391573442.correct : P6544782327391573442.Spec := by
  intro n
  simp only [A045458, Nat.add_sub_cancel]

end A045458

/-! ## A045458.P13681151478475886542

`A045447(A181440(n+2))`
-/

namespace A045458.P13681151478475886542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (A181440 (n + 2)).toNat

end

end A045458.P13681151478475886542

namespace A045458

/-- `A045447(A181440(n+2))` -/
def P13681151478475886542.Spec : Prop :=
  ∀ n, P13681151478475886542.a n = A045458 (n + 1)

end A045458

/-! ## A045458.P8988500730970347125

`A045447(A184985(n+2))`
-/

namespace A045458.P8988500730970347125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (A184985 (n + 2)).toNat

end

end A045458.P8988500730970347125

namespace A045458

/-- `A045447(A184985(n+2))` -/
def P8988500730970347125.Spec : Prop :=
  ∀ n, P8988500730970347125.a n = A045458 (n + 1)

end A045458

/-! ## A045458.P13432420155398957873

`A045447(A040001(2*n)+n)`
-/

namespace A045458.P13432420155398957873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (A040001 (2 * n) + (n : ℤ)).toNat

end

end A045458.P13432420155398957873

namespace A045458

/-- `A045447(A040001(2*n)+n)` -/
def P13432420155398957873.Spec : Prop :=
  ∀ n, P13432420155398957873.a n = A045458 (n + 1)

end A045458

/-! ## A045458.P16548497044823345402

`p?[7*n-2]`
-/

namespace A045458.P16548497044823345402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045458.P16548497044823345402

namespace A045458

/-- `p?[7*n-2]` -/
def P16548497044823345402.Spec : Prop :=
  ∀ n, P16548497044823345402.a n = A045458 (n + 1)

end A045458

/-! ## A045458.P2694984489095365211

`or(1, p?[a(n-1)+7])` with `a(0)=5`
-/

namespace A045458.P2694984489095365211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A045458.P2694984489095365211

namespace A045458

/-- `or(1, p?[a(n-1)+7])` -/
def P2694984489095365211.Spec : Prop :=
  ∀ n, (P2694984489095365211.a n : ℤ) = A045458 (n + 1)

end A045458

/-! ## A045458.P9760355176443517219

`∩[A045400(n+1), A004623(n+1)]`
-/

namespace A045458.P9760355176443517219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045458.P9760355176443517219

namespace A045458

/-- `∩[A045400(n+1), A004623(n+1)]` -/
def P9760355176443517219.Spec : Prop :=
  ∀ n, (P9760355176443517219.a n : ℤ) = A045458 (n + 1)

end A045458

/-! ## A045458.P15178162629741839621

`∩[A003625(n+1), A004623(n+1)]`
-/

namespace A045458.P15178162629741839621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045458.P15178162629741839621

namespace A045458

/-- `∩[A003625(n+1), A004623(n+1)]` -/
def P15178162629741839621.Spec : Prop :=
  ∀ n, (P15178162629741839621.a n : ℤ) = A045458 (n + 1)

end A045458

/-! ## A045458.P493717859834041732

`∩[A004623(n+1), A042995(n+1)]`
-/

namespace A045458.P493717859834041732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045458.P493717859834041732

namespace A045458

/-- `∩[A004623(n+1), A042995(n+1)]` -/
def P493717859834041732.Spec : Prop :=
  ∀ n, (P493717859834041732.a n : ℤ) = A045458 (n + 1)

end A045458

/-! ## A045458.P91852393884357950

`∩[A003625(n+1), A045358(n+1)]`
-/

namespace A045458.P91852393884357950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045458.P91852393884357950

namespace A045458

/-- `∩[A003625(n+1), A045358(n+1)]` -/
def P91852393884357950.Spec : Prop :=
  ∀ n, (P91852393884357950.a n : ℤ) = A045458 (n + 1)

end A045458

/-! ## A045458.P9238187020674686979

`∩[A003625(n+1), A045359(n+1)]`
-/

namespace A045458.P9238187020674686979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045458.P9238187020674686979

namespace A045458

/-- `∩[A003625(n+1), A045359(n+1)]` -/
def P9238187020674686979.Spec : Prop :=
  ∀ n, (P9238187020674686979.a n : ℤ) = A045458 (n + 1)

end A045458

/-! ## A045458.P1932270323291646498

`∩[A003625(n+1), A045367(n+1)]`
-/

namespace A045458.P1932270323291646498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045458.P1932270323291646498

namespace A045458

/-- `∩[A003625(n+1), A045367(n+1)]` -/
def P1932270323291646498.Spec : Prop :=
  ∀ n, (P1932270323291646498.a n : ℤ) = A045458 (n + 1)

end A045458

/-! ## A045458.P6401213193389867411

`∩[A003625(n+1), A045368(n+1)]`
-/

namespace A045458.P6401213193389867411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045458.P6401213193389867411

namespace A045458

/-- `∩[A003625(n+1), A045368(n+1)]` -/
def P6401213193389867411.Spec : Prop :=
  ∀ n, (P6401213193389867411.a n : ℤ) = A045458 (n + 1)

end A045458

/-! ## A045458.P4276917429611036384

`∩[A003625(n+1), A045441(n+1)]`
-/

namespace A045458.P4276917429611036384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045458.P4276917429611036384

namespace A045458

/-- `∩[A003625(n+1), A045441(n+1)]` -/
def P4276917429611036384.Spec : Prop :=
  ∀ n, (P4276917429611036384.a n : ℤ) = A045458 (n + 1)

end A045458

/-! ## A045458.P17220604874861585370

`∩[A045446(n+1), A003625(n+1)]`
-/

namespace A045458.P17220604874861585370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045458.P17220604874861585370

namespace A045458

/-- `∩[A045446(n+1), A003625(n+1)]` -/
def P17220604874861585370.Spec : Prop :=
  ∀ n, (P17220604874861585370.a n : ℤ) = A045458 (n + 1)

end A045458

/-! ## A045458.P2715636458994493362

`∩[A045451(n+1), A003625(n+1)]`
-/

namespace A045458.P2715636458994493362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045458.P2715636458994493362

namespace A045458

/-- `∩[A045451(n+1), A003625(n+1)]` -/
def P2715636458994493362.Spec : Prop :=
  ∀ n, (P2715636458994493362.a n : ℤ) = A045458 (n + 1)

end A045458

/-! ## A045458.P2746515113515615253

`∩[A045455(n+1), A042995(n+1)]`
-/

namespace A045458.P2746515113515615253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045458.P2746515113515615253

namespace A045458

/-- `∩[A045455(n+1), A042995(n+1)]` -/
def P2746515113515615253.Spec : Prop :=
  ∀ n, (P2746515113515615253.a n : ℤ) = A045458 (n + 1)

end A045458

/-! ## A045458.P7628198846575944639

`∩[A003625(n+1), A045351(n+1)]`
-/

namespace A045458.P7628198846575944639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045458.P7628198846575944639

namespace A045458

/-- `∩[A003625(n+1), A045351(n+1)]` -/
def P7628198846575944639.Spec : Prop :=
  ∀ n, (P7628198846575944639.a n : ℤ) = A045458 (n + 1)

end A045458

/-! ## A045458.P9474551486268783639

`∩[A003625(n+1), A045363(n+1)]`
-/

namespace A045458.P9474551486268783639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045458.P9474551486268783639

namespace A045458

/-- `∩[A003625(n+1), A045363(n+1)]` -/
def P9474551486268783639.Spec : Prop :=
  ∀ n, (P9474551486268783639.a n : ℤ) = A045458 (n + 1)

end A045458

/-! ## A045458.P16097080087568692934

`∩[A003625(n+1), A045350(n+1)]`
-/

namespace A045458.P16097080087568692934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045458.P16097080087568692934

namespace A045458

/-- `∩[A003625(n+1), A045350(n+1)]` -/
def P16097080087568692934.Spec : Prop :=
  ∀ n, (P16097080087568692934.a n : ℤ) = A045458 (n + 1)

end A045458

/-!
# A045459: Primes congruent to {0, 1, 4, 6} mod 7.

The programs for A045459, the canonical program `A045459.P13155566144370101843` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045459 has offset 1).

The definition of A045459 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045459.P17371903521106507364

`∪[A022008(n+1), A045466(n+1)]`
-/

namespace A045459.P17371903521106507364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045459.P17371903521106507364

namespace A045459

/-- `∪[A022008(n+1), A045466(n+1)]` -/
def P17371903521106507364.Spec : Prop :=
  ∀ n, (P17371903521106507364.a n : ℤ) = A045459 (n + 1)

end A045459

/-! ## A045459.P15779843370981556737

`∪[A045460(n+1), A045461(n+1)]`
-/

namespace A045459.P15779843370981556737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045460 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045461 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045459.P15779843370981556737

namespace A045459

/-- `∪[A045460(n+1), A045461(n+1)]` -/
def P15779843370981556737.Spec : Prop :=
  ∀ n, (P15779843370981556737.a n : ℤ) = A045459 (n + 1)

end A045459

/-! ## A045459.P6494766533240072076

`∪[A045460(n+1), A045463(n+1)]`
-/

namespace A045459.P6494766533240072076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045460 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045463 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045459.P6494766533240072076

namespace A045459

/-- `∪[A045460(n+1), A045463(n+1)]` -/
def P6494766533240072076.Spec : Prop :=
  ∀ n, (P6494766533240072076.a n : ℤ) = A045459 (n + 1)

end A045459

/-! ## A045459.P5220003267630091725

`∪[A045461(n+1), A045464(n+1)]`
-/

namespace A045459.P5220003267630091725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045459.P5220003267630091725

namespace A045459

/-- `∪[A045461(n+1), A045464(n+1)]` -/
def P5220003267630091725.Spec : Prop :=
  ∀ n, (P5220003267630091725.a n : ℤ) = A045459 (n + 1)

end A045459

/-! ## A045459.P17230312080801295088

`∪[A045461(n+1), A045467(n+1)]`
-/

namespace A045459.P17230312080801295088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045459.P17230312080801295088

namespace A045459

/-- `∪[A045461(n+1), A045467(n+1)]` -/
def P17230312080801295088.Spec : Prop :=
  ∀ n, (P17230312080801295088.a n : ℤ) = A045459 (n + 1)

end A045459

/-! ## A045459.P13155566144370101843

`∪[A045463(n+1), A045471(n+1)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A045459

/-- `∪[A045463(n+1), A045471(n+1)]` -/
def P13155566144370101843.Spec : Prop :=
  ∀ n, (P13155566144370101843.a n : ℤ) = A045459 (n + 1)

theorem P13155566144370101843.correct : P13155566144370101843.Spec := by
  intro n
  simp only [A045459, Nat.add_sub_cancel]

end A045459

/-! ## A045459.P16476449941425834085

`∪[A077721(n+1), A045466(n+1)]`
-/

namespace A045459.P16476449941425834085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045459.P16476449941425834085

namespace A045459

/-- `∪[A077721(n+1), A045466(n+1)]` -/
def P16476449941425834085.Spec : Prop :=
  ∀ n, (P16476449941425834085.a n : ℤ) = A045459 (n + 1)

end A045459

/-! ## A045459.P16536192394970709748

`∪[A045466(n+1), A201114(n+1)]`
-/

namespace A045459.P16536192394970709748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045459.P16536192394970709748

namespace A045459

/-- `∪[A045466(n+1), A201114(n+1)]` -/
def P16536192394970709748.Spec : Prop :=
  ∀ n, (P16536192394970709748.a n : ℤ) = A045459 (n + 1)

end A045459

/-! ## A045459.P7972396301464745134

`∪[A045466(n+1), A201261(n+1)]`
-/

namespace A045459.P7972396301464745134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201261 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045459.P7972396301464745134

namespace A045459

/-- `∪[A045466(n+1), A201261(n+1)]` -/
def P7972396301464745134.Spec : Prop :=
  ∀ n, (P7972396301464745134.a n : ℤ) = A045459 (n + 1)

end A045459

/-! ## A045459.P14883585871185360430

`∪[A045466(n+1), A355577(n+1)]`
-/

namespace A045459.P14883585871185360430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045459.P14883585871185360430

namespace A045459

/-- `∪[A045466(n+1), A355577(n+1)]` -/
def P14883585871185360430.Spec : Prop :=
  ∀ n, (P14883585871185360430.a n : ℤ) = A045459 (n + 1)

end A045459

/-! ## A045459.P6701453076270442979

`p?[a(n-4)+7]` with `a(0)=0, a(1)=1, a(2)=4, a(3)=6`
-/

namespace A045459.P6701453076270442979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4, 6] fun n f1 =>
  f1 (n - 4) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045459.P6701453076270442979

namespace A045459

/-- `p?[a(n-4)+7]` -/
def P6701453076270442979.Spec : Prop :=
  ∀ n, (P6701453076270442979.a n : ℤ) = A045459 (n + 1)

end A045459

/-! ## A045459.P7066197076498504611

`∩[A045369(n+1), A045417(n+1)]`
-/

namespace A045459.P7066197076498504611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045459.P7066197076498504611

namespace A045459

/-- `∩[A045369(n+1), A045417(n+1)]` -/
def P7066197076498504611.Spec : Prop :=
  ∀ n, (P7066197076498504611.a n : ℤ) = A045459 (n + 1)

end A045459

/-! ## A045459.P4788280809573355902

`∩[A045369(n+1), A045438(n+1)]`
-/

namespace A045459.P4788280809573355902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045459.P4788280809573355902

namespace A045459

/-- `∩[A045369(n+1), A045438(n+1)]` -/
def P4788280809573355902.Spec : Prop :=
  ∀ n, (P4788280809573355902.a n : ℤ) = A045459 (n + 1)

end A045459

/-! ## A045459.P8840504543666742123

`∩[A045417(n+1), A045438(n+1)]`
-/

namespace A045459.P8840504543666742123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045459.P8840504543666742123

namespace A045459

/-- `∩[A045417(n+1), A045438(n+1)]` -/
def P8840504543666742123.Spec : Prop :=
  ∀ n, (P8840504543666742123.a n : ℤ) = A045459 (n + 1)

end A045459

/-! ## A045459.P13306868441786084341

`∩[A045346(n+1), A045417(n+1)]`
-/

namespace A045459.P13306868441786084341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045459.P13306868441786084341

namespace A045459

/-- `∩[A045346(n+1), A045417(n+1)]` -/
def P13306868441786084341.Spec : Prop :=
  ∀ n, (P13306868441786084341.a n : ℤ) = A045459 (n + 1)

end A045459

/-! ## A045459.P11803444757882811289

`∩[A045320(n+1), A045438(n+1)]`
-/

namespace A045459.P11803444757882811289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045459.P11803444757882811289

namespace A045459

/-- `∩[A045320(n+1), A045438(n+1)]` -/
def P11803444757882811289.Spec : Prop :=
  ∀ n, (P11803444757882811289.a n : ℤ) = A045459 (n + 1)

end A045459

/-! ## A045459.P13400531943131725981

`∩[A045369(n+1), A045393(n+1)]`
-/

namespace A045459.P13400531943131725981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045459.P13400531943131725981

namespace A045459

/-- `∩[A045369(n+1), A045393(n+1)]` -/
def P13400531943131725981.Spec : Prop :=
  ∀ n, (P13400531943131725981.a n : ℤ) = A045459 (n + 1)

end A045459

/-! ## A045459.P10576324048719172174

`record[p?[n-(n+1)²%7]]`
-/

namespace A045459.P10576324048719172174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (((n + 1) ^ 2 % 7 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045459.P10576324048719172174

namespace A045459

/-- `record[p?[n-(n+1)²%7]]` -/
def P10576324048719172174.Spec : Prop :=
  ∀ n, P10576324048719172174.a n = A045459 (n + 1)

end A045459

/-! ## A045459.P4020824693152019561

`p?[A028919(n+1)+1]`
-/

namespace A045459.P4020824693152019561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028919 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045459.P4020824693152019561

namespace A045459

/-- `p?[A028919(n+1)+1]` -/
def P4020824693152019561.Spec : Prop :=
  ∀ n, P4020824693152019561.a n = A045459 (n + 1)

end A045459

/-! ## A045459.P13518744532968143993

`p?[2*A047328(n+1)+1]`
-/

namespace A045459.P13518744532968143993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047328 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045459.P13518744532968143993

namespace A045459

/-- `p?[2*A047328(n+1)+1]` -/
def P13518744532968143993.Spec : Prop :=
  ∀ n, P13518744532968143993.a n = A045459 (n + 1)

end A045459

/-!
# A045460: Primes congruent to {0, 4, 6} mod 7.

The programs for A045460, the canonical program `A045460.P779687424357472890` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045460 has offset 1).

The definition of A045460 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045460.P2498255567144738351

`∪[A022008(n+1), A045467(n+1)]`
-/

namespace A045460.P2498255567144738351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045460.P2498255567144738351

namespace A045460

/-- `∪[A022008(n+1), A045467(n+1)]` -/
def P2498255567144738351.Spec : Prop :=
  ∀ n, (P2498255567144738351.a n : ℤ) = A045460 (n + 1)

end A045460

/-! ## A045460.P779687424357472890

`∪[A045471(n+1), A045464(n+1)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A045460

/-- `∪[A045471(n+1), A045464(n+1)]` -/
def P779687424357472890.Spec : Prop :=
  ∀ n, (P779687424357472890.a n : ℤ) = A045460 (n + 1)

theorem P779687424357472890.correct : P779687424357472890.Spec := by
  intro n
  simp only [A045460, Nat.add_sub_cancel]

end A045460

/-! ## A045460.P12510219711031357272

`p?[a(n-3)+7]` with `a(0)=0, a(1)=4, a(2)=6`
-/

namespace A045460.P12510219711031357272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 6] fun n f1 =>
  f1 (n - 3) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045460.P12510219711031357272

namespace A045460

/-- `p?[a(n-3)+7]` -/
def P12510219711031357272.Spec : Prop :=
  ∀ n, (P12510219711031357272.a n : ℤ) = A045460 (n + 1)

end A045460

/-! ## A045460.P16957054235966506914

`p?[ogf((4x+2x^2+x^3)/(1-x-x^3+x^4))]`
-/

namespace A045460.P16957054235966506914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 2, 1] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045460.P16957054235966506914

namespace A045460

/-- `p?[ogf((4x+2x^2+x^3)/(1-x-x^3+x^4))]` -/
def P16957054235966506914.Spec : Prop :=
  ∀ n, P16957054235966506914.a n = A045460 (n + 1)

end A045460

/-! ## A045460.P6085573865247497489

`∩[A045370(n+1), A045459(n+1)]`
-/

namespace A045460.P6085573865247497489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045460.P6085573865247497489

namespace A045460

/-- `∩[A045370(n+1), A045459(n+1)]` -/
def P6085573865247497489.Spec : Prop :=
  ∀ n, (P6085573865247497489.a n : ℤ) = A045460 (n + 1)

end A045460

/-! ## A045460.P6140526176459211619

`∩[A045370(n+1), A045418(n+1)]`
-/

namespace A045460.P6140526176459211619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045460.P6140526176459211619

namespace A045460

/-- `∩[A045370(n+1), A045418(n+1)]` -/
def P6140526176459211619.Spec : Prop :=
  ∀ n, (P6140526176459211619.a n : ℤ) = A045460 (n + 1)

end A045460

/-! ## A045460.P18240172055476088375

`∩[A045370(n+1), A045439(n+1)]`
-/

namespace A045460.P18240172055476088375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045460.P18240172055476088375

namespace A045460

/-- `∩[A045370(n+1), A045439(n+1)]` -/
def P18240172055476088375.Spec : Prop :=
  ∀ n, (P18240172055476088375.a n : ℤ) = A045460 (n + 1)

end A045460

/-! ## A045460.P3953077928488760736

`∩[A045369(n+1), A045418(n+1)]`
-/

namespace A045460.P3953077928488760736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045460.P3953077928488760736

namespace A045460

/-- `∩[A045369(n+1), A045418(n+1)]` -/
def P3953077928488760736.Spec : Prop :=
  ∀ n, (P3953077928488760736.a n : ℤ) = A045460 (n + 1)

end A045460

/-! ## A045460.P17881890725342144445

`∩[A045369(n+1), A045439(n+1)]`
-/

namespace A045460.P17881890725342144445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045460.P17881890725342144445

namespace A045460

/-- `∩[A045369(n+1), A045439(n+1)]` -/
def P17881890725342144445.Spec : Prop :=
  ∀ n, (P17881890725342144445.a n : ℤ) = A045460 (n + 1)

end A045460

/-! ## A045460.P14195711389871159588

`∩[A045370(n+1), A045417(n+1)]`
-/

namespace A045460.P14195711389871159588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045460.P14195711389871159588

namespace A045460

/-- `∩[A045370(n+1), A045417(n+1)]` -/
def P14195711389871159588.Spec : Prop :=
  ∀ n, (P14195711389871159588.a n : ℤ) = A045460 (n + 1)

end A045460

/-! ## A045460.P8732352986702822642

`∩[A045370(n+1), A045438(n+1)]`
-/

namespace A045460.P8732352986702822642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045460.P8732352986702822642

namespace A045460

/-- `∩[A045370(n+1), A045438(n+1)]` -/
def P8732352986702822642.Spec : Prop :=
  ∀ n, (P8732352986702822642.a n : ℤ) = A045460 (n + 1)

end A045460

/-! ## A045460.P10257874257705501979

`∩[A045322(n+1), A045438(n+1)]`
-/

namespace A045460.P10257874257705501979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045460.P10257874257705501979

namespace A045460

/-- `∩[A045322(n+1), A045438(n+1)]` -/
def P10257874257705501979.Spec : Prop :=
  ∀ n, (P10257874257705501979.a n : ℤ) = A045460 (n + 1)

end A045460

/-! ## A045460.P11766518553749241712

`∩[A045322(n+1), A045439(n+1)]`
-/

namespace A045460.P11766518553749241712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045460.P11766518553749241712

namespace A045460

/-- `∩[A045322(n+1), A045439(n+1)]` -/
def P11766518553749241712.Spec : Prop :=
  ∀ n, (P11766518553749241712.a n : ℤ) = A045460 (n + 1)

end A045460

/-! ## A045460.P1558477379755468245

`∩[A045347(n+1), A045417(n+1)]`
-/

namespace A045460.P1558477379755468245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045460.P1558477379755468245

namespace A045460

/-- `∩[A045347(n+1), A045417(n+1)]` -/
def P1558477379755468245.Spec : Prop :=
  ∀ n, (P1558477379755468245.a n : ℤ) = A045460 (n + 1)

end A045460

/-! ## A045460.P3382043031702086733

`∩[A045347(n+1), A045418(n+1)]`
-/

namespace A045460.P3382043031702086733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045460.P3382043031702086733

namespace A045460

/-- `∩[A045347(n+1), A045418(n+1)]` -/
def P3382043031702086733.Spec : Prop :=
  ∀ n, (P3382043031702086733.a n : ℤ) = A045460 (n + 1)

end A045460

/-! ## A045460.P18157677448659538226

`∩[A045322(n+1), A045459(n+1)]`
-/

namespace A045460.P18157677448659538226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045460.P18157677448659538226

namespace A045460

/-- `∩[A045322(n+1), A045459(n+1)]` -/
def P18157677448659538226.Spec : Prop :=
  ∀ n, (P18157677448659538226.a n : ℤ) = A045460 (n + 1)

end A045460

/-! ## A045460.P6036677318838361955

`∩[A045347(n+1), A045459(n+1)]`
-/

namespace A045460.P6036677318838361955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045460.P6036677318838361955

namespace A045460

/-- `∩[A045347(n+1), A045459(n+1)]` -/
def P6036677318838361955.Spec : Prop :=
  ∀ n, (P6036677318838361955.a n : ℤ) = A045460 (n + 1)

end A045460

/-! ## A045460.P4262775230124887876

`∩[A045369(n+1), A045394(n+1)]`
-/

namespace A045460.P4262775230124887876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045460.P4262775230124887876

namespace A045460

/-- `∩[A045369(n+1), A045394(n+1)]` -/
def P4262775230124887876.Spec : Prop :=
  ∀ n, (P4262775230124887876.a n : ℤ) = A045460 (n + 1)

end A045460

/-! ## A045460.P10641829218736080749

`∩[A045370(n+1), A045394(n+1)]`
-/

namespace A045460.P10641829218736080749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045460.P10641829218736080749

namespace A045460

/-- `∩[A045370(n+1), A045394(n+1)]` -/
def P10641829218736080749.Spec : Prop :=
  ∀ n, (P10641829218736080749.a n : ℤ) = A045460 (n + 1)

end A045460

/-! ## A045460.P3789590552362375615

`∩[A045394(n+1), A045459(n+1)]`
-/

namespace A045460.P3789590552362375615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045460.P3789590552362375615

namespace A045460

/-- `∩[A045394(n+1), A045459(n+1)]` -/
def P3789590552362375615.Spec : Prop :=
  ∀ n, (P3789590552362375615.a n : ℤ) = A045460 (n + 1)

end A045460

/-!
# A045461: Primes congruent to {0, 1, 4} mod 7.

The programs for A045461, the canonical program `A045461.P3523084382840932021` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045461 has offset 1).

The definition of A045461 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9983 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045461.P3845000848721330217

`∪[A077721(n+1), A045469(n+1)]`
-/

namespace A045461.P3845000848721330217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045461.P3845000848721330217

namespace A045461

/-- `∪[A077721(n+1), A045469(n+1)]` -/
def P3845000848721330217.Spec : Prop :=
  ∀ n, (P3845000848721330217.a n : ℤ) = A045461 (n + 1)

end A045461

/-! ## A045461.P3523084382840932021

`p?[a(n-2)+7]` with `a(0)=1, a(1)=4, a(2)=7, a(3)=1, a(4)=4`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045461

/-- `p?[a(n-2)+7]` -/
def P3523084382840932021.Spec : Prop :=
  ∀ n, (P3523084382840932021.a n : ℤ) = A045461 (n + 1)

theorem P3523084382840932021.correct : P3523084382840932021.Spec := by
  intro n
  simp only [A045461, Nat.add_sub_cancel]

end A045461

/-! ## A045461.P5244402164868745508

`p?[ogf((x+3x^2+3x^3)/(1-x-x^3+x^4))]`
-/

namespace A045461.P5244402164868745508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 3, 3] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045461.P5244402164868745508

namespace A045461

/-- `p?[ogf((x+3x^2+3x^3)/(1-x-x^3+x^4))]` -/
def P5244402164868745508.Spec : Prop :=
  ∀ n, P5244402164868745508.a n = A045461 (n + 1)

end A045461

/-! ## A045461.P7644394081272971863

`∩[A033207(n+1), A045459(n+1)]`
-/

namespace A045461.P7644394081272971863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045461.P7644394081272971863

namespace A045461

/-- `∩[A033207(n+1), A045459(n+1)]` -/
def P7644394081272971863.Spec : Prop :=
  ∀ n, (P7644394081272971863.a n : ℤ) = A045461 (n + 1)

end A045461

/-! ## A045461.P1204294002649267762

`∩[A033207(n+1), A045420(n+1)]`
-/

namespace A045461.P1204294002649267762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045461.P1204294002649267762

namespace A045461

/-- `∩[A033207(n+1), A045420(n+1)]` -/
def P1204294002649267762.Spec : Prop :=
  ∀ n, (P1204294002649267762.a n : ℤ) = A045461 (n + 1)

end A045461

/-! ## A045461.P7552327736767612677

`∩[A033207(n+1), A045440(n+1)]`
-/

namespace A045461.P7552327736767612677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045461.P7552327736767612677

namespace A045461

/-- `∩[A033207(n+1), A045440(n+1)]` -/
def P7552327736767612677.Spec : Prop :=
  ∀ n, (P7552327736767612677.a n : ℤ) = A045461 (n + 1)

end A045461

/-! ## A045461.P17386994079165956465

`∩[A045440(n+1), A045373(n+1)]`
-/

namespace A045461.P17386994079165956465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045440 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045461.P17386994079165956465

namespace A045461

/-- `∩[A045440(n+1), A045373(n+1)]` -/
def P17386994079165956465.Spec : Prop :=
  ∀ n, (P17386994079165956465.a n : ℤ) = A045461 (n + 1)

end A045461

/-! ## A045461.P7467233336564718296

`∩[A045324(n+1), A045440(n+1)]`
-/

namespace A045461.P7467233336564718296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045461.P7467233336564718296

namespace A045461

/-- `∩[A045324(n+1), A045440(n+1)]` -/
def P7467233336564718296.Spec : Prop :=
  ∀ n, (P7467233336564718296.a n : ℤ) = A045461 (n + 1)

end A045461

/-! ## A045461.P2396718206434801200

`∩[A045420(n+1), A045350(n+1)]`
-/

namespace A045461.P2396718206434801200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045461.P2396718206434801200

namespace A045461

/-- `∩[A045420(n+1), A045350(n+1)]` -/
def P2396718206434801200.Spec : Prop :=
  ∀ n, (P2396718206434801200.a n : ℤ) = A045461 (n + 1)

end A045461

/-! ## A045461.P14779973133785299754

`∩[A033207(n+1), A045417(n+1)]`
-/

namespace A045461.P14779973133785299754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045461.P14779973133785299754

namespace A045461

/-- `∩[A033207(n+1), A045417(n+1)]` -/
def P14779973133785299754.Spec : Prop :=
  ∀ n, (P14779973133785299754.a n : ℤ) = A045461 (n + 1)

end A045461

/-! ## A045461.P7395192554102535132

`∩[A033207(n+1), A045438(n+1)]`
-/

namespace A045461.P7395192554102535132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045461.P7395192554102535132

namespace A045461

/-- `∩[A033207(n+1), A045438(n+1)]` -/
def P7395192554102535132.Spec : Prop :=
  ∀ n, (P7395192554102535132.a n : ℤ) = A045461 (n + 1)

end A045461

/-! ## A045461.P5457345702741020616

`∩[A045324(n+1), A045438(n+1)]`
-/

namespace A045461.P5457345702741020616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045461.P5457345702741020616

namespace A045461

/-- `∩[A045324(n+1), A045438(n+1)]` -/
def P5457345702741020616.Spec : Prop :=
  ∀ n, (P5457345702741020616.a n : ℤ) = A045461 (n + 1)

end A045461

/-! ## A045461.P11585302490962733341

`∩[A045350(n+1), A045417(n+1)]`
-/

namespace A045461.P11585302490962733341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045461.P11585302490962733341

namespace A045461

/-- `∩[A045350(n+1), A045417(n+1)]` -/
def P11585302490962733341.Spec : Prop :=
  ∀ n, (P11585302490962733341.a n : ℤ) = A045461 (n + 1)

end A045461

/-! ## A045461.P5397503255316513717

`∩[A033207(n+1), A045396(n+1)]`
-/

namespace A045461.P5397503255316513717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045461.P5397503255316513717

namespace A045461

/-- `∩[A033207(n+1), A045396(n+1)]` -/
def P5397503255316513717.Spec : Prop :=
  ∀ n, (P5397503255316513717.a n : ℤ) = A045461 (n + 1)

end A045461

/-! ## A045461.P11948646405509408089

`∩[A045369(n+1), A045396(n+1)]`
-/

namespace A045461.P11948646405509408089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045461.P11948646405509408089

namespace A045461

/-- `∩[A045369(n+1), A045396(n+1)]` -/
def P11948646405509408089.Spec : Prop :=
  ∀ n, (P11948646405509408089.a n : ℤ) = A045461 (n + 1)

end A045461

/-! ## A045461.P12600598126433220225

`∩[A045459(n+1), A045396(n+1)]`
-/

namespace A045461.P12600598126433220225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045461.P12600598126433220225

namespace A045461

/-- `∩[A045459(n+1), A045396(n+1)]` -/
def P12600598126433220225.Spec : Prop :=
  ∀ n, (P12600598126433220225.a n : ℤ) = A045461 (n + 1)

end A045461

/-! ## A045461.P9510507735491345599

`∩[A045346(n+1), A045420(n+1)]`
-/

namespace A045461.P9510507735491345599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045461.P9510507735491345599

namespace A045461

/-- `∩[A045346(n+1), A045420(n+1)]` -/
def P9510507735491345599.Spec : Prop :=
  ∀ n, (P9510507735491345599.a n : ℤ) = A045461 (n + 1)

end A045461

/-! ## A045461.P15703539471717258373

`∩[A045320(n+1), A045440(n+1)]`
-/

namespace A045461.P15703539471717258373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045461.P15703539471717258373

namespace A045461

/-- `∩[A045320(n+1), A045440(n+1)]` -/
def P15703539471717258373.Spec : Prop :=
  ∀ n, (P15703539471717258373.a n : ℤ) = A045461 (n + 1)

end A045461

/-! ## A045461.P7024941109960514418

`∩[A045459(n+1), A042988(n)]`
-/

namespace A045461.P7024941109960514418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045461.P7024941109960514418

namespace A045461

/-- `∩[A045459(n+1), A042988(n)]` -/
def P7024941109960514418.Spec : Prop :=
  ∀ n, (P7024941109960514418.a n : ℤ) = A045461 (n + 1)

end A045461

/-! ## A045461.P10157092498729817919

`∩[A033207(n+1), A045393(n+1)]`
-/

namespace A045461.P10157092498729817919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045461.P10157092498729817919

namespace A045461

/-- `∩[A033207(n+1), A045393(n+1)]` -/
def P10157092498729817919.Spec : Prop :=
  ∀ n, (P10157092498729817919.a n : ℤ) = A045461 (n + 1)

end A045461

/-!
# A045462: Primes congruent to {0, 4} mod 7.

The programs for A045462, the canonical program `A045462.P6786257225361276851` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045462 has offset 1).

The definition of A045462 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9422 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045462.P6786257225361276851

`p?[a(n-1)+7]` with `a(0)=7, a(1)=4`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045462

/-- `p?[a(n-1)+7]` -/
def P6786257225361276851.Spec : Prop :=
  ∀ n, (P6786257225361276851.a n : ℤ) = A045462 (n + 1)

theorem P6786257225361276851.correct : P6786257225361276851.Spec := by
  intro n
  simp only [A045462, Nat.add_sub_cancel]

end A045462

/-! ## A045462.P15173733578460462946

`p?[ogf((1+3x+3x^2+3x^3+4x^4)/(1-x-x^3+x^4))]`
-/

namespace A045462.P15173733578460462946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 3, 3, 4] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045462.P15173733578460462946

namespace A045462

/-- `p?[ogf((1+3x+3x^2+3x^3+4x^4)/(1-x-x^3+x^4))]` -/
def P15173733578460462946.Spec : Prop :=
  ∀ n, P15173733578460462946.a n = A045462 (n + 1)

end A045462

/-! ## A045462.P12998415116048902357

`A000027(p?[round(7*n/2)])`
-/

namespace A045462.P12998415116048902357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (7 * ((n : ℚ) / 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A045462.P12998415116048902357

namespace A045462

/-- `A000027(p?[round(7*n/2)])` -/
def P12998415116048902357.Spec : Prop :=
  ∀ n, P12998415116048902357.a n = A045462 (n + 1)

end A045462

/-! ## A045462.P10363976678244677189

`∩[A033207(n+1), A045421(n+1)]`
-/

namespace A045462.P10363976678244677189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045462.P10363976678244677189

namespace A045462

/-- `∩[A033207(n+1), A045421(n+1)]` -/
def P10363976678244677189.Spec : Prop :=
  ∀ n, (P10363976678244677189.a n : ℤ) = A045462 (n + 1)

end A045462

/-! ## A045462.P15974555146915940430

`∩[A033207(n+1), A045441(n+1)]`
-/

namespace A045462.P15974555146915940430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045462.P15974555146915940430

namespace A045462

/-- `∩[A033207(n+1), A045441(n+1)]` -/
def P15974555146915940430.Spec : Prop :=
  ∀ n, (P15974555146915940430.a n : ℤ) = A045462 (n + 1)

end A045462

/-! ## A045462.P15674389180892294644

`∩[A033207(n+1), A045460(n+1)]`
-/

namespace A045462.P15674389180892294644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045462.P15674389180892294644

namespace A045462

/-- `∩[A033207(n+1), A045460(n+1)]` -/
def P15674389180892294644.Spec : Prop :=
  ∀ n, (P15674389180892294644.a n : ℤ) = A045462 (n + 1)

end A045462

/-! ## A045462.P2602519863804740841

`∩[A033207(n+1), A045418(n+1)]`
-/

namespace A045462.P2602519863804740841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045462.P2602519863804740841

namespace A045462

/-- `∩[A033207(n+1), A045418(n+1)]` -/
def P2602519863804740841.Spec : Prop :=
  ∀ n, (P2602519863804740841.a n : ℤ) = A045462 (n + 1)

end A045462

/-! ## A045462.P240466279015588788

`∩[A045461(n+1), A045325(n+1)]`
-/

namespace A045462.P240466279015588788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045462.P240466279015588788

namespace A045462

/-- `∩[A045461(n+1), A045325(n+1)]` -/
def P240466279015588788.Spec : Prop :=
  ∀ n, (P240466279015588788.a n : ℤ) = A045462 (n + 1)

end A045462

/-! ## A045462.P3901101904925259329

`∩[A045325(n+1), A045440(n+1)]`
-/

namespace A045462.P3901101904925259329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045462.P3901101904925259329

namespace A045462

/-- `∩[A045325(n+1), A045440(n+1)]` -/
def P3901101904925259329.Spec : Prop :=
  ∀ n, (P3901101904925259329.a n : ℤ) = A045462 (n + 1)

end A045462

/-! ## A045462.P1320819055296509987

`∩[A033207(n+1), A045439(n+1)]`
-/

namespace A045462.P1320819055296509987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045462.P1320819055296509987

namespace A045462

/-- `∩[A033207(n+1), A045439(n+1)]` -/
def P1320819055296509987.Spec : Prop :=
  ∀ n, (P1320819055296509987.a n : ℤ) = A045462 (n + 1)

end A045462

/-! ## A045462.P1308336836381118152

`∩[A045325(n+1), A045439(n+1)]`
-/

namespace A045462.P1308336836381118152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045462.P1308336836381118152

namespace A045462

/-- `∩[A045325(n+1), A045439(n+1)]` -/
def P1308336836381118152.Spec : Prop :=
  ∀ n, (P1308336836381118152.a n : ℤ) = A045462 (n + 1)

end A045462

/-! ## A045462.P2790121140216560409

`∩[A033207(n+1), A045397(n+1)]`
-/

namespace A045462.P2790121140216560409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045462.P2790121140216560409

namespace A045462

/-- `∩[A033207(n+1), A045397(n+1)]` -/
def P2790121140216560409.Spec : Prop :=
  ∀ n, (P2790121140216560409.a n : ℤ) = A045462 (n + 1)

end A045462

/-! ## A045462.P9036815600995727263

`∩[A045397(n+1), A045370(n+1)]`
-/

namespace A045462.P9036815600995727263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045462.P9036815600995727263

namespace A045462

/-- `∩[A045397(n+1), A045370(n+1)]` -/
def P9036815600995727263.Spec : Prop :=
  ∀ n, (P9036815600995727263.a n : ℤ) = A045462 (n + 1)

end A045462

/-! ## A045462.P11785209177592885017

`∩[A045397(n+1), A045459(n+1)]`
-/

namespace A045462.P11785209177592885017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045462.P11785209177592885017

namespace A045462

/-- `∩[A045397(n+1), A045459(n+1)]` -/
def P11785209177592885017.Spec : Prop :=
  ∀ n, (P11785209177592885017.a n : ℤ) = A045462 (n + 1)

end A045462

/-! ## A045462.P14505724828970089223

`∩[A045369(n+1), A045397(n+1)]`
-/

namespace A045462.P14505724828970089223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045462.P14505724828970089223

namespace A045462

/-- `∩[A045369(n+1), A045397(n+1)]` -/
def P14505724828970089223.Spec : Prop :=
  ∀ n, (P14505724828970089223.a n : ℤ) = A045462 (n + 1)

end A045462

/-! ## A045462.P12690676546232899820

`∩[A045324(n+1), A045439(n+1)]`
-/

namespace A045462.P12690676546232899820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045462.P12690676546232899820

namespace A045462

/-- `∩[A045324(n+1), A045439(n+1)]` -/
def P12690676546232899820.Spec : Prop :=
  ∀ n, (P12690676546232899820.a n : ℤ) = A045462 (n + 1)

end A045462

/-! ## A045462.P4731605024532570192

`∩[A045324(n+1), A045441(n+1)]`
-/

namespace A045462.P4731605024532570192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045462.P4731605024532570192

namespace A045462

/-- `∩[A045324(n+1), A045441(n+1)]` -/
def P4731605024532570192.Spec : Prop :=
  ∀ n, (P4731605024532570192.a n : ℤ) = A045462 (n + 1)

end A045462

/-! ## A045462.P5545813053691936140

`∩[A045350(n+1), A045418(n+1)]`
-/

namespace A045462.P5545813053691936140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045462.P5545813053691936140

namespace A045462

/-- `∩[A045350(n+1), A045418(n+1)]` -/
def P5545813053691936140.Spec : Prop :=
  ∀ n, (P5545813053691936140.a n : ℤ) = A045462 (n + 1)

end A045462

/-! ## A045462.P10467732271191610653

`∩[A045325(n+1), A045438(n+1)]`
-/

namespace A045462.P10467732271191610653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045462.P10467732271191610653

namespace A045462

/-- `∩[A045325(n+1), A045438(n+1)]` -/
def P10467732271191610653.Spec : Prop :=
  ∀ n, (P10467732271191610653.a n : ℤ) = A045462 (n + 1)

end A045462

/-! ## A045462.P8153712649745658560

`∩[A045351(n+1), A045417(n+1)]`
-/

namespace A045462.P8153712649745658560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045462.P8153712649745658560

namespace A045462

/-- `∩[A045351(n+1), A045417(n+1)]` -/
def P8153712649745658560.Spec : Prop :=
  ∀ n, (P8153712649745658560.a n : ℤ) = A045462 (n + 1)

end A045462

/-!
# A045463: Primes congruent to {0, 1, 6} mod 7.

The programs for A045463, the canonical program `A045463.P5606766861568705092` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045463 has offset 1).

The definition of A045463 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045463.P5606766861568705092

`p?[7*n-a(n-1)]` with `a(0)=7, a(1)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045463

/-- `p?[7*n-a(n-1)]` -/
def P5606766861568705092.Spec : Prop :=
  ∀ n, P5606766861568705092.a n = A045463 (n + 1)

theorem P5606766861568705092.correct : P5606766861568705092.Spec := by
  intro n
  simp only [A045463, Nat.add_sub_cancel]

end A045463

/-! ## A045463.P8010368392892377280

`∪[A045464(n+1), A045465(n+1)]`
-/

namespace A045463.P8010368392892377280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045463.P8010368392892377280

namespace A045463

/-- `∪[A045464(n+1), A045465(n+1)]` -/
def P8010368392892377280.Spec : Prop :=
  ∀ n, (P8010368392892377280.a n : ℤ) = A045463 (n + 1)

end A045463

/-! ## A045463.P10590358496779229116

`p?[ceil(9*n/5)+1+n]`
-/

namespace A045463.P10590358496779229116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈9 * ((n : ℚ) / 5)⌉ + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045463.P10590358496779229116

namespace A045463

/-- `p?[ceil(9*n/5)+1+n]` -/
def P10590358496779229116.Spec : Prop :=
  ∀ n, P10590358496779229116.a n = A045463 (n + 1)

end A045463

/-! ## A045463.P5276659291950180420

`∩[A045376(n+1), A045422(n+1)]`
-/

namespace A045463.P5276659291950180420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045463.P5276659291950180420

namespace A045463

/-- `∩[A045376(n+1), A045422(n+1)]` -/
def P5276659291950180420.Spec : Prop :=
  ∀ n, (P5276659291950180420.a n : ℤ) = A045463 (n + 1)

end A045463

/-! ## A045463.P16106014531140404854

`∩[A045376(n+1), A045459(n+1)]`
-/

namespace A045463.P16106014531140404854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045463.P16106014531140404854

namespace A045463

/-- `∩[A045376(n+1), A045459(n+1)]` -/
def P16106014531140404854.Spec : Prop :=
  ∀ n, (P16106014531140404854.a n : ℤ) = A045463 (n + 1)

end A045463

/-! ## A045463.P14503283754551103500

`p?[(n+1)%7+2*n]`
-/

namespace A045463.P14503283754551103500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 7 + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045463.P14503283754551103500

namespace A045463

/-- `p?[(n+1)%7+2*n]` -/
def P14503283754551103500.Spec : Prop :=
  ∀ n, (P14503283754551103500.a n : ℤ) = A045463 (n + 1)

end A045463

/-! ## A045463.P15727462927085509196

`∩[A045369(n+1), A045422(n+1)]`
-/

namespace A045463.P15727462927085509196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045463.P15727462927085509196

namespace A045463

/-- `∩[A045369(n+1), A045422(n+1)]` -/
def P15727462927085509196.Spec : Prop :=
  ∀ n, (P15727462927085509196.a n : ℤ) = A045463 (n + 1)

end A045463

/-! ## A045463.P1112261294805696583

`∩[A045369(n+1), A045443(n+1)]`
-/

namespace A045463.P1112261294805696583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045463.P1112261294805696583

namespace A045463

/-- `∩[A045369(n+1), A045443(n+1)]` -/
def P1112261294805696583.Spec : Prop :=
  ∀ n, (P1112261294805696583.a n : ℤ) = A045463 (n + 1)

end A045463

/-! ## A045463.P9814086514506947113

`∩[A045376(n+1), A045417(n+1)]`
-/

namespace A045463.P9814086514506947113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045463.P9814086514506947113

namespace A045463

/-- `∩[A045376(n+1), A045417(n+1)]` -/
def P9814086514506947113.Spec : Prop :=
  ∀ n, (P9814086514506947113.a n : ℤ) = A045463 (n + 1)

end A045463

/-! ## A045463.P9962454301735386347

`∩[A045376(n+1), A045438(n+1)]`
-/

namespace A045463.P9962454301735386347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045463.P9962454301735386347

namespace A045463

/-- `∩[A045376(n+1), A045438(n+1)]` -/
def P9962454301735386347.Spec : Prop :=
  ∀ n, (P9962454301735386347.a n : ℤ) = A045463 (n + 1)

end A045463

/-! ## A045463.P641080032011390320

`∩[A045422(n+1), A045438(n+1)]`
-/

namespace A045463.P641080032011390320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045463.P641080032011390320

namespace A045463

/-- `∩[A045422(n+1), A045438(n+1)]` -/
def P641080032011390320.Spec : Prop :=
  ∀ n, (P641080032011390320.a n : ℤ) = A045463 (n + 1)

end A045463

/-! ## A045463.P15009986202986109587

`∩[A045328(n+1), A045438(n+1)]`
-/

namespace A045463.P15009986202986109587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045463.P15009986202986109587

namespace A045463

/-- `∩[A045328(n+1), A045438(n+1)]` -/
def P15009986202986109587.Spec : Prop :=
  ∀ n, (P15009986202986109587.a n : ℤ) = A045463 (n + 1)

end A045463

/-! ## A045463.P7539972116087030420

`∩[A045353(n+1), A045417(n+1)]`
-/

namespace A045463.P7539972116087030420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045463.P7539972116087030420

namespace A045463

/-- `∩[A045353(n+1), A045417(n+1)]` -/
def P7539972116087030420.Spec : Prop :=
  ∀ n, (P7539972116087030420.a n : ℤ) = A045463 (n + 1)

end A045463

/-! ## A045463.P1150390592249643615

`∩[A045328(n+1), A045443(n+1)]`
-/

namespace A045463.P1150390592249643615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045463.P1150390592249643615

namespace A045463

/-- `∩[A045328(n+1), A045443(n+1)]` -/
def P1150390592249643615.Spec : Prop :=
  ∀ n, (P1150390592249643615.a n : ℤ) = A045463 (n + 1)

end A045463

/-! ## A045463.P12527413832503751511

`∩[A045353(n+1), A045422(n+1)]`
-/

namespace A045463.P12527413832503751511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045463.P12527413832503751511

namespace A045463

/-- `∩[A045353(n+1), A045422(n+1)]` -/
def P12527413832503751511.Spec : Prop :=
  ∀ n, (P12527413832503751511.a n : ℤ) = A045463 (n + 1)

end A045463

/-! ## A045463.P6427205019347236275

`∩[A045328(n+1), A045459(n+1)]`
-/

namespace A045463.P6427205019347236275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045463.P6427205019347236275

namespace A045463

/-- `∩[A045328(n+1), A045459(n+1)]` -/
def P6427205019347236275.Spec : Prop :=
  ∀ n, (P6427205019347236275.a n : ℤ) = A045463 (n + 1)

end A045463

/-! ## A045463.P8753851646144283794

`∩[A045353(n+1), A045459(n+1)]`
-/

namespace A045463.P8753851646144283794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045463.P8753851646144283794

namespace A045463

/-- `∩[A045353(n+1), A045459(n+1)]` -/
def P8753851646144283794.Spec : Prop :=
  ∀ n, (P8753851646144283794.a n : ℤ) = A045463 (n + 1)

end A045463

/-! ## A045463.P3212183076855502297

`∩[A045369(n+1), A045398(n+1)]`
-/

namespace A045463.P3212183076855502297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045463.P3212183076855502297

namespace A045463

/-- `∩[A045369(n+1), A045398(n+1)]` -/
def P3212183076855502297.Spec : Prop :=
  ∀ n, (P3212183076855502297.a n : ℤ) = A045463 (n + 1)

end A045463

/-! ## A045463.P8562767504822251074

`∩[A045376(n+1), A045398(n+1)]`
-/

namespace A045463.P8562767504822251074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045463.P8562767504822251074

namespace A045463

/-- `∩[A045376(n+1), A045398(n+1)]` -/
def P8562767504822251074.Spec : Prop :=
  ∀ n, (P8562767504822251074.a n : ℤ) = A045463 (n + 1)

end A045463

/-! ## A045463.P6819599205580798958

`∩[A045346(n+1), A045422(n+1)]`
-/

namespace A045463.P6819599205580798958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045463.P6819599205580798958

namespace A045463

/-- `∩[A045346(n+1), A045422(n+1)]` -/
def P6819599205580798958.Spec : Prop :=
  ∀ n, (P6819599205580798958.a n : ℤ) = A045463 (n + 1)

end A045463

/-!
# A045464: Primes congruent to {0, 6} mod 7.

The programs for A045464, the canonical program `A045464.P2558349737237634099` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045464 has offset 1).

The definition of A045464 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9444 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045464.P2558349737237634099

`p?[or(1, 7*n-1)]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045464

/-- `p?[or(1, 7*n-1)]` -/
def P2558349737237634099.Spec : Prop :=
  ∀ n, P2558349737237634099.a n = A045464 (n + 1)

theorem P2558349737237634099.correct : P2558349737237634099.Spec := by
  intro n
  simp only [A045464, Nat.add_sub_cancel]

end A045464

/-! ## A045464.P7832709246210439959

`p?[a(n-1)+7]` with `a(0)=7, a(1)=6`
-/

namespace A045464.P7832709246210439959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 6] fun n f1 =>
  f1 (n - 1) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045464.P7832709246210439959

namespace A045464

/-- `p?[a(n-1)+7]` -/
def P7832709246210439959.Spec : Prop :=
  ∀ n, (P7832709246210439959.a n : ℤ) = A045464 (n + 1)

end A045464

/-! ## A045464.P15384272771427787570

`p?[ogf((7-8x+8x^2)/(1-2x+x^2))]`
-/

namespace A045464.P15384272771427787570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, -8, 8] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045464.P15384272771427787570

namespace A045464

/-- `p?[ogf((7-8x+8x^2)/(1-2x+x^2))]` -/
def P15384272771427787570.Spec : Prop :=
  ∀ n, P15384272771427787570.a n = A045464 (n + 1)

end A045464

/-! ## A045464.P3632826853960414854

`p?[7*(n+1)-n%2]`
-/

namespace A045464.P3632826853960414854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * (n + 1) : ℤ) - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045464.P3632826853960414854

namespace A045464

/-- `p?[7*(n+1)-n%2]` -/
def P3632826853960414854.Spec : Prop :=
  ∀ n, P3632826853960414854.a n = A045464 (n + 1)

end A045464

/-! ## A045464.P8092457632658609092

`∩[A045377(n+1), A045463(n+1)]`
-/

namespace A045464.P8092457632658609092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045463 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045464.P8092457632658609092

namespace A045464

/-- `∩[A045377(n+1), A045463(n+1)]` -/
def P8092457632658609092.Spec : Prop :=
  ∀ n, (P8092457632658609092.a n : ℤ) = A045464 (n + 1)

end A045464

/-! ## A045464.P7074224744276731767

`∩[A045377(n+1), A045460(n+1)]`
-/

namespace A045464.P7074224744276731767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045464.P7074224744276731767

namespace A045464

/-- `∩[A045377(n+1), A045460(n+1)]` -/
def P7074224744276731767.Spec : Prop :=
  ∀ n, (P7074224744276731767.a n : ℤ) = A045464 (n + 1)

end A045464

/-! ## A045464.P10341650935938897305

`∩[A045329(n+1), A045444(n+1)]`
-/

namespace A045464.P10341650935938897305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045464.P10341650935938897305

namespace A045464

/-- `∩[A045329(n+1), A045444(n+1)]` -/
def P10341650935938897305.Spec : Prop :=
  ∀ n, (P10341650935938897305.a n : ℤ) = A045464 (n + 1)

end A045464

/-! ## A045464.P6061293973280705256

`∩[A045463(n+1), A045329(n+1)]`
-/

namespace A045464.P6061293973280705256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045463 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045464.P6061293973280705256

namespace A045464

/-- `∩[A045463(n+1), A045329(n+1)]` -/
def P6061293973280705256.Spec : Prop :=
  ∀ n, (P6061293973280705256.a n : ℤ) = A045464 (n + 1)

end A045464

/-! ## A045464.P7279858306200217764

`∩[A045329(n+1), A045443(n+1)]`
-/

namespace A045464.P7279858306200217764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045464.P7279858306200217764

namespace A045464

/-- `∩[A045329(n+1), A045443(n+1)]` -/
def P7279858306200217764.Spec : Prop :=
  ∀ n, (P7279858306200217764.a n : ℤ) = A045464 (n + 1)

end A045464

/-! ## A045464.P16814111903260949601

`∩[A045354(n+1), A045418(n+1)]`
-/

namespace A045464.P16814111903260949601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045464.P16814111903260949601

namespace A045464

/-- `∩[A045354(n+1), A045418(n+1)]` -/
def P16814111903260949601.Spec : Prop :=
  ∀ n, (P16814111903260949601.a n : ℤ) = A045464 (n + 1)

end A045464

/-! ## A045464.P2285655461768170375

`∩[A045459(n+1), A045354(n+1)]`
-/

namespace A045464.P2285655461768170375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045464.P2285655461768170375

namespace A045464

/-- `∩[A045459(n+1), A045354(n+1)]` -/
def P2285655461768170375.Spec : Prop :=
  ∀ n, (P2285655461768170375.a n : ℤ) = A045464 (n + 1)

end A045464

/-! ## A045464.P1712633492878398326

`∩[A045370(n+1), A045399(n+1)]`
-/

namespace A045464.P1712633492878398326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045464.P1712633492878398326

namespace A045464

/-- `∩[A045370(n+1), A045399(n+1)]` -/
def P1712633492878398326.Spec : Prop :=
  ∀ n, (P1712633492878398326.a n : ℤ) = A045464 (n + 1)

end A045464

/-! ## A045464.P3311428664029752611

`∩[A045329(n+1), A045439(n+1)]`
-/

namespace A045464.P3311428664029752611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045464.P3311428664029752611

namespace A045464

/-- `∩[A045329(n+1), A045439(n+1)]` -/
def P3311428664029752611.Spec : Prop :=
  ∀ n, (P3311428664029752611.a n : ℤ) = A045464 (n + 1)

end A045464

/-! ## A045464.P5331461529763690529

`∩[A045369(n+1), A045399(n+1)]`
-/

namespace A045464.P5331461529763690529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045464.P5331461529763690529

namespace A045464

/-- `∩[A045369(n+1), A045399(n+1)]` -/
def P5331461529763690529.Spec : Prop :=
  ∀ n, (P5331461529763690529.a n : ℤ) = A045464 (n + 1)

end A045464

/-! ## A045464.P16746006225258343475

`∩[A045329(n+1), A045438(n+1)]`
-/

namespace A045464.P16746006225258343475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045464.P16746006225258343475

namespace A045464

/-- `∩[A045329(n+1), A045438(n+1)]` -/
def P16746006225258343475.Spec : Prop :=
  ∀ n, (P16746006225258343475.a n : ℤ) = A045464 (n + 1)

end A045464

/-! ## A045464.P15245380536904985109

`∩[A045354(n+1), A045417(n+1)]`
-/

namespace A045464.P15245380536904985109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045464.P15245380536904985109

namespace A045464

/-- `∩[A045354(n+1), A045417(n+1)]` -/
def P15245380536904985109.Spec : Prop :=
  ∀ n, (P15245380536904985109.a n : ℤ) = A045464 (n + 1)

end A045464

/-! ## A045464.P14347457802339340925

`∩[A045417(n+1), A045377(n+1)]`
-/

namespace A045464.P14347457802339340925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045464.P14347457802339340925

namespace A045464

/-- `∩[A045417(n+1), A045377(n+1)]` -/
def P14347457802339340925.Spec : Prop :=
  ∀ n, (P14347457802339340925.a n : ℤ) = A045464 (n + 1)

end A045464

/-! ## A045464.P10428068394681831052

`∩[A045322(n+1), A045443(n+1)]`
-/

namespace A045464.P10428068394681831052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045464.P10428068394681831052

namespace A045464

/-- `∩[A045322(n+1), A045443(n+1)]` -/
def P10428068394681831052.Spec : Prop :=
  ∀ n, (P10428068394681831052.a n : ℤ) = A045464 (n + 1)

end A045464

/-! ## A045464.P8447801135224024687

`∩[A045322(n+1), A045444(n+1)]`
-/

namespace A045464.P8447801135224024687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045464.P8447801135224024687

namespace A045464

/-- `∩[A045322(n+1), A045444(n+1)]` -/
def P8447801135224024687.Spec : Prop :=
  ∀ n, (P8447801135224024687.a n : ℤ) = A045464 (n + 1)

end A045464

/-! ## A045464.P10084065019159521737

`∩[A045328(n+1), A045439(n+1)]`
-/

namespace A045464.P10084065019159521737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045464.P10084065019159521737

namespace A045464

/-- `∩[A045328(n+1), A045439(n+1)]` -/
def P10084065019159521737.Spec : Prop :=
  ∀ n, (P10084065019159521737.a n : ℤ) = A045464 (n + 1)

end A045464

/-!
# A045465: Primes congruent to {0, 1} mod 7.

The programs for A045465, the canonical program `A045465.P8796123061652587765` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045465 has offset 1).

The definition of A045465 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9406 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045465.P17007550710727349931

`p?[ogf((7+x+6x^2)/(1-2x+x^2))]`
-/

namespace A045465.P17007550710727349931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 1, 6] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045465.P17007550710727349931

namespace A045465

/-- `p?[ogf((7+x+6x^2)/(1-2x+x^2))]` -/
def P17007550710727349931.Spec : Prop :=
  ∀ n, P17007550710727349931.a n = A045465 (n + 1)

end A045465

/-! ## A045465.P8796123061652587765

`p?[or(1, 7*n)]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045465

/-- `p?[or(1, 7*n)]` -/
def P8796123061652587765.Spec : Prop :=
  ∀ n, (P8796123061652587765.a n : ℤ) = A045465 (n + 1)

theorem P8796123061652587765.correct : P8796123061652587765.Spec := by
  intro n
  simp only [A045465, Nat.add_sub_cancel]

end A045465

/-! ## A045465.P3604670752328759833

`p?[floor(atan(n)+7*n)]`
-/

namespace A045465.P3604670752328759833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n : ℝ) + (7 * n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045465.P3604670752328759833

namespace A045465

/-- `p?[floor(atan(n)+7*n)]` -/
def P3604670752328759833.Spec : Prop :=
  ∀ n, P3604670752328759833.a n = A045465 (n + 1)

end A045465

/-! ## A045465.P4648892751547639152

`p?[a(n-1)+7]` with `a(0)=7, a(1)=1`
-/

namespace A045465.P4648892751547639152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 1] fun n f1 =>
  f1 (n - 1) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045465.P4648892751547639152

namespace A045465

/-- `p?[a(n-1)+7]` -/
def P4648892751547639152.Spec : Prop :=
  ∀ n, (P4648892751547639152.a n : ℤ) = A045465 (n + 1)

end A045465

/-! ## A045465.P8761116659538341240

`p?[abs(3-7*n)+4]`
-/

namespace A045465.P8761116659538341240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - (7 * n : ℤ)| + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045465.P8761116659538341240

namespace A045465

/-- `p?[abs(3-7*n)+4]` -/
def P8761116659538341240.Spec : Prop :=
  ∀ n, P8761116659538341240.a n = A045465 (n + 1)

end A045465

/-! ## A045465.P14363589942511627701

`∩[A045332(n+1), A045446(n+1)]`
-/

namespace A045465.P14363589942511627701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045465.P14363589942511627701

namespace A045465

/-- `∩[A045332(n+1), A045446(n+1)]` -/
def P14363589942511627701.Spec : Prop :=
  ∀ n, (P14363589942511627701.a n : ℤ) = A045465 (n + 1)

end A045465

/-! ## A045465.P11224214747998791827

`∩[A033207(n+1), A045422(n+1)]`
-/

namespace A045465.P11224214747998791827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045465.P11224214747998791827

namespace A045465

/-- `∩[A033207(n+1), A045422(n+1)]` -/
def P11224214747998791827.Spec : Prop :=
  ∀ n, (P11224214747998791827.a n : ℤ) = A045465 (n + 1)

end A045465

/-! ## A045465.P1182193825093101940

`∩[A033207(n+1), A045424(n+1)]`
-/

namespace A045465.P1182193825093101940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045465.P1182193825093101940

namespace A045465

/-- `∩[A033207(n+1), A045424(n+1)]` -/
def P1182193825093101940.Spec : Prop :=
  ∀ n, (P1182193825093101940.a n : ℤ) = A045465 (n + 1)

end A045465

/-! ## A045465.P17544463495149234334

`∩[A033207(n+1), A045446(n+1)]`
-/

namespace A045465.P17544463495149234334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045465.P17544463495149234334

namespace A045465

/-- `∩[A033207(n+1), A045446(n+1)]` -/
def P17544463495149234334.Spec : Prop :=
  ∀ n, (P17544463495149234334.a n : ℤ) = A045465 (n + 1)

end A045465

/-! ## A045465.P3441094696428105145

`∩[A033207(n+1), A045463(n+1)]`
-/

namespace A045465.P3441094696428105145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045463 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045465.P3441094696428105145

namespace A045465

/-- `∩[A033207(n+1), A045463(n+1)]` -/
def P3441094696428105145.Spec : Prop :=
  ∀ n, (P3441094696428105145.a n : ℤ) = A045465 (n + 1)

end A045465

/-! ## A045465.P943032584983187644

`∩[A033207(n+1), A045443(n+1)]`
-/

namespace A045465.P943032584983187644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045465.P943032584983187644

namespace A045465

/-- `∩[A033207(n+1), A045443(n+1)]` -/
def P943032584983187644.Spec : Prop :=
  ∀ n, (P943032584983187644.a n : ℤ) = A045465 (n + 1)

end A045465

/-! ## A045465.P17373301568436158098

`∩[A045332(n+1), A045443(n+1)]`
-/

namespace A045465.P17373301568436158098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045465.P17373301568436158098

namespace A045465

/-- `∩[A045332(n+1), A045443(n+1)]` -/
def P17373301568436158098.Spec : Prop :=
  ∀ n, (P17373301568436158098.a n : ℤ) = A045465 (n + 1)

end A045465

/-! ## A045465.P103301405975900715

`∩[A033207(n+1), A045400(n+1)]`
-/

namespace A045465.P103301405975900715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045465.P103301405975900715

namespace A045465

/-- `∩[A033207(n+1), A045400(n+1)]` -/
def P103301405975900715.Spec : Prop :=
  ∀ n, (P103301405975900715.a n : ℤ) = A045465 (n + 1)

end A045465

/-! ## A045465.P328972577897942879

`∩[A045459(n+1), A045400(n+1)]`
-/

namespace A045465.P328972577897942879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045465.P328972577897942879

namespace A045465

/-- `∩[A045459(n+1), A045400(n+1)]` -/
def P328972577897942879.Spec : Prop :=
  ∀ n, (P328972577897942879.a n : ℤ) = A045465 (n + 1)

end A045465

/-! ## A045465.P4546931133012027268

`∩[A045332(n+1), A045440(n+1)]`
-/

namespace A045465.P4546931133012027268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045465.P4546931133012027268

namespace A045465

/-- `∩[A045332(n+1), A045440(n+1)]` -/
def P4546931133012027268.Spec : Prop :=
  ∀ n, (P4546931133012027268.a n : ℤ) = A045465 (n + 1)

end A045465

/-! ## A045465.P15204191910708596641

`∩[A045324(n+1), A045443(n+1)]`
-/

namespace A045465.P15204191910708596641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045465.P15204191910708596641

namespace A045465

/-- `∩[A045324(n+1), A045443(n+1)]` -/
def P15204191910708596641.Spec : Prop :=
  ∀ n, (P15204191910708596641.a n : ℤ) = A045465 (n + 1)

end A045465

/-! ## A045465.P17047337795448836599

`∩[A045369(n+1), A045400(n+1)]`
-/

namespace A045465.P17047337795448836599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045465.P17047337795448836599

namespace A045465

/-- `∩[A045369(n+1), A045400(n+1)]` -/
def P17047337795448836599.Spec : Prop :=
  ∀ n, (P17047337795448836599.a n : ℤ) = A045465 (n + 1)

end A045465

/-! ## A045465.P6186198434292849397

`∩[A045324(n+1), A045446(n+1)]`
-/

namespace A045465.P6186198434292849397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045465.P6186198434292849397

namespace A045465

/-- `∩[A045324(n+1), A045446(n+1)]` -/
def P6186198434292849397.Spec : Prop :=
  ∀ n, (P6186198434292849397.a n : ℤ) = A045465 (n + 1)

end A045465

/-! ## A045465.P15744476381295761639

`∩[A045463(n+1), A045324(n+1)]`
-/

namespace A045465.P15744476381295761639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045463 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045465.P15744476381295761639

namespace A045465

/-- `∩[A045463(n+1), A045324(n+1)]` -/
def P15744476381295761639.Spec : Prop :=
  ∀ n, (P15744476381295761639.a n : ℤ) = A045465 (n + 1)

end A045465

/-! ## A045465.P9703626290274907423

`∩[A045350(n+1), A045422(n+1)]`
-/

namespace A045465.P9703626290274907423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045465.P9703626290274907423

namespace A045465

/-- `∩[A045350(n+1), A045422(n+1)]` -/
def P9703626290274907423.Spec : Prop :=
  ∀ n, (P9703626290274907423.a n : ℤ) = A045465 (n + 1)

end A045465

/-!
# A045466: Primes congruent to {1, 4, 6} mod 7.

The programs for A045466, the canonical program `A045466.P829937196715883891` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045466 has offset 1).

The definition of A045466 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045466.P829937196715883891

`p?[floor((7*n+5)/3)]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045466

/-- `p?[floor((7*n+5)/3)]` -/
def P829937196715883891.Spec : Prop :=
  ∀ n, P829937196715883891.a n = A045466 (n + 1)

theorem P829937196715883891.correct : P829937196715883891.Spec := by
  intro n
  simp only [A045466, Nat.add_sub_cancel]

end A045466

/-! ## A045466.P11171822567973792612

`A045459(n+2)`
-/

namespace A045466.P11171822567973792612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045459 (n + 2)

end

end A045466.P11171822567973792612

namespace A045466

/-- `A045459(n+2)` -/
def P11171822567973792612.Spec : Prop :=
  ∀ n, P11171822567973792612.a n = A045466 (n + 1)

end A045466

/-! ## A045466.P58454806251640324

`∩[A045369(n+1), A045426(n+1)]`
-/

namespace A045466.P58454806251640324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045466.P58454806251640324

namespace A045466

/-- `∩[A045369(n+1), A045426(n+1)]` -/
def P58454806251640324.Spec : Prop :=
  ∀ n, (P58454806251640324.a n : ℤ) = A045466 (n + 1)

end A045466

/-! ## A045466.P12385522317640929241

`∩[A045384(n+1), A045426(n+1)]`
-/

namespace A045466.P12385522317640929241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045466.P12385522317640929241

namespace A045466

/-- `∩[A045384(n+1), A045426(n+1)]` -/
def P12385522317640929241.Spec : Prop :=
  ∀ n, (P12385522317640929241.a n : ℤ) = A045466 (n + 1)

end A045466

/-! ## A045466.P10229501417407976569

`∩[A045384(n+1), A045417(n+1)]`
-/

namespace A045466.P10229501417407976569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045466.P10229501417407976569

namespace A045466

/-- `∩[A045384(n+1), A045417(n+1)]` -/
def P10229501417407976569.Spec : Prop :=
  ∀ n, (P10229501417407976569.a n : ℤ) = A045466 (n + 1)

end A045466

/-! ## A045466.P10665057390950727435

`∩[A045369(n+1), A045448(n+1)]`
-/

namespace A045466.P10665057390950727435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045466.P10665057390950727435

namespace A045466

/-- `∩[A045369(n+1), A045448(n+1)]` -/
def P10665057390950727435.Spec : Prop :=
  ∀ n, (P10665057390950727435.a n : ℤ) = A045466 (n + 1)

end A045466

/-! ## A045466.P15582251187453540266

`∩[A045384(n+1), A045438(n+1)]`
-/

namespace A045466.P15582251187453540266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045466.P15582251187453540266

namespace A045466

/-- `∩[A045384(n+1), A045438(n+1)]` -/
def P15582251187453540266.Spec : Prop :=
  ∀ n, (P15582251187453540266.a n : ℤ) = A045466 (n + 1)

end A045466

/-! ## A045466.P8017398356080204054

`∩[A045384(n+1), A045448(n+1)]`
-/

namespace A045466.P8017398356080204054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045466.P8017398356080204054

namespace A045466

/-- `∩[A045384(n+1), A045448(n+1)]` -/
def P8017398356080204054.Spec : Prop :=
  ∀ n, (P8017398356080204054.a n : ℤ) = A045466 (n + 1)

end A045466

/-! ## A045466.P17728797761936786503

`∩[A045426(n+1), A045438(n+1)]`
-/

namespace A045466.P17728797761936786503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045426 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045466.P17728797761936786503

namespace A045466

/-- `∩[A045426(n+1), A045438(n+1)]` -/
def P17728797761936786503.Spec : Prop :=
  ∀ n, (P17728797761936786503.a n : ℤ) = A045466 (n + 1)

end A045466

/-! ## A045466.P7746021347768149341

`∩[A045417(n+1), A045448(n+1)]`
-/

namespace A045466.P7746021347768149341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045466.P7746021347768149341

namespace A045466

/-- `∩[A045417(n+1), A045448(n+1)]` -/
def P7746021347768149341.Spec : Prop :=
  ∀ n, (P7746021347768149341.a n : ℤ) = A045466 (n + 1)

end A045466

/-! ## A045466.P10378510101173729260

`∩[A045346(n+1), A045426(n+1)]`
-/

namespace A045466.P10378510101173729260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045466.P10378510101173729260

namespace A045466

/-- `∩[A045346(n+1), A045426(n+1)]` -/
def P10378510101173729260.Spec : Prop :=
  ∀ n, (P10378510101173729260.a n : ℤ) = A045466 (n + 1)

end A045466

/-! ## A045466.P3993119492062021121

`∩[A045360(n+1), A045417(n+1)]`
-/

namespace A045466.P3993119492062021121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045466.P3993119492062021121

namespace A045466

/-- `∩[A045360(n+1), A045417(n+1)]` -/
def P3993119492062021121.Spec : Prop :=
  ∀ n, (P3993119492062021121.a n : ℤ) = A045466 (n + 1)

end A045466

/-! ## A045466.P12463323272536365837

`∩[A045360(n+1), A045426(n+1)]`
-/

namespace A045466.P12463323272536365837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045466.P12463323272536365837

namespace A045466

/-- `∩[A045360(n+1), A045426(n+1)]` -/
def P12463323272536365837.Spec : Prop :=
  ∀ n, (P12463323272536365837.a n : ℤ) = A045466 (n + 1)

end A045466

/-! ## A045466.P3590510832990962495

`∩[A045334(n+1), A045438(n+1)]`
-/

namespace A045466.P3590510832990962495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045466.P3590510832990962495

namespace A045466

/-- `∩[A045334(n+1), A045438(n+1)]` -/
def P3590510832990962495.Spec : Prop :=
  ∀ n, (P3590510832990962495.a n : ℤ) = A045466 (n + 1)

end A045466

/-! ## A045466.P2770626622168726048

`∩[A045334(n+1), A045448(n+1)]`
-/

namespace A045466.P2770626622168726048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045466.P2770626622168726048

namespace A045466

/-- `∩[A045334(n+1), A045448(n+1)]` -/
def P2770626622168726048.Spec : Prop :=
  ∀ n, (P2770626622168726048.a n : ℤ) = A045466 (n + 1)

end A045466

/-! ## A045466.P2547317173742762799

`∩[A045320(n+1), A045448(n+1)]`
-/

namespace A045466.P2547317173742762799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045466.P2547317173742762799

namespace A045466

/-- `∩[A045320(n+1), A045448(n+1)]` -/
def P2547317173742762799.Spec : Prop :=
  ∀ n, (P2547317173742762799.a n : ℤ) = A045466 (n + 1)

end A045466

/-! ## A045466.P2605868853327220339

`∩[A045369(n+1), A045402(n+1)]`
-/

namespace A045466.P2605868853327220339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045466.P2605868853327220339

namespace A045466

/-- `∩[A045369(n+1), A045402(n+1)]` -/
def P2605868853327220339.Spec : Prop :=
  ∀ n, (P2605868853327220339.a n : ℤ) = A045466 (n + 1)

end A045466

/-! ## A045466.P16897865603650392580

`∩[A045384(n+1), A045393(n+1)]`
-/

namespace A045466.P16897865603650392580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045466.P16897865603650392580

namespace A045466

/-- `∩[A045384(n+1), A045393(n+1)]` -/
def P16897865603650392580.Spec : Prop :=
  ∀ n, (P16897865603650392580.a n : ℤ) = A045466 (n + 1)

end A045466

/-! ## A045466.P16726296361639865231

`∩[A045384(n+1), A045402(n+1)]`
-/

namespace A045466.P16726296361639865231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045466.P16726296361639865231

namespace A045466

/-- `∩[A045384(n+1), A045402(n+1)]` -/
def P16726296361639865231.Spec : Prop :=
  ∀ n, (P16726296361639865231.a n : ℤ) = A045466 (n + 1)

end A045466

/-! ## A045466.P2694897085210512666

`∩[A000040(n+2), A112654(n+2)+n]`
-/

namespace A045466.P2694897085210512666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112654 (n + 2) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045466.P2694897085210512666

namespace A045466

/-- `∩[A000040(n+2), A112654(n+2)+n]` -/
def P2694897085210512666.Spec : Prop :=
  ∀ n, (P2694897085210512666.a n : ℤ) = A045466 (n + 1)

end A045466

/-!
# A045467: Primes congruent to {4, 6} mod 7.

The programs for A045467, the canonical program `A045467.P10591137358749887354` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045467 has offset 1).

The definition of A045467 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A045467.anchor (n : ℕ) (hn : 1 ≤ n) : A045467 n = (Nat.nth (fun p => p.Prime ∧ p % 7 ∈ ({4, 6} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A045.A045467`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A045467.P10591137358749887354

`p?[a(n-2)+7]` with `a(0)=4, a(1)=6`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045467

/-- `p?[a(n-2)+7]` -/
def P10591137358749887354.Spec : Prop :=
  ∀ n, (P10591137358749887354.a n : ℤ) = A045467 (n + 1)

theorem P10591137358749887354.correct : P10591137358749887354.Spec := by
  intro n
  simp only [A045467, Nat.add_sub_cancel]

end A045467

/-! ## A045467.P9283473853074150961

`A045460(n+2)`
-/

namespace A045467.P9283473853074150961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045460 (n + 2)

end

end A045467.P9283473853074150961

namespace A045467

/-- `A045460(n+2)` -/
def P9283473853074150961.Spec : Prop :=
  ∀ n, P9283473853074150961.a n = A045467 (n + 1)

end A045467

/-! ## A045467.P4172146505059454900

`∩[A045385(n+1), A045459(n+1)]`
-/

namespace A045467.P4172146505059454900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045467.P4172146505059454900

namespace A045467

/-- `∩[A045385(n+1), A045459(n+1)]` -/
def P4172146505059454900.Spec : Prop :=
  ∀ n, (P4172146505059454900.a n : ℤ) = A045467 (n + 1)

end A045467

/-! ## A045467.P2390822148103623298

`∩[A045385(n+1), A045466(n+1)]`
-/

namespace A045467.P2390822148103623298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045467.P2390822148103623298

namespace A045467

/-- `∩[A045385(n+1), A045466(n+1)]` -/
def P2390822148103623298.Spec : Prop :=
  ∀ n, (P2390822148103623298.a n : ℤ) = A045467 (n + 1)

end A045467

/-! ## A045467.P9337614203016094053

`∩[A045385(n+1), A045427(n+1)]`
-/

namespace A045467.P9337614203016094053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045467.P9337614203016094053

namespace A045467

/-- `∩[A045385(n+1), A045427(n+1)]` -/
def P9337614203016094053.Spec : Prop :=
  ∀ n, (P9337614203016094053.a n : ℤ) = A045467 (n + 1)

end A045467

/-! ## A045467.P5542312954630243483

`∩[A045427(n+1), A045459(n+1)]`
-/

namespace A045467.P5542312954630243483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045467.P5542312954630243483

namespace A045467

/-- `∩[A045427(n+1), A045459(n+1)]` -/
def P5542312954630243483.Spec : Prop :=
  ∀ n, (P5542312954630243483.a n : ℤ) = A045467 (n + 1)

end A045467

/-! ## A045467.P16688265760284666687

`∩[A045427(n+1), A045466(n+1)]`
-/

namespace A045467.P16688265760284666687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045467.P16688265760284666687

namespace A045467

/-- `∩[A045427(n+1), A045466(n+1)]` -/
def P16688265760284666687.Spec : Prop :=
  ∀ n, (P16688265760284666687.a n : ℤ) = A045467 (n + 1)

end A045467

/-! ## A045467.P16637917110574038814

`∩[A045384(n+1), A045427(n+1)]`
-/

namespace A045467.P16637917110574038814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045467.P16637917110574038814

namespace A045467

/-- `∩[A045384(n+1), A045427(n+1)]` -/
def P16637917110574038814.Spec : Prop :=
  ∀ n, (P16637917110574038814.a n : ℤ) = A045467 (n + 1)

end A045467

/-! ## A045467.P7654758322843220618

`∩[A045449(n+1), A045384(n+1)]`
-/

namespace A045467.P7654758322843220618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045467.P7654758322843220618

namespace A045467

/-- `∩[A045449(n+1), A045384(n+1)]` -/
def P7654758322843220618.Spec : Prop :=
  ∀ n, (P7654758322843220618.a n : ℤ) = A045467 (n + 1)

end A045467

/-! ## A045467.P14547939448694305931

`∩[A045369(n+1), A045427(n+1)]`
-/

namespace A045467.P14547939448694305931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045467.P14547939448694305931

namespace A045467

/-- `∩[A045369(n+1), A045427(n+1)]` -/
def P14547939448694305931.Spec : Prop :=
  ∀ n, (P14547939448694305931.a n : ℤ) = A045467 (n + 1)

end A045467

/-! ## A045467.P2429291804268350713

`∩[A045335(n+1), A045438(n+1)]`
-/

namespace A045467.P2429291804268350713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045335 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045467.P2429291804268350713

namespace A045467

/-- `∩[A045335(n+1), A045438(n+1)]` -/
def P2429291804268350713.Spec : Prop :=
  ∀ n, (P2429291804268350713.a n : ℤ) = A045467 (n + 1)

end A045467

/-! ## A045467.P2679402217263169267

`∩[A045335(n+1), A045439(n+1)]`
-/

namespace A045467.P2679402217263169267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045335 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045467.P2679402217263169267

namespace A045467

/-- `∩[A045335(n+1), A045439(n+1)]` -/
def P2679402217263169267.Spec : Prop :=
  ∀ n, (P2679402217263169267.a n : ℤ) = A045467 (n + 1)

end A045467

/-! ## A045467.P12005020936243432913

`∩[A045335(n+1), A045448(n+1)]`
-/

namespace A045467.P12005020936243432913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045335 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045467.P12005020936243432913

namespace A045467

/-- `∩[A045335(n+1), A045448(n+1)]` -/
def P12005020936243432913.Spec : Prop :=
  ∀ n, (P12005020936243432913.a n : ℤ) = A045467 (n + 1)

end A045467

/-! ## A045467.P9671602369957373980

`∩[A045335(n+1), A045449(n+1)]`
-/

namespace A045467.P9671602369957373980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045335 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045467.P9671602369957373980

namespace A045467

/-- `∩[A045335(n+1), A045449(n+1)]` -/
def P9671602369957373980.Spec : Prop :=
  ∀ n, (P9671602369957373980.a n : ℤ) = A045467 (n + 1)

end A045467

/-! ## A045467.P2547318424196855288

`∩[A045459(n+1), A045335(n+1)]`
-/

namespace A045467.P2547318424196855288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045467.P2547318424196855288

namespace A045467

/-- `∩[A045459(n+1), A045335(n+1)]` -/
def P2547318424196855288.Spec : Prop :=
  ∀ n, (P2547318424196855288.a n : ℤ) = A045467 (n + 1)

end A045467

/-! ## A045467.P11359401727065502668

`∩[A045322(n+1), A045448(n+1)]`
-/

namespace A045467.P11359401727065502668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045467.P11359401727065502668

namespace A045467

/-- `∩[A045322(n+1), A045448(n+1)]` -/
def P11359401727065502668.Spec : Prop :=
  ∀ n, (P11359401727065502668.a n : ℤ) = A045467 (n + 1)

end A045467

/-! ## A045467.P10372682304577312204

`∩[A045322(n+1), A045449(n+1)]`
-/

namespace A045467.P10372682304577312204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045467.P10372682304577312204

namespace A045467

/-- `∩[A045322(n+1), A045449(n+1)]` -/
def P10372682304577312204.Spec : Prop :=
  ∀ n, (P10372682304577312204.a n : ℤ) = A045467 (n + 1)

end A045467

/-! ## A045467.P4605903684618276906

`∩[A045347(n+1), A045426(n+1)]`
-/

namespace A045467.P4605903684618276906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045467.P4605903684618276906

namespace A045467

/-- `∩[A045347(n+1), A045426(n+1)]` -/
def P4605903684618276906.Spec : Prop :=
  ∀ n, (P4605903684618276906.a n : ℤ) = A045467 (n + 1)

end A045467

/-! ## A045467.P15428390363616185109

`∩[A045347(n+1), A045427(n+1)]`
-/

namespace A045467.P15428390363616185109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045467.P15428390363616185109

namespace A045467

/-- `∩[A045347(n+1), A045427(n+1)]` -/
def P15428390363616185109.Spec : Prop :=
  ∀ n, (P15428390363616185109.a n : ℤ) = A045467 (n + 1)

end A045467

/-! ## A045467.P12866506225186345317

`∩[A045361(n+1), A045417(n+1)]`
-/

namespace A045467.P12866506225186345317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045361 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045467.P12866506225186345317

namespace A045467

/-- `∩[A045361(n+1), A045417(n+1)]` -/
def P12866506225186345317.Spec : Prop :=
  ∀ n, (P12866506225186345317.a n : ℤ) = A045467 (n + 1)

end A045467

/-!
# A045468: Primes congruent to {1, 4} mod 5.

The programs for A045468, the canonical program `A045468.P1693416545018853606` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045468 has offset 1).

The definition of A045468 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A045468.anchor (n : ℕ) (hn : 1 ≤ n) : A045468 n = (Nat.nth (fun p => p.Prime ∧ p % 5 ∈ ({1, 4} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A045.A045468`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A045468.P1693416545018853606

`p?[a(n-2)+5]` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045468

/-- `p?[a(n-2)+5]` -/
def P1693416545018853606.Spec : Prop :=
  ∀ n, (P1693416545018853606.a n : ℤ) = A045468 (n + 1)

theorem P1693416545018853606.correct : P1693416545018853606.Spec := by
  intro n
  simp only [A045468, Nat.add_sub_cancel]

end A045468

/-! ## A045468.P8823613321976287362

`p?[5*n-a(n-1)]` with `a(0)=1`
-/

namespace A045468.P8823613321976287362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (5 * n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045468.P8823613321976287362

namespace A045468

/-- `p?[5*n-a(n-1)]` -/
def P8823613321976287362.Spec : Prop :=
  ∀ n, P8823613321976287362.a n = A045468 (n + 1)

end A045468

/-! ## A045468.P15160495476920536101

`∪[A030430(n+1), A030433(n+1)]`
-/

namespace A045468.P15160495476920536101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045468.P15160495476920536101

namespace A045468

/-- `∪[A030430(n+1), A030433(n+1)]` -/
def P15160495476920536101.Spec : Prop :=
  ∀ n, (P15160495476920536101.a n : ℤ) = A045468 (n + 1)

end A045468

/-! ## A045468.P14715143030191600603

`A038872(n+2)`
-/

namespace A045468.P14715143030191600603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 2)

end

end A045468.P14715143030191600603

namespace A045468

/-- `A038872(n+2)` -/
def P14715143030191600603.Spec : Prop :=
  ∀ n, P14715143030191600603.a n = A045468 (n + 1)

end A045468

/-! ## A045468.P7093126653071180421

`A064739(n+2)`
-/

namespace A045468.P7093126653071180421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 2)

end

end A045468.P7093126653071180421

namespace A045468

/-- `A064739(n+2)` -/
def P7093126653071180421.Spec : Prop :=
  ∀ n, P7093126653071180421.a n = A045468 (n + 1)

end A045468

/-! ## A045468.P16489173042407215259

`p?[A076518(n+3)]`
-/

namespace A045468.P16489173042407215259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076518 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045468.P16489173042407215259

namespace A045468

/-- `p?[A076518(n+3)]` -/
def P16489173042407215259.Spec : Prop :=
  ∀ n, P16489173042407215259.a n = A045468 (n + 1)

end A045468

/-! ## A045468.P9337948900810676753

`p?[A219612(n+1)]`
-/

namespace A045468.P9337948900810676753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045468.P9337948900810676753

namespace A045468

/-- `p?[A219612(n+1)]` -/
def P9337948900810676753.Spec : Prop :=
  ∀ n, P9337948900810676753.a n = A045468 (n + 1)

end A045468

/-! ## A045468.P5484477664141887356

`p?[A023173(n+3)]`
-/

namespace A045468.P5484477664141887356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023173 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045468.P5484477664141887356

namespace A045468

/-- `p?[A023173(n+3)]` -/
def P5484477664141887356.Spec : Prop :=
  ∀ n, P5484477664141887356.a n = A045468 (n + 1)

end A045468

/-! ## A045468.P6361577680033622345

`∩[A045405(n+1), A023173(n+1)]`
-/

namespace A045468.P6361577680033622345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045468.P6361577680033622345

namespace A045468

/-- `∩[A045405(n+1), A023173(n+1)]` -/
def P6361577680033622345.Spec : Prop :=
  ∀ n, (P6361577680033622345.a n : ℤ) = A045468 (n + 1)

end A045468

/-! ## A045468.P760370932872236292

`p?[A336403(n+1)]`
-/

namespace A045468.P760370932872236292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045468.P760370932872236292

namespace A045468

/-- `p?[A336403(n+1)]` -/
def P760370932872236292.Spec : Prop :=
  ∀ n, P760370932872236292.a n = A045468 (n + 1)

end A045468

/-! ## A045468.P17485080772537440226

`∩[A076518(n+1), A004139(n+1)]`
-/

namespace A045468.P17485080772537440226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045468.P17485080772537440226

namespace A045468

/-- `∩[A076518(n+1), A004139(n+1)]` -/
def P17485080772537440226.Spec : Prop :=
  ∀ n, (P17485080772537440226.a n : ℤ) = A045468 (n + 1)

end A045468

/-! ## A045468.P9915110118448605883

`A000040(A024707(n+1))`
-/

namespace A045468.P9915110118448605883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A024707 (n + 1)).toNat

end

end A045468.P9915110118448605883

namespace A045468

/-- `A000040(A024707(n+1))` -/
def P9915110118448605883.Spec : Prop :=
  ∀ n, P9915110118448605883.a n = A045468 (n + 1)

end A045468

/-! ## A045468.P8285747552987144057

`∩[A065091(n+1), A023173(n+1)]`
-/

namespace A045468.P8285747552987144057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045468.P8285747552987144057

namespace A045468

/-- `∩[A065091(n+1), A023173(n+1)]` -/
def P8285747552987144057.Spec : Prop :=
  ∀ n, (P8285747552987144057.a n : ℤ) = A045468 (n + 1)

end A045468

/-! ## A045468.P13989820698378093060

`∩[A000040(n+1), A219612(n+1)]`
-/

namespace A045468.P13989820698378093060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045468.P13989820698378093060

namespace A045468

/-- `∩[A000040(n+1), A219612(n+1)]` -/
def P13989820698378093060.Spec : Prop :=
  ∀ n, (P13989820698378093060.a n : ℤ) = A045468 (n + 1)

end A045468

/-! ## A045468.P17887210676040180920

`∩[A000040(n+1), A336403(n+1)]`
-/

namespace A045468.P17887210676040180920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045468.P17887210676040180920

namespace A045468

/-- `∩[A000040(n+1), A336403(n+1)]` -/
def P17887210676040180920.Spec : Prop :=
  ∀ n, (P17887210676040180920.a n : ℤ) = A045468 (n + 1)

end A045468

/-! ## A045468.P7977480737587577077

`filter[A219612(n+1), A010051(#)]`
-/

namespace A045468.P7977480737587577077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A045468.P7977480737587577077

namespace A045468

/-- `filter[A219612(n+1), A010051(#)]` -/
def P7977480737587577077.Spec : Prop :=
  ∀ n, P7977480737587577077.a n = A045468 (n + 1)

end A045468

/-! ## A045468.P14749674109475848156

`filter[A336403(n+1), A010051(#)]`
-/

namespace A045468.P14749674109475848156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A045468.P14749674109475848156

namespace A045468

/-- `filter[A336403(n+1), A010051(#)]` -/
def P14749674109475848156.Spec : Prop :=
  ∀ n, P14749674109475848156.a n = A045468 (n + 1)

end A045468

/-! ## A045468.P13139297197521755468

`filter[A023173(n+1), A358770(#)]`
-/

namespace A045468.P13139297197521755468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358770 (f1 j).toNat = 1) n)

end

end A045468.P13139297197521755468

namespace A045468

/-- `filter[A023173(n+1), A358770(#)]` -/
def P13139297197521755468.Spec : Prop :=
  ∀ n, P13139297197521755468.a n = A045468 (n + 1)

end A045468

/-! ## A045468.P10615000495964543720

`filter[A076518(n+1), A358770(#)]`
-/

namespace A045468.P10615000495964543720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076518 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358770 (f1 j).toNat = 1) n)

end

end A045468.P10615000495964543720

namespace A045468

/-- `filter[A076518(n+1), A358770(#)]` -/
def P10615000495964543720.Spec : Prop :=
  ∀ n, P10615000495964543720.a n = A045468 (n + 1)

end A045468

/-! ## A045468.P4009275421097450673

`filter[A336403(n+1), A358751(#)]`
-/

namespace A045468.P4009275421097450673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j).toNat = 1) n)

end

end A045468.P4009275421097450673

namespace A045468

/-- `filter[A336403(n+1), A358751(#)]` -/
def P4009275421097450673.Spec : Prop :=
  ∀ n, P4009275421097450673.a n = A045468 (n + 1)

end A045468

/-!
# A045469: Primes congruent to {1, 4} mod 7.

The programs for A045469, the canonical program `A045469.P13696013426105038328` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045469 has offset 1).

The definition of A045469 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045469.P13696013426105038328

`A045461(n+2)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A045469

/-- `A045461(n+2)` -/
def P13696013426105038328.Spec : Prop :=
  ∀ n, P13696013426105038328.a n = A045469 (n + 1)

theorem P13696013426105038328.correct : P13696013426105038328.Spec := by
  intro n
  simp only [A045469, Nat.add_sub_cancel]

end A045469

/-! ## A045469.P4803880802457337853

`p?[a(n-2)+7]` with `a(0)=1, a(1)=4`
-/

namespace A045469.P4803880802457337853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 2) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045469.P4803880802457337853

namespace A045469

/-- `p?[a(n-2)+7]` -/
def P4803880802457337853.Spec : Prop :=
  ∀ n, (P4803880802457337853.a n : ℤ) = A045469 (n + 1)

end A045469

/-! ## A045469.P6595622410344099314

`∩[A033207(n+1), A045466(n+1)]`
-/

namespace A045469.P6595622410344099314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045469.P6595622410344099314

namespace A045469

/-- `∩[A033207(n+1), A045466(n+1)]` -/
def P6595622410344099314.Spec : Prop :=
  ∀ n, (P6595622410344099314.a n : ℤ) = A045469 (n + 1)

end A045469

/-! ## A045469.P360831389915437630

`∩[A033207(n+1), A045431(n+1)]`
-/

namespace A045469.P360831389915437630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045469.P360831389915437630

namespace A045469

/-- `∩[A033207(n+1), A045431(n+1)]` -/
def P360831389915437630.Spec : Prop :=
  ∀ n, (P360831389915437630.a n : ℤ) = A045469 (n + 1)

end A045469

/-! ## A045469.P10479137221718076714

`∩[A033207(n+1), A045451(n+1)]`
-/

namespace A045469.P10479137221718076714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045469.P10479137221718076714

namespace A045469

/-- `∩[A033207(n+1), A045451(n+1)]` -/
def P10479137221718076714.Spec : Prop :=
  ∀ n, (P10479137221718076714.a n : ℤ) = A045469 (n + 1)

end A045469

/-! ## A045469.P1537684710896000811

`∩[A045459(n+1), A045337(n+1)]`
-/

namespace A045469.P1537684710896000811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045469.P1537684710896000811

namespace A045469

/-- `∩[A045459(n+1), A045337(n+1)]` -/
def P1537684710896000811.Spec : Prop :=
  ∀ n, (P1537684710896000811.a n : ℤ) = A045469 (n + 1)

end A045469

/-! ## A045469.P7710653104008881847

`∩[A033207(n+1), A045426(n+1)]`
-/

namespace A045469.P7710653104008881847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045469.P7710653104008881847

namespace A045469

/-- `∩[A033207(n+1), A045426(n+1)]` -/
def P7710653104008881847.Spec : Prop :=
  ∀ n, (P7710653104008881847.a n : ℤ) = A045469 (n + 1)

end A045469

/-! ## A045469.P1050454853267568298

`∩[A033207(n+1), A045448(n+1)]`
-/

namespace A045469.P1050454853267568298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045469.P1050454853267568298

namespace A045469

/-- `∩[A033207(n+1), A045448(n+1)]` -/
def P1050454853267568298.Spec : Prop :=
  ∀ n, (P1050454853267568298.a n : ℤ) = A045469 (n + 1)

end A045469

/-! ## A045469.P505138156494439357

`∩[A045324(n+1), A045448(n+1)]`
-/

namespace A045469.P505138156494439357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045469.P505138156494439357

namespace A045469

/-- `∩[A045324(n+1), A045448(n+1)]` -/
def P505138156494439357.Spec : Prop :=
  ∀ n, (P505138156494439357.a n : ℤ) = A045469 (n + 1)

end A045469

/-! ## A045469.P6419202555486848459

`∩[A045337(n+1), A045438(n+1)]`
-/

namespace A045469.P6419202555486848459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045469.P6419202555486848459

namespace A045469

/-- `∩[A045337(n+1), A045438(n+1)]` -/
def P6419202555486848459.Spec : Prop :=
  ∀ n, (P6419202555486848459.a n : ℤ) = A045469 (n + 1)

end A045469

/-! ## A045469.P6117661493066290318

`∩[A045362(n+1), A045417(n+1)]`
-/

namespace A045469.P6117661493066290318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045362 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045469.P6117661493066290318

namespace A045469

/-- `∩[A045362(n+1), A045417(n+1)]` -/
def P6117661493066290318.Spec : Prop :=
  ∀ n, (P6117661493066290318.a n : ℤ) = A045469 (n + 1)

end A045469

/-! ## A045469.P13332526453546138695

`∩[A033207(n+1), A045408(n+1)]`
-/

namespace A045469.P13332526453546138695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045469.P13332526453546138695

namespace A045469

/-- `∩[A033207(n+1), A045408(n+1)]` -/
def P13332526453546138695.Spec : Prop :=
  ∀ n, (P13332526453546138695.a n : ℤ) = A045469 (n + 1)

end A045469

/-! ## A045469.P1640000417992948803

`∩[A045369(n+1), A045408(n+1)]`
-/

namespace A045469.P1640000417992948803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045469.P1640000417992948803

namespace A045469

/-- `∩[A045369(n+1), A045408(n+1)]` -/
def P1640000417992948803.Spec : Prop :=
  ∀ n, (P1640000417992948803.a n : ℤ) = A045469 (n + 1)

end A045469

/-! ## A045469.P1717747861734645463

`∩[A045384(n+1), A045396(n+1)]`
-/

namespace A045469.P1717747861734645463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045469.P1717747861734645463

namespace A045469

/-- `∩[A045384(n+1), A045396(n+1)]` -/
def P1717747861734645463.Spec : Prop :=
  ∀ n, (P1717747861734645463.a n : ℤ) = A045469 (n + 1)

end A045469

/-! ## A045469.P8721414857822924494

`∩[A045431(n+1), A045346(n+1)]`
-/

namespace A045469.P8721414857822924494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045469.P8721414857822924494

namespace A045469

/-- `∩[A045431(n+1), A045346(n+1)]` -/
def P8721414857822924494.Spec : Prop :=
  ∀ n, (P8721414857822924494.a n : ℤ) = A045469 (n + 1)

end A045469

/-! ## A045469.P5200840334720675982

`∩[A045360(n+1), A045420(n+1)]`
-/

namespace A045469.P5200840334720675982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045469.P5200840334720675982

namespace A045469

/-- `∩[A045360(n+1), A045420(n+1)]` -/
def P5200840334720675982.Spec : Prop :=
  ∀ n, (P5200840334720675982.a n : ℤ) = A045469 (n + 1)

end A045469

/-! ## A045469.P1463841050398594641

`∩[A045334(n+1), A045440(n+1)]`
-/

namespace A045469.P1463841050398594641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045469.P1463841050398594641

namespace A045469

/-- `∩[A045334(n+1), A045440(n+1)]` -/
def P1463841050398594641.Spec : Prop :=
  ∀ n, (P1463841050398594641.a n : ℤ) = A045469 (n + 1)

end A045469

/-! ## A045469.P8049135277740738205

`∩[A045320(n+1), A045451(n+1)]`
-/

namespace A045469.P8049135277740738205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045469.P8049135277740738205

namespace A045469

/-- `∩[A045320(n+1), A045451(n+1)]` -/
def P8049135277740738205.Spec : Prop :=
  ∀ n, (P8049135277740738205.a n : ℤ) = A045469 (n + 1)

end A045469

/-! ## A045469.P2827119797596307328

`∩[A045466(n+1), A042988(n)]`
-/

namespace A045469.P2827119797596307328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045469.P2827119797596307328

namespace A045469

/-- `∩[A045466(n+1), A042988(n)]` -/
def P2827119797596307328.Spec : Prop :=
  ∀ n, (P2827119797596307328.a n : ℤ) = A045469 (n + 1)

end A045469

/-! ## A045469.P11208923471614779859

`∩[A044042(n+1), A045459(n+1)]`
-/

namespace A045469.P11208923471614779859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045469.P11208923471614779859

namespace A045469

/-- `∩[A044042(n+1), A045459(n+1)]` -/
def P11208923471614779859.Spec : Prop :=
  ∀ n, (P11208923471614779859.a n : ℤ) = A045469 (n + 1)

end A045469

/-!
# A045470: 1 / min{1/n - 1/a - 1/b > 0}, where a and b are integers.

The programs for A045470, there is no canonical definition to state claims against.
-/

/-! ## A045470.P12321595905926845263

`A286030(A301098(n+1)+1)`
-/

namespace A045470.P12321595905926845263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286030 (A301098 (n + 1) + 1).toNat

end

end A045470.P12321595905926845263

/-!
# A045471: Primes congruent to 4 mod 7.

The programs for A045471, the canonical program `A045471.P10082632081937732273` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045471 has offset 1).

The definition of A045471 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045471.P10082632081937732273

`A045462(n+2)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A045471

/-- `A045462(n+2)` -/
def P10082632081937732273.Spec : Prop :=
  ∀ n, P10082632081937732273.a n = A045471 (n + 1)

theorem P10082632081937732273.correct : P10082632081937732273.Spec := by
  intro n
  simp only [A045471, Nat.add_sub_cancel]

end A045471

/-! ## A045471.P1410034784803214372

`p?[7*n-3]`
-/

namespace A045471.P1410034784803214372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045471.P1410034784803214372

namespace A045471

/-- `p?[7*n-3]` -/
def P1410034784803214372.Spec : Prop :=
  ∀ n, P1410034784803214372.a n = A045471 (n + 1)

end A045471

/-! ## A045471.P4539400186738935067

`or(1, p?[a(n-1)+7])` with `a(0)=4`
-/

namespace A045471.P4539400186738935067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (n - 1) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A045471.P4539400186738935067

namespace A045471

/-- `or(1, p?[a(n-1)+7])` -/
def P4539400186738935067.Spec : Prop :=
  ∀ n, (P4539400186738935067.a n : ℤ) = A045471 (n + 1)

end A045471

/-! ## A045471.P4927271441968978769

`or(1, p?[6*n+11+n])`
-/

namespace A045471.P4927271441968978769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 11 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A045471.P4927271441968978769

namespace A045471

/-- `or(1, p?[6*n+11+n])` -/
def P4927271441968978769.Spec : Prop :=
  ∀ n, (P4927271441968978769.a n : ℤ) = A045471 (n + 1)

end A045471

/-! ## A045471.P16259749442306059584

`A135416(2*(n+1))+p?[7*n+4]`
-/

namespace A045471.P16259749442306059584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135416 (2 * (n + 1)) + (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A045471.P16259749442306059584

namespace A045471

/-- `A135416(2*(n+1))+p?[7*n+4]` -/
def P16259749442306059584.Spec : Prop :=
  ∀ n, P16259749442306059584.a n = A045471 (n + 1)

end A045471

/-! ## A045471.P17764530920088103327

`∩[A045421(n+1), A004622(n+1)]`
-/

namespace A045471.P17764530920088103327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045471.P17764530920088103327

namespace A045471

/-- `∩[A045421(n+1), A004622(n+1)]` -/
def P17764530920088103327.Spec : Prop :=
  ∀ n, (P17764530920088103327.a n : ℤ) = A045471 (n + 1)

end A045471

/-! ## A045471.P16772385495512559141

`∩[A004622(n+1), A033207(n+1)]`
-/

namespace A045471.P16772385495512559141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045471.P16772385495512559141

namespace A045471

/-- `∩[A004622(n+1), A033207(n+1)]` -/
def P16772385495512559141.Spec : Prop :=
  ∀ n, (P16772385495512559141.a n : ℤ) = A045471 (n + 1)

end A045471

/-! ## A045471.P2724294273810517541

`∩[A045386(n+1), A004622(n+1)]`
-/

namespace A045471.P2724294273810517541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045471.P2724294273810517541

namespace A045471

/-- `∩[A045386(n+1), A004622(n+1)]` -/
def P2724294273810517541.Spec : Prop :=
  ∀ n, (P2724294273810517541.a n : ℤ) = A045471 (n + 1)

end A045471

/-! ## A045471.P12219966595099410895

`∩[A045385(n+1), A004622(n+1)]`
-/

namespace A045471.P12219966595099410895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045471.P12219966595099410895

namespace A045471

/-- `∩[A045385(n+1), A004622(n+1)]` -/
def P12219966595099410895.Spec : Prop :=
  ∀ n, (P12219966595099410895.a n : ℤ) = A045471 (n + 1)

end A045471

/-! ## A045471.P866590532871428344

`∩[A045420(n+1), A004622(n+1)]`
-/

namespace A045471.P866590532871428344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045471.P866590532871428344

namespace A045471

/-- `∩[A045420(n+1), A004622(n+1)]` -/
def P866590532871428344.Spec : Prop :=
  ∀ n, (P866590532871428344.a n : ℤ) = A045471 (n + 1)

end A045471

/-! ## A045471.P1533049046521127466

`∩[A004622(n+1), A045325(n+1)]`
-/

namespace A045471.P1533049046521127466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045471.P1533049046521127466

namespace A045471

/-- `∩[A004622(n+1), A045325(n+1)]` -/
def P1533049046521127466.Spec : Prop :=
  ∀ n, (P1533049046521127466.a n : ℤ) = A045471 (n + 1)

end A045471

/-! ## A045471.P5087918928729366356

`∩[A004622(n+1), A045338(n+1)]`
-/

namespace A045471.P5087918928729366356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045471.P5087918928729366356

namespace A045471

/-- `∩[A004622(n+1), A045338(n+1)]` -/
def P5087918928729366356.Spec : Prop :=
  ∀ n, (P5087918928729366356.a n : ℤ) = A045471 (n + 1)

end A045471

/-! ## A045471.P16238878479586777652

`∩[A045370(n+1), A004622(n+1)]`
-/

namespace A045471.P16238878479586777652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045471.P16238878479586777652

namespace A045471

/-- `∩[A045370(n+1), A004622(n+1)]` -/
def P16238878479586777652.Spec : Prop :=
  ∀ n, (P16238878479586777652.a n : ℤ) = A045471 (n + 1)

end A045471

/-! ## A045471.P3064703245723428340

`∩[A004622(n+1), A045351(n+1)]`
-/

namespace A045471.P3064703245723428340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045471.P3064703245723428340

namespace A045471

/-- `∩[A004622(n+1), A045351(n+1)]` -/
def P3064703245723428340.Spec : Prop :=
  ∀ n, (P3064703245723428340.a n : ℤ) = A045471 (n + 1)

end A045471

/-! ## A045471.P16253367800273160995

`∩[A004622(n+1), A045363(n+1)]`
-/

namespace A045471.P16253367800273160995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045471.P16253367800273160995

namespace A045471

/-- `∩[A004622(n+1), A045363(n+1)]` -/
def P16253367800273160995.Spec : Prop :=
  ∀ n, (P16253367800273160995.a n : ℤ) = A045471 (n + 1)

end A045471

/-! ## A045471.P12694954884072155620

`∩[A045449(n+1), A004622(n+1)]`
-/

namespace A045471.P12694954884072155620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045471.P12694954884072155620

namespace A045471

/-- `∩[A045449(n+1), A004622(n+1)]` -/
def P12694954884072155620.Spec : Prop :=
  ∀ n, (P12694954884072155620.a n : ℤ) = A045471 (n + 1)

end A045471

/-! ## A045471.P7797310415698893121

`∩[A045397(n+1), A004622(n+1)]`
-/

namespace A045471.P7797310415698893121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045471.P7797310415698893121

namespace A045471

/-- `∩[A045397(n+1), A004622(n+1)]` -/
def P7797310415698893121.Spec : Prop :=
  ∀ n, (P7797310415698893121.a n : ℤ) = A045471 (n + 1)

end A045471

/-! ## A045471.P4181521530709973869

`∩[A004622(n+1), A045324(n+1)]`
-/

namespace A045471.P4181521530709973869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045471.P4181521530709973869

namespace A045471

/-- `∩[A004622(n+1), A045324(n+1)]` -/
def P4181521530709973869.Spec : Prop :=
  ∀ n, (P4181521530709973869.a n : ℤ) = A045471 (n + 1)

end A045471

/-! ## A045471.P17126100461860195241

`∩[A004622(n+1), A045337(n+1)]`
-/

namespace A045471.P17126100461860195241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045471.P17126100461860195241

namespace A045471

/-- `∩[A004622(n+1), A045337(n+1)]` -/
def P17126100461860195241.Spec : Prop :=
  ∀ n, (P17126100461860195241.a n : ℤ) = A045471 (n + 1)

end A045471

/-! ## A045471.P15433757669644789434

`∩[A004622(n+1), A045350(n+1)]`
-/

namespace A045471.P15433757669644789434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045471.P15433757669644789434

namespace A045471

/-- `∩[A004622(n+1), A045350(n+1)]` -/
def P15433757669644789434.Spec : Prop :=
  ∀ n, (P15433757669644789434.a n : ℤ) = A045471 (n + 1)

end A045471

/-!
# A045472: Primes congruent to {1, 6} mod 7.

The programs for A045472, the canonical program `A045472.P11402682961701220185` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045472 has offset 1).

The definition of A045472 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A045472.anchor (n : ℕ) (hn : 1 ≤ n) : A045472 n = (Nat.nth (fun p => p.Prime ∧ p % 7 ∈ ({1, 6} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A045.A045472`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A045472.P11402682961701220185

`p?[a(n-2)+7]` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045472

/-- `p?[a(n-2)+7]` -/
def P11402682961701220185.Spec : Prop :=
  ∀ n, (P11402682961701220185.a n : ℤ) = A045472 (n + 1)

theorem P11402682961701220185.correct : P11402682961701220185.Spec := by
  intro n
  simp only [A045472, Nat.add_sub_cancel]

end A045472

/-! ## A045472.P7575789251900914667

`p?[7*n-a(n-1)]` with `a(0)=1`
-/

namespace A045472.P7575789251900914667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (7 * n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045472.P7575789251900914667

namespace A045472

/-- `p?[7*n-a(n-1)]` -/
def P7575789251900914667.Spec : Prop :=
  ∀ n, P7575789251900914667.a n = A045472 (n + 1)

end A045472

/-! ## A045472.P4841878344227889685

`A045463(n+2)`
-/

namespace A045472.P4841878344227889685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045463 (n + 2)

end

end A045472.P4841878344227889685

namespace A045472

/-- `A045463(n+2)` -/
def P4841878344227889685.Spec : Prop :=
  ∀ n, P4841878344227889685.a n = A045472 (n + 1)

end A045472

/-! ## A045472.P8811416836699661409

`∩[A045376(n+1), A045466(n+1)]`
-/

namespace A045472.P8811416836699661409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045472.P8811416836699661409

namespace A045472

/-- `∩[A045376(n+1), A045466(n+1)]` -/
def P8811416836699661409.Spec : Prop :=
  ∀ n, (P8811416836699661409.a n : ℤ) = A045472 (n + 1)

end A045472

/-! ## A045472.P10920688407799855117

`∩[A045388(n+1), A045466(n+1)]`
-/

namespace A045472.P10920688407799855117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045472.P10920688407799855117

namespace A045472

/-- `∩[A045388(n+1), A045466(n+1)]` -/
def P10920688407799855117.Spec : Prop :=
  ∀ n, (P10920688407799855117.a n : ℤ) = A045472 (n + 1)

end A045472

/-! ## A045472.P3828222882997527790

`∩[A045388(n+1), A045459(n+1)]`
-/

namespace A045472.P3828222882997527790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045472.P3828222882997527790

namespace A045472

/-- `∩[A045388(n+1), A045459(n+1)]` -/
def P3828222882997527790.Spec : Prop :=
  ∀ n, (P3828222882997527790.a n : ℤ) = A045472 (n + 1)

end A045472

/-! ## A045472.P7416098886417813546

`∩[A045376(n+1), A045426(n+1)]`
-/

namespace A045472.P7416098886417813546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045472.P7416098886417813546

namespace A045472

/-- `∩[A045376(n+1), A045426(n+1)]` -/
def P7416098886417813546.Spec : Prop :=
  ∀ n, (P7416098886417813546.a n : ℤ) = A045472 (n + 1)

end A045472

/-! ## A045472.P17986349262863011275

`∩[A045369(n+1), A045411(n+1)]`
-/

namespace A045472.P17986349262863011275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045472.P17986349262863011275

namespace A045472

/-- `∩[A045369(n+1), A045411(n+1)]` -/
def P17986349262863011275.Spec : Prop :=
  ∀ n, (P17986349262863011275.a n : ℤ) = A045472 (n + 1)

end A045472

/-! ## A045472.P8468067908713733546

`∩[A045384(n+1), A045411(n+1)]`
-/

namespace A045472.P8468067908713733546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045472.P8468067908713733546

namespace A045472

/-- `∩[A045384(n+1), A045411(n+1)]` -/
def P8468067908713733546.Spec : Prop :=
  ∀ n, (P8468067908713733546.a n : ℤ) = A045472 (n + 1)

end A045472

/-! ## A045472.P17556258178866247221

`∩[A045388(n+1), A045411(n+1)]`
-/

namespace A045472.P17556258178866247221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045472.P17556258178866247221

namespace A045472

/-- `∩[A045388(n+1), A045411(n+1)]` -/
def P17556258178866247221.Spec : Prop :=
  ∀ n, (P17556258178866247221.a n : ℤ) = A045472 (n + 1)

end A045472

/-! ## A045472.P4402927927512388858

`p?[A060754(n+3)]`
-/

namespace A045472.P4402927927512388858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060754 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045472.P4402927927512388858

namespace A045472

/-- `p?[A060754(n+3)]` -/
def P4402927927512388858.Spec : Prop :=
  ∀ n, P4402927927512388858.a n = A045472 (n + 1)

end A045472

/-! ## A045472.P6400165341611495371

`∩[A045466(n+1), A042990(n)]`
-/

namespace A045472.P6400165341611495371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045472.P6400165341611495371

namespace A045472

/-- `∩[A045466(n+1), A042990(n)]` -/
def P6400165341611495371.Spec : Prop :=
  ∀ n, (P6400165341611495371.a n : ℤ) = A045472 (n + 1)

end A045472

/-! ## A045472.P11431271563900037118

`filter[A060754(n+3), A010051(#)]`
-/

namespace A045472.P11431271563900037118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060754 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A045472.P11431271563900037118

namespace A045472

/-- `filter[A060754(n+3), A010051(#)]` -/
def P11431271563900037118.Spec : Prop :=
  ∀ n, P11431271563900037118.a n = A045472 (n + 1)

end A045472

/-! ## A045472.P5487981179152682992

`filter[A060754(n+3), A380467(#)]`
-/

namespace A045472.P5487981179152682992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060754 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A045472.P5487981179152682992

namespace A045472

/-- `filter[A060754(n+3), A380467(#)]` -/
def P5487981179152682992.Spec : Prop :=
  ∀ n, P5487981179152682992.a n = A045472 (n + 1)

end A045472

/-! ## A045472.P15981821346696725654

`p?[Δ[A195145(n)]]`
-/

namespace A045472.P15981821346696725654
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195145 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045472.P15981821346696725654

namespace A045472

/-- `p?[Δ[A195145(n)]]` -/
def P15981821346696725654.Spec : Prop :=
  ∀ n, P15981821346696725654.a n = A045472 (n + 1)

end A045472

/-! ## A045472.P6769891103267149095

`p?[A113801(n+1)]`
-/

namespace A045472.P6769891103267149095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045472.P6769891103267149095

namespace A045472

/-- `p?[A113801(n+1)]` -/
def P6769891103267149095.Spec : Prop :=
  ∀ n, P6769891103267149095.a n = A045472 (n + 1)

end A045472

/-! ## A045472.P13767157823309425013

`p?[2*A047274(n+1)-1]`
-/

namespace A045472.P13767157823309425013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047274 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045472.P13767157823309425013

namespace A045472

/-- `p?[2*A047274(n+1)-1]` -/
def P13767157823309425013.Spec : Prop :=
  ∀ n, P13767157823309425013.a n = A045472 (n + 1)

end A045472

/-! ## A045472.P11797409802652456346

`record[A006530(A113801(n+2))]`
-/

namespace A045472.P11797409802652456346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A113801 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045472.P11797409802652456346

namespace A045472

/-- `record[A006530(A113801(n+2))]` -/
def P11797409802652456346.Spec : Prop :=
  ∀ n, P11797409802652456346.a n = A045472 (n + 1)

end A045472

/-! ## A045472.P11411152033011194143

`filter[A113801(n+1), A010051(#)]`
-/

namespace A045472.P11411152033011194143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A045472.P11411152033011194143

namespace A045472

/-- `filter[A113801(n+1), A010051(#)]` -/
def P11411152033011194143.Spec : Prop :=
  ∀ n, P11411152033011194143.a n = A045472 (n + 1)

end A045472

/-! ## A045472.P9068494560175299874

`filter[A113801(n+1), A379969(#)]`
-/

namespace A045472.P9068494560175299874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A045472.P9068494560175299874

namespace A045472

/-- `filter[A113801(n+1), A379969(#)]` -/
def P9068494560175299874.Spec : Prop :=
  ∀ n, P9068494560175299874.a n = A045472 (n + 1)

end A045472

/-!
# A045473: Primes congruent to 6 mod 7.

The programs for A045473, the canonical program `A045473.P6109621862307208004` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045473 has offset 1).

The definition of A045473 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045473.P6109621862307208004

`A045464(n+2)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A045473

/-- `A045464(n+2)` -/
def P6109621862307208004.Spec : Prop :=
  ∀ n, P6109621862307208004.a n = A045473 (n + 1)

theorem P6109621862307208004.correct : P6109621862307208004.Spec := by
  intro n
  simp only [A045473, Nat.add_sub_cancel]

end A045473

/-! ## A045473.P14321668058689178625

`p?[7*n-1]`
-/

namespace A045473.P14321668058689178625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045473.P14321668058689178625

namespace A045473

/-- `p?[7*n-1]` -/
def P14321668058689178625.Spec : Prop :=
  ∀ n, P14321668058689178625.a n = A045473 (n + 1)

end A045473

/-! ## A045473.P18003486728994224193

`or(1, p?[a(n-1)+7])` with `a(0)=6`
-/

namespace A045473.P18003486728994224193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f1 =>
  f1 (n - 1) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A045473.P18003486728994224193

namespace A045473

/-- `or(1, p?[a(n-1)+7])` -/
def P18003486728994224193.Spec : Prop :=
  ∀ n, (P18003486728994224193.a n : ℤ) = A045473 (n + 1)

end A045473

/-! ## A045473.P781583190792527379

`∩[A045455(n+1), A004624(n+1)]`
-/

namespace A045473.P781583190792527379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045473.P781583190792527379

namespace A045473

/-- `∩[A045455(n+1), A004624(n+1)]` -/
def P781583190792527379.Spec : Prop :=
  ∀ n, (P781583190792527379.a n : ℤ) = A045473 (n + 1)

end A045473

/-! ## A045473.P11782726555534150183

`∩[A045341(n+1), A004624(n+1)]`
-/

namespace A045473.P11782726555534150183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045473.P11782726555534150183

namespace A045473

/-- `∩[A045341(n+1), A004624(n+1)]` -/
def P11782726555534150183.Spec : Prop :=
  ∀ n, (P11782726555534150183.a n : ℤ) = A045473 (n + 1)

end A045473

/-! ## A045473.P10185904915217848407

`∩[A045370(n+1), A045434(n+1)]`
-/

namespace A045473.P10185904915217848407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045434 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045473.P10185904915217848407

namespace A045473

/-- `∩[A045370(n+1), A045434(n+1)]` -/
def P10185904915217848407.Spec : Prop :=
  ∀ n, (P10185904915217848407.a n : ℤ) = A045473 (n + 1)

end A045473

/-! ## A045473.P729909749657649186

`∩[A045427(n+1), A004624(n+1)]`
-/

namespace A045473.P729909749657649186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045473.P729909749657649186

namespace A045473

/-- `∩[A045427(n+1), A004624(n+1)]` -/
def P729909749657649186.Spec : Prop :=
  ∀ n, (P729909749657649186.a n : ℤ) = A045473 (n + 1)

end A045473

/-! ## A045473.P13877132538066015513

`∩[A003625(n+1), A004624(n+1)]`
-/

namespace A045473.P13877132538066015513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045473.P13877132538066015513

namespace A045473

/-- `∩[A003625(n+1), A004624(n+1)]` -/
def P13877132538066015513.Spec : Prop :=
  ∀ n, (P13877132538066015513.a n : ℤ) = A045473 (n + 1)

end A045473

/-! ## A045473.P12059355662811689677

`∩[A003625(n+1), A045370(n+1)]`
-/

namespace A045473.P12059355662811689677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045473.P12059355662811689677

namespace A045473

/-- `∩[A003625(n+1), A045370(n+1)]` -/
def P12059355662811689677.Spec : Prop :=
  ∀ n, (P12059355662811689677.a n : ℤ) = A045473 (n + 1)

end A045473

/-! ## A045473.P1228481850180863628

`∩[A003625(n+1), A045376(n+1)]`
-/

namespace A045473.P1228481850180863628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045473.P1228481850180863628

namespace A045473

/-- `∩[A003625(n+1), A045376(n+1)]` -/
def P1228481850180863628.Spec : Prop :=
  ∀ n, (P1228481850180863628.a n : ℤ) = A045473 (n + 1)

end A045473

/-! ## A045473.P12963158726885717018

`∩[A003625(n+1), A045377(n+1)]`
-/

namespace A045473.P12963158726885717018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045473.P12963158726885717018

namespace A045473

/-- `∩[A003625(n+1), A045377(n+1)]` -/
def P12963158726885717018.Spec : Prop :=
  ∀ n, (P12963158726885717018.a n : ℤ) = A045473 (n + 1)

end A045473

/-! ## A045473.P14092450165396244398

`∩[A003625(n+1), A045385(n+1)]`
-/

namespace A045473.P14092450165396244398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045473.P14092450165396244398

namespace A045473

/-- `∩[A003625(n+1), A045385(n+1)]` -/
def P14092450165396244398.Spec : Prop :=
  ∀ n, (P14092450165396244398.a n : ℤ) = A045473 (n + 1)

end A045473

/-! ## A045473.P8816646881843551690

`∩[A003625(n+1), A045388(n+1)]`
-/

namespace A045473.P8816646881843551690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045473.P8816646881843551690

namespace A045473

/-- `∩[A003625(n+1), A045388(n+1)]` -/
def P8816646881843551690.Spec : Prop :=
  ∀ n, (P8816646881843551690.a n : ℤ) = A045473 (n + 1)

end A045473

/-! ## A045473.P9867438698437451031

`∩[A003625(n+1), A045389(n+1)]`
-/

namespace A045473.P9867438698437451031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045473.P9867438698437451031

namespace A045473

/-- `∩[A003625(n+1), A045389(n+1)]` -/
def P9867438698437451031.Spec : Prop :=
  ∀ n, (P9867438698437451031.a n : ℤ) = A045473 (n + 1)

end A045473

/-! ## A045473.P13554676677197955711

`∩[A003625(n+1), A045459(n+1)]`
-/

namespace A045473.P13554676677197955711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045473.P13554676677197955711

namespace A045473

/-- `∩[A003625(n+1), A045459(n+1)]` -/
def P13554676677197955711.Spec : Prop :=
  ∀ n, (P13554676677197955711.a n : ℤ) = A045473 (n + 1)

end A045473

/-! ## A045473.P16120701105621889719

`∩[A003625(n+1), A045460(n+1)]`
-/

namespace A045473.P16120701105621889719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045473.P16120701105621889719

namespace A045473

/-- `∩[A003625(n+1), A045460(n+1)]` -/
def P16120701105621889719.Spec : Prop :=
  ∀ n, (P16120701105621889719.a n : ℤ) = A045473 (n + 1)

end A045473

/-! ## A045473.P14337497766758855235

`∩[A003625(n+1), A045463(n+1)]`
-/

namespace A045473.P14337497766758855235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045463 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045473.P14337497766758855235

namespace A045473

/-- `∩[A003625(n+1), A045463(n+1)]` -/
def P14337497766758855235.Spec : Prop :=
  ∀ n, (P14337497766758855235.a n : ℤ) = A045473 (n + 1)

end A045473

/-! ## A045473.P13166464046958974400

`∩[A003625(n+1), A045466(n+1)]`
-/

namespace A045473.P13166464046958974400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045473.P13166464046958974400

namespace A045473

/-- `∩[A003625(n+1), A045466(n+1)]` -/
def P13166464046958974400.Spec : Prop :=
  ∀ n, (P13166464046958974400.a n : ℤ) = A045473 (n + 1)

end A045473

/-! ## A045473.P5274367062781025960

`∩[A003625(n+1), A045467(n+1)]`
-/

namespace A045473.P5274367062781025960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045473.P5274367062781025960

namespace A045473

/-- `∩[A003625(n+1), A045467(n+1)]` -/
def P5274367062781025960.Spec : Prop :=
  ∀ n, (P5274367062781025960.a n : ℤ) = A045473 (n + 1)

end A045473

/-! ## A045473.P15009971778827911137

`∩[A003625(n+1), A045384(n+1)]`
-/

namespace A045473.P15009971778827911137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045473.P15009971778827911137

namespace A045473

/-- `∩[A003625(n+1), A045384(n+1)]` -/
def P15009971778827911137.Spec : Prop :=
  ∀ n, (P15009971778827911137.a n : ℤ) = A045473 (n + 1)

end A045473

/-!
# A045474: Normalized extreme values for "3x+1" trees of depth n.

The programs for A045474, there is no canonical definition to state claims against.
-/

/-! ## A045474.P14730449510052699394

`A027709(A071718(n))`
-/

namespace A045474.P14730449510052699394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027709 (A071718 n).toNat

end

end A045474.P14730449510052699394

/-! ## A045474.P9518822980318880089

`∑[A111305(A358836(n))]`
-/

namespace A045474.P9518822980318880089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111305 (A358836 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045474.P9518822980318880089

/-! ## A045474.P7577780003932556639

`A261491(Δ[A003480(n)])`
-/

namespace A045474.P7577780003932556639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261491 (f1 (n + 1) - f1 n).toNat

end

end A045474.P7577780003932556639

/-! ## A045474.P3604471768277369093

`A027709(∑[A191638(n+1)])`
-/

namespace A045474.P3604471768277369093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191638 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027709 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A045474.P3604471768277369093

/-!
# A045475: Normalized extreme values for "3x+1" trees of depth n.

The programs for A045475, there is no canonical definition to state claims against.
-/

/-! ## A045475.P4134406822967502427

`A307707(xor(A259967(n), A344180(n)))`
-/

namespace A045475.P4134406822967502427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307707 (Int.xor (A259967 n) (A344180 n)).toNat

end

end A045475.P4134406822967502427

/-! ## A045475.P14131944879474632388

`A269394(A134816(n+1)-A072931(n))`
-/

namespace A045475.P14131944879474632388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269394 (A134816 (n + 1) - A072931 n).toNat

end

end A045475.P14131944879474632388

/-! ## A045475.P13438366510143497227

`A307707(xor(A104762(n+1), A259967(n)))`
-/

namespace A045475.P13438366510143497227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307707 (Int.xor (A104762 (n + 1)) (A259967 n)).toNat

end

end A045475.P13438366510143497227

/-! ## A045475.P7337952400124663655

`(A134816(n+1)-A072931(n))*A003958(2^n)`
-/

namespace A045475.P7337952400124663655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A134816 (n + 1) - A072931 n) * A003958 (2 ^ n)

end

end A045475.P7337952400124663655

/-! ## A045475.P7307424463748819815

`A134816(n+1)-A036987(A000225(n))*A072931(n)`
-/

namespace A045475.P7307424463748819815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 1) - A036987 (A000225 n).toNat * A072931 n

end

end A045475.P7307424463748819815

/-!
# A045476: Normalized extreme values for "3x+1" trees of depth n.

The programs for A045476, there is no canonical definition to state claims against.
-/

/-! ## A045476.P211971308625926136

`A085736(floor(sqrt(A221944(n+3))))`
-/

namespace A045476.P211971308625926136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (Int.sqrt (A221944 (n + 3))).toNat

end

end A045476.P211971308625926136

/-! ## A045476.P15371940378276775778

`round(root(A147797(n+2), 9))`
-/

namespace A045476.P15371940378276775778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A147797 (n + 2) : ℝ) ^ (1 / (9 : ℝ)))

end

end A045476.P15371940378276775778

/-! ## A045476.P1209508636464776556

`A321728(n+2)+∑[char[∑[n]]]`
-/

namespace A045476.P1209508636464776556
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321728 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A045476.P1209508636464776556

/-! ## A045476.P12581789296821026799

`A204166(A067331(n+1))`
-/

namespace A045476.P12581789296821026799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204166 (A067331 (n + 1)).toNat

end

end A045476.P12581789296821026799

/-! ## A045476.P6265821659567913439

`A083375(A258585(n+2))`
-/

namespace A045476.P6265821659567913439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083375 (A258585 (n + 2)).toNat

end

end A045476.P6265821659567913439

/-!
# A045477: Aliquot sequence starting at 840 (reaches 1 at 747th term).

The programs for A045477, there is no canonical definition to state claims against.
-/

/-! ## A045477.P2024875203785042121

`A361421(A062399(n)+1)`
-/

namespace A045477.P2024875203785042121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361421 (A062399 n + 1).toNat

end

end A045477.P2024875203785042121

/-! ## A045477.P6081240824231868564

`A361421(A120126(n)+1)`
-/

namespace A045477.P6081240824231868564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361421 (A120126 n + 1).toNat

end

end A045477.P6081240824231868564

/-! ## A045477.P7867379530672638996

`A361421(A351870(n)+1)`
-/

namespace A045477.P7867379530672638996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361421 (A351870 n + 1).toNat

end

end A045477.P7867379530672638996

/-! ## A045477.P4114105093116726533

`record[A361421(A356958(n+1))]`
-/

namespace A045477.P4114105093116726533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361421 (A356958 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045477.P4114105093116726533

/-! ## A045477.P7650407351456684501

`A361421(C(A077741(n+1), n))`
-/

namespace A045477.P7650407351456684501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361421 (Nat.choose (A077741 (n + 1)).toNat n)

end

end A045477.P7650407351456684501

/-!
# A045492: Convolution of A000108 (Catalan numbers) with A020920.

The programs for A045492, the canonical program `A045492.P8285253247125095538` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045492 has offset 0).

The definition of A045492 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A045492.P8285253247125095538

`C(n+5, 4)*(C(2*n+10, n+5)/140-2^(2*n+3)/(n+5))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A045492

/-- `C(n+5, 4)*(C(2*n+10, n+5)/140-2^(2*n+3)/(n+5))` -/
def P8285253247125095538.Spec : Prop :=
  ∀ n, P8285253247125095538.a n = (A045492 n : ℚ)

end A045492

/-! ## A045492.P16805623647236037843

`2*A020920(n)-A042985(n)`
-/

namespace A045492.P16805623647236037843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020920 n - A042985 n

end

end A045492.P16805623647236037843

namespace A045492

/-- `2*A020920(n)-A042985(n)` -/
def P16805623647236037843.Spec : Prop :=
  ∀ n, P16805623647236037843.a n = A045492 n

end A045492

/-! ## A045492.P6163961793348549147

`(A020920(n+1)-A038846(n+1))/2`
-/

namespace A045492.P6163961793348549147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020920 (n + 1) - A038846 (n + 1) : ℚ) / 2

end

end A045492.P6163961793348549147

namespace A045492

/-- `(A020920(n+1)-A038846(n+1))/2` -/
def P6163961793348549147.Spec : Prop :=
  ∀ n, P6163961793348549147.a n = (A045492 n : ℚ)

end A045492

/-! ## A045492.P5190582294269737467

`2*A040075(n)-A045505(n)`
-/

namespace A045492.P5190582294269737467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040075 n - A045505 n

end

end A045492.P5190582294269737467

namespace A045492

/-- `2*A040075(n)-A045505(n)` -/
def P5190582294269737467.Spec : Prop :=
  ∀ n, P5190582294269737467.a n = A045492 n

end A045492

/-! ## A045492.P1500621919794727559

`A046658(A155212(n)+13)`
-/

namespace A045492.P1500621919794727559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046658 (A155212 n + 13).toNat

end

end A045492.P1500621919794727559

namespace A045492

/-- `A046658(A155212(n)+13)` -/
def P1500621919794727559.Spec : Prop :=
  ∀ n, P1500621919794727559.a n = A045492 n

end A045492

/-! ## A045492.P11731534213107971429

`A046658(A000217(n+4)+5)`
-/

namespace A045492.P11731534213107971429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046658 (A000217 (n + 4) + 5).toNat

end

end A045492.P11731534213107971429

namespace A045492

/-- `A046658(A000217(n+4)+5)` -/
def P11731534213107971429.Spec : Prop :=
  ∀ n, P11731534213107971429.a n = A045492 n

end A045492

/-!
# A045493: Unfortunate primes - primes that are not Fortunate numbers.

The programs for A045493, there is no canonical definition to state claims against.
-/

/-! ## A045493.P8626005104355886774

`p?[A224995(n+1)+A186747(n)]`
-/

namespace A045493.P8626005104355886774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224995 (n + 1) + A186747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045493.P8626005104355886774

/-! ## A045493.P16657782710131936362

`A340759(A340767(2*n))%A062922(3*n+4)`
-/

namespace A045493.P16657782710131936362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340759 (A340767 (2 * n)).toNat) (A062922 (3 * n + 4))

end

end A045493.P16657782710131936362

/-!
# A045497: Packing density for n balls in complex projective plane using Fubini-Study metric (denominators).

The programs for A045497, there is no canonical definition to state claims against.
-/

/-! ## A045497.P15727059902387361088

`A125847(A359233(n+1)+n)`
-/

namespace A045497.P15727059902387361088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125847 (A359233 (n + 1) + (n : ℤ)).toNat

end

end A045497.P15727059902387361088

/-!
# A045499: Fourth-from-right diagonal of triangle A121207.

The programs for A045499, there is no canonical definition to state claims against.
-/

/-! ## A045499.P9641430891531265029

`A124496(∑[n+2]+4)`
-/

namespace A045499.P9641430891531265029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124496 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A045499.P9641430891531265029

/-! ## A045499.P11814392290875750658

`A121207(∑[n+3]+n+3)`
-/

namespace A045499.P11814392290875750658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121207 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A045499.P11814392290875750658

/-! ## A045499.P7458972135563641500

`A186020(A167614(n+2))`
-/

namespace A045499.P7458972135563641500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186020 (A167614 (n + 2)).toNat

end

end A045499.P7458972135563641500

/-! ## A045499.P7384233331989161651

`A186020(A052905(n)+8)`
-/

namespace A045499.P7384233331989161651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186020 (A052905 n + 8).toNat

end

end A045499.P7384233331989161651

/-! ## A045499.P15395135837034777028

`A186020(A055999(n)+9)`
-/

namespace A045499.P15395135837034777028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186020 (A055999 n + 9).toNat

end

end A045499.P15395135837034777028

/-! ## A045499.P4346004842377184976

`A186020(A340266(n+2)+1)`
-/

namespace A045499.P4346004842377184976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186020 (A340266 (n + 2) + 1).toNat

end

end A045499.P4346004842377184976

/-! ## A045499.P2894394962865011784

`A186020(A000096(n+2)+4)`
-/

namespace A045499.P2894394962865011784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186020 (A000096 (n + 2) + 4).toNat

end

end A045499.P2894394962865011784

