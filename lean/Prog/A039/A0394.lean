import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C012
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C043
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B008.C000
import Seq.B009.C000
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

/-!
# A039400: Numbers whose base-10 representation has the same nonzero number of 0's and 8's.

The programs for A039400, there is no canonical definition to state claims against.
-/

/-! ## A039400.P1036040615560561069

`∩[A011538(n+1), A039119(n+1)]`
-/

namespace A039400.P1036040615560561069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039400.P1036040615560561069

/-! ## A039400.P11181959574227607215

`filter[A039119(n+1), A217096(#)]`
-/

namespace A039400.P11181959574227607215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A217096 (f1 j).toNat = 1) n)

end

end A039400.P11181959574227607215

/-! ## A039400.P6331005519154569218

`A007095(A039364(n+1))-A225099(A215924(n+1))`
-/

namespace A039400.P6331005519154569218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A039364 (n + 1)).toNat - A225099 (A215924 (n + 1)).toNat

end

end A039400.P6331005519154569218

/-! ## A039400.P16683358569170191732

`A007095(A039364(n+1))%A281047(A005252(n))`
-/

namespace A039400.P16683358569170191732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007095 (A039364 (n + 1)).toNat) (A281047 (A005252 n).toNat)

end

end A039400.P16683358569170191732

/-! ## A039400.P13009237378475211903

`A010052(A000043(n+1))+A007095(A039364(n+1))`
-/

namespace A039400.P13009237378475211903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A000043 (n + 1)).toNat + A007095 (A039364 (n + 1)).toNat

end

end A039400.P13009237378475211903

/-!
# A039401: Numbers whose base-10 representation has the same nonzero number of 0's and 9's.

The programs for A039401, there is no canonical definition to state claims against.
-/

/-! ## A039401.P5036603280275473895

`eq[A061601(A151950(n)), A107846(n)]`
-/

namespace A039401.P5036603280275473895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A151950 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039401.P5036603280275473895

/-! ## A039401.P937784748762269383

`A043224(n+1)-A016389(A193560(n))`
-/

namespace A039401.P937784748762269383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043224 (n + 1) - A016389 (A193560 n).toNat

end

end A039401.P937784748762269383

/-! ## A039401.P7579065051651763259

`A366966(n+1)-A016389(A193560(n))`
-/

namespace A039401.P7579065051651763259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366966 (n + 1) - A016389 (A193560 n).toNat

end

end A039401.P7579065051651763259

/-! ## A039401.P8545740407076897450

`A275947(A098841(n+1))+A043224(n+1)`
-/

namespace A039401.P8545740407076897450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275947 (A098841 (n + 1)).toNat + A043224 (n + 1)

end

end A039401.P8545740407076897450

/-! ## A039401.P13694648210150882545

`A107846(A098841(n+1)²)+A043224(n+1)`
-/

namespace A039401.P13694648210150882545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A098841 (n + 1) ^ 2).toNat + A043224 (n + 1)

end

end A039401.P13694648210150882545

/-!
# A039402: Numbers whose base-10 representation has the same nonzero number of 1's and 2's.

The programs for A039402, the canonical program `A039402.P8415178400949058947` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039402 has offset 1).

The definition of A039402 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2265 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039402.P2493446470913380914

`∩[A011532(n+1), A039120(n+1)]`
-/

namespace A039402.P2493446470913380914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039402.P2493446470913380914

namespace A039402

/-- `∩[A011532(n+1), A039120(n+1)]` -/
def P2493446470913380914.Spec : Prop :=
  ∀ n, (P2493446470913380914.a n : ℤ) = A039402 (n + 1)

end A039402

/-! ## A039402.P8415178400949058947

`∩[A011531(n+1), A039120(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A039402

/-- `∩[A011531(n+1), A039120(n+1)]` -/
def P8415178400949058947.Spec : Prop :=
  ∀ n, (P8415178400949058947.a n : ℤ) = A039402 (n + 1)

theorem P8415178400949058947.correct : P8415178400949058947.Spec := by
  intro n
  simp only [A039402, Nat.add_sub_cancel]

end A039402

/-! ## A039402.P3326738550525292304

`eq[6, gcd(A089898(n), A113581(n))]`
-/

namespace A039402.P3326738550525292304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A089898 n) (A113581 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039402.P3326738550525292304

namespace A039402

/-- `eq[6, gcd(A089898(n), A113581(n))]` -/
def P3326738550525292304.Spec : Prop :=
  ∀ n, (P3326738550525292304.a n : ℤ) = A039402 (n + 1)

end A039402

/-! ## A039402.P13197062482860979687

`eq[6, A009194(A113581(n))]`
-/

namespace A039402.P13197062482860979687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (A113581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039402.P13197062482860979687

namespace A039402

/-- `eq[6, A009194(A113581(n))]` -/
def P13197062482860979687.Spec : Prop :=
  ∀ n, (P13197062482860979687.a n : ℤ) = A039402 (n + 1)

end A039402

/-! ## A039402.P4009902122353171581

`A007095(A039365(∑[n!/∏{digits}[n, #!]]))`
-/

namespace A039402.P4009902122353171581
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => Nat.factorial x).prod : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A039365 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A039402.P4009902122353171581

namespace A039402

/-- `A007095(A039365(∑[n!/∏{digits}[n, #!]]))` -/
def P4009902122353171581.Spec : Prop :=
  ∀ n, P4009902122353171581.a n = A039402 (n + 1)

end A039402

/-!
# A039403: Numbers whose base-10 representation has the same nonzero number of 1's and 3's.

The programs for A039403, the canonical program `A039403.P15740295842774305992` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039403 has offset 1).

The definition of A039403 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3542 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039403.P15740295842774305992

`∩[A011533(n+1), A039121(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A039403

/-- `∩[A011533(n+1), A039121(n+1)]` -/
def P15740295842774305992.Spec : Prop :=
  ∀ n, (P15740295842774305992.a n : ℤ) = A039403 (n + 1)

theorem P15740295842774305992.correct : P15740295842774305992.Spec := by
  intro n
  simp only [A039403, Nat.add_sub_cancel]

end A039403

/-! ## A039403.P7950546835129760838

`∩[A011531(n+1), A039121(n+1)]`
-/

namespace A039403.P7950546835129760838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039403.P7950546835129760838

namespace A039403

/-- `∩[A011531(n+1), A039121(n+1)]` -/
def P7950546835129760838.Spec : Prop :=
  ∀ n, (P7950546835129760838.a n : ℤ) = A039403 (n + 1)

end A039403

/-! ## A039403.P651784071665656719

`eq[10, gcd(A113581(n), A165831(n+1))]`
-/

namespace A039403.P651784071665656719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A113581 n) (A165831 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039403.P651784071665656719

namespace A039403

/-- `eq[10, gcd(A113581(n), A165831(n+1))]` -/
def P651784071665656719.Spec : Prop :=
  ∀ n, (P651784071665656719.a n : ℤ) = A039403 (n + 1)

end A039403

/-! ## A039403.P16974338195596214218

`eq[10, A068822(A113581(n))]`
-/

namespace A039403.P16974338195596214218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068822 (A113581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039403.P16974338195596214218

namespace A039403

/-- `eq[10, A068822(A113581(n))]` -/
def P16974338195596214218.Spec : Prop :=
  ∀ n, (P16974338195596214218.a n : ℤ) = A039403 (n + 1)

end A039403

/-! ## A039403.P13136421079375497187

`eq[A020485(A113581(n)), A107846(n)]`
-/

namespace A039403.P13136421079375497187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 (A113581 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039403.P13136421079375497187

namespace A039403

/-- `eq[A020485(A113581(n)), A107846(n)]` -/
def P13136421079375497187.Spec : Prop :=
  ∀ n, (P13136421079375497187.a n : ℤ) = A039403 (n + 1)

end A039403

/-!
# A039404: Numbers whose base-10 representation has the same nonzero number of 1's and 4's.

The programs for A039404, the canonical program `A039404.P11291830641019790842` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039404 has offset 1).

The definition of A039404 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3542 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039404.P11291830641019790842

`∩[A011534(n+1), A039122(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A039404

/-- `∩[A011534(n+1), A039122(n+1)]` -/
def P11291830641019790842.Spec : Prop :=
  ∀ n, (P11291830641019790842.a n : ℤ) = A039404 (n + 1)

theorem P11291830641019790842.correct : P11291830641019790842.Spec := by
  intro n
  simp only [A039404, Nat.add_sub_cancel]

end A039404

/-! ## A039404.P10738114999358014622

`∩[A011531(n+1), A039122(n+1)]`
-/

namespace A039404.P10738114999358014622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039404.P10738114999358014622

namespace A039404

/-- `∩[A011531(n+1), A039122(n+1)]` -/
def P10738114999358014622.Spec : Prop :=
  ∀ n, (P10738114999358014622.a n : ℤ) = A039404 (n + 1)

end A039404

/-! ## A039404.P14588130708549807335

`A007095(A039367(n+1)^A271835(n))`
-/

namespace A039404.P14588130708549807335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A039367 (n + 1) : ℚ) ^ (A271835 n : ℤ))).toNat

end

end A039404.P14588130708549807335

namespace A039404

/-- `A007095(A039367(n+1)^A271835(n))` -/
def P14588130708549807335.Spec : Prop :=
  ∀ n, P14588130708549807335.a n = A039404 (n + 1)

end A039404

/-! ## A039404.P16761991994751370072

`A007095(A039367(n+1)^A141588(n)²)`
-/

namespace A039404.P16761991994751370072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A039367 (n + 1) : ℚ) ^ (A141588 n ^ 2 : ℤ))).toNat

end

end A039404.P16761991994751370072

namespace A039404

/-- `A007095(A039367(n+1)^A141588(n)²)` -/
def P16761991994751370072.Spec : Prop :=
  ∀ n, P16761991994751370072.a n = A039404 (n + 1)

end A039404

/-! ## A039404.P11144834696067961004

`A007095(A039367(n+1)%record[A268396(n+1)])`
-/

namespace A039404.P11144834696067961004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A039367 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A039404.P11144834696067961004

namespace A039404

/-- `A007095(A039367(n+1)%record[A268396(n+1)])` -/
def P11144834696067961004.Spec : Prop :=
  ∀ n, P11144834696067961004.a n = A039404 (n + 1)

end A039404

/-!
# A039405: Numbers whose base-10 representation has the same nonzero number of 1's and 5's.

The programs for A039405, the canonical program `A039405.P17652400312243576433` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039405 has offset 1).

The definition of A039405 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3542 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039405.P17652400312243576433

`∩[A011535(n+1), A039123(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A039405

/-- `∩[A011535(n+1), A039123(n+1)]` -/
def P17652400312243576433.Spec : Prop :=
  ∀ n, (P17652400312243576433.a n : ℤ) = A039405 (n + 1)

theorem P17652400312243576433.correct : P17652400312243576433.Spec := by
  intro n
  simp only [A039405, Nat.add_sub_cancel]

end A039405

/-! ## A039405.P11848966800030183816

`∩[A011531(n+1), A039123(n+1)]`
-/

namespace A039405.P11848966800030183816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039405.P11848966800030183816

namespace A039405

/-- `∩[A011531(n+1), A039123(n+1)]` -/
def P11848966800030183816.Spec : Prop :=
  ∀ n, (P11848966800030183816.a n : ℤ) = A039405 (n + 1)

end A039405

/-! ## A039405.P4683903997733554765

`A007095(A039368(n+1)%A159210(n+3))`
-/

namespace A039405.P4683903997733554765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A039368 (n + 1)) (A159210 (n + 3))).toNat

end

end A039405.P4683903997733554765

namespace A039405

/-- `A007095(A039368(n+1)%A159210(n+3))` -/
def P4683903997733554765.Spec : Prop :=
  ∀ n, P4683903997733554765.a n = A039405 (n + 1)

end A039405

/-! ## A039405.P16352803811127730246

`A007094(A039339(n+1)^A043564(n))`
-/

namespace A039405.P16352803811127730246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (SequenceMachineLib.roundAway ((A039339 (n + 1) : ℚ) ^ (A043564 n : ℤ))).toNat

end

end A039405.P16352803811127730246

namespace A039405

/-- `A007094(A039339(n+1)^A043564(n))` -/
def P16352803811127730246.Spec : Prop :=
  ∀ n, P16352803811127730246.a n = A039405 (n + 1)

end A039405

/-! ## A039405.P8503746048087922463

`A007095(A039368(n+1)^A043564(n))`
-/

namespace A039405.P8503746048087922463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A039368 (n + 1) : ℚ) ^ (A043564 n : ℤ))).toNat

end

end A039405.P8503746048087922463

namespace A039405

/-- `A007095(A039368(n+1)^A043564(n))` -/
def P8503746048087922463.Spec : Prop :=
  ∀ n, P8503746048087922463.a n = A039405 (n + 1)

end A039405

/-!
# A039406: Numbers whose base-10 representation has the same nonzero number of 1's and 6's.

The programs for A039406, the canonical program `A039406.P1847135189155810694` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039406 has offset 1).

The definition of A039406 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3353 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039406.P1847135189155810694

`∩[A011536(n+1), A039124(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A039406

/-- `∩[A011536(n+1), A039124(n+1)]` -/
def P1847135189155810694.Spec : Prop :=
  ∀ n, (P1847135189155810694.a n : ℤ) = A039406 (n + 1)

theorem P1847135189155810694.correct : P1847135189155810694.Spec := by
  intro n
  simp only [A039406, Nat.add_sub_cancel]

end A039406

/-! ## A039406.P11769958554081838081

`∩[A011531(n+1), A039124(n+1)]`
-/

namespace A039406.P11769958554081838081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039406.P11769958554081838081

namespace A039406

/-- `∩[A011531(n+1), A039124(n+1)]` -/
def P11769958554081838081.Spec : Prop :=
  ∀ n, (P11769958554081838081.a n : ℤ) = A039406 (n + 1)

end A039406

/-! ## A039406.P7528161868498214034

`A007095(A039369(n+1))%A216468(3*n+1)`
-/

namespace A039406.P7528161868498214034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007095 (A039369 (n + 1)).toNat) (A216468 (3 * n + 1))

end

end A039406.P7528161868498214034

namespace A039406

/-- `A007095(A039369(n+1))%A216468(3*n+1)` -/
def P7528161868498214034.Spec : Prop :=
  ∀ n, P7528161868498214034.a n = A039406 (n + 1)

end A039406

/-! ## A039406.P17813334417144252359

`A007094(A039340(n+1)^A055801(n))`
-/

namespace A039406.P17813334417144252359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (SequenceMachineLib.roundAway ((A039340 (n + 1) : ℚ) ^ (A055801 n : ℤ))).toNat

end

end A039406.P17813334417144252359

namespace A039406

/-- `A007094(A039340(n+1)^A055801(n))` -/
def P17813334417144252359.Spec : Prop :=
  ∀ n, P17813334417144252359.a n = A039406 (n + 1)

end A039406

/-! ## A039406.P13845536600991344019

`A007095(A039369(n+1)^A055801(n))`
-/

namespace A039406.P13845536600991344019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A039369 (n + 1) : ℚ) ^ (A055801 n : ℤ))).toNat

end

end A039406.P13845536600991344019

namespace A039406

/-- `A007095(A039369(n+1)^A055801(n))` -/
def P13845536600991344019.Spec : Prop :=
  ∀ n, P13845536600991344019.a n = A039406 (n + 1)

end A039406

/-!
# A039407: Numbers whose base-10 representation has the same nonzero number of 1's and 7's.

The programs for A039407, the canonical program `A039407.P3529670576331872352` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039407 has offset 1).

The definition of A039407 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3353 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039407.P3529670576331872352

`∩[A011537(n+1), A039125(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A039407

/-- `∩[A011537(n+1), A039125(n+1)]` -/
def P3529670576331872352.Spec : Prop :=
  ∀ n, (P3529670576331872352.a n : ℤ) = A039407 (n + 1)

theorem P3529670576331872352.correct : P3529670576331872352.Spec := by
  intro n
  simp only [A039407, Nat.add_sub_cancel]

end A039407

/-! ## A039407.P867057907758268628

`∩[A011531(n+1), A039125(n+1)]`
-/

namespace A039407.P867057907758268628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039407.P867057907758268628

namespace A039407

/-- `∩[A011531(n+1), A039125(n+1)]` -/
def P867057907758268628.Spec : Prop :=
  ∀ n, (P867057907758268628.a n : ℤ) = A039407 (n + 1)

end A039407

/-! ## A039407.P5783115039094417571

`A007095(A039370(n+1)%A153432(n+1))`
-/

namespace A039407.P5783115039094417571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A039370 (n + 1)) (A153432 (n + 1))).toNat

end

end A039407.P5783115039094417571

namespace A039407

/-- `A007095(A039370(n+1)%A153432(n+1))` -/
def P5783115039094417571.Spec : Prop :=
  ∀ n, P5783115039094417571.a n = A039407 (n + 1)

end A039407

/-! ## A039407.P1979692647153965002

`A007095(A039370(n+1))%A173356(n+1)`
-/

namespace A039407.P1979692647153965002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007095 (A039370 (n + 1)).toNat) (A173356 (n + 1))

end

end A039407.P1979692647153965002

namespace A039407

/-- `A007095(A039370(n+1))%A173356(n+1)` -/
def P1979692647153965002.Spec : Prop :=
  ∀ n, P1979692647153965002.a n = A039407 (n + 1)

end A039407

/-!
# A039408: Numbers whose base-10 representation has the same nonzero number of 1's and 8's.

The programs for A039408, the canonical program `A039408.P8171368045936077793` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039408 has offset 1).

The definition of A039408 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3352 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039408.P8171368045936077793

`∩[A011538(n+1), A039126(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A039408

/-- `∩[A011538(n+1), A039126(n+1)]` -/
def P8171368045936077793.Spec : Prop :=
  ∀ n, (P8171368045936077793.a n : ℤ) = A039408 (n + 1)

theorem P8171368045936077793.correct : P8171368045936077793.Spec := by
  intro n
  simp only [A039408, Nat.add_sub_cancel]

end A039408

/-! ## A039408.P14702687755458305495

`∩[A011531(n+1), A039126(n+1)]`
-/

namespace A039408.P14702687755458305495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039408.P14702687755458305495

namespace A039408

/-- `∩[A011531(n+1), A039126(n+1)]` -/
def P14702687755458305495.Spec : Prop :=
  ∀ n, (P14702687755458305495.a n : ℤ) = A039408 (n + 1)

end A039408

/-! ## A039408.P3183700338517929215

`∩[A039126(n+1), A117802(n+1)]`
-/

namespace A039408.P3183700338517929215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117802 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039408.P3183700338517929215

namespace A039408

/-- `∩[A039126(n+1), A117802(n+1)]` -/
def P3183700338517929215.Spec : Prop :=
  ∀ n, (P3183700338517929215.a n : ℤ) = A039408 (n + 1)

end A039408

/-! ## A039408.P15690658135460127980

`A007095(A039371(n+1))%A255172(A000032(n))`
-/

namespace A039408.P15690658135460127980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007095 (A039371 (n + 1)).toNat) (A255172 (A000032 n).toNat)

end

end A039408.P15690658135460127980

namespace A039408

/-- `A007095(A039371(n+1))%A255172(A000032(n))` -/
def P15690658135460127980.Spec : Prop :=
  ∀ n, P15690658135460127980.a n = A039408 (n + 1)

end A039408

/-! ## A039408.P6318322866329865349

`A007095(A039371(n+1)^A054576(2*n+1))`
-/

namespace A039408.P6318322866329865349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A039371 (n + 1) : ℚ) ^ (A054576 (2 * n + 1) : ℤ))).toNat

end

end A039408.P6318322866329865349

namespace A039408

/-- `A007095(A039371(n+1)^A054576(2*n+1))` -/
def P6318322866329865349.Spec : Prop :=
  ∀ n, P6318322866329865349.a n = A039408 (n + 1)

end A039408

/-!
# A039409: Numbers whose base-10 representation has the same nonzero number of 1's and 9's.

The programs for A039409, the canonical program `A039409.P1683326481173403432` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039409 has offset 1).

The definition of A039409 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1843 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039409.P5873370532141410089

`∩[A011539(n+1), A039127(n+1)]`
-/

namespace A039409.P5873370532141410089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039409.P5873370532141410089

namespace A039409

/-- `∩[A011539(n+1), A039127(n+1)]` -/
def P5873370532141410089.Spec : Prop :=
  ∀ n, (P5873370532141410089.a n : ℤ) = A039409 (n + 1)

end A039409

/-! ## A039409.P1683326481173403432

`∩[A011531(n+1), A039127(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A039409

/-- `∩[A011531(n+1), A039127(n+1)]` -/
def P1683326481173403432.Spec : Prop :=
  ∀ n, (P1683326481173403432.a n : ℤ) = A039409 (n + 1)

theorem P1683326481173403432.correct : P1683326481173403432.Spec := by
  intro n
  simp only [A039409, Nat.add_sub_cancel]

end A039409

/-! ## A039409.P10258468171811726411

`eq[1, A102683(A055120(n)*A102683(n))]`
-/

namespace A039409.P10258468171811726411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A055120 n * A102683 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039409.P10258468171811726411

namespace A039409

/-- `eq[1, A102683(A055120(n)*A102683(n))]` -/
def P10258468171811726411.Spec : Prop :=
  ∀ n, (P10258468171811726411.a n : ℤ) = A039409 (n + 1)

end A039409

/-! ## A039409.P7073078368783101842

`eq[A047813(n), A138342(A113581(n))]`
-/

namespace A039409.P7073078368783101842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138342 (A113581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039409.P7073078368783101842

namespace A039409

/-- `eq[A047813(n), A138342(A113581(n))]` -/
def P7073078368783101842.Spec : Prop :=
  ∀ n, (P7073078368783101842.a n : ℤ) = A039409 (n + 1)

end A039409

/-! ## A039409.P16418598866609690604

`eq[A102683(n), A174571(A113581(n))]`
-/

namespace A039409.P16418598866609690604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A113581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039409.P16418598866609690604

namespace A039409

/-- `eq[A102683(n), A174571(A113581(n))]` -/
def P16418598866609690604.Spec : Prop :=
  ∀ n, (P16418598866609690604.a n : ℤ) = A039409 (n + 1)

end A039409

/-!
# A039410: Numbers whose base-10 representation has the same nonzero number of 2's and 3's.

The programs for A039410, the canonical program `A039410.P9900228273809720722` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039410 has offset 1).

The definition of A039410 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1808 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039410.P15528733653011260260

`∩[A011532(n+1), A039128(n+1)]`
-/

namespace A039410.P15528733653011260260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039410.P15528733653011260260

namespace A039410

/-- `∩[A011532(n+1), A039128(n+1)]` -/
def P15528733653011260260.Spec : Prop :=
  ∀ n, (P15528733653011260260.a n : ℤ) = A039410 (n + 1)

end A039410

/-! ## A039410.P9900228273809720722

`∩[A011533(n+1), A039128(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A039410

/-- `∩[A011533(n+1), A039128(n+1)]` -/
def P9900228273809720722.Spec : Prop :=
  ∀ n, (P9900228273809720722.a n : ℤ) = A039410 (n + 1)

theorem P9900228273809720722.correct : P9900228273809720722.Spec := by
  intro n
  simp only [A039410, Nat.add_sub_cancel]

end A039410

/-! ## A039410.P16255538052108563263

`eq[1, A316864(A216556(n)*A316864(n))]`
-/

namespace A039410.P16255538052108563263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A216556 n * A316864 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039410.P16255538052108563263

namespace A039410

/-- `eq[1, A316864(A216556(n)*A316864(n))]` -/
def P16255538052108563263.Spec : Prop :=
  ∀ n, (P16255538052108563263.a n : ℤ) = A039410 (n + 1)

end A039410

/-! ## A039410.P2277848867159901647

`A007094(A039342(n+1)^A189006(n))`
-/

namespace A039410.P2277848867159901647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (SequenceMachineLib.roundAway ((A039342 (n + 1) : ℚ) ^ (A189006 n : ℤ))).toNat

end

end A039410.P2277848867159901647

namespace A039410

/-- `A007094(A039342(n+1)^A189006(n))` -/
def P2277848867159901647.Spec : Prop :=
  ∀ n, P2277848867159901647.a n = A039410 (n + 1)

end A039410

/-!
# A039411: Numbers whose base-10 representation has the same nonzero number of 2's and 4's.

The programs for A039411, the canonical program `A039411.P1190184811517337393` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039411 has offset 1).

The definition of A039411 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1808 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039411.P13570903224325425387

`∩[A011532(n+1), A039129(n+1)]`
-/

namespace A039411.P13570903224325425387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039411.P13570903224325425387

namespace A039411

/-- `∩[A011532(n+1), A039129(n+1)]` -/
def P13570903224325425387.Spec : Prop :=
  ∀ n, (P13570903224325425387.a n : ℤ) = A039411 (n + 1)

end A039411

/-! ## A039411.P1190184811517337393

`∩[A011534(n+1), A039129(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A039411

/-- `∩[A011534(n+1), A039129(n+1)]` -/
def P1190184811517337393.Spec : Prop :=
  ∀ n, (P1190184811517337393.a n : ℤ) = A039411 (n + 1)

theorem P1190184811517337393.correct : P1190184811517337393.Spec := by
  intro n
  simp only [A039411, Nat.add_sub_cancel]

end A039411

/-! ## A039411.P11300748093002617284

`A007095(A039373(n+1)^A271831(n))`
-/

namespace A039411.P11300748093002617284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A039373 (n + 1) : ℚ) ^ (A271831 n : ℤ))).toNat

end

end A039411.P11300748093002617284

namespace A039411

/-- `A007095(A039373(n+1)^A271831(n))` -/
def P11300748093002617284.Spec : Prop :=
  ∀ n, P11300748093002617284.a n = A039411 (n + 1)

end A039411

/-! ## A039411.P15308724317318952608

`A007095(A039373(n+1))%A216468(3*n+1)`
-/

namespace A039411.P15308724317318952608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007095 (A039373 (n + 1)).toNat) (A216468 (3 * n + 1))

end

end A039411.P15308724317318952608

namespace A039411

/-- `A007095(A039373(n+1))%A216468(3*n+1)` -/
def P15308724317318952608.Spec : Prop :=
  ∀ n, P15308724317318952608.a n = A039411 (n + 1)

end A039411

/-! ## A039411.P6329118297668833793

`A007093(A039320(n+1)%A111943(n+1))`
-/

namespace A039411.P6329118297668833793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (Int.tmod (A039320 (n + 1)) (A111943 (n + 1))).toNat

end

end A039411.P6329118297668833793

namespace A039411

/-- `A007093(A039320(n+1)%A111943(n+1))` -/
def P6329118297668833793.Spec : Prop :=
  ∀ n, P6329118297668833793.a n = A039411 (n + 1)

end A039411

/-!
# A039412: Numbers whose base-10 representation has the same nonzero number of 2's and 5's.

The programs for A039412, the canonical program `A039412.P2176753813578698199` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039412 has offset 1).

The definition of A039412 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1808 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039412.P9405675454424847344

`∩[A011532(n+1), A039130(n+1)]`
-/

namespace A039412.P9405675454424847344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039412.P9405675454424847344

namespace A039412

/-- `∩[A011532(n+1), A039130(n+1)]` -/
def P9405675454424847344.Spec : Prop :=
  ∀ n, (P9405675454424847344.a n : ℤ) = A039412 (n + 1)

end A039412

/-! ## A039412.P2176753813578698199

`∩[A011535(n+1), A039130(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A039412

/-- `∩[A011535(n+1), A039130(n+1)]` -/
def P2176753813578698199.Spec : Prop :=
  ∀ n, (P2176753813578698199.a n : ℤ) = A039412 (n + 1)

theorem P2176753813578698199.correct : P2176753813578698199.Spec := by
  intro n
  simp only [A039412, Nat.add_sub_cancel]

end A039412

/-! ## A039412.P15466010770487220494

`A007095(A039374(n+1)^A333748(n+1))`
-/

namespace A039412.P15466010770487220494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A039374 (n + 1) : ℚ) ^ (A333748 (n + 1) : ℤ))).toNat

end

end A039412.P15466010770487220494

namespace A039412

/-- `A007095(A039374(n+1)^A333748(n+1))` -/
def P15466010770487220494.Spec : Prop :=
  ∀ n, P15466010770487220494.a n = A039412 (n + 1)

end A039412

/-! ## A039412.P17414193556903592706

`A007095(A039374(n+1)%A249202(n+1))`
-/

namespace A039412.P17414193556903592706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A039374 (n + 1)) (A249202 (n + 1))).toNat

end

end A039412.P17414193556903592706

namespace A039412

/-- `A007095(A039374(n+1)%A249202(n+1))` -/
def P17414193556903592706.Spec : Prop :=
  ∀ n, P17414193556903592706.a n = A039412 (n + 1)

end A039412

/-! ## A039412.P2956881034581316958

`A007095(C(A039374(n+1), A333748(n+1)))`
-/

namespace A039412.P2956881034581316958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Nat.choose (A039374 (n + 1)).toNat (A333748 (n + 1)).toNat)

end

end A039412.P2956881034581316958

namespace A039412

/-- `A007095(C(A039374(n+1), A333748(n+1)))` -/
def P2956881034581316958.Spec : Prop :=
  ∀ n, P2956881034581316958.a n = A039412 (n + 1)

end A039412

/-!
# A039413: Numbers whose base-10 representation has the same nonzero number of 2's and 6's.

The programs for A039413, the canonical program `A039413.P6162690583686503902` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039413 has offset 1).

The definition of A039413 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1808 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039413.P101187762945646194

`∩[A011532(n+1), A039131(n+1)]`
-/

namespace A039413.P101187762945646194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039413.P101187762945646194

namespace A039413

/-- `∩[A011532(n+1), A039131(n+1)]` -/
def P101187762945646194.Spec : Prop :=
  ∀ n, (P101187762945646194.a n : ℤ) = A039413 (n + 1)

end A039413

/-! ## A039413.P6162690583686503902

`∩[A011536(n+1), A039131(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A039413

/-- `∩[A011536(n+1), A039131(n+1)]` -/
def P6162690583686503902.Spec : Prop :=
  ∀ n, (P6162690583686503902.a n : ℤ) = A039413 (n + 1)

theorem P6162690583686503902.correct : P6162690583686503902.Spec := by
  intro n
  simp only [A039413, Nat.add_sub_cancel]

end A039413

/-! ## A039413.P12577506685960515345

`A007094(A039345(n+1))^A014963(A043439(n+1))`
-/

namespace A039413.P12577506685960515345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007094 (A039345 (n + 1)).toNat : ℚ) ^ (A014963 (A043439 (n + 1)).toNat : ℤ)

end

end A039413.P12577506685960515345

namespace A039413

/-- `A007094(A039345(n+1))^A014963(A043439(n+1))` -/
def P12577506685960515345.Spec : Prop :=
  ∀ n, P12577506685960515345.a n = (A039413 (n + 1) : ℚ)

end A039413

/-! ## A039413.P16068253483860533258

`A007094(A039345(n+1)%A343339(3*(n+1)))`
-/

namespace A039413.P16068253483860533258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (Int.tmod (A039345 (n + 1)) (A343339 (3 * (n + 1)))).toNat

end

end A039413.P16068253483860533258

namespace A039413

/-- `A007094(A039345(n+1)%A343339(3*(n+1)))` -/
def P16068253483860533258.Spec : Prop :=
  ∀ n, P16068253483860533258.a n = A039413 (n + 1)

end A039413

/-! ## A039413.P9840293884018364450

`A007095(A039375(n+1))%A047981(3*n+4)`
-/

namespace A039413.P9840293884018364450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007095 (A039375 (n + 1)).toNat) (A047981 (3 * n + 4))

end

end A039413.P9840293884018364450

namespace A039413

/-- `A007095(A039375(n+1))%A047981(3*n+4)` -/
def P9840293884018364450.Spec : Prop :=
  ∀ n, P9840293884018364450.a n = A039413 (n + 1)

end A039413

/-!
# A039414: Numbers whose base-10 representation has the same nonzero number of 2's and 7's.

The programs for A039414, the canonical program `A039414.P14470572216190610609` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039414 has offset 1).

The definition of A039414 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1808 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039414.P16406011899180868295

`∩[A011532(n+1), A039132(n+1)]`
-/

namespace A039414.P16406011899180868295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039414.P16406011899180868295

namespace A039414

/-- `∩[A011532(n+1), A039132(n+1)]` -/
def P16406011899180868295.Spec : Prop :=
  ∀ n, (P16406011899180868295.a n : ℤ) = A039414 (n + 1)

end A039414

/-! ## A039414.P14470572216190610609

`∩[A011537(n+1), A039132(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A039414

/-- `∩[A011537(n+1), A039132(n+1)]` -/
def P14470572216190610609.Spec : Prop :=
  ∀ n, (P14470572216190610609.a n : ℤ) = A039414 (n + 1)

theorem P14470572216190610609.correct : P14470572216190610609.Spec := by
  intro n
  simp only [A039414, Nat.add_sub_cancel]

end A039414

/-! ## A039414.P3086524492090894826

`A007095(A039376(n+1)^A194285(n+1))`
-/

namespace A039414.P3086524492090894826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A039376 (n + 1) : ℚ) ^ (A194285 (n + 1) : ℤ))).toNat

end

end A039414.P3086524492090894826

namespace A039414

/-- `A007095(A039376(n+1)^A194285(n+1))` -/
def P3086524492090894826.Spec : Prop :=
  ∀ n, P3086524492090894826.a n = A039414 (n + 1)

end A039414

/-! ## A039414.P17844015613583688653

`A007095(A039376(n+1))%A105701(A010008(n))`
-/

namespace A039414.P17844015613583688653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007095 (A039376 (n + 1)).toNat) (A105701 (A010008 n).toNat)

end

end A039414.P17844015613583688653

namespace A039414

/-- `A007095(A039376(n+1))%A105701(A010008(n))` -/
def P17844015613583688653.Spec : Prop :=
  ∀ n, P17844015613583688653.a n = A039414 (n + 1)

end A039414

/-! ## A039414.P15849491386614267758

`A007094(A039346(n+1))%A000045(A008558(n+1))`
-/

namespace A039414.P15849491386614267758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007094 (A039346 (n + 1)).toNat) (A000045 (A008558 (n + 1)).toNat)

end

end A039414.P15849491386614267758

namespace A039414

/-- `A007094(A039346(n+1))%A000045(A008558(n+1))` -/
def P15849491386614267758.Spec : Prop :=
  ∀ n, P15849491386614267758.a n = A039414 (n + 1)

end A039414

/-!
# A039415: Numbers whose base-10 representation has the same nonzero number of 2's and 8's.

The programs for A039415, the canonical program `A039415.P17237837966761847788` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039415 has offset 1).

The definition of A039415 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1808 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039415.P1100237609167052047

`∩[A011532(n+1), A039133(n+1)]`
-/

namespace A039415.P1100237609167052047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039415.P1100237609167052047

namespace A039415

/-- `∩[A011532(n+1), A039133(n+1)]` -/
def P1100237609167052047.Spec : Prop :=
  ∀ n, (P1100237609167052047.a n : ℤ) = A039415 (n + 1)

end A039415

/-! ## A039415.P17237837966761847788

`∩[A011538(n+1), A039133(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A039415

/-- `∩[A011538(n+1), A039133(n+1)]` -/
def P17237837966761847788.Spec : Prop :=
  ∀ n, (P17237837966761847788.a n : ℤ) = A039415 (n + 1)

theorem P17237837966761847788.correct : P17237837966761847788.Spec := by
  intro n
  simp only [A039415, Nat.add_sub_cancel]

end A039415

/-! ## A039415.P12192112568955497694

`∩[A039133(n+1), A117802(n+1)]`
-/

namespace A039415.P12192112568955497694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117802 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039415.P12192112568955497694

namespace A039415

/-- `∩[A039133(n+1), A117802(n+1)]` -/
def P12192112568955497694.Spec : Prop :=
  ∀ n, (P12192112568955497694.a n : ℤ) = A039415 (n + 1)

end A039415

/-! ## A039415.P2615049501938791947

`A007095(A039377(n+1)^A271838(n))`
-/

namespace A039415.P2615049501938791947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A039377 (n + 1) : ℚ) ^ (A271838 n : ℤ))).toNat

end

end A039415.P2615049501938791947

namespace A039415

/-- `A007095(A039377(n+1)^A271838(n))` -/
def P2615049501938791947.Spec : Prop :=
  ∀ n, P2615049501938791947.a n = A039415 (n + 1)

end A039415

/-! ## A039415.P16733783738609641431

`A007095(C(A039377(n+1), A271838(n)))`
-/

namespace A039415.P16733783738609641431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Nat.choose (A039377 (n + 1)).toNat (A271838 n).toNat)

end

end A039415.P16733783738609641431

namespace A039415

/-- `A007095(C(A039377(n+1), A271838(n)))` -/
def P16733783738609641431.Spec : Prop :=
  ∀ n, P16733783738609641431.a n = A039415 (n + 1)

end A039415

/-!
# A039416: Numbers whose base-10 representation has the same nonzero number of 2's and 9's.

The programs for A039416, the canonical program `A039416.P5541879360622471767` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039416 has offset 1).

The definition of A039416 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1808 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039416.P5541879360622471767

`∩[A011532(n+1), A039134(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A039416

/-- `∩[A011532(n+1), A039134(n+1)]` -/
def P5541879360622471767.Spec : Prop :=
  ∀ n, (P5541879360622471767.a n : ℤ) = A039416 (n + 1)

theorem P5541879360622471767.correct : P5541879360622471767.Spec := by
  intro n
  simp only [A039416, Nat.add_sub_cancel]

end A039416

/-! ## A039416.P8992860839921971318

`∩[A011539(n+1), A039134(n+1)]`
-/

namespace A039416.P8992860839921971318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039416.P8992860839921971318

namespace A039416

/-- `∩[A011539(n+1), A039134(n+1)]` -/
def P8992860839921971318.Spec : Prop :=
  ∀ n, (P8992860839921971318.a n : ℤ) = A039416 (n + 1)

end A039416

/-! ## A039416.P814430345705858676

`eq[1, A102683(n*A100910(A017293(n)))]`
-/

namespace A039416.P814430345705858676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 ((n : ℤ) * A100910 (A017293 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039416.P814430345705858676

namespace A039416

/-- `eq[1, A102683(n*A100910(A017293(n)))]` -/
def P814430345705858676.Spec : Prop :=
  ∀ n, (P814430345705858676.a n : ℤ) = A039416 (n + 1)

end A039416

/-! ## A039416.P2442039223557122086

`eq[1, A007949(A113581(n))*A102683(n)]`
-/

namespace A039416.P2442039223557122086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A113581 n).toNat * A102683 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039416.P2442039223557122086

namespace A039416

/-- `eq[1, A007949(A113581(n))*A102683(n)]` -/
def P2442039223557122086.Spec : Prop :=
  ∀ n, (P2442039223557122086.a n : ℤ) = A039416 (n + 1)

end A039416

/-! ## A039416.P9249715055526565604

`∩[A039134(n+1), A088479(n+1)]`
-/

namespace A039416.P9249715055526565604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088479 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039416.P9249715055526565604

namespace A039416

/-- `∩[A039134(n+1), A088479(n+1)]` -/
def P9249715055526565604.Spec : Prop :=
  ∀ n, (P9249715055526565604.a n : ℤ) = A039416 (n + 1)

end A039416

/-!
# A039417: Numbers whose base-10 representation has the same nonzero number of 3's and 4's.

The programs for A039417, the canonical program `A039417.P5176249558024436737` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039417 has offset 1).

The definition of A039417 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1588 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039417.P1047404691258299992

`∩[A011533(n+1), A039135(n+1)]`
-/

namespace A039417.P1047404691258299992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039417.P1047404691258299992

namespace A039417

/-- `∩[A011533(n+1), A039135(n+1)]` -/
def P1047404691258299992.Spec : Prop :=
  ∀ n, (P1047404691258299992.a n : ℤ) = A039417 (n + 1)

end A039417

/-! ## A039417.P5176249558024436737

`∩[A011534(n+1), A039135(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A039417

/-- `∩[A011534(n+1), A039135(n+1)]` -/
def P5176249558024436737.Spec : Prop :=
  ∀ n, (P5176249558024436737.a n : ℤ) = A039417 (n + 1)

theorem P5176249558024436737.correct : P5176249558024436737.Spec := by
  intro n
  simp only [A039417, Nat.add_sub_cancel]

end A039417

/-! ## A039417.P18254785930201936392

`A007095(A039378(n+1)%A117478(3*n+2))`
-/

namespace A039417.P18254785930201936392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A039378 (n + 1)) (A117478 (3 * n + 2))).toNat

end

end A039417.P18254785930201936392

namespace A039417

/-- `A007095(A039378(n+1)%A117478(3*n+2))` -/
def P18254785930201936392.Spec : Prop :=
  ∀ n, P18254785930201936392.a n = A039417 (n + 1)

end A039417

/-! ## A039417.P1533793826369055701

`A001222(A072982(n+1))*A007095(A039378(n+1))`
-/

namespace A039417.P1533793826369055701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A072982 (n + 1)).toNat * A007095 (A039378 (n + 1)).toNat

end

end A039417.P1533793826369055701

namespace A039417

/-- `A001222(A072982(n+1))*A007095(A039378(n+1))` -/
def P1533793826369055701.Spec : Prop :=
  ∀ n, P1533793826369055701.a n = A039417 (n + 1)

end A039417

/-! ## A039417.P370587330784176711

`A001221(A057172(n+1))*A007095(A039378(n+1))`
-/

namespace A039417.P370587330784176711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A057172 (n + 1)).toNat * A007095 (A039378 (n + 1)).toNat

end

end A039417.P370587330784176711

namespace A039417

/-- `A001221(A057172(n+1))*A007095(A039378(n+1))` -/
def P370587330784176711.Spec : Prop :=
  ∀ n, P370587330784176711.a n = A039417 (n + 1)

end A039417

/-!
# A039418: Numbers whose base-10 representation has the same nonzero number of 3's and 5's.

The programs for A039418, the canonical program `A039418.P1366118184551076561` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039418 has offset 1).

The definition of A039418 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1572 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039418.P9219733730121355757

`∩[A011533(n+1), A039136(n+1)]`
-/

namespace A039418.P9219733730121355757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039418.P9219733730121355757

namespace A039418

/-- `∩[A011533(n+1), A039136(n+1)]` -/
def P9219733730121355757.Spec : Prop :=
  ∀ n, (P9219733730121355757.a n : ℤ) = A039418 (n + 1)

end A039418

/-! ## A039418.P1366118184551076561

`∩[A011535(n+1), A039136(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A039418

/-- `∩[A011535(n+1), A039136(n+1)]` -/
def P1366118184551076561.Spec : Prop :=
  ∀ n, (P1366118184551076561.a n : ℤ) = A039418 (n + 1)

theorem P1366118184551076561.correct : P1366118184551076561.Spec := by
  intro n
  simp only [A039418, Nat.add_sub_cancel]

end A039418

/-! ## A039418.P3931422031970786769

`A007095(∑[A091536(n)]*A039379(n+1))`
-/

namespace A039418.P3931422031970786769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091536 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 ((∑ j ∈ Finset.range (n + 1), f1 j) * A039379 (n + 1)).toNat

end

end A039418.P3931422031970786769

namespace A039418

/-- `A007095(∑[A091536(n)]*A039379(n+1))` -/
def P3931422031970786769.Spec : Prop :=
  ∀ n, P3931422031970786769.a n = A039418 (n + 1)

end A039418

/-! ## A039418.P4852533029801844529

`A007095(A039379(n+1)^∑[A091536(n)])`
-/

namespace A039418.P4852533029801844529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091536 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A039379 (n + 1) : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ))).toNat

end

end A039418.P4852533029801844529

namespace A039418

/-- `A007095(A039379(n+1)^∑[A091536(n)])` -/
def P4852533029801844529.Spec : Prop :=
  ∀ n, P4852533029801844529.a n = A039418 (n + 1)

end A039418

/-! ## A039418.P393041322992450008

`A000265(2^n)*A007095(A039379(n+1))`
-/

namespace A039418.P393041322992450008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (2 ^ n) * A007095 (A039379 (n + 1)).toNat

end

end A039418.P393041322992450008

namespace A039418

/-- `A000265(2^n)*A007095(A039379(n+1))` -/
def P393041322992450008.Spec : Prop :=
  ∀ n, P393041322992450008.a n = A039418 (n + 1)

end A039418

/-!
# A039419: Numbers whose base-10 representation has the same nonzero number of 3's and 6's.

The programs for A039419, the canonical program `A039419.P7462469073655692770` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039419 has offset 1).

The definition of A039419 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1572 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039419.P2501597554388844961

`∩[A011533(n+1), A039137(n+1)]`
-/

namespace A039419.P2501597554388844961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039419.P2501597554388844961

namespace A039419

/-- `∩[A011533(n+1), A039137(n+1)]` -/
def P2501597554388844961.Spec : Prop :=
  ∀ n, (P2501597554388844961.a n : ℤ) = A039419 (n + 1)

end A039419

/-! ## A039419.P7462469073655692770

`∩[A011536(n+1), A039137(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A039419

/-- `∩[A011536(n+1), A039137(n+1)]` -/
def P7462469073655692770.Spec : Prop :=
  ∀ n, (P7462469073655692770.a n : ℤ) = A039419 (n + 1)

theorem P7462469073655692770.correct : P7462469073655692770.Spec := by
  intro n
  simp only [A039419, Nat.add_sub_cancel]

end A039419

/-! ## A039419.P4383280915484007446

`A007094(A039349(n+1)^A194285(n+1))`
-/

namespace A039419.P4383280915484007446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (SequenceMachineLib.roundAway ((A039349 (n + 1) : ℚ) ^ (A194285 (n + 1) : ℤ))).toNat

end

end A039419.P4383280915484007446

namespace A039419

/-- `A007094(A039349(n+1)^A194285(n+1))` -/
def P4383280915484007446.Spec : Prop :=
  ∀ n, P4383280915484007446.a n = A039419 (n + 1)

end A039419

/-! ## A039419.P1385967639278062231

`A007095(A039380(n+1)^A194285(n+1))`
-/

namespace A039419.P1385967639278062231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A039380 (n + 1) : ℚ) ^ (A194285 (n + 1) : ℤ))).toNat

end

end A039419.P1385967639278062231

namespace A039419

/-- `A007095(A039380(n+1)^A194285(n+1))` -/
def P1385967639278062231.Spec : Prop :=
  ∀ n, P1385967639278062231.a n = A039419 (n + 1)

end A039419

/-! ## A039419.P10284766671481538554

`A007094(C(A039349(n+1), A194285(n+1)))`
-/

namespace A039419.P10284766671481538554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (Nat.choose (A039349 (n + 1)).toNat (A194285 (n + 1)).toNat)

end

end A039419.P10284766671481538554

namespace A039419

/-- `A007094(C(A039349(n+1), A194285(n+1)))` -/
def P10284766671481538554.Spec : Prop :=
  ∀ n, P10284766671481538554.a n = A039419 (n + 1)

end A039419

/-!
# A039420: Numbers whose base-10 representation has the same nonzero number of 3's and 7's.

The programs for A039420, the canonical program `A039420.P17081233854631710980` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039420 has offset 1).

The definition of A039420 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1571 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039420.P17081233854631710980

`∩[A011533(n+1), A039138(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A039420

/-- `∩[A011533(n+1), A039138(n+1)]` -/
def P17081233854631710980.Spec : Prop :=
  ∀ n, (P17081233854631710980.a n : ℤ) = A039420 (n + 1)

theorem P17081233854631710980.correct : P17081233854631710980.Spec := by
  intro n
  simp only [A039420, Nat.add_sub_cancel]

end A039420

/-! ## A039420.P6056489416432662154

`∩[A011537(n+1), A039138(n+1)]`
-/

namespace A039420.P6056489416432662154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039420.P6056489416432662154

namespace A039420

/-- `∩[A011537(n+1), A039138(n+1)]` -/
def P6056489416432662154.Spec : Prop :=
  ∀ n, (P6056489416432662154.a n : ℤ) = A039420 (n + 1)

end A039420

/-! ## A039420.P9357929444687639784

`A007094(A039350(n+1)%A048255(n+1))`
-/

namespace A039420.P9357929444687639784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (Int.tmod (A039350 (n + 1)) (A048255 (n + 1))).toNat

end

end A039420.P9357929444687639784

namespace A039420

/-- `A007094(A039350(n+1)%A048255(n+1))` -/
def P9357929444687639784.Spec : Prop :=
  ∀ n, P9357929444687639784.a n = A039420 (n + 1)

end A039420

/-! ## A039420.P8143129522514347983

`A007095(A039381(n+1)%A048255(n+1))`
-/

namespace A039420.P8143129522514347983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A039381 (n + 1)) (A048255 (n + 1))).toNat

end

end A039420.P8143129522514347983

namespace A039420

/-- `A007095(A039381(n+1)%A048255(n+1))` -/
def P8143129522514347983.Spec : Prop :=
  ∀ n, P8143129522514347983.a n = A039420 (n + 1)

end A039420

/-! ## A039420.P3749788219914140165

`A001221(A014210(n))*A007095(A039381(n+1))`
-/

namespace A039420.P3749788219914140165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A014210 n).toNat * A007095 (A039381 (n + 1)).toNat

end

end A039420.P3749788219914140165

namespace A039420

/-- `A001221(A014210(n))*A007095(A039381(n+1))` -/
def P3749788219914140165.Spec : Prop :=
  ∀ n, P3749788219914140165.a n = A039420 (n + 1)

end A039420

/-!
# A039421: Numbers whose base-10 representation has the same nonzero number of 3's and 8's.

The programs for A039421, the canonical program `A039421.P10239379647912935684` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039421 has offset 1).

The definition of A039421 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1571 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039421.P10239379647912935684

`∩[A011533(n+1), A039139(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A039421

/-- `∩[A011533(n+1), A039139(n+1)]` -/
def P10239379647912935684.Spec : Prop :=
  ∀ n, (P10239379647912935684.a n : ℤ) = A039421 (n + 1)

theorem P10239379647912935684.correct : P10239379647912935684.Spec := by
  intro n
  simp only [A039421, Nat.add_sub_cancel]

end A039421

/-! ## A039421.P13189472352901570740

`∩[A011538(n+1), A039139(n+1)]`
-/

namespace A039421.P13189472352901570740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039421.P13189472352901570740

namespace A039421

/-- `∩[A011538(n+1), A039139(n+1)]` -/
def P13189472352901570740.Spec : Prop :=
  ∀ n, (P13189472352901570740.a n : ℤ) = A039421 (n + 1)

end A039421

/-! ## A039421.P7559299770354289336

`A007095(A039382(n+1)^A193518(n+1))`
-/

namespace A039421.P7559299770354289336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A039382 (n + 1) : ℚ) ^ (A193518 (n + 1) : ℤ))).toNat

end

end A039421.P7559299770354289336

namespace A039421

/-- `A007095(A039382(n+1)^A193518(n+1))` -/
def P7559299770354289336.Spec : Prop :=
  ∀ n, P7559299770354289336.a n = A039421 (n + 1)

end A039421

/-! ## A039421.P5098323954017273312

`A007095(C(A039382(n+1), A193518(n+1)))`
-/

namespace A039421.P5098323954017273312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Nat.choose (A039382 (n + 1)).toNat (A193518 (n + 1)).toNat)

end

end A039421.P5098323954017273312

namespace A039421

/-- `A007095(C(A039382(n+1), A193518(n+1)))` -/
def P5098323954017273312.Spec : Prop :=
  ∀ n, P5098323954017273312.a n = A039421 (n + 1)

end A039421

/-! ## A039421.P6279853054801023556

`A025469(A000016(n))!*A007095(A039382(n+1))`
-/

namespace A039421.P6279853054801023556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025469 (A000016 n).toNat).toNat : ℤ) * A007095 (A039382 (n + 1)).toNat

end

end A039421.P6279853054801023556

namespace A039421

/-- `A025469(A000016(n))!*A007095(A039382(n+1))` -/
def P6279853054801023556.Spec : Prop :=
  ∀ n, P6279853054801023556.a n = A039421 (n + 1)

end A039421

/-!
# A039422: Numbers whose base-10 representation has the same nonzero number of 3's and 9's.

The programs for A039422, the canonical program `A039422.P3003242442274941271` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039422 has offset 1).

The definition of A039422 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1571 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039422.P3003242442274941271

`∩[A011533(n+1), A039140(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A039422

/-- `∩[A011533(n+1), A039140(n+1)]` -/
def P3003242442274941271.Spec : Prop :=
  ∀ n, (P3003242442274941271.a n : ℤ) = A039422 (n + 1)

theorem P3003242442274941271.correct : P3003242442274941271.Spec := by
  intro n
  simp only [A039422, Nat.add_sub_cancel]

end A039422

/-! ## A039422.P2614017856123277847

`∩[A011539(n+1), A039140(n+1)]`
-/

namespace A039422.P2614017856123277847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039422.P2614017856123277847

namespace A039422

/-- `∩[A011539(n+1), A039140(n+1)]` -/
def P2614017856123277847.Spec : Prop :=
  ∀ n, (P2614017856123277847.a n : ℤ) = A039422 (n + 1)

end A039422

/-! ## A039422.P7628035640110293700

`∩[A011539(n+1), A011533(A324704(n+1))]`
-/

namespace A039422.P7628035640110293700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011533 (A324704 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039422.P7628035640110293700

namespace A039422

/-- `∩[A011539(n+1), A011533(A324704(n+1))]` -/
def P7628035640110293700.Spec : Prop :=
  ∀ n, (P7628035640110293700.a n : ℤ) = A039422 (n + 1)

end A039422

/-! ## A039422.P14943712771036397184

`∩[A043525(n+1), A011533(A324704(n+1))]`
-/

namespace A039422.P14943712771036397184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011533 (A324704 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039422.P14943712771036397184

namespace A039422

/-- `∩[A043525(n+1), A011533(A324704(n+1))]` -/
def P14943712771036397184.Spec : Prop :=
  ∀ n, (P14943712771036397184.a n : ℤ) = A039422 (n + 1)

end A039422

/-!
# A039423: Numbers whose base-10 representation has the same nonzero number of 4's and 5's.

The programs for A039423, there is no canonical definition to state claims against.
-/

/-! ## A039423.P18386792748390981837

`∩[A011534(n+1), A039141(n+1)]`
-/

namespace A039423.P18386792748390981837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039423.P18386792748390981837

/-! ## A039423.P16574348728093379439

`∩[A011535(n+1), A039141(n+1)]`
-/

namespace A039423.P16574348728093379439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039423.P16574348728093379439

/-! ## A039423.P8263413678734242455

`A007095(or(A039383(n+1), A072189(n)))`
-/

namespace A039423.P8263413678734242455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.lor (A039383 (n + 1)) (A072189 n)).toNat

end

end A039423.P8263413678734242455

/-! ## A039423.P6156316655830119930

`A037479(or(A039383(n+1), A072189(n)))`
-/

namespace A039423.P6156316655830119930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037479 (Int.lor (A039383 (n + 1)) (A072189 n)).toNat

end

end A039423.P6156316655830119930

/-! ## A039423.P12261180150370658685

`A007095(A039383(n+1))%A322158(n+10)`
-/

namespace A039423.P12261180150370658685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007095 (A039383 (n + 1)).toNat) (A322158 (n + 10))

end

end A039423.P12261180150370658685

/-!
# A039424: Numbers whose base-10 representation has the same nonzero number of 4's and 6's.

The programs for A039424, the canonical program `A039424.P9537314864739578220` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039424 has offset 1).

The definition of A039424 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1556 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039424.P9537314864739578220

`∩[A011534(n+1), A039142(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A039424

/-- `∩[A011534(n+1), A039142(n+1)]` -/
def P9537314864739578220.Spec : Prop :=
  ∀ n, (P9537314864739578220.a n : ℤ) = A039424 (n + 1)

theorem P9537314864739578220.correct : P9537314864739578220.Spec := by
  intro n
  simp only [A039424, Nat.add_sub_cancel]

end A039424

/-! ## A039424.P178885524208937976

`∩[A011536(n+1), A039142(n+1)]`
-/

namespace A039424.P178885524208937976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039424.P178885524208937976

namespace A039424

/-- `∩[A011536(n+1), A039142(n+1)]` -/
def P178885524208937976.Spec : Prop :=
  ∀ n, (P178885524208937976.a n : ℤ) = A039424 (n + 1)

end A039424

/-! ## A039424.P2040420649201239401

`A007095(A039384(n+1)%A177275(n+1))`
-/

namespace A039424.P2040420649201239401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A039384 (n + 1)) (A177275 (n + 1))).toNat

end

end A039424.P2040420649201239401

namespace A039424

/-- `A007095(A039384(n+1)%A177275(n+1))` -/
def P2040420649201239401.Spec : Prop :=
  ∀ n, P2040420649201239401.a n = A039424 (n + 1)

end A039424

/-! ## A039424.P15091275857304419652

`A007095(A039384(n+1))%A138667(Δ[n²])`
-/

namespace A039424.P15091275857304419652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007095 (A039384 (n + 1)).toNat) (A138667 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A039424.P15091275857304419652

namespace A039424

/-- `A007095(A039384(n+1))%A138667(Δ[n²])` -/
def P15091275857304419652.Spec : Prop :=
  ∀ n, P15091275857304419652.a n = A039424 (n + 1)

end A039424

/-! ## A039424.P12967314744046956795

`A007095(A039384(n+1))+A000038(A000045(n+1))`
-/

namespace A039424.P12967314744046956795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A039384 (n + 1)).toNat + A000038 (A000045 (n + 1)).toNat

end

end A039424.P12967314744046956795

namespace A039424

/-- `A007095(A039384(n+1))+A000038(A000045(n+1))` -/
def P12967314744046956795.Spec : Prop :=
  ∀ n, P12967314744046956795.a n = A039424 (n + 1)

end A039424

/-!
# A039425: Numbers whose base-10 representation has the same nonzero number of 4's and 7's.

The programs for A039425, the canonical program `A039425.P18439289750765105462` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039425 has offset 1).

The definition of A039425 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1556 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039425.P18439289750765105462

`∩[A011534(n+1), A039143(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A039425

/-- `∩[A011534(n+1), A039143(n+1)]` -/
def P18439289750765105462.Spec : Prop :=
  ∀ n, (P18439289750765105462.a n : ℤ) = A039425 (n + 1)

theorem P18439289750765105462.correct : P18439289750765105462.Spec := by
  intro n
  simp only [A039425, Nat.add_sub_cancel]

end A039425

/-! ## A039425.P427446625716177377

`∩[A011537(n+1), A039143(n+1)]`
-/

namespace A039425.P427446625716177377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039425.P427446625716177377

namespace A039425

/-- `∩[A011537(n+1), A039143(n+1)]` -/
def P427446625716177377.Spec : Prop :=
  ∀ n, (P427446625716177377.a n : ℤ) = A039425 (n + 1)

end A039425

/-! ## A039425.P14919968524628888987

`A007095(A039385(n+1)%A291420(n+1))`
-/

namespace A039425.P14919968524628888987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A039385 (n + 1)) (A291420 (n + 1))).toNat

end

end A039425.P14919968524628888987

namespace A039425

/-- `A007095(A039385(n+1)%A291420(n+1))` -/
def P14919968524628888987.Spec : Prop :=
  ∀ n, P14919968524628888987.a n = A039425 (n + 1)

end A039425

/-! ## A039425.P17371133996075914963

`A007094(A039353(n+1))+A000038(A000016(n))`
-/

namespace A039425.P17371133996075914963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A039353 (n + 1)).toNat + A000038 (A000016 n).toNat

end

end A039425.P17371133996075914963

namespace A039425

/-- `A007094(A039353(n+1))+A000038(A000016(n))` -/
def P17371133996075914963.Spec : Prop :=
  ∀ n, P17371133996075914963.a n = A039425 (n + 1)

end A039425

/-! ## A039425.P5814596433337543135

`A007094(A039353(n+1))+A000038(A000029(n))`
-/

namespace A039425.P5814596433337543135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A039353 (n + 1)).toNat + A000038 (A000029 n).toNat

end

end A039425.P5814596433337543135

namespace A039425

/-- `A007094(A039353(n+1))+A000038(A000029(n))` -/
def P5814596433337543135.Spec : Prop :=
  ∀ n, P5814596433337543135.a n = A039425 (n + 1)

end A039425

/-!
# A039426: Numbers whose base-10 representation has the same nonzero number of 4's and 8's.

The programs for A039426, the canonical program `A039426.P12047223122600376495` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039426 has offset 1).

The definition of A039426 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1556 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039426.P12047223122600376495

`∩[A011534(n+1), A039144(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A039426

/-- `∩[A011534(n+1), A039144(n+1)]` -/
def P12047223122600376495.Spec : Prop :=
  ∀ n, (P12047223122600376495.a n : ℤ) = A039426 (n + 1)

theorem P12047223122600376495.correct : P12047223122600376495.Spec := by
  intro n
  simp only [A039426, Nat.add_sub_cancel]

end A039426

/-! ## A039426.P1575907291133256427

`∩[A011538(n+1), A039144(n+1)]`
-/

namespace A039426.P1575907291133256427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039426.P1575907291133256427

namespace A039426

/-- `∩[A011538(n+1), A039144(n+1)]` -/
def P1575907291133256427.Spec : Prop :=
  ∀ n, (P1575907291133256427.a n : ℤ) = A039426 (n + 1)

end A039426

/-! ## A039426.P9156448961820781663

`A007095(A039386(n+1))%A288172(n+8)`
-/

namespace A039426.P9156448961820781663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007095 (A039386 (n + 1)).toNat) (A288172 (n + 8))

end

end A039426.P9156448961820781663

namespace A039426

/-- `A007095(A039386(n+1))%A288172(n+8)` -/
def P9156448961820781663.Spec : Prop :=
  ∀ n, P9156448961820781663.a n = A039426 (n + 1)

end A039426

/-! ## A039426.P15044488018140149541

`A001222(A261434(n+1))*A007095(A039386(n+1))`
-/

namespace A039426.P15044488018140149541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A261434 (n + 1)).toNat * A007095 (A039386 (n + 1)).toNat

end

end A039426.P15044488018140149541

namespace A039426

/-- `A001222(A261434(n+1))*A007095(A039386(n+1))` -/
def P15044488018140149541.Spec : Prop :=
  ∀ n, P15044488018140149541.a n = A039426 (n + 1)

end A039426

/-!
# A039427: Numbers whose base-10 representation has the same nonzero number of 4's and 9's.

The programs for A039427, the canonical program `A039427.P17652112715132831845` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039427 has offset 1).

The definition of A039427 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1555 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039427.P17652112715132831845

`∩[A011534(n+1), A039145(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A039427

/-- `∩[A011534(n+1), A039145(n+1)]` -/
def P17652112715132831845.Spec : Prop :=
  ∀ n, (P17652112715132831845.a n : ℤ) = A039427 (n + 1)

theorem P17652112715132831845.correct : P17652112715132831845.Spec := by
  intro n
  simp only [A039427, Nat.add_sub_cancel]

end A039427

/-! ## A039427.P4246821120630016850

`∩[A011539(n+1), A039145(n+1)]`
-/

namespace A039427.P4246821120630016850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039427.P4246821120630016850

namespace A039427

/-- `∩[A011539(n+1), A039145(n+1)]` -/
def P4246821120630016850.Spec : Prop :=
  ∀ n, (P4246821120630016850.a n : ℤ) = A039427 (n + 1)

end A039427

/-! ## A039427.P4462842973237114752

`∩[A039145(n+1), A120433(n+1)]`
-/

namespace A039427.P4462842973237114752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039427.P4462842973237114752

namespace A039427

/-- `∩[A039145(n+1), A120433(n+1)]` -/
def P4462842973237114752.Spec : Prop :=
  ∀ n, (P4462842973237114752.a n : ℤ) = A039427 (n + 1)

end A039427

/-! ## A039427.P5299856996784735508

`eq[5, A092197(A138153(n+1))]`
-/

namespace A039427.P5299856996784735508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092197 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039427.P5299856996784735508

namespace A039427

/-- `eq[5, A092197(A138153(n+1))]` -/
def P5299856996784735508.Spec : Prop :=
  ∀ n, (P5299856996784735508.a n : ℤ) = A039427 (n + 1)

end A039427

/-! ## A039427.P1561862388746940943

`eq[5, A092197(A233583(n+1))]`
-/

namespace A039427.P1561862388746940943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092197 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039427.P1561862388746940943

namespace A039427

/-- `eq[5, A092197(A233583(n+1))]` -/
def P1561862388746940943.Spec : Prop :=
  ∀ n, (P1561862388746940943.a n : ℤ) = A039427 (n + 1)

end A039427

/-!
# A039428: Numbers whose base-10 representation has the same nonzero number of 5's and 6's.

The programs for A039428, there is no canonical definition to state claims against.
-/

/-! ## A039428.P4676922645345466889

`∩[A011535(n+1), A039146(n+1)]`
-/

namespace A039428.P4676922645345466889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039428.P4676922645345466889

/-! ## A039428.P2349883773390292567

`∩[A011536(n+1), A039146(n+1)]`
-/

namespace A039428.P2349883773390292567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039428.P2349883773390292567

/-! ## A039428.P10783039790693892357

`A007095(A039387(n+1))%A074873(n)`
-/

namespace A039428.P10783039790693892357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007095 (A039387 (n + 1)).toNat) (A074873 n)

end

end A039428.P10783039790693892357

/-! ## A039428.P8693717370882875563

`A001222(A032593(n+1))*A007095(A039387(n+1))`
-/

namespace A039428.P8693717370882875563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A032593 (n + 1)).toNat * A007095 (A039387 (n + 1)).toNat

end

end A039428.P8693717370882875563

/-! ## A039428.P118975439704866086

`A001222(A032594(n+1))*A007095(A039387(n+1))`
-/

namespace A039428.P118975439704866086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A032594 (n + 1)).toNat * A007095 (A039387 (n + 1)).toNat

end

end A039428.P118975439704866086

/-!
# A039429: Numbers whose base-10 representation has the same nonzero number of 5's and 7's.

The programs for A039429, there is no canonical definition to state claims against.
-/

/-! ## A039429.P13344195661343623142

`∩[A011535(n+1), A039147(n+1)]`
-/

namespace A039429.P13344195661343623142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039429.P13344195661343623142

/-! ## A039429.P580284514580487838

`∩[A011537(n+1), A039147(n+1)]`
-/

namespace A039429.P580284514580487838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039429.P580284514580487838

/-! ## A039429.P16007579010314503980

`A007094(A039355(n+1))*A267683(n^3)`
-/

namespace A039429.P16007579010314503980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A039355 (n + 1)).toNat * A267683 (n ^ 3)

end

end A039429.P16007579010314503980

/-! ## A039429.P17270420775396820390

`A007094(A039355(n+1)%A346029(n+1))`
-/

namespace A039429.P17270420775396820390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (Int.tmod (A039355 (n + 1)) (A346029 (n + 1))).toNat

end

end A039429.P17270420775396820390

/-! ## A039429.P9203938027108327380

`A007095(A039388(n+1)%A346029(n+1))`
-/

namespace A039429.P9203938027108327380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A039388 (n + 1)) (A346029 (n + 1))).toNat

end

end A039429.P9203938027108327380

/-!
# A039430: Numbers whose base-10 representation has the same nonzero number of 5's and 8's.

The programs for A039430, the canonical program `A039430.P7399236189774878461` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039430 has offset 1).

The definition of A039430 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1556 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039430.P7399236189774878461

`∩[A011535(n+1), A039148(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A039430

/-- `∩[A011535(n+1), A039148(n+1)]` -/
def P7399236189774878461.Spec : Prop :=
  ∀ n, (P7399236189774878461.a n : ℤ) = A039430 (n + 1)

theorem P7399236189774878461.correct : P7399236189774878461.Spec := by
  intro n
  simp only [A039430, Nat.add_sub_cancel]

end A039430

/-! ## A039430.P5194362565677940085

`∩[A011538(n+1), A039148(n+1)]`
-/

namespace A039430.P5194362565677940085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039430.P5194362565677940085

namespace A039430

/-- `∩[A011538(n+1), A039148(n+1)]` -/
def P5194362565677940085.Spec : Prop :=
  ∀ n, (P5194362565677940085.a n : ℤ) = A039430 (n + 1)

end A039430

/-! ## A039430.P14103058935934190881

`A007095(A039389(n+1))+A000038(A147565(n))`
-/

namespace A039430.P14103058935934190881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A039389 (n + 1)).toNat + A000038 (A147565 n).toNat

end

end A039430.P14103058935934190881

namespace A039430

/-- `A007095(A039389(n+1))+A000038(A147565(n))` -/
def P14103058935934190881.Spec : Prop :=
  ∀ n, P14103058935934190881.a n = A039430 (n + 1)

end A039430

/-! ## A039430.P3074208416713927615

`A007095(A039389(n+1)^A185284(3*n+1)!)`
-/

namespace A039430.P3074208416713927615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A039389 (n + 1) ^ Nat.factorial (A185284 (3 * n + 1)).toNat).toNat

end

end A039430.P3074208416713927615

namespace A039430

/-- `A007095(A039389(n+1)^A185284(3*n+1)!)` -/
def P3074208416713927615.Spec : Prop :=
  ∀ n, P3074208416713927615.a n = A039430 (n + 1)

end A039430

/-! ## A039430.P14161287417871360828

`A043253(A062399(n+1))`
-/

namespace A039430.P14161287417871360828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043253 (A062399 (n + 1)).toNat

end

end A039430.P14161287417871360828

namespace A039430

/-- `A043253(A062399(n+1))` -/
def P14161287417871360828.Spec : Prop :=
  ∀ n, P14161287417871360828.a n = A039430 (n + 1)

end A039430

/-!
# A039431: Numbers whose base-10 representation has the same nonzero number of 5's and 9's.

The programs for A039431, there is no canonical definition to state claims against.
-/

/-! ## A039431.P5247270795646512500

`∩[A011535(n+1), A039149(n+1)]`
-/

namespace A039431.P5247270795646512500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039431.P5247270795646512500

/-! ## A039431.P8345974247637290380

`∩[A011539(n+1), A039149(n+1)]`
-/

namespace A039431.P8345974247637290380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039431.P8345974247637290380

/-! ## A039431.P3706273875577284222

`∩[A011539(n+1), A043509(n+1)]%A210392(n+4)`
-/

namespace A039431.P3706273875577284222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043509 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A210392 (n + 4))

end

end A039431.P3706273875577284222

/-! ## A039431.P15317773394076672180

`A043254(A062399(n)+1)-A023936(n+2)`
-/

namespace A039431.P15317773394076672180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043254 (A062399 n + 1).toNat - A023936 (n + 2)

end

end A039431.P15317773394076672180

/-! ## A039431.P5015061046275496421

`A043254(n+1)^A083117(A224808(n))-A023936(n+2)`
-/

namespace A039431.P5015061046275496421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043254 (n + 1) : ℚ) ^ (A083117 (A224808 n).toNat : ℤ) - (A023936 (n + 2) : ℚ)

end

end A039431.P5015061046275496421

/-!
# A039432: Numbers whose base-10 representation has the same nonzero number of 6's and 7's.

The programs for A039432, the canonical program `A039432.P9652476414258714487` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039432 has offset 1).

The definition of A039432 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1556 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039432.P9652476414258714487

`∩[A011536(n+1), A039150(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A039432

/-- `∩[A011536(n+1), A039150(n+1)]` -/
def P9652476414258714487.Spec : Prop :=
  ∀ n, (P9652476414258714487.a n : ℤ) = A039432 (n + 1)

theorem P9652476414258714487.correct : P9652476414258714487.Spec := by
  intro n
  simp only [A039432, Nat.add_sub_cancel]

end A039432

/-! ## A039432.P5412204643194983974

`∩[A011537(n+1), A039150(n+1)]`
-/

namespace A039432.P5412204643194983974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039432.P5412204643194983974

namespace A039432

/-- `∩[A011537(n+1), A039150(n+1)]` -/
def P5412204643194983974.Spec : Prop :=
  ∀ n, (P5412204643194983974.a n : ℤ) = A039432 (n + 1)

end A039432

/-! ## A039432.P13444942476258748324

`A007095(A039390(n+1))%A039356(A001248(n+1))`
-/

namespace A039432.P13444942476258748324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007095 (A039390 (n + 1)).toNat) (A039356 (A001248 (n + 1)).toNat)

end

end A039432.P13444942476258748324

namespace A039432

/-- `A007095(A039390(n+1))%A039356(A001248(n+1))` -/
def P13444942476258748324.Spec : Prop :=
  ∀ n, P13444942476258748324.a n = A039432 (n + 1)

end A039432

/-! ## A039432.P15106981328873119864

`A007095(A039390(n+1)^A030599(n+1))`
-/

namespace A039432.P15106981328873119864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A039390 (n + 1) : ℚ) ^ (A030599 (n + 1) : ℤ))).toNat

end

end A039432.P15106981328873119864

namespace A039432

/-- `A007095(A039390(n+1)^A030599(n+1))` -/
def P15106981328873119864.Spec : Prop :=
  ∀ n, P15106981328873119864.a n = A039432 (n + 1)

end A039432

/-! ## A039432.P18292224380146360056

`A007094(A039356(n+1)%A244545(n+1))`
-/

namespace A039432.P18292224380146360056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (Int.tmod (A039356 (n + 1)) (A244545 (n + 1))).toNat

end

end A039432.P18292224380146360056

namespace A039432

/-- `A007094(A039356(n+1)%A244545(n+1))` -/
def P18292224380146360056.Spec : Prop :=
  ∀ n, P18292224380146360056.a n = A039432 (n + 1)

end A039432

/-!
# A039433: Numbers whose base-10 representation has the same nonzero number of 6's and 8's.

The programs for A039433, the canonical program `A039433.P8533780217810886953` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039433 has offset 1).

The definition of A039433 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1556 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039433.P8533780217810886953

`∩[A011536(n+1), A039151(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A039433

/-- `∩[A011536(n+1), A039151(n+1)]` -/
def P8533780217810886953.Spec : Prop :=
  ∀ n, (P8533780217810886953.a n : ℤ) = A039433 (n + 1)

theorem P8533780217810886953.correct : P8533780217810886953.Spec := by
  intro n
  simp only [A039433, Nat.add_sub_cancel]

end A039433

/-! ## A039433.P5042673788281153584

`∩[A011538(n+1), A039151(n+1)]`
-/

namespace A039433.P5042673788281153584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039433.P5042673788281153584

namespace A039433

/-- `∩[A011538(n+1), A039151(n+1)]` -/
def P5042673788281153584.Spec : Prop :=
  ∀ n, (P5042673788281153584.a n : ℤ) = A039433 (n + 1)

end A039433

/-! ## A039433.P4532914589774288842

`A007095(A039391(n+1)%A087833(n))`
-/

namespace A039433.P4532914589774288842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A039391 (n + 1)) (A087833 n)).toNat

end

end A039433.P4532914589774288842

namespace A039433

/-- `A007095(A039391(n+1)%A087833(n))` -/
def P4532914589774288842.Spec : Prop :=
  ∀ n, P4532914589774288842.a n = A039433 (n + 1)

end A039433

/-! ## A039433.P6203837059421666056

`A007095(A039391(n+1))%A000040(A239729(n+9)²)`
-/

namespace A039433.P6203837059421666056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007095 (A039391 (n + 1)).toNat) (A000040 (A239729 (n + 9) ^ 2).toNat)

end

end A039433.P6203837059421666056

namespace A039433

/-- `A007095(A039391(n+1))%A000040(A239729(n+9)²)` -/
def P6203837059421666056.Spec : Prop :=
  ∀ n, P6203837059421666056.a n = A039433 (n + 1)

end A039433

/-! ## A039433.P10364565239104651907

`A043256(n+1)%A015883(A004148(n))`
-/

namespace A039433.P10364565239104651907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043256 (n + 1)) (A015883 (A004148 n).toNat)

end

end A039433.P10364565239104651907

namespace A039433

/-- `A043256(n+1)%A015883(A004148(n))` -/
def P10364565239104651907.Spec : Prop :=
  ∀ n, P10364565239104651907.a n = A039433 (n + 1)

end A039433

/-!
# A039434: Numbers whose base-10 representation has the same nonzero number of 6's and 9's.

The programs for A039434, the canonical program `A039434.P5326896242687316667` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039434 has offset 1).

The definition of A039434 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1555 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039434.P5326896242687316667

`∩[A011536(n+1), A039152(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A039434

/-- `∩[A011536(n+1), A039152(n+1)]` -/
def P5326896242687316667.Spec : Prop :=
  ∀ n, (P5326896242687316667.a n : ℤ) = A039434 (n + 1)

theorem P5326896242687316667.correct : P5326896242687316667.Spec := by
  intro n
  simp only [A039434, Nat.add_sub_cancel]

end A039434

/-! ## A039434.P3292764830316213272

`∩[A011539(n+1), A039152(n+1)]`
-/

namespace A039434.P3292764830316213272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039434.P3292764830316213272

namespace A039434

/-- `∩[A011539(n+1), A039152(n+1)]` -/
def P3292764830316213272.Spec : Prop :=
  ∀ n, (P3292764830316213272.a n : ℤ) = A039434 (n + 1)

end A039434

/-! ## A039434.P17331083850613463984

`∩[A011539(n+1), A043513(n+1)]%A210392(n+4)`
-/

namespace A039434.P17331083850613463984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043513 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A210392 (n + 4))

end

end A039434.P17331083850613463984

namespace A039434

/-- `∩[A011539(n+1), A043513(n+1)]%A210392(n+4)` -/
def P17331083850613463984.Spec : Prop :=
  ∀ n, P17331083850613463984.a n = A039434 (n + 1)

end A039434

/-! ## A039434.P16928243475396161893

`A043257(∑[A308919(n)!])`
-/

namespace A039434.P16928243475396161893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A308919 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043257 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A039434.P16928243475396161893

namespace A039434

/-- `A043257(∑[A308919(n)!])` -/
def P16928243475396161893.Spec : Prop :=
  ∀ n, P16928243475396161893.a n = A039434 (n + 1)

end A039434

/-! ## A039434.P8974137302409578239

`A044037(∑[A308919(n)!])`
-/

namespace A039434.P8974137302409578239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A308919 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044037 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A039434.P8974137302409578239

namespace A039434

/-- `A044037(∑[A308919(n)!])` -/
def P8974137302409578239.Spec : Prop :=
  ∀ n, P8974137302409578239.a n = A039434 (n + 1)

end A039434

/-!
# A039435: Numbers whose base-10 representation has the same nonzero number of 7's and 8's.

The programs for A039435, there is no canonical definition to state claims against.
-/

/-! ## A039435.P649424582120981460

`∩[A011537(n+1), A039153(n+1)]`
-/

namespace A039435.P649424582120981460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039435.P649424582120981460

/-! ## A039435.P15216170241665865771

`A007095(A039392(n+1))%A334583(n+3)`
-/

namespace A039435.P15216170241665865771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007095 (A039392 (n + 1)).toNat) (A334583 (n + 3))

end

end A039435.P15216170241665865771

/-! ## A039435.P6966909282964861733

`A080224(A016116(n))+A007095(A039392(n+1))`
-/

namespace A039435.P6966909282964861733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080224 (A016116 n).toNat + A007095 (A039392 (n + 1)).toNat

end

end A039435.P6966909282964861733

/-! ## A039435.P10272239402673557320

`A206499(A001584(n))+A007095(A039392(n+1))`
-/

namespace A039435.P10272239402673557320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206499 (A001584 n).toNat + A007095 (A039392 (n + 1)).toNat

end

end A039435.P10272239402673557320

/-! ## A039435.P15332499139461875138

`A001222(A086816(n+1))*A007095(A039392(n+1))`
-/

namespace A039435.P15332499139461875138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A086816 (n + 1)).toNat * A007095 (A039392 (n + 1)).toNat

end

end A039435.P15332499139461875138

/-!
# A039436: Numbers whose base-10 representation has the same nonzero number of 7's and 9's.

The programs for A039436, there is no canonical definition to state claims against.
-/

/-! ## A039436.P14659579252573139106

`A043259(A077168(n))`
-/

namespace A039436.P14659579252573139106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043259 (A077168 n).toNat

end

end A039436.P14659579252573139106

/-! ## A039436.P18232766183736470027

`A044039(record[A077168(n)])`
-/

namespace A039436.P18232766183736470027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044039 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039436.P18232766183736470027

/-! ## A039436.P3830678157470066067

`A341729(A043259(n+1))`
-/

namespace A039436.P3830678157470066067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341729 (A043259 (n + 1)).toNat

end

end A039436.P3830678157470066067

/-! ## A039436.P13192015165769494564

`A341729(A044039(n+1))`
-/

namespace A039436.P13192015165769494564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341729 (A044039 (n + 1)).toNat

end

end A039436.P13192015165769494564

/-! ## A039436.P12416944453198903692

`record[A044039(A318153(n+1))]`
-/

namespace A039436.P12416944453198903692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044039 (A318153 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039436.P12416944453198903692

/-!
# A039437: Numbers whose base-10 representation has the same nonzero number of 8's and 9's.

The programs for A039437, there is no canonical definition to state claims against.
-/

/-! ## A039437.P6375089312133528811

`∩[A011538(n+1), A039155(n+1)]`
-/

namespace A039437.P6375089312133528811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039437.P6375089312133528811

/-! ## A039437.P1040155014138846060

`∩[A011539(n+1), A043521(n+1)]%A334583(n+1)`
-/

namespace A039437.P1040155014138846060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043521 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A334583 (n + 1))

end

end A039437.P1040155014138846060

/-! ## A039437.P11183419512738758201

`record[A043260(A001222(n+2))]`
-/

namespace A039437.P11183419512738758201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043260 (A001222 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039437.P11183419512738758201

/-! ## A039437.P2351638615320280441

`record[A044040(A001222(n+3))]`
-/

namespace A039437.P2351638615320280441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044040 (A001222 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039437.P2351638615320280441

/-! ## A039437.P12975564428665344401

`A044040(n+1)+C(n, A147941(n+1))`
-/

namespace A039437.P12975564428665344401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044040 (n + 1) + (Nat.choose n (A147941 (n + 1)).toNat : ℤ)

end

end A039437.P12975564428665344401

/-!
# A039438: Numbers whose base-11 representation has the same nonzero number of 0's and 1's.

The programs for A039438, there is no canonical definition to state claims against.
-/

/-! ## A039438.P11978339735808067079

`A043646(n+1)%A007088(A153713(n+1))`
-/

namespace A039438.P11978339735808067079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043646 (n + 1)) (A007088 (A153713 (n + 1)).toNat)

end

end A039438.P11978339735808067079

/-!
# A039439: Numbers whose base-11 representation has the same nonzero number of 0's and 2's.

The programs for A039439, there is no canonical definition to state claims against.
-/

/-! ## A039439.P8350181557176176626

`A007095(A039394(n+1)^A065941(n))`
-/

namespace A039439.P8350181557176176626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A039394 (n + 1) : ℚ) ^ (A065941 n : ℤ))).toNat

end

end A039439.P8350181557176176626

/-! ## A039439.P401358527829680057

`A007095(C(A039394(n+1), A065941(n)))`
-/

namespace A039439.P401358527829680057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Nat.choose (A039394 (n + 1)).toNat (A065941 n).toNat)

end

end A039439.P401358527829680057

/-! ## A039439.P8202162288853736802

`A007095(A039394(n+1)^Δ[A007095(n)])`
-/

namespace A039439.P8202162288853736802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A039394 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat

end

end A039439.P8202162288853736802

/-! ## A039439.P8387991559794077576

`A007095(A039394(n+1)%A209180(n+1))`
-/

namespace A039439.P8387991559794077576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A039394 (n + 1)) (A209180 (n + 1))).toNat

end

end A039439.P8387991559794077576

/-!
# A039440: Numbers whose base-11 representation has the same nonzero number of 0's and 3's.

The programs for A039440, there is no canonical definition to state claims against.
-/

/-! ## A039440.P598067854157346468

`A007095(A039395(n+1)^A127193(n+1))`
-/

namespace A039440.P598067854157346468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A039395 (n + 1) : ℚ) ^ (A127193 (n + 1) : ℤ))).toNat

end

end A039440.P598067854157346468

/-! ## A039440.P425249210013163587

`A007095(C(A039395(n+1), A127193(n+1)))`
-/

namespace A039440.P425249210013163587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Nat.choose (A039395 (n + 1)).toNat (A127193 (n + 1)).toNat)

end

end A039440.P425249210013163587

/-! ## A039440.P15685340586263526403

`A007095(A127193(n+1)²*A039395(n+1))`
-/

namespace A039440.P15685340586263526403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A127193 (n + 1) ^ 2 * A039395 (n + 1)).toNat

end

end A039440.P15685340586263526403

/-! ## A039440.P10148765949307427999

`A007095(A039395(n+1)*A127193(n+1)*A127193(n+1))`
-/

namespace A039440.P10148765949307427999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A039395 (n + 1) * A127193 (n + 1) * A127193 (n + 1)).toNat

end

end A039440.P10148765949307427999

/-!
# A039441: Numbers whose base-11 representation has the same nonzero number of 0's and 4's.

The programs for A039441, there is no canonical definition to state claims against.
-/

/-! ## A039441.P5252708611892454693

`A007095(A043219(n+1)^A351344(n))`
-/

namespace A039441.P5252708611892454693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A043219 (n + 1) : ℚ) ^ (A351344 n : ℤ))).toNat

end

end A039441.P5252708611892454693

/-! ## A039441.P5180441804236912248

`A007095(C(A043219(n+1), A351344(n)))`
-/

namespace A039441.P5180441804236912248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Nat.choose (A043219 (n + 1)).toNat (A351344 n).toNat)

end

end A039441.P5180441804236912248

/-!
# A039442: Numbers whose base-11 representation has the same nonzero number of 0's and 5's.

The programs for A039442, there is no canonical definition to state claims against.
-/

/-! ## A039442.P13980343539757744170

`A158130(A032555(n+1))-A039482(n+1)`
-/

namespace A039442.P13980343539757744170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158130 (A032555 (n + 1)).toNat - A039482 (n + 1)

end

end A039442.P13980343539757744170

/-! ## A039442.P16408899968912693335

`A158130(n+1)-A039482(A276142(n+1))`
-/

namespace A039442.P16408899968912693335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158130 (n + 1) - A039482 (A276142 (n + 1)).toNat

end

end A039442.P16408899968912693335

/-! ## A039442.P18331095707899672053

`A158130(A032555(n+1))-(A266327(n)+A039481(n+1))`
-/

namespace A039442.P18331095707899672053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158130 (A032555 (n + 1)).toNat - (A266327 n + A039481 (n + 1))

end

end A039442.P18331095707899672053

/-! ## A039442.P3607662538371212391

`A158130(n+1)-(A039486(n+1)-A266327(A032555(n+1)))`
-/

namespace A039442.P3607662538371212391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158130 (n + 1) - (A039486 (n + 1) - A266327 (A032555 (n + 1)).toNat)

end

end A039442.P3607662538371212391

/-! ## A039442.P13607751198830985678

`A158130(n+1)-(A039486(n+1)-A266327(A276142(n+1)))`
-/

namespace A039442.P13607751198830985678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158130 (n + 1) - (A039486 (n + 1) - A266327 (A276142 (n + 1)).toNat)

end

end A039442.P13607751198830985678

/-!
# A039443: Numbers whose base-11 representation has the same nonzero number of 0's and 6's.

The programs for A039443, there is no canonical definition to state claims against.
-/

/-! ## A039443.P18323908851256985756

`A096092(n+1)+A008619(A082945(n+1))`
-/

namespace A039443.P18323908851256985756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096092 (n + 1) + A008619 (A082945 (n + 1)).toNat

end

end A039443.P18323908851256985756

/-! ## A039443.P17615802078968977314

`A266327(A032555(n+1))+A039442(n+1)`
-/

namespace A039443.P17615802078968977314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266327 (A032555 (n + 1)).toNat + A039442 (n + 1)

end

end A039443.P17615802078968977314

/-! ## A039443.P3694781812192604908

`A266327(A276142(n+1))+A039442(n+1)`
-/

namespace A039443.P3694781812192604908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266327 (A276142 (n + 1)).toNat + A039442 (n + 1)

end

end A039443.P3694781812192604908

/-! ## A039443.P11352089299598644564

`A004526(A000037(A031700(n+1))/(n+1))`
-/

namespace A039443.P11352089299598644564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway ((A000037 (A031700 (n + 1)).toNat : ℚ) / (n + 1 : ℚ))).toNat

end

end A039443.P11352089299598644564

/-! ## A039443.P4687570001035007253

`A139249(2*n+3)+A007814(A006012(n))`
-/

namespace A039443.P4687570001035007253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139249 (2 * n + 3) + A007814 (A006012 n).toNat

end

end A039443.P4687570001035007253

/-!
# A039445: Numbers whose base-11 representation has the same nonzero number of 0's and 8's.

The programs for A039445, there is no canonical definition to state claims against.
-/

/-! ## A039445.P3358485156993939758

`A331735(A039533(n+1))+A039489(n+1)`
-/

namespace A039445.P3358485156993939758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331735 (A039533 (n + 1)).toNat + A039489 (n + 1)

end

end A039445.P3358485156993939758

/-!
# A039446: Numbers whose base-11 representation has the same nonzero number of 0's and 9's.

The programs for A039446, there is no canonical definition to state claims against.
-/

/-! ## A039446.P7397509196138479787

`A171397(∑[A015161(n)]*A039401(n+1))`
-/

namespace A039446.P7397509196138479787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 ((∑ j ∈ Finset.range (n + 1), f1 j) * A039401 (n + 1)).toNat

end

end A039446.P7397509196138479787

/-! ## A039446.P17195787983390174897

`A171397(∑[A015161(n)]*A043224(n+1))`
-/

namespace A039446.P17195787983390174897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 ((∑ j ∈ Finset.range (n + 1), f1 j) * A043224 (n + 1)).toNat

end

end A039446.P17195787983390174897

/-! ## A039446.P5982420997202598310

`A171397(A044004(n+1))^A007318(A015161(n))`
-/

namespace A039446.P5982420997202598310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171397 (A044004 (n + 1)).toNat : ℚ) ^ (A007318 (A015161 n).toNat : ℤ)

end

end A039446.P5982420997202598310

/-! ## A039446.P12315389929561709439

`A007318(A015161(n)²)*A171397(A044004(n+1))`
-/

namespace A039446.P12315389929561709439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A015161 n ^ 2).toNat * A171397 (A044004 (n + 1)).toNat

end

end A039446.P12315389929561709439

/-!
# A039447: Numbers whose base-11 representation has the same nonzero number of 0's and 10's.

The programs for A039447, there is no canonical definition to state claims against.
-/

/-! ## A039447.P2921134239723353961

`A017377(n)+record[A308106(n+1)]`
-/

namespace A039447.P2921134239723353961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039447.P2921134239723353961

/-!
# A039448: Numbers whose base-11 representation has the same nonzero number of 1's and 2's.

The programs for A039448, there is no canonical definition to state claims against.
-/

/-! ## A039448.P10264402424260845155

`A007095(A039402(n+1)^A094996(n))`
-/

namespace A039448.P10264402424260845155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A039402 (n + 1) : ℚ) ^ (A094996 n : ℤ))).toNat

end

end A039448.P10264402424260845155

/-! ## A039448.P5856800449448282793

`A007095(A039402(n+1)^A219347(n))`
-/

namespace A039448.P5856800449448282793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A039402 (n + 1) : ℚ) ^ (A219347 n : ℤ))).toNat

end

end A039448.P5856800449448282793

/-! ## A039448.P18270458175938858884

`A007095(A039402(n+1)^A336698(n+2))`
-/

namespace A039448.P18270458175938858884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A039402 (n + 1) : ℚ) ^ (A336698 (n + 2) : ℤ))).toNat

end

end A039448.P18270458175938858884

/-!
# A039449: Numbers whose base-11 representation has the same nonzero number of 1's and 3's.

The programs for A039449, there is no canonical definition to state claims against.
-/

/-! ## A039449.P4588399068172877494

`A007095(A039403(n+1)^A322127(n+1))`
-/

namespace A039449.P4588399068172877494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A039403 (n + 1) : ℚ) ^ (A322127 (n + 1) : ℤ))).toNat

end

end A039449.P4588399068172877494

/-! ## A039449.P14000282065275402899

`A007095(A039403(n+1)^A211226(2*n))`
-/

namespace A039449.P14000282065275402899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A039403 (n + 1) : ℚ) ^ (A211226 (2 * n) : ℤ))).toNat

end

end A039449.P14000282065275402899

/-!
# A039450: Numbers whose base-11 representation has the same nonzero number of 1's and 4's.

The programs for A039450, there is no canonical definition to state claims against.
-/

/-! ## A039450.P3933365835761232104

`A007095(A039404(n+1)%A128344(2*n+5))`
-/

namespace A039450.P3933365835761232104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A039404 (n + 1)) (A128344 (2 * n + 5))).toNat

end

end A039450.P3933365835761232104

/-! ## A039450.P9902527502532298087

`A007095(A007095(A039367(A037403(A037403(n+1)))))`
-/

namespace A039450.P9902527502532298087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A007095 (A039367 (A037403 (A037403 (n + 1)).toNat).toNat).toNat).toNat

end

end A039450.P9902527502532298087

/-!
# A039451: Numbers whose base-11 representation has the same nonzero number of 1's and 5's.

The programs for A039451, there is no canonical definition to state claims against.
-/

/-! ## A039451.P5240892813827934397

`A039452(n+1)-A014963(A210392(n+1))`
-/

namespace A039451.P5240892813827934397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039452 (n + 1) - A014963 (A210392 (n + 1)).toNat

end

end A039451.P5240892813827934397

/-! ## A039451.P15154989395959800403

`A039453(n+1)-2*A014963(A210392(n+1))`
-/

namespace A039451.P15154989395959800403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039453 (n + 1) - 2 * A014963 (A210392 (n + 1)).toNat

end

end A039451.P15154989395959800403

/-!
# A039452: Numbers whose base-11 representation has the same nonzero number of 1's and 6's.

The programs for A039452, there is no canonical definition to state claims against.
-/

/-! ## A039452.P6819799088172375816

`A039451(n+1)+A014963(A210392(n+1))`
-/

namespace A039452.P6819799088172375816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039451 (n + 1) + A014963 (A210392 (n + 1)).toNat

end

end A039452.P6819799088172375816

/-! ## A039452.P457446123827404648

`A039453(n+1)-A014963(A210392(n+1))`
-/

namespace A039452.P457446123827404648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039453 (n + 1) - A014963 (A210392 (n + 1)).toNat

end

end A039452.P457446123827404648

/-!
# A039453: Numbers whose base-11 representation has the same nonzero number of 1's and 7's.

The programs for A039453, there is no canonical definition to state claims against.
-/

/-! ## A039453.P14530515596463401081

`A039452(n+1)+A014963(A210392(n+1))`
-/

namespace A039453.P14530515596463401081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039452 (n + 1) + A014963 (A210392 (n + 1)).toNat

end

end A039453.P14530515596463401081

/-! ## A039453.P5539796828271160182

`A039454(n+1)-A014963(A210392(n+1))`
-/

namespace A039453.P5539796828271160182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039454 (n + 1) - A014963 (A210392 (n + 1)).toNat

end

end A039453.P5539796828271160182

/-!
# A039454: Numbers whose base-11 representation has the same nonzero number of 1's and 8's.

The programs for A039454, there is no canonical definition to state claims against.
-/

/-! ## A039454.P16772874477027362325

`A039453(n+1)+A014963(A210392(n+1))`
-/

namespace A039454.P16772874477027362325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039453 (n + 1) + A014963 (A210392 (n + 1)).toNat

end

end A039454.P16772874477027362325

/-! ## A039454.P8294393658413438104

`A039455(n+1)-A014963(A210392(n+1))`
-/

namespace A039454.P8294393658413438104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039455 (n + 1) - A014963 (A210392 (n + 1)).toNat

end

end A039454.P8294393658413438104

/-!
# A039455: Numbers whose base-11 representation has the same nonzero number of 1's and 9's.

The programs for A039455, there is no canonical definition to state claims against.
-/

/-! ## A039455.P4048422705743570115

`A039454(n+1)+A014963(A210392(n+1))`
-/

namespace A039455.P4048422705743570115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039454 (n + 1) + A014963 (A210392 (n + 1)).toNat

end

end A039455.P4048422705743570115

/-! ## A039455.P5011779547619380795

`A039456(n+1)-A014963(A210392(n+1))`
-/

namespace A039455.P5011779547619380795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039456 (n + 1) - A014963 (A210392 (n + 1)).toNat

end

end A039455.P5011779547619380795

/-!
# A039456: Numbers whose base-11 representation has the same nonzero number of 1's and 10's.

The programs for A039456, there is no canonical definition to state claims against.
-/

/-! ## A039456.P1591372817393237596

`∩[A039173(n+1), A095778(n+1)]`
-/

namespace A039456.P1591372817393237596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039456.P1591372817393237596

/-! ## A039456.P3472408148870930480

`A039455(n+1)+A014963(A210392(n+1))`
-/

namespace A039456.P3472408148870930480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039455 (n + 1) + A014963 (A210392 (n + 1)).toNat

end

end A039456.P3472408148870930480

/-!
# A039457: Numbers whose base-11 representation has the same nonzero number of 2's and 3's.

The programs for A039457, there is no canonical definition to state claims against.
-/

/-! ## A039457.P3351519344300216781

`A007094(A039372(n+1)^A355614(n))`
-/

namespace A039457.P3351519344300216781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (SequenceMachineLib.roundAway ((A039372 (n + 1) : ℚ) ^ (A355614 n : ℤ))).toNat

end

end A039457.P3351519344300216781

/-! ## A039457.P10100580290306675908

`A007095(A039410(n+1)^A355614(n))`
-/

namespace A039457.P10100580290306675908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A039410 (n + 1) : ℚ) ^ (A355614 n : ℤ))).toNat

end

end A039457.P10100580290306675908

/-! ## A039457.P3132486451720699210

`A007094(A039372(n+1)^Δ[A007095(n)])`
-/

namespace A039457.P3132486451720699210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (SequenceMachineLib.roundAway ((A039372 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat

end

end A039457.P3132486451720699210

/-! ## A039457.P720973301530822865

`A007094(A039372(n+1)^A043536(n+1))`
-/

namespace A039457.P720973301530822865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (SequenceMachineLib.roundAway ((A039372 (n + 1) : ℚ) ^ (A043536 (n + 1) : ℤ))).toNat

end

end A039457.P720973301530822865

/-!
# A039458: Numbers whose base-11 representation has the same nonzero number of 2's and 4's.

The programs for A039458, there is no canonical definition to state claims against.
-/

/-! ## A039458.P3401087744353715915

`A007094(A039373(n+1)^A350447(n))`
-/

namespace A039458.P3401087744353715915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (SequenceMachineLib.roundAway ((A039373 (n + 1) : ℚ) ^ (A350447 n : ℤ))).toNat

end

end A039458.P3401087744353715915

/-! ## A039458.P2666154501269846674

`A007095(A039411(n+1)^A350447(n))`
-/

namespace A039458.P2666154501269846674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A039411 (n + 1) : ℚ) ^ (A350447 n : ℤ))).toNat

end

end A039458.P2666154501269846674

/-!
# A039459: Numbers whose base-11 representation has the same nonzero number of 2's and 5's.

The programs for A039459, there is no canonical definition to state claims against.
-/

/-! ## A039459.P11892356278125457992

`A007095(A039412(n+1)^A138999(n+1))`
-/

namespace A039459.P11892356278125457992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A039412 (n + 1) : ℚ) ^ (A138999 (n + 1) : ℤ))).toNat

end

end A039459.P11892356278125457992

/-! ## A039459.P13448806353064493394

`A007095(A039412(n+1)^A352269(n+1))`
-/

namespace A039459.P13448806353064493394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A039412 (n + 1) : ℚ) ^ (A352269 (n + 1) : ℤ))).toNat

end

end A039459.P13448806353064493394

/-!
# A039461: Numbers whose base-11 representation has the same nonzero number of 2's and 7's.

The programs for A039461, there is no canonical definition to state claims against.
-/

/-! ## A039461.P13451629293200103847

`A171397(C(A352266(2*n+1), A008480(n+1)))`
-/

namespace A039461.P13451629293200103847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (Nat.choose (A352266 (2 * n + 1)).toNat (A008480 (n + 1)).toNat)

end

end A039461.P13451629293200103847

/-!
# A039462: Numbers whose base-11 representation has the same nonzero number of 2's and 8's.

The programs for A039462, there is no canonical definition to state claims against.
-/

/-! ## A039462.P1567270092648737044

`A325414(A307411(n))+A324297(n+1)-6`
-/

namespace A039462.P1567270092648737044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325414 (A307411 n).toNat + (A324297 (n + 1) - 6)

end

end A039462.P1567270092648737044

/-!
# A039463: Numbers whose base-11 representation has the same nonzero number of 2's and 9's.

The programs for A039463, there is no canonical definition to state claims against.
-/

/-! ## A039463.P16457041474486996658

`A007093(A039345(n+1)^A222616(n+1))`
-/

namespace A039463.P16457041474486996658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (SequenceMachineLib.roundAway ((A039345 (n + 1) : ℚ) ^ (A222616 (n + 1) : ℤ))).toNat

end

end A039463.P16457041474486996658

/-! ## A039463.P10727651062252707113

`A007093(A222616(n+1)²²*A039345(n+1))`
-/

namespace A039463.P10727651062252707113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 ((A222616 (n + 1) ^ 2) ^ 2 * A039345 (n + 1)).toNat

end

end A039463.P10727651062252707113

/-!
# A039464: Numbers whose base-11 representation has the same nonzero number of 2's and 10's.

The programs for A039464, there is no canonical definition to state claims against.
-/

/-! ## A039464.P13638164287836917461

`∩[A039181(n+1), A095778(n+1)]`
-/

namespace A039464.P13638164287836917461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039464.P13638164287836917461

/-! ## A039464.P4525532069254652493

`A007093(A039346(n+1)^Δ[A007093(n)])`
-/

namespace A039464.P4525532069254652493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (SequenceMachineLib.roundAway ((A039346 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat

end

end A039464.P4525532069254652493

/-!
# A039465: Numbers whose base-11 representation has the same nonzero number of 3's and 4's.

The programs for A039465, there is no canonical definition to state claims against.
-/

/-! ## A039465.P14512155712265613036

`A039478(n+1)-A040132(A341851(n))`
-/

namespace A039465.P14512155712265613036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039478 (n + 1) - A040132 (A341851 n).toNat

end

end A039465.P14512155712265613036

/-! ## A039465.P14627576274544797926

`A039478(n+1)-A040132(A001348(n+1))`
-/

namespace A039465.P14627576274544797926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039478 (n + 1) - A040132 (A001348 (n + 1)).toNat

end

end A039465.P14627576274544797926

/-!
# A039466: Numbers whose base-11 representation has the same nonzero number of 3's and 5's.

The programs for A039466, there is no canonical definition to state claims against.
-/

/-! ## A039466.P11576483322192711772

`A039479(n+1)-A040132(A025757(n))`
-/

namespace A039466.P11576483322192711772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039479 (n + 1) - A040132 (A025757 n).toNat

end

end A039466.P11576483322192711772

/-! ## A039466.P7387238596907121572

`A039479(n+1)-A040132(A064054(n))`
-/

namespace A039466.P7387238596907121572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039479 (n + 1) - A040132 (A064054 n).toNat

end

end A039466.P7387238596907121572

/-!
# A039467: Numbers whose base-11 representation has the same nonzero number of 3's and 6's.

The programs for A039467, there is no canonical definition to state claims against.
-/

/-! ## A039467.P14023043567715300658

`A039480(n+1)-A040132(A000312(n))`
-/

namespace A039467.P14023043567715300658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039480 (n + 1) - A040132 (A000312 n).toNat

end

end A039467.P14023043567715300658

/-! ## A039467.P13317851649197983663

`A039480(n+1)-A040132(A025757(n))`
-/

namespace A039467.P13317851649197983663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039480 (n + 1) - A040132 (A025757 n).toNat

end

end A039467.P13317851649197983663

/-!
# A039468: Numbers whose base-11 representation has the same nonzero number of 3's and 7's.

The programs for A039468, there is no canonical definition to state claims against.
-/

/-! ## A039468.P7490541549953302570

`A039475(n+1)-A266327(A074991(n+3))-A266327(n)`
-/

namespace A039468.P7490541549953302570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039475 (n + 1) - A266327 (A074991 (n + 3)).toNat - A266327 n

end

end A039468.P7490541549953302570

/-! ## A039468.P13265316873852551358

`A039477(n+1)-A266327(A129795(n+1))-3*A266327(n)`
-/

namespace A039468.P13265316873852551358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039477 (n + 1) - A266327 (A129795 (n + 1)).toNat - 3 * A266327 n

end

end A039468.P13265316873852551358

/-!
# A039469: Numbers whose base-11 representation has the same nonzero number of 3's and 8's.

The programs for A039469, there is no canonical definition to state claims against.
-/

/-! ## A039469.P16479510961393300433

`A039475(n+1)-A266327(A074991(n+3))`
-/

namespace A039469.P16479510961393300433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039475 (n + 1) - A266327 (A074991 (n + 3)).toNat

end

end A039469.P16479510961393300433

/-! ## A039469.P10834443152216581289

`A039477(n+1)-A266327(A131045(n)²)-2*A266327(n)`
-/

namespace A039469.P10834443152216581289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039477 (n + 1) - A266327 (A131045 n ^ 2).toNat - 2 * A266327 n

end

end A039469.P10834443152216581289

/-!
# A039470: Numbers whose base-11 representation has the same nonzero number of 3's and 9's.

The programs for A039470, there is no canonical definition to state claims against.
-/

/-! ## A039470.P3974455419030621487

`A007095(A039421(n+1)^A169623(n))`
-/

namespace A039470.P3974455419030621487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A039421 (n + 1) : ℚ) ^ (A169623 n : ℤ))).toNat

end

end A039470.P3974455419030621487

/-! ## A039470.P13442457432749252726

`A007095(A039421(n+1)^A220777(n))`
-/

namespace A039470.P13442457432749252726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A039421 (n + 1) : ℚ) ^ (A220777 n : ℤ))).toNat

end

end A039470.P13442457432749252726

/-! ## A039470.P5228997566750210592

`A007095(C(A039421(n+1), A169623(n)))`
-/

namespace A039470.P5228997566750210592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Nat.choose (A039421 (n + 1)).toNat (A169623 n).toNat)

end

end A039470.P5228997566750210592

/-!
# A039471: Numbers whose base-11 representation has the same nonzero number of 3's and 10's.

The programs for A039471, there is no canonical definition to state claims against.
-/

/-! ## A039471.P4003730146552237570

`∩[A039188(n+1), A095778(n+1)]`
-/

namespace A039471.P4003730146552237570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039471.P4003730146552237570

/-! ## A039471.P5586667748264072458

`A039477(n+1)-A266327(A131045(n)²)`
-/

namespace A039471.P5586667748264072458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039477 (n + 1) - A266327 (A131045 n ^ 2).toNat

end

end A039471.P5586667748264072458

/-!
# A039472: Numbers whose base-11 representation has the same nonzero number of 4's and 5's.

The programs for A039472, there is no canonical definition to state claims against.
-/

/-! ## A039472.P16408271430954111719

`(A039478(n+1)+A039478(n+1)-A040132(A000111(n)²))/2`
-/

namespace A039472.P16408271430954111719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039478 (n + 1) + (A039478 (n + 1) - A040132 (A000111 n ^ 2).toNat) : ℚ) / 2

end

end A039472.P16408271430954111719

/-! ## A039472.P11337636299492741384

`A266327(A129795(n+1))+A039466(n+1)`
-/

namespace A039472.P11337636299492741384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266327 (A129795 (n + 1)).toNat + A039466 (n + 1)

end

end A039472.P11337636299492741384

/-!
# A039473: Numbers whose base-11 representation has the same nonzero number of 4's and 6's.

The programs for A039473, there is no canonical definition to state claims against.
-/

/-! ## A039473.P10247398179699996505

`A039484(n+1)-A040132(A000142(n))`
-/

namespace A039473.P10247398179699996505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039484 (n + 1) - A040132 (A000142 n).toNat

end

end A039473.P10247398179699996505

/-! ## A039473.P12506327549163535891

`A039484(n+1)-A040132(A000257(n))`
-/

namespace A039473.P12506327549163535891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039484 (n + 1) - A040132 (A000257 n).toNat

end

end A039473.P12506327549163535891

/-! ## A039473.P15432574580992432429

`A039484(n+1)-A040132(A006318(n))`
-/

namespace A039473.P15432574580992432429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039484 (n + 1) - A040132 (A006318 n).toNat

end

end A039473.P15432574580992432429

/-! ## A039473.P10347629020530887445

`A039484(n+1)-A040132(A046161(n))`
-/

namespace A039473.P10347629020530887445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039484 (n + 1) - A040132 (A046161 n).toNat

end

end A039473.P10347629020530887445

/-!
# A039474: Numbers whose base-11 representation has the same nonzero number of 4's and 7's.

The programs for A039474, there is no canonical definition to state claims against.
-/

/-! ## A039474.P12933723733287974621

`A039475(n+1)-A266327(A074991(n))`
-/

namespace A039474.P12933723733287974621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039475 (n + 1) - A266327 (A074991 n).toNat

end

end A039474.P12933723733287974621

/-! ## A039474.P7507549040693287256

`A039476(n+1)-A266327(A074991(n))-A266327(n)`
-/

namespace A039474.P7507549040693287256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039476 (n + 1) - A266327 (A074991 n).toNat - A266327 n

end

end A039474.P7507549040693287256

/-! ## A039474.P8803312805792825004

`A039485(n+1)-A040132(A000142(n))`
-/

namespace A039474.P8803312805792825004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039485 (n + 1) - A040132 (A000142 n).toNat

end

end A039474.P8803312805792825004

/-! ## A039474.P12661692744489065459

`A039485(n+1)-A040132(A006318(n))`
-/

namespace A039474.P12661692744489065459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039485 (n + 1) - A040132 (A006318 n).toNat

end

end A039474.P12661692744489065459

/-!
# A039475: Numbers whose base-11 representation has the same nonzero number of 4's and 8's.

The programs for A039475, there is no canonical definition to state claims against.
-/

/-! ## A039475.P12649987904537040910

`A039476(n+1)-A266327(A074991(n))`
-/

namespace A039475.P12649987904537040910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039476 (n + 1) - A266327 (A074991 n).toNat

end

end A039475.P12649987904537040910

/-! ## A039475.P2578147240630302739

`A039476(n+1)-A266327(A095778(n+1)²)`
-/

namespace A039475.P2578147240630302739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039476 (n + 1) - A266327 (A095778 (n + 1) ^ 2).toNat

end

end A039475.P2578147240630302739

/-! ## A039475.P13549213486863428853

`A039477(n+1)-A266327(A074991(n))-A266327(n)`
-/

namespace A039475.P13549213486863428853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039477 (n + 1) - A266327 (A074991 n).toNat - A266327 n

end

end A039475.P13549213486863428853

/-! ## A039475.P15533838269599675983

`A039480(n+1)-A266327(A156640(n))`
-/

namespace A039475.P15533838269599675983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039480 (n + 1) - A266327 (A156640 n).toNat

end

end A039475.P15533838269599675983

/-!
# A039476: Numbers whose base-11 representation has the same nonzero number of 4's and 9's.

The programs for A039476, there is no canonical definition to state claims against.
-/

/-! ## A039476.P18193653625500886817

`A266327(A074991(n))+A039475(n+1)`
-/

namespace A039476.P18193653625500886817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266327 (A074991 n).toNat + A039475 (n + 1)

end

end A039476.P18193653625500886817

/-! ## A039476.P7994227937449184033

`A039477(n+1)-A266327(A074991(n))`
-/

namespace A039476.P7994227937449184033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039477 (n + 1) - A266327 (A074991 n).toNat

end

end A039476.P7994227937449184033

/-! ## A039476.P6826407585750221126

`A157271(A039477(n+1)+A039475(n+1))`
-/

namespace A039476.P6826407585750221126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A039477 (n + 1) + A039475 (n + 1)).toNat

end

end A039476.P6826407585750221126

/-! ## A039476.P4469913005946690274

`A039477(n+1)-A266327(A095778(n+1)²)`
-/

namespace A039476.P4469913005946690274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039477 (n + 1) - A266327 (A095778 (n + 1) ^ 2).toNat

end

end A039476.P4469913005946690274

/-!
# A039477: Numbers whose base-11 representation has the same nonzero number of 4's and 10's.

The programs for A039477, there is no canonical definition to state claims against.
-/

/-! ## A039477.P17024618338556564491

`∩[A039194(n+1), A095778(n+1)]`
-/

namespace A039477.P17024618338556564491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039477.P17024618338556564491

/-! ## A039477.P4247579267825713011

`A266327(A074991(n))+A039476(n+1)`
-/

namespace A039477.P4247579267825713011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266327 (A074991 n).toNat + A039476 (n + 1)

end

end A039477.P4247579267825713011

/-! ## A039477.P8876368946546776663

`A266327(A095778(n+1)²)+A039476(n+1)`
-/

namespace A039477.P8876368946546776663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266327 (A095778 (n + 1) ^ 2).toNat + A039476 (n + 1)

end

end A039477.P8876368946546776663

/-! ## A039477.P4816425497383577876

`A266327(n)+A266327(A074991(n))+A039475(n+1)`
-/

namespace A039477.P4816425497383577876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266327 n + (A266327 (A074991 n).toNat + A039475 (n + 1))

end

end A039477.P4816425497383577876

/-!
# A039478: Numbers whose base-11 representation has the same nonzero number of 5's and 6's.

The programs for A039478, there is no canonical definition to state claims against.
-/

/-! ## A039478.P5757116114502738243

`A039487(n+1)-A040132(A000111(n))`
-/

namespace A039478.P5757116114502738243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039487 (n + 1) - A040132 (A000111 n).toNat

end

end A039478.P5757116114502738243

/-! ## A039478.P14055442576463330935

`A039487(n+1)-A040132(A018242(n))`
-/

namespace A039478.P14055442576463330935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039487 (n + 1) - A040132 (A018242 n).toNat

end

end A039478.P14055442576463330935

/-! ## A039478.P7869133397598296804

`A039487(n+1)-A040132(A103662(n))`
-/

namespace A039478.P7869133397598296804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039487 (n + 1) - A040132 (A103662 n).toNat

end

end A039478.P7869133397598296804

/-! ## A039478.P17328048041720957014

`A039487(n+1)-A040132(A336419(n))`
-/

namespace A039478.P17328048041720957014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039487 (n + 1) - A040132 (A336419 n).toNat

end

end A039478.P17328048041720957014

/-! ## A039478.P34005136292888664

`A039487(n+1)-A040132(A348891(n))`
-/

namespace A039478.P34005136292888664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039487 (n + 1) - A040132 (A348891 n).toNat

end

end A039478.P34005136292888664

/-!
# A039479: Numbers whose base-11 representation has the same nonzero number of 5's and 7's.

The programs for A039479, there is no canonical definition to state claims against.
-/

/-! ## A039479.P10928613929483719926

`A039480(n+1)-A266327(n²²)`
-/

namespace A039479.P10928613929483719926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039480 (n + 1) - A266327 ((n ^ 2) ^ 2)

end

end A039479.P10928613929483719926

/-! ## A039479.P3650099541050193702

`A039488(n+1)-A040132(A000108(n))`
-/

namespace A039479.P3650099541050193702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039488 (n + 1) - A040132 (A000108 n).toNat

end

end A039479.P3650099541050193702

/-! ## A039479.P2225788130574613267

`A039488(n+1)-A040132(A000111(n))`
-/

namespace A039479.P2225788130574613267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039488 (n + 1) - A040132 (A000111 n).toNat

end

end A039479.P2225788130574613267

/-! ## A039479.P4083176003906500080

`A039488(n+1)-A040132(A003681(n+1))`
-/

namespace A039479.P4083176003906500080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039488 (n + 1) - A040132 (A003681 (n + 1)).toNat

end

end A039479.P4083176003906500080

/-!
# A039480: Numbers whose base-11 representation has the same nonzero number of 5's and 8's.

The programs for A039480, there is no canonical definition to state claims against.
-/

/-! ## A039480.P3298016071091611509

`A039481(n+1)-A266327(n²²)`
-/

namespace A039480.P3298016071091611509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039481 (n + 1) - A266327 ((n ^ 2) ^ 2)

end

end A039480.P3298016071091611509

/-! ## A039480.P6166748330351049381

`A266327(n²²)+A039484(n+1)-12`
-/

namespace A039480.P6166748330351049381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266327 ((n ^ 2) ^ 2) + A039484 (n + 1) - 12

end

end A039480.P6166748330351049381

/-! ## A039480.P17391074194433720417

`A039484(n+1)-A266327(A135385(n+2))`
-/

namespace A039480.P17391074194433720417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039484 (n + 1) - A266327 (A135385 (n + 2)).toNat

end

end A039480.P17391074194433720417

/-! ## A039480.P4076089920753957712

`A171397(A044037(n+1)^A065648(n))-12`
-/

namespace A039480.P4076089920753957712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (SequenceMachineLib.roundAway ((A044037 (n + 1) : ℚ) ^ (A065648 n : ℤ))).toNat - 12

end

end A039480.P4076089920753957712

/-! ## A039480.P3910597988477243113

`A171397(C(A044037(n+1), A065648(n)))-12`
-/

namespace A039480.P3910597988477243113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (Nat.choose (A044037 (n + 1)).toNat (A065648 n).toNat) - 12

end

end A039480.P3910597988477243113

/-!
# A039481: Numbers whose base-11 representation has the same nonzero number of 5's and 9's.

The programs for A039481, there is no canonical definition to state claims against.
-/

/-! ## A039481.P11880726473181907664

`A266327(n²²)+A039480(n+1)`
-/

namespace A039481.P11880726473181907664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266327 ((n ^ 2) ^ 2) + A039480 (n + 1)

end

end A039481.P11880726473181907664

/-! ## A039481.P13679133543302462501

`A266327(n)+A266327(n²²)+A039484(n+1)-12`
-/

namespace A039481.P13679133543302462501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266327 n + (A266327 ((n ^ 2) ^ 2) + A039484 (n + 1) - 12)

end

end A039481.P13679133543302462501

/-! ## A039481.P8397323838902040046

`A266327(n)+A171397(A044037(n+1)^A065648(n))-12`
-/

namespace A039481.P8397323838902040046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266327 n + (A171397 (SequenceMachineLib.roundAway ((A044037 (n + 1) : ℚ) ^ (A065648 n : ℤ))).toNat - 12)

end

end A039481.P8397323838902040046

/-! ## A039481.P17436154759168458337

`A266327(n²²)+A039484(n+1)-A266327(A008611(n))`
-/

namespace A039481.P17436154759168458337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266327 ((n ^ 2) ^ 2) + A039484 (n + 1) - A266327 (A008611 n).toNat

end

end A039481.P17436154759168458337

/-! ## A039481.P16297525806850972071

`A266327(n²²)+A039484(n+1)-A266327(A328571(n))`
-/

namespace A039481.P16297525806850972071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266327 ((n ^ 2) ^ 2) + A039484 (n + 1) - A266327 (A328571 n).toNat

end

end A039481.P16297525806850972071

/-!
# A039482: Numbers whose base-11 representation has the same nonzero number of 5's and 10's.

The programs for A039482, there is no canonical definition to state claims against.
-/

/-! ## A039482.P6085638709068800674

`∩[A039199(n+1), A095778(n+1)]`
-/

namespace A039482.P6085638709068800674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039482.P6085638709068800674

/-! ## A039482.P8192553833331125396

`A266327(n²²)+A039481(n+1)`
-/

namespace A039482.P8192553833331125396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266327 ((n ^ 2) ^ 2) + A039481 (n + 1)

end

end A039482.P8192553833331125396

/-! ## A039482.P15813051500341378922

`A266327(n)+A266327(n²²)+A039480(n+1)`
-/

namespace A039482.P15813051500341378922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266327 n + (A266327 ((n ^ 2) ^ 2) + A039480 (n + 1))

end

end A039482.P15813051500341378922

/-! ## A039482.P5685130485765880425

`A266327(n)+A266327(n)+A266327(n²²)+A039484(n+1)-12`
-/

namespace A039482.P5685130485765880425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266327 n + (A266327 n + (A266327 ((n ^ 2) ^ 2) + A039484 (n + 1) - 12))

end

end A039482.P5685130485765880425

/-! ## A039482.P15255675295243585939

`A158130(A032555(n+1))-A039442(n+1)`
-/

namespace A039482.P15255675295243585939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158130 (A032555 (n + 1)).toNat - A039442 (n + 1)

end

end A039482.P15255675295243585939

/-!
# A039483: Numbers whose base-11 representation has the same nonzero number of 6's and 7's.

The programs for A039483, there is no canonical definition to state claims against.
-/

/-! ## A039483.P5133507854063985735

`A039490(n+1)-A040132(A041011(n))`
-/

namespace A039483.P5133507854063985735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039490 (n + 1) - A040132 (A041011 n).toNat

end

end A039483.P5133507854063985735

/-! ## A039483.P17600268058460852011

`A039484(n+1)-A266327(A160715(n)²)`
-/

namespace A039483.P17600268058460852011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039484 (n + 1) - A266327 (A160715 n ^ 2).toNat

end

end A039483.P17600268058460852011

/-! ## A039483.P9781600016760385300

`A039484(n+1)-A266327(A160715(3*n))`
-/

namespace A039483.P9781600016760385300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039484 (n + 1) - A266327 (A160715 (3 * n)).toNat

end

end A039483.P9781600016760385300

/-! ## A039483.P9337724583341801126

`A039491(n+1)-A040132(A131045(n))-A266327(n)`
-/

namespace A039483.P9337724583341801126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039491 (n + 1) - A040132 (A131045 n).toNat - A266327 n

end

end A039483.P9337724583341801126

/-! ## A039483.P8637888167827736212

`A039487(n+1)-A266327(A131045(n))-A266327(n)`
-/

namespace A039483.P8637888167827736212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039487 (n + 1) - A266327 (A131045 n).toNat - A266327 n

end

end A039483.P8637888167827736212

/-!
# A039484: Numbers whose base-11 representation has the same nonzero number of 6's and 8's.

The programs for A039484, there is no canonical definition to state claims against.
-/

/-! ## A039484.P7532701477524560887

`A039491(n+1)-A040132(A131045(n))`
-/

namespace A039484.P7532701477524560887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039491 (n + 1) - A040132 (A131045 n).toNat

end

end A039484.P7532701477524560887

/-! ## A039484.P15546677102657593041

`A039487(n+1)-A266327(A131045(n))`
-/

namespace A039484.P15546677102657593041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039487 (n + 1) - A266327 (A131045 n).toNat

end

end A039484.P15546677102657593041

/-! ## A039484.P5969257771333374777

`A039491(n+1)-A040132(A127984(n+1))`
-/

namespace A039484.P5969257771333374777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039491 (n + 1) - A040132 (A127984 (n + 1)).toNat

end

end A039484.P5969257771333374777

/-! ## A039484.P15797191264536380516

`A039491(n+1)-A040132(A136433(n+1))`
-/

namespace A039484.P15797191264536380516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039491 (n + 1) - A040132 (A136433 (n + 1)).toNat

end

end A039484.P15797191264536380516

/-! ## A039484.P11868460221957194831

`A039491(n+1)-A040132(A208359(n+1))`
-/

namespace A039484.P11868460221957194831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039491 (n + 1) - A040132 (A208359 (n + 1)).toNat

end

end A039484.P11868460221957194831

/-!
# A039485: Numbers whose base-11 representation has the same nonzero number of 6's and 9's.

The programs for A039485, there is no canonical definition to state claims against.
-/

/-! ## A039485.P16556920422580714347

`A039488(n+1)-A266327(A131045(n))`
-/

namespace A039485.P16556920422580714347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039488 (n + 1) - A266327 (A131045 n).toNat

end

end A039485.P16556920422580714347

/-! ## A039485.P3167456958217652067

`A266327(A160715(n)²)+A039484(n+1)`
-/

namespace A039485.P3167456958217652067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266327 (A160715 n ^ 2).toNat + A039484 (n + 1)

end

end A039485.P3167456958217652067

/-! ## A039485.P10911260540391908915

`A266327(A038102(n+1))+A039484(n+1)`
-/

namespace A039485.P10911260540391908915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266327 (A038102 (n + 1)).toNat + A039484 (n + 1)

end

end A039485.P10911260540391908915

/-! ## A039485.P4031883822837801383

`A266327(A160715(3*n))+A039484(n+1)`
-/

namespace A039485.P4031883822837801383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266327 (A160715 (3 * n)).toNat + A039484 (n + 1)

end

end A039485.P4031883822837801383

/-! ## A039485.P11463173696232192530

`A039486(n+1)-A266327(A187829(n+4))`
-/

namespace A039485.P11463173696232192530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039486 (n + 1) - A266327 (A187829 (n + 4)).toNat

end

end A039485.P11463173696232192530

/-!
# A039486: Numbers whose base-11 representation has the same nonzero number of 6's and 10's.

The programs for A039486, there is no canonical definition to state claims against.
-/

/-! ## A039486.P3904151415833198237

`∩[A039203(n+1), A095778(n+1)]`
-/

namespace A039486.P3904151415833198237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039486.P3904151415833198237

/-! ## A039486.P16696601297538705948

`A039489(n+1)-A266327(A131045(n))`
-/

namespace A039486.P16696601297538705948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039489 (n + 1) - A266327 (A131045 n).toNat

end

end A039486.P16696601297538705948

/-! ## A039486.P3124775280683960538

`A039491(n+1)-2*A266327(A131045(n))`
-/

namespace A039486.P3124775280683960538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039491 (n + 1) - 2 * A266327 (A131045 n).toNat

end

end A039486.P3124775280683960538

/-! ## A039486.P2715385206746515004

`A266327(A160715(3*n))+A039485(n+1)`
-/

namespace A039486.P2715385206746515004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266327 (A160715 (3 * n)).toNat + A039485 (n + 1)

end

end A039486.P2715385206746515004

/-! ## A039486.P4728144414059864930

`A266327(n)+A266327(A160715(n)²)+A039484(n+1)`
-/

namespace A039486.P4728144414059864930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266327 n + (A266327 (A160715 n ^ 2).toNat + A039484 (n + 1))

end

end A039486.P4728144414059864930

/-!
# A039487: Numbers whose base-11 representation has the same nonzero number of 7's and 8's.

The programs for A039487, there is no canonical definition to state claims against.
-/

/-! ## A039487.P3607964190888647151

`A039489(n+1)-A266327(A139757(n)+1)-A266327(n)`
-/

namespace A039487.P3607964190888647151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039489 (n + 1) - A266327 (A139757 n + 1).toNat - A266327 n

end

end A039487.P3607964190888647151

/-! ## A039487.P3545918783181929385

`A039491(n+1)-A266327(A139757(n))-2*A266327(n)`
-/

namespace A039487.P3545918783181929385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039491 (n + 1) - A266327 (A139757 n).toNat - 2 * A266327 n

end

end A039487.P3545918783181929385

/-! ## A039487.P17717492302497543684

`A266327(A131045(n))+A039484(n+1)`
-/

namespace A039487.P17717492302497543684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266327 (A131045 n).toNat + A039484 (n + 1)

end

end A039487.P17717492302497543684

/-! ## A039487.P18342385082486107037

`A039490(n+1)-A040132(A041011(n))/2`
-/

namespace A039487.P18342385082486107037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039490 (n + 1) : ℚ) - (A040132 (A041011 n).toNat : ℚ) / 2

end

end A039487.P18342385082486107037

/-! ## A039487.P1716070661318759139

`A039488(n+1)-A266327(A160715(3*n))`
-/

namespace A039487.P1716070661318759139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039488 (n + 1) - A266327 (A160715 (3 * n)).toNat

end

end A039487.P1716070661318759139

/-!
# A039488: Numbers whose base-11 representation has the same nonzero number of 7's and 9's.

The programs for A039488, there is no canonical definition to state claims against.
-/

/-! ## A039488.P10142827537721220448

`A039489(A187829(n+1))-A266327(n)`
-/

namespace A039488.P10142827537721220448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039489 (A187829 (n + 1)).toNat - A266327 n

end

end A039488.P10142827537721220448

/-! ## A039488.P2348432723355570344

`A039490(n+1)-A266327(A139757(n))`
-/

namespace A039488.P2348432723355570344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039490 (n + 1) - A266327 (A139757 n).toNat

end

end A039488.P2348432723355570344

/-! ## A039488.P18093593935072711506

`A039489(n+1)-A266327(A139757(n)+1)`
-/

namespace A039488.P18093593935072711506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039489 (n + 1) - A266327 (A139757 n + 1).toNat

end

end A039488.P18093593935072711506

/-! ## A039488.P4453648177090191861

`A039491(n+1)-(A266327(A139757(n))+A266327(n))`
-/

namespace A039488.P4453648177090191861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039491 (n + 1) - (A266327 (A139757 n).toNat + A266327 n)

end

end A039488.P4453648177090191861

/-!
# A039489: Numbers whose base-11 representation has the same nonzero number of 7's and 10's.

The programs for A039489, there is no canonical definition to state claims against.
-/

/-! ## A039489.P6321022230077332344

`∩[A039206(n+1), A095778(n+1)]`
-/

namespace A039489.P6321022230077332344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039489.P6321022230077332344

/-! ## A039489.P7765709022513635281

`A039491(n+1)-A266327(A139757(n))`
-/

namespace A039489.P7765709022513635281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039491 (n + 1) - A266327 (A139757 n).toNat

end

end A039489.P7765709022513635281

/-! ## A039489.P5548294416970138253

`A039491(n+1)-A266327(A102488(n+4)²)`
-/

namespace A039489.P5548294416970138253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039491 (n + 1) - A266327 (A102488 (n + 4) ^ 2).toNat

end

end A039489.P5548294416970138253

/-! ## A039489.P6231387285848771059

`A266327(A131045(n))+A039486(n+1)`
-/

namespace A039489.P6231387285848771059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266327 (A131045 n).toNat + A039486 (n + 1)

end

end A039489.P6231387285848771059

/-! ## A039489.P17235920224823708167

`A039491(n+1)-A266327(A131045(n))`
-/

namespace A039489.P17235920224823708167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039491 (n + 1) - A266327 (A131045 n).toNat

end

end A039489.P17235920224823708167

/-!
# A039490: Numbers whose base-11 representation has the same nonzero number of 8's and 9's.

The programs for A039490, there is no canonical definition to state claims against.
-/

/-! ## A039490.P4569805858451078246

`A039491(n+1)-A266327(A192760(n))`
-/

namespace A039490.P4569805858451078246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039491 (n + 1) - A266327 (A192760 n).toNat

end

end A039490.P4569805858451078246

/-! ## A039490.P16639718468590487787

`A039491(n+1)-A266327(A033954(3*n))`
-/

namespace A039490.P16639718468590487787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039491 (n + 1) - A266327 (A033954 (3 * n)).toNat

end

end A039490.P16639718468590487787

/-! ## A039490.P8417925408307307356

`A233583(A039492(n+1)-11)`
-/

namespace A039490.P8417925408307307356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A039492 (n + 1) - 11).toNat

end

end A039490.P8417925408307307356

/-! ## A039490.P6450771427501021388

`A039491(n+1)-A266327(A102488(n+1)²)`
-/

namespace A039490.P6450771427501021388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039491 (n + 1) - A266327 (A102488 (n + 1) ^ 2).toNat

end

end A039490.P6450771427501021388

/-! ## A039490.P16141081318355732939

`A039491(A187829(n+1))-A266327(n)`
-/

namespace A039490.P16141081318355732939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039491 (A187829 (n + 1)).toNat - A266327 n

end

end A039490.P16141081318355732939

/-!
# A039491: Numbers whose base-11 representation has the same nonzero number of 8's and 10's.

The programs for A039491, there is no canonical definition to state claims against.
-/

/-! ## A039491.P14467896534548503402

`∩[A039208(n+1), A095778(n+1)]`
-/

namespace A039491.P14467896534548503402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039491.P14467896534548503402

/-! ## A039491.P10895206728754455909

`A266327(n)+A233583(A039492(n+1)-11)`
-/

namespace A039491.P10895206728754455909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266327 n + A233583 (A039492 (n + 1) - 11).toNat

end

end A039491.P10895206728754455909

/-! ## A039491.P15217965134563061116

`A266327(n)+A039490(A187829(n+1))`
-/

namespace A039491.P15217965134563061116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266327 n + A039490 (A187829 (n + 1)).toNat

end

end A039491.P15217965134563061116

/-! ## A039491.P5933226078048458616

`A039492(n+1)-A266327(A187829(n+1))`
-/

namespace A039491.P5933226078048458616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039492 (n + 1) - A266327 (A187829 (n + 1)).toNat

end

end A039491.P5933226078048458616

/-! ## A039491.P15782464162776377593

`A266327(n)+A039492(n+1)-A207830(A008835(n+1)²)`
-/

namespace A039491.P15782464162776377593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266327 n + (A039492 (n + 1) - A207830 (A008835 (n + 1) ^ 2).toNat)

end

end A039491.P15782464162776377593

/-!
# A039492: Numbers whose base-11 representation has the same nonzero number of 9's and 10's.

The programs for A039492, there is no canonical definition to state claims against.
-/

/-! ## A039492.P1830900385568019721

`∩[A039209(n+1), A095778(n+1)]`
-/

namespace A039492.P1830900385568019721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039492.P1830900385568019721

/-! ## A039492.P6430065953773020795

`A266327(A187829(n+1))+A039491(n+1)`
-/

namespace A039492.P6430065953773020795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266327 (A187829 (n + 1)).toNat + A039491 (n + 1)

end

end A039492.P6430065953773020795

/-! ## A039492.P14110203073761822416

`A207830(A008835(n+1)²)+A039490(n+1)`
-/

namespace A039492.P14110203073761822416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207830 (A008835 (n + 1) ^ 2).toNat + A039490 (n + 1)

end

end A039492.P14110203073761822416

/-! ## A039492.P8256608024294130084

`A039493(A008835(n+1)!)+A039490(n+1)`
-/

namespace A039492.P8256608024294130084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039493 (Nat.factorial (A008835 (n + 1)).toNat) + A039490 (n + 1)

end

end A039492.P8256608024294130084

/-! ## A039492.P2285889963144897064

`A207830(A008835(n+1)!)+A039490(n+1)`
-/

namespace A039492.P2285889963144897064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207830 (Nat.factorial (A008835 (n + 1)).toNat) + A039490 (n + 1)

end

end A039492.P2285889963144897064

/-!
# A039496: Numbers whose base-12 representation has the same nonzero number of 0's and 4's.

The programs for A039496, there is no canonical definition to state claims against.
-/

/-! ## A039496.P5268383046787207217

`A171397(A039441(n+1)^A144399(n))`
-/

namespace A039496.P5268383046787207217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (SequenceMachineLib.roundAway ((A039441 (n + 1) : ℚ) ^ (A144399 n : ℤ))).toNat

end

end A039496.P5268383046787207217

/-!
# A039498: Numbers whose base-12 representation has the same nonzero number of 0's and 6's.

The programs for A039498, there is no canonical definition to state claims against.
-/

/-! ## A039498.P2874209738855534456

`A157921(n+1)+A010688(A351870(n))`
-/

namespace A039498.P2874209738855534456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157921 (n + 1) + A010688 (A351870 n).toNat

end

end A039498.P2874209738855534456

/-! ## A039498.P1229708373247285050

`A157921(n+1)+A010688(A157909(n+1))`
-/

namespace A039498.P1229708373247285050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157921 (n + 1) + A010688 (A157909 (n + 1)).toNat

end

end A039498.P1229708373247285050

/-! ## A039498.P6507475080151522233

`A008606(3*n+3)+A004016(A000079(n+3))`
-/

namespace A039498.P6507475080151522233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008606 (3 * n + 3) + A004016 (A000079 (n + 3)).toNat

end

end A039498.P6507475080151522233

/-! ## A039498.P6335986502285820967

`A157921(n+1)+A010688(n²²)`
-/

namespace A039498.P6335986502285820967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157921 (n + 1) + A010688 ((n ^ 2) ^ 2)

end

end A039498.P6335986502285820967

