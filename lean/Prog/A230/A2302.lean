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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
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
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
# A230200: Product of digits of n-th palindromic prime.

The programs for A230200, there is no canonical definition to state claims against.
-/

/-! ## A230200.P2915263089676960270

`∏{digits}[A002385(n+1), #]`
-/

namespace A230200.P2915263089676960270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A230200.P2915263089676960270

/-! ## A230200.P12619814262963464121

`∏{digits}[record[A002385(A154958(n))], #]`
-/

namespace A230200.P12619814262963464121
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A230200.P12619814262963464121

/-! ## A230200.P17650859853531828249

`∏{digits}[∩[A075800(n+1), A083137(n+1)], #]`
-/

namespace A230200.P17650859853531828249
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075800 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083137 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod

end

end A230200.P17650859853531828249

/-! ## A230200.P14760749267081943517

`∏{digits}[A069217(n+2), #]`
-/

namespace A230200.P14760749267081943517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069217 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A230200.P14760749267081943517

/-! ## A230200.P4184444778265238725

`∏{digits}[p?[A002113(n+1)], #]`
-/

namespace A230200.P4184444778265238725
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A230200.P4184444778265238725

/-! ## A230200.P18086828664167397098

`∏{digits}[p?[A062687(n+1)], #]`
-/

namespace A230200.P18086828664167397098
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A230200.P18086828664167397098

/-! ## A230200.P9541481076366938251

`∏{digits}[p?[A072299(n+1)], #]`
-/

namespace A230200.P9541481076366938251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A230200.P9541481076366938251

/-! ## A230200.P5645130582728284828

`∏{digits}[p?[A327325(n+1)], #]`
-/

namespace A230200.P5645130582728284828
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327325 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A230200.P5645130582728284828

/-! ## A230200.P10266762381757352823

`∏{digits}[p?[A350836(n+1)], #]`
-/

namespace A230200.P10266762381757352823
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350836 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A230200.P10266762381757352823

/-! ## A230200.P6258277592177543605

`A053666(A075807(n+1))`
-/

namespace A230200.P6258277592177543605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053666 (A075807 (n + 1)).toNat

end

end A230200.P6258277592177543605

/-!
# A230201: Numbers k such that sigma(phi(k)) < k.

The programs for A230201, the canonical program `A230201.P13558916642779101662` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230201 has offset 1).

The definition of A230201 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230201.P13558916642779101662

`record[and(n+2, A295304(n+2))]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A230201

/-- `record[and(n+2, A295304(n+2))]` -/
def P13558916642779101662.Spec : Prop :=
  ∀ n, P13558916642779101662.a n = A230201 (n + 1)

theorem P13558916642779101662.correct : P13558916642779101662.Spec := by
  intro n
  simp only [A230201, Nat.add_sub_cancel]

end A230201

/-! ## A230201.P4911015528568104805

`eq[1, A295304(n+1)+2]+1`
-/

namespace A230201.P4911015528568104805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295304 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A230201.P4911015528568104805

namespace A230201

/-- `eq[1, A295304(n+1)+2]+1` -/
def P4911015528568104805.Spec : Prop :=
  ∀ n, (P4911015528568104805.a n : ℤ) = A230201 (n + 1)

end A230201

/-! ## A230201.P2123587058372437125

`lt[A000203(A000010(abs(1-n)+1)), n]`
-/

namespace A230201.P2123587058372437125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000010 (|1 - (n : ℤ)| + 1).toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A230201.P2123587058372437125

namespace A230201

/-- `lt[A000203(A000010(abs(1-n)+1)), n]` -/
def P2123587058372437125.Spec : Prop :=
  ∀ n, (P2123587058372437125.a n : ℤ) = A230201 (n + 1)

end A230201

/-! ## A230201.P11096129408169367154

`lt[A000203(A000010(n+1)), n+1]+1`
-/

namespace A230201.P11096129408169367154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000010 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A230201.P11096129408169367154

namespace A230201

/-- `lt[A000203(A000010(n+1)), n+1]+1` -/
def P11096129408169367154.Spec : Prop :=
  ∀ n, (P11096129408169367154.a n : ℤ) = A230201 (n + 1)

end A230201

/-! ## A230201.P18173393286960110951

`filter[A004277(n+1), A379959(#)]`
-/

namespace A230201.P18173393286960110951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379959 (f1 j).toNat = 1) n)

end

end A230201.P18173393286960110951

namespace A230201

/-- `filter[A004277(n+1), A379959(#)]` -/
def P18173393286960110951.Spec : Prop :=
  ∀ n, P18173393286960110951.a n = A230201 (n + 1)

end A230201

/-! ## A230201.P5296106374009260569

`filter[A005843(n+1), A379959(#)]`
-/

namespace A230201.P5296106374009260569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379959 (f1 j).toNat = 1) n)

end

end A230201.P5296106374009260569

namespace A230201

/-- `filter[A005843(n+1), A379959(#)]` -/
def P5296106374009260569.Spec : Prop :=
  ∀ n, P5296106374009260569.a n = A230201 (n + 1)

end A230201

/-! ## A230201.P14679167007004950946

`filter[A092486(2*n+1), A379959(#)]`
-/

namespace A230201.P14679167007004950946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379959 (f1 j).toNat = 1) n)

end

end A230201.P14679167007004950946

namespace A230201

/-- `filter[A092486(2*n+1), A379959(#)]` -/
def P14679167007004950946.Spec : Prop :=
  ∀ n, P14679167007004950946.a n = A230201 (n + 1)

end A230201

/-! ## A230201.P13051126198246541722

`filter[A004275(n+1), A379959(#)]`
-/

namespace A230201.P13051126198246541722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379959 (f1 j).toNat = 1) n)

end

end A230201.P13051126198246541722

namespace A230201

/-- `filter[A004275(n+1), A379959(#)]` -/
def P13051126198246541722.Spec : Prop :=
  ∀ n, P13051126198246541722.a n = A230201 (n + 1)

end A230201

/-! ## A230201.P13231820902894265176

`filter[A185048(2*n+1), A379959(#)]`
-/

namespace A230201.P13231820902894265176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185048 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379959 (f1 j).toNat = 1) n)

end

end A230201.P13231820902894265176

namespace A230201

/-- `filter[A185048(2*n+1), A379959(#)]` -/
def P13231820902894265176.Spec : Prop :=
  ∀ n, P13231820902894265176.a n = A230201 (n + 1)

end A230201

/-! ## A230201.P2119615621308484209

`filter[A004279(n), A379959(#)]`
-/

namespace A230201.P2119615621308484209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379959 (f1 j).toNat = 1) n)

end

end A230201.P2119615621308484209

namespace A230201

/-- `filter[A004279(n), A379959(#)]` -/
def P2119615621308484209.Spec : Prop :=
  ∀ n, P2119615621308484209.a n = A230201 (n + 1)

end A230201

/-! ## A230201.P14933770838596859263

`filter[A004271(n+1), A379959(#)]`
-/

namespace A230201.P14933770838596859263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379959 (f1 j).toNat = 1) n)

end

end A230201.P14933770838596859263

namespace A230201

/-- `filter[A004271(n+1), A379959(#)]` -/
def P14933770838596859263.Spec : Prop :=
  ∀ n, P14933770838596859263.a n = A230201 (n + 1)

end A230201

/-! ## A230201.P3520116408668268450

`filter[A004272(n+1), A379959(#)]`
-/

namespace A230201.P3520116408668268450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379959 (f1 j).toNat = 1) n)

end

end A230201.P3520116408668268450

namespace A230201

/-- `filter[A004272(n+1), A379959(#)]` -/
def P3520116408668268450.Spec : Prop :=
  ∀ n, P3520116408668268450.a n = A230201 (n + 1)

end A230201

/-! ## A230201.P17944709996506728927

`filter[A004278(n+1), A379959(#)]`
-/

namespace A230201.P17944709996506728927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379959 (f1 j).toNat = 1) n)

end

end A230201.P17944709996506728927

namespace A230201

/-- `filter[A004278(n+1), A379959(#)]` -/
def P17944709996506728927.Spec : Prop :=
  ∀ n, P17944709996506728927.a n = A230201 (n + 1)

end A230201

/-! ## A230201.P7332066001071089350

`filter[A300576(n+3), A379959(#)]`
-/

namespace A230201.P7332066001071089350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300576 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379959 (f1 j).toNat = 1) n)

end

end A230201.P7332066001071089350

namespace A230201

/-- `filter[A300576(n+3), A379959(#)]` -/
def P7332066001071089350.Spec : Prop :=
  ∀ n, P7332066001071089350.a n = A230201 (n + 1)

end A230201

/-! ## A230201.P11183561394107506046

`filter[A257282(n+2), A379959(#)]`
-/

namespace A230201.P11183561394107506046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257282 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379959 (f1 j).toNat = 1) n)

end

end A230201.P11183561394107506046

namespace A230201

/-- `filter[A257282(n+2), A379959(#)]` -/
def P11183561394107506046.Spec : Prop :=
  ∀ n, P11183561394107506046.a n = A230201 (n + 1)

end A230201

/-! ## A230201.P4617300749289453351

`filter[A176693(n+2), A379959(#)]`
-/

namespace A230201.P4617300749289453351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176693 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379959 (f1 j).toNat = 1) n)

end

end A230201.P4617300749289453351

namespace A230201

/-- `filter[A176693(n+2), A379959(#)]` -/
def P4617300749289453351.Spec : Prop :=
  ∀ n, P4617300749289453351.a n = A230201 (n + 1)

end A230201

/-! ## A230201.P952744017139404530

`filter[A064745(n+1), A379959(#)]`
-/

namespace A230201.P952744017139404530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379959 (f1 j).toNat = 1) n)

end

end A230201.P952744017139404530

namespace A230201

/-- `filter[A064745(n+1), A379959(#)]` -/
def P952744017139404530.Spec : Prop :=
  ∀ n, P952744017139404530.a n = A230201 (n + 1)

end A230201

/-! ## A230201.P14490016579201816719

`filter[A171086(n+1), A379959(#)]`
-/

namespace A230201.P14490016579201816719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379959 (f1 j).toNat = 1) n)

end

end A230201.P14490016579201816719

namespace A230201

/-- `filter[A171086(n+1), A379959(#)]` -/
def P14490016579201816719.Spec : Prop :=
  ∀ n, P14490016579201816719.a n = A230201 (n + 1)

end A230201

/-! ## A230201.P752280045084625983

`filter[A225850(n+1), A379959(#)]`
-/

namespace A230201.P752280045084625983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379959 (f1 j).toNat = 1) n)

end

end A230201.P752280045084625983

namespace A230201

/-- `filter[A225850(n+1), A379959(#)]` -/
def P752280045084625983.Spec : Prop :=
  ∀ n, P752280045084625983.a n = A230201 (n + 1)

end A230201

/-! ## A230201.P6249727469411874317

`filter[A119432(n+1), A379959(#)]`
-/

namespace A230201.P6249727469411874317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379959 (f1 j).toNat = 1) n)

end

end A230201.P6249727469411874317

namespace A230201

/-- `filter[A119432(n+1), A379959(#)]` -/
def P6249727469411874317.Spec : Prop :=
  ∀ n, P6249727469411874317.a n = A230201 (n + 1)

end A230201

/-!
# A230202: Primes that end in 999.

The programs for A230202, there is no canonical definition to state claims against.
-/

/-! ## A230202.P10711938604532877588

`p?[n*1000-1]`
-/

namespace A230202.P10711938604532877588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * 1000 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A230202.P10711938604532877588

/-! ## A230202.P10260909253830772321

`A000027(p?[A008853(n+1)-1])`
-/

namespace A230202.P10260909253830772321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008853 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A230202.P10260909253830772321

/-! ## A230202.P12280670027534496535

`∩[A007627(n+1), A167292(n+1)]`
-/

namespace A230202.P12280670027534496535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230202.P12280670027534496535

/-! ## A230202.P3646875787918279383

`∩[A095995(n+1), A167292(n+1)]`
-/

namespace A230202.P3646875787918279383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230202.P3646875787918279383

/-! ## A230202.P9936993924339862730

`∩[A141946(n+1), A167292(n+1)]`
-/

namespace A230202.P9936993924339862730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230202.P9936993924339862730

/-!
# A230203: Numbers k such that sigma(phi(k)) > k.

The programs for A230203, the canonical program `A230203.P13072862272042323846` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230203 has offset 1).

The definition of A230203 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230203.P13072862272042323846

`lt[0, A295302(n+1)]+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A230203

/-- `lt[0, A295302(n+1)]+1` -/
def P13072862272042323846.Spec : Prop :=
  ∀ n, (P13072862272042323846.a n : ℤ) = A230203 (n + 1)

theorem P13072862272042323846.correct : P13072862272042323846.Spec := by
  intro n
  simp only [A230203, Nat.add_sub_cancel]

end A230203

/-! ## A230203.P7963854783729005080

`lt[0, A295304(n+1)]+1`
-/

namespace A230203.P7963854783729005080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295304 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A230203.P7963854783729005080

namespace A230203

/-- `lt[0, A295304(n+1)]+1` -/
def P7963854783729005080.Spec : Prop :=
  ∀ n, (P7963854783729005080.a n : ℤ) = A230203 (n + 1)

end A230203

/-! ## A230203.P12258389555320000485

`eq[1, A295304(n+2)]+2`
-/

namespace A230203.P12258389555320000485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295304 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A230203.P12258389555320000485

namespace A230203

/-- `eq[1, A295304(n+2)]+2` -/
def P12258389555320000485.Spec : Prop :=
  ∀ n, (P12258389555320000485.a n : ℤ) = A230203 (n + 1)

end A230203

/-! ## A230203.P17458123981697507165

`lt[n, A039653(A000010(n+1))]+1`
-/

namespace A230203.P17458123981697507165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A230203.P17458123981697507165

namespace A230203

/-- `lt[n, A039653(A000010(n+1))]+1` -/
def P17458123981697507165.Spec : Prop :=
  ∀ n, (P17458123981697507165.a n : ℤ) = A230203 (n + 1)

end A230203

/-! ## A230203.P12573328976250328789

`lt[n+1, A062402(n+1)]+1`
-/

namespace A230203.P12573328976250328789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062402 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A230203.P12573328976250328789

namespace A230203

/-- `lt[n+1, A062402(n+1)]+1` -/
def P12573328976250328789.Spec : Prop :=
  ∀ n, (P12573328976250328789.a n : ℤ) = A230203 (n + 1)

end A230203

/-! ## A230203.P12323767640288717809

`lt[n+1, ∑{d}[A039649(n+1)-1, #]]+1`
-/

namespace A230203.P12323767640288717809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A230203.P12323767640288717809

namespace A230203

/-- `lt[n+1, ∑{d}[A039649(n+1)-1, #]]+1` -/
def P12323767640288717809.Spec : Prop :=
  ∀ n, (P12323767640288717809.a n : ℤ) = A230203 (n + 1)

end A230203

/-! ## A230203.P11635580531724938655

`eq[1, A295304(A028310(n))]`
-/

namespace A230203.P11635580531724938655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295304 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230203.P11635580531724938655

namespace A230203

/-- `eq[1, A295304(A028310(n))]` -/
def P11635580531724938655.Spec : Prop :=
  ∀ n, (P11635580531724938655.a n : ℤ) = A230203 (n + 1)

end A230203

/-! ## A230203.P1388293028685218034

`lt[n+1, A000203(A109606(n+1)+1)]+1`
-/

namespace A230203.P1388293028685218034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A109606 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A230203.P1388293028685218034

namespace A230203

/-- `lt[n+1, A000203(A109606(n+1)+1)]+1` -/
def P1388293028685218034.Spec : Prop :=
  ∀ n, (P1388293028685218034.a n : ℤ) = A230203 (n + 1)

end A230203

/-! ## A230203.P11414873158933665390

`eq[1, A295304(A065033(2*n))]`
-/

namespace A230203.P11414873158933665390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295304 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230203.P11414873158933665390

namespace A230203

/-- `eq[1, A295304(A065033(2*n))]` -/
def P11414873158933665390.Spec : Prop :=
  ∀ n, (P11414873158933665390.a n : ℤ) = A230203 (n + 1)

end A230203

/-!
# A230204: Expansion of phi(-x) * f(x^3, x^5) in powers of x where phi(), f() are Ramanujan theta functions.

The programs for A230204, there is no canonical definition to state claims against.
-/

/-! ## A230204.P4175951148905425206

`A030204(2*n)`
-/

namespace A230204.P4175951148905425206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030204 (2 * n)

end

end A230204.P4175951148905425206

/-! ## A230204.P10740328674858868216

`A138514(2*n)`
-/

namespace A230204.P10740328674858868216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138514 (2 * n)

end

end A230204.P10740328674858868216

/-! ## A230204.P9822232481268524335

`A138514(n+n)%(n+3)`
-/

namespace A230204.P9822232481268524335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138514 (n + n)) (n + 3 : ℤ)

end

end A230204.P9822232481268524335

/-! ## A230204.P2504571076221309313

`A030204(A008486(n)-n)+A000038(n)`
-/

namespace A230204.P2504571076221309313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030204 (A008486 n - (n : ℤ)).toNat + A000038 n

end

end A230204.P2504571076221309313

/-! ## A230204.P16964909047906996839

`A057077(2*n)*A083650(2*n)`
-/

namespace A230204.P16964909047906996839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A083650 (2 * n)

end

end A230204.P16964909047906996839

/-! ## A230204.P3589131246556403402

`A083650(2*n)*A087960(2*n)`
-/

namespace A230204.P3589131246556403402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083650 (2 * n) * A087960 (2 * n)

end

end A230204.P3589131246556403402

/-! ## A230204.P1504890336140144822

`2*A244526(2*n)-A226192(2*n)`
-/

namespace A230204.P1504890336140144822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A244526 (2 * n) - A226192 (2 * n)

end

end A230204.P1504890336140144822

/-! ## A230204.P6783797202055768996

`A230205(9*n)`
-/

namespace A230204.P6783797202055768996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230205 (9 * n)

end

end A230204.P6783797202055768996

/-! ## A230204.P15666599505574626426

`A244526(A017173(2*n))+A244526(2*n)`
-/

namespace A230204.P15666599505574626426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244526 (A017173 (2 * n)).toNat + A244526 (2 * n)

end

end A230204.P15666599505574626426

/-! ## A230204.P2448855716864972942

`A055671(A055671(n))+A030204(n+n)`
-/

namespace A230204.P2448855716864972942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A055671 n).toNat + A030204 (n + n)

end

end A230204.P2448855716864972942

/-!
# A230205: Expansion of phi(-x) * f(x^1, x^7) in powers of x where phi(), f() are Ramanujan theta functions.

The programs for A230205, there is no canonical definition to state claims against.
-/

/-! ## A230205.P494575189649705483

`-A030204(2*n+1)`
-/

namespace A230205.P494575189649705483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A030204 (2 * n + 1)

end

end A230205.P494575189649705483

/-! ## A230205.P11280930353864134772

`A138514(Δ[n²])`
-/

namespace A230205.P11280930353864134772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138514 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A230205.P11280930353864134772

/-! ## A230205.P13258733455716071294

`A000007(n+1)-A030204(2*n+1)`
-/

namespace A230205.P13258733455716071294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A030204 (2 * n + 1)

end

end A230205.P13258733455716071294

/-! ## A230205.P18233536323910309862

`A000038(n+1)-A030204(2*n+1)`
-/

namespace A230205.P18233536323910309862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A030204 (2 * n + 1)

end

end A230205.P18233536323910309862

/-! ## A230205.P1435824667557908587

`A244560(2*n)+A244526(2*n+1)`
-/

namespace A230205.P1435824667557908587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244560 (2 * n) + A244526 (2 * n + 1)

end

end A230205.P1435824667557908587

/-! ## A230205.P14895023208309423621

`1-(A030204(2*n+1)+A000034(2*n))`
-/

namespace A230205.P14895023208309423621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A030204 (2 * n + 1) + A000034 (2 * n))

end

end A230205.P14895023208309423621

/-! ## A230205.P13049479721590475631

`1-(A033999(2*n)+A030204(2*n+1))`
-/

namespace A230205.P13049479721590475631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A033999 (2 * n) + A030204 (2 * n + 1))

end

end A230205.P13049479721590475631

/-! ## A230205.P1249740782956152360

`A030204(2*n+1)*A033999(2*n+1)`
-/

namespace A230205.P1249740782956152360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030204 (2 * n + 1) * A033999 (2 * n + 1)

end

end A230205.P1249740782956152360

/-! ## A230205.P7209973750311255664

`A083650(2*n+1)*A087960(2*n+1)`
-/

namespace A230205.P7209973750311255664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083650 (2 * n + 1) * A087960 (2 * n + 1)

end

end A230205.P7209973750311255664

/-! ## A230205.P12635203648224663194

`and(1, A030104(2*n))-A030204(2*n+1)`
-/

namespace A230205.P12635203648224663194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A030104 (2 * n)) - A030204 (2 * n + 1)

end

end A230205.P12635203648224663194

/-! ## A230205.P6395971571478735506

`A004526(2*n)-(A030204(2*n+1)+n)`
-/

namespace A230205.P6395971571478735506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * n) - (A030204 (2 * n + 1) + (n : ℤ))

end

end A230205.P6395971571478735506

/-! ## A230205.P12132796236921446330

`A014682(2*n)-(A030204(2*n+1)+n)`
-/

namespace A230205.P12132796236921446330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (2 * n) - (A030204 (2 * n + 1) + (n : ℤ))

end

end A230205.P12132796236921446330

/-! ## A230205.P12792540251475003188

`(n-A008619(2*n))*A030204(2*n+1)`
-/

namespace A230205.P12792540251475003188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A008619 (2 * n)) * A030204 (2 * n + 1)

end

end A230205.P12792540251475003188

/-! ## A230205.P13118264611473150351

`1-(A062157(2*n+1)+A030204(2*n+1))`
-/

namespace A230205.P13118264611473150351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A062157 (2 * n + 1) + A030204 (2 * n + 1))

end

end A230205.P13118264611473150351

/-! ## A230205.P12677544198572360650

`1-(A309873(2*n+1)+A030204(2*n+1))`
-/

namespace A230205.P12677544198572360650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A309873 (2 * n + 1) + A030204 (2 * n + 1))

end

end A230205.P12677544198572360650

/-! ## A230205.P5490025357715100744

`2-(A030204(2*n+1)+A020639(2*(n+1)))`
-/

namespace A230205.P5490025357715100744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A030204 (2 * n + 1) + A020639 (2 * (n + 1)))

end

end A230205.P5490025357715100744

/-! ## A230205.P12402241208714000595

`2*A244526(2*n+1)-A226192(2*n+1)`
-/

namespace A230205.P12402241208714000595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A244526 (2 * n + 1) - A226192 (2 * n + 1)

end

end A230205.P12402241208714000595

/-! ## A230205.P5238990557168057977

`A030204(2*n+1)*A309873(A020639(2*(n+1)))`
-/

namespace A230205.P5238990557168057977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030204 (2 * n + 1) * A309873 (A020639 (2 * (n + 1))).toNat

end

end A230205.P5238990557168057977

/-! ## A230205.P6697539357938081427

`A230204(A017221(n))`
-/

namespace A230205.P6697539357938081427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230204 (A017221 n).toNat

end

end A230205.P6697539357938081427

/-!
# A230212: Trapezoid of dot products of row 9 (signs alternating) with sequential 10-tuples read by rows in Pascal's triangle A007318: T(n,k) is the linear combination of the 10-tuples (C(9,0), -C(9,1), ..., C(9,8), -C(9,9)) and (C(n-1,k-9), C(n-1,k-8), ..., C(n-1,k)), n >= 1, 0 <= k <= n+8.

The programs for A230212, there is no canonical definition to state claims against.
-/

/-! ## A230212.P3908110023299382118

`-A341835(5^n)`
-/

namespace A230212.P3908110023299382118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A341835 (5 ^ n)

end

end A230212.P3908110023299382118

/-! ## A230212.P9442273044547141892

`∑[-A341836(A000351(n))]`
-/

namespace A230212.P9442273044547141892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A341836 (A000351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230212.P9442273044547141892

/-!
# A230213: Odious numbers (A000069) which can be written as a product of two evil numbers (A001969).

The programs for A230213, there is no canonical definition to state claims against.
-/

/-! ## A230213.P9799207860595257384

`eq[A106400(A106616(n)), A207676(n)]`
-/

namespace A230213.P9799207860595257384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (A106616 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207676 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230213.P9799207860595257384

/-! ## A230213.P9941753018646395045

`A116490(ceil(sqrt(A019568(2*n))))`
-/

namespace A230213.P9941753018646395045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116490 ⌈Real.sqrt (A019568 (2 * n) : ℝ)⌉.toNat

end

end A230213.P9941753018646395045

/-! ## A230213.P379331196071927860

`∩[A116490(n+1), A118845(n+1)]`
-/

namespace A230213.P379331196071927860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230213.P379331196071927860

/-! ## A230213.P18100276160858952687

`∩[A116490(n+1), A334392(n+1)]`
-/

namespace A230213.P18100276160858952687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230213.P18100276160858952687

/-!
# A230214: Nonprime terms in A210494.

The programs for A230214, there is no canonical definition to state claims against.
-/

/-! ## A230214.P17875664759386466235

`∩[A067800(n+1), A210494(n+1)]`
-/

namespace A230214.P17875664759386466235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230214.P17875664759386466235

/-! ## A230214.P17756683994507042834

`record[A191558(A210494(n+1))]`
-/

namespace A230214.P17756683994507042834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A210494 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230214.P17756683994507042834

/-!
# A230215: Numbers divisible by 3 or 13.

The programs for A230215, the canonical program `A230215.P619014778475796618` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230215 has offset 1).

The definition of A230215 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230215.P619014778475796618

`lt[n, n*gcd(39, n)]`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A230215

/-- `lt[n, n*gcd(39, n)]` -/
def P619014778475796618.Spec : Prop :=
  ∀ n, (P619014778475796618.a n : ℤ) = A230215 (n + 1)

theorem P619014778475796618.correct : P619014778475796618.Spec := by
  intro n
  simp only [A230215, Nat.add_sub_cancel]

end A230215

/-! ## A230215.P2810537944506300275

`lt[n*char[A229973(n+1)], n]`
-/

namespace A230215.P2810537944506300275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229973 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A230215.P2810537944506300275

namespace A230215

/-- `lt[n*char[A229973(n+1)], n]` -/
def P2810537944506300275.Spec : Prop :=
  ∀ n, (P2810537944506300275.a n : ℤ) = A230215 (n + 1)

end A230215

/-! ## A230215.P15152292412545520301

`eq[A130706(n), A388073(n)]`
-/

namespace A230215.P15152292412545520301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388073 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230215.P15152292412545520301

namespace A230215

/-- `eq[A130706(n), A388073(n)]` -/
def P15152292412545520301.Spec : Prop :=
  ∀ n, (P15152292412545520301.a n : ℤ) = A230215 (n + 1)

end A230215

/-! ## A230215.P910668632471234051

`eq[A166926(n), A388073(n)]`
-/

namespace A230215.P910668632471234051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166926 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388073 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230215.P910668632471234051

namespace A230215

/-- `eq[A166926(n), A388073(n)]` -/
def P910668632471234051.Spec : Prop :=
  ∀ n, (P910668632471234051.a n : ℤ) = A230215 (n + 1)

end A230215

/-! ## A230215.P11724230144554546741

`eq[A167891(n), A388073(n)]`
-/

namespace A230215.P11724230144554546741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167891 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388073 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230215.P11724230144554546741

namespace A230215

/-- `eq[A167891(n), A388073(n)]` -/
def P11724230144554546741.Spec : Prop :=
  ∀ n, (P11724230144554546741.a n : ℤ) = A230215 (n + 1)

end A230215

/-! ## A230215.P11752046753079654912

`eq[A169585(n), A388073(n)]`
-/

namespace A230215.P11752046753079654912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388073 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230215.P11752046753079654912

namespace A230215

/-- `eq[A169585(n), A388073(n)]` -/
def P11752046753079654912.Spec : Prop :=
  ∀ n, (P11752046753079654912.a n : ℤ) = A230215 (n + 1)

end A230215

/-! ## A230215.P11611931785414845850

`lt[A106614(A051176(n)), n]`
-/

namespace A230215.P11611931785414845850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 (A051176 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A230215.P11611931785414845850

namespace A230215

/-- `lt[A106614(A051176(n)), n]` -/
def P11611931785414845850.Spec : Prop :=
  ∀ n, (P11611931785414845850.a n : ℤ) = A230215 (n + 1)

end A230215

/-! ## A230215.P11788905844782859267

`lt[A106614(A106610(n)), n]`
-/

namespace A230215.P11788905844782859267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 (A106610 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A230215.P11788905844782859267

namespace A230215

/-- `lt[A106614(A106610(n)), n]` -/
def P11788905844782859267.Spec : Prop :=
  ∀ n, (P11788905844782859267.a n : ℤ) = A230215 (n + 1)

end A230215

/-! ## A230215.P3001468994623460993

`eq[A154955(n+1), A388073(n)]`
-/

namespace A230215.P3001468994623460993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388073 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230215.P3001468994623460993

namespace A230215

/-- `eq[A154955(n+1), A388073(n)]` -/
def P3001468994623460993.Spec : Prop :=
  ∀ n, (P3001468994623460993.a n : ℤ) = A230215 (n + 1)

end A230215

/-! ## A230215.P7188214883530363266

`eq[A173012(n+1), A388073(n)]`
-/

namespace A230215.P7188214883530363266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173012 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388073 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230215.P7188214883530363266

namespace A230215

/-- `eq[A173012(n+1), A388073(n)]` -/
def P7188214883530363266.Spec : Prop :=
  ∀ n, (P7188214883530363266.a n : ℤ) = A230215 (n + 1)

end A230215

/-! ## A230215.P4957748690170569258

`lt[char[A229973(n+1)], A088439(n)]`
-/

namespace A230215.P4957748690170569258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229973 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088439 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A230215.P4957748690170569258

namespace A230215

/-- `lt[char[A229973(n+1)], A088439(n)]` -/
def P4957748690170569258.Spec : Prop :=
  ∀ n, (P4957748690170569258.a n : ℤ) = A230215 (n + 1)

end A230215

/-! ## A230215.P13732774833466009455

`lt[A106616(A106614(n)), A106611(n)]`
-/

namespace A230215.P13732774833466009455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106616 (A106614 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106611 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A230215.P13732774833466009455

namespace A230215

/-- `lt[A106616(A106614(n)), A106611(n)]` -/
def P13732774833466009455.Spec : Prop :=
  ∀ n, (P13732774833466009455.a n : ℤ) = A230215 (n + 1)

end A230215

/-! ## A230215.P17059052256837257341

`eq[A285476(n), A388073(n)]`
-/

namespace A230215.P17059052256837257341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388073 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230215.P17059052256837257341

namespace A230215

/-- `eq[A285476(n), A388073(n)]` -/
def P17059052256837257341.Spec : Prop :=
  ∀ n, (P17059052256837257341.a n : ℤ) = A230215 (n + 1)

end A230215

/-! ## A230215.P13989718799727619618

`record[A054576(∑[A059857(n)])]`
-/

namespace A230215.P13989718799727619618
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059857 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230215.P13989718799727619618

namespace A230215

/-- `record[A054576(∑[A059857(n)])]` -/
def P13989718799727619618.Spec : Prop :=
  ∀ n, P13989718799727619618.a n = A230215 (n + 1)

end A230215

/-! ## A230215.P12295892704724829001

`eq[A099890(n), A388073(n)]`
-/

namespace A230215.P12295892704724829001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099890 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388073 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230215.P12295892704724829001

namespace A230215

/-- `eq[A099890(n), A388073(n)]` -/
def P12295892704724829001.Spec : Prop :=
  ∀ n, (P12295892704724829001.a n : ℤ) = A230215 (n + 1)

end A230215

/-! ## A230215.P13285224369571298376

`eq[A119522(n+1), A388073(n)]`
-/

namespace A230215.P13285224369571298376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388073 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230215.P13285224369571298376

namespace A230215

/-- `eq[A119522(n+1), A388073(n)]` -/
def P13285224369571298376.Spec : Prop :=
  ∀ n, (P13285224369571298376.a n : ℤ) = A230215 (n + 1)

end A230215

/-!
# A230216: Number of binary strings of length n avoiding "squares" (that is, repeated blocks of the form xx) with |x| = 3.

The programs for A230216, the canonical program `A230216.P15842096262010780768` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230216 has offset 0).

The definition of A230216 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A230216.P15842096262010780768

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16, a(5)=32`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A230216

/-- `a(n-1)+a(n-2)+a(n-3)` -/
def P15842096262010780768.Spec : Prop :=
  ∀ n, (P15842096262010780768.a n : ℤ) = A230216 n

theorem P15842096262010780768.correct : P15842096262010780768.Spec := by
  intro n
  simp only [A230216]

end A230216

/-! ## A230216.P11461942304342015657

`ogf((1+x+x^2+x^3+2x^4+4x^5)/(1-x-x^2-x^3))`
-/

namespace A230216.P11461942304342015657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, 1, 2, 4] [1, -1, -1, -1] n

end

end A230216.P11461942304342015657

namespace A230216

/-- `ogf((1+x+x^2+x^3+2x^4+4x^5)/(1-x-x^2-x^3))` -/
def P11461942304342015657.Spec : Prop :=
  ∀ n, P11461942304342015657.a n = A230216 n

end A230216

/-! ## A230216.P11591873217494806996

`A196700(n+1)+A073728(n)%A275778(n)`
-/

namespace A230216.P11591873217494806996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196700 (n + 1) + Int.tmod (A073728 n) (A275778 n)

end

end A230216.P11591873217494806996

namespace A230216

/-- `A196700(n+1)+A073728(n)%A275778(n)` -/
def P11591873217494806996.Spec : Prop :=
  ∀ n, P11591873217494806996.a n = A230216 n

end A230216

/-! ## A230216.P9459596287596443960

`A008574(A000073(n))*A336158(A161344(n+1))`
-/

namespace A230216.P9459596287596443960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A000073 n).toNat * A336158 (A161344 (n + 1)).toNat

end

end A230216.P9459596287596443960

namespace A230216

/-- `A008574(A000073(n))*A336158(A161344(n+1))` -/
def P9459596287596443960.Spec : Prop :=
  ∀ n, P9459596287596443960.a n = A230216 n

end A230216

/-!
# A230217: List of those primes p with p + 6 and 3*p + 8 also prime.

The programs for A230217, the canonical program `A230217.P14626932815808286926` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230217 has offset 1).

The definition of A230217 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2684 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230217.P14626932815808286926

`p?[A023210(n+1)+6]-6`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A230217

/-- `p?[A023210(n+1)+6]-6` -/
def P14626932815808286926.Spec : Prop :=
  ∀ n, P14626932815808286926.a n = A230217 (n + 1)

theorem P14626932815808286926.correct : P14626932815808286926.Spec := by
  intro n
  simp only [A230217, Nat.add_sub_cancel]

end A230217

/-! ## A230217.P6621794435263498648

`∩[A015914(n+1), A023210(n+1)]`
-/

namespace A230217.P6621794435263498648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230217.P6621794435263498648

namespace A230217

/-- `∩[A015914(n+1), A023210(n+1)]` -/
def P6621794435263498648.Spec : Prop :=
  ∀ n, (P6621794435263498648.a n : ℤ) = A230217 (n + 1)

end A230217

/-! ## A230217.P8757985084744519970

`∩[A023201(n+1), A023210(n+1)]`
-/

namespace A230217.P8757985084744519970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230217.P8757985084744519970

namespace A230217

/-- `∩[A023201(n+1), A023210(n+1)]` -/
def P8757985084744519970.Spec : Prop :=
  ∀ n, (P8757985084744519970.a n : ℤ) = A230217 (n + 1)

end A230217

/-! ## A230217.P7045825559791557497

`∩[A023210(n+1), A262084(n+1)]`
-/

namespace A230217.P7045825559791557497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230217.P7045825559791557497

namespace A230217

/-- `∩[A023210(n+1), A262084(n+1)]` -/
def P7045825559791557497.Spec : Prop :=
  ∀ n, (P7045825559791557497.a n : ℤ) = A230217 (n + 1)

end A230217

/-! ## A230217.P750836905393005482

`p?[A230227(n+1)-6]`
-/

namespace A230217.P750836905393005482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230227 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A230217.P750836905393005482

namespace A230217

/-- `p?[A230227(n+1)-6]` -/
def P750836905393005482.Spec : Prop :=
  ∀ n, P750836905393005482.a n = A230217 (n + 1)

end A230217

/-! ## A230217.P8590825514778620042

`∩[A023210(n+1), A086304(n+1)]`
-/

namespace A230217.P8590825514778620042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230217.P8590825514778620042

namespace A230217

/-- `∩[A023210(n+1), A086304(n+1)]` -/
def P8590825514778620042.Spec : Prop :=
  ∀ n, (P8590825514778620042.a n : ℤ) = A230217 (n + 1)

end A230217

/-! ## A230217.P5289698322808389668

`∩[A023210(n+1), A118538(n+1)]`
-/

namespace A230217.P5289698322808389668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230217.P5289698322808389668

namespace A230217

/-- `∩[A023210(n+1), A118538(n+1)]` -/
def P5289698322808389668.Spec : Prop :=
  ∀ n, (P5289698322808389668.a n : ℤ) = A230217 (n + 1)

end A230217

/-! ## A230217.P9850094374392015598

`∩[A023210(n+1), A282391(n+1)]`
-/

namespace A230217.P9850094374392015598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230217.P9850094374392015598

namespace A230217

/-- `∩[A023210(n+1), A282391(n+1)]` -/
def P9850094374392015598.Spec : Prop :=
  ∀ n, (P9850094374392015598.a n : ℤ) = A230217 (n + 1)

end A230217

/-! ## A230217.P9403838779108281986

`p?[A173064(n+3)+A156706(A172367(n+1))]`
-/

namespace A230217.P9403838779108281986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173064 (n + 3) + A156706 (A172367 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A230217.P9403838779108281986

namespace A230217

/-- `p?[A173064(n+3)+A156706(A172367(n+1))]` -/
def P9403838779108281986.Spec : Prop :=
  ∀ n, P9403838779108281986.a n = A230217 (n + 1)

end A230217

/-! ## A230217.P9900048775864022344

`p?[eq[3, A085064(n+3)]]`
-/

namespace A230217.P9900048775864022344
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085064 (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A230217.P9900048775864022344

namespace A230217

/-- `p?[eq[3, A085064(n+3)]]` -/
def P9900048775864022344.Spec : Prop :=
  ∀ n, (P9900048775864022344.a n : ℤ) = A230217 (n + 1)

end A230217

/-! ## A230217.P10523681556008280077

`p?[A023448(A230227(n+1))]`
-/

namespace A230217.P10523681556008280077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023448 (A230227 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A230217.P10523681556008280077

namespace A230217

/-- `p?[A023448(A230227(n+1))]` -/
def P10523681556008280077.Spec : Prop :=
  ∀ n, P10523681556008280077.a n = A230217 (n + 1)

end A230217

/-!
# A230224: Number of ways to write 2*n = p + q + r + s with p <= q <= r <= s such that p, q, r, s are primes in A230223.

The programs for A230224, there is no canonical definition to state claims against.
-/

/-! ## A230224.P756348726730654138

`∑{e}[A108611(A322387(n+1)), #]`
-/

namespace A230224.P756348726730654138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (A322387 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A230224.P756348726730654138

/-! ## A230224.P6475057921637303188

`floor(A067166(3*n+8)/A067139(n+1))`
-/

namespace A230224.P6475057921637303188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A067166 (3 * n + 8) : ℚ) / (A067139 (n + 1) : ℚ)⌋

end

end A230224.P6475057921637303188

/-! ## A230224.P2071640265731624720

`floor(A165103(3*n+1)/A000879(n+3))`
-/

namespace A230224.P2071640265731624720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A165103 (3 * n + 1) : ℚ) / (A000879 (n + 3) : ℚ)⌋

end

end A230224.P2071640265731624720

/-! ## A230224.P9641013828727340393

`A284203(A350514(n))`
-/

namespace A230224.P9641013828727340393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284203 (A350514 n).toNat

end

end A230224.P9641013828727340393

/-! ## A230224.P16024687877776208069

`A037821(A147000(n+2))`
-/

namespace A230224.P16024687877776208069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037821 (A147000 (n + 2)).toNat

end

end A230224.P16024687877776208069

/-!
# A230225: Primes p such that 2*p+1 and 2*p+3 are not prime.

The programs for A230225, the canonical program `A230225.P3425636386318015061` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230225 has offset 1).

The definition of A230225 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230225.P10086162849777012490

`p?[A104278(n+1)-1]`
-/

namespace A230225.P10086162849777012490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104278 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A230225.P10086162849777012490

namespace A230225

/-- `p?[A104278(n+1)-1]` -/
def P10086162849777012490.Spec : Prop :=
  ∀ n, P10086162849777012490.a n = A230225 (n + 1)

end A230225

/-! ## A230225.P3425636386318015061

`p?[lt[3, A175851(2*n+3)]]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A230225

/-- `p?[lt[3, A175851(2*n+3)]]` -/
def P3425636386318015061.Spec : Prop :=
  ∀ n, (P3425636386318015061.a n : ℤ) = A230225 (n + 1)

theorem P3425636386318015061.correct : P3425636386318015061.Spec := by
  intro n
  simp only [A230225, Nat.add_sub_cancel]

end A230225

/-! ## A230225.P11383484238850516395

`p?[floor(A025583(n+1)/2)-1]`
-/

namespace A230225.P11383484238850516395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A025583 (n + 1) : ℚ) / 2⌋ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A230225.P11383484238850516395

namespace A230225

/-- `p?[floor(A025583(n+1)/2)-1]` -/
def P11383484238850516395.Spec : Prop :=
  ∀ n, P11383484238850516395.a n = A230225 (n + 1)

end A230225

/-! ## A230225.P13275832545852319896

`∩[A163769(n+1), A079698(n)]`
-/

namespace A230225.P13275832545852319896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079698 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230225.P13275832545852319896

namespace A230225

/-- `∩[A163769(n+1), A079698(n)]` -/
def P13275832545852319896.Spec : Prop :=
  ∀ n, (P13275832545852319896.a n : ℤ) = A230225 (n + 1)

end A230225

/-! ## A230225.P14731795152246521779

`record[A008472(A104278(n+5)-1)]`
-/

namespace A230225.P14731795152246521779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A104278 (n + 5) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230225.P14731795152246521779

namespace A230225

/-- `record[A008472(A104278(n+5)-1)]` -/
def P14731795152246521779.Spec : Prop :=
  ∀ n, P14731795152246521779.a n = A230225 (n + 1)

end A230225

/-! ## A230225.P4168538587560031060

`∩[A053176(n+1), A163769(n+1)]`
-/

namespace A230225.P4168538587560031060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230225.P4168538587560031060

namespace A230225

/-- `∩[A053176(n+1), A163769(n+1)]` -/
def P4168538587560031060.Spec : Prop :=
  ∀ n, (P4168538587560031060.a n : ℤ) = A230225 (n + 1)

end A230225

/-! ## A230225.P1769631916770133493

`∩[A079695(n+1), A163769(n+1)]`
-/

namespace A230225.P1769631916770133493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230225.P1769631916770133493

namespace A230225

/-- `∩[A079695(n+1), A163769(n+1)]` -/
def P1769631916770133493.Spec : Prop :=
  ∀ n, (P1769631916770133493.a n : ℤ) = A230225 (n + 1)

end A230225

/-! ## A230225.P13498568215710964594

`∩[A156543(n+1), A163769(n+1)]`
-/

namespace A230225.P13498568215710964594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230225.P13498568215710964594

namespace A230225

/-- `∩[A156543(n+1), A163769(n+1)]` -/
def P13498568215710964594.Spec : Prop :=
  ∀ n, (P13498568215710964594.a n : ℤ) = A230225 (n + 1)

end A230225

/-! ## A230225.P2600030003168486847

`∩[A163769(n+1), A166602(n+1)]`
-/

namespace A230225.P2600030003168486847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166602 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230225.P2600030003168486847

namespace A230225

/-- `∩[A163769(n+1), A166602(n+1)]` -/
def P2600030003168486847.Spec : Prop :=
  ∀ n, (P2600030003168486847.a n : ℤ) = A230225 (n + 1)

end A230225

/-! ## A230225.P7002181911144039835

`∩[A163769(n+1), A328414(n+1)]`
-/

namespace A230225.P7002181911144039835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230225.P7002181911144039835

namespace A230225

/-- `∩[A163769(n+1), A328414(n+1)]` -/
def P7002181911144039835.Spec : Prop :=
  ∀ n, (P7002181911144039835.a n : ℤ) = A230225 (n + 1)

end A230225

/-! ## A230225.P16694531707878169577

`∩[A163769(n+1), A393401(n+1)]`
-/

namespace A230225.P16694531707878169577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230225.P16694531707878169577

namespace A230225

/-- `∩[A163769(n+1), A393401(n+1)]` -/
def P16694531707878169577.Spec : Prop :=
  ∀ n, (P16694531707878169577.a n : ℤ) = A230225 (n + 1)

end A230225

/-! ## A230225.P14285486620992438634

`∩[A163769(n+1), A396685(n+1)]`
-/

namespace A230225.P14285486620992438634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230225.P14285486620992438634

namespace A230225

/-- `∩[A163769(n+1), A396685(n+1)]` -/
def P14285486620992438634.Spec : Prop :=
  ∀ n, (P14285486620992438634.a n : ℤ) = A230225 (n + 1)

end A230225

/-! ## A230225.P14849571512809311892

`∩[A000040(n+1), A104278(n+1)-1]`
-/

namespace A230225.P14849571512809311892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104278 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230225.P14849571512809311892

namespace A230225

/-- `∩[A000040(n+1), A104278(n+1)-1]` -/
def P14849571512809311892.Spec : Prop :=
  ∀ n, (P14849571512809311892.a n : ℤ) = A230225 (n + 1)

end A230225

/-! ## A230225.P7900011897858531529

`∩[A004139(n+1), A104278(n+1)-1]`
-/

namespace A230225.P7900011897858531529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104278 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230225.P7900011897858531529

namespace A230225

/-- `∩[A004139(n+1), A104278(n+1)-1]` -/
def P7900011897858531529.Spec : Prop :=
  ∀ n, (P7900011897858531529.a n : ℤ) = A230225 (n + 1)

end A230225

/-! ## A230225.P3962227971647632683

`∩[A006005(n+1), A104278(n+1)-1]`
-/

namespace A230225.P3962227971647632683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104278 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230225.P3962227971647632683

namespace A230225

/-- `∩[A006005(n+1), A104278(n+1)-1]` -/
def P3962227971647632683.Spec : Prop :=
  ∀ n, (P3962227971647632683.a n : ℤ) = A230225 (n + 1)

end A230225

/-! ## A230225.P4067537705247845088

`∩[A008578(n+1), A104278(n+1)-1]`
-/

namespace A230225.P4067537705247845088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104278 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230225.P4067537705247845088

namespace A230225

/-- `∩[A008578(n+1), A104278(n+1)-1]` -/
def P4067537705247845088.Spec : Prop :=
  ∀ n, (P4067537705247845088.a n : ℤ) = A230225 (n + 1)

end A230225

/-! ## A230225.P2415792812913509871

`∩[A045319(n+1), A104278(n+1)-1]`
-/

namespace A230225.P2415792812913509871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104278 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230225.P2415792812913509871

namespace A230225

/-- `∩[A045319(n+1), A104278(n+1)-1]` -/
def P2415792812913509871.Spec : Prop :=
  ∀ n, (P2415792812913509871.a n : ℤ) = A230225 (n + 1)

end A230225

/-! ## A230225.P11556525286855681033

`∩[A045344(n+1), A104278(n+1)-1]`
-/

namespace A230225.P11556525286855681033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104278 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230225.P11556525286855681033

namespace A230225

/-- `∩[A045344(n+1), A104278(n+1)-1]` -/
def P11556525286855681033.Spec : Prop :=
  ∀ n, (P11556525286855681033.a n : ℤ) = A230225 (n + 1)

end A230225

/-! ## A230225.P6089394406771087312

`∩[A046022(n+1), A104278(n+1)-1]`
-/

namespace A230225.P6089394406771087312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104278 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230225.P6089394406771087312

namespace A230225

/-- `∩[A046022(n+1), A104278(n+1)-1]` -/
def P6089394406771087312.Spec : Prop :=
  ∀ n, (P6089394406771087312.a n : ℤ) = A230225 (n + 1)

end A230225

/-!
# A230226: Odd odious numbers (A000069) which can be written as a product of two odious numbers > 1.

The programs for A230226, there is no canonical definition to state claims against.
-/

/-! ## A230226.P8735810868933679696

`∩[A093696(n+1), A390760(n+1)]`
-/

namespace A230226.P8735810868933679696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230226.P8735810868933679696

/-! ## A230226.P10835333192940883535

`∩[A227921(n+1), A390760(n+1)]`
-/

namespace A230226.P10835333192940883535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230226.P10835333192940883535

/-! ## A230226.P9270259950484356355

`∩[A176551(n+1), A227921(n+1)]`
-/

namespace A230226.P9270259950484356355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230226.P9270259950484356355

/-!
# A230227: Primes p with 3*p - 10 also prime.

The programs for A230227, the canonical program `A230227.P15280561907443236401` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230227 has offset 1).

The definition of A230227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2381 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230227.P3861251739040593558

`p?[A228121(n+1)+2]`
-/

namespace A230227.P3861251739040593558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228121 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A230227.P3861251739040593558

namespace A230227

/-- `p?[A228121(n+1)+2]` -/
def P3861251739040593558.Spec : Prop :=
  ∀ n, P3861251739040593558.a n = A230227 (n + 1)

end A230227

/-! ## A230227.P14901749356026539768

`p?[A087370(n+1)+3]`
-/

namespace A230227.P14901749356026539768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087370 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A230227.P14901749356026539768

namespace A230227

/-- `p?[A087370(n+1)+3]` -/
def P14901749356026539768.Spec : Prop :=
  ∀ n, P14901749356026539768.a n = A230227 (n + 1)

end A230227

/-! ## A230227.P15280561907443236401

`p?[2*A153134(n+1)+1]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A230227

/-- `p?[2*A153134(n+1)+1]` -/
def P15280561907443236401.Spec : Prop :=
  ∀ n, P15280561907443236401.a n = A230227 (n + 1)

theorem P15280561907443236401.correct : P15280561907443236401.Spec := by
  intro n
  simp only [A230227, Nat.add_sub_cancel]

end A230227

/-! ## A230227.P3634755990518611350

`record[A006530(A087370(n+2)+3)]`
-/

namespace A230227.P3634755990518611350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A087370 (n + 2) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230227.P3634755990518611350

namespace A230227

/-- `record[A006530(A087370(n+2)+3)]` -/
def P3634755990518611350.Spec : Prop :=
  ∀ n, P3634755990518611350.a n = A230227 (n + 1)

end A230227

/-! ## A230227.P101724428667188885

`∩[A000040(n+1), A228121(n+1)+2]`
-/

namespace A230227.P101724428667188885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228121 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230227.P101724428667188885

namespace A230227

/-- `∩[A000040(n+1), A228121(n+1)+2]` -/
def P101724428667188885.Spec : Prop :=
  ∀ n, (P101724428667188885.a n : ℤ) = A230227 (n + 1)

end A230227

/-! ## A230227.P17439017721088397871

`∩[A008578(n+1), A228121(n+1)+2]`
-/

namespace A230227.P17439017721088397871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228121 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230227.P17439017721088397871

namespace A230227

/-- `∩[A008578(n+1), A228121(n+1)+2]` -/
def P17439017721088397871.Spec : Prop :=
  ∀ n, (P17439017721088397871.a n : ℤ) = A230227 (n + 1)

end A230227

/-! ## A230227.P9115951390661689334

`∩[A053813(n+1), A228121(n+1)+2]`
-/

namespace A230227.P9115951390661689334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228121 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230227.P9115951390661689334

namespace A230227

/-- `∩[A053813(n+1), A228121(n+1)+2]` -/
def P9115951390661689334.Spec : Prop :=
  ∀ n, (P9115951390661689334.a n : ℤ) = A230227 (n + 1)

end A230227

/-! ## A230227.P565363101813238343

`∩[A116974(n+1), A228121(n+1)+2]`
-/

namespace A230227.P565363101813238343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228121 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230227.P565363101813238343

namespace A230227

/-- `∩[A116974(n+1), A228121(n+1)+2]` -/
def P565363101813238343.Spec : Prop :=
  ∀ n, (P565363101813238343.a n : ℤ) = A230227 (n + 1)

end A230227

/-! ## A230227.P7939011198602515497

`∩[A158611(n+1), A228121(n+1)+2]`
-/

namespace A230227.P7939011198602515497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228121 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230227.P7939011198602515497

namespace A230227

/-- `∩[A158611(n+1), A228121(n+1)+2]` -/
def P7939011198602515497.Spec : Prop :=
  ∀ n, (P7939011198602515497.a n : ℤ) = A230227 (n + 1)

end A230227

/-! ## A230227.P9328974802578671957

`∩[A201879(n+1), A228121(n+1)+2]`
-/

namespace A230227.P9328974802578671957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228121 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230227.P9328974802578671957

namespace A230227

/-- `∩[A201879(n+1), A228121(n+1)+2]` -/
def P9328974802578671957.Spec : Prop :=
  ∀ n, (P9328974802578671957.a n : ℤ) = A230227 (n + 1)

end A230227

/-! ## A230227.P17212249860494407065

`∩[A228121(n+1)+2, A235050(n+1)]`
-/

namespace A230227.P17212249860494407065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228121 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230227.P17212249860494407065

namespace A230227

/-- `∩[A228121(n+1)+2, A235050(n+1)]` -/
def P17212249860494407065.Spec : Prop :=
  ∀ n, (P17212249860494407065.a n : ℤ) = A230227 (n + 1)

end A230227

/-! ## A230227.P5671247022345534223

`∩[A085118(n+1), A228121(n+1)+2]`
-/

namespace A230227.P5671247022345534223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228121 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230227.P5671247022345534223

namespace A230227

/-- `∩[A085118(n+1), A228121(n+1)+2]` -/
def P5671247022345534223.Spec : Prop :=
  ∀ n, (P5671247022345534223.a n : ℤ) = A230227 (n + 1)

end A230227

/-! ## A230227.P6186150549564603763

`p?[ceil(A000040(n+1)/3)+3]`
-/

namespace A230227.P6186150549564603763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000040 (n + 1) : ℚ) / 3⌉ + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A230227.P6186150549564603763

namespace A230227

/-- `p?[ceil(A000040(n+1)/3)+3]` -/
def P6186150549564603763.Spec : Prop :=
  ∀ n, P6186150549564603763.a n = A230227 (n + 1)

end A230227

/-! ## A230227.P57643475722583280

`p?[A103517(n+1)+A075743(2*n+1)]`
-/

namespace A230227.P57643475722583280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (n + 1) + A075743 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A230227.P57643475722583280

namespace A230227

/-- `p?[A103517(n+1)+A075743(2*n+1)]` -/
def P57643475722583280.Spec : Prop :=
  ∀ n, P57643475722583280.a n = A230227 (n + 1)

end A230227

/-! ## A230227.P8764699330385293870

`p?[2*n+1+A060324(2*(n+1))²]`
-/

namespace A230227.P8764699330385293870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) + A060324 (2 * (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A230227.P8764699330385293870

namespace A230227

/-- `p?[2*n+1+A060324(2*(n+1))²]` -/
def P8764699330385293870.Spec : Prop :=
  ∀ n, P8764699330385293870.a n = A230227 (n + 1)

end A230227

/-! ## A230227.P11866707827588627245

`record[A014963(A228121(n+2)+2)]`
-/

namespace A230227.P11866707827588627245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A228121 (n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230227.P11866707827588627245

namespace A230227

/-- `record[A014963(A228121(n+2)+2)]` -/
def P11866707827588627245.Spec : Prop :=
  ∀ n, P11866707827588627245.a n = A230227 (n + 1)

end A230227

/-! ## A230227.P897854870659092816

`p?[abs(1-A074305(A097338(n+1)+1))]`
-/

namespace A230227.P897854870659092816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A074305 (A097338 (n + 1) + 1).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A230227.P897854870659092816

namespace A230227

/-- `p?[abs(1-A074305(A097338(n+1)+1))]` -/
def P897854870659092816.Spec : Prop :=
  ∀ n, P897854870659092816.a n = A230227 (n + 1)

end A230227

/-! ## A230227.P9358508362029373709

`p?[A126760(A000961(n+1))+3]`
-/

namespace A230227.P9358508362029373709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A000961 (n + 1)).toNat + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A230227.P9358508362029373709

namespace A230227

/-- `p?[A126760(A000961(n+1))+3]` -/
def P9358508362029373709.Spec : Prop :=
  ∀ n, P9358508362029373709.a n = A230227 (n + 1)

end A230227

/-! ## A230227.P5092659894678483326

`p?[A014963(3*n+5)-n-n]`
-/

namespace A230227.P5092659894678483326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (3 * n + 5) - (n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A230227.P5092659894678483326

namespace A230227

/-- `p?[A014963(3*n+5)-n-n]` -/
def P5092659894678483326.Spec : Prop :=
  ∀ n, P5092659894678483326.a n = A230227 (n + 1)

end A230227

/-! ## A230227.P2950245480983059459

`p?[A126759(A000040(n+1))+2]`
-/

namespace A230227.P2950245480983059459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126759 (A000040 (n + 1)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A230227.P2950245480983059459

namespace A230227

/-- `p?[A126759(A000040(n+1))+2]` -/
def P2950245480983059459.Spec : Prop :=
  ∀ n, P2950245480983059459.a n = A230227 (n + 1)

end A230227

/-!
# A230231: Number of permutations of [n] avoiding adjacent step pattern {up}^8.

The programs for A230231, there is no canonical definition to state claims against.
-/

/-! ## A230231.P6210984106168812234

`n!-A269303(C(n, 9)+1)`
-/

namespace A230231.P6210984106168812234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A269303 (Nat.choose n 9 + 1)

end

end A230231.P6210984106168812234

/-! ## A230231.P17765960732464164291

`n!-A058348(A097922(n))`
-/

namespace A230231.P17765960732464164291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A058348 (A097922 n).toNat

end

end A230231.P17765960732464164291

/-! ## A230231.P5508920148413423487

`n!-A113368(A212388(n))`
-/

namespace A230231.P5508920148413423487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A113368 (A212388 n).toNat

end

end A230231.P5508920148413423487

/-! ## A230231.P17226197724855465098

`A000142(n)-A269303(C(n, 9)+1)`
-/

namespace A230231.P17226197724855465098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A269303 (Nat.choose n 9 + 1)

end

end A230231.P17226197724855465098

/-! ## A230231.P10018112263096631374

`A000142(n)-A113368(A212388(n))`
-/

namespace A230231.P10018112263096631374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A113368 (A212388 n).toNat

end

end A230231.P10018112263096631374

/-!
# A230232: Number of permutations of [n] avoiding adjacent step pattern {up}^9.

The programs for A230232, there is no canonical definition to state claims against.
-/

/-! ## A230232.P1108942791926987297

`n!-A335525(A322283(n))`
-/

namespace A230232.P1108942791926987297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A335525 (A322283 n).toNat

end

end A230232.P1108942791926987297

/-! ## A230232.P5568795052392593472

`A000142(n)-A006927(A002865(n))`
-/

namespace A230232.P5568795052392593472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A006927 (A002865 n).toNat

end

end A230232.P5568795052392593472

/-! ## A230232.P17338540431906377050

`A000142(n)-A050810(A035042(n))`
-/

namespace A230232.P17338540431906377050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A050810 (A035042 n).toNat

end

end A230232.P17338540431906377050

/-! ## A230232.P6441592567519744495

`A000142(n)-A007090(A185293(n))`
-/

namespace A230232.P6441592567519744495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A007090 (A185293 n).toNat

end

end A230232.P6441592567519744495

/-! ## A230232.P8346283078291368873

`A000142(n)-A089865(A255380(n))`
-/

namespace A230232.P8346283078291368873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A089865 (A255380 n).toNat

end

end A230232.P8346283078291368873

/-!
# A230233: Number of permutations of [n] avoiding adjacent step pattern {up}^10.

The programs for A230233, there is no canonical definition to state claims against.
-/

/-! ## A230233.P10408046893335755642

`n!-A002265(A014378(n))`
-/

namespace A230233.P10408046893335755642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A002265 (A014378 n).toNat

end

end A230233.P10408046893335755642

/-! ## A230233.P15825002820930738848

`A000142(n)-A002265(A014378(n))`
-/

namespace A230233.P15825002820930738848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A002265 (A014378 n).toNat

end

end A230233.P15825002820930738848

/-! ## A230233.P5610933777624779019

`A289282(n)-A002265(A014378(n))`
-/

namespace A230233.P5610933777624779019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289282 n - A002265 (A014378 n).toNat

end

end A230233.P5610933777624779019

/-! ## A230233.P11688692714981764345

`A214078(n²)-A002265(A014378(n))`
-/

namespace A230233.P11688692714981764345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214078 (n ^ 2) - A002265 (A014378 n).toNat

end

end A230233.P11688692714981764345

/-!
# A230234: Number of permutations of [n] in which the longest increasing run has length 8.

The programs for A230234, there is no canonical definition to state claims against.
-/

/-! ## A230234.P6957333901988749092

`A230231(n+8)-A230051(n+8)`
-/

namespace A230234.P6957333901988749092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230231 (n + 8) - A230051 (n + 8)

end

end A230234.P6957333901988749092

/-! ## A230234.P5455817688880320152

`A008304(eq[13, A066657(n)])`
-/

namespace A230234.P5455817688880320152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008304 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230234.P5455817688880320152

/-! ## A230234.P4569441267988748902

`A008304(A133263(n+7)+6)`
-/

namespace A230234.P4569441267988748902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008304 (A133263 (n + 7) + 6).toNat

end

end A230234.P4569441267988748902

/-! ## A230234.P1869434899246143384

`A008304(A000217(n+7)+8)`
-/

namespace A230234.P1869434899246143384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008304 (A000217 (n + 7) + 8).toNat

end

end A230234.P1869434899246143384

/-! ## A230234.P6164397928666227206

`A008304(eq[9, A131818(n+1)])`
-/

namespace A230234.P6164397928666227206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008304 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230234.P6164397928666227206

/-! ## A230234.P16888269668679709060

`record[A230231(n)-A230051(n)%A230236(n)]`
-/

namespace A230234.P16888269668679709060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230231 n - Int.tmod (A230051 n) (A230236 (n + 10))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230234.P16888269668679709060

/-!
# A230235: Number of permutations of [n] in which the longest increasing run has length 9.

The programs for A230235, there is no canonical definition to state claims against.
-/

/-! ## A230235.P16566531045436423410

`A230232(n+9)-A230231(n+9)`
-/

namespace A230235.P16566531045436423410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230232 (n + 9) - A230231 (n + 9)

end

end A230235.P16566531045436423410

/-! ## A230235.P14366070430064586703

`A008304(A000217(n+8)+9)`
-/

namespace A230235.P14366070430064586703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008304 (A000217 (n + 8) + 9).toNat

end

end A230235.P14366070430064586703

/-! ## A230235.P5471020119988827413

`A008304(eq[10, A131818(n+1)])`
-/

namespace A230235.P5471020119988827413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008304 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230235.P5471020119988827413

/-! ## A230235.P9088475134349394681

`A008304(eq[10, A135223(n+1)])`
-/

namespace A230235.P9088475134349394681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008304 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230235.P9088475134349394681

/-! ## A230235.P13040637791127006202

`A008304(eq[5, A002262(n)-3]+1)`
-/

namespace A230235.P13040637791127006202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008304 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A230235.P13040637791127006202

/-! ## A230235.P6305657438068801032

`A008304(eq[9, A002260(n+1)]+1)`
-/

namespace A230235.P6305657438068801032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008304 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A230235.P6305657438068801032

/-!
# A230236: Number of permutations of [n] in which the longest increasing run has length 10.

The programs for A230236, there is no canonical definition to state claims against.
-/

/-! ## A230236.P5753383763585034921

`A230233(n+10)-A230232(n+10)`
-/

namespace A230236.P5753383763585034921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230233 (n + 10) - A230232 (n + 10)

end

end A230236.P5753383763585034921

/-! ## A230236.P6943962947217951929

`A008304(eq[9, A002262(n)]+1)`
-/

namespace A230236.P6943962947217951929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008304 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A230236.P6943962947217951929

/-! ## A230236.P1241663260438034874

`A008304(eq[10, A130270(n+1)])`
-/

namespace A230236.P1241663260438034874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008304 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230236.P1241663260438034874

/-! ## A230236.P15816783336616226661

`A008304(eq[11, A131818(n+1)])`
-/

namespace A230236.P15816783336616226661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008304 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230236.P15816783336616226661

/-! ## A230236.P10146026021213635239

`A008304(A051942(n+9)+55)`
-/

namespace A230236.P10146026021213635239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008304 (A051942 (n + 9) + 55).toNat

end

end A230236.P10146026021213635239

/-! ## A230236.P12859405802535434234

`A008304(A000217(n+10)-n)`
-/

namespace A230236.P12859405802535434234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008304 (A000217 (n + 10) - (n : ℤ)).toNat

end

end A230236.P12859405802535434234

/-!
# A230239: Values of N for which the equation x^2 - 4*y^2 = N has integer solutions.

The programs for A230239, the canonical program `A230239.P18344290790974864434` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230239 has offset 1).

The definition of A230239 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A230239.P18344290790974864434

`2*floor((4*n+1)/7)+floor((n+3)/7)+n`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A230239

/-- `2*floor((4*n+1)/7)+floor((n+3)/7)+n` -/
def P18344290790974864434.Spec : Prop :=
  ∀ n, P18344290790974864434.a n = A230239 (n + 1)

theorem P18344290790974864434.correct : P18344290790974864434.Spec := by
  intro n
  simp only [A230239, Nat.add_sub_cancel]

end A230239

/-! ## A230239.P16285133384734555520

`record[n-and(10, 13*n)]`
-/

namespace A230239.P16285133384734555520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land 10 (13 * n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230239.P16285133384734555520

namespace A230239

/-- `record[n-and(10, 13*n)]` -/
def P16285133384734555520.Spec : Prop :=
  ∀ n, P16285133384734555520.a n = A230239 (n + 1)

end A230239

/-! ## A230239.P11472629325836213786

`record[and(n, xor(4, n+1)+5)]`
-/

namespace A230239.P11472629325836213786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (Nat.xor 4 (n + 1) + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230239.P11472629325836213786

namespace A230239

/-- `record[and(n, xor(4, n+1)+5)]` -/
def P11472629325836213786.Spec : Prop :=
  ∀ n, (P11472629325836213786.a n : ℤ) = A230239 (n + 1)

end A230239

/-! ## A230239.P13911366446729560430

`∪[A047610(n+1), A008598(n)]`
-/

namespace A230239.P13911366446729560430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008598 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A230239.P13911366446729560430

namespace A230239

/-- `∪[A047610(n+1), A008598(n)]` -/
def P13911366446729560430.Spec : Prop :=
  ∀ n, (P13911366446729560430.a n : ℤ) = A230239 (n + 1)

end A230239

/-! ## A230239.P14014715147662769999

`∪[A267958(n+1), A016813(n)]`
-/

namespace A230239.P14014715147662769999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A230239.P14014715147662769999

namespace A230239

/-- `∪[A267958(n+1), A016813(n)]` -/
def P14014715147662769999.Spec : Prop :=
  ∀ n, (P14014715147662769999.a n : ℤ) = A230239 (n + 1)

end A230239

/-! ## A230239.P924057817326374495

`∪[A047610(n+1), A151977(n+1)]`
-/

namespace A230239.P924057817326374495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A230239.P924057817326374495

namespace A230239

/-- `∪[A047610(n+1), A151977(n+1)]` -/
def P924057817326374495.Spec : Prop :=
  ∀ n, (P924057817326374495.a n : ℤ) = A230239 (n + 1)

end A230239

/-! ## A230239.P3597277833457457432

`∪[A047610(n+1), A267958(n+1)]`
-/

namespace A230239.P3597277833457457432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A230239.P3597277833457457432

namespace A230239

/-- `∪[A047610(n+1), A267958(n+1)]` -/
def P3597277833457457432.Spec : Prop :=
  ∀ n, (P3597277833457457432.a n : ℤ) = A230239 (n + 1)

end A230239

/-! ## A230239.P15580223746724433186

`∪[A267958(n+1), A277549(n+1)]`
-/

namespace A230239.P15580223746724433186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A230239.P15580223746724433186

namespace A230239

/-- `∪[A267958(n+1), A277549(n+1)]` -/
def P15580223746724433186.Spec : Prop :=
  ∀ n, (P15580223746724433186.a n : ℤ) = A230239 (n + 1)

end A230239

/-! ## A230239.P11961331255898283204

`A042948(comp[8*n+4])`
-/

namespace A230239.P11961331255898283204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A230239.P11961331255898283204

namespace A230239

/-- `A042948(comp[8*n+4])` -/
def P11961331255898283204.Spec : Prop :=
  ∀ n, P11961331255898283204.a n = A230239 (n + 1)

end A230239

/-! ## A230239.P2938020429786371711

`eq[1, val(2*A111396(n+1), 4)]`
-/

namespace A230239.P2938020429786371711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (2 * A111396 (n + 1)).toNat 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230239.P2938020429786371711

namespace A230239

/-- `eq[1, val(2*A111396(n+1), 4)]` -/
def P2938020429786371711.Spec : Prop :=
  ∀ n, (P2938020429786371711.a n : ℤ) = A230239 (n + 1)

end A230239

/-! ## A230239.P2786252302934353761

`eq[A050605(n)+A014025(n), A014025(n)²]`
-/

namespace A230239.P2786252302934353761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 n + A014025 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014025 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230239.P2786252302934353761

namespace A230239

/-- `eq[A050605(n)+A014025(n), A014025(n)²]` -/
def P2786252302934353761.Spec : Prop :=
  ∀ n, (P2786252302934353761.a n : ℤ) = A230239 (n + 1)

end A230239

/-! ## A230239.P16016716237864303064

`lt[Δ[A014081(n+3)], A245194(n+2)]`
-/

namespace A230239.P16016716237864303064
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245194 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A230239.P16016716237864303064

namespace A230239

/-- `lt[Δ[A014081(n+3)], A245194(n+2)]` -/
def P16016716237864303064.Spec : Prop :=
  ∀ n, (P16016716237864303064.a n : ℤ) = A230239 (n + 1)

end A230239

/-! ## A230239.P1695190459240331571

`A140427(2*2*A047588(n+1))`
-/

namespace A230239.P1695190459240331571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140427 (2 * (2 * A047588 (n + 1))).toNat

end

end A230239.P1695190459240331571

namespace A230239

/-- `A140427(2*2*A047588(n+1))` -/
def P1695190459240331571.Spec : Prop :=
  ∀ n, P1695190459240331571.a n = A230239 (n + 1)

end A230239

/-! ## A230239.P11112928050216511594

`lt[A285339(A285323(3*n+2)), 2]`
-/

namespace A230239.P11112928050216511594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285339 (A285323 (3 * n + 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A230239.P11112928050216511594

namespace A230239

/-- `lt[A285339(A285323(3*n+2)), 2]` -/
def P11112928050216511594.Spec : Prop :=
  ∀ n, (P11112928050216511594.a n : ℤ) = A230239 (n + 1)

end A230239

/-!
# A230240: Values of N for which the equation x^2 - 9*y^2 = N has integer solutions.

The programs for A230240, the canonical program `A230240.P1450382956197497395` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230240 has offset 1).

The definition of A230240 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230240.P1450382956197497395

`filter[A242660(n+1), A152822(#)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A230240

/-- `filter[A242660(n+1), A152822(#)]` -/
def P1450382956197497395.Spec : Prop :=
  ∀ n, P1450382956197497395.a n = A230240 (n + 1)

theorem P1450382956197497395.correct : P1450382956197497395.Spec := by
  intro n
  simp only [A230240, Nat.add_sub_cancel]

end A230240

/-! ## A230240.P9818131275812556678

`record[gcd(A144065(n)², A032766(n))]`
-/

namespace A230240.P9818131275812556678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A144065 n ^ 2) (A032766 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230240.P9818131275812556678

namespace A230240

/-- `record[gcd(A144065(n)², A032766(n))]` -/
def P9818131275812556678.Spec : Prop :=
  ∀ n, (P9818131275812556678.a n : ℤ) = A230240 (n + 1)

end A230240

/-! ## A230240.P18060822344930488859

`∩[A242660(n+1), A107750(n)]`
-/

namespace A230240.P18060822344930488859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242660 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230240.P18060822344930488859

namespace A230240

/-- `∩[A242660(n+1), A107750(n)]` -/
def P18060822344930488859.Spec : Prop :=
  ∀ n, (P18060822344930488859.a n : ℤ) = A230240 (n + 1)

end A230240

/-! ## A230240.P6940724357465825378

`∩[A042965(n+1), A242660(n+1)]`
-/

namespace A230240.P6940724357465825378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242660 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230240.P6940724357465825378

namespace A230240

/-- `∩[A042965(n+1), A242660(n+1)]` -/
def P6940724357465825378.Spec : Prop :=
  ∀ n, (P6940724357465825378.a n : ℤ) = A230240 (n + 1)

end A230240

/-! ## A230240.P2981945355420241968

`record[gcd(A194275(n)², A131738(n))]`
-/

namespace A230240.P2981945355420241968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A194275 n ^ 2) (A131738 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230240.P2981945355420241968

namespace A230240

/-- `record[gcd(A194275(n)², A131738(n))]` -/
def P2981945355420241968.Spec : Prop :=
  ∀ n, (P2981945355420241968.a n : ℤ) = A230240 (n + 1)

end A230240

/-! ## A230240.P13161183420890428388

`eq[lcm(18, A019583(n)), A019583(n)]`
-/

namespace A230240.P13161183420890428388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 18 (A019583 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019583 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230240.P13161183420890428388

namespace A230240

/-- `eq[lcm(18, A019583(n)), A019583(n)]` -/
def P13161183420890428388.Spec : Prop :=
  ∀ n, (P13161183420890428388.a n : ℤ) = A230240 (n + 1)

end A230240

/-! ## A230240.P550644709814581869

`record[gcd(A000330(n)², A130481(n))]`
-/

namespace A230240.P550644709814581869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000330 n ^ 2) (A130481 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230240.P550644709814581869

namespace A230240

/-- `record[gcd(A000330(n)², A130481(n))]` -/
def P550644709814581869.Spec : Prop :=
  ∀ n, (P550644709814581869.a n : ℤ) = A230240 (n + 1)

end A230240

/-!
# A230241: Number of ways to write n = p + q with p, 3*p - 10 and (p-1)*q - 1 all prime, where q is a positive integer.

The programs for A230241, there is no canonical definition to state claims against.
-/

/-! ## A230241.P1391533639097116177

`A064692(lcm(A226328(n), A280951(2*n)))`
-/

namespace A230241.P1391533639097116177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 (Int.lcm (A226328 n) (A280951 (2 * n)))

end

end A230241.P1391533639097116177

/-!
# A230243: Number of primes p < n with 3*p + 8 and (p-1)*n + 1 both prime.

The programs for A230243, there is no canonical definition to state claims against.
-/

/-! ## A230243.P633026316164549669

`gcd(A057356(n), A059995(A000073(n)))`
-/

namespace A230243.P633026316164549669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057356 n) (A059995 (A000073 n).toNat)

end

end A230243.P633026316164549669

/-!
# A230244: Number of n X n 0..3 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 4, and upper left element zero.

The programs for A230244, there is no canonical definition to state claims against.
-/

/-! ## A230244.P2319335643838325392

`A230250((n+1)²+n²)`
-/

namespace A230244.P2319335643838325392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230250 ((n + 1) ^ 2 + n ^ 2)

end

end A230244.P2319335643838325392

/-!
# A230245: Number of n X 2 0..3 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 4, and upper left element zero.

The programs for A230245, the canonical program `A230245.P6399263401376855871` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230245 has offset 1).

The definition of A230245 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230245.P10378073098488850768

`ogf((-2x+2x^2)/(-1+4x+x^2+4x^3))`
-/

namespace A230245.P10378073098488850768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -2] [1, -4, -1, -4] n

end

end A230245.P10378073098488850768

namespace A230245

/-- `ogf((-2x+2x^2)/(-1+4x+x^2+4x^3))` -/
def P10378073098488850768.Spec : Prop :=
  ∀ n, P10378073098488850768.a n = A230245 (n + 1)

end A230245

/-! ## A230245.P6399263401376855871

`a(n-2)+4*(a(n-1)+a(n-3))` with `a(0)=0, a(1)=2, a(2)=6`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A230245

/-- `a(n-2)+4*(a(n-1)+a(n-3))` -/
def P6399263401376855871.Spec : Prop :=
  ∀ n, (P6399263401376855871.a n : ℤ) = A230245 (n + 1)

theorem P6399263401376855871.correct : P6399263401376855871.Spec := by
  intro n
  simp only [A230245, Nat.add_sub_cancel]

end A230245

/-! ## A230245.P10530610089375189798

`A231285(∑[n+2]+3)`
-/

namespace A230245.P10530610089375189798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231285 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A230245.P10530610089375189798

namespace A230245

/-- `A231285(∑[n+2]+3)` -/
def P10530610089375189798.Spec : Prop :=
  ∀ n, P10530610089375189798.a n = A230245 (n + 1)

end A230245

/-! ## A230245.P1063233283466215308

`record[A231285(record[A091995(n+1)])]`
-/

namespace A230245.P1063233283466215308
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091995 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231285 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230245.P1063233283466215308

namespace A230245

/-- `record[A231285(record[A091995(n+1)])]` -/
def P1063233283466215308.Spec : Prop :=
  ∀ n, P1063233283466215308.a n = A230245 (n + 1)

end A230245

/-! ## A230245.P4855357089435394224

`record[A231285(n+1)/A227578(n)]`
-/

namespace A230245.P4855357089435394224
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231285 (n + 1) : ℚ) / (A227578 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230245.P4855357089435394224

namespace A230245

/-- `record[A231285(n+1)/A227578(n)]` -/
def P4855357089435394224.Spec : Prop :=
  ∀ n, P4855357089435394224.a n = (A230245 (n + 1) : ℚ)

end A230245

/-!
# A230246: Number of nX3 0..3 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 4, and upper left element zero.

The programs for A230246, there is no canonical definition to state claims against.
-/

/-! ## A230246.P1431418804294461662

`A230250(∑[n+2]+4)`
-/

namespace A230246.P1431418804294461662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230250 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A230246.P1431418804294461662

/-! ## A230246.P15295188727090815984

`lcm(2, A230250(A167614(n+1)))`
-/

namespace A230246.P15295188727090815984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A230250 (A167614 (n + 1)).toNat)

end

end A230246.P15295188727090815984

/-! ## A230246.P8088070598183133296

`A230250(A167614(n+1))+A011741(n)`
-/

namespace A230246.P8088070598183133296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230250 (A167614 (n + 1)).toNat + A011741 n

end

end A230246.P8088070598183133296

/-! ## A230246.P12086759343751287879

`A230250(A167614(n+1))+A011742(n)`
-/

namespace A230246.P12086759343751287879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230250 (A167614 (n + 1)).toNat + A011742 n

end

end A230246.P12086759343751287879

/-! ## A230246.P6663932915858900679

`A230250(A167614(n+1))+A025466(n)`
-/

namespace A230246.P6663932915858900679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230250 (A167614 (n + 1)).toNat + A025466 n

end

end A230246.P6663932915858900679

/-!
# A230247: Number of nX4 0..3 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 4, and upper left element zero.

The programs for A230247, there is no canonical definition to state claims against.
-/

/-! ## A230247.P9317627611478862545

`A230250(A141214(n)+7)`
-/

namespace A230247.P9317627611478862545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230250 (A141214 n + 7).toNat

end

end A230247.P9317627611478862545

/-! ## A230247.P7162736354082395592

`A230250(A052905(n)+9)`
-/

namespace A230247.P7162736354082395592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230250 (A052905 n + 9).toNat

end

end A230247.P7162736354082395592

/-! ## A230247.P6574751704292081100

`A230250(A055999(n)+10)`
-/

namespace A230247.P6574751704292081100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230250 (A055999 n + 10).toNat

end

end A230247.P6574751704292081100

/-! ## A230247.P2149208613216249316

`A230250(A167614(n+2)+1)`
-/

namespace A230247.P2149208613216249316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230250 (A167614 (n + 2) + 1).toNat

end

end A230247.P2149208613216249316

/-! ## A230247.P14704125912935804628

`A230250(A134227(n+1)+10)`
-/

namespace A230247.P14704125912935804628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230250 (A134227 (n + 1) + 10).toNat

end

end A230247.P14704125912935804628

/-!
# A230248: Number of nX5 0..3 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 4, and upper left element zero.

The programs for A230248, there is no canonical definition to state claims against.
-/

/-! ## A230248.P15362897149661470707

`A230250(A167499(n+3))`
-/

namespace A230248.P15362897149661470707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230250 (A167499 (n + 3)).toNat

end

end A230248.P15362897149661470707

/-! ## A230248.P5493959538475904291

`A230250(A155212(n)+13)`
-/

namespace A230248.P5493959538475904291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230250 (A155212 n + 13).toNat

end

end A230248.P5493959538475904291

/-! ## A230248.P8485565860639288909

`A230250(A056000(n)+15)`
-/

namespace A230248.P8485565860639288909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230250 (A056000 n + 15).toNat

end

end A230248.P8485565860639288909

/-! ## A230248.P13409170516879324246

`A230250(eq[7, A066657(n)])`
-/

namespace A230248.P13409170516879324246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230250 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230248.P13409170516879324246

/-! ## A230248.P13752126722517617751

`A230250(eq[6, A131818(n+1)])`
-/

namespace A230248.P13752126722517617751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230250 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230248.P13752126722517617751

/-!
# A230249: Number of nX6 0..3 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 4, and upper left element zero.

The programs for A230249, there is no canonical definition to state claims against.
-/

/-! ## A230249.P5784787059861194577

`A230250(A133263(n+5)+4)`
-/

namespace A230249.P5784787059861194577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230250 (A133263 (n + 5) + 4).toNat

end

end A230249.P5784787059861194577

/-! ## A230249.P12079567899969592712

`A230250(A000124(n+5)+5)`
-/

namespace A230249.P12079567899969592712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230250 (A000124 (n + 5) + 5).toNat

end

end A230249.P12079567899969592712

/-! ## A230249.P9683186869927103457

`A230250(eq[7, A131818(n+1)])`
-/

namespace A230249.P9683186869927103457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230250 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230249.P9683186869927103457

/-! ## A230249.P13672695500429890756

`A230250(Δ[A023545(n+1)]+10)`
-/

namespace A230249.P13672695500429890756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230250 (f1 (n + 1) - f1 n + 10).toNat

end

end A230249.P13672695500429890756

/-! ## A230249.P3729449041844585458

`A230250(A134227(n+5)-Δ[n²])`
-/

namespace A230249.P3729449041844585458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230250 (A134227 (n + 5) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A230249.P3729449041844585458

/-!
# A230250: T(n,k)=Number of nXk 0..3 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 4, and upper left element zero.

The programs for A230250, there is no canonical definition to state claims against.
-/

/-! ## A230250.P17710569508148123287

`A050498(A027024(n+2))%A203846(n+1)`
-/

namespace A230250.P17710569508148123287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050498 (A027024 (n + 2)).toNat) (A203846 (n + 1))

end

end A230250.P17710569508148123287

/-!
# A230251: Number of permutations of [2n+1] in which the longest increasing run has length n+1.

The programs for A230251, there is no canonical definition to state claims against.
-/

/-! ## A230251.P16545354761148354349

`A008304((n+1)²+n²)`
-/

namespace A230251.P16545354761148354349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008304 ((n + 1) ^ 2 + n ^ 2)

end

end A230251.P16545354761148354349

/-! ## A230251.P4536338369281671880

`A122843((n+1)²+n²)`
-/

namespace A230251.P4536338369281671880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122843 ((n + 1) ^ 2 + n ^ 2)

end

end A230251.P4536338369281671880

/-! ## A230251.P2185631514993434361

`A008304(A001844(n))^ceil(acot(n))`
-/

namespace A230251.P2185631514993434361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008304 (A001844 n).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A230251.P2185631514993434361

/-! ## A230251.P8153501498546569896

`record[gcd(A008304(n+1), A114327(n))]`
-/

namespace A230251.P8153501498546569896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008304 (n + 1)) (A114327 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230251.P8153501498546569896

/-! ## A230251.P5238657885969082283

`A008304(A001844(n))^A014963(A016825(n))`
-/

namespace A230251.P5238657885969082283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008304 (A001844 n).toNat : ℚ) ^ (A014963 (A016825 n).toNat : ℤ)

end

end A230251.P5238657885969082283

/-!
# A230253: Coefficients of power series A(x) such that coefficient of x^n in A(x)^(n+1) equals (n+1)*(n+2)!/2 for n>=0.

The programs for A230253, there is no canonical definition to state claims against.
-/

/-! ## A230253.P17058701012491966698

`a(n-2)*A097467(a(n-1))` with `a(0)=1, a(1)=3, a(2)=3`
-/

namespace A230253.P17058701012491966698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 3] fun n a =>
  a (n - 2) * A097467 (a (n - 1)).toNat

end

end A230253.P17058701012491966698

/-! ## A230253.P16784619461647878514

`A074643(A238923(n+1))`
-/

namespace A230253.P16784619461647878514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074643 (A238923 (n + 1)).toNat

end

end A230253.P16784619461647878514

/-!
# A230254: Number of ways to write n = p + q with p and (p+1)*q/2 + 1 both prime.

The programs for A230254, there is no canonical definition to state claims against.
-/

/-! ## A230254.P4345181107834630489

`A130654(A060091(n)+2)`
-/

namespace A230254.P4345181107834630489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130654 (A060091 n + 2).toNat

end

end A230254.P4345181107834630489

/-! ## A230254.P4294191364515391374

`A104638(A264965(A006950(n))²)`
-/

namespace A230254.P4294191364515391374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104638 (A264965 (A006950 n).toNat ^ 2).toNat

end

end A230254.P4294191364515391374

/-! ## A230254.P10555784885766116526

`A338651(3*n+1)+A055641(A000219(n))`
-/

namespace A230254.P10555784885766116526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338651 (3 * n + 1) + A055641 (A000219 n).toNat

end

end A230254.P10555784885766116526

/-! ## A230254.P4865941145302827902

`A000196(A057885(2*n+3)%A002384(n+1))`
-/

namespace A230254.P4865941145302827902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.tmod (A057885 (2 * n + 3)) (A002384 (n + 1))).toNat

end

end A230254.P4865941145302827902

/-! ## A230254.P10127057677002064586

`A174886(xor(A131378(n), A161680(n)))`
-/

namespace A230254.P10127057677002064586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174886 (Int.xor (A131378 n) (A161680 n)).toNat

end

end A230254.P10127057677002064586

/-!
# A230255: Emirps whose sum of digits is prime.

The programs for A230255, there is no canonical definition to state claims against.
-/

/-! ## A230255.P698061697927344022

`∩[A006567(n+1), A046704(n+1)]`
-/

namespace A230255.P698061697927344022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230255.P698061697927344022

/-! ## A230255.P12818989123665862625

`∩[A006567(n+1), A186773(n+1)]`
-/

namespace A230255.P12818989123665862625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230255.P12818989123665862625

/-! ## A230255.P14312460808221998502

`∩[A046704(n+1), A000040(A156793(n+1))]`
-/

namespace A230255.P14312460808221998502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A156793 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230255.P14312460808221998502

/-! ## A230255.P17797817176934381276

`∩[A000040(A156793(n+1)), A186773(n+1)]`
-/

namespace A230255.P17797817176934381276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A156793 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230255.P17797817176934381276

/-! ## A230255.P17756202410911270911

`∩[A046704(n+1), A068893(n+1)]`
-/

namespace A230255.P17756202410911270911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230255.P17756202410911270911

/-! ## A230255.P3305544280382046024

`∩[A046704(n+1), A109019(n+1)]`
-/

namespace A230255.P3305544280382046024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230255.P3305544280382046024

/-! ## A230255.P16373181444854947111

`∩[A046704(n+1), A350867(n+1)]`
-/

namespace A230255.P16373181444854947111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230255.P16373181444854947111

/-!
# A230256: Expansion of f(-x) * psi(x^2) * phi(x^3) / f(-x^3)^3 in powers of x where phi(), psi(), f() are Ramanujan theta functions.

The programs for A230256, there is no canonical definition to state claims against.
-/

/-! ## A230256.P5017844499697262910

`A132179(2*n)`
-/

namespace A230256.P5017844499697262910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132179 (2 * n)

end

end A230256.P5017844499697262910

/-! ## A230256.P729631858588000629

`A062242(4*n)`
-/

namespace A230256.P729631858588000629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062242 (4 * n)

end

end A230256.P729631858588000629

/-! ## A230256.P16271488912157614466

`A062244(4*n)`
-/

namespace A230256.P16271488912157614466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062244 (4 * n)

end

end A230256.P16271488912157614466

/-! ## A230256.P2380439719657334494

`A132301(4*n)`
-/

namespace A230256.P2380439719657334494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132301 (4 * n)

end

end A230256.P2380439719657334494

/-! ## A230256.P17988817490472909564

`A182056(4*n)`
-/

namespace A230256.P17988817490472909564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182056 (4 * n)

end

end A230256.P17988817490472909564

/-! ## A230256.P3795603222327689918

`A182036(6*n)`
-/

namespace A230256.P3795603222327689918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182036 (6 * n)

end

end A230256.P3795603222327689918

/-! ## A230256.P1692524365411327706

`A254525(2*n)`
-/

namespace A230256.P1692524365411327706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254525 (2 * n)

end

end A230256.P1692524365411327706

/-! ## A230256.P8884935203588777791

`A263526(4*n)`
-/

namespace A230256.P8884935203588777791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263526 (4 * n)

end

end A230256.P8884935203588777791

/-!
# A230257: The number of multinomial coefficients over partitions with value equal to 9.

The programs for A230257, the canonical program `A230257.P6954027376568050003` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230257 has offset 1).

The definition of A230257 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A230257.P6954027376568050003

`floor(n/8)+floor(n/9)-floor((n+1)/9)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A230257

/-- `floor(n/8)+floor(n/9)-floor((n+1)/9)` -/
def P6954027376568050003.Spec : Prop :=
  ∀ n, P6954027376568050003.a n = A230257 (n + 1)

theorem P6954027376568050003.correct : P6954027376568050003.Spec := by
  intro n
  simp only [A230257, Nat.add_sub_cancel]

end A230257

/-! ## A230257.P7418934174728639737

`A088481(A342851(n+2))%A007095(n+1)`
-/

namespace A230257.P7418934174728639737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088481 (A342851 (n + 2)).toNat) (A007095 (n + 1))

end

end A230257.P7418934174728639737

namespace A230257

/-- `A088481(A342851(n+2))%A007095(n+1)` -/
def P7418934174728639737.Spec : Prop :=
  ∀ n, P7418934174728639737.a n = A230257 (n + 1)

end A230257

/-! ## A230257.P12668514673881824089

`A076489(A048333(n))`
-/

namespace A230257.P12668514673881824089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076489 (A048333 n).toNat

end

end A230257.P12668514673881824089

namespace A230257

/-- `A076489(A048333(n))` -/
def P12668514673881824089.Spec : Prop :=
  ∀ n, P12668514673881824089.a n = A230257 (n + 1)

end A230257

/-!
# A230259: Sequence of pairs k>0 and j>1 with the smallest j and the smallest sum j+k such that (k*j^n-1)*k*j^n-1 is prime.

The programs for A230259, there is no canonical definition to state claims against.
-/

/-! ## A230259.P4051011034285198694

`A124766(A074966(n+1)+10)`
-/

namespace A230259.P4051011034285198694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (A074966 (n + 1) + 10).toNat

end

end A230259.P4051011034285198694

/-! ## A230259.P11712452581230898128

`A045778(n+1)+A008683(A225540(n))`
-/

namespace A230259.P11712452581230898128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (n + 1) + A008683 (A225540 n).toNat

end

end A230259.P11712452581230898128

/-! ## A230259.P8389534508320814900

`A076839(xor(A004770(n+1), A332284(2*n)))`
-/

namespace A230259.P8389534508320814900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076839 (Int.xor (A004770 (n + 1)) (A332284 (2 * n))).toNat

end

end A230259.P8389534508320814900

/-! ## A230259.P17059656775799167830

`A285572(n+1)+A008966(A001405(n+4))`
-/

namespace A230259.P17059656775799167830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285572 (n + 1) + A008966 (A001405 (n + 4)).toNat

end

end A230259.P17059656775799167830

/-! ## A230259.P16441891353559581972

`A124766(A160927(n+5)+2)`
-/

namespace A230259.P16441891353559581972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (A160927 (n + 5) + 2).toNat

end

end A230259.P16441891353559581972

/-!
# A230260: Number of decompositions of 2n into unordered sums of two primes with an even sum of Hamming weights.

The programs for A230260, there is no canonical definition to state claims against.
-/

/-! ## A230260.P17916590589707817001

`A109072(A115920(n+1)%A305291(n+1))`
-/

namespace A230260.P17916590589707817001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109072 (Int.tmod (A115920 (n + 1)) (A305291 (n + 1))).toNat

end

end A230260.P17916590589707817001

/-! ## A230260.P13957219699919066516

`A244759(A244777(n+1))%A342667(n+1)`
-/

namespace A230260.P13957219699919066516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244759 (A244777 (n + 1)).toNat) (A342667 (n + 1))

end

end A230260.P13957219699919066516

/-! ## A230260.P13352330046907934758

`A102673(record[A123108(n+6)+A036876(n+10)])`
-/

namespace A230260.P13352330046907934758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (n + 6) + A036876 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102673 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A230260.P13352330046907934758

/-! ## A230260.P697326200330314362

`A196564(A064989(3*(n+1))*A242919(3*n+2))`
-/

namespace A230260.P697326200330314362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A064989 (3 * (n + 1)) * A242919 (3 * n + 2)).toNat

end

end A230260.P697326200330314362

/-! ## A230260.P8313843052951731800

`A303950(A303913(3*n+4))%A303932(2*n+3)`
-/

namespace A230260.P8313843052951731800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303950 (A303913 (3 * n + 4)).toNat) (A303932 (2 * n + 3))

end

end A230260.P8313843052951731800

/-!
# A230263: Number of nonnegative integer solutions to the equation x^2 - 4*y^2 = n.

The programs for A230263, the canonical program `A230263.P8370102804236807387` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230263 has offset 1).

The definition of A230263 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230263.P8370102804236807387

`lcm(floor((2-n%4)/2), A034178(lcm(4, n+1)/4))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A230263

/-- `lcm(floor((2-n%4)/2), A034178(lcm(4, n+1)/4))` -/
def P8370102804236807387.Spec : Prop :=
  ∀ n, (P8370102804236807387.a n : ℤ) = A230263 (n + 1)

theorem P8370102804236807387.correct : P8370102804236807387.Spec := by
  intro n
  simp only [A230263, Nat.add_sub_cancel]

end A230263

/-! ## A230263.P17707965873953339530

`A110654(lcm(A102560(n), A228441(n+1)))`
-/

namespace A230263.P17707965873953339530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (Int.lcm (A102560 n) (A228441 (n + 1)))

end

end A230263.P17707965873953339530

namespace A230263

/-- `A110654(lcm(A102560(n), A228441(n+1)))` -/
def P17707965873953339530.Spec : Prop :=
  ∀ n, P17707965873953339530.a n = A230263 (n + 1)

end A230263

/-! ## A230263.P13750766389802453157

`A230279(4*(n+1))`
-/

namespace A230263.P13750766389802453157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230279 (4 * (n + 1))

end

end A230263.P13750766389802453157

namespace A230263

/-- `A230279(4*(n+1))` -/
def P13750766389802453157.Spec : Prop :=
  ∀ n, P13750766389802453157.a n = A230263 (n + 1)

end A230263

/-! ## A230263.P7505258427011414251

`dr(A230279(Δ[A001844(n)]))`
-/

namespace A230263.P7505258427011414251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A230279 (f1 (n + 1) - f1 n).toNat)

end

end A230263.P7505258427011414251

namespace A230263

/-- `dr(A230279(Δ[A001844(n)]))` -/
def P7505258427011414251.Spec : Prop :=
  ∀ n, (P7505258427011414251.a n : ℤ) = A230263 (n + 1)

end A230263

/-! ## A230263.P5234810273069356474

`C(A133162(A133116(2*n+3)), A133145(3*n))`
-/

namespace A230263.P5234810273069356474
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A133162 (A133116 (2 * n + 3)).toNat).toNat (A133145 (3 * n)).toNat

end

end A230263.P5234810273069356474

namespace A230263

/-- `C(A133162(A133116(2*n+3)), A133145(3*n))` -/
def P5234810273069356474.Spec : Prop :=
  ∀ n, (P5234810273069356474.a n : ℤ) = A230263 (n + 1)

end A230263

/-!
# A230264: Number of nonnegative integer solutions to the equation x^2 - 9*y^2 = n.

The programs for A230264, there is no canonical definition to state claims against.
-/

/-! ## A230264.P59057262680014256

`A330166(A010878(n)^A034178(n+1))`
-/

namespace A230264.P59057262680014256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330166 (SequenceMachineLib.roundAway ((A010878 n : ℚ) ^ (A034178 (n + 1) : ℤ))).toNat

end

end A230264.P59057262680014256

/-! ## A230264.P4314713943881987017

`A330166(A010878(n)^ceil(A112329(n+1)/2))`
-/

namespace A230264.P4314713943881987017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330166 (SequenceMachineLib.roundAway ((A010878 n : ℚ) ^ (⌈(A112329 (n + 1) : ℚ) / 2⌉ : ℤ))).toNat

end

end A230264.P4314713943881987017

/-! ## A230264.P8457317466119241334

`A330166(A010878(n)^(A220400(n+1)+val(n²+2, 2)))`
-/

namespace A230264.P8457317466119241334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330166 (SequenceMachineLib.roundAway ((A010878 n : ℚ) ^ (A220400 (n + 1) + (SequenceMachineLib.valuation (n ^ 2 + 2) 2 : ℤ) : ℤ))).toNat

end

end A230264.P8457317466119241334

/-! ## A230264.P13811704109868220876

`A330166(A010878(n)^round(A143520(n+1)/(2*n+1)))`
-/

namespace A230264.P13811704109868220876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330166 (SequenceMachineLib.roundAway ((A010878 n : ℚ) ^ (SequenceMachineLib.roundAway ((A143520 (n + 1) : ℚ) / (2 * n + 1 : ℚ)) : ℤ))).toNat

end

end A230264.P13811704109868220876

/-! ## A230264.P11422131389309038362

`A330166(A010878(n)^(A220400(n+1)+A059841(n)))`
-/

namespace A230264.P11422131389309038362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330166 (SequenceMachineLib.roundAway ((A010878 n : ℚ) ^ (A220400 (n + 1) + A059841 n : ℤ))).toNat

end

end A230264.P11422131389309038362

/-!
# A230265: Denominators of eta(2*n)/Pi^(2*n), where eta(n) is the Dirichlet eta function.

The programs for A230265, there is no canonical definition to state claims against.
-/

/-! ## A230265.P12284042269287746736

`2*A036281(n)`
-/

namespace A230265.P12284042269287746736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A036281 n

end

end A230265.P12284042269287746736

/-! ## A230265.P17121539037267572242

`A036281(-A001489(n))+A036281(n)`
-/

namespace A230265.P17121539037267572242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036281 (-A001489 n).toNat + A036281 n

end

end A230265.P17121539037267572242

/-! ## A230265.P11359883273175363464

`A036281(n)+lcm(A008458(n), A036281(n))`
-/

namespace A230265.P11359883273175363464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036281 n + (Int.lcm (A008458 n) (A036281 n) : ℤ)

end

end A230265.P11359883273175363464

/-! ## A230265.P16298082174557634255

`A036281(n)+A036281(n)+A000007(n+1)`
-/

namespace A230265.P16298082174557634255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036281 n + (A036281 n + A000007 (n + 1))

end

end A230265.P16298082174557634255

/-! ## A230265.P353087199020120144

`A036281(A004907(n+1))+A036281(n)`
-/

namespace A230265.P353087199020120144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036281 (A004907 (n + 1)).toNat + A036281 n

end

end A230265.P353087199020120144

/-!
# A230267: Coins left after packing 5 curves coins patterns into fountain of coins base n.

The programs for A230267, the canonical program `A230267.P1300006812449049282` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230267 has offset 1).

The definition of A230267 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230267.P1300006812449049282

`a(n-3)+xor(1, n+1)` with `a(0)=1, a(1)=3, a(2)=2`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A230267

/-- `a(n-3)+xor(1, n+1)` -/
def P1300006812449049282.Spec : Prop :=
  ∀ n, (P1300006812449049282.a n : ℤ) = A230267 (n + 1)

theorem P1300006812449049282.correct : P1300006812449049282.Spec := by
  intro n
  simp only [A230267, Nat.add_sub_cancel]

end A230267

/-! ## A230267.P1862596604034195174

`a(n-3)+Δ[or(1, n)]+n` with `a(0)=1, a(1)=3, a(2)=2`
-/

namespace A230267.P1862596604034195174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 2] fun n a =>
  a (n - 3) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ))

end

end A230267.P1862596604034195174

namespace A230267

/-- `a(n-3)+Δ[or(1, n)]+n` -/
def P1862596604034195174.Spec : Prop :=
  ∀ n, P1862596604034195174.a n = A230267 (n + 1)

end A230267

/-! ## A230267.P13089725573250405311

`a(n-3)+n*ratio[or(1, n)]` with `a(0)=1, a(1)=3, a(2)=2`
-/

namespace A230267.P13089725573250405311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3, 2] fun n a =>
  a (n - 3) + (n : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A230267.P13089725573250405311

namespace A230267

/-- `a(n-3)+n*ratio[or(1, n)]` -/
def P13089725573250405311.Spec : Prop :=
  ∀ n, P13089725573250405311.a n = (A230267 (n + 1) : ℚ)

end A230267

/-! ## A230267.P901624410307865211

`a(n-3)+2*n%2+n` with `a(0)=1, a(1)=3, a(2)=2`
-/

namespace A230267.P901624410307865211
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 2] fun n a =>
  a (n - 3) + (2 * (n % 2) + n)

end

end A230267.P901624410307865211

namespace A230267

/-- `a(n-3)+2*n%2+n` -/
def P901624410307865211.Spec : Prop :=
  ∀ n, (P901624410307865211.a n : ℤ) = A230267 (n + 1)

end A230267

/-! ## A230267.P310851229801738504

`∑[a(n-3)+1]-char[2*n]` with `a(0)=2, a(1)=1, a(2)=0`
-/

namespace A230267.P310851229801738504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 0] fun n f1 =>
  f1 (n - 3) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A230267.P310851229801738504

namespace A230267

/-- `∑[a(n-3)+1]-char[2*n]` -/
def P310851229801738504.Spec : Prop :=
  ∀ n, P310851229801738504.a n = A230267 (n + 1)

end A230267

/-! ## A230267.P14373746322974816780

`∑[xor(1, ∑[2*gcd(3, n)-3]-2)+1]`
-/

namespace A230267.P14373746322974816780
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.gcd 3 n : ℤ) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (∑ j ∈ Finset.range (n + 1), f2 j - 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230267.P14373746322974816780

namespace A230267

/-- `∑[xor(1, ∑[2*gcd(3, n)-3]-2)+1]` -/
def P14373746322974816780.Spec : Prop :=
  ∀ n, P14373746322974816780.a n = A230267 (n + 1)

end A230267

/-! ## A230267.P16547865876480415199

`∑[Δ[or(1, n²)%3+n]+floor(n/3)]`
-/

namespace A230267.P16547865876480415199
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n ^ 2) % 3 + n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230267.P16547865876480415199

namespace A230267

/-- `∑[Δ[or(1, n²)%3+n]+floor(n/3)]` -/
def P16547865876480415199.Spec : Prop :=
  ∀ n, P16547865876480415199.a n = A230267 (n + 1)

end A230267

/-! ## A230267.P10587456675209918809

`a(n-3)+n+1-(-1)^n` with `a(0)=1, a(1)=3, a(2)=2`
-/

namespace A230267.P10587456675209918809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 2] fun n a =>
  a (n - 3) + (n + 1 : ℤ) - (-1) ^ n

end

end A230267.P10587456675209918809

namespace A230267

/-- `a(n-3)+n+1-(-1)^n` -/
def P10587456675209918809.Spec : Prop :=
  ∀ n, P10587456675209918809.a n = A230267 (n + 1)

end A230267

/-! ## A230267.P8518345754921995912

`a(n-3)+or(1, n+1)-char[2*n]` with `a(0)=1, a(1)=3, a(2)=2`
-/

namespace A230267.P8518345754921995912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 2] fun n a =>
  a (n - 3) + ((Nat.lor 1 (n + 1) : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A230267.P8518345754921995912

namespace A230267

/-- `a(n-3)+or(1, n+1)-char[2*n]` -/
def P8518345754921995912.Spec : Prop :=
  ∀ n, P8518345754921995912.a n = A230267 (n + 1)

end A230267

/-! ## A230267.P2014141787471491935

`∑[xor(1, A063942(n))+1]`
-/

namespace A230267.P2014141787471491935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A063942 n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230267.P2014141787471491935

namespace A230267

/-- `∑[xor(1, A063942(n))+1]` -/
def P2014141787471491935.Spec : Prop :=
  ∀ n, P2014141787471491935.a n = A230267 (n + 1)

end A230267

/-! ## A230267.P14948270000414415239

`A236337(n)-A051275(n)`
-/

namespace A230267.P14948270000414415239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236337 n - A051275 n

end

end A230267.P14948270000414415239

namespace A230267

/-- `A236337(n)-A051275(n)` -/
def P14948270000414415239.Spec : Prop :=
  ∀ n, P14948270000414415239.a n = A230267 (n + 1)

end A230267

/-! ## A230267.P13235975629104069861

`A188623(n+1)+A000035(n)`
-/

namespace A230267.P13235975629104069861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188623 (n + 1) + A000035 n

end

end A230267.P13235975629104069861

namespace A230267

/-- `A188623(n+1)+A000035(n)` -/
def P13235975629104069861.Spec : Prop :=
  ∀ n, P13235975629104069861.a n = A230267 (n + 1)

end A230267

/-!
# A230268: Number of n X n 0..2 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230268, there is no canonical definition to state claims against.
-/

/-! ## A230268.P11680643830093925029

`A230275(∑[4*n]+1)`
-/

namespace A230268.P11680643830093925029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230275 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A230268.P11680643830093925029

/-! ## A230268.P16498450553450497827

`lcm(2, A230275(A001844(n)))`
-/

namespace A230268.P16498450553450497827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A230275 (A001844 n).toNat)

end

end A230268.P16498450553450497827

/-! ## A230268.P12481264451824402063

`A230275(A001844(n))+A033665(n)`
-/

namespace A230268.P12481264451824402063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230275 (A001844 n).toNat + A033665 n

end

end A230268.P12481264451824402063

/-! ## A230268.P12270479984520073736

`A332639(n)+A230275(A001844(n))`
-/

namespace A230268.P12270479984520073736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332639 n + A230275 (A001844 n).toNat

end

end A230268.P12270479984520073736

/-!
# A230269: Number of n X 2 0..2 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230269, the canonical program `A230269.P10129225810490858189` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230269 has offset 1).

The definition of A230269 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 183 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230269.P5392999754862239174

`ogf(2x^2/(1-4x+x^2+2x^3))`
-/

namespace A230269.P5392999754862239174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2] [1, -4, 1, 2] n

end

end A230269.P5392999754862239174

namespace A230269

/-- `ogf(2x^2/(1-4x+x^2+2x^3))` -/
def P5392999754862239174.Spec : Prop :=
  ∀ n, P5392999754862239174.a n = A230269 (n + 1)

end A230269

/-! ## A230269.P10129225810490858189

`2*(a(n-2)+1)+3*a(n-1)` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A230269

/-- `2*(a(n-2)+1)+3*a(n-1)` -/
def P10129225810490858189.Spec : Prop :=
  ∀ n, (P10129225810490858189.a n : ℤ) = A230269 (n + 1)

theorem P10129225810490858189.correct : P10129225810490858189.Spec := by
  intro n
  simp only [A230269, Nat.add_sub_cancel]

end A230269

/-! ## A230269.P11188372037223821582

`a(n-1)+lcm(2, a(n-1)+a(n-2)+1)` with `a(0)=0, a(1)=0`
-/

namespace A230269.P11188372037223821582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) + Nat.lcm 2 (a (n - 1) + (a (n - 2) + 1))

end

end A230269.P11188372037223821582

namespace A230269

/-- `a(n-1)+lcm(2, a(n-1)+a(n-2)+1)` -/
def P11188372037223821582.Spec : Prop :=
  ∀ n, (P11188372037223821582.a n : ℤ) = A230269 (n + 1)

end A230269

/-! ## A230269.P5921480384281835382

`4*a(n-1)-a(n-2)-2*a(n-3)` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A230269.P5921480384281835382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  4 * a (n - 1) - a (n - 2) - 2 * a (n - 3)

end

end A230269.P5921480384281835382

namespace A230269

/-- `4*a(n-1)-a(n-2)-2*a(n-3)` -/
def P5921480384281835382.Spec : Prop :=
  ∀ n, P5921480384281835382.a n = A230269 (n + 1)

end A230269

/-! ## A230269.P14978681364770784077

`a(n-1)+2+a(n-1)+a(n-2)+a(n-1)+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A230269.P14978681364770784077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) + 2 + (a (n - 1) + (a (n - 2) + (a (n - 1) + a (n - 2))))

end

end A230269.P14978681364770784077

namespace A230269

/-- `a(n-1)+2+a(n-1)+a(n-2)+a(n-1)+a(n-2)` -/
def P14978681364770784077.Spec : Prop :=
  ∀ n, (P14978681364770784077.a n : ℤ) = A230269 (n + 1)

end A230269

/-! ## A230269.P14231315857460310848

`A106434(n)+a(n-1)` with `a(0)=0`
-/

namespace A230269.P14231315857460310848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A106434 n + a (n - 1)

end

end A230269.P14231315857460310848

namespace A230269

/-- `A106434(n)+a(n-1)` -/
def P14231315857460310848.Spec : Prop :=
  ∀ n, P14231315857460310848.a n = A230269 (n + 1)

end A230269

/-! ## A230269.P1643468077602117058

`∑[A106434(A028310(n))]`
-/

namespace A230269.P1643468077602117058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106434 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230269.P1643468077602117058

namespace A230269

/-- `∑[A106434(A028310(n))]` -/
def P1643468077602117058.Spec : Prop :=
  ∀ n, P1643468077602117058.a n = A230269 (n + 1)

end A230269

/-! ## A230269.P11695412455842984641

`(A007455(A004273(n))-1)/2`
-/

namespace A230269.P11695412455842984641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007455 (A004273 n).toNat - 1 : ℚ) / 2

end

end A230269.P11695412455842984641

namespace A230269

/-- `(A007455(A004273(n))-1)/2` -/
def P11695412455842984641.Spec : Prop :=
  ∀ n, P11695412455842984641.a n = (A230269 (n + 1) : ℚ)

end A230269

/-! ## A230269.P17461322722181696532

`∑[A106434(A008619(A004273(n)))]`
-/

namespace A230269.P17461322722181696532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106434 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230269.P17461322722181696532

namespace A230269

/-- `∑[A106434(A008619(A004273(n)))]` -/
def P17461322722181696532.Spec : Prop :=
  ∀ n, P17461322722181696532.a n = A230269 (n + 1)

end A230269

/-! ## A230269.P7568079022069474590

`A180143(n)-A055099(n)`
-/

namespace A230269.P7568079022069474590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180143 n - A055099 n

end

end A230269.P7568079022069474590

namespace A230269

/-- `A180143(n)-A055099(n)` -/
def P7568079022069474590.Spec : Prop :=
  ∀ n, P7568079022069474590.a n = A230269 (n + 1)

end A230269

/-! ## A230269.P7113661089084938430

`A104934(n)-A193653(n)`
-/

namespace A230269.P7113661089084938430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104934 n - A193653 n

end

end A230269.P7113661089084938430

namespace A230269

/-- `A104934(n)-A193653(n)` -/
def P7113661089084938430.Spec : Prop :=
  ∀ n, P7113661089084938430.a n = A230269 (n + 1)

end A230269

/-! ## A230269.P4985636908466294459

`∑[A206776(n)-A007482(n)]-1`
-/

namespace A230269.P4985636908466294459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206776 n - A007482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A230269.P4985636908466294459

namespace A230269

/-- `∑[A206776(n)-A007482(n)]-1` -/
def P4985636908466294459.Spec : Prop :=
  ∀ n, P4985636908466294459.a n = A230269 (n + 1)

end A230269

/-! ## A230269.P9486791113224124050

`2*(∑[A007482(n)]-A055099(n))`
-/

namespace A230269.P9486791113224124050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - A055099 n)

end

end A230269.P9486791113224124050

namespace A230269

/-- `2*(∑[A007482(n)]-A055099(n))` -/
def P9486791113224124050.Spec : Prop :=
  ∀ n, P9486791113224124050.a n = A230269 (n + 1)

end A230269

/-! ## A230269.P10943140447750424602

`∑[A106434(n+1)]-A106434(n+1)`
-/

namespace A230269.P10943140447750424602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A106434 (n + 1)

end

end A230269.P10943140447750424602

namespace A230269

/-- `∑[A106434(n+1)]-A106434(n+1)` -/
def P10943140447750424602.Spec : Prop :=
  ∀ n, P10943140447750424602.a n = A230269 (n + 1)

end A230269

/-! ## A230269.P7496012576969791183

`A106434(n+2)-A193653(n+1)`
-/

namespace A230269.P7496012576969791183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106434 (n + 2) - A193653 (n + 1)

end

end A230269.P7496012576969791183

namespace A230269

/-- `A106434(n+2)-A193653(n+1)` -/
def P7496012576969791183.Spec : Prop :=
  ∀ n, P7496012576969791183.a n = A230269 (n + 1)

end A230269

/-! ## A230269.P8863884741892347366

`2*(A007481(2*n+1)-A052986(n+1))`
-/

namespace A230269.P8863884741892347366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A007481 (2 * n + 1) - A052986 (n + 1))

end

end A230269.P8863884741892347366

namespace A230269

/-- `2*(A007481(2*n+1)-A052986(n+1))` -/
def P8863884741892347366.Spec : Prop :=
  ∀ n, P8863884741892347366.a n = A230269 (n + 1)

end A230269

/-! ## A230269.P8071908029523850122

`A180143(n+1)-(A007483(n)+A007482(n+1))`
-/

namespace A230269.P8071908029523850122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180143 (n + 1) - (A007483 n + A007482 (n + 1))

end

end A230269.P8071908029523850122

namespace A230269

/-- `A180143(n+1)-(A007483(n)+A007482(n+1))` -/
def P8071908029523850122.Spec : Prop :=
  ∀ n, P8071908029523850122.a n = A230269 (n + 1)

end A230269

/-! ## A230269.P14880277980714765574

`∑[(2*A055099(n+1))%A055099(n)]`
-/

namespace A230269.P14880277980714765574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A055099 (n + 1)) (A055099 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230269.P14880277980714765574

namespace A230269

/-- `∑[(2*A055099(n+1))%A055099(n)]` -/
def P14880277980714765574.Spec : Prop :=
  ∀ n, P14880277980714765574.a n = A230269 (n + 1)

end A230269

/-!
# A230270: Number of n X 3 0..2 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230270, there is no canonical definition to state claims against.
-/

/-! ## A230270.P5498816983064354138

`A230275(∑[n+2]+4)`
-/

namespace A230270.P5498816983064354138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230275 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A230270.P5498816983064354138

/-! ## A230270.P12612772819189579830

`lcm(2, A230275(A167614(n+1)))`
-/

namespace A230270.P12612772819189579830
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A230275 (A167614 (n + 1)).toNat)

end

end A230270.P12612772819189579830

/-! ## A230270.P10873721844020018683

`A054977(n)*A230275(A167614(n+1))`
-/

namespace A230270.P10873721844020018683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A230275 (A167614 (n + 1)).toNat

end

end A230270.P10873721844020018683

/-! ## A230270.P4954832549738757880

`A230275(A167614(n+1))%A059856(n)`
-/

namespace A230270.P4954832549738757880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230275 (A167614 (n + 1)).toNat) (A059856 n)

end

end A230270.P4954832549738757880

/-! ## A230270.P16060422870061635521

`A230275(A167614(n+1))+A034538(n+1)`
-/

namespace A230270.P16060422870061635521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230275 (A167614 (n + 1)).toNat + A034538 (n + 1)

end

end A230270.P16060422870061635521

/-!
# A230271: Number of nX4 0..2 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230271, there is no canonical definition to state claims against.
-/

/-! ## A230271.P4793810546076873922

`A230275(A141214(n)+7)`
-/

namespace A230271.P4793810546076873922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230275 (A141214 n + 7).toNat

end

end A230271.P4793810546076873922

/-! ## A230271.P10666480596917266389

`A230275(A052905(n)+9)`
-/

namespace A230271.P10666480596917266389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230275 (A052905 n + 9).toNat

end

end A230271.P10666480596917266389

/-! ## A230271.P1975331269778720741

`A230275(A167614(n+2)+1)`
-/

namespace A230271.P1975331269778720741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230275 (A167614 (n + 2) + 1).toNat

end

end A230271.P1975331269778720741

/-! ## A230271.P672826737837208577

`A230275(A166136(n+2)-2)`
-/

namespace A230271.P672826737837208577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230275 (A166136 (n + 2) - 2).toNat

end

end A230271.P672826737837208577

/-! ## A230271.P2572365305410084361

`A230275(Δ[A264443(n)-n²])`
-/

namespace A230271.P2572365305410084361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230275 (f1 (n + 1) - f1 n).toNat

end

end A230271.P2572365305410084361

/-!
# A230272: Number of nX5 0..2 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230272, there is no canonical definition to state claims against.
-/

/-! ## A230272.P4095139950133448174

`A230275(A167499(n+3))`
-/

namespace A230272.P4095139950133448174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230275 (A167499 (n + 3)).toNat

end

end A230272.P4095139950133448174

/-! ## A230272.P11548079548918926877

`A230275(A155212(n)+13)`
-/

namespace A230272.P11548079548918926877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230275 (A155212 n + 13).toNat

end

end A230272.P11548079548918926877

/-! ## A230272.P2051989763344956939

`A230275(A167614(n+3)+2)`
-/

namespace A230272.P2051989763344956939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230275 (A167614 (n + 3) + 2).toNat

end

end A230272.P2051989763344956939

/-! ## A230272.P12076150971708080592

`A230275(eq[6, A131818(n+1)])`
-/

namespace A230272.P12076150971708080592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230272.P12076150971708080592

/-! ## A230272.P10629553382721207899

`A230275(Δ[A264443(n)])`
-/

namespace A230272.P10629553382721207899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230275 (f1 (n + 1) - f1 n).toNat

end

end A230272.P10629553382721207899

/-!
# A230273: Number of nX6 0..2 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230273, there is no canonical definition to state claims against.
-/

/-! ## A230273.P8429684315723567870

`A230275(A056115(n)+21)`
-/

namespace A230273.P8429684315723567870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230275 (A056115 n + 21).toNat

end

end A230273.P8429684315723567870

/-! ## A230273.P7201825586304932244

`A230275(A167614(n+4)+3)`
-/

namespace A230273.P7201825586304932244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230275 (A167614 (n + 4) + 3).toNat

end

end A230273.P7201825586304932244

/-! ## A230273.P1991284220470580793

`A230275(eq[7, A131818(n+1)])`
-/

namespace A230273.P1991284220470580793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230273.P1991284220470580793

/-! ## A230273.P3465794637384320017

`A230275(A374007(n+1))`
-/

namespace A230273.P3465794637384320017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230275 (A374007 (n + 1)).toNat

end

end A230273.P3465794637384320017

/-! ## A230273.P18326523400177806419

`A230275(eq[3, A219347(n)])`
-/

namespace A230273.P18326523400177806419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230273.P18326523400177806419

/-!
# A230274: Number of n X 7 0..2 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230274, there is no canonical definition to state claims against.
-/

/-! ## A230274.P11517882800193298771

`A230275(A166136(n+5)+1)`
-/

namespace A230274.P11517882800193298771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230275 (A166136 (n + 5) + 1).toNat

end

end A230274.P11517882800193298771

/-! ## A230274.P5534882067868126505

`A230275(A000217(n+6)+7)`
-/

namespace A230274.P5534882067868126505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230275 (A000217 (n + 6) + 7).toNat

end

end A230274.P5534882067868126505

/-! ## A230274.P5039353607075491210

`A230275(eq[8, A131818(n+1)])`
-/

namespace A230274.P5039353607075491210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230274.P5039353607075491210

/-! ## A230274.P9865453051155239663

`A230275(eq[5, A025581(n)]+13)`
-/

namespace A230274.P9865453051155239663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 13)

end

end A230274.P9865453051155239663

/-! ## A230274.P13248282997175144925

`A230275(A374008(n+1))`
-/

namespace A230274.P13248282997175144925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230275 (A374008 (n + 1)).toNat

end

end A230274.P13248282997175144925

/-!
# A230276: Voids left after packing 5-curves coins patterns into fountain of coins with base n.

The programs for A230276, the canonical program `A230276.P8189018374968012443` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230276 has offset 1).

The definition of A230276 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230276.P8189018374968012443

`n²-3*A069905(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A230276

/-- `n²-3*A069905(n+1)` -/
def P8189018374968012443.Spec : Prop :=
  ∀ n, P8189018374968012443.a n = A230276 (n + 1)

theorem P8189018374968012443.correct : P8189018374968012443.Spec := by
  intro n
  simp only [A230276, Nat.add_sub_cancel]

end A230276

/-! ## A230276.P14565022298919221608

`A397990(n)-A130481(n)`
-/

namespace A230276.P14565022298919221608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397990 n - A130481 n

end

end A230276.P14565022298919221608

namespace A230276

/-- `A397990(n)-A130481(n)` -/
def P14565022298919221608.Spec : Prop :=
  ∀ n, P14565022298919221608.a n = A230276 (n + 1)

end A230276

/-! ## A230276.P17043001827448387368

`A115283(n)-A047268(n+1)`
-/

namespace A230276.P17043001827448387368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115283 n - A047268 (n + 1)

end

end A230276.P17043001827448387368

namespace A230276

/-- `A115283(n)-A047268(n+1)` -/
def P17043001827448387368.Spec : Prop :=
  ∀ n, P17043001827448387368.a n = A230276 (n + 1)

end A230276

/-! ## A230276.P5573408520171850228

`n²-∑[A008585(A008615(n))]`
-/

namespace A230276.P5573408520171850228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A008615 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230276.P5573408520171850228

namespace A230276

/-- `n²-∑[A008585(A008615(n))]` -/
def P5573408520171850228.Spec : Prop :=
  ∀ n, P5573408520171850228.a n = A230276 (n + 1)

end A230276

/-! ## A230276.P3333723484023035948

`∑[A047240(n+1)]-A198442(n+1)`
-/

namespace A230276.P3333723484023035948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A198442 (n + 1)

end

end A230276.P3333723484023035948

namespace A230276

/-- `∑[A047240(n+1)]-A198442(n+1)` -/
def P3333723484023035948.Spec : Prop :=
  ∀ n, P3333723484023035948.a n = A230276 (n + 1)

end A230276

/-! ## A230276.P4868629716488880786

`∑[A004273(n)-A008585(A008615(n))]`
-/

namespace A230276.P4868629716488880786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n - A008585 (A008615 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230276.P4868629716488880786

namespace A230276

/-- `∑[A004273(n)-A008585(A008615(n))]` -/
def P4868629716488880786.Spec : Prop :=
  ∀ n, P4868629716488880786.a n = A230276 (n + 1)

end A230276

/-! ## A230276.P16731144918462316009

`∑[A028242(abs(1-A281899(n)))]`
-/

namespace A230276.P16731144918462316009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 |1 - A281899 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230276.P16731144918462316009

namespace A230276

/-- `∑[A028242(abs(1-A281899(n)))]` -/
def P16731144918462316009.Spec : Prop :=
  ∀ n, P16731144918462316009.a n = A230276 (n + 1)

end A230276

/-! ## A230276.P9722975690777678494

`∑[A028242(A281899(n))]-A028242(n)`
-/

namespace A230276.P9722975690777678494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A281899 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A028242 n

end

end A230276.P9722975690777678494

namespace A230276

/-- `∑[A028242(A281899(n))]-A028242(n)` -/
def P9722975690777678494.Spec : Prop :=
  ∀ n, P9722975690777678494.a n = A230276 (n + 1)

end A230276

/-! ## A230276.P3533786528086553344

`A016777(A002620(n))-A117572(n)`
-/

namespace A230276.P3533786528086553344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A002620 n).toNat - A117572 n

end

end A230276.P3533786528086553344

namespace A230276

/-- `A016777(A002620(n))-A117572(n)` -/
def P3533786528086553344.Spec : Prop :=
  ∀ n, P3533786528086553344.a n = A230276 (n + 1)

end A230276

/-! ## A230276.P16278707582414225953

`A032766(A000982(n)+A004396(n)-n)`
-/

namespace A230276.P16278707582414225953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A000982 n + (A004396 n - (n : ℤ))).toNat

end

end A230276.P16278707582414225953

namespace A230276

/-- `A032766(A000982(n)+A004396(n)-n)` -/
def P16278707582414225953.Spec : Prop :=
  ∀ n, P16278707582414225953.a n = A230276 (n + 1)

end A230276

/-! ## A230276.P9232236953620203117

`A032766(A000982(n)-(n-A004396(n)))`
-/

namespace A230276.P9232236953620203117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A000982 n - ((n : ℤ) - A004396 n)).toNat

end

end A230276.P9232236953620203117

namespace A230276

/-- `A032766(A000982(n)-(n-A004396(n)))` -/
def P9232236953620203117.Spec : Prop :=
  ∀ n, P9232236953620203117.a n = A230276 (n + 1)

end A230276

/-!
# A230278: Expansion of q^(-2/3) * eta(q^2)^10 / eta(q)^4 in powers of q.

The programs for A230278, there is no canonical definition to state claims against.
-/

/-! ## A230278.P12757800249498343482

`A230277(3*n+2)/2`
-/

namespace A230278.P12757800249498343482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230277 (3 * n + 2) : ℚ) / 2

end

end A230278.P12757800249498343482

/-!
# A230279: Number of nonnegative integer solutions to the equation x^2 - 16*y^2 = n.

The programs for A230279, there is no canonical definition to state claims against.
-/

/-! ## A230279.P3218597206607087756

`A034761(n+1)%A077648(A166341(n+1))`
-/

namespace A230279.P3218597206607087756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034761 (n + 1)) (A077648 (A166341 (n + 1)).toNat)

end

end A230279.P3218597206607087756

/-! ## A230279.P13320390614513015011

`and(A008443(A279871(n+1)), A230263(n+1))`
-/

namespace A230279.P13320390614513015011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008443 (A279871 (n + 1)).toNat) (A230263 (n + 1))

end

end A230279.P13320390614513015011

/-! ## A230279.P10194905429372786087

`and(A230263(n+1), A265035(A231219(n+1)))`
-/

namespace A230279.P10194905429372786087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A230263 (n + 1)) (A265035 (A231219 (n + 1)).toNat)

end

end A230279.P10194905429372786087

/-! ## A230279.P890458398673677308

`and(A213363(n+1), A230263(n+1))`
-/

namespace A230279.P890458398673677308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A213363 (n + 1)) (A230263 (n + 1))

end

end A230279.P890458398673677308

/-! ## A230279.P7029360134993629575

`and(A088793(n), A230263(n+1))`
-/

namespace A230279.P7029360134993629575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A088793 n) (A230263 (n + 1))

end

end A230279.P7029360134993629575

/-!
# A230280: Expansion of q^(-1/3) * eta(q)^4 * eta(q^2)^2 in powers of q.

The programs for A230280, there is no canonical definition to state claims against.
-/

/-! ## A230280.P10692803492198594296

`A230277(3*n+1)`
-/

namespace A230280.P10692803492198594296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230277 (3 * n + 1)

end

end A230280.P10692803492198594296

/-! ## A230280.P15835895165671803528

`(-1)^n*A230278(2*n)`
-/

namespace A230280.P15835895165671803528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A230278 (2 * n)

end

end A230280.P15835895165671803528

/-! ## A230280.P15495662243408984636

`A230277(A016777(n))%A000217(n+6)`
-/

namespace A230280.P15495662243408984636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230277 (A016777 n).toNat) (A000217 (n + 6))

end

end A230280.P15495662243408984636

/-! ## A230280.P9902443551169632570

`A230277(A016777(n))+A000122(A000040(n+6))`
-/

namespace A230280.P9902443551169632570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230277 (A016777 n).toNat + A000122 (A000040 (n + 6)).toNat

end

end A230280.P9902443551169632570

/-! ## A230280.P16426163071468698724

`A230277(A016777(n))+A000122(A020639(n+6))`
-/

namespace A230280.P16426163071468698724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230277 (A016777 n).toNat + A000122 (A020639 (n + 6)).toNat

end

end A230280.P16426163071468698724

/-! ## A230280.P11856214455281201493

`A230277(A016777(n))%A034472(n)²`
-/

namespace A230280.P11856214455281201493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230277 (A016777 n).toNat) (A034472 n ^ 2)

end

end A230280.P11856214455281201493

/-!
# A230282: Largest k such that (k*n)! >= (k!)^(n+1).

The programs for A230282, there is no canonical definition to state claims against.
-/

/-! ## A230282.P10222183353645500036

`A218654(A360304(n)+1)`
-/

namespace A230282.P10222183353645500036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218654 (A360304 n + 1).toNat

end

end A230282.P10222183353645500036

/-!
# A230284: Denominators to Dirichlet inverse of Euler totient based version of series expansion for x/LambertW(x).

The programs for A230284, there is no canonical definition to state claims against.
-/

/-! ## A230284.P2951249690264469902

`gcd(A103360(∑[n]), A264149(n))`
-/

namespace A230284.P2951249690264469902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103360 (∑ j ∈ Finset.range (n + 1), f1 j)) (A264149 n)

end

end A230284.P2951249690264469902

/-! ## A230284.P908859929715840226

`A103360(∑[n])/A000045(A103360(n+1))`
-/

namespace A230284.P908859929715840226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103360 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A000045 (A103360 (n + 1)).toNat : ℚ)

end

end A230284.P908859929715840226

/-! ## A230284.P7004731353709204321

`A053556(n)/A053556(A368845(2*n+3))`
-/

namespace A230284.P7004731353709204321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053556 n : ℚ) / (A053556 (A368845 (2 * n + 3)).toNat : ℚ)

end

end A230284.P7004731353709204321

/-!
# A230285: a(n) = n*prime(prime(n)) - prime(n).

The programs for A230285, the canonical program `A230285.P13111388507637761220` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230285 has offset 1).

The definition of A230285 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A230285.P13111388507637761220

`A080697(n+1)-A000040(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A230285

/-- `A080697(n+1)-A000040(n+1)` -/
def P13111388507637761220.Spec : Prop :=
  ∀ n, P13111388507637761220.a n = A230285 (n + 1)

theorem P13111388507637761220.correct : P13111388507637761220.Spec := by
  intro n
  simp only [A230285, Nat.add_sub_cancel]

end A230285

/-! ## A230285.P4362776629103212263

`A080697(n+1)-Δ[A007504(n)]`
-/

namespace A230285.P4362776629103212263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080697 (n + 1) - (f1 (n + 1) - f1 n)

end

end A230285.P4362776629103212263

namespace A230285

/-- `A080697(n+1)-Δ[A007504(n)]` -/
def P4362776629103212263.Spec : Prop :=
  ∀ n, P4362776629103212263.a n = A230285 (n + 1)

end A230285

/-! ## A230285.P7556588438165332519

`A230098(n+1)+A036689(n+1)`
-/

namespace A230285.P7556588438165332519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230098 (n + 1) + A036689 (n + 1)

end

end A230285.P7556588438165332519

namespace A230285

/-- `A230098(n+1)+A036689(n+1)` -/
def P7556588438165332519.Spec : Prop :=
  ∀ n, P7556588438165332519.a n = A230285 (n + 1)

end A230285

/-! ## A230285.P9384566962690884302

`A080697(n+1)-abs(Δ[A008348(n)])`
-/

namespace A230285.P9384566962690884302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080697 (n + 1) - |f1 (n + 1) - f1 n|

end

end A230285.P9384566962690884302

namespace A230285

/-- `A080697(n+1)-abs(Δ[A008348(n)])` -/
def P9384566962690884302.Spec : Prop :=
  ∀ n, P9384566962690884302.a n = A230285 (n + 1)

end A230285

/-! ## A230285.P7349491240988335225

`A080697(n+1)-abs(Δ[A022837(n)])`
-/

namespace A230285.P7349491240988335225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080697 (n + 1) - |f1 (n + 1) - f1 n|

end

end A230285.P7349491240988335225

namespace A230285

/-- `A080697(n+1)-abs(Δ[A022837(n)])` -/
def P7349491240988335225.Spec : Prop :=
  ∀ n, P7349491240988335225.a n = A230285 (n + 1)

end A230285

/-! ## A230285.P13708535956926532

`A080697(n+1)-∑[A054541(n+1)]`
-/

namespace A230285.P13708535956926532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080697 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230285.P13708535956926532

namespace A230285

/-- `A080697(n+1)-∑[A054541(n+1)]` -/
def P13708535956926532.Spec : Prop :=
  ∀ n, P13708535956926532.a n = A230285 (n + 1)

end A230285

/-! ## A230285.P3411268091107750886

`A080697(n+1)+1-A008864(n+1)`
-/

namespace A230285.P3411268091107750886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080697 (n + 1) + (1 - A008864 (n + 1))

end

end A230285.P3411268091107750886

namespace A230285

/-- `A080697(n+1)+1-A008864(n+1)` -/
def P3411268091107750886.Spec : Prop :=
  ∀ n, P3411268091107750886.a n = A230285 (n + 1)

theorem P3411268091107750886.correct : P3411268091107750886.Spec := by
  intro n
  simp only [A230285, Nat.add_sub_cancel, A230285.P3411268091107750886.a, A230285.P13111388507637761220.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A080697, A080697.P5728652288469415747.a, A006450, A006450.P16445646407241112379.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230285

/-! ## A230285.P10923500744445510096

`A168152(n+1)+n*A006450(n+1)`
-/

namespace A230285.P10923500744445510096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168152 (n + 1) + (n : ℤ) * A006450 (n + 1)

end

end A230285.P10923500744445510096

namespace A230285

/-- `A168152(n+1)+n*A006450(n+1)` -/
def P10923500744445510096.Spec : Prop :=
  ∀ n, P10923500744445510096.a n = A230285 (n + 1)

theorem P10923500744445510096.correct : P10923500744445510096.Spec := by
  intro n
  simp only [A230285, Nat.add_sub_cancel, A230285.P10923500744445510096.a, A230285.P13111388507637761220.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006450, A006450.P16445646407241112379.a, A080697, A080697.P5728652288469415747.a, A168152, A168152.P14558718132513138966.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230285

/-! ## A230285.P14025210453097193811

`(n+1)*A006450(n+1)-A000040(n+1)`
-/

namespace A230285.P14025210453097193811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A006450 (n + 1) - A000040 (n + 1)

end

end A230285.P14025210453097193811

namespace A230285

/-- `(n+1)*A006450(n+1)-A000040(n+1)` -/
def P14025210453097193811.Spec : Prop :=
  ∀ n, P14025210453097193811.a n = A230285 (n + 1)

end A230285

/-! ## A230285.P16423219246710899280

`A001248(n+1)+A230098(n+1)-A000040(n+1)`
-/

namespace A230285.P16423219246710899280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) + (A230098 (n + 1) - A000040 (n + 1))

end

end A230285.P16423219246710899280

namespace A230285

/-- `A001248(n+1)+A230098(n+1)-A000040(n+1)` -/
def P16423219246710899280.Spec : Prop :=
  ∀ n, P16423219246710899280.a n = A230285 (n + 1)

theorem P16423219246710899280.correct : P16423219246710899280.Spec := by
  intro n
  simp only [A230285, Nat.add_sub_cancel, A230285.P16423219246710899280.a, A230285.P13111388507637761220.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A080697, A080697.P5728652288469415747.a, A230098, A230098.P1397761245252951239.a, A006450, A006450.P16445646407241112379.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230285

/-! ## A230285.P8384054711633129772

`A080697(n+1)-A008578(n+2)`
-/

namespace A230285.P8384054711633129772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080697 (n + 1) - A008578 (n + 2)

end

end A230285.P8384054711633129772

namespace A230285

/-- `A080697(n+1)-A008578(n+2)` -/
def P8384054711633129772.Spec : Prop :=
  ∀ n, P8384054711633129772.a n = A230285 (n + 1)

end A230285

/-! ## A230285.P9190743528013629791

`A080697(n+1)-p?[A080688(n+1)]`
-/

namespace A230285.P9190743528013629791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080697 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A230285.P9190743528013629791

namespace A230285

/-- `A080697(n+1)-p?[A080688(n+1)]` -/
def P9190743528013629791.Spec : Prop :=
  ∀ n, P9190743528013629791.a n = A230285 (n + 1)

end A230285

/-! ## A230285.P16093634235104148681

`A128930(A182986(n+2))-A182986(n+2)`
-/

namespace A230285.P16093634235104148681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128930 (A182986 (n + 2)).toNat - A182986 (n + 2)

end

end A230285.P16093634235104148681

namespace A230285

/-- `A128930(A182986(n+2))-A182986(n+2)` -/
def P16093634235104148681.Spec : Prop :=
  ∀ n, P16093634235104148681.a n = A230285 (n + 1)

end A230285

/-! ## A230285.P15256296531903987560

`record[A128930(A006530(n+2))-A006530(n+2)]`
-/

namespace A230285.P15256296531903987560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128930 (A006530 (n + 2)).toNat - A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230285.P15256296531903987560

namespace A230285

/-- `record[A128930(A006530(n+2))-A006530(n+2)]` -/
def P15256296531903987560.Spec : Prop :=
  ∀ n, P15256296531903987560.a n = A230285 (n + 1)

end A230285

/-! ## A230285.P1283997360638105899

`record[A128930(A014963(n+2))-A014963(n+2)]`
-/

namespace A230285.P1283997360638105899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128930 (A014963 (n + 2)).toNat - A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230285.P1283997360638105899

namespace A230285

/-- `record[A128930(A014963(n+2))-A014963(n+2)]` -/
def P1283997360638105899.Spec : Prop :=
  ∀ n, P1283997360638105899.a n = A230285 (n + 1)

end A230285

/-! ## A230285.P12393552066415555138

`record[A128930(A020639(n+2))-A020639(n+2)]`
-/

namespace A230285.P12393552066415555138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128930 (A020639 (n + 2)).toNat - A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230285.P12393552066415555138

namespace A230285

/-- `record[A128930(A020639(n+2))-A020639(n+2)]` -/
def P12393552066415555138.Spec : Prop :=
  ∀ n, P12393552066415555138.a n = A230285 (n + 1)

end A230285

/-! ## A230285.P698300957896946903

`A168152(n+1)+n*A000040(A000040(n+1))`
-/

namespace A230285.P698300957896946903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168152 (n + 1) + (n : ℤ) * A000040 (A000040 (n + 1)).toNat

end

end A230285.P698300957896946903

namespace A230285

/-- `A168152(n+1)+n*A000040(A000040(n+1))` -/
def P698300957896946903.Spec : Prop :=
  ∀ n, P698300957896946903.a n = A230285 (n + 1)

theorem P698300957896946903.correct : P698300957896946903.Spec := by
  intro n
  simp only [A230285, Nat.add_sub_cancel, A230285.P698300957896946903.a, A230285.P13111388507637761220.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A080697, A080697.P5728652288469415747.a, A168152, A168152.P14558718132513138966.a, A006450, A006450.P16445646407241112379.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230285

/-!
# A230286: a(n) = A016052(n)/3.

The programs for A230286, the canonical program `A230286.P917926184221838479` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230286 has offset 1).

The definition of A230286 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A016052, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A230286.P917926184221838479

`A016052(n+1)/3`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A230286

/-- `A016052(n+1)/3` -/
def P917926184221838479.Spec : Prop :=
  ∀ n, P917926184221838479.a n = (A230286 (n + 1) : ℚ)

end A230286

/-! ## A230286.P16996472706964749732

`A230287(n)+a(n-1)` with `a(0)=1`
-/

namespace A230286.P16996472706964749732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A230287 n + a (n - 1)

end

end A230286.P16996472706964749732

namespace A230286

/-- `A230287(n)+a(n-1)` -/
def P16996472706964749732.Spec : Prop :=
  ∀ n, P16996472706964749732.a n = A230286 (n + 1)

end A230286

/-! ## A230286.P9121579342370987677

`(∑[A084228(n+2)]+1)/3`
-/

namespace A230286.P9121579342370987677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084228 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 3

end

end A230286.P9121579342370987677

namespace A230286

/-- `(∑[A084228(n+2)]+1)/3` -/
def P9121579342370987677.Spec : Prop :=
  ∀ n, P9121579342370987677.a n = (A230286 (n + 1) : ℚ)

end A230286

/-! ## A230286.P16296242958441069896

`A062028(3*a(n-1))/3` with `a(0)=1`
-/

namespace A230286.P16296242958441069896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A062028 (SequenceMachineLib.roundAway (3 * a (n - 1))).toNat : ℚ) / 3

end

end A230286.P16296242958441069896

namespace A230286

/-- `A062028(3*a(n-1))/3` -/
def P16296242958441069896.Spec : Prop :=
  ∀ n, P16296242958441069896.a n = (A230286 (n + 1) : ℚ)

end A230286

/-! ## A230286.P1954998846586292883

`A002264(A016052(n+1))`
-/

namespace A230286.P1954998846586292883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A016052 (n + 1)).toNat

end

end A230286.P1954998846586292883

namespace A230286

/-- `A002264(A016052(n+1))` -/
def P1954998846586292883.Spec : Prop :=
  ∀ n, P1954998846586292883.a n = A230286 (n + 1)

end A230286

/-! ## A230286.P18037655794677117043

`record[A008486(n)/A036233(A008486(n))]`
-/

namespace A230286.P18037655794677117043
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008486 n : ℚ) / (A036233 (A008486 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230286.P18037655794677117043

namespace A230286

/-- `record[A008486(n)/A036233(A008486(n))]` -/
def P18037655794677117043.Spec : Prop :=
  ∀ n, P18037655794677117043.a n = (A230286 (n + 1) : ℚ)

end A230286

/-! ## A230286.P1894335060629516316

`record[A016051(n+1)/A036233(A016051(n+1))]`
-/

namespace A230286.P1894335060629516316
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016051 (n + 1) : ℚ) / (A036233 (A016051 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230286.P1894335060629516316

namespace A230286

/-- `record[A016051(n+1)/A036233(A016051(n+1))]` -/
def P1894335060629516316.Spec : Prop :=
  ∀ n, P1894335060629516316.a n = (A230286 (n + 1) : ℚ)

end A230286

/-! ## A230286.P11017968571307148254

`record[A250122(2*n+1)/A036233(A250122(2*n+1))]`
-/

namespace A230286.P11017968571307148254
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250122 (2 * n + 1) : ℚ) / (A036233 (A250122 (2 * n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230286.P11017968571307148254

namespace A230286

/-- `record[A250122(2*n+1)/A036233(A250122(2*n+1))]` -/
def P11017968571307148254.Spec : Prop :=
  ∀ n, P11017968571307148254.a n = (A230286 (n + 1) : ℚ)

end A230286

/-!
# A230287: First differences of A016052/3 (= A230286).

The programs for A230287, the canonical program `A230287.P5806098726498376882` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230287 has offset 1).

The definition of A230287 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230287.P5806098726498376882

`Δ[A230286(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A230287

/-- `Δ[A230286(n+1)]` -/
def P5806098726498376882.Spec : Prop :=
  ∀ n, P5806098726498376882.a n = A230287 (n + 1)

theorem P5806098726498376882.correct : P5806098726498376882.Spec := by
  intro n
  simp only [A230287, Nat.add_sub_cancel]

end A230287

/-! ## A230287.P13917933676891817573

`Δ[A016052(n+1)/3]`
-/

namespace A230287.P13917933676891817573
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016052 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A230287.P13917933676891817573

namespace A230287

/-- `Δ[A016052(n+1)/3]` -/
def P13917933676891817573.Spec : Prop :=
  ∀ n, P13917933676891817573.a n = (A230287 (n + 1) : ℚ)

end A230287

/-! ## A230287.P1529556360847661935

`A002264(Δ[A016052(n+1)])`
-/

namespace A230287.P1529556360847661935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (f1 (n + 1) - f1 n).toNat

end

end A230287.P1529556360847661935

namespace A230287

/-- `A002264(Δ[A016052(n+1)])` -/
def P1529556360847661935.Spec : Prop :=
  ∀ n, P1529556360847661935.a n = A230287 (n + 1)

end A230287

/-! ## A230287.P11192420635211546050

`A230286(n+2)-A230286(n+1)`
-/

namespace A230287.P11192420635211546050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230286 (n + 2) - A230286 (n + 1)

end

end A230287.P11192420635211546050

namespace A230287

/-- `A230286(n+2)-A230286(n+1)` -/
def P11192420635211546050.Spec : Prop :=
  ∀ n, P11192420635211546050.a n = A230287 (n + 1)

theorem P11192420635211546050.correct : P11192420635211546050.Spec := by
  intro n
  simp only [A230287, Nat.add_sub_cancel, A230287.P11192420635211546050.a, A230287.P5806098726498376882.f1, A230287.P5806098726498376882.a, SequenceMachineLib.memo_apply]

end A230287

/-! ## A230287.P9154546666557614890

`A084228(n+3)/3`
-/

namespace A230287.P9154546666557614890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084228 (n + 3) : ℚ) / 3

end

end A230287.P9154546666557614890

namespace A230287

/-- `A084228(n+3)/3` -/
def P9154546666557614890.Spec : Prop :=
  ∀ n, P9154546666557614890.a n = (A230287 (n + 1) : ℚ)

end A230287

/-! ## A230287.P11503542291902331881

`Δ[A062028(a(n-1))]/3` with `a(0)=3`
-/

namespace A230287.P11503542291902331881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A062028 (f1 (n - 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 3

end

end A230287.P11503542291902331881

namespace A230287

/-- `Δ[A062028(a(n-1))]/3` -/
def P11503542291902331881.Spec : Prop :=
  ∀ n, P11503542291902331881.a n = (A230287 (n + 1) : ℚ)

end A230287

/-!
# A230290: a(n) = Sum_{i=1..n} d(24*i+1) - Sum_{i=1..n} d(6*i+1), where d(n) = A000005(n).

The programs for A230290, the canonical program `A230290.P15432606155864082037` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230290 has offset 1).

The definition of A230290 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230290.P15432606155864082037

`∑[A230476(3*(n+1))-A230476(3*n+2)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A230290

/-- `∑[A230476(3*(n+1))-A230476(3*n+2)]` -/
def P15432606155864082037.Spec : Prop :=
  ∀ n, P15432606155864082037.a n = A230290 (n + 1)

theorem P15432606155864082037.correct : P15432606155864082037.Spec := by
  intro n
  simp only [A230290, Nat.add_sub_cancel]

end A230290

/-!
# A230293: a(n) = Sum_{i=1..n} d(8*i+1) - Sum_{i=1..n} d(4*i+1), where d(n) = A000005(n).

The programs for A230293, the canonical program `A230293.P6138807695865852207` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230293 has offset 1).

The definition of A230293 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230293.P1600433153372119661

`A230476(n+1)-A230294(n+1)`
-/

namespace A230293.P1600433153372119661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230476 (n + 1) - A230294 (n + 1)

end

end A230293.P1600433153372119661

namespace A230293

/-- `A230476(n+1)-A230294(n+1)` -/
def P1600433153372119661.Spec : Prop :=
  ∀ n, P1600433153372119661.a n = A230293 (n + 1)

theorem P1600433153372119661.correct : P1600433153372119661.Spec := by
  intro n
  simp only [A230293, Nat.add_sub_cancel, A230293.P1600433153372119661.a, A230293.P6138807695865852207.f1, A230293.P6138807695865852207.a, A230294, A230294.P9485852536752022539.f1, A230294.P9485852536752022539.a, A230476, A230476.P10377358832244411741.a, A095374, A095374.P12292882618606204966.a, A099774, A099774.P14550011835521758030.f2, A099774.P14550011835521758030.f1, A099774.P14550011835521758030.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230293

/-! ## A230293.P6138807695865852207

`∑[A230294(2*(n+1))-A230294(2*n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A230293

/-- `∑[A230294(2*(n+1))-A230294(2*n+1)]` -/
def P6138807695865852207.Spec : Prop :=
  ∀ n, P6138807695865852207.a n = A230293 (n + 1)

theorem P6138807695865852207.correct : P6138807695865852207.Spec := by
  intro n
  simp only [A230293, Nat.add_sub_cancel]

end A230293

/-! ## A230293.P6967155712149199704

`A230476(n+1)-∑[A099774(2*n+3)-A099774(n+2)]`
-/

namespace A230293.P6967155712149199704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 (2 * n + 3) - A099774 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230476 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230293.P6967155712149199704

namespace A230293

/-- `A230476(n+1)-∑[A099774(2*n+3)-A099774(n+2)]` -/
def P6967155712149199704.Spec : Prop :=
  ∀ n, P6967155712149199704.a n = A230293 (n + 1)

end A230293

/-! ## A230293.P8582521815527184051

`∑[A095374(4*(n+1))-A095374(2*(n+1))]`
-/

namespace A230293.P8582521815527184051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095374 (4 * (n + 1)) - A095374 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230293.P8582521815527184051

namespace A230293

/-- `∑[A095374(4*(n+1))-A095374(2*(n+1))]` -/
def P8582521815527184051.Spec : Prop :=
  ∀ n, P8582521815527184051.a n = A230293 (n + 1)

end A230293

/-! ## A230293.P8008514428209655354

`∑[A099774(4*n+5)-A137921(4*n+5)]`
-/

namespace A230293.P8008514428209655354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 (4 * n + 5) - A137921 (4 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230293.P8008514428209655354

namespace A230293

/-- `∑[A099774(4*n+5)-A137921(4*n+5)]` -/
def P8008514428209655354.Spec : Prop :=
  ∀ n, P8008514428209655354.a n = A230293 (n + 1)

end A230293

/-! ## A230293.P11626614206120815055

`A230476(n+1)-∑[A001227(4*n+5)-A000005(2*n+3)]`
-/

namespace A230293.P11626614206120815055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (4 * n + 5) - A000005 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230476 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230293.P11626614206120815055

namespace A230293

/-- `A230476(n+1)-∑[A001227(4*n+5)-A000005(2*n+3)]` -/
def P11626614206120815055.Spec : Prop :=
  ∀ n, P11626614206120815055.a n = A230293 (n + 1)

end A230293

/-! ## A230293.P16892253810143364219

`∑[A032741(8*n+9)-A032741(4*n+5)]`
-/

namespace A230293.P16892253810143364219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (8 * n + 9) - A032741 (4 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230293.P16892253810143364219

namespace A230293

/-- `∑[A032741(8*n+9)-A032741(4*n+5)]` -/
def P16892253810143364219.Spec : Prop :=
  ∀ n, P16892253810143364219.a n = A230293 (n + 1)

end A230293

/-!
# A230294: a(n) = Sum_{i=1..n} d(4*i+1) - Sum_{i=1..n} d(2*i+1), where d(n) = A000005(n).

The programs for A230294, the canonical program `A230294.P9485852536752022539` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230294 has offset 1).

The definition of A230294 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230294.P5786981681107031243

`A230476(n+1)-A230293(n+1)`
-/

namespace A230294.P5786981681107031243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230476 (n + 1) - A230293 (n + 1)

end

end A230294.P5786981681107031243

namespace A230294

/-- `A230476(n+1)-A230293(n+1)` -/
def P5786981681107031243.Spec : Prop :=
  ∀ n, P5786981681107031243.a n = A230294 (n + 1)

theorem P5786981681107031243.correct : P5786981681107031243.Spec := by
  intro n
  simp only [A230294, Nat.add_sub_cancel, A230294.P5786981681107031243.a, A230294.P9485852536752022539.f1, A230294.P9485852536752022539.a, A095374, A095374.P12292882618606204966.a, A230293, A230293.P6138807695865852207.f1, A230293.P6138807695865852207.a, A230476, A230476.P10377358832244411741.a, A099774, A099774.P14550011835521758030.f2, A099774.P14550011835521758030.f1, A099774.P14550011835521758030.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230294

/-! ## A230294.P9485852536752022539

`∑[A095374(2*(n+1))-A095374(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A230294

/-- `∑[A095374(2*(n+1))-A095374(n+1)]` -/
def P9485852536752022539.Spec : Prop :=
  ∀ n, P9485852536752022539.a n = A230294 (n + 1)

theorem P9485852536752022539.correct : P9485852536752022539.Spec := by
  intro n
  simp only [A230294, Nat.add_sub_cancel]

end A230294

/-! ## A230294.P18022851887620820587

`∑[A099774(2*n+3)-A099774(n+2)]`
-/

namespace A230294.P18022851887620820587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 (2 * n + 3) - A099774 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230294.P18022851887620820587

namespace A230294

/-- `∑[A099774(2*n+3)-A099774(n+2)]` -/
def P18022851887620820587.Spec : Prop :=
  ∀ n, P18022851887620820587.a n = A230294 (n + 1)

end A230294

/-! ## A230294.P17375952814629213463

`∑[A001227(4*n+5)-A000005(2*n+3)]`
-/

namespace A230294.P17375952814629213463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (4 * n + 5) - A000005 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230294.P17375952814629213463

namespace A230294

/-- `∑[A001227(4*n+5)-A000005(2*n+3)]` -/
def P17375952814629213463.Spec : Prop :=
  ∀ n, P17375952814629213463.a n = A230294 (n + 1)

end A230294

/-! ## A230294.P10315752044321313341

`∑[A023645(4*n+5)-A023645(2*n+3)]`
-/

namespace A230294.P10315752044321313341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (4 * n + 5) - A023645 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230294.P10315752044321313341

namespace A230294

/-- `∑[A023645(4*n+5)-A023645(2*n+3)]` -/
def P10315752044321313341.Spec : Prop :=
  ∀ n, P10315752044321313341.a n = A230294 (n + 1)

end A230294

/-! ## A230294.P7643144763104285539

`∑[A032741(4*n+5)-A032741(2*n+3)]`
-/

namespace A230294.P7643144763104285539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (4 * n + 5) - A032741 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230294.P7643144763104285539

namespace A230294

/-- `∑[A032741(4*n+5)-A032741(2*n+3)]` -/
def P7643144763104285539.Spec : Prop :=
  ∀ n, P7643144763104285539.a n = A230294 (n + 1)

end A230294

/-! ## A230294.P16962955542862922110

`∑[A070824(4*n+5)-A070824(2*n+3)]`
-/

namespace A230294.P16962955542862922110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (4 * n + 5) - A070824 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230294.P16962955542862922110

namespace A230294

/-- `∑[A070824(4*n+5)-A070824(2*n+3)]` -/
def P16962955542862922110.Spec : Prop :=
  ∀ n, P16962955542862922110.a n = A230294 (n + 1)

end A230294

/-!
# A230295: a(n) = Sum_{i=1..n} d(8*i+5) - Sum_{i=1..n} d(4*i+3), where d(n) = A000005(n).

The programs for A230295, the canonical program `A230295.P4156999236486821316` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230295 has offset 1).

The definition of A230295 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230295.P4156999236486821316

`A230294(2*n+3)-A230293(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A230295

/-- `A230294(2*n+3)-A230293(n+1)` -/
def P4156999236486821316.Spec : Prop :=
  ∀ n, P4156999236486821316.a n = A230295 (n + 1)

theorem P4156999236486821316.correct : P4156999236486821316.Spec := by
  intro n
  simp only [A230295, Nat.add_sub_cancel]

end A230295

/-! ## A230295.P11699363066915016782

`∑[A230294(2*n+3)-A230294(2*(n+1))]`
-/

namespace A230295.P11699363066915016782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230294 (2 * n + 3) - A230294 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230295.P11699363066915016782

namespace A230295

/-- `∑[A230294(2*n+3)-A230294(2*(n+1))]` -/
def P11699363066915016782.Spec : Prop :=
  ∀ n, P11699363066915016782.a n = A230295 (n + 1)

end A230295

/-!
# A230297: a(n) = A010062(n) written in binary: a(n+1) = a(n) + hammingweight(a(n)) in binary.

The programs for A230297, the canonical program `A230297.P11014700209546004921` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230297 has offset 0).

The definition of A230297 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A010062, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A230297.P10072459917571600706

`A157845(n+1)`
-/

namespace A230297.P10072459917571600706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157845 (n + 1)

end

end A230297.P10072459917571600706

namespace A230297

/-- `A157845(n+1)` -/
def P10072459917571600706.Spec : Prop :=
  ∀ n, P10072459917571600706.a n = A230297 n

end A230297

/-! ## A230297.P11014700209546004921

`A007088(A010062(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A230297

/-- `A007088(A010062(n))` -/
def P11014700209546004921.Spec : Prop :=
  ∀ n, P11014700209546004921.a n = A230297 n

theorem P11014700209546004921.correct : P11014700209546004921.Spec := by
  intro n
  simp only [A230297]

end A230297

/-! ## A230297.P424452065880244349

`A007088(A092391(A028897(a(n-1))))` with `a(0)=1`
-/

namespace A230297.P424452065880244349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007088 (A092391 (A028897 (a (n - 1)).toNat).toNat).toNat

end

end A230297.P424452065880244349

namespace A230297

/-- `A007088(A092391(A028897(a(n-1))))` -/
def P424452065880244349.Spec : Prop :=
  ∀ n, P424452065880244349.a n = A230297 n

end A230297

/-! ## A230297.P15853560640989781353

`A157845(n)-Δ[-A157845(n)]`
-/

namespace A230297.P15853560640989781353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A157845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157845 n - (f1 (n + 1) - f1 n)

end

end A230297.P15853560640989781353

namespace A230297

/-- `A157845(n)-Δ[-A157845(n)]` -/
def P15853560640989781353.Spec : Prop :=
  ∀ n, P15853560640989781353.a n = A230297 n

end A230297

/-! ## A230297.P3736717693000706734

`record[A157845(A000720(or(2, n)))]`
-/

namespace A230297.P3736717693000706734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157845 (A000720 (Nat.lor 2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230297.P3736717693000706734

namespace A230297

/-- `record[A157845(A000720(or(2, n)))]` -/
def P3736717693000706734.Spec : Prop :=
  ∀ n, P3736717693000706734.a n = A230297 n

end A230297

/-! ## A230297.P17977986194806630536

`A007088(∑[A309674(n+1)])`
-/

namespace A230297.P17977986194806630536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A230297.P17977986194806630536

namespace A230297

/-- `A007088(∑[A309674(n+1)])` -/
def P17977986194806630536.Spec : Prop :=
  ∀ n, P17977986194806630536.a n = A230297 n

end A230297

/-! ## A230297.P2682804002635870128

`A007088(record[(n+1)/2^A096303(n+1)])`
-/

namespace A230297.P2682804002635870128
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 : ℚ) ^ (A096303 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A230297.P2682804002635870128

namespace A230297

/-- `A007088(record[(n+1)/2^A096303(n+1)])` -/
def P2682804002635870128.Spec : Prop :=
  ∀ n, P2682804002635870128.a n = A230297 n

end A230297

/-! ## A230297.P16493284167538118423

`record[A007088(n+1)/A010061(A096303(n+1)+1)²]`
-/

namespace A230297.P16493284167538118423
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007088 (n + 1) : ℚ) / (A010061 (A096303 (n + 1) + 1).toNat ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230297.P16493284167538118423

namespace A230297

/-- `record[A007088(n+1)/A010061(A096303(n+1)+1)²]` -/
def P16493284167538118423.Spec : Prop :=
  ∀ n, P16493284167538118423.a n = (A230297 n : ℚ)

end A230297

/-! ## A230297.P6005138381467117538

`record[A157845(A157806(n))]`
-/

namespace A230297.P6005138381467117538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157845 (A157806 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230297.P6005138381467117538

namespace A230297

/-- `record[A157845(A157806(n))]` -/
def P6005138381467117538.Spec : Prop :=
  ∀ n, P6005138381467117538.a n = A230297 n

end A230297

/-! ## A230297.P5268400541781836949

`A007088(A228083(∑[n]+1))`
-/

namespace A230297.P5268400541781836949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A228083 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A230297.P5268400541781836949

namespace A230297

/-- `A007088(A228083(∑[n]+1))` -/
def P5268400541781836949.Spec : Prop :=
  ∀ n, P5268400541781836949.a n = A230297 n

end A230297

/-! ## A230297.P11981186698140919983

`record[A157845(A028897(n))]`
-/

namespace A230297.P11981186698140919983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157845 (A028897 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230297.P11981186698140919983

namespace A230297

/-- `record[A157845(A028897(n))]` -/
def P11981186698140919983.Spec : Prop :=
  ∀ n, P11981186698140919983.a n = A230297 n

end A230297

/-!
# A230298: a(n) = A010062(n) mod 2.

The programs for A230298, the canonical program `A230298.P12076085931182459712` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230298 has offset 0).

The definition of A230298 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230298.P12076085931182459712

`A010062(n)%2`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A230298

/-- `A010062(n)%2` -/
def P12076085931182459712.Spec : Prop :=
  ∀ n, P12076085931182459712.a n = A230298 n

theorem P12076085931182459712.correct : P12076085931182459712.Spec := by
  intro n
  simp only [A230298]

end A230298

/-! ## A230298.P5737796501021766636

`A230297(n)%2`
-/

namespace A230298.P5737796501021766636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230297 n) 2

end

end A230298.P5737796501021766636

namespace A230298

/-- `A230297(n)%2` -/
def P5737796501021766636.Spec : Prop :=
  ∀ n, P5737796501021766636.a n = A230298 n

end A230298

/-! ## A230298.P4135069051112602125

`A157845(n+1)%2`
-/

namespace A230298.P4135069051112602125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157845 (n + 1)) 2

end

end A230298.P4135069051112602125

namespace A230298

/-- `A157845(n+1)%2` -/
def P4135069051112602125.Spec : Prop :=
  ∀ n, P4135069051112602125.a n = A230298 n

end A230298

/-! ## A230298.P13619542099766031177

`∑[A309674(n+1)]%2`
-/

namespace A230298.P13619542099766031177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A230298.P13619542099766031177

namespace A230298

/-- `∑[A309674(n+1)]%2` -/
def P13619542099766031177.Spec : Prop :=
  ∀ n, P13619542099766031177.a n = A230298 n

end A230298

/-! ## A230298.P11283615035009600913

`A000007(val(A010062(n), 2))`
-/

namespace A230298.P11283615035009600913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (SequenceMachineLib.valuation (A010062 n).toNat 2)

end

end A230298.P11283615035009600913

namespace A230298

/-- `A000007(val(A010062(n), 2))` -/
def P11283615035009600913.Spec : Prop :=
  ∀ n, P11283615035009600913.a n = A230298 n

end A230298

/-! ## A230298.P13052069255471244916

`A010108(val(A010062(n), 2))`
-/

namespace A230298.P13052069255471244916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010108 (SequenceMachineLib.valuation (A010062 n).toNat 2)

end

end A230298.P13052069255471244916

namespace A230298

/-- `A010108(val(A010062(n), 2))` -/
def P13052069255471244916.Spec : Prop :=
  ∀ n, P13052069255471244916.a n = A230298 n

end A230298

/-! ## A230298.P15332070319690825236

`and(A010062(n), A060576(n))`
-/

namespace A230298.P15332070319690825236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010062 n) (A060576 n)

end

end A230298.P15332070319690825236

namespace A230298

/-- `and(A010062(n), A060576(n))` -/
def P15332070319690825236.Spec : Prop :=
  ∀ n, P15332070319690825236.a n = A230298 n

end A230298

/-! ## A230298.P8463012921324105190

`and(A010062(n), A158388(n))`
-/

namespace A230298.P8463012921324105190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010062 n) (A158388 n)

end

end A230298.P8463012921324105190

namespace A230298

/-- `and(A010062(n), A158388(n))` -/
def P8463012921324105190.Spec : Prop :=
  ∀ n, P8463012921324105190.a n = A230298 n

end A230298

/-! ## A230298.P12500494119402613409

`and(A060576(n), A230297(n))`
-/

namespace A230298.P12500494119402613409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060576 n) (A230297 n)

end

end A230298.P12500494119402613409

namespace A230298

/-- `and(A060576(n), A230297(n))` -/
def P12500494119402613409.Spec : Prop :=
  ∀ n, P12500494119402613409.a n = A230298 n

end A230298

/-! ## A230298.P16671853008630753175

`and(A158388(n), A230297(n))`
-/

namespace A230298.P16671853008630753175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158388 n) (A230297 n)

end

end A230298.P16671853008630753175

namespace A230298

/-- `and(A158388(n), A230297(n))` -/
def P16671853008630753175.Spec : Prop :=
  ∀ n, P16671853008630753175.a n = A230298 n

end A230298

/-! ## A230298.P17000323281827785197

`and(A010062(n), A162519(n+1))`
-/

namespace A230298.P17000323281827785197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010062 n) (A162519 (n + 1))

end

end A230298.P17000323281827785197

namespace A230298

/-- `and(A010062(n), A162519(n+1))` -/
def P17000323281827785197.Spec : Prop :=
  ∀ n, P17000323281827785197.a n = A230298 n

end A230298

/-! ## A230298.P10831762181559844884

`and(A000041(a(n-1)), A010062(n))` with `a(0)=1`
-/

namespace A230298.P10831762181559844884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (A000041 (a (n - 1)).toNat) (A010062 n)

end

end A230298.P10831762181559844884

namespace A230298

/-- `and(A000041(a(n-1)), A010062(n))` -/
def P10831762181559844884.Spec : Prop :=
  ∀ n, P10831762181559844884.a n = A230298 n

end A230298

/-! ## A230298.P9268259146125946803

`and(A000108(a(n-1)), A010062(n))` with `a(0)=1`
-/

namespace A230298.P9268259146125946803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (A000108 (a (n - 1)).toNat) (A010062 n)

end

end A230298.P9268259146125946803

namespace A230298

/-- `and(A000108(a(n-1)), A010062(n))` -/
def P9268259146125946803.Spec : Prop :=
  ∀ n, P9268259146125946803.a n = A230298 n

end A230298

/-! ## A230298.P1770824766412127276

`A035263(or(2, A010062(n)))`
-/

namespace A230298.P1770824766412127276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (Int.lor 2 (A010062 n)).toNat

end

end A230298.P1770824766412127276

namespace A230298

/-- `A035263(or(2, A010062(n)))` -/
def P1770824766412127276.Spec : Prop :=
  ∀ n, P1770824766412127276.a n = A230298 n

end A230298

/-! ## A230298.P8031156700060200027

`and(A000010(A014963(2*(n+1))), A010062(n))`
-/

namespace A230298.P8031156700060200027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000010 (A014963 (2 * (n + 1))).toNat) (A010062 n)

end

end A230298.P8031156700060200027

namespace A230298

/-- `and(A000010(A014963(2*(n+1))), A010062(n))` -/
def P8031156700060200027.Spec : Prop :=
  ∀ n, P8031156700060200027.a n = A230298 n

end A230298

/-! ## A230298.P11436496743120362397

`A000035(A010062(n))`
-/

namespace A230298.P11436496743120362397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A010062 n).toNat

end

end A230298.P11436496743120362397

namespace A230298

/-- `A000035(A010062(n))` -/
def P11436496743120362397.Spec : Prop :=
  ∀ n, P11436496743120362397.a n = A230298 n

end A230298

/-! ## A230298.P8547682526714620408

`and(A010062(n), A176410(n))`
-/

namespace A230298.P8547682526714620408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010062 n) (A176410 n)

end

end A230298.P8547682526714620408

namespace A230298

/-- `and(A010062(n), A176410(n))` -/
def P8547682526714620408.Spec : Prop :=
  ∀ n, P8547682526714620408.a n = A230298 n

end A230298

/-! ## A230298.P12216830149501990432

`and(A010062(n), A176794(n))`
-/

namespace A230298.P12216830149501990432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010062 n) (A176794 n)

end

end A230298.P12216830149501990432

namespace A230298

/-- `and(A010062(n), A176794(n))` -/
def P12216830149501990432.Spec : Prop :=
  ∀ n, P12216830149501990432.a n = A230298 n

end A230298

/-! ## A230298.P11969124547517997643

`and(A010062(n), A209534(n+1))`
-/

namespace A230298.P11969124547517997643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010062 n) (A209534 (n + 1))

end

end A230298.P11969124547517997643

namespace A230298

/-- `and(A010062(n), A209534(n+1))` -/
def P11969124547517997643.Spec : Prop :=
  ∀ n, P11969124547517997643.a n = A230298 n

end A230298

/-! ## A230298.P13725625773554343786

`A014707(2*A010062(n))`
-/

namespace A230298.P13725625773554343786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (2 * A010062 n).toNat

end

end A230298.P13725625773554343786

namespace A230298

/-- `A014707(2*A010062(n))` -/
def P13725625773554343786.Spec : Prop :=
  ∀ n, P13725625773554343786.a n = A230298 n

end A230298

