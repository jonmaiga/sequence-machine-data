import SequenceMachineLib
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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

/-!
# A186300: (A007521(n)+1)/2.

The programs for A186300, the canonical program `A186300.P1197672728563334248` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186300 has offset 1).

The definition of A186300 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A186299, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A186300.P1197672728563334248

`A186299(n+1)+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A186300

/-- `A186299(n+1)+1` -/
def P1197672728563334248.Spec : Prop :=
  ∀ n, P1197672728563334248.a n = A186300 (n + 1)

theorem P1197672728563334248.correct : P1197672728563334248.Spec := by
  intro n
  simp only [A186300, Nat.add_sub_cancel]

end A186300

/-! ## A186300.P14695577117758996362

`(A007521(n+1)+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A186300.P14695577117758996362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007521 (n + 1) + 1 : ℚ) / 2

end

end A186300.P14695577117758996362

namespace A186300

/-- `(A007521(n+1)+1)/2` -/
def P14695577117758996362.Spec : Prop :=
  ∀ n, P14695577117758996362.a n = (A186300 (n + 1) : ℚ)

end A186300

/-! ## A186300.P2611858279628323401

`ceil(p?[8*n-3]/2)`
-/

namespace A186300.P2611858279628323401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌉

end

end A186300.P2611858279628323401

namespace A186300

/-- `ceil(p?[8*n-3]/2)` -/
def P2611858279628323401.Spec : Prop :=
  ∀ n, P2611858279628323401.a n = A186300 (n + 1)

end A186300

/-! ## A186300.P5423643518242186341

`round(p?[8*n-3]/2)`
-/

namespace A186300.P5423643518242186341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2)

end

end A186300.P5423643518242186341

namespace A186300

/-- `round(p?[8*n-3]/2)` -/
def P5423643518242186341.Spec : Prop :=
  ∀ n, P5423643518242186341.a n = A186300 (n + 1)

end A186300

/-! ## A186300.P9483518663516038364

`(p?[8*n-3]+1)/2`
-/

namespace A186300.P9483518663516038364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 : ℚ) / 2

end

end A186300.P9483518663516038364

namespace A186300

/-- `(p?[8*n-3]+1)/2` -/
def P9483518663516038364.Spec : Prop :=
  ∀ n, P9483518663516038364.a n = (A186300 (n + 1) : ℚ)

end A186300

/-! ## A186300.P1756321710605382282

`ceil(A007521(n+1)/2)`
-/

namespace A186300.P1756321710605382282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007521 (n + 1) : ℚ) / 2⌉

end

end A186300.P1756321710605382282

namespace A186300

/-- `ceil(A007521(n+1)/2)` -/
def P1756321710605382282.Spec : Prop :=
  ∀ n, P1756321710605382282.a n = A186300 (n + 1)

end A186300

/-! ## A186300.P14988078938993557608

`2*A230076(n+1)+1`
-/

namespace A186300.P14988078938993557608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A230076 (n + 1) + 1

end

end A186300.P14988078938993557608

namespace A186300

/-- `2*A230076(n+1)+1` -/
def P14988078938993557608.Spec : Prop :=
  ∀ n, P14988078938993557608.a n = A186300 (n + 1)

end A186300

/-! ## A186300.P4504449331265628071

`4*A005125(n+1)-1`
-/

namespace A186300.P4504449331265628071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A005125 (n + 1) - 1

end

end A186300.P4504449331265628071

namespace A186300

/-- `4*A005125(n+1)-1` -/
def P4504449331265628071.Spec : Prop :=
  ∀ n, P4504449331265628071.a n = A186300 (n + 1)

end A186300

/-! ## A186300.P7982107037222453302

`(A186301(n+1)+3)/2`
-/

namespace A186300.P7982107037222453302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186301 (n + 1) + 3 : ℚ) / 2

end

end A186300.P7982107037222453302

namespace A186300

/-- `(A186301(n+1)+3)/2` -/
def P7982107037222453302.Spec : Prop :=
  ∀ n, P7982107037222453302.a n = (A186300 (n + 1) : ℚ)

end A186300

/-! ## A186300.P13825200616516502139

`4*A105133(n+1)+3`
-/

namespace A186300.P13825200616516502139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A105133 (n + 1) + 3

end

end A186300.P13825200616516502139

namespace A186300

/-- `4*A105133(n+1)+3` -/
def P13825200616516502139.Spec : Prop :=
  ∀ n, P13825200616516502139.a n = A186300 (n + 1)

end A186300

/-! ## A186300.P375759904922928981

`A007521(n+1)-(A230076(n+1)+A230076(n+1))`
-/

namespace A186300.P375759904922928981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1) - (A230076 (n + 1) + A230076 (n + 1))

end

end A186300.P375759904922928981

namespace A186300

/-- `A007521(n+1)-(A230076(n+1)+A230076(n+1))` -/
def P375759904922928981.Spec : Prop :=
  ∀ n, P375759904922928981.a n = A186300 (n + 1)

end A186300

/-! ## A186300.P12112879937013650382

`(A045366(n+2)+1)/2`
-/

namespace A186300.P12112879937013650382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045366 (n + 2) + 1 : ℚ) / 2

end

end A186300.P12112879937013650382

namespace A186300

/-- `(A045366(n+2)+1)/2` -/
def P12112879937013650382.Spec : Prop :=
  ∀ n, P12112879937013650382.a n = (A186300 (n + 1) : ℚ)

end A186300

/-! ## A186300.P17545466340873239310

`(A339900(A016825(n))+1)/2`
-/

namespace A186300.P17545466340873239310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339900 (A016825 n).toNat + 1 : ℚ) / 2

end

end A186300.P17545466340873239310

namespace A186300

/-- `(A339900(A016825(n))+1)/2` -/
def P17545466340873239310.Spec : Prop :=
  ∀ n, P17545466340873239310.a n = (A186300 (n + 1) : ℚ)

end A186300

/-! ## A186300.P6037672321914053513

`A016825(A105133(n+1))+1`
-/

namespace A186300.P6037672321914053513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A105133 (n + 1)).toNat + 1

end

end A186300.P6037672321914053513

namespace A186300

/-- `A016825(A105133(n+1))+1` -/
def P6037672321914053513.Spec : Prop :=
  ∀ n, P6037672321914053513.a n = A186300 (n + 1)

end A186300

/-! ## A186300.P5348368504186178141

`∩[A119681(n+1), A092899(n)]`
-/

namespace A186300.P5348368504186178141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092899 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186300.P5348368504186178141

namespace A186300

/-- `∩[A119681(n+1), A092899(n)]` -/
def P5348368504186178141.Spec : Prop :=
  ∀ n, (P5348368504186178141.a n : ℤ) = A186300 (n + 1)

end A186300

/-! ## A186300.P8508032279270893126

`∩[A006254(n+1), A092899(n)]`
-/

namespace A186300.P8508032279270893126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092899 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186300.P8508032279270893126

namespace A186300

/-- `∩[A006254(n+1), A092899(n)]` -/
def P8508032279270893126.Spec : Prop :=
  ∀ n, (P8508032279270893126.a n : ℤ) = A186300 (n + 1)

end A186300

/-! ## A186300.P18245106147057297946

`4*eq[2, A000005(8*n+5)]+3`
-/

namespace A186300.P18245106147057297946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (8 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A186300.P18245106147057297946

namespace A186300

/-- `4*eq[2, A000005(8*n+5)]+3` -/
def P18245106147057297946.Spec : Prop :=
  ∀ n, (P18245106147057297946.a n : ℤ) = A186300 (n + 1)

end A186300

/-! ## A186300.P6901266636513401645

`A014682(A045366(n+2)+1)`
-/

namespace A186300.P6901266636513401645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A045366 (n + 2) + 1).toNat

end

end A186300.P6901266636513401645

namespace A186300

/-- `A014682(A045366(n+2)+1)` -/
def P6901266636513401645.Spec : Prop :=
  ∀ n, P6901266636513401645.a n = A186300 (n + 1)

end A186300

/-! ## A186300.P8725168665623708346

`(record[A020639(Δ[(2*n)²]+1)]+1)/2`
-/

namespace A186300.P8725168665623708346
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1 : ℚ) / 2

end

end A186300.P8725168665623708346

namespace A186300

/-- `(record[A020639(Δ[(2*n)²]+1)]+1)/2` -/
def P8725168665623708346.Spec : Prop :=
  ∀ n, P8725168665623708346.a n = (A186300 (n + 1) : ℚ)

end A186300

/-! ## A186300.P14988299678742187958

`A004767(A105133(n+1))`
-/

namespace A186300.P14988299678742187958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A105133 (n + 1)).toNat

end

end A186300.P14988299678742187958

namespace A186300

/-- `A004767(A105133(n+1))` -/
def P14988299678742187958.Spec : Prop :=
  ∀ n, P14988299678742187958.a n = A186300 (n + 1)

end A186300

/-!
# A186301: a(n) = A007521(n) - 2.

The programs for A186301, the canonical program `A186301.P7683703900443366685` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186301 has offset 1).

The definition of A186301 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007521, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A186301.P7683703900443366685

`A007521(n+1)-2`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A186301

/-- `A007521(n+1)-2` -/
def P7683703900443366685.Spec : Prop :=
  ∀ n, P7683703900443366685.a n = A186301 (n + 1)

theorem P7683703900443366685.correct : P7683703900443366685.Spec := by
  intro n
  simp only [A186301, Nat.add_sub_cancel]

end A186301

/-! ## A186301.P10581962037363159626

`p?[8*n-3]-2`
-/

namespace A186301.P10581962037363159626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A186301.P10581962037363159626

namespace A186301

/-- `p?[8*n-3]-2` -/
def P10581962037363159626.Spec : Prop :=
  ∀ n, P10581962037363159626.a n = A186301 (n + 1)

end A186301

/-! ## A186301.P14124461005201050792

`xor(6, p?[8*n+5])`
-/

namespace A186301.P14124461005201050792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 6 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A186301.P14124461005201050792

namespace A186301

/-- `xor(6, p?[8*n+5])` -/
def P14124461005201050792.Spec : Prop :=
  ∀ n, (P14124461005201050792.a n : ℤ) = A186301 (n + 1)

end A186301

/-! ## A186301.P6076248915026599465

`2*A186299(n+1)-1`
-/

namespace A186301.P6076248915026599465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A186299 (n + 1) - 1

end

end A186301.P6076248915026599465

namespace A186301

/-- `2*A186299(n+1)-1` -/
def P6076248915026599465.Spec : Prop :=
  ∀ n, P6076248915026599465.a n = A186301 (n + 1)

end A186301

/-! ## A186301.P4352151201896376634

`2*A186300(n+1)-3`
-/

namespace A186301.P4352151201896376634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A186300 (n + 1) - 3

end

end A186301.P4352151201896376634

namespace A186301

/-- `2*A186300(n+1)-3` -/
def P4352151201896376634.Spec : Prop :=
  ∀ n, P4352151201896376634.a n = A186301 (n + 1)

end A186301

/-! ## A186301.P3727535121343598693

`4*A230076(n+1)-1`
-/

namespace A186301.P3727535121343598693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A230076 (n + 1) - 1

end

end A186301.P3727535121343598693

namespace A186301

/-- `4*A230076(n+1)-1` -/
def P3727535121343598693.Spec : Prop :=
  ∀ n, P3727535121343598693.a n = A186301 (n + 1)

end A186301

/-! ## A186301.P6117212399941874872

`4*(2*A005125(n+1)-1)-1`
-/

namespace A186301.P6117212399941874872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (2 * A005125 (n + 1) - 1) - 1

end

end A186301.P6117212399941874872

namespace A186301

/-- `4*(2*A005125(n+1)-1)-1` -/
def P6117212399941874872.Spec : Prop :=
  ∀ n, P6117212399941874872.a n = A186301 (n + 1)

end A186301

/-! ## A186301.P10768641380774952939

`A045366(n+2)-2`
-/

namespace A186301.P10768641380774952939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 2) - 2

end

end A186301.P10768641380774952939

namespace A186301

/-- `A045366(n+2)-2` -/
def P10768641380774952939.Spec : Prop :=
  ∀ n, P10768641380774952939.a n = A186301 (n + 1)

end A186301

/-! ## A186301.P13324229188957796900

`A339900(A016825(n))-2`
-/

namespace A186301.P13324229188957796900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339900 (A016825 n).toNat - 2

end

end A186301.P13324229188957796900

namespace A186301

/-- `A339900(A016825(n))-2` -/
def P13324229188957796900.Spec : Prop :=
  ∀ n, P13324229188957796900.a n = A186301 (n + 1)

end A186301

/-! ## A186301.P6440251755146815584

`record[A006530(8*n+5)]-2`
-/

namespace A186301.P6440251755146815584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (8 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 2

end

end A186301.P6440251755146815584

namespace A186301

/-- `record[A006530(8*n+5)]-2` -/
def P6440251755146815584.Spec : Prop :=
  ∀ n, P6440251755146815584.a n = A186301 (n + 1)

end A186301

/-! ## A186301.P16096189200339709575

`abs(2-record[A020639(8*n+5)])`
-/

namespace A186301.P16096189200339709575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (8 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A186301.P16096189200339709575

namespace A186301

/-- `abs(2-record[A020639(8*n+5)])` -/
def P16096189200339709575.Spec : Prop :=
  ∀ n, P16096189200339709575.a n = A186301 (n + 1)

end A186301

/-! ## A186301.P15044173098150823904

`A017101(A105133(n+1))`
-/

namespace A186301.P15044173098150823904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 (A105133 (n + 1)).toNat

end

end A186301.P15044173098150823904

namespace A186301

/-- `A017101(A105133(n+1))` -/
def P15044173098150823904.Spec : Prop :=
  ∀ n, P15044173098150823904.a n = A186301 (n + 1)

end A186301

/-! ## A186301.P9759564891907982653

`∩[A040976(n+1), A017101(n)]`
-/

namespace A186301.P9759564891907982653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186301.P9759564891907982653

namespace A186301

/-- `∩[A040976(n+1), A017101(n)]` -/
def P9759564891907982653.Spec : Prop :=
  ∀ n, (P9759564891907982653.a n : ℤ) = A186301 (n + 1)

end A186301

/-! ## A186301.P6547592347387252565

`∩[A238526(n+1), A017101(n)]`
-/

namespace A186301.P6547592347387252565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238526 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186301.P6547592347387252565

namespace A186301

/-- `∩[A238526(n+1), A017101(n)]` -/
def P6547592347387252565.Spec : Prop :=
  ∀ n, (P6547592347387252565.a n : ℤ) = A186301 (n + 1)

end A186301

/-! ## A186301.P2177703129901548893

`∩[A000040(n+1)-2, A017101(n)]`
-/

namespace A186301.P2177703129901548893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186301.P2177703129901548893

namespace A186301

/-- `∩[A000040(n+1)-2, A017101(n)]` -/
def P2177703129901548893.Spec : Prop :=
  ∀ n, (P2177703129901548893.a n : ℤ) = A186301 (n + 1)

end A186301

/-! ## A186301.P8600887762987597491

`∩[A000040(n+1), A004770(n+1)]-2`
-/

namespace A186301.P8600887762987597491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004770 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A186301.P8600887762987597491

namespace A186301

/-- `∩[A000040(n+1), A004770(n+1)]-2` -/
def P8600887762987597491.Spec : Prop :=
  ∀ n, P8600887762987597491.a n = A186301 (n + 1)

end A186301

/-! ## A186301.P17947212231776147473

`record[A020639(A016957(n)+2*n+1)]-2`
-/

namespace A186301.P17947212231776147473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A016957 n + (2 * n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 2

end

end A186301.P17947212231776147473

namespace A186301

/-- `record[A020639(A016957(n)+2*n+1)]-2` -/
def P17947212231776147473.Spec : Prop :=
  ∀ n, P17947212231776147473.a n = A186301 (n + 1)

end A186301

/-! ## A186301.P17765489766800463675

`∩[A040976(n+1), A055046(n+1)]`
-/

namespace A186301.P17765489766800463675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186301.P17765489766800463675

namespace A186301

/-- `∩[A040976(n+1), A055046(n+1)]` -/
def P17765489766800463675.Spec : Prop :=
  ∀ n, (P17765489766800463675.a n : ℤ) = A186301 (n + 1)

end A186301

/-! ## A186301.P14361445944991106777

`∩[A055046(n+1), A238526(n+1)]`
-/

namespace A186301.P14361445944991106777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186301.P14361445944991106777

namespace A186301

/-- `∩[A055046(n+1), A238526(n+1)]` -/
def P14361445944991106777.Spec : Prop :=
  ∀ n, (P14361445944991106777.a n : ℤ) = A186301 (n + 1)

end A186301

/-! ## A186301.P14330458496777761848

`∩[A040976(n+1), A143029(n+1)]`
-/

namespace A186301.P14330458496777761848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186301.P14330458496777761848

namespace A186301

/-- `∩[A040976(n+1), A143029(n+1)]` -/
def P14330458496777761848.Spec : Prop :=
  ∀ n, (P14330458496777761848.a n : ℤ) = A186301 (n + 1)

end A186301

/-!
# A186302: a(n) = ( A007522(n)-1 )/2.

The programs for A186302, the canonical program `A186302.P17475383867491687271` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186302 has offset 1).

The definition of A186302 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007522, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A186302.P12004377721983835884

`A186303(n+1)-1`
-/

namespace A186302.P12004377721983835884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186303 (n + 1) - 1

end

end A186302.P12004377721983835884

namespace A186302

/-- `A186303(n+1)-1` -/
def P12004377721983835884.Spec : Prop :=
  ∀ n, P12004377721983835884.a n = A186302 (n + 1)

end A186302

/-! ## A186302.P17475383867491687271

`(A007522(n+1)-1)/2`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A186302

/-- `(A007522(n+1)-1)/2` -/
def P17475383867491687271.Spec : Prop :=
  ∀ n, P17475383867491687271.a n = (A186302 (n + 1) : ℚ)

end A186302

/-! ## A186302.P10730005501174441973

`floor(p?[8*n-1]/2)`
-/

namespace A186302.P10730005501174441973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌋

end

end A186302.P10730005501174441973

namespace A186302

/-- `floor(p?[8*n-1]/2)` -/
def P10730005501174441973.Spec : Prop :=
  ∀ n, P10730005501174441973.a n = A186302 (n + 1)

end A186302

/-! ## A186302.P17978556845354572394

`(p?[8*n-1]-1)/2`
-/

namespace A186302.P17978556845354572394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1 : ℚ) / 2

end

end A186302.P17978556845354572394

namespace A186302

/-- `(p?[8*n-1]-1)/2` -/
def P17978556845354572394.Spec : Prop :=
  ∀ n, P17978556845354572394.a n = (A186302 (n + 1) : ℚ)

end A186302

/-! ## A186302.P11538482464242563158

`xor(1, p?[8*n+7])/2`
-/

namespace A186302.P11538482464242563158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / 2

end

end A186302.P11538482464242563158

namespace A186302

/-- `xor(1, p?[8*n+7])/2` -/
def P11538482464242563158.Spec : Prop :=
  ∀ n, P11538482464242563158.a n = (A186302 (n + 1) : ℚ)

end A186302

/-! ## A186302.P3133818314921688126

`floor(A007522(n+1)/2)`
-/

namespace A186302.P3133818314921688126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007522 (n + 1) : ℚ) / 2⌋

end

end A186302.P3133818314921688126

namespace A186302

/-- `floor(A007522(n+1)/2)` -/
def P3133818314921688126.Spec : Prop :=
  ∀ n, P3133818314921688126.a n = A186302 (n + 1)

end A186302

/-! ## A186302.P15190285453558388057

`round(A186304(n+1)/2)`
-/

namespace A186302.P15190285453558388057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A186304 (n + 1) : ℚ) / 2)

end

end A186302.P15190285453558388057

namespace A186302

/-- `round(A186304(n+1)/2)` -/
def P15190285453558388057.Spec : Prop :=
  ∀ n, P15190285453558388057.a n = A186302 (n + 1)

end A186302

/-! ## A186302.P8083661321940637563

`4*A005122(n+1)-1`
-/

namespace A186302.P8083661321940637563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A005122 (n + 1) - 1

end

end A186302.P8083661321940637563

namespace A186302

/-- `4*A005122(n+1)-1` -/
def P8083661321940637563.Spec : Prop :=
  ∀ n, P8083661321940637563.a n = A186302 (n + 1)

end A186302

/-! ## A186302.P141176701227607631

`4*A139487(n+1)+3`
-/

namespace A186302.P141176701227607631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A139487 (n + 1) + 3

end

end A186302.P141176701227607631

namespace A186302

/-- `4*A139487(n+1)+3` -/
def P141176701227607631.Spec : Prop :=
  ∀ n, P141176701227607631.a n = A186302 (n + 1)

end A186302

/-! ## A186302.P17524087522377781974

`4*A153766(n+1)-5`
-/

namespace A186302.P17524087522377781974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A153766 (n + 1) - 5

end

end A186302.P17524087522377781974

namespace A186302

/-- `4*A153766(n+1)-5` -/
def P17524087522377781974.Spec : Prop :=
  ∀ n, P17524087522377781974.a n = A186302 (n + 1)

end A186302

/-! ## A186302.P12676052444481043594

`A282039(n+1)/A005122(n+1)`
-/

namespace A186302.P12676052444481043594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282039 (n + 1) : ℚ) / (A005122 (n + 1) : ℚ)

end

end A186302.P12676052444481043594

namespace A186302

/-- `A282039(n+1)/A005122(n+1)` -/
def P12676052444481043594.Spec : Prop :=
  ∀ n, P12676052444481043594.a n = (A186302 (n + 1) : ℚ)

end A186302

/-! ## A186302.P16286664566230479879

`A007522(n+1)%A186303(n+1)`
-/

namespace A186302.P16286664566230479879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007522 (n + 1)) (A186303 (n + 1))

end

end A186302.P16286664566230479879

namespace A186302

/-- `A007522(n+1)%A186303(n+1)` -/
def P16286664566230479879.Spec : Prop :=
  ∀ n, P16286664566230479879.a n = A186302 (n + 1)

end A186302

/-! ## A186302.P4878355941106583863

`floor(A045382(n+2)/2)`
-/

namespace A186302.P4878355941106583863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A045382 (n + 2) : ℚ) / 2⌋

end

end A186302.P4878355941106583863

namespace A186302

/-- `floor(A045382(n+2)/2)` -/
def P4878355941106583863.Spec : Prop :=
  ∀ n, P4878355941106583863.a n = A186302 (n + 1)

end A186302

/-! ## A186302.P7159856706941346994

`eq[7, A320109(2*n+1)]`
-/

namespace A186302.P7159856706941346994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320109 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186302.P7159856706941346994

namespace A186302

/-- `eq[7, A320109(2*n+1)]` -/
def P7159856706941346994.Spec : Prop :=
  ∀ n, (P7159856706941346994.a n : ℤ) = A186302 (n + 1)

end A186302

/-! ## A186302.P10931200452100781252

`lt[A000005(2*n+1), n%4]`
-/

namespace A186302.P10931200452100781252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A186302.P10931200452100781252

namespace A186302

/-- `lt[A000005(2*n+1), n%4]` -/
def P10931200452100781252.Spec : Prop :=
  ∀ n, (P10931200452100781252.a n : ℤ) = A186302 (n + 1)

end A186302

/-! ## A186302.P7120699935745892568

`lt[lcm(4, n+1), A006530(2*n+1)]`
-/

namespace A186302.P7120699935745892568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A186302.P7120699935745892568

namespace A186302

/-- `lt[lcm(4, n+1), A006530(2*n+1)]` -/
def P7120699935745892568.Spec : Prop :=
  ∀ n, (P7120699935745892568.a n : ℤ) = A186302 (n + 1)

end A186302

/-! ## A186302.P12176754534573025948

`eq[2*or(3, n), A000010(2*n+1)]`
-/

namespace A186302.P12176754534573025948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lor 3 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186302.P12176754534573025948

namespace A186302

/-- `eq[2*or(3, n), A000010(2*n+1)]` -/
def P12176754534573025948.Spec : Prop :=
  ∀ n, (P12176754534573025948.a n : ℤ) = A186302 (n + 1)

end A186302

/-! ## A186302.P4215910795059568963

`eq[2*n+1, A006530(or(7, 2*n))]`
-/

namespace A186302.P4215910795059568963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.lor 7 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186302.P4215910795059568963

namespace A186302

/-- `eq[2*n+1, A006530(or(7, 2*n))]` -/
def P4215910795059568963.Spec : Prop :=
  ∀ n, (P4215910795059568963.a n : ℤ) = A186302 (n + 1)

end A186302

/-! ## A186302.P8838635350972466478

`floor(record[A006530(8*(n+1)-1)]/2)`
-/

namespace A186302.P8838635350972466478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (8 * (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2⌋

end

end A186302.P8838635350972466478

namespace A186302

/-- `floor(record[A006530(8*(n+1)-1)]/2)` -/
def P8838635350972466478.Spec : Prop :=
  ∀ n, P8838635350972466478.a n = A186302 (n + 1)

end A186302

/-! ## A186302.P11551273392502582398

`floor(record[A020639(or(6, 3*n+1))]/2)`
-/

namespace A186302.P11551273392502582398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.lor 6 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2⌋

end

end A186302.P11551273392502582398

namespace A186302

/-- `floor(record[A020639(or(6, 3*n+1))]/2)` -/
def P11551273392502582398.Spec : Prop :=
  ∀ n, P11551273392502582398.a n = A186302 (n + 1)

end A186302

/-!
# A186303: a(n) = ( A007522(n)+1 )/2.

The programs for A186303, the canonical program `A186303.P16068686725159694741` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186303 has offset 1).

The definition of A186303 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A186302, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A186303.P16068686725159694741

`A186302(n+1)+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A186303

/-- `A186302(n+1)+1` -/
def P16068686725159694741.Spec : Prop :=
  ∀ n, P16068686725159694741.a n = A186303 (n + 1)

theorem P16068686725159694741.correct : P16068686725159694741.Spec := by
  intro n
  simp only [A186303, Nat.add_sub_cancel]

end A186303

/-! ## A186303.P9127881478865709690

`(A007522(n+1)+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A186303.P9127881478865709690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007522 (n + 1) + 1 : ℚ) / 2

end

end A186303.P9127881478865709690

namespace A186303

/-- `(A007522(n+1)+1)/2` -/
def P9127881478865709690.Spec : Prop :=
  ∀ n, P9127881478865709690.a n = (A186303 (n + 1) : ℚ)

end A186303

/-! ## A186303.P3017111841597070351

`ceil(p?[8*n-1]/2)`
-/

namespace A186303.P3017111841597070351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌉

end

end A186303.P3017111841597070351

namespace A186303

/-- `ceil(p?[8*n-1]/2)` -/
def P3017111841597070351.Spec : Prop :=
  ∀ n, P3017111841597070351.a n = A186303 (n + 1)

end A186303

/-! ## A186303.P11116501681372319689

`round(p?[8*n-1]/2)`
-/

namespace A186303.P11116501681372319689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2)

end

end A186303.P11116501681372319689

namespace A186303

/-- `round(p?[8*n-1]/2)` -/
def P11116501681372319689.Spec : Prop :=
  ∀ n, P11116501681372319689.a n = A186303 (n + 1)

end A186303

/-! ## A186303.P15773631650967976052

`(p?[8*n-1]+1)/2`
-/

namespace A186303.P15773631650967976052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 : ℚ) / 2

end

end A186303.P15773631650967976052

namespace A186303

/-- `(p?[8*n-1]+1)/2` -/
def P15773631650967976052.Spec : Prop :=
  ∀ n, P15773631650967976052.a n = (A186303 (n + 1) : ℚ)

end A186303

/-! ## A186303.P8102610438767306441

`4*A005122(n+1)`
-/

namespace A186303.P8102610438767306441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A005122 (n + 1)

end

end A186303.P8102610438767306441

namespace A186303

/-- `4*A005122(n+1)` -/
def P8102610438767306441.Spec : Prop :=
  ∀ n, P8102610438767306441.a n = A186303 (n + 1)

end A186303

/-! ## A186303.P8321788571818146820

`ceil(A007522(n+1)/2)`
-/

namespace A186303.P8321788571818146820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007522 (n + 1) : ℚ) / 2⌉

end

end A186303.P8321788571818146820

namespace A186303

/-- `ceil(A007522(n+1)/2)` -/
def P8321788571818146820.Spec : Prop :=
  ∀ n, P8321788571818146820.a n = A186303 (n + 1)

end A186303

/-! ## A186303.P11116406857922509267

`round(A178389(n+1)/6)`
-/

namespace A186303.P11116406857922509267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A178389 (n + 1) : ℚ) / 6)

end

end A186303.P11116406857922509267

namespace A186303

/-- `round(A178389(n+1)/6)` -/
def P11116406857922509267.Spec : Prop :=
  ∀ n, P11116406857922509267.a n = A186303 (n + 1)

end A186303

/-! ## A186303.P7643620971986925177

`4*(A139487(n+1)+1)`
-/

namespace A186303.P7643620971986925177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A139487 (n + 1) + 1)

end

end A186303.P7643620971986925177

namespace A186303

/-- `4*(A139487(n+1)+1)` -/
def P7643620971986925177.Spec : Prop :=
  ∀ n, P7643620971986925177.a n = A186303 (n + 1)

end A186303

/-! ## A186303.P5417124220132705195

`4*(A153766(n+1)-1)`
-/

namespace A186303.P5417124220132705195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A153766 (n + 1) - 1)

end

end A186303.P5417124220132705195

namespace A186303

/-- `4*(A153766(n+1)-1)` -/
def P5417124220132705195.Spec : Prop :=
  ∀ n, P5417124220132705195.a n = A186303 (n + 1)

end A186303

/-! ## A186303.P12825633505593167150

`(A186304(n+1)+3)/2`
-/

namespace A186303.P12825633505593167150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186304 (n + 1) + 3 : ℚ) / 2

end

end A186303.P12825633505593167150

namespace A186303

/-- `(A186304(n+1)+3)/2` -/
def P12825633505593167150.Spec : Prop :=
  ∀ n, P12825633505593167150.a n = (A186303 (n + 1) : ℚ)

end A186303

/-! ## A186303.P14761479388154552888

`A282039(n+1)/A005122(n+1)+1`
-/

namespace A186303.P14761479388154552888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282039 (n + 1) : ℚ) / (A005122 (n + 1) : ℚ) + 1

end

end A186303.P14761479388154552888

namespace A186303

/-- `A282039(n+1)/A005122(n+1)+1` -/
def P14761479388154552888.Spec : Prop :=
  ∀ n, P14761479388154552888.a n = (A186303 (n + 1) : ℚ)

end A186303

/-! ## A186303.P12578356127357890374

`ceil(A045382(n+2)/2)`
-/

namespace A186303.P12578356127357890374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A045382 (n + 2) : ℚ) / 2⌉

end

end A186303.P12578356127357890374

namespace A186303

/-- `ceil(A045382(n+2)/2)` -/
def P12578356127357890374.Spec : Prop :=
  ∀ n, P12578356127357890374.a n = A186303 (n + 1)

end A186303

/-! ## A186303.P15144929182495506605

`filter[A174166(n+1), A121262(#)]`
-/

namespace A186303.P15144929182495506605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A186303.P15144929182495506605

namespace A186303

/-- `filter[A174166(n+1), A121262(#)]` -/
def P15144929182495506605.Spec : Prop :=
  ∀ n, P15144929182495506605.a n = A186303 (n + 1)

end A186303

/-! ## A186303.P11761331649436001514

`filter[A006254(n+1), A121262(#)]`
-/

namespace A186303.P11761331649436001514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A186303.P11761331649436001514

namespace A186303

/-- `filter[A006254(n+1), A121262(#)]` -/
def P11761331649436001514.Spec : Prop :=
  ∀ n, P11761331649436001514.a n = A186303 (n + 1)

end A186303

/-! ## A186303.P5125763283408291995

`filter[A111333(n+1), A121262(#)]`
-/

namespace A186303.P5125763283408291995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A186303.P5125763283408291995

namespace A186303

/-- `filter[A111333(n+1), A121262(#)]` -/
def P5125763283408291995.Spec : Prop :=
  ∀ n, P5125763283408291995.a n = A186303 (n + 1)

end A186303

/-! ## A186303.P11734138760017624175

`filter[A130291(n+1), A121262(#)]`
-/

namespace A186303.P11734138760017624175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130291 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A186303.P11734138760017624175

namespace A186303

/-- `filter[A130291(n+1), A121262(#)]` -/
def P11734138760017624175.Spec : Prop :=
  ∀ n, P11734138760017624175.a n = A186303 (n + 1)

end A186303

/-! ## A186303.P15827885332377663976

`ceil(record[A006530(8*(n+1)-1)]/2)`
-/

namespace A186303.P15827885332377663976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (8 * (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2⌉

end

end A186303.P15827885332377663976

namespace A186303

/-- `ceil(record[A006530(8*(n+1)-1)]/2)` -/
def P15827885332377663976.Spec : Prop :=
  ∀ n, P15827885332377663976.a n = A186303 (n + 1)

end A186303

/-! ## A186303.P17798925362155418432

`ceil(record[A020639(or(6, 3*n+1))]/2)`
-/

namespace A186303.P17798925362155418432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.lor 6 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2⌉

end

end A186303.P17798925362155418432

namespace A186303

/-- `ceil(record[A020639(or(6, 3*n+1))]/2)` -/
def P17798925362155418432.Spec : Prop :=
  ∀ n, P17798925362155418432.a n = A186303 (n + 1)

end A186303

/-! ## A186303.P9170997093455682073

`ceil(record[A020639(7*(n+1)+n)]/2)`
-/

namespace A186303.P9170997093455682073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (7 * (n + 1) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2⌉

end

end A186303.P9170997093455682073

namespace A186303

/-- `ceil(record[A020639(7*(n+1)+n)]/2)` -/
def P9170997093455682073.Spec : Prop :=
  ∀ n, P9170997093455682073.a n = A186303 (n + 1)

end A186303

/-!
# A186304: a(n) = A007522(n) - 2.

The programs for A186304, the canonical program `A186304.P15915226160515621966` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186304 has offset 1).

The definition of A186304 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007522, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A186304.P15915226160515621966

`A007522(n+1)-2`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A186304

/-- `A007522(n+1)-2` -/
def P15915226160515621966.Spec : Prop :=
  ∀ n, P15915226160515621966.a n = A186304 (n + 1)

theorem P15915226160515621966.correct : P15915226160515621966.Spec := by
  intro n
  simp only [A186304, Nat.add_sub_cancel]

end A186304

/-! ## A186304.P13628019232240832839

`p?[8*n-1]-2`
-/

namespace A186304.P13628019232240832839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A186304.P13628019232240832839

namespace A186304

/-- `p?[8*n-1]-2` -/
def P13628019232240832839.Spec : Prop :=
  ∀ n, P13628019232240832839.a n = A186304 (n + 1)

end A186304

/-! ## A186304.P11356141067662709900

`xor(2, p?[8*n+7])`
-/

namespace A186304.P11356141067662709900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A186304.P11356141067662709900

namespace A186304

/-- `xor(2, p?[8*n+7])` -/
def P11356141067662709900.Spec : Prop :=
  ∀ n, (P11356141067662709900.a n : ℤ) = A186304 (n + 1)

end A186304

/-! ## A186304.P6956204578506918777

`2*A186302(n+1)-1`
-/

namespace A186304.P6956204578506918777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A186302 (n + 1) - 1

end

end A186304.P6956204578506918777

namespace A186304

/-- `2*A186302(n+1)-1` -/
def P6956204578506918777.Spec : Prop :=
  ∀ n, P6956204578506918777.a n = A186304 (n + 1)

end A186304

/-! ## A186304.P5798869327388011674

`2*A186303(n+1)-3`
-/

namespace A186304.P5798869327388011674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A186303 (n + 1) - 3

end

end A186304.P5798869327388011674

namespace A186304

/-- `2*A186303(n+1)-3` -/
def P5798869327388011674.Spec : Prop :=
  ∀ n, P5798869327388011674.a n = A186304 (n + 1)

end A186304

/-! ## A186304.P64205271432308043

`A178389(n+1)/3-2`
-/

namespace A186304.P64205271432308043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178389 (n + 1) : ℚ) / 3 - 2

end

end A186304.P64205271432308043

namespace A186304

/-- `A178389(n+1)/3-2` -/
def P64205271432308043.Spec : Prop :=
  ∀ n, P64205271432308043.a n = (A186304 (n + 1) : ℚ)

end A186304

/-! ## A186304.P15951224706228406610

`2*4*A005122(n+1)-3`
-/

namespace A186304.P15951224706228406610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (4 * A005122 (n + 1)) - 3

end

end A186304.P15951224706228406610

namespace A186304

/-- `2*4*A005122(n+1)-3` -/
def P15951224706228406610.Spec : Prop :=
  ∀ n, P15951224706228406610.a n = A186304 (n + 1)

end A186304

/-! ## A186304.P9054033538707170835

`A045382(n+2)-2`
-/

namespace A186304.P9054033538707170835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 2) - 2

end

end A186304.P9054033538707170835

namespace A186304

/-- `A045382(n+2)-2` -/
def P9054033538707170835.Spec : Prop :=
  ∀ n, P9054033538707170835.a n = A186304 (n + 1)

end A186304

/-! ## A186304.P10080277361339839010

`A094712(A133043(n+1))-2`
-/

namespace A186304.P10080277361339839010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094712 (A133043 (n + 1)).toNat - 2

end

end A186304.P10080277361339839010

namespace A186304

/-- `A094712(A133043(n+1))-2` -/
def P10080277361339839010.Spec : Prop :=
  ∀ n, P10080277361339839010.a n = A186304 (n + 1)

end A186304

/-! ## A186304.P7528720170492158538

`∩[A004628(n+1), A036844(n+1)]-2`
-/

namespace A186304.P7528720170492158538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036844 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A186304.P7528720170492158538

namespace A186304

/-- `∩[A004628(n+1), A036844(n+1)]-2` -/
def P7528720170492158538.Spec : Prop :=
  ∀ n, P7528720170492158538.a n = A186304 (n + 1)

end A186304

/-! ## A186304.P13227387233282187119

`∩[A001132(n+1), A120127(n+1)]-2`
-/

namespace A186304.P13227387233282187119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120127 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A186304.P13227387233282187119

namespace A186304

/-- `∩[A001132(n+1), A120127(n+1)]-2` -/
def P13227387233282187119.Spec : Prop :=
  ∀ n, P13227387233282187119.a n = A186304 (n + 1)

end A186304

/-! ## A186304.P17444959294654211883

`∩[A003628(n+1), A120127(n+1)]-2`
-/

namespace A186304.P17444959294654211883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120127 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A186304.P17444959294654211883

namespace A186304

/-- `∩[A003628(n+1), A120127(n+1)]-2` -/
def P17444959294654211883.Spec : Prop :=
  ∀ n, P17444959294654211883.a n = A186304 (n + 1)

end A186304

/-! ## A186304.P5624785062543746355

`∩[A045442(n+1), A120127(n+1)]-2`
-/

namespace A186304.P5624785062543746355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120127 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A186304.P5624785062543746355

namespace A186304

/-- `∩[A045442(n+1), A120127(n+1)]-2` -/
def P5624785062543746355.Spec : Prop :=
  ∀ n, P5624785062543746355.a n = A186304 (n + 1)

end A186304

/-! ## A186304.P438844018493949046

`∩[A120127(n+1), A216690(n+1)]-2`
-/

namespace A186304.P438844018493949046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216690 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A186304.P438844018493949046

namespace A186304

/-- `∩[A120127(n+1), A216690(n+1)]-2` -/
def P438844018493949046.Spec : Prop :=
  ∀ n, P438844018493949046.a n = A186304 (n + 1)

end A186304

/-! ## A186304.P1902007201028153687

`∩[A120127(n+1), A216735(n+1)]-2`
-/

namespace A186304.P1902007201028153687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216735 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A186304.P1902007201028153687

namespace A186304

/-- `∩[A120127(n+1), A216735(n+1)]-2` -/
def P1902007201028153687.Spec : Prop :=
  ∀ n, P1902007201028153687.a n = A186304 (n + 1)

end A186304

/-! ## A186304.P905716740146558706

`∩[A120127(n+1), A216739(n+1)]-2`
-/

namespace A186304.P905716740146558706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216739 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A186304.P905716740146558706

namespace A186304

/-- `∩[A120127(n+1), A216739(n+1)]-2` -/
def P905716740146558706.Spec : Prop :=
  ∀ n, P905716740146558706.a n = A186304 (n + 1)

end A186304

/-! ## A186304.P15871239118764139221

`∩[A038873(n+2), A120127(n+2)]-2`
-/

namespace A186304.P15871239118764139221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120127 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A186304.P15871239118764139221

namespace A186304

/-- `∩[A038873(n+2), A120127(n+2)]-2` -/
def P15871239118764139221.Spec : Prop :=
  ∀ n, P15871239118764139221.a n = A186304 (n + 1)

end A186304

/-! ## A186304.P904377834578531269

`∩[A045352(n+2), A120127(n+2)]-2`
-/

namespace A186304.P904377834578531269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045352 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120127 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A186304.P904377834578531269

namespace A186304

/-- `∩[A045352(n+2), A120127(n+2)]-2` -/
def P904377834578531269.Spec : Prop :=
  ∀ n, P904377834578531269.a n = A186304 (n + 1)

end A186304

/-! ## A186304.P14084732070629480894

`∩[A045355(n+2), A120127(n+2)]-2`
-/

namespace A186304.P14084732070629480894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120127 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A186304.P14084732070629480894

namespace A186304

/-- `∩[A045355(n+2), A120127(n+2)]-2` -/
def P14084732070629480894.Spec : Prop :=
  ∀ n, P14084732070629480894.a n = A186304 (n + 1)

end A186304

/-! ## A186304.P12627878581936393481

`∩[A094712(n+2), A120127(n+2)]-2`
-/

namespace A186304.P12627878581936393481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094712 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120127 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A186304.P12627878581936393481

namespace A186304

/-- `∩[A094712(n+2), A120127(n+2)]-2` -/
def P12627878581936393481.Spec : Prop :=
  ∀ n, P12627878581936393481.a n = A186304 (n + 1)

end A186304

/-!
# A186305: n^((p-1)/2) (mod p) for p = 29.

The programs for A186305, the canonical program `A186305.P13956118415875727039` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186305 has offset 0).

The definition of A186305 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186305.P13956118415875727039

`(n^14)%29`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A186305

/-- `(n^14)%29` -/
def P13956118415875727039.Spec : Prop :=
  ∀ n, (P13956118415875727039.a n : ℤ) = A186305 n

theorem P13956118415875727039.correct : P13956118415875727039.Spec := by
  intro n
  simp only [A186305]

end A186305

/-!
# A186306: Records in A186277.

The programs for A186306, there is no canonical definition to state claims against.
-/

/-! ## A186306.P13617063962860431874

`record[A186277(n+1)]`
-/

namespace A186306.P13617063962860431874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186306.P13617063962860431874

/-! ## A186306.P13057996470715973689

`A000019(A186307(n+1))`
-/

namespace A186306.P13057996470715973689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000019 (A186307 (n + 1)).toNat

end

end A186306.P13057996470715973689

/-! ## A186306.P12599603191450943904

`record[A000019(A000040(n+1))]`
-/

namespace A186306.P12599603191450943904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000019 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186306.P12599603191450943904

/-! ## A186306.P12684455544724842330

`record[A000019(A003172(n+1))]`
-/

namespace A186306.P12684455544724842330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000019 (A003172 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186306.P12684455544724842330

/-!
# A186307: Prime degrees of polynomials where records occur in A186277.

The programs for A186307, there is no canonical definition to state claims against.
-/

/-! ## A186307.P4870256693654295374

`∩[A002200(n+1), A121208(n+1)]`
-/

namespace A186307.P4870256693654295374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186307.P4870256693654295374

/-! ## A186307.P14211167634815640634

`∩[A042966(n+1), A121208(n+1)]`
-/

namespace A186307.P14211167634815640634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186307.P14211167634815640634

/-! ## A186307.P8699239809647146846

`∩[A002200(n+1), A291453(n+1)]`
-/

namespace A186307.P8699239809647146846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186307.P8699239809647146846

/-! ## A186307.P1805421622130117414

`∩[A121208(n+1), A216496(n+1)]`
-/

namespace A186307.P1805421622130117414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186307.P1805421622130117414

/-! ## A186307.P1978304255057022960

`∩[A121208(n+1), A216881(n+1)]`
-/

namespace A186307.P1978304255057022960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186307.P1978304255057022960

/-!
# A186308: Number of lobsters with n nodes that are not caterpillars.

The programs for A186308, there is no canonical definition to state claims against.
-/

/-! ## A186308.P16186357821300106635

`A130131(n+3)-A005418(n+1)`
-/

namespace A186308.P16186357821300106635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130131 (n + 3) - A005418 (n + 1)

end

end A186308.P16186357821300106635

/-! ## A186308.P12063624353521824507

`ceil((A001281(A268462(n))-A268598(n))/8)`
-/

namespace A186308.P12063624353521824507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001281 (A268462 n).toNat - A268598 n : ℚ) / 8⌉

end

end A186308.P12063624353521824507

/-! ## A186308.P15111000566032728046

`A051889(A326445(∑[n]))`
-/

namespace A186308.P15111000566032728046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A326445 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A186308.P15111000566032728046

/-! ## A186308.P12836121749590468476

`A085861(A192890(n)+2)`
-/

namespace A186308.P12836121749590468476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085861 (A192890 n + 2).toNat

end

end A186308.P12836121749590468476

/-! ## A186308.P16014566619151975059

`A393562(A056299(n+2))`
-/

namespace A186308.P16014566619151975059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393562 (A056299 (n + 2)).toNat

end

end A186308.P16014566619151975059

/-!
# A186310: Total Wiener index of star-like trees with n edges.

The programs for A186310, there is no canonical definition to state claims against.
-/

/-! ## A186310.P1738454582688217246

`A014480(n)-A107393(A006880(n))`
-/

namespace A186310.P1738454582688217246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014480 n - A107393 (A006880 n).toNat

end

end A186310.P1738454582688217246

/-! ## A186310.P15115803352459424041

`xor(A279476(2*n), A380534(A186840(n+1)))`
-/

namespace A186310.P15115803352459424041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A279476 (2 * n)) (A380534 (A186840 (n + 1)).toNat)

end

end A186310.P15115803352459424041

/-!
# A186312: There appear to be at least n lower twin primes between x/2 and x for all x >= a(n).

The programs for A186312, there is no canonical definition to state claims against.
-/

/-! ## A186312.P2954663786324241434

`A047934(eq[4, A010554(3*(n+1))])`
-/

namespace A186312.P2954663786324241434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047934 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186312.P2954663786324241434

/-!
# A186314: Number of ternary strings of length n which contain 01.

The programs for A186314, the canonical program `A186314.P17552666734171357615` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186314 has offset 0).

The definition of A186314 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186314.P16130199438716988757

`3*a(n-1)+3^(n-2)-a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A186314.P16130199438716988757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0] fun n a =>
  3 * a (n - 1) + ((3 : ℚ) ^ ((n : ℤ) - 2 : ℤ) - a (n - 2))

end

end A186314.P16130199438716988757

namespace A186314

/-- `3*a(n-1)+3^(n-2)-a(n-2)` -/
def P16130199438716988757.Spec : Prop :=
  ∀ n, P16130199438716988757.a n = (A186314 n : ℚ)

end A186314

/-! ## A186314.P17552666734171357615

`3^n-A001906(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A186314

/-- `3^n-A001906(n+1)` -/
def P17552666734171357615.Spec : Prop :=
  ∀ n, P17552666734171357615.a n = A186314 n

theorem P17552666734171357615.correct : P17552666734171357615.Spec := by
  intro n
  simp only [A186314]

end A186314

/-! ## A186314.P16937279250741105925

`ogf(x^2/(1-6x+10x^2-3x^3))`
-/

namespace A186314.P16937279250741105925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -6, 10, -3] n

end

end A186314.P16937279250741105925

namespace A186314

/-- `ogf(x^2/(1-6x+10x^2-3x^3))` -/
def P16937279250741105925.Spec : Prop :=
  ∀ n, P16937279250741105925.a n = A186314 n

end A186314

/-! ## A186314.P12100871634983842116

`3^n-∑[floor(ϕ²*a(n-1))]` with `a(0)=1, a(1)=2`
-/

namespace A186314.P12100871634983842116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  ⌊Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186314.P12100871634983842116

namespace A186314

/-- `3^n-∑[floor(ϕ²*a(n-1))]` -/
def P12100871634983842116.Spec : Prop :=
  ∀ n, P12100871634983842116.a n = A186314 n

end A186314

/-! ## A186314.P12154293067373080883

`Δ[A262600(n+1)]`
-/

namespace A186314.P12154293067373080883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186314.P12154293067373080883

namespace A186314

/-- `Δ[A262600(n+1)]` -/
def P12154293067373080883.Spec : Prop :=
  ∀ n, P12154293067373080883.a n = A186314 n

end A186314

/-! ## A186314.P2367784246947667155

`3^n-A088305(n+1)`
-/

namespace A186314.P2367784246947667155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A088305 (n + 1)

end

end A186314.P2367784246947667155

namespace A186314

/-- `3^n-A088305(n+1)` -/
def P2367784246947667155.Spec : Prop :=
  ∀ n, P2367784246947667155.a n = A186314 n

end A186314

/-! ## A186314.P17348858602913548884

`3^n-A052952(2*n)`
-/

namespace A186314.P17348858602913548884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A052952 (2 * n)

end

end A186314.P17348858602913548884

namespace A186314

/-- `3^n-A052952(2*n)` -/
def P17348858602913548884.Spec : Prop :=
  ∀ n, P17348858602913548884.a n = A186314 n

end A186314

/-! ## A186314.P18336684661041046363

`3^n-∑[A001519(n+1)]`
-/

namespace A186314.P18336684661041046363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186314.P18336684661041046363

namespace A186314

/-- `3^n-∑[A001519(n+1)]` -/
def P18336684661041046363.Spec : Prop :=
  ∀ n, P18336684661041046363.a n = A186314 n

end A186314

/-! ## A186314.P1917689643312275003

`3^n-∑[A000045(Δ[n²])]`
-/

namespace A186314.P1917689643312275003
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186314.P1917689643312275003

namespace A186314

/-- `3^n-∑[A000045(Δ[n²])]` -/
def P1917689643312275003.Spec : Prop :=
  ∀ n, P1917689643312275003.a n = A186314 n

end A186314

/-! ## A186314.P1274574752915322262

`3^n-A000045(2*(n+1))`
-/

namespace A186314.P1274574752915322262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A000045 (2 * (n + 1))

end

end A186314.P1274574752915322262

namespace A186314

/-- `3^n-A000045(2*(n+1))` -/
def P1274574752915322262.Spec : Prop :=
  ∀ n, P1274574752915322262.a n = A186314 n

end A186314

/-! ## A186314.P18322542545941660404

`3^n-Δ[Δ[A000045(2*n)]]`
-/

namespace A186314.P18322542545941660404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - (f1 (n + 1) - f1 n)

end

end A186314.P18322542545941660404

namespace A186314

/-- `3^n-Δ[Δ[A000045(2*n)]]` -/
def P18322542545941660404.Spec : Prop :=
  ∀ n, P18322542545941660404.a n = A186314 n

end A186314

/-! ## A186314.P6813351610763797349

`3^n-(A001611(2*(n+1))-1)`
-/

namespace A186314.P6813351610763797349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - (A001611 (2 * (n + 1)) - 1)

end

end A186314.P6813351610763797349

namespace A186314

/-- `3^n-(A001611(2*(n+1))-1)` -/
def P6813351610763797349.Spec : Prop :=
  ∀ n, P6813351610763797349.a n = A186314 n

end A186314

/-! ## A186314.P17365548952128275834

`Δ[-A000045(2*n+1)]+3^n`
-/

namespace A186314.P17365548952128275834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A000045 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (3 ^ n : ℤ)

end

end A186314.P17365548952128275834

namespace A186314

/-- `Δ[-A000045(2*n+1)]+3^n` -/
def P17365548952128275834.Spec : Prop :=
  ∀ n, P17365548952128275834.a n = A186314 n

end A186314

/-! ## A186314.P7846726951703592274

`A024023(n)-A035508(n)`
-/

namespace A186314.P7846726951703592274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 n - A035508 n

end

end A186314.P7846726951703592274

namespace A186314

/-- `A024023(n)-A035508(n)` -/
def P7846726951703592274.Spec : Prop :=
  ∀ n, P7846726951703592274.a n = A186314 n

end A186314

/-! ## A186314.P11590952055254623671

`A001047(n)-A105693(n)`
-/

namespace A186314.P11590952055254623671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 n - A105693 n

end

end A186314.P11590952055254623671

namespace A186314

/-- `A001047(n)-A105693(n)` -/
def P11590952055254623671.Spec : Prop :=
  ∀ n, P11590952055254623671.a n = A186314 n

end A186314

/-! ## A186314.P5226745325859351238

`A105723(n)-A128533(n)`
-/

namespace A186314.P5226745325859351238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105723 n - A128533 n

end

end A186314.P5226745325859351238

namespace A186314

/-- `A105723(n)-A128533(n)` -/
def P5226745325859351238.Spec : Prop :=
  ∀ n, P5226745325859351238.a n = A186314 n

end A186314

/-! ## A186314.P2502045731392444083

`A000244(n)-A147600(2*n)`
-/

namespace A186314.P2502045731392444083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n - A147600 (2 * n)

end

end A186314.P2502045731392444083

namespace A186314

/-- `A000244(n)-A147600(2*n)` -/
def P2502045731392444083.Spec : Prop :=
  ∀ n, P2502045731392444083.a n = A186314 n

end A186314

/-! ## A186314.P16058150625517928397

`A000244(n)-Δ[A000045(Δ[n²])]`
-/

namespace A186314.P16058150625517928397
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n - (f1 (n + 1) - f1 n)

end

end A186314.P16058150625517928397

namespace A186314

/-- `A000244(n)-Δ[A000045(Δ[n²])]` -/
def P16058150625517928397.Spec : Prop :=
  ∀ n, P16058150625517928397.a n = A186314 n

end A186314

/-! ## A186314.P16843818294812183193

`A285197(n+1)-A124302(n+1)`
-/

namespace A186314.P16843818294812183193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285197 (n + 1) - A124302 (n + 1)

end

end A186314.P16843818294812183193

namespace A186314

/-- `A285197(n+1)-A124302(n+1)` -/
def P16843818294812183193.Spec : Prop :=
  ∀ n, P16843818294812183193.a n = A186314 n

end A186314

/-! ## A186314.P10358994266117748516

`A262600(n+2)-A262600(n+1)`
-/

namespace A186314.P10358994266117748516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262600 (n + 2) - A262600 (n + 1)

end

end A186314.P10358994266117748516

namespace A186314

/-- `A262600(n+2)-A262600(n+1)` -/
def P10358994266117748516.Spec : Prop :=
  ∀ n, P10358994266117748516.a n = A186314 n

end A186314

/-!
# A186315: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the squares and hexagonal numbers. Complement of A186316.

The programs for A186315, the canonical program `A186315.P16986293479875845827` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186315 has offset 1).

The definition of A186315 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186315.P8005765979495551264

`comp[floor(sqrt(n*(2*(n-1)+1)))+n]`
-/

namespace A186315.P8005765979495551264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ((n : ℤ) * (2 * ((n : ℤ) - 1) + 1)) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A186315.P8005765979495551264

namespace A186315

/-- `comp[floor(sqrt(n*(2*(n-1)+1)))+n]` -/
def P8005765979495551264.Spec : Prop :=
  ∀ n, (P8005765979495551264.a n : ℤ) = A186315 (n + 1)

end A186315

/-! ## A186315.P12101729014020125016

`∑[char[A184580(n+1)]+1]`
-/

namespace A186315.P12101729014020125016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184580 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186315.P12101729014020125016

namespace A186315

/-- `∑[char[A184580(n+1)]+1]` -/
def P12101729014020125016.Spec : Prop :=
  ∀ n, (P12101729014020125016.a n : ℤ) = A186315 (n + 1)

end A186315

/-! ## A186315.P16986293479875845827

`floor((A190337(n+1)+n+2)/4)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A186315

/-- `floor((A190337(n+1)+n+2)/4)` -/
def P16986293479875845827.Spec : Prop :=
  ∀ n, P16986293479875845827.a n = A186315 (n + 1)

theorem P16986293479875845827.correct : P16986293479875845827.Spec := by
  intro n
  simp only [A186315, Nat.add_sub_cancel]

end A186315

/-! ## A186315.P11429198195024448312

`floor(sqrt(A085762(n+2)))`
-/

namespace A186315.P11429198195024448312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A085762 (n + 2))

end

end A186315.P11429198195024448312

namespace A186315

/-- `floor(sqrt(A085762(n+2)))` -/
def P11429198195024448312.Spec : Prop :=
  ∀ n, P11429198195024448312.a n = A186315 (n + 1)

end A186315

/-! ## A186315.P18083050081122451306

`A008619(A186222(n+1)-n)+n`
-/

namespace A186315.P18083050081122451306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A186222 (n + 1) - (n : ℤ)).toNat + (n : ℤ)

end

end A186315.P18083050081122451306

namespace A186315

/-- `A008619(A186222(n+1)-n)+n` -/
def P18083050081122451306.Spec : Prop :=
  ∀ n, P18083050081122451306.a n = A186315 (n + 1)

end A186315

/-! ## A186315.P18266893030765459332

`floor((A001952(2*(n+1))+1)/4)`
-/

namespace A186315.P18266893030765459332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001952 (2 * (n + 1)) + 1 : ℚ) / 4⌋

end

end A186315.P18266893030765459332

namespace A186315

/-- `floor((A001952(2*(n+1))+1)/4)` -/
def P18266893030765459332.Spec : Prop :=
  ∀ n, P18266893030765459332.a n = A186315 (n + 1)

end A186315

/-! ## A186315.P6643115495101950534

`A061288(A003153(n+1))`
-/

namespace A186315.P6643115495101950534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061288 (A003153 (n + 1)).toNat

end

end A186315.P6643115495101950534

namespace A186315

/-- `A061288(A003153(n+1))` -/
def P6643115495101950534.Spec : Prop :=
  ∀ n, P6643115495101950534.a n = A186315 (n + 1)

end A186315

/-! ## A186315.P8277723552519088179

`A049474(A186222(n+1))`
-/

namespace A186315.P8277723552519088179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (A186222 (n + 1)).toNat

end

end A186315.P8277723552519088179

namespace A186315

/-- `A049474(A186222(n+1))` -/
def P8277723552519088179.Spec : Prop :=
  ∀ n, P8277723552519088179.a n = A186315 (n + 1)

end A186315

/-! ## A186315.P6358514784237287555

`A061288(A186222(n+1)+1)`
-/

namespace A186315.P6358514784237287555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061288 (A186222 (n + 1) + 1).toNat

end

end A186315.P6358514784237287555

namespace A186315

/-- `A061288(A186222(n+1)+1)` -/
def P6358514784237287555.Spec : Prop :=
  ∀ n, P6358514784237287555.a n = A186315 (n + 1)

end A186315

/-! ## A186315.P2282087206843838519

`A061288(A022846(n+1)+n+1)`
-/

namespace A186315.P2282087206843838519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061288 (A022846 (n + 1) + (n + 1 : ℤ)).toNat

end

end A186315.P2282087206843838519

namespace A186315

/-- `A061288(A022846(n+1)+n+1)` -/
def P2282087206843838519.Spec : Prop :=
  ∀ n, P2282087206843838519.a n = A186315 (n + 1)

end A186315

/-! ## A186315.P18095825810986053359

`A061288(A186221(A022846(n+1)))`
-/

namespace A186315.P18095825810986053359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061288 (A186221 (A022846 (n + 1)).toNat).toNat

end

end A186315.P18095825810986053359

namespace A186315

/-- `A061288(A186221(A022846(n+1)))` -/
def P18095825810986053359.Spec : Prop :=
  ∀ n, P18095825810986053359.a n = A186315 (n + 1)

end A186315

/-! ## A186315.P857348200523276380

`A002265(floor(2*(n+1)*sqrt(2))+1)+n+1`
-/

namespace A186315.P857348200523276380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (⌊(2 * (n + 1) : ℝ) * Real.sqrt (2 : ℝ)⌋ + 1).toNat + (n + 1 : ℤ)

end

end A186315.P857348200523276380

namespace A186315

/-- `A002265(floor(2*(n+1)*sqrt(2))+1)+n+1` -/
def P857348200523276380.Spec : Prop :=
  ∀ n, P857348200523276380.a n = A186315 (n + 1)

end A186315

/-! ## A186315.P15913629584058247563

`A008619(A186222(n+1)+n)`
-/

namespace A186315.P15913629584058247563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A186222 (n + 1) + (n : ℤ)).toNat

end

end A186315.P15913629584058247563

namespace A186315

/-- `A008619(A186222(n+1)+n)` -/
def P15913629584058247563.Spec : Prop :=
  ∀ n, P15913629584058247563.a n = A186315 (n + 1)

end A186315

/-! ## A186315.P16507964121667657568

`A008619(A081477(2*(n+1))-2)`
-/

namespace A186315.P16507964121667657568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A081477 (2 * (n + 1)) - 2).toNat

end

end A186315.P16507964121667657568

namespace A186315

/-- `A008619(A081477(2*(n+1))-2)` -/
def P16507964121667657568.Spec : Prop :=
  ∀ n, P16507964121667657568.a n = A186315 (n + 1)

end A186315

/-! ## A186315.P6504749347137429004

`A004526(∑[A214848(n)+2])`
-/

namespace A186315.P6504749347137429004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214848 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A186315.P6504749347137429004

namespace A186315

/-- `A004526(∑[A214848(n)+2])` -/
def P6504749347137429004.Spec : Prop :=
  ∀ n, P6504749347137429004.a n = A186315 (n + 1)

end A186315

/-! ## A186315.P8652666799122686529

`A004526(A081477(2*(n+1)))`
-/

namespace A186315.P8652666799122686529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A081477 (2 * (n + 1))).toNat

end

end A186315.P8652666799122686529

namespace A186315

/-- `A004526(A081477(2*(n+1)))` -/
def P8652666799122686529.Spec : Prop :=
  ∀ n, P8652666799122686529.a n = A186315 (n + 1)

end A186315

/-! ## A186315.P7113076645128384617

`A004526(A001952(2*(n+1))-A001952(n+1))`
-/

namespace A186315.P7113076645128384617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A001952 (2 * (n + 1)) - A001952 (n + 1)).toNat

end

end A186315.P7113076645128384617

namespace A186315

/-- `A004526(A001952(2*(n+1))-A001952(n+1))` -/
def P7113076645128384617.Spec : Prop :=
  ∀ n, P7113076645128384617.a n = A186315 (n + 1)

end A186315

/-! ## A186315.P9130426037962996808

`A194990(A022846(n+1)+A003152(2*n+1))`
-/

namespace A186315.P9130426037962996808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194990 (A022846 (n + 1) + A003152 (2 * n + 1)).toNat

end

end A186315.P9130426037962996808

namespace A186315

/-- `A194990(A022846(n+1)+A003152(2*n+1))` -/
def P9130426037962996808.Spec : Prop :=
  ∀ n, P9130426037962996808.a n = A186315 (n + 1)

end A186315

/-! ## A186315.P15299583624934722525

`A172474(A003151(2*(n+1))+1)`
-/

namespace A186315.P15299583624934722525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172474 (A003151 (2 * (n + 1)) + 1).toNat

end

end A186315.P15299583624934722525

namespace A186315

/-- `A172474(A003151(2*(n+1))+1)` -/
def P15299583624934722525.Spec : Prop :=
  ∀ n, P15299583624934722525.a n = A186315 (n + 1)

end A186315

/-!
# A186316: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the squares and hexagonal numbers. Complement of A186315.

The programs for A186316, the canonical program `A186316.P1630878402730518717` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186316 has offset 1).

The definition of A186316 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186316.P1630878402730518717

`A184580(n+1)+1+n`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A186316

/-- `A184580(n+1)+1+n` -/
def P1630878402730518717.Spec : Prop :=
  ∀ n, P1630878402730518717.a n = A186316 (n + 1)

theorem P1630878402730518717.correct : P1630878402730518717.Spec := by
  intro n
  simp only [A186316, Nat.add_sub_cancel]

end A186316

/-! ## A186316.P184687269611364078

`A080755(A184580(n+1))`
-/

namespace A186316.P184687269611364078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080755 (A184580 (n + 1)).toNat

end

end A186316.P184687269611364078

namespace A186316

/-- `A080755(A184580(n+1))` -/
def P184687269611364078.Spec : Prop :=
  ∀ n, P184687269611364078.a n = A186316 (n + 1)

end A186316

/-! ## A186316.P11596782657926215961

`A186221(Δ[n²])-n`
-/

namespace A186316.P11596782657926215961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186221 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A186316.P11596782657926215961

namespace A186316

/-- `A186221(Δ[n²])-n` -/
def P11596782657926215961.Spec : Prop :=
  ∀ n, P11596782657926215961.a n = A186316 (n + 1)

end A186316

/-! ## A186316.P13356650912235156799

`A061288(Δ[n²])+n+1`
-/

namespace A186316.P13356650912235156799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061288 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n + 1 : ℤ)

end

end A186316.P13356650912235156799

namespace A186316

/-- `A061288(Δ[n²])+n+1` -/
def P13356650912235156799.Spec : Prop :=
  ∀ n, P13356650912235156799.a n = A186316 (n + 1)

end A186316

/-! ## A186316.P416477541399519960

`floor(A086377(2*(n+1))/2)`
-/

namespace A186316.P416477541399519960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A086377 (2 * (n + 1)) : ℚ) / 2⌋

end

end A186316.P416477541399519960

namespace A186316

/-- `floor(A086377(2*(n+1))/2)` -/
def P416477541399519960.Spec : Prop :=
  ∀ n, P416477541399519960.a n = A186316 (n + 1)

end A186316

/-! ## A186316.P8629980795006994683

`A065033(2*n+1)+A061288(2*n+1)`
-/

namespace A186316.P8629980795006994683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n + 1) + A061288 (2 * n + 1)

end

end A186316.P8629980795006994683

namespace A186316

/-- `A065033(2*n+1)+A061288(2*n+1)` -/
def P8629980795006994683.Spec : Prop :=
  ∀ n, P8629980795006994683.a n = A186316 (n + 1)

end A186316

/-! ## A186316.P16471414987003760895

`A110654(2*n+1)+A061288(2*n+1)`
-/

namespace A186316.P16471414987003760895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (2 * n + 1) + A061288 (2 * n + 1)

end

end A186316.P16471414987003760895

namespace A186316

/-- `A110654(2*n+1)+A061288(2*n+1)` -/
def P16471414987003760895.Spec : Prop :=
  ∀ n, P16471414987003760895.a n = A186316 (n + 1)

end A186316

/-! ## A186316.P10727081376104035366

`A065033(2*n+1)+A065033(A184117(2*n+1))`
-/

namespace A186316.P10727081376104035366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n + 1) + A065033 (A184117 (2 * n + 1)).toNat

end

end A186316.P10727081376104035366

namespace A186316

/-- `A065033(2*n+1)+A065033(A184117(2*n+1))` -/
def P10727081376104035366.Spec : Prop :=
  ∀ n, P10727081376104035366.a n = A186316 (n + 1)

end A186316

/-! ## A186316.P12446353888623455647

`A061288(A186221(2*n+1)+1)`
-/

namespace A186316.P12446353888623455647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061288 (A186221 (2 * n + 1) + 1).toNat

end

end A186316.P12446353888623455647

namespace A186316

/-- `A061288(A186221(2*n+1)+1)` -/
def P12446353888623455647.Spec : Prop :=
  ∀ n, P12446353888623455647.a n = A186316 (n + 1)

end A186316

/-! ## A186316.P10878459571409930516

`A004526(A086377(2*(n+1)))`
-/

namespace A186316.P10878459571409930516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A086377 (2 * (n + 1))).toNat

end

end A186316.P10878459571409930516

namespace A186316

/-- `A004526(A086377(2*(n+1)))` -/
def P10878459571409930516.Spec : Prop :=
  ∀ n, P10878459571409930516.a n = A186316 (n + 1)

end A186316

/-! ## A186316.P10660228900481740950

`A008619(A086377(2*(n+1))-2)`
-/

namespace A186316.P10660228900481740950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A086377 (2 * (n + 1)) - 2).toNat

end

end A186316.P10660228900481740950

namespace A186316

/-- `A008619(A086377(2*(n+1))-2)` -/
def P10660228900481740950.Spec : Prop :=
  ∀ n, P10660228900481740950.a n = A186316 (n + 1)

end A186316

/-! ## A186316.P17164246821587901440

`A097508(A080652(2*(n+1))+n)`
-/

namespace A186316.P17164246821587901440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 (A080652 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A186316.P17164246821587901440

namespace A186316

/-- `A097508(A080652(2*(n+1))+n)` -/
def P17164246821587901440.Spec : Prop :=
  ∀ n, P17164246821587901440.a n = A186316 (n + 1)

end A186316

/-! ## A186316.P4933268325345157882

`A004526(A184118(2*n+1))-n`
-/

namespace A186316.P4933268325345157882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A184118 (2 * n + 1)).toNat - (n : ℤ)

end

end A186316.P4933268325345157882

namespace A186316

/-- `A004526(A184118(2*n+1))-n` -/
def P4933268325345157882.Spec : Prop :=
  ∀ n, P4933268325345157882.a n = A186316 (n + 1)

end A186316

/-! ## A186316.P10604857251995799896

`A140106(A184119(2*(n+1)))-n`
-/

namespace A186316.P10604857251995799896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A184119 (2 * (n + 1))).toNat - (n : ℤ)

end

end A186316.P10604857251995799896

namespace A186316

/-- `A140106(A184119(2*(n+1)))-n` -/
def P10604857251995799896.Spec : Prop :=
  ∀ n, P10604857251995799896.a n = A186316 (n + 1)

end A186316

/-! ## A186316.P4532213318844043542

`A049472(A049473(A049473(A001954(2*n+1))))`
-/

namespace A186316.P4532213318844043542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (A049473 (A049473 (A001954 (2 * n + 1)).toNat).toNat).toNat

end

end A186316.P4532213318844043542

namespace A186316

/-- `A049472(A049473(A049473(A001954(2*n+1))))` -/
def P4532213318844043542.Spec : Prop :=
  ∀ n, P4532213318844043542.a n = A186316 (n + 1)

end A186316

/-! ## A186316.P12546246088767767085

`A002265(A215247(2*(n+1))+1)`
-/

namespace A186316.P12546246088767767085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A215247 (2 * (n + 1)) + 1).toNat

end

end A186316.P12546246088767767085

namespace A186316

/-- `A002265(A215247(2*(n+1))+1)` -/
def P12546246088767767085.Spec : Prop :=
  ∀ n, P12546246088767767085.a n = A186316 (n + 1)

end A186316

/-! ## A186316.P9704834429300032918

`A002265(2*A086377(2*(n+1)))`
-/

namespace A186316.P9704834429300032918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A086377 (2 * (n + 1))).toNat

end

end A186316.P9704834429300032918

namespace A186316

/-- `A002265(2*A086377(2*(n+1)))` -/
def P9704834429300032918.Spec : Prop :=
  ∀ n, P9704834429300032918.a n = A186316 (n + 1)

end A186316

/-!
# A186317: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f and g are the squares and hexagonal numbers. Complement of A186318.

The programs for A186317, the canonical program `A186317.P4690432201935391805` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186317 has offset 1).

The definition of A186317 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186317.P4690432201935391805

`∑[gcd(2, Δ[A076816(n)])]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A186317

/-- `∑[gcd(2, Δ[A076816(n)])]` -/
def P4690432201935391805.Spec : Prop :=
  ∀ n, (P4690432201935391805.a n : ℤ) = A186317 (n + 1)

theorem P4690432201935391805.correct : P4690432201935391805.Spec := by
  intro n
  simp only [A186317, Nat.add_sub_cancel]

end A186317

/-! ## A186317.P1807402766887629307

`A008619(A214857(n+1))+n`
-/

namespace A186317.P1807402766887629307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A214857 (n + 1)).toNat + (n : ℤ)

end

end A186317.P1807402766887629307

namespace A186317

/-- `A008619(A214857(n+1))+n` -/
def P1807402766887629307.Spec : Prop :=
  ∀ n, P1807402766887629307.a n = A186317 (n + 1)

end A186317

/-! ## A186317.P10242486610743831778

`A008619(A186220(n+1)-n)+n`
-/

namespace A186317.P10242486610743831778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A186220 (n + 1) - (n : ℤ)).toNat + (n : ℤ)

end

end A186317.P10242486610743831778

namespace A186317

/-- `A008619(A186220(n+1)-n)+n` -/
def P10242486610743831778.Spec : Prop :=
  ∀ n, P10242486610743831778.a n = A186317 (n + 1)

end A186317

/-! ## A186317.P12476085415425324456

`A049474(A186220(n+1))`
-/

namespace A186317.P12476085415425324456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (A186220 (n + 1)).toNat

end

end A186317.P12476085415425324456

namespace A186317

/-- `A049474(A186220(n+1))` -/
def P12476085415425324456.Spec : Prop :=
  ∀ n, P12476085415425324456.a n = A186317 (n + 1)

end A186317

/-! ## A186317.P6404638814949426512

`A061288(A186220(n+1)+1)`
-/

namespace A186317.P6404638814949426512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061288 (A186220 (n + 1) + 1).toNat

end

end A186317.P6404638814949426512

namespace A186317

/-- `A061288(A186220(n+1)+1)` -/
def P6404638814949426512.Spec : Prop :=
  ∀ n, P6404638814949426512.a n = A186317 (n + 1)

end A186317

/-! ## A186317.P2710400501151424409

`A049474(A214857(n+1)+n)`
-/

namespace A186317.P2710400501151424409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (A214857 (n + 1) + (n : ℤ)).toNat

end

end A186317.P2710400501151424409

namespace A186317

/-- `A049474(A214857(n+1)+n)` -/
def P2710400501151424409.Spec : Prop :=
  ∀ n, P2710400501151424409.a n = A186317 (n + 1)

end A186317

/-! ## A186317.P8333687160375927240

`A008619(A186220(n+1)+n)`
-/

namespace A186317.P8333687160375927240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A186220 (n + 1) + (n : ℤ)).toNat

end

end A186317.P8333687160375927240

namespace A186317

/-- `A008619(A186220(n+1)+n)` -/
def P8333687160375927240.Spec : Prop :=
  ∀ n, P8333687160375927240.a n = A186317 (n + 1)

end A186317

/-! ## A186317.P3463248355289197324

`A008624(2*(A186220(n+1)+n))`
-/

namespace A186317.P3463248355289197324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (2 * (A186220 (n + 1) + (n : ℤ))).toNat

end

end A186317.P3463248355289197324

namespace A186317

/-- `A008624(2*(A186220(n+1)+n))` -/
def P3463248355289197324.Spec : Prop :=
  ∀ n, P3463248355289197324.a n = A186317 (n + 1)

end A186317

/-! ## A186317.P6395923768115777569

`A008624(A005843(A186220(n+1)+n))`
-/

namespace A186317.P6395923768115777569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A005843 (A186220 (n + 1) + (n : ℤ)).toNat).toNat

end

end A186317.P6395923768115777569

namespace A186317

/-- `A008624(A005843(A186220(n+1)+n))` -/
def P6395923768115777569.Spec : Prop :=
  ∀ n, P6395923768115777569.a n = A186317 (n + 1)

end A186317

/-! ## A186317.P6210707045506887870

`A000267(∑[A004526(A187973(n+1))])`
-/

namespace A186317.P6210707045506887870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A187973 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A186317.P6210707045506887870

namespace A186317

/-- `A000267(∑[A004526(A187973(n+1))])` -/
def P6210707045506887870.Spec : Prop :=
  ∀ n, P6210707045506887870.a n = A186317 (n + 1)

end A186317

/-! ## A186317.P17911877075821437148

`A000267(∑[A123108(A187973(n+1))])`
-/

namespace A186317.P17911877075821437148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A187973 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A186317.P17911877075821437148

namespace A186317

/-- `A000267(∑[A123108(A187973(n+1))])` -/
def P17911877075821437148.Spec : Prop :=
  ∀ n, P17911877075821437148.a n = A186317 (n + 1)

end A186317

/-! ## A186317.P15741797052414696498

`A008619(A003056((n+1)²)+1)+n`
-/

namespace A186317.P15741797052414696498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A003056 ((n + 1) ^ 2) + 1).toNat + (n : ℤ)

end

end A186317.P15741797052414696498

namespace A186317

/-- `A008619(A003056((n+1)²)+1)+n` -/
def P15741797052414696498.Spec : Prop :=
  ∀ n, P15741797052414696498.a n = A186317 (n + 1)

end A186317

/-! ## A186317.P12961821074842171776

`A049474(A003056((n+1)²)+1+n)`
-/

namespace A186317.P12961821074842171776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (A003056 ((n + 1) ^ 2) + 1 + (n : ℤ)).toNat

end

end A186317.P12961821074842171776

namespace A186317

/-- `A049474(A003056((n+1)²)+1+n)` -/
def P12961821074842171776.Spec : Prop :=
  ∀ n, P12961821074842171776.a n = A186317 (n + 1)

end A186317

/-! ## A186317.P1141253735010318101

`A065033(A003056((n+1)²)+2)+n`
-/

namespace A186317.P1141253735010318101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A003056 ((n + 1) ^ 2) + 2).toNat + (n : ℤ)

end

end A186317.P1141253735010318101

namespace A186317

/-- `A065033(A003056((n+1)²)+2)+n` -/
def P1141253735010318101.Spec : Prop :=
  ∀ n, P1141253735010318101.a n = A186317 (n + 1)

end A186317

/-! ## A186317.P7021603901094656955

`A110654(A003056((n+1)²)+2)+n`
-/

namespace A186317.P7021603901094656955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A003056 ((n + 1) ^ 2) + 2).toNat + (n : ℤ)

end

end A186317.P7021603901094656955

namespace A186317

/-- `A110654(A003056((n+1)²)+2)+n` -/
def P7021603901094656955.Spec : Prop :=
  ∀ n, P7021603901094656955.a n = A186317 (n + 1)

end A186317

/-! ## A186317.P12414230453435883186

`A004526(A003056((n+1)²)+3)+n`
-/

namespace A186317.P12414230453435883186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A003056 ((n + 1) ^ 2) + 3).toNat + (n : ℤ)

end

end A186317.P12414230453435883186

namespace A186317

/-- `A004526(A003056((n+1)²)+3)+n` -/
def P12414230453435883186.Spec : Prop :=
  ∀ n, P12414230453435883186.a n = A186317 (n + 1)

end A186317

/-!
# A186318: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f and g are the squares and hexagonal numbers. Complement of A186317.

The programs for A186318, the canonical program `A186318.P8422483660332916554` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186318 has offset 1).

The definition of A186318 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186318.P8422483660332916554

`ceil(sqrt(∑[4*n+1])+n)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A186318

/-- `ceil(sqrt(∑[4*n+1])+n)` -/
def P8422483660332916554.Spec : Prop :=
  ∀ n, P8422483660332916554.a n = A186318 (n + 1)

theorem P8422483660332916554.correct : P8422483660332916554.Spec := by
  intro n
  simp only [A186318, Nat.add_sub_cancel]

end A186318

/-! ## A186318.P8775140694493646063

`ceil(sqrt(lcm(n+1, 2*n+1)))+n`
-/

namespace A186318.P8775140694493646063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Nat.lcm (n + 1) (2 * n + 1) : ℝ)⌉ + (n : ℤ)

end

end A186318.P8775140694493646063

namespace A186318

/-- `ceil(sqrt(lcm(n+1, 2*n+1)))+n` -/
def P8775140694493646063.Spec : Prop :=
  ∀ n, P8775140694493646063.a n = A186318 (n + 1)

end A186318

/-! ## A186318.P9734894557008419164

`A080820(Δ[n²])+n`
-/

namespace A186318.P9734894557008419164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080820 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n : ℤ)

end

end A186318.P9734894557008419164

namespace A186318

/-- `A080820(Δ[n²])+n` -/
def P9734894557008419164.Spec : Prop :=
  ∀ n, P9734894557008419164.a n = A186318 (n + 1)

end A186318

/-! ## A186318.P2132362644521929996

`A186219(Δ[n²])-n`
-/

namespace A186318.P2132362644521929996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186219 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A186318.P2132362644521929996

namespace A186318

/-- `A186219(Δ[n²])-n` -/
def P2132362644521929996.Spec : Prop :=
  ∀ n, P2132362644521929996.a n = A186318 (n + 1)

end A186318

/-! ## A186318.P11751875503338940296

`abs(A186219(2*n+1)-n)`
-/

namespace A186318.P11751875503338940296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A186219 (2 * n + 1) - (n : ℤ)|

end

end A186318.P11751875503338940296

namespace A186318

/-- `abs(A186219(2*n+1)-n)` -/
def P11751875503338940296.Spec : Prop :=
  ∀ n, P11751875503338940296.a n = A186318 (n + 1)

end A186318

/-! ## A186318.P14260731157210451713

`record[A080820(A000265(n+1))]+n`
-/

namespace A186318.P14260731157210451713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080820 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A186318.P14260731157210451713

namespace A186318

/-- `record[A080820(A000265(n+1))]+n` -/
def P14260731157210451713.Spec : Prop :=
  ∀ n, P14260731157210451713.a n = A186318 (n + 1)

end A186318

/-! ## A186318.P12445840272969299268

`record[A186219(n+1)-A006370(n)]`
-/

namespace A186318.P12445840272969299268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186219 (n + 1) - A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186318.P12445840272969299268

namespace A186318

/-- `record[A186219(n+1)-A006370(n)]` -/
def P12445840272969299268.Spec : Prop :=
  ∀ n, P12445840272969299268.a n = A186318 (n + 1)

end A186318

/-! ## A186318.P9069698800758339821

`record[A186219(n+1)-A064680(n)]`
-/

namespace A186318.P9069698800758339821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186219 (n + 1) - A064680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186318.P9069698800758339821

namespace A186318

/-- `record[A186219(n+1)-A064680(n)]` -/
def P9069698800758339821.Spec : Prop :=
  ∀ n, P9069698800758339821.a n = A186318 (n + 1)

end A186318

/-! ## A186318.P11951621024514237434

`record[A080820(n+1)-A176447(n)]`
-/

namespace A186318.P11951621024514237434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080820 (n + 1) - A176447 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186318.P11951621024514237434

namespace A186318

/-- `record[A080820(n+1)-A176447(n)]` -/
def P11951621024514237434.Spec : Prop :=
  ∀ n, P11951621024514237434.a n = A186318 (n + 1)

end A186318

/-! ## A186318.P3256817701090797609

`A061288(A186219(2*n+1)+1)`
-/

namespace A186318.P3256817701090797609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061288 (A186219 (2 * n + 1) + 1).toNat

end

end A186318.P3256817701090797609

namespace A186318

/-- `A061288(A186219(2*n+1)+1)` -/
def P3256817701090797609.Spec : Prop :=
  ∀ n, P3256817701090797609.a n = A186318 (n + 1)

end A186318

/-! ## A186318.P3248938179303335057

`floor(A360926(2*n+1)/2)`
-/

namespace A186318.P3248938179303335057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A360926 (2 * n + 1) : ℚ) / 2⌋

end

end A186318.P3248938179303335057

namespace A186318

/-- `floor(A360926(2*n+1)/2)` -/
def P3248938179303335057.Spec : Prop :=
  ∀ n, P3248938179303335057.a n = A186318 (n + 1)

end A186318

/-!
# A186320: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the squares and heptagonal numbers. Complement of A186321.

The programs for A186320, the canonical program `A186320.P11072949175102014407` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186320 has offset 1).

The definition of A186320 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186320.P11072949175102014407

`comp[floor(sqrt(A000566(n))+n)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A186320

/-- `comp[floor(sqrt(A000566(n))+n)]` -/
def P11072949175102014407.Spec : Prop :=
  ∀ n, (P11072949175102014407.a n : ℤ) = A186320 (n + 1)

theorem P11072949175102014407.correct : P11072949175102014407.Spec := by
  intro n
  simp only [A186320, Nat.add_sub_cancel]

end A186320

/-! ## A186320.P13728340092267445487

`comp[A186321(n+1)-1]+1`
-/

namespace A186320.P13728340092267445487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186321 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A186320.P13728340092267445487

namespace A186320

/-- `comp[A186321(n+1)-1]+1` -/
def P13728340092267445487.Spec : Prop :=
  ∀ n, (P13728340092267445487.a n : ℤ) = A186320 (n + 1)

end A186320

/-! ## A186320.P10243793058351750693

`A059995(A187395(2*(n+1))+A005408(n+2))`
-/

namespace A186320.P10243793058351750693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A187395 (2 * (n + 1)) + A005408 (n + 2)).toNat

end

end A186320.P10243793058351750693

namespace A186320

/-- `A059995(A187395(2*(n+1))+A005408(n+2))` -/
def P10243793058351750693.Spec : Prop :=
  ∀ n, P10243793058351750693.a n = A186320 (n + 1)

end A186320

/-! ## A186320.P2450397436061087141

`A003059(∑[A047396(2*n+1)])`
-/

namespace A186320.P2450397436061087141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047396 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A186320.P2450397436061087141

namespace A186320

/-- `A003059(∑[A047396(2*n+1)])` -/
def P2450397436061087141.Spec : Prop :=
  ∀ n, P2450397436061087141.a n = A186320 (n + 1)

end A186320

/-! ## A186320.P3044694147070137900

`A003059(A003215(n)-A000212(n))`
-/

namespace A186320.P3044694147070137900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A003215 n - A000212 n).toNat

end

end A186320.P3044694147070137900

namespace A186320

/-- `A003059(A003215(n)-A000212(n))` -/
def P3044694147070137900.Spec : Prop :=
  ∀ n, P3044694147070137900.a n = A186320 (n + 1)

end A186320

/-! ## A186320.P3736333332351131003

`A003059(or(A004526(n), A301698(n)))`
-/

namespace A186320.P3736333332351131003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (Int.lor (A004526 n) (A301698 n)).toNat

end

end A186320.P3736333332351131003

namespace A186320

/-- `A003059(or(A004526(n), A301698(n)))` -/
def P3736333332351131003.Spec : Prop :=
  ∀ n, P3736333332351131003.a n = A186320 (n + 1)

end A186320

/-! ## A186320.P1244942343440951196

`A003059(or(A110654(n), A301698(n)))`
-/

namespace A186320.P1244942343440951196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (Int.lor (A110654 n) (A301698 n)).toNat

end

end A186320.P1244942343440951196

namespace A186320

/-- `A003059(or(A110654(n), A301698(n)))` -/
def P1244942343440951196.Spec : Prop :=
  ∀ n, P1244942343440951196.a n = A186320 (n + 1)

end A186320

/-! ## A186320.P6984806005520235103

`A000196(∑[A304800(n)+A304799(n)])`
-/

namespace A186320.P6984806005520235103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304800 n + A304799 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A186320.P6984806005520235103

namespace A186320

/-- `A000196(∑[A304800(n)+A304799(n)])` -/
def P6984806005520235103.Spec : Prop :=
  ∀ n, P6984806005520235103.a n = A186320 (n + 1)

end A186320

/-! ## A186320.P5929493683963856916

`A111651(A033991(n+1))`
-/

namespace A186320.P5929493683963856916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111651 (A033991 (n + 1)).toNat

end

end A186320.P5929493683963856916

namespace A186320

/-- `A111651(A033991(n+1))` -/
def P5929493683963856916.Spec : Prop :=
  ∀ n, P5929493683963856916.a n = A186320 (n + 1)

end A186320

/-! ## A186320.P2318748063878566980

`A111651(A185950(n+1))`
-/

namespace A186320.P2318748063878566980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111651 (A185950 (n + 1)).toNat

end

end A186320.P2318748063878566980

namespace A186320

/-- `A111651(A185950(n+1))` -/
def P2318748063878566980.Spec : Prop :=
  ∀ n, P2318748063878566980.a n = A186320 (n + 1)

end A186320

/-!
# A186321: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the squares and heptagonal numbers. Complement of A186320.

The programs for A186321, the canonical program `A186321.P3161861958528494414` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186321 has offset 1).

The definition of A186321 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186321.P3161861958528494414

`floor(sqrt(∑[5*n+1]))+1+n`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A186321

/-- `floor(sqrt(∑[5*n+1]))+1+n` -/
def P3161861958528494414.Spec : Prop :=
  ∀ n, (P3161861958528494414.a n : ℤ) = A186321 (n + 1)

theorem P3161861958528494414.correct : P3161861958528494414.Spec := by
  intro n
  simp only [A186321, Nat.add_sub_cancel]

end A186321

/-! ## A186321.P12972490647862409175

`floor(sqrt(∑[A016861(n)])+n+1)`
-/

namespace A186321.P12972490647862409175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) + (n + 1 : ℝ)⌋

end

end A186321.P12972490647862409175

namespace A186321

/-- `floor(sqrt(∑[A016861(n)])+n+1)` -/
def P12972490647862409175.Spec : Prop :=
  ∀ n, P12972490647862409175.a n = A186321 (n + 1)

end A186321

/-! ## A186321.P10045387950436640512

`floor(sqrt(A000566(n+1))+1+n)`
-/

namespace A186321.P10045387950436640512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A000566 (n + 1) : ℝ) + 1 + (n : ℝ)⌋

end

end A186321.P10045387950436640512

namespace A186321

/-- `floor(sqrt(A000566(n+1))+1+n)` -/
def P10045387950436640512.Spec : Prop :=
  ∀ n, P10045387950436640512.a n = A186321 (n + 1)

end A186321

/-! ## A186321.P11317906471757413522

`floor(sqrt(Δ[A002413(n)])+n+1)`
-/

namespace A186321.P11317906471757413522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (f1 (n + 1) - f1 n : ℝ) + (n + 1 : ℝ)⌋

end

end A186321.P11317906471757413522

namespace A186321

/-- `floor(sqrt(Δ[A002413(n)])+n+1)` -/
def P11317906471757413522.Spec : Prop :=
  ∀ n, P11317906471757413522.a n = A186321 (n + 1)

end A186321

/-! ## A186321.P13757682272555348249

`floor(sqrt(A085787(2*n+1))+n+1)`
-/

namespace A186321.P13757682272555348249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A085787 (2 * n + 1) : ℝ) + (n + 1 : ℝ)⌋

end

end A186321.P13757682272555348249

namespace A186321

/-- `floor(sqrt(A085787(2*n+1))+n+1)` -/
def P13757682272555348249.Spec : Prop :=
  ∀ n, P13757682272555348249.a n = A186321 (n + 1)

end A186321

/-! ## A186321.P18060546345690298924

`A000267(∑[A297464(n)])`
-/

namespace A186321.P18060546345690298924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297464 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A186321.P18060546345690298924

namespace A186321

/-- `A000267(∑[A297464(n)])` -/
def P18060546345690298924.Spec : Prop :=
  ∀ n, P18060546345690298924.a n = A186321 (n + 1)

end A186321

/-! ## A186321.P14168433763754834321

`A000267(A071619(2*n+1)-n²)`
-/

namespace A186321.P14168433763754834321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A071619 (2 * n + 1) - (n ^ 2 : ℤ)).toNat

end

end A186321.P14168433763754834321

namespace A186321

/-- `A000267(A071619(2*n+1)-n²)` -/
def P14168433763754834321.Spec : Prop :=
  ∀ n, P14168433763754834321.a n = A186321 (n + 1)

end A186321

/-! ## A186321.P6884499311520395364

`A003056(A330451(n+1))`
-/

namespace A186321.P6884499311520395364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A330451 (n + 1)).toNat

end

end A186321.P6884499311520395364

namespace A186321

/-- `A003056(A330451(n+1))` -/
def P6884499311520395364.Spec : Prop :=
  ∀ n, P6884499311520395364.a n = A186321 (n + 1)

end A186321

/-! ## A186321.P4189655364737593056

`A003056(A174709(2*n+1)+A049451(n+1))`
-/

namespace A186321.P4189655364737593056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A174709 (2 * n + 1) + A049451 (n + 1)).toNat

end

end A186321.P4189655364737593056

namespace A186321

/-- `A003056(A174709(2*n+1)+A049451(n+1))` -/
def P4189655364737593056.Spec : Prop :=
  ∀ n, P4189655364737593056.a n = A186321 (n + 1)

end A186321

/-! ## A186321.P7513996039257520621

`A276571(A373732(n+1))`
-/

namespace A186321.P7513996039257520621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276571 (A373732 (n + 1)).toNat

end

end A186321.P7513996039257520621

namespace A186321

/-- `A276571(A373732(n+1))` -/
def P7513996039257520621.Spec : Prop :=
  ∀ n, P7513996039257520621.a n = A186321 (n + 1)

end A186321

/-!
# A186322: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f and g are the squares and heptagonal numbers. Complement of A186323.

The programs for A186322, the canonical program `A186322.P17281344190024078444` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186322 has offset 1).

The definition of A186322 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186322.P17281344190024078444

`comp[A186323(n+1)-1]+1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A186322

/-- `comp[A186323(n+1)-1]+1` -/
def P17281344190024078444.Spec : Prop :=
  ∀ n, (P17281344190024078444.a n : ℤ) = A186322 (n + 1)

theorem P17281344190024078444.correct : P17281344190024078444.Spec := by
  intro n
  simp only [A186322, Nat.add_sub_cancel]

end A186322

/-! ## A186322.P8526933459676287889

`A186320(n+1)+char[A251927(n+1)]`
-/

namespace A186322.P8526933459676287889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251927 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186320 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A186322.P8526933459676287889

namespace A186322

/-- `A186320(n+1)+char[A251927(n+1)]` -/
def P8526933459676287889.Spec : Prop :=
  ∀ n, P8526933459676287889.a n = A186322 (n + 1)

end A186322

/-! ## A186322.P10942169273412651433

`A000267(A004396(∑[A284914(n+1)]))`
-/

namespace A186322.P10942169273412651433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A004396 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A186322.P10942169273412651433

namespace A186322

/-- `A000267(A004396(∑[A284914(n+1)]))` -/
def P10942169273412651433.Spec : Prop :=
  ∀ n, P10942169273412651433.a n = A186322 (n + 1)

end A186322

/-! ## A186322.P16444318553000916361

`A000267(A004396(∑[A285307(n+1)]))`
-/

namespace A186322.P16444318553000916361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A004396 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A186322.P16444318553000916361

namespace A186322

/-- `A000267(A004396(∑[A285307(n+1)]))` -/
def P16444318553000916361.Spec : Prop :=
  ∀ n, P16444318553000916361.a n = A186322 (n + 1)

end A186322

/-! ## A186322.P4745216523897561925

`A000267(A004396(A028387(n)-A004396(n)))`
-/

namespace A186322.P4745216523897561925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A004396 (A028387 n - A004396 n).toNat).toNat

end

end A186322.P4745216523897561925

namespace A186322

/-- `A000267(A004396(A028387(n)-A004396(n)))` -/
def P4745216523897561925.Spec : Prop :=
  ∀ n, P4745216523897561925.a n = A186322 (n + 1)

end A186322

/-! ## A186322.P18144896651369843314

`A003056(∑[A038127(n)])+2`
-/

namespace A186322.P18144896651369843314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038127 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 2

end

end A186322.P18144896651369843314

namespace A186322

/-- `A003056(∑[A038127(n)])+2` -/
def P18144896651369843314.Spec : Prop :=
  ∀ n, P18144896651369843314.a n = A186322 (n + 1)

end A186322

/-! ## A186322.P4072854105821558643

`A003057(A096777(2*n+1)+1)`
-/

namespace A186322.P4072854105821558643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A096777 (2 * n + 1) + 1).toNat

end

end A186322.P4072854105821558643

namespace A186322

/-- `A003057(A096777(2*n+1)+1)` -/
def P4072854105821558643.Spec : Prop :=
  ∀ n, P4072854105821558643.a n = A186322 (n + 1)

end A186322

/-! ## A186322.P15563677194246658689

`A003056(A069905(4*n+1))+2`
-/

namespace A186322.P15563677194246658689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A069905 (4 * n + 1)).toNat + 2

end

end A186322.P15563677194246658689

namespace A186322

/-- `A003056(A069905(4*n+1))+2` -/
def P15563677194246658689.Spec : Prop :=
  ∀ n, P15563677194246658689.a n = A186322 (n + 1)

end A186322

/-! ## A186322.P4970389160192101553

`A003057(A087483(n)+A002522(n))`
-/

namespace A186322.P4970389160192101553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A087483 n + A002522 n).toNat

end

end A186322.P4970389160192101553

namespace A186322

/-- `A003057(A087483(n)+A002522(n))` -/
def P4970389160192101553.Spec : Prop :=
  ∀ n, P4970389160192101553.a n = A186322 (n + 1)

end A186322

/-! ## A186322.P1828479578819099865

`record[A003056(A007980(n))+A000034(n)]`
-/

namespace A186322.P1828479578819099865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A007980 n).toNat + A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186322.P1828479578819099865

namespace A186322

/-- `record[A003056(A007980(n))+A000034(n)]` -/
def P1828479578819099865.Spec : Prop :=
  ∀ n, P1828479578819099865.a n = A186322 (n + 1)

end A186322

/-!
# A186323: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f and g are the squares and heptagonal numbers. Complement of A186322.

The programs for A186323, the canonical program `A186323.P10105611104072797874` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186323 has offset 1).

The definition of A186323 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186323.P10105611104072797874

`ceil(sqrt(∑[5*n+1]))+n`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A186323

/-- `ceil(sqrt(∑[5*n+1]))+n` -/
def P10105611104072797874.Spec : Prop :=
  ∀ n, P10105611104072797874.a n = A186323 (n + 1)

theorem P10105611104072797874.correct : P10105611104072797874.Spec := by
  intro n
  simp only [A186323, Nat.add_sub_cancel]

end A186323

/-! ## A186323.P9320413885581689637

`ceil(sqrt(∑[A016861(n)])+n)`
-/

namespace A186323.P9320413885581689637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) + (n : ℝ)⌉

end

end A186323.P9320413885581689637

namespace A186323

/-- `ceil(sqrt(∑[A016861(n)])+n)` -/
def P9320413885581689637.Spec : Prop :=
  ∀ n, P9320413885581689637.a n = A186323 (n + 1)

end A186323

/-! ## A186323.P15151878358961120793

`ceil(sqrt(A000566(n+1))+n)`
-/

namespace A186323.P15151878358961120793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A000566 (n + 1) : ℝ) + (n : ℝ)⌉

end

end A186323.P15151878358961120793

namespace A186323

/-- `ceil(sqrt(A000566(n+1))+n)` -/
def P15151878358961120793.Spec : Prop :=
  ∀ n, P15151878358961120793.a n = A186323 (n + 1)

end A186323

/-! ## A186323.P3770301051147335187

`floor(sqrt(A192136(n+1)-2)+n+1)`
-/

namespace A186323.P3770301051147335187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A192136 (n + 1) - 2 : ℝ) + (n + 1 : ℝ)⌋

end

end A186323.P3770301051147335187

namespace A186323

/-- `floor(sqrt(A192136(n+1)-2)+n+1)` -/
def P3770301051147335187.Spec : Prop :=
  ∀ n, P3770301051147335187.a n = A186323 (n + 1)

end A186323

/-! ## A186323.P5594999852748814853

`ceil(sqrt(Δ[A002413(n)])+n)`
-/

namespace A186323.P5594999852748814853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (f1 (n + 1) - f1 n : ℝ) + (n : ℝ)⌉

end

end A186323.P5594999852748814853

namespace A186323

/-- `ceil(sqrt(Δ[A002413(n)])+n)` -/
def P5594999852748814853.Spec : Prop :=
  ∀ n, P5594999852748814853.a n = A186323 (n + 1)

end A186323

/-! ## A186323.P14922832710082122494

`ceil(sqrt(A085787(2*n+1))+n)`
-/

namespace A186323.P14922832710082122494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A085787 (2 * n + 1) : ℝ) + (n : ℝ)⌉

end

end A186323.P14922832710082122494

namespace A186323

/-- `ceil(sqrt(A085787(2*n+1))+n)` -/
def P14922832710082122494.Spec : Prop :=
  ∀ n, P14922832710082122494.a n = A186323 (n + 1)

end A186323

/-! ## A186323.P17577127646059974590

`A000267(∑[A297464(n)]-1)`
-/

namespace A186323.P17577127646059974590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297464 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A186323.P17577127646059974590

namespace A186323

/-- `A000267(∑[A297464(n)]-1)` -/
def P17577127646059974590.Spec : Prop :=
  ∀ n, P17577127646059974590.a n = A186323 (n + 1)

end A186323

/-!
# A186324: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the squares and octagonal numbers. Complement of A186325.

The programs for A186324, the canonical program `A186324.P3622620755982322594` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186324 has offset 1).

The definition of A186324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186324.P17895109257512728739

`round(floor((sqrt(3)+3)*(n+1))/3)`
-/

namespace A186324.P17895109257512728739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((⌊(Real.sqrt (3 : ℝ) + 3) * (n + 1 : ℝ)⌋ : ℚ) / 3)

end

end A186324.P17895109257512728739

namespace A186324

/-- `round(floor((sqrt(3)+3)*(n+1))/3)` -/
def P17895109257512728739.Spec : Prop :=
  ∀ n, P17895109257512728739.a n = A186324 (n + 1)

end A186324

/-! ## A186324.P3622620755982322594

`floor((A182778(n+1)+1)/3)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A186324

/-- `floor((A182778(n+1)+1)/3)` -/
def P3622620755982322594.Spec : Prop :=
  ∀ n, P3622620755982322594.a n = A186324 (n + 1)

theorem P3622620755982322594.correct : P3622620755982322594.Spec := by
  intro n
  simp only [A186324, Nat.add_sub_cancel]

end A186324

/-! ## A186324.P3848280244741965119

`floor((A190334(n+1)-n)/3)`
-/

namespace A186324.P3848280244741965119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A190334 (n + 1) - (n : ℤ) : ℚ) / 3⌋

end

end A186324.P3848280244741965119

namespace A186324

/-- `floor((A190334(n+1)-n)/3)` -/
def P3848280244741965119.Spec : Prop :=
  ∀ n, P3848280244741965119.a n = A186324 (n + 1)

end A186324

/-! ## A186324.P2295124494306817629

`floor((A022838(n+1)+1)/3)+1+n`
-/

namespace A186324.P2295124494306817629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A022838 (n + 1) + 1 : ℚ) / 3⌋ + 1 + (n : ℤ)

end

end A186324.P2295124494306817629

namespace A186324

/-- `floor((A022838(n+1)+1)/3)+1+n` -/
def P2295124494306817629.Spec : Prop :=
  ∀ n, P2295124494306817629.a n = A186324 (n + 1)

end A186324

/-! ## A186324.P2217948052571832377

`A008620(A022838(n+1)+1)+n`
-/

namespace A186324.P2217948052571832377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A022838 (n + 1) + 1).toNat + (n : ℤ)

end

end A186324.P2217948052571832377

namespace A186324

/-- `A008620(A022838(n+1)+1)+n` -/
def P2217948052571832377.Spec : Prop :=
  ∀ n, P2217948052571832377.a n = A186324 (n + 1)

end A186324

/-! ## A186324.P14981649642153508110

`A002264(A022838(n+1)+1)+n+1`
-/

namespace A186324.P14981649642153508110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A022838 (n + 1) + 1).toNat + (n + 1 : ℤ)

end

end A186324.P14981649642153508110

namespace A186324

/-- `A002264(A022838(n+1)+1)+n+1` -/
def P14981649642153508110.Spec : Prop :=
  ∀ n, P14981649642153508110.a n = A186324 (n + 1)

end A186324

/-! ## A186324.P13988446185003588454

`A097337(A054088(n+1)+1)`
-/

namespace A186324.P13988446185003588454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (A054088 (n + 1) + 1).toNat

end

end A186324.P13988446185003588454

namespace A186324

/-- `A097337(A054088(n+1)+1)` -/
def P13988446185003588454.Spec : Prop :=
  ∀ n, P13988446185003588454.a n = A186324 (n + 1)

end A186324

/-! ## A186324.P13379153071332810147

`A097337(A003512(n+1)-n)`
-/

namespace A186324.P13379153071332810147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (A003512 (n + 1) - (n : ℤ)).toNat

end

end A186324.P13379153071332810147

namespace A186324

/-- `A097337(A003512(n+1)-n)` -/
def P13379153071332810147.Spec : Prop :=
  ∀ n, P13379153071332810147.a n = A186324 (n + 1)

end A186324

/-! ## A186324.P3473921411004410958

`A097337(∑[A007538(n+1)]+1)`
-/

namespace A186324.P3473921411004410958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A186324.P3473921411004410958

namespace A186324

/-- `A097337(∑[A007538(n+1)]+1)` -/
def P3473921411004410958.Spec : Prop :=
  ∀ n, P3473921411004410958.a n = A186324 (n + 1)

end A186324

/-! ## A186324.P15448109195759636635

`A194979(A180122(n+1)+2)-1`
-/

namespace A186324.P15448109195759636635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194979 (A180122 (n + 1) + 2).toNat - 1

end

end A186324.P15448109195759636635

namespace A186324

/-- `A194979(A180122(n+1)+2)-1` -/
def P15448109195759636635.Spec : Prop :=
  ∀ n, P15448109195759636635.a n = A186324 (n + 1)

end A186324

/-! ## A186324.P3292799794763769841

`A097337(A003511(2*(n+1))+1)`
-/

namespace A186324.P3292799794763769841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (A003511 (2 * (n + 1)) + 1).toNat

end

end A186324.P3292799794763769841

namespace A186324

/-- `A097337(A003511(2*(n+1))+1)` -/
def P3292799794763769841.Spec : Prop :=
  ∀ n, P3292799794763769841.a n = A186324 (n + 1)

end A186324

/-! ## A186324.P9113867560421654520

`A194979(A188070(2*(n+1)))-1`
-/

namespace A186324.P9113867560421654520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194979 (A188070 (2 * (n + 1))).toNat - 1

end

end A186324.P9113867560421654520

namespace A186324

/-- `A194979(A188070(2*(n+1)))-1` -/
def P9113867560421654520.Spec : Prop :=
  ∀ n, P9113867560421654520.a n = A186324 (n + 1)

end A186324

/-! ## A186324.P6285031942660613793

`A097337(A022838(n+1)+2+n)`
-/

namespace A186324.P6285031942660613793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (A022838 (n + 1) + 2 + (n : ℤ)).toNat

end

end A186324.P6285031942660613793

namespace A186324

/-- `A097337(A022838(n+1)+2+n)` -/
def P6285031942660613793.Spec : Prop :=
  ∀ n, P6285031942660613793.a n = A186324 (n + 1)

end A186324

/-! ## A186324.P4208740092619061307

`A097337(A180123(n+1)+1-n)`
-/

namespace A186324.P4208740092619061307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (A180123 (n + 1) + (1 - (n : ℤ))).toNat

end

end A186324.P4208740092619061307

namespace A186324

/-- `A097337(A180123(n+1)+1-n)` -/
def P4208740092619061307.Spec : Prop :=
  ∀ n, P4208740092619061307.a n = A186324 (n + 1)

end A186324

/-! ## A186324.P7064167207594418360

`A195072(A180123(n+1))`
-/

namespace A186324.P7064167207594418360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195072 (A180123 (n + 1)).toNat

end

end A186324.P7064167207594418360

namespace A186324

/-- `A195072(A180123(n+1))` -/
def P7064167207594418360.Spec : Prop :=
  ∀ n, P7064167207594418360.a n = A186324 (n + 1)

end A186324

/-! ## A186324.P15247507853563315329

`A195072(A003512(n+1)-1)`
-/

namespace A186324.P15247507853563315329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195072 (A003512 (n + 1) - 1).toNat

end

end A186324.P15247507853563315329

namespace A186324

/-- `A195072(A003512(n+1)-1)` -/
def P15247507853563315329.Spec : Prop :=
  ∀ n, P15247507853563315329.a n = A186324 (n + 1)

end A186324

/-! ## A186324.P1050813874441278365

`A183142(A188069(n+2))`
-/

namespace A186324.P1050813874441278365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183142 (A188069 (n + 2)).toNat

end

end A186324.P1050813874441278365

namespace A186324

/-- `A183142(A188069(n+2))` -/
def P1050813874441278365.Spec : Prop :=
  ∀ n, P1050813874441278365.a n = A186324 (n + 1)

end A186324

/-! ## A186324.P71982329055657351

`A183142(A054406(2*(n+1))-n)`
-/

namespace A186324.P71982329055657351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183142 (A054406 (2 * (n + 1)) - (n : ℤ)).toNat

end

end A186324.P71982329055657351

namespace A186324

/-- `A183142(A054406(2*(n+1))-n)` -/
def P71982329055657351.Spec : Prop :=
  ∀ n, P71982329055657351.a n = A186324 (n + 1)

end A186324

/-! ## A186324.P17708635454665192876

`A002264(A182778(n+1)+1)`
-/

namespace A186324.P17708635454665192876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A182778 (n + 1) + 1).toNat

end

end A186324.P17708635454665192876

namespace A186324

/-- `A002264(A182778(n+1)+1)` -/
def P17708635454665192876.Spec : Prop :=
  ∀ n, P17708635454665192876.a n = A186324 (n + 1)

end A186324

/-! ## A186324.P3666808273133880300

`A008620(A182778(n+1)-2)`
-/

namespace A186324.P3666808273133880300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A182778 (n + 1) - 2).toNat

end

end A186324.P3666808273133880300

namespace A186324

/-- `A008620(A182778(n+1)-2)` -/
def P3666808273133880300.Spec : Prop :=
  ∀ n, P3666808273133880300.a n = A186324 (n + 1)

end A186324

/-!
# A186325: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the squares and octagonal numbers. Complement of A186324.

The programs for A186325, the canonical program `A186325.P1608070430125445151` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186325 has offset 1).

The definition of A186325 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186325.P2564189082737453868

`ceil((2/3+n)*sqrt(3)+n)`
-/

namespace A186325.P2564189082737453868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 : ℚ) / 3 + (n : ℚ) : ℝ) * Real.sqrt (3 : ℝ) + (n : ℝ)⌉

end

end A186325.P2564189082737453868

namespace A186325

/-- `ceil((2/3+n)*sqrt(3)+n)` -/
def P2564189082737453868.Spec : Prop :=
  ∀ n, P2564189082737453868.a n = A186325 (n + 1)

end A186325

/-! ## A186325.P10535378692169305365

`floor(sqrt(∑[or(2, 6*n)])+n+1)`
-/

namespace A186325.P10535378692169305365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (6 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + (n + 1 : ℝ)⌋

end

end A186325.P10535378692169305365

namespace A186325

/-- `floor(sqrt(∑[or(2, 6*n)])+n+1)` -/
def P10535378692169305365.Spec : Prop :=
  ∀ n, P10535378692169305365.a n = A186325 (n + 1)

end A186325

/-! ## A186325.P1608070430125445151

`floor(sqrt(∑[A016921(n)]))+1+n`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A186325

/-- `floor(sqrt(∑[A016921(n)]))+1+n` -/
def P1608070430125445151.Spec : Prop :=
  ∀ n, P1608070430125445151.a n = A186325 (n + 1)

theorem P1608070430125445151.correct : P1608070430125445151.Spec := by
  intro n
  simp only [A186325, Nat.add_sub_cancel]

end A186325

/-! ## A186325.P12716168340785680269

`A022838(n+1)+A016825(n)-A022838(A022838(n+1))`
-/

namespace A186325.P12716168340785680269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1) + (A016825 n - A022838 (A022838 (n + 1)).toNat)

end

end A186325.P12716168340785680269

namespace A186325

/-- `A022838(n+1)+A016825(n)-A022838(A022838(n+1))` -/
def P12716168340785680269.Spec : Prop :=
  ∀ n, P12716168340785680269.a n = A186325 (n + 1)

end A186325

/-! ## A186325.P1374085352652352252

`A194979(3*n+2)+n`
-/

namespace A186325.P1374085352652352252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194979 (3 * n + 2) + (n : ℤ)

end

end A186325.P1374085352652352252

namespace A186325

/-- `A194979(3*n+2)+n` -/
def P1374085352652352252.Spec : Prop :=
  ∀ n, P1374085352652352252.a n = A186325 (n + 1)

end A186325

/-! ## A186325.P13733224089689442859

`A097337(3*n+2)+n+1`
-/

namespace A186325.P13733224089689442859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (3 * n + 2) + (n + 1 : ℤ)

end

end A186325.P13733224089689442859

namespace A186325

/-- `A097337(3*n+2)+n+1` -/
def P13733224089689442859.Spec : Prop :=
  ∀ n, P13733224089689442859.a n = A186325 (n + 1)

end A186325

/-! ## A186325.P10177298655487795430

`A188070(A003512(n+1)+n)-A003512(n+1)`
-/

namespace A186325.P10177298655487795430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188070 (A003512 (n + 1) + (n : ℤ)).toNat - A003512 (n + 1)

end

end A186325.P10177298655487795430

namespace A186325

/-- `A188070(A003512(n+1)+n)-A003512(n+1)` -/
def P10177298655487795430.Spec : Prop :=
  ∀ n, P10177298655487795430.a n = A186325 (n + 1)

end A186325

/-! ## A186325.P10075047314033592979

`A003059(2*A212959(n))+n`
-/

namespace A186325.P10075047314033592979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (2 * A212959 n).toNat + (n : ℤ)

end

end A186325.P10075047314033592979

namespace A186325

/-- `A003059(2*A212959(n))+n` -/
def P10075047314033592979.Spec : Prop :=
  ∀ n, P10075047314033592979.a n = A186325 (n + 1)

end A186325

/-!
# A186326: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f and g are the squares and octagonal numbers. Complement of A186327.

The programs for A186326, the canonical program `A186326.P9660484515861953398` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186326 has offset 1).

The definition of A186326 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186326.P9660484515861953398

`A186324(n+1)+char[A251963(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A186326

/-- `A186324(n+1)+char[A251963(n+1)]` -/
def P9660484515861953398.Spec : Prop :=
  ∀ n, P9660484515861953398.a n = A186326 (n + 1)

theorem P9660484515861953398.correct : P9660484515861953398.Spec := by
  intro n
  simp only [A186326, Nat.add_sub_cancel]

end A186326

/-! ## A186326.P4204494547559490335

`eq[char[A186327(n+1)], A000007(n)]`
-/

namespace A186326.P4204494547559490335
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186327 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A186326.P4204494547559490335

namespace A186326

/-- `eq[char[A186327(n+1)], A000007(n)]` -/
def P4204494547559490335.Spec : Prop :=
  ∀ n, (P4204494547559490335.a n : ℤ) = A186326 (n + 1)

end A186326

/-! ## A186326.P1867433157872671003

`char[A251963(n+1)]+A008620(A022838(n+1)+1)+n`
-/

namespace A186326.P1867433157872671003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251963 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A008620 (A022838 (n + 1) + 1).toNat + (n : ℤ))

end

end A186326.P1867433157872671003

namespace A186326

/-- `char[A251963(n+1)]+A008620(A022838(n+1)+1)+n` -/
def P1867433157872671003.Spec : Prop :=
  ∀ n, P1867433157872671003.a n = A186326 (n + 1)

end A186326

/-! ## A186326.P11021967566739121839

`A097337(A054088(n+1)+1)+char[A251963(n+1)]`
-/

namespace A186326.P11021967566739121839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251963 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (A054088 (n + 1) + 1).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A186326.P11021967566739121839

namespace A186326

/-- `A097337(A054088(n+1)+1)+char[A251963(n+1)]` -/
def P11021967566739121839.Spec : Prop :=
  ∀ n, P11021967566739121839.a n = A186326 (n + 1)

end A186326

/-! ## A186326.P17058631857737364124

`char[A251963(n+1)]+A194979(A188070(2*(n+1)))-1`
-/

namespace A186326.P17058631857737364124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251963 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A194979 (A188070 (2 * (n + 1))).toNat - 1)

end

end A186326.P17058631857737364124

namespace A186326

/-- `char[A251963(n+1)]+A194979(A188070(2*(n+1)))-1` -/
def P17058631857737364124.Spec : Prop :=
  ∀ n, P17058631857737364124.a n = A186326 (n + 1)

end A186326

/-! ## A186326.P18119456078549669351

`A195072(A003512(n+1)-1)+char[A251963(n+1)]`
-/

namespace A186326.P18119456078549669351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251963 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195072 (A003512 (n + 1) - 1).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A186326.P18119456078549669351

namespace A186326

/-- `A195072(A003512(n+1)-1)+char[A251963(n+1)]` -/
def P18119456078549669351.Spec : Prop :=
  ∀ n, P18119456078549669351.a n = A186326 (n + 1)

end A186326

/-! ## A186326.P13431583099768758939

`A008620(A054406(2*(n+1))-2)+char[A251963(n+1)]`
-/

namespace A186326.P13431583099768758939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251963 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A054406 (2 * (n + 1)) - 2).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A186326.P13431583099768758939

namespace A186326

/-- `A008620(A054406(2*(n+1))-2)+char[A251963(n+1)]` -/
def P13431583099768758939.Spec : Prop :=
  ∀ n, P13431583099768758939.a n = A186326 (n + 1)

end A186326

/-! ## A186326.P1030763143980409147

`eq[char[A186327(n+1)], A131575(2*n)]`
-/

namespace A186326.P1030763143980409147
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186327 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A186326.P1030763143980409147

namespace A186326

/-- `eq[char[A186327(n+1)], A131575(2*n)]` -/
def P1030763143980409147.Spec : Prop :=
  ∀ n, (P1030763143980409147.a n : ℤ) = A186326 (n + 1)

end A186326

/-! ## A186326.P13206064622280381058

`ceil((n+1)*atan(A120370(n+1)+1))`
-/

namespace A186326.P13206064622280381058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.arctan (A120370 (n + 1) + 1 : ℝ)⌉

end

end A186326.P13206064622280381058

namespace A186326

/-- `ceil((n+1)*atan(A120370(n+1)+1))` -/
def P13206064622280381058.Spec : Prop :=
  ∀ n, P13206064622280381058.a n = A186326 (n + 1)

end A186326

/-!
# A186327: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f and g are the squares and octagonal numbers. Complement of A186326.

The programs for A186327, the canonical program `A186327.P7028250463863917981` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186327 has offset 1).

The definition of A186327 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186327.P7028250463863917981

`ceil(sqrt(∑[6*n+1])+n)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A186327

/-- `ceil(sqrt(∑[6*n+1])+n)` -/
def P7028250463863917981.Spec : Prop :=
  ∀ n, P7028250463863917981.a n = A186327 (n + 1)

theorem P7028250463863917981.correct : P7028250463863917981.Spec := by
  intro n
  simp only [A186327, Nat.add_sub_cancel]

end A186327

/-! ## A186327.P12076779914399844273

`ceil(sqrt(∑[a(n-1)+6]))+n` with `a(0)=1`
-/

namespace A186327.P12076779914399844273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉ + (n : ℤ)

end

end A186327.P12076779914399844273

namespace A186327

/-- `ceil(sqrt(∑[a(n-1)+6]))+n` -/
def P12076779914399844273.Spec : Prop :=
  ∀ n, P12076779914399844273.a n = A186327 (n + 1)

end A186327

/-! ## A186327.P15718160020100270562

`floor(sqrt(A140676(n))+n+1)`
-/

namespace A186327.P15718160020100270562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A140676 n : ℝ) + (n + 1 : ℝ)⌋

end

end A186327.P15718160020100270562

namespace A186327

/-- `floor(sqrt(A140676(n))+n+1)` -/
def P15718160020100270562.Spec : Prop :=
  ∀ n, P15718160020100270562.a n = A186327 (n + 1)

end A186327

/-! ## A186327.P16007897872922498888

`floor(2*sqrt(A001859(n))+n+1)`
-/

namespace A186327.P16007897872922498888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.sqrt (A001859 n : ℝ) + (n + 1 : ℝ)⌋

end

end A186327.P16007897872922498888

namespace A186327

/-- `floor(2*sqrt(A001859(n))+n+1)` -/
def P16007897872922498888.Spec : Prop :=
  ∀ n, P16007897872922498888.a n = A186327 (n + 1)

end A186327

/-! ## A186327.P5002408071295563436

`ceil(sqrt(A000567(n+1)))+n`
-/

namespace A186327.P5002408071295563436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A000567 (n + 1) : ℝ)⌉ + (n : ℤ)

end

end A186327.P5002408071295563436

namespace A186327

/-- `ceil(sqrt(A000567(n+1)))+n` -/
def P5002408071295563436.Spec : Prop :=
  ∀ n, P5002408071295563436.a n = A186327 (n + 1)

end A186327

/-! ## A186327.P17036335158631167442

`floor(sqrt(n*A180123(2*(n+1))))+1`
-/

namespace A186327.P17036335158631167442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ((n : ℤ) * A180123 (2 * (n + 1))) + 1

end

end A186327.P17036335158631167442

namespace A186327

/-- `floor(sqrt(n*A180123(2*(n+1))))+1` -/
def P17036335158631167442.Spec : Prop :=
  ∀ n, P17036335158631167442.a n = A186327 (n + 1)

end A186327

/-! ## A186327.P13508561276654386353

`A202304(A213398(n))+n`
-/

namespace A186327.P13508561276654386353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (A213398 n).toNat + (n : ℤ)

end

end A186327.P13508561276654386353

namespace A186327

/-- `A202304(A213398(n))+n` -/
def P13508561276654386353.Spec : Prop :=
  ∀ n, P13508561276654386353.a n = A186327 (n + 1)

end A186327

/-! ## A186327.P11189500596346951313

`A172471(n*A003512(n+1))+1`
-/

namespace A186327.P11189500596346951313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 ((n : ℤ) * A003512 (n + 1)).toNat + 1

end

end A186327.P11189500596346951313

namespace A186327

/-- `A172471(n*A003512(n+1))+1` -/
def P11189500596346951313.Spec : Prop :=
  ∀ n, P11189500596346951313.a n = A186327 (n + 1)

end A186327

/-! ## A186327.P7440934745581888687

`A003059(∑[6*n+1])+n`
-/

namespace A186327.P7440934745581888687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A186327.P7440934745581888687

namespace A186327

/-- `A003059(∑[6*n+1])+n` -/
def P7440934745581888687.Spec : Prop :=
  ∀ n, P7440934745581888687.a n = A186327 (n + 1)

end A186327

/-!
# A186328: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the pentagonal numbers and the hexagonal numbers. Complement of A186329.

The programs for A186328, the canonical program `A186328.P11830136122439441989` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186328 has offset 1).

The definition of A186328 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5773 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186328.P11830136122439441989

`A008619(A144077(n+1))+n`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A186328

/-- `A008619(A144077(n+1))+n` -/
def P11830136122439441989.Spec : Prop :=
  ∀ n, P11830136122439441989.a n = A186328 (n + 1)

theorem P11830136122439441989.correct : P11830136122439441989.Spec := by
  intro n
  simp only [A186328, Nat.add_sub_cancel]

end A186328

/-! ## A186328.P6696539456683192717

`A110654(A144077(n+1)+1)+n`
-/

namespace A186328.P6696539456683192717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A144077 (n + 1) + 1).toNat + (n : ℤ)

end

end A186328.P6696539456683192717

namespace A186328

/-- `A110654(A144077(n+1)+1)+n` -/
def P6696539456683192717.Spec : Prop :=
  ∀ n, P6696539456683192717.a n = A186328 (n + 1)

end A186328

/-! ## A186328.P12409972410769614087

`A008619(A186226(n+1)-n)+n`
-/

namespace A186328.P12409972410769614087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A186226 (n + 1) - (n : ℤ)).toNat + (n : ℤ)

end

end A186328.P12409972410769614087

namespace A186328

/-- `A008619(A186226(n+1)-n)+n` -/
def P12409972410769614087.Spec : Prop :=
  ∀ n, P12409972410769614087.a n = A186328 (n + 1)

end A186328

/-! ## A186328.P13762315921516101162

`A065033(A144077(n+1)+1)+n`
-/

namespace A186328.P13762315921516101162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A144077 (n + 1) + 1).toNat + (n : ℤ)

end

end A186328.P13762315921516101162

namespace A186328

/-- `A065033(A144077(n+1)+1)+n` -/
def P13762315921516101162.Spec : Prop :=
  ∀ n, P13762315921516101162.a n = A186328 (n + 1)

end A186328

/-! ## A186328.P16286090387597103835

`A008619(A186226(n+1)+n)`
-/

namespace A186328.P16286090387597103835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A186226 (n + 1) + (n : ℤ)).toNat

end

end A186328.P16286090387597103835

namespace A186328

/-- `A008619(A186226(n+1)+n)` -/
def P16286090387597103835.Spec : Prop :=
  ∀ n, P16286090387597103835.a n = A186328 (n + 1)

end A186328

/-! ## A186328.P9653934174466974170

`A008619(A003511(A186226(n+1)))`
-/

namespace A186328.P9653934174466974170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A003511 (A186226 (n + 1)).toNat).toNat

end

end A186328.P9653934174466974170

namespace A186328

/-- `A008619(A003511(A186226(n+1)))` -/
def P9653934174466974170.Spec : Prop :=
  ∀ n, P9653934174466974170.a n = A186328 (n + 1)

end A186328

/-! ## A186328.P10770559750451955568

`A123108(A186226(n+1)+n)+1`
-/

namespace A186328.P10770559750451955568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A186226 (n + 1) + (n : ℤ)).toNat + 1

end

end A186328.P10770559750451955568

namespace A186328

/-- `A123108(A186226(n+1)+n)+1` -/
def P10770559750451955568.Spec : Prop :=
  ∀ n, P10770559750451955568.a n = A186328 (n + 1)

end A186328

/-! ## A186328.P8805226125638580826

`A186330(n+1)-A007949(A154551(n+1))`
-/

namespace A186328.P8805226125638580826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186330 (n + 1) - A007949 (A154551 (n + 1)).toNat

end

end A186328.P8805226125638580826

namespace A186328

/-- `A186330(n+1)-A007949(A154551(n+1))` -/
def P8805226125638580826.Spec : Prop :=
  ∀ n, P8805226125638580826.a n = A186328 (n + 1)

end A186328

/-! ## A186328.P2324543105340765798

`A186330(n+1)-A142150(A138170(n+1))`
-/

namespace A186328.P2324543105340765798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186330 (n + 1) - A142150 (A138170 (n + 1)).toNat

end

end A186328.P2324543105340765798

namespace A186328

/-- `A186330(n+1)-A142150(A138170(n+1))` -/
def P2324543105340765798.Spec : Prop :=
  ∀ n, P2324543105340765798.a n = A186328 (n + 1)

end A186328

/-! ## A186328.P7768747983322489048

`A186330(n+1)^A019425(A002378(n))`
-/

namespace A186328.P7768747983322489048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186330 (n + 1) : ℚ) ^ (A019425 (A002378 n).toNat : ℤ)

end

end A186328.P7768747983322489048

namespace A186328

/-- `A186330(n+1)^A019425(A002378(n))` -/
def P7768747983322489048.Spec : Prop :=
  ∀ n, P7768747983322489048.a n = (A186328 (n + 1) : ℚ)

end A186328

/-! ## A186328.P15181428499948713993

`A186330(n+1)-A000007(n²)`
-/

namespace A186328.P15181428499948713993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186330 (n + 1) - A000007 (n ^ 2)

end

end A186328.P15181428499948713993

namespace A186328

/-- `A186330(n+1)-A000007(n²)` -/
def P15181428499948713993.Spec : Prop :=
  ∀ n, P15181428499948713993.a n = A186328 (n + 1)

end A186328

/-! ## A186328.P14585553548250145280

`A186330(n+1)/A054977(n²)`
-/

namespace A186328.P14585553548250145280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186330 (n + 1) : ℚ) / (A054977 (n ^ 2) : ℚ)

end

end A186328.P14585553548250145280

namespace A186328

/-- `A186330(n+1)/A054977(n²)` -/
def P14585553548250145280.Spec : Prop :=
  ∀ n, P14585553548250145280.a n = (A186328 (n + 1) : ℚ)

end A186328

/-!
# A186329: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the pentagonal numbers and the hexagonal numbers. Complement of A186328.

The programs for A186329, the canonical program `A186329.P16704209390700631561` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186329 has offset 1).

The definition of A186329 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186329.P16704209390700631561

`A186225(Δ[n²])-n`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A186329

/-- `A186225(Δ[n²])-n` -/
def P16704209390700631561.Spec : Prop :=
  ∀ n, P16704209390700631561.a n = A186329 (n + 1)

theorem P16704209390700631561.correct : P16704209390700631561.Spec := by
  intro n
  simp only [A186329, Nat.add_sub_cancel]

end A186329

/-! ## A186329.P9910923360024567648

`record[A186225(n+1)-A001281(n)]`
-/

namespace A186329.P9910923360024567648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186225 (n + 1) - A001281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186329.P9910923360024567648

namespace A186329

/-- `record[A186225(n+1)-A001281(n)]` -/
def P9910923360024567648.Spec : Prop :=
  ∀ n, P9910923360024567648.a n = A186329 (n + 1)

end A186329

/-! ## A186329.P10086097036965791690

`record[A186225(n+1)-A006370(n)]`
-/

namespace A186329.P10086097036965791690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186225 (n + 1) - A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186329.P10086097036965791690

namespace A186329

/-- `record[A186225(n+1)-A006370(n)]` -/
def P10086097036965791690.Spec : Prop :=
  ∀ n, P10086097036965791690.a n = A186329 (n + 1)

end A186329

/-! ## A186329.P16229495939667198661

`record[A186225(A026741(n+1))]-n`
-/

namespace A186329.P16229495939667198661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186225 (A026741 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A186329.P16229495939667198661

namespace A186329

/-- `record[A186225(A026741(n+1))]-n` -/
def P16229495939667198661.Spec : Prop :=
  ∀ n, P16229495939667198661.a n = A186329 (n + 1)

end A186329

/-! ## A186329.P8558859735174949687

`record[A186225(n+1)-A168230(n+1)]`
-/

namespace A186329.P8558859735174949687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186225 (n + 1) - A168230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186329.P8558859735174949687

namespace A186329

/-- `record[A186225(n+1)-A168230(n+1)]` -/
def P8558859735174949687.Spec : Prop :=
  ∀ n, P8558859735174949687.a n = A186329 (n + 1)

end A186329

/-! ## A186329.P17018480549601910407

`A097337(A054087(2*(n+1)))-n`
-/

namespace A186329.P17018480549601910407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (A054087 (2 * (n + 1))).toNat - (n : ℤ)

end

end A186329.P17018480549601910407

namespace A186329

/-- `A097337(A054087(2*(n+1)))-n` -/
def P17018480549601910407.Spec : Prop :=
  ∀ n, P17018480549601910407.a n = A186329 (n + 1)

end A186329

/-! ## A186329.P9833972822436930065

`A008620(A180124(2*n+1)+n)`
-/

namespace A186329.P9833972822436930065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A180124 (2 * n + 1) + (n : ℤ)).toNat

end

end A186329.P9833972822436930065

namespace A186329

/-- `A008620(A180124(2*n+1)+n)` -/
def P9833972822436930065.Spec : Prop :=
  ∀ n, P9833972822436930065.a n = A186329 (n + 1)

end A186329

/-! ## A186329.P16507609051467085166

`A186331(n+1)+A072233(∑[n])`
-/

namespace A186329.P16507609051467085166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186331 (n + 1) + A072233 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A186329.P16507609051467085166

namespace A186329

/-- `A186331(n+1)+A072233(∑[n])` -/
def P16507609051467085166.Spec : Prop :=
  ∀ n, P16507609051467085166.a n = A186329 (n + 1)

end A186329

/-! ## A186329.P17773687843687550830

`A186331(n+1)+A000007(A000217(n))`
-/

namespace A186329.P17773687843687550830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186331 (n + 1) + A000007 (A000217 n).toNat

end

end A186329.P17773687843687550830

namespace A186329

/-- `A186331(n+1)+A000007(A000217(n))` -/
def P17773687843687550830.Spec : Prop :=
  ∀ n, P17773687843687550830.a n = A186329 (n + 1)

end A186329

/-! ## A186329.P9836243302101465566

`A035214(A000124(n))*A186331(n+1)`
-/

namespace A186329.P9836243302101465566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (A000124 n).toNat * A186331 (n + 1)

end

end A186329.P9836243302101465566

namespace A186329

/-- `A035214(A000124(n))*A186331(n+1)` -/
def P9836243302101465566.Spec : Prop :=
  ∀ n, P9836243302101465566.a n = A186329 (n + 1)

end A186329

/-! ## A186329.P89890805956562700

`A348033(A348044((n+1)²))+A186331(n+1)`
-/

namespace A186329.P89890805956562700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348033 (A348044 ((n + 1) ^ 2)).toNat + A186331 (n + 1)

end

end A186329.P89890805956562700

namespace A186329

/-- `A348033(A348044((n+1)²))+A186331(n+1)` -/
def P89890805956562700.Spec : Prop :=
  ∀ n, P89890805956562700.a n = A186329 (n + 1)

end A186329

/-! ## A186329.P6701465041820394878

`A186331(n+1)+A000007(A000096(n))`
-/

namespace A186329.P6701465041820394878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186331 (n + 1) + A000007 (A000096 n).toNat

end

end A186329.P6701465041820394878

namespace A186329

/-- `A186331(n+1)+A000007(A000096(n))` -/
def P6701465041820394878.Spec : Prop :=
  ∀ n, P6701465041820394878.a n = A186329 (n + 1)

end A186329

/-! ## A186329.P6523093131159198747

`lcm(A035214(A297467(n)), A186331(n+1))`
-/

namespace A186329.P6523093131159198747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A035214 (A297467 n).toNat) (A186331 (n + 1))

end

end A186329.P6523093131159198747

namespace A186329

/-- `lcm(A035214(A297467(n)), A186331(n+1))` -/
def P6523093131159198747.Spec : Prop :=
  ∀ n, (P6523093131159198747.a n : ℤ) = A186329 (n + 1)

end A186329

/-! ## A186329.P520321258924432423

`A186331(n+1)+A007949(A051507(n+1))`
-/

namespace A186329.P520321258924432423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186331 (n + 1) + A007949 (A051507 (n + 1)).toNat

end

end A186329.P520321258924432423

namespace A186329

/-- `A186331(n+1)+A007949(A051507(n+1))` -/
def P520321258924432423.Spec : Prop :=
  ∀ n, P520321258924432423.a n = A186329 (n + 1)

end A186329

/-! ## A186329.P5622575631350651947

`A186331(n+1)+A000007(n²)`
-/

namespace A186329.P5622575631350651947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186331 (n + 1) + A000007 (n ^ 2)

end

end A186329.P5622575631350651947

namespace A186329

/-- `A186331(n+1)+A000007(n²)` -/
def P5622575631350651947.Spec : Prop :=
  ∀ n, P5622575631350651947.a n = A186329 (n + 1)

end A186329

/-!
# A186330: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f and g are the pentagonal numbers and the hexagonal numbers. Complement of A186331.

The programs for A186330, the canonical program `A186330.P4637361622243978588` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186330 has offset 1).

The definition of A186330 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186330.P4637361622243978588

`ceil((A186224(n+1)+n+1)/2)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A186330

/-- `ceil((A186224(n+1)+n+1)/2)` -/
def P4637361622243978588.Spec : Prop :=
  ∀ n, P4637361622243978588.a n = A186330 (n + 1)

theorem P4637361622243978588.correct : P4637361622243978588.Spec := by
  intro n
  simp only [A186330, Nat.add_sub_cancel]

end A186330

/-! ## A186330.P7897899061320411473

`eq[char[A186331(n+1)], A000007(n)]`
-/

namespace A186330.P7897899061320411473
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186331 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A186330.P7897899061320411473

namespace A186330

/-- `eq[char[A186331(n+1)], A000007(n)]` -/
def P7897899061320411473.Spec : Prop :=
  ∀ n, (P7897899061320411473.a n : ℤ) = A186330 (n + 1)

end A186330

/-! ## A186330.P8681038196307324394

`A008619(A186224(n+1)+n)`
-/

namespace A186330.P8681038196307324394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A186224 (n + 1) + (n : ℤ)).toNat

end

end A186330.P8681038196307324394

namespace A186330

/-- `A008619(A186224(n+1)+n)` -/
def P8681038196307324394.Spec : Prop :=
  ∀ n, P8681038196307324394.a n = A186330 (n + 1)

end A186330

/-! ## A186330.P6685375998467073618

`A004526(A186224(n+1)+n)+1`
-/

namespace A186330.P6685375998467073618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A186224 (n + 1) + (n : ℤ)).toNat + 1

end

end A186330.P6685375998467073618

namespace A186330

/-- `A004526(A186224(n+1)+n)+1` -/
def P6685375998467073618.Spec : Prop :=
  ∀ n, P6685375998467073618.a n = A186330 (n + 1)

end A186330

/-! ## A186330.P8328345001802233238

`A065033(A186224(n+1)+1+n)`
-/

namespace A186330.P8328345001802233238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A186224 (n + 1) + 1 + (n : ℤ)).toNat

end

end A186330.P8328345001802233238

namespace A186330

/-- `A065033(A186224(n+1)+1+n)` -/
def P8328345001802233238.Spec : Prop :=
  ∀ n, P8328345001802233238.a n = A186330 (n + 1)

end A186330

/-! ## A186330.P12996108034565535535

`A110654(A186224(n+1)+1+n)`
-/

namespace A186330.P12996108034565535535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A186224 (n + 1) + 1 + (n : ℤ)).toNat

end

end A186330.P12996108034565535535

namespace A186330

/-- `A110654(A186224(n+1)+1+n)` -/
def P12996108034565535535.Spec : Prop :=
  ∀ n, P12996108034565535535.a n = A186330 (n + 1)

end A186330

/-! ## A186330.P6424278378170975350

`A123108(A186224(n+1)+n)+1`
-/

namespace A186330.P6424278378170975350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A186224 (n + 1) + (n : ℤ)).toNat + 1

end

end A186330.P6424278378170975350

namespace A186330

/-- `A123108(A186224(n+1)+n)+1` -/
def P6424278378170975350.Spec : Prop :=
  ∀ n, P6424278378170975350.a n = A186330 (n + 1)

end A186330

/-! ## A186330.P16237413955778986544

`A135020(or(1, A186224(n+1)+n))`
-/

namespace A186330.P16237413955778986544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135020 (Int.lor 1 (A186224 (n + 1) + (n : ℤ))).toNat

end

end A186330.P16237413955778986544

namespace A186330

/-- `A135020(or(1, A186224(n+1)+n))` -/
def P16237413955778986544.Spec : Prop :=
  ∀ n, P16237413955778986544.a n = A186330 (n + 1)

end A186330

/-! ## A186330.P15569109008368957645

`round(log2(A083099(n+1)))+2`
-/

namespace A186330.P15569109008368957645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A083099 (n + 1) : ℝ)) + 2

end

end A186330.P15569109008368957645

namespace A186330

/-- `round(log2(A083099(n+1)))+2` -/
def P15569109008368957645.Spec : Prop :=
  ∀ n, P15569109008368957645.a n = A186330 (n + 1)

end A186330

/-! ## A186330.P3248010397166608399

`round(log2(A274520(n+1)))+1`
-/

namespace A186330.P3248010397166608399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A274520 (n + 1) : ℝ)) + 1

end

end A186330.P3248010397166608399

namespace A186330

/-- `round(log2(A274520(n+1)))+1` -/
def P3248010397166608399.Spec : Prop :=
  ∀ n, P3248010397166608399.a n = A186330 (n + 1)

end A186330

/-! ## A186330.P18042442013516391926

`floor(log2(A384712(n+1)))`
-/

namespace A186330.P18042442013516391926
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A384712 (n + 1)).toNat

end

end A186330.P18042442013516391926

namespace A186330

/-- `floor(log2(A384712(n+1)))` -/
def P18042442013516391926.Spec : Prop :=
  ∀ n, (P18042442013516391926.a n : ℤ) = A186330 (n + 1)

end A186330

/-! ## A186330.P17064026511554389424

`A186328(n+1)+A007949(A154551(n+1))`
-/

namespace A186330.P17064026511554389424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186328 (n + 1) + A007949 (A154551 (n + 1)).toNat

end

end A186330.P17064026511554389424

namespace A186330

/-- `A186328(n+1)+A007949(A154551(n+1))` -/
def P17064026511554389424.Spec : Prop :=
  ∀ n, P17064026511554389424.a n = A186330 (n + 1)

end A186330

/-! ## A186330.P8732273624238609718

`A186328(n+1)+A142150(A138170(n+1))`
-/

namespace A186330.P8732273624238609718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186328 (n + 1) + A142150 (A138170 (n + 1)).toNat

end

end A186330.P8732273624238609718

namespace A186330

/-- `A186328(n+1)+A142150(A138170(n+1))` -/
def P8732273624238609718.Spec : Prop :=
  ∀ n, P8732273624238609718.a n = A186330 (n + 1)

end A186330

/-! ## A186330.P12476313214191820404

`A186328(n+1)+A000007(n²)`
-/

namespace A186330.P12476313214191820404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186328 (n + 1) + A000007 (n ^ 2)

end

end A186330.P12476313214191820404

namespace A186330

/-- `A186328(n+1)+A000007(n²)` -/
def P12476313214191820404.Spec : Prop :=
  ∀ n, P12476313214191820404.a n = A186330 (n + 1)

end A186330

/-! ## A186330.P16984838084220142320

`A054977(n²)*A186328(n+1)`
-/

namespace A186330.P16984838084220142320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (n ^ 2) * A186328 (n + 1)

end

end A186330.P16984838084220142320

namespace A186330

/-- `A054977(n²)*A186328(n+1)` -/
def P16984838084220142320.Spec : Prop :=
  ∀ n, P16984838084220142320.a n = A186330 (n + 1)

end A186330

/-! ## A186330.P1662725762814808862

`A186328(n+1)+A002448(A002378(n))`
-/

namespace A186330.P1662725762814808862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186328 (n + 1) + A002448 (A002378 n).toNat

end

end A186330.P1662725762814808862

namespace A186330

/-- `A186328(n+1)+A002448(A002378(n))` -/
def P1662725762814808862.Spec : Prop :=
  ∀ n, P1662725762814808862.a n = A186330 (n + 1)

end A186330

/-!
# A186331: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f and g are the pentagonal numbers and the hexagonal numbers. Complement of A186330.

The programs for A186331, the canonical program `A186331.P6947879650581704107` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186331 has offset 1).

The definition of A186331 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186331.P6947879650581704107

`A186223(Δ[n²])-n`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A186331

/-- `A186223(Δ[n²])-n` -/
def P6947879650581704107.Spec : Prop :=
  ∀ n, P6947879650581704107.a n = A186331 (n + 1)

theorem P6947879650581704107.correct : P6947879650581704107.Spec := by
  intro n
  simp only [A186331, Nat.add_sub_cancel]

end A186331

/-! ## A186331.P5538740762871860593

`record[A186223(n+1)-A001281(n)]`
-/

namespace A186331.P5538740762871860593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186223 (n + 1) - A001281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186331.P5538740762871860593

namespace A186331

/-- `record[A186223(n+1)-A001281(n)]` -/
def P5538740762871860593.Spec : Prop :=
  ∀ n, P5538740762871860593.a n = A186331 (n + 1)

end A186331

/-! ## A186331.P17604162825467891192

`record[A186223(n+1)-A006370(n)]`
-/

namespace A186331.P17604162825467891192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186223 (n + 1) - A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186331.P17604162825467891192

namespace A186331

/-- `record[A186223(n+1)-A006370(n)]` -/
def P17604162825467891192.Spec : Prop :=
  ∀ n, P17604162825467891192.a n = A186331 (n + 1)

end A186331

/-! ## A186331.P2159709285833823313

`record[A186223(n+1)-A185452(n)]`
-/

namespace A186331.P2159709285833823313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186223 (n + 1) - A185452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186331.P2159709285833823313

namespace A186331

/-- `record[A186223(n+1)-A185452(n)]` -/
def P2159709285833823313.Spec : Prop :=
  ∀ n, P2159709285833823313.a n = A186331 (n + 1)

end A186331

/-! ## A186331.P7041352301004497762

`record[A186223(n+1)-A028242(n+1)]`
-/

namespace A186331.P7041352301004497762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186223 (n + 1) - A028242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186331.P7041352301004497762

namespace A186331

/-- `record[A186223(n+1)-A028242(n+1)]` -/
def P7041352301004497762.Spec : Prop :=
  ∀ n, P7041352301004497762.a n = A186331 (n + 1)

end A186331

/-! ## A186331.P5124835275536421331

`A186329(n+1)-A000007(∑[n])`
-/

namespace A186331.P5124835275536421331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186329 (n + 1) - A000007 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A186331.P5124835275536421331

namespace A186331

/-- `A186329(n+1)-A000007(∑[n])` -/
def P5124835275536421331.Spec : Prop :=
  ∀ n, P5124835275536421331.a n = A186331 (n + 1)

end A186331

/-! ## A186331.P8539096218604650047

`xor(A186329(n+1), A198954(A000982(n+1)))`
-/

namespace A186331.P8539096218604650047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A186329 (n + 1)) (A198954 (A000982 (n + 1)).toNat)

end

end A186331.P8539096218604650047

namespace A186331

/-- `xor(A186329(n+1), A198954(A000982(n+1)))` -/
def P8539096218604650047.Spec : Prop :=
  ∀ n, P8539096218604650047.a n = A186331 (n + 1)

end A186331

/-! ## A186331.P10773349210993903772

`A186329(n+1)-A198954(A000982(n)+n)`
-/

namespace A186331.P10773349210993903772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186329 (n + 1) - A198954 (A000982 n + (n : ℤ)).toNat

end

end A186331.P10773349210993903772

namespace A186331

/-- `A186329(n+1)-A198954(A000982(n)+n)` -/
def P10773349210993903772.Spec : Prop :=
  ∀ n, P10773349210993903772.a n = A186331 (n + 1)

end A186331

/-! ## A186331.P1639549072125610119

`A186329(n+1)^A004197(A034856(n+1))`
-/

namespace A186331.P1639549072125610119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186329 (n + 1) : ℚ) ^ (A004197 (A034856 (n + 1)).toNat : ℤ)

end

end A186331.P1639549072125610119

namespace A186331

/-- `A186329(n+1)^A004197(A034856(n+1))` -/
def P1639549072125610119.Spec : Prop :=
  ∀ n, P1639549072125610119.a n = (A186331 (n + 1) : ℚ)

end A186331

/-! ## A186331.P6252592665695318599

`A028310(A186329(n+1)%(2*A001541(n)))`
-/

namespace A186331.P6252592665695318599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A186329 (n + 1)) (2 * A001541 n)).toNat

end

end A186331.P6252592665695318599

namespace A186331

/-- `A028310(A186329(n+1)%(2*A001541(n)))` -/
def P6252592665695318599.Spec : Prop :=
  ∀ n, P6252592665695318599.a n = A186331 (n + 1)

end A186331

/-! ## A186331.P12777268111354674431

`A186329(n+1)-A007949(A051507(n+1))`
-/

namespace A186331.P12777268111354674431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186329 (n + 1) - A007949 (A051507 (n + 1)).toNat

end

end A186331.P12777268111354674431

namespace A186331

/-- `A186329(n+1)-A007949(A051507(n+1))` -/
def P12777268111354674431.Spec : Prop :=
  ∀ n, P12777268111354674431.a n = A186331 (n + 1)

end A186331

/-! ## A186331.P10141955615860032523

`A186329(n+1)/A054977(n²)`
-/

namespace A186331.P10141955615860032523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186329 (n + 1) : ℚ) / (A054977 (n ^ 2) : ℚ)

end

end A186331.P10141955615860032523

namespace A186331

/-- `A186329(n+1)/A054977(n²)` -/
def P10141955615860032523.Spec : Prop :=
  ∀ n, P10141955615860032523.a n = (A186331 (n + 1) : ℚ)

end A186331

/-!
# A186332: Riordan array (1, x + x^2 + x^3 + x^4) without 0-column.

The programs for A186332, there is no canonical definition to state claims against.
-/

/-! ## A186332.P10460567365172497868

`A213887(comp[∑[n]])`
-/

namespace A186332.P10460567365172497868
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213887 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A186332.P10460567365172497868

/-! ## A186332.P587691219299931470

`or(char[1], A213887(A014132(n+1)))`
-/

namespace A186332.P587691219299931470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A213887 (A014132 (n + 1)).toNat)

end

end A186332.P587691219299931470

/-! ## A186332.P5578925883980737180

`A213887(comp[C(n, 2)])^A035214(n)`
-/

namespace A186332.P5578925883980737180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213887 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) ^ (A035214 n : ℤ)

end

end A186332.P5578925883980737180

/-! ## A186332.P7294470669229661416

`A213887(comp[C(n, 2)])+n*A000007(n)`
-/

namespace A186332.P7294470669229661416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213887 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + (n : ℤ) * A000007 n

end

end A186332.P7294470669229661416

/-! ## A186332.P15596618635113633784

`lcm(A186039(n), A213887(A014132(n+1)))`
-/

namespace A186332.P15596618635113633784
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A186039 n) (A213887 (A014132 (n + 1)).toNat)

end

end A186332.P15596618635113633784

/-! ## A186332.P17243904067669524580

`∑{d}[A213887(A014132(n+1)), A000010(#)]`
-/

namespace A186332.P17243904067669524580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213887 (A014132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A186332.P17243904067669524580

/-! ## A186332.P13507899356230756175

`A213887(A014132(n+1))/A186039(A213887(n))²`
-/

namespace A186332.P13507899356230756175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213887 (A014132 (n + 1)).toNat : ℚ) / (A186039 (A213887 n).toNat ^ 2 : ℚ)

end

end A186332.P13507899356230756175

/-!
# A186333: Triangle T(n,k), the coefficient of x^n in x^k*(1+x+x^2+2*x^3)^k, 1<=k<=n.

The programs for A186333, there is no canonical definition to state claims against.
-/

/-! ## A186333.P17444826255870903722

`A097724(n)%A005843(A172288(n))`
-/

namespace A186333.P17444826255870903722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097724 n) (A005843 (A172288 n).toNat)

end

end A186333.P17444826255870903722

/-! ## A186333.P5489587976199235887

`and(A005408(A022170(n)), A097724(n))`
-/

namespace A186333.P5489587976199235887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005408 (A022170 n).toNat) (A097724 n)

end

end A186333.P5489587976199235887

/-! ## A186333.P12190408139736160111

`and(A005408(A144860(n)), A097724(n))`
-/

namespace A186333.P12190408139736160111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005408 (A144860 n).toNat) (A097724 n)

end

end A186333.P12190408139736160111

/-!
# A186334: A transform of the Catalan numbers.

The programs for A186334, there is no canonical definition to state claims against.
-/

/-! ## A186334.P6082746766194094583

`Δ[A198708(A000124(n+2))]`
-/

namespace A186334.P6082746766194094583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198708 (A000124 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186334.P6082746766194094583

/-! ## A186334.P1403100988111867380

`Δ[A198708(record[A198468(n+1)])]`
-/

namespace A186334.P1403100988111867380
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198468 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198708 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186334.P1403100988111867380

/-! ## A186334.P17281010537462192620

`Δ[A198708(A167614(n+1)-2)]`
-/

namespace A186334.P17281010537462192620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198708 (A167614 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186334.P17281010537462192620

/-! ## A186334.P8114386878320891137

`A303587(n+4)+A274923(A309861(n))`
-/

namespace A186334.P8114386878320891137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303587 (n + 4) + A274923 (A309861 n).toNat

end

end A186334.P8114386878320891137

/-! ## A186334.P227504101964672319

`A303587(n+4)-A318880(A026676(2*n+1))`
-/

namespace A186334.P227504101964672319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303587 (n + 4) - A318880 (A026676 (2 * n + 1)).toNat

end

end A186334.P227504101964672319

/-!
# A186335: A transform of the central binomial coefficients.

The programs for A186335, there is no canonical definition to state claims against.
-/

/-! ## A186335.P236656897687412940

`Δ[A185089(A032555(n+1))]`
-/

namespace A186335.P236656897687412940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185089 (A032555 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186335.P236656897687412940

/-! ## A186335.P833570206226648184

`Δ[A185089(A032559(n+1))]`
-/

namespace A186335.P833570206226648184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185089 (A032559 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186335.P833570206226648184

/-! ## A186335.P2142065573877357744

`Δ[A185089(A070938(n+1))]`
-/

namespace A186335.P2142065573877357744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185089 (A070938 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186335.P2142065573877357744

/-! ## A186335.P8463075886743468422

`Δ[A185089(A078213(n+1))]`
-/

namespace A186335.P8463075886743468422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185089 (A078213 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186335.P8463075886743468422

/-!
# A186336: Number of ways of representing n as the sum of one or more consecutive semiprimes.

The programs for A186336, there is no canonical definition to state claims against.
-/

/-! ## A186336.P4844544693006713537

`A306853(A213854(n+1))%A124156(n+1)`
-/

namespace A186336.P4844544693006713537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306853 (A213854 (n + 1)).toNat) (A124156 (n + 1))

end

end A186336.P4844544693006713537

/-! ## A186336.P12506475402149126004

`A260736(A239499(3*(n+1))%A091042(n+3))`
-/

namespace A186336.P12506475402149126004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260736 (Int.tmod (A239499 (3 * (n + 1))) (A091042 (n + 3))).toNat

end

end A186336.P12506475402149126004

/-! ## A186336.P8794410183078916428

`and(A035614(n), A341596(A374761(n)))`
-/

namespace A186336.P8794410183078916428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035614 n) (A341596 (A374761 n).toNat)

end

end A186336.P8794410183078916428

/-! ## A186336.P13703956214151762656

`and(A003714(n), A065120(A257783(2*(n+2))))`
-/

namespace A186336.P13703956214151762656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003714 n) (A065120 (A257783 (2 * (n + 2))).toNat)

end

end A186336.P13703956214151762656

/-! ## A186336.P411248602246535132

`and(A014417(n), A088526(A340604(3*n+5)))`
-/

namespace A186336.P411248602246535132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014417 n) (A088526 (A340604 (3 * n + 5)).toNat)

end

end A186336.P411248602246535132

/-!
# A186338: Expansion of 1/(1-2x/(1-2x/(1-x/(1-2x/(1-2x/(1-x/(1-2x/(1-... (continued fraction).

The programs for A186338, there is no canonical definition to state claims against.
-/

/-! ## A186338.P10781769512002166576

`record[gcd(A194274(n), A217669(n))]`
-/

namespace A186338.P10781769512002166576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A194274 n) (A217669 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186338.P10781769512002166576

/-! ## A186338.P13765274582963600275

`A007457(2^n+5^n-A120491(n+1))`
-/

namespace A186338.P13765274582963600275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007457 ((2 ^ n + 5 ^ n : ℤ) - A120491 (n + 1)).toNat

end

end A186338.P13765274582963600275

/-!
# A186339: a(n) = A006125(n+1) * 2^A001840(n).

The programs for A186339, the canonical program `A186339.P16662494727419453789` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186339 has offset 0).

The definition of A186339 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186339.P5683258787463488422

`2^C(n+1, 2)*2^floor((n+1)*(n+2)/6)`
-/

namespace A186339.P5683258787463488422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.choose (n + 1) 2 : ℚ) * (2 : ℚ) ^ (⌊((n + 1) * (n + 2) : ℚ) / 6⌋ : ℤ)

end

end A186339.P5683258787463488422

namespace A186339

/-- `2^C(n+1, 2)*2^floor((n+1)*(n+2)/6)` -/
def P5683258787463488422.Spec : Prop :=
  ∀ n, P5683258787463488422.a n = (A186339 n : ℚ)

end A186339

/-! ## A186339.P16662494727419453789

`2^A320259(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A186339

/-- `2^A320259(n)` -/
def P16662494727419453789.Spec : Prop :=
  ∀ n, P16662494727419453789.a n = (A186339 n : ℚ)

end A186339

/-! ## A186339.P1809508541044669332

`A006125(n+1)*2^A001840(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A186339.P1809508541044669332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006125 (n + 1) : ℚ) * (2 : ℚ) ^ (A001840 n : ℤ)

end

end A186339.P1809508541044669332

namespace A186339

/-- `A006125(n+1)*2^A001840(n)` -/
def P1809508541044669332.Spec : Prop :=
  ∀ n, P1809508541044669332.a n = (A186339 n : ℚ)

end A186339

/-! ## A186339.P4400925389746229730

`2^∑[ceil(4*n/3)]`
-/

namespace A186339.P4400925389746229730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈4 * ((n : ℚ) / 3)⌉

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A186339.P4400925389746229730

namespace A186339

/-- `2^∑[ceil(4*n/3)]` -/
def P4400925389746229730.Spec : Prop :=
  ∀ n, P4400925389746229730.a n = (A186339 n : ℚ)

end A186339

/-! ## A186339.P16323699760664734821

`floor(2^∑[a(n-3)+4])` with `a(0)=0, a(1)=2, a(2)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A186339.P16323699760664734821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3] fun n f1 =>
  f1 (n - 3) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A186339.P16323699760664734821

namespace A186339

/-- `floor(2^∑[a(n-3)+4])` -/
def P16323699760664734821.Spec : Prop :=
  ∀ n, (P16323699760664734821.a n : ℤ) = A186339 n

end A186339

/-!
# A186340: a(n) = 2^A001840(n).

The programs for A186340, the canonical program `A186340.P3689441549172991547` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186340 has offset 0).

The definition of A186340 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186340.P2517398712600710183

`2^floor((n+1)*(n+2)/6)`
-/

namespace A186340.P2517398712600710183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊((n + 1) * (n + 2) : ℚ) / 6⌋ : ℤ)

end

end A186340.P2517398712600710183

namespace A186340

/-- `2^floor((n+1)*(n+2)/6)` -/
def P2517398712600710183.Spec : Prop :=
  ∀ n, P2517398712600710183.a n = (A186340 n : ℚ)

end A186340

/-! ## A186340.P3689441549172991547

`2^A001840(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A186340

/-- `2^A001840(n)` -/
def P3689441549172991547.Spec : Prop :=
  ∀ n, P3689441549172991547.a n = (A186340 n : ℚ)

end A186340

/-! ## A186340.P13371202609855299380

`∏[∏[C(2, n%3)]]`
-/

namespace A186340.P13371202609855299380
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n % 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A186340.P13371202609855299380

namespace A186340

/-- `∏[∏[C(2, n%3)]]` -/
def P13371202609855299380.Spec : Prop :=
  ∀ n, (P13371202609855299380.a n : ℤ) = A186340 n

end A186340

/-! ## A186340.P10455350355595118956

`∏[∏[((n+1)%3)!]]`
-/

namespace A186340.P10455350355595118956
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((n + 1) % 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A186340.P10455350355595118956

namespace A186340

/-- `∏[∏[((n+1)%3)!]]` -/
def P10455350355595118956.Spec : Prop :=
  ∀ n, (P10455350355595118956.a n : ℤ) = A186340 n

end A186340

/-! ## A186340.P13002075522012284842

`∏[∏[(∑[n]+1)%3]]`
-/

namespace A186340.P13002075522012284842
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j + 1) % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A186340.P13002075522012284842

namespace A186340

/-- `∏[∏[(∑[n]+1)%3]]` -/
def P13002075522012284842.Spec : Prop :=
  ∀ n, (P13002075522012284842.a n : ℤ) = A186340 n

end A186340

/-!
# A186341: a(n)=sum{k=0..floor(n/2), binomial(n-k,k)*A186338(k)}.

The programs for A186341, there is no canonical definition to state claims against.
-/

/-! ## A186341.P9556281474311484984

`or(A054846(A149420(n)), A117425(n))`
-/

namespace A186341.P9556281474311484984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A054846 (A149420 n).toNat) (A117425 n)

end

end A186341.P9556281474311484984

/-! ## A186341.P1833032380407623397

`or(A124483(n+1), A147307(A140407(n)))`
-/

namespace A186341.P1833032380407623397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A124483 (n + 1)) (A147307 (A140407 n).toNat)

end

end A186341.P1833032380407623397

/-! ## A186341.P9187517401161644848

`A262689(A011957(3*n+2))+A039651(3*n+2)`
-/

namespace A186341.P9187517401161644848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A011957 (3 * n + 2)).toNat + A039651 (3 * n + 2)

end

end A186341.P9187517401161644848

/-!
# A186342: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the pentagonal numbers and the octagonal numbers. Complement of A186343.

The programs for A186342, the canonical program `A186342.P568721468802834445` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186342 has offset 1).

The definition of A186342 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186342.P568721468802834445

`comp[A186343(n+1)-1]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A186342

/-- `comp[A186343(n+1)-1]+1` -/
def P568721468802834445.Spec : Prop :=
  ∀ n, (P568721468802834445.a n : ℤ) = A186342 (n + 1)

theorem P568721468802834445.correct : P568721468802834445.Spec := by
  intro n
  simp only [A186342, Nat.add_sub_cancel]

end A186342

/-! ## A186342.P1696843896346070667

`round(A184579(2*(n+1))/4)`
-/

namespace A186342.P1696843896346070667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A184579 (2 * (n + 1)) : ℚ) / 4)

end

end A186342.P1696843896346070667

namespace A186342

/-- `round(A184579(2*(n+1))/4)` -/
def P1696843896346070667.Spec : Prop :=
  ∀ n, P1696843896346070667.a n = A186342 (n + 1)

end A186342

/-! ## A186342.P14159762282712920339

`ceil(A186219(3*n+2)/3)`
-/

namespace A186342.P14159762282712920339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A186219 (3 * n + 2) : ℚ) / 3⌉

end

end A186342.P14159762282712920339

namespace A186342

/-- `ceil(A186219(3*n+2)/3)` -/
def P14159762282712920339.Spec : Prop :=
  ∀ n, P14159762282712920339.a n = A186342 (n + 1)

end A186342

/-! ## A186342.P13426613008299206914

`ceil(A186221(3*n+2)/3)`
-/

namespace A186342.P13426613008299206914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A186221 (3 * n + 2) : ℚ) / 3⌉

end

end A186342.P13426613008299206914

namespace A186342

/-- `ceil(A186221(3*n+2)/3)` -/
def P13426613008299206914.Spec : Prop :=
  ∀ n, P13426613008299206914.a n = A186342 (n + 1)

end A186342

/-! ## A186342.P17138237524348802097

`round(A001954(3*n+2)/6)`
-/

namespace A186342.P17138237524348802097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001954 (3 * n + 2) : ℚ) / 6)

end

end A186342.P17138237524348802097

namespace A186342

/-- `round(A001954(3*n+2)/6)` -/
def P17138237524348802097.Spec : Prop :=
  ∀ n, P17138237524348802097.a n = A186342 (n + 1)

end A186342

/-! ## A186342.P9822996598922044261

`round(A003152(6*n+5)/6)`
-/

namespace A186342.P9822996598922044261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A003152 (6 * n + 5) : ℚ) / 6)

end

end A186342.P9822996598922044261

namespace A186342

/-- `round(A003152(6*n+5)/6)` -/
def P9822996598922044261.Spec : Prop :=
  ∀ n, P9822996598922044261.a n = A186342 (n + 1)

end A186342

/-! ## A186342.P7308993962787464026

`round(A248232(3*(n+1))/6)`
-/

namespace A186342.P7308993962787464026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A248232 (3 * (n + 1)) : ℚ) / 6)

end

end A186342.P7308993962787464026

namespace A186342

/-- `round(A248232(3*(n+1))/6)` -/
def P7308993962787464026.Spec : Prop :=
  ∀ n, P7308993962787464026.a n = A186342 (n + 1)

end A186342

/-! ## A186342.P5767654997582807280

`ceil(floor(A248184(3*n+4)/3)/2)`
-/

namespace A186342.P5767654997582807280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌊(A248184 (3 * n + 4) : ℚ) / 3⌋ : ℚ) / 2⌉

end

end A186342.P5767654997582807280

namespace A186342

/-- `ceil(floor(A248184(3*n+4)/3)/2)` -/
def P5767654997582807280.Spec : Prop :=
  ∀ n, P5767654997582807280.a n = A186342 (n + 1)

end A186342

/-! ## A186342.P3172200286390446634

`A004526(A288999(n+1)%A252910(n+1))`
-/

namespace A186342.P3172200286390446634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.tmod (A288999 (n + 1)) (A252910 (n + 1))).toNat

end

end A186342.P3172200286390446634

namespace A186342

/-- `A004526(A288999(n+1)%A252910(n+1))` -/
def P3172200286390446634.Spec : Prop :=
  ∀ n, P3172200286390446634.a n = A186342 (n + 1)

end A186342

/-! ## A186342.P4686107314727772838

`A089864(A089864(n))+A049473(n+2)`
-/

namespace A186342.P4686107314727772838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089864 (A089864 n).toNat + A049473 (n + 2)

end

end A186342.P4686107314727772838

namespace A186342

/-- `A089864(A089864(n))+A049473(n+2)` -/
def P4686107314727772838.Spec : Prop :=
  ∀ n, P4686107314727772838.a n = A186342 (n + 1)

end A186342

/-!
# A186343: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the pentagonal numbers and the octagonal numbers. Complement of A186342.

The programs for A186343, the canonical program `A186343.P11545071070651969370` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186343 has offset 1).

The definition of A186343 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1464 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186343.P11545071070651969370

`A004526(A184623(2*n+1))-n`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A186343

/-- `A004526(A184623(2*n+1))-n` -/
def P11545071070651969370.Spec : Prop :=
  ∀ n, P11545071070651969370.a n = A186343 (n + 1)

theorem P11545071070651969370.correct : P11545071070651969370.Spec := by
  intro n
  simp only [A186343, Nat.add_sub_cancel]

end A186343

/-! ## A186343.P11433184485519477024

`A003056(A374338(n+1))+n`
-/

namespace A186343.P11433184485519477024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A374338 (n + 1)).toNat + (n : ℤ)

end

end A186343.P11433184485519477024

namespace A186343

/-- `A003056(A374338(n+1))+n` -/
def P11433184485519477024.Spec : Prop :=
  ∀ n, P11433184485519477024.a n = A186343 (n + 1)

end A186343

/-! ## A186343.P11137097734938153813

`A184117(n+1)%(A361855(n+1)+1)+1+n`
-/

namespace A186343.P11137097734938153813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184117 (n + 1)) (A361855 (n + 1) + 1) + 1 + (n : ℤ)

end

end A186343.P11137097734938153813

namespace A186343

/-- `A184117(n+1)%(A361855(n+1)+1)+1+n` -/
def P11137097734938153813.Spec : Prop :=
  ∀ n, P11137097734938153813.a n = A186343 (n + 1)

end A186343

/-! ## A186343.P10051363161407212640

`A184117(n+1)+A175060(A175059(n+1))`
-/

namespace A186343.P10051363161407212640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184117 (n + 1) + A175060 (A175059 (n + 1)).toNat

end

end A186343.P10051363161407212640

namespace A186343

/-- `A184117(n+1)+A175060(A175059(n+1))` -/
def P10051363161407212640.Spec : Prop :=
  ∀ n, P10051363161407212640.a n = A186343 (n + 1)

end A186343

/-! ## A186343.P11602189780711579675

`A353592(A355506(n+1))+A184117(n+1)`
-/

namespace A186343.P11602189780711579675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353592 (A355506 (n + 1)).toNat + A184117 (n + 1)

end

end A186343.P11602189780711579675

namespace A186343

/-- `A353592(A355506(n+1))+A184117(n+1)` -/
def P11602189780711579675.Spec : Prop :=
  ∀ n, P11602189780711579675.a n = A186343 (n + 1)

end A186343

/-!
# A186344: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f and g are the pentagonal numbers and the octagonal numbers. Complement of A186345.

The programs for A186344, the canonical program `A186344.P1154538610229371672` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186344 has offset 1).

The definition of A186344 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186344.P1154538610229371672

`comp[A186345(n+1)-1]+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A186344

/-- `comp[A186345(n+1)-1]+1` -/
def P1154538610229371672.Spec : Prop :=
  ∀ n, (P1154538610229371672.a n : ℤ) = A186344 (n + 1)

theorem P1154538610229371672.correct : P1154538610229371672.Spec := by
  intro n
  simp only [A186344, Nat.add_sub_cancel]

end A186344

/-! ## A186344.P1940012763354903436

`A008619(2*comp[A186345(-xor(n, -1))-1])`
-/

namespace A186344.P1940012763354903436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186345 (-Int.xor (n : ℤ) (-1)).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A186344.P1940012763354903436

namespace A186344

/-- `A008619(2*comp[A186345(-xor(n, -1))-1])` -/
def P1940012763354903436.Spec : Prop :=
  ∀ n, P1940012763354903436.a n = A186344 (n + 1)

end A186344

/-! ## A186344.P2021061236051786682

`A003056(∑[∑[log2(gcd(2, n))]])+n+1`
-/

namespace A186344.P2021061236051786682
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + (n + 1 : ℤ)

end

end A186344.P2021061236051786682

namespace A186344

/-- `A003056(∑[∑[log2(gcd(2, n))]])+n+1` -/
def P2021061236051786682.Spec : Prop :=
  ∀ n, P2021061236051786682.a n = A186344 (n + 1)

end A186344

/-! ## A186344.P9510148811732033440

`A003056(∑[∑[char[2*n]]])+1+n`
-/

namespace A186344.P9510148811732033440
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j) + 1 + (n : ℤ)

end

end A186344.P9510148811732033440

namespace A186344

/-- `A003056(∑[∑[char[2*n]]])+1+n` -/
def P9510148811732033440.Spec : Prop :=
  ∀ n, P9510148811732033440.a n = A186344 (n + 1)

end A186344

/-! ## A186344.P11038960995770940052

`A003056(floor((n/2+1)²))+n+1`
-/

namespace A186344.P11038960995770940052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ⌊((n : ℚ) / 2 + 1) ^ 2⌋.toNat + (n + 1 : ℤ)

end

end A186344.P11038960995770940052

namespace A186344

/-- `A003056(floor((n/2+1)²))+n+1` -/
def P11038960995770940052.Spec : Prop :=
  ∀ n, P11038960995770940052.a n = A186344 (n + 1)

end A186344

/-! ## A186344.P3215592769987295075

`A052146(∑[A008619(n)])+2+n`
-/

namespace A186344.P3215592769987295075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052146 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 2 + (n : ℤ)

end

end A186344.P3215592769987295075

namespace A186344

/-- `A052146(∑[A008619(n)])+2+n` -/
def P3215592769987295075.Spec : Prop :=
  ∀ n, P3215592769987295075.a n = A186344 (n + 1)

end A186344

/-! ## A186344.P5328601869793314284

`A002024(A082873(n+1)+1)+n`
-/

namespace A186344.P5328601869793314284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A082873 (n + 1) + 1).toNat + (n : ℤ)

end

end A186344.P5328601869793314284

namespace A186344

/-- `A002024(A082873(n+1)+1)+n` -/
def P5328601869793314284.Spec : Prop :=
  ∀ n, P5328601869793314284.a n = A186344 (n + 1)

end A186344

/-! ## A186344.P9734849531784742963

`A052146(A087811(n+1))+2+n`
-/

namespace A186344.P9734849531784742963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052146 (A087811 (n + 1)).toNat + 2 + (n : ℤ)

end

end A186344.P9734849531784742963

namespace A186344

/-- `A052146(A087811(n+1))+2+n` -/
def P9734849531784742963.Spec : Prop :=
  ∀ n, P9734849531784742963.a n = A186344 (n + 1)

end A186344

/-! ## A186344.P368241397551624874

`A052146(A002620(n+2))+n+2`
-/

namespace A186344.P368241397551624874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052146 (A002620 (n + 2)).toNat + (n + 2 : ℤ)

end

end A186344.P368241397551624874

namespace A186344

/-- `A052146(A002620(n+2))+n+2` -/
def P368241397551624874.Spec : Prop :=
  ∀ n, P368241397551624874.a n = A186344 (n + 1)

end A186344

/-! ## A186344.P12603731148175499810

`n+1+A003056(A008642(2*n))`
-/

namespace A186344.P12603731148175499810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A003056 (A008642 (2 * n)).toNat

end

end A186344.P12603731148175499810

namespace A186344

/-- `n+1+A003056(A008642(2*n))` -/
def P12603731148175499810.Spec : Prop :=
  ∀ n, P12603731148175499810.a n = A186344 (n + 1)

end A186344

/-! ## A186344.P15804989298066591807

`n+1+A003056(A008733(2*n))`
-/

namespace A186344.P15804989298066591807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A003056 (A008733 (2 * n)).toNat

end

end A186344.P15804989298066591807

namespace A186344

/-- `n+1+A003056(A008733(2*n))` -/
def P15804989298066591807.Spec : Prop :=
  ∀ n, P15804989298066591807.a n = A186344 (n + 1)

end A186344

/-! ## A186344.P7797638895236848663

`n+1+A003056(A008797(2*n))`
-/

namespace A186344.P7797638895236848663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A003056 (A008797 (2 * n)).toNat

end

end A186344.P7797638895236848663

namespace A186344

/-- `n+1+A003056(A008797(2*n))` -/
def P7797638895236848663.Spec : Prop :=
  ∀ n, P7797638895236848663.a n = A186344 (n + 1)

end A186344

/-! ## A186344.P8107654621711974116

`n+1+A003056(∑[A065033(n+1)])`
-/

namespace A186344.P8107654621711974116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A186344.P8107654621711974116

namespace A186344

/-- `n+1+A003056(∑[A065033(n+1)])` -/
def P8107654621711974116.Spec : Prop :=
  ∀ n, P8107654621711974116.a n = A186344 (n + 1)

end A186344

/-! ## A186344.P5592258996792372419

`n+1+A003056(∑[A110654(n+1)])`
-/

namespace A186344.P5592258996792372419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A186344.P5592258996792372419

namespace A186344

/-- `n+1+A003056(∑[A110654(n+1)])` -/
def P5592258996792372419.Spec : Prop :=
  ∀ n, P5592258996792372419.a n = A186344 (n + 1)

end A186344

/-! ## A186344.P11366603798356994301

`record[A008619(n)+A003056(A008733(n))]`
-/

namespace A186344.P11366603798356994301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + A003056 (A008733 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186344.P11366603798356994301

namespace A186344

/-- `record[A008619(n)+A003056(A008733(n))]` -/
def P11366603798356994301.Spec : Prop :=
  ∀ n, P11366603798356994301.a n = A186344 (n + 1)

end A186344

/-! ## A186344.P164174089161469978

`record[A008619(n)+A003056(A008797(n))]`
-/

namespace A186344.P164174089161469978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + A003056 (A008797 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186344.P164174089161469978

namespace A186344

/-- `record[A008619(n)+A003056(A008797(n))]` -/
def P164174089161469978.Spec : Prop :=
  ∀ n, P164174089161469978.a n = A186344 (n + 1)

end A186344

/-! ## A186344.P1094323419228509005

`record[A028242(n)+A003056(A008642(n))]`
-/

namespace A186344.P1094323419228509005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n + A003056 (A008642 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186344.P1094323419228509005

namespace A186344

/-- `record[A028242(n)+A003056(A008642(n))]` -/
def P1094323419228509005.Spec : Prop :=
  ∀ n, P1094323419228509005.a n = A186344 (n + 1)

end A186344

/-! ## A186344.P17183854227604224001

`record[A028242(n)+A003056(A008733(n))]`
-/

namespace A186344.P17183854227604224001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n + A003056 (A008733 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186344.P17183854227604224001

namespace A186344

/-- `record[A028242(n)+A003056(A008733(n))]` -/
def P17183854227604224001.Spec : Prop :=
  ∀ n, P17183854227604224001.a n = A186344 (n + 1)

end A186344

/-! ## A186344.P9508566168816341911

`record[A028242(n)+A003056(A008797(n))]`
-/

namespace A186344.P9508566168816341911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n + A003056 (A008797 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186344.P9508566168816341911

namespace A186344

/-- `record[A028242(n)+A003056(A008797(n))]` -/
def P9508566168816341911.Spec : Prop :=
  ∀ n, P9508566168816341911.a n = A186344 (n + 1)

end A186344

/-!
# A186345: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f and g are the pentagonal numbers and the octagonal numbers. Complement of A186344.

The programs for A186345, the canonical program `A186345.P12100612166486790659` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186345 has offset 1).

The definition of A186345 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 720 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186345.P12100612166486790659

`A186343(n+1)-A036987(A186349(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A186345

/-- `A186343(n+1)-A036987(A186349(n+1))` -/
def P12100612166486790659.Spec : Prop :=
  ∀ n, P12100612166486790659.a n = A186345 (n + 1)

theorem P12100612166486790659.correct : P12100612166486790659.Spec := by
  intro n
  simp only [A186345, Nat.add_sub_cancel]

end A186345

/-! ## A186345.P12983193719744484261

`A360926(n+1)-A018892(A076746(n+1))`
-/

namespace A186345.P12983193719744484261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360926 (n + 1) - A018892 (A076746 (n + 1)).toNat

end

end A186345.P12983193719744484261

namespace A186345

/-- `A360926(n+1)-A018892(A076746(n+1))` -/
def P12983193719744484261.Spec : Prop :=
  ∀ n, P12983193719744484261.a n = A186345 (n + 1)

end A186345

/-! ## A186345.P13275543878084468017

`A000267(∑[n]+n)+n`
-/

namespace A186345.P13275543878084468017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (∑ j ∈ Finset.range (n + 1), f1 j + n) + (n : ℤ)

end

end A186345.P13275543878084468017

namespace A186345

/-- `A000267(∑[n]+n)+n` -/
def P13275543878084468017.Spec : Prop :=
  ∀ n, P13275543878084468017.a n = A186345 (n + 1)

end A186345

/-! ## A186345.P6391738970232630610

`A027434(∑[n+1])-1+n`
-/

namespace A186345.P6391738970232630610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027434 (∑ j ∈ Finset.range (n + 1), f1 j) - 1 + (n : ℤ)

end

end A186345.P6391738970232630610

namespace A186345

/-- `A027434(∑[n+1])-1+n` -/
def P6391738970232630610.Spec : Prop :=
  ∀ n, P6391738970232630610.a n = A186345 (n + 1)

end A186345

/-! ## A186345.P7819758750717013578

`A172471((n+1)²+n)+n`
-/

namespace A186345.P7819758750717013578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 ((n + 1) ^ 2 + n) + (n : ℤ)

end

end A186345.P7819758750717013578

namespace A186345

/-- `A172471((n+1)²+n)+n` -/
def P7819758750717013578.Spec : Prop :=
  ∀ n, P7819758750717013578.a n = A186345 (n + 1)

end A186345

/-! ## A186345.P13689588774511059981

`A055086(∑[n]+n)+1+n`
-/

namespace A186345.P13689588774511059981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (∑ j ∈ Finset.range (n + 1), f1 j + n) + 1 + (n : ℤ)

end

end A186345.P13689588774511059981

namespace A186345

/-- `A055086(∑[n]+n)+1+n` -/
def P13689588774511059981.Spec : Prop :=
  ∀ n, P13689588774511059981.a n = A186345 (n + 1)

end A186345

/-! ## A186345.P731723531537489321

`A027434(C(n+2, 2))+n-1`
-/

namespace A186345.P731723531537489321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027434 (Nat.choose (n + 2) 2) + ((n : ℤ) - 1)

end

end A186345.P731723531537489321

namespace A186345

/-- `A027434(C(n+2, 2))+n-1` -/
def P731723531537489321.Spec : Prop :=
  ∀ n, P731723531537489321.a n = A186345 (n + 1)

end A186345

/-! ## A186345.P12954775143580525212

`A049068(∑[n+1])-(∑[n]+2)`
-/

namespace A186345.P12954775143580525212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049068 (∑ j ∈ Finset.range (n + 1), f1 j) - ((∑ j ∈ Finset.range (n + 1), f2 j + 2 : ℕ) : ℤ)

end

end A186345.P12954775143580525212

namespace A186345

/-- `A049068(∑[n+1])-(∑[n]+2)` -/
def P12954775143580525212.Spec : Prop :=
  ∀ n, P12954775143580525212.a n = A186345 (n + 1)

end A186345

/-! ## A186345.P12893108672361488864

`∑[n+2]-A083479(∑[n+1])`
-/

namespace A186345.P12893108672361488864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A083479 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A186345.P12893108672361488864

namespace A186345

/-- `∑[n+2]-A083479(∑[n+1])` -/
def P12893108672361488864.Spec : Prop :=
  ∀ n, P12893108672361488864.a n = A186345 (n + 1)

end A186345

/-! ## A186345.P14638438817323940602

`A183569(∑[n+1])-A000124(n)`
-/

namespace A186345.P14638438817323940602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183569 (∑ j ∈ Finset.range (n + 1), f1 j) - A000124 n

end

end A186345.P14638438817323940602

namespace A186345

/-- `A183569(∑[n+1])-A000124(n)` -/
def P14638438817323940602.Spec : Prop :=
  ∀ n, P14638438817323940602.a n = A186345 (n + 1)

end A186345

/-! ## A186345.P3170926535628589377

`record[A055086(n)+A025581(n+1)]`
-/

namespace A186345.P3170926535628589377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 n + A025581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186345.P3170926535628589377

namespace A186345

/-- `record[A055086(n)+A025581(n+1)]` -/
def P3170926535628589377.Spec : Prop :=
  ∀ n, P3170926535628589377.a n = A186345 (n + 1)

end A186345

/-! ## A186345.P3774134480499414022

`A000267(A000096(n))%A121036(n+1)+n`
-/

namespace A186345.P3774134480499414022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000267 (A000096 n).toNat) (A121036 (n + 1)) + (n : ℤ)

end

end A186345.P3774134480499414022

namespace A186345

/-- `A000267(A000096(n))%A121036(n+1)+n` -/
def P3774134480499414022.Spec : Prop :=
  ∀ n, P3774134480499414022.a n = A186345 (n + 1)

end A186345

/-! ## A186345.P17873413362099164787

`A202304(A008822(n)+n)+n`
-/

namespace A186345.P17873413362099164787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (A008822 n + (n : ℤ)).toNat + (n : ℤ)

end

end A186345.P17873413362099164787

namespace A186345

/-- `A202304(A008822(n)+n)+n` -/
def P17873413362099164787.Spec : Prop :=
  ∀ n, P17873413362099164787.a n = A186345 (n + 1)

end A186345

/-! ## A186345.P8051161836101532887

`A202304(∑[A047513(n+2)])+n`
-/

namespace A186345.P8051161836101532887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n : ℤ)

end

end A186345.P8051161836101532887

namespace A186345

/-- `A202304(∑[A047513(n+2)])+n` -/
def P8051161836101532887.Spec : Prop :=
  ∀ n, P8051161836101532887.a n = A186345 (n + 1)

end A186345

/-!
# A186346: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f(i)=8i and g(j)=j^2. Complement of A186347.

The programs for A186346, the canonical program `A186346.P12310219235987614920` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186346 has offset 1).

The definition of A186346 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186346.P12310219235987614920

`n+1+floor(sqrt(8*(n+1)-1))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A186346

/-- `n+1+floor(sqrt(8*(n+1)-1))` -/
def P12310219235987614920.Spec : Prop :=
  ∀ n, P12310219235987614920.a n = A186346 (n + 1)

theorem P12310219235987614920.correct : P12310219235987614920.Spec := by
  intro n
  simp only [A186346, Nat.add_sub_cancel]

end A186346

/-! ## A186346.P11793525134712683731

`ceil(record[sqrt(xor(7, n))]+n)`
-/

namespace A186346.P11793525134712683731
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.xor 7 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℝ)⌉

end

end A186346.P11793525134712683731

namespace A186346

/-- `ceil(record[sqrt(xor(7, n))]+n)` -/
def P11793525134712683731.Spec : Prop :=
  ∀ n, P11793525134712683731.a n = A186346 (n + 1)

end A186346

/-! ## A186346.P8690470199080089850

`floor(record[sqrt(xor(7, n))]+n+1)`
-/

namespace A186346.P8690470199080089850
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.xor 7 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n + 1 : ℝ)⌋

end

end A186346.P8690470199080089850

namespace A186346

/-- `floor(record[sqrt(xor(7, n))]+n+1)` -/
def P8690470199080089850.Spec : Prop :=
  ∀ n, P8690470199080089850.a n = A186346 (n + 1)

end A186346

/-! ## A186346.P12106307595863501712

`floor(record[sqrt(lcm(4, n+1))]+n+1)`
-/

namespace A186346.P12106307595863501712
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.lcm 4 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n + 1 : ℝ)⌋

end

end A186346.P12106307595863501712

namespace A186346

/-- `floor(record[sqrt(lcm(4, n+1))]+n+1)` -/
def P12106307595863501712.Spec : Prop :=
  ∀ n, P12106307595863501712.a n = A186346 (n + 1)

end A186346

/-! ## A186346.P3184795723774799814

`ceil(sqrt(A004771(n))+n)`
-/

namespace A186346.P3184795723774799814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A004771 n : ℝ) + (n : ℝ)⌉

end

end A186346.P3184795723774799814

namespace A186346

/-- `ceil(sqrt(A004771(n))+n)` -/
def P3184795723774799814.Spec : Prop :=
  ∀ n, P3184795723774799814.a n = A186346 (n + 1)

end A186346

/-! ## A186346.P5172535774003859029

`ceil(sqrt(A017137(n))+n)`
-/

namespace A186346.P5172535774003859029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A017137 n : ℝ) + (n : ℝ)⌉

end

end A186346.P5172535774003859029

namespace A186346

/-- `ceil(sqrt(A017137(n))+n)` -/
def P5172535774003859029.Spec : Prop :=
  ∀ n, P5172535774003859029.a n = A186346 (n + 1)

end A186346

/-! ## A186346.P3742604721739046161

`lt[A286147(A286156(n+2)), n]`
-/

namespace A186346.P3742604721739046161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286147 (A286156 (n + 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A186346.P3742604721739046161

namespace A186346

/-- `lt[A286147(A286156(n+2)), n]` -/
def P3742604721739046161.Spec : Prop :=
  ∀ n, (P3742604721739046161.a n : ℤ) = A186346 (n + 1)

end A186346

/-! ## A186346.P16400551050525463526

`A183574(A007401(n+1))`
-/

namespace A186346.P16400551050525463526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183574 (A007401 (n + 1)).toNat

end

end A186346.P16400551050525463526

namespace A186346

/-- `A183574(A007401(n+1))` -/
def P16400551050525463526.Spec : Prop :=
  ∀ n, P16400551050525463526.a n = A186346 (n + 1)

end A186346

/-! ## A186346.P12596949189994926757

`A181133(A183572(n+1))`
-/

namespace A186346.P12596949189994926757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181133 (A183572 (n + 1)).toNat

end

end A186346.P12596949189994926757

namespace A186346

/-- `A181133(A183572(n+1))` -/
def P12596949189994926757.Spec : Prop :=
  ∀ n, P12596949189994926757.a n = A186346 (n + 1)

end A186346

/-! ## A186346.P4031987793850259913

`∩[A181133(n+1), A183574(n+1)]`
-/

namespace A186346.P4031987793850259913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186346.P4031987793850259913

namespace A186346

/-- `∩[A181133(n+1), A183574(n+1)]` -/
def P4031987793850259913.Spec : Prop :=
  ∀ n, (P4031987793850259913.a n : ℤ) = A186346 (n + 1)

end A186346

/-! ## A186346.P11513956733525975366

`lt[A132460(lt[A132460(n), 2]), 1]`
-/

namespace A186346.P11513956733525975366
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132460 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132460 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n

end

end A186346.P11513956733525975366

namespace A186346

/-- `lt[A132460(lt[A132460(n), 2]), 1]` -/
def P11513956733525975366.Spec : Prop :=
  ∀ n, (P11513956733525975366.a n : ℤ) = A186346 (n + 1)

end A186346

/-! ## A186346.P5685981960889527196

`A004526(A183867(A183867(2*n+1)))`
-/

namespace A186346.P5685981960889527196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A183867 (A183867 (2 * n + 1)).toNat).toNat

end

end A186346.P5685981960889527196

namespace A186346

/-- `A004526(A183867(A183867(2*n+1)))` -/
def P5685981960889527196.Spec : Prop :=
  ∀ n, P5685981960889527196.a n = A186346 (n + 1)

end A186346

/-!
# A186347: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f(i)=8i and g(j)=j^2. Complement of A186346.

The programs for A186347, the canonical program `A186347.P4422284052473125878` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186347 has offset 1).

The definition of A186347 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186347.P4422284052473125878

`n+1+floor(((n+1)²+1/2)/8)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A186347

/-- `n+1+floor(((n+1)²+1/2)/8)` -/
def P4422284052473125878.Spec : Prop :=
  ∀ n, P4422284052473125878.a n = A186347 (n + 1)

theorem P4422284052473125878.correct : P4422284052473125878.Spec := by
  intro n
  simp only [A186347, Nat.add_sub_cancel]

end A186347

/-! ## A186347.P9773104702370915460

`floor(∑[or(1, n)/4+1])`
-/

namespace A186347.P9773104702370915460
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℚ) / 4 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A186347.P9773104702370915460

namespace A186347

/-- `floor(∑[or(1, n)/4+1])` -/
def P9773104702370915460.Spec : Prop :=
  ∀ n, P9773104702370915460.a n = A186347 (n + 1)

end A186347

/-! ## A186347.P17697667662921241561

`abs(∑[ceil((n-tan(2))/4)])`
-/

namespace A186347.P17697667662921241561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℝ) - Real.tan (2 : ℝ)) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A186347.P17697667662921241561

namespace A186347

/-- `abs(∑[ceil((n-tan(2))/4)])` -/
def P17697667662921241561.Spec : Prop :=
  ∀ n, P17697667662921241561.a n = A186347 (n + 1)

end A186347

/-! ## A186347.P8485163973599569314

`∑[or(3, n+2)+1]/4`
-/

namespace A186347.P8485163973599569314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (n + 2) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4

end

end A186347.P8485163973599569314

namespace A186347

/-- `∑[or(3, n+2)+1]/4` -/
def P8485163973599569314.Spec : Prop :=
  ∀ n, P8485163973599569314.a n = (A186347 (n + 1) : ℚ)

end A186347

/-! ## A186347.P3043332924004559866

`floor(∑[∑[n%2/2]+1])`
-/

namespace A186347.P3043332924004559866
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A186347.P3043332924004559866

namespace A186347

/-- `floor(∑[∑[n%2/2]+1])` -/
def P3043332924004559866.Spec : Prop :=
  ∀ n, P3043332924004559866.a n = A186347 (n + 1)

end A186347

/-! ## A186347.P18151614624051252207

`floor(∑[∑[and(1, n)/2]+1])`
-/

namespace A186347.P18151614624051252207
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A186347.P18151614624051252207

namespace A186347

/-- `floor(∑[∑[and(1, n)/2]+1])` -/
def P18151614624051252207.Spec : Prop :=
  ∀ n, P18151614624051252207.a n = A186347 (n + 1)

end A186347

/-! ## A186347.P13832597055802247175

`floor(∑[∑[a(n-4)²]])` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A186347.P13832597055802247175
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 0, 0] fun n f2 =>
  f2 (n - 4) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186347.P13832597055802247175

namespace A186347

/-- `floor(∑[∑[a(n-4)²]])` -/
def P13832597055802247175.Spec : Prop :=
  ∀ n, (P13832597055802247175.a n : ℤ) = A186347 (n + 1)

end A186347

/-! ## A186347.P10407764394771322154

`floor(∑[∑[1-a(n-1)]/2])` with `a(0)=2, a(1)=1`
-/

namespace A186347.P10407764394771322154
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A186347.P10407764394771322154

namespace A186347

/-- `floor(∑[∑[1-a(n-1)]/2])` -/
def P10407764394771322154.Spec : Prop :=
  ∀ n, P10407764394771322154.a n = A186347 (n + 1)

end A186347

/-! ## A186347.P10080026745808459005

`∑[A128929(n+4)]`
-/

namespace A186347.P10080026745808459005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128929 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186347.P10080026745808459005

namespace A186347

/-- `∑[A128929(n+4)]` -/
def P10080026745808459005.Spec : Prop :=
  ∀ n, P10080026745808459005.a n = A186347 (n + 1)

end A186347

/-! ## A186347.P1117927717273540132

`floor(∑[A052938(n+1)/2])`
-/

namespace A186347.P1117927717273540132
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052938 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A186347.P1117927717273540132

namespace A186347

/-- `floor(∑[A052938(n+1)/2])` -/
def P1117927717273540132.Spec : Prop :=
  ∀ n, P1117927717273540132.a n = A186347 (n + 1)

end A186347

/-! ## A186347.P3235029896249714752

`∑[A008619(A008619(n))]`
-/

namespace A186347.P3235029896249714752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186347.P3235029896249714752

namespace A186347

/-- `∑[A008619(A008619(n))]` -/
def P3235029896249714752.Spec : Prop :=
  ∀ n, P3235029896249714752.a n = A186347 (n + 1)

end A186347

/-! ## A186347.P2543175189506396546

`A165718(n+1)%A376313(n+2)`
-/

namespace A186347.P2543175189506396546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165718 (n + 1)) (A376313 (n + 2))

end

end A186347.P2543175189506396546

namespace A186347

/-- `A165718(n+1)%A376313(n+2)` -/
def P2543175189506396546.Spec : Prop :=
  ∀ n, P2543175189506396546.a n = A186347 (n + 1)

end A186347

/-! ## A186347.P17821496034350212500

`∑[A008621(n+2)]`
-/

namespace A186347.P17821496034350212500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186347.P17821496034350212500

namespace A186347

/-- `∑[A008621(n+2)]` -/
def P17821496034350212500.Spec : Prop :=
  ∀ n, P17821496034350212500.a n = A186347 (n + 1)

end A186347

/-! ## A186347.P8126506894138889121

`∑[A110654(A110654(n+3))]`
-/

namespace A186347.P8126506894138889121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A110654 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186347.P8126506894138889121

namespace A186347

/-- `∑[A110654(A110654(n+3))]` -/
def P8126506894138889121.Spec : Prop :=
  ∀ n, P8126506894138889121.a n = A186347 (n + 1)

end A186347

/-! ## A186347.P11083898871791408292

`∑[A110655(n+3)]`
-/

namespace A186347.P11083898871791408292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186347.P11083898871791408292

namespace A186347

/-- `∑[A110655(n+3)]` -/
def P11083898871791408292.Spec : Prop :=
  ∀ n, P11083898871791408292.a n = A186347 (n + 1)

end A186347

/-! ## A186347.P4987290892220936110

`∑[A065033(A065033(n+3))]`
-/

namespace A186347.P4987290892220936110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A065033 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186347.P4987290892220936110

namespace A186347

/-- `∑[A065033(A065033(n+3))]` -/
def P4987290892220936110.Spec : Prop :=
  ∀ n, P4987290892220936110.a n = A186347 (n + 1)

end A186347

/-! ## A186347.P15881255519795795604

`A329547(A004116(n+1))`
-/

namespace A186347.P15881255519795795604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329547 (A004116 (n + 1)).toNat

end

end A186347.P15881255519795795604

namespace A186347

/-- `A329547(A004116(n+1))` -/
def P15881255519795795604.Spec : Prop :=
  ∀ n, P15881255519795795604.a n = A186347 (n + 1)

end A186347

/-! ## A186347.P14052328005048665391

`A080513(A267531(n))`
-/

namespace A186347.P14052328005048665391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A267531 n).toNat

end

end A186347.P14052328005048665391

namespace A186347

/-- `A080513(A267531(n))` -/
def P14052328005048665391.Spec : Prop :=
  ∀ n, P14052328005048665391.a n = A186347 (n + 1)

end A186347

/-! ## A186347.P7971504445290889253

`A008619(A267531(n)+1)`
-/

namespace A186347.P7971504445290889253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A267531 n + 1).toNat

end

end A186347.P7971504445290889253

namespace A186347

/-- `A008619(A267531(n)+1)` -/
def P7971504445290889253.Spec : Prop :=
  ∀ n, P7971504445290889253.a n = A186347 (n + 1)

end A186347

/-!
# A186348: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f(i)=8i and g(j)=j^2. Complement of A186349.

The programs for A186348, the canonical program `A186348.P8777085290837255423` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186348 has offset 1).

The definition of A186348 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186348.P8777085290837255423

`n+1+floor(sqrt(8*(n+1)))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A186348

/-- `n+1+floor(sqrt(8*(n+1)))` -/
def P8777085290837255423.Spec : Prop :=
  ∀ n, (P8777085290837255423.a n : ℤ) = A186348 (n + 1)

theorem P8777085290837255423.correct : P8777085290837255423.Spec := by
  intro n
  simp only [A186348, Nat.add_sub_cancel]

end A186348

/-! ## A186348.P4370600812797974934

`A182835(A007401(n+1))`
-/

namespace A186348.P4370600812797974934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182835 (A007401 (n + 1)).toNat

end

end A186348.P4370600812797974934

namespace A186348

/-- `A182835(A007401(n+1))` -/
def P4370600812797974934.Spec : Prop :=
  ∀ n, P4370600812797974934.a n = A186348 (n + 1)

end A186348

/-! ## A186348.P15861590699700748303

`A182835(A002024(n+1)+n)`
-/

namespace A186348.P15861590699700748303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182835 (A002024 (n + 1) + (n : ℤ)).toNat

end

end A186348.P15861590699700748303

namespace A186348

/-- `A182835(A002024(n+1)+n)` -/
def P15861590699700748303.Spec : Prop :=
  ∀ n, P15861590699700748303.a n = A186348 (n + 1)

end A186348

/-! ## A186348.P11117469533275132002

`A181133(A047839(n+1))`
-/

namespace A186348.P11117469533275132002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181133 (A047839 (n + 1)).toNat

end

end A186348.P11117469533275132002

namespace A186348

/-- `A181133(A047839(n+1))` -/
def P11117469533275132002.Spec : Prop :=
  ∀ n, P11117469533275132002.a n = A186348 (n + 1)

end A186348

/-! ## A186348.P2349418541502888398

`∩[A181133(n+1), A182835(n+1)]`
-/

namespace A186348.P2349418541502888398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186348.P2349418541502888398

namespace A186348

/-- `∩[A181133(n+1), A182835(n+1)]` -/
def P2349418541502888398.Spec : Prop :=
  ∀ n, (P2349418541502888398.a n : ℤ) = A186348 (n + 1)

end A186348

/-! ## A186348.P7747805329547741817

`A181133(A340507(n+1)+A181133(n+1))`
-/

namespace A186348.P7747805329547741817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181133 (A340507 (n + 1) + A181133 (n + 1)).toNat

end

end A186348.P7747805329547741817

namespace A186348

/-- `A181133(A340507(n+1)+A181133(n+1))` -/
def P7747805329547741817.Spec : Prop :=
  ∀ n, P7747805329547741817.a n = A186348 (n + 1)

end A186348

/-! ## A186348.P11656357271348055597

`lt[n*char[A186349(n+1)], n]`
-/

namespace A186348.P11656357271348055597
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186349 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A186348.P11656357271348055597

namespace A186348

/-- `lt[n*char[A186349(n+1)], n]` -/
def P11656357271348055597.Spec : Prop :=
  ∀ n, (P11656357271348055597.a n : ℤ) = A186348 (n + 1)

end A186348

/-! ## A186348.P297113749212639512

`lt[char[A186349(n+1)], A057427(n)]`
-/

namespace A186348.P297113749212639512
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186349 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A186348.P297113749212639512

namespace A186348

/-- `lt[char[A186349(n+1)], A057427(n)]` -/
def P297113749212639512.Spec : Prop :=
  ∀ n, (P297113749212639512.a n : ℤ) = A186348 (n + 1)

end A186348

/-! ## A186348.P7418229789047834977

`round(A184113(2*n+1)/2)`
-/

namespace A186348.P7418229789047834977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A184113 (2 * n + 1) : ℚ) / 2)

end

end A186348.P7418229789047834977

namespace A186348

/-- `round(A184113(2*n+1)/2)` -/
def P7418229789047834977.Spec : Prop :=
  ∀ n, P7418229789047834977.a n = A186348 (n + 1)

end A186348

/-! ## A186348.P9145634403147882798

`A023443(A183867(2*(n+1))-n)`
-/

namespace A186348.P9145634403147882798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A183867 (2 * (n + 1)) - (n : ℤ)).toNat

end

end A186348.P9145634403147882798

namespace A186348

/-- `A023443(A183867(2*(n+1))-n)` -/
def P9145634403147882798.Spec : Prop :=
  ∀ n, P9145634403147882798.a n = A186348 (n + 1)

end A186348

/-! ## A186348.P7679166209119270675

`A004526(A184113(2*n+1)+1)`
-/

namespace A186348.P7679166209119270675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A184113 (2 * n + 1) + 1).toNat

end

end A186348.P7679166209119270675

namespace A186348

/-- `A004526(A184113(2*n+1)+1)` -/
def P7679166209119270675.Spec : Prop :=
  ∀ n, P7679166209119270675.a n = A186348 (n + 1)

end A186348

/-!
# A186349: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f(i)=8i and g(j)=j^2. Complement of A186348.

The programs for A186349, the canonical program `A186349.P12671498765587566354` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186349 has offset 1).

The definition of A186349 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186349.P12671498765587566354

`n+1+floor(((n+1)²-1)/8)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A186349

/-- `n+1+floor(((n+1)²-1)/8)` -/
def P12671498765587566354.Spec : Prop :=
  ∀ n, P12671498765587566354.a n = A186349 (n + 1)

theorem P12671498765587566354.correct : P12671498765587566354.Spec := by
  intro n
  simp only [A186349, Nat.add_sub_cancel]

end A186349

/-! ## A186349.P5595410759089848521

`∑[a(n-4)+1]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1, a(4)=3`
-/

namespace A186349.P5595410759089848521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 1, 3] fun n f1 =>
  f1 (n - 4) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186349.P5595410759089848521

namespace A186349

/-- `∑[a(n-4)+1]` -/
def P5595410759089848521.Spec : Prop :=
  ∀ n, (P5595410759089848521.a n : ℤ) = A186349 (n + 1)

end A186349

/-! ## A186349.P8519292934673435666

`∪[A034856(n+1), A179207(n+1)]`
-/

namespace A186349.P8519292934673435666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A186349.P8519292934673435666

namespace A186349

/-- `∪[A034856(n+1), A179207(n+1)]` -/
def P8519292934673435666.Spec : Prop :=
  ∀ n, (P8519292934673435666.a n : ℤ) = A186349 (n + 1)

end A186349

/-! ## A186349.P15580481871618470564

`∑[A008619(A008619(n)-A062157(n))]`
-/

namespace A186349.P15580481871618470564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A008619 n - A062157 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186349.P15580481871618470564

namespace A186349

/-- `∑[A008619(A008619(n)-A062157(n))]` -/
def P15580481871618470564.Spec : Prop :=
  ∀ n, P15580481871618470564.a n = A186349 (n + 1)

end A186349

/-! ## A186349.P188731563715562088

`eq[1, A152815(n+2)]`
-/

namespace A186349.P188731563715562088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152815 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186349.P188731563715562088

namespace A186349

/-- `eq[1, A152815(n+2)]` -/
def P188731563715562088.Spec : Prop :=
  ∀ n, (P188731563715562088.a n : ℤ) = A186349 (n + 1)

end A186349

/-! ## A186349.P4056646411303506414

`A110654(A035104(n)-n)`
-/

namespace A186349.P4056646411303506414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A035104 n - (n : ℤ)).toNat

end

end A186349.P4056646411303506414

namespace A186349

/-- `A110654(A035104(n)-n)` -/
def P4056646411303506414.Spec : Prop :=
  ∀ n, P4056646411303506414.a n = A186349 (n + 1)

end A186349

/-! ## A186349.P6521908100241201588

`A004526(A035106(n+2)+n)`
-/

namespace A186349.P6521908100241201588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A035106 (n + 2) + (n : ℤ)).toNat

end

end A186349.P6521908100241201588

namespace A186349

/-- `A004526(A035106(n+2)+n)` -/
def P6521908100241201588.Spec : Prop :=
  ∀ n, P6521908100241201588.a n = A186349 (n + 1)

end A186349

/-! ## A186349.P11057887827328012779

`A008619(A035104(n)-(n+1))`
-/

namespace A186349.P11057887827328012779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A035104 n - (n + 1 : ℤ)).toNat

end

end A186349.P11057887827328012779

namespace A186349

/-- `A008619(A035104(n)-(n+1))` -/
def P11057887827328012779.Spec : Prop :=
  ∀ n, P11057887827328012779.a n = A186349 (n + 1)

end A186349

/-! ## A186349.P13014809421725575516

`A004526(A079524(n)+n+2)`
-/

namespace A186349.P13014809421725575516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A079524 n + (n + 2 : ℤ)).toNat

end

end A186349.P13014809421725575516

namespace A186349

/-- `A004526(A079524(n)+n+2)` -/
def P13014809421725575516.Spec : Prop :=
  ∀ n, P13014809421725575516.a n = A186349 (n + 1)

end A186349

/-! ## A186349.P4568513166402310268

`A004526(A184676(n+1)+n+1)`
-/

namespace A186349.P4568513166402310268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A184676 (n + 1) + (n + 1 : ℤ)).toNat

end

end A186349.P4568513166402310268

namespace A186349

/-- `A004526(A184676(n+1)+n+1)` -/
def P4568513166402310268.Spec : Prop :=
  ∀ n, P4568513166402310268.a n = A186349 (n + 1)

end A186349

/-! ## A186349.P6080736481202097314

`A004526(A004652(n+1)+2*n+1)`
-/

namespace A186349.P6080736481202097314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004652 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A186349.P6080736481202097314

namespace A186349

/-- `A004526(A004652(n+1)+2*n+1)` -/
def P6080736481202097314.Spec : Prop :=
  ∀ n, P6080736481202097314.a n = A186349 (n + 1)

end A186349

/-! ## A186349.P1178892691839364501

`A004526(A014616(n+1)+A004526(n))`
-/

namespace A186349.P1178892691839364501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A014616 (n + 1) + A004526 n).toNat

end

end A186349.P1178892691839364501

namespace A186349

/-- `A004526(A014616(n+1)+A004526(n))` -/
def P1178892691839364501.Spec : Prop :=
  ∀ n, P1178892691839364501.a n = A186349 (n + 1)

end A186349

/-! ## A186349.P15878674621518810353

`A004526(A047221(n+1)+A004652(n))`
-/

namespace A186349.P15878674621518810353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A047221 (n + 1) + A004652 n).toNat

end

end A186349.P15878674621518810353

namespace A186349

/-- `A004526(A047221(n+1)+A004652(n))` -/
def P15878674621518810353.Spec : Prop :=
  ∀ n, P15878674621518810353.a n = A186349 (n + 1)

end A186349

/-! ## A186349.P11271405899932413930

`A004526(A265611(n+1)+A004526(n))`
-/

namespace A186349.P11271405899932413930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A265611 (n + 1) + A004526 n).toNat

end

end A186349.P11271405899932413930

namespace A186349

/-- `A004526(A265611(n+1)+A004526(n))` -/
def P11271405899932413930.Spec : Prop :=
  ∀ n, P11271405899932413930.a n = A186349 (n + 1)

end A186349

/-! ## A186349.P11961938984511478467

`A004526(A267531(n+1)-A004526(n+1))`
-/

namespace A186349.P11961938984511478467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A267531 (n + 1) - A004526 (n + 1)).toNat

end

end A186349.P11961938984511478467

namespace A186349

/-- `A004526(A267531(n+1)-A004526(n+1))` -/
def P11961938984511478467.Spec : Prop :=
  ∀ n, P11961938984511478467.a n = A186349 (n + 1)

end A186349

/-! ## A186349.P16457362844199085922

`A059169(A307028(n+2))`
-/

namespace A186349.P16457362844199085922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A307028 (n + 2)).toNat

end

end A186349.P16457362844199085922

namespace A186349

/-- `A059169(A307028(n+2))` -/
def P16457362844199085922.Spec : Prop :=
  ∀ n, P16457362844199085922.a n = A186349 (n + 1)

end A186349

/-!
# A186350: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the odd numbers and the triangular numbers. Complement of A186351.

The programs for A186350, the canonical program `A186350.P695162292826315097` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186350 has offset 1).

The definition of A186350 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186350.P9306074939334427608

`round(cot(Δ[sqrt(n)])+n)`
-/

namespace A186350.P9306074939334427608
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (f1 (n + 1) - f1 n) + (n : ℝ))

end

end A186350.P9306074939334427608

namespace A186350

/-- `round(cot(Δ[sqrt(n)])+n)` -/
def P9306074939334427608.Spec : Prop :=
  ∀ n, P9306074939334427608.a n = A186350 (n + 1)

end A186350

/-! ## A186350.P10014528829812663670

`comp[floor(∑[n/2])-1]`
-/

namespace A186350.P10014528829812663670
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋ - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A186350.P10014528829812663670

namespace A186350

/-- `comp[floor(∑[n/2])-1]` -/
def P10014528829812663670.Spec : Prop :=
  ∀ n, (P10014528829812663670.a n : ℤ) = A186350 (n + 1)

end A186350

/-! ## A186350.P16501569722031081879

`comp[floor(C(n, 2)/2)]-1`
-/

namespace A186350.P16501569722031081879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose n 2 : ℚ) / 2⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 1

end

end A186350.P16501569722031081879

namespace A186350

/-- `comp[floor(C(n, 2)/2)]-1` -/
def P16501569722031081879.Spec : Prop :=
  ∀ n, P16501569722031081879.a n = A186350 (n + 1)

end A186350

/-! ## A186350.P14325775504489392633

`round(sqrt(or(1, 4*n))+n)`
-/

namespace A186350.P14325775504489392633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Nat.lor 1 (4 * n) : ℝ) + (n : ℝ))

end

end A186350.P14325775504489392633

namespace A186350

/-- `round(sqrt(or(1, 4*n))+n)` -/
def P14325775504489392633.Spec : Prop :=
  ∀ n, P14325775504489392633.a n = A186350 (n + 1)

end A186350

/-! ## A186350.P9374200311700190187

`∑[char[ceil(C(n, 2)/2)]]+n`
-/

namespace A186350.P9374200311700190187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose n 2 : ℚ) / 2⌉

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A186350.P9374200311700190187

namespace A186350

/-- `∑[char[ceil(C(n, 2)/2)]]+n` -/
def P9374200311700190187.Spec : Prop :=
  ∀ n, (P9374200311700190187.a n : ℤ) = A186350 (n + 1)

end A186350

/-! ## A186350.P653147534495372271

`comp[A011848(n)]-1`
-/

namespace A186350.P653147534495372271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 1

end

end A186350.P653147534495372271

namespace A186350

/-- `comp[A011848(n)]-1` -/
def P653147534495372271.Spec : Prop :=
  ∀ n, P653147534495372271.a n = A186350 (n + 1)

end A186350

/-! ## A186350.P14715900625420779828

`round(sqrt(A016813(n))+n)`
-/

namespace A186350.P14715900625420779828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A016813 n : ℝ) + (n : ℝ))

end

end A186350.P14715900625420779828

namespace A186350

/-- `round(sqrt(A016813(n))+n)` -/
def P14715900625420779828.Spec : Prop :=
  ∀ n, P14715900625420779828.a n = A186350 (n + 1)

end A186350

/-! ## A186350.P4277782457372115431

`round(sqrt(A016825(n))+n)`
-/

namespace A186350.P4277782457372115431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A016825 n : ℝ) + (n : ℝ))

end

end A186350.P4277782457372115431

namespace A186350

/-- `round(sqrt(A016825(n))+n)` -/
def P4277782457372115431.Spec : Prop :=
  ∀ n, P4277782457372115431.a n = A186350 (n + 1)

end A186350

/-! ## A186350.P6827863154606891679

`round(sqrt(sqrt(A001539(n)))+n)`
-/

namespace A186350.P6827863154606891679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (A001539 n : ℝ)) + (n : ℝ))

end

end A186350.P6827863154606891679

namespace A186350

/-- `round(sqrt(sqrt(A001539(n)))+n)` -/
def P6827863154606891679.Spec : Prop :=
  ∀ n, P6827863154606891679.a n = A186350 (n + 1)

end A186350

/-! ## A186350.P695162292826315097

`A186352(n+1)-A214263(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A186350

/-- `A186352(n+1)-A214263(n)` -/
def P695162292826315097.Spec : Prop :=
  ∀ n, P695162292826315097.a n = A186350 (n + 1)

theorem P695162292826315097.correct : P695162292826315097.Spec := by
  intro n
  simp only [A186350, Nat.add_sub_cancel]

end A186350

/-! ## A186350.P16674739552505329558

`A059261(A163357(2*n))+n+1`
-/

namespace A186350.P16674739552505329558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059261 (A163357 (2 * n)).toNat + (n + 1 : ℤ)

end

end A186350.P16674739552505329558

namespace A186350

/-- `A059261(A163357(2*n))+n+1` -/
def P16674739552505329558.Spec : Prop :=
  ∀ n, P16674739552505329558.a n = A186350 (n + 1)

end A186350

/-! ## A186350.P13297309238579664752

`A059261(A163359(2*n))+n+1`
-/

namespace A186350.P13297309238579664752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059261 (A163359 (2 * n)).toNat + (n + 1 : ℤ)

end

end A186350.P13297309238579664752

namespace A186350

/-- `A059261(A163359(2*n))+n+1` -/
def P13297309238579664752.Spec : Prop :=
  ∀ n, P13297309238579664752.a n = A186350 (n + 1)

end A186350

/-! ## A186350.P16593118091613269680

`lt[1, Δ[A081532(2*(n+1))]]`
-/

namespace A186350.P16593118091613269680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081532 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A186350.P16593118091613269680

namespace A186350

/-- `lt[1, Δ[A081532(2*(n+1))]]` -/
def P16593118091613269680.Spec : Prop :=
  ∀ n, (P16593118091613269680.a n : ℤ) = A186350 (n + 1)

end A186350

/-! ## A186350.P15348719878791491700

`A216256(A004773(n+1))+n`
-/

namespace A186350.P15348719878791491700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216256 (A004773 (n + 1)).toNat + (n : ℤ)

end

end A186350.P15348719878791491700

namespace A186350

/-- `A216256(A004773(n+1))+n` -/
def P15348719878791491700.Spec : Prop :=
  ∀ n, P15348719878791491700.a n = A186350 (n + 1)

end A186350

/-! ## A186350.P12756811029800787722

`A163530(A163334(2*n))+n+1`
-/

namespace A186350.P12756811029800787722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163530 (A163334 (2 * n)).toNat + (n + 1 : ℤ)

end

end A186350.P12756811029800787722

namespace A186350

/-- `A163530(A163334(2*n))+n+1` -/
def P12756811029800787722.Spec : Prop :=
  ∀ n, P12756811029800787722.a n = A186350 (n + 1)

end A186350

/-! ## A186350.P8549858988307964317

`lt[1, Δ[A002260(2*(n+1))]]`
-/

namespace A186350.P8549858988307964317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A186350.P8549858988307964317

namespace A186350

/-- `lt[1, Δ[A002260(2*(n+1))]]` -/
def P8549858988307964317.Spec : Prop :=
  ∀ n, (P8549858988307964317.a n : ℤ) = A186350 (n + 1)

end A186350

/-! ## A186350.P1188166971852980305

`abs(A274093(2*n+1))+n`
-/

namespace A186350.P1188166971852980305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A274093 (2 * n + 1)| + (n : ℤ)

end

end A186350.P1188166971852980305

namespace A186350

/-- `abs(A274093(2*n+1))+n` -/
def P1188166971852980305.Spec : Prop :=
  ∀ n, P1188166971852980305.a n = A186350 (n + 1)

end A186350

/-! ## A186350.P9565511449887034804

`abs(A274094(2*n+1))+n`
-/

namespace A186350.P9565511449887034804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A274094 (2 * n + 1)| + (n : ℤ)

end

end A186350.P9565511449887034804

namespace A186350

/-- `abs(A274094(2*n+1))+n` -/
def P9565511449887034804.Spec : Prop :=
  ∀ n, P9565511449887034804.a n = A186350 (n + 1)

end A186350

/-! ## A186350.P10000698841478280213

`A003056(2*n)+1+n`
-/

namespace A186350.P10000698841478280213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (2 * n) + 1 + (n : ℤ)

end

end A186350.P10000698841478280213

namespace A186350

/-- `A003056(2*n)+1+n` -/
def P10000698841478280213.Spec : Prop :=
  ∀ n, P10000698841478280213.a n = A186350 (n + 1)

end A186350

/-! ## A186350.P4613630456139139813

`A003056(A005843(n))+n+1`
-/

namespace A186350.P4613630456139139813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A005843 n).toNat + (n + 1 : ℤ)

end

end A186350.P4613630456139139813

namespace A186350

/-- `A003056(A005843(n))+n+1` -/
def P4613630456139139813.Spec : Prop :=
  ∀ n, P4613630456139139813.a n = A186350 (n + 1)

end A186350

/-!
# A186351: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the odd numbers and the triangular numbers. Complement of A186350.

The programs for A186351, the canonical program `A186351.P9433912187719141105` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186351 has offset 1).

The definition of A186351 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186351.P9433912187719141105

`ceil(∑[(n+3)/2])`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A186351

/-- `ceil(∑[(n+3)/2])` -/
def P9433912187719141105.Spec : Prop :=
  ∀ n, P9433912187719141105.a n = A186351 (n + 1)

theorem P9433912187719141105.correct : P9433912187719141105.Spec := by
  intro n
  simp only [A186351, Nat.add_sub_cancel]

end A186351

/-! ## A186351.P8225088448327272846

`round(cosh(log(∑[n+3])))`
-/

namespace A186351.P8225088448327272846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)))

end

end A186351.P8225088448327272846

namespace A186351

/-- `round(cosh(log(∑[n+3])))` -/
def P8225088448327272846.Spec : Prop :=
  ∀ n, P8225088448327272846.a n = A186351 (n + 1)

end A186351

/-! ## A186351.P13224390491820438477

`∑[∑[gcd(2, ∑[n])]-n]`
-/

namespace A186351.P13224390491820438477
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186351.P13224390491820438477

namespace A186351

/-- `∑[∑[gcd(2, ∑[n])]-n]` -/
def P13224390491820438477.Spec : Prop :=
  ∀ n, P13224390491820438477.a n = A186351 (n + 1)

end A186351

/-! ## A186351.P11370511824742297472

`floor(∑[or(2, n)/2+1])`
-/

namespace A186351.P11370511824742297472
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℚ) / 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A186351.P11370511824742297472

namespace A186351

/-- `floor(∑[or(2, n)/2+1])` -/
def P11370511824742297472.Spec : Prop :=
  ∀ n, P11370511824742297472.a n = A186351 (n + 1)

end A186351

/-! ## A186351.P3213701053233481542

`floor(C(n+4, 2)/2)-1`
-/

namespace A186351.P3213701053233481542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 4) 2 : ℚ) / 2⌋ - 1

end

end A186351.P3213701053233481542

namespace A186351

/-- `floor(C(n+4, 2)/2)-1` -/
def P3213701053233481542.Spec : Prop :=
  ∀ n, P3213701053233481542.a n = A186351 (n + 1)

end A186351

/-! ## A186351.P8267798762467163031

`round((C(n+3, 2)+n)/2)`
-/

namespace A186351.P8267798762467163031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (n + 3) 2 + n : ℚ) / 2)

end

end A186351.P8267798762467163031

namespace A186351

/-- `round((C(n+3, 2)+n)/2)` -/
def P8267798762467163031.Spec : Prop :=
  ∀ n, P8267798762467163031.a n = A186351 (n + 1)

end A186351

/-! ## A186351.P7369858844515137380

`∑[∑[(∑[n]+1)%2]+1]`
-/

namespace A186351.P7369858844515137380
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j + 1) % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186351.P7369858844515137380

namespace A186351

/-- `∑[∑[(∑[n]+1)%2]+1]` -/
def P7369858844515137380.Spec : Prop :=
  ∀ n, (P7369858844515137380.a n : ℤ) = A186351 (n + 1)

end A186351

/-! ## A186351.P5772007180208789740

`∑[∑[char[or(2, n)+1]]+2]`
-/

namespace A186351.P5772007180208789740
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n + 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186351.P5772007180208789740

namespace A186351

/-- `∑[∑[char[or(2, n)+1]]+2]` -/
def P5772007180208789740.Spec : Prop :=
  ∀ n, (P5772007180208789740.a n : ℤ) = A186351 (n + 1)

end A186351

/-! ## A186351.P9985370753431711341

`floor((record[(n-3)²]+n)/4)`
-/

namespace A186351.P9985370753431711341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ) : ℚ) / 4⌋

end

end A186351.P9985370753431711341

namespace A186351

/-- `floor((record[(n-3)²]+n)/4)` -/
def P9985370753431711341.Spec : Prop :=
  ∀ n, P9985370753431711341.a n = A186351 (n + 1)

end A186351

/-! ## A186351.P2450608629944720157

`record[floor(((3-n)²-n)/4)]`
-/

namespace A186351.P2450608629944720157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((3 - (n : ℤ)) ^ 2 - (n : ℤ) : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186351.P2450608629944720157

namespace A186351

/-- `record[floor(((3-n)²-n)/4)]` -/
def P2450608629944720157.Spec : Prop :=
  ∀ n, P2450608629944720157.a n = A186351 (n + 1)

end A186351

/-! ## A186351.P8398040296590979335

`∑[n+2-∑[and(1, ∑[n])]]`
-/

namespace A186351.P8398040296590979335
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186351.P8398040296590979335

namespace A186351

/-- `∑[n+2-∑[and(1, ∑[n])]]` -/
def P8398040296590979335.Spec : Prop :=
  ∀ n, P8398040296590979335.a n = A186351 (n + 1)

end A186351

/-! ## A186351.P15638663075116291419

`∑[a(n-4)+2]` with `a(0)=2, a(1)=2, a(2)=2, a(3)=3`
-/

namespace A186351.P15638663075116291419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 2, 3] fun n f1 =>
  f1 (n - 4) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186351.P15638663075116291419

namespace A186351

/-- `∑[a(n-4)+2]` -/
def P15638663075116291419.Spec : Prop :=
  ∀ n, (P15638663075116291419.a n : ℤ) = A186351 (n + 1)

end A186351

/-! ## A186351.P11104031901313287747

`∑[∑[1-a(n-2)]]` with `a(0)=2, a(1)=0, a(2)=0`
-/

namespace A186351.P11104031901313287747
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 0] fun n f2 =>
  1 - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186351.P11104031901313287747

namespace A186351

/-- `∑[∑[1-a(n-2)]]` -/
def P11104031901313287747.Spec : Prop :=
  ∀ n, P11104031901313287747.a n = A186351 (n + 1)

end A186351

/-! ## A186351.P3150490108279942111

`∑[∑[and(2, n+3)]/2+1]`
-/

namespace A186351.P3150490108279942111
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (n + 3)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / 2 + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186351.P3150490108279942111

namespace A186351

/-- `∑[∑[and(2, n+3)]/2+1]` -/
def P3150490108279942111.Spec : Prop :=
  ∀ n, P3150490108279942111.a n = (A186351 (n + 1) : ℚ)

end A186351

/-! ## A186351.P12816224906818974268

`ceil(C(n+2, 2)/2)+n+1`
-/

namespace A186351.P12816224906818974268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (n + 2) 2 : ℚ) / 2⌉ + (n + 1 : ℤ)

end

end A186351.P12816224906818974268

namespace A186351

/-- `ceil(C(n+2, 2)/2)+n+1` -/
def P12816224906818974268.Spec : Prop :=
  ∀ n, P12816224906818974268.a n = A186351 (n + 1)

end A186351

/-! ## A186351.P2550984516604258795

`floor((C(n+3, 2)+n+1)/2)`
-/

namespace A186351.P2550984516604258795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 3) 2 + (n + 1) : ℚ) / 2⌋

end

end A186351.P2550984516604258795

namespace A186351

/-- `floor((C(n+3, 2)+n+1)/2)` -/
def P2550984516604258795.Spec : Prop :=
  ∀ n, P2550984516604258795.a n = A186351 (n + 1)

end A186351

/-! ## A186351.P6086802190557003092

`round((record[(n-3)²]+n-2)/4)`
-/

namespace A186351.P6086802190557003092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ((n : ℤ) - 2) : ℚ) / 4)

end

end A186351.P6086802190557003092

namespace A186351

/-- `round((record[(n-3)²]+n-2)/4)` -/
def P6086802190557003092.Spec : Prop :=
  ∀ n, P6086802190557003092.a n = A186351 (n + 1)

end A186351

/-! ## A186351.P12517402538615645979

`∑[∑[floor(xor(3, n+1)/(n+1))]]`
-/

namespace A186351.P12517402538615645979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 3 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186351.P12517402538615645979

namespace A186351

/-- `∑[∑[floor(xor(3, n+1)/(n+1))]]` -/
def P12517402538615645979.Spec : Prop :=
  ∀ n, P12517402538615645979.a n = A186351 (n + 1)

end A186351

/-! ## A186351.P14240397978541749689

`floor((∑[n+3]+gcd(n, n+1))/2)`
-/

namespace A186351.P14240397978541749689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j + Nat.gcd n (n + 1) : ℕ) : ℚ) / 2⌋

end

end A186351.P14240397978541749689

namespace A186351

/-- `floor((∑[n+3]+gcd(n, n+1))/2)` -/
def P14240397978541749689.Spec : Prop :=
  ∀ n, P14240397978541749689.a n = A186351 (n + 1)

end A186351

/-!
# A186352: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f and g are the odd numbers and the triangular numbers. Complement of A186353.

The programs for A186352, the canonical program `A186352.P12779478422952954059` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186352 has offset 1).

The definition of A186352 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186352.P1597997408739223451

`comp[floor(∑[n/2-1])]`
-/

namespace A186352.P1597997408739223451
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A186352.P1597997408739223451

namespace A186352

/-- `comp[floor(∑[n/2-1])]` -/
def P1597997408739223451.Spec : Prop :=
  ∀ n, (P1597997408739223451.a n : ℤ) = A186352 (n + 1)

end A186352

/-! ## A186352.P8404909294772578026

`comp[ceil(C(n, 2)/2)]-2`
-/

namespace A186352.P8404909294772578026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose n 2 : ℚ) / 2⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 2

end

end A186352.P8404909294772578026

namespace A186352

/-- `comp[ceil(C(n, 2)/2)]-2` -/
def P8404909294772578026.Spec : Prop :=
  ∀ n, P8404909294772578026.a n = A186352 (n + 1)

end A186352

/-! ## A186352.P14922197785409190916

`comp[A054925(n)]-2`
-/

namespace A186352.P14922197785409190916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 2

end

end A186352.P14922197785409190916

namespace A186352

/-- `comp[A054925(n)]-2` -/
def P14922197785409190916.Spec : Prop :=
  ∀ n, P14922197785409190916.a n = A186352 (n + 1)

end A186352

/-! ## A186352.P1549548188213227156

`∑[char[A011848(n)]+1]`
-/

namespace A186352.P1549548188213227156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186352.P1549548188213227156

namespace A186352

/-- `∑[char[A011848(n)]+1]` -/
def P1549548188213227156.Spec : Prop :=
  ∀ n, (P1549548188213227156.a n : ℤ) = A186352 (n + 1)

end A186352

/-! ## A186352.P11045197466239275132

`comp[∑[A004525(n)]]-2`
-/

namespace A186352.P11045197466239275132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 2

end

end A186352.P11045197466239275132

namespace A186352

/-- `comp[∑[A004525(n)]]-2` -/
def P11045197466239275132.Spec : Prop :=
  ∀ n, P11045197466239275132.a n = A186352 (n + 1)

end A186352

/-! ## A186352.P15736477598675504669

`round(sqrt(A004767(n))+n)`
-/

namespace A186352.P15736477598675504669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A004767 n : ℝ) + (n : ℝ))

end

end A186352.P15736477598675504669

namespace A186352

/-- `round(sqrt(A004767(n))+n)` -/
def P15736477598675504669.Spec : Prop :=
  ∀ n, P15736477598675504669.a n = A186352 (n + 1)

end A186352

/-! ## A186352.P10048677187080435660

`comp[ceil(A000217(n)/2)]-2`
-/

namespace A186352.P10048677187080435660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000217 n : ℚ) / 2⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 2

end

end A186352.P10048677187080435660

namespace A186352

/-- `comp[ceil(A000217(n)/2)]-2` -/
def P10048677187080435660.Spec : Prop :=
  ∀ n, P10048677187080435660.a n = A186352 (n + 1)

end A186352

/-! ## A186352.P15521150305857369444

`round(sqrt(A016813(n)+2)+n)`
-/

namespace A186352.P15521150305857369444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A016813 n + 2 : ℝ) + (n : ℝ))

end

end A186352.P15521150305857369444

namespace A186352

/-- `round(sqrt(A016813(n)+2)+n)` -/
def P15521150305857369444.Spec : Prop :=
  ∀ n, P15521150305857369444.a n = A186352 (n + 1)

end A186352

/-! ## A186352.P11201282549632882432

`round(sqrt(Δ[A000217(2*n)]))+n`
-/

namespace A186352.P11201282549632882432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (n + 1) - f1 n : ℝ)) + (n : ℤ)

end

end A186352.P11201282549632882432

namespace A186352

/-- `round(sqrt(Δ[A000217(2*n)]))+n` -/
def P11201282549632882432.Spec : Prop :=
  ∀ n, P11201282549632882432.a n = A186352 (n + 1)

end A186352

/-! ## A186352.P12779478422952954059

`eq[1, A131843(2*n+1)]-1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A186352

/-- `eq[1, A131843(2*n+1)]-1` -/
def P12779478422952954059.Spec : Prop :=
  ∀ n, P12779478422952954059.a n = A186352 (n + 1)

theorem P12779478422952954059.correct : P12779478422952954059.Spec := by
  intro n
  simp only [A186352, Nat.add_sub_cancel]

end A186352

/-! ## A186352.P17745298898270316171

`A214263(n)+A186350(n+1)`
-/

namespace A186352.P17745298898270316171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214263 n + A186350 (n + 1)

end

end A186352.P17745298898270316171

namespace A186352

/-- `A214263(n)+A186350(n+1)` -/
def P17745298898270316171.Spec : Prop :=
  ∀ n, P17745298898270316171.a n = A186352 (n + 1)

end A186352

/-! ## A186352.P7600293556289162411

`A059261(A163357(2*n+1))+n+1`
-/

namespace A186352.P7600293556289162411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059261 (A163357 (2 * n + 1)).toNat + (n + 1 : ℤ)

end

end A186352.P7600293556289162411

namespace A186352

/-- `A059261(A163357(2*n+1))+n+1` -/
def P7600293556289162411.Spec : Prop :=
  ∀ n, P7600293556289162411.a n = A186352 (n + 1)

end A186352

/-! ## A186352.P9376428950964115160

`A059261(A163359(2*n+1))+n+1`
-/

namespace A186352.P9376428950964115160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059261 (A163359 (2 * n + 1)).toNat + (n + 1 : ℤ)

end

end A186352.P9376428950964115160

namespace A186352

/-- `A059261(A163359(2*n+1))+n+1` -/
def P9376428950964115160.Spec : Prop :=
  ∀ n, P9376428950964115160.a n = A186352 (n + 1)

end A186352

/-! ## A186352.P14948264621266091638

`lt[2, A057036(n+1)]-2`
-/

namespace A186352.P14948264621266091638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 2

end

end A186352.P14948264621266091638

namespace A186352

/-- `lt[2, A057036(n+1)]-2` -/
def P14948264621266091638.Spec : Prop :=
  ∀ n, P14948264621266091638.a n = A186352 (n + 1)

end A186352

/-! ## A186352.P2113208365650825487

`A163530(A163334(2*n+1))+n+1`
-/

namespace A186352.P2113208365650825487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163530 (A163334 (2 * n + 1)).toNat + (n + 1 : ℤ)

end

end A186352.P2113208365650825487

namespace A186352

/-- `A163530(A163334(2*n+1))+n+1` -/
def P2113208365650825487.Spec : Prop :=
  ∀ n, P2113208365650825487.a n = A186352 (n + 1)

end A186352

/-! ## A186352.P3440461417044912878

`lt[2, A002260(2*n+5)]`
-/

namespace A186352.P3440461417044912878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A186352.P3440461417044912878

namespace A186352

/-- `lt[2, A002260(2*n+5)]` -/
def P3440461417044912878.Spec : Prop :=
  ∀ n, (P3440461417044912878.a n : ℤ) = A186352 (n + 1)

end A186352

/-! ## A186352.P10848075190517110623

`lt[A286235(A286234(2*n+3)), A286234(2*n+3)]`
-/

namespace A186352.P10848075190517110623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286235 (A286234 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286234 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A186352.P10848075190517110623

namespace A186352

/-- `lt[A286235(A286234(2*n+3)), A286234(2*n+3)]` -/
def P10848075190517110623.Spec : Prop :=
  ∀ n, (P10848075190517110623.a n : ℤ) = A186352 (n + 1)

end A186352

/-! ## A186352.P18086336331531613839

`∑[ceil(2/A007318(2*n))]`
-/

namespace A186352.P18086336331531613839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (A007318 (2 * n) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186352.P18086336331531613839

namespace A186352

/-- `∑[ceil(2/A007318(2*n))]` -/
def P18086336331531613839.Spec : Prop :=
  ∀ n, P18086336331531613839.a n = A186352 (n + 1)

end A186352

/-! ## A186352.P3485224228126339798

`∑[A000041(C(2, A007318(2*n)))]`
-/

namespace A186352.P3485224228126339798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (A007318 (2 * n)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186352.P3485224228126339798

namespace A186352

/-- `∑[A000041(C(2, A007318(2*n)))]` -/
def P3485224228126339798.Spec : Prop :=
  ∀ n, P3485224228126339798.a n = A186352 (n + 1)

end A186352

/-! ## A186352.P2722277448297717691

`∑[A000108(C(2, A007318(2*n)))]`
-/

namespace A186352.P2722277448297717691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (A007318 (2 * n)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186352.P2722277448297717691

namespace A186352

/-- `∑[A000108(C(2, A007318(2*n)))]` -/
def P2722277448297717691.Spec : Prop :=
  ∀ n, P2722277448297717691.a n = A186352 (n + 1)

end A186352

/-!
# A186353: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f and g are the odd numbers and the triangular numbers. Complement of A186353.

The programs for A186353, the canonical program `A186353.P9283056633779250319` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186353 has offset 1).

The definition of A186353 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186353.P9283056633779250319

`n+1+floor(((n+1)²+n+1+1)/4)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A186353

/-- `n+1+floor(((n+1)²+n+1+1)/4)` -/
def P9283056633779250319.Spec : Prop :=
  ∀ n, P9283056633779250319.a n = A186353 (n + 1)

theorem P9283056633779250319.correct : P9283056633779250319.Spec := by
  intro n
  simp only [A186353, Nat.add_sub_cancel]

end A186353

/-! ## A186353.P4613195761900065460

`round(sinh(log(∑[n+3])))`
-/

namespace A186353.P4613195761900065460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (Real.log ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)))

end

end A186353.P4613195761900065460

namespace A186353

/-- `round(sinh(log(∑[n+3])))` -/
def P4613195761900065460.Spec : Prop :=
  ∀ n, P4613195761900065460.a n = A186353 (n + 1)

end A186353

/-! ## A186353.P13489996685760607266

`∑[∑[∑[n]%2]+1]`
-/

namespace A186353.P13489996685760607266
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186353.P13489996685760607266

namespace A186353

/-- `∑[∑[∑[n]%2]+1]` -/
def P13489996685760607266.Spec : Prop :=
  ∀ n, (P13489996685760607266.a n : ℤ) = A186353 (n + 1)

end A186353

/-! ## A186353.P9976448216440598250

`∑[∑[and(1, ∑[n])]+1]`
-/

namespace A186353.P9976448216440598250
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186353.P9976448216440598250

namespace A186353

/-- `∑[∑[and(1, ∑[n])]+1]` -/
def P9976448216440598250.Spec : Prop :=
  ∀ n, (P9976448216440598250.a n : ℤ) = A186353 (n + 1)

end A186353

/-! ## A186353.P18027564298179841470

`round(cot(2/∑[n+3]))`
-/

namespace A186353.P18027564298179841470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (2 / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) : ℝ))

end

end A186353.P18027564298179841470

namespace A186353

/-- `round(cot(2/∑[n+3]))` -/
def P18027564298179841470.Spec : Prop :=
  ∀ n, P18027564298179841470.a n = A186353 (n + 1)

end A186353

/-! ## A186353.P11564866400507365044

`∑[∑[and(1, ∑[n])^n]]`
-/

namespace A186353.P11564866400507365044
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f3 j) ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186353.P11564866400507365044

namespace A186353

/-- `∑[∑[and(1, ∑[n])^n]]` -/
def P11564866400507365044.Spec : Prop :=
  ∀ n, (P11564866400507365044.a n : ℤ) = A186353 (n + 1)

end A186353

/-! ## A186353.P15633667323022474966

`ceil(∑[or(2, n+2)/2])`
-/

namespace A186353.P15633667323022474966
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (n + 2) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A186353.P15633667323022474966

namespace A186353

/-- `ceil(∑[or(2, n+2)/2])` -/
def P15633667323022474966.Spec : Prop :=
  ∀ n, P15633667323022474966.a n = A186353 (n + 1)

end A186353

/-! ## A186353.P1438563231541158749

`round(∑[or(2, n+2)/2])`
-/

namespace A186353.P1438563231541158749
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (n + 2) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A186353.P1438563231541158749

namespace A186353

/-- `round(∑[or(2, n+2)/2])` -/
def P1438563231541158749.Spec : Prop :=
  ∀ n, P1438563231541158749.a n = A186353 (n + 1)

end A186353

/-! ## A186353.P1442059366404527560

`(or(1, ∑[n+3])-1)/2`
-/

namespace A186353.P1442059366404527560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 1 : ℚ) / 2

end

end A186353.P1442059366404527560

namespace A186353

/-- `(or(1, ∑[n+3])-1)/2` -/
def P1442059366404527560.Spec : Prop :=
  ∀ n, P1442059366404527560.a n = (A186353 (n + 1) : ℚ)

end A186353

/-! ## A186353.P13743554248864586146

`∑[a(n-4)+2]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=3`
-/

namespace A186353.P13743554248864586146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 3] fun n f1 =>
  f1 (n - 4) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186353.P13743554248864586146

namespace A186353

/-- `∑[a(n-4)+2]` -/
def P13743554248864586146.Spec : Prop :=
  ∀ n, (P13743554248864586146.a n : ℤ) = A186353 (n + 1)

end A186353

/-! ## A186353.P4774891443240541355

`∑[∑[1-a(n-2)]]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A186353.P4774891443240541355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n f2 =>
  1 - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186353.P4774891443240541355

namespace A186353

/-- `∑[∑[1-a(n-2)]]` -/
def P4774891443240541355.Spec : Prop :=
  ∀ n, P4774891443240541355.a n = A186353 (n + 1)

end A186353

/-! ## A186353.P1841591594273478671

`ceil(C(n, 2)/2+2*n+1)`
-/

namespace A186353.P1841591594273478671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose n 2 : ℚ) / 2 + (2 * n + 1 : ℚ)⌉

end

end A186353.P1841591594273478671

namespace A186353

/-- `ceil(C(n, 2)/2+2*n+1)` -/
def P1841591594273478671.Spec : Prop :=
  ∀ n, P1841591594273478671.a n = A186353 (n + 1)

end A186353

/-! ## A186353.P5807045349314468693

`ceil((C(n+3, 2)+n-1)/2)`
-/

namespace A186353.P5807045349314468693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.choose (n + 3) 2 : ℤ) + ((n : ℤ) - 1) : ℚ) / 2⌉

end

end A186353.P5807045349314468693

namespace A186353

/-- `ceil((C(n+3, 2)+n-1)/2)` -/
def P5807045349314468693.Spec : Prop :=
  ∀ n, P5807045349314468693.a n = A186353 (n + 1)

end A186353

/-! ## A186353.P9818003650897968475

`round(C(n, 2)/2+2*n+1)`
-/

namespace A186353.P9818003650897968475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose n 2 : ℚ) / 2 + (2 * n + 1 : ℚ))

end

end A186353.P9818003650897968475

namespace A186353

/-- `round(C(n, 2)/2+2*n+1)` -/
def P9818003650897968475.Spec : Prop :=
  ∀ n, P9818003650897968475.a n = A186353 (n + 1)

end A186353

/-! ## A186353.P10509899390953041265

`round((C(n+3, 2)+n-1)/2)`
-/

namespace A186353.P10509899390953041265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.choose (n + 3) 2 : ℤ) + ((n : ℤ) - 1) : ℚ) / 2)

end

end A186353.P10509899390953041265

namespace A186353

/-- `round((C(n+3, 2)+n-1)/2)` -/
def P10509899390953041265.Spec : Prop :=
  ∀ n, P10509899390953041265.a n = A186353 (n + 1)

end A186353

/-! ## A186353.P8030178490125841129

`record[floor(((3-n)²-(n+2))/4)]`
-/

namespace A186353.P8030178490125841129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((3 - (n : ℤ)) ^ 2 - (n + 2 : ℤ) : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186353.P8030178490125841129

namespace A186353

/-- `record[floor(((3-n)²-(n+2))/4)]` -/
def P8030178490125841129.Spec : Prop :=
  ∀ n, P8030178490125841129.a n = A186353 (n + 1)

end A186353

/-! ## A186353.P5358780132052413079

`ceil(lcm(n, n-1)/4+2*n+1)`
-/

namespace A186353.P5358780132052413079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.lcm (n : ℤ) ((n : ℤ) - 1) : ℚ) / 4 + (2 * n + 1 : ℚ)⌉

end

end A186353.P5358780132052413079

namespace A186353

/-- `ceil(lcm(n, n-1)/4+2*n+1)` -/
def P5358780132052413079.Spec : Prop :=
  ∀ n, P5358780132052413079.a n = A186353 (n + 1)

end A186353

/-! ## A186353.P288800439090624419

`∑[∪[2*n+1, 3*(n+1)]-n]`
-/

namespace A186353.P288800439090624419
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186353.P288800439090624419

namespace A186353

/-- `∑[∪[2*n+1, 3*(n+1)]-n]` -/
def P288800439090624419.Spec : Prop :=
  ∀ n, P288800439090624419.a n = A186353 (n + 1)

end A186353

/-! ## A186353.P11447834519612185227

`∑[n+1-A004524(n)]`
-/

namespace A186353.P11447834519612185227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A004524 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186353.P11447834519612185227

namespace A186353

/-- `∑[n+1-A004524(n)]` -/
def P11447834519612185227.Spec : Prop :=
  ∀ n, P11447834519612185227.a n = A186353 (n + 1)

end A186353

/-! ## A186353.P4662676184628270452

`∑[A301729(n+1)-n]`
-/

namespace A186353.P4662676184628270452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301729 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186353.P4662676184628270452

namespace A186353

/-- `∑[A301729(n+1)-n]` -/
def P4662676184628270452.Spec : Prop :=
  ∀ n, P4662676184628270452.a n = A186353 (n + 1)

end A186353

/-!
# A186354: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f(i)=3i and g(j)=j(j+1)/2 (triangular number). Complement of A186355.

The programs for A186354, the canonical program `A186354.P1694336808375307866` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186354 has offset 1).

The definition of A186354 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186354.P12903652629929374737

`comp[floor(∑[n/3-1])]`
-/

namespace A186354.P12903652629929374737
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A186354.P12903652629929374737

namespace A186354

/-- `comp[floor(∑[n/3-1])]` -/
def P12903652629929374737.Spec : Prop :=
  ∀ n, (P12903652629929374737.a n : ℤ) = A186354 (n + 1)

end A186354

/-! ## A186354.P4119699406003580447

`comp[∑[comp[or(3, n)]-n]]-2`
-/

namespace A186354.P4119699406003580447
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 2

end

end A186354.P4119699406003580447

namespace A186354

/-- `comp[∑[comp[or(3, n)]-n]]-2` -/
def P4119699406003580447.Spec : Prop :=
  ∀ n, P4119699406003580447.a n = A186354 (n + 1)

end A186354

/-! ## A186354.P1426141729888366598

`round(sqrt(or(1, 6*n)+3)+n)`
-/

namespace A186354.P1426141729888366598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Nat.lor 1 (6 * n) + 3 : ℝ) + (n : ℝ))

end

end A186354.P1426141729888366598

namespace A186354

/-- `round(sqrt(or(1, 6*n)+3)+n)` -/
def P1426141729888366598.Spec : Prop :=
  ∀ n, P1426141729888366598.a n = A186354 (n + 1)

end A186354

/-! ## A186354.P9875740467554264202

`comp[A001840(n)]-2`
-/

namespace A186354.P9875740467554264202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 2

end

end A186354.P9875740467554264202

namespace A186354

/-- `comp[A001840(n)]-2` -/
def P9875740467554264202.Spec : Prop :=
  ∀ n, P9875740467554264202.a n = A186354 (n + 1)

end A186354

/-! ## A186354.P16952189432253374300

`comp[A008731(n)]-2`
-/

namespace A186354.P16952189432253374300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008731 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 2

end

end A186354.P16952189432253374300

namespace A186354

/-- `comp[A008731(n)]-2` -/
def P16952189432253374300.Spec : Prop :=
  ∀ n, P16952189432253374300.a n = A186354 (n + 1)

end A186354

/-! ## A186354.P9209667617790595330

`comp[A025814(n)]-2`
-/

namespace A186354.P9209667617790595330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025814 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 2

end

end A186354.P9209667617790595330

namespace A186354

/-- `comp[A025814(n)]-2` -/
def P9209667617790595330.Spec : Prop :=
  ∀ n, P9209667617790595330.a n = A186354 (n + 1)

end A186354

/-! ## A186354.P6670428280560564414

`comp[A309683(n)]-2`
-/

namespace A186354.P6670428280560564414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309683 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 2

end

end A186354.P6670428280560564414

namespace A186354

/-- `comp[A309683(n)]-2` -/
def P6670428280560564414.Spec : Prop :=
  ∀ n, P6670428280560564414.a n = A186354 (n + 1)

end A186354

/-! ## A186354.P12477840171149980959

`comp[A309685(n)]-2`
-/

namespace A186354.P12477840171149980959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309685 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 2

end

end A186354.P12477840171149980959

namespace A186354

/-- `comp[A309685(n)]-2` -/
def P12477840171149980959.Spec : Prop :=
  ∀ n, P12477840171149980959.a n = A186354 (n + 1)

end A186354

/-! ## A186354.P9700138168929103389

`A080353(n+1)-3`
-/

namespace A186354.P9700138168929103389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080353 (n + 1) - 3

end

end A186354.P9700138168929103389

namespace A186354

/-- `A080353(n+1)-3` -/
def P9700138168929103389.Spec : Prop :=
  ∀ n, P9700138168929103389.a n = A186354 (n + 1)

end A186354

/-! ## A186354.P1694336808375307866

`A073188(n)+2+n`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A186354

/-- `A073188(n)+2+n` -/
def P1694336808375307866.Spec : Prop :=
  ∀ n, P1694336808375307866.a n = A186354 (n + 1)

theorem P1694336808375307866.correct : P1694336808375307866.Spec := by
  intro n
  simp only [A186354, Nat.add_sub_cancel]

end A186354

/-! ## A186354.P9888662964283011304

`∑[A080354(abs(1-n))]`
-/

namespace A186354.P9888662964283011304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080354 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186354.P9888662964283011304

namespace A186354

/-- `∑[A080354(abs(1-n))]` -/
def P9888662964283011304.Spec : Prop :=
  ∀ n, P9888662964283011304.a n = A186354 (n + 1)

end A186354

/-! ## A186354.P15811088397194994394

`∑[char[A008799(n)]+1]`
-/

namespace A186354.P15811088397194994394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008799 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186354.P15811088397194994394

namespace A186354

/-- `∑[char[A008799(n)]+1]` -/
def P15811088397194994394.Spec : Prop :=
  ∀ n, (P15811088397194994394.a n : ℤ) = A186354 (n + 1)

end A186354

/-! ## A186354.P15363627749945338275

`round(sqrt(A016945(n))+n)`
-/

namespace A186354.P15363627749945338275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A016945 n : ℝ) + (n : ℝ))

end

end A186354.P15363627749945338275

namespace A186354

/-- `round(sqrt(A016945(n))+n)` -/
def P15363627749945338275.Spec : Prop :=
  ∀ n, P15363627749945338275.a n = A186354 (n + 1)

end A186354

/-! ## A186354.P7400983229467328047

`round(sqrt(A016957(n))+n)`
-/

namespace A186354.P7400983229467328047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A016957 n : ℝ) + (n : ℝ))

end

end A186354.P7400983229467328047

namespace A186354

/-- `round(sqrt(A016957(n))+n)` -/
def P7400983229467328047.Spec : Prop :=
  ∀ n, P7400983229467328047.a n = A186354 (n + 1)

end A186354

/-! ## A186354.P14333070005726860501

`round(sqrt(A016969(n))+n)`
-/

namespace A186354.P14333070005726860501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A016969 n : ℝ) + (n : ℝ))

end

end A186354.P14333070005726860501

namespace A186354

/-- `round(sqrt(A016969(n))+n)` -/
def P14333070005726860501.Spec : Prop :=
  ∀ n, P14333070005726860501.a n = A186354 (n + 1)

end A186354

/-! ## A186354.P7586999213757692338

`comp[A008750(n)-2]-2`
-/

namespace A186354.P7586999213757692338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008750 n - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 2

end

end A186354.P7586999213757692338

namespace A186354

/-- `comp[A008750(n)-2]-2` -/
def P7586999213757692338.Spec : Prop :=
  ∀ n, P7586999213757692338.a n = A186354 (n + 1)

end A186354

/-! ## A186354.P496369449118622272

`A235963(n)+A183217(n+1)`
-/

namespace A186354.P496369449118622272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235963 n + A183217 (n + 1)

end

end A186354.P496369449118622272

namespace A186354

/-- `A235963(n)+A183217(n+1)` -/
def P496369449118622272.Spec : Prop :=
  ∀ n, P496369449118622272.a n = A186354 (n + 1)

end A186354

/-! ## A186354.P14930961048260374310

`A193832(n+1)+A183295(n+1)`
-/

namespace A186354.P14930961048260374310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193832 (n + 1) + A183295 (n + 1)

end

end A186354.P14930961048260374310

namespace A186354

/-- `A193832(n+1)+A183295(n+1)` -/
def P14930961048260374310.Spec : Prop :=
  ∀ n, P14930961048260374310.a n = A186354 (n + 1)

end A186354

/-! ## A186354.P9038542372314282510

`A080513(A216522(2*n+1))+n`
-/

namespace A186354.P9038542372314282510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A216522 (2 * n + 1)).toNat + (n : ℤ)

end

end A186354.P9038542372314282510

namespace A186354

/-- `A080513(A216522(2*n+1))+n` -/
def P9038542372314282510.Spec : Prop :=
  ∀ n, P9038542372314282510.a n = A186354 (n + 1)

end A186354

/-!
# A186355: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f(i)=3i and g(j)=j(j+1)/2 (triangular number). Complement of A186354.

The programs for A186355, the canonical program `A186355.P13111006935812341080` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186355 has offset 1).

The definition of A186355 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186355.P13111006935812341080

`∑[ceil(n/3)+1]`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A186355

/-- `∑[ceil(n/3)+1]` -/
def P13111006935812341080.Spec : Prop :=
  ∀ n, P13111006935812341080.a n = A186355 (n + 1)

theorem P13111006935812341080.correct : P13111006935812341080.Spec := by
  intro n
  simp only [A186355, Nat.add_sub_cancel]

end A186355

/-! ## A186355.P17760113452635295780

`round(cot(3/∑[n+4]))`
-/

namespace A186355.P17760113452635295780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (3 / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) : ℝ))

end

end A186355.P17760113452635295780

namespace A186355

/-- `round(cot(3/∑[n+4]))` -/
def P17760113452635295780.Spec : Prop :=
  ∀ n, P17760113452635295780.a n = A186355 (n + 1)

end A186355

/-! ## A186355.P10065304393328134374

`floor(∑[xor(1, n+4)]/3)`
-/

namespace A186355.P10065304393328134374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3⌋

end

end A186355.P10065304393328134374

namespace A186355

/-- `floor(∑[xor(1, n+4)]/3)` -/
def P10065304393328134374.Spec : Prop :=
  ∀ n, P10065304393328134374.a n = A186355 (n + 1)

end A186355

/-! ## A186355.P18097795517070315116

`∑[comp[record[lcm(2, n)]]]-∑[n]`
-/

namespace A186355.P18097795517070315116
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ)

end

end A186355.P18097795517070315116

namespace A186355

/-- `∑[comp[record[lcm(2, n)]]]-∑[n]` -/
def P18097795517070315116.Spec : Prop :=
  ∀ n, P18097795517070315116.a n = A186355 (n + 1)

end A186355

/-! ## A186355.P8253952532989667347

`∑[ceil(n/3)]-xor(n, -1)`
-/

namespace A186355.P8253952532989667347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - Int.xor (n : ℤ) (-1)

end

end A186355.P8253952532989667347

namespace A186355

/-- `∑[ceil(n/3)]-xor(n, -1)` -/
def P8253952532989667347.Spec : Prop :=
  ∀ n, P8253952532989667347.a n = A186355 (n + 1)

end A186355

/-! ## A186355.P15675685303817243565

`floor(C(n+5, 2)/3)-2`
-/

namespace A186355.P15675685303817243565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 5) 2 : ℚ) / 3⌋ - 2

end

end A186355.P15675685303817243565

namespace A186355

/-- `floor(C(n+5, 2)/3)-2` -/
def P15675685303817243565.Spec : Prop :=
  ∀ n, P15675685303817243565.a n = A186355 (n + 1)

end A186355

/-! ## A186355.P8682144798902044429

`∑[∑[∑[n]%3]]+1+n`
-/

namespace A186355.P8682144798902044429
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + n

end

end A186355.P8682144798902044429

namespace A186355

/-- `∑[∑[∑[n]%3]]+1+n` -/
def P8682144798902044429.Spec : Prop :=
  ∀ n, (P8682144798902044429.a n : ℤ) = A186355 (n + 1)

end A186355

/-! ## A186355.P6649017115373985138

`a(n-3)+3+n` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A186355.P6649017115373985138
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  a (n - 3) + 3 + n

end

end A186355.P6649017115373985138

namespace A186355

/-- `a(n-3)+3+n` -/
def P6649017115373985138.Spec : Prop :=
  ∀ n, (P6649017115373985138.a n : ℤ) = A186355 (n + 1)

end A186355

/-! ## A186355.P11768492498593201017

`floor(C(n+2, 2)/3+n+1)`
-/

namespace A186355.P11768492498593201017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 2) 2 : ℚ) / 3 + (n + 1 : ℚ)⌋

end

end A186355.P11768492498593201017

namespace A186355

/-- `floor(C(n+2, 2)/3+n+1)` -/
def P11768492498593201017.Spec : Prop :=
  ∀ n, P11768492498593201017.a n = A186355 (n + 1)

end A186355

/-! ## A186355.P9233536887668815046

`round(C(n+2, 2)/3+n+1)`
-/

namespace A186355.P9233536887668815046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (n + 2) 2 : ℚ) / 3 + (n + 1 : ℚ))

end

end A186355.P9233536887668815046

namespace A186355

/-- `round(C(n+2, 2)/3+n+1)` -/
def P9233536887668815046.Spec : Prop :=
  ∀ n, P9233536887668815046.a n = A186355 (n + 1)

end A186355

/-! ## A186355.P6859222478522511059

`ceil((C(n+3, 2)+2*n)/3)`
-/

namespace A186355.P6859222478522511059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (n + 3) 2 + 2 * n : ℚ) / 3⌉

end

end A186355.P6859222478522511059

namespace A186355

/-- `ceil((C(n+3, 2)+2*n)/3)` -/
def P6859222478522511059.Spec : Prop :=
  ∀ n, P6859222478522511059.a n = A186355 (n + 1)

end A186355

/-! ## A186355.P12775444528560410440

`floor(∑[gcd(4, ∑[12*n])+n]/3)`
-/

namespace A186355.P12775444528560410440
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 (∑ j ∈ Finset.range (n + 1), f2 j) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3⌋

end

end A186355.P12775444528560410440

namespace A186355

/-- `floor(∑[gcd(4, ∑[12*n])+n]/3)` -/
def P12775444528560410440.Spec : Prop :=
  ∀ n, P12775444528560410440.a n = A186355 (n + 1)

end A186355

/-! ## A186355.P15426609007751312774

`1-∑[a(n-3)-1]` with `a(0)=0, a(1)=-2, a(2)=-2, a(3)=-2`
-/

namespace A186355.P15426609007751312774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, -2, -2, -2] fun n f1 =>
  f1 (n - 3) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186355.P15426609007751312774

namespace A186355

/-- `1-∑[a(n-3)-1]` -/
def P15426609007751312774.Spec : Prop :=
  ∀ n, P15426609007751312774.a n = A186355 (n + 1)

end A186355

/-! ## A186355.P4777699583607470094

`2-floor(1-a(n-1)-n/3)` with `a(0)=1`
-/

namespace A186355.P4777699583607470094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - ⌊(1 - a (n - 1) : ℚ) - (n : ℚ) / 3⌋

end

end A186355.P4777699583607470094

namespace A186355

/-- `2-floor(1-a(n-1)-n/3)` -/
def P4777699583607470094.Spec : Prop :=
  ∀ n, P4777699583607470094.a n = A186355 (n + 1)

end A186355

/-! ## A186355.P17531736832849590072

`∑[∑[∑[ogf(x/(1+x+x^2))]]]+1+n`
-/

namespace A186355.P17531736832849590072
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, 1, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A186355.P17531736832849590072

namespace A186355

/-- `∑[∑[∑[ogf(x/(1+x+x^2))]]]+1+n` -/
def P17531736832849590072.Spec : Prop :=
  ∀ n, P17531736832849590072.a n = A186355 (n + 1)

end A186355

/-! ## A186355.P13594219439891208209

`2*n-(n-3-a(n-3))` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A186355.P13594219439891208209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  (2 * n : ℤ) - ((n : ℤ) - 3 - a (n - 3))

end

end A186355.P13594219439891208209

namespace A186355

/-- `2*n-(n-3-a(n-3))` -/
def P13594219439891208209.Spec : Prop :=
  ∀ n, P13594219439891208209.a n = A186355 (n + 1)

end A186355

/-! ## A186355.P9667783144857863034

`∑[∑[gcd(n+2, n-1)]-(n-1)]/2`
-/

namespace A186355.P9667783144857863034
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) ((n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A186355.P9667783144857863034

namespace A186355

/-- `∑[∑[gcd(n+2, n-1)]-(n-1)]/2` -/
def P9667783144857863034.Spec : Prop :=
  ∀ n, P9667783144857863034.a n = (A186355 (n + 1) : ℚ)

end A186355

/-! ## A186355.P8788324266743056130

`n+1+A001840(n)`
-/

namespace A186355.P8788324266743056130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A001840 n

end

end A186355.P8788324266743056130

namespace A186355

/-- `n+1+A001840(n)` -/
def P8788324266743056130.Spec : Prop :=
  ∀ n, P8788324266743056130.a n = A186355 (n + 1)

end A186355

/-! ## A186355.P9739388628024599909

`(n+1)²-A397972(n)`
-/

namespace A186355.P9739388628024599909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A397972 n

end

end A186355.P9739388628024599909

namespace A186355

/-- `(n+1)²-A397972(n)` -/
def P9739388628024599909.Spec : Prop :=
  ∀ n, P9739388628024599909.a n = A186355 (n + 1)

end A186355

/-!
# A186356: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f(i)=3i and g(j)=j(j+1)/2 (triangular number). Complement of A186357.

The programs for A186356, the canonical program `A186356.P6573468704115705023` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186356 has offset 1).

The definition of A186356 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186356.P8459364829491926556

`round(sqrt(6*(n+1)+1)+n)`
-/

namespace A186356.P8459364829491926556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (6 * (n + 1) + 1 : ℝ) + (n : ℝ))

end

end A186356.P8459364829491926556

namespace A186356

/-- `round(sqrt(6*(n+1)+1)+n)` -/
def P8459364829491926556.Spec : Prop :=
  ∀ n, P8459364829491926556.a n = A186356 (n + 1)

end A186356

/-! ## A186356.P6509246365303102252

`comp[A007997(n+3)-(n+2)]+1`
-/

namespace A186356.P6509246365303102252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007997 (n + 3) - (n + 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A186356.P6509246365303102252

namespace A186356

/-- `comp[A007997(n+3)-(n+2)]+1` -/
def P6509246365303102252.Spec : Prop :=
  ∀ n, (P6509246365303102252.a n : ℤ) = A186356 (n + 1)

end A186356

/-! ## A186356.P6573468704115705023

`A193832(n+2)+A183295(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A186356

/-- `A193832(n+2)+A183295(n+1)` -/
def P6573468704115705023.Spec : Prop :=
  ∀ n, P6573468704115705023.a n = A186356 (n + 1)

theorem P6573468704115705023.correct : P6573468704115705023.Spec := by
  intro n
  simp only [A186356, Nat.add_sub_cancel]

end A186356

/-! ## A186356.P17408285404468683223

`A186497(n+2)-1`
-/

namespace A186356.P17408285404468683223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186497 (n + 2) - 1

end

end A186356.P17408285404468683223

namespace A186356

/-- `A186497(n+2)-1` -/
def P17408285404468683223.Spec : Prop :=
  ∀ n, P17408285404468683223.a n = A186356 (n + 1)

end A186356

/-! ## A186356.P16918504496469228214

`∑[Δ[A000703(n)]+1]`
-/

namespace A186356.P16918504496469228214
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000703 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186356.P16918504496469228214

namespace A186356

/-- `∑[Δ[A000703(n)]+1]` -/
def P16918504496469228214.Spec : Prop :=
  ∀ n, P16918504496469228214.a n = A186356 (n + 1)

end A186356

/-! ## A186356.P18180689141605610237

`∑[abs(Δ[A186497(n+1)])]`
-/

namespace A186356.P18180689141605610237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186497 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186356.P18180689141605610237

namespace A186356

/-- `∑[abs(Δ[A186497(n+1)])]` -/
def P18180689141605610237.Spec : Prop :=
  ∀ n, P18180689141605610237.a n = A186356 (n + 1)

end A186356

/-! ## A186356.P3041897950994468508

`A000703(n+1)-3+n`
-/

namespace A186356.P3041897950994468508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000703 (n + 1) - 3 + (n : ℤ)

end

end A186356.P3041897950994468508

namespace A186356

/-- `A000703(n+1)-3+n` -/
def P3041897950994468508.Spec : Prop :=
  ∀ n, P3041897950994468508.a n = A186356 (n + 1)

end A186356

/-! ## A186356.P3320065799997847251

`∑[A000029(Δ[A000703(n)])]`
-/

namespace A186356.P3320065799997847251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000703 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186356.P3320065799997847251

namespace A186356

/-- `∑[A000029(Δ[A000703(n)])]` -/
def P3320065799997847251.Spec : Prop :=
  ∀ n, P3320065799997847251.a n = A186356 (n + 1)

end A186356

/-! ## A186356.P3291234224512438590

`∑[A000031(Δ[A000703(n)])]`
-/

namespace A186356.P3291234224512438590
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000703 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186356.P3291234224512438590

namespace A186356

/-- `∑[A000031(Δ[A000703(n)])]` -/
def P3291234224512438590.Spec : Prop :=
  ∀ n, P3291234224512438590.a n = A186356 (n + 1)

end A186356

/-! ## A186356.P7719114539299850856

`∑[A000267(Δ[A000703(n)])]`
-/

namespace A186356.P7719114539299850856
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000703 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186356.P7719114539299850856

namespace A186356

/-- `∑[A000267(Δ[A000703(n)])]` -/
def P7719114539299850856.Spec : Prop :=
  ∀ n, P7719114539299850856.a n = A186356 (n + 1)

end A186356

/-! ## A186356.P3074788113530106212

`∑[A000646(Δ[A000703(n)])]`
-/

namespace A186356.P3074788113530106212
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000703 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000646 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186356.P3074788113530106212

namespace A186356

/-- `∑[A000646(Δ[A000703(n)])]` -/
def P3074788113530106212.Spec : Prop :=
  ∀ n, P3074788113530106212.a n = A186356 (n + 1)

end A186356

/-! ## A186356.P6570013911910945068

`∑[A000690(Δ[A000703(n)])]`
-/

namespace A186356.P6570013911910945068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000703 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000690 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186356.P6570013911910945068

namespace A186356

/-- `∑[A000690(Δ[A000703(n)])]` -/
def P6570013911910945068.Spec : Prop :=
  ∀ n, P6570013911910945068.a n = A186356 (n + 1)

end A186356

/-! ## A186356.P11666191423283255848

`∑[A000691(Δ[A000703(n)])]`
-/

namespace A186356.P11666191423283255848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000703 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000691 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186356.P11666191423283255848

namespace A186356

/-- `∑[A000691(Δ[A000703(n)])]` -/
def P11666191423283255848.Spec : Prop :=
  ∀ n, P11666191423283255848.a n = A186356 (n + 1)

end A186356

/-! ## A186356.P13105704108570489417

`∑[A001972(Δ[A000703(n)])]`
-/

namespace A186356.P13105704108570489417
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000703 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186356.P13105704108570489417

namespace A186356

/-- `∑[A001972(Δ[A000703(n)])]` -/
def P13105704108570489417.Spec : Prop :=
  ∀ n, P13105704108570489417.a n = A186356 (n + 1)

end A186356

/-! ## A186356.P6972955610557352927

`∑[A003479(Δ[A000703(n)])]`
-/

namespace A186356.P6972955610557352927
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000703 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003479 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186356.P6972955610557352927

namespace A186356

/-- `∑[A003479(Δ[A000703(n)])]` -/
def P6972955610557352927.Spec : Prop :=
  ∀ n, P6972955610557352927.a n = A186356 (n + 1)

end A186356

/-! ## A186356.P3854325111746471943

`∑[A005555(Δ[A000703(n)])]`
-/

namespace A186356.P3854325111746471943
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000703 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186356.P3854325111746471943

namespace A186356

/-- `∑[A005555(Δ[A000703(n)])]` -/
def P3854325111746471943.Spec : Prop :=
  ∀ n, P3854325111746471943.a n = A186356 (n + 1)

end A186356

/-! ## A186356.P13547676085846169419

`∑[A005728(Δ[A000703(n)])]`
-/

namespace A186356.P13547676085846169419
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000703 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186356.P13547676085846169419

namespace A186356

/-- `∑[A005728(Δ[A000703(n)])]` -/
def P13547676085846169419.Spec : Prop :=
  ∀ n, P13547676085846169419.a n = A186356 (n + 1)

end A186356

/-! ## A186356.P1212719565971236690

`∑[A008728(Δ[A000703(n)])]`
-/

namespace A186356.P1212719565971236690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000703 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008728 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186356.P1212719565971236690

namespace A186356

/-- `∑[A008728(Δ[A000703(n)])]` -/
def P1212719565971236690.Spec : Prop :=
  ∀ n, P1212719565971236690.a n = A186356 (n + 1)

end A186356

/-! ## A186356.P7499221522380380628

`∑[A010886(Δ[A000703(n)])]`
-/

namespace A186356.P7499221522380380628
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000703 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010886 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186356.P7499221522380380628

namespace A186356

/-- `∑[A010886(Δ[A000703(n)])]` -/
def P7499221522380380628.Spec : Prop :=
  ∀ n, P7499221522380380628.a n = A186356 (n + 1)

end A186356

/-! ## A186356.P16118533052137482288

`A000703(n+1)-A022959(n)`
-/

namespace A186356.P16118533052137482288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000703 (n + 1) - A022959 n

end

end A186356.P16118533052137482288

namespace A186356

/-- `A000703(n+1)-A022959(n)` -/
def P16118533052137482288.Spec : Prop :=
  ∀ n, P16118533052137482288.a n = A186356 (n + 1)

end A186356

/-!
# A186357: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f(i)=3i and g(j)=j(j+1)/2 (triangular number). Complement of A186357.

The programs for A186357, the canonical program `A186357.P2962100006553464750` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186357 has offset 1).

The definition of A186357 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186357.P2962100006553464750

`floor((∑[n+4]-1)/3)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A186357

/-- `floor((∑[n+4]-1)/3)` -/
def P2962100006553464750.Spec : Prop :=
  ∀ n, P2962100006553464750.a n = A186357 (n + 1)

theorem P2962100006553464750.correct : P2962100006553464750.Spec := by
  intro n
  simp only [A186357, Nat.add_sub_cancel]

end A186357

/-! ## A186357.P10686908077005134055

`∑[∑[(-1)^(n%3)]]+n`
-/

namespace A186357.P10686908077005134055
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A186357.P10686908077005134055

namespace A186357

/-- `∑[∑[(-1)^(n%3)]]+n` -/
def P10686908077005134055.Spec : Prop :=
  ∀ n, P10686908077005134055.a n = A186357 (n + 1)

end A186357

/-! ## A186357.P7734665872361432948

`ceil(C(n+2, 2)/3+n)`
-/

namespace A186357.P7734665872361432948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (n + 2) 2 : ℚ) / 3 + (n : ℚ)⌉

end

end A186357.P7734665872361432948

namespace A186357

/-- `ceil(C(n+2, 2)/3+n)` -/
def P7734665872361432948.Spec : Prop :=
  ∀ n, P7734665872361432948.a n = A186357 (n + 1)

end A186357

/-! ## A186357.P3338803980923703647

`ceil(cot(3/∑[n+4]))-1`
-/

namespace A186357.P3338803980923703647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (3 / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) : ℝ)⌉ - 1

end

end A186357.P3338803980923703647

namespace A186357

/-- `ceil(cot(3/∑[n+4]))-1` -/
def P3338803980923703647.Spec : Prop :=
  ∀ n, P3338803980923703647.a n = A186357 (n + 1)

end A186357

/-! ## A186357.P2107834923708822946

`∑[∑[gcd(3, ∑[n])-2]]+n`
-/

namespace A186357.P2107834923708822946
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 3 (∑ j ∈ Finset.range (n + 1), f3 j) : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A186357.P2107834923708822946

namespace A186357

/-- `∑[∑[gcd(3, ∑[n])-2]]+n` -/
def P2107834923708822946.Spec : Prop :=
  ∀ n, P2107834923708822946.a n = A186357 (n + 1)

end A186357

/-! ## A186357.P12878887063138159586

`∑[a(n-3)+1]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A186357.P12878887063138159586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 3] fun n f1 =>
  f1 (n - 3) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186357.P12878887063138159586

namespace A186357

/-- `∑[a(n-3)+1]` -/
def P12878887063138159586.Spec : Prop :=
  ∀ n, (P12878887063138159586.a n : ℤ) = A186357 (n + 1)

end A186357

/-! ## A186357.P312982835508505611

`a(n-3)+3+n` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A186357.P312982835508505611
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 3) + 3 + n

end

end A186357.P312982835508505611

namespace A186357

/-- `a(n-3)+3+n` -/
def P312982835508505611.Spec : Prop :=
  ∀ n, (P312982835508505611.a n : ℤ) = A186357 (n + 1)

end A186357

/-! ## A186357.P14973429817401505981

`floor(∑[∑[n]]*acot(n))+1+n`
-/

namespace A186357.P14973429817401505981
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) * SequenceMachineLib.acot (n : ℝ)⌋ + 1 + (n : ℤ)

end

end A186357.P14973429817401505981

namespace A186357

/-- `floor(∑[∑[n]]*acot(n))+1+n` -/
def P14973429817401505981.Spec : Prop :=
  ∀ n, P14973429817401505981.a n = A186357 (n + 1)

end A186357

/-! ## A186357.P5022974234699511631

`∑[∑[floor(a(n-3))]]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1, a(4)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A186357.P5022974234699511631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1, -1] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186357.P5022974234699511631

namespace A186357

/-- `∑[∑[floor(a(n-3))]]` -/
def P5022974234699511631.Spec : Prop :=
  ∀ n, P5022974234699511631.a n = A186357 (n + 1)

end A186357

/-! ## A186357.P16052685689593804081

`n-∑[a(n-3)-1]` with `a(0)=-1, a(1)=0, a(2)=-1`
-/

namespace A186357.P16052685689593804081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 0, -1] fun n f1 =>
  f1 (n - 3) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186357.P16052685689593804081

namespace A186357

/-- `n-∑[a(n-3)-1]` -/
def P16052685689593804081.Spec : Prop :=
  ∀ n, P16052685689593804081.a n = A186357 (n + 1)

end A186357

/-! ## A186357.P765594643627599404

`∑[∑[∑[ogf((1-x+x^2)/(1+x+x^2))]]]+n`
-/

namespace A186357.P765594643627599404
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1] [1, 1, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A186357.P765594643627599404

namespace A186357

/-- `∑[∑[∑[ogf((1-x+x^2)/(1+x+x^2))]]]+n` -/
def P765594643627599404.Spec : Prop :=
  ∀ n, P765594643627599404.a n = A186357 (n + 1)

end A186357

/-! ## A186357.P623944768001178943

`2*n-(n-3-a(n-3))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A186357.P623944768001178943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  (2 * n : ℤ) - ((n : ℤ) - 3 - a (n - 3))

end

end A186357.P623944768001178943

namespace A186357

/-- `2*n-(n-3-a(n-3))` -/
def P623944768001178943.Spec : Prop :=
  ∀ n, P623944768001178943.a n = A186357 (n + 1)

end A186357

/-! ## A186357.P12715975994211533234

`∑[A008611(n)]+n`
-/

namespace A186357.P12715975994211533234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A186357.P12715975994211533234

namespace A186357

/-- `∑[A008611(n)]+n` -/
def P12715975994211533234.Spec : Prop :=
  ∀ n, P12715975994211533234.a n = A186357 (n + 1)

end A186357

/-! ## A186357.P17282810238259586446

`A186498(n+1)-1`
-/

namespace A186357.P17282810238259586446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186498 (n + 1) - 1

end

end A186357.P17282810238259586446

namespace A186357

/-- `A186498(n+1)-1` -/
def P17282810238259586446.Spec : Prop :=
  ∀ n, P17282810238259586446.a n = A186357 (n + 1)

end A186357

/-! ## A186357.P3953625766371492636

`A058212(n)+2*n`
-/

namespace A186357.P3953625766371492636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058212 n + (2 * n : ℤ)

end

end A186357.P3953625766371492636

namespace A186357

/-- `A058212(n)+2*n` -/
def P3953625766371492636.Spec : Prop :=
  ∀ n, P3953625766371492636.a n = A186357 (n + 1)

end A186357

/-! ## A186357.P7319399871582461405

`∑[∑[A257075(n)]]+n`
-/

namespace A186357.P7319399871582461405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257075 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A186357.P7319399871582461405

namespace A186357

/-- `∑[∑[A257075(n)]]+n` -/
def P7319399871582461405.Spec : Prop :=
  ∀ n, P7319399871582461405.a n = A186357 (n + 1)

end A186357

/-! ## A186357.P4916256820885873294

`(n+1)²-A397973(n)`
-/

namespace A186357.P4916256820885873294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A397973 n

end

end A186357.P4916256820885873294

namespace A186357

/-- `(n+1)²-A397973(n)` -/
def P4916256820885873294.Spec : Prop :=
  ∀ n, P4916256820885873294.a n = A186357 (n + 1)

end A186357

/-! ## A186357.P3991518785894864057

`round(A007980(n)/2+n)`
-/

namespace A186357.P3991518785894864057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A007980 n : ℚ) / 2 + (n : ℚ))

end

end A186357.P3991518785894864057

namespace A186357

/-- `round(A007980(n)/2+n)` -/
def P3991518785894864057.Spec : Prop :=
  ∀ n, P3991518785894864057.a n = A186357 (n + 1)

end A186357

/-! ## A186357.P1551673752468378153

`∑[n+1]-A008810(n)`
-/

namespace A186357.P1551673752468378153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A008810 n

end

end A186357.P1551673752468378153

namespace A186357

/-- `∑[n+1]-A008810(n)` -/
def P1551673752468378153.Spec : Prop :=
  ∀ n, P1551673752468378153.a n = A186357 (n + 1)

end A186357

/-! ## A186357.P6946610372135574417

`A008822(n)+n-∑[n]`
-/

namespace A186357.P6946610372135574417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008822 n + ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A186357.P6946610372135574417

namespace A186357

/-- `A008822(n)+n-∑[n]` -/
def P6946610372135574417.Spec : Prop :=
  ∀ n, P6946610372135574417.a n = A186357 (n + 1)

end A186357

/-!
# A186358: Triangle read by rows: T(n,k) is the number of permutations of {1,2,...,n} having k up-down cycles (0<=k<=n). A cycle (b(1), b(2), ...) is said to be up-down if, when written with its smallest element in the first position, it satisfies b(1)b(3)<... .

The programs for A186358, there is no canonical definition to state claims against.
-/

/-! ## A186358.P15892164628204035763

`xor(A186747(A019989(n)), A186754(n))`
-/

namespace A186358.P15892164628204035763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A186747 (A019989 n).toNat) (A186754 n)

end

end A186358.P15892164628204035763

/-!
# A186359: Number of permutations of {1,2,...,n} having no up-down cycles. A cycle (b(1), b(2), ...) is said to be up-down if, when written with its smallest element in the first position, it satisfies b(1)b(3)<... .

The programs for A186359, there is no canonical definition to state claims against.
-/

/-! ## A186359.P10229867320924785023

`n*a(n-1)-sin(n*asin(1))` with `a(0)=1`
-/

namespace A186359.P10229867320924785023
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℝ) * a (n - 1) - Real.sin ((n : ℝ) * Real.arcsin (1 : ℝ))

end

end A186359.P10229867320924785023

/-! ## A186359.P7476663741205849158

`(-(n%2))^∑[n]+n*a(n-1)` with `a(0)=1`
-/

namespace A186359.P7476663741205849158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (-((n % 2 : ℕ) : ℤ)) ^ (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) * a (n - 1)

end

end A186359.P7476663741205849158

/-! ## A186359.P633102725797299276

`A163805(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A186359.P633102725797299276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A163805 n + (n : ℤ) * a (n - 1)

end

end A186359.P633102725797299276

/-! ## A186359.P17745431285290901352

`n*a(n-1)-A117569(n)` with `a(0)=1`
-/

namespace A186359.P17745431285290901352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (n - 1) - A117569 n

end

end A186359.P17745431285290901352

/-! ## A186359.P14264568994230364990

`A056594(n+1)+n*a(n-1)` with `a(0)=1`
-/

namespace A186359.P14264568994230364990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A056594 (n + 1) + (n : ℤ) * a (n - 1)

end

end A186359.P14264568994230364990

/-! ## A186359.P10892722864480111682

`A049310(∑[n+1])+n*a(n-1)` with `a(0)=1`
-/

namespace A186359.P10892722864480111682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A049310 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) * a (n - 1)

end

end A186359.P10892722864480111682

/-! ## A186359.P16722763036487635982

`A053120(∑[n+1])+n*a(n-1)` with `a(0)=1`
-/

namespace A186359.P16722763036487635982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053120 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) * a (n - 1)

end

end A186359.P16722763036487635982

/-! ## A186359.P16330184242607314501

`n!-A009551(n)`
-/

namespace A186359.P16330184242607314501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A009551 n

end

end A186359.P16330184242607314501

/-! ## A186359.P14266146755327408665

`A000142(n)-A009551(n)`
-/

namespace A186359.P14266146755327408665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A009551 n

end

end A186359.P14266146755327408665

/-! ## A186359.P9339249322739178747

`∏[A028310(n)]-A009551(n)`
-/

namespace A186359.P9339249322739178747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A009551 n

end

end A186359.P9339249322739178747

/-!
# A186360: Number of up-down cycles in all permutations of {1,2,...,n}. A cycle (b(1), b(2), ...) is said to be up-down if, when written with its smallest element in the first position, it satisfies b(1)b(3)<... .

The programs for A186360, there is no canonical definition to state claims against.
-/

/-! ## A186360.P5864701699515543103

`A000254(n)-A186362(n)`
-/

namespace A186360.P5864701699515543103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 n - A186362 n

end

end A186360.P5864701699515543103

/-! ## A186360.P11054831173473739661

`abs(A081048(n))-A186362(n)`
-/

namespace A186360.P11054831173473739661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081048 n| - A186362 n

end

end A186360.P11054831173473739661

/-! ## A186360.P10988718669755020342

`A000774(n)-n!-A186362(n)`
-/

namespace A186360.P10988718669755020342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000774 n - (Nat.factorial n : ℤ) - A186362 n

end

end A186360.P10988718669755020342

/-! ## A186360.P741744072652263299

`A052517(n+1)/2-A186362(n)`
-/

namespace A186360.P741744072652263299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052517 (n + 1) : ℚ) / 2 - (A186362 n : ℚ)

end

end A186360.P741744072652263299

/-! ## A186360.P13539620745575486039

`A132393(∑[n+1]+2)-A186362(n)`
-/

namespace A186360.P13539620745575486039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (∑ j ∈ Finset.range (n + 1), f1 j + 2) - A186362 n

end

end A186360.P13539620745575486039

/-! ## A186360.P946819949292136009

`abs(A048994(∑[n+1]+2))-A186362(n)`
-/

namespace A186360.P946819949292136009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A048994 (∑ j ∈ Finset.range (n + 1), f1 j + 2)| - A186362 n

end

end A186360.P946819949292136009

/-! ## A186360.P7134957783972439804

`lcm(1-and(2, n), n!-A081049(n))-A186362(n)`
-/

namespace A186360.P7134957783972439804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (1 - (Nat.land 2 n : ℤ)) ((Nat.factorial n : ℤ) - A081049 n) : ℤ) - A186362 n

end

end A186360.P7134957783972439804

/-! ## A186360.P932199239512740869

`A000774(n)-(A186362(n)+A000142(n))`
-/

namespace A186360.P932199239512740869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000774 n - (A186362 n + A000142 n)

end

end A186360.P932199239512740869

/-! ## A186360.P6529373466663954804

`A000142(n)-(A186362(n)+A081047(n))`
-/

namespace A186360.P6529373466663954804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - (A186362 n + A081047 n)

end

end A186360.P6529373466663954804

/-! ## A186360.P17024130913736311563

`A062157(n)*A081048(n)-A186362(n)`
-/

namespace A186360.P17024130913736311563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A081048 n - A186362 n

end

end A186360.P17024130913736311563

/-!
# A186362: Number of non-up-down cycles in all permutations of {1,2,...,n}. A cycle (b(1), b(2), ...) is said to be up-down if, when written with its smallest element in the first position, it satisfies b(1)b(3)<... .

The programs for A186362, there is no canonical definition to state claims against.
-/

/-! ## A186362.P13438820256474853553

`A000254(n)-A186360(n)`
-/

namespace A186362.P13438820256474853553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 n - A186360 n

end

end A186362.P13438820256474853553

/-! ## A186362.P12235053452082406540

`abs(A081048(n))-A186360(n)`
-/

namespace A186362.P12235053452082406540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081048 n| - A186360 n

end

end A186362.P12235053452082406540

/-! ## A186362.P2927048291302733243

`A000774(n)-n!-A186360(n)`
-/

namespace A186362.P2927048291302733243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000774 n - (Nat.factorial n : ℤ) - A186360 n

end

end A186362.P2927048291302733243

/-! ## A186362.P2882603825082835651

`n!-A081047(n)-A186360(n)`
-/

namespace A186362.P2882603825082835651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A081047 n - A186360 n

end

end A186362.P2882603825082835651

/-! ## A186362.P5168832970417938566

`A052517(n+1)/2-A186360(n)`
-/

namespace A186362.P5168832970417938566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052517 (n + 1) : ℚ) / 2 - (A186360 n : ℚ)

end

end A186362.P5168832970417938566

/-! ## A186362.P10968998237247378510

`A132393(∑[n+1]+2)-A186360(n)`
-/

namespace A186362.P10968998237247378510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (∑ j ∈ Finset.range (n + 1), f1 j + 2) - A186360 n

end

end A186362.P10968998237247378510

/-! ## A186362.P13899892515589825245

`A000774(n)-(A186360(n)+A000142(n))`
-/

namespace A186362.P13899892515589825245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000774 n - (A186360 n + A000142 n)

end

end A186362.P13899892515589825245

/-! ## A186362.P10765099934703815150

`A000142(n)-(A186360(n)+A081047(n))`
-/

namespace A186362.P10765099934703815150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - (A186360 n + A081047 n)

end

end A186362.P10765099934703815150

/-! ## A186362.P3406947422681947270

`A062157(n)*A081048(n)-A186360(n)`
-/

namespace A186362.P3406947422681947270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A081048 n - A186360 n

end

end A186362.P3406947422681947270

/-! ## A186362.P6536643501879445485

`lcm(A008279(n), A081048(n))-A186360(n)`
-/

namespace A186362.P6536643501879445485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A008279 n) (A081048 n) : ℤ) - A186360 n

end

end A186362.P6536643501879445485

/-!
# A186363: Triangle read by rows: T(n,k) is the number of cycle-up-down permutations of {1,2,...,n} having k fixed points (0 <= k <= n). A permutation is said to be cycle-up-down if it is a product of up-down cycles. A cycle (b(1), b(2), ...) is said to be up-down if, when written with its smallest element in the first position, it satisfies b(1) < b(2) > b(3) < ... .

The programs for A186363, there is no canonical definition to state claims against.
-/

/-! ## A186363.P6650275989065361875

`A007318(n)*A186364(A025581(n))`
-/

namespace A186363.P6650275989065361875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A186364 (A025581 n).toNat

end

end A186363.P6650275989065361875

/-! ## A186363.P179516413000461338

`A109449(n)-A162590(A055645(n))`
-/

namespace A186363.P179516413000461338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109449 n - A162590 (A055645 n).toNat

end

end A186363.P179516413000461338

/-! ## A186363.P7504900598881526483

`abs(A247453(n)+A162590(A055645(n)))`
-/

namespace A186363.P7504900598881526483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A247453 n + A162590 (A055645 n).toNat|

end

end A186363.P7504900598881526483

/-! ## A186363.P4578104419615441622

`(A247453(n)+A162590(A055645(n)))*A097807(n)`
-/

namespace A186363.P4578104419615441622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A247453 n + A162590 (A055645 n).toNat) * A097807 n

end

end A186363.P4578104419615441622

/-! ## A186363.P8456970428174766754

`A010785(A349454(n))%7`
-/

namespace A186363.P8456970428174766754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010785 (A349454 n).toNat) 7

end

end A186363.P8456970428174766754

/-!
# A186364: Number of cycle-up-down permutations of {1,2,...,n} having no fixed points. A permutation is said to be cycle-up-down if it is a product of up-down cycles. A cycle (b(1), b(2), ...) is said to be up-down if, when written with its smallest element in the first position, it satisfies b(1)b(3)<... .

The programs for A186364, there is no canonical definition to state claims against.
-/

/-! ## A186364.P4940760214903158419

`abs(Δ[Δ[A009334(n)]])`
-/

namespace A186364.P4940760214903158419
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009334 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A186364.P4940760214903158419

/-! ## A186364.P1300956309397098588

`A062162(n+1)+A062162(n)`
-/

namespace A186364.P1300956309397098588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062162 (n + 1) + A062162 n

end

end A186364.P1300956309397098588

/-! ## A186364.P17640672693056851059

`A348580(n)-2*A352906(n)`
-/

namespace A186364.P17640672693056851059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348580 n - 2 * A352906 n

end

end A186364.P17640672693056851059

/-! ## A186364.P18265728109723752085

`abs(Δ[A003701(n)-A009739(n)])`
-/

namespace A186364.P18265728109723752085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003701 n - A009739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A186364.P18265728109723752085

/-! ## A186364.P3540623209183757352

`A348580(n)%A352906(A233583(n+1))`
-/

namespace A186364.P3540623209183757352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348580 n) (A352906 (A233583 (n + 1)).toNat)

end

end A186364.P3540623209183757352

/-!
# A186365: Number of fixed points in all cycle-up-down permutations of {1,2,...,n}.

The programs for A186365, there is no canonical definition to state claims against.
-/

/-! ## A186365.P17926061334569910512

`n*A000111(n)`
-/

namespace A186365.P17926061334569910512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000111 n

end

end A186365.P17926061334569910512

/-! ## A186365.P13681313529612413373

`abs(A108124(n))`
-/

namespace A186365.P13681313529612413373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108124 n|

end

end A186365.P13681313529612413373

/-! ## A186365.P12371733656387923042

`abs(n*A163747(n))`
-/

namespace A186365.P12371733656387923042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A163747 n|

end

end A186365.P12371733656387923042

/-! ## A186365.P1551998739165489871

`abs(n*A163982(n))`
-/

namespace A186365.P1551998739165489871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A163982 n|

end

end A186365.P1551998739165489871

/-! ## A186365.P9358283987776715327

`abs(n*A346838(n))`
-/

namespace A186365.P9358283987776715327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A346838 n|

end

end A186365.P9358283987776715327

/-! ## A186365.P8085308811288543572

`n*A104345(∑[n])`
-/

namespace A186365.P8085308811288543572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A104345 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A186365.P8085308811288543572

/-! ## A186365.P2864846835346830000

`n*A104346(∑[n])`
-/

namespace A186365.P2864846835346830000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A104346 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A186365.P2864846835346830000

/-! ## A186365.P6569614039445486876

`n*A109449(∑[n])`
-/

namespace A186365.P6569614039445486876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A109449 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A186365.P6569614039445486876

/-! ## A186365.P5955950493018606130

`n/2*A260786(n)`
-/

namespace A186365.P5955950493018606130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A260786 n : ℚ)

end

end A186365.P5955950493018606130

/-! ## A186365.P13457284962387339909

`abs(n*A247453(∑[n]))`
-/

namespace A186365.P13457284962387339909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A247453 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A186365.P13457284962387339909

/-!
# A186366: Triangle read by rows: T(n,k) is the number of cycle-up-down permutations of {1,2,...,n} having k cycles (1<=k<=n).

The programs for A186366, there is no canonical definition to state claims against.
-/

/-! ## A186366.P12928281398538851363

`A025442(A035469(n+1))+A008277(n+1)`
-/

namespace A186366.P12928281398538851363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 (A035469 (n + 1)).toNat + A008277 (n + 1)

end

end A186366.P12928281398538851363

/-!
# A186367: Number of cycles in all cycle-up-down permutations of {1,2,...,n}. A permutation is said to be cycle-up-down if it is a product of up-down cycles. A cycle (b(1), b(2), ...) is said to be up-down if, when written with its smallest element in the first position, it satisfies b(1)b(3)<... .

The programs for A186367, there is no canonical definition to state claims against.
-/

/-! ## A186367.P13799884031726146677

`Δ[A008619(Δ[A107028(n+1)])]`
-/

namespace A186367.P13799884031726146677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107028 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186367.P13799884031726146677

/-! ## A186367.P7450697603352105844

`A227737(A181067(n+1)+n²)`
-/

namespace A186367.P7450697603352105844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227737 (A181067 (n + 1) + (n ^ 2 : ℤ)).toNat

end

end A186367.P7450697603352105844

/-!
# A186369: Number of excedances in all cycle-up-down permutations of {1,2,...,n}. A permutation is said to be cycle-up-down if it is a product of up-down cycles. A cycle (b(1), b(2), ...) is said to be up-down if, when written with its smallest element in the first position, it satisfies b(1) < b(2) > b(3) < ... .

The programs for A186369, there is no canonical definition to state claims against.
-/

/-! ## A186369.P1677619005375490773

`A218185(n)+A186336(A192737(n))`
-/

namespace A186369.P1677619005375490773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218185 n + A186336 (A192737 n).toNat

end

end A186369.P1677619005375490773

/-! ## A186369.P13207730538592661230

`A000772(n)-A098010(A325534(n))`
-/

namespace A186369.P13207730538592661230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000772 n - A098010 (A325534 n).toNat

end

end A186369.P13207730538592661230

/-! ## A186369.P1820070932929555864

`A177519(n)-A344651(A001006(n))`
-/

namespace A186369.P1820070932929555864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177519 n - A344651 (A001006 n).toNat

end

end A186369.P1820070932929555864

/-!
# A186371: Number of up-down runs in all permutations of {1,2,...,n}.

The programs for A186371, there is no canonical definition to state claims against.
-/

/-! ## A186371.P15382069775069476937

`∏[1-char[2]+n]-A001710(n)`
-/

namespace A186371.P15382069775069476937
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A001710 n

end

end A186371.P15382069775069476937

/-! ## A186371.P4710668252897482731

`round((4*n+1)/6*A000142(n))`
-/

namespace A186371.P4710668252897482731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((4 * n + 1 : ℚ) / 6 * (A000142 n : ℚ))

end

end A186371.P4710668252897482731

/-! ## A186371.P10275888078575753802

`round(A082034(n)/6)`
-/

namespace A186371.P10275888078575753802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A082034 n : ℚ) / 6)

end

end A186371.P10275888078575753802

/-! ## A186371.P533390700906225059

`A227404(n+1)-A001809(n)`
-/

namespace A186371.P533390700906225059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227404 (n + 1) - A001809 n

end

end A186371.P533390700906225059

/-! ## A186371.P13405173246986092858

`floor(A082034(n)/6*A141044(n))`
-/

namespace A186371.P13405173246986092858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A082034 n : ℚ) / 6 * (A141044 n : ℚ)⌋

end

end A186371.P13405173246986092858

/-!
# A186374: Number of strong fixed blocks in all the permutations of [n] (see first comment for definition).

The programs for A186374, there is no canonical definition to state claims against.
-/

/-! ## A186374.P10155156904319857551

`Δ[A084938(A133263(n))]`
-/

namespace A186374.P10155156904319857551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (A133263 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186374.P10155156904319857551

/-! ## A186374.P15211741304758587373

`Δ[A084938(A089071(n+1)+n)]`
-/

namespace A186374.P15211741304758587373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (A089071 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186374.P15211741304758587373

/-! ## A186374.P15146064464080278002

`Δ[A084938(∑[n]+2)-A028310(n)]+1`
-/

namespace A186374.P15146064464080278002
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (∑ j ∈ Finset.range (n + 1), f2 j + 2) - A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A186374.P15146064464080278002

/-! ## A186374.P10490030346224949376

`Δ[A084938(A156665(A055998(n)))]`
-/

namespace A186374.P10490030346224949376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (A156665 (A055998 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186374.P10490030346224949376

/-! ## A186374.P1938641767637048308

`Δ[A084938(A054977(n)+A000124(n))]`
-/

namespace A186374.P1938641767637048308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (A054977 n + A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186374.P1938641767637048308

/-! ## A186374.P15383395220207647619

`Δ[A084938(A057427(n)+A000124(n))]`
-/

namespace A186374.P15383395220207647619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (A057427 n + A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186374.P15383395220207647619

/-!
# A186375: a(n) equals the sum of the squares of the expansion coefficients for (x + y + 2*z)^n.

The programs for A186375, there is no canonical definition to state claims against.
-/

/-! ## A186375.P12961726941747545873

`A020725(A231554(n))-A111830(n)`
-/

namespace A186375.P12961726941747545873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A231554 n).toNat - A111830 n

end

end A186375.P12961726941747545873

/-!
# A186377: a(n) equals the least sum of the squares of the coefficients in (1 + 2*x^k + x^p + x^q)^n found at sufficiently large p and q>(n+1)p for some fixed k>0.

The programs for A186377, there is no canonical definition to state claims against.
-/

/-! ## A186377.P12819475113749495258

`or(A003071(A217484(n)), A105672(n+1))`
-/

namespace A186377.P12819475113749495258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003071 (A217484 n).toNat) (A105672 (n + 1))

end

end A186377.P12819475113749495258

/-!
# A186379: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f(i)=4i and g(j)=j(j+1)/2 (triangular number). Complement of A186380.

The programs for A186379, the canonical program `A186379.P16260838398988036604` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186379 has offset 1).

The definition of A186379 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186379.P16260838398988036604

`comp[floor(∑[n/4-1])]`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A186379

/-- `comp[floor(∑[n/4-1])]` -/
def P16260838398988036604.Spec : Prop :=
  ∀ n, (P16260838398988036604.a n : ℤ) = A186379 (n + 1)

theorem P16260838398988036604.correct : P16260838398988036604.Spec := by
  intro n
  simp only [A186379, Nat.add_sub_cancel]

end A186379

/-! ## A186379.P110329078872933354

`round(record[sqrt(xor(7, n))]+n)`
-/

namespace A186379.P110329078872933354
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.xor 7 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℝ))

end

end A186379.P110329078872933354

namespace A186379

/-- `round(record[sqrt(xor(7, n))]+n)` -/
def P110329078872933354.Spec : Prop :=
  ∀ n, P110329078872933354.a n = A186379 (n + 1)

end A186379

/-! ## A186379.P17608581997893470778

`round(sqrt(A004771(n))+n)`
-/

namespace A186379.P17608581997893470778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A004771 n : ℝ) + (n : ℝ))

end

end A186379.P17608581997893470778

namespace A186379

/-- `round(sqrt(A004771(n))+n)` -/
def P17608581997893470778.Spec : Prop :=
  ∀ n, P17608581997893470778.a n = A186379 (n + 1)

end A186379

/-! ## A186379.P11218880890886684759

`round(sqrt(Δ[A016754(n)]))+n`
-/

namespace A186379.P11218880890886684759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (n + 1) - f1 n : ℝ)) + (n : ℤ)

end

end A186379.P11218880890886684759

namespace A186379

/-- `round(sqrt(Δ[A016754(n)]))+n` -/
def P11218880890886684759.Spec : Prop :=
  ∀ n, P11218880890886684759.a n = A186379 (n + 1)

end A186379

/-! ## A186379.P8058460543070661975

`round(sqrt(A022144(n+1))+n)`
-/

namespace A186379.P8058460543070661975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A022144 (n + 1) : ℝ) + (n : ℝ))

end

end A186379.P8058460543070661975

namespace A186379

/-- `round(sqrt(A022144(n+1))+n)` -/
def P8058460543070661975.Spec : Prop :=
  ∀ n, P8058460543070661975.a n = A186379 (n + 1)

end A186379

/-! ## A186379.P10068325231598426437

`round(sqrt(A016993(n+1)+n))+n`
-/

namespace A186379.P10068325231598426437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A016993 (n + 1) + (n : ℤ) : ℝ)) + (n : ℤ)

end

end A186379.P10068325231598426437

namespace A186379

/-- `round(sqrt(A016993(n+1)+n))+n` -/
def P10068325231598426437.Spec : Prop :=
  ∀ n, P10068325231598426437.a n = A186379 (n + 1)

end A186379

/-! ## A186379.P131459293884518580

`floor(A184113(2*n+1)/2)`
-/

namespace A186379.P131459293884518580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A184113 (2 * n + 1) : ℚ) / 2⌋

end

end A186379.P131459293884518580

namespace A186379

/-- `floor(A184113(2*n+1)/2)` -/
def P131459293884518580.Spec : Prop :=
  ∀ n, P131459293884518580.a n = A186379 (n + 1)

end A186379

/-! ## A186379.P11969285835527043183

`A186352(2*(n+1))-(n+1)`
-/

namespace A186379.P11969285835527043183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186352 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A186379.P11969285835527043183

namespace A186379

/-- `A186352(2*(n+1))-(n+1)` -/
def P11969285835527043183.Spec : Prop :=
  ∀ n, P11969285835527043183.a n = A186379 (n + 1)

end A186379

/-! ## A186379.P17200316235863034640

`round(sqrt(A004767(2*n+1))+n)`
-/

namespace A186379.P17200316235863034640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A004767 (2 * n + 1) : ℝ) + (n : ℝ))

end

end A186379.P17200316235863034640

namespace A186379

/-- `round(sqrt(A004767(2*n+1))+n)` -/
def P17200316235863034640.Spec : Prop :=
  ∀ n, P17200316235863034640.a n = A186379 (n + 1)

end A186379

/-! ## A186379.P7146661487333017321

`A004526(A184113(2*n+1))`
-/

namespace A186379.P7146661487333017321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A184113 (2 * n + 1)).toNat

end

end A186379.P7146661487333017321

namespace A186379

/-- `A004526(A184113(2*n+1))` -/
def P7146661487333017321.Spec : Prop :=
  ∀ n, P7146661487333017321.a n = A186379 (n + 1)

end A186379

/-! ## A186379.P17344676315746085914

`A002024(4*(n+1))+n`
-/

namespace A186379.P17344676315746085914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (4 * (n + 1)) + (n : ℤ)

end

end A186379.P17344676315746085914

namespace A186379

/-- `A002024(4*(n+1))+n` -/
def P17344676315746085914.Spec : Prop :=
  ∀ n, P17344676315746085914.a n = A186379 (n + 1)

end A186379

/-! ## A186379.P15401495228286186620

`A003056(4*n+3)+n+1`
-/

namespace A186379.P15401495228286186620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (4 * n + 3) + (n + 1 : ℤ)

end

end A186379.P15401495228286186620

namespace A186379

/-- `A003056(4*n+3)+n+1` -/
def P15401495228286186620.Spec : Prop :=
  ∀ n, P15401495228286186620.a n = A186379 (n + 1)

end A186379

/-! ## A186379.P17339940718172626827

`A003056(A004767(n))+1+n`
-/

namespace A186379.P17339940718172626827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A004767 n).toNat + 1 + (n : ℤ)

end

end A186379.P17339940718172626827

namespace A186379

/-- `A003056(A004767(n))+1+n` -/
def P17339940718172626827.Spec : Prop :=
  ∀ n, P17339940718172626827.a n = A186379 (n + 1)

end A186379

/-! ## A186379.P11901986199032079363

`lt[A022851(n+2), A007318(A004767(n+2))]`
-/

namespace A186379.P11901986199032079363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022851 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A004767 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A186379.P11901986199032079363

namespace A186379

/-- `lt[A022851(n+2), A007318(A004767(n+2))]` -/
def P11901986199032079363.Spec : Prop :=
  ∀ n, (P11901986199032079363.a n : ℤ) = A186379 (n + 1)

end A186379

/-! ## A186379.P12202246455023545807

`lt[Δ[A025581(2*2*(n+2)+1)], 1]`
-/

namespace A186379.P12202246455023545807
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (2 * (2 * (n + 2)) + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A186379.P12202246455023545807

namespace A186379

/-- `lt[Δ[A025581(2*2*(n+2)+1)], 1]` -/
def P12202246455023545807.Spec : Prop :=
  ∀ n, (P12202246455023545807.a n : ℤ) = A186379 (n + 1)

end A186379

/-! ## A186379.P16903453735367990507

`lt[3, A002262(A016777(n+4)+n)]`
-/

namespace A186379.P16903453735367990507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A016777 (n + 4) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A186379.P16903453735367990507

namespace A186379

/-- `lt[3, A002262(A016777(n+4)+n)]` -/
def P16903453735367990507.Spec : Prop :=
  ∀ n, (P16903453735367990507.a n : ℤ) = A186379 (n + 1)

end A186379

/-! ## A186379.P1748552523116814760

`A000194(A004771(n))+n`
-/

namespace A186379.P1748552523116814760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A004771 n).toNat + (n : ℤ)

end

end A186379.P1748552523116814760

namespace A186379

/-- `A000194(A004771(n))+n` -/
def P1748552523116814760.Spec : Prop :=
  ∀ n, P1748552523116814760.a n = A186379 (n + 1)

end A186379

/-! ## A186379.P12640377110895190382

`A000194(A004767(2*n+1))+n`
-/

namespace A186379.P12640377110895190382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A004767 (2 * n + 1)).toNat + (n : ℤ)

end

end A186379.P12640377110895190382

namespace A186379

/-- `A000194(A004767(2*n+1))+n` -/
def P12640377110895190382.Spec : Prop :=
  ∀ n, P12640377110895190382.a n = A186379 (n + 1)

end A186379

/-! ## A186379.P16318762733203964531

`A000194(8*(n+1))+n`
-/

namespace A186379.P16318762733203964531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (8 * (n + 1)) + (n : ℤ)

end

end A186379.P16318762733203964531

namespace A186379

/-- `A000194(8*(n+1))+n` -/
def P16318762733203964531.Spec : Prop :=
  ∀ n, P16318762733203964531.a n = A186379 (n + 1)

end A186379

/-!
# A186380: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f(i)=4i and g(j)=j(j+1)/2 (triangular number). Complement of A186379.

The programs for A186380, the canonical program `A186380.P5693863532027607795` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186380 has offset 1).

The definition of A186380 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186380.P5693863532027607795

`n+1+floor(((n+1)²+n+1+1)/8)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A186380

/-- `n+1+floor(((n+1)²+n+1+1)/8)` -/
def P5693863532027607795.Spec : Prop :=
  ∀ n, P5693863532027607795.a n = A186380 (n + 1)

theorem P5693863532027607795.correct : P5693863532027607795.Spec := by
  intro n
  simp only [A186380, Nat.add_sub_cancel]

end A186380

/-! ## A186380.P8932950017654337167

`and(-4, ∑[n+5])/4`
-/

namespace A186380.P8932950017654337167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-4) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ) / 4

end

end A186380.P8932950017654337167

namespace A186380

/-- `and(-4, ∑[n+5])/4` -/
def P8932950017654337167.Spec : Prop :=
  ∀ n, P8932950017654337167.a n = (A186380 (n + 1) : ℚ)

end A186380

/-! ## A186380.P2614163654756988659

`round(or(2, ∑[n+1])/4+n)`
-/

namespace A186380.P2614163654756988659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 2 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 4 + (n : ℚ))

end

end A186380.P2614163654756988659

namespace A186380

/-- `round(or(2, ∑[n+1])/4+n)` -/
def P2614163654756988659.Spec : Prop :=
  ∀ n, P2614163654756988659.a n = A186380 (n + 1)

end A186380

/-! ## A186380.P17730955209429166035

`round((∑[a(n-1)+1]-ϕ)/4)` with `a(0)=5`
-/

namespace A186380.P17730955209429166035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - Real.goldenRatio) / 4)

end

end A186380.P17730955209429166035

namespace A186380

/-- `round((∑[a(n-1)+1]-ϕ)/4)` -/
def P17730955209429166035.Spec : Prop :=
  ∀ n, P17730955209429166035.a n = A186380 (n + 1)

end A186380

/-! ## A186380.P1260391518711056393

`ceil((A186353(n+1)+n)/2)`
-/

namespace A186380.P1260391518711056393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A186353 (n + 1) + (n : ℤ) : ℚ) / 2⌉

end

end A186380.P1260391518711056393

namespace A186380

/-- `ceil((A186353(n+1)+n)/2)` -/
def P1260391518711056393.Spec : Prop :=
  ∀ n, P1260391518711056393.a n = A186380 (n + 1)

end A186380

/-! ## A186380.P12769259406805002495

`ceil(ceil((∑[n]+A016885(n)-1)/2)/2)`
-/

namespace A186380.P12769259406805002495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌈(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A016885 n - 1) : ℚ) / 2⌉ : ℚ) / 2⌉

end

end A186380.P12769259406805002495

namespace A186380

/-- `ceil(ceil((∑[n]+A016885(n)-1)/2)/2)` -/
def P12769259406805002495.Spec : Prop :=
  ∀ n, P12769259406805002495.a n = A186380 (n + 1)

end A186380

/-! ## A186380.P6076755677320822230

`∑[A008619(n-A140427(n))]`
-/

namespace A186380.P6076755677320822230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((n : ℤ) - A140427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186380.P6076755677320822230

namespace A186380

/-- `∑[A008619(n-A140427(n))]` -/
def P6076755677320822230.Spec : Prop :=
  ∀ n, P6076755677320822230.a n = A186380 (n + 1)

end A186380

/-! ## A186380.P13357567858772384251

`∑[A008620(A071934(n+2)+1)]`
-/

namespace A186380.P13357567858772384251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A071934 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186380.P13357567858772384251

namespace A186380

/-- `∑[A008620(A071934(n+2)+1)]` -/
def P13357567858772384251.Spec : Prop :=
  ∀ n, P13357567858772384251.a n = A186380 (n + 1)

end A186380

/-! ## A186380.P1297757202906671390

`∑[A004525(A092486(A004525(n+3)))]`
-/

namespace A186380.P1297757202906671390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A092486 (A004525 (n + 3)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186380.P1297757202906671390

namespace A186380

/-- `∑[A004525(A092486(A004525(n+3)))]` -/
def P1297757202906671390.Spec : Prop :=
  ∀ n, P1297757202906671390.a n = A186380 (n + 1)

end A186380

/-! ## A186380.P9133131187419692349

`∑[A004525(A004524(n+6))]`
-/

namespace A186380.P9133131187419692349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004524 (n + 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186380.P9133131187419692349

namespace A186380

/-- `∑[A004525(A004524(n+6))]` -/
def P9133131187419692349.Spec : Prop :=
  ∀ n, P9133131187419692349.a n = A186380 (n + 1)

end A186380

/-! ## A186380.P12161049644374395724

`∑[∑[A177704(A032766(n))]-n]`
-/

namespace A186380.P12161049644374395724
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177704 (A032766 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186380.P12161049644374395724

namespace A186380

/-- `∑[∑[A177704(A032766(n))]-n]` -/
def P12161049644374395724.Spec : Prop :=
  ∀ n, P12161049644374395724.a n = A186380 (n + 1)

end A186380

/-! ## A186380.P14820826400388259711

`∑[∑[A029906(3*(n+1))%2]+1]`
-/

namespace A186380.P14820826400388259711
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029906 (3 * (n + 1))) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186380.P14820826400388259711

namespace A186380

/-- `∑[∑[A029906(3*(n+1))%2]+1]` -/
def P14820826400388259711.Spec : Prop :=
  ∀ n, P14820826400388259711.a n = A186380 (n + 1)

end A186380

/-! ## A186380.P6093818516487271891

`A004526(∑[A092038(n+3)])`
-/

namespace A186380.P6093818516487271891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092038 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A186380.P6093818516487271891

namespace A186380

/-- `A004526(∑[A092038(n+3)])` -/
def P6093818516487271891.Spec : Prop :=
  ∀ n, P6093818516487271891.a n = A186380 (n + 1)

end A186380

/-! ## A186380.P17772928943751367685

`A004526(A186353(n+1)+1+n)`
-/

namespace A186380.P17772928943751367685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A186353 (n + 1) + 1 + (n : ℤ)).toNat

end

end A186380.P17772928943751367685

namespace A186380

/-- `A004526(A186353(n+1)+1+n)` -/
def P17772928943751367685.Spec : Prop :=
  ∀ n, P17772928943751367685.a n = A186380 (n + 1)

end A186380

/-! ## A186380.P4248729524342185893

`A004526(A039823(n+1)+2*n+1)`
-/

namespace A186380.P4248729524342185893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A039823 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A186380.P4248729524342185893

namespace A186380

/-- `A004526(A039823(n+1)+2*n+1)` -/
def P4248729524342185893.Spec : Prop :=
  ∀ n, P4248729524342185893.a n = A186380 (n + 1)

end A186380

/-! ## A186380.P3655238578260496623

`A110654(A011848(n+2)+2*n+1)`
-/

namespace A186380.P3655238578260496623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A011848 (n + 2) + (2 * n + 1 : ℤ)).toNat

end

end A186380.P3655238578260496623

namespace A186380

/-- `A110654(A011848(n+2)+2*n+1)` -/
def P3655238578260496623.Spec : Prop :=
  ∀ n, P3655238578260496623.a n = A186380 (n + 1)

end A186380

/-! ## A186380.P14875088660967472386

`A008621(A246172(n+1))`
-/

namespace A186380.P14875088660967472386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A246172 (n + 1)).toNat

end

end A186380.P14875088660967472386

namespace A186380

/-- `A008621(A246172(n+1))` -/
def P14875088660967472386.Spec : Prop :=
  ∀ n, P14875088660967472386.a n = A186380 (n + 1)

end A186380

/-! ## A186380.P14650827602137000328

`A002265(∑[n+5])`
-/

namespace A186380.P14650827602137000328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A186380.P14650827602137000328

namespace A186380

/-- `A002265(∑[n+5])` -/
def P14650827602137000328.Spec : Prop :=
  ∀ n, P14650827602137000328.a n = A186380 (n + 1)

end A186380

/-! ## A186380.P12417092418978995378

`A230149(A051936(n+5))`
-/

namespace A186380.P12417092418978995378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230149 (A051936 (n + 5)).toNat

end

end A186380.P12417092418978995378

namespace A186380

/-- `A230149(A051936(n+5))` -/
def P12417092418978995378.Spec : Prop :=
  ∀ n, P12417092418978995378.a n = A186380 (n + 1)

end A186380

/-!
# A186381: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f(i)=4i and g(j)=j(j+1)/2 (triangular number). Complement of A186382.

The programs for A186381, the canonical program `A186381.P6291283364745547320` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186381 has offset 1).

The definition of A186381 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186381.P6291283364745547320

`round(sqrt(8*n+9)+n)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A186381

/-- `round(sqrt(8*n+9)+n)` -/
def P6291283364745547320.Spec : Prop :=
  ∀ n, P6291283364745547320.a n = A186381 (n + 1)

theorem P6291283364745547320.correct : P6291283364745547320.Spec := by
  intro n
  simp only [A186381, Nat.add_sub_cancel]

end A186381

/-! ## A186381.P9528548956877105046

`round(sqrt(Δ[A016754(n)]+1))+n`
-/

namespace A186381.P9528548956877105046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (n + 1) - f1 n + 1 : ℝ)) + (n : ℤ)

end

end A186381.P9528548956877105046

namespace A186381

/-- `round(sqrt(Δ[A016754(n)]+1))+n` -/
def P9528548956877105046.Spec : Prop :=
  ∀ n, P9528548956877105046.a n = A186381 (n + 1)

end A186381

/-! ## A186381.P1447410676546881737

`A186350(2*n+3)-(n+2)`
-/

namespace A186381.P1447410676546881737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186350 (2 * n + 3) - (n + 2 : ℤ)

end

end A186381.P1447410676546881737

namespace A186381

/-- `A186350(2*n+3)-(n+2)` -/
def P1447410676546881737.Spec : Prop :=
  ∀ n, P1447410676546881737.a n = A186381 (n + 1)

end A186381

/-! ## A186381.P14593885105558502260

`A003056(4*(n+1))+n+1`
-/

namespace A186381.P14593885105558502260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (4 * (n + 1)) + (n + 1 : ℤ)

end

end A186381.P14593885105558502260

namespace A186381

/-- `A003056(4*(n+1))+n+1` -/
def P14593885105558502260.Spec : Prop :=
  ∀ n, P14593885105558502260.a n = A186381 (n + 1)

end A186381

/-! ## A186381.P2886634343809118773

`∑[A003099(Δ[A003056(4*n)])]`
-/

namespace A186381.P2886634343809118773
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (4 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003099 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186381.P2886634343809118773

namespace A186381

/-- `∑[A003099(Δ[A003056(4*n)])]` -/
def P2886634343809118773.Spec : Prop :=
  ∀ n, P2886634343809118773.a n = A186381 (n + 1)

end A186381

/-! ## A186381.P13420959568665629738

`A002024(4*n+5)+n`
-/

namespace A186381.P13420959568665629738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (4 * n + 5) + (n : ℤ)

end

end A186381.P13420959568665629738

namespace A186381

/-- `A002024(4*n+5)+n` -/
def P13420959568665629738.Spec : Prop :=
  ∀ n, P13420959568665629738.a n = A186381 (n + 1)

end A186381

/-! ## A186381.P16483584089937078059

`A123578(4*n+5)+n`
-/

namespace A186381.P16483584089937078059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (4 * n + 5) + (n : ℤ)

end

end A186381.P16483584089937078059

namespace A186381

/-- `A123578(4*n+5)+n` -/
def P16483584089937078059.Spec : Prop :=
  ∀ n, P16483584089937078059.a n = A186381 (n + 1)

end A186381

/-! ## A186381.P6898676791567551281

`lt[2*(n+3), A007318(4*(n+3))]`
-/

namespace A186381.P6898676791567551281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (4 * (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A186381.P6898676791567551281

namespace A186381

/-- `lt[2*(n+3), A007318(4*(n+3))]` -/
def P6898676791567551281.Spec : Prop :=
  ∀ n, (P6898676791567551281.a n : ℤ) = A186381 (n + 1)

end A186381

/-! ## A186381.P10365559064174849053

`lt[A004767(n+2), A287822(A004767(n+2))]`
-/

namespace A186381.P10365559064174849053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (A004767 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A186381.P10365559064174849053

namespace A186381

/-- `lt[A004767(n+2), A287822(A004767(n+2))]` -/
def P10365559064174849053.Spec : Prop :=
  ∀ n, (P10365559064174849053.a n : ℤ) = A186381 (n + 1)

end A186381

/-! ## A186381.P12822136741664712008

`lt[5, A238802(A004767(n+2))]`
-/

namespace A186381.P12822136741664712008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238802 (A004767 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A186381.P12822136741664712008

namespace A186381

/-- `lt[5, A238802(A004767(n+2))]` -/
def P12822136741664712008.Spec : Prop :=
  ∀ n, (P12822136741664712008.a n : ℤ) = A186381 (n + 1)

end A186381

/-!
# A186382: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f(i)=4i and g(j)=j(j+1)/2 (triangular number). Complement of A186381.

The programs for A186382, the canonical program `A186382.P16361388767165584919` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186382 has offset 1).

The definition of A186382 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186382.P16361388767165584919

`floor((∑[n+5]-1)/4)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A186382

/-- `floor((∑[n+5]-1)/4)` -/
def P16361388767165584919.Spec : Prop :=
  ∀ n, P16361388767165584919.a n = A186382 (n + 1)

theorem P16361388767165584919.correct : P16361388767165584919.Spec := by
  intro n
  simp only [A186382, Nat.add_sub_cancel]

end A186382

/-! ## A186382.P153105345769052227

`round(∑[or(2, n)/4]+n)`
-/

namespace A186382.P153105345769052227
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℚ))

end

end A186382.P153105345769052227

namespace A186382

/-- `round(∑[or(2, n)/4]+n)` -/
def P153105345769052227.Spec : Prop :=
  ∀ n, P153105345769052227.a n = A186382 (n + 1)

end A186382

/-! ## A186382.P9383726943398255656

`ceil(C(n+2, 2)/4+n)`
-/

namespace A186382.P9383726943398255656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (n + 2) 2 : ℚ) / 4 + (n : ℚ)⌉

end

end A186382.P9383726943398255656

namespace A186382

/-- `ceil(C(n+2, 2)/4+n)` -/
def P9383726943398255656.Spec : Prop :=
  ∀ n, P9383726943398255656.a n = A186382 (n + 1)

end A186382

/-! ## A186382.P8981634339952393998

`n-floor(cot(Δ[8/(n+1)]))`
-/

namespace A186382.P8981634339952393998
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊Real.cot (f1 (n + 1) - f1 n : ℝ)⌋

end

end A186382.P8981634339952393998

namespace A186382

/-- `n-floor(cot(Δ[8/(n+1)]))` -/
def P8981634339952393998.Spec : Prop :=
  ∀ n, P8981634339952393998.a n = A186382 (n + 1)

end A186382

/-! ## A186382.P16780295657357367779

`ceil(n-cot(Δ[8/(n+1)]))`
-/

namespace A186382.P16780295657357367779
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) - Real.cot (f1 (n + 1) - f1 n : ℝ)⌉

end

end A186382.P16780295657357367779

namespace A186382

/-- `ceil(n-cot(Δ[8/(n+1)]))` -/
def P16780295657357367779.Spec : Prop :=
  ∀ n, P16780295657357367779.a n = A186382 (n + 1)

end A186382

/-! ## A186382.P16748054576179781461

`floor((C(n+2, 2)+3)/4)+n`
-/

namespace A186382.P16748054576179781461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 2) 2 + 3 : ℚ) / 4⌋ + (n : ℤ)

end

end A186382.P16748054576179781461

namespace A186382

/-- `floor((C(n+2, 2)+3)/4)+n` -/
def P16748054576179781461.Spec : Prop :=
  ∀ n, P16748054576179781461.a n = A186382 (n + 1)

end A186382

/-! ## A186382.P15526848370343105714

`floor(cot(4/∑[n+1]))+n+1`
-/

namespace A186382.P15526848370343105714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (4 / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) : ℝ)⌋ + (n + 1 : ℤ)

end

end A186382.P15526848370343105714

namespace A186382

/-- `floor(cot(4/∑[n+1]))+n+1` -/
def P15526848370343105714.Spec : Prop :=
  ∀ n, P15526848370343105714.a n = A186382 (n + 1)

end A186382

/-! ## A186382.P13974888678978801205

`ceil(∑[(n+1)/4]+n%(n+1))`
-/

namespace A186382.P13974888678978801205
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j + ((n % (n + 1) : ℕ) : ℚ)⌉

end

end A186382.P13974888678978801205

namespace A186382

/-- `ceil(∑[(n+1)/4]+n%(n+1))` -/
def P13974888678978801205.Spec : Prop :=
  ∀ n, P13974888678978801205.a n = A186382 (n + 1)

end A186382

/-! ## A186382.P7840100523162650134

`ceil(A246172(n+1)/4)`
-/

namespace A186382.P7840100523162650134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A246172 (n + 1) : ℚ) / 4⌉

end

end A186382.P7840100523162650134

namespace A186382

/-- `ceil(A246172(n+1)/4)` -/
def P7840100523162650134.Spec : Prop :=
  ∀ n, P7840100523162650134.a n = A186382 (n + 1)

end A186382

/-! ## A186382.P8459377171948048156

`ceil((A016861(n)+∑[n])/4)`
-/

namespace A186382.P8459377171948048156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A016861 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ) / 4⌉

end

end A186382.P8459377171948048156

namespace A186382

/-- `ceil((A016861(n)+∑[n])/4)` -/
def P8459377171948048156.Spec : Prop :=
  ∀ n, P8459377171948048156.a n = A186382 (n + 1)

end A186382

/-! ## A186382.P3949637454867195409

`floor(sqrt(A033487(n))/4)+1+n`
-/

namespace A186382.P3949637454867195409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A033487 n : ℝ) / 4⌋ + 1 + (n : ℤ)

end

end A186382.P3949637454867195409

namespace A186382

/-- `floor(sqrt(A033487(n))/4)+1+n` -/
def P3949637454867195409.Spec : Prop :=
  ∀ n, P3949637454867195409.a n = A186382 (n + 1)

end A186382

/-! ## A186382.P11359911682750657419

`round((A000217(n+1)+1)/4)+n`
-/

namespace A186382.P11359911682750657419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000217 (n + 1) + 1 : ℚ) / 4) + (n : ℤ)

end

end A186382.P11359911682750657419

namespace A186382

/-- `round((A000217(n+1)+1)/4)+n` -/
def P11359911682750657419.Spec : Prop :=
  ∀ n, P11359911682750657419.a n = A186382 (n + 1)

end A186382

/-! ## A186382.P7679305937751532362

`A248375(n)+A173254(n)`
-/

namespace A186382.P7679305937751532362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248375 n + A173254 n

end

end A186382.P7679305937751532362

namespace A186382

/-- `A248375(n)+A173254(n)` -/
def P7679305937751532362.Spec : Prop :=
  ∀ n, P7679305937751532362.a n = A186382 (n + 1)

end A186382

/-! ## A186382.P17480415821602106213

`A024182(n+3)-2`
-/

namespace A186382.P17480415821602106213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024182 (n + 3) - 2

end

end A186382.P17480415821602106213

namespace A186382

/-- `A024182(n+3)-2` -/
def P17480415821602106213.Spec : Prop :=
  ∀ n, P17480415821602106213.a n = A186382 (n + 1)

end A186382

/-! ## A186382.P16583434472031295938

`A389318(n+2)+n`
-/

namespace A186382.P16583434472031295938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389318 (n + 2) + (n : ℤ)

end

end A186382.P16583434472031295938

namespace A186382

/-- `A389318(n+2)+n` -/
def P16583434472031295938.Spec : Prop :=
  ∀ n, P16583434472031295938.a n = A186382 (n + 1)

end A186382

/-! ## A186382.P16237520527522688435

`A008619(A011848(n)+n)+n`
-/

namespace A186382.P16237520527522688435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A011848 n + (n : ℤ)).toNat + (n : ℤ)

end

end A186382.P16237520527522688435

namespace A186382

/-- `A008619(A011848(n)+n)+n` -/
def P16237520527522688435.Spec : Prop :=
  ∀ n, P16237520527522688435.a n = A186382 (n + 1)

end A186382

/-! ## A186382.P10326830010120669264

`A065033(∑[A004525(n+1)])+n`
-/

namespace A186382.P10326830010120669264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n : ℤ)

end

end A186382.P10326830010120669264

namespace A186382

/-- `A065033(∑[A004525(n+1)])+n` -/
def P10326830010120669264.Spec : Prop :=
  ∀ n, P10326830010120669264.a n = A186382 (n + 1)

end A186382

/-! ## A186382.P4217097699675313738

`A110654(∑[A004525(n+1)])+n`
-/

namespace A186382.P4217097699675313738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n : ℤ)

end

end A186382.P4217097699675313738

namespace A186382

/-- `A110654(∑[A004525(n+1)])+n` -/
def P4217097699675313738.Spec : Prop :=
  ∀ n, P4217097699675313738.a n = A186382 (n + 1)

end A186382

/-! ## A186382.P14817251248150050885

`A004526(∑[A092038(n+1)+1])`
-/

namespace A186382.P14817251248150050885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092038 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A186382.P14817251248150050885

namespace A186382

/-- `A004526(∑[A092038(n+1)+1])` -/
def P14817251248150050885.Spec : Prop :=
  ∀ n, P14817251248150050885.a n = A186382 (n + 1)

end A186382

/-! ## A186382.P2037528338064140830

`A004526(A054925(n+2)+2*n+1)`
-/

namespace A186382.P2037528338064140830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A054925 (n + 2) + (2 * n + 1 : ℤ)).toNat

end

end A186382.P2037528338064140830

namespace A186382

/-- `A004526(A054925(n+2)+2*n+1)` -/
def P2037528338064140830.Spec : Prop :=
  ∀ n, P2037528338064140830.a n = A186382 (n + 1)

end A186382

/-!
# A186383: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f(i)=5i and g(j)=j(j+1)/2 (triangular number). Complement of A186384.

The programs for A186383, the canonical program `A186383.P16245267840089437652` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186383 has offset 1).

The definition of A186383 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186383.P16245267840089437652

`comp[∑[floor((n-3)/5)]]`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A186383

/-- `comp[∑[floor((n-3)/5)]]` -/
def P16245267840089437652.Spec : Prop :=
  ∀ n, (P16245267840089437652.a n : ℤ) = A186383 (n + 1)

theorem P16245267840089437652.correct : P16245267840089437652.Spec := by
  intro n
  simp only [A186383, Nat.add_sub_cancel]

end A186383

/-! ## A186383.P16016534806599989412

`comp[A130520(n)]-3`
-/

namespace A186383.P16016534806599989412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130520 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 3

end

end A186383.P16016534806599989412

namespace A186383

/-- `comp[A130520(n)]-3` -/
def P16016534806599989412.Spec : Prop :=
  ∀ n, P16016534806599989412.a n = A186383 (n + 1)

end A186383

/-! ## A186383.P6604482851882545605

`floor(sqrt(A034097(n+1))+n)`
-/

namespace A186383.P6604482851882545605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A034097 (n + 1) : ℝ) + (n : ℝ)⌋

end

end A186383.P6604482851882545605

namespace A186383

/-- `floor(sqrt(A034097(n+1))+n)` -/
def P6604482851882545605.Spec : Prop :=
  ∀ n, P6604482851882545605.a n = A186383 (n + 1)

end A186383

/-! ## A186383.P17411049670822982586

`round(sqrt(A017329(n)+2)+n)`
-/

namespace A186383.P17411049670822982586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A017329 n + 2 : ℝ) + (n : ℝ))

end

end A186383.P17411049670822982586

namespace A186383

/-- `round(sqrt(A017329(n)+2)+n)` -/
def P17411049670822982586.Spec : Prop :=
  ∀ n, P17411049670822982586.a n = A186383 (n + 1)

end A186383

/-! ## A186383.P3278798330189758941

`round(sqrt(sqrt(A157651(n+1)))+n)`
-/

namespace A186383.P3278798330189758941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (A157651 (n + 1) : ℝ)) + (n : ℝ))

end

end A186383.P3278798330189758941

namespace A186383

/-- `round(sqrt(sqrt(A157651(n+1)))+n)` -/
def P3278798330189758941.Spec : Prop :=
  ∀ n, P3278798330189758941.a n = A186383 (n + 1)

end A186383

/-! ## A186383.P2173363325079982635

`round(sqrt(Δ[A073188(n)]+10*n+7)+n)`
-/

namespace A186383.P2173363325079982635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (n + 1) - f1 n + (10 * n + 7 : ℤ) : ℝ) + (n : ℝ))

end

end A186383.P2173363325079982635

namespace A186383

/-- `round(sqrt(Δ[A073188(n)]+10*n+7)+n)` -/
def P2173363325079982635.Spec : Prop :=
  ∀ n, P2173363325079982635.a n = A186383 (n + 1)

end A186383

/-! ## A186383.P5322306492539956081

`round(sqrt(A016873(2*n+1))+n)`
-/

namespace A186383.P5322306492539956081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A016873 (2 * n + 1) : ℝ) + (n : ℝ))

end

end A186383.P5322306492539956081

namespace A186383

/-- `round(sqrt(A016873(2*n+1))+n)` -/
def P5322306492539956081.Spec : Prop :=
  ∀ n, P5322306492539956081.a n = A186383 (n + 1)

end A186383

/-! ## A186383.P13085290925600402667

`A002024(A016897(n))+n`
-/

namespace A186383.P13085290925600402667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A016897 n).toNat + (n : ℤ)

end

end A186383.P13085290925600402667

namespace A186383

/-- `A002024(A016897(n))+n` -/
def P13085290925600402667.Spec : Prop :=
  ∀ n, P13085290925600402667.a n = A186383 (n + 1)

end A186383

/-! ## A186383.P18415647669058334887

`A002024(A008587(n+1))+n`
-/

namespace A186383.P18415647669058334887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A008587 (n + 1)).toNat + (n : ℤ)

end

end A186383.P18415647669058334887

namespace A186383

/-- `A002024(A008587(n+1))+n` -/
def P18415647669058334887.Spec : Prop :=
  ∀ n, P18415647669058334887.a n = A186383 (n + 1)

end A186383

/-! ## A186383.P2232207192657283107

`lt[A016885(n+1), A007318(A016861(n+3))]`
-/

namespace A186383.P2232207192657283107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A016861 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A186383.P2232207192657283107

namespace A186383

/-- `lt[A016885(n+1), A007318(A016861(n+3))]` -/
def P2232207192657283107.Spec : Prop :=
  ∀ n, (P2232207192657283107.a n : ℤ) = A186383 (n + 1)

end A186383

/-! ## A186383.P12602627022549961011

`lt[A189130(n+2), A007318(A016861(n+3))]`
-/

namespace A186383.P12602627022549961011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189130 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A016861 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A186383.P12602627022549961011

namespace A186383

/-- `lt[A189130(n+2), A007318(A016861(n+3))]` -/
def P12602627022549961011.Spec : Prop :=
  ∀ n, (P12602627022549961011.a n : ℤ) = A186383 (n + 1)

end A186383

/-! ## A186383.P5476672155748504108

`A000037(A034102(n+1))-A034102(n+1)+n`
-/

namespace A186383.P5476672155748504108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (A034102 (n + 1)).toNat - A034102 (n + 1) + (n : ℤ)

end

end A186383.P5476672155748504108

namespace A186383

/-- `A000037(A034102(n+1))-A034102(n+1)+n` -/
def P5476672155748504108.Spec : Prop :=
  ∀ n, P5476672155748504108.a n = A186383 (n + 1)

end A186383

/-! ## A186383.P8558216668596993100

`A000037(A034104(n+1))-A034104(n+1)+n`
-/

namespace A186383.P8558216668596993100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (A034104 (n + 1)).toNat - A034104 (n + 1) + (n : ℤ)

end

end A186383.P8558216668596993100

namespace A186383

/-- `A000037(A034104(n+1))-A034104(n+1)+n` -/
def P8558216668596993100.Spec : Prop :=
  ∀ n, P8558216668596993100.a n = A186383 (n + 1)

end A186383

/-! ## A186383.P1593967451122574032

`A000194(A017353(n))+n`
-/

namespace A186383.P1593967451122574032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A017353 n).toNat + (n : ℤ)

end

end A186383.P1593967451122574032

namespace A186383

/-- `A000194(A017353(n))+n` -/
def P1593967451122574032.Spec : Prop :=
  ∀ n, P1593967451122574032.a n = A186383 (n + 1)

end A186383

/-! ## A186383.P16934034764998329922

`A000194(A017365(n))+n`
-/

namespace A186383.P16934034764998329922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A017365 n).toNat + (n : ℤ)

end

end A186383.P16934034764998329922

namespace A186383

/-- `A000194(A017365(n))+n` -/
def P16934034764998329922.Spec : Prop :=
  ∀ n, P16934034764998329922.a n = A186383 (n + 1)

end A186383

/-! ## A186383.P8040879198245463182

`A000194(A017377(n))+n`
-/

namespace A186383.P8040879198245463182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A017377 n).toNat + (n : ℤ)

end

end A186383.P8040879198245463182

namespace A186383

/-- `A000194(A017377(n))+n` -/
def P8040879198245463182.Spec : Prop :=
  ∀ n, P8040879198245463182.a n = A186383 (n + 1)

end A186383

/-! ## A186383.P11098048448228732852

`A000194(A017329(n)+2)+n`
-/

namespace A186383.P11098048448228732852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A017329 n + 2).toNat + (n : ℤ)

end

end A186383.P11098048448228732852

namespace A186383

/-- `A000194(A017329(n)+2)+n` -/
def P11098048448228732852.Spec : Prop :=
  ∀ n, P11098048448228732852.a n = A186383 (n + 1)

end A186383

/-! ## A186383.P7328439447856733489

`A000194(A008592(n+1))+n`
-/

namespace A186383.P7328439447856733489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A008592 (n + 1)).toNat + (n : ℤ)

end

end A186383.P7328439447856733489

namespace A186383

/-- `A000194(A008592(n+1))+n` -/
def P7328439447856733489.Spec : Prop :=
  ∀ n, P7328439447856733489.a n = A186383 (n + 1)

end A186383

/-! ## A186383.P4100333234602619795

`A000194(A034099(n+1))+n`
-/

namespace A186383.P4100333234602619795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A034099 (n + 1)).toNat + (n : ℤ)

end

end A186383.P4100333234602619795

namespace A186383

/-- `A000194(A034099(n+1))+n` -/
def P4100333234602619795.Spec : Prop :=
  ∀ n, P4100333234602619795.a n = A186383 (n + 1)

end A186383

/-! ## A186383.P9886595203976402543

`A000194(A034101(n+1))-2+n`
-/

namespace A186383.P9886595203976402543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A034101 (n + 1)).toNat - 2 + (n : ℤ)

end

end A186383.P9886595203976402543

namespace A186383

/-- `A000194(A034101(n+1))-2+n` -/
def P9886595203976402543.Spec : Prop :=
  ∀ n, P9886595203976402543.a n = A186383 (n + 1)

end A186383

/-!
# A186384: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f(i)=5i and g(j)=j(j+1)/2 (triangular number). Complement of A186383.

The programs for A186384, the canonical program `A186384.P7355230016433527800` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186384 has offset 1).

The definition of A186384 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186384.P7355230016433527800

`∑[ceil((n+4)/5)]`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A186384

/-- `∑[ceil((n+4)/5)]` -/
def P7355230016433527800.Spec : Prop :=
  ∀ n, P7355230016433527800.a n = A186384 (n + 1)

theorem P7355230016433527800.correct : P7355230016433527800.Spec := by
  intro n
  simp only [A186384, Nat.add_sub_cancel]

end A186384

/-! ## A186384.P3334343918813071920

`floor(C(n+2, 2)/5+n+1)`
-/

namespace A186384.P3334343918813071920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 2) 2 : ℚ) / 5 + (n + 1 : ℚ)⌋

end

end A186384.P3334343918813071920

namespace A186384

/-- `floor(C(n+2, 2)/5+n+1)` -/
def P3334343918813071920.Spec : Prop :=
  ∀ n, P3334343918813071920.a n = A186384 (n + 1)

end A186384

/-! ## A186384.P13583879609794969712

`ceil(a(n-1)+(n+4)/5)` with `a(0)=1`
-/

namespace A186384.P13583879609794969712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℚ) + (n + 4 : ℚ) / 5⌉

end

end A186384.P13583879609794969712

namespace A186384

/-- `ceil(a(n-1)+(n+4)/5)` -/
def P13583879609794969712.Spec : Prop :=
  ∀ n, P13583879609794969712.a n = A186384 (n + 1)

end A186384

/-! ## A186384.P11822173249063127806

`floor(a(n-1)+(n+8)/5)` with `a(0)=1`
-/

namespace A186384.P11822173249063127806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) + (n + 8 : ℚ) / 5⌋

end

end A186384.P11822173249063127806

namespace A186384

/-- `floor(a(n-1)+(n+8)/5)` -/
def P11822173249063127806.Spec : Prop :=
  ∀ n, P11822173249063127806.a n = A186384 (n + 1)

end A186384

/-! ## A186384.P16812018378156890804

`a(n-5)+4+n` with `a(0)=1, a(1)=2, a(2)=4, a(3)=6, a(4)=8`
-/

namespace A186384.P16812018378156890804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 6, 8] fun n a =>
  a (n - 5) + 4 + n

end

end A186384.P16812018378156890804

namespace A186384

/-- `a(n-5)+4+n` -/
def P16812018378156890804.Spec : Prop :=
  ∀ n, (P16812018378156890804.a n : ℤ) = A186384 (n + 1)

end A186384

/-! ## A186384.P13685091180943061522

`∑[comp[6*n+2]+1]-A000217(n)`
-/

namespace A186384.P13685091180943061522
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000217 n

end

end A186384.P13685091180943061522

namespace A186384

/-- `∑[comp[6*n+2]+1]-A000217(n)` -/
def P13685091180943061522.Spec : Prop :=
  ∀ n, P13685091180943061522.a n = A186384 (n + 1)

end A186384

/-! ## A186384.P12263603986118386286

`∑[comp[A004277(3*n+1)]-n]+1+n`
-/

namespace A186384.P12263603986118386286
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (3 * n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A186384.P12263603986118386286

namespace A186384

/-- `∑[comp[A004277(3*n+1)]-n]+1+n` -/
def P12263603986118386286.Spec : Prop :=
  ∀ n, P12263603986118386286.a n = A186384 (n + 1)

end A186384

/-! ## A186384.P8825277610238634520

`A186386(n+1)+A011658(n)`
-/

namespace A186384.P8825277610238634520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186386 (n + 1) + A011658 n

end

end A186384.P8825277610238634520

namespace A186384

/-- `A186386(n+1)+A011658(n)` -/
def P8825277610238634520.Spec : Prop :=
  ∀ n, P8825277610238634520.a n = A186384 (n + 1)

end A186384

/-! ## A186384.P8154430915637468551

`A249020(n)+n-A002266(n)`
-/

namespace A186384.P8154430915637468551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249020 n + ((n : ℤ) - A002266 n)

end

end A186384.P8154430915637468551

namespace A186384

/-- `A249020(n)+n-A002266(n)` -/
def P8154430915637468551.Spec : Prop :=
  ∀ n, P8154430915637468551.a n = A186384 (n + 1)

end A186384

/-! ## A186384.P724642698852208011

`A398060(n+1)-(n²+n)`
-/

namespace A186384.P724642698852208011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398060 (n + 1) - (n ^ 2 + n : ℤ)

end

end A186384.P724642698852208011

namespace A186384

/-- `A398060(n+1)-(n²+n)` -/
def P724642698852208011.Spec : Prop :=
  ∀ n, P724642698852208011.a n = A186384 (n + 1)

end A186384

/-! ## A186384.P1662094160805579948

`A227353(n+2)-A011858(n)`
-/

namespace A186384.P1662094160805579948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227353 (n + 2) - A011858 n

end

end A186384.P1662094160805579948

namespace A186384

/-- `A227353(n+2)-A011858(n)` -/
def P1662094160805579948.Spec : Prop :=
  ∀ n, P1662094160805579948.a n = A186384 (n + 1)

end A186384

/-! ## A186384.P6584049887086475433

`A249020(n+1)-A288156(n+1)+n`
-/

namespace A186384.P6584049887086475433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249020 (n + 1) - A288156 (n + 1) + (n : ℤ)

end

end A186384.P6584049887086475433

namespace A186384

/-- `A249020(n+1)-A288156(n+1)+n` -/
def P6584049887086475433.Spec : Prop :=
  ∀ n, P6584049887086475433.a n = A186384 (n + 1)

end A186384

/-! ## A186384.P8184165705810214136

`A008732(n+3)-3`
-/

namespace A186384.P8184165705810214136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008732 (n + 3) - 3

end

end A186384.P8184165705810214136

namespace A186384

/-- `A008732(n+3)-3` -/
def P8184165705810214136.Spec : Prop :=
  ∀ n, P8184165705810214136.a n = A186384 (n + 1)

end A186384

/-! ## A186384.P3048126645349252910

`A130520(n+3)+1+n`
-/

namespace A186384.P3048126645349252910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130520 (n + 3) + 1 + (n : ℤ)

end

end A186384.P3048126645349252910

namespace A186384

/-- `A130520(n+3)+1+n` -/
def P3048126645349252910.Spec : Prop :=
  ∀ n, P3048126645349252910.a n = A186384 (n + 1)

end A186384

/-! ## A186384.P7603688539539505102

`A011858(n+3)-A130520(n)`
-/

namespace A186384.P7603688539539505102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 (n + 3) - A130520 n

end

end A186384.P7603688539539505102

namespace A186384

/-- `A011858(n+3)-A130520(n)` -/
def P7603688539539505102.Spec : Prop :=
  ∀ n, P7603688539539505102.a n = A186384 (n + 1)

end A186384

/-! ## A186384.P13077133831720988992

`(A008812(n+3)+n-2)/2`
-/

namespace A186384.P13077133831720988992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008812 (n + 3) + ((n : ℤ) - 2) : ℚ) / 2

end

end A186384.P13077133831720988992

namespace A186384

/-- `(A008812(n+3)+n-2)/2` -/
def P13077133831720988992.Spec : Prop :=
  ∀ n, P13077133831720988992.a n = (A186384 (n + 1) : ℚ)

end A186384

/-! ## A186384.P14750114733964716099

`record[A008732(n)-2*n]`
-/

namespace A186384.P14750114733964716099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008732 n - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186384.P14750114733964716099

namespace A186384

/-- `record[A008732(n)-2*n]` -/
def P14750114733964716099.Spec : Prop :=
  ∀ n, P14750114733964716099.a n = A186384 (n + 1)

end A186384

/-! ## A186384.P3386237176111528410

`A008720(Δ[n²])+n+1`
-/

namespace A186384.P3386237176111528410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008720 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n + 1 : ℤ)

end

end A186384.P3386237176111528410

namespace A186384

/-- `A008720(Δ[n²])+n+1` -/
def P3386237176111528410.Spec : Prop :=
  ∀ n, P3386237176111528410.a n = A186384 (n + 1)

end A186384

/-! ## A186384.P10162758604086123565

`A008720(2*n+1)+1+n`
-/

namespace A186384.P10162758604086123565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008720 (2 * n + 1) + 1 + (n : ℤ)

end

end A186384.P10162758604086123565

namespace A186384

/-- `A008720(2*n+1)+1+n` -/
def P10162758604086123565.Spec : Prop :=
  ∀ n, P10162758604086123565.a n = A186384 (n + 1)

end A186384

/-! ## A186384.P3332180152554415034

`A369113(2*n+3)+n+1`
-/

namespace A186384.P3332180152554415034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369113 (2 * n + 3) + (n + 1 : ℤ)

end

end A186384.P3332180152554415034

namespace A186384

/-- `A369113(2*n+3)+n+1` -/
def P3332180152554415034.Spec : Prop :=
  ∀ n, P3332180152554415034.a n = A186384 (n + 1)

end A186384

/-!
# A186385: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f(i)=5i and g(j)=j(j+1)/2 (triangular number). Complement of A186386.

The programs for A186385, the canonical program `A186385.P3849991208278894900` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186385 has offset 1).

The definition of A186385 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186385.P3849991208278894900

`round(sqrt(10*(n+1)+1))+n`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A186385

/-- `round(sqrt(10*(n+1)+1))+n` -/
def P3849991208278894900.Spec : Prop :=
  ∀ n, P3849991208278894900.a n = A186385 (n + 1)

theorem P3849991208278894900.correct : P3849991208278894900.Spec := by
  intro n
  simp only [A186385, Nat.add_sub_cancel]

end A186385

/-! ## A186385.P14561189215059346848

`round(sqrt(A017293(n+1))+n)`
-/

namespace A186385.P14561189215059346848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A017293 (n + 1) : ℝ) + (n : ℝ))

end

end A186385.P14561189215059346848

namespace A186385

/-- `round(sqrt(A017293(n+1))+n)` -/
def P14561189215059346848.Spec : Prop :=
  ∀ n, P14561189215059346848.a n = A186385 (n + 1)

end A186385

/-! ## A186385.P11132339066070944581

`∑[Δ[A003056(5*n)]+1]`
-/

namespace A186385.P11132339066070944581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (5 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186385.P11132339066070944581

namespace A186385

/-- `∑[Δ[A003056(5*n)]+1]` -/
def P11132339066070944581.Spec : Prop :=
  ∀ n, P11132339066070944581.a n = A186385 (n + 1)

end A186385

/-! ## A186385.P4718858428668292252

`∑[A000031(Δ[A003056(5*n)])]`
-/

namespace A186385.P4718858428668292252
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (5 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186385.P4718858428668292252

namespace A186385

/-- `∑[A000031(Δ[A003056(5*n)])]` -/
def P4718858428668292252.Spec : Prop :=
  ∀ n, P4718858428668292252.a n = A186385 (n + 1)

end A186385

/-! ## A186385.P10557169561246543334

`∑[A000267(Δ[A003056(5*n)])]`
-/

namespace A186385.P10557169561246543334
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (5 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186385.P10557169561246543334

namespace A186385

/-- `∑[A000267(Δ[A003056(5*n)])]` -/
def P10557169561246543334.Spec : Prop :=
  ∀ n, P10557169561246543334.a n = A186385 (n + 1)

end A186385

/-! ## A186385.P2429767788695410447

`∑[A003099(Δ[A003056(5*n)])]`
-/

namespace A186385.P2429767788695410447
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (5 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003099 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186385.P2429767788695410447

namespace A186385

/-- `∑[A003099(Δ[A003056(5*n)])]` -/
def P2429767788695410447.Spec : Prop :=
  ∀ n, P2429767788695410447.a n = A186385 (n + 1)

end A186385

/-!
# A186386: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f(i)=5i and g(j)=j(j+1)/2 (triangular number). Complement of A186385.

The programs for A186386, the canonical program `A186386.P1067147678735458446` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186386 has offset 1).

The definition of A186386 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186386.P1067147678735458446

`floor((∑[n+6]-1)/5)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A186386

/-- `floor((∑[n+6]-1)/5)` -/
def P1067147678735458446.Spec : Prop :=
  ∀ n, P1067147678735458446.a n = A186386 (n + 1)

theorem P1067147678735458446.correct : P1067147678735458446.Spec := by
  intro n
  simp only [A186386, Nat.add_sub_cancel]

end A186386

/-! ## A186386.P3981178892475132099

`ceil((C(n+7, 2)-20)/5)`
-/

namespace A186386.P3981178892475132099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.choose (n + 7) 2 : ℤ) - 20 : ℚ) / 5⌉

end

end A186386.P3981178892475132099

namespace A186386

/-- `ceil((C(n+7, 2)-20)/5)` -/
def P3981178892475132099.Spec : Prop :=
  ∀ n, P3981178892475132099.a n = A186386 (n + 1)

end A186386

/-! ## A186386.P6306669599995890499

`ceil(C(n+2, 2)/5+n)`
-/

namespace A186386.P6306669599995890499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (n + 2) 2 : ℚ) / 5 + (n : ℚ)⌉

end

end A186386.P6306669599995890499

namespace A186386

/-- `ceil(C(n+2, 2)/5+n)` -/
def P6306669599995890499.Spec : Prop :=
  ∀ n, P6306669599995890499.a n = A186386 (n + 1)

end A186386

/-! ## A186386.P13566214765099249883

`∑[∑[(-1)^(n%5)]]+n`
-/

namespace A186386.P13566214765099249883
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A186386.P13566214765099249883

namespace A186386

/-- `∑[∑[(-1)^(n%5)]]+n` -/
def P13566214765099249883.Spec : Prop :=
  ∀ n, P13566214765099249883.a n = A186386 (n + 1)

end A186386

/-! ## A186386.P9433866947470605910

`∑[a(n-5)+1]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1, a(4)=2, a(5)=3`
-/

namespace A186386.P9433866947470605910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 1, 2, 3] fun n f1 =>
  f1 (n - 5) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186386.P9433866947470605910

namespace A186386

/-- `∑[a(n-5)+1]` -/
def P9433866947470605910.Spec : Prop :=
  ∀ n, (P9433866947470605910.a n : ℤ) = A186386 (n + 1)

end A186386

/-! ## A186386.P11668020129090727643

`a(n-5)+4+n` with `a(0)=1, a(1)=2, a(2)=4, a(3)=5, a(4)=7`
-/

namespace A186386.P11668020129090727643
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 5, 7] fun n a =>
  a (n - 5) + 4 + n

end

end A186386.P11668020129090727643

namespace A186386

/-- `a(n-5)+4+n` -/
def P11668020129090727643.Spec : Prop :=
  ∀ n, (P11668020129090727643.a n : ℤ) = A186386 (n + 1)

end A186386

/-! ## A186386.P15516591970663481134

`ceil(A004120(n+1)/5)`
-/

namespace A186386.P15516591970663481134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004120 (n + 1) : ℚ) / 5⌉

end

end A186386.P15516591970663481134

namespace A186386

/-- `ceil(A004120(n+1)/5)` -/
def P15516591970663481134.Spec : Prop :=
  ∀ n, P15516591970663481134.a n = A186386 (n + 1)

end A186386

/-! ## A186386.P5467880838365678225

`∑[A194509(n+1)]+n`
-/

namespace A186386.P5467880838365678225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A186386.P5467880838365678225

namespace A186386

/-- `∑[A194509(n+1)]+n` -/
def P5467880838365678225.Spec : Prop :=
  ∀ n, P5467880838365678225.a n = A186386 (n + 1)

end A186386

/-! ## A186386.P9749704391433506334

`A057355(n)+A008732(n)`
-/

namespace A186386.P9749704391433506334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057355 n + A008732 n

end

end A186386.P9749704391433506334

namespace A186386

/-- `A057355(n)+A008732(n)` -/
def P9749704391433506334.Spec : Prop :=
  ∀ n, P9749704391433506334.a n = A186386 (n + 1)

end A186386

/-! ## A186386.P5441901210441154366

`A130520(n)+A047497(n+1)`
-/

namespace A186386.P5441901210441154366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130520 n + A047497 (n + 1)

end

end A186386.P5441901210441154366

namespace A186386

/-- `A130520(n)+A047497(n+1)` -/
def P5441901210441154366.Spec : Prop :=
  ∀ n, P5441901210441154366.a n = A186386 (n + 1)

end A186386

/-! ## A186386.P7749709514029644345

`A186384(n+1)-A011658(n)`
-/

namespace A186386.P7749709514029644345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186384 (n + 1) - A011658 n

end

end A186386.P7749709514029644345

namespace A186386

/-- `A186384(n+1)-A011658(n)` -/
def P7749709514029644345.Spec : Prop :=
  ∀ n, P7749709514029644345.a n = A186386 (n + 1)

end A186386

/-! ## A186386.P13722928153216819350

`∑[A058207(n+1)]-A058207(n)`
-/

namespace A186386.P13722928153216819350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A058207 n

end

end A186386.P13722928153216819350

namespace A186386

/-- `∑[A058207(n+1)]-A058207(n)` -/
def P13722928153216819350.Spec : Prop :=
  ∀ n, P13722928153216819350.a n = A186386 (n + 1)

end A186386

/-! ## A186386.P4944870929027798762

`∑[∑[A131554(n+1)]]+n`
-/

namespace A186386.P4944870929027798762
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131554 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A186386.P4944870929027798762

namespace A186386

/-- `∑[∑[A131554(n+1)]]+n` -/
def P4944870929027798762.Spec : Prop :=
  ∀ n, P4944870929027798762.a n = A186386 (n + 1)

end A186386

/-! ## A186386.P8306644472962215117

`A249020(n+1)+A288156(n)+A002266(n)`
-/

namespace A186386.P8306644472962215117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249020 (n + 1) + (A288156 n + A002266 n)

end

end A186386.P8306644472962215117

namespace A186386

/-- `A249020(n+1)+A288156(n)+A002266(n)` -/
def P8306644472962215117.Spec : Prop :=
  ∀ n, P8306644472962215117.a n = A186386 (n + 1)

end A186386

/-! ## A186386.P8096349940222546084

`A288156(n+1)+A288156(n)+A249020(n)`
-/

namespace A186386.P8096349940222546084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288156 (n + 1) + (A288156 n + A249020 n)

end

end A186386.P8096349940222546084

namespace A186386

/-- `A288156(n+1)+A288156(n)+A249020(n)` -/
def P8096349940222546084.Spec : Prop :=
  ∀ n, P8096349940222546084.a n = A186386 (n + 1)

end A186386

/-! ## A186386.P7698515800310585531

`∑[n+2]-A185170(n+3)`
-/

namespace A186386.P7698515800310585531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A185170 (n + 3)

end

end A186386.P7698515800310585531

namespace A186386

/-- `∑[n+2]-A185170(n+3)` -/
def P7698515800310585531.Spec : Prop :=
  ∀ n, P7698515800310585531.a n = A186386 (n + 1)

end A186386

/-! ## A186386.P3407199646795966495

`A110532(2*n+1)+A130520(n+1)+1`
-/

namespace A186386.P3407199646795966495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110532 (2 * n + 1) + (A130520 (n + 1) + 1)

end

end A186386.P3407199646795966495

namespace A186386

/-- `A110532(2*n+1)+A130520(n+1)+1` -/
def P3407199646795966495.Spec : Prop :=
  ∀ n, P3407199646795966495.a n = A186386 (n + 1)

end A186386

/-! ## A186386.P263716613351269474

`A002266(2*n+1)+A008732(n+1)-1`
-/

namespace A186386.P263716613351269474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (2 * n + 1) + (A008732 (n + 1) - 1)

end

end A186386.P263716613351269474

namespace A186386

/-- `A002266(2*n+1)+A008732(n+1)-1` -/
def P263716613351269474.Spec : Prop :=
  ∀ n, P263716613351269474.a n = A186386 (n + 1)

end A186386

/-! ## A186386.P8149676763314633884

`A002266(2*n+1)+A008720(2*n)+A002266(n+1)`
-/

namespace A186386.P8149676763314633884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (2 * n + 1) + (A008720 (2 * n) + A002266 (n + 1))

end

end A186386.P8149676763314633884

namespace A186386

/-- `A002266(2*n+1)+A008720(2*n)+A002266(n+1)` -/
def P8149676763314633884.Spec : Prop :=
  ∀ n, P8149676763314633884.a n = A186386 (n + 1)

end A186386

/-! ## A186386.P14821786551365209026

`A002266(2*n+1)+A008803(2*n)+A002266(n+1)`
-/

namespace A186386.P14821786551365209026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (2 * n + 1) + (A008803 (2 * n) + A002266 (n + 1))

end

end A186386.P14821786551365209026

namespace A186386

/-- `A002266(2*n+1)+A008803(2*n)+A002266(n+1)` -/
def P14821786551365209026.Spec : Prop :=
  ∀ n, P14821786551365209026.a n = A186386 (n + 1)

end A186386

/-!
# A186387: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f(i)=6i and g(j)=j(j+1)/2 (triangular number). Complement of A186388.

The programs for A186387, the canonical program `A186387.P13958920964312444159` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186387 has offset 1).

The definition of A186387 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186387.P13958920964312444159

`comp[floor(∑[n/6-1])]`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A186387

/-- `comp[floor(∑[n/6-1])]` -/
def P13958920964312444159.Spec : Prop :=
  ∀ n, (P13958920964312444159.a n : ℤ) = A186387 (n + 1)

theorem P13958920964312444159.correct : P13958920964312444159.Spec := by
  intro n
  simp only [A186387, Nat.add_sub_cancel]

end A186387

/-! ## A186387.P3820962698062892236

`round(sqrt(A017653(n))+n)`
-/

namespace A186387.P3820962698062892236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A017653 n : ℝ) + (n : ℝ))

end

end A186387.P3820962698062892236

namespace A186387

/-- `round(sqrt(A017653(n))+n)` -/
def P3820962698062892236.Spec : Prop :=
  ∀ n, P3820962698062892236.a n = A186387 (n + 1)

end A186387

/-! ## A186387.P13073021325992824928

`round(sqrt(Δ[A195319(n)])+n)`
-/

namespace A186387.P13073021325992824928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195319 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (n + 1) - f1 n : ℝ) + (n : ℝ))

end

end A186387.P13073021325992824928

namespace A186387

/-- `round(sqrt(Δ[A195319(n)])+n)` -/
def P13073021325992824928.Spec : Prop :=
  ∀ n, P13073021325992824928.a n = A186387 (n + 1)

end A186387

/-! ## A186387.P16435242208268508698

`round(sqrt(A008594(n+1))+n)`
-/

namespace A186387.P16435242208268508698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A008594 (n + 1) : ℝ) + (n : ℝ))

end

end A186387.P16435242208268508698

namespace A186387

/-- `round(sqrt(A008594(n+1))+n)` -/
def P16435242208268508698.Spec : Prop :=
  ∀ n, P16435242208268508698.a n = A186387 (n + 1)

end A186387

/-! ## A186387.P12598783111391031828

`round(sqrt(A016789(n)+9*n+8))+n`
-/

namespace A186387.P12598783111391031828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A016789 n + (9 * n + 8 : ℤ) : ℝ)) + (n : ℤ)

end

end A186387.P12598783111391031828

namespace A186387

/-- `round(sqrt(A016789(n)+9*n+8))+n` -/
def P12598783111391031828.Spec : Prop :=
  ∀ n, P12598783111391031828.a n = A186387 (n + 1)

end A186387

/-! ## A186387.P10232845655522169021

`round(sqrt(Δ[A080859(n)]))+n`
-/

namespace A186387.P10232845655522169021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (n + 1) - f1 n : ℝ)) + (n : ℤ)

end

end A186387.P10232845655522169021

namespace A186387

/-- `round(sqrt(Δ[A080859(n)]))+n` -/
def P10232845655522169021.Spec : Prop :=
  ∀ n, P10232845655522169021.a n = A186387 (n + 1)

end A186387

/-! ## A186387.P16545416359086610513

`A073188(Δ[n²])+n+2`
-/

namespace A186387.P16545416359086610513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n + 2 : ℤ)

end

end A186387.P16545416359086610513

namespace A186387

/-- `A073188(Δ[n²])+n+2` -/
def P16545416359086610513.Spec : Prop :=
  ∀ n, P16545416359086610513.a n = A186387 (n + 1)

end A186387

/-! ## A186387.P17641982110724553637

`A073188(2*n+1)+2+n`
-/

namespace A186387.P17641982110724553637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (2 * n + 1) + 2 + (n : ℤ)

end

end A186387.P17641982110724553637

namespace A186387

/-- `A073188(2*n+1)+2+n` -/
def P17641982110724553637.Spec : Prop :=
  ∀ n, P17641982110724553637.a n = A186387 (n + 1)

end A186387

/-! ## A186387.P11030860640167772861

`A186354(2*(n+1))-(n+1)`
-/

namespace A186387.P11030860640167772861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186354 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A186387.P11030860640167772861

namespace A186387

/-- `A186354(2*(n+1))-(n+1)` -/
def P11030860640167772861.Spec : Prop :=
  ∀ n, P11030860640167772861.a n = A186387 (n + 1)

end A186387

/-! ## A186387.P15686014581579302141

`round(sqrt(A016945(2*n+1))+n)`
-/

namespace A186387.P15686014581579302141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A016945 (2 * n + 1) : ℝ) + (n : ℝ))

end

end A186387.P15686014581579302141

namespace A186387

/-- `round(sqrt(A016945(2*n+1))+n)` -/
def P15686014581579302141.Spec : Prop :=
  ∀ n, P15686014581579302141.a n = A186387 (n + 1)

end A186387

/-! ## A186387.P11661700030894647846

`round(sqrt(A016957(2*n+1))+n)`
-/

namespace A186387.P11661700030894647846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A016957 (2 * n + 1) : ℝ) + (n : ℝ))

end

end A186387.P11661700030894647846

namespace A186387

/-- `round(sqrt(A016957(2*n+1))+n)` -/
def P11661700030894647846.Spec : Prop :=
  ∀ n, P11661700030894647846.a n = A186387 (n + 1)

end A186387

/-! ## A186387.P2032540216241700325

`round(sqrt(A016969(2*n+1))+n)`
-/

namespace A186387.P2032540216241700325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A016969 (2 * n + 1) : ℝ) + (n : ℝ))

end

end A186387.P2032540216241700325

namespace A186387

/-- `round(sqrt(A016969(2*n+1))+n)` -/
def P2032540216241700325.Spec : Prop :=
  ∀ n, P2032540216241700325.a n = A186387 (n + 1)

end A186387

/-! ## A186387.P8957170055740477599

`A003056(6*n+4)+1+n`
-/

namespace A186387.P8957170055740477599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (6 * n + 4) + 1 + (n : ℤ)

end

end A186387.P8957170055740477599

namespace A186387

/-- `A003056(6*n+4)+1+n` -/
def P8957170055740477599.Spec : Prop :=
  ∀ n, P8957170055740477599.a n = A186387 (n + 1)

end A186387

/-! ## A186387.P5821288247448161811

`A003056(A016957(n))+n+1`
-/

namespace A186387.P5821288247448161811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A016957 n).toNat + (n + 1 : ℤ)

end

end A186387.P5821288247448161811

namespace A186387

/-- `A003056(A016957(n))+n+1` -/
def P5821288247448161811.Spec : Prop :=
  ∀ n, P5821288247448161811.a n = A186387 (n + 1)

end A186387

/-! ## A186387.P2848212519126546428

`A003056(A016945(n)+1)+n+1`
-/

namespace A186387.P2848212519126546428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A016945 n + 1).toNat + (n + 1 : ℤ)

end

end A186387.P2848212519126546428

namespace A186387

/-- `A003056(A016945(n)+1)+n+1` -/
def P2848212519126546428.Spec : Prop :=
  ∀ n, P2848212519126546428.a n = A186387 (n + 1)

end A186387

/-! ## A186387.P15373833894395864175

`A003056(A016969(n)-1)+n+1`
-/

namespace A186387.P15373833894395864175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A016969 n - 1).toNat + (n + 1 : ℤ)

end

end A186387.P15373833894395864175

namespace A186387

/-- `A003056(A016969(n)-1)+n+1` -/
def P15373833894395864175.Spec : Prop :=
  ∀ n, P15373833894395864175.a n = A186387 (n + 1)

end A186387

/-! ## A186387.P11136250162671897817

`A002024(6*(n+1))+n`
-/

namespace A186387.P11136250162671897817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (6 * (n + 1)) + (n : ℤ)

end

end A186387.P11136250162671897817

namespace A186387

/-- `A002024(6*(n+1))+n` -/
def P11136250162671897817.Spec : Prop :=
  ∀ n, P11136250162671897817.a n = A186387 (n + 1)

end A186387

/-! ## A186387.P5438725931640896689

`A003057(6*(n+1))+n-1`
-/

namespace A186387.P5438725931640896689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (6 * (n + 1)) + ((n : ℤ) - 1)

end

end A186387.P5438725931640896689

namespace A186387

/-- `A003057(6*(n+1))+n-1` -/
def P5438725931640896689.Spec : Prop :=
  ∀ n, P5438725931640896689.a n = A186387 (n + 1)

end A186387

/-! ## A186387.P7085146857892077834

`A003056(A016969(n))+n+1`
-/

namespace A186387.P7085146857892077834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A016969 n).toNat + (n + 1 : ℤ)

end

end A186387.P7085146857892077834

namespace A186387

/-- `A003056(A016969(n))+n+1` -/
def P7085146857892077834.Spec : Prop :=
  ∀ n, P7085146857892077834.a n = A186387 (n + 1)

end A186387

/-! ## A186387.P12182144386427106569

`A000194(12*(n+1))+n`
-/

namespace A186387.P12182144386427106569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (12 * (n + 1)) + (n : ℤ)

end

end A186387.P12182144386427106569

namespace A186387

/-- `A000194(12*(n+1))+n` -/
def P12182144386427106569.Spec : Prop :=
  ∀ n, P12182144386427106569.a n = A186387 (n + 1)

end A186387

/-!
# A186388: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f(i)=6i and g(j)=j(j+1)/2 (triangular number). Complement of A186387.

The programs for A186388, the canonical program `A186388.P4749873551288095535` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186388 has offset 1).

The definition of A186388 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186388.P4749873551288095535

`floor(∑[(n+7)/6])`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A186388

/-- `floor(∑[(n+7)/6])` -/
def P4749873551288095535.Spec : Prop :=
  ∀ n, P4749873551288095535.a n = A186388 (n + 1)

theorem P4749873551288095535.correct : P4749873551288095535.Spec := by
  intro n
  simp only [A186388, Nat.add_sub_cancel]

end A186388

/-! ## A186388.P2989016542107736301

`floor(C(n+2, 2)/6)+n+1`
-/

namespace A186388.P2989016542107736301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 2) 2 : ℚ) / 6⌋ + (n + 1 : ℤ)

end

end A186388.P2989016542107736301

namespace A186388

/-- `floor(C(n+2, 2)/6)+n+1` -/
def P2989016542107736301.Spec : Prop :=
  ∀ n, P2989016542107736301.a n = A186388 (n + 1)

end A186388

/-! ## A186388.P14158174820132451281

`floor(A001840(n)/2)+n+1`
-/

namespace A186388.P14158174820132451281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001840 n : ℚ) / 2⌋ + (n + 1 : ℤ)

end

end A186388.P14158174820132451281

namespace A186388

/-- `floor(A001840(n)/2)+n+1` -/
def P14158174820132451281.Spec : Prop :=
  ∀ n, P14158174820132451281.a n = A186388 (n + 1)

end A186388

/-! ## A186388.P3940952764208329872

`floor(A000292(n)/A004277(n))+n+1`
-/

namespace A186388.P3940952764208329872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000292 n : ℚ) / (A004277 n : ℚ)⌋ + (n + 1 : ℤ)

end

end A186388.P3940952764208329872

namespace A186388

/-- `floor(A000292(n)/A004277(n))+n+1` -/
def P3940952764208329872.Spec : Prop :=
  ∀ n, P3940952764208329872.a n = A186388 (n + 1)

end A186388

/-! ## A186388.P17470714974451039392

`ceil(∑[A100504(n)-1]/A016754(n)+n)`
-/

namespace A186388.P17470714974451039392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100504 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A016754 n : ℚ) + (n : ℚ)⌉

end

end A186388.P17470714974451039392

namespace A186388

/-- `ceil(∑[A100504(n)-1]/A016754(n)+n)` -/
def P17470714974451039392.Spec : Prop :=
  ∀ n, P17470714974451039392.a n = A186388 (n + 1)

end A186388

/-! ## A186388.P1862128847593219876

`A011865(n+2)+1+n`
-/

namespace A186388.P1862128847593219876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 (n + 2) + 1 + (n : ℤ)

end

end A186388.P1862128847593219876

namespace A186388

/-- `A011865(n+2)+1+n` -/
def P1862128847593219876.Spec : Prop :=
  ∀ n, P1862128847593219876.a n = A186388 (n + 1)

end A186388

/-! ## A186388.P12951352006779026289

`∑[A008619(Δ[A289233(n+1)])]`
-/

namespace A186388.P12951352006779026289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289233 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186388.P12951352006779026289

namespace A186388

/-- `∑[A008619(Δ[A289233(n+1)])]` -/
def P12951352006779026289.Spec : Prop :=
  ∀ n, P12951352006779026289.a n = A186388 (n + 1)

end A186388

/-! ## A186388.P7845608343304388740

`ceil(A006504(n+1)/(A000096(n+2)+1))`
-/

namespace A186388.P7845608343304388740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006504 (n + 1) : ℚ) / (A000096 (n + 2) + 1 : ℚ)⌉

end

end A186388.P7845608343304388740

namespace A186388

/-- `ceil(A006504(n+1)/(A000096(n+2)+1))` -/
def P7845608343304388740.Spec : Prop :=
  ∀ n, P7845608343304388740.a n = A186388 (n + 1)

end A186388

/-! ## A186388.P15887901294371470294

`ceil(A055810(n+5)/A055998(n+3))`
-/

namespace A186388.P15887901294371470294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A055810 (n + 5) : ℚ) / (A055998 (n + 3) : ℚ)⌉

end

end A186388.P15887901294371470294

namespace A186388

/-- `ceil(A055810(n+5)/A055998(n+3))` -/
def P15887901294371470294.Spec : Prop :=
  ∀ n, P15887901294371470294.a n = A186388 (n + 1)

end A186388

/-! ## A186388.P15971780424222699566

`ceil(A055810(n+5)/(A000124(n+5)-5))`
-/

namespace A186388.P15971780424222699566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A055810 (n + 5) : ℚ) / (A000124 (n + 5) - 5 : ℚ)⌉

end

end A186388.P15971780424222699566

namespace A186388

/-- `ceil(A055810(n+5)/(A000124(n+5)-5))` -/
def P15971780424222699566.Spec : Prop :=
  ∀ n, P15971780424222699566.a n = A186388 (n + 1)

end A186388

/-! ## A186388.P3383719193372198278

`record[A028310(A011865(n))-n]`
-/

namespace A186388.P3383719193372198278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A011865 n).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186388.P3383719193372198278

namespace A186388

/-- `record[A028310(A011865(n))-n]` -/
def P3383719193372198278.Spec : Prop :=
  ∀ n, P3383719193372198278.a n = A186388 (n + 1)

end A186388

/-! ## A186388.P9669038994302465902

`A008619(A001840(n))+n`
-/

namespace A186388.P9669038994302465902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A001840 n).toNat + (n : ℤ)

end

end A186388.P9669038994302465902

namespace A186388

/-- `A008619(A001840(n))+n` -/
def P9669038994302465902.Spec : Prop :=
  ∀ n, P9669038994302465902.a n = A186388 (n + 1)

end A186388

/-! ## A186388.P13903592031811410456

`A110654(A001840(n)+1)+n`
-/

namespace A186388.P13903592031811410456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A001840 n + 1).toNat + (n : ℤ)

end

end A186388.P13903592031811410456

namespace A186388

/-- `A110654(A001840(n)+1)+n` -/
def P13903592031811410456.Spec : Prop :=
  ∀ n, P13903592031811410456.a n = A186388 (n + 1)

end A186388

/-! ## A186388.P8215012889413198980

`A110654(A008748(n+1))+n`
-/

namespace A186388.P8215012889413198980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A008748 (n + 1)).toNat + (n : ℤ)

end

end A186388.P8215012889413198980

namespace A186388

/-- `A110654(A008748(n+1))+n` -/
def P8215012889413198980.Spec : Prop :=
  ∀ n, P8215012889413198980.a n = A186388 (n + 1)

end A186388

/-! ## A186388.P16419273796615889682

`A008619(round(A000096(n)/3))+n`
-/

namespace A186388.P16419273796615889682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.roundAway ((A000096 n : ℚ) / 3)).toNat + (n : ℤ)

end

end A186388.P16419273796615889682

namespace A186388

/-- `A008619(round(A000096(n)/3))+n` -/
def P16419273796615889682.Spec : Prop :=
  ∀ n, P16419273796615889682.a n = A186388 (n + 1)

end A186388

/-! ## A186388.P10138289562303326866

`A008619(∑[A002264(n+2)])+n`
-/

namespace A186388.P10138289562303326866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n : ℤ)

end

end A186388.P10138289562303326866

namespace A186388

/-- `A008619(∑[A002264(n+2)])+n` -/
def P10138289562303326866.Spec : Prop :=
  ∀ n, P10138289562303326866.a n = A186388 (n + 1)

end A186388

/-! ## A186388.P5208118949968697815

`A008619(∑[A008615(2*n)])+n`
-/

namespace A186388.P5208118949968697815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n : ℤ)

end

end A186388.P5208118949968697815

namespace A186388

/-- `A008619(∑[A008615(2*n)])+n` -/
def P5208118949968697815.Spec : Prop :=
  ∀ n, P5208118949968697815.a n = A186388 (n + 1)

end A186388

/-! ## A186388.P3562329750998051346

`A008619(∑[A112689(2*n)])+n`
-/

namespace A186388.P3562329750998051346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n : ℤ)

end

end A186388.P3562329750998051346

namespace A186388

/-- `A008619(∑[A112689(2*n)])+n` -/
def P3562329750998051346.Spec : Prop :=
  ∀ n, P3562329750998051346.a n = A186388 (n + 1)

end A186388

/-! ## A186388.P2437756837477933174

`A008619(∑[A103221(2*n+1)])+n`
-/

namespace A186388.P2437756837477933174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n : ℤ)

end

end A186388.P2437756837477933174

namespace A186388

/-- `A008619(∑[A103221(2*n+1)])+n` -/
def P2437756837477933174.Spec : Prop :=
  ∀ n, P2437756837477933174.a n = A186388 (n + 1)

end A186388

/-!
# A186389: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f(i)=6i and g(j)=j(j+1)/2 (triangular number). Complement of A186390.

The programs for A186389, the canonical program `A186389.P13848014347458583741` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186389 has offset 1).

The definition of A186389 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186389.P10913311126312404482

`round(sqrt(12*(n+1)+1))+n`
-/

namespace A186389.P10913311126312404482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (12 * (n + 1) + 1 : ℝ)) + (n : ℤ)

end

end A186389.P10913311126312404482

namespace A186389

/-- `round(sqrt(12*(n+1)+1))+n` -/
def P10913311126312404482.Spec : Prop :=
  ∀ n, P10913311126312404482.a n = A186389 (n + 1)

end A186389

/-! ## A186389.P13848014347458583741

`∑[Δ[A000934(n)]+1]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A186389

/-- `∑[Δ[A000934(n)]+1]` -/
def P13848014347458583741.Spec : Prop :=
  ∀ n, P13848014347458583741.a n = A186389 (n + 1)

theorem P13848014347458583741.correct : P13848014347458583741.Spec := by
  intro n
  simp only [A186389, Nat.add_sub_cancel]

end A186389

/-! ## A186389.P2386326121650437418

`∑[A000029(Δ[A000934(n)])]`
-/

namespace A186389.P2386326121650437418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000934 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186389.P2386326121650437418

namespace A186389

/-- `∑[A000029(Δ[A000934(n)])]` -/
def P2386326121650437418.Spec : Prop :=
  ∀ n, P2386326121650437418.a n = A186389 (n + 1)

end A186389

/-! ## A186389.P16958297932945384951

`∑[A000031(Δ[A000934(n)])]`
-/

namespace A186389.P16958297932945384951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000934 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186389.P16958297932945384951

namespace A186389

/-- `∑[A000031(Δ[A000934(n)])]` -/
def P16958297932945384951.Spec : Prop :=
  ∀ n, P16958297932945384951.a n = A186389 (n + 1)

end A186389

/-! ## A186389.P11815720095290932077

`∑[A001316(Δ[A000934(n)])]`
-/

namespace A186389.P11815720095290932077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000934 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186389.P11815720095290932077

namespace A186389

/-- `∑[A001316(Δ[A000934(n)])]` -/
def P11815720095290932077.Spec : Prop :=
  ∀ n, P11815720095290932077.a n = A186389 (n + 1)

end A186389

/-! ## A186389.P1851696775713503711

`∑[A001972(Δ[A000934(n)])]`
-/

namespace A186389.P1851696775713503711
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000934 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186389.P1851696775713503711

namespace A186389

/-- `∑[A001972(Δ[A000934(n)])]` -/
def P1851696775713503711.Spec : Prop :=
  ∀ n, P1851696775713503711.a n = A186389 (n + 1)

end A186389

/-! ## A186389.P6499783636537968604

`∑[A003000(Δ[A000934(n)])]`
-/

namespace A186389.P6499783636537968604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000934 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003000 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186389.P6499783636537968604

namespace A186389

/-- `∑[A003000(Δ[A000934(n)])]` -/
def P6499783636537968604.Spec : Prop :=
  ∀ n, P6499783636537968604.a n = A186389 (n + 1)

end A186389

/-! ## A186389.P9407786043619412835

`∑[A003099(Δ[A000934(n)])]`
-/

namespace A186389.P9407786043619412835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000934 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003099 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186389.P9407786043619412835

namespace A186389

/-- `∑[A003099(Δ[A000934(n)])]` -/
def P9407786043619412835.Spec : Prop :=
  ∀ n, P9407786043619412835.a n = A186389 (n + 1)

end A186389

/-! ## A186389.P6086026277478212571

`round(sqrt(A063098(n+2))+n)`
-/

namespace A186389.P6086026277478212571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A063098 (n + 2) : ℝ) + (n : ℝ))

end

end A186389.P6086026277478212571

namespace A186389

/-- `round(sqrt(A063098(n+2))+n)` -/
def P6086026277478212571.Spec : Prop :=
  ∀ n, P6086026277478212571.a n = A186389 (n + 1)

end A186389

/-! ## A186389.P12581633204295533036

`∑[Δ[A000703(2*n)]+1]`
-/

namespace A186389.P12581633204295533036
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000703 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186389.P12581633204295533036

namespace A186389

/-- `∑[Δ[A000703(2*n)]+1]` -/
def P12581633204295533036.Spec : Prop :=
  ∀ n, P12581633204295533036.a n = A186389 (n + 1)

end A186389

/-! ## A186389.P12680162408371973053

`∑[Δ[A186497(2*n+1)]-1]`
-/

namespace A186389.P12680162408371973053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186497 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186389.P12680162408371973053

namespace A186389

/-- `∑[Δ[A186497(2*n+1)]-1]` -/
def P12680162408371973053.Spec : Prop :=
  ∀ n, P12680162408371973053.a n = A186389 (n + 1)

end A186389

/-! ## A186389.P5825338751454128839

`∑[A000029(Δ[A000703(2*n)])]`
-/

namespace A186389.P5825338751454128839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000703 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186389.P5825338751454128839

namespace A186389

/-- `∑[A000029(Δ[A000703(2*n)])]` -/
def P5825338751454128839.Spec : Prop :=
  ∀ n, P5825338751454128839.a n = A186389 (n + 1)

end A186389

/-! ## A186389.P11620660807159757437

`∑[A000031(Δ[A000703(2*n)])]`
-/

namespace A186389.P11620660807159757437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000703 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186389.P11620660807159757437

namespace A186389

/-- `∑[A000031(Δ[A000703(2*n)])]` -/
def P11620660807159757437.Spec : Prop :=
  ∀ n, P11620660807159757437.a n = A186389 (n + 1)

end A186389

/-! ## A186389.P5002396728335626723

`∑[A000690(Δ[A000703(2*n)])]`
-/

namespace A186389.P5002396728335626723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000703 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000690 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186389.P5002396728335626723

namespace A186389

/-- `∑[A000690(Δ[A000703(2*n)])]` -/
def P5002396728335626723.Spec : Prop :=
  ∀ n, P5002396728335626723.a n = A186389 (n + 1)

end A186389

/-! ## A186389.P18364078280158136692

`∑[A001972(Δ[A000703(2*n)])]`
-/

namespace A186389.P18364078280158136692
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000703 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186389.P18364078280158136692

namespace A186389

/-- `∑[A001972(Δ[A000703(2*n)])]` -/
def P18364078280158136692.Spec : Prop :=
  ∀ n, P18364078280158136692.a n = A186389 (n + 1)

end A186389

/-! ## A186389.P14813716806834845595

`∑[A005555(Δ[A000703(2*n)])]`
-/

namespace A186389.P14813716806834845595
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000703 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186389.P14813716806834845595

namespace A186389

/-- `∑[A005555(Δ[A000703(2*n)])]` -/
def P14813716806834845595.Spec : Prop :=
  ∀ n, P14813716806834845595.a n = A186389 (n + 1)

end A186389

/-! ## A186389.P17521256223834302638

`∑[A008728(Δ[A000703(2*n)])]`
-/

namespace A186389.P17521256223834302638
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000703 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008728 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186389.P17521256223834302638

namespace A186389

/-- `∑[A008728(Δ[A000703(2*n)])]` -/
def P17521256223834302638.Spec : Prop :=
  ∀ n, P17521256223834302638.a n = A186389 (n + 1)

end A186389

/-! ## A186389.P18327193773399099734

`∑[A010886(Δ[A000703(2*n)])]`
-/

namespace A186389.P18327193773399099734
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000703 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010886 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186389.P18327193773399099734

namespace A186389

/-- `∑[A010886(Δ[A000703(2*n)])]` -/
def P18327193773399099734.Spec : Prop :=
  ∀ n, P18327193773399099734.a n = A186389 (n + 1)

end A186389

/-!
# A186390: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f(i)=6i and g(j)=j(j+1)/2 (triangular number). Complement of A186389.

The programs for A186390, the canonical program `A186390.P5701094208308204696` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186390 has offset 1).

The definition of A186390 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186390.P5701094208308204696

`floor((∑[n+7]-1)/6)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A186390

/-- `floor((∑[n+7]-1)/6)` -/
def P5701094208308204696.Spec : Prop :=
  ∀ n, P5701094208308204696.a n = A186390 (n + 1)

theorem P5701094208308204696.correct : P5701094208308204696.Spec := by
  intro n
  simp only [A186390, Nat.add_sub_cancel]

end A186390

/-! ## A186390.P1400500995491514800

`ceil(C(n+2, 2)/6)+n`
-/

namespace A186390.P1400500995491514800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (n + 2) 2 : ℚ) / 6⌉ + (n : ℤ)

end

end A186390.P1400500995491514800

namespace A186390

/-- `ceil(C(n+2, 2)/6)+n` -/
def P1400500995491514800.Spec : Prop :=
  ∀ n, P1400500995491514800.a n = A186390 (n + 1)

end A186390

/-! ## A186390.P3413609393486150777

`comp[lcm(5, n)]+round(n²/12)`
-/

namespace A186390.P3413609393486150777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 5 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12)

end

end A186390.P3413609393486150777

namespace A186390

/-- `comp[lcm(5, n)]+round(n²/12)` -/
def P3413609393486150777.Spec : Prop :=
  ∀ n, P3413609393486150777.a n = A186390 (n + 1)

end A186390

/-! ## A186390.P8678975605820513645

`ceil(∑[(n+1)/6]+n%(n+1))`
-/

namespace A186390.P8678975605820513645
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j + ((n % (n + 1) : ℕ) : ℚ)⌉

end

end A186390.P8678975605820513645

namespace A186390

/-- `ceil(∑[(n+1)/6]+n%(n+1))` -/
def P8678975605820513645.Spec : Prop :=
  ∀ n, P8678975605820513645.a n = A186390 (n + 1)

end A186390

/-! ## A186390.P6607976100784408994

`ceil(∑[(n+1)/6])+gcd(n, 2*n)`
-/

namespace A186390.P6607976100784408994
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ + (Nat.gcd n (2 * n) : ℤ)

end

end A186390.P6607976100784408994

namespace A186390

/-- `ceil(∑[(n+1)/6])+gcd(n, 2*n)` -/
def P6607976100784408994.Spec : Prop :=
  ∀ n, P6607976100784408994.a n = A186390 (n + 1)

end A186390

/-! ## A186390.P5846969801678982858

`∑[round(n/3-a(n-2))]+n` with `a(0)=1, a(1)=0`
-/

namespace A186390.P5846969801678982858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  SequenceMachineLib.roundAway ((n : ℚ) / 3 - (f1 (n - 2) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A186390.P5846969801678982858

namespace A186390

/-- `∑[round(n/3-a(n-2))]+n` -/
def P5846969801678982858.Spec : Prop :=
  ∀ n, P5846969801678982858.a n = A186390 (n + 1)

end A186390

/-! ## A186390.P2281894467348268076

`A253012(n)+n`
-/

namespace A186390.P2281894467348268076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253012 n + (n : ℤ)

end

end A186390.P2281894467348268076

namespace A186390

/-- `A253012(n)+n` -/
def P2281894467348268076.Spec : Prop :=
  ∀ n, P2281894467348268076.a n = A186390 (n + 1)

end A186390

/-! ## A186390.P16033887413090829293

`∑[A091972(n)]+n`
-/

namespace A186390.P16033887413090829293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091972 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A186390.P16033887413090829293

namespace A186390

/-- `∑[A091972(n)]+n` -/
def P16033887413090829293.Spec : Prop :=
  ∀ n, P16033887413090829293.a n = A186390 (n + 1)

end A186390

/-! ## A186390.P7581964113691931783

`A014591(n)+A001068(n)`
-/

namespace A186390.P7581964113691931783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014591 n + A001068 n

end

end A186390.P7581964113691931783

namespace A186390

/-- `A014591(n)+A001068(n)` -/
def P7581964113691931783.Spec : Prop :=
  ∀ n, P7581964113691931783.a n = A186390 (n + 1)

end A186390

/-! ## A186390.P8064622591889394498

`A007980(n)-A054925(n)`
-/

namespace A186390.P8064622591889394498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007980 n - A054925 n

end

end A186390.P8064622591889394498

namespace A186390

/-- `A007980(n)-A054925(n)` -/
def P8064622591889394498.Spec : Prop :=
  ∀ n, P8064622591889394498.a n = A186390 (n + 1)

end A186390

/-! ## A186390.P14109169901702841257

`A069905(n)+A047201(n+1)`
-/

namespace A186390.P14109169901702841257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 n + A047201 (n + 1)

end

end A186390.P14109169901702841257

namespace A186390

/-- `A069905(n)+A047201(n+1)` -/
def P14109169901702841257.Spec : Prop :=
  ∀ n, P14109169901702841257.a n = A186390 (n + 1)

end A186390

/-! ## A186390.P8045879622175486724

`A238705(n+1)-A249852(n)`
-/

namespace A186390.P8045879622175486724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238705 (n + 1) - A249852 n

end

end A186390.P8045879622175486724

namespace A186390

/-- `A238705(n+1)-A249852(n)` -/
def P8045879622175486724.Spec : Prop :=
  ∀ n, P8045879622175486724.a n = A186390 (n + 1)

end A186390

/-! ## A186390.P11196617889364353420

`A002265(n)+A014591(n)+n`
-/

namespace A186390.P11196617889364353420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 n + (A014591 n + (n : ℤ))

end

end A186390.P11196617889364353420

namespace A186390

/-- `A002265(n)+A014591(n)+n` -/
def P11196617889364353420.Spec : Prop :=
  ∀ n, P11196617889364353420.a n = A186390 (n + 1)

end A186390

/-! ## A186390.P15265605619878657544

`A008621(n)+A069905(n)+n`
-/

namespace A186390.P15265605619878657544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n + (A069905 n + (n : ℤ))

end

end A186390.P15265605619878657544

namespace A186390

/-- `A008621(n)+A069905(n)+n` -/
def P15265605619878657544.Spec : Prop :=
  ∀ n, P15265605619878657544.a n = A186390 (n + 1)

end A186390

/-! ## A186390.P4914172775716993126

`A014679(n)+A112690(n)+n`
-/

namespace A186390.P4914172775716993126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014679 n + (A112690 n + (n : ℤ))

end

end A186390.P4914172775716993126

namespace A186390

/-- `A014679(n)+A112690(n)+n` -/
def P4914172775716993126.Spec : Prop :=
  ∀ n, P4914172775716993126.a n = A186390 (n + 1)

end A186390

/-! ## A186390.P14304641149740645922

`A186351(n+1)-A186355(n+1)+n`
-/

namespace A186390.P14304641149740645922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186351 (n + 1) - A186355 (n + 1) + (n : ℤ)

end

end A186390.P14304641149740645922

namespace A186390

/-- `A186351(n+1)-A186355(n+1)+n` -/
def P14304641149740645922.Spec : Prop :=
  ∀ n, P14304641149740645922.a n = A186390 (n + 1)

end A186390

/-! ## A186390.P12119015987382609502

`A001399(n+1)+A002265(n)+A002264(n)`
-/

namespace A186390.P12119015987382609502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (n + 1) + (A002265 n + A002264 n)

end

end A186390.P12119015987382609502

namespace A186390

/-- `A001399(n+1)+A002265(n)+A002264(n)` -/
def P12119015987382609502.Spec : Prop :=
  ∀ n, P12119015987382609502.a n = A186390 (n + 1)

end A186390

/-! ## A186390.P14417593289176556067

`A004526(n+1)+A002265(n)+A001399(n)`
-/

namespace A186390.P14417593289176556067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) + (A002265 n + A001399 n)

end

end A186390.P14417593289176556067

namespace A186390

/-- `A004526(n+1)+A002265(n)+A001399(n)` -/
def P14417593289176556067.Spec : Prop :=
  ∀ n, P14417593289176556067.a n = A186390 (n + 1)

end A186390

/-! ## A186390.P6554734901524807296

`A130519(n+1)+A001972(n)-A058937(n+2)`
-/

namespace A186390.P6554734901524807296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (n + 1) + (A001972 n - A058937 (n + 2))

end

end A186390.P6554734901524807296

namespace A186390

/-- `A130519(n+1)+A001972(n)-A058937(n+2)` -/
def P6554734901524807296.Spec : Prop :=
  ∀ n, P6554734901524807296.a n = A186390 (n + 1)

end A186390

/-!
# A186391: a(n) equals the least sum of the squares of the coefficients in (1 + x^k + x^(2k) + x^p)^n found at sufficiently large p for some fixed k>0.

The programs for A186391, there is no canonical definition to state claims against.
-/

/-! ## A186391.P6806249860706741956

`A268241((n+4)^n)`
-/

namespace A186391.P6806249860706741956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268241 ((n + 4) ^ n)

end

end A186391.P6806249860706741956

/-!
# A186396: Numbers k such that there are 4 primes between 100*k and 100*k + 99.

The programs for A186396, there is no canonical definition to state claims against.
-/

/-! ## A186396.P9270384960959991498

`eq[4, A038822(n)]`
-/

namespace A186396.P9270384960959991498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038822 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186396.P9270384960959991498

/-! ## A186396.P14520426874640113567

`eq[4, A298009(n+1)%50]`
-/

namespace A186396.P14520426874640113567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298009 (n + 1)) 50

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186396.P14520426874640113567

/-! ## A186396.P17669543336363913430

`eq[4, A028505(n+1)%A028505(A000038(n)+n)]`
-/

namespace A186396.P17669543336363913430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028505 (n + 1)) (A028505 (A000038 n + (n : ℤ)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186396.P17669543336363913430

/-! ## A186396.P7506933728948452889

`eq[4, A298009(n+1)-A008607(A008586(n))]`
-/

namespace A186396.P7506933728948452889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298009 (n + 1) - A008607 (A008586 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186396.P7506933728948452889

/-!
# A186397: Numbers k such that there are 5 primes between 100*k and 100*k + 99.

The programs for A186397, there is no canonical definition to state claims against.
-/

/-! ## A186397.P10717240694144090029

`eq[5, A038822(n)]`
-/

namespace A186397.P10717240694144090029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038822 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186397.P10717240694144090029

/-! ## A186397.P18302114052707931748

`eq[5, A298009(n+1)%50]`
-/

namespace A186397.P18302114052707931748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298009 (n + 1)) 50

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186397.P18302114052707931748

/-! ## A186397.P13060648806230034622

`eq[5, A028505(n+1)%A028505(A000038(n)+n)]`
-/

namespace A186397.P13060648806230034622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028505 (n + 1)) (A028505 (A000038 n + (n : ℤ)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186397.P13060648806230034622

/-! ## A186397.P14419727279991905610

`eq[5, A298009(n+1)-A008607(A008586(n))]`
-/

namespace A186397.P14419727279991905610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298009 (n + 1) - A008607 (A008586 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186397.P14419727279991905610

/-! ## A186397.P14855606904248548797

`eq[5, A298009(n+1)-A008592(A008592(n))]`
-/

namespace A186397.P14855606904248548797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298009 (n + 1) - A008592 (A008592 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186397.P14855606904248548797

/-!
# A186398: Numbers k such that there are 6 primes between 100*k and 100*k + 99.

The programs for A186398, there is no canonical definition to state claims against.
-/

/-! ## A186398.P13833723901522807066

`eq[6, A038822(n)]`
-/

namespace A186398.P13833723901522807066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038822 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186398.P13833723901522807066

/-! ## A186398.P12411376734075502939

`eq[6, A298009(n+1)%50]`
-/

namespace A186398.P12411376734075502939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298009 (n + 1)) 50

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186398.P12411376734075502939

/-! ## A186398.P13549757501659183124

`eq[6, A028505(n+1)%A028505(A000038(n)+n)]`
-/

namespace A186398.P13549757501659183124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028505 (n + 1)) (A028505 (A000038 n + (n : ℤ)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186398.P13549757501659183124

/-! ## A186398.P2503977106942156197

`eq[6, A298009(n+1)-A008607(A008586(n))]`
-/

namespace A186398.P2503977106942156197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298009 (n + 1) - A008607 (A008586 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186398.P2503977106942156197

/-! ## A186398.P17284813327288387229

`eq[6, A298009(n+1)-A008592(A008592(n))]`
-/

namespace A186398.P17284813327288387229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298009 (n + 1) - A008592 (A008592 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186398.P17284813327288387229

/-!
# A186399: Numbers k such that there are 7 primes between 100*k and 100*k + 99.

The programs for A186399, there is no canonical definition to state claims against.
-/

/-! ## A186399.P16215507080511579483

`eq[7, A038822(n)]`
-/

namespace A186399.P16215507080511579483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038822 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186399.P16215507080511579483

/-! ## A186399.P14495490790958045023

`eq[7, A298009(n+1)%20]`
-/

namespace A186399.P14495490790958045023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298009 (n + 1)) 20

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186399.P14495490790958045023

/-! ## A186399.P15027005452460361785

`eq[3, A298009(n+1)-A102439(n)]`
-/

namespace A186399.P15027005452460361785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298009 (n + 1) - A102439 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186399.P15027005452460361785

/-! ## A186399.P4268050501348913135

`eq[7, A028505(n+1)%A028505(A000038(n)+n)]`
-/

namespace A186399.P4268050501348913135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028505 (n + 1)) (A028505 (A000038 n + (n : ℤ)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186399.P4268050501348913135

/-! ## A186399.P17838581371387974880

`eq[7, A298009(n+1)-A008607(A008586(n))]`
-/

namespace A186399.P17838581371387974880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298009 (n + 1) - A008607 (A008586 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186399.P17838581371387974880

